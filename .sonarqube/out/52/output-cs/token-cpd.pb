Û
C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Counter\CounterWrapper.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
class 	
CounterWrapper
 
: 
ICounter #
{ 
ProfilerCounter 
< 
long 
> 
	m_Counter '
;' (
public		 
CounterWrapper		 
(		 
ProfilerCounter		 -
<		- .
long		. 2
>		2 3
counter		4 ;
)		; <
{

 	
	m_Counter 
= 
counter 
;  
} 	
public 
void 
Sample 
( 
long 
inValue  '
)' (
{ 	
	m_Counter 
. 
Sample 
( 
inValue $
)$ %
;% &
} 	
} 
} ®
ÑC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Counter\MetricEventCounters.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
class 	
MetricEventCounters
 
{ 
public 
string 
Sent 
{ 
get  
;  !
}" #
readonly		 
ICounter		 
m_SentCounter		 '
;		' (
public 
string 
Received 
{  
get! $
;$ %
}& '
readonly 
ICounter 
m_ReceivedCounter +
;+ ,
public 
MetricEventCounters "
(" #
string# )
displayName* 5
,5 6
ICounterFactory7 F
counterFactoryG U
)U V
{ 	
Sent 
= 
$" 
{ 
displayName !
}! "
$str" '
"' (
;( )
Received 
= 
$" 
{ 
displayName %
}% &
$str& /
"/ 0
;0 1
m_SentCounter 
= 
counterFactory *
.* +
	Construct+ 4
(4 5
Sent5 9
)9 :
;: ;
m_ReceivedCounter 
= 
counterFactory  .
.. /
	Construct/ 8
(8 9
Received9 A
)A B
;B C
} 	
public 
void 
Sample 
< 

TEventData %
>% &
(& '
IReadOnlyCollection 
<  

TEventData  *
>* +
sent, 0
,0 1
IReadOnlyCollection 
<  

TEventData  *
>* +
received, 4
)4 5
{ 	
m_SentCounter 
. 
Sample  
(  !
sent! %
.% &
Count& +
)+ ,
;, -
m_ReceivedCounter 
. 
Sample $
($ %
received% -
.- .
Count. 3
)3 4
;4 5
} 	
} 
} ú
yC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Counter\ICounter.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
	interface 
ICounter 
{ 
void 
Sample 
( 
long 
inValue  
)  !
;! "
} 
} Å
C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Counter\MetricCounters.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
class 	
MetricCounters
 
{ 
public		 
readonly		 
MetricByteCounters		 *
Bytes		+ 0
;		0 1
public

 
readonly

 
MetricEventCounters

 +
Events

, 2
;

2 3
public 
MetricCounters 
( 
string 
displayName 
, 
ICounterFactory 
byteCounterFactory .
,. /
ICounterFactory 
eventCounterFactory /
)/ 0
{ 	
Bytes 
= 
new 
MetricByteCounters *
(* +
displayName+ 6
,6 7
byteCounterFactory8 J
)J K
;K L
Events 
= 
new 
MetricEventCounters ,
(, -
displayName- 8
,8 9
eventCounterFactory: M
)M N
;N O
} 	
public 
void 
Sample 
< 

TEventData %
>% &
(& '
IReadOnlyList 
< 

TEventData $
>$ %
sent& *
,* +
IReadOnlyList 
< 

TEventData $
>$ %
received& .
). /
where 

TEventData 
: 
struct %
,% &
INetworkMetricEvent' :
{ 	
Bytes 
. 
Sample 
( 
sent 
, 
received '
)' (
;( )
Events 
. 
Sample 
( 
sent 
, 
received  (
)( )
;) *
} 	
} 
} ë|
ÅC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Counter\ProfilerCounters.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
class 	
ProfilerCounters
 
{ 
static 
ProfilerCounters 
s_Singleton  +
;+ ,
public		 
static		 
ProfilerCounters		 &
Instance		' /
=>		0 2
s_Singleton		3 >
??=		? B
new		C F
ProfilerCounters		G W
(		W X
)		X Y
;		Y Z
public 
readonly 
MetricByteCounters *

totalBytes+ 5
;5 6
public 
readonly 
MetricCounters &
rpc' *
;* +
public 
readonly 
MetricCounters &
namedMessage' 3
;3 4
public 
readonly 
MetricCounters &
unnamedMessage' 5
;5 6
public 
readonly 
MetricCounters & 
networkVariableDelta' ;
;; <
public 
readonly 
MetricCounters &
objectSpawned' 4
;4 5
public 
readonly 
MetricCounters &
objectDestroyed' 6
;6 7
public 
readonly 
MetricCounters &
	serverLog' 0
;0 1
public 
readonly 
MetricCounters &

sceneEvent' 1
;1 2
public 
readonly 
MetricCounters &
ownershipChange' 6
;6 7
public 
readonly 
MetricCounters &
customMessage' 4
;4 5
public 
readonly 
MetricCounters &
networkMessage' 5
;5 6
ICounterFactory  
m_ByteCounterFactory ,
;, -
ICounterFactory !
m_EventCounterFactory -
;- .
public 
ProfilerCounters 
(  
ICounterFactory 
byteCounterFactory .
=/ 0
null1 5
,5 6
ICounterFactory 
eventCounterFactory /
=0 1
null2 6
)6 7
{ 	 
m_ByteCounterFactory  
=! "
byteCounterFactory# 5
??6 8
new9 <
ByteCounterFactory= O
(O P
)P Q
;Q R!
m_EventCounterFactory   !
=  " #
eventCounterFactory  $ 7
??  8 :
new  ; >
EventCounterFactory  ? R
(  R S
)  S T
;  T U

totalBytes"" 
="" '
ConstructMetricByteCounters"" 4
(""4 5
$str""5 <
)""< =
;""= >
rpc## 
=## #
ConstructMetricCounters## )
(##) *

MetricType##* 4
.##4 5
Rpc##5 8
)##8 9
;##9 :
namedMessage$$ 
=$$ #
ConstructMetricCounters$$ 2
($$2 3

MetricType$$3 =
.$$= >
NamedMessage$$> J
)$$J K
;$$K L
unnamedMessage%% 
=%% #
ConstructMetricCounters%% 4
(%%4 5

MetricType%%5 ?
.%%? @
UnnamedMessage%%@ N
)%%N O
;%%O P 
networkVariableDelta&&  
=&&! "#
ConstructMetricCounters&&# :
(&&: ;
$str&&; M
)&&M N
;&&N O
objectSpawned'' 
='' #
ConstructMetricCounters'' 3
(''3 4

MetricType''4 >
.''> ?
ObjectSpawned''? L
)''L M
;''M N
objectDestroyed(( 
=(( #
ConstructMetricCounters(( 5
(((5 6

MetricType((6 @
.((@ A
ObjectDestroyed((A P
)((P Q
;((Q R
	serverLog)) 
=)) #
ConstructMetricCounters)) /
())/ 0

MetricType))0 :
.)): ;
	ServerLog)); D
)))D E
;))E F

sceneEvent** 
=** #
ConstructMetricCounters** 0
(**0 1

MetricType**1 ;
.**; <

SceneEvent**< F
)**F G
;**G H
ownershipChange++ 
=++ #
ConstructMetricCounters++ 5
(++5 6

MetricType++6 @
.++@ A
OwnershipChange++A P
)++P Q
;++Q R
customMessage,, 
=,, #
ConstructMetricCounters,, 3
(,,3 4
$str,,4 <
),,< =
;,,= >
networkMessage-- 
=-- #
ConstructMetricCounters-- 4
(--4 5
$str--5 G
)--G H
;--H I
}.. 	
MetricByteCounters00 '
ConstructMetricByteCounters00 6
(006 7
string007 =
name00> B
)00B C
=>11 
new11 
MetricByteCounters11 %
(11% &
name22 
,22  
m_ByteCounterFactory33 $
)33$ %
;33% &
MetricCounters55 #
ConstructMetricCounters55 .
(55. /

MetricType55/ 9

metricType55: D
)55D E
=>66 #
ConstructMetricCounters66 &
(66& '

metricType66' 1
.661 2 
GetDisplayNameString662 F
(66F G
)66G H
)66H I
;66I J
MetricCounters77 #
ConstructMetricCounters77 .
(77. /
string77/ 5
name776 :
)77: ;
=>88 
new88 
MetricCounters88 !
(88! "
name88" &
,88& ' 
m_ByteCounterFactory88( <
,88< =!
m_EventCounterFactory88> S
)88S T
;88T U
public:: 
void:: 
UpdateFromMetrics:: %
(::% &
MetricCollection::& 6

collection::7 A
)::A B
{;; 	

totalBytes<< 
.<< 
Sample<< 
(<< 

collection== 
.== 
TryGetCounter== (
(==( )
DirectedMetricType==) ;
.==; <
TotalBytesSent==< J
.==J K
GetId==K P
(==P Q
)==Q R
,==R S
out==T W
var==X [
	bytesSent==\ e
)==e f
?>> 
	bytesSent>> 
.>>  
Value>>  %
:?? 
$num?? 
,?? 

collection@@ 
.@@ 
TryGetCounter@@ (
(@@( )
DirectedMetricType@@) ;
.@@; <
TotalBytesReceived@@< N
.@@N O
GetId@@O T
(@@T U
)@@U V
,@@V W
out@@X [
var@@\ _
bytesReceived@@` m
)@@m n
?AA 
bytesReceivedAA #
.AA# $
ValueAA$ )
:BB 
$numBB 
)BB 
;BB 
rpcDD 
.DD 
SampleDD 
(DD 

collectionEE 
.EE 
GetEventValuesEE )
<EE) *
RpcEventEE* 2
>EE2 3
(EE3 4
DirectedMetricTypeEE4 F
.EEF G
RpcSentEEG N
.EEN O
GetIdEEO T
(EET U
)EEU V
)EEV W
,EEW X

collectionFF 
.FF 
GetEventValuesFF )
<FF) *
RpcEventFF* 2
>FF2 3
(FF3 4
DirectedMetricTypeFF4 F
.FFF G
RpcReceivedFFG R
.FFR S
GetIdFFS X
(FFX Y
)FFY Z
)FFZ [
)FF[ \
;FF\ ]
namedMessageHH 
.HH 
SampleHH 
(HH  

collectionII 
.II 
GetEventValuesII )
<II) *
NamedMessageEventII* ;
>II; <
(II< =
DirectedMetricTypeII= O
.IIO P
NamedMessageSentIIP `
.II` a
GetIdIIa f
(IIf g
)IIg h
)IIh i
,IIi j

collectionJJ 
.JJ 
GetEventValuesJJ )
<JJ) *
NamedMessageEventJJ* ;
>JJ; <
(JJ< =
DirectedMetricTypeJJ= O
.JJO P 
NamedMessageReceivedJJP d
.JJd e
GetIdJJe j
(JJj k
)JJk l
)JJl m
)JJm n
;JJn o
unnamedMessageLL 
.LL 
SampleLL !
(LL! "

collectionMM 
.MM 
GetEventValuesMM )
<MM) *
UnnamedMessageEventMM* =
>MM= >
(MM> ?
DirectedMetricTypeMM? Q
.MMQ R
UnnamedMessageSentMMR d
.MMd e
GetIdMMe j
(MMj k
)MMk l
)MMl m
,MMm n

collectionNN 
.NN 
GetEventValuesNN )
<NN) *
UnnamedMessageEventNN* =
>NN= >
(NN> ?
DirectedMetricTypeNN? Q
.NNQ R"
UnnamedMessageReceivedNNR h
.NNh i
GetIdNNi n
(NNn o
)NNo p
)NNp q
)NNq r
;NNr s
customMessageQQ 
.QQ 
SampleQQ  
(QQ  !

collectionRR 
.RR 
GetEventValuesRR )
<RR) *
NamedMessageEventRR* ;
>RR; <
(RR< =
DirectedMetricTypeRR= O
.RRO P
NamedMessageSentRRP `
.RR` a
GetIdRRa f
(RRf g
)RRg h
)RRh i
,RRi j

collectionSS 
.SS 
GetEventValuesSS )
<SS) *
NamedMessageEventSS* ;
>SS; <
(SS< =
DirectedMetricTypeSS= O
.SSO P 
NamedMessageReceivedSSP d
.SSd e
GetIdSSe j
(SSj k
)SSk l
)SSl m
)SSm n
;SSn o
customMessageTT 
.TT 
SampleTT  
(TT  !

collectionUU 
.UU 
GetEventValuesUU )
<UU) *
UnnamedMessageEventUU* =
>UU= >
(UU> ?
DirectedMetricTypeUU? Q
.UUQ R
UnnamedMessageSentUUR d
.UUd e
GetIdUUe j
(UUj k
)UUk l
)UUl m
,UUm n

collectionVV 
.VV 
GetEventValuesVV )
<VV) *
UnnamedMessageEventVV* =
>VV= >
(VV> ?
DirectedMetricTypeVV? Q
.VVQ R"
UnnamedMessageReceivedVVR h
.VVh i
GetIdVVi n
(VVn o
)VVo p
)VVp q
)VVq r
;VVr s 
networkVariableDeltaXX  
.XX  !
SampleXX! '
(XX' (

collectionYY 
.YY 
GetEventValuesYY )
<YY) * 
NetworkVariableEventYY* >
>YY> ?
(YY? @
DirectedMetricTypeYY@ R
.YYR S$
NetworkVariableDeltaSentYYS k
.YYk l
GetIdYYl q
(YYq r
)YYr s
)YYs t
,YYt u

collectionZZ 
.ZZ 
GetEventValuesZZ )
<ZZ) * 
NetworkVariableEventZZ* >
>ZZ> ?
(ZZ? @
DirectedMetricTypeZZ@ R
.ZZR S(
NetworkVariableDeltaReceivedZZS o
.ZZo p
GetIdZZp u
(ZZu v
)ZZv w
)ZZw x
)ZZx y
;ZZy z
objectSpawned\\ 
.\\ 
Sample\\  
(\\  !

collection]] 
.]] 
GetEventValues]] )
<]]) *
ObjectSpawnedEvent]]* <
>]]< =
(]]= >
DirectedMetricType]]> P
.]]P Q
ObjectSpawnedSent]]Q b
.]]b c
GetId]]c h
(]]h i
)]]i j
)]]j k
,]]k l

collection^^ 
.^^ 
GetEventValues^^ )
<^^) *
ObjectSpawnedEvent^^* <
>^^< =
(^^= >
DirectedMetricType^^> P
.^^P Q!
ObjectSpawnedReceived^^Q f
.^^f g
GetId^^g l
(^^l m
)^^m n
)^^n o
)^^o p
;^^p q
objectDestroyed`` 
.`` 
Sample`` "
(``" #

collectionaa 
.aa 
GetEventValuesaa )
<aa) * 
ObjectDestroyedEventaa* >
>aa> ?
(aa? @
DirectedMetricTypeaa@ R
.aaR S
ObjectDestroyedSentaaS f
.aaf g
GetIdaag l
(aal m
)aam n
)aan o
,aao p

collectionbb 
.bb 
GetEventValuesbb )
<bb) * 
ObjectDestroyedEventbb* >
>bb> ?
(bb? @
DirectedMetricTypebb@ R
.bbR S#
ObjectDestroyedReceivedbbS j
.bbj k
GetIdbbk p
(bbp q
)bbq r
)bbr s
)bbs t
;bbt u
	serverLogdd 
.dd 
Sampledd 
(dd 

collectionee 
.ee 
GetEventValuesee )
<ee) *
ServerLogEventee* 8
>ee8 9
(ee9 :
DirectedMetricTypeee: L
.eeL M
ServerLogSenteeM Z
.eeZ [
GetIdee[ `
(ee` a
)eea b
)eeb c
,eec d

collectionff 
.ff 
GetEventValuesff )
<ff) *
ServerLogEventff* 8
>ff8 9
(ff9 :
DirectedMetricTypeff: L
.ffL M
ServerLogReceivedffM ^
.ff^ _
GetIdff_ d
(ffd e
)ffe f
)fff g
)ffg h
;ffh i

sceneEventhh 
.hh 
Samplehh 
(hh 

collectionii 
.ii 
GetEventValuesii )
<ii) *
SceneEventMetricii* :
>ii: ;
(ii; <
DirectedMetricTypeii< N
.iiN O
SceneEventSentiiO ]
.ii] ^
GetIdii^ c
(iic d
)iid e
)iie f
,iif g

collectionjj 
.jj 
GetEventValuesjj )
<jj) *
SceneEventMetricjj* :
>jj: ;
(jj; <
DirectedMetricTypejj< N
.jjN O
SceneEventReceivedjjO a
.jja b
GetIdjjb g
(jjg h
)jjh i
)jji j
)jjj k
;jjk l
ownershipChangell 
.ll 
Samplell "
(ll" #

collectionmm 
.mm 
GetEventValuesmm )
<mm) * 
OwnershipChangeEventmm* >
>mm> ?
(mm? @
DirectedMetricTypemm@ R
.mmR S
OwnershipChangeSentmmS f
.mmf g
GetIdmmg l
(mml m
)mmm n
)mmn o
,mmo p

collectionnn 
.nn 
GetEventValuesnn )
<nn) * 
OwnershipChangeEventnn* >
>nn> ?
(nn? @
DirectedMetricTypenn@ R
.nnR S#
OwnershipChangeReceivednnS j
.nnj k
GetIdnnk p
(nnp q
)nnq r
)nnr s
)nns t
;nnt u
networkMessagepp 
.pp 
Samplepp !
(pp! "

collectionqq 
.qq 
GetEventValuesqq )
<qq) *
NetworkMessageEventqq* =
>qq= >
(qq> ?
DirectedMetricTypeqq? Q
.qqQ R
NetworkMessageSentqqR d
.qqd e
GetIdqqe j
(qqj k
)qqk l
)qql m
,qqm n

collectionrr 
.rr 
GetEventValuesrr )
<rr) *
NetworkMessageEventrr* =
>rr= >
(rr> ?
DirectedMetricTyperr? Q
.rrQ R"
NetworkMessageReceivedrrR h
.rrh i
GetIdrri n
(rrn o
)rro p
)rrp q
)rrq r
;rrr s
}ss 	
}tt 
}uu 
ÜC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\ProfilerMetricObserverFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
static 

class )
ProfilerMetricObserverFactory .
{ 
public 
static 
IMetricObserver %
	Construct& /
(/ 0
)0 1
{ 	
return

 
new

 /
#ExtensibilityProfilerMetricObserver

 :
(

: ;
)

; <
;

< =
} 	
} 
} ∞ 
ÉC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Counter\MetricByteCounters.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
class 	
MetricByteCounters
 
{ 
readonly 
ICounter 
m_SentCounter '
;' (
readonly		 
ICounter		 
m_ReceivedCounter		 +
;		+ ,
public 
MetricByteCounters !
(! "
string" (
displayName) 4
,4 5
ICounterFactory6 E
counterFactoryF T
)T U
{ 	
Sent 
= 
$" 
{ 
displayName !
}! "
$str" -
"- .
;. /
Received 
= 
$" 
{ 
displayName %
}% &
$str& 5
"5 6
;6 7
m_SentCounter 
= 
counterFactory *
.* +
	Construct+ 4
(4 5
Sent5 9
)9 :
;: ;
m_ReceivedCounter 
= 
counterFactory  .
.. /
	Construct/ 8
(8 9
Received9 A
)A B
;B C
} 	
public 
string 
Sent 
{ 
get  
;  !
}" #
public 
string 
Received 
{  
get! $
;$ %
}& '
public 
void 
Sample 
< 

TEventData %
>% &
(& '
IReadOnlyList 
< 

TEventData $
>$ %
sentMetrics& 1
,1 2
IReadOnlyList 
< 

TEventData $
>$ %
receivedMetrics& 5
)5 6
where 

TEventData 
: 
struct %
,% &
INetworkMetricEvent' :
{ 	
var 
	sentValue 
= 
$num 
;  
for 
( 
var 
i 
= 
$num 
; 
i 
< 
sentMetrics  +
.+ ,
Count, 1
;1 2
i3 4
++4 6
)6 7
{ 
var   
metric   
=   
sentMetrics   (
[  ( )
i  ) *
]  * +
;  + ,
	sentValue!! 
+=!! 
metric!! #
.!!# $

BytesCount!!$ .
;!!. /
}"" 
var$$ 
receivedValue$$ 
=$$ 
$num$$  "
;$$" #
for%% 
(%% 
var%% 
i%% 
=%% 
$num%% 
;%% 
i%% 
<%% 
receivedMetrics%%  /
.%%/ 0
Count%%0 5
;%%5 6
i%%7 8
++%%8 :
)%%: ;
{&& 
var'' 
metric'' 
='' 
receivedMetrics'' ,
['', -
i''- .
]''. /
;''/ 0
receivedValue(( 
+=((  
metric((! '
.((' (

BytesCount((( 2
;((2 3
})) 
Sample++ 
(++ 
	sentValue++ 
,++ 
receivedValue++ +
)+++ ,
;++, -
},, 	
public.. 
void.. 
Sample.. 
(.. 
long.. 
sent..  $
,..$ %
long..& *
received..+ 3
)..3 4
{// 	
m_SentCounter00 
.00 
Sample00  
(00  !
sent00! %
)00% &
;00& '
m_ReceivedCounter11 
.11 
Sample11 $
(11$ %
received11% -
)11- .
;11. /
}22 	
}33 
}44 ±
ÄC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Counter\ICounterFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
	interface 
ICounterFactory 
{ 
ICounter 
	Construct 
( 
string !
name" &
)& '
;' (
} 
} ó
îC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\LegacyProfiler\LegacyProfilerMetricObserver.csÑ
ÑC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Counter\EventCounterFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
class 	
EventCounterFactory
 
: 
ICounterFactory  /
{ 
public 
ICounter 
	Construct !
(! "
string" (
name) -
)- .
=> 
new 
CounterWrapper !
(! "
new		 
ProfilerCounter		 #
<		# $
long		$ (
>		( )
(		) *
ProfilerCategory

 $
.

$ %
Network

% ,
,

, -
name

. 2
,

2 3"
ProfilerMarkerDataUnit

4 J
.

J K
Count

K P
)

P Q
)

Q R
;

R S
} 
} ∂
xC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Frame\FrameInfo.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
internal 
static 
class 
	FrameInfo #
{ 
public 
static 
readonly 
Guid #
NetworkProfilerGuid$ 7
=8 9
new: =
Guid> B
(B C
$strC i
)i j
;j k
public 
const 
int "
NetworkProfilerDataTag /
=0 1
$num2 3
;3 4
}		 
}

 Ç
ÉC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Counter\ByteCounterFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
class 	
ByteCounterFactory
 
: 
ICounterFactory .
{ 
public 
ICounter 
	Construct !
(! "
string" (
name) -
)- .
=> 
new 
CounterWrapper !
(! "
new		 
ProfilerCounter		 #
<		# $
long		$ (
>		( )
(		) *
ProfilerCategory

 $
.

$ %
Network

% ,
,

, -
name

. 2
,

2 3"
ProfilerMarkerDataUnit

4 J
.

J K
Bytes

K P
)

P Q
)

Q R
;

R S
} 
} õ,
çC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\Models\Profiler\BytesSentAndReceived.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
[ 
Serializable 
] 
internal 
struct  
BytesSentAndReceived (
:) *

IEquatable+ 5
<5 6 
BytesSentAndReceived6 J
>J K
{		 
public

  
BytesSentAndReceived

 #
(

# $
long

$ (
sent

) -
=

. /
$num

0 1
,

1 2
long

3 7
received

8 @
=

A B
$num

C D
)

D E
{ 	
Sent 
= 
sent 
; 
Received 
= 
received 
;  
} 	
public 
long 
Sent 
{ 
get 
; 
}  !
public 
long 
Received 
{ 
get "
;" #
}$ %
public 
NetworkDirection 
	Direction  )
=>* ,
( 
Sent 
> 
$num 
? 
NetworkDirection -
.- .
Sent. 2
:3 4
NetworkDirection5 E
.E F
NoneF J
)J K
|L M
( 
Received 
> 
$num 
? 
NetworkDirection -
.- .
Received. 6
:7 8
NetworkDirection9 I
.I J
NoneJ N
)N O
;O P
public 
long 
Total 
=> 
Sent !
+" #
Received$ ,
;, -
public 
bool 
Equals 
(  
BytesSentAndReceived /
other0 5
)5 6
{ 	
return 
Sent 
== 
other  
.  !
Sent! %
&&& (
Received 
== 
other $
.$ %
Received% -
;- .
} 	
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{   	
return!! 
obj!! 
is!!  
BytesSentAndReceived!! .
other!!/ 4
&&!!5 7
Equals!!8 >
(!!> ?
other!!? D
)!!D E
;!!E F
}"" 	
public$$ 
static$$  
BytesSentAndReceived$$ *
operator$$+ 3
+$$4 5
($$5 6 
BytesSentAndReceived%%  
a%%! "
,%%" # 
BytesSentAndReceived&&  
b&&! "
)&&" #
=>&&$ &
new&&' * 
BytesSentAndReceived&&+ ?
(&&? @
a'' 
.'' 
Sent'' 
+'' 
b'' 
.'' 
Sent'' 
,''  
a(( 
.(( 
Received(( 
+(( 
b(( 
.(( 
Received(( '
)((' (
;((( )
public** 
override** 
int** 
GetHashCode** '
(**' (
)**( )
{++ 	
	unchecked,, 
{-- 
return.. 
(.. 
Sent.. 
... 
GetHashCode.. (
(..( )
)..) *
*..+ ,
$num..- 0
)..0 1
^..2 3
Received..4 <
...< =
GetHashCode..= H
(..H I
)..I J
;..J K
}// 
}00 	
public22 
override22 
string22 
ToString22 '
(22' (
)22( )
{33 	
return44 
$"44 
{44 
nameof44 
(44  
BytesSentAndReceived44 1
)441 2
}442 3
$str443 5
{445 6
nameof446 <
(44< =
Sent44= A
)44A B
}44B C
$str44C D
{44D E
Sent44E I
}44I J
$str44J K
{44K L
nameof44L R
(44R S
Received44S [
)44[ \
}44\ ]
$str44] ^
{44^ _
Received44_ g
}44g h
"44h i
;44i j
}55 	
}66 
internal88 
static88 
class88 *
BytesSentAndReceivedExtensions88 8
{99 
public:: 
static::  
BytesSentAndReceived:: *
Sum::+ .
<::. /
T::/ 0
>::0 1
(::1 2
this::2 6
IEnumerable::7 B
<::B C
T::C D
>::D E
ts::F H
,::H I
Func::J N
<::N O
T::O P
,::P Q 
BytesSentAndReceived::R f
>::f g
f::h i
)::i j
{;; 	 
BytesSentAndReceived<<  
result<<! '
=<<( )
new<<* - 
BytesSentAndReceived<<. B
(<<B C
)<<C D
;<<D E
foreach== 
(== 
var== 
t== 
in== 
ts==  
)==  !
{>> 
result?? 
+=?? 
f?? 
(?? 
t?? 
)?? 
;?? 
}@@ 
returnAA 
resultAA 
;AA 
}BB 	
}CC 
}DD Î
¢C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\ExtensibilityProfiler\ExtensibilityProfilerMetricObserver.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetworkProfiler" 1
.1 2
Runtime2 9
{ 
class 	/
#ExtensibilityProfilerMetricObserver
 -
:. /
IMetricObserver0 ?
{		 
readonly

 
INetStatSerializer

 #
m_NetStatSerializer

$ 7
;

7 8
public /
#ExtensibilityProfilerMetricObserver 2
(2 3
)3 4
{ 	
m_NetStatSerializer 
=  !
new" %
NetStatSerializer& 7
(7 8
)8 9
;9 :
} 	
public 
void 
Observe 
( 
MetricCollection ,

collection- 7
)7 8
{ 	%
PopulateProfilerIfEnabled %
(% &

collection& 0
)0 1
;1 2
} 	
[ 	
Conditional	 
( 
$str &
)& '
]' (
void %
PopulateProfilerIfEnabled &
(& '
MetricCollection' 7

collection8 B
)B C
{ 	
ProfilerCounters 
. 
Instance %
.% &
UpdateFromMetrics& 7
(7 8

collection8 B
)B C
;C D
using 
var 
result 
= 
m_NetStatSerializer 2
.2 3
	Serialize3 <
(< =

collection= G
)G H
;H I
Profiler 
. 
EmitFrameMetaData &
(& '
	FrameInfo 
. 
NetworkProfilerGuid -
,- .
	FrameInfo 
. "
NetworkProfilerDataTag 0
,0 1
result 
) 
; 
} 	
}   
}!! ™
uC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkProfiler\Runtime\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str N
)N O
]O P
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str T
)T U
]U V
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K