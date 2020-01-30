function bis(a,b,f,tal,maxx)
n=0;
fprintf('Bisection Method\n');
fprintf(' interation        a            b            p          f(p)\n');
fprintf('------------  -----------  -----------  -----------  -----------\n');
while abs(a-b)>tal
%%%Check if it can use Bisection method%%%
    if f(a)*f(b) >=0
        fprintf('Error! f(a)*f(b) >=0, Cannot be calculated\n')
        break
    end
%%%Bisection Method%%%
    n=n+1;
    p=(a+b)/2;
    if f(a)*f(p) <= 0
        b=p;
    else
        a=p;
    end
    x=(a+b)/2;
    fx=f(x);
    fprintf('%8d     %12.4e %12.4e %12.4e %12.4e\n',n,a,b,p,fx);
%%%Check the iterations%%%
    if n==maxx
        fprintf('Out of iterations! Please check your function or initial value')
        break
    end
end
end







