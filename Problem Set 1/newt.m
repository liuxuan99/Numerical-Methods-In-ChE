function newt(a,f,tal,maxx)
n=1;
syms x
df1(x)=diff(f(x),x);
m=a-f(a)/double(subs(df1,x,a));
fx=f(m);
fprintf('Newton Method\n');
fprintf('interation         x           f(x)\n');
fprintf('------------  -----------  -----------\n');
fprintf('%8d     %12.4e %12.4e\n',n,m,fx);
while abs(a-m)>tal
    n=n+1;
    a=m;
    m=a-f(a)/double(subs(df1,x,a));
    fx=f(m);
    fprintf('%8d     %12.4e %12.4e\n',n,m,fx);
%%%Check the iterations%%%    
    if n==maxx
        fprintf('Out of iterations! Please check your function or initial value')
        break
    end
end
end
