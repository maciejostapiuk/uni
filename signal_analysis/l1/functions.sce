clear;
//ex1- complex roots
function cplot(wym)
    n=1:wym
    k=length(n)
    z = exp(2*%pi*%i*(n-1)/(k-1))
    plot(real(z), imag(z))
    //disp(z)
endfunction

//deff('[gg]=gam(x,a,b)','gg=x.^(a-1).*exp(-x./b)./(b.^a*gamma(a))')
//xs=0:0.01:2
//ys = gam(xs,10,0.1)
//plot(xs,ys)
//plot(-xs+ 3,ys, "green")

function discretization(step)
    deff('[gg]=gam(x,a,b)','gg=x.^(a-1).*exp(-x./b)./(b.^a*gamma(a))')
    xs = 0:step:2;
    ys = gam(xs,10,0.1)
    plot(xs,ys)
    for i =1:length(xs)-1
        plot([xs(i), xs(i+1)], [ys(i), ys(i)])
        plot([xs(i+1), xs(i+1)], [ys(i), ys(i+1)])
    end
endfunction
function quantization(step)
    deff('[gg]=gam(x,a,b)','gg=x.^(a-1).*exp(-x./b)./(b.^a*gamma(a))')
    xmax = 1.5; xmin=0; xz = xmax - xmin;
    xs = 0:0.05:2;
    ys = (xz/step)*round(gam(xs,10,0.1)*step/xz);
    plot(xs,ys)
    for i = 1 :length(xs)-1
       plot([xs(i), xs(i+1)], [ys(i), ys(i)])
       plot([xs(i+1),xs(i+1)], [ys(i), ys(i+1)])
    end
    
endfunction
//ex2- Newton's symbol 
function res = binom(n,k)
    if n == k then 
            res = 1
    elseif k > n then
        res =error("binomial coefficient not defined for given parameters ")
    else
        res = binom(n-1, k-1) + binom(n-1, k) 
    end
endfunction

//ex2-Stirling's numbers 
function res = stirling(n,k)
    if k == n then
        if n == 0
            res = 0
        end
        res = 1
    elseif k == 0 then 
        res = 0
    elseif k > n then 
        res = 0 
    else
        res = (n-1)*stirling(n-1, k) + stirling(n-1,k-1)
    end
endfunction

//ex3a- translation 
function translation(x, k)
        set(gca(),"auto_clear","off");
        scatter(x(1,:), x(2,:));
        for i= 1:length(x(1,:))
            scatter(x(1,i)+k(1),x(2,i)+k(2), 100, "red")
        end
endfunction

//ex3b-symmetry over kth point
function symmetry(x, k)
        set(gca(),"auto_clear","off");
        scatter(x(1,:), x(2,:));
        for i= 1:length(x(1,:))
            scatter(2*k(1) - x(1,i), 2*k(2)-x(2,i), 150, "green")
        end
endfunction

