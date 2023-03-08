//ex1- Newton's symbol 
function res = binom(n,k)
	if or(n == k,k ==0) then 
        res = 1
    //elseif k == 0 then
        //res = 1 
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
//ex3- translation 
function translation(x, k)
        set(gca(),"auto_clear","off");
        for i= 1:length(x)
            scatter(x(i)+k, [0])
        end
endfunction


