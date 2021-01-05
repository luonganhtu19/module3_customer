package service;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private static Map<Integer, Customer>  customerList;
    private static int countID=0;
    static {
        customerList=new HashMap<>();
        customerList.put(createID(),new Customer("Dung","Dung@chimbe.com.vn","HP"));
        customerList.put(createID(),new Customer("Chien","Chien@chimteo.com","ThanhHoa"));
        customerList.put(createID(),new Customer("Tu","Tu@thongminh.com.vn","HD"));
        customerList.put(createID(),new Customer("Quang","Quang@vn.pv","VP"));
    }
    private static int createID(){
        countID+=1;
        return countID;
    }
    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(customerList.values());
    }
    @Override
    public Customer findById(int id) {
        return customerList.get(id);
    }
    @Override
    public void save(Customer customer) {
        customerList.put(createID(),customer);
    }
    @Override
    public void update(int id, Customer customer) {
        customerList.put(id,customer);
    }
    @Override
    public void remove(int id) {
        customerList.remove(id);
    }
}
