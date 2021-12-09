package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClienteDAOImpl;
import dao.ProdutosDAO;
import model.Produtos;
import model.Cliente;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClienteDAOImpl clienteDAOImpl;
	private ProdutosDAO produtosDao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
    	this.clienteDAOImpl = new ClienteDAOImpl();
    	this.produtosDao = new ProdutosDAO();
    }
    
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = request.getServletPath();
		
		switch(url) {
		case "/login":
			try {
				loginCliente(request, response);
			}catch(ServletException | IOException e) {
				e.printStackTrace();
			}
			break;
		case "/logout":
			try {
				logoutCliente(request, response);
			}catch(ServletException | IOException e) {
				e.printStackTrace();
			}
			break;
		case "/home":
			try {
				acessaHome(request, response);
			}catch(ServletException | IOException e) {
				e.printStackTrace();
				}
			break;
		case "/admin/deleta-cliente":
			try {
				deletaCliente(request, response);
			} catch (SQLException | IOException e) {
				e.printStackTrace();
			}
			break;
		case "/admin/edit-cliente":
			try {
				mostraEditForm(request, response);
			} catch (SQLException | ServletException | IOException e) {
				e.printStackTrace();
			}
			break;
		case "/admin/update-cliente":
			try {
				atualizaCliente(request, response);
			} catch (SQLException | ServletException | IOException e) {
				e.printStackTrace();
			}
			break;
		case "/admin/lista-cliente":
			try {
				listaCliente(request, response);
			} catch (SQLException | ServletException | IOException e) {
				e.printStackTrace();
			}
			break;
		case "/admin/insere-produto":
            try {
				insereProduto(request, response);
			} catch (SQLException | IOException | ServletException e3) {
				// TODO Auto-generated catch block
				e3.printStackTrace();
			}
            break;
        case "/admin/deleta-produto":
            try {
				deletaProduto(request, response);
			} catch (SQLException | IOException | ServletException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
            break;
        case "/admin/edita-produto":
            try {
				mostraEditaProduto(request, response);
			} catch (SQLException | IOException | ServletException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
            break;
        case "/admin/update-produto":
            updateProduto(request, response);
            break;
        case "/admin/lista-produtos":
        	listaProdutos(request, response);
        	break;
		default:
			try {
				redirecionaInicio(request, response);
			} catch (SQLException | ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			break;
		}
	}

	private void listaProdutos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List <Produtos> listaProdutos = produtosDao.getTodosProdutos();
		request.setAttribute("listaProdutos", listaProdutos);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("produtos.jsp");
		dispatcher.forward(request, response);
	}

	private void updateProduto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		String titulo = request.getParameter("titulo");
		String descricao = request.getParameter("descricao");
		String preco = request.getParameter("preco");
		String linkImagem = request.getParameter("linkImagem");
		
		Produtos produto = new Produtos(id, titulo, descricao, preco, linkImagem);
		produtosDao.updateProduto(produto);
		response.sendRedirect("lista-produtos");
	}

	private void mostraEditaProduto(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException{
		
		int id = Integer.parseInt(request.getParameter("id"));
		Produtos existindoProduto = produtosDao.getProdutos(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-produto.jsp");
		
		request.setAttribute("produto", existindoProduto);
		dispatcher.forward(request, response);
	}

	private void deletaProduto(HttpServletRequest request, HttpServletResponse response)throws SQLException, IOException, ServletException{
		
		int id = Integer.parseInt(request.getParameter("id"));
		produtosDao.deletaProduto(id);
		response.sendRedirect("lista-produtos");
	}

	private void insereProduto(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException{
		request.setCharacterEncoding("UTF-8");
		
		String titulo = request.getParameter("titulo");
		String descricao = request.getParameter("descricao");
		String preco = request.getParameter("preco");
		String linkImagem = request.getParameter("linkImagem");
		
		Produtos novoProduto = new Produtos(titulo, descricao, preco, linkImagem);
		produtosDao.salvaProduto(novoProduto);
		response.sendRedirect("lista-produtos");
	}

	private void acessaHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = (String) request.getSession().getAttribute("nome");
		
		if(nome != null) {
			List <Produtos> listaProdutos = produtosDao.getTodosProdutos();
			request.setAttribute("listaProdutos", listaProdutos);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/home.jsp");
			dispatcher.forward(request, response); 
			
		}else {
			request.setAttribute("sessionMensagem",
					"<div class=\"alert alert-danger col-6 mx-auto mt-3\" role=\"alert\">"
							+ " 	Não autenticado! Faça login primeiro."
							+ "	</div>");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	
	}

	private void loginCliente(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String submitType = request.getParameter("submit");

		Cliente c = clienteDAOImpl.getCliente(email, senha);

		if (submitType.equals("Entrar") && c != null && c.getNome() != null) {
			HttpSession session=request.getSession(); 
			session.setAttribute("nome", c.getNome());
			response.sendRedirect("home");

		} else if (submitType.equals("Cadastrar")) {
			request.setCharacterEncoding("UTF-8");
			
			c.setEmail(email);
			c.setSenha(senha);
			c.setNome(request.getParameter("nome"));
			c.setSobreNome(request.getParameter("sobreNome"));
			clienteDAOImpl.insereCliente(c);

			request.setAttribute("sucessoMensagem", "<div class=\"alert alert-success my-2 col-12\" role=\"alert\">"
					+ " 	Cadastro realizado com sucesso!! Faça o login para continuar." + "	</div>");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else {
			request.setAttribute("fracassoMensagem",
					"<div class=\"alert alert-danger col-6 mx-auto mt-3\" role=\"alert\">"
							+ " 	Email ou senha incorretos, caso não seja inscrito, clique em 'Inscreva-se'."
							+ "	</div>");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}

	}

	private void logoutCliente(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session=request.getSession();  
        session.invalidate();
        
        request.setAttribute("logoutMensagem", "<div id=\"logout\" class=\"alert alert-success my-2 col-12\" role=\"alert\">"
				+ " 	Desconectado com sucesso!!" + "	</div>");
		request.getRequestDispatcher("index.jsp").include(request, response);
	}

	private void deletaCliente(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		clienteDAOImpl.deletaCliente(id);
		response.sendRedirect("lista-cliente");
	}
	
	private void mostraEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		int id = Integer.parseInt(request.getParameter("id"));
		Cliente existirCliente = clienteDAOImpl.selectCliente(id);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("cliente-form.jsp");
		request.setAttribute("cliente", existirCliente);
		
		dispatcher.forward(request, response);
	}
	
	private void atualizaCliente(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String nome = request.getParameter("nome");
		String sobreNome = request.getParameter("sobreNome");
		
		Cliente cliente = new Cliente(id, email, senha, nome, sobreNome);
		clienteDAOImpl.editaCliente(cliente);
		
		response.sendRedirect("lista-cliente");
	}
	
	private void listaCliente(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException{
		List<Cliente> listaCliente = clienteDAOImpl.selectTodosCliente();
		
		request.setAttribute("listaCliente", listaCliente);
		request.getRequestDispatcher("clientes.jsp").forward(request, response);
	}
	
	private void redirecionaInicio(HttpServletRequest request, HttpServletResponse response)throws SQLException, ServletException, IOException{
		request.getRequestDispatcher("home").forward(request, response);
	}
	
}