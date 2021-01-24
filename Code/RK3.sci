/*
Author    : Bagas Adi Firdaus
Deskripsi : Program PDB Metode Runge-Kutta Orde 3
*/

printf('\nProgram PDB Metode Runge-Kutta Orde 3\n');
b=input('Masukkan nilai x yang akan dicari y(x) nya = ');
h=input('Masukkan nilai h  = ');
x0 = 0;
y0 = 0;
x = x0;
y = y0;
n = (b-x0)/h;

function turunan = f(x,y)
    turunan = x + y;
endfunction

for r=1:n
    k1 = h*f(x, y);
    k2 = h*f(x+h/2, y+k1/2);
    k3 = h*f(x+h, y-k1+2*k2);
    y = y + (k1 + 4*k2 + k3)/6;
    x = x+h;
end
hasil=y;
printf('Jadi nilai y(%.2f) adalah : %.8f',b, hasil);
