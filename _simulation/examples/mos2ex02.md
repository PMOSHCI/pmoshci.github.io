热电子注入

```python
# (c) Silvaco Inc., 2019
go atlas 
#
# 定义网格

mesh    
x.m loc=0.0   spacing=0.1
x.m loc=0.5   spacing=0.1 
x.m loc=0.65   spacing=0.025 
x.m loc=0.75  spacing=0.025
x.m loc=0.9   spacing=0.005
x.m loc=1.2   spacing=0.1
x.m loc=1.5   spacing=0.1

y.m loc=-0.02 spacing=0.005
y.m loc=0.0   spacing=0.001
y.m loc=0.1  spacing=0.025
y.m loc=0.2  spacing=0.05
y.m loc=0.4   spacing=0.05
y.m loc=1.0   spacing=0.2
y.m loc=2.0   spacing=0.5

# 定义区域、电极
region num=1 y.min=0 silicon
region num=2 y.max=0.0 oxide
elect num=1 name=gate x.min=0.5 length=0.5 y.min=-0.02 y.max=-0.02
elect num=2 name=source left    length=0.2 y.min=0.0 y.max=0.0
elect num=3 name=drain  right   length=0.2 y.min=0.0 y.max=0.0
elect num=4 name=substrate substrate
# 掺杂
doping uniform p.type conc=2.e16
doping gauss p.type conc=1.e17 char=0.1
doping gauss n.type conc=1.e20 x.right=0.5 junc=0.2 ratio=0.6
doping gauss n.type conc=1.e20 x.left=1.0 junc=0.2 ratio=0.6

#保存结构
save outfile=mos2ex02_0.str

### 应力前测试
go atlas
# IMPORT THE MESH
mesh inf=mos2ex02_0.str master.in
# 接触材料和仿真模型
contact num=1 n.polysilicon
interf qf=5.e10
models temp=300 print srh auger cvt  

# 求解
solve init 
save outf=mos2ex02_1.str 
tonyplot mos2ex02_1.str -set mos2ex02_1.set

method newton trap carr=1 electron
solve prev
solve vdrain=0.1
log outf=mos2ex02_2.log
solve vgate=0.5 vstep=0.25 name=gate vfinal=6.

### 施加应力
go atlas
# IMPORT DEVICE STRUCURE
mesh inf=mos2ex02_0.str master.in

# MATERIAL CONTACT INTERFACE AND MODELS
contact num=1 n.polysilicon
interf qf=5.e10
models temp=300 print srh cvt hei hcte.el devdeg.e nearflg ig.elinf=9.4e-7
#impact  selb
degradation f.nta=mos2ex02_devdeg.nta sigmae=2.e-15 sigmah=1.e-17

 
# SOLUTIONS
solve init
method newton trap carr=1
solve
solve vgate=1.5
solve vdrain=0.1
solve vdrain=0.2
solve vdrain=0.5 vstep=0.5 name=drain vfinal=3
solve vdrain=3.3

method  newton trap quasistatic climit=1e-5 carr=2 dt.max=1000
log outf=mos2ex02_3.log
output devdeg
solve tstep=1e-5 tstop=0.01 
save outf=mos2ex02_0_01s.str
solve tstep=1e-3 tstop=0.1 
save outf=mos2ex02_0_1s.str
solve tstep=1e-2 tstop=1 
save outf=mos2ex02_1s.str
solve tstep=1e-2 tstop=1000 
save outf=mos2ex02_1000s.str
solve tstep=1e3 tstop=10000 
save outf=mos2ex02_10000s.str

### STRESSED TEST AT 0.01 s
go atlas
# IMPORT MESH
mesh inf=mos2ex02_0_01s.str master.in

# MATERIAL CONTACT INTERFACE AND MODELS
contact num=1 n.polysilicon
interf qf=5.e10
models temp=300 print srh auger cvt  

# SOLUTIONS
load infile=mos2ex02_0_01s.str master
solve init 
method newton trap carr=1 electron
solve
solve vdrain=0.1

log outf=mos2ex02_0_01s.log
solve vgate=0.5 vstep=0.25 name=gate vfinal=6.

### STRESSED TEST AT 0.1 s
go atlas
# IMPORT MESH
mesh inf=mos2ex02_0_1s.str master.in

# MATERIAL CONTACT INTERFACE AND MODELS
contact num=1 n.polysilicon
interf qf=5.e10
models temp=300 print srh auger cvt  

# SOLUTIONS
load infile=mos2ex02_0_1s.str master
solve init 
method newton trap carr=1 electron
solve
solve vdrain=0.1

log outf=mos2ex02_0_1s.log
solve vgate=0.5 vstep=0.25 name=gate vfinal=6.

### STRESSED TEST AT 1 s
go atlas
# IMPORT MESH
mesh inf=mos2ex02_1s.str master.in

# MATERIAL CONTACT INTERFACE AND MODELS
contact num=1 n.polysilicon
interf qf=5.e10
models temp=300 print srh auger cvt  

# SOLUTIONS
load infile=mos2ex02_1s.str master
solve init 
method newton trap carr=1 electron
solve
solve vdrain=0.1

log outf=mos2ex02_1s.log
solve vgate=0.5 vstep=0.25 name=gate vfinal=6.

### STRESSED TEST AT 1000 s
go atlas
# IMPORT MESH
mesh inf=mos2ex02_1000s.str master.in

# MATERIAL CONTACT INTERFACE AND MODELS
contact num=1 n.polysilicon
interf qf=5.e10
models temp=300 print srh auger cvt  

# SOLUTIONS
load infile=mos2ex02_1000s.str master
solve init 
method newton trap carr=1 electron
solve
solve vdrain=0.1

log outf=mos2ex02_1000s.log
solve vgate=0.5 vstep=0.25 name=gate vfinal=6.

### STRESSED TEST AT 10000 s
go atlas
# IMPORT MESH
mesh inf=mos2ex02_10000s.str master.in

# MATERIAL CONTACT INTERFACE AND MODELS
contact num=1 n.polysilicon
interf qf=5.e10
models temp=300 print srh auger cvt  

# SOLUTIONS
load infile=mos2ex02_10000s.str master
solve init 
method newton trap carr=1 electron
solve
solve vdrain=0.1

log outf=mos2ex02_10000s.log
solve vgate=0.5 vstep=0.25 name=gate vfinal=6.

tonyplot -overlay mos2ex02_10000s.log mos2ex02_1000s.log mos2ex02_1s.log mos2ex02_0_1s.log mos2ex02_0_01s.log mos2ex02_2.log -set mos2ex02_log.set

quit
```