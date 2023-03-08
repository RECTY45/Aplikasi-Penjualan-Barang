/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package penjualanbarang;
import java.sql.*;
import javax.swing.JOptionPane;

public class koneksi {
 private String url="jdbc:mysql://localhost/uh_202048";
 private String username_laragon = "root";
 private String password_laragon = "";
 private Connection con;
 
 
 public void connect(){
     try {
         con = DriverManager.getConnection(url, username_laragon, password_laragon);
     } catch (Exception e) {
         JOptionPane.showMessageDialog(null, e.getMessage());
     }
 
 }

    public Connection getCon() {
        return con;
    }
    
    
}
