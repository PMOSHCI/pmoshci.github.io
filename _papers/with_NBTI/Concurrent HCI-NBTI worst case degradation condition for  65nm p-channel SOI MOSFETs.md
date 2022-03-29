---
title: 并发 HCI-NBTI：65nm p 沟道 SOI MOSFET 的最坏情况退化条件
authors: R.Mishra, S.Mitrab, R.Gauthierb, D.E.Ioannoua, C.Seguinb, R.Halbachb
id: CHNWCDCF6PCSM
abstract: 观察到并发 HCI-NBTI 会导致来自 65nm 技术的输入/输出 (I/O) 和核心逻辑/高速 (HS) SOI p 沟道 MOSFET 的最坏情况退化。 I/O PMOSFET 器件在室温下的 HC 应力退化在较高应力电压下表现出类似 NBTI 的行为，而在较低应力电压下表现出“组合”HCI-NBTI 行为。 另一方面，在 HS PMOSFET 器件中，HC 退化是由 HCI 和 NBTI 在整个应力偏置电压范围内的组合引起的。 此外，在 I/O 和 HS 器件中，浮体 (FB) 器件在高应力电压下的退化程度更高，这与较低应力电压下的体接触 (BC) 器件相当。 还表明，外部施加的体偏置在增强 I/O 器件的退化方面起着重要作用，但对 HS 器件影响不大。
link: https://sci-hub.se/10.1016/j.mee.2007.04.016
---

# Concurrent HCI-NBTI: worst case degradation condition for 65nm p-channel SOI MOSFETs

## 1. 介绍

随着栅氧化层厚度的增加，PMOSFET 热载流子 (HC) 的可靠性从电子俘获机制转向热空穴引起的退化。对于sub-0.25µm PMOSFET，已经得出结论热空穴产生的界面态会导致最严重的退化。SOI 器件的情况更为复杂 [4]，因为最坏情况下的应力条件和退化的解释都受到应力偏置水平、浮动或接地体操作、通道耦合强度和器件操作温度的复杂相互依赖性的影响。 由于自热效应 (SHE)，器件工作温度对于 SOI 器件尤为重要。 特别是，如 Ioannou 等人 [5] 所示，SHE 在 PMOSFET HC 退化中起主要作用，因为随着氧化物场随着氧化物厚度的缩放而增加，负偏置温度不稳定性 (NBTI) 激活 [6] 同时发生。

这项工作调查了 HC 应力期间 NBTI“共激活”的影响，作为输入/输出 (I/O) 和高速 (HS) SOI PMOSFET 器件的应力电压的函数。 研究表明，在 I/O SOI 器件中，NBTI 在高应力偏置值下占主导地位，而在 HS SOI 器件中，“HCI-NBTI”的组合在整个应力偏置范围内占主导地位。

研究了体接触 (BC) 和浮栅 (FB) 器件的 HC 降解。 此外，还讨论了外部施加的体偏置对 I/O 和 HS 器件的影响。

## 2. 实验细节

在这项工作中研究了 BC 和 FB PD-SOI PMOSFET，基于高性能 65nm SOI CMOS 技术 [7]。 研究了 W/L=3/0.06μm 的 HS 器件 (Vdd=1.0V, Tox=1.05nm) 和 W/L=3/0.06 的 I/O 器件 (Vdd=1.5V, Tox=2.35nm) 在偏置应力下的可靠性 L=3/0.12μm。 这两类器件都在室温下承受了一段时间的 Vg=Vd 应力，已知这会导致深亚微米 SOI PMOSFET [5] 在最坏的情况下退化。 短暂中断应力以测量正向 (FWD) 模式和反向 (REV) 模式（测量期间漏极和源极互换）下的器件特性，以详细探讨退化机制。 阈值电压定义为漏极电流为 70nA x (W/L) 时的栅极电压。

## 3. 结果和讨论

图 1 显示了在室温下 $V_g=V_d=-2.7{\rm V}$ 应力下 BC 和 FB I/O PMOSFET 器件的饱和阈值电压 ($\Delta V_{\rm tSat}$) 与应力时间的变化。从该图中可以看出，对于这两种器件，FWD 和 REV 模式测量值正好重叠，表明沿通道对称衰减。$V_{\rm tSat}$ 的这种对称变化揭示了在当前 HC 应力条件下类似 NBTI 的退化。 图 1 还显示了在 $V_g=-2.7{\rm V}$ 的室温下“纯”NBTI 退化，所有其他端子都接地。 可以看出，在 $V_g=V_d=-2.7{\rm V}$ 下的退化远高于并与 $V_g=-2.7{\rm V}$ 应力下的退化平行。这必然意味着 SOI 器件在“ON”条件（$V_g=V_d$ 应力）下固有的自热会在室温下 HC 应力期间增强类似 NBTI 的退化。

![](../images/Fig.%201.%20Saturation%20threshold%20voltage%20shift.jpg)

从图 1 还可以看出，FB 器件在 HC 应力下比 BC 器件退化更多。 这种行为与 Yeh 等人 [8] 在 0.1µm SOI PMOSFET 器件上的结果不一致。 他们认为，在应力偏置下，FB SOI PMOSFET 中的浮体效应是微不足道的，因为空穴迁移率较低（与电子相比），因此 BC 和 FB 器件之间的退化没有差异。然而，在我们的案例中，我们认为 FB 器件的更高退化（在 $V_g=V_d=-2.7{\rm V}$ 应力下）一定是由于寄生 BJT (pBJT) 比 BC 器件更有效地导通。 在应力偏置期间，FB 器件中较高的 pBJT 电流意味着更多的自热，因此比 BC 器件具有更高的 NBTI 激活。为了支持这一事实，研究了应力期间外部施加的体偏置的影响，如图 2 所示。从该图中可以看出，施加体偏置 ($V_{\rm body}$) 会增强退化，而在 $V_{\rm body}=-0.8{\rm V}$ 时，退化变为 类似于 FB 设备。 这是因为在 BC 器件中施加负体偏置，在应力期间，正向偏置体源结并导致 pBJT 开启。 pBJT 提高了通道中的电流水平，这导致更高的自热，因此比身体接地 ($V_{\rm body}=0{\rm V}$) 设备更高的 NBTI 激活。

![](../images/Fig.%202.%20Saturation%20threshold%20voltage%20shift.jpg)

Vg=Vd 下的 HC 应力是在宽偏置范围内对 BC 和 FB 器件进行的，如图 3 所示。可以看出，随着应力电压的降低，BC 和 FB 器件的退化变得相当。 这是因为随着应力电压的降低，FB器件中的pBJT电流由于体电荷产生的逐渐抑制和随之而来的浮体强度的减弱而减小。 因此，对于较低的应力电压，FB 器件的沟道电流变得与 BC 器件的沟道电流相当，这反过来意味着两个器件的自热大致相同，因此退化。

![](../images/Fig.%203.%20Saturation%20threshold%20voltage%20shift.jpg)

从图 3 还可以看出，在较高的应力电压下，退化是对称的，而 FWD 和 REV VtSat 之间的差异随着 BC 和 FB 器件的应力电压降低而增加。 随着应力偏置的减小，ON 电流（自热）和栅极氧化场均减小，这削弱了 NBTI 的激活，并越来越多地导致 HCI 主导的退化（不对称退化）。 因此，NBTI 在高 $V_g=V_d$ 应力偏压下发挥更重要的作用。

接下来，在 $V_g=Vd=-1.8V$ 应力以及单独的 NBTI 应力 ($V_g=-1.8{\rm V}$) 下，HS SOI PMOSFET 的 $\Delta V_{tSat}$ 与应力时间的关系如图 4 所示。 在这些器件中，由于在 $V_g=V_d$ 应力下的自热，退化程度更高，并且与纯 NBTI 退化平行。 然而，如图 5 所示，退化在应力偏置范围内是不对称的，这表明尽管 NBTI 在 HC 应力期间确实会激活，但它并不像 I/O 设备那样占主导地位。 NBTI 在高 $V_g=V_d$ 应力下在 I/O 器件中占主导地位，其沟道长度比 HS 器件长，这是因为靠近源极侧的大部分沟道在应力期间仍然充满空穴。 这些覆盖大部分沟道的孔在源极附近导致类似 NBTI 的退化，而在漏极附近，氧化物会被热载流子损坏 [9]。 相比之下，在 HS 设备中，退化是同时发生的 HCI 和 NBTI 的结果。

![](../images/Fig.%204.%20Saturation%20threshold%20voltage%20shift.jpg)

![](../images/Fig.%205.%20Saturation%20threshold%20voltage%20shift.jpg)

图 6 显示了 HS 器件中体偏置的影响。 可以看出，在 $V_{\rm body}=-0.4{\rm V}$ 时，体偏置似乎并不起重要作用。 这可能不足以有效地打开 pBJT，因此会导致与体接地 ($V_{\rm body}=0{\rm V}$) 器件中类似的通道电流。

![](../images/Fig.%206.%20Saturation%20threshold%20voltage%20shift.jpg)

## 4. 结论

这项工作表明，最先进的 PD-SOI PMOSFET 的最坏情况退化发生在同时发生 HCI 和 NBTI 的情况下，随着自热导致的应力偏差增加，NBTI 越来越占主导地位。 特别是表明，在高 HC 应力偏置条件下，NBTI 在 I/O 设备中占主导地位，而在 HS 设备中，并发的“HCI NBTI”在整个 HC 应力偏置范围内占主导地位。 此外，在 I/O 和 HS 器件中，FB 器件被证明在高应力电压下比 BC 器件遭受更高的退化。 最后，表明外部施加的体偏置在增强 I/O PMOSFET 器件的退化方面起着重要作用。