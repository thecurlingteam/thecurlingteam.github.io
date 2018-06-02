---
layout: post
title:  "The chain rule for differential equations and second derivatives"
date:   2018-06-02 13:23:00 +0200
categories: math
---

### First derivative

If $f$ is a real function and $x$ a real variable, let

$$f'(x) = \displaystyle \frac{\mathrm{d} f(x)}{\mathrm{d}x}$$

be its first derivative. Suppose now that $x = x(t)$ and we would like to know the behaviour of $f$ with respect to $t$, that is:

$$\displaystyle \frac{\mathrm{d} f [ x(t) ]}{\mathrm{d}t}$$

As in a [previous post]({{ site.baseurl }}{% post_url 2018-05-30-about-composed-functions-and-chain-rule %}), the [chain rule](https://en.wikipedia.org/wiki/Chain_rule) can be applied:

$$ \displaystyle \frac{ \mathrm{d} f [ x(t) ] }{ \mathrm{d} t } = \frac{ \mathrm{d} f(x) }{ \mathrm{d}x} \cdot \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } \label{a} \tag{1} $$

In particular, given the following ordinary, homogeneous, linear differential equation:

$$A \displaystyle \frac{\mathrm{d} f(x)}{\mathrm{d}x} + B f(x) = 0 \label{b} \tag{2} $$

If it should be rewritten in terms of the variable $t$, $\ref{a}$ can be rewritten in the following form:

$$ \displaystyle \frac{ \mathrm{d} f(x) }{ \mathrm{d} x } = \frac{ \displaystyle \frac{\mathrm{d} f [ x(t) ]}{ \mathrm{d}t} }{ \displaystyle \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } } \label{c} \tag{3} $$

so that it is immediately available for a substitution in equation $\ref{b}$. If also $f[x(t)]$ will replace $f(x)$, equation $\ref{b}$ becomes a differential equation entirely written in terms of the new variable $t$. A full change of variable has been performed.

The specific case of a linear relation between $x(t)$ and $t$ is remarkable and recurring. Let

$$x(t) = \alpha t + \beta$$

Relation $\ref{c}$ undergoes a noticeable simplification. It becomes:

$$ \displaystyle \frac{ \mathrm{d} f(x) }{ \mathrm{d} x } = \frac{1}{\alpha} \frac{ \mathrm{d} f [ x(t) ] }{ \mathrm{d} t } $$

Therefore, when $x(t)$ is a *linear* function, the first derivative of $f(x)$ with respect to $x$ can be easily replaced by the first derivative with respect to the new variable $t$, **appropriately scaled** by the factor $1 / \alpha$, which is exactly the scale factor between $t$ and $x$ ($\beta$ only represents a spatial shift, with no influence on scaling).


### Second derivative

Given $f(x)$ and $x(t)$, it may be also necessary to determine the second derivative of $f(x)$ with respect to the new variable $t$. Deriving with respect to $t$ both sides of the chain rule $\ref{a}$:

$$ \displaystyle \frac{\mathrm{d}}{\mathrm{d} t} \left\{ \frac{ \mathrm{d} f [ x(t) ] }{ \mathrm{d} t } \right\} = \frac{\mathrm{d}}{\mathrm{d} t} \left[ \frac{ \mathrm{d} f(x) }{ \mathrm{d}x} \cdot \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } \right] \label{d} \tag{4} $$

The Right Hand Side represents a simple product of functions, so the [product rule](https://en.wikipedia.org/wiki/Product_rule) is applied:

$$\displaystyle \frac{\mathrm{d}}{\mathrm{d} t} \left\{ \frac{ \mathrm{d} f [ x(t) ] }{ \mathrm{d} t } \right\} = \left\{ \frac{\mathrm{d}}{\mathrm{d} t} \left[ \frac{ \mathrm{d} f(x) }{ \mathrm{d}x} \right] \right\} \cdot \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } + \frac{ \mathrm{d} f(x) }{ \mathrm{d}x } \cdot \frac{\mathrm{d}}{\mathrm{d} t} \left[ \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } \right] \label{e} \tag{5} $$

This new relation could appear as a not trivial expression. However, note that $\displaystyle \frac{ \mathrm{d} f(x) }{ \mathrm{d}x }$ is itself a *new* function of $x$: considering

$$\displaystyle \frac{ \mathrm{d} f(x) }{ \mathrm{d}x } = g(x) \label{f} \tag{6}$$

the relation $\ref{e}$ can be rewritten as follows:

$$\displaystyle \frac{\mathrm{d}}{\mathrm{d} t} \left\{ \frac{ \mathrm{d} f [ x(t) ] }{ \mathrm{d} t } \right\} = \left\{ \frac{\mathrm{d} g(x)}{\mathrm{d} t} \right\} \cdot \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } + g(x) \cdot \frac{\mathrm{d}}{\mathrm{d} t} \left[ \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } \right] \label{g} \tag{7} $$

and more easily simplified. Being $x = x(t)$, the chain rule can be applied to determine $\displaystyle \frac{\mathrm{d} g(x)}{\mathrm{d} t} $ exactly as it has already been done in $\ref{a}$:

$$\displaystyle \frac{\mathrm{d} g(x)}{\mathrm{d} t} = \frac{ \mathrm{d} g(x) }{ \mathrm{d}x} \cdot \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } \label{h} \tag{8}$$

Substituing $\ref{h}$ in $\ref{g}$:

$$\displaystyle \frac{\mathrm{d}}{\mathrm{d} t} \left\{ \frac{ \mathrm{d} f [ x(t) ] }{ \mathrm{d} t } \right\} = \frac{ \mathrm{d} g(x) }{ \mathrm{d}x} \cdot \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } \cdot \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } + g(x) \cdot \frac{\mathrm{d}}{\mathrm{d} t} \left[ \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } \right] $$

which is

$$\displaystyle \frac{\mathrm{d}^2 f [ x(t) ] }{\mathrm{d} t^2} = \frac{ \mathrm{d} g(x) }{ \mathrm{d}x} \cdot \left[ \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } \right]^2 + g(x) \cdot \frac{\mathrm{d}^2 x(t) }{\mathrm{d} t^2}$$

or more explicitly (remembering $\ref{f}$):

$$\displaystyle \frac{\mathrm{d}^2 f [ x(t) ] }{\mathrm{d} t^2} = \frac{ \mathrm{d}^2 f(x) }{ \mathrm{d}x^2} \cdot \left[ \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } \right]^2 + \frac{ \mathrm{d} f(x) }{ \mathrm{d}x } \cdot \frac{\mathrm{d}^2 x(t) }{\mathrm{d} t^2} \label{i} \tag{9} $$

So,

$$\displaystyle \frac{ \mathrm{d}^2 f(x) }{ \mathrm{d}x^2} = \frac{ \displaystyle \frac{\mathrm{d}^2 f [ x(t) ] }{\mathrm{d} t^2} - \frac{ \mathrm{d} f(x) }{ \mathrm{d}x } \cdot \frac{\mathrm{d}^2 x(t) }{\mathrm{d} t^2} }{ \displaystyle \left[ \frac{ \mathrm{d} x(t) }{ \mathrm{d} t } \right]^2 } \label{j} \tag{10}$$

which is the correspondent of $\ref{c}$, as regards the second derivative. Expression $\ref{j}$ may be again simplified if a linear relation $x(t) = \alpha t + \beta$ is considered: the second derivative $\displaystyle \frac{\mathrm{d}^2 x(t) }{\mathrm{d} t^2}$ with respect to $t$ is $0$. Equation $\ref{i}$ becomes:

$$\displaystyle \frac{\mathrm{d}^2 f [ x(t) ] }{\mathrm{d} t^2} = \alpha^2 \frac{ \mathrm{d}^2 f(x) }{ \mathrm{d}x^2}$$

Substituing in $\ref{j}$:

$$\displaystyle \frac{ \mathrm{d}^2 f(x) }{ \mathrm{d}x^2} = \frac{1}{\alpha^2} \frac{\mathrm{d}^2 f [ x(t) ] }{\mathrm{d} t^2}$$

In general, when $x(t) = \alpha t + \beta$, the $n$-th derivative of $f(x)$ with respect to $x$ can be determined in terms of the derivative of $f[x(t)]$ as:

$$\displaystyle \frac{ \mathrm{d}^n f(x) }{ \mathrm{d}x^n} = \frac{1}{\alpha^n} \frac{\mathrm{d}^n f [ x(t) ] }{\mathrm{d} t^n}$$

For more information about this kind of substitution, refer to: [change of variables](https://en.wikipedia.org/wiki/Change_of_variables#Differential_equations), differential equations section.

***

Given an ordinary, homogeneous, linear, second order differential equation:

$$A \displaystyle \frac{ \mathrm{d}^2 f(x) }{ \mathrm{d}x^2} + B \frac{\mathrm{d} f(x)}{\mathrm{d}x} + C f(x) = 0 $$

if $x(t) = \alpha t + \beta$ it can be rewritten in terms of $t$ as follows:

$$A \displaystyle \frac{1}{\alpha^2} \frac{\mathrm{d}^2 f [ x(t) ] }{\mathrm{d} t^2} + B \frac{1}{\alpha} \frac{ \mathrm{d} f [ x(t) ] }{ \mathrm{d} t } + C f[x(t)] = 0 $$

Rewriting $f[x(t)]$ as $h(t)$, it becomes:

$$A \displaystyle \frac{1}{\alpha^2} \frac{\mathrm{d}^2 h(t) }{\mathrm{d} t^2} + B \frac{1}{\alpha} \frac{ \mathrm{d} h(t) }{ \mathrm{d} t } + C h(t) = 0 $$

It is even more explicit that, after the substitutions, $t$ has become the only variable.

--

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>
