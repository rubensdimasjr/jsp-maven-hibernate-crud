package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Produtos;
import util.HibernateUtil;

public class ProdutosDAO {
	
/**
 * Salva Produto
 * @param produtos
 */
	
	public void salvaProduto(Produtos produtos) {
		Transaction transaction = null;
		
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
			
			//começa a transação
			transaction = session.beginTransaction();
			
			//salva o produto
			session.save(produtos);
			
			//commita a transação
			transaction.commit();
		}catch(Exception e) {
			if(transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	
/**
 * Edita Produto
 * @param produtos
 */
	
	public void updateProduto(Produtos produtos) {
		Transaction transaction = null;
		
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
	
			//começa a transação
			transaction = session.beginTransaction();
			
			//edita os objetos de Produtos
			session.update(produtos);
			
			//commita a transação
			transaction.commit();
		}catch(Exception e) {
			if(transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	
/**
 * Deleta Prodtuo
 * @param id
 */
	
	public void deletaProduto(int id) {
		Transaction transaction = null;
		
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
			
			//começa transação
			transaction = session.beginTransaction();
			
			//deleta produto
			Produtos produtos = session.get(Produtos.class, id);
			if(produtos != null) {
				session.delete(produtos);
				System.out.println("produto foi deletado");
			}
			
			//commita transação
			transaction.commit();
		}catch(Exception e) {
			if(transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
	}
	
/**
 * Busca Produto pelo ID
 * @param id
 * @return
 */

	public Produtos getProdutos(int id) {
		Transaction transaction = null;
		Produtos produtos = null;
		
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
			
			//começa transação
			transaction = session.beginTransaction();
			
			//busca o objeto produto
			produtos = session.get(Produtos.class, id);
			
			//commita a transação
			transaction.commit();
		}catch(Exception e) {
			if(transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return produtos;
	}
	
/**
 * Retorna todos os Produtos
 * @return
 */
	
	@SuppressWarnings("unchecked")
	public List <Produtos> getTodosProdutos(){
		
		Transaction transaction = null;
		List <Produtos> listaDeProdutos = null;
		
		try(Session session = HibernateUtil.getSessionFactory().openSession()){
			//começa transação
			transaction = session.beginTransaction();
			
			//busca todos os produtos
			listaDeProdutos = session.createQuery("from Produtos ").getResultList();
			
			//commita transação
			transaction.commit();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return listaDeProdutos;
	}
	
}

