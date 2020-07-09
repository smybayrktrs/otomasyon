
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class üyeİşlemleri {

    private Connection con = null;
    private Statement statement = null ;
    private PreparedStatement preparedStatememnt = null ;
    private PreparedStatement preparedStatement;
    
    public void üyeYap (String username, String password) {
         String sorgu = "Insert Into üyeler (username,password) VALUES(?,?)";
        
        try {
            preparedStatement = con.prepareStatement(sorgu);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(üyeİşlemleri.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public ArrayList <Kitaplar> kitaplarıGetir () {
        
        ArrayList <Kitaplar> cikti = new ArrayList <Kitaplar> ();
        try {
            statement = con.createStatement() ;
            String sorgu = " Select * From kitaplar " ;
            ResultSet rs = statement.executeQuery(sorgu) ;
            while (rs.next()) {
                int id = rs.getInt("id") ;
                String Ad = rs.getString("Ad") ;
                String Yazar = rs.getString("Yazar") ;
                int SayfaSayisi =rs.getInt("SayfaSayisi") ;
                cikti.add(new Kitaplar (id,Ad,Yazar,SayfaSayisi)) ;
                
            }
            return cikti ;
            
        } catch (SQLException ex) {
            Logger.getLogger(üyeİşlemleri.class.getName()).log(Level.SEVERE, null, ex);
        return null ;
        }
        
    }   
    
    public void kitapTeslimEt (String ad, String yazar) {
           String sorgu = "Delete from kitaplar where Ad = ? AND Yazar = ?";
        
        try {
            preparedStatement = con.prepareStatement(sorgu);
            
            
            preparedStatement.setString(1, ad);
            preparedStatement.setString(2, yazar);
            
            preparedStatement.executeUpdate();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(üyeİşlemleri.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public üyeİşlemleri () {
    
  String url = "jdbc:mysql://" + Database.host + ":" + Database.port + "/" + Database.dbİsmi + "?useTimezone=true&serverTimezone=UTC";
   
  /* try {
            
            Class.forName("com.mysql.cj.jdbc.Driver.");
            
        } catch (ClassNotFoundException ex) {
            System.out.println("Driver Bulunamadı!");
        }
     
    */    
        try {
            con = DriverManager.getConnection(url, Database.kullaniciAdi, Database.parola);
            System.out.println("Bağlantı Başarılı.");
            
        } catch (SQLException ex) {
            System.out.println("Bağlantı Başarısız!!");
         
        }
    }   

    public boolean girisYap(String kullaniciAdi,String parola) {
        
        String sorgu =  "Select * From üyeler where username = ? and password = ?";
        
        try {
            preparedStatement = con.prepareStatement(sorgu);
            
            preparedStatement.setString(1,kullaniciAdi);
            preparedStatement.setString(2,parola);
            
            ResultSet rs =  preparedStatement.executeQuery();
            
            return rs.next();
            
        } catch (SQLException ex) {
            Logger.getLogger(üyeİşlemleri.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }        
    }

    public void üyedenKitapAl (String ad,String yazar,String sayfaSayisi) {
        
        String sorgu = "Insert Into kitaplar (Ad,Yazar, SayfaSayisi) VALUES(?,?,?)";
        
        try {
            preparedStatement = con.prepareStatement(sorgu);    
            preparedStatement.setString(1, ad);
            preparedStatement.setString(2, yazar);
            preparedStatement.setString(3, sayfaSayisi);
            preparedStatement.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(üyeİşlemleri.class.getName()).log(Level.SEVERE, null, ex);
        }
    
    }
} 