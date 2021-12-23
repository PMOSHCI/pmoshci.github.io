---
layout: default
title: Circuit-level reliability requirements for Cu metallization
nav_order: 2
permalink: /paper/index.html
---


# Circuit-level reliability requirements for Cu metallization


## Index Terms

Aluminum interconnects, barrierless via, circuit level reliability simulation, copper interconnects, electromigration, integrated-circuit (IC) reliability, reliability estimation

## Ⅰ Introduction

该论文的工作：

-  contrast the **failure mechanisms** in Cu and Al technologies
- compare **electromigration-reliability** assessments at the **circuit level**
- eveloped and exercised a tool, SysRel, for circuit-level interconnect-reliability assessments with either Al or Cu metallization

## Ⅱ Interconnect Processing Technology

Al 与 Cu 的不同来自于其化学性质不同：

* Al
  * Al+SiO2 → Al2O3+Si，氧化铝致密能防止 Al 扩散进入 dielectric
  * 制造工艺使用 subtractive etching
  * 铝层上下有 thick refractory metal layer（防火层，如 TiN，Al3Ti），用于作为 antireflection coatings（防止扩散进入Si） 和 via 的基层
  * via 一般用钨
* Cu
  * 由于没有适合的刻蚀剂，故使用 damascene 工艺制造
  * Cu 不会与 SiO2 反应，故四周使用 thin refractory metal layer（如 Ta, TaN）包裹，防止扩散到 device layer
  * 外面还要覆盖一层 dielectric diffusion barrier（DDB），如 Si3N4

## Ⅲ Contrasting Failure Characteristics

Cu/cap interface 是主要的 diffusion path 和 void nucleation site（根据文中描述，void nucleation 貌似是一种因为 electromigration 引起的断路）

将 via 在上面的称为 M1，将 via 在下的称为 M2。根据实验，M2 比 M1 的寿命更长。

对铜来说，the critical tensile stress for void nucleation 的数值为 41MPa，而铝是 500MPa

The tolerable nonfatal void volumes in M1 and M2 structures
are different. 这里我们用电流密度 $j$ 与 线长 $L$ 的乘积 $(jL)_\text{critical}$ 来衡量它们的表现 ???（我也不知道这用来干啥……）对于 M1，这个乘积为 2100A/cm；对于 M2，这个乘积为 3700A/cm；而对于铝，这个乘积为 4000A/cm

## Ⅳ Diffusivity Mechanisms and Models

下面分析来自于 `C. K. Hu, R. Rosenberg, and K. Y. Lee, “Electromigration path in Cu thin-film lines,” Appl. Phys. Lett., vol. 74, no. 20, p. 2945, 1999.`，可以看我的 `Electromigration path in Cu thin-film lines 阅读笔记`

dominant diffusion paths 可以用如下公式描述：

$$
(Dz^*)_\text{eff} = D_S Z_S^* \delta_S \left( \frac{2}{h} \right) + D_\text{GB} z_\text{GB}^* \frac{\delta_\text{GB}}{d}\left( 1-\frac{d}{w} \right)
$$

下标 $S$ 指 Al/refracory-metal-liner interfaces 和 Cu/overlayer interface，下标 $\text{GB}$ 指 grain boundaries. $D$ 是 diffusivity，它与温度呈 Arrhenius 或指数关系；$z^*$ 是有效电荷，$\delta$ 是扩散界面的宽度，$d,h,w$ 是 grain size, line thickness, linewidth

若线宽大于 average grain size，则呈现 polygranular 结构（多晶结构？），此时 grain-boundary 对扩散起主导作用；反之，线宽大时，呈现 bamboo 结构，此时 interface 对扩散起主导作用，则有：

$$
D_\text{poly} = D_\text{GB,0}\times \exp (-\frac{E_{a,\text{GB}}}{kT}) \times \frac{\delta_\text{GB}}{d}\times(1-\frac{d}{w})\\
D_\text{bam} = D_{S,0} \times \exp (-\frac{E_{a,S}}{kT}) \times \frac{2\delta_S}{h_\text{ref}}
$$

铝的典型值如下：$d=0.5\mu m$，$z^* = 4$，$D_{S,0}=1.49\times 10^{-4}\;{\rm m^2/s}$，$E_{a,S}=0.9 \text{ eV}$，其他几个值取决于 $h,w$

Comparing Al and Cu diffusivities, for a given linewidth, Cu diffusivity is always about 1/15 of that for polygranular Al, due to the similarity in activation energies. Al bamboo diffusivity is lower than that of Cu only for temperatures lower than 302 ◦C, because the activation energy for Cu diffusivity is lower than that for Al bamboo structures. 

## Ⅴ Electromigration Lifetime Model

对于某处 via，time to void nucleation $t_\text{nucl}$ 和 time to extrusion $t_\text{extru}$ 可用如下模型近似表示：

$$
t_\text{nucl} = \left(\frac{\sigma_\text{nucl}\Omega}{\rho e z^*} \sqrt{\frac{\pi}{4}}\sqrt{\frac{kT}{B\Omega}}\frac{\sum_i \sqrt{D_i}}{\sum_i D_ij_i}\right)^2\\
t_\text{extru} = \left( \frac{\sigma_\text{extru}\Omega}{\rho e z^*} \sqrt{\frac{\pi}{4}}\sqrt{\frac{kT}{B\Omega}}\frac{\sum_i \sqrt{D_i}}{\sum_i D_ij_i} \right)^2
$$

where $σ_\text{nucl}$ and $σ_\text{extru}$ are the critical stresses required to nucleate a void or initiate an extrusion, respectively, ji and $D_i$ are the current density and effective diffusivity of each of the $i$ limbs meeting at a junction, respectively, $Ω$ is the atomic volume of the electromigrating species, $ρ$ is the resistivity of the metal, and $B$ is the effective modulus of the materials surrounding the metal

电路中的互连线可看作一个 interconnect tree，在某个 via 处，需要考虑其子树中的 void，我们可以将子树等效为单支，该单支有等效 diffusivity 和 current density。假设在该单支中，void spans the whole width and thickness，则 void 生长到长度 $L_v$ 所需的时间可表示为：

$$
t_\text{grow} = \frac{L_v kT}{\rho e z^*} \frac{1}{\sum_i D_ij_i}
$$

上面几个公式可以测试每个 via 的 lifetime，而要测试整个互连树的 lifetime 可以用如下算法：

* Derivation of tree time-to-failure (TTF): Cu technology
  ```
  1. For each via in a tree
  2. if (via-above)
  3.     TTF = tnucl
  4. if (via-below)
  5.     TTF = min{(tnucl+tgrow),textru}
  6. Tree's TTF = min{all via TTFs}
  ```
  注：作者表示在实验条件下（$j<5 {\rm MA/cm^2}$）没有观察到 extrusions，所以 via-below 的情况可以简化为 (tnucl+tgrow)
* Derivation of tree time-to-failure (TTF): Al technology
  ```
  1. For each via in a tree
  2.   TTF = min{(tnucl+tgrow),textru}
  3. Tree's TTF = min{all via TTFs}
  ```

## 后面的内容

主要是利用前面的模型来预测实际电路的 lifetime。在此懒得写了。