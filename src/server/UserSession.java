/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

public class UserSession {
    private static String id;
    private static String username;
    private static String nama;
    private static String level;
    
    //user session : id_________________________________________________________
    public static String get_id() {
        return id;
    } 
    public static void set_id(String id) {
        UserSession.id = id;
    }
    //user session : username___________________________________________________
    public static String get_username() {
        return username;
    } 
    public static void set_username(String username) {
        UserSession.username = username;
    }
    public static String get_nama() {
        return nama;
    } 
    public static void set_nama(String nama) {
        UserSession.nama = nama;
    }
    public static String get_level() {
        return level;
    } 
    public static void set_level(String level) {
        UserSession.level = level;
    }
    
}
