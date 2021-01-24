/*
Author    : Bagas Adi Firdaus
Deskripsi : Program Penyelesaian Persamaan Tak linear Metode Iterasi Titik Tetap
*/

function titikTetap()
x=input('Masukkan tebakan awal x0 = ');
tol=input('Masukkan nilai toleransi = ');
printf('\nIterasi Titik Tetap\n\n');
i = 0;
gx = g(x);
fgx = f(gx);

while abs(fgx) > tol
    tempx = x;
    printf('iterasi-%d ->\t x%d = %.6f\t', i, i, x);
    gx = g(x);
    printf('x%d=g(x%d) = %.6f\t', i, i, gx);
    fgx = f(gx);
    printf('f(gx%d) = %.6f\n', i, fgx);
    x = gx;
    i = i + 1;
end
    n = i-1;

    printf('\nPada iterasi ke-%d -> f(gx%d)=%.6f < tol=%.6f maka diambil penyelesaian pada iterasi ke-%d', n,n,fgx,tol,n);
    printf('\nJadi hampiran akarnya adalah x = %.6f', tempx);
endfunction
