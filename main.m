%Initialize variables with some assumptions already done
%c=1
%S1=S2=1
%K1=K2=K
%Cla1=Cla2
syms K Cla q Ktheta

%Matrix
A=[0 -K+(q*Cla) -K-(q*Cla);...
    -Ktheta+((3/4)*q*Cla) (-K)+(Ktheta/2) -(Ktheta/2);...
    Ktheta+((1/4)*Cla*q) -((1/4)*Cla*q)-(Ktheta/2) K+((1/4)*q*Cla)+(Ktheta/2)];

%Determinant of the matrix
a=det(A);

%Assumptions
Cla = 2*pi;

%Values into the determinant solution
a=subs(a);

%% 
%Initialize variables
syms qD_k1 ktheta_k ktheta_k2

%1st solution of the 2nd order equation
qD_k1=-(-1-(ktheta_k)+sqrt(1-(18*ktheta_k)+(ktheta_k^2)))/(5*pi);
limit1=limit(qD_k1,ktheta_k,inf); %Limit of ktheta tending to infinity
ktheta_k=(18:1:100);
qD_k1=subs(qD_k1);

%2nd solution of the 2nd order equation
qD_k2=(1+(ktheta_k2)+sqrt(1-(18*ktheta_k2)+(ktheta_k2^2)))/(5*pi);
limit2=limit(qD_k2,ktheta_k2,inf); %Limit of ktheta tending to infinity
ktheta_k2=(18:1:100);
qD_k2=subs(qD_k2);

%Plot of both solutions
figure(1)
plot(ktheta_k,qD_k1);
hold on
plot(ktheta_k2,qD_k2);
xlabel('ktheta/k');
ylabel('qD/k');
title('qD/k vs. ktheta/k');
