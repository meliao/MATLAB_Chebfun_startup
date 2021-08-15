function D = Burgers_operator(IC_func, nu, space, time)
%     Returns an object of class spinop. The operator is the operator associated
%     with Burger's Equation on a periodic space domain, time domain [0,1],
%     and periodic BCs.
%     u_t = nu * u_xx - 0.5 * u * u_x
%     Inputs:
%           IC_func : chebfun; specifies the IC
%           nu : float; the viscosity parameter. The shocks which appear will
%                       have slope roughly 1 / nu
%           space : [float float]; the spatial boundaries. Periodic boundary
%                         conditions will be enforced.
%           time : array of floats; time points to save evaluations at
    D = spinop(space, time);
    D.lin = @(u) nu * diff(u,2); % specifies the linear part
    D.nonlin = @(u) - 0.5 * diff(u.^2); % specifies the nonlinear part
    D.init = IC_func;
end
