/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import java.sql.*;
import javax.swing.JOptionPane;

public class koneksi {
  static Connection con;
   public static Connection getConnection() {
     try {
         con = DriverManager.getConnection("jdbc:mysql://localhost/persetujuan_lab_ipa","root","");         
     }catch (Exception e) {
         JOptionPane.showMessageDialog(null, "ERROR : Koneksi Gagal!");
         System.exit(0);
     }
       return con;
   }
}
