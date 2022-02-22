---
title: 短沟道 p-FinFET 在热载流子应力和恒压应力下的退化机理
authors: Hao Chang, Longda Zhou, Hong Yang,Zhigang Ji
id: CRMFDOAPMDTNAHCEITCS
abstract: 本文比较了热载流子应力（HCS）和恒压应力（CVS）下短沟道高k/金属栅p-FinFETs的退化行为，以阐明NBTI元件在热载流子退化（HCD）中的耦合比。
link: https://sci-hub.ru/https://ieeexplore.ieee.org/document/9260834
---

# Degradation Mechanism of Short Channel p-FinFETs under Hot Carrier Stress and Constant Voltage Stress

## I. 介绍

热载流子退化（HCD）被认为是 14nm 节点之后纳米级 CMOS 器件面临的主要挑战之一。有两种热载流子应力 (HCS) 条件。一种是最大衬底电流 (Isub) 情况，另一种是最坏情况 ($V_g=V_d$)，后者被广泛研究。为了了解 BTI 在最坏情况下对 HCD 的影响，通常应用恒压应力 (CVS) 并与 HCS 进行比较。在长沟道 n/p-FinFET 中，CVS 即 BTI 分量的阈值电压偏移 ($ΔV_{\rm th}$) 通常远小于相同应力偏置下的 HCS 下的阈值电压偏移，可能占后者的 20% 到 30%。然而，随着器件向纳米级的扩展，FinFET，尤其是 p-FinFET 的 HCD 变得更加复杂和严重[6]，对 NBTI 和 HCD 耦合的物理理解仍然不足和不清楚。

为了了解 HCS 和 CVS 中的陷阱源，基于放电的多脉冲 (discharge-based multi-pulse, DMP) 技术提供了一种评估所有类型正电荷 (positive charges, PC) 能量分布的方法。已经提出NBTI中存在三种类型的PC：生长空穴陷阱（as-grown hole traps, AHT），抗中和正电荷（anti-neutralization positive charges, ANPC）和循环正电荷（cyclic positive charges, CPC）。三类 PC 的分布如图2所示。AHT的能级低于Ev，最容易放电。然而，HCS 下 PC 的能量分布以及不同陷阱对 HCD 的贡献仍有待研究。本文比较了短沟道高 k/金属栅 p-FinFET 的 HCD 和 NBTI 特性。 应用基于放电的多脉冲 (DMP) 技术来表征所有类型正电荷的能量分布，包括生长空穴陷阱、反中和正电荷和循环正电荷。结合不同陷阱的能量分布分析，讨论亚阈值摆幅（SS）和电压加速因子（VAF），阐明NBTI对HCD的耦合作用。该结果可以为 p-FinFET 中的 HCD 机制提供新的见解，并有助于具有可靠性意识的电路设计。

![](../images/Fig.%202.%20The%20energy%20location%20of%20three%20different%20types%20of%20PCs%20in%20gate%20.jpgS)

## II. 器件和实验

在本文中，在室温下，在 HCS 和 CVS 下测量了具有 40 nm 栅极长度和 8 个鳍的 p-FinFET。

在最坏情况 HCS 下对 HCD 进行研究，即 $V_g=V_d$，从 -1.4V 到 -2.4V. NBTI 也在 CVS 下进行了表征，它仅对栅极施加应力偏置。阈值电压 (Vth) 在饱和状态下通过恒定漏极电流法提取，目标 Id 为 200 nA×W/L。使用配备波形发生器/快速测量单元 (WFGMU) 的 Agilent B1500A，通过测量-应力-测量方法表征两种应力条件下 $ΔV_{\rm th}$ 的时间依赖性。

为了准确分析 HCS 和 CVS 下陷阱的能量分布，使用了只有一个偏置应力 $V_{\rm g-stress}$ 的 DMP 技术，称为单 DMP 方法。单 DMP 中使用的波形如图 8 所示。

![](../images/Fig.%208.%20The%20test%20waveform%20used%20in%20single-DMP%20method.jpg)

## III. 结果与讨论

**A. HCD和NBTI的比较**

![](../images/Fig.%203.%20Threshold%20voltage%20shift%20as%20a%20function%20of%20stress%20time%20in%20pFinFET.jpg)

图 3 分别显示了在 HCS 和 CVS 条件下，阈值电压偏移 ($ΔV_{\rm th}$) 作为 p-FinFET 应力时间的函数。在相同的应力电压下，CVS下的 $ΔV_{\rm th}$ 明显大于HCS下的$ΔV_{\rm th}$，表明NBTI比HCD更严重。

![](../images/Fig.%204.%20The%20threshold%20voltage%20shift%20(ΔVth)%20under%20different%20bias.jpg)

图 4 显示了 CVS 和 HCS 在 1000s 应力时间下的 $ΔV_{\rm th}$，不同的应力偏置从 -1.4V 变化到 -2.4V。计算出 NBTI 和 HCD 的电压加速因子 (VAF) 分别为 4.0 和 4.5。令人惊讶的是，CVS 下的整体 $ΔV_{\rm th}$ 几乎是 HCS 下的 3 倍，与其他观察结果大不相同。

![](../images/Fig.%205.%20Threshold%20voltage%20shift%20(ΔVth)%20of%20short-channel%20p-FinFET.jpg)

在图 5 中，p-FinFET 在 1000s 零偏压下从 1000s CVS 和 HCS 恢复明显，约为 20mV 和 10mV，分别代表原始 $ΔV_{\rm th}$ 的 40% 和 50%。

**B. 界面陷阱**

![](../images/Fig.%206.%20(a)%20The%20subthreshold%20swing%20shift%20(ΔSS)%20versus%20stress%20bias.jpg)

为了理解 NBTI 比 HCD 差的机制，首先研究了 CVS 和 HCS 下界面捕获的影响，如图 6a 所示的亚阈值摆动位移（ΔSS）。
界面捕获引起的 $V_{\rm th}$ 偏移 ($ΔV_{\rm it}$) 也由不同应力电压下的 ΔSS 计算得出，如图 6b) 所示。发现在整体应力偏置范围内，CVS 下的 ΔSS 远大于 HCS 下的ΔSS，但 $ΔV_{\rm it}$ 在总 $ΔV_{\rm th}$ 中的比例相似且较小（小于 10%）。CVS和HCS在不同应力电压下的 $ΔV_{\rm th}$ 和 $ΔI_{\rm dsat}$ 的时间指数如图7所示。CVS 下的时间指数约为 0.12，这意味着界面陷阱生成和预先存在的陷阱捕获都有助于 NBTI [4]。 然而，HCS 下的时间指数约为 0.1，因此在 HCD [10] 中，预先存在的陷阱中的空穴捕获占主导地位。

![](../images/Fig.%207.%20(a)%20The%20time%20exponent%20of%20ΔVth%20under%20different%20CVS%20conditions.jpg)

**C. HCD 和 NBTI 的 Bulk Trap 能量分布**

![](../images/Fig.%209.%20The%20ΔVth%20versus%20Vov%20under%20CVS%20and%20HCS.jpg)

图 9 显示了 1 秒放电后的 $ΔV_{\rm th}$ 与过驱动应力电压 ($V_{\rm ov}$) 的关系，其中 $V_{\rm ov} = V_{\rm gstress} – V_{\rm th}$。$ΔV_{\rm th} \sim V_{\rm ov}$ 相关性可以转换为 $ΔN_{ot} \sim (E_f - E_v)$，如图 10 a) 所示。然后可以通过将 $ΔN_{ot}$ 与能量进行微分来获得体捕获电荷密度 $ΔD_{ot}$。 整体的体陷阱可以分为两部分：预先存在的陷阱和生成的陷阱。预先存在的陷阱主要位于容易放电的$E_v$下方。生成的陷阱分布在 $E_c$ 上方的能带，在 $E_c$ 附近达到最大值。如图 10 a) 所示，两种应力条件下的 $ΔN_{ot}$ 形状看起来相似，但 NBTI 退化比 HCD 更严重。从图 10 b)可以看出，在 $E_f < E_v$ 区域，CVS 引起的 $ΔD_{ot}$ 是 HCS 的 2 倍以上。CVS 下的 $ΔD_{ot}$ 有两个峰值，表明有两种类型的氧化物陷阱，尤其是接近 $E_v$。在 $ΔD_{ot}$ 中，预先存在的俘获电荷是最不稳定的 PC，主要有助于强退化后的恢复。因此，CVS 下大量预先存在的陷阱比图 5 中的 HCS 贡献了更高的恢复率。CVS 下生成的陷阱数量也比 HCS 下大，但差异没有预先存在的陷阱那么显着。

![](../images/Fig.%2010.%20(a)%20Effective%20oxide%20trap%20density.jpg)

D. NBTI 和 HCD 的物理理解

如图 11 所示，在短沟道 p-FinFET 中，冷载流子和沟道热载流子分别在 CVS 和 HCS 下进入栅极电介质。由于预先存在的陷阱的能量分布低于 $E_v$，因此预先存在的陷阱中的空穴捕获与应力温度和应力时间无关。另一方面，冷载流子可以隧穿到氧化物中，但热载流子需要克服更高的势垒才能注入氧化物，因此 CVS 陷阱的产生和捕获比 HCS 具有更高的概率。

![](../images/Fig.%2011.%20The%20physical%20degradation%20understanding%20of%20(a)%20CVS%20and%20(b)%20HCS.jpg)

Fig. 11. The physical degradation understanding of (a) CVS and (b) HCS. Under CVS, the cold carriers in inversion directly inject into oxide, some is captured by interface trap, dominant one is captured by pre-existing trap in HK; under HCS, the channel hot carrier with large energy jump from channel into oxide, so less captured hole dut to large band barrier.

## IV. 总结

在本文中，研究了短沟道 p-FinFET 的阈值电压退化，并与两种不同的应力条件进行了比较。发现在相同应力电压下，CVS 下的退化几乎是 HCS 下的 3 倍。在 CVS 和 HCS 中，与界面陷阱仅 10% 的贡献相比，预先存在的体空穴陷阱是降解的主要因素。从体陷阱的能量分布分析，HCS下预先存在的空穴陷阱和产生的空穴陷阱都比CVS下的少，这归因于热空穴注入少于冷空穴隧穿进入栅极氧化物。