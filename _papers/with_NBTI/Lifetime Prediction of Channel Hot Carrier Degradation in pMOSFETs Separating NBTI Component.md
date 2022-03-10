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

连续的 NBTI、CHC 测量在室温下进行（~25℃）。 在本文中，我们使用第 3 个连续应力开启和关闭阶段的实验结果来估计寿命。

### Ⅲ. 实验结果与讨论

图 3 显示了 CHC 降解分离结果的漏极电流降解 ($ΔI_D^{\rm CHC}/I_D^0$) 的应力时间依赖性。这里，$I_D^0$ 对应于新器件中的漏极电流 ($I_D$)。 需要注意的是，“DC-Method”和“LF-AC Method”中分离出来的 CHC 分量都遵循幂律增加，这与 DC CHC 数据（“DC-CHC”）的趋势几乎相同。在这种情况下，指数值估计在 0.23 左右。

通过从图 3 中的实验数据推断，可以估计 CHC 组件的寿命。 图 4 显示了故障时间 (TTF) 作为应力偏差 (VG=VD) 的函数。需要注意的是，使用“DC-Method”和“LF-AC-Method”分离的 CHC 组件的 TTF 比包含 NBTI 组件（“DC-CHC”）的 TTF 更长。此外，在“LF-AC-Method”的情况下，TTF 显示最大的电压加速因子。然后，可以预测在低 VDD 区域是其中最长的寿命。

![](../images/Figure%203.%20Time%20evolution%20of%20drain%20current%20degradation.jpg)

![](../images/Figure%204.%20Time-to-failure%20(TTF)%20under%20CHC%20stress.jpg)

根据之前的报告 [14]，CHC 退化强烈依赖于衬底电流 (ISUB)，退化由下式给出

$$
\frac{\Delta I_D^{\rm CHC}}{I_D^0}\propto (\frac{I_{SUB}}{I_D})^m \tag{5}
$$

在我们之前的报告 [9] 中，已经报道了在任意时间应力后分离的 CHC 分量 ($ΔI_D^{\rm CHC}/I_D^0) 根据衬底电流 ($I_{SUB}/I_D$) 的幂律增加。

图 5 显示了 CHC 测量下的故障时间 (TTF) 与衬底电流 (ISUB/ID) 的函数关系。 通过“DC-Method”和“LF-AC-Method”分离的 CHC 组件的 TTF 也根据衬底电流的幂律 (ISUB/ID) 降低。 该结果意味着简单的分离方法将启用 TCAD 仿真模型。

![](../images/Figure%205.%20Time-to-failure%20(TTF)%20under%20CHC%20stress.jpg)

将两种分离方法的可靠性裕度与包括 NBTI 分量的 DC-CHC 数据进行比较。 图 6 显示了作为 ISUB/ID 函数的 $ΔI_D^{\rm CHC}/I_D^0$。 两种方法各自的 $ΔI_D^{\rm CHC}/I_D^0$ 是在 DC-CHC 数据从新漏极电流 (ID0) 下降 10% 的应力时间估计的。 例如，在 $V_G=V_D=-1.3{\rm V}$ 时，估计“DC 方法”的 $ΔI_D^{\rm CHC}/I_D^0$ 为 6.5%，“LF-AC 方法”为 6.1%。

![](../images/Figure%206.%20Reliability%20margins%20for%20both%20“DC-Method”.jpg)

## IV. 结论

在本文中，提出了简单的分离方法，用于分离 pMOSFET 中涉及 CHC 测试数据的 NBTI 和 CHC 组件。 通过关注恢复现象，成功地估计了这些组件的寿命。 恢复率是从连续 NBTI 及其恢复率估计的，然后，可以使用恢复率提取 DC-CHC 数据中的 NBTI 分量。 10% 漏极电流衰减 (ΔIDCHC/ID0=10%) 的失效时间 (TTF) 可由衬底电流的幂律 ($I_{SUB}/I_D$) 表示。 可以得出结论，这种简单的分离方法是缩短 pMOSFET 中静态 CHC 退化寿命的有力工具。

在这项工作中，我们使用传统的 SiON 栅极电介质进行了研究。 该分离方法也有望适用于高 k 栅极电介质，其中不仅 NBTI，而且 nMOSFET 中的 PBTI 都可能参与 CHC 降解。 然而，除了界面缺陷之外，体陷阱还会增强 ID 退化和阈值电压偏移。 事实上，在具有高 k 栅极电介质的 MISFET 的情况下（此处未显示），有时分离的 CHC 分量 ($ΔI_D^{\rm CHC}$) 变为负值。 该结果意味着 CHC 组分可以部分恢复。因此，在分离方法中必须考虑产生的体陷阱对回收率的影响。