---
title: （未完）高栅压PFET的直流热载流子机理及其与交流退化的关系
authors: Stewart E. Rauch; Fernando Guarin; Giuseppe La Rosa
id: HVPDHCMAIRTAD
link: https://ieeexplore.ieee.org/document/5256237/
abstract: 最近，通过局部自加热增强的负偏置温度不稳定性 (NBTI) 已被提出作为高 Vg PFET“热载流子”退化的一种机制。这是基于这样的想法，即由于 Pop 和其他人在文献中报道的非常局部的自热效应，漏区中 NBTI 的有效温度会增加。我们的 PFET 直流应力数据与高 Vg 时的局部自热激活 NBTI 一致，但在中 Vg 时，我们观察到与典型 NFET 热载流子相似的行为，即能量驱动热载流子 (EDHC)。如果 PFET 的高 Vg 直流衰减涉及自热，那么自然会出现交流行为的问题。我们的 PFET 环形振荡器应力结果表明，在直流应力下占主导地位的高 VGS PFET 热载流子在典型的 CMOS 开关条件下没有显着贡献，而中等 VGS 热载流子则有。这支持了这样一种观点，即在高 VGS 下涉及的主要损伤机制是 NBTI，通过局部自热增强，热时间常数超过几百皮秒。
---

# High-VGS PFET DC Hot-Carrier Mechanism and Its Relation to AC Degradation

## 介绍

经典地，N 和 PMOSFET 中两种主要的热载流子相关损伤机制已得到认可：高能载流子注入栅极氧化物导致电荷俘获和高能载流子产生界面态。

对于几十年前的 MOSFET（例如 0.5-1 μm 与 5 V 或更大的 $V_{DD}$），这些表现如下： 1）在低过驱动（$V_{GS}\sim V_T$）时，NFET 中的空穴捕获和 PFET 中的电子捕获 导致 $V_T$ 幅度减小，$I_{ON}$（驱动电流）增加； 2）在中等驱动电压（$V_{GS}\sim 1/2 V_{DS}$左右），界面态生成（ISG）占主导地位，导致$V_T$幅度增加，$I_{ON}$减少； 3) 在高过驱动 ($\vert V_{GS}\vert$ 接近或大于 $\vert V_{DS}\vert$) 时，NFET 中的电子俘获和 PFET 中的空穴俘获再次导致 $\vert V_T\vert$ 的增加。

NFET 的最强状态往往是中 $V_g$，其次是高 $V_g$。 对于 PFET，通常认为低 $V_g$ 区域占主导地位。 电子俘获应该比空穴俘获更强，因为空穴（4.5 eV）注入氧化物的势垒高度远高于电子（3.2 eV）。 PFET 中的 ISG 应该比 NFET 中的弱，原因有两个——PFET 中的漏极电流较低和空穴的可用能量较低（由于较高的临界场，这会导致较高的 $V_{DSAT}$）。有关这些概念的详细讨论，请参见 [7]。 随着器件的缩放、氧化物变薄和电压下降（降低可用载流子能量），NFET 中的俘获机制相对于 ISG 下降。 此外，低 $V_g$ PFET 方案的重要性趋于下降。 令人惊讶的是，与我们的物理预期相反，高 $V_g$ 状态在 PFET 中占主导地位。

同时，由于氧化物场的增加和氮化氧化物的广泛使用，负偏压温度不稳定性 (NBTI) 机制在 PFET 中得到了发展。 此外，Pop 和其他人 [2]、[3] 已经报道了在充分缩放的 CMOS 器件中非常局部的自热效应。 正如 Wang 等人提出的，这两种想法的逻辑组合是局部自热增强 NBTI [1]。