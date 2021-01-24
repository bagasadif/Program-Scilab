/*
Author    : Bagas Adi Firdaus
Deskripsi : Program Penyelesaian Persamaan Tak linear Metode Regula Falsi
*/

function regulaFalsi()
    a=input('Masukkan nilai batas bawah = ');
    b=input('Masukkan nilai batas atas = ');
    tol=input('Masukkan nilai toleransi = ');
    printf('\nFungsi Regula Falsi Scilab\n\n');
    fa = f(a);
    fb = f(b);
    i=1;        //untuk menunjukkan iterasi ke berapa
   
    if(f(a)*f(b)>0)
        printf('\nfungsi f(a)*f(b)>0 maka tidak ada akar pada > > [%d.%d]',a,b)
        
      else
           e=abs(b-a);  //e = |b-a|
           
        //looping akan terus berlanjut sampai |a-b| > toleransi
        while(e>tol);
            tempa = a;  //tempa adalah titik a sebelum diubah
            tempb = b   //tempb adalah titik b sebelum diubah  
            c = b - ((fb*(b-a))/(fb-fa));   //hitung titik c
            fc = f(c);  //hitung f(c)
            
            //Jika f(c) == 0 maka akar berada di = c
            if fa*fc == 0 
                break;
                
            //Jika fa*fc>0 maka selang akan menjadi [c,b] 
            elseif fa*fc>0  
                a = c;
                
            //Jika fa*fc<0 maka selang akan menjadi [a,c] 
            else
                b = c;
            end
            
            //Tampilkan iterasi ke berapa, titik a, titik b, nilai |b-a|, titik c, dan nilai f(c)
            printf('\iterasi-%d -> \t a=%.6f \t b=%.6f \t |b-a|=%.6f \t c=%.6f \t f(c)=%.6f\n',i,tempa,tempb, e, c,fc);
            e=abs(b-a);
            i=i+1;
        end
        
        i0 = i-1; //Varibel untuk mengetahui iterasi 1 sebelum terakhir
        
        //Tampilkan kesimpulan akhir hampiran akar ke layar
        printf('\iterasi-%d -> \t a=%.6f \t b=%.6f \t |a-b|=%.6f\n',i,tempa,tempb, e);
        
        printf('\nPada iterasi ke-%d -> |b-a|=%.6f < %.6f maka diambil penyelesaian pada iterasi ke-%d', i,e,tol,i0); 
          
        printf('\n\nJadi hampiran akarnya adalah x = %.6f', c);
        
    end
endfunction
