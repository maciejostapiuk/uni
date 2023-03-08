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

