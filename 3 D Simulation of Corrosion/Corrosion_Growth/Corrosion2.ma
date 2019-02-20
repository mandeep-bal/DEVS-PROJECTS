[top]
components : Corrosion2

[Corrosion2]
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
initialcellsvalue : Corrosion2.val
localtransition : Corrosion-rule
zone : insulation { (3,0,0)..(17,1,0) } 
zone : insulation { (3,0,1)..(17,1,1) }
zone : insulation { (3,2,0)..(4,8,0) }
zone : insulation { (3,2,1)..(4,8,1) }
zone : insulation { (3,11,0)..(4,17,0) } 
zone : insulation { (3,11,1)..(4,17,1) } 
zone : insulation { (18,0,0)..(19,19,0) } 
zone : insulation { (18,0,1)..(19,19,1) } 
zone : insulation { (3,18,0)..(17,19,0) }
zone : insulation { (3,18,1)..(17,19,1) }

%When the metal surface is coated with insualting material but due to damage i insulation, metal gets in contact with the water molecules and corrosion starts

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

[insulation]
rule : {(0,0,0)} 1 {undefCount >= 1}
rule : {(0,0,0)} 1 {t}