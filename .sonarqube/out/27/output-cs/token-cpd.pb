�
|C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\MetricHeader.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
struct 

MetricHeader 
{ 
public 
FixedString128Bytes " 
EventFactoryTypeName# 7
{8 9
get: =
;= >
set? B
;B C
}D E
public		 
MetricContainerType		 "
MetricContainerType		# 6
{		7 8
get		9 <
;		< =
set		> A
;		A B
}		C D
public 
MetricId 
MetricId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
MetricHeader 
( 
FixedString128Bytes  
eventFactoryTypeName  4
,4 5
MetricContainerType 
metricContainerType  3
,3 4
MetricId 
metricId 
) 
{ 	 
EventFactoryTypeName  
=! " 
eventFactoryTypeName# 7
;7 8
MetricContainerType 
=  !
metricContainerType" 5
;5 6
MetricId 
= 
metricId 
;  
} 	
} 
} �
vC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\GaugeFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
class 	
GaugeFactory
 
: 
IMetricFactory '
{ 
public 
bool 
TryConstruct  
(  !
MetricHeader! -
header. 4
,4 5
out6 9
IMetric: A
metricB H
)H I
{ 	
metric 
= 
new 
Gauge 
( 
header %
.% &
MetricId& .
). /
;/ 0
return 
true 
; 
}		 	
}

 
} �
C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\Cloned\ByteBool.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[ 
StructLayout 
( 

LayoutKind 
. 
Explicit %
)% &
]& '
struct 

ByteBool 
{ 
[ 	
FieldOffset	 
( 
$num 
) 
] 
public		 
bool		 
	BoolValue		 
;		 
[ 	
FieldOffset	 
( 
$num 
) 
] 
public 
byte 
	ByteValue 
; 
public 
byte 
Collapse 
( 
) 
=> !
	ByteValue 
= 
( 
byte 
) 
( 
(  
( 
	ByteValue 
>> 
$num 
)  
|! "
( 
	ByteValue 
>> 
$num 
)  
|! "
( 
	ByteValue 
>> 
$num 
)  
|! "
( 
	ByteValue 
>> 
$num 
)  
|! "
( 
	ByteValue 
>> 
$num 
)  
|! "
( 
	ByteValue 
>> 
$num 
)  
|! "
( 
	ByteValue 
>> 
$num 
)  
|! "
	ByteValue 
) 
& 
$num 
) 
; 
public 
byte 
Collapse 
( 
bool !
b" #
)# $
{ 	
	BoolValue 
= 
b 
; 
return 
Collapse 
( 
) 
; 
} 	
}   
}!! �
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\INetStatSerializer.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
internal 
	interface 
INetStatSerializer )
{ 
NativeArray 
< 
byte 
> 
	Serialize #
(# $
MetricCollection$ 4
metricCollection5 E
)E F
;F G
MetricCollection		 
Deserialize		 $
(		$ %
NativeArray		% 0
<		0 1
byte		1 5
>		5 6
bytes		7 <
)		< =
;		= >
}

 
} �
}C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\MetricContainerType.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
internal 
enum 
MetricContainerType %
:& '
uint( ,
{ 
Counter 
= 
$num 
, 
Event 
= 
$num 
, 
Gauge 
= 
$num 
, 
Timer 
= 
$num 
}		 
}

 �
}C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\MetricId\MetricKind.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
public 

enum 

MetricKind 
{ 
Counter 
, 
Gauge 
, 
} 
} �M
{C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Dispatch\MetricCollection.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[ 
Serializable 
] 
sealed 

class 
MetricCollection !
{		 
IReadOnlyDictionary

 
<

 
MetricId

 $
,

$ %
IMetric

& -
<

- .
long

. 2
>

2 3
>

3 4

m_Counters

5 ?
;

? @
IReadOnlyDictionary 
< 
MetricId $
,$ %
IMetric& -
<- .
double. 4
>4 5
>5 6
m_Gauges7 ?
;? @
IReadOnlyDictionary 
< 
MetricId $
,$ %
IMetric& -
<- .
TimeSpan. 6
>6 7
>7 8
m_Timers9 A
;A B
IReadOnlyDictionary 
< 
MetricId $
,$ %
IEventMetric& 2
>2 3
m_PayloadEvents4 C
;C D
internal 
MetricCollection !
(! "
IReadOnlyDictionary 
<  
MetricId  (
,( )
IMetric* 1
<1 2
long2 6
>6 7
>7 8
counters9 A
,A B
IReadOnlyDictionary 
<  
MetricId  (
,( )
IMetric* 1
<1 2
double2 8
>8 9
>9 :
gauges; A
,A B
IReadOnlyDictionary 
<  
MetricId  (
,( )
IMetric* 1
<1 2
TimeSpan2 :
>: ;
>; <
timers= C
,C D
IReadOnlyDictionary 
<  
MetricId  (
,( )
IEventMetric* 6
>6 7
payloadEvents8 E
)E F
{ 	

m_Counters 
= 
counters !
;! "
m_Gauges 
= 
gauges 
; 
m_Timers 
= 
timers 
; 
m_PayloadEvents 
= 
payloadEvents +
;+ ,
Metrics 
= 
counters 
. 
Values %
. 
Concat 
< 
IMetric 
>  
(  !
gauges! '
.' (
Values( .
). /
. 
Concat 
( 
timers 
. 
Values %
)% &
. 
Concat 
( 
m_PayloadEvents '
.' (
Values( .
). /
. 
ToList 
( 
) 
; 
}   	
internal"" 
MetricCollection"" !
(""! "
IReadOnlyCollection## 
<##  
IMetric##  '
>##' (
metrics##) 0
,##0 1
ulong$$ 
localConnectionId$$ #
)$$# $
{%% 	
static&& 
MetricId&& 

ByMetricId&& &
(&&& '
IMetric&&' .
metric&&/ 5
)&&5 6
=>&&7 9
metric&&: @
.&&@ A
Id&&A C
;&&C D

m_Counters'' 
='' 
metrics''  
.''  !
OfType''! '
<''' (
IMetric''( /
<''/ 0
long''0 4
>''4 5
>''5 6
(''6 7
)''7 8
.''8 9
ToDictionary''9 E
(''E F

ByMetricId''F P
)''P Q
;''Q R
m_Gauges(( 
=(( 
metrics(( 
.(( 
OfType(( %
<((% &
IMetric((& -
<((- .
double((. 4
>((4 5
>((5 6
(((6 7
)((7 8
.((8 9
ToDictionary((9 E
(((E F

ByMetricId((F P
)((P Q
;((Q R
m_Timers)) 
=)) 
metrics)) 
.)) 
OfType)) %
<))% &
IMetric))& -
<))- .
TimeSpan)). 6
>))6 7
>))7 8
())8 9
)))9 :
.)): ;
ToDictionary)); G
())G H

ByMetricId))H R
)))R S
;))S T
m_PayloadEvents** 
=** 
metrics** %
.**% &
OfType**& ,
<**, -
IEventMetric**- 9
>**9 :
(**: ;
)**; <
.**< =
ToDictionary**= I
(**I J

ByMetricId**J T
)**T U
;**U V
ConnectionId++ 
=++ 
localConnectionId++ ,
;++, -
},, 	
public.. 
IReadOnlyList.. 
<.. 
IMetric.. $
>..$ %
Metrics..& -
{... /
get..0 3
;..3 4
}..5 6
public00 
ulong00 
ConnectionId00 !
{00" #
get00$ '
;00' (
set00) ,
;00, -
}00. /
=000 1
ulong002 7
.007 8
MaxValue008 @
;00@ A
public22 
bool22 
TryGetCounter22 !
(22! "
MetricId22" *
metricId22+ 3
,223 4
out225 8
IMetric229 @
<22@ A
long22A E
>22E F
counter22G N
)22N O
{33 	
return44 

m_Counters44 
.44 
TryGetValue44 )
(44) *
metricId44* 2
,442 3
out444 7
counter448 ?
)44? @
;44@ A
}55 	
public77 
IMetric77 
<77 
long77 
>77 
GetCounterOrDefault77 0
(770 1
MetricId771 9
metricId77: B
)77B C
{88 	
if99 
(99 
TryGetCounter99 
(99 
metricId99 &
,99& '
out99( +
IMetric99, 3
<993 4
long994 8
>998 9
counter99: A
)99A B
)99B C
{:: 
return;; 
counter;; 
;;; 
}<< 
else== 
{>> 
return?? 
null?? 
;?? 
}@@ 
}AA 	
publicCC 
boolCC 
TryGetGaugeCC 
(CC  
MetricIdCC  (
metricIdCC) 1
,CC1 2
outCC3 6
IMetricCC7 >
<CC> ?
doubleCC? E
>CCE F
gaugeCCG L
)CCL M
{DD 	
returnEE 
m_GaugesEE 
.EE 
TryGetValueEE '
(EE' (
metricIdEE( 0
,EE0 1
outEE2 5
gaugeEE6 ;
)EE; <
;EE< =
}FF 	
publicHH 
boolHH 
TryGetTimerHH 
(HH  
MetricIdHH  (
metricIdHH) 1
,HH1 2
outHH3 6
IMetricHH7 >
<HH> ?
TimeSpanHH? G
>HHG H
timerHHI N
)HHN O
{II 	
returnJJ 
m_TimersJJ 
.JJ 
TryGetValueJJ '
(JJ' (
metricIdJJ( 0
,JJ0 1
outJJ2 5
timerJJ6 ;
)JJ; <
;JJ< =
}KK 	
publicMM 
boolMM 
TryGetEventMM 
<MM  
TEventMM  &
>MM& '
(MM' (
MetricIdMM( 0
metricIdMM1 9
,MM9 :
outMM; >
IEventMetricMM? K
<MMK L
TEventMML R
>MMR S
metricEventMMT _
)MM_ `
{NN 	
varOO 
foundOO 
=OO 
m_PayloadEventsOO '
.OO' (
TryGetValueOO( 3
(OO3 4
metricIdOO4 <
,OO< =
outOO> A
varOOB E
valueOOF K
)OOK L
;OOL M
ifPP 
(PP 
foundPP 
&&PP 
valuePP 
isPP !
IEventMetricPP" .
<PP. /
TEventPP/ 5
>PP5 6
typedMetricPP7 B
)PPB C
{QQ 
metricEventRR 
=RR 
typedMetricRR )
;RR) *
returnSS 
trueSS 
;SS 
}TT 
metricEventVV 
=VV 
nullVV 
;VV 
returnWW 
falseWW 
;WW 
}XX 	
publicZZ 
IEventMetricZZ 
<ZZ 
TEventZZ "
>ZZ" #$
GetPayloadEventOrDefaultZZ$ <
<ZZ< =
TEventZZ= C
>ZZC D
(ZZD E
MetricIdZZE M
metricIdZZN V
)ZZV W
{[[ 	
if\\ 
(\\ 
TryGetEvent\\ 
<\\ 
TEvent\\ "
>\\" #
(\\# $
metricId\\$ ,
,\\, -
out\\. 1
var\\2 5
metricEvent\\6 A
)\\A B
)\\B C
{]] 
return^^ 
metricEvent^^ "
;^^" #
}__ 
return`` 
null`` 
;`` 
}aa 	
publiccc 
intcc 
GetEventCountcc  
(cc  !
MetricIdcc! )
metricIdcc* 2
)cc2 3
{dd 	
ifee 
(ee 
m_PayloadEventsee 
.ee  
TryGetValueee  +
(ee+ ,
metricIdee, 4
,ee4 5
outee6 9
varee: =
eventMetricee> I
)eeI J
)eeJ K
{ff 
returngg 
eventMetricgg "
.gg" #
Countgg# (
;gg( )
}hh 
returnii 
$numii 
;ii 
}jj 	
}kk 
}ll �6
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Dispatch\MetricDispatcherBuilder.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
sealed 

class #
MetricDispatcherBuilder (
{		 
readonly

 
IDictionary

 
<

 
MetricId

 %
,

% &
IMetric

' .
<

. /
long

/ 3
>

3 4
>

4 5

m_Counters

6 @
= 
new 

Dictionary 
< 
MetricId %
,% &
IMetric' .
<. /
long/ 3
>3 4
>4 5
(5 6
)6 7
;7 8
readonly 
IDictionary 
< 
MetricId %
,% &
IMetric' .
<. /
double/ 5
>5 6
>6 7
m_Gauges8 @
= 
new 

Dictionary 
< 
MetricId %
,% &
IMetric' .
<. /
double/ 5
>5 6
>6 7
(7 8
)8 9
;9 :
readonly 
IDictionary 
< 
MetricId %
,% &
IMetric' .
<. /
TimeSpan/ 7
>7 8
>8 9
m_Timers: B
= 
new 

Dictionary 
< 
MetricId %
,% &
IMetric' .
<. /
TimeSpan/ 7
>7 8
>8 9
(9 :
): ;
;; <
readonly 
IDictionary 
< 
MetricId %
,% &
IEventMetric' 3
>3 4
m_PayloadEvents5 D
= 
new 

Dictionary 
< 
MetricId %
,% &
IEventMetric' 3
>3 4
(4 5
)5 6
;6 7
readonly 
List 
< 
IResettable !
>! "
m_Resettables# 0
=1 2
new3 6
List7 ;
<; <
IResettable< G
>G H
(H I
)I J
;J K
public #
MetricDispatcherBuilder &
WithCounters' 3
(3 4
params4 :
Counter; B
[B C
]C D
countersE M
)M N
{ 	
foreach 
( 
var 
counter  
in! #
counters$ ,
), -
{ 

m_Counters 
[ 
counter "
." #
Id# %
]% &
=' (
counter) 0
;0 1
m_Resettables 
. 
Add !
(! "
counter" )
)) *
;* +
} 
return 
this 
; 
} 	
public   #
MetricDispatcherBuilder   &

WithGauges  ' 1
(  1 2
params  2 8
Gauge  9 >
[  > ?
]  ? @
gauges  A G
)  G H
{!! 	
foreach"" 
("" 
var"" 
gauge"" 
in"" !
gauges""" (
)""( )
{## 
m_Gauges$$ 
[$$ 
gauge$$ 
.$$ 
Id$$ !
]$$! "
=$$# $
gauge$$% *
;$$* +
m_Resettables%% 
.%% 
Add%% !
(%%! "
gauge%%" '
)%%' (
;%%( )
}&& 
return(( 
this(( 
;(( 
})) 	
public++ #
MetricDispatcherBuilder++ &

WithTimers++' 1
(++1 2
params++2 8
Timer++9 >
[++> ?
]++? @
timers++A G
)++G H
{,, 	
foreach-- 
(-- 
var-- 
timer-- 
in-- !
timers--" (
)--( )
{.. 
m_Timers// 
[// 
timer// 
.// 
Id// !
]//! "
=//# $
timer//% *
;//* +
m_Resettables00 
.00 
Add00 !
(00! "
timer00" '
)00' (
;00( )
}11 
return33 
this33 
;33 
}44 	
public66 #
MetricDispatcherBuilder66 &
WithMetricEvents66' 7
<667 8
TEvent668 >
>66> ?
(66? @
params66@ F
EventMetric66G R
<66R S
TEvent66S Y
>66Y Z
[66Z [
]66[ \
metricEvents66] i
)66i j
where77 
TEvent77 
:77 
	unmanaged77 $
{88 	
foreach99 
(99 
var99 
metricEvent99 $
in99% '
metricEvents99( 4
)994 5
{:: 
m_PayloadEvents;; 
[;;  
metricEvent;;  +
.;;+ ,
Id;;, .
];;. /
=;;0 1
metricEvent;;2 =
;;;= >
m_Resettables<< 
.<< 
Add<< !
(<<! "
metricEvent<<" -
)<<- .
;<<. /
}== 
return?? 
this?? 
;?? 
}@@ 	
publicBB 
IMetricDispatcherBB  
BuildBB! &
(BB& '
)BB' (
{CC 	
returnDD 
newDD 
MetricDispatcherDD '
(DD' (
newEE 
MetricCollectionEE $
(EE$ %
newFF 
ReadOnlyDictionaryFF *
<FF* +
MetricIdFF+ 3
,FF3 4
IMetricFF5 <
<FF< =
longFF= A
>FFA B
>FFB C
(FFC D

m_CountersFFD N
)FFN O
,FFO P
newGG 
ReadOnlyDictionaryGG *
<GG* +
MetricIdGG+ 3
,GG3 4
IMetricGG5 <
<GG< =
doubleGG= C
>GGC D
>GGD E
(GGE F
m_GaugesGGF N
)GGN O
,GGO P
newHH 
ReadOnlyDictionaryHH *
<HH* +
MetricIdHH+ 3
,HH3 4
IMetricHH5 <
<HH< =
TimeSpanHH= E
>HHE F
>HHF G
(HHG H
m_TimersHHH P
)HHP Q
,HHQ R
newII 
ReadOnlyDictionaryII *
<II* +
MetricIdII+ 3
,II3 4
IEventMetricII5 A
>IIA B
(IIB C
m_PayloadEventsIIC R
)IIR S
)IIS T
,IIT U
m_ResettablesJJ 
,JJ 
m_PayloadEventsKK 
.KK  
ValuesKK  &
.KK& '
ToListKK' -
(KK- .
)KK. /
)KK/ 0
;KK0 1
}LL 	
}MM 
}NN �'
|C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\EventMetricFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
class 	
EventMetricFactory
 
: 
IMetricFactory -
{		 
public

 
static

 
bool

 !
TryGetFactoryTypeName

 0
(

0 1
Type

1 5
type

6 :
,

: ;
out

< ?
FixedString128Bytes

@ S
typeName

T \
)

\ ]
=>

^ `
k_TypeNames

a l
.

l m
TryGetValue

m x
(

x y
type

y }
,

} ~
out	

 �
typeName


� �
)


� �
;


� �
	interface 
IEventMetricFactory %
{ 	
IMetric 
	Construct 
( 
MetricId &
id' )
)) *
;* +
} 	
class "
EventMetricFactoryImpl $
<$ %
T% &
>& '
:( )
IEventMetricFactory* =
where> C
TD E
:F G
	unmanagedH Q
{ 	
public 
IMetric 
	Construct $
($ %
MetricId% -
id. 0
)0 1
{ 
return 
new 
EventMetric &
<& '
T' (
>( )
() *
id* ,
), -
;- .
} 
} 	
static 
readonly 

Dictionary "
<" #
FixedString128Bytes# 6
,6 7
IEventMetricFactory8 K
>K L
k_FactoriesByNameM ^
=_ `
newa d

Dictionarye o
<o p 
FixedString128Bytes	p �
,
� �!
IEventMetricFactory
� �
>
� �
(
� �
)
� �
;
� �
static 
readonly 

Dictionary "
<" #
Type# '
,' (
FixedString128Bytes) <
>< =
k_TypeNames> I
=J K
newL O

DictionaryP Z
<Z [
Type[ _
,_ `
FixedString128Bytesa t
>t u
(u v
)v w
;w x
static 
EventMetricFactory !
(! "
)" #
{ 	
TypeRegistration 
. 
RunIfNeeded (
(( )
)) *
;* +
} 	
internal!! 
static!! 
void!! 
RegisterType!! )
<!!) *
T!!* +
>!!+ ,
(!!, -
)!!- .
where!!/ 4
T!!5 6
:!!7 8
	unmanaged!!9 B
{"" 	
if## 
(## 
k_TypeNames## 
.## 
ContainsKey## &
(##& '
typeof##' -
(##- .
T##. /
)##/ 0
)##0 1
)##1 2
{$$ 
return%% 
;%% 
}&& 
FixedString128Bytes(( 

uniqueName((  *
=((+ ,
typeof((- 3
(((3 4
T((4 5
)((5 6
.((6 7
FullName((7 ?
;((? @
k_FactoriesByName)) 
.)) 
Add)) !
())! "

uniqueName))" ,
,)), -
new)). 1"
EventMetricFactoryImpl))2 H
<))H I
T))I J
>))J K
())K L
)))L M
)))M N
;))N O
k_TypeNames** 
.** 
Add** 
(** 
typeof** "
(**" #
T**# $
)**$ %
,**% &

uniqueName**' 1
)**1 2
;**2 3
}++ 	
public-- 
bool-- 
TryConstruct--  
(--  !
MetricHeader--! -
header--. 4
,--4 5
out--6 9
IMetric--: A
metric--B H
)--H I
{.. 	
if// 
(// 
!// 
k_FactoriesByName// "
.//" #
TryGetValue//# .
(//. /
header/// 5
.//5 6 
EventFactoryTypeName//6 J
,//J K
out//L O
var//P S
factory//T [
)//[ \
)//\ ]
{00 
Debug11 
.11 
LogError11 
(11 
$str11 G
+11H I
header11J P
.11P Q 
EventFactoryTypeName11Q e
)11e f
;11f g
metric22 
=22 
default22  
;22  !
return33 
false33 
;33 
}44 
metric66 
=66 
factory66 
.66 
	Construct66 &
(66& '
header66' -
.66- .
MetricId66. 6
)666 7
;667 8
return77 
true77 
;77 
}88 	
}99 
}:: �%
{C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Dispatch\MetricDispatcher.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
class 	
MetricDispatcher
 
: 
IMetricDispatcher .
{ 
internal 
const 
string 
k_ThrottlingWarning 1
=2 3
$str	4 �
;
� �
readonly

 
MetricCollection

 !
m_Collection

" .
;

. /
readonly 
IReadOnlyList 
< 
IResettable *
>* +
m_Resettables, 9
;9 :
readonly 
IReadOnlyList 
< 
IEventMetric +
>+ ,
m_EventMetrics- ;
;; <
readonly 
IList 
< 
IMetricObserver &
>& '
m_Observers( 3
=4 5
new6 9
List: >
<> ?
IMetricObserver? N
>N O
(O P
)P Q
;Q R
internal 
MetricDispatcher !
(! "
MetricCollection 

collection '
,' (
IReadOnlyList 
< 
IResettable %
>% &
resettables' 2
,2 3
IReadOnlyList 
< 
IEventMetric &
>& '
eventMetrics( 4
)4 5
{ 	
m_Collection 
= 

collection %
;% &
m_Resettables 
= 
resettables '
;' (
m_EventMetrics 
= 
eventMetrics )
;) *
} 	
public 
void 
RegisterObserver $
($ %
IMetricObserver% 4
observer5 =
)= >
{ 	
m_Observers 
. 
Add 
( 
observer $
)$ %
;% &
} 	
public 
void 
SetConnectionId #
(# $
ulong$ )
connectionId* 6
)6 7
{   	
m_Collection!! 
.!! 
ConnectionId!! %
=!!& '
connectionId!!( 4
;!!4 5
}"" 	
public$$ 
void$$ 
Dispatch$$ 
($$ 
)$$ 
{%% 	
var&& 
wentOverLimit&& 
=&& 
false&&  %
;&&% &
for'' 
('' 
var'' 
i'' 
='' 
$num'' 
;'' 
i'' 
<'' 
m_EventMetrics''  .
.''. /
Count''/ 4
;''4 5
i''6 7
++''7 9
)''9 :
{(( 
if)) 
()) 
m_EventMetrics)) "
[))" #
i))# $
]))$ %
.))% &
WentOverLimit))& 3
)))3 4
{** 
wentOverLimit++ !
=++" #
true++$ (
;++( )
break,, 
;,, 
}-- 
}.. 
if00 
(00 
wentOverLimit00 
)00 
{11 
Debug22 
.22 

LogWarning22  
(22  !
k_ThrottlingWarning22! 4
)224 5
;225 6
}33 
for55 
(55 
var55 
i55 
=55 
$num55 
;55 
i55 
<55 
m_Observers55  +
.55+ ,
Count55, 1
;551 2
i553 4
++554 6
)556 7
{66 
var77 
snapshotObserver77 $
=77% &
m_Observers77' 2
[772 3
i773 4
]774 5
;775 6
snapshotObserver88  
.88  !
Observe88! (
(88( )
m_Collection88) 5
)885 6
;886 7
}99 
for;; 
(;; 
var;; 
i;; 
=;; 
$num;; 
;;; 
i;; 
<;; 
m_Resettables;;  -
.;;- .
Count;;. 3
;;;3 4
i;;5 6
++;;6 8
);;8 9
{<< 
var== 

resettable== 
===  
m_Resettables==! .
[==. /
i==/ 0
]==0 1
;==1 2
if>> 
(>> 

resettable>> 
.>> !
ShouldResetOnDispatch>> 4
)>>4 5
{?? 

resettable@@ 
.@@ 
Reset@@ $
(@@$ %
)@@% &
;@@& '
}AA 
}BB 
}CC 	
}DD 
}EE �,
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Dispatch\MetricCollectionBuilder.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
class 	#
MetricCollectionBuilder
 !
{		 
readonly

 
List

 
<

 
IMetric

 
<

 
long

 "
>

" #
>

# $

m_Counters

% /
=

0 1
new

2 5
List

6 :
<

: ;
IMetric

; B
<

B C
long

C G
>

G H
>

H I
(

I J
)

J K
;

K L
readonly 
List 
< 
IMetric 
< 
double $
>$ %
>% &
m_Gauges' /
=0 1
new2 5
List6 :
<: ;
IMetric; B
<B C
doubleC I
>I J
>J K
(K L
)L M
;M N
readonly 
List 
< 
IMetric 
< 
TimeSpan &
>& '
>' (
m_Timers) 1
=2 3
new4 7
List8 <
<< =
IMetric= D
<D E
TimeSpanE M
>M N
>N O
(O P
)P Q
;Q R
readonly 
List 
< 
IEventMetric "
>" #
m_PayloadEvents$ 3
=4 5
new6 9
List: >
<> ?
IEventMetric? K
>K L
(L M
)M N
;N O
public #
MetricCollectionBuilder &
WithCounters' 3
(3 4
params4 :
Counter; B
[B C
]C D
countersE M
)M N
{ 	

m_Counters 
. 
AddRange 
(  
counters  (
)( )
;) *
return 
this 
; 
} 	
public #
MetricCollectionBuilder &

WithGauges' 1
(1 2
params2 8
Gauge9 >
[> ?
]? @
gaugesA G
)G H
{ 	
m_Gauges 
. 
AddRange 
( 
gauges $
)$ %
;% &
return 
this 
; 
} 	
public #
MetricCollectionBuilder &

WithTimers' 1
(1 2
params2 8
Timer9 >
[> ?
]? @
timersA G
)G H
{ 	
m_Timers 
. 
AddRange 
( 
timers $
)$ %
;% &
return!! 
this!! 
;!! 
}"" 	
public$$ #
MetricCollectionBuilder$$ &
WithMetricEvents$$' 7
<$$7 8
TEvent$$8 >
>$$> ?
($$? @
params$$@ F
IEventMetric$$G S
<$$S T
TEvent$$T Z
>$$Z [
[$$[ \
]$$\ ]
metricEvents$$^ j
)$$j k
where%% 
TEvent%% 
:%% 
struct%% !
{&& 	
m_PayloadEvents'' 
.'' 
AddRange'' $
(''$ %
metricEvents''% 1
)''1 2
;''2 3
return)) 
this)) 
;)) 
}** 	
public,, 
MetricCollection,, 
Build,,  %
(,,% &
),,& '
{-- 	
return.. 
new.. 
MetricCollection.. '
(..' (
new// 
ReadOnlyDictionary// &
<//& '
MetricId//' /
,/// 0
IMetric//1 8
<//8 9
long//9 =
>//= >
>//> ?
(//? @

m_Counters//@ J
.//J K
ToDictionary//K W
(//W X
x//X Y
=>//Z \
x//] ^
.//^ _
Id//_ a
,//a b
x//c d
=>//e g
x//h i
)//i j
)//j k
,//k l
new00 
ReadOnlyDictionary00 &
<00& '
MetricId00' /
,00/ 0
IMetric001 8
<008 9
double009 ?
>00? @
>00@ A
(00A B
m_Gauges00B J
.00J K
ToDictionary00K W
(00W X
x00X Y
=>00Z \
x00] ^
.00^ _
Id00_ a
,00a b
x00c d
=>00e g
x00h i
)00i j
)00j k
,00k l
new11 
ReadOnlyDictionary11 &
<11& '
MetricId11' /
,11/ 0
IMetric111 8
<118 9
TimeSpan119 A
>11A B
>11B C
(11C D
m_Timers11D L
.11L M
ToDictionary11M Y
(11Y Z
x11Z [
=>11\ ^
x11_ `
.11` a
Id11a c
,11c d
x11e f
=>11g i
x11j k
)11k l
)11l m
,11m n
new22 
ReadOnlyDictionary22 &
<22& '
MetricId22' /
,22/ 0
IEventMetric221 =
>22= >
(22> ?
m_PayloadEvents22? N
.22N O
ToDictionary22O [
(22[ \
x22\ ]
=>22^ `
x22a b
.22b c
Id22c e
,22e f
x22g h
=>22i k
x22l m
)22m n
)22n o
)22o p
;22p q
}33 	
}44 
}55 �'
tC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Units\MetricPrefix.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
internal 
enum 
MetricPrefix 
:  
sbyte! &
{ 
Pico 
= 
- 
$num 
, 
Nano

 
=

 
-

 
$num

 
,

 
Micro 
= 
- 
$num 
, 
Milli 
= 
- 
$num 
, 
None 
= 
$num 
, 
Kilo 
= 
$num 
, 
Mega 
= 
$num 
, 
Giga 
= 
$num 
, 
Tera 
= 
$num 
, 
} 
internal 
static 
class  
UnitPrefixExtensions .
{ 
public 
static 
string 
	GetSymbol &
(& '
this' +
MetricPrefix, 8
prefix9 ?
)? @
{ 	
switch   
(   
prefix   
)   
{!! 
case## 
MetricPrefix## !
.##! "
Nano##" &
:##& '
return##) /
$str##0 3
;##3 4
case$$ 
MetricPrefix$$ !
.$$! "
Micro$$" '
:$$' (
return$$) /
$str$$0 3
;$$3 4
case%% 
MetricPrefix%% !
.%%! "
Milli%%" '
:%%' (
return%%) /
$str%%0 3
;%%3 4
case'' 
MetricPrefix'' !
.''! "
None''" &
:''& '
return''( .
$str''/ 1
;''1 2
case)) 
MetricPrefix)) !
.))! "
Kilo))" &
:))& '
return))( .
$str))/ 2
;))2 3
case** 
MetricPrefix** !
.**! "
Mega**" &
:**& '
return**( .
$str**/ 2
;**2 3
case++ 
MetricPrefix++ !
.++! "
Giga++" &
:++& '
return++( .
$str++/ 2
;++2 3
case,, 
MetricPrefix,, !
.,,! "
Tera,," &
:,,& '
return,,( .
$str,,/ 2
;,,2 3
default.. 
:.. 
throw// 
new// 
ArgumentException// /
(/// 0
$"//0 2
$str//2 <
{//< =
nameof//= C
(//C D
MetricPrefix//D P
)//P Q
}//Q R
$str//R S
{//S T
prefix//T Z
}//Z [
"//[ \
)//\ ]
;//] ^
}00 
}11 	
public33 
static33 
float33 
GetValueFloat33 )
(33) *
this33* .
MetricPrefix33/ ;
prefix33< B
)33B C
{44 	
switch55 
(55 
prefix55 
)55 
{66 
case77 
MetricPrefix77 !
.77! "
Pico77" &
:77& '
return77) /
$num770 6
;776 7
case88 
MetricPrefix88 !
.88! "
Nano88" &
:88& '
return88) /
$num880 5
;885 6
case99 
MetricPrefix99 !
.99! "
Micro99" '
:99' (
return99) /
$num990 5
;995 6
case:: 
MetricPrefix:: !
.::! "
Milli::" '
:::' (
return::) /
$num::0 5
;::5 6
case<< 
MetricPrefix<< !
.<<! "
None<<" &
:<<& '
return<<( .
$num<</ 0
;<<0 1
case>> 
MetricPrefix>> !
.>>! "
Kilo>>" &
:>>& '
return>>( .
$num>>/ 3
;>>3 4
case?? 
MetricPrefix?? !
.??! "
Mega??" &
:??& '
return??( .
$num??/ 3
;??3 4
case@@ 
MetricPrefix@@ !
.@@! "
Giga@@" &
:@@& '
return@@( .
$num@@/ 3
;@@3 4
caseAA 
MetricPrefixAA !
.AA! "
TeraAA" &
:AA& '
returnAA( .
$numAA/ 4
;AA4 5
defaultCC 
:CC 
throwDD 
newDD 
ArgumentExceptionDD /
(DD/ 0
$"DD0 2
$strDD2 <
{DD< =
nameofDD= C
(DDC D
MetricPrefixDDD P
)DDP Q
}DDQ R
$strDDR S
{DDS T
prefixDDT Z
}DDZ [
"DD[ \
)DD\ ]
;DD] ^
}EE 
}FF 	
}HH 
}II �{
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\Cloned\BitReader.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
ref 
struct 
	BitReader 
{ 
private 
FastBufferReader  
m_Reader! )
;) *
private 
readonly 
unsafe 
byte  $
*$ %
m_BufferPointer& 5
;5 6
private 
readonly 
int 

m_Position '
;' (
private 
int 
m_BitPosition !
;! "
private 
int $
m_AllowedBitwiseReadMark ,
;, -
private 
const 
int 
k_BitsPerByte '
=( )
$num* +
;+ ,
public 
bool 

BitAligned 
{ 	
[ 

MethodImpl 
( 
MethodImplOptions )
.) *
AggressiveInlining* <
)< =
]= >
get 
=> 
( 
m_BitPosition !
&" #
$num$ %
)% &
==' )
$num* +
;+ ,
} 	
internal!! 
unsafe!! 
	BitReader!! !
(!!! "
FastBufferReader!!" 2
reader!!3 9
)!!9 :
{"" 	
m_Reader## 
=## 
reader## 
;## 
m_BufferPointer%% 
=%% 
m_Reader%% &
.%%& '
Handle%%' -
->%%- /
BufferPointer%%/ <
+%%= >
m_Reader%%? G
.%%G H
Handle%%H N
->%%N P
Position%%P X
;%%X Y

m_Position&& 
=&& 
m_Reader&& !
.&&! "
Handle&&" (
->&&( *
Position&&* 2
;&&2 3
m_BitPosition'' 
='' 
$num'' 
;'' $
m_AllowedBitwiseReadMark)) $
=))% &
())' (
m_Reader))( 0
.))0 1
Handle))1 7
->))7 9
AllowedReadMark))9 H
-))I J

m_Position))K U
)))U V
*))W X
k_BitsPerByte))Y f
;))f g
}++ 	
public00 
void00 
Dispose00 
(00 
)00 
{11 	
var22 
bytesWritten22 
=22 
m_BitPosition22 ,
>>22- /
$num220 1
;221 2
if33 
(33 
!33 

BitAligned33 
)33 
{44 
++66 
bytesWritten66 
;66 
}77 
m_Reader99 
.99 
CommitBitwiseReads99 '
(99' (
bytesWritten99( 4
)994 5
;995 6
}:: 	
publicDD 
unsafeDD 
boolDD 
TryBeginReadBitsDD +
(DD+ ,
uintDD, 0
bitCountDD1 9
)DD9 :
{EE 	
varFF 
newBitPositionFF 
=FF  
m_BitPositionFF! .
+FF/ 0
bitCountFF1 9
;FF9 :
varGG -
!totalBytesWrittenInBitwiseContextGG 1
=GG2 3
newBitPositionGG4 B
>>GGC E
$numGGF G
;GGG H
ifHH 
(HH 
(HH 
newBitPositionHH 
&HH  !
$numHH" #
)HH# $
!=HH% '
$numHH( )
)HH) *
{II 
++KK -
!totalBytesWrittenInBitwiseContextKK 3
;KK3 4
}LL 
ifNN 
(NN 
m_ReaderNN 
.NN 
HandleNN 
->NN !
PositionNN! )
+NN* +-
!totalBytesWrittenInBitwiseContextNN, M
>NNN O
m_ReaderNNP X
.NNX Y
HandleNNY _
->NN_ a
LengthNNa g
)NNg h
{OO 
returnPP 
falsePP 
;PP 
}QQ $
m_AllowedBitwiseReadMarkSS $
=SS% &
(SS' (
intSS( +
)SS+ ,
newBitPositionSS, :
;SS: ;
returnUU 
trueUU 
;UU 
}VV 	
public]] 
unsafe]] 
void]] 
ReadBits]] #
(]]# $
out]]$ '
ulong]]( -
value]]. 3
,]]3 4
uint]]5 9
bitCount]]: B
)]]B C
{^^ 	
if`` 
(`` 
bitCount`` 
>`` 
$num`` 
)`` 
{aa 
throwbb 
newbb '
ArgumentOutOfRangeExceptionbb 5
(bb5 6
nameofbb6 <
(bb< =
bitCountbb= E
)bbE F
,bbF G
$strbbH |
)bb| }
;bb} ~
}cc 
ifee 
(ee 
bitCountee 
<ee 
$numee 
)ee 
{ff 
throwgg 
newgg '
ArgumentOutOfRangeExceptiongg 5
(gg5 6
nameofgg6 <
(gg< =
bitCountgg= E
)ggE F
,ggF G
$strggH h
)ggh i
;ggi j
}hh 
intjj 
checkPosjj 
=jj 
(jj 
intjj 
)jj  
(jj  !
m_BitPositionjj! .
+jj/ 0
bitCountjj1 9
)jj9 :
;jj: ;
ifkk 
(kk 
checkPoskk 
>kk $
m_AllowedBitwiseReadMarkkk 3
)kk3 4
{ll 
throwmm 
newmm 
OverflowExceptionmm +
(mm+ ,
$"mm, .
$strmm. V
{mmV W
nameofmmW ]
(mm] ^
TryBeginReadBitsmm^ n
)mmn o
}mmo p
$strmmp r
"mmr s
)mms t
;mmt u
}nn 
ulongpp 
valpp 
=pp 
$numpp 
;pp 
intrr 

wholeBytesrr 
=rr 
(rr 
intrr !
)rr! "
bitCountrr" *
/rr+ ,
k_BitsPerByterr- :
;rr: ;
bytess 
*ss 
asBytesss 
=ss 
(ss 
bytess !
*ss! "
)ss" #
&ss# $
valss$ '
;ss' (
iftt 
(tt 

BitAlignedtt 
)tt 
{uu 
ifvv 
(vv 

wholeBytesvv 
!=vv !
$numvv" #
)vv# $
{ww 
ReadPartialValuexx $
(xx$ %
outxx% (
valxx) ,
,xx, -

wholeBytesxx. 8
)xx8 9
;xx9 :
}yy 
}zz 
else{{ 
{|| 
for}} 
(}} 
var}} 
i}} 
=}} 
$num}} 
;}} 
i}}  !
<}}" #

wholeBytes}}$ .
;}}. /
++}}0 2
i}}2 3
)}}3 4
{~~ 
ReadMisaligned "
(" #
out# &
asBytes' .
[. /
i/ 0
]0 1
)1 2
;2 3
}
�� 
}
�� 
val
�� 
|=
�� 
(
�� 
ulong
�� 
)
�� 
ReadByteBits
�� &
(
��& '
(
��' (
int
��( +
)
��+ ,
bitCount
��, 4
&
��5 6
$num
��7 8
)
��8 9
<<
��: <
(
��= >
(
��> ?
int
��? B
)
��B C
bitCount
��C K
&
��L M
~
��N O
$num
��O P
)
��P Q
;
��Q R
value
�� 
=
�� 
val
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
ReadBits
�� 
(
�� 
out
��  
byte
��! %
value
��& +
,
��+ ,
uint
��- 1
bitCount
��2 :
)
��: ;
{
�� 	
int
�� 
checkPos
�� 
=
�� 
(
�� 
int
�� 
)
��  
(
��  !
m_BitPosition
��! .
+
��/ 0
bitCount
��1 9
)
��9 :
;
��: ;
if
�� 
(
�� 
checkPos
�� 
>
�� &
m_AllowedBitwiseReadMark
�� 3
)
��3 4
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. V
{
��V W
nameof
��W ]
(
��] ^
TryBeginReadBits
��^ n
)
��n o
}
��o p
$str
��p r
"
��r s
)
��s t
;
��t u
}
�� 
value
�� 
=
�� 
ReadByteBits
��  
(
��  !
(
��! "
int
��" %
)
��% &
bitCount
��& .
)
��. /
;
��/ 0
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
ReadBit
�� "
(
��" #
out
��# &
bool
��' +
bit
��, /
)
��/ 0
{
�� 	
int
�� 
checkPos
�� 
=
�� 
(
�� 
m_BitPosition
�� )
+
��* +
$num
��, -
)
��- .
;
��. /
if
�� 
(
�� 
checkPos
�� 
>
�� &
m_AllowedBitwiseReadMark
�� 3
)
��3 4
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. V
{
��V W
nameof
��W ]
(
��] ^
TryBeginReadBits
��^ n
)
��n o
}
��o p
$str
��p r
"
��r s
)
��s t
;
��t u
}
�� 
int
�� 
offset
�� 
=
�� 
m_BitPosition
�� &
&
��' (
$num
��) *
;
��* +
int
�� 
pos
�� 
=
�� 
m_BitPosition
�� #
>>
��$ &
$num
��' (
;
��( )
bit
�� 
=
�� 
(
�� 
m_BufferPointer
�� "
[
��" #
pos
��# &
]
��& '
&
��( )
(
��* +
$num
��+ ,
<<
��- /
offset
��0 6
)
��6 7
)
��7 8
!=
��9 ;
$num
��< =
;
��= >
++
�� 
m_BitPosition
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
private
�� 
unsafe
�� 
void
�� 
ReadPartialValue
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
out
��0 3
T
��4 5
value
��6 ;
,
��; <
int
��= @
bytesToRead
��A L
,
��L M
int
��N Q
offsetBytes
��R ]
=
��^ _
$num
��` a
)
��a b
where
��c h
T
��i j
:
��k l
	unmanaged
��m v
{
�� 	
var
�� 
val
�� 
=
�� 
new
�� 
T
�� 
(
�� 
)
�� 
;
�� 
byte
�� 
*
�� 
ptr
�� 
=
�� 
(
�� 
(
�� 
byte
�� 
*
�� 
)
��  
&
��  !
val
��! $
)
��$ %
+
��& '
offsetBytes
��( 3
;
��3 4
byte
�� 
*
�� 
bufferPointer
�� 
=
��  !
m_BufferPointer
��" 1
+
��2 3

m_Position
��4 >
;
��> ?
UnsafeUtility
�� 
.
�� 
MemCpy
��  
(
��  !
ptr
��! $
,
��$ %
bufferPointer
��& 3
,
��3 4
bytesToRead
��5 @
)
��@ A
;
��A B
m_BitPosition
�� 
+=
�� 
bytesToRead
�� (
*
��) *
k_BitsPerByte
��+ 8
;
��8 9
value
�� 
=
�� 
val
�� 
;
�� 
}
�� 	
private
�� 
byte
�� 
ReadByteBits
�� !
(
��! "
int
��" %
bitCount
��& .
)
��. /
{
�� 	
if
�� 
(
�� 
bitCount
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
throw
�� 
new
�� )
ArgumentOutOfRangeException
�� 5
(
��5 6
nameof
��6 <
(
��< =
bitCount
��= E
)
��E F
,
��F G
$str
��H {
)
��{ |
;
��| }
}
�� 
if
�� 
(
�� 
bitCount
�� 
<
�� 
$num
�� 
)
�� 
{
�� 
throw
�� 
new
�� )
ArgumentOutOfRangeException
�� 5
(
��5 6
nameof
��6 <
(
��< =
bitCount
��= E
)
��E F
,
��F G
$str
��H h
)
��h i
;
��i j
}
�� 
int
�� 
result
�� 
=
�� 
$num
�� 
;
�� 
var
�� 
convert
�� 
=
�� 
new
�� 
ByteBool
�� &
(
��& '
)
��' (
;
��( )
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
bitCount
��  (
;
��( )
++
��* ,
i
��, -
)
��- .
{
�� 
ReadBit
�� 
(
�� 
out
�� 
bool
��  
bit
��! $
)
��$ %
;
��% &
result
�� 
|=
�� 
convert
�� !
.
��! "
Collapse
��" *
(
��* +
bit
��+ .
)
��. /
<<
��0 2
i
��3 4
;
��4 5
}
�� 
return
�� 
(
�� 
byte
�� 
)
�� 
result
�� 
;
��  
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
private
�� 
unsafe
�� 
void
�� 
ReadMisaligned
�� *
(
��* +
out
��+ .
byte
��/ 3
value
��4 9
)
��9 :
{
�� 	
int
�� 
off
�� 
=
�� 
m_BitPosition
�� #
&
��$ %
$num
��& '
;
��' (
int
�� 
pos
�� 
=
�� 
m_BitPosition
�� #
>>
��$ &
$num
��' (
;
��( )
int
�� 
shift1
�� 
=
�� 
$num
�� 
-
�� 
off
��  
;
��  !
value
�� 
=
�� 
(
�� 
byte
�� 
)
�� 
(
�� 
(
�� 
m_BufferPointer
�� +
[
��+ ,
pos
��, /
]
��/ 0
>>
��1 3
off
��4 7
)
��7 8
|
��9 :
(
��; <
m_BufferPointer
��< K
[
��K L
(
��L M
m_BitPosition
��M Z
+=
��[ ]
$num
��^ _
)
��_ `
>>
��a c
$num
��d e
]
��e f
<<
��g i
shift1
��j p
)
��p q
)
��q r
;
��r s
}
�� 	
}
�� 
}�� �
vC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Units\UnitExtensions.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
static 

class 
UnitExtensions 
{ 
internal 
static 
	BaseUnits !
GetBaseUnits" .
(. /
this/ 3
Units4 9
units: ?
)? @
{ 	
switch		 
(		 
units		 
)		 
{

 
case 
Units 
. 
None 
:  
return 
new 
	BaseUnits (
(( )
)) *
;* +
case 
Units 
. 
Bytes  
:  !
return 
new 
	BaseUnits (
(( )
bytesExponent) 6
:6 7
$num8 9
)9 :
;: ;
case 
Units 
. 
BytesPerSecond )
:) *
return 
new 
	BaseUnits (
(( )
bytesExponent) 6
:6 7
$num8 9
,9 :
secondsExponent; J
:J K
-L M
$numM N
)N O
;O P
case 
Units 
. 
Seconds "
:" #
return 
new 
	BaseUnits (
(( )
secondsExponent) 8
:8 9
$num: ;
); <
;< =
case 
Units 
. 
Hertz  
:  !
return 
new 
	BaseUnits (
(( )
secondsExponent) 8
:8 9
-: ;
$num; <
)< =
;= >
default 
: 
throw 
new '
ArgumentOutOfRangeException 9
(9 :
nameof: @
(@ A
unitsA F
)F G
,G H
unitsI N
,N O
nullP T
)T U
;U V
} 
} 	
} 
} �
wC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\MetricFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
class 	
MetricFactory
 
{ 
readonly 

Dictionary 
< 
MetricContainerType /
,/ 0
IMetricFactory1 ?
>? @
k_FactoriesA L
=M N
newO R

DictionaryS ]
<] ^
MetricContainerType^ q
,q r
IMetricFactory	s �
>
� �
(
� �
)
� �
{		 	
{

 
MetricContainerType

 !
.

! "
Counter

" )
,

) *
new

+ .
CounterFactory

/ =
(

= >
)

> ?
}

@ A
,

A B
{ 
MetricContainerType !
.! "
Event" '
,' (
new) ,
EventMetricFactory- ?
(? @
)@ A
}B C
,C D
{ 
MetricContainerType !
.! "
Gauge" '
,' (
new) ,
GaugeFactory- 9
(9 :
): ;
}< =
,= >
{ 
MetricContainerType !
.! "
Timer" '
,' (
new) ,
TimerFactory- 9
(9 :
): ;
}< =
,= >
} 	
;	 

public 
bool 
TryConstruct  
(  !
MetricHeader! -
header. 4
,4 5
out6 9
IMetric: A
metricB H
)H I
{ 	
if 
( 
! 
k_Factories 
. 
TryGetValue (
(( )
header) /
./ 0
MetricContainerType0 C
,C D
outE H
varI L
factoryM T
)T U
)U V
{ 
Debug 
. 
LogError 
( 
$str A
+B C
headerD J
.J K
MetricContainerTypeK ^
)^ _
;_ `
metric 
= 
default  
;  !
return 
false 
; 
} 
return 
factory 
. 
TryConstruct '
(' (
header( .
,. /
out0 3
metric4 :
): ;
;; <
} 	
} 
} �
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\Cloned\INetworkSerializable.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
	interface  
INetworkSerializable "
{ 
void 
NetworkSerialize 
< 
T 
>  
(  !
BufferSerializer! 1
<1 2
T2 3
>3 4

serializer5 ?
)? @
whereA F
TG H
:I J
IReaderWriterK X
;X Y
} 
} �?
qC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Units\BaseUnits.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
readonly 
struct 
	BaseUnits 
{ 
internal		 
sbyte		 
BytesExponent		 $
{		% &
get		' *
;		* +
}		, -
internal

 
sbyte

 
SecondsExponent

 &
{

' (
get

) ,
;

, -
}

. /
public 
	BaseUnits 
( 
sbyte 
bytesExponent 
=  !
$num" #
,# $
sbyte 
secondsExponent !
=" #
$num$ %
)% &
{ 	
BytesExponent 
= 
bytesExponent )
;) *
SecondsExponent 
= 
secondsExponent -
;- .
} 	
public 
	BaseUnits 
WithSeconds $
($ %
sbyte% *
seconds+ 2
)2 3
{ 	
return 
new 
	BaseUnits  
(  !
bytesExponent 
: 
BytesExponent ,
,, -
secondsExponent 
:  
seconds! (
)( )
;) *
} 	
public 
bool 
Equals 
( 
	BaseUnits $
other% *
)* +
{ 	
return 
BytesExponent  
==! #
other$ )
.) *
BytesExponent* 7
&&8 :
SecondsExponent "
==# %
other& +
.+ ,
SecondsExponent, ;
;; <
} 	
public!! 
override!! 
bool!! 
Equals!! #
(!!# $
object!!$ *
obj!!+ .
)!!. /
{"" 	
return## 
obj## 
is## 
	BaseUnits## #
other##$ )
&&##* ,
Equals##- 3
(##3 4
other##4 9
)##9 :
;##: ;
}$$ 	
public&& 
override&& 
int&& 
GetHashCode&& '
(&&' (
)&&( )
{'' 	
return.. 
(// 
(// 
byte// 
)// 
BytesExponent// $
<<//% '
$num//( )
)//) *
|//+ ,
(00 
byte00 
)00 
SecondsExponent00 %
;00% &
}11 	
internal33 
sbyte33 
GetExponent33 "
(33" #
BaseUnit33# +
unit33, 0
)330 1
{44 	
switch55 
(55 
unit55 
)55 
{66 
case77 
BaseUnit77 
.77 
Byte77 "
:77" #
return88 
BytesExponent88 (
;88( )
case99 
BaseUnit99 
.99 
Second99 $
:99$ %
return:: 
SecondsExponent:: *
;::* +
default;; 
:;; 
throw<< 
new<< 
ArgumentException<< /
(<</ 0
$"<<0 2
$str<<2 E
{<<E F
unit<<F J
}<<J K
"<<K L
)<<L M
;<<M N
}== 
}>> 	
static@@ 
readonly@@ 
char@@ 
[@@ 
]@@ 
k_Superscripts@@ -
=@@. /
new@@0 3
char@@4 8
[@@8 9
]@@9 :
{AA 
$charAA 
,AA 
$charAA 
,AA 
$charAA 
,AA 
$charAA  
,AA  !
$charAA" %
,AA% &
$charAA' *
,AA* +
$charAA, /
,AA/ 0
$charAA1 4
,AA4 5
$charAA6 9
,AA9 :
$charAA; >
,AA> ?
}AA@ A
;AAA B
internalFF 
(FF 
stringFF 
,FF 
stringFF  
)FF  !1
%NumeratorAndDenominatorDisplayStringsFF" G
{GG 	
getHH 
{II 
varJJ 
	numeratorJJ 
=JJ 
$strJJ  "
;JJ" #
varKK 
denominatorKK 
=KK  !
$strKK" $
;KK$ %
voidMM 
AddUnitMM 
(MM 
BaseUnitMM %
unitMM& *
,MM* +
sbyteMM, 1
exponentMM2 :
,MM: ;
refMM< ?
stringMM@ F
strMMG J
)MMJ K
{NN 
strOO 
+=OO 
unitOO 
.OO  
	GetSymbolOO  )
(OO) *
)OO* +
;OO+ ,
ifPP 
(PP 
exponentPP  
<=PP! #
$numPP$ %
)PP% &
{QQ 
returnRR 
;RR 
}SS 
ifTT 
(TT 
exponentTT  
>=TT! #
$numTT$ '
)TT' (
{UU 
strVV 
+=VV 
k_SuperscriptsVV -
[VV- .
exponentVV. 6
/VV7 8
$numVV9 <
]VV< =
;VV= >
exponentWW  
%=WW! #
$numWW$ '
;WW' (
}XX 
ifYY 
(YY 
exponentYY  
>=YY! #
$numYY$ &
)YY& '
{ZZ 
str[[ 
+=[[ 
k_Superscripts[[ -
[[[- .
exponent[[. 6
/[[7 8
$num[[9 ;
][[; <
;[[< =
exponent\\  
%=\\! #
$num\\$ &
;\\& '
}]] 
str^^ 
+=^^ 
k_Superscripts^^ )
[^^) *
exponent^^* 2
/^^3 4
$num^^5 7
]^^7 8
;^^8 9
}__ 
foraa 
(aa 
varaa 
unitaa 
=aa 
(aa  !
BaseUnitaa! )
)aa) *
$numaa* +
;aa+ ,
(bb 
intbb 
)bb 
unitbb 
<bb 
BaseUnitConstantsbb  1
.bb1 2
k_BaseUnitCountbb2 A
;bbA B
++cc 
unitcc 
)cc 
{dd 
varee 
exponentee  
=ee! "
GetExponentee# .
(ee. /
unitee/ 3
)ee3 4
;ee4 5
ifff 
(ff 
exponentff  
>ff! "
$numff# $
)ff$ %
{gg 
AddUnithh 
(hh  
unithh  $
,hh$ %
exponenthh& .
,hh. /
refhh0 3
	numeratorhh4 =
)hh= >
;hh> ?
}ii 
elsejj 
ifjj 
(jj 
exponentjj %
<jj& '
$numjj( )
)jj) *
{kk 
AddUnitll 
(ll  
unitll  $
,ll$ %
Mathll& *
.ll* +
Absll+ .
(ll. /
exponentll/ 7
)ll7 8
,ll8 9
refll: =
denominatorll> I
)llI J
;llJ K
}mm 
}nn 
returnoo 
(oo 
	numeratoroo !
,oo! "
denominatoroo# .
)oo. /
;oo/ 0
}pp 
}qq 	
internalss 
stringss 
DisplayStringss %
{tt 	
getuu 
{vv 
varww 
(ww 
	numeratorww 
,ww 
denominatorww  +
)ww+ ,
=ww- .1
%NumeratorAndDenominatorDisplayStringsww/ T
;wwT U
returnxx 
	numeratorxx  
+xx! "
(xx# $
denominatorxx$ /
==xx0 2
$strxx3 5
?xx6 7
$strxx8 :
:xx; <
$strxx= @
+xxA B
denominatorxxC N
)xxN O
;xxO P
}yy 
}zz 	
public|| 
override|| 
string|| 
ToString|| '
(||' (
)||( )
=>}} 
DisplayString}} 
;}} 
}~~ 
} ��
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\Cloned\FastBufferReader.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
struct 

FastBufferReader 
: 
IDisposable )
{		 
internal

 
struct

 
ReaderHandle

 $
{ 	
internal 
unsafe 
byte  
*  !
BufferPointer" /
;/ 0
internal 
int 
Position !
;! "
internal 
int 
Length 
;  
internal 
	Allocator 
	Allocator (
;( )
internal 
int 
AllowedReadMark (
;( )
internal 
bool 
InBitwiseContext *
;* +
} 	
internal 
readonly 
unsafe  
ReaderHandle! -
*- .
Handle/ 5
;5 6
public 
unsafe 
int 
Position "
{ 	
[ 

MethodImpl 
( 
MethodImplOptions )
.) *
AggressiveInlining* <
)< =
]= >
get 
=> 
Handle 
-> 
Position #
;# $
} 	
public$$ 
unsafe$$ 
int$$ 
Length$$  
{%% 	
[&& 

MethodImpl&& 
(&& 
MethodImplOptions&& )
.&&) *
AggressiveInlining&&* <
)&&< =
]&&= >
get'' 
=>'' 
Handle'' 
->'' 
Length'' !
;''! "
}(( 	
[** 	

MethodImpl**	 
(** 
MethodImplOptions** %
.**% &
AggressiveInlining**& 8
)**8 9
]**9 :
internal++ 
unsafe++ 
void++ 
CommitBitwiseReads++ /
(++/ 0
int++0 3
amount++4 :
)++: ;
{,, 	
Handle-- 
->-- 
Position-- 
+=-- 
amount--  &
;--& '
Handle// 
->// 
InBitwiseContext// $
=//% &
false//' ,
;//, -
}11 	
private33 
static33 
unsafe33 
ReaderHandle33 *
*33* +
CreateHandle33, 8
(338 9
byte339 =
*33= >
buffer33? E
,33E F
int33G J
length33K Q
,33Q R
int33S V
offset33W ]
,33] ^
	Allocator33_ h
	allocator33i r
)33r s
{44 	
ReaderHandle55 
*55 
readerHandle55 &
=55' (
null55) -
;55- .
if66 
(66 
	allocator66 
==66 
	Allocator66 &
.66& '
None66' +
)66+ ,
{77 
readerHandle88 
=88 
(88  
ReaderHandle88  ,
*88, -
)88- .
UnsafeUtility88. ;
.88; <
Malloc88< B
(88B C
sizeof88C I
(88I J
ReaderHandle88J V
)88V W
+88X Y
length88Z `
,88` a
UnsafeUtility88b o
.88o p
AlignOf88p w
<88w x
byte88x |
>88| }
(88} ~
)88~ 
,	88 �
	Allocator
88� �
.
88� �
Temp
88� �
)
88� �
;
88� �
readerHandle99 
->99 
BufferPointer99 +
=99, -
buffer99. 4
;994 5
readerHandle:: 
->:: 
Position:: &
=::' (
offset::) /
;::/ 0
};; 
else<< 
{== 
readerHandle>> 
=>> 
(>>  
ReaderHandle>>  ,
*>>, -
)>>- .
UnsafeUtility>>. ;
.>>; <
Malloc>>< B
(>>B C
sizeof>>C I
(>>I J
ReaderHandle>>J V
)>>V W
+>>X Y
length>>Z `
,>>` a
UnsafeUtility>>b o
.>>o p
AlignOf>>p w
<>>w x
byte>>x |
>>>| }
(>>} ~
)>>~ 
,	>> �
	allocator
>>� �
)
>>� �
;
>>� �
UnsafeUtility?? 
.?? 
MemCpy?? $
(??$ %
readerHandle??% 1
+??2 3
$num??4 5
,??5 6
buffer??7 =
+??> ?
offset??@ F
,??F G
length??H N
)??N O
;??O P
readerHandle@@ 
->@@ 
BufferPointer@@ +
=@@, -
(@@. /
byte@@/ 3
*@@3 4
)@@4 5
(@@5 6
readerHandle@@6 B
+@@C D
$num@@E F
)@@F G
;@@G H
readerHandleAA 
->AA 
PositionAA &
=AA' (
$numAA) *
;AA* +
}BB 
readerHandleDD 
->DD 
LengthDD  
=DD! "
lengthDD# )
;DD) *
readerHandleEE 
->EE 
	AllocatorEE #
=EE$ %
	allocatorEE& /
;EE/ 0
readerHandleGG 
->GG 
AllowedReadMarkGG )
=GG* +
$numGG, -
;GG- .
readerHandleHH 
->HH 
InBitwiseContextHH *
=HH+ ,
falseHH- 2
;HH2 3
returnJJ 
readerHandleJJ 
;JJ  
}KK 	
public^^ 
unsafe^^ 
FastBufferReader^^ &
(^^& '
NativeArray^^' 2
<^^2 3
byte^^3 7
>^^7 8
buffer^^9 ?
,^^? @
	Allocator^^A J
	allocator^^K T
,^^T U
int^^V Y
length^^Z `
=^^a b
-^^c d
$num^^d e
,^^e f
int^^g j
offset^^k q
=^^r s
$num^^t u
)^^u v
{__ 	
Handle`` 
=`` 
CreateHandle`` !
(``! "
(``" #
byte``# '
*``' (
)``( )
buffer``) /
.``/ 0
GetUnsafePtr``0 <
(``< =
)``= >
,``> ?
Math``@ D
.``D E
Max``E H
(``H I
$num``I J
,``J K
length``L R
==``S U
-``V W
$num``W X
?``Y Z
buffer``[ a
.``a b
Length``b h
:``i j
length``k q
)``q r
,``r s
offset``t z
,``z {
	allocator	``| �
)
``� �
;
``� �
}aa 	
publicpp 
unsafepp 
FastBufferReaderpp &
(pp& '
ArraySegmentpp' 3
<pp3 4
bytepp4 8
>pp8 9
bufferpp: @
,pp@ A
	AllocatorppB K
	allocatorppL U
,ppU V
intppW Z
lengthpp[ a
=ppb c
-ppd e
$numppe f
,ppf g
intpph k
offsetppl r
=pps t
$numppu v
)ppv w
{qq 	
ifrr 
(rr 
	allocatorrr 
==rr 
	Allocatorrr &
.rr& '
Nonerr' +
)rr+ ,
{ss 
throwtt 
newtt !
NotSupportedExceptiontt /
(tt/ 0
$strtt0 l
)ttl m
;ttm n
}uu 
fixedvv 
(vv 
bytevv 
*vv 
datavv 
=vv 
buffervv  &
.vv& '
Arrayvv' ,
)vv, -
{ww 
Handlexx 
=xx 
CreateHandlexx %
(xx% &
dataxx& *
,xx* +
Mathxx, 0
.xx0 1
Maxxx1 4
(xx4 5
$numxx5 6
,xx6 7
lengthxx8 >
==xx? A
-xxB C
$numxxC D
?xxE F
bufferxxG M
.xxM N
CountxxN S
:xxT U
lengthxxV \
)xx\ ]
,xx] ^
offsetxx_ e
,xxe f
	allocatorxxg p
)xxp q
;xxq r
}yy 
}zz 	
public
�� 
unsafe
�� 
FastBufferReader
�� &
(
��& '
byte
��' +
[
��+ ,
]
��, -
buffer
��. 4
,
��4 5
	Allocator
��6 ?
	allocator
��@ I
,
��I J
int
��K N
length
��O U
=
��V W
-
��X Y
$num
��Y Z
,
��Z [
int
��\ _
offset
��` f
=
��g h
$num
��i j
)
��j k
{
�� 	
if
�� 
(
�� 
	allocator
�� 
==
�� 
	Allocator
�� &
.
��& '
None
��' +
)
��+ ,
{
�� 
throw
�� 
new
�� #
NotSupportedException
�� /
(
��/ 0
$str
��0 l
)
��l m
;
��m n
}
�� 
fixed
�� 
(
�� 
byte
�� 
*
�� 
data
�� 
=
�� 
buffer
��  &
)
��& '
{
�� 
Handle
�� 
=
�� 
CreateHandle
�� %
(
��% &
data
��& *
,
��* +
Math
��, 0
.
��0 1
Max
��1 4
(
��4 5
$num
��5 6
,
��6 7
length
��8 >
==
��? A
-
��B C
$num
��C D
?
��E F
buffer
��G M
.
��M N
Length
��N T
:
��U V
length
��W ]
)
��] ^
,
��^ _
offset
��` f
,
��f g
	allocator
��h q
)
��q r
;
��r s
}
�� 
}
�� 	
public
�� 
unsafe
�� 
FastBufferReader
�� &
(
��& '
byte
��' +
*
��+ ,
buffer
��- 3
,
��3 4
	Allocator
��5 >
	allocator
��? H
,
��H I
int
��J M
length
��N T
,
��T U
int
��V Y
offset
��Z `
=
��a b
$num
��c d
)
��d e
{
�� 	
Handle
�� 
=
�� 
CreateHandle
�� !
(
��! "
buffer
��" (
,
��( )
Math
��* .
.
��. /
Max
��/ 2
(
��2 3
$num
��3 4
,
��4 5
length
��6 <
)
��< =
,
��= >
offset
��? E
,
��E F
	allocator
��G P
)
��P Q
;
��Q R
}
�� 	
public
�� 
unsafe
�� 
FastBufferReader
�� &
(
��& '
FastBufferWriter
��' 7
writer
��8 >
,
��> ?
	Allocator
��@ I
	allocator
��J S
,
��S T
int
��U X
length
��Y _
=
��` a
-
��b c
$num
��c d
,
��d e
int
��f i
offset
��j p
=
��q r
$num
��s t
)
��t u
{
�� 	
Handle
�� 
=
�� 
CreateHandle
�� !
(
��! "
writer
��" (
.
��( )
GetUnsafePtr
��) 5
(
��5 6
)
��6 7
,
��7 8
Math
��9 =
.
��= >
Max
��> A
(
��A B
$num
��B C
,
��C D
length
��E K
==
��L N
-
��O P
$num
��P Q
?
��R S
writer
��T Z
.
��Z [
Length
��[ a
:
��b c
length
��d j
)
��j k
,
��k l
offset
��m s
,
��s t
	allocator
��u ~
)
��~ 
;�� �
}
�� 	
public
�� 
unsafe
�� 
void
�� 
Dispose
�� "
(
��" #
)
��# $
{
�� 	
UnsafeUtility
�� 
.
�� 
Free
�� 
(
�� 
Handle
�� %
,
��% &
Handle
��' -
->
��- /
	Allocator
��/ 8
)
��8 9
;
��9 :
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
Seek
�� 
(
��  
int
��  #
where
��$ )
)
��) *
{
�� 	
Handle
�� 
->
�� 
Position
�� 
=
�� 
Math
�� #
.
��# $
Min
��$ '
(
��' (
Length
��( .
,
��. /
where
��0 5
)
��5 6
;
��6 7
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
internal
�� 
unsafe
�� 
void
�� 
MarkBytesRead
�� *
(
��* +
int
��+ .
amount
��/ 5
)
��5 6
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
amount
��# )
>
��* +
Handle
��, 2
->
��2 4
AllowedReadMark
��4 C
)
��C D
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, d
)
��d e
;
��e f
}
�� 
Handle
�� 
->
�� 
Position
�� 
+=
�� 
amount
��  &
;
��& '
}
�� 	
public
�� 
unsafe
�� 
	BitReader
�� !
EnterBitwiseContext
��  3
(
��3 4
)
��4 5
{
�� 	
Handle
�� 
->
�� 
InBitwiseContext
�� $
=
��% &
true
��' +
;
��+ ,
return
�� 
new
�� 
	BitReader
��  
(
��  !
this
��! %
)
��% &
;
��& '
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
bool
�� 
TryBeginRead
�� '
(
��' (
int
��( +
bytes
��, 1
)
��1 2
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
bytes
��# (
>
��) *
Handle
��+ 1
->
��1 3
Length
��3 9
)
��9 :
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
Handle
�� 
->
�� 
AllowedReadMark
�� #
=
��$ %
Handle
��& ,
->
��, .
Position
��. 6
+
��7 8
bytes
��9 >
;
��> ?
return
�� 
true
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
bool
�� 
TryBeginReadValue
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
in
��0 2
T
��3 4
value
��5 :
)
��: ;
where
��< A
T
��B C
:
��D E
	unmanaged
��F O
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
int
�� 
len
�� 
=
�� 
sizeof
�� 
(
�� 
T
�� 
)
�� 
;
��  
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
len
��# &
>
��' (
Handle
��) /
->
��/ 1
Length
��1 7
)
��7 8
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
Handle
�� 
->
�� 
AllowedReadMark
�� #
=
��$ %
Handle
��& ,
->
��, .
Position
��. 6
+
��7 8
len
��9 <
;
��< =
return
�� 
true
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
internal
�� 
unsafe
�� 
bool
�� "
TryBeginReadInternal
�� 1
(
��1 2
int
��2 5
bytes
��6 ;
)
��; <
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
bytes
��# (
>
��) *
Handle
��+ 1
->
��1 3
Length
��3 9
)
��9 :
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
bytes
��# (
>
��) *
Handle
��+ 1
->
��1 3
AllowedReadMark
��3 B
)
��B C
{
�� 
Handle
�� 
->
�� 
AllowedReadMark
�� '
=
��( )
Handle
��* 0
->
��0 2
Position
��2 :
+
��; <
bytes
��= B
;
��B C
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
byte
�� 
[
�� 
]
�� 
ToArray
�� $
(
��$ %
)
��% &
{
�� 	
byte
�� 
[
�� 
]
�� 
ret
�� 
=
�� 
new
�� 
byte
�� !
[
��! "
Length
��" (
]
��( )
;
��) *
fixed
�� 
(
�� 
byte
�� 
*
�� 
b
�� 
=
�� 
ret
��  
)
��  !
{
�� 
UnsafeUtility
�� 
.
�� 
MemCpy
�� $
(
��$ %
b
��% &
,
��& '
Handle
��( .
->
��. 0
BufferPointer
��0 =
,
��= >
Length
��? E
)
��E F
;
��F G
}
�� 
return
�� 
ret
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
byte
�� 
*
�� 
GetUnsafePtr
�� (
(
��( )
)
��) *
{
�� 	
return
�� 
Handle
�� 
->
�� 
BufferPointer
�� (
;
��( )
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
byte
�� 
*
�� +
GetUnsafePtrAtCurrentPosition
�� 9
(
��9 :
)
��: ;
{
�� 	
return
�� 
Handle
�� 
->
�� 
BufferPointer
�� (
+
��) *
Handle
��+ 1
->
��1 3
Position
��3 ;
;
��; <
}
�� 	
public
�� 
void
�� %
ReadNetworkSerializable
�� +
<
��+ ,
T
��, -
>
��- .
(
��. /
out
��/ 2
T
��3 4
value
��5 :
)
��: ;
where
��< A
T
��B C
:
��D E"
INetworkSerializable
��F Z
,
��Z [
new
��\ _
(
��_ `
)
��` a
{
�� 	
value
�� 
=
�� 
new
�� 
T
�� 
(
�� 
)
�� 
;
�� 
var
�� 
bufferSerializer
��  
=
��! "
new
��# &
BufferSerializer
��' 7
<
��7 8$
BufferSerializerReader
��8 N
>
��N O
(
��O P
new
��P S$
BufferSerializerReader
��T j
(
��j k
this
��k o
)
��o p
)
��p q
;
��q r
value
�� 
.
�� 
NetworkSerialize
�� "
(
��" #
bufferSerializer
��# 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
void
�� %
ReadNetworkSerializable
�� +
<
��+ ,
T
��, -
>
��- .
(
��. /
out
��/ 2
T
��3 4
[
��4 5
]
��5 6
value
��7 <
)
��< =
where
��> C
T
��D E
:
��F G"
INetworkSerializable
��H \
,
��\ ]
new
��^ a
(
��a b
)
��b c
{
�� 	
ReadValueSafe
�� 
(
�� 
out
�� 
int
�� !
size
��" &
)
��& '
;
��' (
value
�� 
=
�� 
new
�� 
T
�� 
[
�� 
size
�� 
]
�� 
;
��  
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
size
��  $
;
��$ %
++
��& (
i
��( )
)
��) *
{
�� %
ReadNetworkSerializable
�� '
(
��' (
out
��( +
value
��, 1
[
��1 2
i
��2 3
]
��3 4
)
��4 5
;
��5 6
}
�� 
}
�� 	
public
�� 
unsafe
�� 
void
�� 
	ReadValue
�� $
(
��$ %
out
��% (
string
��) /
s
��0 1
,
��1 2
bool
��3 7
oneByteChars
��8 D
=
��E F
false
��G L
)
��L M
{
�� 	
	ReadValue
�� 
(
�� 
out
�� 
uint
�� 
length
�� %
)
��% &
;
��& '
s
�� 
=
�� 
$str
�� 
.
�� 
PadRight
�� 
(
�� 
(
�� 
int
��  
)
��  !
length
��! '
)
��' (
;
��( )
int
�� 
target
�� 
=
�� 
s
�� 
.
�� 
Length
�� !
;
��! "
fixed
�� 
(
�� 
char
�� 
*
�� 
native
�� 
=
��  !
s
��" #
)
��# $
{
�� 
if
�� 
(
�� 
oneByteChars
��  
)
��  !
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '
target
��( .
;
��. /
++
��0 2
i
��2 3
)
��3 4
{
�� 
ReadByte
��  
(
��  !
out
��! $
byte
��% )
b
��* +
)
��+ ,
;
��, -
native
�� 
[
�� 
i
��  
]
��  !
=
��" #
(
��$ %
char
��% )
)
��) *
b
��* +
;
��+ ,
}
�� 
}
�� 
else
�� 
{
�� 
	ReadBytes
�� 
(
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
native
��% +
,
��+ ,
target
��- 3
*
��4 5
sizeof
��6 <
(
��< =
char
��= A
)
��A B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 	
public
�� 
unsafe
�� 
void
�� 
ReadValueSafe
�� (
(
��( )
out
��) ,
string
��- 3
s
��4 5
,
��5 6
bool
��7 ;
oneByteChars
��< H
=
��I J
false
��K P
)
��P Q
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
!
�� "
TryBeginReadInternal
�� %
(
��% &
sizeof
��& ,
(
��, -
uint
��- 1
)
��1 2
)
��2 3
)
��3 4
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
	ReadValue
�� 
(
�� 
out
�� 
uint
�� 
length
�� %
)
��% &
;
��& '
if
�� 
(
�� 
!
�� "
TryBeginReadInternal
�� %
(
��% &
(
��& '
int
��' *
)
��* +
length
��+ 1
*
��2 3
(
��4 5
oneByteChars
��5 A
?
��B C
$num
��D E
:
��F G
sizeof
��H N
(
��N O
char
��O S
)
��S T
)
��T U
)
��U V
)
��V W
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
s
�� 
=
�� 
$str
�� 
.
�� 
PadRight
�� 
(
�� 
(
�� 
int
��  
)
��  !
length
��! '
)
��' (
;
��( )
int
�� 
target
�� 
=
�� 
s
�� 
.
�� 
Length
�� !
;
��! "
fixed
�� 
(
�� 
char
�� 
*
�� 
native
�� 
=
��  !
s
��" #
)
��# $
{
�� 
if
�� 
(
�� 
oneByteChars
��  
)
��  !
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '
target
��( .
;
��. /
++
��0 2
i
��2 3
)
��3 4
{
�� 
ReadByte
��  
(
��  !
out
��! $
byte
��% )
b
��* +
)
��+ ,
;
��, -
native
�� 
[
�� 
i
��  
]
��  !
=
��" #
(
��$ %
char
��% )
)
��) *
b
��* +
;
��+ ,
}
�� 
}
�� 
else
�� 
{
�� 
	ReadBytes
�� 
(
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
native
��% +
,
��+ ,
target
��- 3
*
��4 5
sizeof
��6 <
(
��< =
char
��= A
)
��A B
)
��B C
;
��C D
}
�� 
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
	ReadValue
�� $
<
��$ %
T
��% &
>
��& '
(
��' (
out
��( +
T
��, -
[
��- .
]
��. /
array
��0 5
)
��5 6
where
��7 <
T
��= >
:
��? @
	unmanaged
��A J
{
�� 	
	ReadValue
�� 
(
�� 
out
�� 
int
�� 
sizeInTs
�� &
)
��& '
;
��' (
int
�� 
sizeInBytes
�� 
=
�� 
sizeInTs
�� &
*
��' (
sizeof
��) /
(
��/ 0
T
��0 1
)
��1 2
;
��2 3
array
�� 
=
�� 
new
�� 
T
�� 
[
�� 
sizeInTs
�� "
]
��" #
;
��# $
fixed
�� 
(
�� 
T
�� 
*
�� 
native
�� 
=
�� 
array
�� $
)
��$ %
{
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
(
��% &
native
��& ,
)
��, -
;
��- .
	ReadBytes
�� 
(
�� 
bytes
�� 
,
��  
sizeInBytes
��! ,
)
��, -
;
��- .
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
ReadValueSafe
�� (
<
��( )
T
��) *
>
��* +
(
��+ ,
out
��, /
T
��0 1
[
��1 2
]
��2 3
array
��4 9
)
��9 :
where
��; @
T
��A B
:
��C D
	unmanaged
��E N
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
!
�� "
TryBeginReadInternal
�� %
(
��% &
sizeof
��& ,
(
��, -
int
��- 0
)
��0 1
)
��1 2
)
��2 3
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
	ReadValue
�� 
(
�� 
out
�� 
int
�� 
sizeInTs
�� &
)
��& '
;
��' (
int
�� 
sizeInBytes
�� 
=
�� 
sizeInTs
�� &
*
��' (
sizeof
��) /
(
��/ 0
T
��0 1
)
��1 2
;
��2 3
if
�� 
(
�� 
!
�� "
TryBeginReadInternal
�� %
(
��% &
sizeInBytes
��& 1
)
��1 2
)
��2 3
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
array
�� 
=
�� 
new
�� 
T
�� 
[
�� 
sizeInTs
�� "
]
��" #
;
��# $
fixed
�� 
(
�� 
T
�� 
*
�� 
native
�� 
=
�� 
array
�� $
)
��$ %
{
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
(
��% &
native
��& ,
)
��, -
;
��- .
	ReadBytes
�� 
(
�� 
bytes
�� 
,
��  
sizeInBytes
��! ,
)
��, -
;
��- .
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
ReadPartialValue
�� +
<
��+ ,
T
��, -
>
��- .
(
��. /
out
��/ 2
T
��3 4
value
��5 :
,
��: ;
int
��< ?
bytesToRead
��@ K
,
��K L
int
��M P
offsetBytes
��Q \
=
��] ^
$num
��_ `
)
��` a
where
��b g
T
��h i
:
��j k
	unmanaged
��l u
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
bytesToRead
��# .
>
��/ 0
Handle
��1 7
->
��7 9
AllowedReadMark
��9 H
)
��H I
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. V
{
��V W
nameof
��W ]
(
��] ^
TryBeginRead
��^ j
)
��j k
}
��k l
$str
��l n
"
��n o
)
��o p
;
��p q
}
�� 
var
�� 
val
�� 
=
�� 
new
�� 
T
�� 
(
�� 
)
�� 
;
�� 
byte
�� 
*
�� 
ptr
�� 
=
�� 
(
�� 
(
�� 
byte
�� 
*
�� 
)
��  
&
��  !
val
��! $
)
��$ %
+
��& '
offsetBytes
��( 3
;
��3 4
byte
�� 
*
�� 
bufferPointer
�� 
=
��  !
Handle
��" (
->
��( *
BufferPointer
��* 7
+
��8 9
Handle
��: @
->
��@ B
Position
��B J
;
��J K
UnsafeUtility
�� 
.
�� 
MemCpy
��  
(
��  !
ptr
��! $
,
��$ %
bufferPointer
��& 3
,
��3 4
bytesToRead
��5 @
)
��@ A
;
��A B
Handle
�� 
->
�� 
Position
�� 
+=
�� 
bytesToRead
��  +
;
��+ ,
value
�� 
=
�� 
val
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
ReadByte
�� #
(
��# $
out
��$ '
byte
��( ,
value
��- 2
)
��2 3
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
$num
��# $
>
��% &
Handle
��' -
->
��- /
AllowedReadMark
��/ >
)
��> ?
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. V
{
��V W
nameof
��W ]
(
��] ^
TryBeginRead
��^ j
)
��j k
}
��k l
$str
��l n
"
��n o
)
��o p
;
��p q
}
�� 
value
�� 
=
�� 
Handle
�� 
->
�� 
BufferPointer
�� )
[
��) *
Handle
��* 0
->
��0 2
Position
��2 :
++
��: <
]
��< =
;
��= >
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
ReadByteSafe
�� '
(
��' (
out
��( +
byte
��, 0
value
��1 6
)
��6 7
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
!
�� "
TryBeginReadInternal
�� %
(
��% &
$num
��& '
)
��' (
)
��( )
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
value
�� 
=
�� 
Handle
�� 
->
�� 
BufferPointer
�� )
[
��) *
Handle
��* 0
->
��0 2
Position
��2 :
++
��: <
]
��< =
;
��= >
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
	ReadBytes
�� $
(
��$ %
byte
��% )
*
��) *
value
��+ 0
,
��0 1
int
��2 5
size
��6 :
,
��: ;
int
��< ?
offset
��@ F
=
��G H
$num
��I J
)
��J K
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
size
��# '
>
��( )
Handle
��* 0
->
��0 2
AllowedReadMark
��2 A
)
��A B
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. V
{
��V W
nameof
��W ]
(
��] ^
TryBeginRead
��^ j
)
��j k
}
��k l
$str
��l n
"
��n o
)
��o p
;
��p q
}
�� 
UnsafeUtility
�� 
.
�� 
MemCpy
��  
(
��  !
value
��! &
+
��' (
offset
��) /
,
��/ 0
(
��1 2
Handle
��2 8
->
��8 :
BufferPointer
��: G
+
��H I
Handle
��J P
->
��P R
Position
��R Z
)
��Z [
,
��[ \
size
��] a
)
��a b
;
��b c
Handle
�� 
->
�� 
Position
�� 
+=
�� 
size
��  $
;
��$ %
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
ReadBytesSafe
�� (
(
��( )
byte
��) -
*
��- .
value
��/ 4
,
��4 5
int
��6 9
size
��: >
,
��> ?
int
��@ C
offset
��D J
=
��K L
$num
��M N
)
��N O
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
!
�� "
TryBeginReadInternal
�� %
(
��% &
size
��& *
)
��* +
)
��+ ,
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
UnsafeUtility
�� 
.
�� 
MemCpy
��  
(
��  !
value
��! &
+
��' (
offset
��) /
,
��/ 0
(
��1 2
Handle
��2 8
->
��8 :
BufferPointer
��: G
+
��H I
Handle
��J P
->
��P R
Position
��R Z
)
��Z [
,
��[ \
size
��] a
)
��a b
;
��b c
Handle
�� 
->
�� 
Position
�� 
+=
�� 
size
��  $
;
��$ %
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
	ReadBytes
�� $
(
��$ %
ref
��% (
byte
��) -
[
��- .
]
��. /
value
��0 5
,
��5 6
int
��7 :
size
��; ?
,
��? @
int
��A D
offset
��E K
=
��L M
$num
��N O
)
��O P
{
�� 	
fixed
�� 
(
�� 
byte
�� 
*
�� 
ptr
�� 
=
�� 
value
�� $
)
��$ %
{
�� 
	ReadBytes
�� 
(
�� 
ptr
�� 
,
�� 
size
�� #
,
��# $
offset
��% +
)
��+ ,
;
��, -
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
ReadBytesSafe
�� (
(
��( )
ref
��) ,
byte
��- 1
[
��1 2
]
��2 3
value
��4 9
,
��9 :
int
��; >
size
��? C
,
��C D
int
��E H
offset
��I O
=
��P Q
$num
��R S
)
��S T
{
�� 	
fixed
�� 
(
�� 
byte
�� 
*
�� 
ptr
�� 
=
�� 
value
�� $
)
��$ %
{
�� 
ReadBytesSafe
�� 
(
�� 
ptr
�� !
,
��! "
size
��# '
,
��' (
offset
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
	ReadValue
�� $
<
��$ %
T
��% &
>
��& '
(
��' (
out
��( +
T
��, -
value
��. 3
)
��3 4
where
��5 :
T
��; <
:
��= >
	unmanaged
��? H
{
�� 	
int
�� 
len
�� 
=
�� 
sizeof
�� 
(
�� 
T
�� 
)
�� 
;
��  
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
len
��# &
>
��' (
Handle
��) /
->
��/ 1
AllowedReadMark
��1 @
)
��@ A
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. V
{
��V W
nameof
��W ]
(
��] ^
TryBeginRead
��^ j
)
��j k
}
��k l
$str
��l n
"
��n o
)
��o p
;
��p q
}
�� 
fixed
�� 
(
�� 
T
�� 
*
�� 
ptr
�� 
=
�� 
&
�� 
value
�� "
)
��" #
{
�� 
UnsafeUtility
�� 
.
�� 
MemCpy
�� $
(
��$ %
(
��% &
byte
��& *
*
��* +
)
��+ ,
ptr
��, /
,
��/ 0
Handle
��1 7
->
��7 9
BufferPointer
��9 F
+
��G H
Handle
��I O
->
��O Q
Position
��Q Y
,
��Y Z
len
��[ ^
)
��^ _
;
��_ `
}
�� 
Handle
�� 
->
�� 
Position
�� 
+=
�� 
len
��  #
;
��# $
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
ReadValueSafe
�� (
<
��( )
T
��) *
>
��* +
(
��+ ,
out
��, /
T
��0 1
value
��2 7
)
��7 8
where
��9 >
T
��? @
:
��A B
	unmanaged
��C L
{
�� 	
int
�� 
len
�� 
=
�� 
sizeof
�� 
(
�� 
T
�� 
)
�� 
;
��  
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
!
�� "
TryBeginReadInternal
�� %
(
��% &
len
��& )
)
��) *
)
��* +
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
fixed
�� 
(
�� 
T
�� 
*
�� 
ptr
�� 
=
�� 
&
�� 
value
�� "
)
��" #
{
�� 
UnsafeUtility
�� 
.
�� 
MemCpy
�� $
(
��$ %
(
��% &
byte
��& *
*
��* +
)
��+ ,
ptr
��, /
,
��/ 0
Handle
��1 7
->
��7 9
BufferPointer
��9 F
+
��G H
Handle
��I O
->
��O Q
Position
��Q Y
,
��Y Z
len
��[ ^
)
��^ _
;
��_ `
}
�� 
Handle
�� 
->
�� 
Position
�� 
+=
�� 
len
��  #
;
��# $
}
�� 	
}
�� 
}�� �
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\Cloned\IReaderWriter.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
	interface 
IReaderWriter 
{ 
bool 
IsReader 
{ 
get 
; 
} 
bool 
IsWriter 
{ 
get 
; 
} 
FastBufferReader 
GetFastBufferReader ,
(, -
)- .
;. /
FastBufferWriter		 
GetFastBufferWriter		 ,
(		, -
)		- .
;		. /
void 
SerializeValue 
( 
ref 
string  &
s' (
,( )
bool* .
oneByteChars/ ;
=< =
false> C
)C D
;D E
void 
SerializeValue 
< 
T 
> 
( 
ref "
T# $
[$ %
]% &
array' ,
), -
where. 3
T4 5
:6 7
	unmanaged8 A
;A B
void 
SerializeValue 
( 
ref 
byte  $
value% *
)* +
;+ ,
void 
SerializeValue 
< 
T 
> 
( 
ref "
T# $
value% *
)* +
where, 1
T2 3
:4 5
	unmanaged6 ?
;? @
void (
SerializeNetworkSerializable )
<) *
T* +
>+ ,
(, -
ref- 0
T1 2
value3 8
)8 9
where: ?
T@ A
:B C 
INetworkSerializableD X
,X Y
newZ ]
(] ^
)^ _
;_ `
bool 
PreCheck 
( 
int 
amount  
)  !
;! "
void $
SerializeValuePreChecked %
(% &
ref& )
string* 0
s1 2
,2 3
bool4 8
oneByteChars9 E
=F G
falseH M
)M N
;N O
void $
SerializeValuePreChecked %
<% &
T& '
>' (
(( )
ref) ,
T- .
[. /
]/ 0
array1 6
)6 7
where8 =
T> ?
:@ A
	unmanagedB K
;K L
void $
SerializeValuePreChecked %
(% &
ref& )
byte* .
value/ 4
)4 5
;5 6
void $
SerializeValuePreChecked %
<% &
T& '
>' (
(( )
ref) ,
T- .
value/ 4
)4 5
where6 ;
T< =
:> ?
	unmanaged@ I
;I J
} 
} �

�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\MetricId\MetricTypeSortPriorityAttribue.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
internal 
enum 
SortPriority 
:  
int! $
{ 
VeryHigh 
= 
- 
$num 
, 
High 
= 
- 
$num 
, 
Neutral		 
=		 
$num		 
,		 
Low

 
=

 
$num

 
,

 
VeryLow 
= 
$num 
, 
} 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Enum% )
)) *
]* +
internal 
class +
MetricTypeSortPriorityAttribute 2
:3 4
	Attribute5 >
{ 
public 
SortPriority 
SortPriority (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} �
pC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Units\BaseUnit.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
enum 
BaseUnit	 
{ 
Byte 
= 
$num 
, 
Second 
, 
}		 
static 

class 
BaseUnitConstants "
{ 
internal 
const 
int 
k_BaseUnitCount *
=+ ,
$num- .
;. /
} 
static 

class 
BaseUnitExtensions #
{ 
public 
static 
string 
	GetSymbol &
(& '
this' +
BaseUnit, 4
unit5 9
)9 :
{ 	
switch 
( 
unit 
) 
{ 
case 
BaseUnit 
. 
Byte "
:" #
return$ *
$str+ .
;. /
case 
BaseUnit 
. 
Second $
:$ %
return& ,
$str- 0
;0 1
default 
: 
throw 
new 
ArgumentException /
(/ 0
$"0 2
$str2 E
{E F
unitF J
}J K
"K L
)L M
;M N
} 
} 	
} 
} �
xC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\CounterFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
class 	
CounterFactory
 
: 
IMetricFactory )
{ 
public 
bool 
TryConstruct  
(  !
MetricHeader! -
header. 4
,4 5
out6 9
IMetric: A
metricB H
)H I
{ 	
metric 
= 
new 
Counter  
(  !
header! '
.' (
MetricId( 0
)0 1
;1 2
return 
true 
; 
}		 	
}

 
} �,
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\Cloned\BufferSerializerReader.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
struct 
"
BufferSerializerReader !
:" #
IReaderWriter$ 1
{ 
private 
FastBufferReader  
m_Reader! )
;) *
public		 "
BufferSerializerReader		 %
(		% &
FastBufferReader		& 6
reader		7 =
)		= >
{

 	
m_Reader 
= 
reader 
; 
} 	
public 
bool 
IsReader 
=> 
true  $
;$ %
public 
bool 
IsWriter 
=> 
false  %
;% &
public 
FastBufferReader 
GetFastBufferReader  3
(3 4
)4 5
{ 	
return 
m_Reader 
; 
} 	
public 
FastBufferWriter 
GetFastBufferWriter  3
(3 4
)4 5
{ 	
throw 
new %
InvalidOperationException /
(/ 0
$str0 }
)} ~
;~ 
} 	
public 
void 
SerializeValue "
(" #
ref# &
string' -
s. /
,/ 0
bool1 5
oneByteChars6 B
=C D
falseE J
)J K
{ 	
m_Reader 
. 
ReadValueSafe "
(" #
out# &
s' (
,( )
oneByteChars* 6
)6 7
;7 8
} 	
public   
void   
SerializeValue   "
<  " #
T  # $
>  $ %
(  % &
ref  & )
T  * +
[  + ,
]  , -
array  . 3
)  3 4
where  5 :
T  ; <
:  = >
	unmanaged  ? H
{!! 	
m_Reader"" 
."" 
ReadValueSafe"" "
(""" #
out""# &
array""' ,
)"", -
;""- .
}## 	
public%% 
void%% 
SerializeValue%% "
(%%" #
ref%%# &
byte%%' +
value%%, 1
)%%1 2
{&& 	
m_Reader'' 
.'' 
ReadByteSafe'' !
(''! "
out''" %
value''& +
)''+ ,
;'', -
}(( 	
public** 
void** 
SerializeValue** "
<**" #
T**# $
>**$ %
(**% &
ref**& )
T*** +
value**, 1
)**1 2
where**3 8
T**9 :
:**; <
	unmanaged**= F
{++ 	
m_Reader,, 
.,, 
ReadValueSafe,, "
(,," #
out,,# &
value,,' ,
),,, -
;,,- .
}-- 	
public// 
void// (
SerializeNetworkSerializable// 0
<//0 1
T//1 2
>//2 3
(//3 4
ref//4 7
T//8 9
value//: ?
)//? @
where//A F
T//G H
://I J 
INetworkSerializable//K _
,//_ `
new//a d
(//d e
)//e f
{00 	
m_Reader11 
.11 #
ReadNetworkSerializable11 ,
(11, -
out11- 0
value111 6
)116 7
;117 8
}22 	
public44 
bool44 
PreCheck44 
(44 
int44  
amount44! '
)44' (
{55 	
return66 
m_Reader66 
.66 
TryBeginRead66 (
(66( )
amount66) /
)66/ 0
;660 1
}77 	
public99 
void99 $
SerializeValuePreChecked99 ,
(99, -
ref99- 0
string991 7
s998 9
,999 :
bool99; ?
oneByteChars99@ L
=99M N
false99O T
)99T U
{:: 	
m_Reader;; 
.;; 
	ReadValue;; 
(;; 
out;; "
s;;# $
,;;$ %
oneByteChars;;& 2
);;2 3
;;;3 4
}<< 	
public>> 
void>> $
SerializeValuePreChecked>> ,
<>>, -
T>>- .
>>>. /
(>>/ 0
ref>>0 3
T>>4 5
[>>5 6
]>>6 7
array>>8 =
)>>= >
where>>? D
T>>E F
:>>G H
	unmanaged>>I R
{?? 	
m_Reader@@ 
.@@ 
	ReadValue@@ 
(@@ 
out@@ "
array@@# (
)@@( )
;@@) *
}AA 	
publicCC 
voidCC $
SerializeValuePreCheckedCC ,
(CC, -
refCC- 0
byteCC1 5
valueCC6 ;
)CC; <
{DD 	
m_ReaderEE 
.EE 
	ReadValueEE 
(EE 
outEE "
valueEE# (
)EE( )
;EE) *
}FF 	
publicHH 
voidHH $
SerializeValuePreCheckedHH ,
<HH, -
THH- .
>HH. /
(HH/ 0
refHH0 3
THH4 5
valueHH6 ;
)HH; <
whereHH= B
THHC D
:HHE F
	unmanagedHHG P
{II 	
m_ReaderJJ 
.JJ 
	ReadValueJJ 
(JJ 
outJJ "
valueJJ# (
)JJ( )
;JJ) *
}KK 	
}LL 
}MM �

oC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\Gauge.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[ 
Serializable 
] 
class 	
Gauge
 
: 
Metric 
< 
double 
>  
{ 
public 
Gauge 
( 
MetricId 
metricId &
,& '
double( .
defaultValue/ ;
=< =
default> E
)E F
:		 
base		 
(		 
metricId		 
,		 
defaultValue		 )
)		) *
{

 	
} 	
public 
void 
Set 
( 
double 
value $
)$ %
{ 	
Value 
= 
value 
; 
} 	
public 
override 
MetricContainerType +
MetricContainerType, ?
=>@ B
MetricContainerTypeC V
.V W
GaugeW \
;\ ]
} 
} �
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\MetricId\MetricTypeEnumAttribute.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Enum% )
)) *
]* +
public 

class #
MetricTypeEnumAttribute (
:) *
	Attribute+ 4
{ 
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
[ 
AttributeUsage 
( 
AttributeTargets $
.$ %
Enum% )
)) *
]* +
internal 
class 2
&MetricTypeEnumHideInInspectorAttribute 9
:: ;
	Attribute< E
{F G
}G H
} �
mC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Units\Units.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
public 

enum 
Units 
{ 
None 
, 
Bytes 
, 
BytesPerSecond 
, 
Seconds 
, 
Hertz 
, 
} 
} �3
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\NetStatSerializer.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
class 	
NetStatSerializer
 
: 
INetStatSerializer 0
{ 
MetricFactory		 
m_MetricFactory		 %
=		& '
new		( +
MetricFactory		, 9
(		9 :
)		: ;
;		; <
public 
NativeArray 
< 
byte 
>  
	Serialize! *
(* +
MetricCollection+ ;
metricCollection< L
)L M
{ 	
int 
size 
= 
$num 
; 
for 
( 
int 
i 
= 
$num 
; 
i 
< 
metricCollection  0
.0 1
Metrics1 8
.8 9
Count9 >
;> ?
++@ B
iB C
)C D
{ 
var 
metric 
= 
metricCollection -
.- .
Metrics. 5
[5 6
i6 7
]7 8
;8 9
size 
+= 
FastBufferWriter (
.( )
GetWriteSize) 5
<5 6
MetricHeader6 B
>B C
(C D
)D E
;E F
size 
+= 
metric 
. 
GetWriteSize +
(+ ,
), -
;- .
} 
size 
+= 
FastBufferWriter $
.$ %
GetWriteSize% 1
<1 2
ulong2 7
>7 8
(8 9
)9 :
;: ;
using 
var 
writer 
= 
new "
FastBufferWriter# 3
(3 4
size4 8
,8 9
	Allocator: C
.C D
TempD H
,H I
intJ M
.M N
MaxValueN V
)V W
;W X
writer 
. 
WriteValueSafe !
(! "
metricCollection" 2
.2 3
ConnectionId3 ?
)? @
;@ A
writer 
. 
WriteValueSafe !
(! "
metricCollection" 2
.2 3
Metrics3 :
.: ;
Count; @
)@ A
;A B
for 
( 
int 
i 
= 
$num 
; 
i 
< 
metricCollection /
./ 0
Metrics0 7
.7 8
Count8 =
;= >
++? A
iA B
)B C
{ 
var 
metric 
= 
metricCollection -
.- .
Metrics. 5
[5 6
i6 7
]7 8
;8 9
var   
header   
=   
new    
MetricHeader  ! -
(  - .
metric!! 
.!! 
FactoryTypeName!! *
,!!* +
metric"" 
."" 
MetricContainerType"" .
,"". /
metric## 
.## 
Id## 
)$$ 
;$$ 
writer&& 
.&& 
WriteValueSafe&& %
(&&% &
header&&& ,
)&&, -
;&&- .
writer(( 
.(( 
TryBeginWrite(( $
((($ %
metric((% +
.((+ ,
GetWriteSize((, 8
(((8 9
)((9 :
)((: ;
;((; <
metric)) 
.)) 
Write)) 
()) 
writer)) #
)))# $
;))$ %
}** 
return,, 
writer,, 
.,, 
ToNativeArray,, '
(,,' (
	Allocator,,( 1
.,,1 2
Temp,,2 6
),,6 7
;,,7 8
}-- 	
public// 
MetricCollection// 
Deserialize//  +
(//+ ,
NativeArray//, 7
<//7 8
byte//8 <
>//< =
bytes//> C
)//C D
{00 	
var11 
metrics11 
=11 
new11 
List11 "
<11" #
IMetric11# *
>11* +
(11+ ,
)11, -
;11- .
ulong22 
connectionId22 
;22 
using44 
(44 
var44 
reader44 
=44 
new44  #
FastBufferReader44$ 4
(444 5
bytes445 :
,44: ;
	Allocator44< E
.44E F
Temp44F J
)44J K
)44K L
{55 
reader66 
.66 
ReadValueSafe66 $
(66$ %
out66% (
connectionId66) 5
)665 6
;666 7
reader88 
.88 
ReadValueSafe88 $
(88$ %
out88% (
int88) ,
metricsCount88- 9
)889 :
;88: ;
for99 
(99 
int99 
i99 
=99 
$num99 
;99 
i99  !
<99" #
metricsCount99$ 0
;990 1
++992 4
i994 5
)995 6
{:: 
reader;; 
.;; 
ReadValueSafe;; (
(;;( )
out;;) ,
MetricHeader;;- 9
header;;: @
);;@ A
;;;A B
if== 
(== 
m_MetricFactory== '
.==' (
TryConstruct==( 4
(==4 5
header==5 ;
,==; <
out=== @
var==A D
metric==E K
)==K L
)==L M
{>> 
metric?? 
.?? 
Read?? #
(??# $
reader??$ *
)??* +
;??+ ,
metrics@@ 
.@@  
Add@@  #
(@@# $
metric@@$ *
)@@* +
;@@+ ,
}AA 
elseBB 
{CC 
throwDD 
newDD !%
InvalidOperationExceptionDD" ;
(DD; <
$"DD< >
$strDD> ~
{DD~ 
header	DD �
}
DD� �
"
DD� �
)
DD� �
;
DD� �
}EE 
}FF 
}GG 
returnII 
newII 
MetricCollectionII '
(II' (
metricsJJ 
,JJ 
connectionIdKK 
)KK 
;KK 
}LL 	
}MM 
}NN �{
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\Cloned\BitWriter.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
ref 
struct 
	BitWriter 
{ 
private 
FastBufferWriter  
m_Writer! )
;) *
private 
unsafe 
byte 
* 
m_BufferPointer ,
;, -
private 
readonly 
int 

m_Position '
;' (
private 
int 
m_BitPosition !
;! "
private 
int %
m_AllowedBitwiseWriteMark -
;- .
private 
const 
int 
k_BitsPerByte '
=( )
$num* +
;+ ,
public 
bool 

BitAligned 
{ 	
[ 

MethodImpl 
( 
MethodImplOptions )
.) *
AggressiveInlining* <
)< =
]= >
get 
=> 
( 
m_BitPosition !
&" #
$num$ %
)% &
==' )
$num* +
;+ ,
} 	
internal   
unsafe   
	BitWriter   !
(  ! "
FastBufferWriter  " 2
writer  3 9
)  9 :
{!! 	
m_Writer"" 
="" 
writer"" 
;"" 
m_BufferPointer## 
=## 
writer## $
.##$ %
Handle##% +
->##+ -
BufferPointer##- :
+##; <
writer##= C
.##C D
Handle##D J
->##J L
Position##L T
;##T U

m_Position$$ 
=$$ 
writer$$ 
.$$  
Handle$$  &
->$$& (
Position$$( 0
;$$0 1
m_BitPosition%% 
=%% 
$num%% 
;%% %
m_AllowedBitwiseWriteMark'' %
=''& '
(''( )
m_Writer'') 1
.''1 2
Handle''2 8
->''8 :
AllowedWriteMark'': J
-''K L
m_Writer''M U
.''U V
Handle''V \
->''\ ^
Position''^ f
)''f g
*''h i
k_BitsPerByte''j w
;''w x
})) 	
public.. 
void.. 
Dispose.. 
(.. 
).. 
{// 	
var00 
bytesWritten00 
=00 
m_BitPosition00 ,
>>00- /
$num000 1
;001 2
if11 
(11 
!11 

BitAligned11 
)11 
{22 
++44 
bytesWritten44 
;44 
}55 
m_Writer77 
.77 
CommitBitwiseWrites77 (
(77( )
bytesWritten77) 5
)775 6
;776 7
}88 	
publicHH 
unsafeHH 
boolHH 
TryBeginWriteBitsHH ,
(HH, -
intHH- 0
bitCountHH1 9
)HH9 :
{II 	
varJJ 
newBitPositionJJ 
=JJ  
m_BitPositionJJ! .
+JJ/ 0
bitCountJJ1 9
;JJ9 :
varKK -
!totalBytesWrittenInBitwiseContextKK 1
=KK2 3
newBitPositionKK4 B
>>KKC E
$numKKF G
;KKG H
ifLL 
(LL 
(LL 
newBitPositionLL 
&LL  !
$numLL" #
)LL# $
!=LL% '
$numLL( )
)LL) *
{MM 
++OO -
!totalBytesWrittenInBitwiseContextOO 3
;OO3 4
}PP 
ifRR 
(RR 

m_PositionRR 
+RR -
!totalBytesWrittenInBitwiseContextRR >
>RR? @
m_WriterRRA I
.RRI J
HandleRRJ P
->RRP R
CapacityRRR Z
)RRZ [
{SS 
ifTT 
(TT 

m_PositionTT 
+TT  -
!totalBytesWrittenInBitwiseContextTT! B
>TTC D
m_WriterTTE M
.TTM N
HandleTTN T
->TTT V
MaxCapacityTTV a
)TTa b
{UU 
returnVV 
falseVV  
;VV  !
}WW 
ifXX 
(XX 
m_WriterXX 
.XX 
HandleXX #
->XX# %
CapacityXX% -
<XX. /
m_WriterXX0 8
.XX8 9
HandleXX9 ?
->XX? A
MaxCapacityXXA L
)XXL M
{YY 
m_WriterZZ 
.ZZ 
GrowZZ !
(ZZ! "-
!totalBytesWrittenInBitwiseContextZZ" C
)ZZC D
;ZZD E
m_BufferPointer[[ #
=[[$ %
m_Writer[[& .
.[[. /
Handle[[/ 5
->[[5 7
BufferPointer[[7 D
+[[E F
m_Writer[[G O
.[[O P
Handle[[P V
->[[V X
Position[[X `
;[[` a
}\\ 
else]] 
{^^ 
return__ 
false__  
;__  !
}`` 
}aa %
m_AllowedBitwiseWriteMarkcc %
=cc& '
newBitPositioncc( 6
;cc6 7
returnee 
trueee 
;ee 
}ff 	
publicmm 
unsafemm 
voidmm 
	WriteBitsmm $
(mm$ %
ulongmm% *
valuemm+ 0
,mm0 1
uintmm2 6
bitCountmm7 ?
)mm? @
{nn 	
ifpp 
(pp 
bitCountpp 
>pp 
$numpp 
)pp 
{qq 
throwrr 
newrr '
ArgumentOutOfRangeExceptionrr 5
(rr5 6
nameofrr6 <
(rr< =
bitCountrr= E
)rrE F
,rrF G
$strrrH }
)rr} ~
;rr~ 
}ss 
intuu 
checkPosuu 
=uu 
(uu 
intuu 
)uu  
(uu  !
m_BitPositionuu! .
+uu/ 0
bitCountuu1 9
)uu9 :
;uu: ;
ifvv 
(vv 
checkPosvv 
>vv %
m_AllowedBitwiseWriteMarkvv 4
)vv4 5
{ww 
throwxx 
newxx 
OverflowExceptionxx +
(xx+ ,
$"xx, .
$strxx. W
{xxW X
nameofxxX ^
(xx^ _
TryBeginWriteBitsxx_ p
)xxp q
}xxq r
$strxxr t
"xxt u
)xxu v
;xxv w
}yy 
int|| 

wholeBytes|| 
=|| 
(|| 
int|| !
)||! "
bitCount||" *
/||+ ,
k_BitsPerByte||- :
;||: ;
byte}} 
*}} 
asBytes}} 
=}} 
(}} 
byte}} !
*}}! "
)}}" #
&}}# $
value}}$ )
;}}) *
if~~ 
(~~ 

BitAligned~~ 
)~~ 
{ 
if
�� 
(
�� 

wholeBytes
�� 
!=
�� !
$num
��" #
)
��# $
{
�� 
WritePartialValue
�� %
(
��% &
value
��& +
,
��+ ,

wholeBytes
��- 7
)
��7 8
;
��8 9
}
�� 
}
�� 
else
�� 
{
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #

wholeBytes
��$ .
;
��. /
++
��0 2
i
��2 3
)
��3 4
{
�� 
WriteMisaligned
�� #
(
��# $
asBytes
��$ +
[
��+ ,
i
��, -
]
��- .
)
��. /
;
��/ 0
}
�� 
}
�� 
for
�� 
(
�� 
var
�� 
count
�� 
=
�� 

wholeBytes
�� '
*
��( )
k_BitsPerByte
��* 7
;
��7 8
count
��9 >
<
��? @
bitCount
��A I
;
��I J
++
��K M
count
��M R
)
��R S
{
�� 
WriteBit
�� 
(
�� 
(
�� 
value
�� 
&
��  !
(
��" #
$num
��# &
<<
��' )
count
��* /
)
��/ 0
)
��0 1
!=
��2 4
$num
��5 6
)
��6 7
;
��7 8
}
�� 
}
�� 	
public
�� 
void
�� 
	WriteBits
�� 
(
�� 
byte
�� "
value
��# (
,
��( )
uint
��* .
bitCount
��/ 7
)
��7 8
{
�� 	
int
�� 
checkPos
�� 
=
�� 
(
�� 
int
�� 
)
��  
(
��  !
m_BitPosition
��! .
+
��/ 0
bitCount
��1 9
)
��9 :
;
��: ;
if
�� 
(
�� 
checkPos
�� 
>
�� '
m_AllowedBitwiseWriteMark
�� 4
)
��4 5
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. W
{
��W X
nameof
��X ^
(
��^ _
TryBeginWriteBits
��_ p
)
��p q
}
��q r
$str
��r t
"
��t u
)
��u v
;
��v w
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
bitCount
��  (
;
��( )
++
��* ,
i
��, -
)
��- .
{
�� 
WriteBit
�� 
(
�� 
(
�� 
(
�� 
value
��  
>>
��! #
i
��$ %
)
��% &
&
��' (
$num
��) *
)
��* +
!=
��, .
$num
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
WriteBit
�� #
(
��# $
bool
��$ (
bit
��) ,
)
��, -
{
�� 	
int
�� 
checkPos
�� 
=
�� 
(
�� 
m_BitPosition
�� )
+
��* +
$num
��, -
)
��- .
;
��. /
if
�� 
(
�� 
checkPos
�� 
>
�� '
m_AllowedBitwiseWriteMark
�� 4
)
��4 5
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. W
{
��W X
nameof
��X ^
(
��^ _
TryBeginWriteBits
��_ p
)
��p q
}
��q r
$str
��r t
"
��t u
)
��u v
;
��v w
}
�� 
int
�� 
offset
�� 
=
�� 
m_BitPosition
�� &
&
��' (
$num
��) *
;
��* +
int
�� 
pos
�� 
=
�� 
m_BitPosition
�� #
>>
��$ &
$num
��' (
;
��( )
++
�� 
m_BitPosition
�� 
;
�� 
m_BufferPointer
�� 
[
�� 
pos
�� 
]
��  
=
��! "
(
��# $
byte
��$ (
)
��( )
(
��) *
bit
��* -
?
��. /
(
��0 1
m_BufferPointer
��1 @
[
��@ A
pos
��A D
]
��D E
&
��F G
~
��H I
(
��I J
$num
��J K
<<
��L N
offset
��O U
)
��U V
)
��V W
|
��X Y
(
��Z [
$num
��[ \
<<
��] _
offset
��` f
)
��f g
:
��h i
(
��j k
m_BufferPointer
��k z
[
��z {
pos
��{ ~
]
��~ 
&��� �
~��� �
(��� �
$num��� �
<<��� �
offset��� �
)��� �
)��� �
)��� �
;��� �
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
private
�� 
unsafe
�� 
void
�� 
WritePartialValue
�� -
<
��- .
T
��. /
>
��/ 0
(
��0 1
T
��1 2
value
��3 8
,
��8 9
int
��: =
bytesToWrite
��> J
,
��J K
int
��L O
offsetBytes
��P [
=
��\ ]
$num
��^ _
)
��_ `
where
��a f
T
��g h
:
��i j
	unmanaged
��k t
{
�� 	
byte
�� 
*
�� 
ptr
�� 
=
�� 
(
�� 
(
�� 
byte
�� 
*
�� 
)
��  
&
��  !
value
��! &
)
��& '
+
��( )
offsetBytes
��* 5
;
��5 6
byte
�� 
*
�� 
bufferPointer
�� 
=
��  !
m_BufferPointer
��" 1
+
��2 3

m_Position
��4 >
;
��> ?
UnsafeUtility
�� 
.
�� 
MemCpy
��  
(
��  !
bufferPointer
��! .
,
��. /
ptr
��0 3
,
��3 4
bytesToWrite
��5 A
)
��A B
;
��B C
m_BitPosition
�� 
+=
�� 
bytesToWrite
�� )
*
��* +
k_BitsPerByte
��, 9
;
��9 :
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
private
�� 
unsafe
�� 
void
�� 
WriteMisaligned
�� +
(
��+ ,
byte
��, 0
value
��1 6
)
��6 7
{
�� 	
int
�� 
off
�� 
=
�� 
m_BitPosition
�� #
&
��$ %
$num
��& '
;
��' (
int
�� 
pos
�� 
=
�� 
m_BitPosition
�� #
>>
��$ &
$num
��' (
;
��( )
int
�� 
shift1
�� 
=
�� 
$num
�� 
-
�� 
off
��  
;
��  !
m_BufferPointer
�� 
[
�� 
pos
�� 
+
��  !
$num
��" #
]
��# $
=
��% &
(
��' (
byte
��( ,
)
��, -
(
��- .
(
��. /
m_BufferPointer
��/ >
[
��> ?
pos
��? B
+
��C D
$num
��E F
]
��F G
&
��H I
(
��J K
$num
��K O
<<
��P R
off
��S V
)
��V W
)
��W X
|
��Y Z
(
��[ \
value
��\ a
>>
��b d
shift1
��e k
)
��k l
)
��l m
;
��m n
m_BufferPointer
�� 
[
�� 
pos
�� 
]
��  
=
��! "
(
��# $
byte
��$ (
)
��( )
(
��) *
(
��* +
m_BufferPointer
��+ :
[
��: ;
pos
��; >
]
��> ?
&
��@ A
(
��B C
$num
��C G
>>
��H J
shift1
��K Q
)
��Q R
)
��R S
|
��T U
(
��V W
value
��W \
<<
��] _
off
��` c
)
��c d
)
��d e
;
��e f
m_BitPosition
�� 
+=
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
}�� �
nC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 5
)5 6
]6 7
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str :
): ;
]; <
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str C
)C D
]D E
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str M
)M N
]N O
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K
[		 
assembly		 	
:			 

InternalsVisibleTo		 
(		 
$str		 O
)		O P
]		P Q
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
 N
)

N O
]

O P
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str T
)T U
]U V
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str Q
)Q R
]R S
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str U
)U V
]V W
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str N
)N O
]O P
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str V
)V W
]W X
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str \
)\ ]
]] ^
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str H
)H I
]I J
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str A
)A B
]B C
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 7
)7 8
]8 9�2
uC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\EventMetric.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[ 
Serializable 
] 
class 	
EventMetric
 
< 
TValue 
> 
: 
IEventMetric  ,
<, -
TValue- 3
>3 4
,4 5
IResettable6 A
where		 
TValue		 
:		 
	unmanaged		  
{

 
readonly 
List 
< 
TValue 
> 
m_Values &
=' (
new) ,
List- 1
<1 2
TValue2 8
>8 9
(9 :
): ;
;; <
public 
int 
Count 
=> 
m_Values $
.$ %
Count% *
;* +
public 
EventMetric 
( 
MetricId #
id$ &
)& '
{ 	
Id 
= 
id 
; 
if 
( 
EventMetricFactory !
.! "!
TryGetFactoryTypeName" 7
(7 8
typeof8 >
(> ?
TValue? E
)E F
,F G
outH K
varL O
genericTypeNameP _
)_ `
)` a
{ 
FactoryTypeName 
=  !
genericTypeName" 1
;1 2
} 
} 	
public 
string 
Name 
=> 
Id  
.  !
ToString! )
() *
)* +
;+ ,
public 
MetricId 
Id 
{ 
get  
;  !
}" #
public 
MetricContainerType "
MetricContainerType# 6
=>7 9
MetricContainerType: M
.M N
EventN S
;S T
public 
FixedString128Bytes "
FactoryTypeName# 2
{3 4
get5 8
;8 9
}: ;
public 
int 
GetWriteSize 
(  
)  !
{   	
int!! 
size!! 
=!! 
$num!! 
;!! 
size"" 
+="" 
FastBufferWriter"" $
.""$ %
GetWriteSize""% 1
<""1 2
int""2 5
>""5 6
(""6 7
)""7 8
;""8 9
size## 
+=## 
FastBufferWriter## $
.##$ %
GetWriteSize##% 1
<##1 2
TValue##2 8
>##8 9
(##9 :
)##: ;
*##< =
m_Values##> F
.##F G
Count##G L
;##L M
return$$ 
size$$ 
;$$ 
}%% 	
public'' 
void'' 
Write'' 
('' 
FastBufferWriter'' *
writer''+ 1
)''1 2
{(( 	
writer)) 
.)) 

WriteValue)) 
()) 
m_Values)) &
.))& '
Count))' ,
))), -
;))- .
for** 
(** 
int** 
i** 
=** 
$num** 
;** 
i** 
<** 
m_Values**  (
.**( )
Count**) .
;**. /
++**0 2
i**2 3
)**3 4
{++ 
writer,, 
.,, 

WriteValue,, !
(,,! "
m_Values,," *
[,,* +
i,,+ ,
],,, -
),,- .
;,,. /
}-- 
}.. 	
public00 
void00 
Read00 
(00 
FastBufferReader00 )
reader00* 0
)000 1
{11 	
m_Values22 
.22 
Clear22 
(22 
)22 
;22 
reader33 
.33 
ReadValueSafe33  
(33  !
out33! $
int33% (
count33) .
)33. /
;33/ 0
for44 
(44 
int44 
i44 
=44 
$num44 
;44 
i44 
<44 
count44  %
;44% &
++44' )
i44) *
)44* +
{55 
reader66 
.66 
ReadValueSafe66 $
(66$ %
out66% (
TValue66) /
value660 5
)665 6
;666 7
m_Values77 
.77 
Add77 
(77 
value77 "
)77" #
;77# $
}88 
}99 	
public;; 
IReadOnlyList;; 
<;; 
TValue;; #
>;;# $
Values;;% +
=>;;, .
m_Values;;/ 7
;;;7 8
public== 
bool== !
ShouldResetOnDispatch== )
{==* +
get==, /
;==/ 0
set==1 4
;==4 5
}==6 7
===8 9
true==: >
;==> ?
public?? 
uint?? 
MaxNumberOfValues?? %
{??& '
get??( +
;??+ ,
set??- 0
;??0 1
}??2 3
=??4 5
$num??6 9
;??9 :
publicAA 
boolAA 
WentOverLimitAA !
{AA" #
getAA$ '
;AA' (
privateAA) 0
setAA1 4
;AA4 5
}AA6 7
publicCC 
voidCC 
MarkCC 
(CC 
TValueCC 
valueCC  %
)CC% &
{DD 	
ifEE 
(EE 
m_ValuesEE 
.EE 
CountEE 
>=EE !
MaxNumberOfValuesEE" 3
)EE3 4
{FF 
WentOverLimitGG 
=GG 
trueGG  $
;GG$ %
returnHH 
;HH 
}II 
m_ValuesJJ 
.JJ 
AddJJ 
(JJ 
valueJJ 
)JJ 
;JJ  
}KK 	
publicMM 
voidMM 
ResetMM 
(MM 
)MM 
{NN 	
m_ValuesOO 
.OO 
ClearOO 
(OO 
)OO 
;OO 
WentOverLimitPP 
=PP 
falsePP !
;PP! "
}QQ 	
}RR 
}SS �
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\MetricId\AssemblyRequiresTypeRegistrationAttribute.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[

 
AttributeUsage

 
(

 
AttributeTargets

 $
.

$ %
Assembly

% -
)

- .
]

. /
public 

class 5
)AssemblyRequiresTypeRegistrationAttribute :
:; <
	Attribute= F
{ 
} 
} �
oC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\Timer.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[ 
Serializable 
] 
class 	
Timer
 
: 
Metric 
< 
TimeSpan !
>! "
{ 
public		 
Timer		 
(		 
MetricId		 
metricId		 &
,		& '
TimeSpan		( 0
defaultValue		1 =
=		> ?
default		@ G
)		G H
:

 
base

 
(

 
metricId

 
,

 
defaultValue

 )
)

) *
{ 	
} 	
public 
void 
Set 
( 
TimeSpan  
value! &
)& '
{ 	
Value 
= 
value 
; 
} 	
public 

TimerScope 
Time 
( 
)  
{ 	
return 
new 

TimerScope !
(! "
Set" %
)% &
;& '
} 	
public 
readonly 
struct 

TimerScope )
:* +
IDisposable, 7
{ 	
readonly 
Action 
< 
TimeSpan $
>$ %

m_Callback& 0
;0 1
readonly 
	Stopwatch 
m_Stopwatch *
;* +
internal 

TimerScope 
(  
Action  &
<& '
TimeSpan' /
>/ 0
callback1 9
)9 :
{ 

m_Callback 
= 
callback %
;% &
m_Stopwatch!! 
=!! 
new!! !
	Stopwatch!!" +
(!!+ ,
)!!, -
;!!- .
m_Stopwatch"" 
."" 
Start"" !
(""! "
)""" #
;""# $
}## 
public%% 
void%% 
Dispose%% 
(%%  
)%%  !
{&& 

m_Callback'' 
?'' 
.'' 
Invoke'' "
(''" #
m_Stopwatch''# .
.''. /
Elapsed''/ 6
)''6 7
;''7 8
}(( 
})) 	
public++ 
override++ 
MetricContainerType++ +
MetricContainerType++, ?
=>++@ B
MetricContainerType++C V
.++V W
Timer++W \
;++\ ]
},, 
}-- �
uC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\IResettable.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
	interface 
IResettable 
{ 
bool !
ShouldResetOnDispatch "
{# $
get% (
;( )
}* +
void 
Reset 
( 
) 
; 
} 
}		 �+
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\Cloned\BufferSerializerWriter.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
struct 
"
BufferSerializerWriter !
:" #
IReaderWriter$ 1
{ 
private 
FastBufferWriter  
m_Writer! )
;) *
public		 "
BufferSerializerWriter		 %
(		% &
FastBufferWriter		& 6
writer		7 =
)		= >
{

 	
m_Writer 
= 
writer 
; 
} 	
public 
bool 
IsReader 
=> 
false  %
;% &
public 
bool 
IsWriter 
=> 
true  $
;$ %
public 
FastBufferReader 
GetFastBufferReader  3
(3 4
)4 5
{ 	
throw 
new %
InvalidOperationException /
(/ 0
$str0 }
)} ~
;~ 
} 	
public 
FastBufferWriter 
GetFastBufferWriter  3
(3 4
)4 5
{ 	
return 
m_Writer 
; 
} 	
public 
void 
SerializeValue "
(" #
ref# &
string' -
s. /
,/ 0
bool1 5
oneByteChars6 B
=C D
falseE J
)J K
{ 	
m_Writer 
. 
WriteValueSafe #
(# $
s$ %
,% &
oneByteChars' 3
)3 4
;4 5
} 	
public   
void   
SerializeValue   "
<  " #
T  # $
>  $ %
(  % &
ref  & )
T  * +
[  + ,
]  , -
array  . 3
)  3 4
where  5 :
T  ; <
:  = >
	unmanaged  ? H
{!! 	
m_Writer"" 
."" 
WriteValueSafe"" #
(""# $
array""$ )
)"") *
;""* +
}## 	
public%% 
void%% 
SerializeValue%% "
(%%" #
ref%%# &
byte%%' +
value%%, 1
)%%1 2
{&& 	
m_Writer'' 
.'' 
WriteByteSafe'' "
(''" #
value''# (
)''( )
;'') *
}(( 	
public** 
void** 
SerializeValue** "
<**" #
T**# $
>**$ %
(**% &
ref**& )
T*** +
value**, 1
)**1 2
where**3 8
T**9 :
:**; <
	unmanaged**= F
{++ 	
m_Writer,, 
.,, 
WriteValueSafe,, #
(,,# $
value,,$ )
),,) *
;,,* +
}-- 	
public// 
void// (
SerializeNetworkSerializable// 0
<//0 1
T//1 2
>//2 3
(//3 4
ref//4 7
T//8 9
value//: ?
)//? @
where//A F
T//G H
://I J 
INetworkSerializable//K _
,//_ `
new//a d
(//d e
)//e f
{00 	
m_Writer11 
.11 $
WriteNetworkSerializable11 -
(11- .
value11. 3
)113 4
;114 5
}22 	
public44 
bool44 
PreCheck44 
(44 
int44  
amount44! '
)44' (
{55 	
return66 
m_Writer66 
.66 
TryBeginWrite66 )
(66) *
amount66* 0
)660 1
;661 2
}77 	
public99 
void99 $
SerializeValuePreChecked99 ,
(99, -
ref99- 0
string991 7
s998 9
,999 :
bool99; ?
oneByteChars99@ L
=99M N
false99O T
)99T U
{:: 	
m_Writer;; 
.;; 

WriteValue;; 
(;;  
s;;  !
,;;! "
oneByteChars;;# /
);;/ 0
;;;0 1
}<< 	
public>> 
void>> $
SerializeValuePreChecked>> ,
<>>, -
T>>- .
>>>. /
(>>/ 0
ref>>0 3
T>>4 5
[>>5 6
]>>6 7
array>>8 =
)>>= >
where>>? D
T>>E F
:>>G H
	unmanaged>>I R
{?? 	
m_Writer@@ 
.@@ 

WriteValue@@ 
(@@  
array@@  %
)@@% &
;@@& '
}AA 	
publicCC 
voidCC $
SerializeValuePreCheckedCC ,
(CC, -
refCC- 0
byteCC1 5
valueCC6 ;
)CC; <
{DD 	
m_WriterEE 
.EE 
	WriteByteEE 
(EE 
valueEE $
)EE$ %
;EE% &
}FF 	
publicHH 
voidHH $
SerializeValuePreCheckedHH ,
<HH, -
THH- .
>HH. /
(HH/ 0
refHH0 3
THH4 5
valueHH6 ;
)HH; <
whereHH= B
THHC D
:HHE F
	unmanagedHHG P
{II 	
m_WriterJJ 
.JJ 

WriteValueJJ 
(JJ  
valueJJ  %
)JJ% &
;JJ& '
}KK 	
}LL 
}MM �6
{C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\MetricId\MetricId.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[ 
Serializable 
] 
public 

struct 
MetricId 
: 

IEquatable '
<' (
MetricId( 0
>0 1
{ 
[ 	
field	 
: 
SerializeField 
] 
internal 
int 
	TypeIndex 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
field	 
: 
SerializeField 
] 
internal 
int 
	EnumValue 
{  
get! $
;$ %
set& )
;) *
}+ ,
internal 
Type 
EnumType 
=> !
MetricIdTypeLibrary" 5
.5 6
GetType6 =
(= >
	TypeIndex> G
)G H
;H I
internal 
string 
Name 
=> 
MetricIdTypeLibrary  3
.3 4
GetEnumName4 ?
(? @
	TypeIndex@ I
,I J
	EnumValueK T
)T U
;U V
internal 
string 
DisplayName #
=>$ &
MetricIdTypeLibrary' :
.: ;
GetEnumDisplayName; M
(M N
	TypeIndexN W
,W X
	EnumValueY b
)b c
;c d
internal 

MetricKind 

MetricKind &
=>' )
MetricIdTypeLibrary* =
.= >
GetEnumMetricKind> O
(O P
	TypeIndexP Y
,Y Z
	EnumValue[ d
)d e
;e f
internal 
	BaseUnits 
Units  
=>! #
MetricIdTypeLibrary$ 7
.7 8
GetEnumUnit8 C
(C D
	TypeIndexD M
,M N
	EnumValueO X
)X Y
;Y Z
internal 
bool 
DisplayAsPercentage )
=>* ,
MetricIdTypeLibrary- @
.@ A"
GetDisplayAsPercentageA W
(W X
	TypeIndexX a
,a b
	EnumValuec l
)l m
;m n
internal 
MetricId 
( 
int 
	typeIndex '
,' (
int) ,
	enumValue- 6
)6 7
{ 	
if 
( 
! 
MetricIdTypeLibrary $
.$ %
IsValidTypeIndex% 5
(5 6
	typeIndex6 ?
)? @
)@ A
{ 
throw 
new '
ArgumentOutOfRangeException 5
(5 6
$"   
$str   '
{  ' (
nameof  ( .
(  . /
MetricId  / 7
)  7 8
}  8 9
$str  9 L
{  L M
nameof  M S
(  S T
	TypeIndex  T ]
)  ] ^
}  ^ _
$str  _ `
{  ` a
	typeIndex  a j
}  j k
$str  k l
"  l m
)  m n
;  n o
}!! 
	TypeIndex"" 
="" 
	typeIndex"" !
;""! "
	EnumValue## 
=## 
	enumValue## !
;##! "
}$$ 	
internal&& 
MetricId&& 
(&& 
Type&& 
enumType&& '
,&&' (
int&&) ,
	enumValue&&- 6
)&&6 7
{'' 	
	TypeIndex(( 
=(( 
MetricIdTypeLibrary(( +
.((+ ,
GetTypeIndex((, 8
(((8 9
enumType((9 A
)((A B
;((B C
	EnumValue)) 
=)) 
	enumValue)) !
;))! "
}** 	
public22 
static22 
MetricId22 
Create22 %
<22% &
T22& '
>22' (
(22( )
T22) *
value22+ 0
)220 1
where33 
T33 
:33 
struct33 
,33 
IConvertible33 )
{44 	
var55 
enumType55 
=55 
typeof55 !
(55! "
T55" #
)55# $
;55$ %
var66 
	enumValue66 
=66 
value66 !
.66! "
ToInt3266" )
(66) *
CultureInfo66* 5
.665 6
InvariantCulture666 F
)66F G
;66G H
return77 
new77 
MetricId77 
(77  
enumType77  (
,77( )
	enumValue77* 3
)773 4
;774 5
}88 	
public?? 
bool?? 
Equals?? 
(?? 
MetricId?? #
other??$ )
)??) *
{@@ 	
returnAA 
	TypeIndexAA 
==AA 
otherAA  %
.AA% &
	TypeIndexAA& /
&&AA0 2
	EnumValueAA3 <
==AA= ?
otherAA@ E
.AAE F
	EnumValueAAF O
;AAO P
}BB 	
publicII 
overrideII 
boolII 
EqualsII #
(II# $
objectII$ *
objII+ .
)II. /
{JJ 	
ifKK 
(KK 
ReferenceEqualsKK 
(KK  
nullKK  $
,KK$ %
objKK& )
)KK) *
)KK* +
returnKK, 2
falseKK3 8
;KK8 9
ifLL 
(LL 
objLL 
.LL 
GetTypeLL 
(LL 
)LL 
!=LL  
thisLL! %
.LL% &
GetTypeLL& -
(LL- .
)LL. /
)LL/ 0
returnLL1 7
falseLL8 =
;LL= >
returnMM 
EqualsMM 
(MM 
(MM 
MetricIdMM #
)MM# $
objMM$ '
)MM' (
;MM( )
}NN 	
publicTT 
overrideTT 
intTT 
GetHashCodeTT '
(TT' (
)TT( )
{UU 	
returnVV 
$numVV 
*VV 
	TypeIndexVV "
+VV# $
$numVV% '
*VV( )
	EnumValueVV* 3
;VV3 4
}WW 	
public]] 
override]] 
string]] 
ToString]] '
(]]' (
)]]( )
=>]]* ,
Name]]- 1
;]]1 2
publicdd 
staticdd 
implicitdd 
operatordd '
stringdd( .
(dd. /
MetricIddd/ 7
metricIddd8 @
)dd@ A
=>ddB D
metricIdddE M
.ddM N
ToStringddN V
(ddV W
)ddW X
;ddX Y
}ee 
}ff �
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\MetricId\MetricMetadataAttribute.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[

 
AttributeUsage

 
(

 
AttributeTargets

 $
.

$ %
Field

% *
)

* +
]

+ ,
public 

class #
MetricMetadataAttribute (
:) *
	Attribute+ 4
{ 
public 
string 
DisplayName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 

MetricKind 

MetricKind $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4

MetricKind5 ?
.? @
Counter@ G
;G H
public 
Units 
Units 
{ 
get  
;  !
set" %
;% &
}' (
=) *
Units+ 0
.0 1
None1 5
;5 6
public"" 
bool"" 
DisplayAsPercentage"" '
{""( )
get""* -
;""- .
set""/ 2
;""2 3
}""4 5
}## 
}$$ ��
}C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\MetricIdTypeLibrary.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
public 

static 
class 
MetricIdTypeLibrary +
{ 
static 
readonly 
List 
< 
Type !
>! "
k_Types# *
=+ ,
new- 0
List1 5
<5 6
Type6 :
>: ;
(; <
)< =
;= >
static 
readonly 
List 
< 
string #
># $
k_TypeDisplayNames% 7
=8 9
new: =
List> B
<B C
stringC I
>I J
(J K
)K L
;L M
static 
readonly 
List 
< 
int  
[  !
]! "
>" #
k_EnumValues$ 0
=1 2
new3 6
List7 ;
<; <
int< ?
[? @
]@ A
>A B
(B C
)C D
;D E
static 
readonly 
List 
< 
string #
[# $
]$ %
>% &
k_EnumNames' 2
=3 4
new5 8
List9 =
<= >
string> D
[D E
]E F
>F G
(G H
)H I
;I J
static 
readonly 
List 
< 
string #
[# $
]$ %
>% &
k_EnumDisplayNames' 9
=: ;
new< ?
List@ D
<D E
stringE K
[K L
]L M
>M N
(N O
)O P
;P Q
static 
readonly 
List 
< 

MetricKind '
[' (
]( )
>) *
k_MetricKinds+ 8
=9 :
new; >
List? C
<C D

MetricKindD N
[N O
]O P
>P Q
(Q R
)R S
;S T
static 
readonly 
List 
< 
	BaseUnits &
[& '
]' (
>( )
k_Units* 1
=2 3
new4 7
List8 <
<< =
	BaseUnits= F
[F G
]G H
>H I
(I J
)J K
;K L
static 
readonly 
List 
< 
bool !
[! "
]" #
># $!
k_DisplayAsPercentage% :
=; <
new= @
ListA E
<E F
boolF J
[J K
]K L
>L M
(M N
)N O
;O P
internal 
static 
IReadOnlyList %
<% &
Type& *
>* +
Types, 1
=>2 4
k_Types5 <
;< =
internal 
static 
IReadOnlyList %
<% &
string& ,
>, -
TypeDisplayNames. >
=>? A
k_TypeDisplayNamesB T
;T U
static$$ 
MetricIdTypeLibrary$$ "
($$" #
)$$# $
{%% 	
TypeRegistration&& 
.&& 
RunIfNeeded&& (
(&&( )
)&&) *
;&&* +
}'' 	
public.. 
static.. 
void.. 
RegisterType.. '
<..' (
	TEnumType..( 1
>..1 2
(..2 3
)..3 4
{// 	
k_Types00 
.00 
Add00 
(00 
typeof00 
(00 
	TEnumType00 (
)00( )
)00) *
;00* +
}11 	
internal33 
static33 
void33 '
TypeRegistrationPostProcess33 8
(338 9
)339 :
{44 	
k_Types55 
.55 
Sort55 
(55 
(55 
a55 
,55 
b55 
)55 
=>55  "
{66 
var77 
aSortPriorityAttr77 %
=77& '
a88 
.88 
GetCustomAttribute88 (
<88( )+
MetricTypeSortPriorityAttribute88) H
>88H I
(88I J
)88J K
;88K L
var99 
aSortPriority99 !
=99" #
aSortPriorityAttr99$ 5
?995 6
.996 7
SortPriority997 C
??99D F
SortPriority99G S
.99S T
Neutral99T [
;99[ \
var;; 
bSortPriorityAttr;; %
=;;& '
b<< 
.<< 
GetCustomAttribute<< (
<<<( )+
MetricTypeSortPriorityAttribute<<) H
><<H I
(<<I J
)<<J K
;<<K L
var== 
bSortPriority== !
===" #
bSortPriorityAttr==$ 5
?==5 6
.==6 7
SortPriority==7 C
??==D F
SortPriority==G S
.==S T
Neutral==T [
;==[ \
var@@ "
sortPriorityComparison@@ *
=@@+ ,
aSortPriority@@- :
.@@: ;
	CompareTo@@; D
(@@D E
bSortPriority@@E R
)@@R S
;@@S T
ifAA 
(AA "
sortPriorityComparisonAA *
!=AA+ -
$numAA. /
)AA/ 0
{BB 
returnCC "
sortPriorityComparisonCC 1
;CC1 2
}DD 
returnGG 
StringComparerGG %
.GG% &
InvariantCultureGG& 6
.GG6 7
CompareGG7 >
(GG> ?
aGG? @
.GG@ A
FullNameGGA I
,GGI J
bGGK L
.GGL M
FullNameGGM U
)GGU V
;GGV W
}HH 
)HH 
;HH 
foreachJJ 
(JJ 
varJJ 
typeJJ 
inJJ  
k_TypesJJ! (
)JJ( )
{KK 
varLL 
metricTypeAttrLL "
=LL# $
typeLL% )
.LL) *
GetCustomAttributeLL* <
<LL< =#
MetricTypeEnumAttributeLL= T
>LLT U
(LLU V
)LLV W
;LLW X
varMM 
typeDisplayNameMM #
=MM$ %
metricTypeAttrMM& 4
?MM4 5
.MM5 6
DisplayNameMM6 A
??MMB D
typeMME I
.MMI J
NameMMJ N
;MMN O
varOO 
valuesOO 
=OO 
typeOO !
.OO! "
GetEnumValuesOO" /
(OO/ 0
)OO0 1
.OO1 2
CastOO2 6
<OO6 7
intOO7 :
>OO: ;
(OO; <
)OO< =
.OO= >
ToArrayOO> E
(OOE F
)OOF G
;OOG H
varPP 
namesPP 
=PP 
typePP  
.PP  !
GetEnumNamesPP! -
(PP- .
)PP. /
;PP/ 0
varQQ 
displayNamesQQ  
=QQ! "
newQQ# &
stringQQ' -
[QQ- .
valuesQQ. 4
.QQ4 5
LengthQQ5 ;
]QQ; <
;QQ< =
varRR 
kindsRR 
=RR 
newRR 

MetricKindRR  *
[RR* +
valuesRR+ 1
.RR1 2
LengthRR2 8
]RR8 9
;RR9 :
varSS 
unitsSS 
=SS 
newSS 
	BaseUnitsSS  )
[SS) *
valuesSS* 0
.SS0 1
LengthSS1 7
]SS7 8
;SS8 9
varTT 
displayAsPercentageTT '
=TT( )
newTT* -
boolTT. 2
[TT2 3
valuesTT3 9
.TT9 :
LengthTT: @
]TT@ A
;TTA B
forUU 
(UU 
varUU 
iUU 
=UU 
$numUU 
;UU 
iUU  !
<UU" #
valuesUU$ *
.UU* +
LengthUU+ 1
;UU1 2
++UU3 5
iUU5 6
)UU6 7
{VV 
varWW 
nameWW 
=WW 
namesWW $
[WW$ %
iWW% &
]WW& '
;WW' (
varXX 
enumMemberInfoXX &
=XX' (
typeXX) -
.XX- .
	GetMemberXX. 7
(XX7 8
nameXX8 <
)XX< =
.XX= >
FirstOrDefaultXX> L
(XXL M
)XXM N
;XXN O
varZZ 
metadataZZ  
=ZZ! "
enumMemberInfoZZ# 1
?ZZ1 2
.ZZ2 3
GetCustomAttributeZZ3 E
<ZZE F#
MetricMetadataAttributeZZF ]
>ZZ] ^
(ZZ^ _
)ZZ_ `
;ZZ` a
if[[ 
([[ 
metadata[[  
!=[[! #
null[[$ (
)[[( )
{\\ 
displayNames]] $
[]]$ %
i]]% &
]]]& '
=]]( )
metadata]]* 2
.]]2 3
DisplayName]]3 >
;]]> ?
kinds^^ 
[^^ 
i^^ 
]^^  
=^^! "
metadata^^# +
.^^+ ,

MetricKind^^, 6
;^^6 7
units__ 
[__ 
i__ 
]__  
=__! "
metadata__# +
.__+ ,
Units__, 1
.__1 2
GetBaseUnits__2 >
(__> ?
)__? @
;__@ A
displayAsPercentage`` +
[``+ ,
i``, -
]``- .
=``/ 0
metadata``1 9
.``9 :
DisplayAsPercentage``: M
;``M N
}aa 
elsebb 
{cc 
}ee 
displayNamesff  
[ff  !
iff! "
]ff" #
??=ff$ '

StringUtilff( 2
.ff2 3 
AddSpacesToCamelCaseff3 G
(ffG H
nameffH L
)ffL M
;ffM N
ifhh 
(hh 
kindshh 
[hh 
ihh 
]hh  
==hh! #

MetricKindhh$ .
.hh. /
Counterhh/ 6
)hh6 7
{ii 
varjj 
existingUnitjj (
=jj) *
unitsjj+ 0
[jj0 1
ijj1 2
]jj2 3
;jj3 4
unitskk 
[kk 
ikk 
]kk  
=kk! "
existingUnitkk# /
.kk/ 0
WithSecondskk0 ;
(kk; <
(ll 
sbytell "
)ll" #
(ll# $
existingUnitll$ 0
.ll0 1
SecondsExponentll1 @
-llA B
$numllC D
)llD E
)llE F
;llF G
}mm 
}nn 
k_TypeDisplayNamespp "
.pp" #
Addpp# &
(pp& '
typeDisplayNamepp' 6
)pp6 7
;pp7 8
k_EnumValuesqq 
.qq 
Addqq  
(qq  !
valuesqq! '
)qq' (
;qq( )
k_EnumNamesrr 
.rr 
Addrr 
(rr  
namesrr  %
)rr% &
;rr& '
k_EnumDisplayNamesss "
.ss" #
Addss# &
(ss& '
displayNamesss' 3
)ss3 4
;ss4 5
k_MetricKindstt 
.tt 
Addtt !
(tt! "
kindstt" '
)tt' (
;tt( )
k_Unitsuu 
.uu 
Adduu 
(uu 
unitsuu !
)uu! "
;uu" #!
k_DisplayAsPercentagevv %
.vv% &
Addvv& )
(vv) *
displayAsPercentagevv* =
)vv= >
;vv> ?
}ww 
}xx 	
internalzz 
staticzz 
boolzz 
IsValidTypeIndexzz -
(zz- .
intzz. 1
indexzz2 7
)zz7 8
{{{ 	
return|| 
$num|| 
<=|| 
index|| 
&&||  
index||! &
<||' (
k_Types||) 0
.||0 1
Count||1 6
;||6 7
}}} 	
internal 
static 
int 
GetTypeIndex (
(( )
Type) -
type. 2
)2 3
{
�� 	
return
�� 
k_Types
�� 
.
�� 
IndexOf
�� "
(
��" #
type
��# '
)
��' (
;
��( )
}
�� 	
internal
�� 
static
�� 
Type
�� 
GetType
�� $
(
��$ %
int
��% (
	typeIndex
��) 2
)
��2 3
{
�� 	
return
�� 
k_Types
�� 
[
�� 
	typeIndex
�� $
]
��$ %
;
��% &
}
�� 	
internal
�� 
static
�� 
bool
�� 
ContainsType
�� )
(
��) *
Type
��* .
type
��/ 3
)
��3 4
{
�� 	
return
�� 
k_Types
�� 
.
�� 
Contains
�� #
(
��# $
type
��$ (
)
��( )
;
��) *
}
�� 	
internal
�� 
static
�� 
IReadOnlyList
�� %
<
��% &
int
��& )
>
��) *
GetEnumValues
��+ 8
(
��8 9
int
��9 <
	typeIndex
��= F
)
��F G
{
�� 	
return
�� 
k_EnumValues
�� 
[
��  
	typeIndex
��  )
]
��) *
;
��* +
}
�� 	
internal
�� 
static
�� 
IReadOnlyList
�� %
<
��% &
string
��& ,
>
��, -
GetEnumNames
��. :
(
��: ;
int
��; >
	typeIndex
��? H
)
��H I
{
�� 	
return
�� 
k_EnumNames
�� 
[
�� 
	typeIndex
�� (
]
��( )
;
��) *
}
�� 	
internal
�� 
static
�� 
string
�� 
GetEnumName
�� *
(
��* +
int
��+ .
	typeIndex
��/ 8
,
��8 9
int
��: =
	enumValue
��> G
)
��G H
{
�� 	
return
�� &
GetEnumMetadataOrDefault
�� +
(
��+ ,
k_EnumNames
��, 7
,
��7 8
	typeIndex
��9 B
,
��B C
	enumValue
��D M
,
��M N
	enumValue
��O X
.
��X Y
ToString
��Y a
(
��a b
)
��b c
)
��c d
;
��d e
}
�� 	
internal
�� 
static
�� 

MetricKind
�� "
GetEnumMetricKind
��# 4
(
��4 5
int
��5 8
	typeIndex
��9 B
,
��B C
int
��D G
	enumValue
��H Q
)
��Q R
{
�� 	
return
�� 
GetEnumMetadata
�� "
(
��" #
k_MetricKinds
��# 0
,
��0 1
	typeIndex
��2 ;
,
��; <
	enumValue
��= F
)
��F G
;
��G H
}
�� 	
internal
�� 
static
�� 
IReadOnlyList
�� %
<
��% &
string
��& ,
>
��, -!
GetEnumDisplayNames
��. A
(
��A B
int
��B E
	typeIndex
��F O
)
��O P
{
�� 	
return
��  
k_EnumDisplayNames
�� %
[
��% &
	typeIndex
��& /
]
��/ 0
;
��0 1
}
�� 	
internal
�� 
static
�� 
string
��  
GetEnumDisplayName
�� 1
(
��1 2
int
��2 5
	typeIndex
��6 ?
,
��? @
int
��A D
	enumValue
��E N
)
��N O
{
�� 	
return
�� 
GetEnumMetadata
�� "
(
��" # 
k_EnumDisplayNames
��# 5
,
��5 6
	typeIndex
��7 @
,
��@ A
	enumValue
��B K
)
��K L
;
��L M
}
�� 	
internal
�� 
static
�� 
	BaseUnits
�� !
GetEnumUnit
��" -
(
��- .
int
��. 1
	typeIndex
��2 ;
,
��; <
int
��= @
	enumValue
��A J
)
��J K
{
�� 	
return
�� 
GetEnumMetadata
�� "
(
��" #
k_Units
��# *
,
��* +
	typeIndex
��, 5
,
��5 6
	enumValue
��7 @
)
��@ A
;
��A B
}
�� 	
internal
�� 
static
�� 
bool
�� $
GetDisplayAsPercentage
�� 3
(
��3 4
int
��4 7
	typeIndex
��8 A
,
��A B
int
��C F
	enumValue
��G P
)
��P Q
{
�� 	
return
�� 
GetEnumMetadata
�� "
(
��" ##
k_DisplayAsPercentage
��# 8
,
��8 9
	typeIndex
��: C
,
��C D
	enumValue
��E N
)
��N O
;
��O P
}
�� 	
static
�� 
T
�� 
GetEnumMetadata
��  
<
��  !
T
��! "
>
��" #
(
��# $
List
��$ (
<
��( )
T
��) *
[
��* +
]
��+ ,
>
��, -
data
��. 2
,
��2 3
int
��4 7
	typeIndex
��8 A
,
��A B
int
��C F
	enumValue
��G P
)
��P Q
{
�� 	
if
�� 
(
�� 
	typeIndex
�� 
>
�� 
k_EnumValues
�� (
.
��( )
Count
��) .
)
��. /
{
�� 
return
�� 
default
�� 
(
�� 
T
��  
)
��  !
;
��! "
}
�� 
var
�� 
index
�� 
=
�� 
Array
�� 
.
�� 
IndexOf
�� %
(
��% &
k_EnumValues
��& 2
[
��2 3
	typeIndex
��3 <
]
��< =
,
��= >
	enumValue
��? H
)
��H I
;
��I J
return
�� 
index
�� 
==
�� 
-
�� 
$num
�� 
?
��  
default
��! (
(
��( )
T
��) *
)
��* +
:
��, -
data
��. 2
[
��2 3
	typeIndex
��3 <
]
��< =
[
��= >
index
��> C
]
��C D
;
��D E
}
�� 	
static
�� 
T
�� &
GetEnumMetadataOrDefault
�� )
<
��) *
T
��* +
>
��+ ,
(
��, -
List
��- 1
<
��1 2
T
��2 3
[
��3 4
]
��4 5
>
��5 6
data
��7 ;
,
��; <
int
��= @
	typeIndex
��A J
,
��J K
int
��L O
	enumValue
��P Y
,
��Y Z
T
��[ \
@default
��] e
=
��f g
default
��h o
(
��o p
T
��p q
)
��q r
)
��r s
{
�� 	
var
�� 
index
�� 
=
�� 
Array
�� 
.
�� 
IndexOf
�� %
(
��% &
k_EnumValues
��& 2
[
��2 3
	typeIndex
��3 <
]
��< =
,
��= >
	enumValue
��? H
)
��H I
;
��I J
return
�� 
index
�� 
==
�� 
-
�� 
$num
�� 
?
��  
@default
��! )
:
��* +
data
��, 0
[
��0 1
	typeIndex
��1 :
]
��: ;
[
��; <
index
��< A
]
��A B
;
��B C
}
�� 	
}
�� 
}�� �
pC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\Metric.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[ 
Serializable 
] 
abstract 
class 
Metric 
< 
TValue  
>  !
:" #
IMetric$ +
<+ ,
TValue, 2
>2 3
,3 4
IResettable5 @
where 
TValue 
: 
	unmanaged  
{		 
	protected

 
Metric

 
(

 
MetricId

 !
metricId

" *
,

* +
TValue

, 2
defaultValue

3 ?
=

@ A
default

B I
)

I J
{ 	
Id 
= 
metricId 
; 
DefaultValue 
= 
defaultValue '
;' (
Value 
= 
defaultValue  
;  !
} 	
public 
string 
Name 
=> 
Id  
.  !
ToString! )
() *
)* +
;+ ,
public 
MetricId 
Id 
{ 
get  
;  !
}" #
public 
int 
GetWriteSize 
(  
)  !
=>" $
FastBufferWriter% 5
.5 6
GetWriteSize6 B
<B C
TValueC I
>I J
(J K
)K L
;L M
public 
void 
Write 
( 
FastBufferWriter *
writer+ 1
)1 2
{ 	
writer 
. 
TryBeginWriteValue %
(% &
Value& +
)+ ,
;, -
writer 
. 

WriteValue 
( 
Value #
)# $
;$ %
} 	
public 
void 
Read 
( 
FastBufferReader )
reader* 0
)0 1
{ 	
reader 
. 
TryBeginReadValue $
($ %
default% ,
(, -
TValue- 3
)3 4
)4 5
;5 6
reader 
. 
	ReadValue 
( 
out  
TValue! '
value( -
)- .
;. /
Value   
=   
value   
;   
}!! 	
public## 
abstract## 
MetricContainerType## +
MetricContainerType##, ?
{##@ A
get##B E
;##E F
}##G H
public$$ 
FixedString128Bytes$$ "
FactoryTypeName$$# 2
=>$$3 5
default$$6 =
;$$= >
public&& 
TValue&& 
Value&& 
{&& 
get&& !
;&&! "
	protected&&# ,
set&&- 0
;&&0 1
}&&2 3
	protected(( 
TValue(( 
DefaultValue(( %
{((& '
get((( +
;((+ ,
}((- .
public** 
bool** !
ShouldResetOnDispatch** )
{*** +
get**, /
;**/ 0
set**1 4
;**4 5
}**6 7
=**8 9
true**: >
;**> ?
public,, 
void,, 
Reset,, 
(,, 
),, 
{-- 	
Value.. 
=.. 
DefaultValue..  
;..  !
}// 	
}00 
}11 �
zC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\TypeRegistration.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
internal 
static 
class 
TypeRegistration *
{		 
public

 
const

 
string

 
k_ClassName

 '
=

( )
$str

* G
;

G H
public 
const 
string 
k_MethodName (
=) *
$str+ 0
;0 1
static 
bool &
s_TypeRegistrationComplete .
;. /
static 
readonly 
object 
s_LockObject +
=, -
new. 1
object2 8
(8 9
)9 :
;: ;
public 
static 
void 
RunIfNeeded &
(& '
)' (
{ 	
lock 
( 
s_LockObject 
) 
{ 
if 
( &
s_TypeRegistrationComplete .
). /
{ 
return 
; 
} &
s_TypeRegistrationComplete *
=+ ,
true- 1
;1 2
foreach 
( 
var 
assembly %
in& (
	AppDomain) 2
.2 3
CurrentDomain3 @
.@ A
GetAssembliesA N
(N O
)O P
)P Q
{ 
if 
( 
! 
assembly !
.! "
GetCustomAttributes" 5
<5 65
)AssemblyRequiresTypeRegistrationAttribute6 _
>_ `
(` a
)a b
.b c
Anyc f
(f g
)g h
)h i
{ 
continue  
;  !
}   
var"" 
	runMethod"" !
=""" #
assembly""$ ,
.## 
GetType##  
(##  !
k_ClassName##! ,
)##, -
?$$ 
.$$ 
	GetMethod$$ #
($$# $
k_MethodName$$$ 0
,$$0 1
BindingFlags$$2 >
.$$> ?
	NonPublic$$? H
|$$I J
BindingFlags$$K W
.$$W X
Static$$X ^
)$$^ _
;$$_ `
if%% 
(%% 
	runMethod%% !
==%%" $
null%%% )
)%%) *
{&& 
Debug'' 
.'' 
LogError'' &
(''& '
$"''' )
$str'') Y
{''Y Z
assembly''Z b
.''b c
GetName''c j
(''j k
)''k l
.''l m
Name''m q
}''q r
"''r s
)''s t
;''t u
continue((  
;((  !
})) 
	runMethod++ 
.++ 
Invoke++ $
(++$ %
null++% )
,++) *
null+++ /
)++/ 0
;++0 1
},, 
MetricIdTypeLibrary-- #
.--# $'
TypeRegistrationPostProcess--$ ?
(--? @
)--@ A
;--A B
}.. 
}// 	
}00 
}11 �

qC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\Counter.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
[ 
Serializable 
] 
class 	
Counter
 
: 
Metric 
< 
long 
>  
{ 
public 
Counter 
( 
MetricId 
metricId  (
,( )
long* .
defaultValue/ ;
=< =
default> E
)E F
:		 
base		 
(		 
metricId		 
,		 
defaultValue		 )
)		) *
{

 	
} 	
public 
void 
	Increment 
( 
long "
	increment# ,
=- .
$num/ 0
)0 1
{ 	
Value 
+= 
	increment 
; 
} 	
public 
override 
MetricContainerType +
MetricContainerType, ?
=>@ B
MetricContainerTypeC V
.V W
CounterW ^
;^ _
} 
} �

�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\MetricsCollectionExtensions.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
static 

class '
MetricsCollectionExtensions ,
{ 
public 
static 
IReadOnlyList #
<# $
TMetric$ +
>+ ,
GetEventValues- ;
<; <
TMetric< C
>C D
(D E
this		 
MetricCollection		 !

collection		" ,
,		, -
MetricId

 
metricId

 
)

 
{ 	
return 

collection 
. 
TryGetEvent )
<) *
TMetric* 1
>1 2
(2 3
metricId3 ;
,; <
out= @
varA D
metricE K
)K L
? 
metric 
. 
Values 
: 
Array 
. 
Empty 
< 
TMetric %
>% &
(& '
)' (
;( )
} 	
} 
} �
|C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Dispatch\IMetricDispatcher.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
	interface 
IMetricDispatcher 
{ 
void 
RegisterObserver 
( 
IMetricObserver -
observer. 6
)6 7
;7 8
void 
SetConnectionId 
( 
ulong "
connectionId# /
)/ 0
;0 1
void		 
Dispatch		 
(		 
)		 
;		 
}

 
} �
zC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Dispatch\IMetricObserver.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
	interface 
IMetricObserver 
{ 
void 
Observe 
( 
MetricCollection %

collection& 0
)0 1
;1 2
} 
} �
qC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\IMetric.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
	interface 
IMetric 
{ 
string 
Name 
{ 
get 
; 
} 
MetricId 
Id 
{ 
get 
; 
} 
int		 
GetWriteSize		 
(		 
)		 
;		 
void

 
Write

 
(

 
FastBufferWriter

 #
writer

$ *
)

* +
;

+ ,
void 
Read 
( 
FastBufferReader "
reader# )
)) *
;* +
MetricContainerType 
MetricContainerType /
{0 1
get2 5
;5 6
}7 8
FixedString128Bytes 
FactoryTypeName +
{, -
get. 1
;1 2
}3 4
} 
	interface 
IMetric 
< 
TValue 
> 
: 
IMetric  '
{ 
TValue 
Value 
{ 
get 
; 
} 
} 
} �
xC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\IMetricFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
	interface 
IMetricFactory 
{ 
bool 
TryConstruct 
( 
MetricHeader &
header' -
,- .
out/ 2
IMetric3 :
metric; A
)A B
;B C
} 
}		 �2
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\Cloned\BufferSerializer.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
ref 
struct 
BufferSerializer 
<  
TReaderWriter  -
>- .
where/ 4
TReaderWriter5 B
:C D
IReaderWriterE R
{ 
private 
TReaderWriter 
m_Implementation .
;. /
public 
bool 
IsReader 
=> 
m_Implementation  0
.0 1
IsReader1 9
;9 :
public"" 
bool"" 
IsWriter"" 
=>"" 
m_Implementation""  0
.""0 1
IsWriter""1 9
;""9 :
internal$$ 
BufferSerializer$$ !
($$! "
TReaderWriter$$" /
implementation$$0 >
)$$> ?
{%% 	
m_Implementation&& 
=&& 
implementation&& -
;&&- .
}'' 	
public.. 
FastBufferReader.. 
GetFastBufferReader..  3
(..3 4
)..4 5
{// 	
return00 
m_Implementation00 #
.00# $
GetFastBufferReader00$ 7
(007 8
)008 9
;009 :
}11 	
public88 
FastBufferWriter88 
GetFastBufferWriter88  3
(883 4
)884 5
{99 	
return:: 
m_Implementation:: #
.::# $
GetFastBufferWriter::$ 7
(::7 8
)::8 9
;::9 :
};; 	
publicDD 
voidDD (
SerializeNetworkSerializableDD 0
<DD0 1
TDD1 2
>DD2 3
(DD3 4
refDD4 7
TDD8 9
valueDD: ?
)DD? @
whereDDA F
TDDG H
:DDI J 
INetworkSerializableDDK _
,DD_ `
newDDa d
(DDd e
)DDe f
{EE 	
m_ImplementationFF 
.FF (
SerializeNetworkSerializableFF 9
(FF9 :
refFF: =
valueFF> C
)FFC D
;FFD E
}GG 	
publicVV 
voidVV 
SerializeValueVV "
(VV" #
refVV# &
stringVV' -
sVV. /
,VV/ 0
boolVV1 5
oneByteCharsVV6 B
=VVC D
falseVVE J
)VVJ K
{WW 	
m_ImplementationXX 
.XX 
SerializeValueXX +
(XX+ ,
refXX, /
sXX0 1
,XX1 2
oneByteCharsXX3 ?
)XX? @
;XX@ A
}YY 	
publicjj 
voidjj 
SerializeValuejj "
<jj" #
Tjj# $
>jj$ %
(jj% &
refjj& )
Tjj* +
[jj+ ,
]jj, -
arrayjj. 3
)jj3 4
wherejj5 :
Tjj; <
:jj= >
	unmanagedjj? H
{kk 	
m_Implementationll 
.ll 
SerializeValuell +
(ll+ ,
refll, /
arrayll0 5
)ll5 6
;ll6 7
}mm 	
publicvv 
voidvv 
SerializeValuevv "
(vv" #
refvv# &
bytevv' +
valuevv, 1
)vv1 2
{ww 	
m_Implementationxx 
.xx 
SerializeValuexx +
(xx+ ,
refxx, /
valuexx0 5
)xx5 6
;xx6 7
}yy 	
public
�� 
void
�� 
SerializeValue
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
ref
��& )
T
��* +
value
��, 1
)
��1 2
where
��3 8
T
��9 :
:
��; <
	unmanaged
��= F
{
�� 	
m_Implementation
�� 
.
�� 
SerializeValue
�� +
(
��+ ,
ref
��, /
value
��0 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
bool
�� 
PreCheck
�� 
(
�� 
int
��  
amount
��! '
)
��' (
{
�� 	
return
�� 
m_Implementation
�� #
.
��# $
PreCheck
��$ ,
(
��, -
amount
��- 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
string
��1 7
s
��8 9
,
��9 :
bool
��; ?
oneByteChars
��@ L
=
��M N
false
��O T
)
��T U
{
�� 	
m_Implementation
�� 
.
�� &
SerializeValuePreChecked
�� 5
(
��5 6
ref
��6 9
s
��: ;
,
��; <
oneByteChars
��= I
)
��I J
;
��J K
}
�� 	
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
ref
��0 3
T
��4 5
[
��5 6
]
��6 7
array
��8 =
)
��= >
where
��? D
T
��E F
:
��G H
	unmanaged
��I R
{
�� 	
m_Implementation
�� 
.
�� &
SerializeValuePreChecked
�� 5
(
��5 6
ref
��6 9
array
��: ?
)
��? @
;
��@ A
}
�� 	
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
byte
��1 5
value
��6 ;
)
��; <
{
�� 	
m_Implementation
�� 
.
�� &
SerializeValuePreChecked
�� 5
(
��5 6
ref
��6 9
value
��: ?
)
��? @
;
��@ A
}
�� 	
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
ref
��0 3
T
��4 5
value
��6 ;
)
��; <
where
��= B
T
��C D
:
��E F
	unmanaged
��G P
{
�� 	
m_Implementation
�� 
.
�� &
SerializeValuePreChecked
�� 5
(
��5 6
ref
��6 9
value
��: ?
)
��? @
;
��@ A
}
�� 	
}
�� 
}�� �
vC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\TimerFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
class 	
TimerFactory
 
: 
IMetricFactory '
{ 
public 
bool 
TryConstruct  
(  !
MetricHeader! -
header. 4
,4 5
out6 9
IMetric: A
metricB H
)H I
{ 	
metric 
= 
new 
Timer 
( 
header %
.% &
MetricId& .
). /
;/ 0
return 
true 
; 
}		 	
}

 
} ��
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Serialization\Cloned\FastBufferWriter.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
struct 

FastBufferWriter 
: 
IDisposable )
{		 
internal

 
struct

 
WriterHandle

 $
{ 	
internal 
unsafe 
byte  
*  !
BufferPointer" /
;/ 0
internal 
int 
Position !
;! "
internal 
int 
Length 
;  
internal 
int 
Capacity !
;! "
internal 
int 
MaxCapacity $
;$ %
internal 
	Allocator 
	Allocator (
;( )
internal 
bool 

BufferGrew $
;$ %
internal 
int 
AllowedWriteMark )
;) *
internal 
bool 
InBitwiseContext *
;* +
} 	
internal 
readonly 
unsafe  
WriterHandle! -
*- .
Handle/ 5
;5 6
public 
unsafe 
int 
Position "
{ 	
[   

MethodImpl   
(   
MethodImplOptions   )
.  ) *
AggressiveInlining  * <
)  < =
]  = >
get!! 
=>!! 
Handle!! 
->!! 
Position!! #
;!!# $
}"" 	
public'' 
unsafe'' 
int'' 
Capacity'' "
{(( 	
[)) 

MethodImpl)) 
()) 
MethodImplOptions)) )
.))) *
AggressiveInlining))* <
)))< =
]))= >
get** 
=>** 
Handle** 
->** 
Capacity** #
;**# $
}++ 	
public00 
unsafe00 
int00 
MaxCapacity00 %
{11 	
[22 

MethodImpl22 
(22 
MethodImplOptions22 )
.22) *
AggressiveInlining22* <
)22< =
]22= >
get33 
=>33 
Handle33 
->33 
MaxCapacity33 &
;33& '
}44 	
public99 
unsafe99 
int99 
Length99  
{:: 	
[;; 

MethodImpl;; 
(;; 
MethodImplOptions;; )
.;;) *
AggressiveInlining;;* <
);;< =
];;= >
get<< 
=><< 
Handle<< 
-><< 
Position<< #
><<$ %
Handle<<& ,
-><<, .
Length<<. 4
?<<5 6
Handle<<7 =
-><<= ?
Position<<? G
:<<H I
Handle<<J P
-><<P R
Length<<R X
;<<X Y
}== 	
[@@ 	

MethodImpl@@	 
(@@ 
MethodImplOptions@@ %
.@@% &
AggressiveInlining@@& 8
)@@8 9
]@@9 :
internalAA 
unsafeAA 
voidAA 
CommitBitwiseWritesAA 0
(AA0 1
intAA1 4
amountAA5 ;
)AA; <
{BB 	
HandleCC 
->CC 
PositionCC 
+=CC 
amountCC  &
;CC& '
HandleEE 
->EE 
InBitwiseContextEE $
=EE% &
falseEE' ,
;EE, -
}GG 	
publicOO 
unsafeOO 
FastBufferWriterOO &
(OO& '
intOO' *
sizeOO+ /
,OO/ 0
	AllocatorOO1 :
	allocatorOO; D
,OOD E
intOOF I
maxSizeOOJ Q
=OOR S
-OOT U
$numOOU V
)OOV W
{PP 	
HandleQQ 
=QQ 
(QQ 
WriterHandleQQ "
*QQ" #
)QQ# $
UnsafeUtilityQQ$ 1
.QQ1 2
MallocQQ2 8
(QQ8 9
sizeofQQ9 ?
(QQ? @
WriterHandleQQ@ L
)QQL M
+QQN O
sizeQQP T
,QQT U
UnsafeUtilityQQV c
.QQc d
AlignOfQQd k
<QQk l
WriterHandleQQl x
>QQx y
(QQy z
)QQz {
,QQ{ |
	allocator	QQ} �
)
QQ� �
;
QQ� �
UnsafeUtilitySS 
.SS 
MemSetSS  
(SS  !
HandleSS! '
,SS' (
$numSS) *
,SS* +
sizeofSS, 2
(SS2 3
WriterHandleSS3 ?
)SS? @
+SSA B
sizeSSC G
)SSG H
;SSH I
HandleUU 
->UU 
BufferPointerUU !
=UU" #
(UU$ %
byteUU% )
*UU) *
)UU* +
(UU+ ,
HandleUU, 2
+UU3 4
$numUU5 6
)UU6 7
;UU7 8
HandleVV 
->VV 
PositionVV 
=VV 
$numVV  
;VV  !
HandleWW 
->WW 
LengthWW 
=WW 
$numWW 
;WW 
HandleXX 
->XX 
CapacityXX 
=XX 
sizeXX #
;XX# $
HandleYY 
->YY 
	AllocatorYY 
=YY 
	allocatorYY  )
;YY) *
HandleZZ 
->ZZ 
MaxCapacityZZ 
=ZZ  !
maxSizeZZ" )
<ZZ* +
sizeZZ, 0
?ZZ1 2
sizeZZ3 7
:ZZ8 9
maxSizeZZ: A
;ZZA B
Handle[[ 
->[[ 

BufferGrew[[ 
=[[  
false[[! &
;[[& '
Handle]] 
->]] 
AllowedWriteMark]] $
=]]% &
$num]]' (
;]]( )
Handle^^ 
->^^ 
InBitwiseContext^^ $
=^^% &
false^^' ,
;^^, -
}`` 	
publicee 
unsafeee 
voidee 
Disposeee "
(ee" #
)ee# $
{ff 	
ifgg 
(gg 
Handlegg 
->gg 

BufferGrewgg "
)gg" #
{hh 
UnsafeUtilityii 
.ii 
Freeii "
(ii" #
Handleii# )
->ii) +
BufferPointerii+ 8
,ii8 9
Handleii: @
->ii@ B
	AllocatoriiB K
)iiK L
;iiL M
}jj 
UnsafeUtilitykk 
.kk 
Freekk 
(kk 
Handlekk %
,kk% &
Handlekk' -
->kk- /
	Allocatorkk/ 8
)kk8 9
;kk9 :
}ll 	
[ss 	

MethodImplss	 
(ss 
MethodImplOptionsss %
.ss% &
AggressiveInliningss& 8
)ss8 9
]ss9 :
publictt 
unsafett 
voidtt 
Seektt 
(tt  
inttt  #
wherett$ )
)tt) *
{uu 	
where
�� 
=
�� 
Math
�� 
.
�� 
Min
�� 
(
�� 
where
�� "
,
��" #
Handle
��$ *
->
��* ,
Capacity
��, 4
)
��4 5
;
��5 6
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
>
��! "
Handle
��# )
->
��) +
Length
��+ 1
&&
��2 4
where
��5 :
<
��; <
Handle
��= C
->
��C E
Position
��E M
)
��M N
{
�� 
Handle
�� 
->
�� 
Length
�� 
=
��  
Handle
��! '
->
��' )
Position
��) 1
;
��1 2
}
�� 
Handle
�� 
->
�� 
Position
�� 
=
�� 
where
�� $
;
��$ %
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
Truncate
�� #
(
��# $
int
��$ '
where
��( -
=
��. /
-
��0 1
$num
��1 2
)
��2 3
{
�� 	
if
�� 
(
�� 
where
�� 
==
�� 
-
�� 
$num
�� 
)
�� 
{
�� 
where
�� 
=
�� 
Position
��  
;
��  !
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
>
��! "
where
��# (
)
��( )
{
�� 
Handle
�� 
->
�� 
Position
��  
=
��! "
where
��# (
;
��( )
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Length
�� 
>
��  
where
��! &
)
��& '
{
�� 
Handle
�� 
->
�� 
Length
�� 
=
��  
where
��! &
;
��& '
}
�� 
}
�� 	
public
�� 
unsafe
�� 
	BitWriter
�� !
EnterBitwiseContext
��  3
(
��3 4
)
��4 5
{
�� 	
Handle
�� 
->
�� 
InBitwiseContext
�� $
=
��% &
true
��' +
;
��+ ,
return
�� 
new
�� 
	BitWriter
��  
(
��  !
this
��! %
)
��% &
;
��& '
}
�� 	
internal
�� 
unsafe
�� 
void
�� 
Grow
�� !
(
��! "
int
��" %$
additionalSizeRequired
��& <
)
��< =
{
�� 	
var
�� 
desiredSize
�� 
=
�� 
Handle
�� $
->
��$ &
Capacity
��& .
*
��/ 0
$num
��1 2
;
��2 3
while
�� 
(
�� 
desiredSize
�� 
<
��  
Position
��! )
+
��* +$
additionalSizeRequired
��, B
)
��B C
{
�� 
desiredSize
�� 
*=
�� 
$num
��  
;
��  !
}
�� 
var
�� 
newSize
�� 
=
�� 
Math
�� 
.
�� 
Min
�� "
(
��" #
desiredSize
��# .
,
��. /
Handle
��0 6
->
��6 8
MaxCapacity
��8 C
)
��C D
;
��D E
byte
�� 
*
�� 
	newBuffer
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
UnsafeUtility
��% 2
.
��2 3
Malloc
��3 9
(
��9 :
newSize
��: A
,
��A B
UnsafeUtility
��C P
.
��P Q
AlignOf
��Q X
<
��X Y
byte
��Y ]
>
��] ^
(
��^ _
)
��_ `
,
��` a
Handle
��b h
->
��h j
	Allocator
��j s
)
��s t
;
��t u
UnsafeUtility
�� 
.
�� 
MemSet
��  
(
��  !
	newBuffer
��! *
,
��* +
$num
��, -
,
��- .
sizeof
��/ 5
(
��5 6
WriterHandle
��6 B
)
��B C
+
��D E
newSize
��F M
)
��M N
;
��N O
UnsafeUtility
�� 
.
�� 
MemCpy
��  
(
��  !
	newBuffer
��! *
,
��* +
Handle
��, 2
->
��2 4
BufferPointer
��4 A
,
��A B
Length
��C I
)
��I J
;
��J K
if
�� 
(
�� 
Handle
�� 
->
�� 

BufferGrew
�� "
)
��" #
{
�� 
UnsafeUtility
�� 
.
�� 
Free
�� "
(
��" #
Handle
��# )
->
��) +
BufferPointer
��+ 8
,
��8 9
Handle
��: @
->
��@ B
	Allocator
��B K
)
��K L
;
��L M
}
�� 
Handle
�� 
->
�� 

BufferGrew
�� 
=
��  
true
��! %
;
��% &
Handle
�� 
->
�� 
BufferPointer
�� !
=
��" #
	newBuffer
��$ -
;
��- .
Handle
�� 
->
�� 
Capacity
�� 
=
�� 
newSize
�� &
;
��& '
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
bool
�� 
TryBeginWrite
�� (
(
��( )
int
��) ,
bytes
��- 2
)
��2 3
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
bytes
��# (
>
��) *
Handle
��+ 1
->
��1 3
Capacity
��3 ;
)
��; <
{
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
�� $
+
��% &
bytes
��' ,
>
��- .
Handle
��/ 5
->
��5 7
MaxCapacity
��7 B
)
��B C
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Capacity
�� $
<
��% &
Handle
��' -
->
��- /
MaxCapacity
��/ :
)
��: ;
{
�� 
Grow
�� 
(
�� 
bytes
�� 
)
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
Handle
�� 
->
�� 
AllowedWriteMark
�� $
=
��% &
Handle
��' -
->
��- /
Position
��/ 7
+
��8 9
bytes
��: ?
;
��? @
return
�� 
true
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
bool
��  
TryBeginWriteValue
�� -
<
��- .
T
��. /
>
��/ 0
(
��0 1
in
��1 3
T
��4 5
value
��6 ;
)
��; <
where
��= B
T
��C D
:
��E F
	unmanaged
��G P
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
int
�� 
len
�� 
=
�� 
sizeof
�� 
(
�� 
T
�� 
)
�� 
;
��  
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
len
��# &
>
��' (
Handle
��) /
->
��/ 1
Capacity
��1 9
)
��9 :
{
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
�� $
+
��% &
len
��' *
>
��+ ,
Handle
��- 3
->
��3 5
MaxCapacity
��5 @
)
��@ A
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Capacity
�� $
<
��% &
Handle
��' -
->
��- /
MaxCapacity
��/ :
)
��: ;
{
�� 
Grow
�� 
(
�� 
len
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
Handle
�� 
->
�� 
AllowedWriteMark
�� $
=
��% &
Handle
��' -
->
��- /
Position
��/ 7
+
��8 9
len
��: =
;
��= >
return
�� 
true
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
bool
�� #
TryBeginWriteInternal
�� 0
(
��0 1
int
��1 4
bytes
��5 :
)
��: ;
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
bytes
��# (
>
��) *
Handle
��+ 1
->
��1 3
Capacity
��3 ;
)
��; <
{
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
�� $
+
��% &
bytes
��' ,
>
��- .
Handle
��/ 5
->
��5 7
MaxCapacity
��7 B
)
��B C
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Capacity
�� $
<
��% &
Handle
��' -
->
��- /
MaxCapacity
��/ :
)
��: ;
{
�� 
Grow
�� 
(
�� 
bytes
�� 
)
�� 
;
��  
}
�� 
else
�� 
{
�� 
return
�� 
false
��  
;
��  !
}
�� 
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
bytes
��# (
>
��) *
Handle
��+ 1
->
��1 3
AllowedWriteMark
��3 C
)
��C D
{
�� 
Handle
�� 
->
�� 
AllowedWriteMark
�� (
=
��) *
Handle
��+ 1
->
��1 3
Position
��3 ;
+
��< =
bytes
��> C
;
��C D
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
byte
�� 
[
�� 
]
�� 
ToArray
�� $
(
��$ %
)
��% &
{
�� 	
byte
�� 
[
�� 
]
�� 
ret
�� 
=
�� 
new
�� 
byte
�� !
[
��! "
Length
��" (
]
��( )
;
��) *
fixed
�� 
(
�� 
byte
�� 
*
�� 
b
�� 
=
�� 
ret
��  
)
��  !
{
�� 
UnsafeUtility
�� 
.
�� 
MemCpy
�� $
(
��$ %
b
��% &
,
��& '
Handle
��( .
->
��. 0
BufferPointer
��0 =
,
��= >
Length
��? E
)
��E F
;
��F G
}
�� 
return
�� 
ret
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
byte
�� 
*
�� 
GetUnsafePtr
�� (
(
��( )
)
��) *
{
�� 	
return
�� 
Handle
�� 
->
�� 
BufferPointer
�� (
;
��( )
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
byte
�� 
*
�� +
GetUnsafePtrAtCurrentPosition
�� 9
(
��9 :
)
��: ;
{
�� 	
return
�� 
Handle
�� 
->
�� 
BufferPointer
�� (
+
��) *
Handle
��+ 1
->
��1 3
Position
��3 ;
;
��; <
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
static
�� 
int
�� 
GetWriteSize
�� &
(
��& '
string
��' -
s
��. /
,
��/ 0
bool
��1 5
oneByteChars
��6 B
=
��C D
false
��E J
)
��J K
{
�� 	
return
�� 
sizeof
�� 
(
�� 
int
�� 
)
�� 
+
��  
s
��! "
.
��" #
Length
��# )
*
��* +
(
��, -
oneByteChars
��- 9
?
��: ;
sizeof
��< B
(
��B C
byte
��C G
)
��G H
:
��I J
sizeof
��K Q
(
��Q R
char
��R V
)
��V W
)
��W X
;
��X Y
}
�� 	
public
�� 
void
�� &
WriteNetworkSerializable
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
in
��0 2
T
��3 4
value
��5 :
)
��: ;
where
��< A
T
��B C
:
��D E"
INetworkSerializable
��F Z
{
�� 	
var
�� 
bufferSerializer
��  
=
��! "
new
��# &
BufferSerializer
��' 7
<
��7 8$
BufferSerializerWriter
��8 N
>
��N O
(
��O P
new
��P S$
BufferSerializerWriter
��T j
(
��j k
this
��k o
)
��o p
)
��p q
;
��q r
value
�� 
.
�� 
NetworkSerialize
�� "
(
��" #
bufferSerializer
��# 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
void
�� &
WriteNetworkSerializable
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0"
INetworkSerializable
��0 D
[
��D E
]
��E F
array
��G L
,
��L M
int
��N Q
count
��R W
=
��X Y
-
��Z [
$num
��[ \
,
��\ ]
int
��^ a
offset
��b h
=
��i j
$num
��k l
)
��l m
where
��n s
T
��t u
:
��v w#
INetworkSerializable��x �
{
�� 	
int
�� 
sizeInTs
�� 
=
�� 
count
��  
!=
��! #
-
��$ %
$num
��% &
?
��' (
count
��) .
:
��/ 0
array
��1 6
.
��6 7
Length
��7 =
-
��> ?
offset
��@ F
;
��F G
WriteValueSafe
�� 
(
�� 
sizeInTs
�� #
)
��# $
;
��$ %
foreach
�� 
(
�� 
var
�� 
item
�� 
in
��  
array
��! &
)
��& '
{
�� &
WriteNetworkSerializable
�� (
(
��( )
item
��) -
)
��- .
;
��. /
}
�� 
}
�� 	
public
�� 
unsafe
�� 
void
�� 

WriteValue
�� %
(
��% &
string
��& ,
s
��- .
,
��. /
bool
��0 4
oneByteChars
��5 A
=
��B C
false
��D I
)
��I J
{
�� 	

WriteValue
�� 
(
�� 
(
�� 
uint
�� 
)
�� 
s
�� 
.
�� 
Length
�� %
)
��% &
;
��& '
int
�� 
target
�� 
=
�� 
s
�� 
.
�� 
Length
�� !
;
��! "
if
�� 
(
�� 
oneByteChars
�� 
)
�� 
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
target
��$ *
;
��* +
++
��, .
i
��. /
)
��/ 0
{
�� 
	WriteByte
�� 
(
�� 
(
�� 
byte
�� #
)
��# $
s
��$ %
[
��% &
i
��& '
]
��' (
)
��( )
;
��) *
}
�� 
}
�� 
else
�� 
{
�� 
fixed
�� 
(
�� 
char
�� 
*
�� 
native
�� #
=
��$ %
s
��& '
)
��' (
{
�� 

WriteBytes
�� 
(
�� 
(
��  
byte
��  $
*
��$ %
)
��% &
native
��& ,
,
��, -
target
��. 4
*
��5 6
sizeof
��7 =
(
��= >
char
��> B
)
��B C
)
��C D
;
��D E
}
�� 
}
�� 
}
�� 	
public
�� 
unsafe
�� 
void
�� 
WriteValueSafe
�� )
(
��) *
string
��* 0
s
��1 2
,
��2 3
bool
��4 8
oneByteChars
��9 E
=
��F G
false
��H M
)
��M N
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
int
�� 
sizeInBytes
�� 
=
�� 
GetWriteSize
�� *
(
��* +
s
��+ ,
,
��, -
oneByteChars
��. :
)
��: ;
;
��; <
if
�� 
(
�� 
!
�� #
TryBeginWriteInternal
�� &
(
��& '
sizeInBytes
��' 2
)
��2 3
)
��3 4
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 

WriteValue
�� 
(
�� 
(
�� 
uint
�� 
)
�� 
s
�� 
.
�� 
Length
�� %
)
��% &
;
��& '
int
�� 
target
�� 
=
�� 
s
�� 
.
�� 
Length
�� !
;
��! "
if
�� 
(
�� 
oneByteChars
�� 
)
�� 
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
target
��$ *
;
��* +
++
��, .
i
��. /
)
��/ 0
{
�� 
	WriteByte
�� 
(
�� 
(
�� 
byte
�� #
)
��# $
s
��$ %
[
��% &
i
��& '
]
��' (
)
��( )
;
��) *
}
�� 
}
�� 
else
�� 
{
�� 
fixed
�� 
(
�� 
char
�� 
*
�� 
native
�� #
=
��$ %
s
��& '
)
��' (
{
�� 

WriteBytes
�� 
(
�� 
(
��  
byte
��  $
*
��$ %
)
��% &
native
��& ,
,
��, -
target
��. 4
*
��5 6
sizeof
��7 =
(
��= >
char
��> B
)
��B C
)
��C D
;
��D E
}
�� 
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
static
�� 
unsafe
�� 
int
��  
GetWriteSize
��! -
<
��- .
T
��. /
>
��/ 0
(
��0 1
T
��1 2
[
��2 3
]
��3 4
array
��5 :
,
��: ;
int
��< ?
count
��@ E
=
��F G
-
��H I
$num
��I J
,
��J K
int
��L O
offset
��P V
=
��W X
$num
��Y Z
)
��Z [
where
��\ a
T
��b c
:
��d e
	unmanaged
��f o
{
�� 	
int
�� 
sizeInTs
�� 
=
�� 
count
��  
!=
��! #
-
��$ %
$num
��% &
?
��' (
count
��) .
:
��/ 0
array
��1 6
.
��6 7
Length
��7 =
-
��> ?
offset
��@ F
;
��F G
int
�� 
sizeInBytes
�� 
=
�� 
sizeInTs
�� &
*
��' (
sizeof
��) /
(
��/ 0
T
��0 1
)
��1 2
;
��2 3
return
�� 
sizeof
�� 
(
�� 
int
�� 
)
�� 
+
��  
sizeInBytes
��! ,
;
��, -
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 

WriteValue
�� %
<
��% &
T
��& '
>
��' (
(
��( )
T
��) *
[
��* +
]
��+ ,
array
��- 2
,
��2 3
int
��4 7
count
��8 =
=
��> ?
-
��@ A
$num
��A B
,
��B C
int
��D G
offset
��H N
=
��O P
$num
��Q R
)
��R S
where
��T Y
T
��Z [
:
��\ ]
	unmanaged
��^ g
{
�� 	
int
�� 
sizeInTs
�� 
=
�� 
count
��  
!=
��! #
-
��$ %
$num
��% &
?
��' (
count
��) .
:
��/ 0
array
��1 6
.
��6 7
Length
��7 =
-
��> ?
offset
��@ F
;
��F G
int
�� 
sizeInBytes
�� 
=
�� 
sizeInTs
�� &
*
��' (
sizeof
��) /
(
��/ 0
T
��0 1
)
��1 2
;
��2 3

WriteValue
�� 
(
�� 
sizeInTs
�� 
)
��  
;
��  !
fixed
�� 
(
�� 
T
�� 
*
�� 
native
�� 
=
�� 
array
�� $
)
��$ %
{
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
(
��% &
native
��& ,
+
��- .
offset
��/ 5
)
��5 6
;
��6 7

WriteBytes
�� 
(
�� 
bytes
��  
,
��  !
sizeInBytes
��" -
)
��- .
;
��. /
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
WriteValueSafe
�� )
<
��) *
T
��* +
>
��+ ,
(
��, -
T
��- .
[
��. /
]
��/ 0
array
��1 6
,
��6 7
int
��8 ;
count
��< A
=
��B C
-
��D E
$num
��E F
,
��F G
int
��H K
offset
��L R
=
��S T
$num
��U V
)
��V W
where
��X ]
T
��^ _
:
��` a
	unmanaged
��b k
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
int
�� 
sizeInTs
�� 
=
�� 
count
��  
!=
��! #
-
��$ %
$num
��% &
?
��' (
count
��) .
:
��/ 0
array
��1 6
.
��6 7
Length
��7 =
-
��> ?
offset
��@ F
;
��F G
int
�� 
sizeInBytes
�� 
=
�� 
sizeInTs
�� &
*
��' (
sizeof
��) /
(
��/ 0
T
��0 1
)
��1 2
;
��2 3
if
�� 
(
�� 
!
�� #
TryBeginWriteInternal
�� &
(
��& '
sizeInBytes
��' 2
+
��3 4
sizeof
��5 ;
(
��; <
int
��< ?
)
��? @
)
��@ A
)
��A B
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 

WriteValue
�� 
(
�� 
sizeInTs
�� 
)
��  
;
��  !
fixed
�� 
(
�� 
T
�� 
*
�� 
native
�� 
=
�� 
array
�� $
)
��$ %
{
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
(
��% &
native
��& ,
+
��- .
offset
��/ 5
)
��5 6
;
��6 7

WriteBytes
�� 
(
�� 
bytes
��  
,
��  !
sizeInBytes
��" -
)
��- .
;
��. /
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
WritePartialValue
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
T
��0 1
value
��2 7
,
��7 8
int
��9 <
bytesToWrite
��= I
,
��I J
int
��K N
offsetBytes
��O Z
=
��[ \
$num
��] ^
)
��^ _
where
��` e
T
��f g
:
��h i
	unmanaged
��j s
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
bytesToWrite
��# /
>
��0 1
Handle
��2 8
->
��8 :
AllowedWriteMark
��: J
)
��J K
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. W
{
��W X
nameof
��X ^
(
��^ _
TryBeginWrite
��_ l
)
��l m
}
��m n
$str
��n p
"
��p q
)
��q r
;
��r s
}
�� 
byte
�� 
*
�� 
ptr
�� 
=
�� 
(
�� 
(
�� 
byte
�� 
*
�� 
)
��  
&
��  !
value
��! &
)
��& '
+
��( )
offsetBytes
��* 5
;
��5 6
byte
�� 
*
�� 
bufferPointer
�� 
=
��  !
Handle
��" (
->
��( *
BufferPointer
��* 7
+
��8 9
Handle
��: @
->
��@ B
Position
��B J
;
��J K
UnsafeUtility
�� 
.
�� 
MemCpy
��  
(
��  !
bufferPointer
��! .
,
��. /
ptr
��0 3
,
��3 4
bytesToWrite
��5 A
)
��A B
;
��B C
Handle
�� 
->
�� 
Position
�� 
+=
�� 
bytesToWrite
��  ,
;
��, -
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
	WriteByte
�� $
(
��$ %
byte
��% )
value
��* /
)
��/ 0
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
$num
��# $
>
��% &
Handle
��' -
->
��- /
AllowedWriteMark
��/ ?
)
��? @
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. W
{
��W X
nameof
��X ^
(
��^ _
TryBeginWrite
��_ l
)
��l m
}
��m n
$str
��n p
"
��p q
)
��q r
;
��r s
}
�� 
Handle
�� 
->
�� 
BufferPointer
�� !
[
��! "
Handle
��" (
->
��( *
Position
��* 2
++
��2 4
]
��4 5
=
��6 7
value
��8 =
;
��= >
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
WriteByteSafe
�� (
(
��( )
byte
��) -
value
��. 3
)
��3 4
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
!
�� #
TryBeginWriteInternal
�� &
(
��& '
$num
��' (
)
��( )
)
��) *
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
Handle
�� 
->
�� 
BufferPointer
�� !
[
��! "
Handle
��" (
->
��( *
Position
��* 2
++
��2 4
]
��4 5
=
��6 7
value
��8 =
;
��= >
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 

WriteBytes
�� %
(
��% &
byte
��& *
*
��* +
value
��, 1
,
��1 2
int
��3 6
size
��7 ;
,
��; <
int
��= @
offset
��A G
=
��H I
$num
��J K
)
��K L
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
size
��# '
>
��( )
Handle
��* 0
->
��0 2
AllowedWriteMark
��2 B
)
��B C
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. W
{
��W X
nameof
��X ^
(
��^ _
TryBeginWrite
��_ l
)
��l m
}
��m n
$str
��n p
"
��p q
)
��q r
;
��r s
}
�� 
UnsafeUtility
�� 
.
�� 
MemCpy
��  
(
��  !
(
��! "
Handle
��" (
->
��( *
BufferPointer
��* 7
+
��8 9
Handle
��: @
->
��@ B
Position
��B J
)
��J K
,
��K L
value
��M R
+
��S T
offset
��U [
,
��[ \
size
��] a
)
��a b
;
��b c
Handle
�� 
->
�� 
Position
�� 
+=
�� 
size
��  $
;
��$ %
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
WriteBytesSafe
�� )
(
��) *
byte
��* .
*
��. /
value
��0 5
,
��5 6
int
��7 :
size
��; ?
,
��? @
int
��A D
offset
��E K
=
��L M
$num
��N O
)
��O P
{
�� 	
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
!
�� #
TryBeginWriteInternal
�� &
(
��& '
size
��' +
)
��+ ,
)
��, -
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
UnsafeUtility
�� 
.
�� 
MemCpy
��  
(
��  !
(
��! "
Handle
��" (
->
��( *
BufferPointer
��* 7
+
��8 9
Handle
��: @
->
��@ B
Position
��B J
)
��J K
,
��K L
value
��M R
+
��S T
offset
��U [
,
��[ \
size
��] a
)
��a b
;
��b c
Handle
�� 
->
�� 
Position
�� 
+=
�� 
size
��  $
;
��$ %
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 

WriteBytes
�� %
(
��% &
byte
��& *
[
��* +
]
��+ ,
value
��- 2
,
��2 3
int
��4 7
size
��8 <
=
��= >
-
��? @
$num
��@ A
,
��A B
int
��C F
offset
��G M
=
��N O
$num
��P Q
)
��Q R
{
�� 	
fixed
�� 
(
�� 
byte
�� 
*
�� 
ptr
�� 
=
�� 
value
�� $
)
��$ %
{
�� 

WriteBytes
�� 
(
�� 
ptr
�� 
,
�� 
size
��  $
==
��% '
-
��( )
$num
��) *
?
��+ ,
value
��- 2
.
��2 3
Length
��3 9
:
��: ;
size
��< @
,
��@ A
offset
��B H
)
��H I
;
��I J
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
WriteBytesSafe
�� )
(
��) *
byte
��* .
[
��. /
]
��/ 0
value
��1 6
,
��6 7
int
��8 ;
size
��< @
=
��A B
-
��C D
$num
��D E
,
��E F
int
��G J
offset
��K Q
=
��R S
$num
��T U
)
��U V
{
�� 	
fixed
�� 
(
�� 
byte
�� 
*
�� 
ptr
�� 
=
�� 
value
�� $
)
��$ %
{
�� 
WriteBytesSafe
�� 
(
�� 
ptr
�� "
,
��" #
size
��$ (
==
��) +
-
��, -
$num
��- .
?
��/ 0
value
��1 6
.
��6 7
Length
��7 =
:
��> ?
size
��@ D
,
��D E
offset
��F L
)
��L M
;
��M N
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
CopyTo
�� !
(
��! "
FastBufferWriter
��" 2
other
��3 8
)
��8 9
{
�� 	
other
�� 
.
�� 

WriteBytes
�� 
(
�� 
Handle
�� #
->
��# %
BufferPointer
��% 2
,
��2 3
Handle
��4 :
->
��: <
Position
��< D
)
��D E
;
��E F
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
CopyFrom
�� #
(
��# $
FastBufferWriter
��$ 4
other
��5 :
)
��: ;
{
�� 	

WriteBytes
�� 
(
�� 
other
�� 
.
�� 
Handle
�� #
->
��# %
BufferPointer
��% 2
,
��2 3
other
��4 9
.
��9 :
Handle
��: @
->
��@ B
Position
��B J
)
��J K
;
��K L
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
static
�� 
unsafe
�� 
int
��  
GetWriteSize
��! -
<
��- .
T
��. /
>
��/ 0
(
��0 1
in
��1 3
T
��4 5
value
��6 ;
)
��; <
where
��= B
T
��C D
:
��E F
	unmanaged
��G P
{
�� 	
return
�� 
sizeof
�� 
(
�� 
T
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
unsafe
�� 
int
��  
GetWriteSize
��! -
<
��- .
T
��. /
>
��/ 0
(
��0 1
)
��1 2
where
��3 8
T
��9 :
:
��; <
	unmanaged
��= F
{
�� 	
return
�� 
sizeof
�� 
(
�� 
T
�� 
)
�� 
;
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 

WriteValue
�� %
<
��% &
T
��& '
>
��' (
(
��( )
in
��) +
T
��, -
value
��. 3
)
��3 4
where
��5 :
T
��; <
:
��= >
	unmanaged
��? H
{
�� 	
int
�� 
len
�� 
=
�� 
sizeof
�� 
(
�� 
T
�� 
)
�� 
;
��  
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
len
��# &
>
��' (
Handle
��) /
->
��/ 1
AllowedWriteMark
��1 A
)
��A B
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$"
��, .
$str
��. W
{
��W X
nameof
��X ^
(
��^ _
TryBeginWrite
��_ l
)
��l m
}
��m n
$str
��n p
"
��p q
)
��q r
;
��r s
}
�� 
fixed
�� 
(
�� 
T
�� 
*
�� 
ptr
�� 
=
�� 
&
�� 
value
�� "
)
��" #
{
�� 
UnsafeUtility
�� 
.
�� 
MemCpy
�� $
(
��$ %
Handle
��% +
->
��+ -
BufferPointer
��- :
+
��; <
Handle
��= C
->
��C E
Position
��E M
,
��M N
(
��O P
byte
��P T
*
��T U
)
��U V
ptr
��V Y
,
��Y Z
len
��[ ^
)
��^ _
;
��_ `
}
�� 
Handle
�� 
->
�� 
Position
�� 
+=
�� 
len
��  #
;
��# $
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
unsafe
�� 
void
�� 
WriteValueSafe
�� )
<
��) *
T
��* +
>
��+ ,
(
��, -
in
��- /
T
��0 1
value
��2 7
)
��7 8
where
��9 >
T
��? @
:
��A B
	unmanaged
��C L
{
�� 	
int
�� 
len
�� 
=
�� 
sizeof
�� 
(
�� 
T
�� 
)
�� 
;
��  
if
�� 
(
�� 
Handle
�� 
->
�� 
InBitwiseContext
�� (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
�� Z
)
��Z [
;
��[ \
}
�� 
if
�� 
(
�� 
!
�� #
TryBeginWriteInternal
�� &
(
��& '
len
��' *
)
��* +
)
��+ ,
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
fixed
�� 
(
�� 
T
�� 
*
�� 
ptr
�� 
=
�� 
&
�� 
value
�� "
)
��" #
{
�� 
UnsafeUtility
�� 
.
�� 
MemCpy
�� $
(
��$ %
Handle
��% +
->
��+ -
BufferPointer
��- :
+
��; <
Handle
��= C
->
��C E
Position
��E M
,
��M N
(
��O P
byte
��P T
*
��T U
)
��U V
ptr
��V Y
,
��Y Z
len
��[ ^
)
��^ _
;
��_ `
}
�� 
Handle
�� 
->
�� 
Position
�� 
+=
�� 
len
��  #
;
��# $
}
�� 	
public
�� 
unsafe
�� 
NativeArray
�� !
<
��! "
byte
��" &
>
��& '
ToNativeArray
��( 5
(
��5 6
	Allocator
��6 ?
	allocator
��@ I
)
��I J
{
�� 	
var
�� 
nativeArray
�� 
=
�� 
new
�� !
NativeArray
��" -
<
��- .
byte
��. 2
>
��2 3
(
��3 4
Length
��4 :
,
��: ;
	allocator
��< E
,
��E F 
NativeArrayOptions
��G Y
.
��Y Z!
UninitializedMemory
��Z m
)
��m n
;
��n o
UnsafeUtility
�� 
.
�� 
MemCpy
��  
(
��  !
nativeArray
��! ,
.
��, -
GetUnsafePtr
��- 9
(
��9 :
)
��: ;
,
��; <
GetUnsafePtr
��= I
(
��I J
)
��J K
,
��K L
nativeArray
��M X
.
��X Y
Length
��Y _
)
��_ `
;
��` a
return
�� 
nativeArray
�� 
;
�� 
}
�� 	
}
�� 
}�� �
vC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStats\Runtime\Metrics\IEventMetric.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStats" *
{ 
	interface 
IEventMetric 
: 
IMetric $
{ 
bool 
WentOverLimit 
{ 
get  
;  !
}" #
int 
Count 
{ 
get 
; 
} 
}		 
	interface 
IEventMetric 
< 
TValue !
>! "
:# $
IEventMetric% 1
{ 
IReadOnlyList 
< 
TValue 
> 
Values $
{% &
get' *
;* +
}, -
} 
} 