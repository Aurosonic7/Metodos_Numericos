clear();
a = input("Digite el a: ");
b = input("Digite el b: ");
c = input("Digite el c: ");
d = input("Digite el d: ");
e = input("Digite el e: ");
x0 = input("Digite x0: ");
y0 = input("Digite y0: ");
dx = input("Digite dx: ");
x_min = input("Digite el valor mínimo del intervalo: ");
xm = input("Digite el valor máximo del intervalo: ");
if b > 0 then
    b = -b
else 
    b = -b
end
x = x0;
y = y0;
x_values = x0;
y_values = y0;

while x < xm
    k1 = (c*x^2*y + d*x + e + b*y)/a;
    x = x + dx;
    xidx = x + dx
    yikidx = y + k1*dx 
    k2 = ((c*xidx^2*yikidx + d*xidx + e + b*yikidx)/a);
    y = y + (k1 + k2) * (dx/2);
    x_values = [x_values, x];
    y_values = [y_values, y];
end


plot(x_values, y_values);
