# MATLAB_Chebfun_startup
An example of using MATLAB's chebfun package for solving stiff PDEs.

## Example 1: Burgers' Equation
We solve Burgers' Equation, which is **u_t = nu  u_xx - 0.5  u  u_x**, on a 1-D periodic domain $[-\pi, \pi]$, which means the solution is constrained as $u(-\pi, t) = u(\pi, t)$ for all times $t$.

## Example 2: KS Equation on a Sphere

We try to solve the equation
$$ u_t = - \nu u_{xxxx} - u_{xx} - u u_x $$
on the unit sphere. This does not work, because chebfun only supports solving PDEs on the sphere whose linear part is the Laplacian operator. 

## Downloading Chebfun

[https://www.chebfun.org/download/](https://www.chebfun.org/download/)

## Chebfun Docs

Sections 1 and 19 are used in this demo.
[https://www.chebfun.org/docs/guide/](https://www.chebfun.org/docs/guide/)


## Starting MATLAB without a GUI

This is often helpful on the cluster when generating a lot of data using a solver in MATLAB
```
matlab -nodesktop
```
