--- 
layout: post 
title: Exercises 
author: Guillaume Rabault
categories: [Ensae] 
tags: [Exercises] 
fullview: false 
--- 

*This post collects exercises for the ENSAE course. See [this post](/ensae/2015/12/12/solexercises.html) for the solutions.*

* * * * *

## Mean-Variance


### Exercise 1.1


Take the CARA normal set up (see [this post](/ensae/2014/10/07/static.html)) without labour income. Assume that there is no riskless asset.

1. Solve the unconstrained optimization problem (no budget constraint). What is odd about the quadratic utility function?

2. Solve the constrained optimization problem (i.e. including the budget constraint).  

3. Compare the two solutions, concentrating on the achieved utility level. Why is the investor in 2. frustrated for high levels of wealth.

4. Suppose now that we have a riskless asset. How does that affect the paradox identified in question 3 ?

### Exercise 1.2

See [here](https://github.com/investmentmath/ENSAE/blob/master/efffront_exercise.ipynb) for the corresponding Jupyter/IPython notebook. See also [this post](/ensae/2015/10/17/ipython.html) for some indications on how to use this resource.

We consider an investment universe comprising three assets, cash, a bond and equities. The cash rate is $r^{f}=2\%$. The volatility of bonds is $\sigma_{b}=7\%$, that of equities is $\sigma_{e}=25\%$. The Sharpe ratio of bonds is assumed to be very low at $0.05$ and that of equities is chosen to be $0.25$. Finally, the correlation of bonds and equities is assumed negative, at $-0.2$. Thus bonds generate low returns, but they have hedging properties against equities (bonds tend to make gains when equities make losses).

1. Solve for the efficient frontier of the risky assets. Compute the minimum variance portfolio and its volatility.

2. Determine the efficient frontier for the whole universe of assets. Compute the tangent portfolio, its volatility and its Sharpe ratio.

3. We consider the following utility functions:
$$r^{f}+\pi'(\mu-r^{f}e)-\frac{\rho}{2}\pi'\Sigma \pi.$$ 
To what value $\rho_{\star}$ does the tangent portfolio correspond ?

4. We consider two other values for $\rho$, namely $\rho_{l}=(3/5)*\rho_{\star}$ and $\rho_{h}=1.5\rho_{\star}$. Compute the corresponding portfolios and their volatilities.

5. Show that the bond to equities proportion is constant along the efficient frontier. Suppose we added a no borrowing constraint. How would that constraint affect the high risk portfolio ? 

6. Most financial advisors propose ranges of multi-asset portfolios which contain no cash. In particular a 'safe' portfolio containing $20\%$ equities would typically have $80\%$ in bonds. What conditions concerning bonds' expected returns would be required for such portfolios to be on the efficient frontier ?

### Exercise 1.3

In the previous exercise, we mention the possibility of adding a 'no borrowing constraint' to the initial mean-variance setup. This says that all portfolio weights should be positive. Solving such problems requires the use of quadratic programming techniques. The following [notebook](https://github.com/investmentmath/ENSAE/blob/master/usingcvxopt.ipynb) uses this [package](http://cvxopt.org/) to deal with this.

### Exercise 1.4

The context is that studied in the section on mean variance efficiency with a riskless asset (see [this post](/ensae/2014/10/07/static.html)). We consider an investor with the following utility function:
$$r^{f}+\pi'(\mu-r^{f}e)-\frac{\rho}{2}\pi'\Sigma \pi.$$ 

1. Give the first order condition statisfied by the vector of risky asset positions. Derive a relationship relating the volatility of the optimal portfolio and its Sharpe ratio. 

2. How does the risk budget consumed by the investor change with the Sharpe ratio of the tangent portfolio ? Describe the shape of the locus (in the mean standard-deviation space) of optimal portfolios (for our investor) as a function of the Sharpe ratio of the tangent portfolio.

## Dynamics, discrete time

### Exercise 2.1

We consider the discrete time optmization problem with no interim consumption, CRRA terminal utility (date $T$) of wealth with $\rho > 1$, no consumption and no income and finally i.i.d. returns (this is the first example of the course). The command is the set of portfolio proportions $\pi_{t}$ at each date $t$. We assume that there is a portfolio such that:
$$E\left[\frac{(\pi'R)^{1-\rho}}{1-\rho}\right]>-\infty,$$
and in particular almost surely:
$$(\pi'R)^{1-\rho}>0.$$

1. Write the optimization program as of date $t$ for a given initial wealth $w_{t}$.

2. Consider the optimization program as of date $T-1$, as a function of $w_{T-1}$. Comment on the convexity/concavity of the objective function and that of the constraint. Describe the first order condition. Is it sufficient? We assume below that there is a solution.

3. Show that $V_{T-1}(w)$ is proportional to $w^{1-\rho}$. Determine the constant of proportionality as a function of the optimal portfolio.

4. Solve for the value function and the optimal portfolio at any date $t$ by recurrence.

5. Does the optimal portfolio depend on the investment horizon? Why? 

### Exercise 2.2

Take the same context as in 2.1, changing the utility function to log-utility. Solve the model following the same steps as above.

### Exercise 2.3 

We consider initially a two period framework. Investment takes place in date $t=0$ and utility of wealth is measured in $t=1$. There are two assets, a riskless asset with return $R^{f}$ and a risky asset with return $\tilde{R_{1}}$, $E[\tilde{R}_{1}]=\mu_{1}$, $\tilde{R}_{1} \geq 0$ almost surely. We assume that the support of the distribution of $\tilde{R}_{1}$ is $]0,+\infty[$. The investor maximizes the following utility function ($\rho>1$):
$$E\left[\frac{\tilde{(w_{1}}-\underline{w}_{1})^{1-\rho}}{1-\rho}\right],$$
starting from an initial wealth $w_{0}$ to be invested in the two assets. The variable $\underline{w}_{1}$ is a floor the investor ascribes to wealth. We restrict the admissible portfolios to those which ensure that $\tilde{w_{1}} \geq \underline{w}_{1}$ almost surely. 

1. Define the minimum wealth level $\underline{w}_{0}$ required to ensure that the set of admissible portfolios is not empty. We now assume $w_{0} \geq \underline{w}_{0}$ and we call $w_{t}-\underline{w}_{t}$ the surplus of date $t$ ($t=0,1$ at this stage).

2. Assume that at date $0$, a fraction $\pi_{0}$ of the surplus is invested in the risky asset. Explain why $\pi_{0}$ should be lower than $1$ and greater than zero. Show that:
$$w_{1}-\underline{w}_{1}=(w_{0}-\underline{w}_{0})(R^{f}+\pi_{0}(\tilde{R}_{1}-R^{f})).$$

3. The value function, i.e. the utility level reached at the optimum is noted $V_{0}(\cdot)$ and should be seen as a function of the surplus. Show that this function is homogenous of degree $1-\rho$ and give the program that determines the optimal weight $\pi^{\star}_{0}$.

4. Assume now that we have a whole sequence of dates $t=0, 1,\ldots,T$ with utility measured at date $t$:
$$E\left[\frac{\tilde{(w_{T}}-\underline{w}_{T})^{1-\rho}}{1-\rho}\right].$$
Returns are as above, with a constant cash return and i.i.d. risky asset returns.
Explain why the optimal investment $\pi^{\star}_{t}$ ($t=0,\ldots,T-1$) is stationary in time.


### Exercise 2.4 

We consider the discrete time program with i.i.d. returns and CRRA terminal utility of wealth ($\rho>1$):  
$$E_{t}\left[\frac{\tilde{w}_{T}^{1-\rho}}{1-\rho}\right],$$
as expected from date $t$. Final wealth is required to be strictly positive.
We have a riskless asset with return $R^{f}$ (constant across time), and a single risky asset with log-normal return $\tilde{R}_{t+1}=\exp(\mu(\tilde{x}_{t})+\sigma \tilde{x}_{t+1})$ where $(\tilde{x}_{t})$ is a sequence of i.i.d. ${\cal N}(0,1)$ variables. 

As of date $t$, the realization $x_{t}$ of $\tilde{x}_{t}$ is known. The return $\tilde{R}_{t+1}$ thus has a lognormal distribution ${\cal LN}(\mu(x_{t}),\sigma)$. We can write $\mu(x_{t})=\mu_{t}$. We will assume the $\mu(x)$ is a monotonous function of $x$. When $\mu$ is constant, the price of the risky asset follows a geometric random walk.  

Wealth in date $t$ is denoted $\tilde{w}_{t}$ (random variable) or $w_{t}$.

Remark: don't hesitate to exchange derivation and integration in this problem.

1. State the optimization program to be solved at date $T-1$, assuming that the command variable is the weight invested in the risky asset, $\pi_{T-1}$.  

2. Show that the derivative of the criterion to be maximized reads: 
$$w_{T-1}^{1-\rho}E_{T-1}[(\tilde{R}_{T}-R^{f})(R^{f}+\pi(\tilde{R}_{T}-R^{f}))^{-\rho}].$$
In a similar way, show that the second derivative is negative and that therefore the function to be maximized is concave.

3. Why can we assume $0 \leq \pi_{T-1} \leq 1$ ? Show that  the optimal quantity of risky assets is strictly positive when $\exp(\mu_{T-1}+\sigma^{2}/2) > R^{f}$. 

4. (Optional) Noting that the first order condition implies:
$$E_{T-1}[(\tilde{R}_{T}-R^{f})(wR^{f}+w\pi^{\star}(\tilde{R}_{T}-R^{f}))^{-\rho}]=0,$$
for all $w>0$, establish:
$$\frac{\pi^{\star}}{R^{f}}=-\frac{E_{T-1}[(\tilde{R}_{T}-R^{f})(R^{f}+\pi^{\star}(\tilde{R}_{T}-R^{f}))^{-\rho-1}]}
{E_{T-1}[(\tilde{R}_{T}-R^{f})^{2}(R^{f}+\pi^{\star}(\tilde{R}_{T}-R^{f}))^{-\rho-1}]}.$$

5. (Optional) We consider an increase $d\theta > 0$ in the mean of the lognormal return $\tilde{R}_{T}$. The new return 
is $\tilde{R}_{T}+d\theta$. The induced change in the optimal position in the risky asset is $d\pi^{\star}$. Show that 
the relationship between $d\theta$ and $d\pi^{\star}$ is:
$$\frac{d\pi^{\star}}{d\theta}=\frac{1}{\rho}\frac{E_{T-1}[(R^{f}+\pi(\tilde{R}_{T}-R^{f}))^{-\rho}]}
{E_{T-1}[(\tilde{R}_{T}-R^{f})^{2}(R^{f}+\pi(\tilde{R}_{T}-R^{f}))^{-\rho-1}]}+\frac{(\pi^{\star})^{2}}{1+R^{f}}.$$
Deduce that the demand in risky asset is increasing in $d\theta$. Why can't we conclude from this that an increase in 
$\mu_{T-1}$ increases the demand from the risky asset?


6.  Show that the value function $V_{T-1}(w_{T-1},x_{T-1})$ can be written:
$$V_{T-1}(w_{T-1},x_{T-1})=\psi_{T-1}(x_{T-1})\frac{w_{T-1}^{1-\rho}}{1-\rho},$$
and give the expression for $\psi_{T-1}(\cdot)$ as a function of $\pi_{T-1}^{\star}(x_{T-1})$. Note that $\psi_{T-1}$ is positive.

7. The derivative of the value function with $V_{T-1}(w_{T-1},x_{T-1})$ with respect to the parameter $\mu_{T-1}(x_{T-1})$ can be computed as if the optimal portfolio $\pi_{T-1}^{\star}(\mu_{T-1})$ was fixed (envelope theorem). Assuming one can exchange derivation and integration, show that $\psi_{T-1}(x_{T-1})$ is an increasing function of $\mu_{T-1}(x_{T-1})$.

Remark: if $\mu(x)$ is decreasing in $x$, it means that a negative return shock enhances the prospective return. In that case, $\psi(x)$ is an increasing function of $x$. 

8. Define the optimization program as of date $T-2$ using the dynamic programming principle. Check that the function to be optimized is concave so that the optimization program is well defined.

9. (In progress) Derive the first order condition of this problem. Assuming that the sign of:
$$(1-\rho)\text{Cov}[\psi(\tilde{x}_{T-1}),(\tilde{R}_{T-1}-R^{f})(R^{f}+\pi(\tilde{R}_{T-1}-R^{f}))^{-\rho}],$$
is well defined uniformly in $\pi$ and reflecting the monotonicity in $\psi(\cdot)$, discuss the impact of $\psi(\cdot)$ on the optimal investment level $\pi^{\star}$.

### Exercise 2.5

Assume an investor maximizes the expected utility of terminal wealth:

$$\underset{\pi_{t},\pi_{t+1},\ldots,\pi_{T-1}}{\text{max}} \; E_{t}[u(W_{T})]$$
$$\text{s.t.}:$$
$$W_{T}=W_{t}(\pi_{t}'R_{t+1})\ldots(\pi_{T-1}'R_{T}),$$
with the usual notations. We assume the returns are i.i.d.. As a reminder, portfolio plans $(\pi_{t},\pi_{t+1},\ldots,\pi_{T-1})$ are contingent on all relevant information needed to make decisions. I assume the utility function satisfies all the conditions needed for optima to be attained in all cases.

1. Define the state variable of the problem. Explain in words what the value function is.
2. Give the value function for date $T$.
3. Consider the investment problem as seen from date $T-1$. Define the optimization problem and the corresponding value function ($V_{T-1}(\cdot)$). Give the dynamic programming equation.
4. Consider the investment problem as seen from date $T-2$. Define the value function and give the dynamic programming equation.
5. Given an initial level of wealth $W_{T-2}$, let $(\pi^{*}_{T-2},\pi^{*}_{T-1}(\cdot))$ be the portfolio that solves the dynamic programming equation. The notation $\pi^{*}_{T-2}(\cdot)$ (notation for a function) emphasizes that the investment plan is contingent on the state variable of date $T-1$. Assume the investor chooses a suboptimal (from the dynamic programming point of view) portfolio $\pi_{T-2}$, and then implements a contingent portfolio $\pi_{T-1}(\cdot)$. Show that expected utility for that set of plans is inferior to that generated by  $(\pi^{*}_{T-2},\pi^{*}_{T-1}(\cdot))$.


## Dynamics continuous time

### Exercise 3.1

We consider a Brownian motion $(B_{t})_{[0,T]}$ with its natural filtration ${\cal F}$. 
We are given a set of times dates $0 \leq t_{1} < t_{2} < \cdots < t_{n+1} \leq T$.
We consider a process $h(t)=\sum_{i=1}^{n}F_{i}{\bf 1}_{(t_{i},t_{i+1}]}$, ($h(t)=0$ on $[0,t_{1}]$) where $F_{i}$ is ${\cal F}_{t_{i}}$-measurable.

The stochastic integral is, for $t \in (t_{i},t_{i+1}]$:
$$M_{t}=\int_{0}^{t}h(u)dB_{u}=\sum_{j=1}^{i-1}F_{j}(B_{t_{j+1}}-B_{t_{j}})+F_{t_{i}}(B_{t}-B_{t_{i}}).$$


1. Show that for $0 \leq t < t'\leq T$:
$$E_{t}[\int_{0}^{t'}h(u)dB_{u}]=\int_{0}^{t}h(u)dB_{u}.$$
Name this property. 

2. Show that for $0 \leq t \leq T$:
$$E_{0}\left[|\int_{0}^{t}h(u)dB_{u}|^{2}\right]=E_{0}\left[\int_{0}^{t}h(u)^{2}du\right].$$

3. The quadratic variation $[M]_{t}$ of $M_{t}$ is defined as:
$$[M]_{t}=\int_{0}^{t}h(u)^{2}du.$$
Show that $M_{t}^{2}-[M]_{t}$ is a martingale.

4. What is the relationship between the variance of $M_{t}$ and its quadratic variation.


### Exercise 3.2

Consider a security which pays $1$ at date $T$. Its price at date $t$ is $P_{t}^{T}$. Assume the price follows the SDE:
$$\frac{dP_{t}^{T}}{P_{t}^{T}}=r_{t}dt+\sigma_{t}^{T}dB_{t},$$
where $(B_{t})$ is a scalar Brownian motion.

1. Show that:
$$\exp\left(-\int_{0}^{t}r_{u}du\right)P_{t}^{T}$$
is a martingale. 
2. Deduce the representation:
$$P_{t}^{T}=E_{t}\left[\exp\left(-\int_{t}^{T}r_{u}du\right)\right].$$

Assume $(r_{t})$ follows an Ornstein Uhlenbeck process:
$$dr_{t}=-\rho(r_{t}-\bar{r})dt+\sigma_{r}dB_{t}.$$

3. Prove that: 
$$r_{t}-\bar{r}=(r_{0}-\bar{r})\exp(-\rho t)+\int_{0}^{t}\exp(-\rho (t-u))\sigma_{r} dB_{u}.$$

4. Prove that:
$$\int_{t}^{T}r_{u}du=\bar{r}(T-t)+(r_{t}-\bar{r})b(T-t)+\int_{t}^{T}b(T-u)\sigma_{r}dB_{u},$$
with:
$$b(h)=\frac{1-\exp(-\rho h)}{\rho}.$$

5. Prove that:
$$\int_{t}^{h}b(h-u)^{2}du=\frac{1}{\rho^{2}}\left[(h-t)-b(h-t)\right]-\frac{1}{2\rho}b(h-t)^{2}.$$

6. Compute the price $P_{t}^{T}$.

7. Give its volatility.

### Exercise 3.3

The setup is that of the previous exercise. We now modify the diffusion followed by the price as follows:
$$\frac{dP_{t}^{T}}{P_{t}^{T}}=(r_{t}+\sigma_{t}^{T}\lambda)dt+\sigma_{t}^{T}dB_{t},$$
where $\lambda$ is a constant. 
We admit that we can find a new probability measure $Q$ (called the risk neutral measure) such that under this probability measure, $dB_{t}=dB^{Q}_{t}-\lambda dt$ and $(B^{Q}_{t})$ is a Brownian motion.

1. Give the SDE followed by the price under the new probability measure as a function of $(B^{Q}_{t})$.

2. Determine the SDE followed by the cash rate as a function of $(B^{Q}_{t})$. What has changed ?

3. Explain how the steps carried out in the previous exercise can be carried out here reasoning under the risk neutral measure.

3. Give the price function and price volatility. What has changed versus the previous exercise.

### Exercise 3.4 

Consider the familiar "budget" equation relating the value of a portfolio $V_{\pi}$ and the price of its constituents $P_{i}$:
$$\frac{dV_{\pi,t}}{V_{\pi,t}}=\sum_{i=1}^{N}\pi_{i,t}\frac{dP_{i,t}}{P_{i,t}}.$$
We assume prices and portfolio values are strictly positive. Take another asset price $N_{t}$ also assumed to be strictly positive. Take $N_{t}$ as the new numeraire and express values in terms of it:
$$\tilde{V}_{\pi,t}=\frac{V_{\pi,t}}{N_{t}},$$
$$\tilde{P}_{i,t}=\frac{P_{i,t}}{N_{t}},$$
It is natural to expect the first "budget" equation to hold under the new numeraire.

1. Assume standard differential calculus applies to all quantities. Show that the above conjecture holds.

2. Same under Ito calculus.
