---
title: NMOSFET 热载流子效应的能量驱动范式
authors: Stewart E. Rauch, III, Member, IEEE, and Giuseppe La Rosa
id: TEDPONHCE
abstract: 随着NMOSFET的尺寸和电压缩小，由于电子在高电场区域近似准弹道运输，电子能量分布变得仅取决于所施加的偏置。这里提出了一种新的范式，在这种范式中，根本的驱动力是电子可获得的能量，而不是幸运电子模型（LEM）中的横向电场峰值。该范式的预测是，碰撞电离率（II）和热载流子寿命的偏置依赖性由II散射率的能量依赖性$S_\tx{II}(E)$和表面态产生（ISG）截面$S_\tx{IT}(E)$给出，并成一阶关系；相比之下，在LEM中，则由高于II和ISG阈值能量的电子数量给出。该方法可以通过实验给出$S_\tx{IT}$
link: https://sci-hub.ru/10.1109/TDMR.2005.860560
---

# The Energy-Driven Paradigm of NMOSFET Hot-Carrier Effects

## 介绍

假设热载流子率（碰撞电离率II或界面态产生率ISG）可近似由如下形式的积分表示：

$$
\tx{Rate} = \int f(E)S(E)\dif E \tag{1}
$$

其中，$f$ 是电子能量分布函数（EEDF），$S$ 是反应截面或散射率。这个积分会产生一个或多个峰，称为“主导能量”，出现在：

$$
\frac{\dif \ln f}{\dif E} = - \frac{\dif \ln S}{\dif E} \tag{2}
$$

（即对 (1) 式求导、取对数、再求导）

数学上来说，主导能量受 $\ln(f)$ 或 $\ln(S)$ 的膝点（高曲率的点）控制。场驱动和能量驱动范式均采用有限的假设来获得简单的热载流子损伤表达式。场驱动范式假设 $\ln(S)$ 的膝点决定主导能量，而能量驱动范式则假设 $\ln(f)$ 的膝点决定主导能量。

幸运电子模型（LEM）是基于场驱动范式，即电场的峰值决定 EEDF（$f$），这导致 EEDF 受限在与热载流子效应相关的能量内。在 LEM（以及扩展有效电子能量的LEM），EEDF 没有重要的膝点，导致 II 和 ISG 的主导能量受对应截面的膝点（在LEM中接近于能量阈值 $\phi_i$ 和 $\phi_{it}$）影响。图一概念性的描述了这一特点，其中使用 Keldysh model 来描述 $S_\tx{II}$（$\propto (E-E_G)^2$）。

此时 II 和 ISG 是场驱动的：1. 主导能量是偏置的弱函数 2. 热载流子偏置依赖性是源于 EEDF 随场的变化。

![](images/Fig.%201.%20Graphical%20representation%20of%20the%20field-driven%20hot-carrier%20paradigm.jpg)

但是，很多人已经展示了 EEDF 在漏端的电势陡降的最大能量附近有一个重要的膝点。这大约是从漏到夹断点的电势（此处称为$V_\tx{EFF}$）。这对 EEDF 有两个影响：1. $E<qV_\tx{EFF}$ 时的 EEDF 变得更平缓；2. $E=qV_\tx{EFF}$ 附近的膝点增强，并进入对HCI有重要影响的能量范围内。

如果这一膝点决定了主导能量，那么 II 和 ISG 率是“能量驱动的”：1. 主导能量跟随偏置条件；2. 热载流子偏置依赖性主要是源于 $S$ 函数的能量依赖性，通过 $V_\tx{EFF}$ 的偏置依赖性表现出来。EEDF 对场的依赖性是次要的。图 2 概念性的描述了这一特点。在图中，$S_\tx{II}$ 使用了 Kamakura 的模型（$\propto (E-E_G)^{4.6}$）

![](images/Fig.%202.%20Graphical%20representation%20of%20the%20energy-driven%20hot-carrier%20paradigm.jpg)

同时，e-e 散射引入了较弱的第二个膝点，在小于 $2V_\tx{EFF}$ 的位置（还有第三个膝点在小于 $3V_\tx{EFF}$ 处，等等，此处忽略）。引入 e-e 散射效应到 EEDF 中，并加上（暂时）假设的 ISG 截面，$S_\tx{IT}$ 如图 3 所示。

![](images/Fig.%203.%20Representation%20of%20ISG%20damage%20rates%20incorporating%20an%20e–e-scattering%20tail%20to%20the%20EEDF.jpg)

e-e 散射引入的主导能量是 $qV_\tx{EFF}$ 的 $m_\tx{EE}$ 倍（该常数稍小于2），并且由于其跟随 $V_\tx{EFF}$，所以也是能量驱动的。

为了描述在能量驱动下的热载流子，让我们假设一个理想的 EEDF，它在 $E<qV)\tx{EFF}$ 与 LEM 类似，但在高能处被“热尾”截断，即：

$$
\begin{aligned}
    f &\propto \exp \left( \frac{-\chi E}{V_\tx{EFF}} \right), E\leq qV_\tx{EFF}\\
    &\propto e^\chi \exp \left[ \frac{(qV_\tx{EFF}-E)}{mkT} \right] E>qV_\tx{EFF}
\end{aligned} \tag{3}
$$

在 LEM 假设下，$\chi = l/\lambda$，其中 $l$ 是高场的标度长度，$\lambda$ 是平均自由程。采用如下形式的散射率：$S=A(E-E_\tx{TH})^p$。在这里，能量驱动区域可以定义为主导能量=$qV_\tx{EFF}$，利用 (2)，可以解出：

$$
E_\tx{TH}+pmkT\leq qV_\tx{EFF} \leq \frac{E_\tx{TH}}{1-\frac{p}{\chi}} \tag{4}
$$

当 $V_\tx{EFF}$ 高出该区域时为场驱动。如果 $\chi\leq p$，则不存在场驱动区。而当 $V_\tx{EFF}$ 低于该区域时，主导能量为热尾，这或许可以称为“热驱动”。

以近似的数据为例，对于 S=II rate（$S_\tx{II}$），$E_\tx{TH}=E_\tx{G}=1.12\tx{eV}$，$p\sim 4.6$，且 $m=1.66$，$T=300$K，$\lambda=9$nm，则

$$
1.317\tx{eV}\leq qV_\tx{EFF} \leq \frac{1.12\tx{eV}}{1-40\tx{nm/l}} \tag{5}
$$

$l$ 始终小于 $L_S$（高横向电场的总长度）。对于 1-2 V 的 Halo 器件，$L_S$ 的典型值为 20-70 nm。这表明对于这些器件，II 会是能量驱动或热驱动。

## 实验

通过实验来论证能量驱动的概念和 $S_\tx{IT}$ 的能量依赖性。采用如下两种器件：

1. 1.2V 90nm节点
2. 1.8V 180nm节点

衡量ISG的IV特性看似是 $\Delta 1/g_\tx{mlin,max}$，但 $\Delta (1/I_\tx{ON})$ 在整个应力区间和沟道长度区间中都具有更好的稳健性。为了消除该参数对沟道长度 $L$ 和阈值电压的依赖性，我们用下面 $\tau_\tx{IT}$ （ISG lifetime）的定义：

$$
\tau_\tx{IT} \equiv \tx{lifetime to 5%} \Delta \tx{of} \left\{ \Delta I_\tx{ON} \left( \frac{L}{L_\tx{nom}} (V_\tx{TECH}-V_T) \right) \right\}
$$

对这两个器件：$b=1.2$；$V_\tx{TECH}$为各自的技术电压（1.2或1.8）$V_T$ 为在应力前的饱和 $V_T$。

## 模型

A. 计算 $V_\tx{EFF}$

$V_\tx{EFF}$ 是从沟道到漏的有效压降

$$
V_\tx{EFF}=V_0+V_{DS}-V_\tx{DSAT}
$$

式中，$V_0$ 为 halo 和/或 source function 产生的额外压降（总共约为几百毫伏）。

$$
V_\tx{DSAT}=\tx{pinch-off voltage}
$$

使用 Taur 和 Ning 的近似方程：

$$
V_\tx{DSAT} = \frac{\frac{2(V_{GS}-V_T)}{m}}{1+\sqrt{1+\frac{2(V_{GS}-V_T)}{mF_C(L-L_S)}}}
$$

式中，$F_C$ 是速度饱和的临界场，$L = L_\tx{POLY}$ 或 $L_\tx{EFF}$，$L_S$ 是速度饱和区的长度，$m$ 是体效应系数，$V_T$ 依然为在应力前的饱和 $V_T$。

B. $S_\tx{II}(E)$ 函数

文献中有多种 II 模型，此处采用简单的电子 II 散射率模式：

$$
S_\tx{II}(E)=A(E-E_G)^{4.6}
$$

C. 热载流子率

在能量驱动的近似中，热载流子率与可用能量处的 $S$ 函数成比例。线性区的 II 和 ISG 可用能量为 $qV_\tx{EFF}$，而在二次区（饱和区？）的 ISG 为 $qm_\tx{EE}V_\tx{EFF}$

$$
r_\tx{II}(V_\tx{EFF}) \approx BS_\tx{II}(qV_\tx{EFF})
$$

（忽略任何e-e散射效应）

$$
\frac{1}{\tau(V_\tx{EFF})}\approx C I_S S_\tx{IT} (qV_\tx{EFF})\\
$$

以上为线性区。

$$
\frac{1}{\tau_\tx{IT}} \approx DI_S^2 S_{IT}(qm_\tx{EE}V_\tx{EFF})
$$

以上为 bulk e-e-scattering （quadratic）区，同时 $r_{II}$ = II ratio（$I_B/I_S$），$\tau_\tx{IT}$ = ISH 热载流子寿命，$I_S$ = 单位宽度的源极电流，$m_\tx{EE}$ = ee-scattering 能量乘数参数，$B,C,D$ 是工艺相关的常数。

关于线性和二次区在 [3] [4] 中有描述。

## 结果

A. $V_\tx{EFF}$ 参数

使用表一中的参数值

| Device Type | $F_C$,mV/nm | m   | $V_0$,V | $L_S$,nm |
| ----------- | ----------- | --- | ------- | -------- |
| 1           | 3.0         | 1.2 | 0.29    | 45       |
| 2           | 3.0         | 1.2 | 0.22    | 60       |

虽然 $V_0$ 和 $L_S$ 是 $V_{DS}$ 和 $L$ 的函数，但此处将其当作常数。另外，器件1由于有 poly overlay，所以 $L_S$ 可能包含额外的长度。


[3] 

[4]