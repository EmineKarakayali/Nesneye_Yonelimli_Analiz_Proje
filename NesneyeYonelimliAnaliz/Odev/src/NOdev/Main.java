package NOdev;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        boolean durum;
        VeriTabani vt = new VeriTabani();
        Scanner scan=new Scanner(System.in);
        int sayac=0;


        if(sayac!=0)
        {
            String ad=scan.nextLine();
        }
        System.out.println("kullanici adi:");
        String ad=scan.nextLine();
        System.out.println(" ");
        System.out.println("Şifre: ");
        String sifre=scan.nextLine();
        vt.Veri(ad, sifre);

        sayac++;
    }
    }


