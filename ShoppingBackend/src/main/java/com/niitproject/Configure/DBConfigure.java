package com.niitproject.Configure;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niitproject.DAO.CartDAO;
import com.niitproject.DAO.CartDAOimpl;
import com.niitproject.DAO.CategoryDAO;
import com.niitproject.DAO.CategoryDAOimpl;
import com.niitproject.DAO.ProductDAO;
import com.niitproject.DAO.ProductDAOimpl;
import com.niitproject.DAO.SupplierDAO;
import com.niitproject.DAO.SupplierDAOimpl;
import com.niitproject.DAO.UserDAO;
import com.niitproject.DAO.UserDAOimpl;
import com.niitproject.Sections.Cart;
import com.niitproject.Sections.Category;
import com.niitproject.Sections.Product;
import com.niitproject.Sections.Supplier;
import com.niitproject.Sections.User;

 	
@Configuration
@EnableTransactionManagement
@ComponentScan("com.niitproject.*")
  

public class DBConfigure {    
 	
	@Bean(name = "dataSource")
	public DataSource getH2DataSource()
	{
		DriverManagerDataSource datasource=new DriverManagerDataSource();
		
		datasource.setDriverClassName("org.h2.Driver");
		datasource.setUrl("jdbc:h2:tcp://localhost/E:/H2/table4/table");
		datasource.setUsername("joe");
		datasource.setPassword("joe");
		System.out.println(">>>>>>Datasource object created<<<<<<");
		return datasource;
	}

	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory()
	{
		Properties hibernateprop=new Properties();
		
		hibernateprop.put("hibernate.hbm2ddl.auto","update");
		hibernateprop.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		LocalSessionFactoryBuilder factory=new LocalSessionFactoryBuilder(getH2DataSource());

		factory.addProperties(hibernateprop);
		
		factory.addAnnotatedClass(Category.class);
		factory.addAnnotatedClass(Supplier.class);
		factory.addAnnotatedClass(Product.class);
		factory.addAnnotatedClass(Cart.class);
		factory.addAnnotatedClass(User.class);
		System.out.println(">>>>>>SessionFactory Object created<<<<<<");

		return factory.buildSessionFactory();
		
	}
	@Bean(name="TransactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
	{
		System.out.println(">>>>>TransactionManager Object created<<<<<<");
		return new HibernateTransactionManager(sessionFactory);
	}
	@Bean(name="categoryDAO") 
			public CategoryDAO getCategoryDAO() {
		System.out.println("Category DAO Implementation");
				return new CategoryDAOimpl();
			}
	@Bean(name="supplierDAO") 
	public SupplierDAO getSupplierDAO() {
		System.out.println("Supplier DAO Implementation");
		return new SupplierDAOimpl();
	}
	@Bean(name="productDAO") 
	public ProductDAO getProductDAO() {
		System.out.println("Product DAO Implementation");
		return new ProductDAOimpl();
	}
	@Bean(name="cartDAO") 
	public CartDAO getCartDAO() {
		System.out.println("Cart DAO Implementation");
		return new CartDAOimpl();
	}
	@Bean(name="userDAO") 
	public UserDAO getUserDAO() {
		System.out.println("User DAO Implementation");
		return new UserDAOimpl();
	}
	}