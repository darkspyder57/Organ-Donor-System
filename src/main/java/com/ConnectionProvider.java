package com;

import java.sql.Connection;
import java.sql.DriverManager;



public class ConnectionProvider { 
	  final static String URL ="jdbc:mysql://localhost:3306/Organ";
	  final static String USER ="root";
	  final static String pass ="root";
	  public static Connection con() {
		  Connection con;
		  try {
			  Class.forName("com.mysql.cj.jdbc.Driver");
			  con=DriverManager.getConnection(URL,USER,pass);
			  return con;
		  }catch(Exception e) {
			   System.out.println(e);
			   return null;   
		  }	  
	  } 
	 

}
