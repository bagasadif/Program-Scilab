/*
Author    : Bagas Adi Firdaus
Deskripsi : Program PDB Metode Runge-Kutta Orde 4
*/

printf('\nProgram PDB Metode Runge-Kutta Orde 4\n');
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
    k1x = h*f1(t,x,y);
    k2x = h*f1(t+h/2, x+k1x/2, y+k1x/2);
    k3x = h*f1(t+h/2, x+k2x/2, y+k2x/2);
    k4x = h*f1(t+h, x+k3x, y+k3x);
    k1y = h*f2(t,x);
    k2y = h*f2(t+h/2, x+k1y/2);
    k3y = h*f2(t+h/2, x+k2y/2);
    k4y = h*f2(t+h, x+k3y);
    x = x + (k1x + 2*k2x + 2*k3x + k4x)/6;
    y = y + (k1y + 2*k2y + 2*k3y + k4y)/6;
    t = t+h;
    printf('%d\t%.2f\t%.8f\t%.8f\n',r ,t, x, y);
end
printf('Jadi nilai x(%.2f) adalah : %.8f',b, x);
