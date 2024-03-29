---
title: 用于低功耗40nm硅基底NMOS和PMOS的，考虑温度的，热载流子到冷载流子器件寿命模型
authors: A. Bravaix, V. Huard, D. Goguenheim, E. Vincent
id: HCTCCDLMWTFLP4SBNAPF
abstract: 在最近的 CMOS 节点中，通过 Si-H 键的多振激发 (MVE) 和多声子发射去激发的影响，分析了热载流子退化到低电压的持久性。 这种新机制由能量框架描述，并且源自与电压和几何形状无关的通道电流密度。 MVE 模式在 NMOS 和 PMOS 器件中随着温度的升高而增强，因为它与晶格的强耦合忽略了 PMOS 中的负偏压贡献。
link: https://sci-hub.ru/https://ieeexplore.ieee.org/abstract/document/6131625/
---

# Hot-Carrier to Cold-Carrier Device Lifetime Modeling with Temperature for Low power 40nm Si-Bulk NMOS and PMOS FETs

## 介绍

使用具有不同电源电压 ($V_{DD}$) 和栅氧化层厚度 ($T_{ox}$) 的多个 CMOS 节点给沟道热载流子随温度退化的分析带来了困难。这源于退化机制及其从热载流子 (HC) 到冷载流子 (CC) 与偏置温度不稳定性 (BTI) 相关的不同加速因子。最近，设备寿命建模已从标准的场驱动 [1] 转变为能量驱动框架 [2, 3]。我们在这项工作中概括了器件寿命依赖性与三种能量模式 [3-5] 基于永久性损伤（Pb 中心）中涉及的 Si-H 解离的物理依赖性。我们证明了多振激发 (MVE) 是解释在低载流子能量下降解持续存在的关键因素，具有多声子发射过程固有的等效有效温度模型。

## 通用热到冷载流子寿命

对最后一个 CMOS 节点的新兴趣是 HC 损坏的持续存在，尽管 $V_{DD}$ 降低到 1V（图 1a，b）。HC 问题在 NMOS 和 PMOS FET 中重新出现，因为最坏情况下的 DC-AC 损坏已经上升到对 VGD 的高度依赖性 [3-5] 并成为产品寿命的净比例 [6]。CC 机制通过载流子散射 [2] 和多振激发 (MVE) 在额外的能量获取过程中发挥重要作用 [2-4]。图 2 使用相互作用截面概念 [2] 演示了从 HC 到 CC 的三个能量范围，$S_{IT} \propto (τ\cdot I_{DS})^{-m_1} \propto (I_{SUB}/I_{DS})^{m_0}$ 其中高 $I_{DS}$ 寿命依赖性偏离了场驱动 ($m_0 =2.5-3，m_1=1$)（称为模式 1）和 NMOS 中的电子 - 电子相互作用（模式 2）给出 $m_2=2$。CC 进入 MVE（模式 3），既不显示栅极长度（LG）依赖性（图 3a）也不显示宽度依赖性（图 3b），因为增加的沟道冷载流子数量会引起 Si-H 解离。 这在图 4 中得到了证明，在大量 $V_{DS}$、$V_{GS}$ 条件（$L_G=40{\rm nm}$）下，饱和漏极电流 $ΔI_{DSat}$（正向模式）减少了 10%，这里选择它是因为它与实际交流操作下的数字开关有直接关系。

## SI-H 键断裂率

我们的建模基于 $S_{IT}$ 的确定，其中 (1) 通过在使电子函数分布达到峰值的主要能量 $E_{domit}$ 处转移到能量 (2a) 的幂律依赖性 [2, 3]。这在图 5 中显示了根据 (2b) 的模式 1-2 的场和几何依赖性，而 (2c) 中的模式 3 的 $S_{IT,3}(E)$ 已通过 MVE 的拉伸模式的主导效应来解释 Si-H 键 [5]。

$$
R_{IT} \propto \frac{1}{\tau} = \int f(E) S_{it}(E) \dif \approx S_{it} (E_{domit})\cdot I_{DS} \tag{1}
$$

$$
\begin{cases}
    S_{it}(E)=B\cdot (E-\varphi_{it})^{p_{it}} &(2a)\\
    S_{it1,2}(E_{domit})\propto \frac{1}{\tau I_{DS}^{m1}}=r_{ii}^{m_0}=(\frac{I_{sub}}{I_{DS}})^{m_0} &(2b)\\
    \text{with } m_0=2.5, m_1=1\text{(mode1)},m_1=2 \text{(mode2)}\\
    S_{it3}(E_{domit})\propto (eV_{DS}-\hbar \omega)^{0.5} &(2c)\\
    R_{IT,3}\propto [(I_{DS}/e)S_{it,3}(E)]^{E_B/\hbar \omega}\exp(-E_{emi}/k_BT) &(3)
\end{cases}
$$

$$
R_{IT}\propto \frac{1}{\tau}=\sum_i \frac{1}{\tau_i} \tag{4}
$$


这给出了速率 $R_{IT,3}$，在 (3) 中表示为声子模式 ($E_B/\hbar ω$) 和与 $exp(-E_{emi}/kT)$ 成比例的发射概率的函数。图 6a、b 显示 HC-CC 损伤在 $VG_{only}$ 和高 $\vert V_{GS}\vert$ 下的通道热孔 (CHH) 下的 PMOS 中遵循相似的趋势。 在 $t_{switch} < 40{\rm ms}$ 的时间范围内可能涉及快速孔放电的应力（图 6b）。因此，在 NBTI [7, 8] 下证明的氮化栅极氧化物的这种特异性在 CHH 下得到证明。 相比之下，在 NMOS 晶体管中没有观察到弛豫，因为在 $t_{switch} < 100{\rm µs}$（此处未显示）需要超快速测量技术 [9] 时，去捕获的时间常数要短得多。相同设备上的重复应力测量阶段表明，根据 $E'γ$ 中心的作用，弛豫过程趋向于在图 7a 中局部充电和放电的慢陷阱（CHH 应力）或均匀（图 7b）的恒定比例 [4, 7]。因此，我们执行基于永久损坏修复和（任意）等待时间（$t_w = 60s$）的寿命技术，以便对 $ΔN_{IT}$ 最敏感。在这种情况下，我们指出我们在图 8 中的建模（线）完全描述了 PMOSFET 中的 HC 到 CC 能量方案。MVE（模式 3）确实导致与电流密度的普遍依赖性，其中空穴的斜率（-9，-10）是电子（-17，-18）的一半。根据（3），在图 9 中绘制了大量数据，给出了振动模式能量 $\hbar ω = 75{\rm meV}$ 和键断裂能 $E_{Bo} = 1.5{\rm eV}$，这与在没有氧化物场的情况下平均解离能的线性相关性一致 [5, 7]。CC 和衬底之间的非谐耦合与电子（6σ* 态）的声子模式共振是空穴（5σ）的两倍。因此，在图 9 中观察到 MVE 模式，由于状态密度和声子散射率不同，空穴 $I_{th}(PMOS)≅ I_{th} (NMOS)/2 = 1.5/2 {\rm mA/µm}$ 的阈值电流密度较小。