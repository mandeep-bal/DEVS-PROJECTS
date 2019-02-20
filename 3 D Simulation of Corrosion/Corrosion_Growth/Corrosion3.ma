[top]
components : Corrosion3

[Corrosion3]
type : cell
dim : (20,20,2)
delay : inertial
defaultDelayTime : 0
border : nowrapped 
neighbors : Corrosion(0,-1,0)   Corrosion(0,0,0)   Corrosion(0,1,0)
neighbors : Corrosion(-1,-1,0)  Corrosion(-1,0,0)  Corrosion(-1,1,0)
neighbors : Corrosion(0,-1,1)   Corrosion(0,0,1)   Corrosion(0,1,1) 
neighbors : Corrosion(-1,-1,1)  Corrosion(-1,0,1)  Corrosion(-1,1,1)
initialvalue : 0.0
initialcellsvalue : Corrosion3.val
localtransition : Corrosion-rule

% When the  metal gets fully exposed to water molecules
[Corrosion-rule]
rule : {(-1,0,0)+(1.199557)} {(1.199557)*60000} {(0,0,0)=0 and (-1,0,0)!=? and 0<(-1,0,0)}
rule : {(-1,-1,0)+(2.9841534)} {(2.9841534)*60000} {(0,0,0)=0 and (-1,-1,0)!=? and 0<(-1,-1,0)}
rule : {(-1,1,0)+(3.3755746)} {(3.3755746)*60000}  {(0,0,0)=0 and (-1,1,0)!=? and 0<(-1,1,0)}
rule : {(0,-1,0)+(4.220230)} {(4.220230)*60000} {(0,0,0)=0 and (0,-1,0)!=? and 0<(0,-1,0)}
rule : {(0,1,0)+(4.6118515)} {(4.6118515)*60000} {(0,0,0)=0 and (0,1,0)!=? and 0<(0,1,0)}
rule : {(-1,0,1)+(1.199557)} {(1.199557)*60000} {(0,0,1)=0 and (-1,0,1)!=? and 0<(-1,0,1)}
rule : {(-1,-1,1)+(2.9841534)} {(2.9841534)*60000} {(0,0,1)=0 and (-1,-1,1)!=? and 0<(-1,-1,1)}
rule : {(-1,1,1)+(3.3755746)} {(3.3755746)*60000} {(0,0,1)=0 and (-1,1,1)!=? and 0<(-1,1,1)}
rule : {(0,-1,1)+(4.220230)} {(4.220230)*60000} {(0,0,1)=0 and (0,-1,1)!=? and 0<(0,-1,1)}
rule : {(0,1,1)+(4.6118515)} {(4.6118515)*60000} {(0,0,1)=0 and (0,1,1)!=? and 0<(0,1,1)}
rule : {(0,0,0)} 0 { t }

