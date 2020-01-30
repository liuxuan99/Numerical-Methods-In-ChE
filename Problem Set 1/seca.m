function seca(a,b,f,tal,maxx)
fprintf('Secant Method\n');
fprintf('interation         x           f(x)\n');
fprintf('------------  -----------  -----------\n');
n=0;
while abs(a-b)>tal
    n=n+1;
    c=b-f(b)*(a-b)/(f(a)-f(b));
    a=b;
    b=c;
    fx=f(c);
    fprintf('%8d     %12.4e %12.4e\n',n,c,fx);
%%%Check the iterations%%%
    if n==maxx
        fprintf('Out of iterations! Please check your function or initial value')
        break
    end
end
