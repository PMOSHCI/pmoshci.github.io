---
title: 载流子分布函数对热载流子退化建模的影响
authors: Stanislav Tyaginov, Ivan Starkov, Christoph Jungemann, Hubert Enichlmair, Jong-Mun Park, and Tibor Grasser
id: IOTCDFOHCDM
abstract: 我们对热载流子使用基于物理的模型，模型包括三个子任务：载流子传输模块、界面态产生模块、器件退化模块。我们检验了实现该模型的不同方法：用 Monte-Carlo、energy transport 和 drift-diffusion 实现传输模块。Monte-Carlo 方法可以用同一组参数表示不同MOSFETs的HCD，且参数具有符合物理的数值。因此，我们检查另外两种方法是否有同样的参数。貌似简化的方法无法描述不同长度的器件的退化，说明综合的HCD模型需要基于严密的 Bolzmann 传输方程的解（即通过 Monte-Carlo 方法）
link: https://sci-hub.ru/10.1109/ESSDERC.2011.6044212
---

# Impact of the Carrier Distribution Function on Hot-Carrier Degradation Modeling

![](../images/Fig.%201.%20The%20simulation%20flowchart.jpg)

Fig. 1. The simulation flowchart. The modeling concept includes the transport module, the module for trap generation, and the module responsible for simulations of characteristics of a degraded device.

![](../images/Fig.%208.%20The%20linear%20drain%20current%20degradation%20experiment%20vs.%20simulations.jpg)

Fig. 8. The linear drain current degradation: experiment vs. simulations. The case of 𝐿ch = 0.5𝜇m.

## 总结

基于 ET 的方法高估了退化，而 DD 方法则在 $L_\tx{ch}=1.2,2.0\mu m$ 较为准确，但两者在 $L_\tx{ch}=0.5\mu m$ 都失败了。