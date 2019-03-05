package POJOS;
// Generated 5 Mar, 2019 9:19:09 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * ProductMaster generated by hbm2java
 */
public class ProductMaster  implements java.io.Serializable {


     private Integer productId;
     private String productName;
     private String category;
     private Integer quantity;
     private Float price;
     private String company;
     private Set orderses = new HashSet(0);
     private Set carts = new HashSet(0);

    public ProductMaster() {
    }

    public ProductMaster(String productName, String category, Integer quantity, Float price, String company, Set orderses, Set carts) {
       this.productName = productName;
       this.category = category;
       this.quantity = quantity;
       this.price = price;
       this.company = company;
       this.orderses = orderses;
       this.carts = carts;
    }
   
    public Integer getProductId() {
        return this.productId;
    }
    
    public void setProductId(Integer productId) {
        this.productId = productId;
    }
    public String getProductName() {
        return this.productName;
    }
    
    public void setProductName(String productName) {
        this.productName = productName;
    }
    public String getCategory() {
        return this.category;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }
    public Integer getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    public Float getPrice() {
        return this.price;
    }
    
    public void setPrice(Float price) {
        this.price = price;
    }
    public String getCompany() {
        return this.company;
    }
    
    public void setCompany(String company) {
        this.company = company;
    }
    public Set getOrderses() {
        return this.orderses;
    }
    
    public void setOrderses(Set orderses) {
        this.orderses = orderses;
    }
    public Set getCarts() {
        return this.carts;
    }
    
    public void setCarts(Set carts) {
        this.carts = carts;
    }




}


