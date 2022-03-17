---
title: Channel hot-carrier degradation in pMOS and nMOS short channel transistors with high-k dielectric stack
authors: C. Guerin, V. Huard, and A. Bravaix
id: GFADCATSI
link: https://sci-hub.ru/https://www.sciencedirect.com/science/article/pii/S0167931709004328
abstract: 70nm，多种栅极材料，条件 VD=VG, 包括电压-寿命，温度-寿命
---

## 实验器件与条件

器件

- pMOSFET and n-MOSFET transistors with highly doped drain
- The gate stack was either SiO2/HfSiON (20% or 80% of Hf) with TiN gate, SiO2/HfSiON (60% of Hf) with NiSi FUSI or SiO2/poly-Si
- The dielectric consisted of a 0.7 nm chemical SiO2 interface using IMEC clean, followed by a metalorganic chemical vapor deposited (MOCVD) 3 nm thick high-k layer. The equivalent oxide thickness (EOT) ranged from 1.2 to 1.8 nm, as shown in Table below.
  
  |pMOS|SiO2/poly-Si|60% HfSiON/FUSI|20% HfSiON/TiN|80% HfSiON/TiN|
  |-------|---|---|---|---|
  |EOT(nm)|1.8|1.4|1.2|1.8|
  |$I_{D,\rm sat}$|-1.3|-1.6|-1.6|-1.5|
  |$I_{D,\rm lin}$|-1.3|-1.6|-1.6|-1.5|
  |$V_T$|-1.3|-1.7|-1.7|-1.5|
-  The analysis is focused on transistors with short channel length (70 nm).

条件

- the most damaing CHC conditions: $V_G=V_D$ for pMOS
- NBTI stress: gate voltage was the same as the one used during the CHC stresses.
- failure criteria:
  - 10% reduction in $I_{D,lin}$ or $I_{D,sat}$
  - or 50mV $V_T$-shift
  - Unless stated otherwise, lifetimes in the figures refer to 10% degradation of $I_{D,sat}$. 

## 实验结果

### Fig.1

Fig. 1 shows the $I_{D,sat}$ lifetime of pMOS short channel transistors with SiO2/HfSiON/FUSI (60% of Hf) as dielectric-gate combination. Different stresses (CHC, at VG = VD/2 and VG = VD, and NBTI) are compared.

```
1/V_{stress},I_{D,sat} Lifetime

CHC@VG=VD
-0.5002355444246834, 40757.15924375085
-0.4546184119679785, 2641.071404964135
-0.41707510826467264, 411.56315091493104
-0.3847797932510762, 47.068762405715134
-0.35732877548951925, 4.159780793755804

CHC@VG=VD/2
-0.3849907350216183, 9488.037391540403
-0.3331068560840026, 372.02546132704026
-0.31210623841877705, 44.985214555198816
-0.2941939468807906, 14.885476050314374
-0.27782581840642384, 4.829594889108485
-0.24972205064854847, 0.6317885946134442

NBTI
-0.38485484867201986, 21787.260670439944
-0.3572822730080298, 2116.487320560964
-0.33326744904261896, 150.42439521201527
-0.31236565781346526, 15.037946280366342
```



### Fig. 2

shows the ID,sat lifetime results for pMOS short channel transistors stressed at VG = VD for various high-k gate stacks. The SiO2/poly gate stack data are added as reference.

```
L=70nm PMOS
VG=VD

1/VD, I_{D,sat} Lifetime

20% HfSiON/TiN
-0.47610328638497657, 31291.532216687527
-0.4545070422535211, 5410.429063125205
-0.4350234741784038, 2001.341210489604
-0.41671361502347415, 105.83865420859716
-0.39981220657276995, 51.690964311544775

60% HfSiON/FUSI
-0.5002816901408451, 42128.554523389495
-0.45489827856025045, 2747.5126578047466
-0.41694835680751174, 410.4198145353676
-0.3854538341158059, 47.46390678186518
-0.3576760563380281, 4.198094090181497

80% HfSiON/TiN
-0.47633802816901416, 1095.554901795101
-0.4543661971830987, 269.07791188218596
-0.4349295774647888, 98.9525132812701
-0.4160563380281691, 31.072632511940586
-0.4, 10.840791097024095

SiO2/poly-Si
-0.475774647887324, 164.6127289213182
-0.4543661971830987, 54.48544318535807
-0.43464788732394366, 24.733904689325556
-0.4166197183098592, 11.426857967695504
-0.4, 3.063941632443773
```

### Fig. 4

```
SiO2/HfSiOH/TiN
20% Hf
L=70nm

Temperature, I_{D,sat} Lifetime

CHC@VG=VD=-2V
25.009838014764618, 20376.29021648969
100.09919083384142, 1994.8301641021778
150.16524486945423, 591.0032104654817
199.90829112416841, 176.4657373376472

NBTI@VG=-2V
24.893555213641143, 208134.61238866005
99.96451558966444, 7931.247204406267
149.86002151696277, 1483.2472320884565
199.9382358455035, 820.028197797188
```