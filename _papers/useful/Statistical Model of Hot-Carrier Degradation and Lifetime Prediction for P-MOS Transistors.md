---
title: P-MOS晶体管的热载流子退化和寿命预测的统计模型
id: SMOHCDALPFPMT
abstract: 利用统计学方法，从幂律、Weibull、对数模型中选择拟合效果最好的模型，并以此建立了电路退化模型，并用之预测寿命。器件尺寸为 1.5μm，本文对热载流子的解释为雪崩电离，虽然较为老旧，但统计方法不失为一种万金油。
link: https://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.113.7225&rep=rep1&type=pdf
---

# Statistical Model of Hot-Carrier Degradation and Lifetime Prediction for P-MOS Transistors

## Statistical Methods

三种统计方法：

- power method: $F(t)=a\cdot t^b$
- Weibull method: $F(t)=1-\exp[-(t/a)^b]$
- logarithmic method: $F(t)=a+b\ln(t)$

其中，$t=$ time，$a=$ scale parameter，$b=$ shape parameter

利用最小平方法求得模型参数。公式如下：

### Exponential Distribution with the Least Squares Method

$$
y=Ae^{Bx}
$$

$$
a=\frac{\sum \ln y_i \sum x_i^2-\sum x_i \sum x_i \ln y_i}{n\sum x_i^2 -(\sum x_i)^2}
$$

$$
b=\frac{n\sum x_i\ln y_i - \sum x_i \sum \ln y_i}{n\sum x_i^2-(\sum x_i)^2}
$$

$B\equiv b$ and $A \equiv \exp(a)$

### Logarithmic Distribution with the Least Squares Method

$$
y=a+b\ln x
$$

$$
b=\frac{n\sum (y_i \ln x_i)-\sum y_i \sum \ln x_i}{n\sum (\ln x_i)^2-(\sum \ln x_i)^2}
$$

$$
a=\frac{\sum y_i - b\sum (\ln x_i)}{n}
$$

### Power Distribution withthe Least Squares Method

$$
y=Ax^B
$$

$$
b=\frac{n\sum(\ln x_i \ln y_i)-\sum(\ln x_i) \sum (\ln y_i)}{n\sum(ln x_i)^2-(\sum ln x_i)^2}
$$

$$
a=\frac{\sum (\ln y_i)-b\sum (\ln x_i)}{n}
$$

$B\equiv b$ and $A\equiv e^a$

## Numerical Results

|Investigation method|Obtained function|
|------|-------|
|Power |$\% I_D(t,L) = k\cdot L ^m\cdot t ^n$|
|Logarithmic|$\% I_D(t,L) = k \cdot L^m+ n\cdot \ln(t)$|
|Weibull |$\% I_D(t,L) = 1-\exp(-(t/k\cdot L^m)^n$|