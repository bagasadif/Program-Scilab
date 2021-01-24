/*
Author    : Bagas Adi Firdaus
Deskripsi : Program Metode Beda Terbagi Newton
*/

printf('\nProgram Metode Beda Terbagi Newton\n');

X = [-1.0 0.0 2.0 3.5 4.0];
Y = [1.5 3.0 6.0 8.0 16.0];

printf('Diketahui Data Berikut:\n');

//Menampilkan data
for i=1:5
    printf('n = %d\t x = %.2f\t f(x) = %.6f\n',i-1, X(i),Y(i));
end
x=input('Masukkan nilai x yang akan dicari f(x)nya = ');

//Menyimpan Y[k] pada kolom 1 dari matriks ST (selisih terbagi)
for k=1:5
    ST(k,1)=Y(k);
end

//Membuat tabel selisih terbagi
for k=2:5
    for i=1 : 6-k
        ST(i,k)=(ST(i+1,k-1)-ST(i,k-1))/(X(i-1+k)-X(i));
    end
end
jumlah=ST(1,1);

//Menghitung p(x)
//Orde yang digunakan adalah orde terbesar (orde 4)
for i=2:5
    suku=ST(1,i);
    for k=1 : i-1
        suku=suku*(x-X(k));
    end
    jumlah=jumlah+suku;
end
hasil=jumlah;

printf('Orde yang digunakan adalah orde terbesar yaitu orde 4\nJadi nilai f(%.2f) adalah : %.6f', x, hasil);
