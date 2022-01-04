---
title: 用于不同EDA的NBTI和HCI电路级老化模型
authors: F.A. Velarde Gonzalez, A. Lange, S. Crocoll, R. Jancke
id: NAHMFCLASIDEE
link: https://www.zenodo.org/record/2558154/files/NBTI-and-HCI-models-for-circuit-level-aging-simulations-in-different-EDA-environments_FhG_XLAB_2018.pdf?download=1
---

# NBTI and HCI models for circuit level aging simulations in different EDA environments

## 介绍

工艺的进步提高了集成电路（IC）的表现，降低了IC的成本，但也带来了更大的可靠性挑战，因为诸如偏置温度不稳定性（BTI）和热载流子注入（HCI）对亚微米级工艺有更大的影响。为了在设计阶段保证IC在使用寿命以内时能正常工作，则有必要进行老化模拟。这要求在设计环境中集成准确的老化模型。

在本论文中，我们展示了我们的工作，为XU035工艺（0.35um）设计了HCI和NBTI的经验性模型。


## 理论背景

老化模拟的流程如下：

1. 通过正常模拟来评估新鲜电路的性能
2. 从正常模拟中得到电路中每个晶体管的电压和电流波形（应力条件）
3. 计算每个晶体管的退化，并将结果反馈到网表中，以表示退化后的电路
4. 再次模拟来评估老化电路的表现

## HCI和NBTI建模

我们的研究集中在 5V NFET HCI 和 5V PFET NBTI. PFET HCI 和 NDET PBTI 不重要。

根据栅漏电压 $V_{gs}$ 和时间 $t$，我们将 PFET NBTI 退化映射到 BSIM 参数 $Vth0$：

$$
\Delta vth0 = p_1 \cdot 10^{(p_2 \cdot \vert V_{gs} \vert^{p_3}\cdot t^{p4})}
$$

$$
vth0_{aged} = vth0_{fresh}-\Delta vth0
$$

注意，PFET 的 $vth0_{fresh}$ 小于 0.

------

NFET HCI 模型可以反应所有电气参数的退化：IDSAT、IDLIN、GMAX、VTH 和 VTHI。目前先进的模型仅考虑了一或两种特性，因此我们提出的模型更为先进。我们定义了一个大概的部分，其依赖于漏源电压 $V_{ds}$、时间 $t$ 和 5 个参数 $p_1$~$p_5$

$$
y' = p_1 \cdot V_{ds}^{p2}\cdot t^{p_3+p_4\cdot V_{ds}}
$$

$$
y = \frac{y'}{1+p_5 \cdot y'}
$$

我们将上两式应用到 BSIM 参数中：

$$
u0_{aged} = \frac{u0_{fresh}}{1+y_{u0}}
$$

$$
rdsw_{aged} = rdsw_{fresh}\cdot (1+y_{rdsw})
$$

$$
vsat_{aged} = vsat_{fresh} \cdot (1+y_{vsat})
$$