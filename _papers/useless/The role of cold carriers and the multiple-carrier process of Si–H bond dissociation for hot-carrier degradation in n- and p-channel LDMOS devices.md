---
title: 在n和p沟道LDMOS的热载流子退化中冷载流子和多重载流子过程对Si-H键解离的作用
authors: Prateek Sharma, Stanislav Tyaginov , Markus Jech, Yannick Wimmer , Florian Rudolf, Hubert Enichlmair, Jong-Mun Park, Hajdin Ceric, Tibor Grasser
id: TROCCATMCPOSHBDFHCDINAPLD
abstract: 通过使用载流子能量分布，我们构建了热载流子退化模型，并用之表示在n和p沟道LDMOS器件中测得的HCD数据。
link: https://sci-hub.ru/10.1016/j.sse.2015.08.014
useful: 没用，文中说的方法只适用于微米级的长沟道器件
---

# The role of cold carriers and the multiple-carrier process of Si–H bond dissociation for hot-carrier degradation in n- and p-channel LDMOS devices

## 介绍

HCD是一种非常复杂的现象，包含了多个部分：缺陷产生的微观机理，载流子传输和对退化器件的建模。这些在同一个模拟框架中组合在一起。比如：Si/SiO2界面上的陷阱是由用于钝化的Si-H键产生的。在缺陷产生的过程中有两种相互竞争的关系：单载流子（SC）和多载流子（MC）过程。前者是单个高能粒子在一次碰撞中导致键断裂，而后者是一系列冷粒子先后轰击键而致其断裂。所产生的悬挂键会影响器件性能，它们会对静电分布产生影响，进而导致漏电流、阈值电压、跨导、导通电阻等参数退化。

SC过程通常被认为是高压MOSFETs中HCD的主要机制，而MC是低压小尺寸器件中HCD的主要机制。但是，最近结果表明MC退化模式在沟道长度2μm的高压器件中也有重要贡献，而SC过程在深亚微米器件中也很重要。因此，为了正确表示这些过程的贡献，我们需要区分冷和热载流子。相关的信息蕴含在载流子能量分布函数（DF）中，可以通过解 Boltzmann 传输方程（BTE）得到。有两种方法用于获得该解：Monte-Carlo 法和基于 spherial harmonics expansion 的方法。两种方法都需要大量的计算。

因此，BTE 解的简化计算技巧就显得十分宝贵。这些技巧一般基于 Boltzmann传输方程的动量，其中最常用的是 drift-diffusion（DD）和能量传输体系。我们之前已经说明了这些方法不能正确的表示短沟平面 nMOSFETs 中的HCD [^17] 。但这些方法可以用于描述具有较大尺寸的 LDMOS 中的 HCD。



[^17]: Tyaginov S, Starkov I, Jungemann C, Enichlmair H, Park J, Grasser T. Impact of the carrier distribution function on hot-carrier degradation modeling. In: Proceedings of the European solid-state device research conference (ESSDERC); 2011. p. 151–4.