package edu.pccu.Movie;

import java.util.ArrayList;
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

public class CustomerDAODBImpl implements MovieDAO {

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
    public void add_Movie(Movie movie) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    @Override
        public int add1(Movie movie)  {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    

    @Override
    public void update_Movie(Movie movie) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void remove_Movie(Movie movie) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Movie findById_name_c(String movie_name_chinese) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Movie findById_movie_no(int movie_no) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Movie> getAllMovies() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
   @Override
    public ArrayList<Movie> findByName(String movie_name_chinese) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
    
    @Override
    public void add_Customer(Customer customer) {
        try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            String query = "Insert into ticket_Info "
                         + "(mail_account,phone_password,order_date,"
                         + "session_ID,people,valid,seat_list)"
            		 +" VALUES (?,?,?,?,?,?,?)";
            PreparedStatement ppstemt = conn.prepareStatement(query);

            //ppstemt.setInt(1, customer.get_C_ticket_no());
            ppstemt.setString(1, customer.get_C_mail_account());
            ppstemt.setString(2, customer.get_C_phone_password());
            ppstemt.setString(3, customer.get_C_order_date());
            ppstemt.setInt(4, customer.get_C_session_ID());
            ppstemt.setInt(5, customer.get_C_people());
            ppstemt.setString(6, customer.getValid());
            ppstemt.setString(7, customer.getSeat_list());
            ppstemt.executeUpdate();
            ppstemt.cancel();
            conn.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public void update_Customer(Customer customer) {

        try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);

            String query = "Update ticket_Info set "
                    + "mail_account = ?, phone_password = ?, order_date = ?, "
                    + "session_ID = ?, people = ?, customer_name = ? "
                    + "where ticket_no = ?";

//            String query = "Update ticket_Info set "
//                    + "movie_name_chinese = ?, movie_name_eng = ?, release_date = ?, "
//                    + "version = ?,movie_length = ?, actor = ?, director = ?, picture_url = ? "
//                    + "where movie_no = ?";
            //String query_find = "Update movie_Info set students_name = ?, students_phone = ? where students_id = ?";
            PreparedStatement ppstemt = conn.prepareStatement(query);
            //ppstemt.setInt(1, customer.get_C_ticket_no());
            ppstemt.setString(1, customer.get_C_mail_account());
            ppstemt.setString(2, customer.get_C_phone_password());
            ppstemt.setString(3, customer.get_C_order_date());
            ppstemt.setInt(4, customer.get_C_session_ID());
            ppstemt.setInt(5, customer.get_C_people());
            ppstemt.setString(6, customer.get_C_customer_name());
            ppstemt.setInt(7, customer.get_C_ticket_no());

            ppstemt.executeUpdate();
            ppstemt.cancel();
            conn.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public void remove_Customer(Customer customer) {
        try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            String query_find = "Delete from ticket_Info where ticket_no = ?";
            PreparedStatement ppstemt = conn.prepareStatement(query_find);
            //ppstemt.setInt(1, student.student_Id);
            ppstemt.setInt(1, customer.get_C_ticket_no());
            ppstemt.executeUpdate();
            ppstemt.cancel();
            conn.close();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public Customer findById_C_Mail_PhoneP(String mail_account, String phone_password) {
        try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            String query = "Select * from ticket_Info where mail_account = ? and phone_password = ?";
            PreparedStatement ppstemt = conn.prepareStatement(query);
            ppstemt.setString(1, mail_account);
            ppstemt.setString(2, phone_password);

            ResultSet rs = ppstemt.executeQuery();
            if (rs.next()) {
                Customer c = new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7));
                return c;
            } else {
                return null;
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    @Override
    public Customer findById_C_Mail(String mail_account) {
        try {
            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            String query = "Select * from ticket_Info where mail_account = ?";
            PreparedStatement ppstemt = conn.prepareStatement(query);
            ppstemt.setString(1, mail_account);

            ResultSet rs = ppstemt.executeQuery();
            if (rs.next()) {
                Customer c = new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7));
                return c;
            } else {
                return null;
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MovieDAODBImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    @Override
    public ArrayList<Customer> getAllCustomers() {
        try {

            Class.forName(DRIVER_NAME);  // 嚙踝蕭謕蕭豲���頩��蕭嚙踐�蕭豲���嚙踝蕭�����嚙踝蕭謈� 嚙踝蕭謕蕭豲�蕭嚙踐�蕭豲������嚙踐狀嚙踐���雓�嚙踝蕭謕 ������嚙踝蕭蹎刻嚙踝蕭謕蕭豲���蕭�嚙踐�蕭豲 expection , try catach 嚙踝蕭謕蕭��蕭謚迎蕭謕蕭���嚙踝蕭謕蕭豲嚙踝蕭謕
            Connection conn = DriverManager.getConnection(CONN_STRING);
            Statement stmt = conn.createStatement();
            String query = "Select * from ticket_Info";
            ResultSet rs = stmt.executeQuery(query);
            ArrayList<Customer> alist = new ArrayList();
            while (rs.next()) {
                alist.add(new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6),
                        rs.getString(7)));

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
	public int update_Movie2(Movie movie) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int remove_Movie2(Movie movie) {
		// TODO Auto-generated method stub
		return 0;
	}

}
