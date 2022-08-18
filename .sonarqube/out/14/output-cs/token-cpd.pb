ÿL
qC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Threading\UnityThreadUtilsInternal.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Threading '
.' (
Internal( 0
{ 
class 	$
UnityThreadUtilsInternal
 "
:# $
IUnityThreadUtils% 6
{ 
public		 
static		 
Task		 
	PostAsync		 $
(		$ %
Action		% +
action		, 2
)		2 3
{

 	
return 
Task 
. 
Factory 
.  
StartNew  (
(( )
action 
, 
CancellationToken )
.) *
None* .
,. /
TaskCreationOptions0 C
.C D
NoneD H
,H I
UnityThreadUtilsJ Z
.Z [ 
UnityThreadScheduler[ o
)o p
;p q
} 	
public 
static 
Task 
	PostAsync $
($ %
Action% +
<+ ,
object, 2
>2 3
action4 :
,: ;
object< B
stateC H
)H I
{ 	
return 
Task 
. 
Factory 
.  
StartNew  (
(( )
action 
, 
state 
, 
CancellationToken 0
.0 1
None1 5
,5 6
TaskCreationOptions7 J
.J K
NoneK O
,O P
UnityThreadUtils  
.  ! 
UnityThreadScheduler! 5
)5 6
;6 7
} 	
public 
static 
Task 
< 
T 
> 
	PostAsync '
<' (
T( )
>) *
(* +
Func+ /
</ 0
T0 1
>1 2
action3 9
)9 :
{ 	
return 
Task 
< 
T 
> 
. 
Factory "
." #
StartNew# +
(+ ,
action 
, 
CancellationToken )
.) *
None* .
,. /
TaskCreationOptions0 C
.C D
NoneD H
,H I
UnityThreadUtilsJ Z
.Z [ 
UnityThreadScheduler[ o
)o p
;p q
} 	
public 
static 
Task 
< 
T 
> 
	PostAsync '
<' (
T( )
>) *
(* +
Func+ /
</ 0
object0 6
,6 7
T8 9
>9 :
action; A
,A B
objectC I
stateJ O
)O P
{ 	
return 
Task 
< 
T 
> 
. 
Factory "
." #
StartNew# +
(+ ,
action 
, 
state 
, 
CancellationToken 0
.0 1
None1 5
,5 6
TaskCreationOptions7 J
.J K
NoneK O
,O P
UnityThreadUtils    
.    ! 
UnityThreadScheduler  ! 5
)  5 6
;  6 7
}!! 	
public## 
static## 
void## 
Send## 
(##  
Action##  &
action##' -
)##- .
{$$ 	
if%% 
(%% 
UnityThreadUtils%%  
.%%  !"
IsRunningOnUnityThread%%! 7
)%%7 8
{&& 
action'' 
('' 
)'' 
;'' 
return(( 
;(( 
})) 
	PostAsync++ 
(++ 
action++ 
)++ 
.++ 
Wait++ "
(++" #
)++# $
;++$ %
},, 	
public.. 
static.. 
void.. 
Send.. 
(..  
Action..  &
<..& '
object..' -
>..- .
action../ 5
,..5 6
object..7 =
state..> C
)..C D
{// 	
if00 
(00 
UnityThreadUtils00  
.00  !"
IsRunningOnUnityThread00! 7
)007 8
{11 
action22 
(22 
state22 
)22 
;22 
return33 
;33 
}44 
	PostAsync66 
(66 
action66 
,66 
state66 #
)66# $
.66$ %
Wait66% )
(66) *
)66* +
;66+ ,
}77 	
public99 
static99 
T99 
Send99 
<99 
T99 
>99 
(99  
Func99  $
<99$ %
T99% &
>99& '
action99( .
)99. /
{:: 	
if;; 
(;; 
UnityThreadUtils;;  
.;;  !"
IsRunningOnUnityThread;;! 7
);;7 8
{<< 
return== 
action== 
(== 
)== 
;==  
}>> 
var@@ 
task@@ 
=@@ 
	PostAsync@@  
(@@  !
action@@! '
)@@' (
;@@( )
taskAA 
.AA 
WaitAA 
(AA 
)AA 
;AA 
returnBB 
taskBB 
.BB 
ResultBB 
;BB 
}CC 	
publicEE 
staticEE 
TEE 
SendEE 
<EE 
TEE 
>EE 
(EE  
FuncEE  $
<EE$ %
objectEE% +
,EE+ ,
TEE- .
>EE. /
actionEE0 6
,EE6 7
objectEE8 >
stateEE? D
)EED E
{FF 	
ifGG 
(GG 
UnityThreadUtilsGG  
.GG  !"
IsRunningOnUnityThreadGG! 7
)GG7 8
{HH 
returnII 
actionII 
(II 
stateII #
)II# $
;II$ %
}JJ 
varLL 
taskLL 
=LL 
	PostAsyncLL  
(LL  !
actionLL! '
,LL' (
stateLL) .
)LL. /
;LL/ 0
taskMM 
.MM 
WaitMM 
(MM 
)MM 
;MM 
returnNN 
taskNN 
.NN 
ResultNN 
;NN 
}OO 	
boolQQ 
IUnityThreadUtilsQQ 
.QQ "
IsRunningOnUnityThreadQQ 5
=>QQ6 8
UnityThreadUtilsQQ9 I
.QQI J"
IsRunningOnUnityThreadQQJ `
;QQ` a
TaskRR 
IUnityThreadUtilsRR 
.RR 
	PostAsyncRR (
(RR( )
ActionRR) /
actionRR0 6
)RR6 7
=>RR8 :
	PostAsyncRR; D
(RRD E
actionRRE K
)RRK L
;RRL M
TaskSS 
IUnityThreadUtilsSS 
.SS 
	PostAsyncSS (
(SS( )
ActionSS) /
<SS/ 0
objectSS0 6
>SS6 7
actionSS8 >
,SS> ?
objectSS@ F
stateSSG L
)SSL M
=>SSN P
	PostAsyncSSQ Z
(SSZ [
actionSS[ a
,SSa b
stateSSc h
)SSh i
;SSi j
TaskTT 
<TT 
TTT 
>TT 
IUnityThreadUtilsTT !
.TT! "
	PostAsyncTT" +
<TT+ ,
TTT, -
>TT- .
(TT. /
FuncTT/ 3
<TT3 4
TTT4 5
>TT5 6
actionTT7 =
)TT= >
=>TT? A
	PostAsyncTTB K
(TTK L
actionTTL R
)TTR S
;TTS T
TaskUU 
<UU 
TUU 
>UU 
IUnityThreadUtilsUU !
.UU! "
	PostAsyncUU" +
<UU+ ,
TUU, -
>UU- .
(UU. /
FuncUU/ 3
<UU3 4
objectUU4 :
,UU: ;
TUU< =
>UU= >
actionUU? E
,UUE F
objectUUG M
stateUUN S
)UUS T
=>UUU W
	PostAsyncUUX a
(UUa b
actionUUb h
,UUh i
stateUUj o
)UUo p
;UUp q
voidVV 
IUnityThreadUtilsVV 
.VV 
SendVV #
(VV# $
ActionVV$ *
actionVV+ 1
)VV1 2
=>VV3 5
SendVV6 :
(VV: ;
actionVV; A
)VVA B
;VVB C
voidWW 
IUnityThreadUtilsWW 
.WW 
SendWW #
(WW# $
ActionWW$ *
<WW* +
objectWW+ 1
>WW1 2
actionWW3 9
,WW9 :
objectWW; A
stateWWB G
)WWG H
=>WWI K
SendWWL P
(WWP Q
actionWWQ W
,WWW X
stateWWY ^
)WW^ _
;WW_ `
TXX 	
IUnityThreadUtilsXX
 
.XX 
SendXX  
<XX  !
TXX! "
>XX" #
(XX# $
FuncXX$ (
<XX( )
TXX) *
>XX* +
actionXX, 2
)XX2 3
=>XX4 6
SendXX7 ;
(XX; <
actionXX< B
)XXB C
;XXC D
TYY 	
IUnityThreadUtilsYY
 
.YY 
SendYY  
<YY  !
TYY! "
>YY" #
(YY# $
FuncYY$ (
<YY( )
objectYY) /
,YY/ 0
TYY1 2
>YY2 3
actionYY4 :
,YY: ;
objectYY< B
stateYYC H
)YYH I
=>YYJ L
SendYYM Q
(YYQ R
actionYYR X
,YYX Y
stateYYZ _
)YY_ `
;YY` a
}ZZ 
}[[ Þ
eC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Threading\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str @
)@ A
]A B
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 9
)9 :
]: ;
[		 
assembly		 	
:			 

InternalsVisibleTo		 
(		 
$str		 ?
)		? @
]		@ A
[

 
assembly

 	
:

	 

InternalsVisibleTo

 
(

 
$str

 C
)

C D
]

D E
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :