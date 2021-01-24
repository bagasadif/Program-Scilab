/*
Author    : Bagas Adi Firdaus
Deskripsi : Program Metode Newton-Raphson
*/

function [x,y]=newton()
    x0 = input('Masukkan tebakan awal x0 = ');
    n=input('Masukkan jumlah iterasi = ');
    
    printf('\nFungsi Newton Raphson Scilab');
    x=zeros(n,1);
    y=zeros(n,1);
    
    x(1)=x0-(f(x0)/turunanf(x0));
    y(1)=f(x(1));
    
    printf('\nIterasi 1 -> \t x1 = %.6f \t f(x1) = %.6f', x(1), y(1));
    
    for i=2:n
        x(i)=x(i-1)-(f(x(i-1))/turunanf(x(i-1)));
        y(i)=f(x(i));
        printf('\niterasi %d -> \t x%d = %.6f \t f(x%d) = %.6f', i, i, x(i), i, y(i));
    end
    
    printf('\n\nJadi hampiran akarnya adalah x = %.6f', x(i));
endfunction
