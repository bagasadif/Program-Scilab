/*
Author    : Bagas Adi Firdaus
Deskripsi : Program Metode LU Gauss
*/

function nilai_x=LUGauss(A, b)
     M=[A b];
    [baris,kolom]=size(M)
     
    c=zeros(A);
    
    for i = 1:baris
        for j = i+1 : baris
            M(j,:)=-M(j,i)/M(i,i)*M(i,:)+M(j,:);
            L(j,i)=A(j,i)/A(i,i);
        end      
    end
    
    A=M(:,1:baris);
    b=M(:,kolom)
    
    [n,n]=size(A);
    
    k=0;
    while(k<n)
        L(k+1,k+1)=1;
        k=k+1
    end
      
    y(n)=b(n)/L(n,n);
    for i = n-1:-1:1
        jum=0;
        for j = i+1:n
            jum=jum+L(i,j)*y(j);
        end
        y(i)=(b(i)-jum)/L(i,i);
    end
    
    x(n)=y(n)/A(n,n);
    for i = n-1:-1:1
        jum=0;
        for j = i+1:n
            jum=jum+A(i,j)*x(j);
        end
        x(i)=(y(i)-jum)/A(i,i);
    end  
      
    nilai_x=x;     
 
endfunction
