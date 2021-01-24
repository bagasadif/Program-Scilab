/*
Author    : Bagas Adi Firdaus
Deskripsi : Program SPL Metode Dekomposisi LU
*/

function [L,U]=LUdecompCrout(A)
  [r,c]=size(A);
  for i=1:r
    L(i,1)=A(i,1);
    U(i,i)=1;
  end
  for j=2:r
    U(1,j)=A(1,j)/L(1,1);
  end
  for i=2:r
    for j=2:i
      L(i,j)=A(i,j)-L(i,1:j-1)*U(1:j -1,j);
    end

    for j=i+1:r
      U(i,j)=(A(i,j)-L(i,1:i-1)*U(1:i-1,j))/L(i,i);
    end
  end
  printf(L);
  printf(U);
endfunction
