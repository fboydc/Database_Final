/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;
import db.OracleConnector;

/**
 *
 * @author admin
 */
public class OracleConnectorTest {
    
    public static void main(String[] args){
        OracleConnector con = new OracleConnector();
        con.getRecords("select username, password from users");
        System.out.println("test");
        
    }
    
}
