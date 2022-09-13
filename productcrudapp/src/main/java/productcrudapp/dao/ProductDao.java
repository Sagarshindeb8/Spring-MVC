package productcrudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productcrudapp.model.Product;

@Component //Spring will manage the lifecycle
public class ProductDao {

	@Autowired	//spring mvc will create the object and inject.
	private HibernateTemplate hibernateTemplate; //To perform database operations.
	
	
	//CREATE
	@Transactional	//To save the data in the database
	public void createProduct(Product product)
	{		
		this.hibernateTemplate.saveOrUpdate(product); //save can also be used, here update is combined.
	}
	
	//DISPLAY - Get All Products
	public List<Product> getProducts()
	{
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//DELETE - Single product
	@Transactional
	public void deleteProduct(int pid)
	{
		Product p = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	//READ - Get Single Product
	public Product getProduct(int pid)
	{
		return this.hibernateTemplate.get(Product.class,pid);
	}
}
