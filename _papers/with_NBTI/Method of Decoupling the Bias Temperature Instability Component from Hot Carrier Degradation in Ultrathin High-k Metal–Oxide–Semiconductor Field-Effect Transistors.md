---
title: 超薄高 k 金属氧化物半导体场效应晶体管中热载流子退化对偏置温度不稳定性分量的去耦方法
authors: Akiko Masada, Izumi Hirano, Shigeto Fukatsu and Yuichiro Mitani
id: MODTBTICFHCDIUHKMOSFET
link: https://sci-hub.ru/https://iopscience.iop.org/article/10.1143/JJAP.49.071102
abstract: 随着沟道长度的缩短，热载流子 (HC) 退化变得更加关键。 此外，正负偏置温度不稳定性（分别为 PBTI 和 NBTI）在高 k 器件中都很重要。 在HC应力下，垂直电场引起的BTI是不可避免的。 BTI 组件与 HC 退化的去耦对于更准确地预测器件寿命是必要的。 在这项研究中，提出了一种新的 HC 降解解耦方法。 通过使用 ΔVth 和 Jg 之间的关系，可以将 BTI 分量与 Vg=Vd 应力下的劣化解耦。 展示了我们的方法在 HfSiON 金属氧化物半导体场效应晶体管 (MOSFET) 中的应用。每个组件的通道长度依赖性显示了去耦方法带来的改进。此外，NBTI组分在HC降解中的活化能与NBTI的活化能一致。
---

# Method of Decoupling the Bias Temperature Instability Component from Hot Carrier Degradation in Ultrathin High-k Metal–Oxide–Semiconductor Field-Effect Transistors

## 1. 介绍

近年来，high-k 材料受到越来越多的关注，有望在许多应用中取代SiO2。然而，一些关键的可靠性问题仍然存在，例如高 k 块体材料中存在陷阱。例如，在高 k 介电 n 沟道金属氧化物半导体场效应晶体管 (NMOSFET) 中，观察到严重的正偏压温度不稳定性 (PBTI)，而不仅仅是 p 沟道 MOSFET 的负 BTI (NBTI) (PMOSFET)，这会降低 MOSFET 的阈值电压 ($V_{th}$) 和饱和漏极电流 ($I_d$)。此外，热载流子 (HC) 退化是与器件缩放相关的最关键的可靠性问题之一。当对器件施加 HC 应力时，由于垂直电场，BTI 也是不可避免的。因此，HC 降解涉及 BTI 和 HC 成分。 这种影响在高 k 器件中会更加显着。除了 NBTI，PBTI 也是高 k 栅极电介质的主要关注点之一，因为薄膜中存在大量陷阱。这可能导致对高 k 栅极电介质特性的错误解释。因此，有必要对 BTI 组件进行解耦，以了解高 k 器件中 HC 退化的机制。它还将促进技术计算机辅助设计 (TCAD) 仿真模型的改进，并使更准确的寿命预测成为可能。通过解耦，我们可以防止高估 HC 退化和过度规范可靠性。

已经有一些关于将 NBTI 组件与 HC 降解脱钩的报告。 这里，NBTI 分量是指在 HC 应力下垂直电场引起的退化，其余为 HC 分量。NBTI 表示 NBT 应力下的退化。 据悉，HC分量（$\Delta V^{\rm HC}_{th}$）可以通过从HC退化（$\Delta V^{\rm Total}_{th}$）中减去NBTI [$\Delta V_{th}(NBTI)$]来解耦。NBTI是指在NBT应力下的退化。

$$
\Delta V_{th}^{\rm HC}=\Delta V_{th}^{\rm Total}-\Delta V_{th}(NBTI) \tag{1}
$$

换句话说，使用这种方法，HC应力下的NBTI分量（$\Delta V^{\rm NBTI}_{th}$）被认为等于相同栅极偏置电压下的NBTI [即 $\Delta V^{\rm NBTI}_{th}\sim \Delta V_{th}(NBTI)$]。但是，使用这种方法我们可能会高估 BTI 分量，因为 BTI 对垂直电场很敏感，并且 HC 应力下的场与 BT 应力下的场不同。如图 1 所示，在 HC 应力下，靠近漏极边缘的场小于源极边缘附近的场，而在 BT 应力下，沟道区的场是均匀的。

![](../images/Fig.%201.%20Schematic%20illustrations%20of%20the%20electric%20field%20under%20PBT%20stress%20and%20HC%20stress.jpg)

我们研究的目的是在考虑垂直电场的情况下解耦 HC 降解。 在本文中，我们利用栅极电流密度和阈值电压偏移之间的关系，提出了一种在 $V_g = V_d$ 应力下 HC 退化的新且方便的去耦方法。实验结果表明该方法是有用的。此外，鉴于使用我们的方法解耦的每个组件的温度依赖性，看出 NBTI 组件增强了 HC 的效果。

## 2. HC降解的解耦方法

对具有 SiO2/HfSiON/多晶硅 (poly-Si) 栅叠层的 NMOSFET 和 PMOSFET 进行了测量。栅极电介质的 EOT 约为 1:5 nm。 通道长度和宽度分别为 0.11–0.5 和 5 mm。晶体管的退化通过阈值电压 ($\Deta V_{th}$) 测量来评估。 应力电压在不同的应力时间被中断，以使用 $I_d–V_g$ 扫描提取阈值电压 ($V_{th}$)。在测量期间监控栅极电流密度 ($J_g$)。

我们专注于$J_g$。 图2(a)为HC应力和NBT应力下垂直电场横向分布的TCAD模拟结果。模拟 HC 应力条件下的 $J_g$ 分布如图 2（b）所示。 实验$J_g-E$数据和电场模拟结果[图 2(a)] 被使用。

![](../images/Fig.%202.%20(a)%20TCAD%20simulation%20results.jpg)

从图 2（b）可以看出，$J_g$ 取决于垂直电场。 因此，我们使用栅极电流密度来监测垂直电场。

图 3(a) 显示了 PBT 应力条件下 $V_{th}$ 的应力偏置电压依赖性。通过 $I_g-V_g$ 测量获得的 $J_g$ 的 $V_g$ 依赖性如图 3（b）所示。 请注意，在 BT 应力下，幂律非常适合 $\Delta V_{th}$，并且 $J_g$ 可以很好地近似为 $V_g$ 的幂。我们假设 $\Delta V_{th}$ 由 $J_g$ 的幂拟合：

$$
\Delta V_{th}=a(J_g)^b \tag{2}
$$

![](../images/Fig.%203.%20(a)%20Stress%20voltage%20dependence%20of%20threshold%20voltage%20shift.jpg)

我们利用 $\Delta V_{th}$ 和 $J_g$ 之间的关系提出了一种新的 HC 退化解耦方法。 该过程如图 4 所示。首先，在几个应力电压下测量 BT 应力下的 $\Delta V_{th}$ 和 $J_g$。 通过拟合得到的它们之间的关系由式（2）给出。然后，测量HC应力下的 $\Delta V_{th}$($\Delta V^{\rm Total}_{th}$)和$J_g$($J^{\rm HC}_g$)。 通过将 $J^{\rm HC}_g$ 代入已确定的 $\Delta V_{th}$ 和 $J_g$ 之间的关系 [eq. (2)]：

$$
\Delta V_{th}^{\rm BTI}=a(J_g^{\rm HC})^b \tag{2'}
$$

HC 分量 ( $\Delta V^{\rm HC}_{th}$ ) 可以通过从总退化中减去 BTI 分量来解耦：

$$
\Delta V_{th}^{\rm HC}=\Delta V_{th}^{\rm Total}-\Delta V^{\rm BTI}_{th}
$$

![](../images/Fig.%204.%20Characterization%20procedure%20of%20our%20new%20decoupling%20method.jpg)

![](../images/Fig.%205.%20Comparison%20of%20Ig%20(solid%20lines).jpg)

图 5 显示了 PBT 应力 ($V_g = 2 {\rm V}$) 和 HC 应力 ($V_g = V_d = 2 {\rm V}$) 下的 $I_g$ 和 $I_{sub}$。 在HC应力下，$I_g$ 比PBT应力下降低更多，而 $I_{sub}$ 由于HC效应而增加。如果注入栅极的热载流子数量较多，则在 HC 应力条件下 $I_g$ 可能会增加。然而，在图 5 中，$I_g$ 降低了。这表明 $I_g$ 主要由该条件下的垂直电场决定，因为 HC 应力下的垂直电场平均值小于 BT 应力下的平均值（图 1）。通过使用等式 (2)，$I_g$ 的下降估计为 1 mV，这对 PBTI 分量的估计没有影响。 因此，在此解耦方法中使用了 t = 0 s 时的 $J^{HC}_g$。在 PMOSFET 的情况下也是如此。

如图 6 所示，当在 $I_d-V_g$ 测量中交换源极和漏极时，在长应力时间下 $V_g = V_d$ 应力下的阈值电压偏移 ($\Delta V_{th}$) 差异很小。 在这个样品（$L = 0.5 {\rm \mu m}$）中，BTI 成分在总退化中占主导地位。这表明 BT 退化并不局限于源侧，由 BTI 引起的 $\Delta V_{th}$ 可以通过平均 $J_g$ 来近似监测。

## 3. 结果与讨论

### 3.2 将 NBTI 和 HC 组分从 HC 降解中解耦

我们测量了各种应力电压（$V_g =- 2$ 到 $3$ V）的 NBTI，并获得了 $\Delta V_{th}$ 的 $J_g$ 依赖性。 然后，我们在不同沟道长度（$L = 0.11-0.50 {\rm \mu m}$）的 PMOSFET 上施加 HC 应力（$V_g = V_d = -2.5 {\rm V}$），并以相同的方式解耦退化。图 11 显示了不同沟道长度的 PMOSFET 的 HC 退化的去耦结果的沟道长度依赖性。 显示 NBT 应力 ($V_g = -2.5 {\rm V}$) 下的退化以供比较。与 NMOSFET 的情况一样，我们可以在不超过总退化的情况下对 NBTI 组件进行解耦。

![](../images/Fig.%2011.%20Channel%20length%20dependence%20of%20threshold%20voltage%20shift.jpg)

图 12(a) 显示了 NBTI ($V_g = -2.5 {\rm V}$) 的温度依赖性，图 12(b) 显示了 HC 降解 ($V_g = Vd = -2.5 {\rm V}$) 及其 NBTI 和 HC 组件的温度依赖性。 NBTI 组件的活化能与 NBTI ($\sim 0.1 {\rm eV}$) 的活化能一致。 已经报道了类似的值。这些实验结果表明我们的解耦方法的有效性。

![](../images/Fig.%2012.%20Temperature%20dependence%20of%20threshold%20voltage%20shift.jpg)

尽管已知 HC 降解由于低冲击电离率而随温度升高而降低，但 HC 降解及其 HC 组分均随温度升高而增加，如图 12(b) 所示。据报道，对于具有高 k 栅极电介质的 PMOSFET 和 NMOSFET 短沟道器件，HC 退化会随着温度的升高而增加。我们的实验数据显示了同样的趋势。我们假设这是由于 NBTI 组件在高 k 电介质中的 HC 应力下加速了 HC 效应。为了验证这个模型，我们测量了施加 NBT 应力后在 HC 应力下的退化。一个小组报告了一个类似的实验。 根据他们的报告，在连续的 HC 和 NBT 压力下，降解会增强。 同样，我们的模型通过以下测量得到验证。首先，我们施加 NBT 应力（$V_g=-2.5{\rm V},V_d=0{\rm V}$），在施加 512 s NBT 应力后，施加 $V_d$（$V_g=V_d=-2.5{\rm V}$）。 在这种情况下，NBTI 效应大于仅在 HC 压力下的效应。图 13(a) 显示了施加 NBT 应力（实心圆）和 HC 应力（空心圆）后，$\Delta V_{th}$ 在 HC 应力下的应力时间依赖性。与仅 HC 应力相比，施加 NBT 应力后 HC 应力下的退化更大[图 13(b)]。这表明 NBTI 增强了高 k 电介质中的 HC 退化。我们获得的结果与之前的报告中的结果相同。

![](../images/Fig.%2013.%20(a)%20Threshold%20voltage%20shifts%20under%20HC%20stress%20after%20NBT%20stress.jpg)

![](../images/Fig.%2014.%20Schematic%20illustration%20of%20NBTI-enhanced%20HC%20degradation.jpg)

如图 14 所示，NBTI 捕获的空穴从源极侧向漏极侧跳跃，靠近漏极侧的横向电场变大，加速了 HC 劣化。 图 5 所示的实验结果支持了在源边缘附近捕获的空穴在 HC 应力下可以跳跃并在沟道区域内形成均匀分布的模型。尽管需要进一步研究以了解该机制，但根据目前可用的知识，我们推断高 k 电介质中的 NBTI 组件加速 HC 效应是合理的。

## 4. 结论

提出了一种新的、方便的 HC 降解解耦方法。 使用 $\Delta V_{th}$ 和 $J_g$ [ $\Delta V_{th}= a(J_g)^b$] 之间的关系，BTI 和 HC 分量很好地与 $V_g = V_d$ 应力条件下的退化解耦。每个组件的沟道长度依赖性显示了 NMOSFET 和 PMOSFET 的去耦方法带来的改进。NBTI 的激活能（$V_g = -2.5 {\rm V}$）和与 HC 降解解耦的 NBTI 组件（$V_g = V_d = -2.5 {\rm V}$）之间的相似性表明我们方法的有效性。解耦的 HC 分量随着温度的升高而增加。 假设这种温度依赖性是由于 NBTI 增强的 HC 降解。

我们的去耦方法的应用范围受限于所使用的样品和测量条件。 我们可以将我们的方法应用于薄电介质的研究，其中可以观察到栅极电流，并且在 HC 注入引起的栅极电流增加可以忽略不计的情况下。