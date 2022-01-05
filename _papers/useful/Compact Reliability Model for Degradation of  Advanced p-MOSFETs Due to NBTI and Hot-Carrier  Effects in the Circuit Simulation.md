---
title: 先进p-MOSFET的由NBTI和HCE引起的退化的紧凑模型
authors: C. Ma, H. J. Mattausch, M. Miyake, T. Iizuka, and M. Miura-Mattausch
id: CRMFDOAPMDTNAHCEITCS
abstract: 提出了一种包括CHC和NBTI的紧凑可靠性模型。该模型描述了界面态的产生和空穴
link: https://sci-hub.ru/10.1109/IRPS.2013.6531943
---

## 介绍

大多数实验性研究中，NBTI是在最坏情况下，即漏源电压等于0。但是，实际电路中，MOSFETs 通常在一定漏偏压下，这会削弱垂直场，从而减弱NBTI，同时也会增强横向场，加强HCI。因此需要有一个综合二者的紧凑模型。

![](../images/Fig.%201.%20Illustration%20of%20the%20CHC%20and%20the%20NBTI%20coupling%20effects.%20.jpg)

## 模型的建立

如图1所示，p-MOSFETs工作在 $V_d,V_s,V_g$ 电压下。

在源、夹断点、漏结、漏处的表面势分别为 $\varphi_{s0},\varphi_{sL},\varphi_{sL}(\Delta L), \varphi_{s0}+V_{ds}$。

夹断区的长度为 $\Delta L$。

从源到漏，垂直场从 $E_\tx{ox}$ 逐渐减小，水平场逐渐增大并在靠近漏处达到最大值 $E_\max$。

---

首先，没有 $V_{ds}$ 的 NBTI 模型包括两种机理：栅氧层中空穴的捕获、硅键断裂导致的界面态的产生。

界面态捕获空穴可以用如下动态平衡表示：

$$
\frac{\dif n_\tx{T_int}(t)}{\dif t} = k[N_\tx{int_trap}-n_\tx{T_int}(t)]
$$

其中，$N_\tx{int_trap}$ 是陷阱的总浓度，$n_\tx{T_int}$ 是被捕获的空穴的浓度，$k$ 是空穴捕获率。解该方程可以得到被捕获的空穴的浓度：

$$
\begin{aligned}
    n_\tx{T_int} &= N_\tx{int_trap}[1-\exp(-kt)]\\
    &= N_\tx{int_trap}[1-\exp(-\frac{t}{\tau_c})]
\end{aligned}
$$

$\tau_c=1/k$ 是空穴捕获时间。

而空穴隧穿到栅氧层，会在栅氧层中被捕获，相应的栅氧陷阱浓度为：

$$
\begin{aligned}
    n_\tx{T_ox}&=\int_0^{x_m(t)}N(x)\dif x\\
    &=\int_0^{x_m(t)}N_0 e^{\lambda x} \dif x\\
    &= \frac{N_0}{\lambda} \left\{ \exp\left[\ln\left(\frac{t}{\tau_0}\right)^{\frac{\lambda}{2\beta}}\right]-1 \right\}\\
    &\approx \frac{N_0}{\lambda} \left(\frac{t}{\tau_0}\right)^n
\end{aligned}
$$

$$
x_m(t)=\frac{1}{2\beta} \ln \left(\frac{t}{\tau_0}\right)
$$

$$
N(x)=N_0 e^{\lambda x}
$$

其中，$x_m$ 是隧穿距离，$N(x)$ 是陷阱分布，$\tau_0=3e-4$s是陷阱产生时间常数（假设其对应力和工艺不敏感），$\beta$ 是隧穿参数（与势垒高度有关），$N_0$ 是靠近Si/SiO2界面的陷阱浓度，$\lambda$ 是衰减系数。如果取 $\lambda=2\tx{nm}^{-1}$ 且 $\beta=7.24\tx{nm}^{-1}$，则时间指数 $n=0.14$

结合上两式，阈值电压的漂移可以表示为：

$$
\Delta V_\tx{th_trap}^S=\frac{q}{C}(n_\tx{T_int}+n_\tx{T_ox})
$$

当移除应力后，$\Delta V_\tx{th}$ 会恢复，过程与空穴捕获过程相反：

$$
\Delta V_\tx{th_trap}^R=\Delta V_\tx{th_trap}^\max \exp(-t/\tau_c)
$$

$\tau_c$ 是空穴释放的时间常数，$\Delta V_\tx{th_trap}^\max$ 是应力结束后的最大 $\Delta V_\tx{th}$

---

高能空穴有可能造成键断裂，从而形成界面态，界面态的产生可写成栅氧电场的指数形式：

$$
\frac{\dif n_\tx{S_int}}{\dif t} = A \exp (BE_\tx{ox})
$$

其中，$n_\tx{S_int}$ 是产生的界面态的密度，$t$ 是应力时间，$E_\tx{ox}$ 是栅氧层电场，$E_\tx{ox}$ 的计算如下：

$$
\begin{aligned}
    E_\tx{ox} &= \frac{V_g-V_\tx{fb}-\varphi_s}{T_\tx{ox}}\\
    &= \frac{V_g-(V_\tx{fb0}+\Delta V_\tx{fb})-\varphi_s}{T_\tx{ox}}\\
    &= \frac{V_g-V_\tx{fb0}-\varphi_s}{T_\tx{ox}} - \frac{\Delta V_\tx{fb}}{T_\tx{ox}}\\
    &= E_\tx{ox0}-R_\tx{S_int}\frac{qn_\tx{S_int}}{C_\tx{ox}T_\tx{ox}}
\end{aligned}
$$

$\varphi_s$ 是表明势，$\Delta V_\tx{fb}$ 是由界面态产生导致的平带电压漂移。$V_\tx{fb0}$ 和 $E_\tx{ox0}$ 是无退化的平带电压和栅氧电场。$T_\tx{ox}$ 是栅氧层厚度，$C_\tx{ox}$ 是栅电容。只有被空穴占据的界面态才会对 $\Delta V_\tx{fb}$ 造成影响，而界面态被空穴占据的概率为 $R_\tx{S_int}$

将上两式结合，可得：

$$
\frac{\dif n_\tx{S_int}}{\dif t} = A \exp (BE_\tx{ox})=A\exp\left( E_\tx{ox0}-R_\tx{S_int}\frac{qn_\tx{S_int}}{C_\tx{ox}T_\tx{ox}} \right)
$$

$$
n_\tx{S_int}(t)=R_\tx{Eox}\log(C_1+\frac{t}{\tau_S})
$$

$$
R_\tx{Eox}=Aq\exp(BE_\tx{ox0})\tau_S
$$

$$
\tau_S = \frac{C_\tx{ox}T_\tx{ox}}{A\cdot BR_\tx{S_int}q\cdot \exp(BE_\tx{ox0})}
$$

令 $t=1$ 可以解出 $C_1=0$

从而由界面态产生而导致的 $\Delta V_\tx{th}$ 为：

$$
\Delta V_\tx{th_int}^S (t) = \frac{q}{C_\tx{ox}}\cdot R_\tx{Eox}\cdot \log (1+\frac{t}{\tau_S})
$$

当应力移除后，界面态捕获的空穴会回到硅衬底中。$\Delta V_\tx{th}$ 的恢复量为：

$$
\Delta V_\tx{th_int}^R(t) = \Delta V_\tx{th_int}^\max - \Delta V_\tx{th_int}^\max \cdot R_\tx{rec}\log (1+\frac{t}{\tau_\tx{rec}})
$$

$R_\tx{rec}$ 是恢复系数，$\tau_\tx{rec}$ 是恢复时间常数。

从而总的 NBTI 模型为：

$$
\Delta V_\tx{th_NBTI} = \Delta V_\tx{th_trap}+\Delta V_\tx{th_int}
$$

利用经典的模型来表示横向电场的热载流子效应

$$
\Delta V_\tx{th_CHC} = C \left\{ \exp\left[ \frac{\varphi_\tx{it}}{(q\lambda E_\tx{max})} \right]\cdot \left(\frac{I_{ds}}{W}\right) \cdot t \right\}^m
$$

其中，$C$ 是拟合参数，$\varphi_\tx{it}$ 是产生陷阱所需的能量，$\lambda$ 是热空穴的平均自由程，$\lambda$ 是最大横向电场。

从而总的退化为：

$$
\Delta V_\tx{th}=\Delta V_\tx{th_NBTI}+\Delta V_\tx{th_CHC}
$$

以上求解流程可以集成到表面势模型 HiSIM 中

![](../images/Fig.%202.%20Flow%20chart%20for%20implementation%20of%20NBTI%20and%20CHC%20models%20into%20HiSIM%20model.jpg)

模型与实际还是挺吻合的：

![](../images/Fig.%207%20(a)%20Calculation%20results%20of%20the%20separated%20and%20coupled%20contribution%20of%20NBTI%20and%20CHC%20.jpg)