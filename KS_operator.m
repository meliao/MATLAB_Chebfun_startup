function D = KS_operator(IC_func, alpha, time)
    % Returns an object of class spinopsphere. The operator represents the differential operator that shows up on the right hand side of the 
    D = spinopsphere(time);
    D.lin = @(u) lap(u) ;
    D.nonlin = @(u) 0.5 * alpha * diff(u).^2;
    D.init = IC_func;
end