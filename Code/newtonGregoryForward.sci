/*
Author    : Bagas Adi Firdaus
Deskripsi : Program Metode Newton-Gregory Forward
*/

clear;
clc;
printf('\nProgram Metode Newton-Gregory Forward\n');
x=0.45;
X = [0.1 0.3 0.5 0.7 0.9 1.1];
Y = [0.003 0.067 0.148 0.248 0.370 0.518];
printf('Diketahui Data Berikut:\n');
//Menampilkan data
for i=1:6
    printf('n = %d\t x = %.6f\t f(x) = %.6f\n',i, X(i),Y(i));
end
x=input('Masukkan nilai x yang akan dicari f(x)nya = ');

//Fungsi pencari faktorial
function faktorial=faktorial(p)
    fak=1;
    for k=2 : p
        fak=fak*k;
    end
    faktorial=fak;
endfunction

//Menyimpan Y[k] pada kolom 1 matriks TS (tabel selisih)
for k=1:6
    TS(k,1)=Y(k);
end

//Membentuk tabel selisih
for k=2:6
    for i=1:7-k
        TS(i,k)=TS(i+1,k-1)-TS(i,k-1);
    end
end

//Jarak antar titik
h=X(2)-X(1);

//Menghitung p(x)
//Orde yang digunakan adalah orde terbesar (orde 5)
s=(x - X(1))/h;
jumlah=TS(1,1);
for i=2:6
    suku=TS(1,i);
    for k=0:i-2
        suku=suku*(s-k);
    end
    suku=suku/faktorial(i-1);
    jumlah=jumlah+suku;
end
hasil=jumlah;
printf('Orde yang digunakan adalah orde terbesar yaitu orde 5\nJadi nilai f(%.2f) adalah : %.6f', x, hasil);
