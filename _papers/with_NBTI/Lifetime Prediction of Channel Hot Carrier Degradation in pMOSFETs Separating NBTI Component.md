---
title: 分离NBTI部分后的pMOSFET热载流子退化寿命预测
authors: Y. Mitani, S. Fukatsu, D. Hagishima, and K. Matsuzawa
id: LPOCHCDIPSNC
link: https://ieeexplore.ieee.org/document/6232842
abstract: p 沟道 MOSFET 中的沟道热载流子 (CHC) 退化本质上包括负偏置温度不稳定性 (NBTI)，这将导致高估 CHC 退化。 因此，为了更准确地预测器件寿命，必须将 BTI 成分与 CHC 降解分开。 在这项研究中，提出了一种简单的寿命预测方法，将 NBTI 和 CHC 组件从顺序 CHC 测试（即交替应力和松弛）数据中分离出来，重点关注恢复现象，这是 NBTI 的独特行为。
---

# Lifetime Prediction of Channel Hot Carrier Degradation in pMOSFETs Separating NBTI Component

## Ⅰ. 介绍

超薄栅极电介质的可靠性问题构成了 ULSI 缩放中最严峻的挑战之一。 特别是，沟道热载流子 (CHC) 退化已成为 FET 缩小过程中最严重的问题之一。通常，当在 CHC 测量下将栅极偏压 (VG) 和漏极偏压 (VD) 施加到 MOSFET 时，阈值电压偏移 ($ΔV_{TH}$) 和漏极电流退化 ($ΔI_D$) 会导致在漏极边缘产生高能载流子并注入栅极绝缘体。另一方面，由负偏置温度不稳定性 (NBTI) 引起的 pMOSFET 中的 $ΔV_{TH}$ 和 $ΔI_{D}$ 已成为最先进的 ULSI 技术的严重可靠性限制因素之一 [1-6]。NBTI 发生在垂直偏压施加到栅极电介质时。 当对 pMOSFET 施加 CHC 应力时，NBTI 也是不可避免的，因为存在垂直电场 [7, 8]。 因此，直流应力测量下的 CHC 退化涉及 NBTI 和 CHC 组件。因此，这些组件的分离不仅对于理解 pMOSFET 中 CHC 退化的机制是必要的，而且还有助于改进 TCAD 仿真模型，从而实现更准确的寿命预测。

我们已经提出了 pMOSFET 中 BTI 和 CHC 成分的简单分离方法，重点是恢复现象 [9]。正如之前在许多文献中所报道的，NBTI 的恢复现象被清楚地观察到。这种恢复现象已被解释为捕获的空穴的发射（去捕获）和氢对界面态的重新钝化。另一方面，在 nMOSFET 的情况下，在 CHC 退化中没有观察到恢复现象。其他研究小组也报道了这一结果[10, 11]。 也就是说，这种恢复现象是NBTI的独特行为。在 CHC 应力中，高能载流子在栅极介电界面处破坏键（Si-H、Si-O...），而 NBTI 通过冷（非高能）空穴捕获和氢键断裂发生。CHC 和 NBTI 在缺陷生成过程中的这种差异有望带来 NBTI 的独特行为。 我们提出的经验方法使用了 NBTI 的这种恢复现象。从解耦 CHC 组件的温度依赖性和漏极偏置 (VD) 依赖性来看，使用恢复现象的分离方法被认为是有效的 [9]。在此方法的基础上，在本文中，我们扩展到 pMOSFET 中 CHC 组件的寿命预测，即 CHC 组件的时间相关退化。

## Ⅱ. CHC 成分的分离程序

之前已经报道了一些从 CHC 降解中分离 NBTI 和 CHC 成分的方法 [7,12,13]。在其中之一中，据报道，可以通过从 DC-CHC 降解 ($ΔI_D^{\rm DC-CHC}$) 中减去 DC-NBTI [$ΔI_D^{\rm DC-NBTI}$] 来分离 CHC 成分 ($ΔI_D^{\rm DC-CHC}$) [12]。这里，DC-NBTI 和 DC-CHC 表示在常规 DC 应力下的退化。 在该方法中，ΔID CHC 可以通过等式（1）估算。

$$
\Delta I_D^{\rm CHC}=\Delta I_D^{\rm DC-CHC}-\Delta I_D^{\rm DC-NBTI} \tag{1}
$$

该方法在本文中用“DC-Method”表示，我们用“LF-AC-Method”（低频交流方法）表示的分离方法也与该方法进行了比较。

我们的分离程序（“LF-AC-方法”）示意性地显示在图 1 中，它基于参考文献 9。首先（步骤 1），在任意应力时间内，在 CHC 测量的相同栅极电压 (VG) 下测量顺序 NBTI 及其恢复。根据这些实验数据，估计恢复开始之前的各个漏极电流退化（$ΔI_D^{\rm NBTI\_TEST}(n)$）和恢复的部分（$ΔI_D^R (n)$）。接下来（步骤 2），使用下式给出的等式在各个应力消除阶段估计恢复率（$R(n)$）

$$
R(n)=\frac{\Delta I_D^R(n)}{\Delta I_D^{\rm NBTI\_TEST}(n)} \tag{2}
$$

然后（步骤 3），如图 1 所示测量顺序 CHC 及其恢复率，并使用下式给出的等式估计 NBTI 和 CHC 分量（分别为 $ΔI_D^{\rm NBTI}(n)$ 和 $ΔI_D^{\rm CHC}(n)$）

$$
\Delta I_D^{\rm NBTI}(n)=\frac{\Delta I_D^{R'} (n)}{R(n)} \tag{3}
$$

$$
\Delta I_D^{\rm CHC}(n)=\Delta I_D^{\rm CHC\_TEST}(n)-\Delta I_D^{\rm NBTI}(n) \tag{4}
$$

这里，$ΔI_D^{R'}(n)$ 对应于 CHC 测试数据的相应恢复部分，如图 1 所示（步骤 3）。

![](../images/Figure%201.%20Separation%20procedure%20of%20CHC%20component.jpg)

NBTI 和 CHC 下的顺序加应力和减应力 $ΔI_D$ 示例如图 2 所示。 这些器件是具有 1.8nm SiON 薄膜作为栅极电介质的 p 沟道 MOSFET。器件尺寸 W/L=10μm/0.04μm。

![](../images/Figure%202.%20Drain%20current%20degradation.jpg)

连续的 NBTI、CHC 测量在室温下进行（~25C）。 在本文中，我们使用第 3 个连续应力开启和关闭阶段的实验结果来估计寿命。

### Ⅲ. 实验结果与讨论

图 3 显示了 CHC 降解分离结果的漏极电流降解 ($ΔI_D^{\rm CHC}/I_D^0) 的应力时间依赖性。