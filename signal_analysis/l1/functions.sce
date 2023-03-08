//zadanie 1- symbol newtona 
function res = binom(n,k)
	if n ==k then 
        res = 1
    elseif k == 0 then
        res = 1 
    elseif k > n then
        res =error("binomial coefficient not defined for given parameters ")
    else
        res = binom(n-1, k-1) + binom(n-1, k) 
    end
endfunction

//zadanie 2-liczby stirlinga 
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


