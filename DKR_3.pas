
Uses Crt;
function f(x:real):real;
begin
f:=(2*x*x*x)+((-1)*2*x*x)+(2*x)+0;
end;
function f1(x:real):real;
begin
f1:=(6*x*x)+(4*x)+2;
end;
var a,b,h,s,y:real;
    n,i:integer;
begin
repeat
writeln(' нижний предел: ');
readln(a);
until (a>=-5)and(a<=0);
repeat
writeln(' верхний предел: ');
readln(b);
until (b>=0)and(b>a)and(b<=5);
repeat
write(' количество отрезков: ');
readln(n);
until (n>=20)and(n<=1000);
h:=(b-a)/n;
s:=(f(a)+f(b))/2;
for i:=1 to n-1 do
s:=s+f(a+i*h);
s:=s*h;
writeln('S=',s:0:5);
y:=f1(b)-f1(a);
writeln(' погрешность=',abs(y-s)/y)
end.