---
title: 14nm工艺结点N型与P型鳍型场效应晶体管的热载流子效应对比
id: COTHCDONAPTFFETI1NTN
abstract: 提出了一种包括CHC和NBTI的紧凑可靠性模型。该模型描述了界面态的产生和空穴
link: https://ieeexplore.ieee.org/document/9519693
---

# Comparison of the Hot Carrier Degradation of N- and P-Type Fin Field-Effect Transistors in 14-nm Technology Nodes

## 摘要

在这项研究中，我们制造了一个 n 型鳍式场效应晶体管 (FinFET) 和一个 p 型 FinFET (p-FinFET)，以比较它们在 14 纳米技术节点中的热载流子退化 (HCD)。我们分析了不同栅极电压（$V_G$）下的HCD，发现在14nm技术节点下，p-FinFET的HCD比n型FinFET（n-FinFET）的HCD更严重。此外，随着 $V_G$ 的增加，p-FinFET 的 HCD 机制比 n-FinFET 更快地从电子-电子散射 (EES) 转变为多重振动激发 (MVE)； 因此，观察到 n-FinFET 的阈值电压 ($V_T$) 偏移较大。当 n-FinFET 的 $V_G$ 增加到 $V_T+1.2$ V 以及 p-FinFET 的 $V_G$ 增加到 $V_T - 0.8$ V 时，$V_T$ 在热载流子应力下开始迅速增加。本研究中使用的 n-FinFET 和 p-FinFET 的 $\tau \times (\frac{I_B}{I_D})^{-27}$ 分布表明，随着 $V_G$ 的增加，HCD 的机制从 EES 变为 MVE。该结果表明，由于 MVE 在 p-FinFET 中占主导，p-FinFET 比 n-FinFET 经历了更严重的 HCD。与 n-FinFET 相比，p-FinFET 的 HCD 机制随着 $V_G$ 值的降低而改变。最后，与 n-FinFET 相比，p-FinFET 在整个沟道中的 HCD 发生得更均匀。

## Ⅰ 介绍

在金属氧化物半导体场效应晶体管 (MOSFET)，尤其是 n-MOSFET 的开发中，热载流子效应 (HCE) 不容忽视 [1]-[5]。热载流子退化 (HCD)，例如阈值电压 ($V_T$) 偏移和驱动电流 ($I_{\rm ON}$) 和跨导 ($G_m$) 降低，极大地限制了各种电路应用，例如 CMOS 电路、SRAM 电路和射频应用 [6]-[8]。过去，n-MOSFET 在工作过程中容易受到 HCD 的影响，而 p-MOSFET 则容易受到偏置温度不稳定性 (BTI) 的限制。然而，随着沟道长度与工作电压不成比例地缩小，由 HCD 引起的退化进一步恶化 [9]-[10]。对于短沟道鳍式场效应晶体管 (FinFET)，在 p 型 FinFET (p-FinFET) 中观察到比在 n 型 FinFET (n-FinFET) 中更严重的 HCD [11]-[14]。

因此，最近对这个话题进行了广泛的讨论。短沟道 MOSFET 中的 HCD 机制主要为多粒子过程 [15]-[18]。多粒子过程中的电子-电子散射 (EES) 和多重振动激发 (MVE) 由于会引起电子-电子相互作用从而导致 Si-H 键断裂。Jech 等人。 [19] 通过分析 p-MOSFET 在全部 $\{V_G, V_D\}$ 偏置条件下的实验数据，揭示了 BTI 和 HCD 在不同应力状态下对各类缺陷的影响。他们提出了一种非平衡传输效应，其中次级载流子与沟道和源极一起被加热，以增强或支配 HCD，并与氧化物缺陷相互作用导致异常退化。同样，Sharma 等人 [20]、Sharma 和 Mahapatra [21]、Sharma 等人 [22] 通过具有完整的偏置 $\{V_G, V_D\}$ 条件的 HCD，为不同类型的 MOSFET 建立了对应的 $\Delta V_T$ 、$\Delta I_{\rm DLIN}$ 和 $\Delta N_{\rm IT}$ 模型。

尽管先前的研究已经付出了广泛的努力来说明短沟道 p-FinFET 中的 HCD，但仍然缺少 HCD 在 p-FinFET 中的发展和过程，这需要进一步研究。此外，有必要对 p 型和 n 型 FinFET 的 HCD 进行清晰的比较，以提高对这两种器件的 HCD 深入模型的理解。因此，在本研究中，我们对短沟道 p 和 n MOSFET 使用宽泛的热载流子条件。实验结果表明，随着 $V_G$ 的增加，p-FinFETs 中 HCD 的发生比 n-FinFETs 更早且更严重。此外，在 p-FinFET 中从 EES 到 MVE 的 HCD 机制转变将比在 n-FinFET 中更早。

## Ⅱ 实验

![](../images/Fig.%201.%20Schematic%20diagram%20of%20device%20structure%20with%20process%20flow%20use%20in%20this%20study.jpg)

本实验中使用的 n- 和 p-FinFET 是 14 nm 节点，具有后栅极（gate-last）工艺，通过与联合微电子公司 (UMC) 合作获得的。器件结构示意图如图1所示。首先，去除多晶硅栅极后，生长一层厚度为 10Å 的热氧化层作为界面层。其次，通过原子层沉积沉积了 20Å 厚的 HfO2 电介质和功函数金属。最后，进行形成气体退火以修复在栅堆叠过程中产生的界面缺陷。本研究中使用的 FinFET 的通道宽度为 154 nm，长度为 14 nm。所有实验数据均使用 Keysight B1500 半导体参数分析仪和 Formfactor M150 探针台进行测量。

## Ⅲ 结果与讨论

![](../images/Fig.%202.%20The%20HCD%20in%2016nm%20n-FinFET%20and%20p-FinFET.jpg)

根据lucky-electron模型[15]，由于空穴的载流子迁移率低于电子，空穴在漏极附近引起的碰撞电离（I.I.）小于电子引起的； 因此，HCE 不会导致 p 型 MOSFET 严重退化。图 2(a) 显示了本研究中使用的 n-FinFET 和 p-FinFET 在不同的热载流子应力 (HCS) 条件下 ($V_D = ±1.8 V$, $V_G = ±0.9–1.2 V$) 的 $V_T$ 随时间的退化，它们的沟道长度为 16 nm。与 HCS 条件无关，p-FinFET 的 $\Delta V_T$ 值高于 n-FinFET。在热载流子可靠性测试中，$V_G$ ($V_G = V_T \pm 0.4–1.7 {\rm V}$) 在固定 $V_D$ 值 ±1.8 V 下逐渐增加，以比较不同条件下的 $\Delta V_T$ 值 [图 2(b)]。当 $V_G-V_T =0.8 V$ 时，p-FinFET 的 $\Delta V_T$ 值高于 n-FinFET 并开始迅速增加。p-FinFET 的 $\Delta V_T$ 值继续快速增加，直到 $V_G − V_T = 1.2 V$。

为了分析上述现象的原因，不同条件下 $ΔV_T$ 的幂律 $n$ 值随时间的变化如图 2(c) 所示。当 $n$ 接近 0.5 时，大部分 $\Delta V_T$ 值可归因于热载流子引起的界面态。当 $n$ 值接近 0.2 时，由于热载流子注入，$\Delta V_T$ 开始增加 [23]-[24]。因此，当 $V_G-V_T$ 高于 -0.8 V 时，p-FinFET 中热载流子注入的快速增加导致其 $\Delta V_T$ 值快速增加。图 2(d) 显示了在负偏置应力和正偏置应力下冷载流子注入的 $\Delta V_T$ 值，实验器件具有相同的栅极偏置和按比例缩小的沟道长度。无论沟道长度如何，由负偏置应力或正偏置应力引起的ΔVT 没有显着变化。因此，p-FinFET 的 HCD 比 n-FinFET 的 HCD 更严重，这不是由冷载流子注入引起的。

衬底电流也是检测HCD的指标。 因此，使用以下公式 [25] 分析了 n-FinFET 和 p-FinFET 的 HCD：

$$
\tau \propto I_{\rm sub}^{-m}
$$

其中 τ 是器件的寿命，定义为由于 HCD 导致 $ΔV_T$ 达到 50 mV 所需的时间。参数 m 等于 $\varphi_{it}/\varphi_{i}$，其中 $\varphi_{it}$ 是可以产生界面缺陷的载流子的临界能量，$\varphi_{i}$ 是可以产生 I.I. 的载流子的最小能量。如图3（a）所示，当在一定HCS下施加低栅极偏置电压时，n-FinFET和p-FinFET中 $τ-I_{\rm sub}$ 的斜率等于-3，这与 [25] 中的结果一致。然而，随着 $V_G$ 的增加，$τ-I_{\rm sub}$ 的斜率开始偏离 -3。这一结果表明，先前提出的模型不能有效地描述短沟道 FinFET 中的 HCD。因此，我们检查了 HCE 下 $τ$ 随载流子浓度的变化 [图 3(b)]。如图3（b）所示，与 -3 斜率的偏差区间中的 $τ$ 和载流子浓度值表现出以下关系：$1/τ∝I_D$。

![](../images/Fig.%203.%20The%20distribution%20of%20(a)%20τ%20−%20IB%20and%20(b)%20τ%20−%20ID%20in%20n-%20and%20p-FinFET.jpg)

以前的文献表明，HCD 越来越受载流子浓度的影响 [26]。随着沟道长度的减小，由于每单位长度的电场增加，沟道中的载流子速度达到饱和； 因此，$V_D$ 增长产生的载流子能量减少。幸运电子模型中的 τ 公式不能准确地表示短通道中的 HCD。因此，EES 模型中的 τ 公式用于分析 n-FinFET 和 p-FinFET [16] 中的短沟道 HCD。这个公式表示如下：

$$
\tau = A \left( \frac{I_{\rm sub}}{I_D} \right)^{-m} I_D^{-2}
$$

其中 $A$ 是取决于沟道宽度的常数，$m$ 等于 $φ_{it}/φ_i$ ，理论值为 -2.7。对于 HCS 下 $V_G$ 的增加，在图 3（c）和 3（d）中观察到 n-FinFET 和 p-FinFET 的两个斜率值。首先，当斜率为 -2 时，HCD 受 EES 机制支配，这表明沟道中的载流子没有足够的能量通过$V_D$加速解离Si-H键。因此，必须通过载流子之间的连续散射来产生高能载流子以解离 Si-H 键。然而，在 HCS 下，当 $V_G$ 增加到 n-FinFET 的 $V_T + 1.2 {\rm V}$ 和 p-FinFET 的 $V_T - 0.8 {\rm V}$ 时，斜率开始偏离 -2 并对应于异常 HCD 发生的条件 n-FinFET 和 p-FinFET [图 2(b)]。上述现象可以解释为什么 HCD 在 p-FinFET 中比在 n-FinFET 中更严重。

根据先前的研究 [17]，热载流子在大 $V_G$ 值下具有低能量。因此，应通过使多个低能载流子连续撞击Si-H键使其在拉伸或弯曲振动模式下解离，从而将载流子能量与振动能量耦合。MVE 模型中的 $τ$ 公式可以确认 Si-H 键的振动模式。[18] 中的这个公式如下：

$$
\tau = A' [V_D^{0.5} (I_D)]^{-\frac{E_B}{\hbar \omega}}
$$

其中 $A'$ 是取决于沟道宽度的常数，$E_B$ 是 Si-H 键的断裂能，$\hbar ω$ 是振动能量。拉伸和弯曲模式的 $E_B/(ℏω)$ 值分别对应于 -10 和 -20 ，$E_B$ 值分别对应于 2.5 和 1.5 eV 。如图 4(a) 和 4(b) 所示，n-FinFET 和 p-FinFET 的斜率分别为 -17.4 和 -22.8。这些斜率值接近 -20，因此对应于弯曲模式下 Si-H 键的解离。

![](../images/Fig.%204.%20The%20distribution%20of%20τ%20−%20(ID%20×V)%200.5%20in%20(a)%20n-FinFET%20.jpg)

根据 MVE 模型，HCD 主要起源于载流子之间反复碰撞使 Si-H 键解离。MVE模型中的载流子能量要求低于 lucky-electron 和 EES 模型。因此，当沟道长度不断减小时，HCD机制逐渐从幸运电子模型描述的机制转变为EES或MVE模型描述的机制。此外，诱导HCD所需的载流子能量降低，这导致HCD的范围从靠近漏极侧的区域到整个沟道增加，如图4（c）所示。随着 VG 在 HCS 下的增加，p-FinFET 的 HCD 机制从 EES 变为 MVE 的速度比 n-FinFET 的变化更快。因此，对于 p-FinFET，HCD 在整个通道中的发生比对于 n-FinFET 更均匀。 因此，p-FinFET 表现出比 n-FinFET 更严重的 HCD。

## IV 总结

当 $V_G$ 在 HCS 下增加时，p-FinFET 的 HCD 比 n-FinFET 更严重。然而，当 $V_G$ 对于 n-FinFET 增加到 $V_T+1.2$ V 和对于 p-FinFET 增加到 $V_T-0.8$ V 时，$ΔV_T$ 在 HCS 下开始迅速增加。本研究中使用的 n-FinFET 和 p-FinFET 的 $\tau \times (\frac{I_B}{I_D})^{-2.7}$ 的分布表明，随着 VG 的增加，HCD 的机制从 EES 变为 MVE。该结果表明，由于 MVE 在 p-FinFET 中占主导地位，p-FinFET 比 n-FinFET 表现出更严重的 HCD。HCD 机制的变化发生在 p-FinFET 的 $V_G$ 值低于 n-FinFET 的情况下。