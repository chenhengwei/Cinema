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

public class SeatsDAODBImpl implements SeatDAO{
	
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
    public ArrayList<Seats> getAllSeats() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Seats> OrderedSeats() {
        
  try {
            Class.forName(DRIVER_NAME); // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try
            // catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            Statement stmt = conn.createStatement();
            String query = "Select * from room_seat where sold = 'Y' ";
            ResultSet rs = stmt.executeQuery(query);
            ArrayList<Seats> alist = new ArrayList();
            while (rs.next()) {
                alist.add(new Seats( rs.getString(2), rs.getString(3)) );
            }
            return alist;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Seats> remove_OrderedSeats(Seats seats) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int remove_Seats(Seats seats) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int add_Seats(Seats seats) {

            int count = 0;    
          try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            String query = "Insert into room_seat "
                         + "(room,R,S,sold,valid,ticket_no)"
            		 +" VALUES (?,?,?,?,?,?)";
            PreparedStatement ppstemt = conn.prepareStatement(query);

            //ppstemt.setInt(1, customer.get_C_ticket_no());
            ppstemt.setString(1, seats.room);
            ppstemt.setString(2, seats.R_a);
            ppstemt.setString(3, seats.S_a);
            ppstemt.setString(4, seats.sold);
            ppstemt.setString(5, seats.vaild);
            ppstemt.setInt(6, seats.ticket_no);

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
    public String find_Seat_by_RS(String R_a,String S_a) {
         try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);            
            String query = "Select * from room_seat where R = ? and S = ?";
            PreparedStatement ppstemt = conn.prepareStatement(query);
            ppstemt.setString(1, R_a);
            ppstemt.setString(2, S_a);

            ResultSet rs = ppstemt.executeQuery();
      
            if (rs.next()) {
                String s = rs.getString(4);
                //Seats t = new Seats(rs.getString(1), rs.getString(2), rs.getString(3));
                return s;
            } else {
                return "N";
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
         return "N";
    }

	@Override
	public int update_Seats(Seats seats) {
		int count = 0;
		try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            conn.setAutoCommit(false);            
            
            //嚙踝蕭謕蕭��雓葡����嚙踐失om_seat���嚙踝蕭��嚙踝蕭謕蕭��雓�鞊船�嚙踝蕭謕蕭豲嚙踝蕭������蕭嚙踐�
            String  query = "UPDATE room_seat SET sold = ?,ticket_no = ? "
                    + "WHERE room = ? AND R = ? AND S = ? AND valid = ? ";
            PreparedStatement ppstemt = conn.prepareStatement(query);
            ppstemt.setString(1, seats.getSold());
            ppstemt.setInt(2, seats.getTicket_no());
            ppstemt.setString(3, seats.getRoom());
            ppstemt.setString(4, seats.getR_a());
            ppstemt.setString(5, seats.getS_a());
            ppstemt.setString(6, seats.getVaild());
            count = ppstemt.executeUpdate();
            
            conn.commit();
            conn.setAutoCommit(true);
            ppstemt.cancel();            
            conn.close();
            return count;
    	} catch (ClassNotFoundException ex) {
            Logger.getLogger(SeatsDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SeatsDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
		return -1;
	}

}