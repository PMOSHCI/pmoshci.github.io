---
layout: page
title: BJT
permalink: /bjt
search_exclude: true
mathjax: true
nav_order: 8
parent: Other
---

# BJT PNP晶体管

BJT中的热载流子退化指的是在发射结（B-E junction）反偏时会在 B-E 边缘的 Si/SiO2 界面上产生界面态和氧化层电荷，导致 IB 上升，从而电流增益β下降[^1] [^2] [^3]。[^5] 中从能带的角度对该过程进行了物理建模（Fig. 2）。

![](/assets/images/Fig.%202.%20Creation%20of%20interface%20traps%20in%20npn.jpg)

[^6] 中提出，热载流子轰击Si-SiO2 界面后会引起氢释放，氢原子可以漂移、扩散，与杂质原子形成 B-H 化合物（Fig. 6），导致基极中的受主浓度 $N_a$ 减小，增加耗尽区宽度 $W_d$，减小发射结电容 $C_{je}$，提高 $V_{ebo}$ 和 $R_{bx}$。B-H 化合物也可以分解，使得氢进入到衬底，通过影响 Gummel number $G_b$ 来影响 $I_C$.

![](/assets/images/Fig.%206.%20Schematic%20diagram%20of%20device%20degradation.jpg)

C. Hu 于[^4]中提出如下模型：

$$
直流：\Delta I_B = D J_C^a I_R^b t^c
$$

$$
交流：\Delta I_B = D J_C^a \left[ \int I_R^b \dif t  \right]^c
$$

$a,b,c,D$ 是拟合参数，$J_C$ 是集电极电流密度，$I_R$ 是反向电流密度。

在 BERT 中，定义 BJT 的 AGE 为：

$$
Age(T) = I_S^{a/n} \int_{t=0}^T (D')^{1/n} I_R^{b/n}(t) \dif t
$$

从而 $\Delta I_B \propto f(AGE)$



[^1]: [S. L. Kosier et al.,<br> "Physically based comparison of hot-carrier-induced and ionizing-radiation-induced degradation in BJTs,"<br> in IEEE Transactions on Electron Devices,<br> vol. 42, no. 3, pp. 436-444, March 1995, doi: 10.1109/16.368041.](https://ieeexplore.ieee.org/abstract/document/368041/)

[^2]: [S. P. Joshi, R. Lahri and C. Lage,<br> "Poly emitter bipolar hot carrier effects in an advanced BiCMOS technology,"<br> 1987 International Electron Devices Meeting, 1987, pp. 182-185, doi: 10.1109/IEDM.1987.191382.](https://ieeexplore.ieee.org/abstract/document/1487340/)

[^3]: [I. C. Kizilyalli and J. D. Bude, <br>"Degradation of gain in bipolar transistors,"<br> in IEEE Transactions on Electron Devices,<br> vol. 41, no. 7, pp. 1083-1091, July 1994, doi: 10.1109/16.293334.](https://ieeexplore.ieee.org/abstract/document/293334)

[^4]: [D. Burnett and C. Hu, <br>"Hot-carrier reliability of bipolar transistors," <br>28th Annual Proceedings on Reliability Physics Symposium, 1990, pp. 164-169, doi: 10.1109/RELPHY.1990.66081.](https://ieeexplore.ieee.org/document/66081)

[^5]: [A. Neugroschel, Chih-Tang Sah and M. S. Carroll, <br>"Degradation of bipolar transistor current gain by hot holes during reverse emitter-base bias stress,"<br> in IEEE Transactions on Electron Devices, vol. 43, no. 8, pp. 1286-1290, Aug. 1996, doi: 10.1109/16.506781.](https://ieeexplore.ieee.org/abstract/document/506781/authors#authors)

[^6]: [D. Quon, P. K. Gopi, G. J. Sonek and G. P. Li, <br>"Hot carrier induced bipolar transistor degradation due to base dopant compensation by hydrogen: theory and experiment," <br>in IEEE Transactions on Electron Devices, vol. 41, no. 10, pp. 1824-1830, Oct. 1994, doi: 10.1109/16.324594.](https://ieeexplore.ieee.org/document/324594)

[^7]: [Origin of large-amplitude random telegraph signal in silicon bipolar junction transistors after hot carrier degradation](https://aip.scitation.org/doi/abs/10.1063/1.116393)