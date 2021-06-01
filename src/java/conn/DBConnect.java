
package conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
     Connection con =null;
    public Connection getConnect()
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/railways","root","29101998");
       
        
    }
        catch(Exception e)
        {
            System.out.println(e);
        }
    return con;
}
}
 