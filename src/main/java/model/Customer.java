package model;

public class Customer {
    private static int count=0;
    private  int id;
    private String name;
    private String email;
    private String address;

    public Customer(){}

    public Customer( String name, String email, String address) {
        this.id = createID();
        this.name = name;
        this.email = email;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    private static int createID(){
        count+=1;
        return count;
    }
}
