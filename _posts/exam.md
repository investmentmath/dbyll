# Solution Portfolio Management - Exam (2018)



## Exercise 1

1. The program is:
$$\underset{\pi}{\text{min}} \; \pi' \Sigma \pi.$$
$$\pi'e=1,$$
$$\pi'\mu=\bar{\mu}.$$
The Lagrangian is:
$$\frac{1}{2}\pi' \Sigma \pi-\delta \pi'e-\gamma \pi'\mu.$$

2. First order condition:
$$\Sigma \pi=\delta e+\gamma \mu.$$
The condition $\gamma=0$ corresponds to the minimum variance portfolio, since this corresponds to the soluion of:
$$\underset{\pi}{\text{min}} \; \pi' \Sigma \pi.$$
$$\pi'e=1,$$
i.e. wihtout the return constraint.

3. If $(\Sigma \bar{\pi})_{i}$ is the $i$^th line of the vector, we have obviously:
$$(\Sigma \bar{\pi})_{i}=\gamma \mu_{i}+\gamma.$$
Now $(\Sigma \bar{\pi})_{i}$ is the covariance of portfolio $\bar{\pi}$ with asset $i$.

4. Multiplying the first order condition by $\pi'$, we get: 
$$\text{var}(\bar{r})=\gamma \bar{\mu}+\delta.$$
Beta is defined as:
$$\frac{\text{Cov}(r_{i},r_{p})}{\text{Var}(r_{p})}.$$
We can therefore multiply and divide the left hand side of the equation established in the previous question by $\text{var}(\bar{r})$:
$$\text{var}(\bar{r})\beta_{i}=\mu_{i}+\frac{\delta}{\gamma},$$
which then, leads to:
$$\beta_{i}(\bar{\mu}+\frac{\delta}{\gamma})=\mu_{i}+\frac{\delta}{\gamma}.$$

5. If we gather all the above equations using a vectorial notation, we get:
$$\beta(\bar{\mu}+\frac{\delta}{\gamma})=\mu+\frac{\delta}{\gamma}.$$
We then multiply this by $\tilde{\pi}'$ and then use the fact that $\tilde{\pi}'\beta=0$ to get:
$$0=\tilde{\mu}+\frac{\delta}{\gamma},$$
$$\tilde{\mu}=-\frac{\delta}{\gamma}.$$
This provides the required result.

6. We have used the assumption $\gamma\neq 0$. As a consequence, this construct cannot be applied for the minimum variance portfolio.

7. Using the definition of $\beta_{i}$, we can write:
$$\text{Cov}(r_{i},\bar{r})(\bar{\mu}-\rho)=\text{Var}(\bar{r})(\mu_{i}-\rho),$$
which in turn gives:
$$\text{Cov}(r_{i},\bar{r})=\frac{\text{Var}(\bar{r})}{\bar{\mu}-\rho}(\mu_{i}-\rho),$$
provided $\bar{\mu}-\rho\neq 0$.
This has the form:
$$\Sigma \bar{\pi}=\gamma \mu + \delta e.$$

8. The above equation is the first order condition of certain maximization problem as set out in question $1$. To identify this program, all that is needed is finding the expected return. It is however just $\bar{\pi}'\mu$. Now,  since the first order condition characterizes the solution, $\bar{\pi}$  is, as desired, on the efficient frontier.


## Exercice 2

1. $$\frac{dW_{t}}{W_{t}}=x_{t}\frac{dP_{t}}{P_{t}}+(1-x_{t})\frac{dD_{t}}{D_{t}},$$
$$\frac{dW_{t}}{W_{t}}=x_{t}(\mu dt+\sigma dB_{t})+(1-x_{t})rdt,$$
$$\frac{dW_{t}}{W_{t}}=rdt+x_{t}(\mu-r)dt+\pi_{t}\sigma dB_{t},$$
$$E_{t}\left[dW_{t}\right]=W_{t}(rdt+x_{t}(\mu-r)dt),$$
$$d[W]_{t}=W_{t}^{2}x_{t}^{2}\sigma^{2}dt.$$

2. $$\frac{dW_{t}}{W_{t}}=rdt+x_{t}(\mu-r)dt+x_{t}\sigma dB_{t}-c_{t}dt,$$
where $c_{t}=C_{t}/W_{t}$.

3. The term that depend on $C_{t}$ in the expression to be maximized is:
$$u(C_{t})-J_{W}C_{t},$$
and its maximization with respect to $C_{t}$ lead to:
$$C_{t}=u^{'-1}(J_{W}).$$

4. The term that depends on $x_{t}$ is:
$$J_{W}W_{t}x_{t}(\mu-r)+\frac{1}{2}J_{WW}W_{t}^{2}x_{t}^{2}\sigma^{2}.$$
Assuming this is a concave function in $x_{t}$, we can assume optimal investment is given by:
$$x^{*}_{t}=-\frac{J_{W}}{W_{t}J_{WW}}\frac{\mu-r}{\sigma^{2}}.$$

5. The first fraction on the left hand side is risk tolerance. Investment is proportional to the tagent portfolio.

6. This is standard calculus.

7. These equations are obtained by subsituting the optimal controls (consumption and investment, as function of the partial derivatives of the value function) into the expressions. The algrebra is a bit tedious but without difficulties.

8. Inject the result of 7. into HJB. The algebra is simple.


8. Injecting the above results into HJB, prove that $h(\cdot)$ solves the following differential equation:
$$\beta=\frac{1}{\alpha}\left[-\rho+(1-\alpha)r+\frac{1-\alpha}{2\alpha}\lambda^{2}\right],$$
the equation is:
$$h'+\beta h+1=0.$$
The solution is of the form:
$$h(t)=a \exp(-\beta t)+b.$$
The differential equation and the terminal constraint determine $a$ and $b$. We get:
$$h(t)=\frac{1}{\beta}\left(\exp(\beta (T-t))-1\right).$$












