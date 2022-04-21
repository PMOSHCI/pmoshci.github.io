---
title: ✨（仿真）Generally Applicable Degradation Model for Silicon MOS Devices
authors: TCAD
id: GADMFSMD
abstract: 
---

## 介绍

MOS 器件运行性能下降的主要原因被认为是由于在氧化硅界面处的电荷积累。 这导致 MOSFET 器件中的饱和电流和阈值电压偏移降低。 基于物理的退化过程模型通常认为硅-氧化物界面处的 Si-H 键断裂（去钝化）是操作退化的主要原因。 最近，Atlas 中包含了一个新的 Si-H 键断裂通用模型，增加了 Silvaco TCAD 降解模型组合[1]。

他的文章介绍了新模型的理论，并描述了它在 Atlas 中的实现。 然后将该模型应用于一个简单的 MOSFET 以说明该模型的特性。 最后，它被应用于模拟一个真实的 MOSFET，其实验退化数据是可用的。 它能够很好地模拟作为应力时间函数的退化的异常行为。

## General Framework Model

该模型基于对 Si-H 陷阱动力学的研究，其中考虑了三种断键机制[2]。 第一种机制发生在高电场下，这会扭曲键并减少破坏键所需的热能。 第二种机制涉及高能（热）载流子通过单一相互作用破坏键，第三种机制涉及许多较低能量（冷）载流子将振动模式激发到越来越高的能量，直到键断裂。 这两种不同的载流子介导过程对于解释热载流子降解的某些方面是必要的 [3]。 除了这项工作，我们将热载体过程称为单粒子 (SP)，将冷载体过程称为多粒子 (MP)。 首先，我们描述单粒子过程。 界面电荷的时间演化被认为是

$$
N(r,t)={\rm NTA.SP}(1.0-\exp(-t K_f^e(SP)(r)))
$$

该式适用于电子，其中 $N(r,t)$ 是负界面电荷密度，并且

$$
P(r,t)={\rm NTD.SP}(1.0-\exp(-t K_f^h(SP)(r)))
$$

该式适用于空穴，其中 $P(r,t)$ 是正界面电荷密度。

数量 ${\rm NTA.SP}$ 和 ${\rm NTD.SP}$ 代表与 SP 过程相关的负和正界面电荷密度的饱和值，时间为 $t$，以秒为单位。 该过程在位置 $r$ 的反应速率由下式给出

$$
K_f^{e,h}(SP)(r)=\int_{E_{SP}}^\infty f(E,r)g(E)u_g(E)\sigma_{SP}^{e,h}(E,E_{sp})\dif E
$$

其中 $f(E,r)$ 是载流子分布函数的反对称部分，$g(E)$ 是状态密度，$u_g$ 是群速度。

对于电子，函数 $\sigma_{SP}^{e,h}(E,E_{sp})$ 定义在 $E\geq {\rm ELEC.SP.THRESH}$ 范围上，其中 $E_{sp}={\rm ELEC.SP.THRESH}$ 为

$$
\sigma_{SP}^e(E,E_{sp})={\rm ELEC.SP.SIGMA}\left( \frac{E-{\rm ELEC.SP.THRESH}}{K_b T} \right)^{{\rm ELEC.SP.POWER}}
$$

其中玻尔兹曼能量 $K_bT$ 充当能量标度。这被称为软阈值，正如 Keldysh 在碰撞电离率计算中介绍的那样。因此，只有能量大于 ${\rm ELEC.SP.THRESH}$ 的电子对这个积分有贡献。类似地，对于空穴，函数定义为

$$
\sigma_{SP}^h(E,E_{sp})={\rm HOLE.SP.SIGMA}\left( \frac{E-{\rm HOLE.SP.THRESH}}{K_b T} \right)^{{\rm HOLE.SP.POWER}}
$$

$K_f^{e,h}(SP)(r)$ 在文献中通常被称为加速度积分，尽管它的单位是 $s^{-1}$。

MP 过程涉及由能量较低的载流子逐渐激发键的弯曲振动量子态，然后是从最高束缚态到氢的传输态的热激发。这种热发射发生在能量差势垒 ${\rm GF.BARREMI}$ eV 上，尝试频率为 ${\rm GF.NUEMI}$ Hz，发射速率为

$$
P_{emi}={\rm GF.NUEMI}\exp(-{\rm GF.BARREMI}/K_b T)
$$

其中 $T$ 是晶格温度。键也有相反的再钝化过程，其中氢克服高度 ${\rm GF.BARRPASS}$ 的势垒再次键合。总的再钝化率为

$$
P_{emi}={\rm GF.NUPASS}\exp(-{\rm GF.BARRPASS}/K_b T)
$$

大量冷载流子对键的激发可以通过一组描述每个能级的占据密度的耦合微分方程来描述。输入这些方程作为参数的是 $P_u$ 和 $P_d$，它们分别是过渡到下一个更高振动状态和下一个更低振动状态的概率。这些由表达式建模

$$
P_u={\rm GF.NUPHONON}\exp(-{\rm GF.HBAROMEGA}/K_bT)+K_f^{e,h}(MP)(r)
$$

$$
P_d={\rm GF.NUPHONON}+K_f^{e,h}(MP)(r)
$$

其中 ${\rm GF.NUPHONON}$ 是尝试频率，${\rm GF.HBAROMEGA}$（即 $\hbar\omega$）是振动模式能量。 加速度积分为


$$
K_f^{e,h}(MP)(r)=\int_{E_{mp}}^\infty f(E,r)g(E)u_g(E)\sigma_{MP}^{e,h}(E,E_{mp})\dif E
$$

其中 $f(E,r)$ 是载流子分布函数的反对称部分。横截面 $\sigma_{mp}^{e,h} (E,E_{mp})$ 由以下两条表达式给出

$$
\sigma_{mp}^e = {\rm ELEC.MP.SIGMA}(\frac{E-{{\rm ELEC.MP.THRESH}}}{K_b T})^{{\rm ELEC.MP.POWER}}
$$

$$
\sigma_{mp}^h = {\rm HOLE.MP.SIGMA}(\frac{E-{{\rm HOLE.MP.THRESH}}}{K_b T})^{{\rm HOLE.MP.POWER}}
$$

因为这些过程依赖于冷载流子，所以阈值能量小于 SP 过程中的阈值能量。 经过一些数学运算和简化后，MP 过程产生的陷阱密度由下式给出

$$
N(r,t)={\rm NTA.MP}\left[\frac{P_{emi}}{P_{pass}}\left(\frac{P_u}{P_d}\right)^{Nl}(1.0-\exp(-t P_{emi}))\right]^{1/2}
$$

$$
P(r,t)={\rm NTD.MP}\left[\frac{P_{emi}}{P_{pass}}\left(\frac{P_u}{P_d}\right)^{Nl}(1.0-\exp(-t P_{emi}))\right]^{1/2}
$$

式中，$N(r,t)$ 是界面负电荷密度，$P(r,t)$ 是界面正电荷密度。$Nl$ 是 Si-H 键中弯曲模式振动能级的数量。

通用框架模型的第三个组成部分是场增强热降解，它被建模为

$$
P_{therm}={\rm GF.KTHRM}\exp(-E_b/K_bT)
$$

其中，${\rm GF.KTHRM}$ 是尝试频率，$E_b$ 是与电场相关的Si-H键能。$P_{therm}$ 与 SP 过程具有相同的时间依赖性，因此在应力时间 $t$ 后计算缺陷时只需将其添加到 $K_f^{e,h} (SP)(r)$ 中。


[??还需要补充Boltzmann传输方程]

参数的取值如下：

|参数|取值|含义|
|---|----|---|
|NTA.SP|0.0|单粒子模型受主界面陷阱密度|
|NTA.MP|1.8e13|多粒子模型受主界面陷阱密度|
|NTD.SP|1.0e13|单粒子模型施主界面陷阱密度|
|NTD.MP|0.0|多粒子模型施主界面陷阱密度|
|GF.BARREMI|0.775|氢释放能量势垒|
|GF.BARRPASS|0.725|氢捕获能量势垒|
|GF.NUEMI|1.0E12|氢释放尝试频率|
|GF.NUPASS|1.0E12|氢捕获尝试频率|
|ELEC.MP.THRESH|0.5|多电子降解过程的 Keldysh 模型的能量阈值|
|ELEC.MP.SIGMA|1.0e-10|
|ELEC.MP.POWER|3|
|HOLE.SP.THRESH|2.3|
|HOLE.SP.SIGMA|2.0e-19|
|HOLE.SP.POWER|4|

## 手册中的介绍

该模型考虑了当 Si-H 键在 Si/SiO2 界面处断裂时产生的界面态 [116]。 考虑了三种不同的机制：

- 场增强热降解：该机制在NBTI中发挥主要作用
- 单粒子 (single particle，SP) 过程：该机制在长沟道热载流子退化中发挥主要作用
- 多粒子 (multiple particle，MP) 过程：该机制在短沟道热载流子退化中发挥主要作用

已经对这些过程进行了模拟并与实验进行了比较。Starkov 等人 [315] 考虑了 SP/MP 过程，而 Reggiani 等人 [275] 考虑了这三个过程。场增强热降解过程也可以通过使用上述反应扩散模型和适当的参数选择来研究。首先，我们描述单粒子过程。

SP过程是通过单个热电子或空穴破坏Si-H键。该过程在位置 $r$ 的反应速率由下式给出

$$
K_f^{e,h}(SP)(r)=\int_{E_{SP}}^\infty f(E,r)g(E)u_g(E)\sigma_{SP}^{e,h}(E,E_{sp})\dif E \tag{4.10}
$$

其中 $f(E,r)$ 是载流子分布函数的反对称部分，$g(E)$ 是状态密度，$u_g$ 是群速度。

对于电子，函数 $\sigma_{SP}^{e,h}(E,E_{sp})$ 定义为 $E\geq {\rm ELEC.SP.THRESH}$，其中 $E_{sp}={\rm ELEC.SP.THRESH}$ 为

$$
\tau_{SP}^e(E,E_{sp})={\rm ELEC.SP.SIGMA}\left( \frac{E-{\rm ELEC.SP.THRESH}}{K_b T} \right)^{{\rm ELEC.SP.POWER}}
$$

其中玻尔兹曼能量 $K_bT$ 充当能量标度。这被称为软阈值，正如 Keldysh 在碰撞电离率计算中介绍的那样。因此，只有能量大于 ${\rm ELEC.SP.THRESH}$ 的电子对这个积分有贡献。类似地，对于空穴，函数定义为

$$
\tau_{SP}^h(E,E_{sp})={\rm HOLE.SP.SIGMA}\left( \frac{E-{\rm HOLE.SP.THRESH}}{K_b T} \right)^{{\rm HOLE.SP.POWER}}
$$

方程 4-10 通常被称为加速度积分，尽管它的单位是 $s^{-1}$。参数的默认值如表 4-5 所示。

公式 4-10 需要计算载波分布函数。 这是使用Bologna大学 [350, 108] 开发的 Spherical Harmonic 求解方法获得的，该方法在第 3.17 节“玻尔兹曼传输方程求解器”中有详细描述。

使用漂移扩散模型将器件偏置到应力状态。然后，通过求解具有合适边界条件的半导体中的玻尔兹曼输运方程（BTE）得到载流子分布函数。您在 MODELS 语句中指定 BTE.PP.E，在 SOLVE 语句中指定 DEVDEG.GF.E，您希望在其中获得电子的 BTE 解决方案。对于空穴，您在 MODELS 语句中指定 BTE.PP.H，在 SOLVE 语句中指定 DEVDEG.GF.H。您还可以使用同一 SOLVE 语句中的 TD1、TD2 ... TD10 参数和结构文件的名称来指定应力时间。 根据公式，在指定的应力时间 TDn 计算退化电荷。

$$
N(r)={\rm NTA.SP}(1.0-\exp(-TDnK_f^e(SP)(r)))
$$

$$
P(r)={\rm NTD.SP}(1.0-\exp(-TDnK_f^h(SP)(r)))
$$

对于电子，$N(r)$是负界面电荷密度。对于空穴来说，$P(r)$是正界面电荷密度。NTA.SP 和 NTD.SP 在 DEGRADATION 语句中指定。

多粒子 (MP) 过程更复杂，需要有关 Si-H 键的信息。键被量子化振动状态的逐渐上升破坏，随后氢从最高键合状态热发射到传输状态。这种热发射发生在能量差势垒 GF.BARREMI eV 上，尝试频率为 GF.NUEMI Hz，发射速率为

$$
P_{emi}={\rm GF.NUEMI}\exp(-{\rm GF.BARREMI}/K_b T)
$$

其中 $T$ 是晶格温度。键的再钝化也有相反的过程，其中氢克服高度 GF.BARRPASS 的势垒再次键合。总的再钝化率为

$$
P_{emi}={\rm GF.NUPASS}\exp(-{\rm GF.BARRPASS}/K_b T)
$$

预计${\rm GF.BARREMI}\geq {\rm GF.BARRPASS}$。这些参数在DEGRADATION声明。

通过与热电子或空穴的碰撞逐渐获得（量化）振动能量的键的动力学由一系列耦合微分方程描述。一般来说，方程的数量是相当大的。因此，做出一些假设以给出一个总体公式



通用框架模型的使用方式与其他退化模型不同。使用这些模型，可以进行完全瞬态仿真。 但是对于通用框架模型，时间演化由上述分析公式明确建模（参见公式 4-13、4-14、4-17 和 4-18），而在其他模型中执行完全瞬态模拟 . 您必须首先在 MODELS 语句中设置相关的玻尔兹曼传输方程参数。然后，使用漂移扩散近似将器件偏置到所需的应力偏置。

接下来，在 SOLVE 语句中为基于电子和/或空穴的退化指定 DEVDEG.GF.E 和/或 DEVDEG.GF.H，这将调用非齐次玻尔兹曼求解器来求解该偏置下的电子和/或空穴。

您还必须使用 OUTFILE 参数指定输出文件主干，并使用 TD1、TD2 ... TD10 参数指定多达 10 个不同的应力时间。每个请求的应力时间都会输出一个结构文件，您可以在其中查看加速度积分值和退化电荷。Atlas 将仅使用 DEVDEG.GF.E 和/或 DEVDEG.GF.H 在 SOLVE 语句中求解 BTE。

为每个应力时间编写一个标准结构文件，其中包含计算的界面电荷。 例如

```
MODELS BTE.PP.E BTE.PP.H

...

SOLVE PREV DEVDEG.GF.H DEVDEG.GF.E TD1=1.0E-2 TD2=1.0E-1 TD3=1.0 TD4=10.0 OUTF=MOSFET.STR MASTER
```

将求解电子和空穴的 BTE 方程，计算应力 0.01、0.1、1.0 和 10.0 秒后的界面退化电荷，并输出结构文件 MOSFET_1.00e-02s.STR、MOSFET_1.00e-01s.STR、MOSFET_1 .00e+00s.STR 和 MOSFET_1.00e+01s.STR。 然后可以使用这些文件来研究阈值电压的变化和由退化引起的漏极电流的变化。

本模型相关参数见表4-5。 它们可以进行调整以适应不同的实验结果。 玻尔兹曼输运方程的完整参数集在第 3.17 节“玻尔兹曼输运方程求解器”中给出。