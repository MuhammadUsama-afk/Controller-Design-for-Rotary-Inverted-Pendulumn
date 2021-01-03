Jeq=1.84e-6;
m=0.027;
r=0.0826;
Kg=1;
Jm=1.8e-4;
ng=1;
nm=0.69;
L=0.0955;
g=9.81;
Kt=0.0334;
R=8.7;
a=Jeq+(m*r^2)+(ng*Jm*Kg^2);
b=(m*L*r);
c=(4/3)*m*L^2;
d=m*g*L;
f=(nm*ng*Kt*Kg)/R;
e=0.00271;

s=tf('s');

G=tf([f*b 0 0],[((a*c)-b^2) e*c -a*d -e*d 0])
Gc_lead_1=57836*(s-9.913)/(s+20.7056);
Gc_lead_2=(4.236165e-4)*(s+23.487)/(s);
G1= (184.74*(s+23.49))/((s+16.05)*(s+20.71)*(s+5.76));
step(feedback(G1,1))
zpk(G1)
sisotool(G1)