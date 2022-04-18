---
title: 电子-电子散射在热载流子退化中的重要性
authors: Stanislav Tyaginov, Markus Bina1, Jacopo Franco, Yannick Wimmer, Ben Kaczer and Tibor Grasser
id: OTIOEESFHCD
abstract: 使用我们基于物理的热载流子退化 (HCD) 模型，我们分析了电子 - 电子散射 (EES) 对不同沟道长度晶体管中 HCD 的影响的重要性。该模型基于对载流子传输的彻底处理，并在确定性玻尔兹曼传输方程求解器 ViennaSHE 中实施。该模型捕获了两种相互竞争的 Si-H 键断裂机制：一种是由键的多重振动激发触发的，另一种是由于单个热载流子将一个键合电子激发到反键态。这些过程自洽地被认为是相同解离反应的竞争途径。为了分析 EES 工艺的重要性，我们使用了一系列具有相同架构但栅极长度不同的 nMOSFET。栅极长度在 44-300 nm 的宽范围内变化，以覆盖短沟道 MOSFET 以及更长的对应物。根据之前的发现，EES 在 180 nm 的沟道长度上开始变得重要。这种情况在目标门长度间隔中被捕获。我们的结果表明，单独的通道长度不是 EES 重要性的充分标准，并且还必须考虑应用的偏置条件。
link: https://iopscience.iop.org/article/10.7567/JJAP.54.04DC18/meta
---

# On the importance of electron–electron scattering for hot-carrier degradation

## 1. 介绍

MOSFET 的快速小型化导致工作电压降至 1 V 以下。因此，热载流子退化已经从主要由单独的热载流子产生损坏的模式演变为由冷载流子提供实质性贡献的状态。载体。1-4）在第一种情况下，键断裂事件可以由高能载体触发。然而，由于电子和质子质量之间的巨大差异，能量的键断裂部分不太可能在直接碰撞中转移。 5）相反，热载流子可以将一个键合电子激发到反键（antibonding，AB）状态，从而启动 AB 机制。6,7) 如果操作/应力电压较低，则该过程不太可能。在按比例缩放的器件中，载流子通量可以非常高，而平均载流子能量很低。因此，与 Si-H 键碰撞的几个较冷的载流子可以充分激发它，从而触发键的多重振动激发 (MVE)。1-4) 当键固定在最后一个键合状态时，氢原子可以克服将这种状态和传输模式分开的势垒，从而留下悬空的 Si 键，它是电活性的。这种键断裂模式被称为“MVE 机制”。

在器件层面，这些竞争机制的相互作用导致当人们从高压晶体管切换到其规模对应的晶体管时，最坏情况的变化。3、4、8、9）因此，HCD 似乎是对载流子在能量上的分布方式高度敏感，因为高能和低能粒子可以触发不同的键解离机制。该信息包含在载流子能量分布函数 (DF) 中，它对散射机制非常敏感。6,10,11) 在超大规模器件中发挥关键作用的机制之一是电子 - 电子散射，它占据了高- DF 的能量尾部远远超出了源极和漏极之间的电位降提供的能量。12,13)​​ 此外，Rauch 等人报告说，这种机制是造成晶体管从 180 nm 开始严重 HCD 增强的原因节点及以后。14,15）恰恰相反，Bravaix 小组建议，在他们的器件中，EES 的作用被大大高估了，而是两粒子混合模式过程驱动热载流子退化。16）使用我们最近开发的基于物理的 HCD 模型 6,7) 我们研究了 EES 在 HCD 在短沟道和长沟道晶体管中的重要性。

## 2. Modeling framework

我们的方法涵盖并链接了 HCD 的三个主要方面：6、7、10）载流子传输、缺陷产生的微观机制和退化器件的建模（图 1）。该模型被实施到确定性玻尔兹曼输运方程求解器 ViennaSHE,11,17,18) 中，用于彻底的载流子输运处理。 ViennaSHE 模拟特定器件结构和给定操作/应力条件下硅/绝缘体界面每个点的载流子能量分布函数。由于 DF 对掺杂分布非常敏感，因此 MOSFET 结构是使用经过校准并耦合到 ViennaSHE 的 Sentaurus 工艺模拟器获得的，以代表新器件的特性。诸如表面散射、电离杂质散射、碰撞电离以及电子-声子和电子-电子相互作用等重要的能量交换机制被纳入ViennaSHE。然后使用 DF 计算载体加速度积分，这是我们模型中的关键量，描述了载体包解离键的累积能力。6,7,10) 因此，这个量决定了两个 AB 的速率- 和 MVE 机制。与其他 HCD 模拟方法相反，2,15,20-28）我们的模型包含了这些过程的所有可能叠加。换句话说，首先键可以被几个较冷的载流子激发到一个中间水平（图2）。分隔这一层级和运输方式的势垒现在减少了。因此，需要从热载体转移到键的能量的键断裂部分也减少了，因此粒子集合包含具有这种能量和更高能量的载体的概率可以相当高。因此，键可以通过由具有比键断裂能低得多的能量的载体触发的AB过程解离。请注意，尽管考虑 AB 和 MVE 过程的所有可能组合的想法之前由 Hess 模型表达，2) 在以前的 HCD 模型中，为简单起见，这些机制被独立考虑。因此，在我们模型的前一个版本中，所产生的界面态密度被计算为 AB 和 MVE 引起的贡献与一些概率系数加权的叠加。10、19、29-31）在我们模型的最新版本中，然而，AB 和 MVE 机制自洽地实施为同一反应的竞争途径，将原始 Si-H 键转化为电活性悬空 Si 键。我们已经讨论过，由于 MVE 工艺的键预热，当键处于激发态时，氢释放的势垒会降低。键断裂能降低的另一个原因是氧化物电场 $E_{\rm ox}$ 与键 #$d$  的偶极矩之间的相互作用。6、7、23、32）这种降低被建模为乘积 $d \times E_{ox}$。该模型的一个密切相关的成分源于结晶硅和非晶电介质之间界面的结构无序。这种无序导致 Si-H 键合能的统计变化，其服从正态分布，平均值和标准偏差分别等于 1.5 和 0.15 eV。33-35）

![](../images/Fig.%201.%20Our%20HCD%20model%20contains%20a%20carrier%20transport%20kernel.jpg)

<center><small>Fig. 1. Our HCD model contains a carrier transport kernel, a module which describes the trap generation kinetics, and a degraded device characteristic simulator.</small></center>

![](../images/Fig.%202.%20The%20sketch%20of%20the%20potential%20energy%20surface%20describing%20Si–H%20bond.jpg)

<center><small>Fig. 2. The sketch of the potential energy surface describing Si–H bond with a system of eigenstates in the potential well. Bond-breakage corresponds to hydrogen release from one of these bonded states to the transport mode. In the previous versions of our HCD model the single- and multiple-carrier processes of bond dissociation were assumed to be independent.10,19) In the most recent version of the model these processes are considered self-consistently as competing pathways of the same bond-breakage reaction.6,7)</small></center>

该模型能够在具有相同架构（具有 2.5 nm SiON 薄膜）但具有不同栅极长度（65、100 和 150 nm）的三种不同 nMOSFET 中表示 HCD，在不同的 $V_{ds}$ 和 $V_{gs}$ 组合下承受 8 ks 的应力 使用一组独特的模型参数（见图 3）。 请注意，这些器件具有不同的尺寸，因此 HCD 的最坏情况条件对应于 $V_{gs}$ 和 $V_{ds}$ 的不同组合。 例如，栅极长度为 65 nm 的 MOSFET 被认为是短沟道器件，最坏情况对应于 $V_{ds} = V_{gs}$。 150nm晶体管属于长沟道器件，因此当$V_{gs}=V_{ds}/2$时HCD最为严重。 同样在这种情况下，作为 $V_{ds}$ 和 $V_{gs}$ 函数绘制的衬底电流在 $V_{gs} = V_{ds}/2$ 处具有最大值。 至于 100 nm 对应物，最大衬底电流是在 $V_{gs} = 2/3 V_{ds}$ 时测量的，并且该器件利用电压之间的这种相互关系受到热载流子应力。

## 3. 结果和讨论

![](../images/Fig.%203.%20The%20normalized%20linear%20drain%20current%20change.jpg)

<center><small>Fig. 3. The normalized (i.e., divided by the drain current of the fresh device) linear drain current change ΔIdlin(t) measured in three different nMOSFETs with gate lengths LG of (a) 65, (b) 100, and (c) 150 nm. The devices were stressed at their corresponding HCD worst-case conditions at Vds = 1.8 and 2.2 V. For comparison, we also plot ΔIdlin(t) obtained without EES. In 65 and 100 nm transistors ΔIdlin(t) is substantially underestimated if EES is ignored.</small></center>

图 3 总结了作为时间函数的线性漏极电流 $ΔI_{\rm dlin}$ 的实验变化与模拟的 $ΔI_{\rm dlin}(t)$ 曲线的关系。 忽略 EES 获得的 $ΔI_{\rm dlin}(t)$ 数据无法代表两种电压组合的 65 和 100 nm 器件中的 HCD。 请注意，在 100 nm MOSFET 在较低电压（Vgs = 1.2 V，Vds = 1.8 V）下承受热载流子应力的情况下，EES 的影响并不那么突出。 此外，使用和不使用 EES 模拟的 $ΔI_{\rm dlin}(t)$ 曲线之间的差异随着 $V_{ds}$、$V_{gs}$ 的增加而增加。 对于栅极长度为 150 nm 的 MOSFET，EES 的贡献较弱，可以忽略不计。

需要强调的是，在以前的热载流子退化范例中，仅使用沟道/栅极长度来判断 EES 对 HCD 的重要性。14-16）然而，我们的研究结果表明，器件几何形状和 施加的电压决定了电子 - 电子散射的影响是否强烈。 为了验证这一想法，我们使用 Sentaurus 工艺模拟器虚拟制造了一系列架构相似但栅极长度不同的器件。 为了覆盖广泛的栅极长度，我们使用了 LG = 44、200 和 300 nm 的 MOSFET。

图 4 显示了使用和不使用模型成分之一计算的 ΔIdlin(t) 曲线，例如键解离的 AB 和 MVE 机制、电子-电子散射、电场与键的偶极矩的相互作用，以及 对于两种应力条件，即 Vds = 1.2 V、Vgs = 0.8 V 和 Vds = Vgs = 1.2 V，栅极长度为 44 nm 的晶体管的键断裂活化能的分散。可以看出，忽略 EES 机制已经在相当低的电压下导致严重低估所有应力时间的线性漏极电流变化。

EES过程对HCD的这种显着增强可以通过考虑决定AB过程速率的表达式的功能结构来解释：

$$
R_{AB}=\int f(E)g(E)v(E)\sigma(E) \tag(1)
$$

其中 $f(E)g(E)$ 是载流子能量 DF，$f(E)$ 是占有数，$g(E)$ 是状态密度，$v(E)$ 是载流子群速度，而 $σ(E)$ 是 类似 Keldysh 的反应截面。 反应截面确定为

$$
\sigma(E) = 
\begin{cases}
\sigma_0(E-E_{th}) & \text{if }E\geq E_{th}\\
0 & \text{if} E<E_{th}
\end{cases} \tag{2}
$$

其中 $E_{th}$ 是键断裂能，$σ_0$ 是尝试频率。可以看出 $σ(E)$ 是能量的强增函数。在没有 EES 的情况下模拟的载体 DF 有一个平台（由于声子级联），然后是一个热尾，即在这一部分中，DF 值随着能量迅速下降，图 5。作为这两种趋势的叠加，在RAB 的表达式在一定能量下具有最大值（图 5），参见参考文献 25 和 26. 如果考虑电子-电子散射，它会导致高能下 DF 中可见的驼峰，因此在 $E > E_{th}$ 处观察到 $f(E)g(E)σ(E)$ 的最大值.这个最大值比没有 EES 评估的 RAB 相关的最大值要高得多，并且由于 EES 过程，键断裂率通常要高几个数量级。因此，EES 基本上占据了载流子系综的高能量部分，从而即使在相对较低的 $V_{ds}$ 为 1.2 V 时也使 AB 过程占主导地位，这在图 4 中可见。

![](../images/Fig.%205.%20A%20schematic%20representation%20of%20the%20AB-process%20rate%20enhancement%20by%20EES.jpg)

<center><small>Fig. 5. A schematic representation of the AB-process rate enhancement by EES for the case of the 44 nm device stressed at Vds = Vgs = 1.2 V. A superposition of two competing functions, i.e., of the decaying with energy carrier DF and the increasing reaction cross section leads to a maximum of the integrand in Eq. (1). EES dramatically changes the DF shape by populating its high-energy tail. As a consequence, the derivative dRAB/dE has a much more pronounced maximum, which in the case when EES is considered results in an AB-process rate several orders of magnitude higher than that obtained without EES.</small></center>

还值得讨论电场与键的偶极矩的相互作用对 $ΔI_{\rm dlin}(t)$ 曲线的影响。与 $V_{ds} = V_{gs} = 1.2 {\rm V}$ 的情况相比，这种效应在 $V_{ds} = 1.2 {\rm V}$ 和 $V_{gs} = 0.8 {\rm V}$ 时更强。乍一看，这样的发现似乎与我们最近的结果相矛盾，参见参考文献。图 6 和 7。为了理解这种行为，我们绘制了 $V_{ds}$ 和 $V_{gs}$ 组合的 SiON/Si 界面处的电场分布（图 6）以及界面态密度 $N_{it}$ 作为两个横向坐标 $x$ 的函数应力时间步长为 14 和 700 s，有和没有 $d \times E_{ox}$ 效应（图 7）。在 $V_{gs} = 0.8 {\rm V}$ 的情况下，与 $V_{gs} = 1.2 {\rm V}$ 的评估结果相比，器件源极侧的电场较低而漏极 MOSFET 区域的电场较高。因此，$d \times E_{ox}$ 的影响当 Vgs = 0.8 V 时，贡献对漏极 Nit 峰值（在 $x \gtrsim 15$ nm 处可见）的影响更大，并且对源极附近的 Nit 值的影响要小得多。但是，在这些应力条件下和使用的应力内在时间窗口中，$I_{\rm dlin}$ 劣化主要由漏极 $N_{it}$ 决定，因为源极和沟道界面陷阱具有低密度 $N_{it}$，不会显着干扰晶体管性能。因此，对于 $V_{gs} = 0.8 {\rm V}$，场 - 偶极子相互作用的影响更强。最后请注意，源/通道界面态在较长的应力时间是造成 HCD 的原因，参见参考文献 6 和 7。

![](../images/Fig.%206.%20The%20dielectric%20electric%20field%20profiles%20at%20the%20SiON-Si%20interface.jpg)

<center><small>Fig. 6. The dielectric electric field profiles at the SiON/Si interface simulated for the 44 nm device for Vds = 1.2 V, Vgs = 0.8 V and Vds = Vgs = 1.2 V.</small></center>

![](../images/Fig.%207.%20The%20interface%20state%20density%20Nit(x)%20profiles%20simulated%20for%20the%2044%20nm%20device.jpg)

<center><small>Fig. 7. The interface state density Nit(x) profiles simulated for the 44 nm device with and without the interaction of the electric field with the dipole moment of the bond for two combinations of stress voltages: (a) Vds = 1.2 V, Vgs = 0.8 V and (b) Vds = Vgs = 1.2 V. The curves for two stress time steps of 14 and 700 s are shown. As a reference we also indicate the Nit value typical for unstressed devices of ∼$10^{10}$ cm−2. Those interface traps which are characterized with an interface state density below this value do not significantly contribute to the device performance degradation.</small></center>

此外，在较长器件的情况下，我们不是计算所有模型成分的线性漏极电流变化和忽略这些成分之一的相同曲线（如图 3 所示），而是分析不同模型成分的相对贡献 $ΔI_{\rm dlin}(t)$。 换句话说，我们根据忽略这些组件之一评估的 $ΔI_{\rm dlin}(t)$ 与使用“完整”模型获得的比率之间的比率重新表述问题。

图 8 显示了栅极长度为 200 和 300 nm 的晶体管在长沟道 MOSFET 热载流子退化的最坏情况下（即 $V_{gs} = V_{ds}/2$ 在三个不同的 $V_{ds}$ 值下）所绘制的这些比率，即在 1.8、2,2 和 2.8 V。如果 $\{ V_{ds},V_{gs}\} $ 值是固定的，则两个不同通道长度的比率为相比之下，可以看出EES的效果在较短的设备中更为突出。当栅极长度固定而 $\{ V_{ds},V_{gs}\} $ 值增加时，电子-电子散射的贡献似乎也更强。需要强调的是，即使在像 300 nm MOSFET 这样长的器件中，EES 的作用在 $V_{ds} = 2.2 {\rm V}$ 和 $V_{gs} = 1.1 {\rm V}$ 时已经很重要，而在 $V_{ds} = 2.8 {\rm V}$ 和 $V_{gs} = 1.4 {\rm V}$ 时，$ΔI_{\rm dlin}$ 值可以被低估了约 30%。对于 200 nm 晶体管，这种低估对应于显着较低的电压，即 $V_{ds} = 2.2 {\rm V}$ 和 $V_{gs} = 1.1 {\rm V}$。还要注意，在 $V_{ds} = 1.8 {\rm V}$ 和 $V_{gs} = 0.9 {\rm V}$ 的情况下，电子-电子的贡献对于所有应力时间和两种器件，散射都可以忽略不计。因此，我们得出结论，EES 的作用不仅取决于栅极长度，还取决于施加的电压，并且在使用不同 $\{ V_{ds},V_{gs}\}$。

![](../images/Fig.%208.%20The%20ratio%20between%20ΔIdlin(t)%20simulated.jpg)

<center><small>Fig. 8. The ratio between ΔIdlin(t) simulated neglecting one of the model components and that obtained with the full model. These ratios were calculated for two MOSFETs with gate lengths of 200 and 300 nm for the interrelations between Vds and Vgs corresponding to the worst-case HCD conditions in long-channel transistors.</small></center>


图 9 支持了这些趋势，该图显示了为 200 和 300 nm 器件计算的电子能量分布函数。 图 9 的左图表明，当施加的电压增加时，DF 在整个能量范围内发生偏移。 例如，高能尾巴似乎在较高的 $\{ V_{\text{ds}},V_{\text{gs}}\} $ 处填充得更多。 这些高能尾部主要由电子 - 电子散射机制形成（如果 EES 关闭，则会消失），这导致在高能下明显的 DF 驼峰（见图 9）。 因此，如果应用的偏差变得更高，则执行 EES 角色。

![](../images/Fig.%209.%20(a)%20Comparison%20of%20the%20carrier%20energy%20distribution%20functions%20simulated.jpg)

<center><small>Fig. 9. (a) Comparison of the carrier energy distribution functions simulated with and without EES for the 300 nm MOSFET near the drain. (b) Comparison of carrier DFs obtained for 200 and 300 nm MOSFETs near the drain for the same combinations of voltages. All the DFs are plotted for the same values of $\{ V_{\text{ds}},V_{\text{gs}}\} $, namely for Vgs = 0.9 V, Vds = 1.8 V, Vgs = 1.1 V, Vds = 2.2 V, and Vgs = 1.4 V, Vds = 2.8 V.</small></center>

栅长度对 EES 过程贡献的影响也很明显：为 $\{ V_{\text{ds}},V_{\text{gs}}\} $ 的相同组合计算的 DFs 但对于较长的设备的特点是较低的值。这种趋势可以用以下方式解释。载流子 DF 的高能尾部是由散射出（电子 - 声子相互作用）和散射入（电子 - 电子相互作用）之间的平衡形成的。13,36）声子散射率是能量的弱函数，因此 DF 的尾部水平由 EES 率决定，参见参考文献。 37. 在较长的 MOSFET 中，散射效率更高，因此电子 - 声子和电子 - 电子相互作用之间的平衡在 EES 速率的较高值下实现。该速率取决于能量，因此 EES 形成的典型驼峰（在 DF 的高能尾部发音）发生在较长设备中的较高能量处，因此 EES 对 HCD 的贡献较弱。还值得注意的是，由于 EES 中涉及两个电子，因此相应的速率与载流子浓度的平方成正比，在较长的器件中也较低。

图 8 还允许分析其他模型成分的作用。例如，有人得出结论，MVE 机制在所有 Vds 和 Vgs 组合下受压的 200 和 300 nm MOSFET 中都很重要。这一结果与我们之前的发现 10,19,29) 以及 Bravaix 小组发表的结果 38) 一致，其中证明即使栅极长度长达 2.0 µm，MVE 机制也可以提供实质性的贡献.对于 AB 过程，这种机制对热载流子降解提供了主要贡献。这与当前的 HCD 范例一致，即在长通道器件和/或在高应力电压下，热载流子损坏由单载流子机制主导。 3,26) 另请注意，对 ΔIdlin 的相对贡献的总和模拟忽略 AB-/MVE 机制之一不一定等于 1（见图 8）。这是因为这两种断键模式是耦合的，即它们的速率不能独立考虑。当键的多重振动激发加热该键，然后单载流子过程诱导氢释放时，这种情况对应于键断裂场景。因此，多载流子激发显着增加了 AB 机制的速率。因此，如果忽略 MVE 模式，单载波过程的速率也被低估了。在这种情况下，相应贡献的总和超过 1。

如果省略键断裂能分散，这将导致对 ΔIdlin 的显着低估。 然而，如果应力电压增加，这种趋势就会变得不那么明显。 这是因为在高 $\{ V_{\text{ds}},V_{\text{gs}}\} $ 载流子相当热，从而有效地触发了键解离事件。 因此，活化能的进一步降低不会显着影响键断裂率。 由于氧化物电场与键的偶极矩的相互作用，能量降低也是典型的，即 d × Eox 贡献对较高应力电压下的键解离动力学的影响较弱。

## 4. 总结

使用我们基于物理的热载流子降解模型，我们分析了电子 - 电子散射在 HCD 环境中的重要性。 为此，使用了几何形状相同但栅极长度不同的 MOSFET。 栅极长度在很宽的范围内变化。 即，从 44 到 300 nm。 我们已经证明，即使在 300 nm MOSFET 中，如果施加的电压足够高，电子-电子散射的贡献也会很大。 因此，忽略 EES 计算的线性漏极电流变化将在 Vds = 2.2 V 和 Vds = 1.1 V 时被低估 15% 以上，在 Vds = 2.8 V 和 Vds = 1.4 V 时被低估 30% 以上。至于最短的晶体管 如果栅极长度为 44 nm，EES 的影响在 Vds = 1.2 V 和 Vgs = 0.8 V 时已经很重要。因此，EES 的重要性由器件拓扑结构和施加的应力/工作电压定义，即，不仅限于 与以前的 HCD 范例一样，由栅极/沟道长度决定。