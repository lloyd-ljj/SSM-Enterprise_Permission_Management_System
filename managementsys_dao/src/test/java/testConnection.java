import org.junit.Test;

import java.sql.*;

public class testConnection {
    @Test
    public void main(){
        Connection ct=null;
        Statement sm=null;
        ResultSet rs=null;
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            ct=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:orcl","ssm","lianlianjie");
            sm=ct.createStatement();
            rs=sm.executeQuery("select * from product");
            while(rs.next()){
                System.out.println("产品名为："+rs.getString(2));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
            try{
                rs.close();
                sm.close();
                ct.close();
            }
            catch(Exception e1){
                e1.printStackTrace();
            }
            finally{
            }
        }
    }
}
