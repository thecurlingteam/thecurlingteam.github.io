---
layout: post
title:  "Integral of a power of sine"
date:   2018-03-22 11:04:20 +0100
categories: jekyll update
use_math: true
---
It is not unusual to encounter a trigonometric integral; some of them require specific observations, in order to be solved. For example:

$$I = \displaystyle \int_0^{\pi} \sin^2 x \ \mathrm{d}x$$

First of all, the indefinite integral must be considered:

$$G(x) = \displaystyle \int \sin^2 x \ \mathrm{d}x$$

*A* way (of course, not the only way) to find the antiderivative of $\sin^2 x$ is the following:

$$\begin{array}{l}
\sin^2 x + \cos^2 x = 1\\
\sin^2 x = 1 - \cos^2 x\\
\cos^2 x = \displaystyle \frac{1 + \cos (2x)}{2}\\
\sin^2 x = 1 - \displaystyle \frac{1 + \cos (2x)}{2} = \frac{1 - \cos (2x)}{2}
\end{array}$$

Integral $G(x)$ can now be more easily handled and solved as difference of the (almost) elementary integrals $1$ and $\cos(2x)$. As regards $\cos(2x)$,

$$\begin{array}{l}
\displaystyle \frac{\mathrm{d}}{\mathrm{d}x} \sin(2x) = 2 \cos (2x)\\
\displaystyle \frac{1}{2} \frac{\mathrm{d}}{\mathrm{d}x} \sin(2x) = \cos (2x)
\end{array}$$

This implies that

$$\begin{array}{l}
G(x) = \displaystyle \int \sin^2 x \ \mathrm{d}x = \int \frac{1 - \cos (2x)}{2} \ \mathrm{d}x\\ 
= \displaystyle \int \frac{1}{2} \ \mathrm{d}x - \frac{1}{2} \int \cos(2x) \ \mathrm{d}x =\\
= \displaystyle \frac{x}{2} + \frac{\sin (2x)}{4} + C,\\
C \in \mathbb{R}
\end{array}$$

The definite integral $I$ is:

$$I = \displaystyle \int_0^{\pi} \sin^2 x \ \mathrm{d}x = \frac{1}{2} \left[ x - \frac{\sin (2x)}{2} \right]_0^{\pi} = \frac{1}{2} \pi - 0 = \frac{\pi}{2}$$

It can be observed that

$$\displaystyle \int_0^{\frac{\pi}{2}} \sin^2 x \ \mathrm{d}x = \frac{1}{2} \left[ x - \frac{\sin (2x)}{2} \right]_0^{\frac{\pi}{2}} = \frac{1}{2} \frac{\pi}{2} - 0 = \frac{\pi}{4}$$

is half the value of $I$. Then, $I$ can be even more quickly evaluated as

$$I = \displaystyle \int_0^{\pi} \sin^2 x \ \mathrm{d}x = 2 \int_0^{\frac{\pi}{2}} \sin^2 x \ \mathrm{d}x$$

This fact can be proved in several ways. The squared sine $\sin^2 (x)$ is an *even* function, being the result of the square of the *odd* function $\sin (x)$: it is therefore symmetrical with respect to the $y$-axis (which has equation $x = 0)$.

Alternatively, it can be noticed that

$$\displaystyle \sin^2 \left( x + \frac{\pi}{2} \right) = \cos^2 x$$

That is: the squared cosine anticipates the squared sine by $\pi/2$ along the $x$ axis, as well as the original (not squared) sine and cosine. So, as $\cos^2 x$ is an even function (symmetrical with respect to $x = 0$), the $\sin^2 x$ function will maintain the same symmetry, but $\pi / 2$ later than the cosine: it will then be symmetrical with respect to $x = \pi / 2$ instead of $x = 0$. So, evaluating the integral of $\sin^2 x$ between $0$ and $\pi$ is the same as evaluating twice the integral of $\sin^2 x$ between $0$ and $\pi/2$.
