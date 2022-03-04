---
title: 深亚微米PMOSFET中的三种热载流子退化机理
authors: Reinout Woltjer, GCI M. Paulzen, Henk G. Pomp, Herbert Lifka, and Pierre H. Woerlee
id: THCDMIDSP
abstract: 对0.25 μm pmos进行了实验研究，分析了三种退化机制，一是漏端夹断区的雪崩电子注入到栅氧层后导致有效沟道长度减小；二是空穴诱导的界面态导致跨导降低；三是空穴注入到栅氧层。文中采用的实验方法是电荷泵和测量IV特性。
link: https://sci-hub.ru/https://ieeexplore.ieee.org/abstract/document/370028/
---

## PMOS 退化的时间依赖性

在 $V_G=V_T$ 时，电子注入到间断点和漏端之间（可通过栅电流测量）生成负的氧化层电荷和界面态。负电荷在沟道中吸引正电荷，等效于延长了漏极的范围，将有效沟道长度缩短了 $\Delta L_{\rm eff}$。而由于负电荷的屏蔽效应，界面态对器件特性无影响。该退化机制的时间依赖模型为：

$$
\Delta L_{\rm eff}/t_{\rm ox}=-\frac{3}{48}\cdot\left[\log_{10} \left( 1+10^{\sqrt{48}}\cdot \frac{t}{\tau_{\Delta L,-}} \right)\right]^2
$$

第二，高能空穴可能产生界面态，减小沟道内载流子的迁移率。其时间依赖性可以参考NMOS

$$
\Delta L_{\rm cp}\propto \Delta L_{\rm eff}/t_{\rm ox}=3\cdot \left( \frac{t}{\tau_{\Delta L,ss}} \right)^{0.45}
$$

另外，在深亚微米表面沟道PMOS中，我们观察到当 $V_G$ 接近 $V_D$ 时，产生正氧化层电荷。根据本文的实验，正电荷生成的时间依赖性可以将公式（1）取反：

$$
\Delta L_{\rm eff}/t_{\rm ox}=\frac{3}{48}\cdot\left[\log_{10} \left( 1+10^{\sqrt{48}}\cdot \frac{t}{\tau_{\Delta L,+}} \right)\right]^2
$$

在上述三个公式中，我们引入三个参数 $\tau_{\Delta L,-},\tau_{\Delta L,ss},\tau_{\Delta L,+}$。这三个参数等于达到 $\vert\Delta L_{\rm eff}\vert=3\cdot t_{\rm ox}$ 的时间。

在低栅压时，产生的是负电荷和表面态，将这两种退化结合得到：

$$
\Delta_{\rm eff}/t_{\rm ox}=-\frac{3}{48}\cdot\left[\log_{10} \left( 1+10^{\sqrt{48}}\cdot \frac{t}{\tau_{\Delta L,+}} \right)\right]^2+3\cdot \left( \frac{t}{\tau_{\Delta L,ss}} \right)^{0.45}
$$

在高栅压时，产生的是正电荷和表面态，将这两种退化结合得到：

$$
\Delta_{\rm eff}/t_{\rm ox}=\frac{3}{48}\cdot\left[\log_{10} \left( 1+10^{\sqrt{48}}\cdot \frac{t}{\tau_{\Delta L,-}} \right)\right]^2+3\cdot \left( \frac{t}{\tau_{\Delta L,ss}} \right)^{0.45}
$$

这三个 $L_{\rm eff}$ 的时间依赖性可以转移到跨导上，即 $\Delta g_m/g_m=-\Delta  L_{\rm eff}/L_{\rm eff}$，类似地，我们引入三个参数 $\tau_{\Delta gm,-},\tau_{\Delta gm,ss},\tau_{\Delta gm,+}$，这些是对应退化机理导致 $\vert \Delta g_m/g_m\vert=10\%$ 所需的时间。无需拟合，通过这些可以得到下面两个公式

将负电荷和界面态结合，得到：

$$
\Delta_{\rm eff}/t_{\rm ox}=-0.1\cdot \frac{5t_{\rm ox}}{8L_{\rm eff}}\cdot\left[\log_{10} \left( 1+10^{\sqrt{48}}\cdot \frac{t}{\tau_{\Delta gm,-}} \right)\right]^2-0.1\cdot \left( \frac{t}{\tau_{\Delta gm,ss}} \right)^{0.45}
$$

将正电荷和界面态结合，得到：

$$
\Delta_{\rm eff}/t_{\rm ox}=0.1\cdot \frac{5t_{\rm ox}}{8L_{\rm eff}}\cdot\left[\log_{10} \left( 1+10^{\sqrt{48}}\cdot \frac{t}{\tau_{\Delta gm,+}} \right)\right]^2-0.1\cdot \left( \frac{t}{\tau_{\Delta gm,ss}} \right)^{0.45}
$$

（论文后面通过外延将该公式适用于一般工作情况，以及得到器件寿命）