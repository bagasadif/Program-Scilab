/*
Author    : Bagas Adi Firdaus
Deskripsi : Program Penyelesaian Persamaan Tak Linear Metode Sekan
*/

function sekan()
x0=input('Masukkan tebakan awal x0 = ');
x1=input('Masukkan tebakan awal x1 = ');
tol=input('Masukkan nilai toleransi = ');
printf('\nMetode Sekan\n\n');
i = 0;
n = i+1;
fx0 = f(x0);
fx1 = f(x1);

while abs(fx1) > tol
    tempx1 = x1;
    ftempx1 = f(tempx1);
    printf('iterasi-%d ->\t x%d = %.6f\t x%d = %.6f\t', i, i, x0, n, x1);
    fx0 = f(x0);
    printf('f(x%d) = %.6f\t', i, fx0);
    fx1 = f(x1);
    printf('f(x%d) = %.6f\n', n, fx1);
    x1 = tempx1 - ftempx1*(tempx1-x0)/(ftempx1-fx0);  
    x0 = tempx1;
    i = n;
    n = n+1;  
end
    j = i-1;
    
    printf('\nPada iterasi ke-%d -> f(x%d)=%.6f < tol=%.6f maka diambil penyelesaian pada iterasi ke-%d', j,i,fx1,tol,j);
    printf('\nJadi hampiran akarnya adalah x = %.6f', x0);
endfunction
