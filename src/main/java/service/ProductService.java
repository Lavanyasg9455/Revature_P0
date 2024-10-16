package service;

import java.util.ArrayList;
import java.util.List;
import dao.ProductDao;
import dto.ProductDto;
import entity.ProductDetails;
import exception.ProductsAreUnavailable;

public class ProductService {

    private ProductDao productDAO;

    public ProductService() {
        this.productDAO = new ProductDao();
    }

    public void addProduct(ProductDetails product) {
        if (product != null && product.getProduct_name() != null && !product.getProduct_name().isEmpty()) {
            boolean isAdded = productDAO.addProduct(product);
            if (isAdded) {
                System.out.println("Product added successfully!");
            } else {
                System.out.println("Failed to add product. Please try again.");
            }
        } else {
            System.out.println("Invalid product details. Please check the input and try again.");
        }
    }

    public List<ProductDto> getProductDetails(int categoryId) throws ProductsAreUnavailable {
    	System.out.println("entered");
        return productDAO.getProductDetails(categoryId);
    }

	public List<ProductDto> getProductsByCategory() throws ProductsAreUnavailable {
		// TODO Auto-generated method stub
		return productDAO.getProducts();
	}

	public List<ProductDto> getProductsbyletter(String name) throws ProductsAreUnavailable {
		// TODO Auto-generated method stub
		return productDAO.getProductsByletter(name);
	}

	public void removeProduct(int pid) {
		productDAO.removeProduct(pid);
	}

	public boolean updateProduct(ProductDetails p, int productId) {
		return productDAO.updateProduct(p,productId);
		
		
	}
	 public List<ProductDto> getProductDetailsbyId(int pid) throws ProductsAreUnavailable {
	    	System.out.println("entered");
	        return productDAO.getProductDetailsUsingPid(pid);
	    }


	
}
