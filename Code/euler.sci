/*
Author    : Bagas Adi Firdaus
Deskripsi : Program PDB Metode Euler
*/

printf('\nProgram PDB Metode Euler\n');
b=input('Masukkan nilai t yang akan dicari x(t) nya = ');
h=input('Masukkan nilai h = ');
t0 = 0;
x0 = 0;
y0 = 1;
x = x0;
y = y0;
t = t0;
n = (b-t0)/h;

function turunanx=f1(t, x, y)
    turunanx = x*y + t;
endfunction

function turunany=f2(t, x)
    turunany = x - t;
endfunction

printf('n\tt\tx\t\ty\n');
printf('%d\t%.2f\t%.8f\t%.8f\n',0 , t, x, y);
for r=1:n
    tempx = x;
    x = x + h*f1(t,x,y);
    y = y + h*f2(t,tempx);
    t = t+h;
    printf('%d\t%.2f\t%.8f\t%.8f\n',r , t, x, y);
end
hasil=x;
printf('Jadi nilai x(%.2f) adalah : %.8f',b, x);
