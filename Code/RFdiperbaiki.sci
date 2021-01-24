/*
Author    : Bagas Adi Firdaus
Deskripsi : Program Penyelesaian Persamaan Tak linear Metode Regula Falsi yang Diperbaiki
*/

function rfDiperbaiki()
    a=input('Masukkan nilai batas bawah = ');
    b=input('Masukkan nilai batas atas = ');
    tol=input('Masukkan nilai toleransi = ');
    printf('\nFungsi Regula Falsi Diperbaiki Scilab\n\n');
    fa = f(a);
    fb = f(b);
    i=1;        //untuk menunjukkan iterasi ke berapa
   
    if(f(a)*f(b)>0)
        printf('\nfungsi f(a)*f(b)>0 maka tidak ada akar pada > > [%d.%d]',a,b)
      else
           e=abs(a-b);  //e = |a-b|
           
        //looping akan terus berlanjut sampai |a-b| > toleransi
        while(e>tol);
            tempa = a;  //tempa adalah titik a sebelum diubah
            tempb = b   //tempb adalah titik b sebelum diubah  
            c = b - ((fb*(b-a))/(fb-fa));   //hitung titik c
            fc = f(c);  //hitung f(c)
            
            //Jika f(c) == 0 maka akar berada di = c
            if fa*fc == 0 
                break;
                
            //Jika fa*fc>0 maka selang akan menjadi [c,b] dan f(b) dibagi 2
            elseif fa*fc>0  
                a = c;
                fb = fb/2;
                
            //Jika fa*fc>0 maka selang akan menjadi [a,c] dan f(a) dibagi 2
            else
                b = c;
                fa = fa/2;
            end
            
            //Tampilkan iterasi ke berapa, titik a, titik b, nilai |a-b|, titik c, dan nilai f(c)
            printf('\iterasi-%d -> \t a=%.5f \t b=%.5f \t |a-b|=%.5f \t c=%.5f \t f(c)=%.5f\n',i,tempa,tempb, e, c,fc);
            e=abs(a-b);
            i=i+1;
        end
        
        i0 = i-1; //Varibel untuk mengetahui iterasi 1 sebelum terakhir
        
        //Tampilkan kesimpulan akhir hampiran akar ke layar
        printf('\iterasi-%d -> \t a=%.5f \t b=%.5f \t |a-b|=%.5f\n',i,tempa,tempb, e);
        
        printf('\nPada iterasi ke-%d -> |b-a| < %.5f maka diambil penyelesaian pada iterasi ke-%d', i,tol, i0); 
          
        printf('\n\nJadi hampiran akarnya adalah x = %.5f dengan f(x) = %.5f' , c, fc);
    end
endfunction
