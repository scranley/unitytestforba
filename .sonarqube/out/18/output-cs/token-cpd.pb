�d
hC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Scheduler\ActionScheduler.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Scheduler '
.' (
Internal( 0
{		 
class

 	
ScheduledInvocation


 
:

 
IComparable

  +
<

+ ,
ScheduledInvocation

, ?
>

? @
{ 
public 
Action 
Action 
; 
public 
DateTime 
InvocationTime &
;& '
public 
long 
ActionId 
; 
public 
int 
	CompareTo 
( 
ScheduledInvocation 0
that1 5
)5 6
{ 	
var 
compareResult 
= 
InvocationTime  .
.. /
	CompareTo/ 8
(8 9
that9 =
.= >
InvocationTime> L
)L M
;M N
if 
( 
compareResult 
==  
$num! "
)" #
{ 
compareResult 
= 
ActionId  (
.( )
	CompareTo) 2
(2 3
that3 7
.7 8
ActionId8 @
)@ A
;A B
} 
return 
compareResult  
;  !
} 	
} 
class 	
ActionScheduler
 
: 
IActionScheduler ,
{ 
readonly   
ITimeProvider   
m_TimeProvider   -
;  - .
readonly"" 
MinimumBinaryHeap"" "
<""" #
ScheduledInvocation""# 6
>""6 7
m_ScheduledActions""8 J
=## 
new## 
MinimumBinaryHeap## #
<### $
ScheduledInvocation##$ 7
>##7 8
(##8 9
)##9 :
;##: ;
readonly%% 

Dictionary%% 
<%% 
long%%  
,%%  !
ScheduledInvocation%%" 5
>%%5 6&
m_IdScheduledInvocationMap%%7 Q
=&& 
new&& 

Dictionary&& 
<&& 
long&& !
,&&! "
ScheduledInvocation&&# 6
>&&6 7
(&&7 8
)&&8 9
;&&9 :
const(( 
long(( 
k_MinimumIdValue(( #
=(($ %
$num((& '
;((' (
internal** 
readonly** 
PlayerLoopSystem** *
SchedulerLoopSystem**+ >
;**> ?
long,, 
m_NextId,, 
=,, 
k_MinimumIdValue,, (
;,,( )
public.. 
ActionScheduler.. 
(.. 
)..  
:// 
this// 
(// 
new// 
UtcTimeProvider// &
(//& '
)//' (
)//( )
{//* +
}//+ ,
public11 
ActionScheduler11 
(11 
ITimeProvider11 ,
timeProvider11- 9
)119 :
{22 	
m_TimeProvider33 
=33 
timeProvider33 )
;33) *
SchedulerLoopSystem44 
=44  !
new44" %
PlayerLoopSystem44& 6
{55 
type66 
=66 
typeof66 
(66 
ActionScheduler66 -
)66- .
,66. /
updateDelegate77 
=77  !
ExecuteExpiredActions77! 6
}88 
;88 
}99 	
public;; 
int;; !
ScheduledActionsCount;; (
=>;;) +
m_ScheduledActions;;, >
.;;> ?
Count;;? D
;;;D E
public== 
long== 
ScheduleAction== "
(==" #
[==# $
NotNull==$ +
]==+ ,
Action==- 3
action==4 :
,==: ;
double==< B
delaySeconds==C O
===P Q
$num==R S
)==S T
{>> 	
if?? 
(?? 
delaySeconds?? 
<?? 
$num??  
)??  !
{@@ 
throwAA 
newAA 
ArgumentExceptionAA +
(AA+ ,
$strAA, N
)AAN O
;AAO P
}BB 
ifDD 
(DD 
actionDD 
isDD 
nullDD 
)DD 
{EE 
throwFF 
newFF !
ArgumentNullExceptionFF /
(FF/ 0
nameofFF0 6
(FF6 7
actionFF7 =
)FF= >
)FF> ?
;FF? @
}GG 
varII 
scheduledInvocationII #
=II$ %
newII& )
ScheduledInvocationII* =
{JJ 
ActionKK 
=KK 
actionKK 
,KK  
InvocationTimeLL 
=LL  
m_TimeProviderLL! /
.LL/ 0
NowLL0 3
.LL3 4

AddSecondsLL4 >
(LL> ?
delaySecondsLL? K
)LLK L
,LLL M
ActionIdMM 
=MM 
m_NextIdMM #
++MM# %
}NN 
;NN 
ifPP 
(PP 
m_NextIdPP 
<PP 
k_MinimumIdValuePP +
)PP+ ,
{QQ 
m_NextIdRR 
=RR 
k_MinimumIdValueRR +
;RR+ ,
}SS 
m_ScheduledActionsUU 
.UU 
InsertUU %
(UU% &
scheduledInvocationUU& 9
)UU9 :
;UU: ;&
m_IdScheduledInvocationMapVV &
.VV& '
AddVV' *
(VV* +
scheduledInvocationVV+ >
.VV> ?
ActionIdVV? G
,VVG H
scheduledInvocationVVI \
)VV\ ]
;VV] ^
returnXX 
scheduledInvocationXX &
.XX& '
ActionIdXX' /
;XX/ 0
}YY 	
public[[ 
void[[ 
CancelAction[[  
([[  !
long[[! %
actionId[[& .
)[[. /
{\\ 	
if]] 
(]] 
!]] &
m_IdScheduledInvocationMap]] +
.]]+ ,
ContainsKey]], 7
(]]7 8
actionId]]8 @
)]]@ A
)]]A B
{^^ 
return__ 
;__ 
}`` 
varbb 
scheduledInvocationbb #
=bb$ %&
m_IdScheduledInvocationMapbb& @
[bb@ A
actionIdbbA I
]bbI J
;bbJ K
m_ScheduledActionscc 
.cc 
Removecc %
(cc% &
scheduledInvocationcc& 9
)cc9 :
;cc: ;&
m_IdScheduledInvocationMapdd &
.dd& '
Removedd' -
(dd- .
scheduledInvocationdd. A
.ddA B
ActionIdddB J
)ddJ K
;ddK L
}ee 	
internalgg 
voidgg !
ExecuteExpiredActionsgg +
(gg+ ,
)gg, -
{hh 	
whileii 
(ii 
m_ScheduledActionsii %
.ii% &
Countii& +
>ii, -
$numii. /
&&jj 
m_ScheduledActionsjj (
.jj( )
Minjj) ,
.jj, -
InvocationTimejj- ;
<=jj< >
m_TimeProviderjj? M
.jjM N
NowjjN Q
)jjQ R
{kk 
varll 
scheduledInvocationll '
=ll( )
m_ScheduledActionsll* <
.ll< =

ExtractMinll= G
(llG H
)llH I
;llI J&
m_IdScheduledInvocationMapmm *
.mm* +
Removemm+ 1
(mm1 2
scheduledInvocationmm2 E
.mmE F
ActionIdmmF N
)mmN O
;mmO P
trynn 
{oo 
scheduledInvocationpp '
.pp' (
Actionpp( .
(pp. /
)pp/ 0
;pp0 1
}qq 
catchrr 
(rr 
	Exceptionrr  
err! "
)rr" #
{ss 

CoreLoggertt 
.tt 
LogExceptiontt +
(tt+ ,
ett, -
)tt- .
;tt. /
}uu 
}vv 
}ww 	
[zz 	)
RuntimeInitializeOnLoadMethodzz	 &
(zz& '%
RuntimeInitializeLoadTypezz' @
.zz@ A!
SubsystemRegistrationzzA V
)zzV W
]zzW X
static{{ 
void{{ .
"ClearActionSchedulerFromPlayerLoop{{ 6
({{6 7
){{7 8
{|| 	
var}} 
currentPlayerLoop}} !
=}}" #

PlayerLoop}}$ .
.}}. / 
GetCurrentPlayerLoop}}/ C
(}}C D
)}}D E
;}}E F
var~~ 
currentSubSystems~~ !
=~~" #
new~~$ '
List~~( ,
<~~, -
PlayerLoopSystem~~- =
>~~= >
(~~> ?
currentPlayerLoop~~? P
.~~P Q
subSystemList~~Q ^
)~~^ _
;~~_ `
for 
( 
var 
i 
= 
currentSubSystems *
.* +
Count+ 0
-1 2
$num3 4
;4 5
i6 7
>=8 :
$num; <
;< =
i> ?
--? A
)A B
{
�� 
if
�� 
(
�� 
currentSubSystems
�� %
[
��% &
i
��& '
]
��' (
.
��( )
type
��) -
==
��. 0
typeof
��1 7
(
��7 8
ActionScheduler
��8 G
)
��G H
)
��H I
{
�� 
currentSubSystems
�� %
.
��% &
RemoveAt
��& .
(
��. /
i
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� !
UpdateSubSystemList
�� 
(
��  
currentSubSystems
��  1
,
��1 2
currentPlayerLoop
��3 D
)
��D E
;
��E F
}
�� 	
static
�� 
void
�� !
UpdateSubSystemList
�� '
(
��' (
List
��( ,
<
��, -
PlayerLoopSystem
��- =
>
��= >
subSystemList
��? L
,
��L M
PlayerLoopSystem
��N ^
currentPlayerLoop
��_ p
)
��p q
{
�� 	
currentPlayerLoop
�� 
.
�� 
subSystemList
�� +
=
��, -
subSystemList
��. ;
.
��; <
ToArray
��< C
(
��C D
)
��D E
;
��E F

PlayerLoop
�� 
.
�� 
SetPlayerLoop
�� $
(
��$ %
currentPlayerLoop
��% 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
void
�� "
JoinPlayerLoopSystem
�� (
(
��( )
)
��) *
{
�� 	
var
�� 
currentPlayerLoop
�� !
=
��" #

PlayerLoop
��$ .
.
��. /"
GetCurrentPlayerLoop
��/ C
(
��C D
)
��D E
;
��E F
var
�� 
currentSubSystems
�� !
=
��" #
new
��$ '
List
��( ,
<
��, -
PlayerLoopSystem
��- =
>
��= >
(
��> ?
currentPlayerLoop
��? P
.
��P Q
subSystemList
��Q ^
)
��^ _
;
��_ `
if
�� 
(
�� 
!
�� 
currentSubSystems
�� "
.
��" #
Contains
��# +
(
��+ ,!
SchedulerLoopSystem
��, ?
)
��? @
)
��@ A
{
�� 
currentSubSystems
�� !
.
��! "
Add
��" %
(
��% &!
SchedulerLoopSystem
��& 9
)
��9 :
;
��: ;!
UpdateSubSystemList
�� #
(
��# $
currentSubSystems
��$ 5
,
��5 6
currentPlayerLoop
��7 H
)
��H I
;
��I J
}
�� 
}
�� 	
public
�� 
void
�� "
QuitPlayerLoopSystem
�� (
(
��( )
)
��) *
{
�� 	
var
�� 
currentPlayerLoop
�� !
=
��" #

PlayerLoop
��$ .
.
��. /"
GetCurrentPlayerLoop
��/ C
(
��C D
)
��D E
;
��E F
var
�� 
currentSubSystems
�� !
=
��" #
new
��$ '
List
��( ,
<
��, -
PlayerLoopSystem
��- =
>
��= >
(
��> ?
currentPlayerLoop
��? P
.
��P Q
subSystemList
��Q ^
)
��^ _
;
��_ `
currentSubSystems
�� 
.
�� 
Remove
�� $
(
��$ %!
SchedulerLoopSystem
��% 8
)
��8 9
;
��9 :!
UpdateSubSystemList
�� 
(
��  
currentSubSystems
��  1
,
��1 2
currentPlayerLoop
��3 D
)
��D E
;
��E F
}
�� 	
}
�� 
}�� �
eC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Scheduler\AssemblyInfo.cs
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
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ?
)? @
]@ A
[		 
assembly		 	
:			 

InternalsVisibleTo		 
(		 
$str		 C
)		C D
]		D E
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
 I
)

I J
]

J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :�
sC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Scheduler\TimeProvider\ITimeProvider.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Scheduler '
.' (
Internal( 0
{ 
	interface 
ITimeProvider 
{ 
DateTime 
Now 
{ 
get 
; 
} 
} 
}		 �
uC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Scheduler\TimeProvider\UtcTimeProvider.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Scheduler '
.' (
Internal( 0
{ 
class 	
UtcTimeProvider
 
: 
ITimeProvider )
{ 
public 
DateTime 
Now 
=> 
DateTime '
.' (
UtcNow( .
;. /
} 
}		 �]
cC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Scheduler\BinaryHeap.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Scheduler '
.' (
Internal( 0
{ 
class 	
MinimumBinaryHeap
 
< 
T 
> 
where $
T% &
:' (
IComparable) 4
<4 5
T5 6
>6 7
{ 
const 
float 
k_IncreaseFactor $
=% &
$num' +
;+ ,
const		 
float		 
k_DecreaseFactor		 $
=		% &
$num		' +
;		+ ,
readonly 
int 
m_MinimumCapacity &
;& '
T 	
[	 

]
 
m_HeapArray 
; 
int 
m_Count 
; 
public 
int 
Count 
=> 
m_Count #
;# $
public 
T 
Min 
=> 
m_HeapArray #
[# $
$num$ %
]% &
;& '
public 
MinimumBinaryHeap  
(  !
int! $
capacity% -
=. /
$num0 2
)2 3
{ 	
if 
( 
capacity 
<= 
$num 
) 
{ 
throw 
new 
ArgumentException +
(+ ,
$str, J
)J K
;K L
} 
m_MinimumCapacity 
= 
capacity  (
;( )
m_HeapArray 
= 
new 
T 
[  
capacity  (
]( )
;) *
m_Count 
= 
$num 
; 
} 	
public 
void 
Insert 
( 
T 
data !
)! "
{ 	(
IncreaseHeapCapacityWhenFull (
(( )
)) *
;* +
var 
dataPos 
= 
m_Count !
;! "
m_HeapArray   
[   
m_Count   
]    
=  ! "
data  # '
;  ' (
m_Count!! 
++!! 
;!! 
while"" 
("" 
dataPos"" 
!="" 
$num"" 
&&""  "
m_HeapArray""# .
["". /
dataPos""/ 6
]""6 7
.""7 8
	CompareTo""8 A
(""A B
m_HeapArray""B M
[""M N
Parent""N T
(""T U
dataPos""U \
)""\ ]
]""] ^
)""^ _
<""` a
$num""b c
)""c d
{## 
Swap$$ 
($$ 
ref$$ 
m_HeapArray$$ $
[$$$ %
dataPos$$% ,
]$$, -
,$$- .
ref$$/ 2
m_HeapArray$$3 >
[$$> ?
Parent$$? E
($$E F
dataPos$$F M
)$$M N
]$$N O
)$$O P
;$$P Q
dataPos%% 
=%% 
Parent%%  
(%%  !
dataPos%%! (
)%%( )
;%%) *
}&& 
}'' 	
void)) (
IncreaseHeapCapacityWhenFull)) )
())) *
)))* +
{** 	
if++ 
(++ 
m_Count++ 
==++ 
m_HeapArray++ &
.++& '
Length++' -
)++- .
{,, 
int-- 
newCapacity-- 
=--  !
(--" #
int--# &
)--& '
Math--' +
.--+ ,
Ceiling--, 3
(--3 4
Count--4 9
*--: ;
k_IncreaseFactor--< L
)--L M
;--M N
T.. 
[.. 
].. 
newHeapArray..  
=..! "
new..# &
T..' (
[..( )
newCapacity..) 4
]..4 5
;..5 6
Array// 
.// 
Copy// 
(// 
m_HeapArray// &
,//& '
newHeapArray//( 4
,//4 5
m_Count//6 =
)//= >
;//> ?
m_HeapArray00 
=00 
newHeapArray00 *
;00* +
}11 
}22 	
public44 
void44 
Remove44 
(44 
T44 
data44 !
)44! "
{55 	
var66 
key66 
=66 
GetKey66 
(66 
data66 !
)66! "
;66" #
while77 
(77 
key77 
!=77 
$num77 
)77 
{88 
Swap99 
(99 
ref99 
m_HeapArray99 $
[99$ %
key99% (
]99( )
,99) *
ref:: 
m_HeapArray:: #
[::# $
Parent::$ *
(::* +
key::+ .
)::. /
]::/ 0
)::0 1
;::1 2
key;; 
=;; 
Parent;; 
(;; 
key;;  
);;  !
;;;! "
}<< 

ExtractMin== 
(== 
)== 
;== 
}>> 	
public@@ 
T@@ 

ExtractMin@@ 
(@@ 
)@@ 
{AA 	
ifBB 
(BB 
m_CountBB 
<=BB 
$numBB 
)BB 
{CC 
throwDD 
newDD %
InvalidOperationExceptionDD 3
(DD3 4
$strDD4 ^
)DD^ _
;DD_ `
}EE 
varFF 
dataFF 
=FF 
m_HeapArrayFF "
[FF" #
$numFF# $
]FF$ %
;FF% &
ifHH 
(HH 
m_CountHH 
==HH 
$numHH 
)HH 
{II 
m_CountJJ 
--JJ 
;JJ 
m_HeapArrayKK 
[KK 
$numKK 
]KK 
=KK  
defaultKK! (
;KK( )
returnLL 
dataLL 
;LL 
}MM 
m_CountOO 
--OO 
;OO 
m_HeapArrayPP 
[PP 
$numPP 
]PP 
=PP 
m_HeapArrayPP (
[PP( )
m_CountPP) 0
]PP0 1
;PP1 2
m_HeapArrayQQ 
[QQ 
m_CountQQ 
]QQ  
=QQ! "
defaultQQ# *
;QQ* +

MinHeapifyRR 
(RR 
$numRR 
)RR 
;RR )
DecreaseHeapCapacityWhenSpareSS )
(SS) *
)SS* +
;SS+ ,
returnTT 
dataTT 
;TT 
}UU 	
voidWW )
DecreaseHeapCapacityWhenSpareWW *
(WW* +
)WW+ ,
{XX 	
ifYY 
(YY 
m_CountYY 
>YY 
m_MinimumCapacityYY +
&&YY, .
m_CountYY/ 6
<YY7 8
m_HeapArrayYY9 D
.YYD E
LengthYYE K
/YYL M
k_DecreaseFactorYYN ^
)YY^ _
{ZZ 
T[[ 
[[[ 
][[ 
newHeapArray[[  
=[[! "
new[[# &
T[[' (
[[[( )
m_Count[[) 0
][[0 1
;[[1 2
Array\\ 
.\\ 
Copy\\ 
(\\ 
m_HeapArray\\ &
,\\& '
newHeapArray\\( 4
,\\4 5
m_Count\\6 =
)\\= >
;\\> ?
m_HeapArray]] 
=]] 
newHeapArray]] *
;]]* +
}^^ 
}__ 	
intaa 
GetKeyaa 
(aa 
Taa 
dataaa 
)aa 
{bb 	
varcc 
keycc 
=cc 
-cc 
$numcc 
;cc 
fordd 
(dd 
vardd 
idd 
=dd 
$numdd 
;dd 
idd 
<dd 
m_Countdd  '
;dd' (
idd) *
++dd* ,
)dd, -
{ee 
ifff 
(ff 
m_HeapArrayff 
[ff  
iff  !
]ff! "
.ff" #
Equalsff# )
(ff) *
dataff* .
)ff. /
)ff/ 0
{gg 
keyhh 
=hh 
ihh 
;hh 
breakii 
;ii 
}jj 
}kk 
returnmm 
keymm 
;mm 
}nn 	
voidpp 

MinHeapifypp 
(pp 
intpp 
keypp 
)pp  
{qq 	
intrr 
leftKeyrr 
=rr 
	LeftChildrr #
(rr# $
keyrr$ '
)rr' (
;rr( )
intss 
rightKeyss 
=ss 

RightChildss %
(ss% &
keyss& )
)ss) *
;ss* +
intuu 
smallestuu 
=uu 
keyuu 
;uu 
ifww 
(ww 
leftKeyww 
<ww 
m_Countww !
&&ww" $
m_HeapArrayxx 
[xx 
leftKeyxx #
]xx# $
.xx$ %
	CompareToxx% .
(xx. /
m_HeapArrayxx/ :
[xx: ;
smallestxx; C
]xxC D
)xxD E
<xxF G
$numxxH I
)xxI J
{yy 
smallestzz 
=zz 
leftKeyzz "
;zz" #
}{{ 
if}} 
(}} 
rightKey}} 
<}} 
m_Count}} "
&&}}# %
m_HeapArray~~ 
[~~ 
rightKey~~ $
]~~$ %
.~~% &
	CompareTo~~& /
(~~/ 0
m_HeapArray~~0 ;
[~~; <
smallest~~< D
]~~D E
)~~E F
<~~G H
$num~~I J
)~~J K
{ 
smallest
�� 
=
�� 
rightKey
�� #
;
��# $
}
�� 
if
�� 
(
�� 
smallest
�� 
!=
�� 
key
�� 
)
��  
{
�� 
Swap
�� 
(
�� 
ref
�� 
m_HeapArray
�� $
[
��$ %
key
��% (
]
��( )
,
��) *
ref
�� 
m_HeapArray
�� #
[
��# $
smallest
��$ ,
]
��, -
)
��- .
;
��. /

MinHeapify
�� 
(
�� 
smallest
�� #
)
��# $
;
��$ %
}
�� 
}
�� 	
static
�� 
void
�� 
Swap
�� 
(
�� 
ref
�� 
T
�� 
lhs
�� "
,
��" #
ref
��$ '
T
��( )
rhs
��* -
)
��- .
{
�� 	
T
�� 
temp
�� 
=
�� 
lhs
�� 
;
�� 
lhs
�� 
=
�� 
rhs
�� 
;
�� 
rhs
�� 
=
�� 
temp
�� 
;
�� 
}
�� 	
static
�� 
int
�� 
Parent
�� 
(
�� 
int
�� 
key
�� !
)
��! "
{
�� 	
return
�� 
(
�� 
key
�� 
-
�� 
$num
�� 
)
�� 
/
�� 
$num
��  
;
��  !
}
�� 	
static
�� 
int
�� 
	LeftChild
�� 
(
�� 
int
��  
key
��! $
)
��$ %
{
�� 	
return
�� 
$num
�� 
*
�� 
key
�� 
+
�� 
$num
�� 
;
�� 
}
�� 	
static
�� 
int
�� 

RightChild
�� 
(
�� 
int
�� !
key
��" %
)
��% &
{
�� 	
return
�� 
$num
�� 
*
�� 
key
�� 
+
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
}�� 