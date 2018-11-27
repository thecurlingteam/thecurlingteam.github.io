---
layout: post
title:  "A feature of the inverse hyperbolic sine"
date:   2018-11-27 10:47:00 +0100
categories: math
---

Considering the hyperbolic sine $\sinh(x)$ and its definition, it should not be surprising that its inverse function $\mathrm{arcsin}(x)$ (also known as $\sinh^{-1}(x)$) is odd, as well. This can be analytically proved in more than one way.

#### Proof 1

It is presented in [WikiProof](https://proofwiki.org/wiki/Inverse_Hyperbolic_Sine_is_Odd_Function). Let

$$y = \mathrm{arcsinh}(-x) \label{a} \tag{1}$$

$x \in \mathbb{R}$. Compute the hyperbolic sine of both members in $\ref{a}$ and, as regards the Right Hand Side, apply the definition of inverse hyperbolic sine: $\sinh \left[ \mathrm{arcsinh}(\alpha) \right] = \alpha$:

$$\sinh (y) = -x\\
x = - \sinh (y)$$

The hyperbolic sine is an odd function: therefore,

$$x = \sinh (-y)$$

Compute the inverse hyperbolic sine of both members (and again apply the definition of inverse hyperbolic sine as before, in the Right Hand Side):

$$\mathrm{arcsinh} (x) = -y\\
y = - \mathrm{arcsinh} (x) \label{b} \tag{2}$$

Comparing $\ref{b}$ to $\ref{a}$:

$$\mathrm{arcsinh} (-x) = - \mathrm{arcsinh} (x)$$

which proves the initial statement.


#### Proof 2

The inverse hyperbolic sine can be defined in [terms of a logarithm](https://en.wikipedia.org/wiki/Inverse_hyperbolic_functions#Inverse_hyperbolic_sine):

$$\mathrm{arcsinh}(x) = \log \left( x + \sqrt{x^2 + 1} \right) \label{c} \tag{3}$$

where $\log$ is the [natural logarithm](https://en.wikipedia.org/wiki/Natural_logarithm). If the variable $-x$ is substituted to $x$,

$$\mathrm{arcsinh}(-x) = \log \left( -x + \sqrt{x^2 + 1} \right) \label{d} \tag{4}$$

it seems not immediate to deduce that the function is odd. However, note that:

$$\left( \sqrt{x^2 + 1} + x \right) \cdot \left( \sqrt{x^2 + 1} - x \right) = x^2 + 1 - x^2 = 1$$

Summing the members of $\ref{c}$ and $\ref{d}$:

$$\mathrm{arcsinh}(x) + \mathrm{arcsinh}(-x) = \log \left( x + \sqrt{x^2 + 1} \right) + \log \left( -x + \sqrt{x^2 + 1} \right)$$

Remembering the [logarithmic identity for a product](https://en.wikipedia.org/wiki/Logarithm#Logarithmic_identities):

$$\mathrm{arcsinh}(x) + \mathrm{arcsinh}(-x) = \log \left[ \left( x + \sqrt{x^2 + 1} \right) \cdot \left( -x + \sqrt{x^2 + 1} \right) \right] =\\
= \log (1) = 0$$

Therefore:

$$\mathrm{arcsinh}(-x) = - \mathrm{arcsinh}(x)$$

which proves the initial statement.

--

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>

--

<a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/3.0/80x15.png" /></a><br />The contents in [WikiProof](https://proofwiki.org/wiki/Inverse_Hyperbolic_Sine_is_Odd_Function) was distributed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/">Creative Commons Attribution-ShareAlike 3.0 Unported License</a>. According to [this page](https://creativecommons.org/share-your-work/licensing-considerations/compatible-licenses), it is compatible with the license of the present document. For any issue, please contact <a class="u-email" href="mailto:thecurlingteam ( at ) gmx ( dot ) com">thecurlingteam ( at ) gmx ( dot ) com</a>.
