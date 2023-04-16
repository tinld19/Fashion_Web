
package model;



public class Feedback {
    private String idProduct;
    private String username;
    private String scrip;
    private String date;

    public Feedback() {
    }

    public Feedback(String idProduct, String username, String scrip, String date) {
        this.idProduct = idProduct;
        this.username = username;
        this.scrip = scrip;
        this.date = date;
    }

    public String getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(String idProduct) {
        this.idProduct = idProduct;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getScrip() {
        return scrip;
    }

    public void setScrip(String scrip) {
        this.scrip = scrip;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Feedback{" + "idProduct=" + idProduct + ", username=" + username + ", scrip=" + scrip + ", date=" + date + '}';
    }
    
    
}
