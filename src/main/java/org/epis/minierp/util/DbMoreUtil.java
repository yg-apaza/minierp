package org.epis.minierp.util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;

public class DbMoreUtil {

    private static Connection connection = null;
    private static PreparedStatement ps = null;
    private static ResultSet rs = null;

    private static Connection getConnection() {
        if (connection != null) {
            return connection;
        } else {
            try {
                Properties prop = new Properties();
                InputStream inputStream = new FileInputStream("src/main/resources/db.properties");
                prop.load(inputStream);
                String driver = prop.getProperty("driver");
                String url = prop.getProperty("url");
                String user = prop.getProperty("user");
                String password = prop.getProperty("password");
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException | SQLException | IOException e) {
                e.printStackTrace();
            }
            return connection;
        }

    }
    
    /**
     * Funcion para ejecutar inserciones, modificaciones y eliminaciones en 
     * lenguaje SQL 
     * @param sentence Actualizacion de una tabla de la base de datos conectada
     * @return devuelve si la operacion fue realizada con exito o no
     */
    public static boolean executeUpdate(String sentence){
        try {
            ps = getConnection().prepareStatement(sentence);
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            return false;
        }
    }
    
    /**
     * Funcion que realiza una consulta en lenguaje SQL donde se indica la misma
     * y la cantidad de atributos que se estan consultando
     * @param sentence consutla SQL
     * @param size cantidad de atributos de la consulta (columnas)
     * @return Retorna un ArrayList que contiene Objetos[] que almacen el 
     * resultado de la consulta, devuelve null si sucedio un error en la 
     * consulta
     */
    public static ArrayList<Object[]> executeQuery(String sentence, int size){
        ArrayList<Object[]> array = new ArrayList<>();
        ArrayList<String> temp = new ArrayList<>();
        try {
            ps = getConnection().prepareStatement(sentence);
            rs = ps.executeQuery();
            while(rs.next()){
                for (int i = 1; i <= size; i++) {
                    temp.add(rs.getString(i));
                }
                array.add(temp.toArray());
                temp.clear();
            }
            return array;
        } catch (SQLException ex) {
            return null;
        }
    }
    
    /**
     * Devuelve la Fecha en formato String yyyy/MM/dd
     * @param myDate atributo fecha
     * @return String de la fecha
     */
    public static String getString2Date(Date myDate) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        return df.format(myDate);
    }

    /**
     * Devuelve la Fecha en formato Date yyyy/MM/dd
     * @param myDate atributo fecha como String
     * @return Date de la fecha
     * @throws java.text.ParseException
     */
    public static Date getDate2String(String myDate) throws ParseException {
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        return format.parse(myDate);
    }
    
    /**
     * Retorna un int de un Object siempre y cuando este sea un Entero y no letras
     * o simbolos, similar a (int)subInt
     * @param supInt
     * @return 
     */
    public static int getInt(Object supInt){
        return Integer.parseInt(supInt.toString());
    }
    
    /**
     * Retorna un char de un Object, la primera letra en caso de una palabra
     * compuesta
     * @param supChar
     * @return 
     */
    public static char getChar(Object supChar){
        return supChar.toString().charAt(0);
    }
    
    /**
     * Casteo de un Object a String
     * @param supString
     * @return 
     */
    public static String getString(Object supString){
        return (String) supString;
    }
}
