/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.pccu.Movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


import java.io.*;
import java.sql.*;
import javax.servlet.http.*;
import com.google.appengine.api.utils.SystemProperty;
/**
 *
 * @author Amy
 */
public class TicketDAODBImpl implements TicketDAO{
	//final String DRIVER_NAME = "com.mysql.jdbc.Driver"; 
    //final String CONN_STRING = "jdbc:mysql://173.194.237.158:3306/movie_ticket?"
    //        + "user=admin&password=admin&useUnicode=true&characterEncoding=utf-8";
    //final String DRIVER_NAME ="com.mysql.jdbc.GoogleDriver";
    //final String CONN_STRING = "jdbc:google:mysql://javalab-1033:cinema/movie_ticket?"
    //          + "user=admin&password=admin&useUnicode=true&characterEncoding=utf-8";	//我記得是要用root 我下雖然技術文章中也有提到可以用其他使用者驗一 主網頁上說又說一定要用root 吧 我最下面有root的
    
    //final String DRIVER_NAME ="com.mysql.jdbc.GoogleDriver";
    //final String CONN_STRING = "jdbc:google:mysql://javalab-1033:cinema/movie_ticket?"
    //          + "user=root&useUnicode=true&characterEncoding=utf-8";
    
    final String DRIVER_NAME ="com.mysql.jdbc.GoogleDriver";
    final String CONN_STRING = "jdbc:google:mysql://javalab-1033:cinema/movie_ticket?user=root&useUnicode=true&characterEncoding=utf-8";
    
    @Override
    public ArrayList<Ticket> getAllTickets() {
        try {
            Class.forName(DRIVER_NAME); // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try
            // catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            Statement stmt = conn.createStatement();
            String query = "Select * from ticket_Info where valid = 'Y'";
            ResultSet rs = stmt.executeQuery(query);
            ArrayList<Ticket> alist = new ArrayList();
            while (rs.next()) {
                /*alist.add(new Ticket(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6), rs.getString(7)));*/            	
				alist.add(new Ticket(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6),
						rs.getString(7), rs.getString(8)));
            }
            return alist;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TicketDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TicketDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Ticket> getOrderedTickets(String mail_account, String phone_password) {
        try {
            Class.forName(DRIVER_NAME); // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try
            // catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            Statement stmt = conn.createStatement();
            String query = "Select * from ticket_Info WHERE valid = 'Y' "
            		+ "AND mail_account = '" + mail_account +
                    "' AND phone_password = '" + phone_password + "'";
            ResultSet rs = stmt.executeQuery(query);
            ArrayList<Ticket> alist = new ArrayList();
            while (rs.next()) {
                alist.add(new Ticket(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6),
						rs.getString(7), rs.getString(8)));

            }
            return alist;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TicketDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TicketDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Ticket> getOrderedTickets(String mail_account) {
        try {
            Class.forName(DRIVER_NAME); // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try
            // catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            Statement stmt = conn.createStatement();
            String query = "Select * from ticket_Info WHERE valid = 'Y'"
            		+ " AND mail_account='" + mail_account + "'";
            ResultSet rs = stmt.executeQuery(query);
            ArrayList<Ticket> alist = new ArrayList();
            while (rs.next()) {
                alist.add(new Ticket(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6),
						rs.getString(7), rs.getString(8)));

            }
            return alist;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TicketDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TicketDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

	@Override
	public int cancel_ticket(Ticket ticket) {
		int count = 0;
    	try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            conn.setAutoCommit(false);            
            //嚙踝蕭謕蕭豲���嚙踝����蕭����嚙踐�ket_Info���嚙踝蕭��嚙踝蕭謕蕭��雓�鞊船�嚙踝蕭謕蕭豲嚙踝蕭������蕭嚙踐�
            String query = "update ticket_Info set valid = ? WHERE ticket_no = ? AND valid = ?";
            PreparedStatement ppstemt = conn.prepareStatement(query);
            ppstemt.setString(1, "N");
            ppstemt.setInt(2, ticket.getTicket_no());
            ppstemt.setString(3, "Y");
            ppstemt.executeUpdate();
            
            //嚙踝蕭謕蕭��嚙踝蕭��嚙踝蕭謕蕭��雓�雓葡����嚙踐失om_seat���嚙踝蕭��嚙踝蕭謕蕭��雓�鞊船�嚙踝蕭謕蕭豲嚙踝蕭������蕭嚙踐�
            query = "UPDATE room_seat SET sold = ?, ticket_no = ? WHERE ticket_no = ?";
            ppstemt = conn.prepareStatement(query);
            ppstemt.setString(1, "N");
            ppstemt.setNull(2, java.sql.Types.INTEGER);
            ppstemt.setInt(3, ticket.getTicket_no());
            count = ppstemt.executeUpdate();
            
            conn.commit();
            conn.setAutoCommit(true);
            ppstemt.cancel();            
            conn.close();
            return count;
    	} catch (ClassNotFoundException ex) {
            Logger.getLogger(TicketDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TicketDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
		return -1;
	}

    
    @Override
    public int remove_ticket(Ticket ticket) {
        int count = 0;
    	try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            String query = "Delete from ticket_Info where ticket_no = ?";
            PreparedStatement ppstemt = conn.prepareStatement(query);
            //ppstemt.setInt(1, student.student_Id);
            ppstemt.setInt(1, ticket.getTicket_no());
            count = ppstemt.executeUpdate();
            ppstemt.cancel();
            conn.close();
            return count;

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(TicketDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(TicketDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
		return -1;
    }

	@Override
	public int add_ticket(Ticket ticket) {

            int count = 0;    
          try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            String query = "Insert into ticket_Info "
                         + "(mail_account,phone_password,order_date,"
                         + "session_ID,people,valid,seat_list)"
            		 +" VALUES (?,?,?,?,?,?,?)";
            PreparedStatement ppstemt = conn.prepareStatement(query);

            //ppstemt.setInt(1, customer.get_C_ticket_no());
            ppstemt.setString(1, ticket.getMail_account());
            ppstemt.setString(2, ticket.getPhone_password());
            ppstemt.setString(3, ticket.getOrder_date());
            ppstemt.setInt(4, ticket.getSession_ID());
            ppstemt.setInt(5, ticket.getPeople());
            ppstemt.setString(6, ticket.getValid());
            ppstemt.setString(7, ticket.getSeat_list());
        
            ppstemt.executeUpdate();
            count = ppstemt.executeUpdate();
            ppstemt.cancel();
            conn.close();           
            
            return count;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }      
               
        return -1;
                
	}    

    @Override
    public int add_ticket_no(Ticket ticket) {
        
 
          try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            String query = "Insert into ticket_Info "
                         + "(mail_account,phone_password,order_date,"
                         + "session_ID,people,valid,seat_list)"
            		 +" VALUES (?,?,?,?,?,?,?)";
            PreparedStatement ppstemt = conn.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);

            //ppstemt.setInt(1, customer.get_C_ticket_no());
            ppstemt.setString(1, ticket.getMail_account());
            ppstemt.setString(2, ticket.getPhone_password());
            ppstemt.setString(3, ticket.getOrder_date());
            ppstemt.setInt(4, ticket.getSession_ID());
            ppstemt.setInt(5, ticket.getPeople());
            ppstemt.setString(6, ticket.getValid());
            ppstemt.setString(7, ticket.getSeat_list());
            ppstemt.executeUpdate();
            ResultSet rs = ppstemt.getGeneratedKeys();
            rs.next();
            int auto_id = rs.getInt(1);
            rs.close();
            ppstemt.cancel();
            conn.close();           
            
            return auto_id;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }      
               
        return -1;
    }

   
}
