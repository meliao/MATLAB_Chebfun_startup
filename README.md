# MATLAB_Chebfun_startup
An example of using MATLAB's chebfun package for solving stiff PDEs.

We solve Burgers' Equation, which is **u_t = nu  u_xx - 0.5  u  u_x**, on a periodic domain [-pi, pi], which means the solution is constrained as u(-pi, t) = u(pi, t) for all times t

## Downloading Chebfun

[https://www.chebfun.org/download/](https://www.chebfun.org/download/)

## Chebfun Docs

Sections 1 and 19 are used in this demo.
[https://www.chebfun.org/docs/guide/](https://www.chebfun.org/docs/guide/)


## Starting MATLAB without a GUI

If you're into that type of stuff
```
matlab -nodesktop
```
(I'm into that type of stuff)
