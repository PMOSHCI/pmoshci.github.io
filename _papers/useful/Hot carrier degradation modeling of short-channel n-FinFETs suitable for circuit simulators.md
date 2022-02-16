---
title: 适合电路模拟的短沟道n-FinFET热载流子退化模型
authors: I. Messaris, T.A. Karatsori, N. Fasarakis, C.G. Theodorou, S. Nikolaidis, G. Ghibaudo, C.A. Dimitriadis
id: HCDMOSCNFSFCS
abstract: 本文研究了短沟道n-FinFET的热载流子退化。实验表明在整个沟道内均有界面陷阱产生，并在靠近漏区有加强，这是退化产生的主要机理。本文展示了热载流子退化随应力时间、沟道长度、鳍宽和偏置电压的关系，并提出了热载流子退化的紧凑模型。模型良好的准确度使其适用于集成到电路模拟工具中。用HSPICE模拟了热载流子对CMOS反相器的影响。
link: https://sci-hub.ru/10.1016/j.microrel.2015.11.002
---


# Hot carrier degradation modeling of short-channel n-FinFETs suitable for circuit simulators

## 介绍

鳍形场效应晶体管（FinFET）被认为是最有希望推动工艺持续缩小的器件。由于它对沟道电场的良好控制，它可以抑制短沟道效应（SCE）。新的纳米级FinFET CMOS工艺带来了新的可靠性挑战，同时也给确定集成电路可靠性的方法带来了巨大的变化。热载流子效应使得载流子陷阱进入到栅介质层，并产生界面态。这些效应使得晶体管的参数（如阈值电压$V_t$，亚阈值参数 $\eta$，载流子有效迁移率 $\mu_{\rm eff}$）发生退化，这会对模拟和数字电路的性能带来负面影响。除了对漏电流的研究外，对FinFET可靠性的研究只局限于少数工作。因此，对热载流子建模是一件非常紧急而重要的议题，尤其在纳米级器件中。

目前已经提出了基于物理的HC紧凑模型，用于预测纳米级的n-FinFET的性能退化。模型基于对漏区附近非均匀的界面态分布的经验性表达式，其包含4个模型参数[^5]。这些参数是通过对界面态分布进行拟合得到的，而界面态分布则是从 forworded gated-diode method 提取的。除了提取不同应力时间的界面态分布函数，HC紧凑模型还需要通过数值迭代来复现退化后的器件的IV特性。因此，该模型不适合用于电路模拟。

预测退化的最简单的方法就是半经验性模型，它可以预测阈值电压的退化，而阈值电压的退化则直接与界面态的产生有关。

In this paper, the HC degradation of n-FinFETs with different fin widths and channel lengths is investigated under different bias stress conditions. A HC degradation model based on the threshold voltage ΔVt shift is developed, which is suitable for SPICE simulation of FinFET-based circuits. The performance degradation of the CMOS inverter is predicted based on this device model.

## 实验

5-fin n-channel SOI FinFET with fin length=30nm, fin height=65nm, fin width=5,10,15nm, buried oxide thickness=145nm, channel doping concentration $10^{15} {\rm cm}^{-3}$.

## 热载流子退化机理



[^5]: [C. Ma, et al., Microelectron. Reliab. 51 (2011) 337–341](https://sci-hub.ru/https://www.sciencedirect.com/science/article/pii/S0026271410004890)