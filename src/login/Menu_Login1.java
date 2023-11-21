/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

import Menu_Master.peminjaman;
import beranda.menu_utama_GURU;
import beranda.menu_utama_KEPALA;
import beranda.menu_utama_LABORAN;

import static java.lang.Thread.sleep;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import server.UserSession;

import server.koneksi;

public class Menu_Login1 extends javax.swing.JFrame {

    Connection con = koneksi.getConnection();;
    ResultSet rs;
    String id = UserSession.get_id();
    String username = UserSession.get_username();
    String nama = UserSession.get_nama();
    String level = UserSession.get_level();
    
     public void tanggal_jam_sekarang(){
        Thread p;
        p = new Thread(){
            public void run(){
                for(;;){
                    
                    Calendar cal = new GregorianCalendar();
           
                    int jam = cal.get(Calendar.HOUR);
                    int menit = cal.get(Calendar.MINUTE);
                    int detik = cal.get(Calendar.SECOND);
                    int AM_PM = cal.get(Calendar.AM_PM);
                    
                    String day_night = "";
                    if(AM_PM == 1)
                    {
                        day_night = "PM";       
                    }
                    else
                    {
                        day_night ="AM";
                    }
                    String waktuu = jam + ":" + menit + ":" + detik + " " + day_night;
                    waktu.setText(waktuu);
                    
                    try{
                        sleep(1000);
                    }catch(InterruptedException ex){
                        Logger.getLogger(Menu_Login1.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        };
p.start();
}
    
    
    public Menu_Login1() {
        initComponents();
        setLocationRelativeTo(this);
        tanggal();  
        tanggal_jam_sekarang();    
    }
    
     public  void tanggal(){           
        Date ys = new Date();
        SimpleDateFormat s = new SimpleDateFormat("dd-MM-yyyy");
        txtTGL2.setText(s.format(ys));  
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jInternalFrame1 = new javax.swing.JInternalFrame();
        jPanel3 = new javax.swing.JPanel();
        judul_signin = new javax.swing.JLabel();
        judul_signin1 = new javax.swing.JLabel();
        exit = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        txtTGL2 = new javax.swing.JLabel();
        waktu = new javax.swing.JLabel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        Kesiswaan3 = new javax.swing.JPanel();
        jLabel18 = new javax.swing.JLabel();
        jLabel19 = new javax.swing.JLabel();
        In_username5 = new javax.swing.JTextField();
        submitGURU = new javax.swing.JButton();
        In_password5 = new javax.swing.JPasswordField();
        Inventory = new javax.swing.JPanel();
        jLabel20 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        In_username6 = new javax.swing.JTextField();
        submitLABORAN = new javax.swing.JButton();
        In_password6 = new javax.swing.JPasswordField();
        Administrasi = new javax.swing.JPanel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        In_username2 = new javax.swing.JTextField();
        submitKEPLAB = new javax.swing.JButton();
        In_password2 = new javax.swing.JPasswordField();
        about = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();

        jInternalFrame1.setVisible(true);

        javax.swing.GroupLayout jInternalFrame1Layout = new javax.swing.GroupLayout(jInternalFrame1.getContentPane());
        jInternalFrame1.getContentPane().setLayout(jInternalFrame1Layout);
        jInternalFrame1Layout.setHorizontalGroup(
            jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        jInternalFrame1Layout.setVerticalGroup(
            jInternalFrame1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);

        jPanel3.setBackground(new java.awt.Color(204, 204, 255));
        jPanel3.setLayout(null);

        judul_signin.setFont(new java.awt.Font("Times New Roman", 1, 36)); // NOI18N
        judul_signin.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        judul_signin.setText("Aplikasi Persetujuan Laboratorium IPA");
        jPanel3.add(judul_signin);
        judul_signin.setBounds(110, 10, 630, 40);

        judul_signin1.setFont(new java.awt.Font("Source Sans Pro", 1, 18)); // NOI18N
        judul_signin1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        judul_signin1.setText("SMA Bina Dharma");
        jPanel3.add(judul_signin1);
        judul_signin1.setBounds(280, 50, 270, 30);

        exit.setBackground(new java.awt.Color(255, 255, 255));
        exit.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        exit.setIcon(new javax.swing.ImageIcon(getClass().getResource("/asd/pixelLab/Baru/icons8-exit-32.png"))); // NOI18N
        exit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                exitActionPerformed(evt);
            }
        });
        jPanel3.add(exit);
        exit.setBounds(790, 10, 40, 40);

        jLabel4.setFont(new java.awt.Font("Tahoma", 2, 12)); // NOI18N
        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setText("Jalan Raya Ciracas No.39, RT.6/RW.11, Kelapa Dua Wetan, Ciracas, Kota Jakarta Timur");
        jPanel3.add(jLabel4);
        jLabel4.setBounds(130, 90, 570, 15);

        jLabel5.setFont(new java.awt.Font("Tahoma", 2, 12)); // NOI18N
        jLabel5.setText(" Daerah Khusus Ibukota Jakarta 13740, Indonesia");
        jPanel3.add(jLabel5);
        jLabel5.setBounds(280, 110, 280, 20);

        jPanel1.setBackground(new java.awt.Color(10, 61, 98));
        jPanel1.setPreferredSize(new java.awt.Dimension(836, 649));

        txtTGL2.setBackground(new java.awt.Color(51, 51, 51));
        txtTGL2.setFont(new java.awt.Font("Comic Sans MS", 1, 14)); // NOI18N
        txtTGL2.setForeground(new java.awt.Color(204, 204, 204));
        txtTGL2.setText("jLabel8");

        waktu.setBackground(new java.awt.Color(51, 51, 51));
        waktu.setFont(new java.awt.Font("Comic Sans MS", 1, 14)); // NOI18N
        waktu.setForeground(new java.awt.Color(204, 204, 204));
        waktu.setIcon(new javax.swing.ImageIcon(getClass().getResource("/iconnan/time.png"))); // NOI18N
        waktu.setText("jLabel8");

        jTabbedPane1.setFont(new java.awt.Font("Open Sans", 1, 12)); // NOI18N

        Kesiswaan3.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 255), 5, true));

        jLabel18.setFont(new java.awt.Font("Open Sans", 1, 24)); // NOI18N
        jLabel18.setForeground(new java.awt.Color(0, 0, 153));
        jLabel18.setText("Username");

        jLabel19.setFont(new java.awt.Font("Open Sans", 1, 24)); // NOI18N
        jLabel19.setForeground(new java.awt.Color(0, 0, 153));
        jLabel19.setText("Password");

        In_username5.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        In_username5.setHorizontalAlignment(javax.swing.JTextField.CENTER);

        submitGURU.setText("Login");
        submitGURU.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                submitGURUActionPerformed(evt);
            }
        });

        In_password5.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        In_password5.setHorizontalAlignment(javax.swing.JTextField.CENTER);

        javax.swing.GroupLayout Kesiswaan3Layout = new javax.swing.GroupLayout(Kesiswaan3);
        Kesiswaan3.setLayout(Kesiswaan3Layout);
        Kesiswaan3Layout.setHorizontalGroup(
            Kesiswaan3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, Kesiswaan3Layout.createSequentialGroup()
                .addContainerGap(50, Short.MAX_VALUE)
                .addGroup(Kesiswaan3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(Kesiswaan3Layout.createSequentialGroup()
                        .addGap(68, 68, 68)
                        .addComponent(jLabel18))
                    .addComponent(In_username5, javax.swing.GroupLayout.DEFAULT_SIZE, 260, Short.MAX_VALUE)
                    .addGroup(Kesiswaan3Layout.createSequentialGroup()
                        .addGap(72, 72, 72)
                        .addComponent(jLabel19))
                    .addGroup(Kesiswaan3Layout.createSequentialGroup()
                        .addGap(79, 79, 79)
                        .addComponent(submitGURU, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(In_password5))
                .addGap(45, 45, 45))
        );
        Kesiswaan3Layout.setVerticalGroup(
            Kesiswaan3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(Kesiswaan3Layout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addComponent(jLabel18)
                .addGap(6, 6, 6)
                .addComponent(In_username5, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(34, 34, 34)
                .addComponent(jLabel19)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(In_password5, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(submitGURU, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(45, 45, 45))
        );

        jTabbedPane1.addTab("Guru", Kesiswaan3);

        Inventory.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 255), 5, true));

        jLabel20.setFont(new java.awt.Font("Open Sans", 1, 24)); // NOI18N
        jLabel20.setForeground(new java.awt.Color(0, 0, 153));
        jLabel20.setText("Username");

        jLabel11.setFont(new java.awt.Font("Open Sans", 1, 24)); // NOI18N
        jLabel11.setForeground(new java.awt.Color(0, 0, 153));
        jLabel11.setText("Password");

        In_username6.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        In_username6.setHorizontalAlignment(javax.swing.JTextField.CENTER);

        submitLABORAN.setText("Login");
        submitLABORAN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                submitLABORANActionPerformed(evt);
            }
        });

        In_password6.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        In_password6.setHorizontalAlignment(javax.swing.JTextField.CENTER);

        javax.swing.GroupLayout InventoryLayout = new javax.swing.GroupLayout(Inventory);
        Inventory.setLayout(InventoryLayout);
        InventoryLayout.setHorizontalGroup(
            InventoryLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, InventoryLayout.createSequentialGroup()
                .addContainerGap(50, Short.MAX_VALUE)
                .addGroup(InventoryLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(In_password6)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, InventoryLayout.createSequentialGroup()
                        .addGap(68, 68, 68)
                        .addComponent(jLabel20))
                    .addComponent(In_username6, javax.swing.GroupLayout.DEFAULT_SIZE, 260, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, InventoryLayout.createSequentialGroup()
                        .addGap(72, 72, 72)
                        .addComponent(jLabel11))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, InventoryLayout.createSequentialGroup()
                        .addGap(79, 79, 79)
                        .addComponent(submitLABORAN, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(45, 45, 45))
        );
        InventoryLayout.setVerticalGroup(
            InventoryLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(InventoryLayout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addComponent(jLabel20)
                .addGap(6, 6, 6)
                .addComponent(In_username6, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(34, 34, 34)
                .addComponent(jLabel11)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(In_password6, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 18, Short.MAX_VALUE)
                .addComponent(submitLABORAN, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(45, 45, 45))
        );

        jTabbedPane1.addTab("Laboran", Inventory);

        Administrasi.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(0, 0, 255), 5, true));

        jLabel12.setFont(new java.awt.Font("Open Sans", 1, 24)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(0, 0, 153));
        jLabel12.setText("Username");

        jLabel13.setFont(new java.awt.Font("Open Sans", 1, 24)); // NOI18N
        jLabel13.setForeground(new java.awt.Color(0, 0, 153));
        jLabel13.setText("Password");

        In_username2.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        In_username2.setHorizontalAlignment(javax.swing.JTextField.CENTER);

        submitKEPLAB.setText("Login");
        submitKEPLAB.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                submitKEPLABActionPerformed(evt);
            }
        });

        In_password2.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        In_password2.setHorizontalAlignment(javax.swing.JTextField.CENTER);

        javax.swing.GroupLayout AdministrasiLayout = new javax.swing.GroupLayout(Administrasi);
        Administrasi.setLayout(AdministrasiLayout);
        AdministrasiLayout.setHorizontalGroup(
            AdministrasiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, AdministrasiLayout.createSequentialGroup()
                .addContainerGap(50, Short.MAX_VALUE)
                .addGroup(AdministrasiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(In_password2)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, AdministrasiLayout.createSequentialGroup()
                        .addGap(68, 68, 68)
                        .addComponent(jLabel12))
                    .addComponent(In_username2, javax.swing.GroupLayout.DEFAULT_SIZE, 260, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, AdministrasiLayout.createSequentialGroup()
                        .addGap(72, 72, 72)
                        .addComponent(jLabel13))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, AdministrasiLayout.createSequentialGroup()
                        .addGap(79, 79, 79)
                        .addComponent(submitKEPLAB, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(45, 45, 45))
        );
        AdministrasiLayout.setVerticalGroup(
            AdministrasiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(AdministrasiLayout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addComponent(jLabel12)
                .addGap(6, 6, 6)
                .addComponent(In_username2, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(34, 34, 34)
                .addComponent(jLabel13)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(In_password2, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 18, Short.MAX_VALUE)
                .addComponent(submitKEPLAB, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(45, 45, 45))
        );

        jTabbedPane1.addTab("Kepala Lab", Administrasi);

        about.setBackground(new java.awt.Color(10, 61, 98));
        about.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon skripsi/icons8-about-32.png"))); // NOI18N
        about.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                aboutMouseClicked(evt);
            }
        });
        about.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                aboutActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(txtTGL2, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(waktu, javax.swing.GroupLayout.PREFERRED_SIZE, 129, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(227, 227, 227)
                        .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 370, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(about, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(239, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtTGL2)
                    .addComponent(waktu))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 400, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 43, Short.MAX_VALUE)
                .addComponent(about, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        jPanel3.add(jPanel1);
        jPanel1.setBounds(0, 140, 836, 530);

        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/asd/pixelLab/Baru/SMA BARU(70).png"))); // NOI18N
        jLabel2.setText("jLabel2");
        jPanel3.add(jLabel2);
        jLabel2.setBounds(10, 10, 69, 70);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, 668, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        setBounds(0, 0, 836, 668);
    }// </editor-fold>//GEN-END:initComponents

    private void exitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_exitActionPerformed
     if (JOptionPane.showConfirmDialog(null, "Yakin ingin keluar?", "Aplikasi Persetujuan Laboratorium IPA", JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION) {
            this.setVisible(false);
            System.exit(0);
        }
    }//GEN-LAST:event_exitActionPerformed

    private void submitKEPLABActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_submitKEPLABActionPerformed
        String user = In_username2.getText();
        String pass = In_password2.getText();
        try {
            Statement st = con.createStatement();
            String sql = "SELECT * FROM  user where username='"+user+"' and password='"+pass+"'";
            rs = st.executeQuery(sql);
        if (rs.next()) {
                String id = rs.getString("id_user");
                String username = rs.getString("username");
                String nama = rs.getString("nm_lengkap");
                String level = rs.getString("level");
                
                UserSession.set_id(id);
                UserSession.set_username(username);
                UserSession.set_nama(nama);
                UserSession.set_level(level);
                
                switch (level) {
                    case "Kepala Lab":
                    {
                        JOptionPane.showMessageDialog(null, "Selamat datang "+ nama +" !");
                        menu_utama_KEPALA dsb = new menu_utama_KEPALA();
                        dsb.dashKeplab();
                        dsb.setVisible(true);
                        dispose();
                        break;
                    }
                    default:
                }
            } else {
                JOptionPane.showMessageDialog(null, "Username atau password salah");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }//GEN-LAST:event_submitKEPLABActionPerformed

    private void submitLABORANActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_submitLABORANActionPerformed
        String user = In_username6.getText();
        String pass = In_password6.getText();
        try {
            Statement st = con.createStatement();
            String sql = "SELECT * FROM  user where username='"+user+"' and password='"+pass+"'";
            rs = st.executeQuery(sql);
            if (rs.next()) {
                String id = rs.getString("id_user");
                String username = rs.getString("username");
                String nama = rs.getString("nm_lengkap");
                String level = rs.getString("level");
                //set user data session
                UserSession.set_id(id);
                UserSession.set_username(username);
                UserSession.set_nama(nama);
                UserSession.set_level(level);

                switch (level) {
                    case "Laboran":
                    {
                        JOptionPane.showMessageDialog(null, "Selamat datang "+ nama +" !");
                        menu_utama_LABORAN dsb = new menu_utama_LABORAN();
                        dsb.dashLaboran();
                        //                        dsb.setExtendedState(JFrame.MAXIMIZED_BOTH);
                        dsb.setVisible(true);
                        dispose();
                        break;
                    }
                    default:
                }
            } else {
                JOptionPane.showMessageDialog(null, "Username atau password salah");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }//GEN-LAST:event_submitLABORANActionPerformed

    private void submitGURUActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_submitGURUActionPerformed
        String user = In_username5.getText();
        String pass = In_password5.getText();
        try {
            Statement st = con.createStatement();
            String sql = "SELECT * FROM user where username='"+user+"' and password='"+pass+"'";
            rs = st.executeQuery(sql);
            if (rs.next()) {
                String id = rs.getString("id_user");
                String username = rs.getString("username");
                String nama = rs.getString("nm_lengkap");
                String level = rs.getString("level");
                //set user data session
                UserSession.set_id(id);
                UserSession.set_username(username);
                UserSession.set_nama(nama);
                UserSession.set_level(level);

                switch (level) {
                    case "Guru":
                    {
                        JOptionPane.showMessageDialog(null, "Selamat datang "+ nama +" !");
                        //                        menu_utama1 dsb = new menu_utama1();
                        menu_utama_GURU dsb = new menu_utama_GURU();

                        dsb.dashGuru();
                        //                        dsb.setExtendedState(JFrame.MAXIMIZED_BOTH);
                        dsb.setVisible(true);
                        dispose();
                        break;
                    }
                    default:
                }
            } else {
                JOptionPane.showMessageDialog(null, "Username atau password salah");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }//GEN-LAST:event_submitGURUActionPerformed

    private void aboutMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_aboutMouseClicked
       new about().setVisible(true);
    }//GEN-LAST:event_aboutMouseClicked

    private void aboutActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_aboutActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_aboutActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Menu_Login1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Menu_Login1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Menu_Login1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Menu_Login1.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Menu_Login1().setVisible(true);
             
            }
        });
        
    
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel Administrasi;
    private javax.swing.JPasswordField In_password2;
    private javax.swing.JPasswordField In_password5;
    private javax.swing.JPasswordField In_password6;
    private javax.swing.JTextField In_username2;
    private javax.swing.JTextField In_username5;
    private javax.swing.JTextField In_username6;
    private javax.swing.JPanel Inventory;
    private javax.swing.JPanel Kesiswaan3;
    private javax.swing.JButton about;
    private javax.swing.JButton exit;
    private javax.swing.JInternalFrame jInternalFrame1;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JLabel judul_signin;
    private javax.swing.JLabel judul_signin1;
    private javax.swing.JButton submitGURU;
    private javax.swing.JButton submitKEPLAB;
    private javax.swing.JButton submitLABORAN;
    private javax.swing.JLabel txtTGL2;
    private javax.swing.JLabel waktu;
    // End of variables declaration//GEN-END:variables
}
