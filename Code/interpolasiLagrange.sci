/*
Author    : Bagas Adi Firdaus
Deskripsi : Program Metode Interpolasi Lagrange
*/

printf('\nProgram Metode Interpolasi Lagrange\n');

X = [-1.0 0.0 2.0 3.5 4.0]; 
Fx = [1.5 3.0 6.0 8.0 16.0]; 

printf('Diketahui Data Berikut:\n');
for i=1:5
    printf('n = %d\t x = %.6f\t f(x) = %.6f\n',i, X(i),Fx(i));
end
printf('Nilai x yang akan dicari f(x)nya adalah: x = -0.6\n');

xp=-0.6;
x(1)=X(1);
x(2)=X(2);
x(3)=X(3);
x(4)=X(4);
y(1)=Fx(1);
y(2)=Fx(2);
y(3)=Fx(3);
y(4)=Fx(4);

//Kasus Linear
sm = 0;
for i = 1:2
    pr = 1;
    for j = 1:2
        if j ~= i
        pr = pr * (xp-x(j))/(x(i)-x(j));
        end
    end
    sm = sm + y(i)*pr;
end
P1x = sm;

//Kasus Kuadrat
sm = 0;
for i = 1:3
    pr = 1;
    for j = 1:3
        if j ~= i
        pr = pr * (xp-x(j))/(x(i)-x(j));
        end
    end
    sm = sm + y(i)*pr;
end
P2x = sm;

//Kasus Kubik
sm = 0;
for i = 1:4
    pr = 1;
    for j = 1:4
        if j ~= i
            pr = pr * (xp-x(j))/(x(i)-x(j));
        end
    end
    sm = sm + y(i)*pr;
end
P3x = sm;

printf('Jadi nilai f(-0.6) menggunakan metode Lagrange adalah:\nKasus Linear:\nP1(x) = %.6f\nKasus Kuadrat:\nP2(x) = %.6f\nKasus Kubik:\nP3(x) = %.6f', P1x, P2x, P3x);
