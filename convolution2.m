%bigpicture
clear all
clc
close all
x = linspace(-20,20,41) ;
y = zeros(1,41);
y(15)=0;y(16)=0;y(17)=0;y(19)=0;y(20)=0;y(21)=1;y(22)=1;y(23)=1;y(24)=1;y(25)=1;y(26)=1;
figure(2);
sgtitle('Discrete Convolution');

subplot(3,2,1);
stem(x,y);
xlabel('h[n]');
hold on

z=zeros(1,41);
z(15)=0;z(16)=0;z(17)=0;z(19)=0;z(20)=0;z(21)=exp(0);z(22)=exp(1/3);z(23)=exp(2/3);
z(24)=exp(3/3);z(25)=exp(4/3);z(26)=4.8;z(27)=5;

subplot(3,2,2);
stem(x,z);
xlabel('x[n]');


f=10;
Y=zeros(1,41);

while (f<36)
    pause(0.25)
            y4=zeros(1,41);

        for i1=-6:6
            y4(f+i1)=z(21+i1);
        end
subplot(3,2,1);
plot(f-22,0,'o-','MarkerFaceColor','white','MarkerEdgeColor','blue') 
plot(f-21,0,'o-','MarkerFaceColor','red','MarkerEdgeColor','red') 
subplot(3,2,3);
stem(x,y4);
q=f-21;
xlabel("x[n-("+q+")]");
drawnow;

pause(0.25)
subplot(3,2,4);
stem(x, y(f).*y4);
xlabel("h["+q+"].x[n-("+q+")]");
drawnow;

pause(0.25)


Y=Y+ y(f).*y4;
subplot(3,2,6);
stem(x, Y);axis equal;
xlabel("...+ h["+(q-1)+"].x[n-("+(q-1)+")] + h["+q+"].x[n-("+q+")]");
drawnow;


f=f+1;
    
end