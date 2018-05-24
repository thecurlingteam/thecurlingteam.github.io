---
layout: post
title:  "Tangent series exercise"
date:   2018-05-23 10:06:00 +0200
categories: math
---
Evaluate the following value of tangent function, if it exists:

$$\tan \left[ \sum_{r = 1}^{\infty} \arctan \left( \displaystyle \frac{4}{4r^2 + 3} \right) \right] $$

First of all, the expression must be decomposed into several parts. The series is considered first. There can be no clues about its convergence. However, a fundamental relation can be recalled here: the $\arctan$ [addition formula](https://en.wikipedia.org/wiki/Inverse_trigonometric_functions#Arctangent_addition_formula). It will be taken with a negative value for the second angle, so it becomes:

$$\arctan(\alpha) - \arctan (\beta) = \arctan \left( \displaystyle \frac{\alpha - \beta}{1 + \alpha \beta} \right)$$

Of course, it must be $\alpha \beta \neq -1$ (otherwise, the denominator will not exist), and this result is given $\mod \pi$. In fact, being $\pi$ the period of the tangent function, the angle $\arctan(x)$ generates the same tangent value of $\arctan(x) + m\pi, m \in \mathbb{Z}$, so they are indistinguishable.

Even if this relation does not immediately seem related to this problem, it could be the only chance to rewrite the above expression in a more convenient way. So, a rearrangement attempt must be performed, to verify if the $\arctan$ addition formula can actually be applied.

Instead of the identification of $\alpha$ and $\beta$, it could be more convenient to directly connect the expression $4 / (4r^2 + 3)$ to $(\alpha - \beta) / (1 + \alpha \beta)$. Several attempts are necessary. First,

$$\displaystyle \frac{4}{4r^2 + 3} = \frac{1}{r^2 + \displaystyle \frac{3}{4}}$$

The denominator has currently no unity value (as it should instead), however the fraction $3 / 4$ can always be rewritten as $1 - (1/2)^2$:

$$\displaystyle \frac{4}{4r^2 + 3} = \frac{1}{1 + r^2 - \displaystyle \left( \frac{1}{2} \right)^2}$$

This produces two benefits:

- first, a unity value appears in the denominator;
- second, the chance to exploit the product of sum and difference of two numbers appears.

This is exactly what was needed, because the product $\alpha \beta$ must be contained in the denominator:

$$r^2 - \displaystyle \left( \frac{1}{2} \right)^2 = \left( r + \frac{1}{2} \right)\left( r - \frac{1}{2} \right)$$

Remembering the $\arctan$ addition formula, $\displaystyle \left( r + \frac{1}{2} \right)$ is candidate to be $\alpha$ and $\displaystyle \left( r - \frac{1}{2} \right)$ is candidate to be $\beta$. If this is true, also the numerator should be rearranged such that it contains the difference $\alpha - \beta$. It currently does not. However:

$$1 = \displaystyle \left( r + \frac{1}{2} \right) - \left( r - \frac{1}{2} \right)$$

So,

$$\displaystyle \frac{4}{4r^2 + 3} = \displaystyle \frac{\left( r + \displaystyle \frac{1}{2} \right) - \displaystyle \left( r - \displaystyle \frac{1}{2} \right)}{1 + \left( r + \displaystyle \frac{1}{2} \right)\left( r - \displaystyle \frac{1}{2} \right)}$$

This is exactly the form $(\alpha - \beta) / (1 + \alpha \beta)$. Then, the $\arctan$ addition formula can be applied to the series:

$$\sum_{r = 1}^{\infty} \arctan \left( \displaystyle \frac{4}{4r^2 + 3} \right) = \sum_{r = 1}^{\infty} \arctan \left[ \displaystyle \frac{\left( r + \displaystyle \frac{1}{2} \right) - \displaystyle \left( r - \displaystyle \frac{1}{2} \right)}{1 + \left( r + \displaystyle \frac{1}{2} \right)\left( r - \displaystyle \frac{1}{2} \right)} \right] =\\
= \sum_{r = 1}^{\infty} \left[ \arctan \displaystyle \left( r + \frac{1}{2} \right) - \arctan \displaystyle \left( r - \frac{1}{2} \right) \right]$$

The series can be still unknown, as well as its convergence. Each of its members is composed by an actual *difference* of values. One well-known kind of series which is composed the same way is the [telescoping series](https://en.wikipedia.org/wiki/Telescoping_series). It has the following structure:

$$\sum_{n = 1}^{N} (a_{n + 1} - a_n) = a_{N + 1} - a_1$$

Each *term* is composed by two *addends*. When the series is expanded, only the first and the last *addends* get not erased in the algebraic sum. If they are finite values, the series converges.

The above series can be rewritten as follows:

$$\sum_{r = 1}^{\infty} \left[ \arctan \displaystyle \left( r + \frac{1}{2} \right) - \arctan \displaystyle \left( r - \frac{1}{2} \right) \right] =\\
= \sum_{r = 1}^{\infty} \left\{ \arctan \displaystyle \left[ (r + 1) - \frac{1}{2} \right] - \arctan \displaystyle \left( r - \frac{1}{2} \right) \right\}$$

It is a telescoping series. In this case, the last *addend* has not a finite index $N$: it is

$$\lim_{r \to \infty} \arctan \displaystyle \left[ (r + 1) - \frac{1}{2} \right] = \displaystyle \frac{\pi}{2}$$

Despite this, it has a finite value. So,

$$\sum_{r = 1}^{\infty} \left\{ \arctan \displaystyle \left[ (r + 1) - \frac{1}{2} \right] - \arctan \displaystyle \left( r - \frac{1}{2} \right) \right\} = \displaystyle \frac{\pi}{2} - \arctan \left( \displaystyle \frac{1}{2} \right)$$

The series converges; $\arctan(1/2)$ is not a well-known angle value (easily writeable angles which generate the value $1/2$ for sine and cosine are available, but not for tangent).

The initial expression becomes:

$$\tan \left[ \displaystyle \frac{\pi}{2} - \arctan \left( \displaystyle \frac{1}{2} \right) \right] $$

First, this is a value different from (and smaller than) $\pi / 2$, which is not included in the domain of tangent. So, this value is acceptable. 

According to the [trigonometric identities](https://en.wikipedia.org/wiki/Trigonometric_functions#cot),

$$\tan \left( \displaystyle \frac{\pi}{2} - \alpha \right) = \cot \alpha$$

$$\tan \left[ \displaystyle \frac{\pi}{2} - \arctan \left( \displaystyle \frac{1}{2} \right) \right] = \cot \left[ \arctan \left( \displaystyle \frac{1}{2} \right) \right] = \displaystyle \frac{1}{\tan \left[ \arctan \left( \displaystyle \frac{1}{2} \right) \right]} = \frac{1}{\displaystyle \frac{1}{2}} = 2$$

which is the final result.

***

Note that a [difference identity](https://en.wikipedia.org/wiki/List_of_trigonometric_identities#Angle_sum_and_difference_identities) for the tangent function can not be used here, because it would lead to the following unacceptable expression:

$$\tan \left[ \displaystyle \frac{\pi}{2} - \arctan \left( \displaystyle \frac{1}{2} \right) \right] = \frac{\tan \left( \displaystyle \frac{\pi}{2} \right) - \tan \left[ \arctan \left( \displaystyle \frac{1}{2} \right) \right]}{1 + \tan \left( \displaystyle \frac{\pi}{2} \right) \tan \left[ \arctan \left( \displaystyle \frac{1}{2} \right) \right]}$$

Tangent is not defined in $\pi / 2$.

--

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>
