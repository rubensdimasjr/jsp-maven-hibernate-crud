# JSP Maven Hibernate CRUD Example

🚀 Basic user registration and login system, user and products management web application using JSP, Servlet, Maven and Hibernate. This web application manages a colletion of users and products with the basic feature: list, insert, update and delete (CRUD operations - Create, Update, Read and Delete).
<div align="center"><a href="https://github.com/rubensdimasjr/jsp-maven-hibernate-crud/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/rubensdimasjr/jsp-maven-hibernate-crud"></a>&nbsp<a href="https://github.com/rubensdimasjr/jsp-maven-hibernate-crud/network"><img alt="GitHub forks" src="https://img.shields.io/github/forks/rubensdimasjr/jsp-maven-hibernate-crud"></a>&nbsp<a href="https://github.com/rubensdimasjr/jsp-maven-hibernate-crud/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/rubensdimasjr/jsp-maven-hibernate-crud"></a>&nbsp<img src="https://img.shields.io/badge/status-in%20progress-blue?style=social&logo=appveyor"></div>



<h3>👨‍💻 Tech Stack</h3>
<ul>
<li><a href="https://getbootstrap.com/">Bootstrap 5</a></li>
<li><a href="https://jquery.com/">Javascript, jQuery</a></li>
<li><a href="https://www.oracle.com/br/java/">Java 11+</a></li>
<li><a href="https://hibernate.org/">Hibernate</a></li>
<li><a href="https://dev.mysql.com/downloads/workbench/">SQL - MySQL Workbench 8.0.27</a></li>
<li><a href="https://maven.apache.org/">Maven</a></li>
</ul>

and more...



<h3 id="#feat">🪶 Features</h3>

- [x] Customer registration
- [x] Product registration
- [x] User login
- [x] Session treatment
- [ ] Shopping cart
- [ ] User profile and settings

### 🌍 Preparing Environment 

Needs to be installed in your PC: [Git](https://git-scm.com), [Node.js](https://nodejs.org/en/), [Java JDK 11+](https://openjdk.java.net/). IDE to work with the code like [Eclipse](https://www.eclipse.org/downloads/packages/release/2021-12/r/eclipse-ide-enterprise-java-and-web-developers), [IntelliJ](https://www.jetbrains.com/pt-br/idea/), both with application server installed, [Apache Tomcat 9](https://tomcat.apache.org/download-90.cgi) or other. [MySQL Workbench](https://dev.mysql.com/downloads/workbench/) or similar to manage database (**important!** case switch the tool to manage, it's necessary change the JDBC Driver).

#### Getting Started

```bash
# Clone repository or Download ZIP 
$ git clone <https://github.com/rubensdimasjr/jsp-maven-hibernate-crud>
```
#### Opening SQL script (MySQL Workbench)
1. **File > Run SQL script** > script.sql

#### Importing repository (Eclipse)

2. Open Eclipse IDE -> **File > Import** 

   ![Import](https://i.imgur.com/0DOuv9J.png)


3. Seach for Maven -> **Select** "Existing Maven Projects" -> **Next > Root Directory, Browse...**

![Maven Project](https://i.imgur.com/f1MDHMP.png)


4. Select repository until find > **pom.xml > Open Folder**

![Pom XML](https://i.imgur.com/pAeuzCK.png)


5. **Finish**.

![Finish](https://i.imgur.com/kLJ7Mai.png)
#### Modifying Dao interface class and others
- Open src/main/java **> package dao > Provedor.java**
```bash
# Change for your connection credential
 String username = "root";
 String pwd = " ";
```
- Open src/main/java **> hibernate.cfg.xml**
```bash
# Change property hibernate connection
  <property name="hibernate.connection.username">root</property>  
  <property name="hibernate.connection.password"> </property>  
```
### 🗒 Note (important!)
- MySQL Workbench connection must not be closed while the application server(Apache TomCat or other) is running.
- MySQL Workbench(or other) version must be the same as the JDBC Driver(located **pom.xml**, **Maven dependencies** and **hibernate.cfg.xml**).
- Links that can help: (https://github.com/mysql/mysql-connector-j) (https://github.com/apache/tomcat)
<hr>

### 🇦🇱 Autor

<a href="https://github.com/rubensdimasjr">
<img src="https://i.imgur.com/ZC8xQWi.jpg" width="100" alt="Rubens" style="border-radius:50%">
</a>

Feito por <a href="https://github.com/rubensdimasjr"><b>Rubens Matias</b></a> 🚀 Entre em contato!

[![Linkedin Badge](https://img.shields.io/badge/-Rubens-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rubensdimasjr/)](https://www.linkedin.com/in/rubensdimasjr/) 
[![Gmail Badge](https://img.shields.io/badge/-contato.rubensdimas@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:contato.rubensdimas@gmail.com)](mailto:contato.rubensdimas@gmail.com)
