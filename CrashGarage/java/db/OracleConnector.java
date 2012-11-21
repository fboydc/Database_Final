/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class OracleConnector {
    
    private static final String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE" ;
    private static final String dbuser = "jing";
    private static final String dbpass = "zhu88jie";
    
    private Connection con;
    private Statement stmt;
    private ResultSet rs;
    
    static{
        try{
            //*** Load the jdbc-odbc bridge driver
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        }catch(Exception ex){
             Logger.getLogger(OracleConnector.class.getName()).log(Level.SEVERE, null, ex);
        }   
    }
    
    private void connect() throws SQLException{
        con = DriverManager.getConnection(url, dbuser, dbpass);
       
    }
    
    private void executeQuery(String query) throws SQLException{
        if(con != null){
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            
        }
    }
    
    private void disconnect() throws SQLException{

        stmt.close();
        con.close();       
    }
    
    public List<Map<String, String>> getRecords(String query){
        List<Map<String, String>> records = new ArrayList<Map<String, String>>();   
        try{
            connect();
            executeQuery(query);
            if(rs!=null){
            int numCols = rs.getMetaData().getColumnCount();
            while(rs.next()){
                System.out.println("rs.next");
                Map<String, String> record = new HashMap<String, String>();
                for(int i = 1; i <= numCols; i++){
                    String key = rs.getMetaData().getColumnName(i);
                    String value = rs.getString(i);
                    record.put(key, value);
                }
                records.add(record);
            }
            }
            disconnect();

        } catch (SQLException ex){
            Logger.getLogger(OracleConnector.class.getName()).log(Level.SEVERE, null, ex);

        }
        
        return records;
    }
    
    public boolean insertUpdateRecord(String query){
        try {
            connect();
            executeQuery(query);
            disconnect();
        } catch (SQLException ex) {
            Logger.getLogger(OracleConnector.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
        

    }
    
}
