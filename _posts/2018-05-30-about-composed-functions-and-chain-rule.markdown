---
layout: post
title:  "About composed functions and chain rule"
date:   2018-05-30 12:52:00 +0200
categories: math
---
Let $f$ be a real function and $x$ a real variable. When $x$ is the variable of this function, 

$$f = f(x)$$

provides some specific behaviour.

Let now $h$ be another function of the variable $x$, $h = h(x)$. Even without knowing the relation between $h$ and $x$, $h$ can simply represent *another* variable, which functions can be applied on. For example, the original function $f$ can be applied to the variable $h$:

$$f = f(h)$$

Note that when the function $f$ is given another variable $h$, it will exhibit the same behaviour and results as before, **but** with respect to the variable $h$, which represents its full-fledged abscissa, just with an alternative symbol instead of $x$.

If instead the relation between $h$ and $x$ is considered, and $x$ is used as the ultimate variable of the function $f$, these final results will change. The global function $f[h(x)]$ will be *different* from $f(x)$ and from $f(h)$, so that -- assuming the point of view of the variable $x$ -- it can be considered as a brand new function, $g(x)$:

$$f[h(x)] = g(x)$$

which first applies the function $h$ on $x$, and then applies the function $f$ on $h$.

This has some consequences also as regards the derivatives.

Without knowing the relation between $h$ and $x$, there is no formal difference between

$$f'(x) = \displaystyle \frac{\mathrm{d}f(x)}{\mathrm{d} x} \label{a} \tag{1} $$

and

$$f'(h) = \displaystyle \frac{\mathrm{d}f(h)}{\mathrm{d} h} \label{b} \tag{2} $$

They have the same expression. The derivative of $f[h(x)]$ with respect to $x$ has instead a completely different value. According to the [chain rule](https://en.wikipedia.org/wiki/Chain_rule):

$$\displaystyle \frac{\mathrm{d} f[h(x)]}{\mathrm{d} x} = \frac{\mathrm{d}h}{\mathrm{d} x} \cdot \frac{\mathrm{d}f(h)}{\mathrm{d} h}$$

where $\mathrm{d}f(h) / \mathrm{d} h$ is exactly the expression written above in $\ref{b}$, without knowledge of the relation between $h$ and $x$.

***

For example, let $f$ be a simple, linear application:

$$f(x) = Ax, \ A > 0$$

and also let $h$ be another linear application:

$$h(x) = \alpha x, \ \alpha > 0$$

If in the function $f$ the variable $h$ is considered instead of $x$, nothing changes with respect to $h$:

$$f(h) = Ah$$

The plot of $f$ considering $x$ as a simple abscissa and the plot of $f$ considering $h$ a simple abscissa will **perfectly overlap**.

However, if the relation $h = h(x)$ is considered, and $f[h(x)]$ is plotted against $x$, it will have a **different slope**. In fact:

$$f'(x) = \displaystyle \frac{\mathrm{d}f(x)}{\mathrm{d} x} = A \label{c} \tag{3} $$

$$f'(h) = \displaystyle \frac{\mathrm{d}f(h)}{\mathrm{d} h} = A \label{d} \tag{4} $$

but

$$\displaystyle \frac{\mathrm{d} f[h(x)]}{\mathrm{d} x} = \frac{\mathrm{d}h}{\mathrm{d} x} \cdot \frac{\mathrm{d}f(h)}{\mathrm{d} h} = \alpha \cdot \frac{\mathrm{d}f(h)}{\mathrm{d} h} = \alpha \cdot A$$

The slope with respect to $x$ is now $\alpha$ times steeper than in $\ref{c}$, because $h$ is $\alpha$ times greater than $x$.

--

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>
