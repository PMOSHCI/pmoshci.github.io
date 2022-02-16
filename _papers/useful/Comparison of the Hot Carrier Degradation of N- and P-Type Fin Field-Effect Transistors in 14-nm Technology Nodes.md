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

本实验中使用的 n- 和 p-FinFET 是 14 nm 节点，具有后栅极（gate-last）工艺，通过与联合微电子公司 (UMC) 合作获得的。器件结构示意图如图1所示。首先，去除多晶硅栅极后，生长一层厚度为 10Å 的热氧化层作为界面层。其次，通过原子层沉积沉积了 20Å 厚的 HfO2 电介质和功函数金属。最后，进行形成气体退火以修复在栅堆叠过程中产生的界面缺陷。本研究中使用的 FinFET 的通道宽度为 154 nm，长度为 14 nm。所有实验数据均使用 Keysight B1500 半导体参数分析仪和 Formfactor M150 探针台进行测量。

## Ⅲ 结果与讨论

根据lucky-electron模型[15]，由于空穴的载流子迁移率低于电子，空穴在漏极附近引起的碰撞电离（I.I.）小于电子引起的； 因此，HCE 不会导致 p 型 MOSFET 严重退化。图 2(a) 显示了本研究中使用的 n-FinFET 和 p-FinFET 在不同的热载流子应力 (HCS) 条件下 ($V_D = ±1.8 V$, $V_G = ±0.9–1.2 V$) 的 $V_T$ 随时间的退化，它们的沟道长度为 16 nm。与 HCS 条件无关，p-FinFET 的 $\Delta V_T$ 值高于 n-FinFET。