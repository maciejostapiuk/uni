    wym = 21
    n=1:wym
    k=length(n)
    z = exp(2*%pi*%i*(n-1)/(k-1))
    plot(real(z), imag(z))
    disp(z)
