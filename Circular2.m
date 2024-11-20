# Linear--3
clc;

clear all;

close all;

x1=input('enter the 1st input sequence');

x2=input('enter the 2nd input sequence');

n1=length(x1);

n2=length(x2);

if(n1<n2)

 x1=[zeros(1,n2-n1)];

elseif(n2<n1)

 x2=[zeros(1,n1-n2)];

else

 x1=x1;

 x2=x2;

end;

n1=length(x1);

n2=length(x2);

A=fft(x1,n1);

B=fft(x2,n2);

Y=A.*B;

y=ifft(Y);

n=length(y);

disp('circular convolution output is:');

disp(y);

t1=0:n1-1;

subplot(1,3,1);

stem(t1,x1);

xlabel('n-->');

ylabel('amplitude-->');

title('first input sequence');

t2=0:n2-1;

subplot(1,3,2);

stem(t2,x2);

xlabel('n-->');

ylabel('amplitude-->');

title('second input sequence');

t=0:1:n-1;

subplot(1,3,3);

stem(t,y);

xlabel('n-->');

ylabel('amplitude-->');

title('output sequence');