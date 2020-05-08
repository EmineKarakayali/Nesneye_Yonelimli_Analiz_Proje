package NOdev;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import NOdev.IVeriTabani;


public class VeriTabani implements IVeriTabani {

    @Override
    public void Veri(String KullaniciAdi, String Sifre)

    {
        try {
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AkilliCihaz",
                    "postgres", "emine");

            if (conn != null)
                System.out.println("Veritabanına bağlandı!");
            else
                System.out.println("Veritabanına bağlantı başarısız!");


            String sql = "SELECT *  FROM \"Urun\" WHERE \"kullaniciAdi\"='"+KullaniciAdi+"'AND \"sifre\"='"+Sifre+"'";

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);


            if(rs.next()) {
                System.out.println("Kullanıcı bulundu ");

            }
            else {
                System.out.println("Kullanıcı bulunamadı ");
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (
                SQLException throwables) {
            throwables.printStackTrace();
        }


    }

}
