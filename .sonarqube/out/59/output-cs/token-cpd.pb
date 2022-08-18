ªˆ
†C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\TestDataDispatcher.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsReporting" 3
{ 
public		 

class		 
TestDataDispatcher		 #
{

 
const 
int 
DefaultServerId !
=" #
$num$ %
;% &
const 
int 
DefaultClientId !
=" #
$num$ %
;% &
readonly 
Random 
m_Random  
;  !
readonly 
TestDataGenerator "
m_DataGenerator# 2
;2 3
readonly 
ITestDataTracker !
	m_Tracker" +
;+ ,
readonly 
TestDataTrends 
m_Trends  (
;( )
public 
TestDataDispatcher !
(! "
int" %
seed& *
=+ ,
$num- .
). /
{ 	
m_Random 
= 
seed 
!= 
$num  
?! "
new# &
Random' -
(- .
seed. 2
)2 3
:4 5
new6 9
Random: @
(@ A
)A B
;B C
m_DataGenerator 
= 
new !
TestDataGenerator" 3
(3 4
new 
TestDataDefinition &
(& '
seed' +
!=, .
$num/ 0
?1 2
seed3 7
:8 9
m_Random: B
.B C
NextC G
(G H
)H I
)I J
,J K
m_RandomL T
,T U
m_RandomV ^
.^ _
Next_ c
(c d
$numd e
,e f
$numg i
)i j
)j k
;k l
	m_Tracker 
= 
new 
TestDataTracker +
(+ ,
), -
;- .
	m_Tracker 
. 

Dispatcher  
.  !
RegisterObserver! 1
(1 2!
MetricObserverFactory2 G
.G H
	ConstructH Q
(Q R
)R S
)S T
;T U
m_Trends 
= 
new 
TestDataTrends )
() *
)* +
;+ ,
} 	
public 
void 
DispatchClientFrame '
(' (
)( )
{ 	
var 

connection 
= 
new  
ConnectionInfo! /
(/ 0
DefaultServerId0 ?
)? @
;@ A
	m_Tracker   
.   
SetConnectionId   %
(  % &
DefaultClientId  & 5
)  5 6
;  6 7
m_Trends"" 
."" 
NamedMessagesSent"" &
.""& '
Repeat""' -
(""- .
m_Random"". 6
,""6 7
(""8 9
)""9 :
=>""; =
{## 
var$$ 
namedMessageEvent$$ %
=$$& '
m_DataGenerator$$( 7
.$$7 8%
GenerateNamedMessageEvent$$8 Q
($$Q R

connection$$R \
)$$\ ]
.$$] ^
First$$^ c
($$c d
)$$d e
;$$e f
	m_Tracker%% 
.%% !
TrackNamedMessageSent%% /
(%%/ 0
namedMessageEvent%%0 A
)%%A B
;%%B C
	m_Tracker&& 
.&& #
TrackTransportBytesSent&& 1
(&&1 2
namedMessageEvent&&2 C
.&&C D

BytesCount&&D N
)&&N O
;&&O P
}'' 
)'' 
;'' 
m_Trends)) 
.)) !
NamedMessagesReceived)) *
.))* +
Repeat))+ 1
())1 2
m_Random))2 :
,)): ;
())< =
)))= >
=>))? A
{** 
var++ 
namedMessageEvent++ %
=++& '
m_DataGenerator++( 7
.++7 8%
GenerateNamedMessageEvent++8 Q
(++Q R

connection++R \
)++\ ]
.++] ^
First++^ c
(++c d
)++d e
;++e f
	m_Tracker,, 
.,, %
TrackNamedMessageReceived,, 3
(,,3 4
namedMessageEvent,,4 E
),,E F
;,,F G
	m_Tracker-- 
.-- '
TrackTransportBytesReceived-- 5
(--5 6
namedMessageEvent--6 G
.--G H

BytesCount--H R
)--R S
;--S T
}.. 
).. 
;.. 
m_Trends00 
.00 
UnnamedMessagesSent00 (
.00( )
Repeat00) /
(00/ 0
m_Random000 8
,008 9
(00: ;
)00; <
=>00= ?
{11 
var22 
unnamedMessageEvent22 '
=22( )
m_DataGenerator22* 9
.229 :'
GenerateUnnamedMessageEvent22: U
(22U V

connection22V `
)22` a
.22a b
First22b g
(22g h
)22h i
;22i j
	m_Tracker33 
.33 #
TrackUnnamedMessageSent33 1
(331 2
unnamedMessageEvent332 E
)33E F
;33F G
	m_Tracker44 
.44 #
TrackTransportBytesSent44 1
(441 2
unnamedMessageEvent442 E
.44E F

BytesCount44F P
)44P Q
;44Q R
}55 
)55 
;55 
m_Trends77 
.77 #
UnnamedMessagesReceived77 ,
.77, -
Repeat77- 3
(773 4
m_Random774 <
,77< =
(77> ?
)77? @
=>77A C
{88 
var99 
unnamedMessageEvent99 '
=99( )
m_DataGenerator99* 9
.999 :'
GenerateUnnamedMessageEvent99: U
(99U V

connection99V `
)99` a
.99a b
First99b g
(99g h
)99h i
;99i j
	m_Tracker:: 
.:: '
TrackUnnamedMessageReceived:: 5
(::5 6
unnamedMessageEvent::6 I
)::I J
;::J K
	m_Tracker;; 
.;; '
TrackTransportBytesReceived;; 5
(;;5 6
unnamedMessageEvent;;6 I
.;;I J

BytesCount;;J T
);;T U
;;;U V
}<< 
)<< 
;<< 
m_Trends>> 
.>> )
NetworkVariableDeltasReceived>> 2
.>>2 3
Repeat>>3 9
(>>9 :
m_Random>>: B
,>>B C
(>>D E
)>>E F
=>>>G I
{?? 
var@@  
networkVariableEvent@@ (
=@@) *
m_DataGenerator@@+ :
.@@: ;(
GenerateNetworkVariableEvent@@; W
(@@W X

connection@@X b
)@@b c
.@@c d
First@@d i
(@@i j
)@@j k
;@@k l
	m_TrackerAA 
.AA -
!TrackNetworkVariableDeltaReceivedAA ;
(AA; < 
networkVariableEventAA< P
)AAP Q
;AAQ R
	m_TrackerBB 
.BB '
TrackTransportBytesReceivedBB 5
(BB5 6 
networkVariableEventBB6 J
.BBJ K

BytesCountBBK U
)BBU V
;BBV W
}CC 
)CC 
;CC 
m_TrendsEE 
.EE )
OwnershipChangeEventsReceivedEE 2
.EE2 3
RepeatEE3 9
(EE9 :
m_RandomEE: B
,EEB C
(EED E
)EEE F
=>EEG I
{FF 
varGG  
ownershipChangeEventGG (
=GG) *
m_DataGeneratorGG+ :
.GG: ;(
GenerateOwnershipChangeEventGG; W
(GGW X

connectionGGX b
)GGb c
.GGc d
FirstGGd i
(GGi j
)GGj k
;GGk l
	m_TrackerHH 
.HH (
TrackOwnershipChangeReceivedHH 6
(HH6 7 
ownershipChangeEventHH7 K
)HHK L
;HHL M
	m_TrackerII 
.II '
TrackTransportBytesReceivedII 5
(II5 6 
ownershipChangeEventII6 J
.IIJ K

BytesCountIIK U
)IIU V
;IIV W
}JJ 
)JJ 
;JJ 
m_TrendsLL 
.LL %
ObjectSpawnEventsReceivedLL .
.LL. /
RepeatLL/ 5
(LL5 6
m_RandomLL6 >
,LL> ?
(LL@ A
)LLA B
=>LLC E
{MM 
varNN 
objectSpawnedEventNN &
=NN' (
m_DataGeneratorNN) 8
.NN8 9&
GenerateObjectSpawnedEventNN9 S
(NNS T

connectionNNT ^
)NN^ _
.NN_ `
FirstNN` e
(NNe f
)NNf g
;NNg h
	m_TrackerOO 
.OO $
TrackObjectSpawnReceivedOO 2
(OO2 3
objectSpawnedEventOO3 E
)OOE F
;OOF G
	m_TrackerPP 
.PP '
TrackTransportBytesReceivedPP 5
(PP5 6
objectSpawnedEventPP6 H
.PPH I

BytesCountPPI S
)PPS T
;PPT U
}QQ 
)QQ 
;QQ 
m_TrendsSS 
.SS )
ObjectDestroyedEventsReceivedSS 2
.SS2 3
RepeatSS3 9
(SS9 :
m_RandomSS: B
,SSB C
(SSD E
)SSE F
=>SSG I
{TT 
varUU  
objectDestroyedEventUU (
=UU) *
m_DataGeneratorUU+ :
.UU: ;(
GenerateObjectDestroyedEventUU; W
(UUW X

connectionUUX b
)UUb c
.UUc d
FirstUUd i
(UUi j
)UUj k
;UUk l
	m_TrackerVV 
.VV &
TrackObjectDestroyReceivedVV 4
(VV4 5 
objectDestroyedEventVV5 I
)VVI J
;VVJ K
	m_TrackerWW 
.WW '
TrackTransportBytesReceivedWW 5
(WW5 6 
objectDestroyedEventWW6 J
.WWJ K

BytesCountWWK U
)WWU V
;WWV W
}XX 
)XX 
;XX 
m_TrendsZZ 
.ZZ 
RpcEventsSentZZ "
.ZZ" #
RepeatZZ# )
(ZZ) *
m_RandomZZ* 2
,ZZ2 3
(ZZ4 5
)ZZ5 6
=>ZZ7 9
{[[ 
var\\ 
rpcEvent\\ 
=\\ 
m_DataGenerator\\ .
.\\. /
GenerateRpcEvent\\/ ?
(\\? @

connection\\@ J
)\\J K
.\\K L
First\\L Q
(\\Q R
)\\R S
;\\S T
	m_Tracker]] 
.]] 
TrackRpcSent]] &
(]]& '
rpcEvent]]' /
)]]/ 0
;]]0 1
	m_Tracker^^ 
.^^ #
TrackTransportBytesSent^^ 1
(^^1 2
rpcEvent^^2 :
.^^: ;

BytesCount^^; E
)^^E F
;^^F G
}__ 
)__ 
;__ 
m_Trendsaa 
.aa 
RpcEventsReceivedaa &
.aa& '
Repeataa' -
(aa- .
m_Randomaa. 6
,aa6 7
(aa8 9
)aa9 :
=>aa; =
{bb 
varcc 
rpcEventcc 
=cc 
m_DataGeneratorcc .
.cc. /
GenerateRpcEventcc/ ?
(cc? @

connectioncc@ J
)ccJ K
.ccK L
FirstccL Q
(ccQ R
)ccR S
;ccS T
	m_Trackerdd 
.dd 
TrackRpcReceiveddd *
(dd* +
rpcEventdd+ 3
)dd3 4
;dd4 5
	m_Trackeree 
.ee '
TrackTransportBytesReceivedee 5
(ee5 6
rpcEventee6 >
.ee> ?

BytesCountee? I
)eeI J
;eeJ K
}ff 
)ff 
;ff 
m_Trendshh 
.hh 
ServerLogEventsSenthh (
.hh( )
Repeathh) /
(hh/ 0
m_Randomhh0 8
,hh8 9
(hh: ;
)hh; <
=>hh= ?
{ii 
varjj 
serverLogEventjj "
=jj# $
m_DataGeneratorjj% 4
.jj4 5"
GenerateServerLogEventjj5 K
(jjK L

connectionjjL V
)jjV W
.jjW X
FirstjjX ]
(jj] ^
)jj^ _
;jj_ `
	m_Trackerkk 
.kk 
TrackServerLogSentkk ,
(kk, -
serverLogEventkk- ;
)kk; <
;kk< =
	m_Trackerll 
.ll #
TrackTransportBytesSentll 1
(ll1 2
serverLogEventll2 @
.ll@ A

BytesCountllA K
)llK L
;llL M
}mm 
)mm 
;mm 
m_Trendsoo 
.oo 
SceneEventsSentoo $
.oo$ %
Repeatoo% +
(oo+ ,
m_Randomoo, 4
,oo4 5
(oo6 7
)oo7 8
=>oo9 ;
{pp 
varqq 

sceneEventqq 
=qq  
m_DataGeneratorqq! 0
.qq0 1
GenerateSceneEventqq1 C
(qqC D
$strqqD I
,qqI J

connectionqqK U
)qqU V
.qqV W
FirstqqW \
(qq\ ]
)qq] ^
;qq^ _
	m_Trackerrr 
.rr 
TrackSceneEventSentrr -
(rr- .

sceneEventrr. 8
)rr8 9
;rr9 :
	m_Trackerss 
.ss #
TrackTransportBytesSentss 1
(ss1 2

sceneEventss2 <
.ss< =

BytesCountss= G
)ssG H
;ssH I
}tt 
)tt 
;tt 
m_Trendsvv 
.vv 
SceneEventsReceivedvv (
.vv( )
Repeatvv) /
(vv/ 0
m_Randomvv0 8
,vv8 9
(vv: ;
)vv; <
=>vv= ?
{ww 
varxx 

sceneEventxx 
=xx  
m_DataGeneratorxx! 0
.xx0 1
GenerateSceneEventxx1 C
(xxC D
$strxxD I
,xxI J

connectionxxK U
)xxU V
.xxV W
FirstxxW \
(xx\ ]
)xx] ^
;xx^ _
	m_Trackeryy 
.yy #
TrackSceneEventReceivedyy 1
(yy1 2

sceneEventyy2 <
)yy< =
;yy= >
	m_Trackerzz 
.zz '
TrackTransportBytesReceivedzz 5
(zz5 6

sceneEventzz6 @
.zz@ A

BytesCountzzA K
)zzK L
;zzL M
}{{ 
){{ 
;{{ 
	m_Tracker}} 
.}} 
TrackPacketSent}} %
(}}% &
m_Trends}}& .
.}}. /
PacketSentCount}}/ >
.}}> ?
NextInt}}? F
(}}F G
m_Random}}G O
)}}O P
)}}P Q
;}}Q R
	m_Tracker~~ 
.~~ 
TrackPacketReceived~~ )
(~~) *
m_Trends~~* 2
.~~2 3
PacketReceivedCount~~3 F
.~~F G
NextInt~~G N
(~~N O
m_Random~~O W
)~~W X
)~~X Y
;~~Y Z
	m_Tracker 
. 
TrackRttToServer &
(& '
m_Trends' /
./ 0
RttToServer0 ;
.; <
NextInt< C
(C D
m_RandomD L
)L M
)M N
;N O
	m_Tracker
€€ 
.
€€ '
UpdateNetworkObjectsCount
€€ /
(
€€/ 0
m_Trends
€€0 8
.
€€8 9!
NetworkObjectsCount
€€9 L
.
€€L M
NextInt
€€M T
(
€€T U
m_Random
€€U ]
)
€€] ^
)
€€^ _
;
€€_ `
	m_Tracker
 
.
 $
UpdateConnectionsCount
 ,
(
, -
m_Trends
- 5
.
5 6
ConnectionsCount
6 F
.
F G
NextInt
G N
(
N O
m_Random
O W
)
W X
)
X Y
;
Y Z
	m_Tracker
‚‚ 
.
‚‚ 
UpdatePacketLoss
‚‚ &
(
‚‚& '
m_Trends
‚‚' /
.
‚‚/ 0

PacketLoss
‚‚0 :
.
‚‚: ;
	NextFloat
‚‚; D
(
‚‚D E
m_Random
‚‚E M
)
‚‚M N
)
‚‚N O
;
‚‚O P
	m_Tracker
„„ 
.
„„ 

Dispatcher
„„  
.
„„  !
Dispatch
„„! )
(
„„) *
)
„„* +
;
„„+ ,
}
…… 	
public
‡‡ 
void
‡‡ !
DispatchServerFrame
‡‡ '
(
‡‡' (
uint
‡‡( ,
	nbClients
‡‡- 6
=
‡‡7 8
$num
‡‡9 :
)
‡‡: ;
{
ˆˆ 	
	m_Tracker
‰‰ 
.
‰‰ 
SetConnectionId
‰‰ %
(
‰‰% &
DefaultServerId
‰‰& 5
)
‰‰5 6
;
‰‰6 7
var
ŠŠ (
clientAndServerConnections
ŠŠ *
=
ŠŠ+ ,

Enumerable
ŠŠ- 7
.
ŠŠ7 8
Range
ŠŠ8 =
(
ŠŠ= >
$num
ŠŠ> ?
,
ŠŠ? @
(
ŠŠA B
int
ŠŠB E
)
ŠŠE F
	nbClients
ŠŠF O
+
ŠŠP Q
$num
ŠŠR S
)
ŠŠS T
.
‹‹ 
Select
‹‹ 
(
‹‹ 
x
‹‹ 
=>
‹‹ 
new
‹‹  
ConnectionInfo
‹‹! /
(
‹‹/ 0
(
‹‹0 1
ulong
‹‹1 6
)
‹‹6 7
x
‹‹7 8
)
‹‹8 9
)
‹‹9 :
.
ŒŒ 
ToArray
ŒŒ 
(
ŒŒ 
)
ŒŒ 
;
ŒŒ 
m_Trends
 
.
 
NamedMessagesSent
 &
.
& '
Repeat
' -
(
- .
m_Random
. 6
,
6 7
(
8 9
)
9 :
=>
; =
{
 
var
  
namedMessageEvents
 &
=
' (
m_DataGenerator
) 8
.
8 9'
GenerateNamedMessageEvent
9 R
(
R S(
clientAndServerConnections
S m
)
m n
;
n o
foreach
‘‘ 
(
‘‘ 
var
‘‘ 
namedMessageEvent
‘‘ .
in
‘‘/ 1 
namedMessageEvents
‘‘2 D
)
‘‘D E
{
’’ 
	m_Tracker
““ 
.
““ #
TrackNamedMessageSent
““ 3
(
““3 4
namedMessageEvent
““4 E
)
““E F
;
““F G
	m_Tracker
”” 
.
”” %
TrackTransportBytesSent
”” 5
(
””5 6
namedMessageEvent
””6 G
.
””G H

BytesCount
””H R
)
””R S
;
””S T
}
•• 
}
–– 
)
–– 
;
–– 
m_Trends
˜˜ 
.
˜˜ #
NamedMessagesReceived
˜˜ *
.
˜˜* +
Repeat
˜˜+ 1
(
˜˜1 2
m_Random
˜˜2 :
,
˜˜: ;
(
˜˜< =
)
˜˜= >
=>
˜˜? A
{
™™ 
var
šš  
namedMessageEvents
šš &
=
šš' (
m_DataGenerator
šš) 8
.
šš8 9'
GenerateNamedMessageEvent
šš9 R
(
ššR S(
clientAndServerConnections
ššS m
)
ššm n
;
ššn o
foreach
›› 
(
›› 
var
›› 
namedMessageEvent
›› .
in
››/ 1 
namedMessageEvents
››2 D
)
››D E
{
œœ 
	m_Tracker
 
.
 '
TrackNamedMessageReceived
 7
(
7 8
namedMessageEvent
8 I
)
I J
;
J K
	m_Tracker
 
.
 )
TrackTransportBytesReceived
 9
(
9 :
namedMessageEvent
: K
.
K L

BytesCount
L V
)
V W
;
W X
}
ŸŸ 
}
   
)
   
;
   
m_Trends
¢¢ 
.
¢¢ !
UnnamedMessagesSent
¢¢ (
.
¢¢( )
Repeat
¢¢) /
(
¢¢/ 0
m_Random
¢¢0 8
,
¢¢8 9
(
¢¢: ;
)
¢¢; <
=>
¢¢= ?
{
££ 
var
¤¤ "
unnamedMessageEvents
¤¤ (
=
¤¤) *
m_DataGenerator
¤¤+ :
.
¤¤: ;)
GenerateUnnamedMessageEvent
¤¤; V
(
¤¤V W(
clientAndServerConnections
¤¤W q
)
¤¤q r
;
¤¤r s
foreach
¥¥ 
(
¥¥ 
var
¥¥ !
unnamedMessageEvent
¥¥ 0
in
¥¥1 3"
unnamedMessageEvents
¥¥4 H
)
¥¥H I
{
¦¦ 
	m_Tracker
§§ 
.
§§ %
TrackUnnamedMessageSent
§§ 5
(
§§5 6!
unnamedMessageEvent
§§6 I
)
§§I J
;
§§J K
	m_Tracker
¨¨ 
.
¨¨ %
TrackTransportBytesSent
¨¨ 5
(
¨¨5 6!
unnamedMessageEvent
¨¨6 I
.
¨¨I J

BytesCount
¨¨J T
)
¨¨T U
;
¨¨U V
}
©© 
}
ªª 
)
ªª 
;
ªª 
m_Trends
¬¬ 
.
¬¬ %
UnnamedMessagesReceived
¬¬ ,
.
¬¬, -
Repeat
¬¬- 3
(
¬¬3 4
m_Random
¬¬4 <
,
¬¬< =
(
¬¬> ?
)
¬¬? @
=>
¬¬A C
{
­­ 
var
®® "
unnamedMessageEvents
®® (
=
®®) *
m_DataGenerator
®®+ :
.
®®: ;)
GenerateUnnamedMessageEvent
®®; V
(
®®V W(
clientAndServerConnections
®®W q
)
®®q r
;
®®r s
foreach
¯¯ 
(
¯¯ 
var
¯¯ !
unnamedMessageEvent
¯¯ 0
in
¯¯1 3"
unnamedMessageEvents
¯¯4 H
)
¯¯H I
{
°° 
	m_Tracker
±± 
.
±± )
TrackUnnamedMessageReceived
±± 9
(
±±9 :!
unnamedMessageEvent
±±: M
)
±±M N
;
±±N O
	m_Tracker
²² 
.
²² )
TrackTransportBytesReceived
²² 9
(
²²9 :!
unnamedMessageEvent
²²: M
.
²²M N

BytesCount
²²N X
)
²²X Y
;
²²Y Z
}
³³ 
}
´´ 
)
´´ 
;
´´ 
m_Trends
¶¶ 
.
¶¶ '
NetworkVariableDeltasSent
¶¶ .
.
¶¶. /
Repeat
¶¶/ 5
(
¶¶5 6
m_Random
¶¶6 >
,
¶¶> ?
(
¶¶@ A
)
¶¶A B
=>
¶¶C E
{
·· 
var
¸¸ #
networkVariableEvents
¸¸ )
=
¸¸* +
m_DataGenerator
¸¸, ;
.
¸¸; <*
GenerateNetworkVariableEvent
¸¸< X
(
¸¸X Y(
clientAndServerConnections
¸¸Y s
)
¸¸s t
;
¸¸t u
foreach
¹¹ 
(
¹¹ 
var
¹¹ "
networkVariableEvent
¹¹ 1
in
¹¹2 4#
networkVariableEvents
¹¹5 J
)
¹¹J K
{
ºº 
	m_Tracker
»» 
.
»» +
TrackNetworkVariableDeltaSent
»» ;
(
»»; <"
networkVariableEvent
»»< P
)
»»P Q
;
»»Q R
	m_Tracker
¼¼ 
.
¼¼ %
TrackTransportBytesSent
¼¼ 5
(
¼¼5 6"
networkVariableEvent
¼¼6 J
.
¼¼J K

BytesCount
¼¼K U
)
¼¼U V
;
¼¼V W
}
½½ 
}
¾¾ 
)
¾¾ 
;
¾¾ 
m_Trends
ÀÀ 
.
ÀÀ '
OwnershipChangeEventsSent
ÀÀ .
.
ÀÀ. /
Repeat
ÀÀ/ 5
(
ÀÀ5 6
m_Random
ÀÀ6 >
,
ÀÀ> ?
(
ÀÀ@ A
)
ÀÀA B
=>
ÀÀC E
{
ÁÁ 
var
ÂÂ #
ownershipChangeEvents
ÂÂ )
=
ÂÂ* +
m_DataGenerator
ÂÂ, ;
.
ÂÂ; <*
GenerateOwnershipChangeEvent
ÂÂ< X
(
ÂÂX Y(
clientAndServerConnections
ÂÂY s
)
ÂÂs t
;
ÂÂt u
foreach
ÃÃ 
(
ÃÃ 
var
ÃÃ "
ownershipChangeEvent
ÃÃ 1
in
ÃÃ2 4#
ownershipChangeEvents
ÃÃ5 J
)
ÃÃJ K
{
ÄÄ 
	m_Tracker
ÅÅ 
.
ÅÅ &
TrackOwnershipChangeSent
ÅÅ 6
(
ÅÅ6 7"
ownershipChangeEvent
ÅÅ7 K
)
ÅÅK L
;
ÅÅL M
	m_Tracker
ÆÆ 
.
ÆÆ %
TrackTransportBytesSent
ÆÆ 5
(
ÆÆ5 6"
ownershipChangeEvent
ÆÆ6 J
.
ÆÆJ K

BytesCount
ÆÆK U
)
ÆÆU V
;
ÆÆV W
}
ÇÇ 
}
ÈÈ 
)
ÈÈ 
;
ÈÈ 
m_Trends
ÊÊ 
.
ÊÊ #
ObjectSpawnEventsSent
ÊÊ *
.
ÊÊ* +
Repeat
ÊÊ+ 1
(
ÊÊ1 2
m_Random
ÊÊ2 :
,
ÊÊ: ;
(
ÊÊ< =
)
ÊÊ= >
=>
ÊÊ? A
{
ËË 
var
ÌÌ 
objectSpawnEvents
ÌÌ %
=
ÌÌ& '
m_DataGenerator
ÌÌ( 7
.
ÌÌ7 8(
GenerateObjectSpawnedEvent
ÌÌ8 R
(
ÌÌR S(
clientAndServerConnections
ÌÌS m
)
ÌÌm n
;
ÌÌn o
foreach
ÍÍ 
(
ÍÍ 
var
ÍÍ 
objectSpawnEvent
ÍÍ -
in
ÍÍ. 0
objectSpawnEvents
ÍÍ1 B
)
ÍÍB C
{
ÎÎ 
	m_Tracker
ÏÏ 
.
ÏÏ "
TrackObjectSpawnSent
ÏÏ 2
(
ÏÏ2 3
objectSpawnEvent
ÏÏ3 C
)
ÏÏC D
;
ÏÏD E
	m_Tracker
ĞĞ 
.
ĞĞ %
TrackTransportBytesSent
ĞĞ 5
(
ĞĞ5 6
objectSpawnEvent
ĞĞ6 F
.
ĞĞF G

BytesCount
ĞĞG Q
)
ĞĞQ R
;
ĞĞR S
}
ÑÑ 
}
ÒÒ 
)
ÒÒ 
;
ÒÒ 
m_Trends
ÔÔ 
.
ÔÔ '
ObjectDestroyedEventsSent
ÔÔ .
.
ÔÔ. /
Repeat
ÔÔ/ 5
(
ÔÔ5 6
m_Random
ÔÔ6 >
,
ÔÔ> ?
(
ÔÔ@ A
)
ÔÔA B
=>
ÔÔC E
{
ÕÕ 
var
ÖÖ !
objectDestroyEvents
ÖÖ '
=
ÖÖ( )
m_DataGenerator
ÖÖ* 9
.
ÖÖ9 :*
GenerateObjectDestroyedEvent
ÖÖ: V
(
ÖÖV W(
clientAndServerConnections
ÖÖW q
)
ÖÖq r
;
ÖÖr s
foreach
×× 
(
×× 
var
××  
objectDestroyEvent
×× /
in
××0 2!
objectDestroyEvents
××3 F
)
××F G
{
ØØ 
	m_Tracker
ÙÙ 
.
ÙÙ $
TrackObjectDestroySent
ÙÙ 4
(
ÙÙ4 5 
objectDestroyEvent
ÙÙ5 G
)
ÙÙG H
;
ÙÙH I
	m_Tracker
ÚÚ 
.
ÚÚ %
TrackTransportBytesSent
ÚÚ 5
(
ÚÚ5 6 
objectDestroyEvent
ÚÚ6 H
.
ÚÚH I

BytesCount
ÚÚI S
)
ÚÚS T
;
ÚÚT U
}
ÛÛ 
}
ÜÜ 
)
ÜÜ 
;
ÜÜ 
m_Trends
ŞŞ 
.
ŞŞ 
RpcEventsSent
ŞŞ "
.
ŞŞ" #
Repeat
ŞŞ# )
(
ŞŞ) *
m_Random
ŞŞ* 2
,
ŞŞ2 3
(
ŞŞ4 5
)
ŞŞ5 6
=>
ŞŞ7 9
{
ßß 
var
àà 
	rpcEvents
àà 
=
àà 
m_DataGenerator
àà  /
.
àà/ 0
GenerateRpcEvent
àà0 @
(
àà@ A(
clientAndServerConnections
ààA [
)
àà[ \
;
àà\ ]
foreach
áá 
(
áá 
var
áá 
rpcEvent
áá %
in
áá& (
	rpcEvents
áá) 2
)
áá2 3
{
ââ 
	m_Tracker
ãã 
.
ãã 
TrackRpcSent
ãã *
(
ãã* +
rpcEvent
ãã+ 3
)
ãã3 4
;
ãã4 5
	m_Tracker
ää 
.
ää %
TrackTransportBytesSent
ää 5
(
ää5 6
rpcEvent
ää6 >
.
ää> ?

BytesCount
ää? I
)
ääI J
;
ääJ K
}
åå 
}
ææ 
)
ææ 
;
ææ 
m_Trends
èè 
.
èè 
RpcEventsReceived
èè &
.
èè& '
Repeat
èè' -
(
èè- .
m_Random
èè. 6
,
èè6 7
(
èè8 9
)
èè9 :
=>
èè; =
{
éé 
var
êê 
	rpcEvents
êê 
=
êê 
m_DataGenerator
êê  /
.
êê/ 0
GenerateRpcEvent
êê0 @
(
êê@ A(
clientAndServerConnections
êêA [
)
êê[ \
;
êê\ ]
foreach
ëë 
(
ëë 
var
ëë 
rpcEvent
ëë %
in
ëë& (
	rpcEvents
ëë) 2
)
ëë2 3
{
ìì 
	m_Tracker
íí 
.
íí 
TrackRpcReceived
íí .
(
íí. /
rpcEvent
íí/ 7
)
íí7 8
;
íí8 9
	m_Tracker
îî 
.
îî )
TrackTransportBytesReceived
îî 9
(
îî9 :
rpcEvent
îî: B
.
îîB C

BytesCount
îîC M
)
îîM N
;
îîN O
}
ïï 
}
ğğ 
)
ğğ 
;
ğğ 
m_Trends
òò 
.
òò %
ServerLogEventsReceived
òò ,
.
òò, -
Repeat
òò- 3
(
òò3 4
m_Random
òò4 <
,
òò< =
(
òò> ?
)
òò? @
=>
òòA C
{
óó 
var
ôô 
serverLogEvents
ôô #
=
ôô$ %
m_DataGenerator
ôô& 5
.
ôô5 6$
GenerateServerLogEvent
ôô6 L
(
ôôL M(
clientAndServerConnections
ôôM g
)
ôôg h
;
ôôh i
foreach
õõ 
(
õõ 
var
õõ 
serverLogEvent
õõ +
in
õõ, .
serverLogEvents
õõ/ >
)
õõ> ?
{
öö 
	m_Tracker
÷÷ 
.
÷÷ $
TrackServerLogReceived
÷÷ 4
(
÷÷4 5
serverLogEvent
÷÷5 C
)
÷÷C D
;
÷÷D E
	m_Tracker
øø 
.
øø )
TrackTransportBytesReceived
øø 9
(
øø9 :
serverLogEvent
øø: H
.
øøH I

BytesCount
øøI S
)
øøS T
;
øøT U
}
ùù 
}
úú 
)
úú 
;
úú 
m_Trends
üü 
.
üü 
SceneEventsSent
üü $
.
üü$ %
Repeat
üü% +
(
üü+ ,
m_Random
üü, 4
,
üü4 5
(
üü6 7
)
üü7 8
=>
üü9 ;
{
ıı 
var
şş 
sceneEvents
şş 
=
şş  !
m_DataGenerator
şş" 1
.
şş1 2 
GenerateSceneEvent
şş2 D
(
şşD E
$str
şşE J
,
şşJ K(
clientAndServerConnections
şşL f
)
şşf g
;
şşg h
foreach
ÿÿ 
(
ÿÿ 
var
ÿÿ 

sceneEvent
ÿÿ '
in
ÿÿ( *
sceneEvents
ÿÿ+ 6
)
ÿÿ6 7
{
€€ 
	m_Tracker
 
.
 !
TrackSceneEventSent
 1
(
1 2

sceneEvent
2 <
)
< =
;
= >
	m_Tracker
‚‚ 
.
‚‚ %
TrackTransportBytesSent
‚‚ 5
(
‚‚5 6

sceneEvent
‚‚6 @
.
‚‚@ A

BytesCount
‚‚A K
)
‚‚K L
;
‚‚L M
}
ƒƒ 
}
„„ 
)
„„ 
;
„„ 
m_Trends
†† 
.
†† !
SceneEventsReceived
†† (
.
††( )
Repeat
††) /
(
††/ 0
m_Random
††0 8
,
††8 9
(
††: ;
)
††; <
=>
††= ?
{
‡‡ 
var
ˆˆ 
sceneEvents
ˆˆ 
=
ˆˆ  !
m_DataGenerator
ˆˆ" 1
.
ˆˆ1 2 
GenerateSceneEvent
ˆˆ2 D
(
ˆˆD E
$str
ˆˆE J
,
ˆˆJ K(
clientAndServerConnections
ˆˆL f
)
ˆˆf g
;
ˆˆg h
foreach
‰‰ 
(
‰‰ 
var
‰‰ 

sceneEvent
‰‰ '
in
‰‰( *
sceneEvents
‰‰+ 6
)
‰‰6 7
{
ŠŠ 
	m_Tracker
‹‹ 
.
‹‹ %
TrackSceneEventReceived
‹‹ 5
(
‹‹5 6

sceneEvent
‹‹6 @
)
‹‹@ A
;
‹‹A B
	m_Tracker
ŒŒ 
.
ŒŒ )
TrackTransportBytesReceived
ŒŒ 9
(
ŒŒ9 :

sceneEvent
ŒŒ: D
.
ŒŒD E

BytesCount
ŒŒE O
)
ŒŒO P
;
ŒŒP Q
}
 
}
 
)
 
;
 
	m_Tracker
 
.
 
TrackPacketSent
 %
(
% &
m_Trends
& .
.
. /
PacketSentCount
/ >
.
> ?
NextInt
? F
(
F G
m_Random
G O
)
O P
)
P Q
;
Q R
	m_Tracker
‘‘ 
.
‘‘ !
TrackPacketReceived
‘‘ )
(
‘‘) *
m_Trends
‘‘* 2
.
‘‘2 3!
PacketReceivedCount
‘‘3 F
.
‘‘F G
NextInt
‘‘G N
(
‘‘N O
m_Random
‘‘O W
)
‘‘W X
)
‘‘X Y
;
‘‘Y Z
	m_Tracker
’’ 
.
’’ 
TrackRttToServer
’’ &
(
’’& '
m_Trends
’’' /
.
’’/ 0
RttToServer
’’0 ;
.
’’; <
NextInt
’’< C
(
’’C D
m_Random
’’D L
)
’’L M
)
’’M N
;
’’N O
	m_Tracker
““ 
.
““ '
UpdateNetworkObjectsCount
““ /
(
““/ 0
m_Trends
““0 8
.
““8 9!
NetworkObjectsCount
““9 L
.
““L M
NextInt
““M T
(
““T U
m_Random
““U ]
)
““] ^
)
““^ _
;
““_ `
	m_Tracker
”” 
.
”” $
UpdateConnectionsCount
”” ,
(
””, -
m_Trends
””- 5
.
””5 6
ConnectionsCount
””6 F
.
””F G
NextInt
””G N
(
””N O
m_Random
””O W
)
””W X
)
””X Y
;
””Y Z
	m_Tracker
•• 
.
•• 
UpdatePacketLoss
•• &
(
••& '
m_Trends
••' /
.
••/ 0

PacketLoss
••0 :
.
••: ;
	NextFloat
••; D
(
••D E
m_Random
••E M
)
••M N
)
••N O
;
••O P
	m_Tracker
—— 
.
—— 

Dispatcher
——  
.
——  !
Dispatch
——! )
(
——) *
)
——* +
;
——+ ,
}
˜˜ 	
}
™™ 
}šš Ø¶
…C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\Definitions\Verbs.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
TestData" *
.* +
Definitions+ 6
{ 
public 

static 
class 
Verbs 
{ 
public 
static 
readonly 
string %
[% &
]& '
Values( .
=/ 0
{ 	
$str		 
,		 
$str

 
,

 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str   
,   
$str!! 
,!! 
$str"" 
,"" 
$str## 
,## 
$str$$ 
,$$ 
$str%% 
,%% 
$str&& 
,&& 
$str'' 
,'' 
$str(( 
,(( 
$str)) 
,)) 
$str** 
,** 
$str++ 
,++ 
$str,, 
,,, 
$str-- 
,-- 
$str.. 
,.. 
$str// 
,// 
$str00 
,00 
$str11 
,11 
$str22 
,22 
$str33 
,33 
$str44 
,44 
$str55 
,55 
$str66 
,66 
$str77 
,77 
$str88 
,88 
$str99 
,99 
$str:: 
,:: 
$str;; 
,;; 
$str<< 
,<< 
$str== 
,== 
$str>> 
,>> 
$str?? 
,?? 
$str@@ 
,@@ 
$strAA 
,AA 
$strBB 
,BB 
$strCC 
,CC 
$strDD 
,DD 
$strEE 
,EE 
$strFF 
,FF 
$strGG 
,GG 
$strHH 
,HH 
$strII 
,II 
$strJJ 
,JJ 
$strKK 
,KK 
$strLL 
,LL 
$strMM 
,MM 
$strNN 
,NN 
$strOO 
,OO 
$strPP 
,PP 
$strQQ 
,QQ 
$strRR 
,RR 
$strSS 
,SS 
$strTT 
,TT 
$strUU 
,UU 
$strVV 
,VV 
$strWW 
,WW 
$strXX 
,XX 
$strYY 
,YY 
$strZZ 
,ZZ 
$str[[ 
,[[ 
$str\\ 
,\\ 
$str]] 
,]] 
$str^^ 
,^^ 
$str__ 
,__ 
$str`` 
,`` 
$straa 
,aa 
$strbb 
,bb 
$strcc 
,cc 
$strdd 
,dd 
$stree 
,ee 
$strff 
,ff 
$strgg 
,gg 
$strhh 
,hh 
$strii 
,ii 
$strjj 
,jj 
$strkk 
,kk 
$strll 
,ll 
$strmm 
,mm 
$strnn 
,nn 
$stroo 
,oo 
$strpp 
,pp 
$strqq 
,qq 
$strrr 
,rr 
$strss 
,ss 
$strtt 
,tt 
$struu 
,uu 
$strvv 
,vv 
$strww 
,ww 
$strxx 
,xx 
$stryy 
,yy 
$strzz 
,zz 
$str{{ 
,{{ 
$str|| 
,|| 
$str}} 
,}} 
$str~~ 
,~~ 
$str 
, 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
}
üü 	
;
üü	 

}
ıı 
}şş Ï

„C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\RnsmMetricObserverFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
{ 
internal 
class 
NoOpMetricObserver %
:& '
IMetricObserver( 7
{ 
public 
static 
NoOpMetricObserver (
Instance) 1
{2 3
get4 7
;7 8
}9 :
=; <
new= @
NoOpMetricObserverA S
(S T
)T U
;U V
private 
NoOpMetricObserver "
(" #
)# $
{% &
}& '
public 
void 
Observe 
( 
MetricCollection ,

collection- 7
)7 8
{9 :
}: ;
} 
internal!! 
static!! 
class!! %
RnsmMetricObserverFactory!! 3
{"" 
public## 
static## 
IMetricObserver## %
	Construct##& /
(##/ 0
)##0 1
{$$ 	
return&& 
RnsmMetricObserver&& %
.&&% &
Instance&&& .
;&&. /
}** 	
}++ 
},, §9
†C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\TestDataDefinition.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsReporting" 3
{		 
public 

class 
TestDataDefinition #
{ 
readonly 
IReadOnlyList 
< 
string %
>% &
m_VariableTypes' 6
=7 8
new9 <
[< =
]= >
{? @
$strA H
,H I
$strJ P
,P Q
$strR Y
}Z [
;[ \
readonly 
Random 
m_Random  
;  !
public 
TestDataDefinition !
(! "
int" %
seed& *
)* +
{ 	
m_Random 
= 
new 
Random !
(! "
seed" &
)& '
;' (
} 	
public 
string "
GenerateGameObjectName ,
(, -
)- .
{ 	
return 
$" 
{ 

Capitalize  
(  !
GetRandomValue! /
(/ 0

Adjectives0 :
.: ;
Values; A
)A B
)B C
}C D
$strD E
{E F

CapitalizeF P
(P Q
GetRandomValueQ _
(_ `

Adjectives` j
.j k
Valuesk q
)q r
)r s
}s t
$strt u
{u v

Capitalize	v €
(
€ 
GetRandomValue
 
(
 
Nouns
 •
.
• –
Values
– œ
)
œ 
)
 
}
 Ÿ
"
Ÿ  
;
  ¡
} 	
public 
string !
GenerateComponentName +
(+ ,
), -
{ 	
return 
$" 
{ 

Capitalize  
(  !
GetRandomValue! /
(/ 0
Nouns0 5
.5 6
Values6 <
)< =
)= >
}> ?
{? @

Capitalize@ J
(J K
GetRandomValueK Y
(Y Z
VerbsZ _
._ `
Values` f
)f g
)g h
}h i
$stri r
"r s
;s t
} 	
public   
string    
GenerateVariableName   *
(  * +
)  + ,
{!! 	
return"" 
$""" 
{"" 

Capitalize""  
(""  !
GetRandomValue""! /
(""/ 0
Nouns""0 5
.""5 6
Values""6 <
)""< =
)""= >
}""> ?
{""? @

Capitalize""@ J
(""J K
GetRandomValue""K Y
(""Y Z
Nouns""Z _
.""_ `
Values""` f
)""f g
)""g h
}""h i
{""i j

Capitalize""j t
(""t u
GetRandomValue	""u ƒ
(
""ƒ „
m_VariableTypes
""„ “
)
""“ ”
)
""” •
}
""• –
"
""– —
;
""— ˜
}## 	
public%% 
string%% $
GenerateNamedMessageName%% .
(%%. /
)%%/ 0
{&& 	
return'' 
$"'' 
{'' 

Capitalize''  
(''  !
GetRandomValue''! /
(''/ 0
Verbs''0 5
.''5 6
Values''6 <
)''< =
)''= >
}''> ?
{''? @

Capitalize''@ J
(''J K
GetRandomValue''K Y
(''Y Z
Nouns''Z _
.''_ `
Values''` f
)''f g
)''g h
}''h i
"''i j
;''j k
}(( 	
public** 
string** 
GenerateRpcName** %
(**% &
)**& '
{++ 	
return,, $
GenerateNamedMessageName,, +
(,,+ ,
),,, -
;,,- .
}-- 	
public// 
long// 
GenerateByteCount// %
(//% &
)//& '
{00 	
var22 
magnitudeSelector22 !
=22" #
m_Random22$ ,
.22, -
Next22- 1
(221 2
$num222 3
,223 4
$num225 7
)227 8
;228 9
if33 
(33 
magnitudeSelector33 !
==33" $
$num33% '
)33' (
{44 
return55 
m_Random55 
.55  
Next55  $
(55$ %
$num55% ,
,55, -
$num55. 5
)555 6
;556 7
}66 
if88 
(88 
magnitudeSelector88 !
>88" #
$num88$ %
)88% &
{99 
return:: 
m_Random:: 
.::  
Next::  $
(::$ %
$num::% )
,::) *
$num::+ 1
)::1 2
;::2 3
};; 
return== 
m_Random== 
.== 
Next==  
(==  !
$num==! "
,==" #
$num==$ '
)==' (
;==( )
}>> 	
publicAA 
stringAA 
GenerateSceneNameAA '
(AA' (
)AA( )
{BB 	
returnCC 
$"CC 
{CC 

CapitalizeCC  
(CC  !
GetRandomValueCC! /
(CC/ 0

AdjectivesCC0 :
.CC: ;
ValuesCC; A
)CCA B
)CCB C
}CCC D
{CCD E

CapitalizeCCE O
(CCO P
GetRandomValueCCP ^
(CC^ _

AdjectivesCC_ i
.CCi j
ValuesCCj p
)CCp q
)CCq r
}CCr s
$strCCs x
"CCx y
;CCy z
}DD 	
stringFF 
GetRandomValueFF 
(FF 
IReadOnlyListFF +
<FF+ ,
stringFF, 2
>FF2 3

collectionFF4 >
)FF> ?
{GG 	
returnHH 
!HH 

collectionHH 
.HH 
AnyHH "
(HH" #
)HH# $
?II 
stringII 
.II 
EmptyII 
:JJ 

collectionJJ 
[JJ 
m_RandomJJ %
.JJ% &
NextJJ& *
(JJ* +
$numJJ+ ,
,JJ, -

collectionJJ. 8
.JJ8 9
CountJJ9 >
)JJ> ?
]JJ? @
;JJ@ A
}KK 	
staticMM 
stringMM 

CapitalizeMM  
(MM  !
stringMM! '
inputMM( -
)MM- .
{NN 	
returnOO 
stringOO 
.OO 
IsNullOrEmptyOO '
(OO' (
inputOO( -
)OO- .
?PP 
stringPP 
.PP 
EmptyPP 
:QQ 
$"QQ 
{QQ 
charQQ 
.QQ 
ToUpperQQ !
(QQ! "
inputQQ" '
[QQ' (
$numQQ( )
]QQ) *
)QQ* +
}QQ+ ,
{QQ, -
inputQQ- 2
.QQ2 3
	SubstringQQ3 <
(QQ< =
$numQQ= >
)QQ> ?
}QQ? @
"QQ@ A
;QQA B
}RR 	
}SS 
}TT ¬
wC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\AssemblyInfo.cs
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
$str P
)P Q
]Q R
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str \
)\ ]
]] ^™ğ
…C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\Definitions\Nouns.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
TestData" *
.* +
Definitions+ 6
{ 
public 

static 
class 
Nouns 
{ 
public 
static 
readonly 
string %
[% &
]& '
Values( .
=/ 0
{ 	
$str		 
,		 
$str

 
,

 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str   
,   
$str!! 
,!! 
$str"" 
,"" 
$str## 
,## 
$str$$ 
,$$ 
$str%% 
,%% 
$str&& 
,&& 
$str'' 
,'' 
$str(( 
,(( 
$str)) 
,)) 
$str** 
,** 
$str++ 
,++ 
$str,, 
,,, 
$str-- 
,-- 
$str.. 
,.. 
$str// 
,// 
$str00 
,00 
$str11 
,11 
$str22 
,22 
$str33 
,33 
$str44 
,44 
$str55 
,55 
$str66 
,66 
$str77 
,77 
$str88 
,88 
$str99 
,99 
$str:: 
,:: 
$str;; 
,;; 
$str<< 
,<< 
$str== 
,== 
$str>> 
,>> 
$str?? 
,?? 
$str@@ 
,@@ 
$strAA 
,AA 
$strBB 
,BB 
$strCC 
,CC 
$strDD 
,DD 
$strEE 
,EE 
$strFF 
,FF 
$strGG 
,GG 
$strHH 
,HH 
$strII 
,II 
$strJJ 
,JJ 
$strKK 
,KK 
$strLL 
,LL 
$strMM 
,MM 
$strNN 
,NN 
$strOO 
,OO 
$strPP 
,PP 
$strQQ 
,QQ 
$strRR 
,RR 
$strSS 
,SS 
$strTT 
,TT 
$strUU 
,UU 
$strVV 
,VV 
$strWW 
,WW 
$strXX 
,XX 
$strYY 
,YY 
$strZZ 
,ZZ 
$str[[ 
,[[ 
$str\\ 
,\\ 
$str]] 
,]] 
$str^^ 
,^^ 
$str__ 
,__ 
$str`` 
,`` 
$straa 
,aa 
$strbb 
,bb 
$strcc 
,cc 
$strdd 
,dd 
$stree 
,ee 
$strff 
,ff 
$strgg 
,gg 
$strhh 
,hh 
$strii 
,ii 
$strjj 
,jj 
$strkk 
,kk 
$strll 
,ll 
$strmm 
,mm 
$strnn 
,nn 
$stroo 
,oo 
$strpp 
,pp 
$strqq 
,qq 
$strrr 
,rr 
$strss 
,ss 
$strtt 
,tt 
$struu 
,uu 
$strvv 
,vv 
$strww 
,ww 
$strxx 
,xx 
$stryy 
,yy 
$strzz 
,zz 
$str{{ 
,{{ 
$str|| 
,|| 
$str}} 
,}} 
$str~~ 
,~~ 
$str 
, 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘  
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ  
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë  
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€	€	 
,
€	€	 
$str
		 
,
		 
$str
‚	‚	 
,
‚	‚	 
$str
ƒ	ƒ	 
,
ƒ	ƒ	 
$str
„	„	 
,
„	„	 
$str
…	…	 
,
…	…	 
$str
†	†	 
,
†	†	 
$str
‡	‡	 
,
‡	‡	 
$str
ˆ	ˆ	 
,
ˆ	ˆ	 
$str
‰	‰	 
,
‰	‰	 
$str
Š	Š	 
,
Š	Š	 
$str
‹	‹	 
,
‹	‹	 
$str
Œ	Œ	 
,
Œ	Œ	 
$str
		 
,
		 
$str
		 
,
		 
$str
		 
,
		 
$str
		 
,
		 
$str
‘	‘	 
,
‘	‘	 
$str
’	’	 
,
’	’	 
$str
“	“	 
,
“	“	 
$str
”	”	 
,
”	”	 
$str
•	•	 
,
•	•	 
$str
–	–	 
,
–	–	 
$str
—	—	 
,
—	—	 
$str
˜	˜	 
,
˜	˜	 
$str
™	™	 
,
™	™	 
$str
š	š	 
,
š	š	 
$str
›	›	 
,
›	›	 
$str
œ	œ	 
,
œ	œ	 
$str
		 
,
		 
$str
		 
,
		 
$str
Ÿ	Ÿ	 
,
Ÿ	Ÿ	 
$str
 	 	 
,
 	 	 
$str
¡	¡	 
,
¡	¡	 
$str
¢	¢	 
,
¢	¢	 
$str
£	£	 
,
£	£	 
$str
¤	¤	 
,
¤	¤	 
$str
¥	¥	 
,
¥	¥	 
$str
¦	¦	 
,
¦	¦	 
$str
§	§	 
,
§	§	 
$str
¨	¨	 
,
¨	¨	 
$str
©	©	 
,
©	©	 
$str
ª	ª	 
,
ª	ª	 
$str
«	«	 
,
«	«	 
$str
¬	¬	 
,
¬	¬	 
$str
­	­	 
,
­	­	 
$str
®	®	 
,
®	®	 
$str
¯	¯	 
,
¯	¯	 
$str
°	°	 
,
°	°	 
$str
±	±	 
,
±	±	 
$str
²	²	 
,
²	²	 
$str
³	³	 
,
³	³	 
$str
´	´	 
,
´	´	 
$str
µ	µ	 
,
µ	µ	 
$str
¶	¶	 
,
¶	¶	 
$str
·	·	 
,
·	·	 
$str
¸	¸	 
,
¸	¸	 
$str
¹	¹	 
,
¹	¹	 
$str
º	º	 
,
º	º	 
$str
»	»	 
,
»	»	 
$str
¼	¼	 
,
¼	¼	 
$str
½	½	 
,
½	½	 
$str
¾	¾	 
,
¾	¾	 
$str
¿	¿	 
,
¿	¿	 
$str
À	À	 
,
À	À	 
$str
Á	Á	 
,
Á	Á	 
$str
Â	Â	 
,
Â	Â	 
$str
Ã	Ã	 
,
Ã	Ã	 
$str
Ä	Ä	 
,
Ä	Ä	 
$str
Å	Å	 
,
Å	Å	 
$str
Æ	Æ	 
,
Æ	Æ	 
$str
Ç	Ç	 
,
Ç	Ç	 
$str
È	È	 
,
È	È	 
$str
É	É	 
,
É	É	 
$str
Ê	Ê	 
,
Ê	Ê	 
$str
Ë	Ë	 
,
Ë	Ë	 
$str
Ì	Ì	 
,
Ì	Ì	 
$str
Í	Í	 
,
Í	Í	 
$str
Î	Î	 
,
Î	Î	 
$str
Ï	Ï	 
,
Ï	Ï	 
$str
Ğ	Ğ	 
,
Ğ	Ğ	 
$str
Ñ	Ñ	 
,
Ñ	Ñ	 
$str
Ò	Ò	 
,
Ò	Ò	 
$str
Ó	Ó	 
,
Ó	Ó	 
$str
Ô	Ô	 
,
Ô	Ô	 
$str
Õ	Õ	 
,
Õ	Õ	 
$str
Ö	Ö	 
,
Ö	Ö	 
$str
×	×	 
,
×	×	 
$str
Ø	Ø	 
,
Ø	Ø	 
$str
Ù	Ù	 
,
Ù	Ù	 
$str
Ú	Ú	 
,
Ú	Ú	 
$str
Û	Û	 
,
Û	Û	 
$str
Ü	Ü	 
,
Ü	Ü	 
$str
İ	İ	 
,
İ	İ	 
$str
Ş	Ş	 
,
Ş	Ş	 
$str
ß	ß	 
,
ß	ß	 
$str
à	à	 
,
à	à	 
$str
á	á	 
,
á	á	 
$str
â	â	 
,
â	â	 
$str
ã	ã	 
,
ã	ã	 
$str
ä	ä	 
,
ä	ä	 
$str
å	å	 
,
å	å	 
$str
æ	æ	 
,
æ	æ	 
$str
ç	ç	 
,
ç	ç	 
$str
è	è	 
,
è	è	 
$str
é	é	 
,
é	é	 
$str
ê	ê	 
,
ê	ê	 
$str
ë	ë	 
,
ë	ë	 
$str
ì	ì	 
,
ì	ì	 
$str
í	í	 
,
í	í	 
$str
î	î	 
,
î	î	 
$str
ï	ï	 
,
ï	ï	 
$str
ğ	ğ	 
,
ğ	ğ	 
$str
ñ	ñ	 
,
ñ	ñ	 
$str
ò	ò	 
,
ò	ò	 
$str
ó	ó	 
,
ó	ó	 
$str
ô	ô	 
,
ô	ô	 
$str
õ	õ	 
,
õ	õ	 
$str
ö	ö	 
,
ö	ö	 
$str
÷	÷	 
,
÷	÷	 
$str
ø	ø	 
,
ø	ø	 
$str
ù	ù	 
,
ù	ù	 
$str
ú	ú	 
,
ú	ú	 
$str
û	û	 
,
û	û	 
$str
ü	ü	 
,
ü	ü	 
$str
ı	ı	 
,
ı	ı	 
$str
ş	ş	 
,
ş	ş	 
$str
ÿ	ÿ	 
,
ÿ	ÿ	 
$str
€
€
 
,
€
€
 
$str


 
,


 
$str
‚
‚
 
,
‚
‚
 
$str
ƒ
ƒ
 
,
ƒ
ƒ
 
$str
„
„
 
,
„
„
 
$str
…
…
 
,
…
…
 
$str
†
†
 
,
†
†
 
$str
‡
‡
 
,
‡
‡
 
$str
ˆ
ˆ
 
,
ˆ
ˆ
 
$str
‰
‰
 
,
‰
‰
 
$str
Š
Š
 
,
Š
Š
 
$str
‹
‹
 
,
‹
‹
 
$str
Œ
Œ
 
,
Œ
Œ
 
$str


 
,


 
$str


 
,


 
$str


 
,


 
$str


 
,


 
$str
‘
‘
 
,
‘
‘
 
$str
’
’
 
,
’
’
 
$str
“
“
 
,
“
“
 
$str
”
”
 
,
”
”
 
$str
•
•
 
,
•
•
 
$str
–
–
 
,
–
–
 
$str
—
—
 
,
—
—
 
$str
˜
˜
 
,
˜
˜
 
$str
™
™
 
,
™
™
 
$str
š
š
 
,
š
š
 
$str
›
›
 
,
›
›
 
$str
œ
œ
 
,
œ
œ
 
$str


 
,


 
$str


 
,


 
$str
Ÿ
Ÿ
 
,
Ÿ
Ÿ
 
$str
 
 
 
,
 
 
 
$str
¡
¡
 
,
¡
¡
 
$str
¢
¢
 
,
¢
¢
 
$str
£
£
 
,
£
£
 
$str
¤
¤
 
,
¤
¤
 
$str
¥
¥
 
,
¥
¥
 
$str
¦
¦
 
,
¦
¦
 
$str
§
§
 
,
§
§
 
$str
¨
¨
 
,
¨
¨
 
$str
©
©
 
,
©
©
 
$str
ª
ª
 
,
ª
ª
 
$str
«
«
 
,
«
«
 
$str
¬
¬
 
,
¬
¬
 
$str
­
­
 
,
­
­
 
$str
®
®
 
,
®
®
 
$str
¯
¯
 
,
¯
¯
 
$str
°
°
 
,
°
°
 
$str
±
±
 
,
±
±
 
$str
²
²
 
,
²
²
 
$str
³
³
 
,
³
³
 
$str
´
´
 
,
´
´
 
$str
µ
µ
 
,
µ
µ
 
$str
¶
¶
 
,
¶
¶
 
$str
·
·
 
,
·
·
 
$str
¸
¸
 
,
¸
¸
 
$str
¹
¹
 
,
¹
¹
 
$str
º
º
 
,
º
º
 
$str
»
»
 
,
»
»
 
$str
¼
¼
 
,
¼
¼
 
$str
½
½
 
,
½
½
 
$str
¾
¾
 
,
¾
¾
 
$str
¿
¿
 
,
¿
¿
 
$str
À
À
 
,
À
À
 
$str
Á
Á
 
,
Á
Á
 
$str
Â
Â
 
,
Â
Â
 
$str
Ã
Ã
 
,
Ã
Ã
 
$str
Ä
Ä
 
,
Ä
Ä
 
$str
Å
Å
 
,
Å
Å
 
$str
Æ
Æ
 
,
Æ
Æ
 
$str
Ç
Ç
 
,
Ç
Ç
 
$str
È
È
 
,
È
È
 
$str
É
É
 
,
É
É
 
$str
Ê
Ê
 
,
Ê
Ê
 
$str
Ë
Ë
 
,
Ë
Ë
 
$str
Ì
Ì
 
,
Ì
Ì
 
$str
Í
Í
 
,
Í
Í
 
$str
Î
Î
 
,
Î
Î
 
$str
Ï
Ï
 
,
Ï
Ï
 
$str
Ğ
Ğ
 
,
Ğ
Ğ
 
$str
Ñ
Ñ
 
,
Ñ
Ñ
 
$str
Ò
Ò
 
,
Ò
Ò
 
$str
Ó
Ó
 
,
Ó
Ó
 
$str
Ô
Ô
 
,
Ô
Ô
 
$str
Õ
Õ
 
,
Õ
Õ
 
$str
Ö
Ö
 
,
Ö
Ö
 
$str
×
×
 
,
×
×
 
$str
Ø
Ø
 
,
Ø
Ø
 
$str
Ù
Ù
 
,
Ù
Ù
 
$str
Ú
Ú
 
,
Ú
Ú
 
$str
Û
Û
 
,
Û
Û
 
$str
Ü
Ü
 
,
Ü
Ü
 
$str
İ
İ
 
,
İ
İ
 
$str
Ş
Ş
 
,
Ş
Ş
 
$str
ß
ß
 
,
ß
ß
 
$str
à
à
 
,
à
à
 
$str
á
á
 
,
á
á
 
$str
â
â
 
,
â
â
 
$str
ã
ã
 
,
ã
ã
 
$str
ä
ä
 
,
ä
ä
 
$str
å
å
 
,
å
å
 
$str
æ
æ
 
,
æ
æ
 
$str
ç
ç
 
,
ç
ç
 
$str
è
è
 
,
è
è
 
$str
é
é
 
,
é
é
 
$str
ê
ê
 
,
ê
ê
 
$str
ë
ë
 
,
ë
ë
 
$str
ì
ì
 
,
ì
ì
 
$str
í
í
 
,
í
í
 
$str
î
î
 
,
î
î
 
$str
ï
ï
 
,
ï
ï
 
$str
ğ
ğ
 
,
ğ
ğ
 
$str
ñ
ñ
 
,
ñ
ñ
 
$str
ò
ò
 
,
ò
ò
 
$str
ó
ó
 
,
ó
ó
 
$str
ô
ô
 
,
ô
ô
 
$str
õ
õ
 
,
õ
õ
 
$str
ö
ö
 
,
ö
ö
 
$str
÷
÷
 
,
÷
÷
 
$str
ø
ø
 
,
ø
ø
 
$str
ù
ù
 
,
ù
ù
 
$str
ú
ú
 
,
ú
ú
 
$str
û
û
 
,
û
û
 
$str
ü
ü
 
,
ü
ü
 
$str
ı
ı
 
,
ı
ı
 
$str
ş
ş
 
,
ş
ş
 
$str
ÿ
ÿ
 
,
ÿ
ÿ
 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€ €  
,
€ €  
$str
   
,
   
$str
‚ ‚  
,
‚ ‚  
$str
ƒ ƒ  
,
ƒ ƒ  
$str
„ „  
,
„ „  
$str
… …  
,
… …  
$str
† †  
,
† †  
$str
‡ ‡  
,
‡ ‡  
$str
ˆ ˆ  
,
ˆ ˆ  
$str
‰ ‰  
,
‰ ‰  
$str
Š Š  
,
Š Š  
$str
‹ ‹  
,
‹ ‹  
$str
Œ Œ  
,
Œ Œ  
$str
   
,
   
$str
   
,
   
$str
   
,
   
$str
   
,
   
$str
‘ ‘  
,
‘ ‘  
$str
’ ’  
,
’ ’  
$str
“ “  
,
“ “  
$str
” ”  
,
” ”  
$str
• •  
,
• •  
$str
– –  
,
– –  
$str
— —  
,
— —  
$str
˜ ˜  
,
˜ ˜  
$str
™ ™  
,
™ ™  
$str
š š  
,
š š  
$str
› ›  
,
› ›  
$str
œ œ  
,
œ œ  
$str
   
,
   
$str
   
,
   
$str
Ÿ Ÿ  
,
Ÿ Ÿ  
$str
     
,
     
$str
¡ ¡  
,
¡ ¡  
$str
¢ ¢  
,
¢ ¢  
$str
£ £  
,
£ £  
$str
¤ ¤  
,
¤ ¤  
$str
¥ ¥  
,
¥ ¥  
$str
¦ ¦  
,
¦ ¦  
$str
§ §  
,
§ §  
$str
¨ ¨  
,
¨ ¨  
$str
© ©  
,
© ©  
$str
ª ª  
,
ª ª  
$str
« «  
,
« «  
$str
¬ ¬  
,
¬ ¬  
$str
­ ­  
,
­ ­  
$str
® ®  
,
® ®  
$str
¯ ¯  
,
¯ ¯  
$str
° °  
,
° °  
$str
± ±  
,
± ±  
$str
² ²  
,
² ²  
$str
³ ³  
,
³ ³  
$str
´ ´  
,
´ ´  
$str
µ µ  
,
µ µ  
$str
¶ ¶  
,
¶ ¶  
$str
· ·  
,
· ·  
$str
¸ ¸  
,
¸ ¸  
$str
¹ ¹  
,
¹ ¹  
$str
º º  
,
º º  
$str
» »  
,
» »  
$str
¼ ¼  
,
¼ ¼  
$str
½ ½  
,
½ ½  
$str
¾ ¾  
,
¾ ¾  
$str
¿ ¿  
,
¿ ¿  
$str
À À  
,
À À  
$str
Á Á  
,
Á Á  
$str
Â Â  
,
Â Â  
$str
Ã Ã  
,
Ã Ã  
$str
Ä Ä  
,
Ä Ä  
$str
Å Å  
,
Å Å  
$str
Æ Æ  
,
Æ Æ  
$str
Ç Ç  
,
Ç Ç  
$str
È È  
,
È È  
$str
É É  
,
É É  
$str
Ê Ê  
,
Ê Ê  
$str
Ë Ë  
,
Ë Ë  
$str
Ì Ì  
,
Ì Ì  
$str
Í Í  
,
Í Í  
$str
Î Î  
,
Î Î  
$str
Ï Ï  
,
Ï Ï  
$str
Ğ Ğ  
,
Ğ Ğ  
$str
Ñ Ñ  
,
Ñ Ñ  
$str
Ò Ò  
,
Ò Ò  
$str
Ó Ó  
,
Ó Ó  
$str
Ô Ô  
,
Ô Ô  
$str
Õ Õ  
,
Õ Õ  
$str
Ö Ö  
,
Ö Ö  
$str
× ×  
,
× ×  
$str
Ø Ø  
,
Ø Ø  
$str
Ù Ù  
,
Ù Ù  
$str
Ú Ú  
,
Ú Ú  
$str
Û Û  
,
Û Û  
$str
Ü Ü  
,
Ü Ü  
$str
İ İ  
,
İ İ  
$str
Ş Ş  
,
Ş Ş  
$str
ß ß  
,
ß ß  
$str
à à  
,
à à  
$str
á á  
,
á á  
$str
â â  
,
â â  
$str
ã ã  
,
ã ã  
$str
ä ä  
,
ä ä  
$str
å å  
,
å å  
$str
æ æ  
,
æ æ  
$str
ç ç  
,
ç ç  
$str
è è  
,
è è  
$str
é é  
,
é é  
$str
ê ê  
,
ê ê  
$str
ë ë  
,
ë ë  
$str
ì ì  
,
ì ì  
$str
í í  
,
í í  
$str
î î  
,
î î  
$str
ï ï  
,
ï ï  
$str
ğ ğ  
,
ğ ğ  
$str
ñ ñ  
,
ñ ñ  
$str
ò ò  
,
ò ò  
$str
ó ó  
,
ó ó  
$str
ô ô  
,
ô ô  
$str
õ õ  
,
õ õ  
$str
ö ö  
,
ö ö  
$str
÷ ÷  
,
÷ ÷  
$str
ø ø  
,
ø ø  
$str
ù ù  
,
ù ù  
$str
ú ú  
,
ú ú  
$str
û û  
,
û û  
$str
ü ü  
,
ü ü  
$str
ı ı  
,
ı ı  
$str
ş ş  
,
ş ş  
$str
ÿ ÿ  
,
ÿ ÿ  
$str
€!€! 
,
€!€! 
$str
!! 
,
!! 
$str
‚!‚! 
,
‚!‚! 
$str
ƒ!ƒ! 
,
ƒ!ƒ! 
$str
„!„! 
,
„!„! 
$str
…!…! 
,
…!…! 
$str
†!†! 
,
†!†! 
$str
‡!‡! 
,
‡!‡! 
$str
ˆ!ˆ! 
,
ˆ!ˆ! 
$str
‰!‰! 
,
‰!‰! 
$str
Š!Š! 
,
Š!Š! 
$str
‹!‹! 
,
‹!‹! 
$str
Œ!Œ! 
,
Œ!Œ! 
$str
!! 
,
!! 
$str
!! 
,
!! 
$str
!! 
,
!! 
$str
!! 
,
!! 
$str
‘!‘! 
,
‘!‘! 
$str
’!’! 
,
’!’! 
$str
“!“! 
,
“!“! 
$str
”!”! 
,
”!”! 
$str
•!•! 
,
•!•! 
$str
–!–! 
,
–!–! 
$str
—!—! 
,
—!—! 
$str
˜!˜! 
,
˜!˜! 
$str
™!™! 
,
™!™! 
$str
š!š! 
,
š!š! 
$str
›!›! 
,
›!›! 
$str
œ!œ! 
,
œ!œ! 
$str
!! 
,
!! 
$str
!! 
,
!! 
$str
Ÿ!Ÿ! 
,
Ÿ!Ÿ! 
$str
 ! ! 
,
 ! ! 
$str
¡!¡! 
,
¡!¡! 
$str
¢!¢! 
,
¢!¢! 
$str
£!£! 
,
£!£! 
$str
¤!¤! 
,
¤!¤! 
$str
¥!¥! 
,
¥!¥! 
$str
¦!¦! 
,
¦!¦! 
$str
§!§! 
,
§!§! 
$str
¨!¨! 
,
¨!¨! 
$str
©!©! 
,
©!©! 
$str
ª!ª! 
,
ª!ª! 
$str
«!«! 
,
«!«! 
$str
¬!¬! 
,
¬!¬! 
$str
­!­! 
,
­!­! 
$str
®!®! 
,
®!®! 
$str
¯!¯! 
,
¯!¯! 
$str
°!°! 
,
°!°! 
$str
±!±! 
,
±!±! 
$str
²!²! 
,
²!²! 
$str
³!³! 
,
³!³! 
$str
´!´! 
,
´!´! 
$str
µ!µ! 
,
µ!µ! 
$str
¶!¶! 
,
¶!¶! 
$str
·!·! 
,
·!·! 
$str
¸!¸! 
,
¸!¸! 
$str
¹!¹! 
,
¹!¹! 
$str
º!º! 
,
º!º! 
$str
»!»! 
,
»!»! 
$str
¼!¼! 
,
¼!¼! 
$str
½!½! 
,
½!½! 
$str
¾!¾! 
,
¾!¾! 
$str
¿!¿! 
,
¿!¿! 
$str
À!À! 
,
À!À! 
$str
Á!Á! 
,
Á!Á! 
$str
Â!Â! 
,
Â!Â! 
$str
Ã!Ã! 
,
Ã!Ã! 
$str
Ä!Ä! 
,
Ä!Ä! 
$str
Å!Å! 
,
Å!Å! 
$str
Æ!Æ! 
,
Æ!Æ! 
$str
Ç!Ç! 
,
Ç!Ç! 
$str
È!È! 
,
È!È! 
$str
É!É! 
,
É!É! 
$str
Ê!Ê! 
,
Ê!Ê! 
$str
Ë!Ë! 
,
Ë!Ë! 
$str
Ì!Ì! 
,
Ì!Ì! 
$str
Í!Í! 
,
Í!Í! 
$str
Î!Î! 
,
Î!Î! 
$str
Ï!Ï! 
,
Ï!Ï! 
$str
Ğ!Ğ! 
,
Ğ!Ğ! 
$str
Ñ!Ñ! 
,
Ñ!Ñ! 
$str
Ò!Ò! 
,
Ò!Ò! 
$str
Ó!Ó! 
,
Ó!Ó! 
$str
Ô!Ô! 
,
Ô!Ô! 
$str
Õ!Õ! 
,
Õ!Õ! 
$str
Ö!Ö! 
,
Ö!Ö! 
$str
×!×! 
,
×!×! 
$str
Ø!Ø! 
,
Ø!Ø! 
$str
Ù!Ù! 
,
Ù!Ù! 
$str
Ú!Ú! 
,
Ú!Ú! 
$str
Û!Û! 
,
Û!Û! 
$str
Ü!Ü! 
,
Ü!Ü! 
$str
İ!İ! 
,
İ!İ! 
$str
Ş!Ş! 
,
Ş!Ş! 
$str
ß!ß! 
,
ß!ß! 
$str
à!à! 
,
à!à! 
$str
á!á! 
,
á!á! 
$str
â!â! 
,
â!â! 
$str
ã!ã! 
,
ã!ã! 
$str
ä!ä! 
,
ä!ä! 
$str
å!å! 
,
å!å! 
$str
æ!æ! 
,
æ!æ! 
$str
ç!ç! 
,
ç!ç! 
$str
è!è! 
,
è!è! 
$str
é!é! 
,
é!é! 
$str
ê!ê! 
,
ê!ê! 
$str
ë!ë! 
,
ë!ë! 
$str
ì!ì! 
,
ì!ì! 
$str
í!í! 
,
í!í! 
$str
î!î! 
,
î!î! 
$str
ï!ï! 
,
ï!ï! 
$str
ğ!ğ! 
,
ğ!ğ! 
$str
ñ!ñ! 
,
ñ!ñ! 
$str
ò!ò! 
,
ò!ò! 
$str
ó!ó! 
,
ó!ó! 
$str
ô!ô! 
,
ô!ô! 
$str
õ!õ! 
,
õ!õ! 
$str
ö!ö! 
,
ö!ö! 
$str
÷!÷! 
,
÷!÷! 
$str
ø!ø! 
,
ø!ø! 
$str
ù!ù! 
,
ù!ù! 
$str
ú!ú! 
,
ú!ú! 
$str
û!û! 
,
û!û! 
$str
ü!ü! 
,
ü!ü! 
$str
ı!ı! 
,
ı!ı! 
$str
ş!ş! 
,
ş!ş! 
$str
ÿ!ÿ! 
,
ÿ!ÿ! 
$str
€"€" 
,
€"€" 
$str
"" 
,
"" 
$str
‚"‚" 
,
‚"‚" 
$str
ƒ"ƒ" 
,
ƒ"ƒ" 
$str
„"„" 
,
„"„" 
$str
…"…" 
,
…"…" 
$str
†"†" 
,
†"†" 
$str
‡"‡" 
,
‡"‡" 
$str
ˆ"ˆ" 
,
ˆ"ˆ" 
$str
‰"‰" 
,
‰"‰" 
$str
Š"Š" 
,
Š"Š" 
$str
‹"‹" 
,
‹"‹" 
$str
Œ"Œ" 
,
Œ"Œ" 
$str
"" 
,
"" 
$str
"" 
,
"" 
$str
"" 
,
"" 
$str
"" 
,
"" 
$str
‘"‘" 
,
‘"‘" 
$str
’"’" 
,
’"’" 
$str
“"“" 
,
“"“" 
$str
”"”" 
,
”"”" 
$str
•"•" 
,
•"•" 
$str
–"–" 
,
–"–" 
$str
—"—" 
,
—"—" 
$str
˜"˜" 
,
˜"˜" 
$str
™"™" 
,
™"™" 
$str
š"š" 
,
š"š" 
$str
›"›" 
,
›"›" 
$str
œ"œ" 
,
œ"œ" 
$str
"" 
,
"" 
$str
"" 
,
"" 
$str
Ÿ"Ÿ" 
,
Ÿ"Ÿ" 
$str
 " " 
,
 " " 
$str
¡"¡" 
,
¡"¡" 
$str
¢"¢" 
,
¢"¢" 
$str
£"£" 
,
£"£" 
$str
¤"¤" 
,
¤"¤" 
$str
¥"¥" 
,
¥"¥" 
$str
¦"¦" 
,
¦"¦" 
$str
§"§" 
,
§"§" 
$str
¨"¨" 
,
¨"¨" 
$str
©"©" 
,
©"©" 
$str
ª"ª" 
,
ª"ª" 
$str
«"«" 
,
«"«" 
$str
¬"¬" 
,
¬"¬" 
$str
­"­" 
,
­"­" 
$str
®"®" 
,
®"®" 
$str
¯"¯" 
,
¯"¯" 
$str
°"°" 
,
°"°" 
$str
±"±" 
,
±"±" 
$str
²"²" 
,
²"²" 
$str
³"³" 
,
³"³" 
$str
´"´" 
,
´"´" 
$str
µ"µ" 
,
µ"µ" 
$str
¶"¶" 
,
¶"¶" 
$str
·"·" 
,
·"·" 
$str
¸"¸" 
,
¸"¸" 
$str
¹"¹" 
,
¹"¹" 
$str
º"º" 
,
º"º" 
$str
»"»" 
,
»"»" 
$str
¼"¼" 
,
¼"¼" 
$str
½"½" 
,
½"½" 
$str
¾"¾" 
,
¾"¾" 
$str
¿"¿" 
,
¿"¿" 
$str
À"À" 
,
À"À" 
$str
Á"Á" 
,
Á"Á" 
$str
Â"Â" 
,
Â"Â" 
$str
Ã"Ã" 
,
Ã"Ã" 
$str
Ä"Ä" 
,
Ä"Ä" 
$str
Å"Å" 
,
Å"Å" 
$str
Æ"Æ" 
,
Æ"Æ" 
$str
Ç"Ç" 
,
Ç"Ç" 
$str
È"È" 
,
È"È" 
$str
É"É" 
,
É"É" 
$str
Ê"Ê" 
,
Ê"Ê" 
$str
Ë"Ë" 
,
Ë"Ë" 
$str
Ì"Ì" 
,
Ì"Ì" 
$str
Í"Í" 
,
Í"Í" 
$str
Î"Î" 
,
Î"Î" 
$str
Ï"Ï" 
,
Ï"Ï" 
$str
Ğ"Ğ" 
,
Ğ"Ğ" 
$str
Ñ"Ñ" 
,
Ñ"Ñ" 
$str
Ò"Ò" 
,
Ò"Ò" 
$str
Ó"Ó" 
,
Ó"Ó" 
$str
Ô"Ô" 
,
Ô"Ô" 
$str
Õ"Õ" 
,
Õ"Õ" 
$str
Ö"Ö" 
,
Ö"Ö" 
$str
×"×" 
,
×"×" 
$str
Ø"Ø" 
,
Ø"Ø" 
$str
Ù"Ù" 
,
Ù"Ù" 
$str
Ú"Ú" 
,
Ú"Ú" 
$str
Û"Û" 
,
Û"Û" 
$str
Ü"Ü" 
,
Ü"Ü" 
$str
İ"İ" 
,
İ"İ" 
$str
Ş"Ş" 
,
Ş"Ş" 
$str
ß"ß" 
,
ß"ß" 
$str
à"à" 
,
à"à" 
$str
á"á" 
,
á"á" 
$str
â"â" 
,
â"â" 
$str
ã"ã" 
,
ã"ã" 
$str
ä"ä" 
,
ä"ä" 
$str
å"å" 
,
å"å" 
$str
æ"æ" 
,
æ"æ" 
$str
ç"ç" 
,
ç"ç" 
$str
è"è" 
,
è"è" 
$str
é"é" 
,
é"é" 
$str
ê"ê" 
,
ê"ê" 
$str
ë"ë" 
,
ë"ë" 
$str
ì"ì" 
,
ì"ì" 
$str
í"í" 
,
í"í" 
$str
î"î" 
,
î"î" 
$str
ï"ï" 
,
ï"ï" 
$str
ğ"ğ" 
,
ğ"ğ" 
$str
ñ"ñ" 
,
ñ"ñ" 
$str
ò"ò" 
,
ò"ò" 
$str
ó"ó" 
,
ó"ó" 
$str
ô"ô" 
,
ô"ô" 
$str
õ"õ" 
,
õ"õ" 
$str
ö"ö" 
,
ö"ö" 
$str
÷"÷" 
,
÷"÷" 
$str
ø"ø" 
,
ø"ø" 
$str
ù"ù" 
,
ù"ù" 
$str
ú"ú" 
,
ú"ú" 
$str
û"û" 
,
û"û" 
$str
ü"ü" 
,
ü"ü" 
$str
ı"ı" 
,
ı"ı" 
$str
ş"ş" 
,
ş"ş" 
$str
ÿ"ÿ" 
,
ÿ"ÿ" 
$str
€#€# 
,
€#€# 
$str
## 
,
## 
$str
‚#‚# 
,
‚#‚# 
$str
ƒ#ƒ# 
,
ƒ#ƒ# 
$str
„#„# 
,
„#„# 
$str
…#…# 
,
…#…# 
$str
†#†# 
,
†#†# 
$str
‡#‡# 
,
‡#‡# 
$str
ˆ#ˆ# 
,
ˆ#ˆ# 
$str
‰#‰# 
,
‰#‰# 
$str
Š#Š# 
,
Š#Š# 
$str
‹#‹# 
,
‹#‹# 
$str
Œ#Œ# 
,
Œ#Œ# 
$str
## 
,
## 
$str
## 
,
## 
$str
## 
,
## 
$str
## 
,
## 
$str
‘#‘# 
,
‘#‘# 
$str
’#’# 
,
’#’# 
$str
“#“# 
,
“#“# 
$str
”#”# 
,
”#”# 
$str
•#•# 
,
•#•# 
$str
–#–# 
,
–#–# 
$str
—#—# 
,
—#—# 
$str
˜#˜# 
,
˜#˜# 
$str
™#™# 
,
™#™# 
$str
š#š# 
,
š#š# 
$str
›#›# 
,
›#›# 
$str
œ#œ# 
,
œ#œ# 
$str
## 
,
## 
$str
## 
,
## 
$str
Ÿ#Ÿ# 
,
Ÿ#Ÿ# 
$str
 # # 
,
 # # 
$str
¡#¡# 
,
¡#¡# 
$str
¢#¢# 
,
¢#¢# 
$str
£#£# 
,
£#£# 
$str
¤#¤# 
,
¤#¤# 
$str
¥#¥# 
,
¥#¥# 
$str
¦#¦# 
,
¦#¦# 
$str
§#§# 
,
§#§# 
$str
¨#¨# 
,
¨#¨# 
$str
©#©# 
,
©#©# 
$str
ª#ª# 
,
ª#ª# 
$str
«#«# 
,
«#«# 
$str
¬#¬# 
,
¬#¬# 
$str
­#­# 
,
­#­# 
$str
®#®# 
,
®#®# 
$str
¯#¯# 
,
¯#¯# 
$str
°#°# 
,
°#°# 
$str
±#±# 
,
±#±# 
$str
²#²# 
,
²#²# 
$str
³#³# 
,
³#³# 
$str
´#´# 
,
´#´# 
$str
µ#µ# 
,
µ#µ# 
$str
¶#¶# 
,
¶#¶# 
$str
·#·# 
,
·#·# 
$str
¸#¸# 
,
¸#¸# 
$str
¹#¹# 
,
¹#¹# 
$str
º#º# 
,
º#º# 
$str
»#»# 
,
»#»# 
$str
¼#¼# 
,
¼#¼# 
$str
½#½# 
,
½#½# 
$str
¾#¾# 
,
¾#¾# 
$str
¿#¿# 
,
¿#¿# 
$str
À#À# 
,
À#À# 
$str
Á#Á# 
,
Á#Á# 
$str
Â#Â# 
,
Â#Â# 
$str
Ã#Ã# 
,
Ã#Ã# 
$str
Ä#Ä# 
,
Ä#Ä# 
$str
Å#Å# 
,
Å#Å# 
$str
Æ#Æ# 
,
Æ#Æ# 
$str
Ç#Ç# 
,
Ç#Ç# 
$str
È#È# 
,
È#È# 
$str
É#É# 
,
É#É# 
$str
Ê#Ê# 
,
Ê#Ê# 
$str
Ë#Ë# 
,
Ë#Ë# 
$str
Ì#Ì# 
,
Ì#Ì# 
$str
Í#Í# 
,
Í#Í# 
$str
Î#Î# 
,
Î#Î# 
$str
Ï#Ï# 
,
Ï#Ï# 
$str
Ğ#Ğ# 
,
Ğ#Ğ# 
$str
Ñ#Ñ# 
,
Ñ#Ñ# 
$str
Ò#Ò# 
,
Ò#Ò# 
$str
Ó#Ó# 
,
Ó#Ó# 
$str
Ô#Ô# 
,
Ô#Ô# 
$str
Õ#Õ# 
,
Õ#Õ# 
$str
Ö#Ö# 
,
Ö#Ö# 
$str
×#×# 
,
×#×# 
$str
Ø#Ø# 
,
Ø#Ø# 
$str
Ù#Ù# 
,
Ù#Ù# 
$str
Ú#Ú# 
,
Ú#Ú# 
$str
Û#Û# 
,
Û#Û# 
$str
Ü#Ü# 
,
Ü#Ü# 
$str
İ#İ# 
,
İ#İ# 
$str
Ş#Ş# 
,
Ş#Ş# 
$str
ß#ß# 
,
ß#ß# 
$str
à#à# 
,
à#à# 
$str
á#á# 
,
á#á# 
$str
â#â# 
,
â#â# 
$str
ã#ã# 
,
ã#ã# 
$str
ä#ä# 
,
ä#ä# 
$str
å#å# 
,
å#å# 
$str
æ#æ# 
,
æ#æ# 
$str
ç#ç# 
,
ç#ç# 
$str
è#è# 
,
è#è# 
$str
é#é# 
,
é#é# 
$str
ê#ê# 
,
ê#ê# 
$str
ë#ë# 
,
ë#ë# 
$str
ì#ì# 
,
ì#ì# 
$str
í#í# 
,
í#í# 
$str
î#î# 
,
î#î# 
$str
ï#ï# 
,
ï#ï# 
$str
ğ#ğ# 
,
ğ#ğ# 
$str
ñ#ñ# 
,
ñ#ñ# 
$str
ò#ò# 
,
ò#ò# 
$str
ó#ó# 
,
ó#ó# 
$str
ô#ô# 
,
ô#ô# 
$str
õ#õ# 
,
õ#õ# 
$str
ö#ö# 
,
ö#ö# 
$str
÷#÷# 
,
÷#÷# 
$str
ø#ø# 
,
ø#ø# 
$str
ù#ù# 
,
ù#ù# 
$str
ú#ú# 
,
ú#ú# 
$str
û#û# 
,
û#û# 
$str
ü#ü# 
,
ü#ü# 
$str
ı#ı# 
,
ı#ı# 
$str
ş#ş# 
,
ş#ş# 
$str
ÿ#ÿ# 
,
ÿ#ÿ# 
$str
€$€$ 
,
€$€$ 
$str
$$ 
,
$$ 
$str
‚$‚$ 
,
‚$‚$ 
$str
ƒ$ƒ$ 
,
ƒ$ƒ$ 
$str
„$„$ 
,
„$„$ 
$str
…$…$ 
,
…$…$ 
$str
†$†$ 
,
†$†$ 
$str
‡$‡$ 
,
‡$‡$ 
$str
ˆ$ˆ$ 
,
ˆ$ˆ$ 
$str
‰$‰$ 
,
‰$‰$ 
$str
Š$Š$ 
,
Š$Š$ 
$str
‹$‹$ 
,
‹$‹$ 
$str
Œ$Œ$ 
,
Œ$Œ$ 
$str
$$ 
,
$$ 
$str
$$ 
,
$$ 
$str
$$ 
,
$$ 
$str
$$ 
,
$$ 
$str
‘$‘$ 
,
‘$‘$ 
$str
’$’$ 
,
’$’$ 
$str
“$“$ 
,
“$“$ 
$str
”$”$ 
,
”$”$ 
$str
•$•$ 
,
•$•$ 
$str
–$–$ 
,
–$–$ 
$str
—$—$ 
,
—$—$ 
$str
˜$˜$ 
,
˜$˜$ 
$str
™$™$ 
,
™$™$ 
$str
š$š$ 
,
š$š$ 
$str
›$›$ 
,
›$›$ 
$str
œ$œ$ 
,
œ$œ$ 
$str
$$ 
,
$$ 
$str
$$ 
,
$$ 
$str
Ÿ$Ÿ$ 
,
Ÿ$Ÿ$ 
$str
 $ $ 
,
 $ $ 
$str
¡$¡$ 
,
¡$¡$ 
$str
¢$¢$ 
,
¢$¢$ 
$str
£$£$ 
,
£$£$ 
$str
¤$¤$ 
,
¤$¤$ 
$str
¥$¥$ 
,
¥$¥$ 
$str
¦$¦$ 
,
¦$¦$ 
$str
§$§$ 
,
§$§$ 
$str
¨$¨$ 
,
¨$¨$ 
$str
©$©$ 
,
©$©$ 
$str
ª$ª$ 
,
ª$ª$ 
$str
«$«$ 
,
«$«$ 
$str
¬$¬$ 
,
¬$¬$ 
$str
­$­$ 
,
­$­$ 
$str
®$®$ 
,
®$®$ 
$str
¯$¯$ 
,
¯$¯$ 
$str
°$°$ 
,
°$°$ 
$str
±$±$ 
,
±$±$ 
$str
²$²$ 
,
²$²$ 
$str
³$³$ 
,
³$³$ 
$str
´$´$ 
,
´$´$ 
$str
µ$µ$ 
,
µ$µ$ 
$str
¶$¶$ 
,
¶$¶$ 
$str
·$·$ 
,
·$·$ 
$str
¸$¸$ 
,
¸$¸$ 
$str
¹$¹$ 
,
¹$¹$ 
$str
º$º$ 
,
º$º$ 
$str
»$»$ 
,
»$»$ 
$str
¼$¼$ 
,
¼$¼$ 
$str
½$½$ 
,
½$½$ 
$str
¾$¾$ 
,
¾$¾$ 
$str
¿$¿$ 
,
¿$¿$ 
$str
À$À$ 
,
À$À$ 
$str
Á$Á$ 
,
Á$Á$ 
$str
Â$Â$ 
,
Â$Â$ 
$str
Ã$Ã$ 
,
Ã$Ã$ 
$str
Ä$Ä$ 
,
Ä$Ä$ 
$str
Å$Å$ 
,
Å$Å$ 
$str
Æ$Æ$ 
,
Æ$Æ$ 
$str
Ç$Ç$ 
,
Ç$Ç$ 
$str
È$È$ 
,
È$È$ 
$str
É$É$ 
,
É$É$ 
$str
Ê$Ê$ 
,
Ê$Ê$ 
$str
Ë$Ë$ 
,
Ë$Ë$ 
$str
Ì$Ì$ 
,
Ì$Ì$ 
$str
Í$Í$ 
,
Í$Í$ 
$str
Î$Î$ 
,
Î$Î$ 
$str
Ï$Ï$ 
,
Ï$Ï$ 
$str
Ğ$Ğ$ 
,
Ğ$Ğ$ 
$str
Ñ$Ñ$ 
,
Ñ$Ñ$ 
$str
Ò$Ò$ 
,
Ò$Ò$ 
$str
Ó$Ó$ 
,
Ó$Ó$ 
$str
Ô$Ô$ 
,
Ô$Ô$ 
$str
Õ$Õ$ 
,
Õ$Õ$ 
$str
Ö$Ö$ 
,
Ö$Ö$ 
$str
×$×$ 
,
×$×$ 
$str
Ø$Ø$ 
,
Ø$Ø$ 
$str
Ù$Ù$ 
,
Ù$Ù$ 
$str
Ú$Ú$ 
,
Ú$Ú$ 
$str
Û$Û$ 
,
Û$Û$ 
$str
Ü$Ü$ 
,
Ü$Ü$ 
$str
İ$İ$ 
,
İ$İ$ 
$str
Ş$Ş$ 
,
Ş$Ş$ 
$str
ß$ß$ 
,
ß$ß$ 
$str
à$à$ 
,
à$à$ 
$str
á$á$ 
,
á$á$ 
$str
â$â$ 
,
â$â$ 
$str
ã$ã$ 
,
ã$ã$ 
$str
ä$ä$ 
,
ä$ä$ 
$str
å$å$ 
,
å$å$ 
$str
æ$æ$ 
,
æ$æ$ 
$str
ç$ç$ 
,
ç$ç$ 
$str
è$è$ 
,
è$è$ 
$str
é$é$ 
,
é$é$ 
$str
ê$ê$ 
,
ê$ê$ 
$str
ë$ë$ 
,
ë$ë$ 
$str
ì$ì$ 
,
ì$ì$ 
$str
í$í$ 
,
í$í$ 
$str
î$î$ 
,
î$î$ 
$str
ï$ï$ 
,
ï$ï$ 
$str
ğ$ğ$ 
,
ğ$ğ$ 
$str
ñ$ñ$ 
,
ñ$ñ$ 
$str
ò$ò$ 
,
ò$ò$ 
$str
ó$ó$ 
,
ó$ó$ 
$str
ô$ô$ 
,
ô$ô$ 
$str
õ$õ$ 
,
õ$õ$ 
$str
ö$ö$ 
,
ö$ö$ 
$str
÷$÷$ 
,
÷$÷$ 
$str
ø$ø$ 
,
ø$ø$ 
$str
ù$ù$ 
,
ù$ù$ 
$str
ú$ú$ 
,
ú$ú$ 
$str
û$û$ 
,
û$û$ 
$str
ü$ü$ 
,
ü$ü$ 
$str
ı$ı$ 
,
ı$ı$ 
$str
ş$ş$ 
,
ş$ş$ 
$str
ÿ$ÿ$ 
,
ÿ$ÿ$ 
$str
€%€% 
,
€%€% 
$str
%% 
,
%% 
$str
‚%‚% 
,
‚%‚% 
$str
ƒ%ƒ% 
,
ƒ%ƒ% 
$str
„%„% 
,
„%„% 
$str
…%…% 
,
…%…% 
$str
†%†% 
,
†%†% 
$str
‡%‡% 
,
‡%‡% 
$str
ˆ%ˆ% 
,
ˆ%ˆ% 
$str
‰%‰% 
,
‰%‰% 
$str
Š%Š% 
,
Š%Š% 
$str
‹%‹% 
,
‹%‹% 
$str
Œ%Œ% 
,
Œ%Œ% 
$str
%% 
,
%% 
$str
%% 
,
%% 
$str
%% 
,
%% 
$str
%% 
,
%% 
$str
‘%‘% 
,
‘%‘% 
$str
’%’% 
,
’%’% 
$str
“%“% 
,
“%“% 
$str
”%”% 
,
”%”% 
$str
•%•% 
,
•%•% 
$str
–%–% 
,
–%–% 
$str
—%—% 
,
—%—% 
$str
˜%˜% 
,
˜%˜% 
$str
™%™% 
,
™%™% 
$str
š%š% 
,
š%š% 
$str
›%›% 
,
›%›% 
$str
œ%œ% 
,
œ%œ% 
$str
%% 
,
%% 
$str
%% 
,
%% 
$str
Ÿ%Ÿ% 
,
Ÿ%Ÿ% 
$str
 % % 
,
 % % 
$str
¡%¡% 
,
¡%¡% 
$str
¢%¢% 
,
¢%¢% 
$str
£%£% 
,
£%£% 
$str
¤%¤% 
,
¤%¤% 
$str
¥%¥% 
,
¥%¥% 
$str
¦%¦% 
,
¦%¦% 
$str
§%§% 
,
§%§% 
$str
¨%¨% 
,
¨%¨% 
$str
©%©% 
,
©%©% 
$str
ª%ª% 
,
ª%ª% 
$str
«%«% 
,
«%«% 
$str
¬%¬% 
,
¬%¬% 
$str
­%­% 
,
­%­% 
$str
®%®% 
,
®%®% 
$str
¯%¯% 
,
¯%¯% 
$str
°%°% 
,
°%°% 
$str
±%±% 
,
±%±% 
$str
²%²% 
,
²%²% 
$str
³%³% 
,
³%³% 
$str
´%´% 
,
´%´% 
$str
µ%µ% 
,
µ%µ% 
$str
¶%¶% 
,
¶%¶% 
$str
·%·% 
,
·%·% 
$str
¸%¸% 
,
¸%¸% 
$str
¹%¹% 
,
¹%¹% 
$str
º%º% 
,
º%º% 
$str
»%»% 
,
»%»% 
$str
¼%¼% 
,
¼%¼% 
$str
½%½% 
,
½%½% 
$str
¾%¾% 
,
¾%¾% 
$str
¿%¿% 
,
¿%¿% 
$str
À%À% 
,
À%À% 
$str
Á%Á% 
,
Á%Á% 
$str
Â%Â% 
,
Â%Â% 
$str
Ã%Ã% 
,
Ã%Ã% 
$str
Ä%Ä% 
,
Ä%Ä% 
$str
Å%Å% 
,
Å%Å% 
$str
Æ%Æ% 
,
Æ%Æ% 
$str
Ç%Ç% 
,
Ç%Ç% 
$str
È%È% 
,
È%È% 
$str
É%É% 
,
É%É% 
$str
Ê%Ê% 
,
Ê%Ê% 
$str
Ë%Ë% 
,
Ë%Ë% 
$str
Ì%Ì% 
,
Ì%Ì% 
$str
Í%Í% 
,
Í%Í% 
$str
Î%Î% 
,
Î%Î% 
$str
Ï%Ï% 
,
Ï%Ï% 
$str
Ğ%Ğ% 
,
Ğ%Ğ% 
$str
Ñ%Ñ% 
,
Ñ%Ñ% 
$str
Ò%Ò% 
,
Ò%Ò% 
$str
Ó%Ó% 
,
Ó%Ó% 
$str
Ô%Ô% 
,
Ô%Ô% 
$str
Õ%Õ% 
,
Õ%Õ% 
$str
Ö%Ö% 
,
Ö%Ö% 
$str
×%×% 
,
×%×% 
$str
Ø%Ø% 
,
Ø%Ø% 
$str
Ù%Ù% 
,
Ù%Ù% 
$str
Ú%Ú% 
,
Ú%Ú% 
$str
Û%Û% 
,
Û%Û% 
$str
Ü%Ü% 
,
Ü%Ü% 
$str
İ%İ% 
,
İ%İ% 
$str
Ş%Ş% 
,
Ş%Ş% 
$str
ß%ß% 
,
ß%ß% 
$str
à%à% 
,
à%à% 
$str
á%á% 
,
á%á% 
$str
â%â% 
,
â%â% 
$str
ã%ã% 
,
ã%ã% 
$str
ä%ä% 
,
ä%ä% 
$str
å%å% 
,
å%å% 
$str
æ%æ% 
,
æ%æ% 
$str
ç%ç% 
,
ç%ç% 
$str
è%è% 
,
è%è% 
$str
é%é% 
,
é%é% 
$str
ê%ê% 
,
ê%ê% 
$str
ë%ë% 
,
ë%ë% 
$str
ì%ì% 
,
ì%ì% 
$str
í%í% 
,
í%í% 
$str
î%î% 
,
î%î% 
$str
ï%ï% 
,
ï%ï% 
$str
ğ%ğ% 
,
ğ%ğ% 
$str
ñ%ñ% 
,
ñ%ñ% 
$str
ò%ò% 
,
ò%ò% 
$str
ó%ó% 
,
ó%ó% 
$str
ô%ô% 
,
ô%ô% 
$str
õ%õ% 
,
õ%õ% 
$str
ö%ö% 
,
ö%ö% 
$str
÷%÷% 
,
÷%÷% 
$str
ø%ø% 
,
ø%ø% 
$str
ù%ù% 
,
ù%ù% 
$str
ú%ú% 
,
ú%ú% 
$str
û%û% 
,
û%û% 
$str
ü%ü% 
,
ü%ü% 
$str
ı%ı% 
,
ı%ı% 
$str
ş%ş% 
,
ş%ş% 
$str
ÿ%ÿ% 
,
ÿ%ÿ% 
$str
€&€& 
,
€&€& 
$str
&& 
,
&& 
$str
‚&‚& 
,
‚&‚& 
$str
ƒ&ƒ& 
,
ƒ&ƒ& 
$str
„&„& 
,
„&„& 
$str
…&…& 
,
…&…& 
$str
†&†& 
,
†&†& 
$str
‡&‡& 
,
‡&‡& 
$str
ˆ&ˆ& 
,
ˆ&ˆ& 
$str
‰&‰& 
,
‰&‰& 
$str
Š&Š& 
,
Š&Š& 
$str
‹&‹& 
,
‹&‹& 
$str
Œ&Œ& 
,
Œ&Œ& 
$str
&& 
,
&& 
$str
&& 
,
&& 
$str
&& 
,
&& 
$str
&& 
,
&& 
$str
‘&‘& 
,
‘&‘& 
$str
’&’& 
,
’&’& 
$str
“&“& 
,
“&“& 
$str
”&”& 
,
”&”& 
$str
•&•& 
,
•&•& 
$str
–&–& 
,
–&–& 
$str
—&—& 
,
—&—& 
$str
˜&˜& 
,
˜&˜& 
$str
™&™& 
,
™&™& 
$str
š&š& 
,
š&š& 
$str
›&›& 
,
›&›& 
$str
œ&œ& 
,
œ&œ& 
$str
&& 
,
&& 
$str
&& 
,
&& 
$str
Ÿ&Ÿ& 
,
Ÿ&Ÿ& 
$str
 & & 
,
 & & 
$str
¡&¡& 
,
¡&¡& 
$str
¢&¢& 
,
¢&¢& 
$str
£&£& 
,
£&£& 
$str
¤&¤& 
,
¤&¤& 
$str
¥&¥& 
,
¥&¥& 
$str
¦&¦& 
,
¦&¦& 
$str
§&§& 
,
§&§& 
$str
¨&¨& 
,
¨&¨& 
$str
©&©& 
,
©&©& 
$str
ª&ª& 
,
ª&ª& 
$str
«&«& 
,
«&«& 
$str
¬&¬& 
,
¬&¬& 
$str
­&­& 
,
­&­& 
$str
®&®& 
,
®&®& 
$str
¯&¯& 
,
¯&¯& 
$str
°&°& 
,
°&°& 
$str
±&±& 
,
±&±& 
$str
²&²& 
,
²&²& 
$str
³&³& 
,
³&³& 
$str
´&´& 
,
´&´& 
$str
µ&µ& 
,
µ&µ& 
$str
¶&¶& 
,
¶&¶& 
$str
·&·& 
,
·&·& 
$str
¸&¸& 
,
¸&¸& 
$str
¹&¹& 
,
¹&¹& 
$str
º&º& 
,
º&º& 
$str
»&»& 
,
»&»& 
$str
¼&¼& 
,
¼&¼& 
$str
½&½& 
,
½&½& 
$str
¾&¾& 
,
¾&¾& 
$str
¿&¿& 
,
¿&¿& 
$str
À&À& 
,
À&À& 
$str
Á&Á& 
,
Á&Á& 
$str
Â&Â& 
,
Â&Â& 
$str
Ã&Ã& 
,
Ã&Ã& 
$str
Ä&Ä& 
,
Ä&Ä& 
$str
Å&Å& 
,
Å&Å& 
$str
Æ&Æ& 
,
Æ&Æ& 
$str
Ç&Ç& 
,
Ç&Ç& 
$str
È&È& 
,
È&È& 
$str
É&É& 
,
É&É& 
$str
Ê&Ê& 
,
Ê&Ê& 
$str
Ë&Ë& 
,
Ë&Ë& 
$str
Ì&Ì& 
,
Ì&Ì& 
$str
Í&Í& 
,
Í&Í& 
$str
Î&Î& 
,
Î&Î& 
$str
Ï&Ï& 
,
Ï&Ï& 
$str
Ğ&Ğ& 
,
Ğ&Ğ& 
$str
Ñ&Ñ& 
,
Ñ&Ñ& 
$str
Ò&Ò& 
,
Ò&Ò& 
$str
Ó&Ó& 
,
Ó&Ó& 
$str
Ô&Ô& 
,
Ô&Ô& 
$str
Õ&Õ& 
,
Õ&Õ& 
$str
Ö&Ö& 
,
Ö&Ö& 
$str
×&×& 
,
×&×& 
$str
Ø&Ø& 
,
Ø&Ø& 
$str
Ù&Ù& 
,
Ù&Ù& 
$str
Ú&Ú& 
,
Ú&Ú& 
$str
Û&Û& 
,
Û&Û& 
$str
Ü&Ü& 
,
Ü&Ü& 
$str
İ&İ& 
,
İ&İ& 
$str
Ş&Ş& 
,
Ş&Ş& 
$str
ß&ß& 
,
ß&ß& 
$str
à&à& 
,
à&à& 
$str
á&á& 
,
á&á& 
$str
â&â& 
,
â&â& 
$str
ã&ã& 
,
ã&ã& 
$str
ä&ä& 
,
ä&ä& 
$str
å&å& 
,
å&å& 
$str
æ&æ& 
,
æ&æ& 
$str
ç&ç& 
,
ç&ç& 
$str
è&è& 
,
è&è& 
$str
é&é& 
,
é&é& 
$str
ê&ê& 
,
ê&ê& 
$str
ë&ë& 
,
ë&ë& 
$str
ì&ì& 
,
ì&ì& 
$str
í&í& 
,
í&í& 
$str
î&î& 
,
î&î& 
$str
ï&ï& 
,
ï&ï& 
$str
ğ&ğ& 
,
ğ&ğ& 
$str
ñ&ñ& 
,
ñ&ñ& 
$str
ò&ò& 
,
ò&ò& 
$str
ó&ó& 
,
ó&ó& 
$str
ô&ô& 
,
ô&ô& 
$str
õ&õ& 
,
õ&õ& 
$str
ö&ö& 
,
ö&ö& 
$str
÷&÷& 
,
÷&÷& 
$str
ø&ø& 
,
ø&ø& 
$str
ù&ù& 
,
ù&ù& 
$str
ú&ú& 
,
ú&ú& 
$str
û&û& 
,
û&û& 
$str
ü&ü& 
,
ü&ü& 
$str
ı&ı& 
,
ı&ı& 
$str
ş&ş& 
,
ş&ş& 
$str
ÿ&ÿ& 
,
ÿ&ÿ& 
$str
€'€' 
,
€'€' 
$str
'' 
,
'' 
$str
‚'‚' 
,
‚'‚' 
$str
ƒ'ƒ' 
,
ƒ'ƒ' 
$str
„'„' 
,
„'„' 
$str
…'…' 
,
…'…' 
$str
†'†' 
,
†'†' 
$str
‡'‡' 
,
‡'‡' 
$str
ˆ'ˆ' 
,
ˆ'ˆ' 
$str
‰'‰' 
,
‰'‰' 
$str
Š'Š' 
,
Š'Š' 
$str
‹'‹' 
,
‹'‹' 
$str
Œ'Œ' 
,
Œ'Œ' 
$str
'' 
,
'' 
$str
'' 
,
'' 
$str
'' 
,
'' 
$str
'' 
,
'' 
$str
‘'‘' 
,
‘'‘' 
$str
’'’' 
,
’'’' 
$str
“'“' 
,
“'“' 
$str
”'”' 
,
”'”' 
$str
•'•' 
,
•'•' 
$str
–'–' 
,
–'–' 
$str
—'—' 
,
—'—' 
$str
˜'˜' 
,
˜'˜' 
$str
™'™' 
,
™'™' 
$str
š'š' 
,
š'š' 
$str
›'›' 
,
›'›' 
$str
œ'œ' 
,
œ'œ' 
$str
'' 
,
'' 
$str
'' 
,
'' 
$str
Ÿ'Ÿ' 
,
Ÿ'Ÿ' 
$str
 ' ' 
,
 ' ' 
$str
¡'¡' 
,
¡'¡' 
$str
¢'¢' 
,
¢'¢' 
$str
£'£' 
,
£'£' 
$str
¤'¤' 
,
¤'¤' 
$str
¥'¥' 
,
¥'¥' 
$str
¦'¦' 
,
¦'¦' 
$str
§'§' 
,
§'§' 
$str
¨'¨' 
,
¨'¨' 
$str
©'©' 
,
©'©' 
$str
ª'ª' 
,
ª'ª' 
$str
«'«' 
,
«'«' 
$str
¬'¬' 
,
¬'¬' 
$str
­'­' 
,
­'­' 
$str
®'®' 
,
®'®' 
$str
¯'¯' 
,
¯'¯' 
$str
°'°' 
,
°'°' 
$str
±'±' 
,
±'±' 
$str
²'²' 
,
²'²' 
$str
³'³' 
,
³'³' 
$str
´'´' 
,
´'´' 
$str
µ'µ' 
,
µ'µ' 
$str
¶'¶' 
,
¶'¶' 
$str
·'·' 
,
·'·' 
$str
¸'¸' 
,
¸'¸' 
$str
¹'¹' 
,
¹'¹' 
$str
º'º' 
,
º'º' 
$str
»'»' 
,
»'»' 
$str
¼'¼' 
,
¼'¼' 
$str
½'½' 
,
½'½' 
$str
¾'¾' 
,
¾'¾' 
$str
¿'¿' 
,
¿'¿' 
$str
À'À' 
,
À'À' 
$str
Á'Á' 
,
Á'Á' 
$str
Â'Â' 
,
Â'Â' 
$str
Ã'Ã' 
,
Ã'Ã' 
$str
Ä'Ä' 
,
Ä'Ä' 
$str
Å'Å' 
,
Å'Å' 
$str
Æ'Æ' 
,
Æ'Æ' 
$str
Ç'Ç' 
,
Ç'Ç' 
$str
È'È' 
,
È'È' 
$str
É'É' 
,
É'É' 
$str
Ê'Ê' 
,
Ê'Ê' 
$str
Ë'Ë' 
,
Ë'Ë' 
$str
Ì'Ì' 
,
Ì'Ì' 
$str
Í'Í' 
,
Í'Í' 
$str
Î'Î' 
,
Î'Î' 
$str
Ï'Ï' 
,
Ï'Ï' 
$str
Ğ'Ğ' 
,
Ğ'Ğ' 
$str
Ñ'Ñ' 
,
Ñ'Ñ' 
$str
Ò'Ò' 
,
Ò'Ò' 
$str
Ó'Ó' 
,
Ó'Ó' 
$str
Ô'Ô' 
,
Ô'Ô' 
$str
Õ'Õ' 
,
Õ'Õ' 
$str
Ö'Ö' 
,
Ö'Ö' 
$str
×'×' 
,
×'×' 
$str
Ø'Ø' 
,
Ø'Ø' 
$str
Ù'Ù' 
,
Ù'Ù' 
$str
Ú'Ú' 
,
Ú'Ú' 
$str
Û'Û' 
,
Û'Û' 
$str
Ü'Ü' 
,
Ü'Ü' 
$str
İ'İ' 
,
İ'İ' 
$str
Ş'Ş' 
,
Ş'Ş' 
$str
ß'ß' 
,
ß'ß' 
$str
à'à' 
,
à'à' 
$str
á'á' 
,
á'á' 
$str
â'â' 
,
â'â' 
$str
ã'ã' 
,
ã'ã' 
$str
ä'ä' 
,
ä'ä' 
$str
å'å' 
,
å'å' 
$str
æ'æ' 
,
æ'æ' 
$str
ç'ç' 
,
ç'ç' 
$str
è'è' 
,
è'è' 
$str
é'é' 
,
é'é' 
$str
ê'ê' 
,
ê'ê' 
$str
ë'ë' 
,
ë'ë' 
$str
ì'ì' 
,
ì'ì' 
$str
í'í' 
,
í'í' 
$str
î'î' 
,
î'î' 
$str
ï'ï' 
,
ï'ï' 
$str
ğ'ğ' 
,
ğ'ğ' 
$str
ñ'ñ' 
,
ñ'ñ' 
$str
ò'ò' 
,
ò'ò' 
$str
ó'ó' 
,
ó'ó' 
$str
ô'ô' 
,
ô'ô' 
$str
õ'õ' 
,
õ'õ' 
$str
ö'ö' 
,
ö'ö' 
$str
÷'÷' 
,
÷'÷' 
$str
ø'ø' 
,
ø'ø' 
$str
ù'ù' 
,
ù'ù' 
$str
ú'ú' 
,
ú'ú' 
$str
û'û' 
,
û'û' 
$str
ü'ü' 
,
ü'ü' 
$str
ı'ı' 
,
ı'ı' 
$str
ş'ş' 
,
ş'ş' 
$str
ÿ'ÿ' 
,
ÿ'ÿ' 
$str
€(€( 
,
€(€( 
$str
(( 
,
(( 
$str
‚(‚( 
,
‚(‚( 
$str
ƒ(ƒ( 
,
ƒ(ƒ( 
$str
„(„( 
,
„(„( 
$str
…(…( 
,
…(…( 
$str
†(†( 
,
†(†( 
$str
‡(‡( 
,
‡(‡( 
$str
ˆ(ˆ( 
,
ˆ(ˆ( 
$str
‰(‰( 
,
‰(‰( 
$str
Š(Š( 
,
Š(Š( 
$str
‹(‹( 
,
‹(‹( 
$str
Œ(Œ( 
,
Œ(Œ( 
$str
(( 
,
(( 
$str
(( 
,
(( 
$str
(( 
,
(( 
$str
(( 
,
(( 
$str
‘(‘( 
,
‘(‘( 
$str
’(’( 
,
’(’( 
$str
“(“( 
,
“(“( 
$str
”(”( 
,
”(”( 
$str
•(•( 
,
•(•( 
$str
–(–( 
,
–(–( 
$str
—(—( 
,
—(—( 
$str
˜(˜( 
,
˜(˜( 
$str
™(™( 
,
™(™( 
$str
š(š( 
,
š(š( 
$str
›(›( 
,
›(›( 
$str
œ(œ( 
,
œ(œ( 
$str
(( 
,
(( 
$str
(( 
,
(( 
$str
Ÿ(Ÿ( 
,
Ÿ(Ÿ( 
$str
 ( ( 
,
 ( ( 
$str
¡(¡( 
,
¡(¡( 
$str
¢(¢( 
,
¢(¢( 
$str
£(£( 
,
£(£( 
$str
¤(¤( 
,
¤(¤( 
$str
¥(¥( 
,
¥(¥( 
$str
¦(¦( 
,
¦(¦( 
$str
§(§( 
,
§(§( 
$str
¨(¨( 
,
¨(¨( 
$str
©(©( 
,
©(©( 
$str
ª(ª( 
,
ª(ª( 
$str
«(«( 
,
«(«( 
$str
¬(¬( 
,
¬(¬( 
$str
­(­( 
,
­(­( 
$str
®(®( 
,
®(®( 
$str
¯(¯( 
,
¯(¯( 
$str
°(°( 
,
°(°( 
$str
±(±( 
,
±(±( 
$str
²(²( 
,
²(²( 
$str
³(³( 
,
³(³( 
$str
´(´( 
,
´(´( 
$str
µ(µ( 
,
µ(µ( 
$str
¶(¶( 
,
¶(¶( 
$str
·(·( 
,
·(·( 
$str
¸(¸( 
,
¸(¸( 
$str
¹(¹( 
,
¹(¹( 
$str
º(º( 
,
º(º( 
$str
»(»( 
,
»(»( 
$str
¼(¼( 
,
¼(¼( 
$str
½(½( 
,
½(½( 
$str
¾(¾( 
,
¾(¾( 
$str
¿(¿( 
,
¿(¿( 
$str
À(À( 
,
À(À( 
$str
Á(Á( 
,
Á(Á( 
$str
Â(Â( 
,
Â(Â( 
$str
Ã(Ã( 
,
Ã(Ã( 
$str
Ä(Ä( 
,
Ä(Ä( 
$str
Å(Å( 
,
Å(Å( 
$str
Æ(Æ( 
,
Æ(Æ( 
$str
Ç(Ç( 
,
Ç(Ç( 
$str
È(È( 
,
È(È( 
$str
É(É( 
,
É(É( 
$str
Ê(Ê( 
,
Ê(Ê( 
$str
Ë(Ë( 
,
Ë(Ë( 
$str
Ì(Ì( 
,
Ì(Ì( 
$str
Í(Í( 
,
Í(Í( 
$str
Î(Î( 
,
Î(Î( 
$str
Ï(Ï( 
,
Ï(Ï( 
$str
Ğ(Ğ( 
,
Ğ(Ğ( 
$str
Ñ(Ñ( 
,
Ñ(Ñ( 
$str
Ò(Ò( 
,
Ò(Ò( 
$str
Ó(Ó( 
,
Ó(Ó( 
$str
Ô(Ô( 
,
Ô(Ô( 
$str
Õ(Õ( 
,
Õ(Õ( 
$str
Ö(Ö( 
,
Ö(Ö( 
$str
×(×( 
,
×(×( 
$str
Ø(Ø( 
,
Ø(Ø( 
$str
Ù(Ù( 
,
Ù(Ù( 
$str
Ú(Ú( 
,
Ú(Ú( 
$str
Û(Û( 
,
Û(Û( 
$str
Ü(Ü( 
,
Ü(Ü( 
$str
İ(İ( 
,
İ(İ( 
$str
Ş(Ş( 
,
Ş(Ş( 
$str
ß(ß( 
,
ß(ß( 
$str
à(à( 
,
à(à( 
$str
á(á( 
,
á(á( 
$str
â(â( 
,
â(â( 
$str
ã(ã( 
,
ã(ã( 
$str
ä(ä( 
,
ä(ä( 
$str
å(å( 
,
å(å( 
$str
æ(æ( 
,
æ(æ( 
$str
ç(ç( 
,
ç(ç( 
$str
è(è( 
,
è(è( 
$str
é(é( 
,
é(é( 
$str
ê(ê( 
,
ê(ê( 
$str
ë(ë( 
,
ë(ë( 
$str
ì(ì( 
,
ì(ì( 
$str
í(í( 
,
í(í( 
$str
î(î( 
,
î(î( 
$str
ï(ï( 
,
ï(ï( 
$str
ğ(ğ( 
,
ğ(ğ( 
$str
ñ(ñ( 
,
ñ(ñ( 
$str
ò(ò( 
,
ò(ò( 
$str
ó(ó( 
,
ó(ó( 
$str
ô(ô( 
,
ô(ô( 
$str
õ(õ( 
,
õ(õ( 
$str
ö(ö( 
,
ö(ö( 
$str
÷(÷( 
,
÷(÷( 
$str
ø(ø( 
,
ø(ø( 
$str
ù(ù( 
,
ù(ù( 
$str
ú(ú( 
,
ú(ú( 
$str
û(û( 
,
û(û( 
$str
ü(ü( 
,
ü(ü( 
$str
ı(ı( 
,
ı(ı( 
$str
ş(ş( 
,
ş(ş( 
$str
ÿ(ÿ( 
,
ÿ(ÿ( 
$str
€)€) 
,
€)€) 
$str
)) 
,
)) 
$str
‚)‚) 
,
‚)‚) 
$str
ƒ)ƒ) 
,
ƒ)ƒ) 
$str
„)„) 
,
„)„) 
$str
…)…) 
,
…)…) 
$str
†)†) 
,
†)†) 
$str
‡)‡) 
,
‡)‡) 
$str
ˆ)ˆ) 
,
ˆ)ˆ) 
$str
‰)‰) 
,
‰)‰) 
$str
Š)Š) 
,
Š)Š) 
$str
‹)‹) 
,
‹)‹) 
$str
Œ)Œ) 
,
Œ)Œ) 
$str
)) 
,
)) 
$str
)) 
,
)) 
$str
)) 
,
)) 
$str
)) 
,
)) 
$str
‘)‘) 
,
‘)‘) 
$str
’)’) 
,
’)’) 
$str
“)“) 
,
“)“) 
$str
”)”) 
,
”)”) 
$str
•)•) 
,
•)•) 
$str
–)–) 
,
–)–) 
$str
—)—) 
,
—)—) 
$str
˜)˜) 
,
˜)˜) 
$str
™)™) 
,
™)™) 
$str
š)š) 
,
š)š) 
$str
›)›) 
,
›)›) 
$str
œ)œ) 
,
œ)œ) 
$str
)) 
,
)) 
$str
)) 
,
)) 
$str
Ÿ)Ÿ) 
,
Ÿ)Ÿ) 
$str
 ) ) 
,
 ) ) 
$str
¡)¡) 
,
¡)¡) 
$str
¢)¢) 
,
¢)¢) 
$str
£)£) 
,
£)£) 
$str
¤)¤) 
,
¤)¤) 
$str
¥)¥) 
,
¥)¥) 
$str
¦)¦) 
,
¦)¦) 
$str
§)§) 
,
§)§) 
$str
¨)¨) 
,
¨)¨) 
$str
©)©) 
,
©)©) 
$str
ª)ª) 
,
ª)ª) 
$str
«)«) 
,
«)«) 
$str
¬)¬) 
,
¬)¬) 
$str
­)­) 
,
­)­) 
$str
®)®) 
,
®)®) 
$str
¯)¯) 
,
¯)¯) 
$str
°)°) 
,
°)°) 
$str
±)±) 
,
±)±) 
$str
²)²) 
,
²)²) 
$str
³)³) 
,
³)³) 
$str
´)´) 
,
´)´) 
$str
µ)µ) 
,
µ)µ) 
$str
¶)¶) 
,
¶)¶) 
$str
·)·) 
,
·)·) 
$str
¸)¸) 
,
¸)¸) 
$str
¹)¹) 
,
¹)¹) 
$str
º)º) 
,
º)º) 
$str
»)») 
,
»)») 
$str
¼)¼) 
,
¼)¼) 
$str
½)½) 
,
½)½) 
$str
¾)¾) 
,
¾)¾) 
$str
¿)¿) 
,
¿)¿) 
$str
À)À) 
,
À)À) 
$str
Á)Á) 
,
Á)Á) 
$str
Â)Â) 
,
Â)Â) 
$str
Ã)Ã) 
,
Ã)Ã) 
$str
Ä)Ä) 
,
Ä)Ä) 
$str
Å)Å) 
,
Å)Å) 
$str
Æ)Æ) 
,
Æ)Æ) 
$str
Ç)Ç) 
,
Ç)Ç) 
$str
È)È) 
,
È)È) 
$str
É)É) 
,
É)É) 
$str
Ê)Ê) 
,
Ê)Ê) 
$str
Ë)Ë) 
,
Ë)Ë) 
$str
Ì)Ì) 
,
Ì)Ì) 
$str
Í)Í) 
,
Í)Í) 
$str
Î)Î) 
,
Î)Î) 
$str
Ï)Ï) 
,
Ï)Ï) 
$str
Ğ)Ğ) 
,
Ğ)Ğ) 
$str
Ñ)Ñ) 
,
Ñ)Ñ) 
$str
Ò)Ò) 
,
Ò)Ò) 
$str
Ó)Ó) 
,
Ó)Ó) 
$str
Ô)Ô) 
,
Ô)Ô) 
$str
Õ)Õ) 
,
Õ)Õ) 
$str
Ö)Ö) 
,
Ö)Ö) 
$str
×)×) 
,
×)×) 
$str
Ø)Ø) 
,
Ø)Ø) 
$str
Ù)Ù) 
,
Ù)Ù) 
$str
Ú)Ú) 
,
Ú)Ú) 
$str
Û)Û) 
,
Û)Û) 
$str
Ü)Ü) 
,
Ü)Ü) 
$str
İ)İ) 
,
İ)İ) 
$str
Ş)Ş) 
,
Ş)Ş) 
$str
ß)ß) 
,
ß)ß) 
$str
à)à) 
,
à)à) 
$str
á)á) 
,
á)á) 
$str
â)â) 
,
â)â) 
$str
ã)ã) 
,
ã)ã) 
$str
ä)ä) 
,
ä)ä) 
$str
å)å) 
,
å)å) 
$str
æ)æ) 
,
æ)æ) 
$str
ç)ç) 
,
ç)ç) 
$str
è)è) 
,
è)è) 
$str
é)é) 
,
é)é) 
$str
ê)ê) 
,
ê)ê) 
$str
ë)ë) 
,
ë)ë) 
$str
ì)ì) 
,
ì)ì) 
$str
í)í) 
,
í)í) 
$str
î)î) 
,
î)î) 
$str
ï)ï) 
,
ï)ï) 
$str
ğ)ğ) 
,
ğ)ğ) 
$str
ñ)ñ) 
,
ñ)ñ) 
$str
ò)ò) 
,
ò)ò) 
$str
ó)ó) 
,
ó)ó) 
$str
ô)ô) 
,
ô)ô) 
$str
õ)õ) 
,
õ)õ) 
$str
ö)ö) 
,
ö)ö) 
$str
÷)÷) 
,
÷)÷) 
$str
ø)ø) 
,
ø)ø) 
$str
ù)ù) 
,
ù)ù) 
$str
ú)ú) 
,
ú)ú) 
$str
û)û) 
,
û)û) 
$str
ü)ü) 
,
ü)ü) 
$str
ı)ı) 
,
ı)ı) 
$str
ş)ş) 
,
ş)ş) 
$str
ÿ)ÿ) 
,
ÿ)ÿ) 
$str
€*€* 
,
€*€* 
$str
** 
,
** 
$str
‚*‚* 
,
‚*‚* 
$str
ƒ*ƒ* 
,
ƒ*ƒ* 
$str
„*„* 
,
„*„* 
$str
…*…* 
,
…*…* 
$str
†*†* 
,
†*†* 
$str
‡*‡* 
,
‡*‡* 
$str
ˆ*ˆ* 
,
ˆ*ˆ* 
$str
‰*‰* 
,
‰*‰* 
$str
Š*Š* 
,
Š*Š* 
$str
‹*‹* 
,
‹*‹* 
$str
Œ*Œ* 
,
Œ*Œ* 
$str
** 
,
** 
$str
** 
,
** 
$str
** 
,
** 
$str
** 
,
** 
$str
‘*‘* 
,
‘*‘* 
$str
’*’* 
,
’*’* 
$str
“*“* 
,
“*“* 
$str
”*”* 
,
”*”* 
$str
•*•* 
,
•*•* 
$str
–*–* 
,
–*–* 
$str
—*—* 
,
—*—* 
$str
˜*˜* 
,
˜*˜* 
$str
™*™* 
,
™*™* 
$str
š*š* 
,
š*š* 
$str
›*›* 
,
›*›* 
$str
œ*œ* 
,
œ*œ* 
$str
** 
,
** 
$str
** 
,
** 
$str
Ÿ*Ÿ* 
,
Ÿ*Ÿ* 
$str
 * * 
,
 * * 
$str
¡*¡* 
,
¡*¡* 
$str
¢*¢* 
,
¢*¢* 
$str
£*£* 
,
£*£* 
$str
¤*¤* 
,
¤*¤* 
$str
¥*¥* 
,
¥*¥* 
$str
¦*¦* 
,
¦*¦* 
$str
§*§* 
,
§*§* 
$str
¨*¨* 
,
¨*¨* 
$str
©*©* 
,
©*©* 
$str
ª*ª* 
,
ª*ª* 
$str
«*«* 
,
«*«* 
$str
¬*¬* 
,
¬*¬* 
$str
­*­* 
,
­*­* 
$str
®*®* 
,
®*®* 
$str
¯*¯* 
,
¯*¯* 
$str
°*°* 
,
°*°* 
$str
±*±* 
,
±*±* 
$str
²*²* 
,
²*²* 
$str
³*³* 
,
³*³* 
$str
´*´* 
,
´*´* 
$str
µ*µ* 
,
µ*µ* 
$str
¶*¶* 
,
¶*¶* 
$str
·*·* 
,
·*·* 
$str
¸*¸* 
,
¸*¸* 
$str
¹*¹* 
,
¹*¹* 
$str
º*º* 
,
º*º* 
$str
»*»* 
,
»*»* 
$str
¼*¼* 
,
¼*¼* 
$str
½*½* 
,
½*½* 
$str
¾*¾* 
,
¾*¾* 
$str
¿*¿* 
,
¿*¿* 
$str
À*À* 
,
À*À* 
$str
Á*Á* 
,
Á*Á* 
$str
Â*Â* 
,
Â*Â* 
$str
Ã*Ã* 
,
Ã*Ã* 
$str
Ä*Ä* 
,
Ä*Ä* 
$str
Å*Å* 
,
Å*Å* 
$str
Æ*Æ* 
,
Æ*Æ* 
$str
Ç*Ç* 
,
Ç*Ç* 
$str
È*È* 
,
È*È* 
$str
É*É* 
,
É*É* 
$str
Ê*Ê* 
,
Ê*Ê* 
$str
Ë*Ë* 
,
Ë*Ë* 
$str
Ì*Ì* 
,
Ì*Ì* 
$str
Í*Í* 
,
Í*Í* 
$str
Î*Î* 
,
Î*Î* 
$str
Ï*Ï* 
,
Ï*Ï* 
$str
Ğ*Ğ* 
,
Ğ*Ğ* 
$str
Ñ*Ñ* 
,
Ñ*Ñ* 
$str
Ò*Ò* 
,
Ò*Ò* 
$str
Ó*Ó* 
,
Ó*Ó* 
$str
Ô*Ô* 
,
Ô*Ô* 
$str
Õ*Õ* 
,
Õ*Õ* 
$str
Ö*Ö* 
,
Ö*Ö* 
$str
×*×* 
,
×*×* 
$str
Ø*Ø* 
,
Ø*Ø* 
$str
Ù*Ù* 
,
Ù*Ù* 
$str
Ú*Ú* 
,
Ú*Ú* 
$str
Û*Û* 
,
Û*Û* 
$str
Ü*Ü* 
,
Ü*Ü* 
$str
İ*İ* 
,
İ*İ* 
$str
Ş*Ş* 
,
Ş*Ş* 
$str
ß*ß* 
,
ß*ß* 
$str
à*à* 
,
à*à* 
$str
á*á* 
,
á*á* 
$str
â*â* 
,
â*â* 
$str
ã*ã* 
,
ã*ã* 
$str
ä*ä* 
,
ä*ä* 
$str
å*å* 
,
å*å* 
$str
æ*æ* 
,
æ*æ* 
$str
ç*ç* 
,
ç*ç* 
$str
è*è* 
,
è*è* 
$str
é*é* 
,
é*é* 
$str
ê*ê* 
,
ê*ê* 
$str
ë*ë* 
,
ë*ë* 
$str
ì*ì* 
,
ì*ì* 
$str
í*í* 
,
í*í* 
$str
î*î* 
,
î*î* 
$str
ï*ï* 
,
ï*ï* 
$str
ğ*ğ* 
,
ğ*ğ* 
$str
ñ*ñ* 
,
ñ*ñ* 
$str
ò*ò* 
,
ò*ò* 
$str
ó*ó* 
,
ó*ó* 
$str
ô*ô* 
,
ô*ô* 
$str
õ*õ* 
,
õ*õ* 
$str
ö*ö* 
,
ö*ö* 
$str
÷*÷* 
,
÷*÷* 
$str
ø*ø* 
,
ø*ø* 
$str
ù*ù* 
,
ù*ù* 
$str
ú*ú* 
,
ú*ú* 
$str
û*û* 
,
û*û* 
$str
ü*ü* 
,
ü*ü* 
$str
ı*ı* 
,
ı*ı* 
$str
ş*ş* 
,
ş*ş* 
$str
ÿ*ÿ* 
,
ÿ*ÿ* 
$str
€+€+ 
,
€+€+ 
$str
++ 
,
++ 
$str
‚+‚+ 
,
‚+‚+ 
$str
ƒ+ƒ+ 
,
ƒ+ƒ+ 
$str
„+„+ 
,
„+„+ 
$str
…+…+ 
,
…+…+ 
$str
†+†+ 
,
†+†+ 
$str
‡+‡+ 
,
‡+‡+ 
$str
ˆ+ˆ+ 
,
ˆ+ˆ+ 
$str
‰+‰+ 
,
‰+‰+ 
$str
Š+Š+ 
,
Š+Š+ 
$str
‹+‹+ 
,
‹+‹+ 
$str
Œ+Œ+ 
,
Œ+Œ+ 
$str
++ 
,
++ 
$str
++ 
,
++ 
$str
++ 
,
++ 
$str
++ 
,
++ 
$str
‘+‘+ 
,
‘+‘+ 
$str
’+’+ 
,
’+’+ 
$str
“+“+ 
,
“+“+ 
$str
”+”+ 
,
”+”+ 
$str
•+•+ 
,
•+•+ 
$str
–+–+ 
,
–+–+ 
$str
—+—+ 
,
—+—+ 
$str
˜+˜+ 
,
˜+˜+ 
$str
™+™+ 
,
™+™+ 
$str
š+š+ 
,
š+š+ 
$str
›+›+ 
,
›+›+ 
$str
œ+œ+ 
,
œ+œ+ 
$str
++ 
,
++ 
$str
++ 
,
++ 
$str
Ÿ+Ÿ+ 
,
Ÿ+Ÿ+ 
$str
 + + 
,
 + + 
$str
¡+¡+ 
,
¡+¡+ 
$str
¢+¢+ 
,
¢+¢+ 
$str
£+£+ 
,
£+£+ 
$str
¤+¤+ 
,
¤+¤+ 
$str
¥+¥+ 
,
¥+¥+ 
$str
¦+¦+ 
,
¦+¦+ 
$str
§+§+ 
,
§+§+ 
$str
¨+¨+ 
,
¨+¨+ 
$str
©+©+ 
,
©+©+ 
$str
ª+ª+ 
,
ª+ª+ 
$str
«+«+ 
,
«+«+ 
$str
¬+¬+ 
,
¬+¬+ 
$str
­+­+ 
,
­+­+ 
$str
®+®+ 
,
®+®+ 
$str
¯+¯+ 
,
¯+¯+ 
$str
°+°+ 
,
°+°+ 
$str
±+±+ 
,
±+±+ 
$str
²+²+ 
,
²+²+ 
$str
³+³+ 
,
³+³+ 
$str
´+´+ 
,
´+´+ 
$str
µ+µ+ 
,
µ+µ+ 
$str
¶+¶+ 
,
¶+¶+ 
$str
·+·+ 
,
·+·+ 
$str
¸+¸+ 
,
¸+¸+ 
$str
¹+¹+ 
,
¹+¹+ 
$str
º+º+ 
,
º+º+ 
$str
»+»+ 
,
»+»+ 
$str
¼+¼+ 
,
¼+¼+ 
$str
½+½+ 
,
½+½+ 
$str
¾+¾+ 
,
¾+¾+ 
$str
¿+¿+ 
,
¿+¿+ 
$str
À+À+ 
,
À+À+ 
$str
Á+Á+ 
,
Á+Á+ 
$str
Â+Â+ 
,
Â+Â+ 
$str
Ã+Ã+ 
,
Ã+Ã+ 
$str
Ä+Ä+ 
,
Ä+Ä+ 
$str
Å+Å+ 
,
Å+Å+ 
$str
Æ+Æ+ 
,
Æ+Æ+ 
$str
Ç+Ç+ 
,
Ç+Ç+ 
$str
È+È+ 
,
È+È+ 
$str
É+É+ 
,
É+É+ 
$str
Ê+Ê+ 
,
Ê+Ê+ 
$str
Ë+Ë+ 
,
Ë+Ë+ 
$str
Ì+Ì+ 
,
Ì+Ì+ 
$str
Í+Í+ 
,
Í+Í+ 
$str
Î+Î+ 
,
Î+Î+ 
$str
Ï+Ï+ 
,
Ï+Ï+ 
$str
Ğ+Ğ+ 
,
Ğ+Ğ+ 
$str
Ñ+Ñ+ 
,
Ñ+Ñ+ 
$str
Ò+Ò+ 
,
Ò+Ò+ 
$str
Ó+Ó+ 
,
Ó+Ó+ 
$str
Ô+Ô+ 
,
Ô+Ô+ 
$str
Õ+Õ+ 
,
Õ+Õ+ 
$str
Ö+Ö+ 
,
Ö+Ö+ 
$str
×+×+ 
,
×+×+ 
$str
Ø+Ø+ 
,
Ø+Ø+ 
$str
Ù+Ù+ 
,
Ù+Ù+ 
$str
Ú+Ú+ 
,
Ú+Ú+ 
$str
Û+Û+ 
,
Û+Û+ 
$str
Ü+Ü+ 
,
Ü+Ü+ 
$str
İ+İ+ 
,
İ+İ+ 
$str
Ş+Ş+ 
,
Ş+Ş+ 
$str
ß+ß+ 
,
ß+ß+ 
$str
à+à+ 
,
à+à+ 
$str
á+á+ 
,
á+á+ 
$str
â+â+ 
,
â+â+ 
$str
ã+ã+ 
,
ã+ã+ 
$str
ä+ä+ 
,
ä+ä+ 
$str
å+å+ 
,
å+å+ 
$str
æ+æ+ 
,
æ+æ+ 
$str
ç+ç+ 
,
ç+ç+ 
$str
è+è+ 
,
è+è+ 
$str
é+é+ 
,
é+é+ 
$str
ê+ê+ 
,
ê+ê+ 
$str
ë+ë+ 
,
ë+ë+ 
$str
ì+ì+ 
,
ì+ì+ 
$str
í+í+ 
,
í+í+ 
$str
î+î+ 
,
î+î+ 
$str
ï+ï+ 
,
ï+ï+ 
$str
ğ+ğ+ 
,
ğ+ğ+ 
$str
ñ+ñ+ 
,
ñ+ñ+ 
$str
ò+ò+ 
,
ò+ò+ 
$str
ó+ó+ 
,
ó+ó+ 
$str
ô+ô+ 
,
ô+ô+ 
$str
õ+õ+ 
,
õ+õ+ 
$str
ö+ö+ 
,
ö+ö+ 
$str
÷+÷+ 
,
÷+÷+ 
$str
ø+ø+ 
,
ø+ø+ 
$str
ù+ù+ 
,
ù+ù+ 
$str
ú+ú+ 
,
ú+ú+ 
$str
û+û+ 
,
û+û+ 
$str
ü+ü+ 
,
ü+ü+ 
$str
ı+ı+ 
,
ı+ı+ 
$str
ş+ş+ 
,
ş+ş+ 
$str
ÿ+ÿ+ 
,
ÿ+ÿ+ 
$str
€,€, 
,
€,€, 
$str
,, 
,
,, 
$str
‚,‚, 
,
‚,‚, 
$str
ƒ,ƒ, 
,
ƒ,ƒ, 
$str
„,„, 
,
„,„, 
$str
…,…, 
,
…,…, 
$str
†,†, 
,
†,†, 
$str
‡,‡, 
,
‡,‡, 
$str
ˆ,ˆ, 
,
ˆ,ˆ, 
$str
‰,‰, 
,
‰,‰, 
$str
Š,Š, 
,
Š,Š, 
$str
‹,‹, 
,
‹,‹, 
$str
Œ,Œ, 
,
Œ,Œ, 
$str
,, 
,
,, 
$str
,, 
,
,, 
$str
,, 
,
,, 
$str
,, 
,
,, 
$str
‘,‘, 
,
‘,‘, 
$str
’,’, 
,
’,’, 
$str
“,“, 
,
“,“, 
$str
”,”, 
,
”,”, 
$str
•,•, 
,
•,•, 
$str
–,–, 
,
–,–, 
$str
—,—, 
,
—,—, 
$str
˜,˜, 
,
˜,˜, 
$str
™,™, 
,
™,™, 
$str
š,š, 
,
š,š, 
$str
›,›, 
,
›,›, 
$str
œ,œ, 
,
œ,œ, 
$str
,, 
,
,, 
$str
,, 
,
,, 
$str
Ÿ,Ÿ, 
,
Ÿ,Ÿ, 
$str
 , , 
,
 , , 
$str
¡,¡, 
,
¡,¡, 
$str
¢,¢, 
,
¢,¢, 
$str
£,£, 
,
£,£, 
$str
¤,¤, 
,
¤,¤, 
$str
¥,¥, 
,
¥,¥, 
$str
¦,¦, 
,
¦,¦, 
$str
§,§, 
,
§,§, 
$str
¨,¨, 
,
¨,¨, 
$str
©,©, 
,
©,©, 
$str
ª,ª, 
,
ª,ª, 
$str
«,«, 
,
«,«, 
$str
¬,¬, 
,
¬,¬, 
$str
­,­, 
,
­,­, 
$str
®,®, 
,
®,®, 
$str
¯,¯, 
,
¯,¯, 
$str
°,°, 
,
°,°, 
$str
±,±, 
,
±,±, 
$str
²,², 
,
²,², 
$str
³,³, 
,
³,³, 
$str
´,´, 
,
´,´, 
$str
µ,µ, 
,
µ,µ, 
$str
¶,¶, 
,
¶,¶, 
$str
·,·, 
,
·,·, 
$str
¸,¸, 
,
¸,¸, 
$str
¹,¹, 
,
¹,¹, 
$str
º,º, 
,
º,º, 
$str
»,», 
,
»,», 
$str
¼,¼, 
,
¼,¼, 
$str
½,½, 
,
½,½, 
$str
¾,¾, 
,
¾,¾, 
$str
¿,¿, 
,
¿,¿, 
$str
À,À, 
,
À,À, 
$str
Á,Á, 
,
Á,Á, 
$str
Â,Â, 
,
Â,Â, 
$str
Ã,Ã, 
,
Ã,Ã, 
$str
Ä,Ä, 
,
Ä,Ä, 
$str
Å,Å, 
,
Å,Å, 
$str
Æ,Æ, 
,
Æ,Æ, 
$str
Ç,Ç, 
,
Ç,Ç, 
$str
È,È, 
,
È,È, 
$str
É,É, 
,
É,É, 
$str
Ê,Ê, 
,
Ê,Ê, 
$str
Ë,Ë, 
,
Ë,Ë, 
$str
Ì,Ì, 
,
Ì,Ì, 
$str
Í,Í, 
,
Í,Í, 
$str
Î,Î, 
,
Î,Î, 
$str
Ï,Ï, 
,
Ï,Ï, 
$str
Ğ,Ğ, 
,
Ğ,Ğ, 
$str
Ñ,Ñ, 
,
Ñ,Ñ, 
$str
Ò,Ò, 
,
Ò,Ò, 
$str
Ó,Ó, 
,
Ó,Ó, 
$str
Ô,Ô, 
,
Ô,Ô, 
$str
Õ,Õ, 
,
Õ,Õ, 
$str
Ö,Ö, 
,
Ö,Ö, 
$str
×,×, 
,
×,×, 
$str
Ø,Ø, 
,
Ø,Ø, 
$str
Ù,Ù, 
,
Ù,Ù, 
$str
Ú,Ú, 
,
Ú,Ú, 
$str
Û,Û, 
,
Û,Û, 
$str
Ü,Ü, 
,
Ü,Ü, 
$str
İ,İ, 
,
İ,İ, 
$str
Ş,Ş, 
,
Ş,Ş, 
$str
ß,ß, 
,
ß,ß, 
$str
à,à, 
,
à,à, 
$str
á,á, 
,
á,á, 
$str
â,â, 
,
â,â, 
$str
ã,ã, 
,
ã,ã, 
$str
ä,ä, 
,
ä,ä, 
$str
å,å, 
,
å,å, 
$str
æ,æ, 
,
æ,æ, 
$str
ç,ç, 
,
ç,ç, 
$str
è,è, 
,
è,è, 
$str
é,é, 
,
é,é, 
$str
ê,ê, 
,
ê,ê, 
$str
ë,ë, 
,
ë,ë, 
$str
ì,ì, 
,
ì,ì, 
$str
í,í, 
,
í,í, 
$str
î,î, 
,
î,î, 
$str
ï,ï, 
,
ï,ï, 
$str
ğ,ğ, 
,
ğ,ğ, 
$str
ñ,ñ, 
,
ñ,ñ, 
$str
ò,ò, 
,
ò,ò, 
$str
ó,ó, 
,
ó,ó, 
$str
ô,ô, 
,
ô,ô, 
$str
õ,õ, 
,
õ,õ, 
$str
ö,ö, 
,
ö,ö, 
$str
÷,÷, 
,
÷,÷, 
$str
ø,ø, 
,
ø,ø, 
$str
ù,ù, 
,
ù,ù, 
$str
ú,ú, 
,
ú,ú, 
$str
û,û, 
,
û,û, 
$str
ü,ü, 
,
ü,ü, 
$str
ı,ı, 
,
ı,ı, 
$str
ş,ş, 
,
ş,ş, 
$str
ÿ,ÿ, 
,
ÿ,ÿ, 
$str
€-€- 
,
€-€- 
$str
-- 
,
-- 
$str
‚-‚- 
,
‚-‚- 
$str
ƒ-ƒ- 
,
ƒ-ƒ- 
$str
„-„- 
,
„-„- 
$str
…-…- 
,
…-…- 
$str
†-†- 
,
†-†- 
$str
‡-‡- 
,
‡-‡- 
$str
ˆ-ˆ- 
,
ˆ-ˆ- 
$str
‰-‰- 
,
‰-‰- 
$str
Š-Š- 
,
Š-Š- 
$str
‹-‹- 
,
‹-‹- 
$str
Œ-Œ- 
,
Œ-Œ- 
$str
-- 
,
-- 
$str
-- 
,
-- 
$str
-- 
,
-- 
$str
-- 
,
-- 
$str
‘-‘- 
,
‘-‘- 
$str
’-’- 
,
’-’- 
$str
“-“- 
,
“-“- 
$str
”-”- 
,
”-”- 
$str
•-•- 
,
•-•- 
$str
–-–- 
,
–-–- 
$str
—-—- 
,
—-—- 
$str
˜-˜- 
,
˜-˜- 
$str
™-™- 
,
™-™- 
$str
š-š- 
,
š-š- 
$str
›-›- 
,
›-›- 
$str
œ-œ- 
,
œ-œ- 
$str
-- 
,
-- 
$str
-- 
,
-- 
$str
Ÿ-Ÿ- 
,
Ÿ-Ÿ- 
$str
 - - 
,
 - - 
$str
¡-¡- 
,
¡-¡- 
$str
¢-¢- 
,
¢-¢- 
$str
£-£- 
,
£-£- 
$str
¤-¤- 
,
¤-¤- 
$str
¥-¥- 
,
¥-¥- 
$str
¦-¦- 
,
¦-¦- 
$str
§-§- 
,
§-§- 
$str
¨-¨- 
,
¨-¨- 
$str
©-©- 
,
©-©- 
$str
ª-ª- 
,
ª-ª- 
$str
«-«- 
,
«-«- 
$str
¬-¬- 
,
¬-¬- 
$str
­-­- 
,
­-­- 
$str
®-®- 
,
®-®- 
$str
¯-¯- 
,
¯-¯- 
$str
°-°- 
,
°-°- 
$str
±-±- 
,
±-±- 
$str
²-²- 
,
²-²- 
$str
³-³- 
,
³-³- 
$str
´-´- 
,
´-´- 
$str
µ-µ- 
,
µ-µ- 
$str
¶-¶- 
,
¶-¶- 
$str
·-·- 
,
·-·- 
$str
¸-¸- 
,
¸-¸- 
$str
¹-¹- 
,
¹-¹- 
$str
º-º- 
,
º-º- 
$str
»-»- 
,
»-»- 
$str
¼-¼- 
,
¼-¼- 
$str
½-½- 
,
½-½- 
$str
¾-¾- 
,
¾-¾- 
$str
¿-¿- 
,
¿-¿- 
$str
À-À- 
,
À-À- 
$str
Á-Á- 
,
Á-Á- 
$str
Â-Â- 
,
Â-Â- 
$str
Ã-Ã- 
,
Ã-Ã- 
$str
Ä-Ä- 
,
Ä-Ä- 
$str
Å-Å- 
,
Å-Å- 
$str
Æ-Æ- 
,
Æ-Æ- 
$str
Ç-Ç- 
,
Ç-Ç- 
$str
È-È- 
,
È-È- 
$str
É-É- 
,
É-É- 
$str
Ê-Ê- 
,
Ê-Ê- 
$str
Ë-Ë- 
,
Ë-Ë- 
$str
Ì-Ì- 
,
Ì-Ì- 
$str
Í-Í- 
,
Í-Í- 
$str
Î-Î- 
,
Î-Î- 
$str
Ï-Ï- 
,
Ï-Ï- 
$str
Ğ-Ğ- 
,
Ğ-Ğ- 
$str
Ñ-Ñ- 
,
Ñ-Ñ- 
$str
Ò-Ò- 
,
Ò-Ò- 
$str
Ó-Ó- 
,
Ó-Ó- 
$str
Ô-Ô- 
,
Ô-Ô- 
$str
Õ-Õ- 
,
Õ-Õ- 
$str
Ö-Ö- 
,
Ö-Ö- 
$str
×-×- 
,
×-×- 
$str
Ø-Ø- 
,
Ø-Ø- 
$str
Ù-Ù- 
,
Ù-Ù- 
$str
Ú-Ú- 
,
Ú-Ú- 
$str
Û-Û- 
,
Û-Û- 
$str
Ü-Ü- 
,
Ü-Ü- 
$str
İ-İ- 
,
İ-İ- 
$str
Ş-Ş- 
,
Ş-Ş- 
$str
ß-ß- 
,
ß-ß- 
$str
à-à- 
,
à-à- 
$str
á-á- 
,
á-á- 
$str
â-â- 
,
â-â- 
$str
ã-ã- 
,
ã-ã- 
$str
ä-ä- 
,
ä-ä- 
$str
å-å- 
,
å-å- 
$str
æ-æ- 
,
æ-æ- 
$str
ç-ç- 
,
ç-ç- 
$str
è-è- 
,
è-è- 
$str
é-é- 
,
é-é- 
$str
ê-ê- 
,
ê-ê- 
$str
ë-ë- 
,
ë-ë- 
$str
ì-ì- 
,
ì-ì- 
$str
í-í- 
,
í-í- 
$str
î-î- 
,
î-î- 
$str
ï-ï- 
,
ï-ï- 
$str
ğ-ğ- 
,
ğ-ğ- 
$str
ñ-ñ- 
,
ñ-ñ- 
$str
ò-ò- 
,
ò-ò- 
$str
ó-ó- 
,
ó-ó- 
$str
ô-ô- 
,
ô-ô- 
$str
õ-õ- 
,
õ-õ- 
$str
ö-ö- 
,
ö-ö- 
$str
÷-÷- 
,
÷-÷- 
$str
ø-ø- 
,
ø-ø- 
$str
ù-ù- 
,
ù-ù- 
$str
ú-ú- 
,
ú-ú- 
$str
û-û- 
,
û-û- 
$str
ü-ü- 
,
ü-ü- 
$str
ı-ı- 
,
ı-ı- 
$str
ş-ş- 
,
ş-ş- 
$str
ÿ-ÿ- 
,
ÿ-ÿ- 
$str
€.€. 
,
€.€. 
$str
.. 
,
.. 
$str
‚.‚. 
,
‚.‚. 
$str
ƒ.ƒ. 
,
ƒ.ƒ. 
$str
„.„. 
,
„.„. 
$str
….…. 
,
….…. 
$str
†.†. 
,
†.†. 
$str
‡.‡. 
,
‡.‡. 
$str
ˆ.ˆ. 
,
ˆ.ˆ. 
$str
‰.‰. 
,
‰.‰. 
$str
Š.Š. 
,
Š.Š. 
$str
‹.‹. 
,
‹.‹. 
$str
Œ.Œ. 
,
Œ.Œ. 
$str
.. 
,
.. 
$str
.. 
,
.. 
$str
.. 
,
.. 
$str
.. 
,
.. 
$str
‘.‘. 
,
‘.‘. 
$str
’.’. 
,
’.’. 
$str
“.“. 
,
“.“. 
$str
”.”. 
,
”.”. 
$str
•.•. 
,
•.•. 
$str
–.–. 
,
–.–. 
$str
—.—. 
,
—.—. 
$str
˜.˜. 
,
˜.˜. 
$str
™.™. 
,
™.™. 
$str
š.š. 
,
š.š. 
$str
›.›. 
,
›.›. 
$str
œ.œ. 
,
œ.œ. 
$str
.. 
,
.. 
$str
.. 
,
.. 
$str
Ÿ.Ÿ. 
,
Ÿ.Ÿ. 
$str
 . . 
,
 . . 
$str
¡.¡. 
,
¡.¡. 
$str
¢.¢. 
,
¢.¢. 
$str
£.£. 
,
£.£. 
$str
¤.¤. 
,
¤.¤. 
$str
¥.¥. 
,
¥.¥. 
$str
¦.¦. 
,
¦.¦. 
$str
§.§. 
,
§.§. 
$str
¨.¨. 
,
¨.¨. 
$str
©.©. 
,
©.©. 
$str
ª.ª. 
,
ª.ª. 
$str
«.«. 
,
«.«. 
$str
¬.¬. 
,
¬.¬. 
$str
­.­. 
,
­.­. 
$str
®.®. 
,
®.®. 
$str
¯.¯. 
,
¯.¯. 
$str
°.°. 
,
°.°. 
$str
±.±. 
,
±.±. 
$str
².². 
,
².². 
$str
³.³. 
,
³.³. 
$str
´.´. 
,
´.´. 
$str
µ.µ. 
,
µ.µ. 
$str
¶.¶. 
,
¶.¶. 
$str
·.·. 
,
·.·. 
$str
¸.¸. 
,
¸.¸. 
$str
¹.¹. 
,
¹.¹. 
$str
º.º. 
,
º.º. 
$str
».». 
,
».». 
$str
¼.¼. 
,
¼.¼. 
$str
½.½. 
,
½.½. 
$str
¾.¾. 
,
¾.¾. 
$str
¿.¿. 
,
¿.¿. 
$str
À.À. 
,
À.À. 
$str
Á.Á. 
,
Á.Á. 
$str
Â.Â. 
,
Â.Â. 
$str
Ã.Ã. 
,
Ã.Ã. 
$str
Ä.Ä. 
,
Ä.Ä. 
$str
Å.Å. 
,
Å.Å. 
$str
Æ.Æ. 
,
Æ.Æ. 
$str
Ç.Ç. 
,
Ç.Ç. 
$str
È.È. 
,
È.È. 
$str
É.É. 
,
É.É. 
$str
Ê.Ê. 
,
Ê.Ê. 
$str
Ë.Ë. 
,
Ë.Ë. 
$str
Ì.Ì. 
,
Ì.Ì. 
$str
Í.Í. 
,
Í.Í. 
$str
Î.Î. 
,
Î.Î. 
$str
Ï.Ï. 
,
Ï.Ï. 
$str
Ğ.Ğ. 
,
Ğ.Ğ. 
$str
Ñ.Ñ. 
,
Ñ.Ñ. 
$str
Ò.Ò. 
,
Ò.Ò. 
$str
Ó.Ó. 
,
Ó.Ó. 
$str
Ô.Ô. 
,
Ô.Ô. 
$str
Õ.Õ. 
,
Õ.Õ. 
$str
Ö.Ö. 
,
Ö.Ö. 
$str
×.×. 
,
×.×. 
$str
Ø.Ø. 
,
Ø.Ø. 
$str
Ù.Ù. 
,
Ù.Ù. 
$str
Ú.Ú. 
,
Ú.Ú. 
$str
Û.Û. 
,
Û.Û. 
$str
Ü.Ü. 
,
Ü.Ü. 
$str
İ.İ. 
,
İ.İ. 
$str
Ş.Ş. 
,
Ş.Ş. 
$str
ß.ß. 
,
ß.ß. 
$str
à.à. 
,
à.à. 
$str
á.á. 
,
á.á. 
$str
â.â. 
,
â.â. 
$str
ã.ã. 
,
ã.ã. 
$str
ä.ä. 
,
ä.ä. 
$str
å.å. 
,
å.å. 
$str
æ.æ. 
,
æ.æ. 
$str
ç.ç. 
,
ç.ç. 
$str
è.è. 
,
è.è. 
$str
é.é. 
,
é.é. 
$str
ê.ê. 
,
ê.ê. 
$str
ë.ë. 
,
ë.ë. 
$str
ì.ì. 
,
ì.ì. 
$str
í.í. 
,
í.í. 
$str
î.î. 
,
î.î. 
$str
ï.ï. 
,
ï.ï. 
$str
ğ.ğ. 
,
ğ.ğ. 
$str
ñ.ñ. 
,
ñ.ñ. 
$str
ò.ò. 
,
ò.ò. 
$str
ó.ó. 
,
ó.ó. 
$str
ô.ô. 
,
ô.ô. 
$str
õ.õ. 
,
õ.õ. 
$str
ö.ö. 
,
ö.ö. 
$str
÷.÷. 
,
÷.÷. 
$str
ø.ø. 
,
ø.ø. 
$str
ù.ù. 
,
ù.ù. 
$str
ú.ú. 
,
ú.ú. 
$str
û.û. 
,
û.û. 
$str
ü.ü. 
,
ü.ü. 
$str
ı.ı. 
,
ı.ı. 
$str
ş.ş. 
,
ş.ş. 
$str
ÿ.ÿ. 
,
ÿ.ÿ. 
$str
€/€/ 
,
€/€/ 
$str
// 
,
// 
$str
‚/‚/ 
,
‚/‚/ 
$str
ƒ/ƒ/ 
,
ƒ/ƒ/ 
$str
„/„/ 
,
„/„/ 
$str
…/…/ 
,
…/…/ 
$str
†/†/ 
,
†/†/ 
$str
‡/‡/ 
,
‡/‡/ 
$str
ˆ/ˆ/ 
,
ˆ/ˆ/ 
$str
‰/‰/ 
,
‰/‰/ 
$str
Š/Š/ 
,
Š/Š/ 
$str
‹/‹/ 
,
‹/‹/ 
$str
Œ/Œ/ 
,
Œ/Œ/ 
$str
// 
,
// 
$str
// 
,
// 
$str
// 
,
// 
$str
// 
,
// 
$str
‘/‘/ 
,
‘/‘/ 
$str
’/’/ 
,
’/’/ 
$str
“/“/ 
,
“/“/ 
$str
”/”/ 
,
”/”/ 
$str
•/•/ 
,
•/•/ 
$str
–/–/ 
,
–/–/ 
$str
—/—/ 
,
—/—/ 
$str
˜/˜/ 
,
˜/˜/ 
$str
™/™/ 
,
™/™/ 
$str
š/š/ 
,
š/š/ 
$str
›/›/ 
,
›/›/ 
$str
œ/œ/ 
,
œ/œ/ 
$str
// 
,
// 
$str
// 
,
// 
$str
Ÿ/Ÿ/ 
,
Ÿ/Ÿ/ 
$str
 / / 
,
 / / 
$str
¡/¡/ 
,
¡/¡/ 
$str
¢/¢/ 
,
¢/¢/ 
$str
£/£/ 
,
£/£/ 
$str
¤/¤/ 
,
¤/¤/ 
$str
¥/¥/ 
,
¥/¥/ 
$str
¦/¦/ 
,
¦/¦/ 
$str
§/§/ 
,
§/§/ 
$str
¨/¨/ 
,
¨/¨/ 
$str
©/©/ 
,
©/©/ 
$str
ª/ª/ 
,
ª/ª/ 
$str
«/«/ 
,
«/«/ 
$str
¬/¬/ 
,
¬/¬/ 
$str
­/­/ 
,
­/­/ 
$str
®/®/ 
,
®/®/ 
$str
¯/¯/ 
,
¯/¯/ 
$str
°/°/ 
,
°/°/ 
$str
±/±/ 
,
±/±/ 
$str
²/²/ 
,
²/²/ 
$str
³/³/ 
,
³/³/ 
$str
´/´/ 
,
´/´/ 
$str
µ/µ/ 
,
µ/µ/ 
$str
¶/¶/ 
,
¶/¶/ 
$str
·/·/ 
,
·/·/ 
$str
¸/¸/ 
,
¸/¸/ 
$str
¹/¹/ 
,
¹/¹/ 
$str
º/º/ 
,
º/º/ 
$str
»/»/ 
,
»/»/ 
$str
¼/¼/ 
,
¼/¼/ 
$str
½/½/ 
,
½/½/ 
$str
¾/¾/ 
,
¾/¾/ 
$str
¿/¿/ 
,
¿/¿/ 
$str
À/À/ 
,
À/À/ 
$str
Á/Á/ 
,
Á/Á/ 
$str
Â/Â/ 
,
Â/Â/ 
$str
Ã/Ã/ 
,
Ã/Ã/ 
$str
Ä/Ä/ 
,
Ä/Ä/ 
$str
Å/Å/ 
,
Å/Å/ 
$str
Æ/Æ/ 
,
Æ/Æ/ 
$str
Ç/Ç/ 
,
Ç/Ç/ 
$str
È/È/ 
,
È/È/ 
$str
É/É/ 
,
É/É/ 
$str
Ê/Ê/ 
,
Ê/Ê/ 
$str
Ë/Ë/ 
,
Ë/Ë/ 
$str
Ì/Ì/ 
,
Ì/Ì/ 
$str
Í/Í/ 
,
Í/Í/ 
$str
Î/Î/ 
,
Î/Î/ 
$str
Ï/Ï/ 
,
Ï/Ï/ 
$str
Ğ/Ğ/ 
,
Ğ/Ğ/ 
$str
Ñ/Ñ/ 
,
Ñ/Ñ/ 
$str
Ò/Ò/ 
,
Ò/Ò/ 
$str
Ó/Ó/ 
,
Ó/Ó/ 
$str
Ô/Ô/ 
,
Ô/Ô/ 
$str
Õ/Õ/ 
,
Õ/Õ/ 
$str
Ö/Ö/ 
,
Ö/Ö/ 
$str
×/×/ 
,
×/×/ 
$str
Ø/Ø/ 
,
Ø/Ø/ 
$str
Ù/Ù/ 
,
Ù/Ù/ 
$str
Ú/Ú/ 
,
Ú/Ú/ 
$str
Û/Û/ 
,
Û/Û/ 
$str
Ü/Ü/ 
,
Ü/Ü/ 
$str
İ/İ/ 
,
İ/İ/ 
$str
Ş/Ş/ 
,
Ş/Ş/ 
$str
ß/ß/ 
,
ß/ß/ 
$str
à/à/ 
,
à/à/ 
$str
á/á/ 
,
á/á/ 
$str
â/â/ 
,
â/â/ 
$str
ã/ã/ 
,
ã/ã/ 
$str
ä/ä/ 
,
ä/ä/ 
$str
å/å/ 
,
å/å/ 
$str
æ/æ/ 
,
æ/æ/ 
$str
ç/ç/ 
,
ç/ç/ 
$str
è/è/ 
,
è/è/ 
$str
é/é/ 
,
é/é/ 
$str
ê/ê/ 
,
ê/ê/ 
$str
ë/ë/ 
,
ë/ë/ 
$str
ì/ì/ 
,
ì/ì/ 
$str
í/í/ 
,
í/í/ 
$str
î/î/ 
,
î/î/ 
$str
ï/ï/ 
,
ï/ï/ 
$str
ğ/ğ/ 
,
ğ/ğ/ 
$str
ñ/ñ/ 
,
ñ/ñ/ 
$str
ò/ò/ 
,
ò/ò/ 
$str
ó/ó/ 
,
ó/ó/ 
$str
ô/ô/ 
,
ô/ô/ 
$str
õ/õ/ 
,
õ/õ/ 
$str
ö/ö/ 
,
ö/ö/ 
$str
÷/÷/ 
,
÷/÷/ 
$str
ø/ø/ 
,
ø/ø/ 
$str
ù/ù/ 
,
ù/ù/ 
$str
ú/ú/ 
,
ú/ú/ 
$str
û/û/ 
,
û/û/ 
$str
ü/ü/ 
,
ü/ü/ 
$str
ı/ı/ 
,
ı/ı/ 
$str
ş/ş/ 
,
ş/ş/ 
$str
ÿ/ÿ/ 
,
ÿ/ÿ/ 
$str
€0€0 
,
€0€0 
$str
00 
,
00 
$str
‚0‚0 
,
‚0‚0 
$str
ƒ0ƒ0 
,
ƒ0ƒ0 
$str
„0„0 
,
„0„0 
$str
…0…0 
,
…0…0 
$str
†0†0 
,
†0†0 
$str
‡0‡0 
,
‡0‡0 
$str
ˆ0ˆ0 
,
ˆ0ˆ0 
$str
‰0‰0 
,
‰0‰0 
$str
Š0Š0 
,
Š0Š0 
$str
‹0‹0 
,
‹0‹0 
$str
Œ0Œ0 
,
Œ0Œ0 
$str
00 
,
00 
$str
00 
,
00 
$str
00 
,
00 
$str
00 
,
00 
$str
‘0‘0 
,
‘0‘0 
$str
’0’0 
,
’0’0 
$str
“0“0 
,
“0“0 
$str
”0”0 
,
”0”0 
$str
•0•0 
,
•0•0 
$str
–0–0 
,
–0–0 
$str
—0—0 
,
—0—0 
$str
˜0˜0 
,
˜0˜0 
$str
™0™0 
,
™0™0 
$str
š0š0 
,
š0š0 
$str
›0›0 
,
›0›0 
$str
œ0œ0 
,
œ0œ0 
$str
00 
,
00 
$str
00 
,
00 
$str
Ÿ0Ÿ0 
,
Ÿ0Ÿ0 
$str
 0 0 
,
 0 0 
$str
¡0¡0 
,
¡0¡0 
$str
¢0¢0 
,
¢0¢0 
$str
£0£0 
,
£0£0 
$str
¤0¤0 
,
¤0¤0 
$str
¥0¥0 
,
¥0¥0 
$str
¦0¦0 
,
¦0¦0 
$str
§0§0 
,
§0§0 
$str
¨0¨0 
,
¨0¨0 
$str
©0©0 
,
©0©0 
$str
ª0ª0 
,
ª0ª0 
$str
«0«0 
,
«0«0 
$str
¬0¬0 
,
¬0¬0 
$str
­0­0 
,
­0­0 
$str
®0®0 
,
®0®0 
$str
¯0¯0 
,
¯0¯0 
$str
°0°0 
,
°0°0 
$str
±0±0 
,
±0±0 
$str
²0²0 
,
²0²0 
$str
³0³0 
,
³0³0 
$str
´0´0 
,
´0´0 
$str
µ0µ0 
,
µ0µ0 
$str
¶0¶0 
,
¶0¶0 
$str
·0·0 
,
·0·0 
$str
¸0¸0 
,
¸0¸0 
$str
¹0¹0 
,
¹0¹0 
$str
º0º0 
,
º0º0 
$str
»0»0 
,
»0»0 
$str
¼0¼0 
,
¼0¼0 
$str
½0½0 
,
½0½0 
$str
¾0¾0 
,
¾0¾0 
$str
¿0¿0 
,
¿0¿0 
$str
À0À0 
,
À0À0 
$str
Á0Á0 
,
Á0Á0 
$str
Â0Â0 
,
Â0Â0 
$str
Ã0Ã0 
,
Ã0Ã0 
$str
Ä0Ä0 
,
Ä0Ä0 
$str
Å0Å0 
,
Å0Å0 
$str
Æ0Æ0 
,
Æ0Æ0 
$str
Ç0Ç0 
,
Ç0Ç0 
$str
È0È0 
,
È0È0 
$str
É0É0 
,
É0É0 
$str
Ê0Ê0 
,
Ê0Ê0 
$str
Ë0Ë0 
,
Ë0Ë0 
$str
Ì0Ì0 
,
Ì0Ì0 
$str
Í0Í0 
,
Í0Í0 
$str
Î0Î0 
,
Î0Î0 
$str
Ï0Ï0 
,
Ï0Ï0 
$str
Ğ0Ğ0 
,
Ğ0Ğ0 
$str
Ñ0Ñ0 
,
Ñ0Ñ0 
$str
Ò0Ò0 
,
Ò0Ò0 
$str
Ó0Ó0 
,
Ó0Ó0 
$str
Ô0Ô0 
,
Ô0Ô0 
$str
Õ0Õ0 
,
Õ0Õ0 
$str
Ö0Ö0 
,
Ö0Ö0 
$str
×0×0 
,
×0×0 
$str
Ø0Ø0 
,
Ø0Ø0 
$str
Ù0Ù0 
,
Ù0Ù0 
$str
Ú0Ú0 
,
Ú0Ú0 
$str
Û0Û0 
,
Û0Û0 
$str
Ü0Ü0 
,
Ü0Ü0 
$str
İ0İ0 
,
İ0İ0 
$str
Ş0Ş0 
,
Ş0Ş0 
$str
ß0ß0 
,
ß0ß0 
$str
à0à0 
,
à0à0 
$str
á0á0 
,
á0á0 
$str
â0â0 
,
â0â0 
$str
ã0ã0 
,
ã0ã0 
$str
ä0ä0 
,
ä0ä0 
$str
å0å0 
,
å0å0 
$str
æ0æ0 
,
æ0æ0 
$str
ç0ç0 
,
ç0ç0 
$str
è0è0 
,
è0è0 
$str
é0é0 
,
é0é0 
$str
ê0ê0 
,
ê0ê0 
$str
ë0ë0 
,
ë0ë0 
$str
ì0ì0 
,
ì0ì0 
$str
í0í0 
,
í0í0 
$str
î0î0 
,
î0î0 
$str
ï0ï0 
,
ï0ï0 
$str
ğ0ğ0 
,
ğ0ğ0 
$str
ñ0ñ0 
,
ñ0ñ0 
$str
ò0ò0 
,
ò0ò0 
$str
ó0ó0 
,
ó0ó0 
$str
ô0ô0 
,
ô0ô0 
$str
õ0õ0 
,
õ0õ0 
$str
ö0ö0 
,
ö0ö0 
$str
÷0÷0 
,
÷0÷0 
$str
ø0ø0 
,
ø0ø0 
$str
ù0ù0 
,
ù0ù0 
$str
ú0ú0 
,
ú0ú0 
$str
û0û0 
,
û0û0 
$str
ü0ü0 
,
ü0ü0 
$str
ı0ı0 
,
ı0ı0 
$str
ş0ş0 
,
ş0ş0 
$str
ÿ0ÿ0 
,
ÿ0ÿ0 
$str
€1€1 
,
€1€1 
$str
11 
,
11 
$str
‚1‚1 
,
‚1‚1 
$str
ƒ1ƒ1 
,
ƒ1ƒ1 
$str
„1„1 
,
„1„1 
$str
…1…1 
,
…1…1 
$str
†1†1 
,
†1†1 
$str
‡1‡1 
,
‡1‡1 
$str
ˆ1ˆ1 
,
ˆ1ˆ1 
$str
‰1‰1 
,
‰1‰1 
$str
Š1Š1 
,
Š1Š1 
$str
‹1‹1 
,
‹1‹1 
$str
Œ1Œ1 
,
Œ1Œ1 
$str
11 
,
11 
$str
11 
,
11 
$str
11 
,
11 
$str
11 
,
11 
$str
‘1‘1 
,
‘1‘1 
$str
’1’1 
,
’1’1 
$str
“1“1 
,
“1“1 
$str
”1”1 
,
”1”1 
$str
•1•1 
,
•1•1 
$str
–1–1 
,
–1–1 
$str
—1—1 
,
—1—1 
$str
˜1˜1 
,
˜1˜1 
$str
™1™1 
,
™1™1 
$str
š1š1 
,
š1š1 
$str
›1›1 
,
›1›1 
$str
œ1œ1 
,
œ1œ1 
$str
11 
,
11 
$str
11 
,
11 
$str
Ÿ1Ÿ1 
,
Ÿ1Ÿ1 
$str
 1 1 
,
 1 1 
$str
¡1¡1 
,
¡1¡1 
$str
¢1¢1 
,
¢1¢1 
$str
£1£1 
,
£1£1 
$str
¤1¤1 
,
¤1¤1 
$str
¥1¥1 
,
¥1¥1 
$str
¦1¦1 
,
¦1¦1 
$str
§1§1 
,
§1§1 
$str
¨1¨1 
,
¨1¨1 
$str
©1©1 
,
©1©1 
$str
ª1ª1 
,
ª1ª1 
$str
«1«1 
,
«1«1 
$str
¬1¬1 
,
¬1¬1 
$str
­1­1 
,
­1­1 
$str
®1®1 
,
®1®1 
$str
¯1¯1 
,
¯1¯1 
$str
°1°1 
,
°1°1 
$str
±1±1 
,
±1±1 
$str
²1²1 
,
²1²1 
$str
³1³1 
,
³1³1 
$str
´1´1 
,
´1´1 
$str
µ1µ1 
,
µ1µ1 
$str
¶1¶1 
,
¶1¶1 
$str
·1·1 
,
·1·1 
$str
¸1¸1 
,
¸1¸1 
$str
¹1¹1 
,
¹1¹1 
$str
º1º1 
,
º1º1 
$str
»1»1 
,
»1»1 
$str
¼1¼1 
,
¼1¼1 
$str
½1½1 
,
½1½1 
$str
¾1¾1 
,
¾1¾1 
$str
¿1¿1 
,
¿1¿1 
$str
À1À1 
,
À1À1 
$str
Á1Á1 
,
Á1Á1 
$str
Â1Â1 
,
Â1Â1 
$str
Ã1Ã1 
,
Ã1Ã1 
$str
Ä1Ä1 
,
Ä1Ä1 
$str
Å1Å1 
,
Å1Å1 
$str
Æ1Æ1 
,
Æ1Æ1 
$str
Ç1Ç1 
,
Ç1Ç1 
$str
È1È1 
,
È1È1 
$str
É1É1 
,
É1É1 
$str
Ê1Ê1 
,
Ê1Ê1 
$str
Ë1Ë1 
,
Ë1Ë1 
$str
Ì1Ì1 
,
Ì1Ì1 
$str
Í1Í1 
,
Í1Í1 
$str
Î1Î1 
,
Î1Î1 
$str
Ï1Ï1 
,
Ï1Ï1 
$str
Ğ1Ğ1 
,
Ğ1Ğ1 
$str
Ñ1Ñ1 
,
Ñ1Ñ1 
$str
Ò1Ò1 
,
Ò1Ò1 
$str
Ó1Ó1 
,
Ó1Ó1 
$str
Ô1Ô1 
,
Ô1Ô1 
$str
Õ1Õ1 
,
Õ1Õ1 
$str
Ö1Ö1 
,
Ö1Ö1 
$str
×1×1 
,
×1×1 
$str
Ø1Ø1 
,
Ø1Ø1 
$str
Ù1Ù1 
,
Ù1Ù1 
$str
Ú1Ú1 
,
Ú1Ú1 
$str
Û1Û1 
,
Û1Û1 
$str
Ü1Ü1 
,
Ü1Ü1 
$str
İ1İ1 
,
İ1İ1 
$str
Ş1Ş1 
,
Ş1Ş1 
$str
ß1ß1 
,
ß1ß1 
$str
à1à1 
,
à1à1 
$str
á1á1 
,
á1á1 
$str
â1â1 
,
â1â1 
$str
ã1ã1 
,
ã1ã1 
$str
ä1ä1 
,
ä1ä1 
$str
å1å1 
,
å1å1 
$str
æ1æ1 
,
æ1æ1 
$str
ç1ç1 
,
ç1ç1 
$str
è1è1 
,
è1è1 
$str
é1é1 
,
é1é1 
$str
ê1ê1 
,
ê1ê1 
$str
ë1ë1 
,
ë1ë1 
$str
ì1ì1 
,
ì1ì1 
$str
í1í1 
,
í1í1 
$str
î1î1 
,
î1î1 
$str
ï1ï1 
,
ï1ï1 
$str
ğ1ğ1 
,
ğ1ğ1 
$str
ñ1ñ1 
,
ñ1ñ1 
$str
ò1ò1 
,
ò1ò1 
$str
ó1ó1 
,
ó1ó1 
$str
ô1ô1 
,
ô1ô1 
$str
õ1õ1 
,
õ1õ1 
$str
ö1ö1 
,
ö1ö1 
$str
÷1÷1 
,
÷1÷1 
$str
ø1ø1 
,
ø1ø1 
$str
ù1ù1 
,
ù1ù1 
$str
ú1ú1 
,
ú1ú1 
$str
û1û1 
,
û1û1 
$str
ü1ü1 
,
ü1ü1 
$str
ı1ı1 
,
ı1ı1 
$str
ş1ş1 
,
ş1ş1 
$str
ÿ1ÿ1 
,
ÿ1ÿ1 
$str
€2€2 
,
€2€2 
$str
22 
,
22 
$str
‚2‚2 
,
‚2‚2 
$str
ƒ2ƒ2 
,
ƒ2ƒ2 
$str
„2„2 
,
„2„2 
$str
…2…2 
,
…2…2 
$str
†2†2 
,
†2†2 
$str
‡2‡2 
,
‡2‡2 
$str
ˆ2ˆ2 
,
ˆ2ˆ2 
$str
‰2‰2 
,
‰2‰2 
$str
Š2Š2 
,
Š2Š2 
$str
‹2‹2 
,
‹2‹2 
$str
Œ2Œ2 
,
Œ2Œ2 
$str
22 
,
22 
$str
22 
,
22 
$str
22 
,
22 
$str
22 
,
22 
$str
‘2‘2 
,
‘2‘2 
$str
’2’2 
,
’2’2 
$str
“2“2 
,
“2“2 
$str
”2”2 
,
”2”2 
$str
•2•2 
,
•2•2 
$str
–2–2 
,
–2–2 
$str
—2—2 
,
—2—2 
$str
˜2˜2 
,
˜2˜2 
$str
™2™2 
,
™2™2 
$str
š2š2 
,
š2š2 
$str
›2›2 
,
›2›2 
$str
œ2œ2 
,
œ2œ2 
$str
22 
,
22 
$str
22 
,
22 
$str
Ÿ2Ÿ2 
,
Ÿ2Ÿ2 
$str
 2 2 
,
 2 2 
$str
¡2¡2 
,
¡2¡2 
$str
¢2¢2 
,
¢2¢2 
$str
£2£2 
,
£2£2 
$str
¤2¤2 
,
¤2¤2 
$str
¥2¥2 
,
¥2¥2 
$str
¦2¦2 
,
¦2¦2 
$str
§2§2 
,
§2§2 
$str
¨2¨2 
,
¨2¨2 
$str
©2©2 
,
©2©2 
$str
ª2ª2 
,
ª2ª2 
$str
«2«2 
,
«2«2 
$str
¬2¬2 
,
¬2¬2 
$str
­2­2 
,
­2­2 
$str
®2®2 
,
®2®2 
$str
¯2¯2 
,
¯2¯2 
$str
°2°2 
,
°2°2 
$str
±2±2 
,
±2±2 
$str
²2²2 
,
²2²2 
$str
³2³2 
,
³2³2 
$str
´2´2 
,
´2´2 
$str
µ2µ2 
,
µ2µ2 
$str
¶2¶2 
,
¶2¶2 
$str
·2·2 
,
·2·2 
$str
¸2¸2 
,
¸2¸2 
$str
¹2¹2 
,
¹2¹2 
$str
º2º2 
,
º2º2 
$str
»2»2 
,
»2»2 
$str
¼2¼2 
,
¼2¼2 
$str
½2½2 
,
½2½2 
$str
¾2¾2 
,
¾2¾2 
$str
¿2¿2 
,
¿2¿2 
$str
À2À2 
,
À2À2 
$str
Á2Á2 
,
Á2Á2 
$str
Â2Â2 
,
Â2Â2 
$str
Ã2Ã2 
,
Ã2Ã2 
$str
Ä2Ä2 
,
Ä2Ä2 
$str
Å2Å2 
,
Å2Å2 
$str
Æ2Æ2 
,
Æ2Æ2 
$str
Ç2Ç2 
,
Ç2Ç2 
$str
È2È2 
,
È2È2 
$str
É2É2 
,
É2É2 
$str
Ê2Ê2 
,
Ê2Ê2 
$str
Ë2Ë2 
,
Ë2Ë2 
$str
Ì2Ì2 
,
Ì2Ì2 
$str
Í2Í2 
,
Í2Í2 
$str
Î2Î2 
,
Î2Î2 
$str
Ï2Ï2 
,
Ï2Ï2 
$str
Ğ2Ğ2 
,
Ğ2Ğ2 
$str
Ñ2Ñ2 
,
Ñ2Ñ2 
$str
Ò2Ò2 
,
Ò2Ò2 
$str
Ó2Ó2 
,
Ó2Ó2 
$str
Ô2Ô2 
,
Ô2Ô2 
$str
Õ2Õ2 
,
Õ2Õ2 
$str
Ö2Ö2 
,
Ö2Ö2 
$str
×2×2 
,
×2×2 
$str
Ø2Ø2 
,
Ø2Ø2 
$str
Ù2Ù2 
,
Ù2Ù2 
$str
Ú2Ú2 
,
Ú2Ú2 
$str
Û2Û2 
,
Û2Û2 
$str
Ü2Ü2 
,
Ü2Ü2 
$str
İ2İ2 
,
İ2İ2 
$str
Ş2Ş2 
,
Ş2Ş2 
$str
ß2ß2 
,
ß2ß2 
$str
à2à2 
,
à2à2 
$str
á2á2 
,
á2á2 
$str
â2â2 
,
â2â2 
$str
ã2ã2 
,
ã2ã2 
$str
ä2ä2 
,
ä2ä2 
$str
å2å2 
,
å2å2 
$str
æ2æ2 
,
æ2æ2 
$str
ç2ç2 
,
ç2ç2 
$str
è2è2 
,
è2è2 
$str
é2é2 
,
é2é2 
$str
ê2ê2 
,
ê2ê2 
$str
ë2ë2 
,
ë2ë2 
$str
ì2ì2 
,
ì2ì2 
$str
í2í2 
,
í2í2 
$str
î2î2 
,
î2î2 
$str
ï2ï2 
,
ï2ï2 
$str
ğ2ğ2 
,
ğ2ğ2 
$str
ñ2ñ2 
,
ñ2ñ2 
$str
ò2ò2 
,
ò2ò2 
$str
ó2ó2 
,
ó2ó2 
$str
ô2ô2 
,
ô2ô2 
$str
õ2õ2 
,
õ2õ2 
$str
ö2ö2 
,
ö2ö2 
$str
÷2÷2 
,
÷2÷2 
$str
ø2ø2 
,
ø2ø2 
$str
ù2ù2 
,
ù2ù2 
$str
ú2ú2 
,
ú2ú2 
$str
û2û2 
,
û2û2 
$str
ü2ü2 
,
ü2ü2 
$str
ı2ı2 
,
ı2ı2 
$str
ş2ş2 
,
ş2ş2 
$str
ÿ2ÿ2 
,
ÿ2ÿ2 
$str
€3€3 
,
€3€3 
$str
33 
,
33 
$str
‚3‚3 
,
‚3‚3 
$str
ƒ3ƒ3 
,
ƒ3ƒ3 
$str
„3„3 
,
„3„3 
$str
…3…3 
,
…3…3 
$str
†3†3 
,
†3†3 
$str
‡3‡3 
,
‡3‡3 
$str
ˆ3ˆ3 
,
ˆ3ˆ3 
$str
‰3‰3 
,
‰3‰3 
$str
Š3Š3 
,
Š3Š3 
$str
‹3‹3 
,
‹3‹3 
$str
Œ3Œ3 
,
Œ3Œ3 
$str
33 
,
33 
$str
33 
,
33 
$str
33 
,
33 
$str
33 
,
33 
$str
‘3‘3 
,
‘3‘3 
$str
’3’3 
,
’3’3 
$str
“3“3 
,
“3“3 
$str
”3”3 
,
”3”3 
$str
•3•3 
,
•3•3 
$str
–3–3 
,
–3–3 
$str
—3—3 
,
—3—3 
$str
˜3˜3 
,
˜3˜3 
$str
™3™3 
,
™3™3 
$str
š3š3 
,
š3š3 
$str
›3›3 
,
›3›3 
$str
œ3œ3 
,
œ3œ3 
$str
33 
,
33 
$str
33 
,
33 
$str
Ÿ3Ÿ3 
,
Ÿ3Ÿ3 
$str
 3 3 
,
 3 3 
$str
¡3¡3 
,
¡3¡3 
$str
¢3¢3 
,
¢3¢3 
$str
£3£3 
,
£3£3 
$str
¤3¤3 
,
¤3¤3 
$str
¥3¥3 
,
¥3¥3 
$str
¦3¦3 
,
¦3¦3 
$str
§3§3 
,
§3§3 
$str
¨3¨3 
,
¨3¨3 
$str
©3©3 
,
©3©3 
$str
ª3ª3 
,
ª3ª3 
$str
«3«3 
,
«3«3 
$str
¬3¬3 
,
¬3¬3 
$str
­3­3 
,
­3­3 
$str
®3®3 
,
®3®3 
$str
¯3¯3 
,
¯3¯3 
$str
°3°3 
,
°3°3 
$str
±3±3 
,
±3±3 
$str
²3²3 
,
²3²3 
$str
³3³3 
,
³3³3 
$str
´3´3 
,
´3´3 
$str
µ3µ3 
,
µ3µ3 
$str
¶3¶3 
,
¶3¶3 
$str
·3·3 
,
·3·3 
$str
¸3¸3 
,
¸3¸3 
$str
¹3¹3 
,
¹3¹3 
$str
º3º3 
,
º3º3 
$str
»3»3 
,
»3»3 
$str
¼3¼3 
,
¼3¼3 
$str
½3½3 
,
½3½3 
$str
¾3¾3 
,
¾3¾3 
$str
¿3¿3 
,
¿3¿3 
$str
À3À3 
,
À3À3 
$str
Á3Á3 
,
Á3Á3 
$str
Â3Â3 
,
Â3Â3 
$str
Ã3Ã3 
,
Ã3Ã3 
$str
Ä3Ä3 
,
Ä3Ä3 
$str
Å3Å3 
,
Å3Å3 
$str
Æ3Æ3 
,
Æ3Æ3 
$str
Ç3Ç3 
,
Ç3Ç3 
$str
È3È3 
,
È3È3 
$str
É3É3 
,
É3É3 
$str
Ê3Ê3 
,
Ê3Ê3 
$str
Ë3Ë3 
,
Ë3Ë3 
$str
Ì3Ì3 
,
Ì3Ì3 
$str
Í3Í3 
,
Í3Í3 
$str
Î3Î3 
,
Î3Î3 
$str
Ï3Ï3 
,
Ï3Ï3 
$str
Ğ3Ğ3 
,
Ğ3Ğ3 
$str
Ñ3Ñ3 
,
Ñ3Ñ3 
$str
Ò3Ò3 
,
Ò3Ò3 
$str
Ó3Ó3 
,
Ó3Ó3 
$str
Ô3Ô3 
,
Ô3Ô3 
$str
Õ3Õ3 
,
Õ3Õ3 
$str
Ö3Ö3 
,
Ö3Ö3 
$str
×3×3 
,
×3×3 
$str
Ø3Ø3 
,
Ø3Ø3 
$str
Ù3Ù3 
,
Ù3Ù3 
$str
Ú3Ú3 
,
Ú3Ú3 
$str
Û3Û3 
,
Û3Û3 
$str
Ü3Ü3 
,
Ü3Ü3 
$str
İ3İ3 
,
İ3İ3 
$str
Ş3Ş3 
,
Ş3Ş3 
$str
ß3ß3 
,
ß3ß3 
$str
à3à3 
,
à3à3 
$str
á3á3 
,
á3á3 
$str
â3â3 
,
â3â3 
$str
ã3ã3 
,
ã3ã3 
$str
ä3ä3 
,
ä3ä3 
$str
å3å3 
,
å3å3 
$str
æ3æ3 
,
æ3æ3 
$str
ç3ç3 
,
ç3ç3 
$str
è3è3 
,
è3è3 
$str
é3é3 
,
é3é3 
$str
ê3ê3 
,
ê3ê3 
$str
ë3ë3 
,
ë3ë3 
$str
ì3ì3 
,
ì3ì3 
$str
í3í3 
,
í3í3 
$str
î3î3 
,
î3î3 
$str
ï3ï3 
,
ï3ï3 
$str
ğ3ğ3 
,
ğ3ğ3 
$str
ñ3ñ3 
,
ñ3ñ3 
$str
ò3ò3 
,
ò3ò3 
$str
ó3ó3 
,
ó3ó3 
$str
ô3ô3 
,
ô3ô3 
$str
õ3õ3 
,
õ3õ3 
$str
ö3ö3 
,
ö3ö3 
$str
÷3÷3 
,
÷3÷3 
$str
ø3ø3 
,
ø3ø3 
$str
ù3ù3 
,
ù3ù3 
$str
ú3ú3 
,
ú3ú3 
$str
û3û3 
,
û3û3 
$str
ü3ü3 
,
ü3ü3 
$str
ı3ı3 
,
ı3ı3 
$str
ş3ş3 
,
ş3ş3 
$str
ÿ3ÿ3 
,
ÿ3ÿ3 
$str
€4€4 
,
€4€4 
$str
44 
,
44 
$str
‚4‚4 
,
‚4‚4 
$str
ƒ4ƒ4 
,
ƒ4ƒ4 
$str
„4„4 
,
„4„4 
$str
…4…4 
,
…4…4 
$str
†4†4 
,
†4†4 
$str
‡4‡4 
,
‡4‡4 
$str
ˆ4ˆ4 
,
ˆ4ˆ4 
$str
‰4‰4 
,
‰4‰4 
$str
Š4Š4 
,
Š4Š4 
$str
‹4‹4 
,
‹4‹4 
$str
Œ4Œ4 
,
Œ4Œ4 
$str
44 
,
44 
$str
44 
,
44 
$str
44 
,
44 
$str
44 
,
44 
$str
‘4‘4 
,
‘4‘4 
$str
’4’4 
,
’4’4 
$str
“4“4 
,
“4“4 
$str
”4”4 
,
”4”4 
$str
•4•4 
,
•4•4 
$str
–4–4 
,
–4–4 
$str
—4—4 
,
—4—4 
$str
˜4˜4 
,
˜4˜4 
$str
™4™4 
,
™4™4 
$str
š4š4 
,
š4š4 
$str
›4›4 
,
›4›4 
$str
œ4œ4 
,
œ4œ4 
$str
44 
,
44 
$str
44 
,
44 
$str
Ÿ4Ÿ4 
,
Ÿ4Ÿ4 
$str
 4 4 
,
 4 4 
$str
¡4¡4 
,
¡4¡4 
$str
¢4¢4 
,
¢4¢4 
$str
£4£4 
,
£4£4 
$str
¤4¤4 
,
¤4¤4 
$str
¥4¥4 
,
¥4¥4 
$str
¦4¦4 
,
¦4¦4 
$str
§4§4 
,
§4§4 
$str
¨4¨4 
,
¨4¨4 
$str
©4©4 
,
©4©4 
$str
ª4ª4 
,
ª4ª4 
$str
«4«4 
,
«4«4 
$str
¬4¬4 
,
¬4¬4 
$str
­4­4 
,
­4­4 
$str
®4®4 
,
®4®4 
$str
¯4¯4 
,
¯4¯4 
$str
°4°4 
,
°4°4 
$str
±4±4 
,
±4±4 
$str
²4²4 
,
²4²4 
$str
³4³4 
,
³4³4 
$str
´4´4 
,
´4´4 
$str
µ4µ4 
,
µ4µ4 
$str
¶4¶4 
,
¶4¶4 
$str
·4·4 
,
·4·4 
$str
¸4¸4 
,
¸4¸4 
$str
¹4¹4 
,
¹4¹4 
$str
º4º4 
,
º4º4 
$str
»4»4 
,
»4»4 
$str
¼4¼4 
,
¼4¼4 
$str
½4½4 
,
½4½4 
$str
¾4¾4 
,
¾4¾4 
$str
¿4¿4 
,
¿4¿4 
$str
À4À4 
,
À4À4 
$str
Á4Á4 
,
Á4Á4 
$str
Â4Â4 
,
Â4Â4 
$str
Ã4Ã4 
,
Ã4Ã4 
$str
Ä4Ä4 
,
Ä4Ä4 
$str
Å4Å4 
,
Å4Å4 
$str
Æ4Æ4 
,
Æ4Æ4 
$str
Ç4Ç4 
,
Ç4Ç4 
$str
È4È4 
,
È4È4 
$str
É4É4 
,
É4É4 
$str
Ê4Ê4 
,
Ê4Ê4 
$str
Ë4Ë4 
,
Ë4Ë4 
$str
Ì4Ì4 
,
Ì4Ì4 
$str
Í4Í4 
,
Í4Í4 
$str
Î4Î4 
,
Î4Î4 
$str
Ï4Ï4 
,
Ï4Ï4 
$str
Ğ4Ğ4 
,
Ğ4Ğ4 
$str
Ñ4Ñ4 
,
Ñ4Ñ4 
$str
Ò4Ò4 
,
Ò4Ò4 
$str
Ó4Ó4 
,
Ó4Ó4 
$str
Ô4Ô4 
,
Ô4Ô4 
$str
Õ4Õ4 
,
Õ4Õ4 
$str
Ö4Ö4 
,
Ö4Ö4 
$str
×4×4 
,
×4×4 
$str
Ø4Ø4 
,
Ø4Ø4 
$str
Ù4Ù4 
,
Ù4Ù4 
$str
Ú4Ú4 
,
Ú4Ú4 
$str
Û4Û4 
,
Û4Û4 
$str
Ü4Ü4 
,
Ü4Ü4 
$str
İ4İ4 
,
İ4İ4 
$str
Ş4Ş4 
,
Ş4Ş4 
$str
ß4ß4 
,
ß4ß4 
$str
à4à4 
,
à4à4 
$str
á4á4 
,
á4á4 
$str
â4â4 
,
â4â4 
$str
ã4ã4 
,
ã4ã4 
$str
ä4ä4 
,
ä4ä4 
$str
å4å4 
,
å4å4 
$str
æ4æ4 
,
æ4æ4 
$str
ç4ç4 
,
ç4ç4 
$str
è4è4 
,
è4è4 
$str
é4é4 
,
é4é4 
$str
ê4ê4 
,
ê4ê4 
$str
ë4ë4 
,
ë4ë4 
$str
ì4ì4 
,
ì4ì4 
$str
í4í4 
,
í4í4 
$str
î4î4 
,
î4î4 
$str
ï4ï4 
,
ï4ï4 
$str
ğ4ğ4 
,
ğ4ğ4 
$str
ñ4ñ4 
,
ñ4ñ4 
$str
ò4ò4 
,
ò4ò4 
$str
ó4ó4 
,
ó4ó4 
$str
ô4ô4 
,
ô4ô4 
$str
õ4õ4 
,
õ4õ4 
$str
ö4ö4 
,
ö4ö4 
$str
÷4÷4 
,
÷4÷4 
$str
ø4ø4 
,
ø4ø4 
$str
ù4ù4 
,
ù4ù4 
$str
ú4ú4 
,
ú4ú4 
$str
û4û4 
,
û4û4 
$str
ü4ü4 
,
ü4ü4 
$str
ı4ı4 
,
ı4ı4 
$str
ş4ş4 
,
ş4ş4 
$str
ÿ4ÿ4 
,
ÿ4ÿ4 
$str
€5€5 
,
€5€5 
$str
55 
,
55 
$str
‚5‚5 
,
‚5‚5 
$str
ƒ5ƒ5 
,
ƒ5ƒ5 
$str
„5„5 
,
„5„5 
$str
…5…5 
,
…5…5 
$str
†5†5 
,
†5†5 
$str
‡5‡5 
,
‡5‡5 
$str
ˆ5ˆ5 
,
ˆ5ˆ5 
$str
‰5‰5 
,
‰5‰5 
$str
Š5Š5 
,
Š5Š5 
$str
‹5‹5 
,
‹5‹5 
$str
Œ5Œ5 
,
Œ5Œ5 
$str
55 
,
55 
$str
55 
,
55 
$str
55 
,
55 
$str
55 
,
55 
$str
‘5‘5 
,
‘5‘5 
$str
’5’5 
,
’5’5 
$str
“5“5 
,
“5“5 
$str
”5”5 
,
”5”5 
$str
•5•5 
,
•5•5 
$str
–5–5 
,
–5–5 
$str
—5—5 
,
—5—5 
$str
˜5˜5 
,
˜5˜5 
$str
™5™5 
,
™5™5 
$str
š5š5 
,
š5š5 
$str
›5›5 
,
›5›5 
$str
œ5œ5 
,
œ5œ5 
$str
55 
,
55 
$str
55 
,
55 
$str
Ÿ5Ÿ5 
,
Ÿ5Ÿ5 
$str
 5 5 
,
 5 5 
$str
¡5¡5 
,
¡5¡5 
$str
¢5¢5 
,
¢5¢5 
$str
£5£5 
,
£5£5 
$str
¤5¤5 
,
¤5¤5 
$str
¥5¥5 
,
¥5¥5 
$str
¦5¦5 
,
¦5¦5 
$str
§5§5 
,
§5§5 
$str
¨5¨5 
,
¨5¨5 
$str
©5©5 
,
©5©5 
$str
ª5ª5 
,
ª5ª5 
$str
«5«5 
,
«5«5 
$str
¬5¬5 
,
¬5¬5 
$str
­5­5 
,
­5­5 
$str
®5®5 
,
®5®5 
$str
¯5¯5 
,
¯5¯5 
$str
°5°5 
,
°5°5 
$str
±5±5 
,
±5±5 
$str
²5²5 
,
²5²5 
$str
³5³5 
,
³5³5 
$str
´5´5 
,
´5´5 
$str
µ5µ5 
,
µ5µ5 
$str
¶5¶5 
,
¶5¶5 
$str
·5·5 
,
·5·5 
$str
¸5¸5 
,
¸5¸5 
$str
¹5¹5 
,
¹5¹5 
$str
º5º5 
,
º5º5 
$str
»5»5 
,
»5»5 
$str
¼5¼5 
,
¼5¼5 
$str
½5½5 
,
½5½5 
$str
¾5¾5 
,
¾5¾5 
$str
¿5¿5 
,
¿5¿5 
$str
À5À5 
,
À5À5 
$str
Á5Á5 
,
Á5Á5 
$str
Â5Â5 
,
Â5Â5 
$str
Ã5Ã5 
,
Ã5Ã5 
$str
Ä5Ä5 
,
Ä5Ä5 
$str
Å5Å5 
,
Å5Å5 
$str
Æ5Æ5 
,
Æ5Æ5 
$str
Ç5Ç5 
,
Ç5Ç5 
$str
È5È5 
,
È5È5 
$str
É5É5 
,
É5É5 
$str
Ê5Ê5 
,
Ê5Ê5 
$str
Ë5Ë5 
,
Ë5Ë5 
$str
Ì5Ì5 
,
Ì5Ì5 
$str
Í5Í5 
,
Í5Í5 
$str
Î5Î5 
,
Î5Î5 
$str
Ï5Ï5 
,
Ï5Ï5 
$str
Ğ5Ğ5 
,
Ğ5Ğ5 
$str
Ñ5Ñ5 
,
Ñ5Ñ5 
$str
Ò5Ò5 
,
Ò5Ò5 
$str
Ó5Ó5 
,
Ó5Ó5 
$str
Ô5Ô5 
,
Ô5Ô5 
$str
Õ5Õ5 
,
Õ5Õ5 
$str
Ö5Ö5 
,
Ö5Ö5 
$str
×5×5 
,
×5×5 
$str
Ø5Ø5 
,
Ø5Ø5 
$str
Ù5Ù5 
,
Ù5Ù5 
$str
Ú5Ú5 
,
Ú5Ú5 
$str
Û5Û5 
,
Û5Û5 
$str
Ü5Ü5 
,
Ü5Ü5 
$str
İ5İ5 
,
İ5İ5 
$str
Ş5Ş5 
,
Ş5Ş5 
$str
ß5ß5 
,
ß5ß5 
$str
à5à5 
,
à5à5 
$str
á5á5 
,
á5á5 
$str
â5â5 
,
â5â5 
$str
ã5ã5 
,
ã5ã5 
$str
ä5ä5 
,
ä5ä5 
$str
å5å5 
,
å5å5 
$str
æ5æ5 
,
æ5æ5 
$str
ç5ç5 
,
ç5ç5 
$str
è5è5 
,
è5è5 
$str
é5é5 
,
é5é5 
$str
ê5ê5 
,
ê5ê5 
$str
ë5ë5 
,
ë5ë5 
$str
ì5ì5 
,
ì5ì5 
$str
í5í5 
,
í5í5 
$str
î5î5 
,
î5î5 
$str
ï5ï5 
,
ï5ï5 
$str
ğ5ğ5 
,
ğ5ğ5 
$str
ñ5ñ5 
,
ñ5ñ5 
$str
ò5ò5 
,
ò5ò5 
$str
ó5ó5 
,
ó5ó5 
$str
ô5ô5 
,
ô5ô5 
$str
õ5õ5 
,
õ5õ5 
$str
ö5ö5 
,
ö5ö5 
$str
÷5÷5 
,
÷5÷5 
$str
ø5ø5 
,
ø5ø5 
$str
ù5ù5 
,
ù5ù5 
$str
ú5ú5 
,
ú5ú5 
$str
û5û5 
,
û5û5 
$str
ü5ü5 
,
ü5ü5 
$str
ı5ı5 
,
ı5ı5 
$str
ş5ş5 
,
ş5ş5 
$str
ÿ5ÿ5 
,
ÿ5ÿ5 
$str
€6€6 
,
€6€6 
$str
66 
,
66 
$str
‚6‚6 
,
‚6‚6 
$str
ƒ6ƒ6 
,
ƒ6ƒ6 
$str
„6„6 
,
„6„6 
$str
…6…6 
,
…6…6 
$str
†6†6 
,
†6†6 
$str
‡6‡6 
,
‡6‡6 
$str
ˆ6ˆ6 
,
ˆ6ˆ6 
$str
‰6‰6 
,
‰6‰6 
$str
Š6Š6 
,
Š6Š6 
$str
‹6‹6 
,
‹6‹6 
$str
Œ6Œ6 
,
Œ6Œ6 
$str
66 
,
66 
$str
66 
,
66 
$str
66 
,
66 
$str
66 
,
66 
$str
‘6‘6 
,
‘6‘6 
$str
’6’6 
,
’6’6 
$str
“6“6 
,
“6“6 
$str
”6”6 
,
”6”6 
$str
•6•6 
,
•6•6 
$str
–6–6 
,
–6–6 
$str
—6—6 
,
—6—6 
$str
˜6˜6 
,
˜6˜6 
$str
™6™6 
,
™6™6 
$str
š6š6 
,
š6š6 
$str
›6›6 
,
›6›6 
$str
œ6œ6 
,
œ6œ6 
$str
66 
,
66 
$str
66 
,
66 
$str
Ÿ6Ÿ6 
,
Ÿ6Ÿ6 
$str
 6 6 
,
 6 6 
$str
¡6¡6 
,
¡6¡6 
$str
¢6¢6 
,
¢6¢6 
$str
£6£6 
,
£6£6 
$str
¤6¤6 
,
¤6¤6 
$str
¥6¥6 
,
¥6¥6 
$str
¦6¦6 
,
¦6¦6 
$str
§6§6 
,
§6§6 
$str
¨6¨6 
,
¨6¨6 
$str
©6©6 
,
©6©6 
$str
ª6ª6 
,
ª6ª6 
$str
«6«6 
,
«6«6 
$str
¬6¬6 
,
¬6¬6 
$str
­6­6 
,
­6­6 
$str
®6®6 
,
®6®6 
$str
¯6¯6 
,
¯6¯6 
$str
°6°6 
,
°6°6 
$str
±6±6 
,
±6±6 
$str
²6²6 
,
²6²6 
$str
³6³6 
,
³6³6 
$str
´6´6 
,
´6´6 
$str
µ6µ6 
,
µ6µ6 
$str
¶6¶6 
,
¶6¶6 
$str
·6·6 
,
·6·6 
$str
¸6¸6 
,
¸6¸6 
$str
¹6¹6 
,
¹6¹6 
$str
º6º6 
,
º6º6 
$str
»6»6 
,
»6»6 
$str
¼6¼6 
,
¼6¼6 
$str
½6½6 
,
½6½6 
$str
¾6¾6 
,
¾6¾6 
$str
¿6¿6 
,
¿6¿6 
$str
À6À6 
,
À6À6 
$str
Á6Á6 
,
Á6Á6 
$str
Â6Â6 
,
Â6Â6 
$str
Ã6Ã6 
,
Ã6Ã6 
$str
Ä6Ä6 
,
Ä6Ä6 
$str
Å6Å6 
,
Å6Å6 
$str
Æ6Æ6 
,
Æ6Æ6 
$str
Ç6Ç6 
,
Ç6Ç6 
$str
È6È6 
,
È6È6 
$str
É6É6 
,
É6É6 
$str
Ê6Ê6 
,
Ê6Ê6 
$str
Ë6Ë6 
,
Ë6Ë6 
$str
Ì6Ì6 
,
Ì6Ì6 
$str
Í6Í6 
,
Í6Í6 
$str
Î6Î6 
,
Î6Î6 
$str
Ï6Ï6 
,
Ï6Ï6 
$str
Ğ6Ğ6 
,
Ğ6Ğ6 
$str
Ñ6Ñ6 
,
Ñ6Ñ6 
$str
Ò6Ò6 
,
Ò6Ò6 
$str
Ó6Ó6 
,
Ó6Ó6 
$str
Ô6Ô6 
,
Ô6Ô6 
$str
Õ6Õ6 
,
Õ6Õ6 
$str
Ö6Ö6 
,
Ö6Ö6 
$str
×6×6 
,
×6×6 
$str
Ø6Ø6 
,
Ø6Ø6 
$str
Ù6Ù6 
,
Ù6Ù6 
$str
Ú6Ú6 
,
Ú6Ú6 
$str
Û6Û6 
,
Û6Û6 
$str
Ü6Ü6 
,
Ü6Ü6 
$str
İ6İ6 
,
İ6İ6 
$str
Ş6Ş6 
,
Ş6Ş6 
$str
ß6ß6 
,
ß6ß6 
$str
à6à6 
,
à6à6 
$str
á6á6 
,
á6á6 
$str
â6â6 
,
â6â6 
$str
ã6ã6 
,
ã6ã6 
$str
ä6ä6 
,
ä6ä6 
$str
å6å6 
,
å6å6 
$str
æ6æ6 
,
æ6æ6 
$str
ç6ç6 
,
ç6ç6 
$str
è6è6 
,
è6è6 
$str
é6é6 
,
é6é6 
$str
ê6ê6 
,
ê6ê6 
$str
ë6ë6 
,
ë6ë6 
$str
ì6ì6 
,
ì6ì6 
$str
í6í6 
,
í6í6 
$str
î6î6 
,
î6î6 
$str
ï6ï6 
,
ï6ï6 
$str
ğ6ğ6 
,
ğ6ğ6 
$str
ñ6ñ6 
,
ñ6ñ6 
$str
ò6ò6 
,
ò6ò6 
$str
ó6ó6 
,
ó6ó6 
$str
ô6ô6 
,
ô6ô6 
$str
õ6õ6 
,
õ6õ6 
$str
ö6ö6 
,
ö6ö6 
$str
÷6÷6 
,
÷6÷6 
$str
ø6ø6 
,
ø6ø6 
$str
ù6ù6 
,
ù6ù6 
$str
ú6ú6 
,
ú6ú6 
$str
û6û6 
,
û6û6 
$str
ü6ü6 
,
ü6ü6 
$str
ı6ı6 
,
ı6ı6 
$str
ş6ş6 
,
ş6ş6 
$str
ÿ6ÿ6 
,
ÿ6ÿ6 
$str
€7€7 
,
€7€7 
$str
77 
,
77 
$str
‚7‚7 
,
‚7‚7 
$str
ƒ7ƒ7 
,
ƒ7ƒ7 
$str
„7„7 
,
„7„7 
$str
…7…7 
,
…7…7 
$str
†7†7 
,
†7†7 
$str
‡7‡7 
,
‡7‡7 
$str
ˆ7ˆ7 
,
ˆ7ˆ7 
$str
‰7‰7 
,
‰7‰7 
$str
Š7Š7 
,
Š7Š7 
$str
‹7‹7 
,
‹7‹7 
$str
Œ7Œ7 
,
Œ7Œ7 
$str
77 
,
77 
$str
77 
,
77 
$str
77 
,
77 
$str
77 
,
77 
$str
‘7‘7 
,
‘7‘7 
$str
’7’7 
,
’7’7 
$str
“7“7 
,
“7“7 
$str
”7”7 
,
”7”7 
$str
•7•7 
,
•7•7 
$str
–7–7 
,
–7–7 
$str
—7—7 
,
—7—7 
$str
˜7˜7 
,
˜7˜7 
$str
™7™7 
,
™7™7 
$str
š7š7 
,
š7š7 
$str
›7›7 
,
›7›7 
$str
œ7œ7 
,
œ7œ7 
$str
77 
,
77 
$str
77 
,
77 
$str
Ÿ7Ÿ7 
,
Ÿ7Ÿ7 
$str
 7 7 
,
 7 7 
$str
¡7¡7 
,
¡7¡7 
$str
¢7¢7 
,
¢7¢7 
$str
£7£7 
,
£7£7 
$str
¤7¤7 
,
¤7¤7 
$str
¥7¥7 
,
¥7¥7 
$str
¦7¦7 
,
¦7¦7 
$str
§7§7 
,
§7§7 
$str
¨7¨7 
,
¨7¨7 
$str
©7©7 
,
©7©7 
$str
ª7ª7 
,
ª7ª7 
$str
«7«7 
,
«7«7 
$str
¬7¬7 
,
¬7¬7 
$str
­7­7 
,
­7­7 
$str
®7®7 
,
®7®7 
$str
¯7¯7 
,
¯7¯7 
$str
°7°7 
,
°7°7 
$str
±7±7 
,
±7±7 
$str
²7²7 
,
²7²7 
$str
³7³7 
,
³7³7 
$str
´7´7 
,
´7´7 
$str
µ7µ7 
,
µ7µ7 
$str
¶7¶7 
,
¶7¶7 
$str
·7·7 
,
·7·7 
$str
¸7¸7 
,
¸7¸7 
$str
¹7¹7 
,
¹7¹7 
$str
º7º7 
,
º7º7 
$str
»7»7 
,
»7»7 
$str
¼7¼7 
,
¼7¼7 
$str
½7½7 
,
½7½7 
$str
¾7¾7 
,
¾7¾7 
$str
¿7¿7 
,
¿7¿7 
$str
À7À7 
,
À7À7 
$str
Á7Á7 
,
Á7Á7 
$str
Â7Â7 
,
Â7Â7 
$str
Ã7Ã7 
,
Ã7Ã7 
$str
Ä7Ä7 
,
Ä7Ä7 
$str
Å7Å7 
,
Å7Å7 
$str
Æ7Æ7 
,
Æ7Æ7 
$str
Ç7Ç7 
,
Ç7Ç7 
$str
È7È7 
,
È7È7 
$str
É7É7 
,
É7É7 
$str
Ê7Ê7 
,
Ê7Ê7 
$str
Ë7Ë7 
,
Ë7Ë7 
$str
Ì7Ì7 
,
Ì7Ì7 
$str
Í7Í7 
,
Í7Í7 
$str
Î7Î7 
,
Î7Î7 
$str
Ï7Ï7 
,
Ï7Ï7 
$str
Ğ7Ğ7 
,
Ğ7Ğ7 
$str
Ñ7Ñ7 
,
Ñ7Ñ7 
$str
Ò7Ò7 
,
Ò7Ò7 
$str
Ó7Ó7 
,
Ó7Ó7 
$str
Ô7Ô7 
,
Ô7Ô7 
$str
Õ7Õ7 
,
Õ7Õ7 
$str
Ö7Ö7 
,
Ö7Ö7 
$str
×7×7 
,
×7×7 
$str
Ø7Ø7 
,
Ø7Ø7 
$str
Ù7Ù7 
,
Ù7Ù7 
$str
Ú7Ú7 
,
Ú7Ú7 
$str
Û7Û7 
,
Û7Û7 
$str
Ü7Ü7 
,
Ü7Ü7 
$str
İ7İ7 
,
İ7İ7 
$str
Ş7Ş7 
,
Ş7Ş7 
$str
ß7ß7 
,
ß7ß7 
$str
à7à7 
,
à7à7 
$str
á7á7 
,
á7á7 
$str
â7â7 
,
â7â7 
$str
ã7ã7 
,
ã7ã7 
$str
ä7ä7 
,
ä7ä7 
$str
å7å7 
,
å7å7 
$str
æ7æ7 
,
æ7æ7 
$str
ç7ç7 
,
ç7ç7 
$str
è7è7 
,
è7è7 
$str
é7é7 
,
é7é7 
$str
ê7ê7 
,
ê7ê7 
$str
ë7ë7 
,
ë7ë7 
$str
ì7ì7 
,
ì7ì7 
$str
í7í7 
,
í7í7 
$str
î7î7 
,
î7î7 
$str
ï7ï7 
,
ï7ï7 
$str
ğ7ğ7 
,
ğ7ğ7 
$str
ñ7ñ7 
,
ñ7ñ7 
$str
ò7ò7 
,
ò7ò7 
$str
ó7ó7 
,
ó7ó7 
$str
ô7ô7 
,
ô7ô7 
$str
õ7õ7 
,
õ7õ7 
$str
ö7ö7 
,
ö7ö7 
$str
÷7÷7 
,
÷7÷7 
$str
ø7ø7 
,
ø7ø7 
$str
ù7ù7 
,
ù7ù7 
$str
ú7ú7 
,
ú7ú7 
$str
û7û7 
,
û7û7 
$str
ü7ü7 
,
ü7ü7 
$str
ı7ı7 
,
ı7ı7 
$str
ş7ş7 
,
ş7ş7 
$str
ÿ7ÿ7 
,
ÿ7ÿ7 
$str
€8€8 
,
€8€8 
$str
88 
,
88 
$str
‚8‚8 
,
‚8‚8 
$str
ƒ8ƒ8 
,
ƒ8ƒ8 
$str
„8„8 
,
„8„8 
$str
…8…8 
,
…8…8 
$str
†8†8 
,
†8†8 
$str
‡8‡8 
,
‡8‡8 
$str
ˆ8ˆ8 
,
ˆ8ˆ8 
$str
‰8‰8 
,
‰8‰8 
$str
Š8Š8 
,
Š8Š8 
$str
‹8‹8 
,
‹8‹8 
$str
Œ8Œ8 
,
Œ8Œ8 
$str
88 
,
88 
$str
88 
,
88 
$str
88 
,
88 
$str
88 
,
88 
$str
‘8‘8 
,
‘8‘8 
$str
’8’8 
,
’8’8 
$str
“8“8 
,
“8“8 
$str
”8”8 
,
”8”8 
$str
•8•8 
,
•8•8 
$str
–8–8 
,
–8–8 
$str
—8—8 
,
—8—8 
$str
˜8˜8 
,
˜8˜8 
$str
™8™8 
,
™8™8 
$str
š8š8 
,
š8š8 
$str
›8›8 
,
›8›8 
$str
œ8œ8 
,
œ8œ8 
$str
88 
,
88 
$str
88 
,
88 
$str
Ÿ8Ÿ8 
,
Ÿ8Ÿ8 
$str
 8 8 
,
 8 8 
$str
¡8¡8 
,
¡8¡8 
$str
¢8¢8 
,
¢8¢8 
$str
£8£8 
,
£8£8 
$str
¤8¤8 
,
¤8¤8 
$str
¥8¥8 
,
¥8¥8 
$str
¦8¦8 
,
¦8¦8 
$str
§8§8 
,
§8§8 
$str
¨8¨8 
,
¨8¨8 
$str
©8©8 
,
©8©8 
$str
ª8ª8 
,
ª8ª8 
$str
«8«8 
,
«8«8 
$str
¬8¬8 
,
¬8¬8 
$str
­8­8 
,
­8­8 
$str
®8®8 
,
®8®8 
$str
¯8¯8 
,
¯8¯8 
$str
°8°8 
,
°8°8 
$str
±8±8 
,
±8±8 
$str
²8²8 
,
²8²8 
$str
³8³8 
,
³8³8 
$str
´8´8 
,
´8´8 
$str
µ8µ8 
,
µ8µ8 
$str
¶8¶8 
,
¶8¶8 
$str
·8·8 
,
·8·8 
$str
¸8¸8 
,
¸8¸8 
$str
¹8¹8 
,
¹8¹8 
$str
º8º8 
,
º8º8 
$str
»8»8 
,
»8»8 
$str
¼8¼8 
,
¼8¼8 
$str
½8½8 
,
½8½8 
$str
¾8¾8 
,
¾8¾8 
$str
¿8¿8 
,
¿8¿8 
$str
À8À8 
,
À8À8 
$str
Á8Á8 
,
Á8Á8 
$str
Â8Â8 
,
Â8Â8 
$str
Ã8Ã8 
,
Ã8Ã8 
$str
Ä8Ä8 
,
Ä8Ä8 
$str
Å8Å8 
,
Å8Å8 
$str
Æ8Æ8 
,
Æ8Æ8 
$str
Ç8Ç8 
,
Ç8Ç8 
$str
È8È8 
,
È8È8 
$str
É8É8 
,
É8É8 
$str
Ê8Ê8 
,
Ê8Ê8 
$str
Ë8Ë8 
,
Ë8Ë8 
$str
Ì8Ì8 
,
Ì8Ì8 
$str
Í8Í8 
,
Í8Í8 
$str
Î8Î8 
,
Î8Î8 
$str
Ï8Ï8 
,
Ï8Ï8 
$str
Ğ8Ğ8 
,
Ğ8Ğ8 
$str
Ñ8Ñ8 
,
Ñ8Ñ8 
$str
Ò8Ò8 
,
Ò8Ò8 
$str
Ó8Ó8 
,
Ó8Ó8 
$str
Ô8Ô8 
,
Ô8Ô8 
$str
Õ8Õ8 
,
Õ8Õ8 
$str
Ö8Ö8 
,
Ö8Ö8 
$str
×8×8 
,
×8×8 
$str
Ø8Ø8 
,
Ø8Ø8 
$str
Ù8Ù8 
,
Ù8Ù8 
$str
Ú8Ú8 
,
Ú8Ú8 
$str
Û8Û8 
,
Û8Û8 
$str
Ü8Ü8 
,
Ü8Ü8 
$str
İ8İ8 
,
İ8İ8 
$str
Ş8Ş8 
,
Ş8Ş8 
$str
ß8ß8 
,
ß8ß8 
$str
à8à8 
,
à8à8 
$str
á8á8 
,
á8á8 
$str
â8â8 
,
â8â8 
$str
ã8ã8 
,
ã8ã8 
$str
ä8ä8 
,
ä8ä8 
$str
å8å8 
,
å8å8 
$str
æ8æ8 
,
æ8æ8 
$str
ç8ç8 
,
ç8ç8 
$str
è8è8 
,
è8è8 
$str
é8é8 
,
é8é8 
$str
ê8ê8 
,
ê8ê8 
$str
ë8ë8 
,
ë8ë8 
$str
ì8ì8 
,
ì8ì8 
$str
í8í8 
,
í8í8 
$str
î8î8 
,
î8î8 
$str
ï8ï8 
,
ï8ï8 
$str
ğ8ğ8 
,
ğ8ğ8 
$str
ñ8ñ8 
,
ñ8ñ8 
$str
ò8ò8 
,
ò8ò8 
$str
ó8ó8 
,
ó8ó8 
$str
ô8ô8 
,
ô8ô8 
$str
õ8õ8 
,
õ8õ8 
$str
ö8ö8 
,
ö8ö8 
$str
÷8÷8 
,
÷8÷8 
$str
ø8ø8 
,
ø8ø8 
$str
ù8ù8 
,
ù8ù8 
$str
ú8ú8 
,
ú8ú8 
$str
û8û8 
,
û8û8 
$str
ü8ü8 
,
ü8ü8 
$str
ı8ı8 
,
ı8ı8 
$str
ş8ş8 
,
ş8ş8 
$str
ÿ8ÿ8 
,
ÿ8ÿ8 
$str
€9€9 
,
€9€9 
$str
99 
,
99 
$str
‚9‚9 
,
‚9‚9 
$str
ƒ9ƒ9 
,
ƒ9ƒ9 
$str
„9„9 
,
„9„9 
$str
…9…9 
,
…9…9 
$str
†9†9 
,
†9†9 
$str
‡9‡9 
,
‡9‡9 
$str
ˆ9ˆ9 
,
ˆ9ˆ9 
$str
‰9‰9 
,
‰9‰9 
$str
Š9Š9 
,
Š9Š9 
$str
‹9‹9 
,
‹9‹9 
$str
Œ9Œ9 
,
Œ9Œ9 
$str
99 
,
99 
$str
99 
,
99 
$str
99 
,
99 
$str
99 
,
99 
$str
‘9‘9 
,
‘9‘9 
$str
’9’9 
,
’9’9 
$str
“9“9 
,
“9“9 
$str
”9”9 
,
”9”9 
$str
•9•9 
,
•9•9 
$str
–9–9 
,
–9–9 
$str
—9—9 
,
—9—9 
$str
˜9˜9 
,
˜9˜9 
$str
™9™9 
,
™9™9 
$str
š9š9 
,
š9š9 
$str
›9›9 
,
›9›9 
$str
œ9œ9 
,
œ9œ9 
$str
99 
,
99 
$str
99 
,
99 
$str
Ÿ9Ÿ9 
,
Ÿ9Ÿ9 
$str
 9 9 
,
 9 9 
$str
¡9¡9 
,
¡9¡9 
$str
¢9¢9 
,
¢9¢9 
$str
£9£9 
,
£9£9 
$str
¤9¤9 
,
¤9¤9 
$str
¥9¥9 
,
¥9¥9 
$str
¦9¦9 
,
¦9¦9 
$str
§9§9 
,
§9§9 
$str
¨9¨9 
,
¨9¨9 
$str
©9©9 
,
©9©9 
$str
ª9ª9 
,
ª9ª9 
$str
«9«9 
,
«9«9 
$str
¬9¬9 
,
¬9¬9 
$str
­9­9 
,
­9­9 
$str
®9®9 
,
®9®9 
$str
¯9¯9 
,
¯9¯9 
$str
°9°9 
,
°9°9 
$str
±9±9 
,
±9±9 
$str
²9²9 
,
²9²9 
$str
³9³9 
,
³9³9 
$str
´9´9 
,
´9´9 
$str
µ9µ9 
,
µ9µ9 
$str
¶9¶9 
,
¶9¶9 
$str
·9·9 
,
·9·9 
$str
¸9¸9 
,
¸9¸9 
$str
¹9¹9 
,
¹9¹9 
$str
º9º9 
,
º9º9 
$str
»9»9 
,
»9»9 
$str
¼9¼9 
,
¼9¼9 
$str
½9½9 
,
½9½9 
$str
¾9¾9 
,
¾9¾9 
$str
¿9¿9 
,
¿9¿9 
$str
À9À9 
,
À9À9 
$str
Á9Á9 
,
Á9Á9 
$str
Â9Â9 
,
Â9Â9 
$str
Ã9Ã9 
,
Ã9Ã9 
$str
Ä9Ä9 
,
Ä9Ä9 
$str
Å9Å9 
,
Å9Å9 
$str
Æ9Æ9 
,
Æ9Æ9 
$str
Ç9Ç9 
,
Ç9Ç9 
$str
È9È9 
,
È9È9 
$str
É9É9 
,
É9É9 
$str
Ê9Ê9 
,
Ê9Ê9 
$str
Ë9Ë9 
,
Ë9Ë9 
$str
Ì9Ì9 
,
Ì9Ì9 
$str
Í9Í9 
,
Í9Í9 
$str
Î9Î9 
,
Î9Î9 
$str
Ï9Ï9 
,
Ï9Ï9 
$str
Ğ9Ğ9 
,
Ğ9Ğ9 
$str
Ñ9Ñ9 
,
Ñ9Ñ9 
$str
Ò9Ò9 
,
Ò9Ò9 
$str
Ó9Ó9 
,
Ó9Ó9 
$str
Ô9Ô9 
,
Ô9Ô9 
$str
Õ9Õ9 
,
Õ9Õ9 
$str
Ö9Ö9 
,
Ö9Ö9 
$str
×9×9 
,
×9×9 
$str
Ø9Ø9 
,
Ø9Ø9 
$str
Ù9Ù9 
,
Ù9Ù9 
$str
Ú9Ú9 
,
Ú9Ú9 
$str
Û9Û9 
,
Û9Û9 
$str
Ü9Ü9 
,
Ü9Ü9 
$str
İ9İ9 
,
İ9İ9 
$str
Ş9Ş9 
,
Ş9Ş9 
$str
ß9ß9 
,
ß9ß9 
$str
à9à9 
,
à9à9 
$str
á9á9 
,
á9á9 
$str
â9â9 
,
â9â9 
$str
ã9ã9 
,
ã9ã9 
$str
ä9ä9 
,
ä9ä9 
$str
å9å9 
,
å9å9 
$str
æ9æ9 
,
æ9æ9 
$str
ç9ç9 
,
ç9ç9 
$str
è9è9 
,
è9è9 
$str
é9é9 
,
é9é9 
$str
ê9ê9 
,
ê9ê9 
$str
ë9ë9 
,
ë9ë9 
$str
ì9ì9 
,
ì9ì9 
$str
í9í9 
,
í9í9 
$str
î9î9 
,
î9î9 
$str
ï9ï9 
,
ï9ï9 
$str
ğ9ğ9 
,
ğ9ğ9 
$str
ñ9ñ9 
,
ñ9ñ9 
$str
ò9ò9 
,
ò9ò9 
$str
ó9ó9 
,
ó9ó9 
$str
ô9ô9 
,
ô9ô9 
$str
õ9õ9 
,
õ9õ9 
$str
ö9ö9 
,
ö9ö9 
$str
÷9÷9 
,
÷9÷9 
$str
ø9ø9 
,
ø9ø9 
$str
ù9ù9 
,
ù9ù9 
$str
ú9ú9 
,
ú9ú9 
$str
û9û9 
,
û9û9 
$str
ü9ü9 
,
ü9ü9 
$str
ı9ı9 
,
ı9ı9 
$str
ş9ş9 
,
ş9ş9 
$str
ÿ9ÿ9 
,
ÿ9ÿ9 
$str
€:€: 
,
€:€: 
$str
:: 
,
:: 
$str
‚:‚: 
,
‚:‚: 
$str
ƒ:ƒ: 
,
ƒ:ƒ: 
$str
„:„: 
,
„:„: 
$str
…:…: 
,
…:…: 
$str
†:†: 
,
†:†: 
$str
‡:‡: 
,
‡:‡: 
$str
ˆ:ˆ: 
,
ˆ:ˆ: 
$str
‰:‰: 
,
‰:‰: 
$str
Š:Š: 
,
Š:Š: 
$str
‹:‹: 
,
‹:‹: 
$str
Œ:Œ: 
,
Œ:Œ: 
$str
:: 
,
:: 
$str
:: 
,
:: 
$str
:: 
,
:: 
$str
:: 
,
:: 
$str
‘:‘: 
,
‘:‘: 
$str
’:’: 
,
’:’: 
$str
“:“: 
,
“:“: 
$str
”:”: 
,
”:”: 
$str
•:•: 
,
•:•: 
$str
–:–: 
,
–:–: 
$str
—:—: 
,
—:—: 
$str
˜:˜: 
,
˜:˜: 
$str
™:™: 
,
™:™: 
$str
š:š: 
,
š:š: 
$str
›:›: 
,
›:›: 
$str
œ:œ: 
,
œ:œ: 
$str
:: 
,
:: 
$str
:: 
,
:: 
$str
Ÿ:Ÿ: 
,
Ÿ:Ÿ: 
$str
 : : 
,
 : : 
$str
¡:¡: 
,
¡:¡: 
$str
¢:¢: 
,
¢:¢: 
$str
£:£: 
,
£:£: 
$str
¤:¤: 
,
¤:¤: 
$str
¥:¥: 
,
¥:¥: 
$str
¦:¦: 
,
¦:¦: 
$str
§:§: 
,
§:§: 
$str
¨:¨: 
,
¨:¨: 
$str
©:©: 
,
©:©: 
$str
ª:ª: 
,
ª:ª: 
$str
«:«: 
,
«:«: 
$str
¬:¬: 
,
¬:¬: 
$str
­:­: 
,
­:­: 
$str
®:®: 
,
®:®: 
$str
¯:¯: 
,
¯:¯: 
$str
°:°: 
,
°:°: 
$str
±:±: 
,
±:±: 
$str
²:²: 
,
²:²: 
$str
³:³: 
,
³:³: 
$str
´:´: 
,
´:´: 
$str
µ:µ: 
,
µ:µ: 
$str
¶:¶: 
,
¶:¶: 
$str
·:·: 
,
·:·: 
$str
¸:¸: 
,
¸:¸: 
$str
¹:¹: 
,
¹:¹: 
$str
º:º: 
,
º:º: 
$str
»:»: 
,
»:»: 
$str
¼:¼: 
,
¼:¼: 
$str
½:½: 
,
½:½: 
$str
¾:¾: 
,
¾:¾: 
$str
¿:¿: 
,
¿:¿: 
$str
À:À: 
,
À:À: 
$str
Á:Á: 
,
Á:Á: 
$str
Â:Â: 
,
Â:Â: 
$str
Ã:Ã: 
,
Ã:Ã: 
$str
Ä:Ä: 
,
Ä:Ä: 
$str
Å:Å: 
,
Å:Å: 
$str
Æ:Æ: 
,
Æ:Æ: 
$str
Ç:Ç: 
,
Ç:Ç: 
$str
È:È: 
,
È:È: 
$str
É:É: 
,
É:É: 
$str
Ê:Ê: 
,
Ê:Ê: 
$str
Ë:Ë: 
,
Ë:Ë: 
$str
Ì:Ì: 
,
Ì:Ì: 
$str
Í:Í: 
,
Í:Í: 
$str
Î:Î: 
,
Î:Î: 
$str
Ï:Ï: 
,
Ï:Ï: 
$str
Ğ:Ğ: 
,
Ğ:Ğ: 
$str
Ñ:Ñ: 
,
Ñ:Ñ: 
$str
Ò:Ò: 
,
Ò:Ò: 
$str
Ó:Ó: 
,
Ó:Ó: 
$str
Ô:Ô: 
,
Ô:Ô: 
$str
Õ:Õ: 
,
Õ:Õ: 
$str
Ö:Ö: 
,
Ö:Ö: 
$str
×:×: 
,
×:×: 
$str
Ø:Ø: 
,
Ø:Ø: 
$str
Ù:Ù: 
,
Ù:Ù: 
$str
Ú:Ú: 
,
Ú:Ú: 
$str
Û:Û: 
,
Û:Û: 
$str
Ü:Ü: 
,
Ü:Ü: 
$str
İ:İ: 
,
İ:İ: 
$str
Ş:Ş: 
,
Ş:Ş: 
$str
ß:ß: 
,
ß:ß: 
$str
à:à: 
,
à:à: 
$str
á:á: 
,
á:á: 
$str
â:â: 
,
â:â: 
$str
ã:ã: 
,
ã:ã: 
$str
ä:ä: 
,
ä:ä: 
$str
å:å: 
,
å:å: 
$str
æ:æ: 
,
æ:æ: 
$str
ç:ç: 
,
ç:ç: 
$str
è:è: 
,
è:è: 
$str
é:é: 
,
é:é: 
$str
ê:ê: 
,
ê:ê: 
$str
ë:ë: 
,
ë:ë: 
$str
ì:ì: 
,
ì:ì: 
$str
í:í: 
,
í:í: 
$str
î:î: 
,
î:î: 
$str
ï:ï: 
,
ï:ï: 
$str
ğ:ğ: 
,
ğ:ğ: 
$str
ñ:ñ: 
,
ñ:ñ: 
$str
ò:ò: 
,
ò:ò: 
$str
ó:ó: 
,
ó:ó: 
$str
ô:ô: 
,
ô:ô: 
$str
õ:õ: 
,
õ:õ: 
$str
ö:ö: 
,
ö:ö: 
$str
÷:÷: 
,
÷:÷: 
$str
ø:ø: 
,
ø:ø: 
$str
ù:ù: 
,
ù:ù: 
$str
ú:ú: 
,
ú:ú: 
$str
û:û: 
,
û:û: 
$str
ü:ü: 
,
ü:ü: 
$str
ı:ı: 
,
ı:ı: 
$str
ş:ş: 
,
ş:ş: 
$str
ÿ:ÿ: 
,
ÿ:ÿ: 
$str
€;€; 
,
€;€; 
$str
;; 
,
;; 
$str
‚;‚; 
,
‚;‚; 
$str
ƒ;ƒ; 
,
ƒ;ƒ; 
$str
„;„; 
,
„;„; 
$str
…;…; 
,
…;…; 
$str
†;†; 
,
†;†; 
$str
‡;‡; 
,
‡;‡; 
$str
ˆ;ˆ; 
,
ˆ;ˆ; 
$str
‰;‰; 
,
‰;‰; 
$str
Š;Š; 
,
Š;Š; 
$str
‹;‹; 
,
‹;‹; 
$str
Œ;Œ; 
,
Œ;Œ; 
$str
;; 
,
;; 
$str
;; 
,
;; 
$str
;; 
,
;; 
$str
;; 
,
;; 
$str
‘;‘; 
,
‘;‘; 
$str
’;’; 
,
’;’; 
$str
“;“; 
,
“;“; 
$str
”;”; 
,
”;”; 
$str
•;•; 
,
•;•; 
$str
–;–; 
,
–;–; 
$str
—;—; 
,
—;—; 
$str
˜;˜; 
,
˜;˜; 
$str
™;™; 
,
™;™; 
$str
š;š; 
,
š;š; 
$str
›;›; 
,
›;›; 
$str
œ;œ; 
,
œ;œ; 
$str
;; 
,
;; 
$str
;; 
,
;; 
$str
Ÿ;Ÿ; 
,
Ÿ;Ÿ; 
$str
 ; ; 
,
 ; ; 
$str
¡;¡; 
,
¡;¡; 
$str
¢;¢; 
,
¢;¢; 
$str
£;£; 
,
£;£; 
$str
¤;¤; 
,
¤;¤; 
$str
¥;¥; 
,
¥;¥; 
$str
¦;¦; 
,
¦;¦; 
$str
§;§; 
,
§;§; 
$str
¨;¨; 
,
¨;¨; 
$str
©;©; 
,
©;©; 
$str
ª;ª; 
,
ª;ª; 
$str
«;«; 
,
«;«; 
$str
¬;¬; 
,
¬;¬; 
$str
­;­; 
,
­;­; 
$str
®;®; 
,
®;®; 
$str
¯;¯; 
,
¯;¯; 
$str
°;°; 
,
°;°; 
$str
±;±; 
,
±;±; 
$str
²;²; 
,
²;²; 
$str
³;³; 
,
³;³; 
$str
´;´; 
,
´;´; 
$str
µ;µ; 
,
µ;µ; 
$str
¶;¶; 
,
¶;¶; 
$str
·;·; 
,
·;·; 
$str
¸;¸; 
,
¸;¸; 
$str
¹;¹; 
,
¹;¹; 
$str
º;º; 
,
º;º; 
$str
»;»; 
,
»;»; 
$str
¼;¼; 
,
¼;¼; 
$str
½;½; 
,
½;½; 
$str
¾;¾; 
,
¾;¾; 
$str
¿;¿; 
,
¿;¿; 
$str
À;À; 
,
À;À; 
$str
Á;Á; 
,
Á;Á; 
$str
Â;Â; 
,
Â;Â; 
$str
Ã;Ã; 
,
Ã;Ã; 
$str
Ä;Ä; 
,
Ä;Ä; 
$str
Å;Å; 
,
Å;Å; 
$str
Æ;Æ; 
,
Æ;Æ; 
$str
Ç;Ç; 
,
Ç;Ç; 
$str
È;È; 
,
È;È; 
$str
É;É; 
,
É;É; 
$str
Ê;Ê; 
,
Ê;Ê; 
$str
Ë;Ë; 
,
Ë;Ë; 
$str
Ì;Ì; 
,
Ì;Ì; 
$str
Í;Í; 
,
Í;Í; 
$str
Î;Î; 
,
Î;Î; 
$str
Ï;Ï; 
,
Ï;Ï; 
$str
Ğ;Ğ; 
,
Ğ;Ğ; 
$str
Ñ;Ñ; 
,
Ñ;Ñ; 
$str
Ò;Ò; 
,
Ò;Ò; 
$str
Ó;Ó; 
,
Ó;Ó; 
$str
Ô;Ô; 
,
Ô;Ô; 
$str
Õ;Õ; 
,
Õ;Õ; 
$str
Ö;Ö; 
,
Ö;Ö; 
$str
×;×; 
,
×;×; 
$str
Ø;Ø; 
,
Ø;Ø; 
$str
Ù;Ù; 
,
Ù;Ù; 
$str
Ú;Ú; 
,
Ú;Ú; 
$str
Û;Û; 
,
Û;Û; 
$str
Ü;Ü; 
,
Ü;Ü; 
$str
İ;İ; 
,
İ;İ; 
$str
Ş;Ş; 
,
Ş;Ş; 
$str
ß;ß; 
,
ß;ß; 
$str
à;à; 
,
à;à; 
$str
á;á; 
,
á;á; 
$str
â;â; 
,
â;â; 
$str
ã;ã; 
,
ã;ã; 
$str
ä;ä; 
,
ä;ä; 
$str
å;å; 
,
å;å; 
$str
æ;æ; 
,
æ;æ; 
$str
ç;ç; 
,
ç;ç; 
$str
è;è; 
,
è;è; 
$str
é;é; 
,
é;é; 
$str
ê;ê; 
,
ê;ê; 
$str
ë;ë; 
,
ë;ë; 
$str
ì;ì; 
,
ì;ì; 
$str
í;í; 
,
í;í; 
$str
î;î; 
,
î;î; 
$str
ï;ï; 
,
ï;ï; 
$str
ğ;ğ; 
,
ğ;ğ; 
$str
ñ;ñ; 
,
ñ;ñ; 
$str
ò;ò; 
,
ò;ò; 
$str
ó;ó; 
,
ó;ó; 
$str
ô;ô; 
,
ô;ô; 
$str
õ;õ; 
,
õ;õ; 
$str
ö;ö; 
,
ö;ö; 
$str
÷;÷; 
,
÷;÷; 
$str
ø;ø; 
,
ø;ø; 
$str
ù;ù; 
,
ù;ù; 
$str
ú;ú; 
,
ú;ú; 
$str
û;û; 
,
û;û; 
$str
ü;ü; 
,
ü;ü; 
$str
ı;ı; 
,
ı;ı; 
$str
ş;ş; 
,
ş;ş; 
$str
ÿ;ÿ; 
,
ÿ;ÿ; 
$str
€<€< 
,
€<€< 
$str
<< 
,
<< 
$str
‚<‚< 
,
‚<‚< 
$str
ƒ<ƒ< 
,
ƒ<ƒ< 
$str
„<„< 
,
„<„< 
$str
…<…< 
,
…<…< 
$str
†<†< 
,
†<†< 
$str
‡<‡< 
,
‡<‡< 
$str
ˆ<ˆ< 
,
ˆ<ˆ< 
$str
‰<‰< 
,
‰<‰< 
$str
Š<Š< 
,
Š<Š< 
$str
‹<‹< 
,
‹<‹< 
$str
Œ<Œ< 
,
Œ<Œ< 
$str
<< 
,
<< 
$str
<< 
,
<< 
$str
<< 
,
<< 
$str
<< 
,
<< 
$str
‘<‘< 
,
‘<‘< 
$str
’<’< 
,
’<’< 
$str
“<“< 
,
“<“< 
$str
”<”< 
,
”<”< 
$str
•<•< 
,
•<•< 
$str
–<–< 
,
–<–< 
$str
—<—< 
,
—<—< 
$str
˜<˜< 
,
˜<˜< 
$str
™<™< 
,
™<™< 
$str
š<š< 
,
š<š< 
$str
›<›< 
,
›<›< 
$str
œ<œ< 
,
œ<œ< 
$str
<< 
,
<< 
$str
<< 
,
<< 
$str
Ÿ<Ÿ< 
,
Ÿ<Ÿ< 
$str
 < < 
,
 < < 
$str
¡<¡< 
,
¡<¡< 
$str
¢<¢< 
,
¢<¢< 
$str
£<£< 
,
£<£< 
$str
¤<¤< 
,
¤<¤< 
$str
¥<¥< 
,
¥<¥< 
$str
¦<¦< 
,
¦<¦< 
$str
§<§< 
,
§<§< 
$str
¨<¨< 
,
¨<¨< 
$str
©<©< 
,
©<©< 
$str
ª<ª< 
,
ª<ª< 
$str
«<«< 
,
«<«< 
$str
¬<¬< 
,
¬<¬< 
$str
­<­< 
,
­<­< 
$str
®<®< 
,
®<®< 
$str
¯<¯< 
,
¯<¯< 
$str
°<°< 
,
°<°< 
$str
±<±< 
,
±<±< 
$str
²<²< 
,
²<²< 
$str
³<³< 
,
³<³< 
$str
´<´< 
,
´<´< 
$str
µ<µ< 
,
µ<µ< 
$str
¶<¶< 
,
¶<¶< 
$str
·<·< 
,
·<·< 
$str
¸<¸< 
,
¸<¸< 
$str
¹<¹< 
,
¹<¹< 
$str
º<º< 
,
º<º< 
$str
»<»< 
,
»<»< 
$str
¼<¼< 
,
¼<¼< 
$str
½<½< 
,
½<½< 
$str
¾<¾< 
,
¾<¾< 
$str
¿<¿< 
,
¿<¿< 
$str
À<À< 
,
À<À< 
$str
Á<Á< 
,
Á<Á< 
$str
Â<Â< 
,
Â<Â< 
$str
Ã<Ã< 
,
Ã<Ã< 
$str
Ä<Ä< 
,
Ä<Ä< 
$str
Å<Å< 
,
Å<Å< 
$str
Æ<Æ< 
,
Æ<Æ< 
$str
Ç<Ç< 
,
Ç<Ç< 
$str
È<È< 
,
È<È< 
$str
É<É< 
,
É<É< 
$str
Ê<Ê< 
,
Ê<Ê< 
$str
Ë<Ë< 
,
Ë<Ë< 
$str
Ì<Ì< 
,
Ì<Ì< 
$str
Í<Í< 
,
Í<Í< 
$str
Î<Î< 
,
Î<Î< 
$str
Ï<Ï< 
,
Ï<Ï< 
$str
Ğ<Ğ< 
,
Ğ<Ğ< 
$str
Ñ<Ñ< 
,
Ñ<Ñ< 
$str
Ò<Ò< 
,
Ò<Ò< 
$str
Ó<Ó< 
,
Ó<Ó< 
$str
Ô<Ô< 
,
Ô<Ô< 
$str
Õ<Õ< 
,
Õ<Õ< 
$str
Ö<Ö< 
,
Ö<Ö< 
$str
×<×< 
,
×<×< 
$str
Ø<Ø< 
,
Ø<Ø< 
$str
Ù<Ù< 
,
Ù<Ù< 
$str
Ú<Ú< 
,
Ú<Ú< 
$str
Û<Û< 
,
Û<Û< 
$str
Ü<Ü< 
,
Ü<Ü< 
$str
İ<İ< 
,
İ<İ< 
$str
Ş<Ş< 
,
Ş<Ş< 
$str
ß<ß< 
,
ß<ß< 
$str
à<à< 
,
à<à< 
$str
á<á< 
,
á<á< 
$str
â<â< 
,
â<â< 
$str
ã<ã< 
,
ã<ã< 
$str
ä<ä< 
,
ä<ä< 
$str
å<å< 
,
å<å< 
$str
æ<æ< 
,
æ<æ< 
$str
ç<ç< 
,
ç<ç< 
$str
è<è< 
,
è<è< 
$str
é<é< 
,
é<é< 
$str
ê<ê< 
,
ê<ê< 
$str
ë<ë< 
,
ë<ë< 
$str
ì<ì< 
,
ì<ì< 
$str
í<í< 
,
í<í< 
$str
î<î< 
,
î<î< 
$str
ï<ï< 
,
ï<ï< 
$str
ğ<ğ< 
,
ğ<ğ< 
$str
ñ<ñ< 
,
ñ<ñ< 
$str
ò<ò< 
,
ò<ò< 
$str
ó<ó< 
,
ó<ó< 
$str
ô<ô< 
,
ô<ô< 
$str
õ<õ< 
,
õ<õ< 
$str
ö<ö< 
,
ö<ö< 
$str
÷<÷< 
,
÷<÷< 
$str
ø<ø< 
,
ø<ø< 
$str
ù<ù< 
,
ù<ù< 
$str
ú<ú< 
,
ú<ú< 
$str
û<û< 
,
û<û< 
$str
ü<ü< 
,
ü<ü< 
$str
ı<ı< 
,
ı<ı< 
$str
ş<ş< 
,
ş<ş< 
$str
ÿ<ÿ< 
,
ÿ<ÿ< 
$str
€=€= 
,
€=€= 
$str
== 
,
== 
$str
‚=‚= 
,
‚=‚= 
$str
ƒ=ƒ= 
,
ƒ=ƒ= 
$str
„=„= 
,
„=„= 
$str
…=…= 
,
…=…= 
$str
†=†= 
,
†=†= 
$str
‡=‡= 
,
‡=‡= 
$str
ˆ=ˆ= 
,
ˆ=ˆ= 
$str
‰=‰= 
,
‰=‰= 
$str
Š=Š= 
,
Š=Š= 
$str
‹=‹= 
,
‹=‹= 
$str
Œ=Œ= 
,
Œ=Œ= 
$str
== 
,
== 
$str
== 
,
== 
$str
== 
,
== 
$str
== 
,
== 
$str
‘=‘= 
,
‘=‘= 
$str
’=’= 
,
’=’= 
$str
“=“= 
,
“=“= 
$str
”=”= 
,
”=”= 
$str
•=•= 
,
•=•= 
$str
–=–= 
,
–=–= 
$str
—=—= 
,
—=—= 
$str
˜=˜= 
,
˜=˜= 
$str
™=™= 
,
™=™= 
$str
š=š= 
,
š=š= 
$str
›=›= 
,
›=›= 
$str
œ=œ= 
,
œ=œ= 
$str
== 
,
== 
$str
== 
,
== 
$str
Ÿ=Ÿ= 
,
Ÿ=Ÿ= 
$str
 = = 
,
 = = 
$str
¡=¡= 
,
¡=¡= 
$str
¢=¢= 
,
¢=¢= 
$str
£=£= 
,
£=£= 
$str
¤=¤= 
,
¤=¤= 
$str
¥=¥= 
,
¥=¥= 
$str
¦=¦= 
,
¦=¦= 
$str
§=§= 
,
§=§= 
$str
¨=¨= 
,
¨=¨= 
$str
©=©= 
,
©=©= 
$str
ª=ª= 
,
ª=ª= 
$str
«=«= 
,
«=«= 
$str
¬=¬= 
,
¬=¬= 
$str
­=­= 
,
­=­= 
$str
®=®= 
,
®=®= 
$str
¯=¯= 
,
¯=¯= 
$str
°=°= 
,
°=°= 
$str
±=±= 
,
±=±= 
$str
²=²= 
,
²=²= 
$str
³=³= 
,
³=³= 
$str
´=´= 
,
´=´= 
$str
µ=µ= 
,
µ=µ= 
$str
¶=¶= 
,
¶=¶= 
$str
·=·= 
,
·=·= 
$str
¸=¸= 
,
¸=¸= 
$str
¹=¹= 
,
¹=¹= 
$str
º=º= 
,
º=º= 
$str
»=»= 
,
»=»= 
$str
¼=¼= 
,
¼=¼= 
$str
½=½= 
,
½=½= 
$str
¾=¾= 
,
¾=¾= 
$str
¿=¿= 
,
¿=¿= 
$str
À=À= 
,
À=À= 
$str
Á=Á= 
,
Á=Á= 
$str
Â=Â= 
,
Â=Â= 
$str
Ã=Ã= 
,
Ã=Ã= 
$str
Ä=Ä= 
,
Ä=Ä= 
$str
Å=Å= 
,
Å=Å= 
$str
Æ=Æ= 
,
Æ=Æ= 
$str
Ç=Ç= 
,
Ç=Ç= 
$str
È=È= 
,
È=È= 
$str
É=É= 
,
É=É= 
$str
Ê=Ê= 
,
Ê=Ê= 
$str
Ë=Ë= 
,
Ë=Ë= 
$str
Ì=Ì= 
,
Ì=Ì= 
$str
Í=Í= 
,
Í=Í= 
$str
Î=Î= 
,
Î=Î= 
$str
Ï=Ï= 
,
Ï=Ï= 
$str
Ğ=Ğ= 
,
Ğ=Ğ= 
$str
Ñ=Ñ= 
,
Ñ=Ñ= 
$str
Ò=Ò= 
,
Ò=Ò= 
$str
Ó=Ó= 
,
Ó=Ó= 
$str
Ô=Ô= 
,
Ô=Ô= 
$str
Õ=Õ= 
,
Õ=Õ= 
$str
Ö=Ö= 
,
Ö=Ö= 
$str
×=×= 
,
×=×= 
$str
Ø=Ø= 
,
Ø=Ø= 
$str
Ù=Ù= 
,
Ù=Ù= 
$str
Ú=Ú= 
,
Ú=Ú= 
$str
Û=Û= 
,
Û=Û= 
$str
Ü=Ü= 
,
Ü=Ü= 
$str
İ=İ= 
,
İ=İ= 
$str
Ş=Ş= 
,
Ş=Ş= 
$str
ß=ß= 
,
ß=ß= 
$str
à=à= 
,
à=à= 
$str
á=á= 
,
á=á= 
$str
â=â= 
,
â=â= 
$str
ã=ã= 
,
ã=ã= 
$str
ä=ä= 
,
ä=ä= 
$str
å=å= 
,
å=å= 
$str
æ=æ= 
,
æ=æ= 
$str
ç=ç= 
,
ç=ç= 
$str
è=è= 
,
è=è= 
$str
é=é= 
,
é=é= 
$str
ê=ê= 
,
ê=ê= 
$str
ë=ë= 
,
ë=ë= 
$str
ì=ì= 
,
ì=ì= 
$str
í=í= 
,
í=í= 
$str
î=î= 
,
î=î= 
$str
ï=ï= 
,
ï=ï= 
$str
ğ=ğ= 
,
ğ=ğ= 
$str
ñ=ñ= 
,
ñ=ñ= 
$str
ò=ò= 
,
ò=ò= 
$str
ó=ó= 
,
ó=ó= 
$str
ô=ô= 
,
ô=ô= 
$str
õ=õ= 
,
õ=õ= 
$str
ö=ö= 
,
ö=ö= 
$str
÷=÷= 
,
÷=÷= 
$str
ø=ø= 
,
ø=ø= 
$str
ù=ù= 
,
ù=ù= 
$str
ú=ú= 
,
ú=ú= 
$str
û=û= 
,
û=û= 
$str
ü=ü= 
,
ü=ü= 
$str
ı=ı= 
,
ı=ı= 
$str
ş=ş= 
,
ş=ş= 
$str
ÿ=ÿ= 
,
ÿ=ÿ= 
$str
€>€> 
,
€>€> 
$str
>> 
,
>> 
$str
‚>‚> 
,
‚>‚> 
$str
ƒ>ƒ> 
,
ƒ>ƒ> 
$str
„>„> 
,
„>„> 
$str
…>…> 
,
…>…> 
$str
†>†> 
,
†>†> 
$str
‡>‡> 
,
‡>‡> 
$str
ˆ>ˆ> 
,
ˆ>ˆ> 
$str
‰>‰> 
,
‰>‰> 
$str
Š>Š> 
,
Š>Š> 
$str
‹>‹> 
,
‹>‹> 
$str
Œ>Œ> 
,
Œ>Œ> 
$str
>> 
,
>> 
$str
>> 
,
>> 
$str
>> 
,
>> 
$str
>> 
,
>> 
$str
‘>‘> 
,
‘>‘> 
$str
’>’> 
,
’>’> 
$str
“>“> 
,
“>“> 
$str
”>”> 
,
”>”> 
$str
•>•> 
,
•>•> 
$str
–>–> 
,
–>–> 
$str
—>—> 
,
—>—> 
$str
˜>˜> 
,
˜>˜> 
$str
™>™> 
,
™>™> 
$str
š>š> 
,
š>š> 
$str
›>›> 
,
›>›> 
$str
œ>œ> 
,
œ>œ> 
$str
>> 
,
>> 
$str
>> 
,
>> 
$str
Ÿ>Ÿ> 
,
Ÿ>Ÿ> 
$str
 > > 
,
 > > 
$str
¡>¡> 
,
¡>¡> 
$str
¢>¢> 
,
¢>¢> 
$str
£>£> 
,
£>£> 
$str
¤>¤> 
,
¤>¤> 
$str
¥>¥> 
,
¥>¥> 
$str
¦>¦> 
,
¦>¦> 
$str
§>§> 
,
§>§> 
$str
¨>¨> 
,
¨>¨> 
$str
©>©> 
,
©>©> 
$str
ª>ª> 
,
ª>ª> 
$str
«>«> 
,
«>«> 
$str
¬>¬> 
,
¬>¬> 
$str
­>­> 
,
­>­> 
$str
®>®> 
,
®>®> 
$str
¯>¯> 
,
¯>¯> 
$str
°>°> 
,
°>°> 
$str
±>±> 
,
±>±> 
$str
²>²> 
,
²>²> 
$str
³>³> 
,
³>³> 
$str
´>´> 
,
´>´> 
$str
µ>µ> 
,
µ>µ> 
$str
¶>¶> 
,
¶>¶> 
$str
·>·> 
,
·>·> 
$str
¸>¸> 
,
¸>¸> 
$str
¹>¹> 
,
¹>¹> 
$str
º>º> 
,
º>º> 
$str
»>»> 
,
»>»> 
$str
¼>¼> 
,
¼>¼> 
$str
½>½> 
,
½>½> 
$str
¾>¾> 
,
¾>¾> 
$str
¿>¿> 
,
¿>¿> 
$str
À>À> 
,
À>À> 
$str
Á>Á> 
,
Á>Á> 
$str
Â>Â> 
,
Â>Â> 
$str
Ã>Ã> 
,
Ã>Ã> 
$str
Ä>Ä> 
,
Ä>Ä> 
$str
Å>Å> 
,
Å>Å> 
$str
Æ>Æ> 
,
Æ>Æ> 
$str
Ç>Ç> 
,
Ç>Ç> 
$str
È>È> 
,
È>È> 
$str
É>É> 
,
É>É> 
$str
Ê>Ê> 
,
Ê>Ê> 
$str
Ë>Ë> 
,
Ë>Ë> 
$str
Ì>Ì> 
,
Ì>Ì> 
$str
Í>Í> 
,
Í>Í> 
$str
Î>Î> 
,
Î>Î> 
$str
Ï>Ï> 
,
Ï>Ï> 
$str
Ğ>Ğ> 
,
Ğ>Ğ> 
$str
Ñ>Ñ> 
,
Ñ>Ñ> 
$str
Ò>Ò> 
,
Ò>Ò> 
$str
Ó>Ó> 
,
Ó>Ó> 
$str
Ô>Ô> 
,
Ô>Ô> 
$str
Õ>Õ> 
,
Õ>Õ> 
$str
Ö>Ö> 
,
Ö>Ö> 
$str
×>×> 
,
×>×> 
$str
Ø>Ø> 
,
Ø>Ø> 
$str
Ù>Ù> 
,
Ù>Ù> 
$str
Ú>Ú> 
,
Ú>Ú> 
$str
Û>Û> 
,
Û>Û> 
$str
Ü>Ü> 
,
Ü>Ü> 
$str
İ>İ> 
,
İ>İ> 
$str
Ş>Ş> 
,
Ş>Ş> 
$str
ß>ß> 
,
ß>ß> 
$str
à>à> 
,
à>à> 
$str
á>á> 
,
á>á> 
$str
â>â> 
,
â>â> 
$str
ã>ã> 
,
ã>ã> 
$str
ä>ä> 
,
ä>ä> 
$str
å>å> 
,
å>å> 
$str
æ>æ> 
,
æ>æ> 
$str
ç>ç> 
,
ç>ç> 
$str
è>è> 
,
è>è> 
$str
é>é> 
,
é>é> 
$str
ê>ê> 
,
ê>ê> 
$str
ë>ë> 
,
ë>ë> 
$str
ì>ì> 
,
ì>ì> 
$str
í>í> 
,
í>í> 
$str
î>î> 
,
î>î> 
$str
ï>ï> 
,
ï>ï> 
$str
ğ>ğ> 
,
ğ>ğ> 
$str
ñ>ñ> 
,
ñ>ñ> 
$str
ò>ò> 
,
ò>ò> 
$str
ó>ó> 
,
ó>ó> 
$str
ô>ô> 
,
ô>ô> 
$str
õ>õ> 
,
õ>õ> 
$str
ö>ö> 
,
ö>ö> 
$str
÷>÷> 
,
÷>÷> 
$str
ø>ø> 
,
ø>ø> 
$str
ù>ù> 
,
ù>ù> 
$str
ú>ú> 
,
ú>ú> 
$str
û>û> 
,
û>û> 
$str
ü>ü> 
,
ü>ü> 
$str
ı>ı> 
,
ı>ı> 
$str
ş>ş> 
,
ş>ş> 
$str
ÿ>ÿ> 
,
ÿ>ÿ> 
$str
€?€? 
,
€?€? 
$str
?? 
,
?? 
$str
‚?‚? 
,
‚?‚? 
$str
ƒ?ƒ? 
,
ƒ?ƒ? 
$str
„?„? 
,
„?„? 
$str
…?…? 
,
…?…? 
$str
†?†? 
,
†?†? 
$str
‡?‡? 
,
‡?‡? 
$str
ˆ?ˆ? 
,
ˆ?ˆ? 
$str
‰?‰? 
,
‰?‰? 
$str
Š?Š? 
,
Š?Š? 
$str
‹?‹? 
,
‹?‹? 
$str
Œ?Œ? 
,
Œ?Œ? 
$str
?? 
,
?? 
$str
?? 
,
?? 
$str
?? 
,
?? 
$str
?? 
,
?? 
$str
‘?‘? 
,
‘?‘? 
$str
’?’? 
,
’?’? 
$str
“?“? 
,
“?“? 
$str
”?”? 
,
”?”? 
$str
•?•? 
,
•?•? 
$str
–?–? 
,
–?–? 
$str
—?—? 
,
—?—? 
$str
˜?˜? 
,
˜?˜? 
$str
™?™? 
,
™?™? 
$str
š?š? 
,
š?š? 
$str
›?›? 
,
›?›? 
$str
œ?œ? 
,
œ?œ? 
$str
?? 
,
?? 
$str
?? 
,
?? 
$str
Ÿ?Ÿ? 
,
Ÿ?Ÿ? 
$str
 ? ? 
,
 ? ? 
$str
¡?¡? 
,
¡?¡? 
$str
¢?¢? 
,
¢?¢? 
$str
£?£? 
,
£?£? 
$str
¤?¤? 
,
¤?¤? 
$str
¥?¥? 
,
¥?¥? 
$str
¦?¦? 
,
¦?¦? 
$str
§?§? 
,
§?§? 
$str
¨?¨? 
,
¨?¨? 
$str
©?©? 
,
©?©? 
$str
ª?ª? 
,
ª?ª? 
$str
«?«? 
,
«?«? 
$str
¬?¬? 
,
¬?¬? 
$str
­?­? 
,
­?­? 
$str
®?®? 
,
®?®? 
$str
¯?¯? 
,
¯?¯? 
$str
°?°? 
,
°?°? 
$str
±?±? 
,
±?±? 
$str
²?²? 
,
²?²? 
$str
³?³? 
,
³?³? 
$str
´?´? 
,
´?´? 
$str
µ?µ? 
,
µ?µ? 
$str
¶?¶? 
,
¶?¶? 
$str
·?·? 
,
·?·? 
$str
¸?¸? 
,
¸?¸? 
$str
¹?¹? 
,
¹?¹? 
$str
º?º? 
,
º?º? 
$str
»?»? 
,
»?»? 
$str
¼?¼? 
,
¼?¼? 
$str
½?½? 
,
½?½? 
$str
¾?¾? 
,
¾?¾? 
$str
¿?¿? 
,
¿?¿? 
$str
À?À? 
,
À?À? 
$str
Á?Á? 
,
Á?Á? 
$str
Â?Â? 
,
Â?Â? 
$str
Ã?Ã? 
,
Ã?Ã? 
$str
Ä?Ä? 
,
Ä?Ä? 
$str
Å?Å? 
,
Å?Å? 
$str
Æ?Æ? 
,
Æ?Æ? 
$str
Ç?Ç? 
,
Ç?Ç? 
$str
È?È? 
,
È?È? 
$str
É?É? 
,
É?É? 
$str
Ê?Ê? 
,
Ê?Ê? 
$str
Ë?Ë? 
,
Ë?Ë? 
$str
Ì?Ì? 
,
Ì?Ì? 
$str
Í?Í? 
,
Í?Í? 
$str
Î?Î? 
,
Î?Î? 
$str
Ï?Ï? 
,
Ï?Ï? 
$str
Ğ?Ğ? 
,
Ğ?Ğ? 
$str
Ñ?Ñ? 
,
Ñ?Ñ? 
$str
Ò?Ò? 
,
Ò?Ò? 
$str
Ó?Ó? 
,
Ó?Ó? 
$str
Ô?Ô? 
,
Ô?Ô? 
$str
Õ?Õ? 
,
Õ?Õ? 
$str
Ö?Ö? 
,
Ö?Ö? 
$str
×?×? 
,
×?×? 
$str
Ø?Ø? 
,
Ø?Ø? 
$str
Ù?Ù? 
,
Ù?Ù? 
$str
Ú?Ú? 
,
Ú?Ú? 
$str
Û?Û? 
,
Û?Û? 
$str
Ü?Ü? 
,
Ü?Ü? 
$str
İ?İ? 
,
İ?İ? 
$str
Ş?Ş? 
,
Ş?Ş? 
$str
ß?ß? 
,
ß?ß? 
$str
à?à? 
,
à?à? 
$str
á?á? 
,
á?á? 
$str
â?â? 
,
â?â? 
$str
ã?ã? 
,
ã?ã? 
$str
ä?ä? 
,
ä?ä? 
$str
å?å? 
,
å?å? 
$str
æ?æ? 
,
æ?æ? 
$str
ç?ç? 
,
ç?ç? 
$str
è?è? 
,
è?è? 
$str
é?é? 
,
é?é? 
$str
ê?ê? 
,
ê?ê? 
$str
ë?ë? 
,
ë?ë? 
$str
ì?ì? 
,
ì?ì? 
$str
í?í? 
,
í?í? 
$str
î?î? 
,
î?î? 
$str
ï?ï? 
,
ï?ï? 
$str
ğ?ğ? 
,
ğ?ğ? 
$str
ñ?ñ? 
,
ñ?ñ? 
$str
ò?ò? 
,
ò?ò? 
$str
ó?ó? 
,
ó?ó? 
$str
ô?ô? 
,
ô?ô? 
$str
õ?õ? 
,
õ?õ? 
$str
ö?ö? 
,
ö?ö? 
$str
÷?÷? 
,
÷?÷? 
$str
ø?ø? 
,
ø?ø? 
$str
ù?ù? 
,
ù?ù? 
$str
ú?ú? 
,
ú?ú? 
$str
û?û? 
,
û?û? 
$str
ü?ü? 
,
ü?ü? 
$str
ı?ı? 
,
ı?ı? 
$str
ş?ş? 
,
ş?ş? 
$str
ÿ?ÿ? 
,
ÿ?ÿ? 
$str
€@€@ 
,
€@€@ 
$str
@@ 
,
@@ 
$str
‚@‚@ 
,
‚@‚@ 
$str
ƒ@ƒ@ 
,
ƒ@ƒ@ 
$str
„@„@ 
,
„@„@ 
$str
…@…@ 
,
…@…@ 
$str
†@†@ 
,
†@†@ 
$str
‡@‡@ 
,
‡@‡@ 
$str
ˆ@ˆ@ 
,
ˆ@ˆ@ 
$str
‰@‰@ 
,
‰@‰@ 
$str
Š@Š@ 
,
Š@Š@ 
$str
‹@‹@ 
,
‹@‹@ 
$str
Œ@Œ@ 
,
Œ@Œ@ 
$str
@@ 
,
@@ 
$str
@@ 
,
@@ 
$str
@@ 
,
@@ 
$str
@@ 
,
@@ 
$str
‘@‘@ 
,
‘@‘@ 
$str
’@’@ 
,
’@’@ 
$str
“@“@ 
,
“@“@ 
$str
”@”@ 
,
”@”@ 
$str
•@•@ 
,
•@•@ 
$str
–@–@ 
,
–@–@ 
$str
—@—@ 
,
—@—@ 
$str
˜@˜@ 
,
˜@˜@ 
$str
™@™@ 
,
™@™@ 
$str
š@š@ 
,
š@š@ 
$str
›@›@ 
,
›@›@ 
$str
œ@œ@ 
,
œ@œ@ 
$str
@@ 
,
@@ 
$str
@@ 
,
@@ 
$str
Ÿ@Ÿ@ 
,
Ÿ@Ÿ@ 
$str
 @ @ 
,
 @ @ 
$str
¡@¡@ 
,
¡@¡@ 
$str
¢@¢@ 
,
¢@¢@ 
$str
£@£@ 
,
£@£@ 
$str
¤@¤@ 
,
¤@¤@ 
$str
¥@¥@ 
,
¥@¥@ 
$str
¦@¦@ 
,
¦@¦@ 
$str
§@§@ 
,
§@§@ 
$str
¨@¨@ 
,
¨@¨@ 
$str
©@©@ 
,
©@©@ 
$str
ª@ª@ 
,
ª@ª@ 
$str
«@«@ 
,
«@«@ 
$str
¬@¬@ 
,
¬@¬@ 
$str
­@­@ 
,
­@­@ 
$str
®@®@ 
,
®@®@ 
$str
¯@¯@ 
,
¯@¯@ 
$str
°@°@ 
,
°@°@ 
$str
±@±@ 
,
±@±@ 
$str
²@²@ 
,
²@²@ 
$str
³@³@ 
,
³@³@ 
$str
´@´@ 
,
´@´@ 
$str
µ@µ@ 
,
µ@µ@ 
$str
¶@¶@ 
,
¶@¶@ 
$str
·@·@ 
,
·@·@ 
$str
¸@¸@ 
,
¸@¸@ 
$str
¹@¹@ 
,
¹@¹@ 
$str
º@º@ 
,
º@º@ 
$str
»@»@ 
,
»@»@ 
$str
¼@¼@ 
,
¼@¼@ 
$str
½@½@ 
,
½@½@ 
$str
¾@¾@ 
,
¾@¾@ 
$str
¿@¿@ 
,
¿@¿@ 
$str
À@À@ 
,
À@À@ 
$str
Á@Á@ 
,
Á@Á@ 
$str
Â@Â@ 
,
Â@Â@ 
$str
Ã@Ã@ 
,
Ã@Ã@ 
$str
Ä@Ä@ 
,
Ä@Ä@ 
$str
Å@Å@ 
,
Å@Å@ 
$str
Æ@Æ@ 
,
Æ@Æ@ 
$str
Ç@Ç@ 
,
Ç@Ç@ 
$str
È@È@ 
,
È@È@ 
$str
É@É@ 
,
É@É@ 
$str
Ê@Ê@ 
,
Ê@Ê@ 
$str
Ë@Ë@ 
,
Ë@Ë@ 
$str
Ì@Ì@ 
,
Ì@Ì@ 
$str
Í@Í@ 
,
Í@Í@ 
$str
Î@Î@ 
,
Î@Î@ 
$str
Ï@Ï@ 
,
Ï@Ï@ 
$str
Ğ@Ğ@ 
,
Ğ@Ğ@ 
$str
Ñ@Ñ@ 
,
Ñ@Ñ@ 
$str
Ò@Ò@ 
,
Ò@Ò@ 
$str
Ó@Ó@ 
,
Ó@Ó@ 
$str
Ô@Ô@ 
,
Ô@Ô@ 
$str
Õ@Õ@ 
,
Õ@Õ@ 
$str
Ö@Ö@ 
,
Ö@Ö@ 
$str
×@×@ 
,
×@×@ 
$str
Ø@Ø@ 
,
Ø@Ø@ 
$str
Ù@Ù@ 
,
Ù@Ù@ 
$str
Ú@Ú@ 
,
Ú@Ú@ 
$str
Û@Û@ 
,
Û@Û@ 
$str
Ü@Ü@ 
,
Ü@Ü@ 
$str
İ@İ@ 
,
İ@İ@ 
$str
Ş@Ş@ 
,
Ş@Ş@ 
$str
ß@ß@ 
,
ß@ß@ 
$str
à@à@ 
,
à@à@ 
$str
á@á@ 
,
á@á@ 
$str
â@â@ 
,
â@â@ 
$str
ã@ã@ 
,
ã@ã@ 
$str
ä@ä@ 
,
ä@ä@ 
$str
å@å@ 
,
å@å@ 
$str
æ@æ@ 
,
æ@æ@ 
$str
ç@ç@ 
,
ç@ç@ 
$str
è@è@ 
,
è@è@ 
$str
é@é@ 
,
é@é@ 
$str
ê@ê@ 
,
ê@ê@ 
$str
ë@ë@ 
,
ë@ë@ 
$str
ì@ì@ 
,
ì@ì@ 
$str
í@í@ 
,
í@í@ 
$str
î@î@ 
,
î@î@ 
$str
ï@ï@ 
,
ï@ï@ 
$str
ğ@ğ@ 
,
ğ@ğ@ 
$str
ñ@ñ@ 
,
ñ@ñ@ 
$str
ò@ò@ 
,
ò@ò@ 
$str
ó@ó@ 
,
ó@ó@ 
$str
ô@ô@ 
,
ô@ô@ 
$str
õ@õ@ 
,
õ@õ@ 
$str
ö@ö@ 
,
ö@ö@ 
$str
÷@÷@ 
,
÷@÷@ 
$str
ø@ø@ 
,
ø@ø@ 
$str
ù@ù@ 
,
ù@ù@ 
$str
ú@ú@ 
,
ú@ú@ 
$str
û@û@ 
,
û@û@ 
$str
ü@ü@ 
,
ü@ü@ 
$str
ı@ı@ 
,
ı@ı@ 
$str
ş@ş@ 
,
ş@ş@ 
$str
ÿ@ÿ@ 
,
ÿ@ÿ@ 
$str
€A€A 
,
€A€A 
$str
AA 
,
AA 
$str
‚A‚A 
,
‚A‚A 
$str
ƒAƒA 
,
ƒAƒA 
$str
„A„A 
,
„A„A 
$str
…A…A 
,
…A…A 
$str
†A†A 
,
†A†A 
$str
‡A‡A 
,
‡A‡A 
$str
ˆAˆA 
,
ˆAˆA 
$str
‰A‰A 
,
‰A‰A 
$str
ŠAŠA 
,
ŠAŠA 
$str
‹A‹A 
,
‹A‹A 
$str
ŒAŒA 
,
ŒAŒA 
$str
AA 
,
AA 
$str
AA 
,
AA 
$str
AA 
,
AA 
$str
AA 
,
AA 
$str
‘A‘A 
,
‘A‘A 
$str
’A’A 
,
’A’A 
$str
“A“A 
,
“A“A 
$str
”A”A 
,
”A”A 
$str
•A•A 
,
•A•A 
$str
–A–A 
,
–A–A 
$str
—A—A 
,
—A—A 
$str
˜A˜A 
,
˜A˜A 
$str
™A™A 
,
™A™A 
$str
šAšA 
,
šAšA 
$str
›A›A 
,
›A›A 
$str
œAœA 
,
œAœA 
$str
AA 
,
AA 
$str
AA 
,
AA 
$str
ŸAŸA 
,
ŸAŸA 
$str
 A A 
,
 A A 
$str
¡A¡A 
,
¡A¡A 
$str
¢A¢A 
,
¢A¢A 
$str
£A£A 
,
£A£A 
$str
¤A¤A 
,
¤A¤A 
$str
¥A¥A 
,
¥A¥A 
$str
¦A¦A 
,
¦A¦A 
$str
§A§A 
,
§A§A 
$str
¨A¨A 
,
¨A¨A 
$str
©A©A 
,
©A©A 
$str
ªAªA 
,
ªAªA 
$str
«A«A 
,
«A«A 
$str
¬A¬A 
,
¬A¬A 
$str
­A­A 
,
­A­A 
$str
®A®A 
,
®A®A 
$str
¯A¯A 
,
¯A¯A 
$str
°A°A 
,
°A°A 
$str
±A±A 
,
±A±A 
$str
²A²A 
,
²A²A 
$str
³A³A 
,
³A³A 
$str
´A´A 
,
´A´A 
$str
µAµA 
,
µAµA 
$str
¶A¶A 
,
¶A¶A 
$str
·A·A 
,
·A·A 
$str
¸A¸A 
,
¸A¸A 
$str
¹A¹A 
,
¹A¹A 
$str
ºAºA 
,
ºAºA 
$str
»A»A 
,
»A»A 
$str
¼A¼A 
,
¼A¼A 
$str
½A½A 
,
½A½A 
$str
¾A¾A 
,
¾A¾A 
$str
¿A¿A 
,
¿A¿A 
$str
ÀAÀA 
,
ÀAÀA 
$str
ÁAÁA 
,
ÁAÁA 
$str
ÂAÂA 
,
ÂAÂA 
$str
ÃAÃA 
,
ÃAÃA 
$str
ÄAÄA 
,
ÄAÄA 
$str
ÅAÅA 
,
ÅAÅA 
$str
ÆAÆA 
,
ÆAÆA 
$str
ÇAÇA 
,
ÇAÇA 
$str
ÈAÈA 
,
ÈAÈA 
$str
ÉAÉA 
,
ÉAÉA 
$str
ÊAÊA 
,
ÊAÊA 
$str
ËAËA 
,
ËAËA 
$str
ÌAÌA 
,
ÌAÌA 
$str
ÍAÍA 
,
ÍAÍA 
$str
ÎAÎA 
,
ÎAÎA 
$str
ÏAÏA 
,
ÏAÏA 
$str
ĞAĞA 
,
ĞAĞA 
$str
ÑAÑA 
,
ÑAÑA 
$str
ÒAÒA 
,
ÒAÒA 
$str
ÓAÓA 
,
ÓAÓA 
$str
ÔAÔA 
,
ÔAÔA 
$str
ÕAÕA 
,
ÕAÕA 
$str
ÖAÖA 
,
ÖAÖA 
$str
×A×A 
,
×A×A 
$str
ØAØA 
,
ØAØA 
$str
ÙAÙA 
,
ÙAÙA 
$str
ÚAÚA 
,
ÚAÚA 
$str
ÛAÛA 
,
ÛAÛA 
$str
ÜAÜA 
,
ÜAÜA 
$str
İAİA 
,
İAİA 
$str
ŞAŞA 
,
ŞAŞA 
$str
ßAßA 
,
ßAßA 
$str
àAàA 
,
àAàA 
$str
áAáA 
,
áAáA 
$str
âAâA 
,
âAâA 
$str
ãAãA 
,
ãAãA 
$str
äAäA 
,
äAäA 
$str
åAåA 
,
åAåA 
$str
æAæA 
,
æAæA 
$str
çAçA 
,
çAçA 
$str
èAèA 
,
èAèA 
$str
éAéA 
,
éAéA 
$str
êAêA 
,
êAêA 
$str
ëAëA 
,
ëAëA 
$str
ìAìA 
,
ìAìA 
$str
íAíA 
,
íAíA 
$str
îAîA 
,
îAîA 
$str
ïAïA 
,
ïAïA 
$str
ğAğA 
,
ğAğA 
$str
ñAñA 
,
ñAñA 
$str
òAòA 
,
òAòA 
$str
óAóA 
,
óAóA 
$str
ôAôA 
,
ôAôA 
$str
õAõA 
,
õAõA 
$str
öAöA 
,
öAöA 
$str
÷A÷A 
,
÷A÷A 
$str
øAøA 
,
øAøA 
$str
ùAùA 
,
ùAùA 
$str
úAúA 
,
úAúA 
$str
ûAûA 
,
ûAûA 
$str
üAüA 
,
üAüA 
$str
ıAıA 
,
ıAıA 
$str
şAşA 
,
şAşA 
$str
ÿAÿA 
,
ÿAÿA 
$str
€B€B 
,
€B€B 
$str
BB 
,
BB 
$str
‚B‚B 
,
‚B‚B 
$str
ƒBƒB 
,
ƒBƒB 
$str
„B„B 
,
„B„B 
$str
…B…B 
,
…B…B 
$str
†B†B 
,
†B†B 
$str
‡B‡B 
,
‡B‡B 
$str
ˆBˆB 
,
ˆBˆB 
$str
‰B‰B 
,
‰B‰B 
$str
ŠBŠB 
,
ŠBŠB 
$str
‹B‹B 
,
‹B‹B 
$str
ŒBŒB 
,
ŒBŒB 
$str
BB 
,
BB 
$str
BB 
,
BB 
$str
BB 
,
BB 
$str
BB 
,
BB 
$str
‘B‘B 
,
‘B‘B 
$str
’B’B 
,
’B’B 
$str
“B“B 
,
“B“B 
$str
”B”B 
,
”B”B 
$str
•B•B 
,
•B•B 
$str
–B–B 
,
–B–B 
$str
—B—B 
,
—B—B 
$str
˜B˜B 
,
˜B˜B 
$str
™B™B 
,
™B™B 
$str
šBšB 
,
šBšB 
$str
›B›B 
,
›B›B 
$str
œBœB 
,
œBœB 
$str
BB 
,
BB 
$str
BB 
,
BB 
$str
ŸBŸB 
,
ŸBŸB 
$str
 B B 
,
 B B 
$str
¡B¡B 
,
¡B¡B 
$str
¢B¢B 
,
¢B¢B 
$str
£B£B 
,
£B£B 
$str
¤B¤B 
,
¤B¤B 
$str
¥B¥B 
,
¥B¥B 
$str
¦B¦B 
,
¦B¦B 
$str
§B§B 
,
§B§B 
$str
¨B¨B 
,
¨B¨B 
$str
©B©B 
,
©B©B 
$str
ªBªB 
,
ªBªB 
$str
«B«B 
,
«B«B 
$str
¬B¬B 
,
¬B¬B 
$str
­B­B 
,
­B­B 
$str
®B®B 
,
®B®B 
$str
¯B¯B 
,
¯B¯B 
$str
°B°B 
,
°B°B 
$str
±B±B 
,
±B±B 
$str
²B²B 
,
²B²B 
$str
³B³B 
,
³B³B 
$str
´B´B 
,
´B´B 
$str
µBµB 
,
µBµB 
$str
¶B¶B 
,
¶B¶B 
$str
·B·B 
,
·B·B 
$str
¸B¸B 
,
¸B¸B 
$str
¹B¹B 
,
¹B¹B 
$str
ºBºB 
,
ºBºB 
$str
»B»B 
,
»B»B 
$str
¼B¼B 
,
¼B¼B 
$str
½B½B 
,
½B½B 
$str
¾B¾B 
,
¾B¾B 
$str
¿B¿B 
,
¿B¿B 
$str
ÀBÀB 
,
ÀBÀB 
$str
ÁBÁB 
,
ÁBÁB 
$str
ÂBÂB 
,
ÂBÂB 
$str
ÃBÃB 
,
ÃBÃB 
$str
ÄBÄB 
,
ÄBÄB 
$str
ÅBÅB 
,
ÅBÅB 
$str
ÆBÆB 
,
ÆBÆB 
$str
ÇBÇB 
,
ÇBÇB 
$str
ÈBÈB 
,
ÈBÈB 
$str
ÉBÉB 
,
ÉBÉB 
$str
ÊBÊB 
,
ÊBÊB 
$str
ËBËB 
,
ËBËB 
$str
ÌBÌB 
,
ÌBÌB 
$str
ÍBÍB 
,
ÍBÍB 
$str
ÎBÎB 
,
ÎBÎB 
$str
ÏBÏB 
,
ÏBÏB 
$str
ĞBĞB 
,
ĞBĞB 
$str
ÑBÑB 
,
ÑBÑB 
$str
ÒBÒB 
,
ÒBÒB 
$str
ÓBÓB 
,
ÓBÓB 
$str
ÔBÔB 
,
ÔBÔB 
$str
ÕBÕB 
,
ÕBÕB 
$str
ÖBÖB 
,
ÖBÖB 
$str
×B×B 
,
×B×B 
$str
ØBØB 
,
ØBØB 
$str
ÙBÙB 
,
ÙBÙB 
$str
ÚBÚB 
,
ÚBÚB 
$str
ÛBÛB 
,
ÛBÛB 
$str
ÜBÜB 
,
ÜBÜB 
$str
İBİB 
,
İBİB 
$str
ŞBŞB 
,
ŞBŞB 
$str
ßBßB 
,
ßBßB 
$str
àBàB 
,
àBàB 
$str
áBáB 
,
áBáB 
$str
âBâB 
,
âBâB 
$str
ãBãB 
,
ãBãB 
$str
äBäB 
,
äBäB 
$str
åBåB 
,
åBåB 
$str
æBæB 
,
æBæB 
$str
çBçB 
,
çBçB 
$str
èBèB 
,
èBèB 
$str
éBéB 
,
éBéB 
$str
êBêB 
,
êBêB 
$str
ëBëB 
,
ëBëB 
$str
ìBìB 
,
ìBìB 
$str
íBíB 
,
íBíB 
$str
îBîB 
,
îBîB 
$str
ïBïB 
,
ïBïB 
$str
ğBğB 
,
ğBğB 
$str
ñBñB 
,
ñBñB 
$str
òBòB 
,
òBòB 
$str
óBóB 
,
óBóB 
$str
ôBôB 
,
ôBôB 
$str
õBõB 
,
õBõB 
$str
öBöB 
,
öBöB 
$str
÷B÷B 
,
÷B÷B 
$str
øBøB 
,
øBøB 
$str
ùBùB 
,
ùBùB 
$str
úBúB 
,
úBúB 
$str
ûBûB 
,
ûBûB 
$str
üBüB 
,
üBüB 
$str
ıBıB 
,
ıBıB 
$str
şBşB 
,
şBşB 
$str
ÿBÿB 
,
ÿBÿB 
$str
€C€C 
,
€C€C 
$str
CC 
,
CC 
$str
‚C‚C 
,
‚C‚C 
$str
ƒCƒC 
,
ƒCƒC 
$str
„C„C 
,
„C„C 
$str
…C…C 
,
…C…C 
$str
†C†C 
,
†C†C 
$str
‡C‡C 
,
‡C‡C 
$str
ˆCˆC 
,
ˆCˆC 
$str
‰C‰C 
,
‰C‰C 
$str
ŠCŠC 
,
ŠCŠC 
$str
‹C‹C 
,
‹C‹C 
$str
ŒCŒC 
,
ŒCŒC 
$str
CC 
,
CC 
$str
CC 
,
CC 
$str
CC 
,
CC 
$str
CC 
,
CC 
$str
‘C‘C 
,
‘C‘C 
$str
’C’C 
,
’C’C 
$str
“C“C 
,
“C“C 
$str
”C”C 
,
”C”C 
$str
•C•C 
,
•C•C 
$str
–C–C 
,
–C–C 
$str
—C—C 
,
—C—C 
$str
˜C˜C 
,
˜C˜C 
$str
™C™C 
,
™C™C 
$str
šCšC 
,
šCšC 
$str
›C›C 
,
›C›C 
$str
œCœC 
,
œCœC 
$str
CC 
,
CC 
$str
CC 
,
CC 
$str
ŸCŸC 
,
ŸCŸC 
$str
 C C 
,
 C C 
$str
¡C¡C 
,
¡C¡C 
$str
¢C¢C 
,
¢C¢C 
$str
£C£C 
,
£C£C 
$str
¤C¤C 
,
¤C¤C 
$str
¥C¥C 
,
¥C¥C 
$str
¦C¦C 
,
¦C¦C 
$str
§C§C 
,
§C§C 
$str
¨C¨C 
,
¨C¨C 
$str
©C©C 
,
©C©C 
$str
ªCªC 
,
ªCªC 
$str
«C«C 
,
«C«C 
$str
¬C¬C 
,
¬C¬C 
$str
­C­C 
,
­C­C 
$str
®C®C 
,
®C®C 
$str
¯C¯C 
,
¯C¯C 
$str
°C°C 
,
°C°C 
$str
±C±C 
,
±C±C 
$str
²C²C 
,
²C²C 
$str
³C³C 
,
³C³C 
$str
´C´C 
,
´C´C 
$str
µCµC 
,
µCµC 
$str
¶C¶C 
,
¶C¶C 
$str
·C·C 
,
·C·C 
$str
¸C¸C 
,
¸C¸C 
$str
¹C¹C 
,
¹C¹C 
$str
ºCºC 
,
ºCºC 
$str
»C»C 
,
»C»C 
$str
¼C¼C 
,
¼C¼C 
$str
½C½C 
,
½C½C 
$str
¾C¾C 
,
¾C¾C 
$str
¿C¿C 
,
¿C¿C 
$str
ÀCÀC 
,
ÀCÀC 
$str
ÁCÁC 
,
ÁCÁC 
$str
ÂCÂC 
,
ÂCÂC 
$str
ÃCÃC 
,
ÃCÃC 
$str
ÄCÄC 
,
ÄCÄC 
$str
ÅCÅC 
,
ÅCÅC 
$str
ÆCÆC 
,
ÆCÆC 
$str
ÇCÇC 
,
ÇCÇC 
$str
ÈCÈC 
,
ÈCÈC 
$str
ÉCÉC 
,
ÉCÉC 
$str
ÊCÊC 
,
ÊCÊC 
$str
ËCËC 
,
ËCËC 
$str
ÌCÌC 
,
ÌCÌC 
$str
ÍCÍC 
,
ÍCÍC 
$str
ÎCÎC 
,
ÎCÎC 
$str
ÏCÏC 
,
ÏCÏC 
$str
ĞCĞC 
,
ĞCĞC 
$str
ÑCÑC 
,
ÑCÑC 
$str
ÒCÒC 
,
ÒCÒC 
$str
ÓCÓC 
,
ÓCÓC 
$str
ÔCÔC 
,
ÔCÔC 
$str
ÕCÕC 
,
ÕCÕC 
$str
ÖCÖC 
,
ÖCÖC 
$str
×C×C 
,
×C×C 
$str
ØCØC 
,
ØCØC 
$str
ÙCÙC 
,
ÙCÙC 
$str
ÚCÚC 
,
ÚCÚC 
$str
ÛCÛC 
,
ÛCÛC 
$str
ÜCÜC 
,
ÜCÜC 
$str
İCİC 
,
İCİC 
$str
ŞCŞC 
,
ŞCŞC 
$str
ßCßC 
,
ßCßC 
$str
àCàC 
,
àCàC 
$str
áCáC 
,
áCáC 
$str
âCâC 
,
âCâC 
$str
ãCãC 
,
ãCãC 
$str
äCäC 
,
äCäC 
$str
åCåC 
,
åCåC 
$str
æCæC 
,
æCæC 
$str
çCçC 
,
çCçC 
$str
èCèC 
,
èCèC 
$str
éCéC 
,
éCéC 
$str
êCêC 
,
êCêC 
$str
ëCëC 
,
ëCëC 
$str
ìCìC 
,
ìCìC 
$str
íCíC 
,
íCíC 
$str
îCîC 
,
îCîC 
$str
ïCïC 
,
ïCïC 
$str
ğCğC 
,
ğCğC 
$str
ñCñC 
,
ñCñC 
$str
òCòC 
,
òCòC 
$str
óCóC 
,
óCóC 
$str
ôCôC 
,
ôCôC 
$str
õCõC 
,
õCõC 
$str
öCöC 
,
öCöC 
$str
÷C÷C 
,
÷C÷C 
$str
øCøC 
,
øCøC 
$str
ùCùC 
,
ùCùC 
$str
úCúC 
,
úCúC 
$str
ûCûC 
,
ûCûC 
$str
üCüC 
,
üCüC 
$str
ıCıC 
,
ıCıC 
$str
şCşC 
,
şCşC 
$str
ÿCÿC 
,
ÿCÿC 
$str
€D€D 
,
€D€D 
$str
DD 
,
DD 
$str
‚D‚D 
,
‚D‚D 
$str
ƒDƒD 
,
ƒDƒD 
$str
„D„D 
,
„D„D 
$str
…D…D 
,
…D…D 
$str
†D†D 
,
†D†D 
$str
‡D‡D 
,
‡D‡D 
$str
ˆDˆD 
,
ˆDˆD 
$str
‰D‰D 
,
‰D‰D 
$str
ŠDŠD 
,
ŠDŠD 
$str
‹D‹D 
,
‹D‹D 
$str
ŒDŒD 
,
ŒDŒD 
$str
DD 
,
DD 
$str
DD 
,
DD 
$str
DD 
,
DD 
$str
DD 
,
DD 
$str
‘D‘D 
,
‘D‘D 
$str
’D’D 
,
’D’D 
$str
“D“D 
,
“D“D 
$str
”D”D 
,
”D”D 
$str
•D•D 
,
•D•D 
$str
–D–D 
,
–D–D 
$str
—D—D 
,
—D—D 
$str
˜D˜D 
,
˜D˜D 
$str
™D™D 
,
™D™D 
$str
šDšD 
,
šDšD 
$str
›D›D 
,
›D›D 
$str
œDœD 
,
œDœD 
$str
DD 
,
DD 
$str
DD 
,
DD 
$str
ŸDŸD 
,
ŸDŸD 
$str
 D D 
,
 D D 
$str
¡D¡D 
,
¡D¡D 
$str
¢D¢D 
,
¢D¢D 
$str
£D£D 
,
£D£D 
$str
¤D¤D 
,
¤D¤D 
$str
¥D¥D 
,
¥D¥D 
$str
¦D¦D 
,
¦D¦D 
$str
§D§D 
,
§D§D 
$str
¨D¨D 
,
¨D¨D 
$str
©D©D 
,
©D©D 
$str
ªDªD 
,
ªDªD 
$str
«D«D 
,
«D«D 
$str
¬D¬D 
,
¬D¬D 
$str
­D­D 
,
­D­D 
$str
®D®D 
,
®D®D 
$str
¯D¯D 
,
¯D¯D 
$str
°D°D 
,
°D°D 
$str
±D±D 
,
±D±D 
$str
²D²D 
,
²D²D 
$str
³D³D 
,
³D³D 
$str
´D´D 
,
´D´D 
$str
µDµD 
,
µDµD 
$str
¶D¶D 
,
¶D¶D 
$str
·D·D 
,
·D·D 
$str
¸D¸D 
,
¸D¸D 
$str
¹D¹D 
,
¹D¹D 
$str
ºDºD 
,
ºDºD 
$str
»D»D 
,
»D»D 
$str
¼D¼D 
,
¼D¼D 
$str
½D½D 
,
½D½D 
$str
¾D¾D 
,
¾D¾D 
$str
¿D¿D 
,
¿D¿D 
$str
ÀDÀD 
,
ÀDÀD 
$str
ÁDÁD 
,
ÁDÁD 
$str
ÂDÂD 
,
ÂDÂD 
$str
ÃDÃD 
,
ÃDÃD 
$str
ÄDÄD 
,
ÄDÄD 
$str
ÅDÅD 
,
ÅDÅD 
$str
ÆDÆD 
,
ÆDÆD 
$str
ÇDÇD 
,
ÇDÇD 
$str
ÈDÈD 
,
ÈDÈD 
$str
ÉDÉD 
,
ÉDÉD 
$str
ÊDÊD 
,
ÊDÊD 
$str
ËDËD 
,
ËDËD 
$str
ÌDÌD 
,
ÌDÌD 
$str
ÍDÍD 
,
ÍDÍD 
$str
ÎDÎD 
,
ÎDÎD 
$str
ÏDÏD 
,
ÏDÏD 
$str
ĞDĞD 
,
ĞDĞD 
$str
ÑDÑD 
,
ÑDÑD 
$str
ÒDÒD 
,
ÒDÒD 
$str
ÓDÓD 
,
ÓDÓD 
$str
ÔDÔD 
,
ÔDÔD 
$str
ÕDÕD 
,
ÕDÕD 
$str
ÖDÖD 
,
ÖDÖD 
$str
×D×D 
,
×D×D 
$str
ØDØD 
,
ØDØD 
$str
ÙDÙD 
,
ÙDÙD 
$str
ÚDÚD 
,
ÚDÚD 
$str
ÛDÛD 
,
ÛDÛD 
$str
ÜDÜD 
,
ÜDÜD 
$str
İDİD 
,
İDİD 
$str
ŞDŞD 
,
ŞDŞD 
$str
ßDßD 
,
ßDßD 
$str
àDàD 
,
àDàD 
$str
áDáD 
,
áDáD 
$str
âDâD 
,
âDâD 
$str
ãDãD 
,
ãDãD 
$str
äDäD 
,
äDäD 
$str
åDåD 
}
æDæD 	
;
æDæD	 

}
çDçD 
}èDèD ¬_
…C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\TestDataGenerator.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsReporting" 3
{		 
class

 	
TestDataGenerator


 
{ 
readonly 
TestDataDefinition #
m_DataDefinition$ 4
;4 5
readonly 
Random 
m_Random  
;  !
readonly 
IReadOnlyList 
< #
NetworkObjectIdentifier 6
>6 7
m_GameObjects8 E
;E F
public 
TestDataGenerator  
(  !
TestDataDefinition! 3
dataDefinition4 B
,B C
RandomD J
randomK Q
,Q R
intS V
nbGameObjectsW d
)d e
{ 	
m_DataDefinition 
= 
dataDefinition -
;- .
m_Random 
= 
random 
; 
m_GameObjects 
= 

Enumerable &
.& '
Range' ,
(, -
$num- .
,. /
nbGameObjects0 =
)= >
. 
Select 
( 
x 
=> 
new  #
NetworkObjectIdentifier! 8
(8 9
m_DataDefinition9 I
.I J"
GenerateGameObjectNameJ `
(` a
)a b
,b c
(d e
ulonge j
)j k
xl m
)m n
)n o
. 
ToList 
( 
) 
; 
} 	
public 
IEnumerable 
< 
NamedMessageEvent ,
>, -%
GenerateNamedMessageEvent. G
(G H
paramsH N
ConnectionInfoO ]
[] ^
]^ _
connections` k
)k l
{ 	
var 
name 
= 
m_DataDefinition '
.' ($
GenerateNamedMessageName( @
(@ A
)A B
;B C
var 
	byteCount 
= 
m_DataDefinition ,
., -
GenerateByteCount- >
(> ?
)? @
;@ A
foreach 
( 
var 

connection #
in$ &
connections' 2
)2 3
{   
yield!! 
return!! 
new!!  
NamedMessageEvent!!! 2
(!!2 3

connection!!3 =
,!!= >
name!!? C
,!!C D
	byteCount!!E N
)!!N O
;!!O P
}"" 
}## 	
public%% 
IEnumerable%% 
<%% 
UnnamedMessageEvent%% .
>%%. /'
GenerateUnnamedMessageEvent%%0 K
(%%K L
params%%L R
ConnectionInfo%%S a
[%%a b
]%%b c
connections%%d o
)%%o p
{&& 	
var'' 
	byteCount'' 
='' 
m_DataDefinition'' ,
.'', -
GenerateByteCount''- >
(''> ?
)''? @
;''@ A
foreach)) 
()) 
var)) 

connection)) #
in))$ &
connections))' 2
)))2 3
{** 
yield++ 
return++ 
new++  
UnnamedMessageEvent++! 4
(++4 5

connection++5 ?
,++? @
	byteCount++A J
)++J K
;++K L
},, 
}-- 	
public// 
IEnumerable// 
<//  
NetworkVariableEvent// /
>/// 0(
GenerateNetworkVariableEvent//1 M
(//M N
params//N T
ConnectionInfo//U c
[//c d
]//d e
connections//f q
)//q r
{00 	
var11 

gameObject11 
=11 
GetRandomGameObject11 0
(110 1
)111 2
;112 3
var22 
componentName22 
=22 
m_DataDefinition22  0
.220 1!
GenerateComponentName221 F
(22F G
)22G H
;22H I
var33 
variableName33 
=33 
m_DataDefinition33 /
.33/ 0 
GenerateVariableName330 D
(33D E
)33E F
;33F G
var44 
	byteCount44 
=44 
m_DataDefinition44 ,
.44, -
GenerateByteCount44- >
(44> ?
)44? @
;44@ A
foreach66 
(66 
var66 

connection66 #
in66$ &
connections66' 2
)662 3
{77 
yield88 
return88 
new88   
NetworkVariableEvent88! 5
(885 6

connection886 @
,88@ A

gameObject88B L
,88L M
variableName88N Z
,88Z [
componentName88\ i
,88i j
	byteCount88k t
)88t u
;88u v
}99 
}:: 	
public<< 
IEnumerable<< 
<<<  
OwnershipChangeEvent<< /
><</ 0(
GenerateOwnershipChangeEvent<<1 M
(<<M N
params<<N T
ConnectionInfo<<U c
[<<c d
]<<d e
connections<<f q
)<<q r
{== 	
var>> 

gameObject>> 
=>> 
GetRandomGameObject>> 0
(>>0 1
)>>1 2
;>>2 3
var?? 
	byteCount?? 
=?? 
m_DataDefinition?? ,
.??, -
GenerateByteCount??- >
(??> ?
)??? @
;??@ A
foreachAA 
(AA 
varAA 

connectionAA #
inAA$ &
connectionsAA' 2
)AA2 3
{BB 
yieldCC 
returnCC 
newCC   
OwnershipChangeEventCC! 5
(CC5 6

connectionCC6 @
,CC@ A

gameObjectCCB L
,CCL M
	byteCountCCN W
)CCW X
;CCX Y
}DD 
}EE 	
publicGG 
IEnumerableGG 
<GG 
ObjectSpawnedEventGG -
>GG- .&
GenerateObjectSpawnedEventGG/ I
(GGI J
paramsGGJ P
ConnectionInfoGGQ _
[GG_ `
]GG` a
connectionsGGb m
)GGm n
{HH 	
varII 

gameObjectII 
=II 
GetRandomGameObjectII 0
(II0 1
)II1 2
;II2 3
varJJ 
	byteCountJJ 
=JJ 
m_DataDefinitionJJ ,
.JJ, -
GenerateByteCountJJ- >
(JJ> ?
)JJ? @
;JJ@ A
foreachLL 
(LL 
varLL 

connectionLL #
inLL$ &
connectionsLL' 2
)LL2 3
{MM 
yieldNN 
returnNN 
newNN  
ObjectSpawnedEventNN! 3
(NN3 4

connectionNN4 >
,NN> ?

gameObjectNN@ J
,NNJ K
	byteCountNNL U
)NNU V
;NNV W
}OO 
}PP 	
publicRR 
IEnumerableRR 
<RR  
ObjectDestroyedEventRR /
>RR/ 0(
GenerateObjectDestroyedEventRR1 M
(RRM N
paramsRRN T
ConnectionInfoRRU c
[RRc d
]RRd e
connectionsRRf q
)RRq r
{SS 	
varTT 

gameObjectTT 
=TT 
GetRandomGameObjectTT 0
(TT0 1
)TT1 2
;TT2 3
varUU 
	byteCountUU 
=UU 
m_DataDefinitionUU ,
.UU, -
GenerateByteCountUU- >
(UU> ?
)UU? @
;UU@ A
foreachWW 
(WW 
varWW 

connectionWW #
inWW$ &
connectionsWW' 2
)WW2 3
{XX 
yieldYY 
returnYY 
newYY   
ObjectDestroyedEventYY! 5
(YY5 6

connectionYY6 @
,YY@ A

gameObjectYYB L
,YYL M
	byteCountYYN W
)YYW X
;YYX Y
}ZZ 
}[[ 	
public]] 
IEnumerable]] 
<]] 
RpcEvent]] #
>]]# $
GenerateRpcEvent]]% 5
(]]5 6
params]]6 <
ConnectionInfo]]= K
[]]K L
]]]L M
connections]]N Y
)]]Y Z
{^^ 	
var__ 

gameObject__ 
=__ 
GetRandomGameObject__ 0
(__0 1
)__1 2
;__2 3
var`` 
rpcName`` 
=`` 
m_DataDefinition`` *
.``* +
GenerateRpcName``+ :
(``: ;
)``; <
;``< =
varaa 
componentNameaa 
=aa 
m_DataDefinitionaa  0
.aa0 1!
GenerateComponentNameaa1 F
(aaF G
)aaG H
;aaH I
varbb 
	byteCountbb 
=bb 
m_DataDefinitionbb ,
.bb, -
GenerateByteCountbb- >
(bb> ?
)bb? @
;bb@ A
foreachdd 
(dd 
vardd 

connectiondd #
indd$ &
connectionsdd' 2
)dd2 3
{ee 
yieldff 
returnff 
newff  
RpcEventff! )
(ff) *

connectionff* 4
,ff4 5

gameObjectff6 @
,ff@ A
rpcNameffB I
,ffI J
componentNameffK X
,ffX Y
	byteCountffZ c
)ffc d
;ffd e
}gg 
}hh 	
publicjj 
IEnumerablejj 
<jj 
ServerLogEventjj )
>jj) *"
GenerateServerLogEventjj+ A
(jjA B
paramsjjB H
ConnectionInfojjI W
[jjW X
]jjX Y
connectionsjjZ e
)jje f
{kk 	
varll 
	byteCountll 
=ll 
m_DataDefinitionll ,
.ll, -
GenerateByteCountll- >
(ll> ?
)ll? @
;ll@ A
foreachnn 
(nn 
varnn 

connectionnn #
innn$ &
connectionsnn' 2
)nn2 3
{oo 
yieldpp 
returnpp 
newpp  
ServerLogEventpp! /
(pp/ 0

connectionpp0 :
,pp: ;
LogLevelpp< D
.ppD E
InfoppE I
,ppI J
	byteCountppK T
)ppT U
;ppU V
}qq 
}rr 	
publictt 
IEnumerablett 
<tt 
SceneEventMetrictt +
>tt+ ,
GenerateSceneEventtt- ?
(tt? @
stringtt@ F
prefixttG M
,ttM N
paramsttO U
ConnectionInfottV d
[ttd e
]tte f
connectionsttg r
)ttr s
{uu 	
varvv 
	sceneNamevv 
=vv 
m_DataDefinitionvv ,
.vv, -
GenerateSceneNamevv- >
(vv> ?
)vv? @
;vv@ A
varww 
	byteCountww 
=ww 
m_DataDefinitionww ,
.ww, -
GenerateByteCountww- >
(ww> ?
)ww? @
;ww@ A
foreachyy 
(yy 
varyy 

connectionyy #
inyy$ &
connectionsyy' 2
)yy2 3
{zz 
yield{{ 
return{{ 
new{{  
SceneEventMetric{{! 1
({{1 2

connection{{2 <
,{{< =
$"{{> @
{{{@ A
prefix{{A G
}{{G H
$str{{H W
"{{W X
,{{X Y
	sceneName{{Z c
,{{c d
	byteCount{{e n
){{n o
;{{o p
}|| 
}}} 	%
NetworkObjectIdentifier
€€ !
GetRandomGameObject
€€  3
(
€€3 4
)
€€4 5
=>
€€6 8
m_GameObjects
€€9 F
[
€€F G
m_Random
€€G O
.
€€O P
Next
€€P T
(
€€T U
$num
€€U V
,
€€V W
m_GameObjects
€€X e
.
€€e f
Count
€€f k
)
€€k l
]
€€l m
;
€€m n
}
 
}‚‚ É&
„C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\Dispatch\ITestDataTracker.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
{ 
	interface 
ITestDataTracker 
{ 
IMetricDispatcher 

Dispatcher $
{% &
get' *
;* +
}, -
void

 
SetConnectionId

 
(

 
ulong

 "
connectionId

# /
)

/ 0
;

0 1
void #
TrackTransportBytesSent $
($ %
long% )

bytesCount* 4
)4 5
;5 6
void '
TrackTransportBytesReceived (
(( )
long) -

bytesCount. 8
)8 9
;9 :
void #
TrackNetworkMessageSent $
($ %
NetworkMessageEvent% 8
networkMessageEvent9 L
)L M
;M N
void '
TrackNetworkMessageReceived (
(( )
NetworkMessageEvent) <
networkMessageEvent= P
)P Q
;Q R
void !
TrackNamedMessageSent "
(" #
NamedMessageEvent# 4
namedMessageEvent5 F
)F G
;G H
void %
TrackNamedMessageReceived &
(& '
NamedMessageEvent' 8
namedMessageEvent9 J
)J K
;K L
void #
TrackUnnamedMessageSent $
($ %
UnnamedMessageEvent% 8
unnamedMessageEvent9 L
)L M
;M N
void '
TrackUnnamedMessageReceived (
(( )
UnnamedMessageEvent) <
unnamedMessageEvent= P
)P Q
;Q R
void )
TrackNetworkVariableDeltaSent *
(* + 
NetworkVariableEvent+ ? 
networkVariableEvent@ T
)T U
;U V
void -
!TrackNetworkVariableDeltaReceived .
(. / 
NetworkVariableEvent/ C 
networkVariableEventD X
)X Y
;Y Z
void   $
TrackOwnershipChangeSent   %
(  % & 
OwnershipChangeEvent  & : 
ownershipChangeEvent  ; O
)  O P
;  P Q
void"" (
TrackOwnershipChangeReceived"" )
("") * 
OwnershipChangeEvent""* > 
ownershipChangeEvent""? S
)""S T
;""T U
void$$  
TrackObjectSpawnSent$$ !
($$! "
ObjectSpawnedEvent$$" 4
objectSpawnedEvent$$5 G
)$$G H
;$$H I
void&& $
TrackObjectSpawnReceived&& %
(&&% &
ObjectSpawnedEvent&&& 8
objectSpawnedEvent&&9 K
)&&K L
;&&L M
void(( "
TrackObjectDestroySent(( #
(((# $ 
ObjectDestroyedEvent(($ 8 
objectDestroyedEvent((9 M
)((M N
;((N O
void** &
TrackObjectDestroyReceived** '
(**' ( 
ObjectDestroyedEvent**( < 
objectDestroyedEvent**= Q
)**Q R
;**R S
void,, 
TrackRpcSent,, 
(,, 
RpcEvent,, "
rpcEvent,,# +
),,+ ,
;,,, -
void.. 
TrackRpcReceived.. 
(.. 
RpcEvent.. &
rpcEvent..' /
)../ 0
;..0 1
void00 
TrackServerLogSent00 
(00  
ServerLogEvent00  .
serverLogEvent00/ =
)00= >
;00> ?
void22 "
TrackServerLogReceived22 #
(22# $
ServerLogEvent22$ 2
serverLogEvent223 A
)22A B
;22B C
void44 
TrackSceneEventSent44  
(44  !
SceneEventMetric44! 1

sceneEvent442 <
)44< =
;44= >
void66 #
TrackSceneEventReceived66 $
(66$ %
SceneEventMetric66% 5

sceneEvent666 @
)66@ A
;66A B
void88 
TrackPacketSent88 
(88 
int88  
packetCount88! ,
)88, -
;88- .
void:: 
TrackPacketReceived::  
(::  !
int::! $
packetCount::% 0
)::0 1
;::1 2
void<< 
TrackRttToServer<< 
(<< 
int<< !
rtt<<" %
)<<% &
;<<& '
void>> %
UpdateNetworkObjectsCount>> &
(>>& '
int>>' *
count>>+ 0
)>>0 1
;>>1 2
void@@ "
UpdateConnectionsCount@@ #
(@@# $
int@@$ '
count@@( -
)@@- .
;@@. /
voidBB 
UpdatePacketLossBB 
(BB 
floatBB #
countBB$ )
)BB) *
;BB* +
}CC 
}DD ß
€C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\MetricObserverFactory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
{ 
static 

class !
MetricObserverFactory &
{ 
internal 
static 
IMetricObserver '
	Construct( 1
(1 2
)2 3
=>4 6
new7 :
MetricObserver; I
(I J
)J K
;K L
}		 
class 	
MetricObserver
 
: 
IMetricObserver *
{ 
private 
IMetricObserver $
m_profilerMetricObserver  8
=9 :)
ProfilerMetricObserverFactory; X
.X Y
	ConstructY b
(b c
)c d
;d e
private 
IMetricObserver  
m_rnsmMetricObserver  4
=5 6%
RnsmMetricObserverFactory7 P
.P Q
	ConstructQ Z
(Z [
)[ \
;\ ]
public 
void 
Observe 
( 
MetricCollection ,

collection- 7
)7 8
{ 	$
m_profilerMetricObserver $
.$ %
Observe% ,
(, -

collection- 7
)7 8
;8 9 
m_rnsmMetricObserver  
.  !
Observe! (
(( )

collection) 3
)3 4
;4 5
} 	
} 
} Í
C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\TestDataGeneratorComponent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsReporting" 3
{ 
internal 
enum !
TestDataGeneratorType '
{ 
Client		 
,		 
Server

 
,

 
} 
[ 
AddComponentMenu 
( 
$str 
) 
] 
public 

class &
TestDataGeneratorComponent +
:, -
MonoBehaviour. ;
{ 
[ 	
SerializeField	 
] 
internal !!
TestDataGeneratorType" 7
m_type8 >
;> ?
TestDataDispatcher 
m_Dispatcher '
;' (
void 

OnValidate 
( 
) 
{ 	
m_Dispatcher 
??= 
new  
TestDataDispatcher! 3
(3 4
)4 5
;5 6
} 	
void 
Start 
( 
) 
{ 	
m_Dispatcher 
??= 
new  
TestDataDispatcher! 3
(3 4
)4 5
;5 6
}   	
internal"" 
void"" 
Update"" 
("" 
)"" 
{## 	
switch$$ 
($$ 
m_type$$ 
)$$ 
{%% 
case&& !
TestDataGeneratorType&& *
.&&* +
Client&&+ 1
:&&1 2
{'' 
m_Dispatcher((  
.((  !
DispatchClientFrame((! 4
(((4 5
)((5 6
;((6 7
break)) 
;)) 
}** 
case++ !
TestDataGeneratorType++ *
.++* +
Server+++ 1
:++1 2
{,, 
m_Dispatcher--  
.--  !
DispatchServerFrame--! 4
(--4 5
)--5 6
;--6 7
break.. 
;.. 
}// 
}00 
}11 	
}22 
}33 ¾Ì
ƒC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\Dispatch\TestDataTracker.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
{ 
class 	
TestDataTracker
 
: 
ITestDataTracker ,
{ 
readonly 
Counter  
m_TransportBytesSent -
=. /
new0 3
Counter4 ;
(; <
DirectedMetricType< N
.N O
TotalBytesSentO ]
.] ^
GetId^ c
(c d
)d e
)e f
{		 	!
ShouldResetOnDispatch

 !
=

" #
true

$ (
,

( )
} 	
;	 

readonly 
Counter $
m_TransportBytesReceived 1
=2 3
new4 7
Counter8 ?
(? @
DirectedMetricTypeA S
.S T
TotalBytesReceivedT f
.f g
GetIdg l
(l m
)m n
)n o
{ 	!
ShouldResetOnDispatch !
=" #
true$ (
,( )
} 	
;	 

readonly 
EventMetric 
< 
NetworkMessageEvent 0
>0 1%
m_NetworkMessageSentEvent2 K
=L M
newN Q
EventMetricR ]
<] ^
NetworkMessageEvent^ q
>q r
(r s
DirectedMetricType	s …
.
… † 
NetworkMessageSent
† ˜
.
˜ ™
GetId
™ 
(
 Ÿ
)
Ÿ  
)
  ¡
;
¡ ¢
readonly 
EventMetric 
< 
NetworkMessageEvent 0
>0 1)
m_NetworkMessageReceivedEvent2 O
=P Q
newR U
EventMetricV a
<a b
NetworkMessageEventb u
>u v
(v w
DirectedMetricType	w ‰
.
‰ Š$
NetworkMessageReceived
Š  
.
  ¡
GetId
¡ ¦
(
¦ §
)
§ ¨
)
¨ ©
;
© ª
readonly 
EventMetric 
< 
NamedMessageEvent .
>. /#
m_NamedMessageSentEvent0 G
=H I
newJ M
EventMetricN Y
<Y Z
NamedMessageEventZ k
>k l
(l m
DirectedMetricTypem 
.	 €
NamedMessageSent
€ 
.
 ‘
GetId
‘ –
(
– —
)
— ˜
)
˜ ™
;
™ š
readonly 
EventMetric 
< 
NamedMessageEvent .
>. /'
m_NamedMessageReceivedEvent0 K
=L M
newN Q
EventMetricR ]
<] ^
NamedMessageEvent^ o
>o p
(p q
DirectedMetricType	q ƒ
.
ƒ „"
NamedMessageReceived
„ ˜
.
˜ ™
GetId
™ 
(
 Ÿ
)
Ÿ  
)
  ¡
;
¡ ¢
readonly 
EventMetric 
< 
UnnamedMessageEvent 0
>0 1%
m_UnnamedMessageSentEvent2 K
=L M
newN Q
EventMetricR ]
<] ^
UnnamedMessageEvent^ q
>q r
(r s
DirectedMetricType	s …
.
… † 
UnnamedMessageSent
† ˜
.
˜ ™
GetId
™ 
(
 Ÿ
)
Ÿ  
)
  ¡
;
¡ ¢
readonly 
EventMetric 
< 
UnnamedMessageEvent 0
>0 1)
m_UnnamedMessageReceivedEvent2 O
=P Q
newR U
EventMetricV a
<a b
UnnamedMessageEventb u
>u v
(v w
DirectedMetricType	w ‰
.
‰ Š$
UnnamedMessageReceived
Š  
.
  ¡
GetId
¡ ¦
(
¦ §
)
§ ¨
)
¨ ©
;
© ª
readonly 
EventMetric 
<  
NetworkVariableEvent 1
>1 2+
m_NetworkVariableDeltaSentEvent3 R
=S T
newU X
EventMetricY d
<d e 
NetworkVariableEvente y
>y z
(z {
DirectedMetricType	{ 
.
 &
NetworkVariableDeltaSent
 ¦
.
¦ §
GetId
§ ¬
(
¬ ­
)
­ ®
)
® ¯
;
¯ °
readonly 
EventMetric 
<  
NetworkVariableEvent 1
>1 2/
#m_NetworkVariableDeltaReceivedEvent3 V
=W X
newY \
EventMetric] h
<h i 
NetworkVariableEventi }
>} ~
(~ 
DirectedMetricType	 ‘
.
‘ ’*
NetworkVariableDeltaReceived
’ ®
.
® ¯
GetId
¯ ´
(
´ µ
)
µ ¶
)
¶ ·
;
· ¸
readonly 
EventMetric 
<  
OwnershipChangeEvent 1
>1 2&
m_OwnershipChangeSentEvent3 M
=N O
newP S
EventMetricT _
<_ ` 
OwnershipChangeEvent` t
>t u
(u v
DirectedMetricType	v ˆ
.
ˆ ‰!
OwnershipChangeSent
‰ œ
.
œ 
GetId
 ¢
(
¢ £
)
£ ¤
)
¤ ¥
;
¥ ¦
readonly 
EventMetric 
<  
OwnershipChangeEvent 1
>1 2*
m_OwnershipChangeReceivedEvent3 Q
=R S
newT W
EventMetricX c
<c d 
OwnershipChangeEventd x
>x y
(y z
DirectedMetricType	z Œ
.
Œ %
OwnershipChangeReceived
 ¤
.
¤ ¥
GetId
¥ ª
(
ª «
)
« ¬
)
¬ ­
;
­ ®
readonly 
EventMetric 
< 
ObjectSpawnedEvent /
>/ 0"
m_ObjectSpawnSentEvent1 G
=H I
newJ M
EventMetricN Y
<Y Z
ObjectSpawnedEventZ l
>l m
(m n
DirectedMetricType	n €
.
€ 
ObjectSpawnedSent
 ’
.
’ “
GetId
“ ˜
(
˜ ™
)
™ š
)
š ›
;
› œ
readonly 
EventMetric 
< 
ObjectSpawnedEvent /
>/ 0&
m_ObjectSpawnReceivedEvent1 K
=L M
newN Q
EventMetricR ]
<] ^
ObjectSpawnedEvent^ p
>p q
(q r
DirectedMetricType	r „
.
„ …#
ObjectSpawnedReceived
… š
.
š ›
GetId
›  
(
  ¡
)
¡ ¢
)
¢ £
;
£ ¤
readonly 
EventMetric 
<  
ObjectDestroyedEvent 1
>1 2$
m_ObjectDestroySentEvent3 K
=L M
newN Q
EventMetricR ]
<] ^ 
ObjectDestroyedEvent^ r
>r s
(s t
DirectedMetricType	t †
.
† ‡!
ObjectDestroyedSent
‡ š
.
š ›
GetId
›  
(
  ¡
)
¡ ¢
)
¢ £
;
£ ¤
readonly 
EventMetric 
<  
ObjectDestroyedEvent 1
>1 2(
m_ObjectDestroyReceivedEvent3 O
=P Q
newR U
EventMetricV a
<a b 
ObjectDestroyedEventb v
>v w
(w x
DirectedMetricType	x Š
.
Š ‹%
ObjectDestroyedReceived
‹ ¢
.
¢ £
GetId
£ ¨
(
¨ ©
)
© ª
)
ª «
;
« ¬
readonly 
EventMetric 
< 
RpcEvent %
>% &
m_RpcSentEvent' 5
=6 7
new8 ;
EventMetric< G
<G H
RpcEventH P
>P Q
(Q R
DirectedMetricTypeR d
.d e
RpcSente l
.l m
GetIdm r
(r s
)s t
)t u
;u v
readonly   
EventMetric   
<   
RpcEvent   %
>  % &
m_RpcReceivedEvent  ' 9
=  : ;
new  < ?
EventMetric  @ K
<  K L
RpcEvent  L T
>  T U
(  U V
DirectedMetricType  V h
.  h i
RpcReceived  i t
.  t u
GetId  u z
(  z {
)  { |
)  | }
;  } ~
readonly!! 
EventMetric!! 
<!! 
ServerLogEvent!! +
>!!+ , 
m_ServerLogSentEvent!!- A
=!!B C
new!!D G
EventMetric!!H S
<!!S T
ServerLogEvent!!T b
>!!b c
(!!c d
DirectedMetricType!!d v
.!!v w
ServerLogSent	!!w „
.
!!„ …
GetId
!!… Š
(
!!Š ‹
)
!!‹ Œ
)
!!Œ 
;
!! 
readonly"" 
EventMetric"" 
<"" 
ServerLogEvent"" +
>""+ ,$
m_ServerLogReceivedEvent""- E
=""F G
new""H K
EventMetric""L W
<""W X
ServerLogEvent""X f
>""f g
(""g h
DirectedMetricType""h z
.""z {
ServerLogReceived	""{ Œ
.
""Œ 
GetId
"" ’
(
""’ “
)
""“ ”
)
""” •
;
""• –
readonly## 
EventMetric## 
<## 
SceneEventMetric## -
>##- .!
m_SceneEventSentEvent##/ D
=##E F
new##G J
EventMetric##K V
<##V W
SceneEventMetric##W g
>##g h
(##h i
DirectedMetricType##i {
.##{ |
SceneEventSent	##| Š
.
##Š ‹
GetId
##‹ 
(
## ‘
)
##‘ ’
)
##’ “
;
##“ ”
readonly$$ 
EventMetric$$ 
<$$ 
SceneEventMetric$$ -
>$$- .%
m_SceneEventReceivedEvent$$/ H
=$$I J
new$$K N
EventMetric$$O Z
<$$Z [
SceneEventMetric$$[ k
>$$k l
($$l m
DirectedMetricType$$m 
.	$$ € 
SceneEventReceived
$$€ ’
.
$$’ “
GetId
$$“ ˜
(
$$˜ ™
)
$$™ š
)
$$š ›
;
$$› œ
private&& 
readonly&& 
Counter&&  
m_PacketSentCounter&&! 4
=&&5 6
new&&7 :
Counter&&; B
(&&B C
NetworkMetricTypes&&C U
.&&U V
PacketsSent&&V a
.&&a b
Id&&b d
)&&d e
{'' 	!
ShouldResetOnDispatch(( !
=((" #
true(($ (
,((( )
})) 	
;))	 

private** 
readonly** 
Counter**  #
m_PacketReceivedCounter**! 8
=**9 :
new**; >
Counter**? F
(**F G
NetworkMetricTypes**G Y
.**Y Z
PacketsReceived**Z i
.**i j
Id**j l
)**l m
{++ 	!
ShouldResetOnDispatch,, !
=,," #
true,,$ (
,,,( )
}-- 	
;--	 

private.. 
readonly.. 
Gauge.. 
m_RttToServerGauge.. 1
=..2 3
new..4 7
Gauge..8 =
(..= >
NetworkMetricTypes..> P
...P Q
RttToServer..Q \
...\ ]
Id..] _
).._ `
{// 	!
ShouldResetOnDispatch00 !
=00" #
true00$ (
,00( )
}11 	
;11	 

readonly22 
Gauge22 !
m_NetworkObjectsGauge22 ,
=22- .
new22/ 2
Gauge223 8
(228 9
NetworkMetricTypes229 K
.22K L
NetworkObjects22L Z
.22Z [
Id22[ ]
)22] ^
{33 	!
ShouldResetOnDispatch44 !
=44" #
true44$ (
,44( )
}55 	
;55	 

readonly66 
Gauge66 
m_ConnectionsGauge66 )
=66* +
new66, /
Gauge660 5
(665 6
NetworkMetricTypes666 H
.66H I
ConnectedClients66I Y
.66Y Z
Id66Z \
)66\ ]
{77 	!
ShouldResetOnDispatch88 !
=88" #
true88$ (
,88( )
}99 	
;99	 

readonly:: 
Gauge:: 
m_PacketLoss:: #
=::$ %
new::& )
Gauge::* /
(::/ 0
NetworkMetricTypes::0 B
.::B C

PacketLoss::C M
.::M N
Id::N P
)::P Q
{;; 	!
ShouldResetOnDispatch<< !
=<<" #
true<<$ (
,<<( )
}== 	
;==	 

public?? 
TestDataTracker?? 
(?? 
)??  
{@@ 	

DispatcherAA 
=AA 
newAA #
MetricDispatcherBuilderAA 4
(AA4 5
)AA5 6
.BB 
WithCountersBB 
(BB  
m_TransportBytesSentBB 2
,BB2 3$
m_TransportBytesReceivedBB4 L
)BBL M
.CC 
WithMetricEventsCC !
(CC! "%
m_NetworkMessageSentEventCC" ;
,CC; <)
m_NetworkMessageReceivedEventCC= Z
)CCZ [
.DD 
WithMetricEventsDD !
(DD! "#
m_NamedMessageSentEventDD" 9
,DD9 :'
m_NamedMessageReceivedEventDD; V
)DDV W
.EE 
WithMetricEventsEE !
(EE! "%
m_UnnamedMessageSentEventEE" ;
,EE; <)
m_UnnamedMessageReceivedEventEE= Z
)EEZ [
.FF 
WithMetricEventsFF !
(FF! "+
m_NetworkVariableDeltaSentEventFF" A
,FFA B/
#m_NetworkVariableDeltaReceivedEventFFC f
)FFf g
.GG 
WithMetricEventsGG !
(GG! "&
m_OwnershipChangeSentEventGG" <
,GG< =*
m_OwnershipChangeReceivedEventGG> \
)GG\ ]
.HH 
WithMetricEventsHH !
(HH! ""
m_ObjectSpawnSentEventHH" 8
,HH8 9&
m_ObjectSpawnReceivedEventHH: T
)HHT U
.II 
WithMetricEventsII !
(II! "$
m_ObjectDestroySentEventII" :
,II: ;(
m_ObjectDestroyReceivedEventII< X
)IIX Y
.JJ 
WithMetricEventsJJ !
(JJ! "
m_RpcSentEventJJ" 0
,JJ0 1
m_RpcReceivedEventJJ2 D
)JJD E
.KK 
WithMetricEventsKK !
(KK! " 
m_ServerLogSentEventKK" 6
,KK6 7$
m_ServerLogReceivedEventKK8 P
)KKP Q
.LL 
WithMetricEventsLL !
(LL! "!
m_SceneEventSentEventLL" 7
,LL7 8%
m_SceneEventReceivedEventLL9 R
)LLR S
.MM 
WithCountersMM 
(MM 
m_PacketSentCounterMM 1
,MM1 2#
m_PacketReceivedCounterMM3 J
)MMJ K
.NN 

WithGaugesNN 
(NN 
m_RttToServerGaugeNN .
)NN. /
.OO 

WithGaugesOO 
(OO !
m_NetworkObjectsGaugeOO 1
)OO1 2
.PP 

WithGaugesPP 
(PP 
m_ConnectionsGaugePP .
)PP. /
.QQ 

WithGaugesQQ 
(QQ 
m_PacketLossQQ (
)QQ( )
.RR 
BuildRR 
(RR 
)RR 
;RR 
}SS 	
publicUU 
IMetricDispatcherUU  

DispatcherUU! +
{UU, -
getUU. 1
;UU1 2
}UU3 4
publicWW 
voidWW 
SetConnectionIdWW #
(WW# $
ulongWW$ )
connectionIdWW* 6
)WW6 7
{XX 	

DispatcherYY 
.YY 
SetConnectionIdYY &
(YY& '
connectionIdYY' 3
)YY3 4
;YY4 5
}ZZ 	
public\\ 
void\\ #
TrackTransportBytesSent\\ +
(\\+ ,
long\\, 0

bytesCount\\1 ;
)\\; <
{]] 	 
m_TransportBytesSent^^  
.^^  !
	Increment^^! *
(^^* +

bytesCount^^+ 5
)^^5 6
;^^6 7
}__ 	
publicaa 
voidaa '
TrackTransportBytesReceivedaa /
(aa/ 0
longaa0 4

bytesCountaa5 ?
)aa? @
{bb 	$
m_TransportBytesReceivedcc $
.cc$ %
	Incrementcc% .
(cc. /

bytesCountcc/ 9
)cc9 :
;cc: ;
}dd 	
publicff 
voidff #
TrackNetworkMessageSentff +
(ff+ ,
NetworkMessageEventff, ?
networkMessageEventff@ S
)ffS T
{gg 	%
m_NetworkMessageSentEventhh %
.hh% &
Markhh& *
(hh* +
networkMessageEventhh+ >
)hh> ?
;hh? @
}ii 	
publickk 
voidkk '
TrackNetworkMessageReceivedkk /
(kk/ 0
NetworkMessageEventkk0 C
networkMessageEventkkD W
)kkW X
{ll 	)
m_NetworkMessageReceivedEventmm )
.mm) *
Markmm* .
(mm. /
networkMessageEventmm/ B
)mmB C
;mmC D
}nn 	
publicpp 
voidpp !
TrackNamedMessageSentpp )
(pp) *
NamedMessageEventpp* ;
namedMessageEventpp< M
)ppM N
{qq 	#
m_NamedMessageSentEventrr #
.rr# $
Markrr$ (
(rr( )
namedMessageEventrr) :
)rr: ;
;rr; <
}ss 	
publicuu 
voiduu %
TrackNamedMessageReceiveduu -
(uu- .
NamedMessageEventuu. ?
namedMessageEventuu@ Q
)uuQ R
{vv 	'
m_NamedMessageReceivedEventww '
.ww' (
Markww( ,
(ww, -
namedMessageEventww- >
)ww> ?
;ww? @
}xx 	
publiczz 
voidzz #
TrackUnnamedMessageSentzz +
(zz+ ,
UnnamedMessageEventzz, ?
unnamedMessageEventzz@ S
)zzS T
{{{ 	%
m_UnnamedMessageSentEvent|| %
.||% &
Mark||& *
(||* +
unnamedMessageEvent||+ >
)||> ?
;||? @
}}} 	
public 
void '
TrackUnnamedMessageReceived /
(/ 0
UnnamedMessageEvent0 C
unnamedMessageEventD W
)W X
{
€€ 	+
m_UnnamedMessageReceivedEvent
 )
.
) *
Mark
* .
(
. /!
unnamedMessageEvent
/ B
)
B C
;
C D
}
‚‚ 	
public
„„ 
void
„„ +
TrackNetworkVariableDeltaSent
„„ 1
(
„„1 2"
NetworkVariableEvent
„„2 F"
networkVariableEvent
„„G [
)
„„[ \
{
…… 	-
m_NetworkVariableDeltaSentEvent
†† +
.
††+ ,
Mark
††, 0
(
††0 1"
networkVariableEvent
††1 E
)
††E F
;
††F G
}
‡‡ 	
public
‰‰ 
void
‰‰ /
!TrackNetworkVariableDeltaReceived
‰‰ 5
(
‰‰5 6"
NetworkVariableEvent
‰‰6 J"
networkVariableEvent
‰‰K _
)
‰‰_ `
{
ŠŠ 	1
#m_NetworkVariableDeltaReceivedEvent
‹‹ /
.
‹‹/ 0
Mark
‹‹0 4
(
‹‹4 5"
networkVariableEvent
‹‹5 I
)
‹‹I J
;
‹‹J K
}
ŒŒ 	
public
 
void
 &
TrackOwnershipChangeSent
 ,
(
, -"
OwnershipChangeEvent
- A"
ownershipChangeEvent
B V
)
V W
{
 	(
m_OwnershipChangeSentEvent
 &
.
& '
Mark
' +
(
+ ,"
ownershipChangeEvent
, @
)
@ A
;
A B
}
‘‘ 	
public
““ 
void
““ *
TrackOwnershipChangeReceived
““ 0
(
““0 1"
OwnershipChangeEvent
““1 E"
ownershipChangeEvent
““F Z
)
““Z [
{
”” 	,
m_OwnershipChangeReceivedEvent
•• *
.
••* +
Mark
••+ /
(
••/ 0"
ownershipChangeEvent
••0 D
)
••D E
;
••E F
}
–– 	
public
˜˜ 
void
˜˜ "
TrackObjectSpawnSent
˜˜ (
(
˜˜( ) 
ObjectSpawnedEvent
˜˜) ; 
objectSpawnedEvent
˜˜< N
)
˜˜N O
{
™™ 	$
m_ObjectSpawnSentEvent
šš "
.
šš" #
Mark
šš# '
(
šš' ( 
objectSpawnedEvent
šš( :
)
šš: ;
;
šš; <
}
›› 	
public
 
void
 &
TrackObjectSpawnReceived
 ,
(
, - 
ObjectSpawnedEvent
- ? 
objectSpawnedEvent
@ R
)
R S
{
 	(
m_ObjectSpawnReceivedEvent
ŸŸ &
.
ŸŸ& '
Mark
ŸŸ' +
(
ŸŸ+ , 
objectSpawnedEvent
ŸŸ, >
)
ŸŸ> ?
;
ŸŸ? @
}
   	
public
¢¢ 
void
¢¢ $
TrackObjectDestroySent
¢¢ *
(
¢¢* +"
ObjectDestroyedEvent
¢¢+ ?"
objectDestroyedEvent
¢¢@ T
)
¢¢T U
{
££ 	&
m_ObjectDestroySentEvent
¤¤ $
.
¤¤$ %
Mark
¤¤% )
(
¤¤) *"
objectDestroyedEvent
¤¤* >
)
¤¤> ?
;
¤¤? @
}
¥¥ 	
public
§§ 
void
§§ (
TrackObjectDestroyReceived
§§ .
(
§§. /"
ObjectDestroyedEvent
§§/ C"
objectDestroyedEvent
§§D X
)
§§X Y
{
¨¨ 	*
m_ObjectDestroyReceivedEvent
©© (
.
©©( )
Mark
©©) -
(
©©- ."
objectDestroyedEvent
©©. B
)
©©B C
;
©©C D
}
ªª 	
public
¬¬ 
void
¬¬ 
TrackRpcSent
¬¬  
(
¬¬  !
RpcEvent
¬¬! )
rpcEvent
¬¬* 2
)
¬¬2 3
{
­­ 	
m_RpcSentEvent
®® 
.
®® 
Mark
®® 
(
®®  
rpcEvent
®®  (
)
®®( )
;
®®) *
}
¯¯ 	
public
±± 
void
±± 
TrackRpcReceived
±± $
(
±±$ %
RpcEvent
±±% -
rpcEvent
±±. 6
)
±±6 7
{
²² 	 
m_RpcReceivedEvent
³³ 
.
³³ 
Mark
³³ #
(
³³# $
rpcEvent
³³$ ,
)
³³, -
;
³³- .
}
´´ 	
public
¶¶ 
void
¶¶  
TrackServerLogSent
¶¶ &
(
¶¶& '
ServerLogEvent
¶¶' 5
serverLogEvent
¶¶6 D
)
¶¶D E
{
·· 	"
m_ServerLogSentEvent
¸¸  
.
¸¸  !
Mark
¸¸! %
(
¸¸% &
serverLogEvent
¸¸& 4
)
¸¸4 5
;
¸¸5 6
}
¹¹ 	
public
»» 
void
»» $
TrackServerLogReceived
»» *
(
»»* +
ServerLogEvent
»»+ 9
serverLogEvent
»»: H
)
»»H I
{
¼¼ 	&
m_ServerLogReceivedEvent
½½ $
.
½½$ %
Mark
½½% )
(
½½) *
serverLogEvent
½½* 8
)
½½8 9
;
½½9 :
}
¾¾ 	
public
ÀÀ 
void
ÀÀ !
TrackSceneEventSent
ÀÀ '
(
ÀÀ' (
SceneEventMetric
ÀÀ( 8

sceneEvent
ÀÀ9 C
)
ÀÀC D
{
ÁÁ 	#
m_SceneEventSentEvent
ÂÂ !
.
ÂÂ! "
Mark
ÂÂ" &
(
ÂÂ& '

sceneEvent
ÂÂ' 1
)
ÂÂ1 2
;
ÂÂ2 3
}
ÃÃ 	
public
ÅÅ 
void
ÅÅ %
TrackSceneEventReceived
ÅÅ +
(
ÅÅ+ ,
SceneEventMetric
ÅÅ, <

sceneEvent
ÅÅ= G
)
ÅÅG H
{
ÆÆ 	'
m_SceneEventReceivedEvent
ÇÇ %
.
ÇÇ% &
Mark
ÇÇ& *
(
ÇÇ* +

sceneEvent
ÇÇ+ 5
)
ÇÇ5 6
;
ÇÇ6 7
}
ÈÈ 	
public
ÊÊ 
void
ÊÊ 
TrackPacketSent
ÊÊ #
(
ÊÊ# $
int
ÊÊ$ '
packetCount
ÊÊ( 3
)
ÊÊ3 4
{
ËË 	!
m_PacketSentCounter
ÌÌ 
.
ÌÌ  
	Increment
ÌÌ  )
(
ÌÌ) *
packetCount
ÌÌ* 5
)
ÌÌ5 6
;
ÌÌ6 7
}
ÍÍ 	
public
ÏÏ 
void
ÏÏ !
TrackPacketReceived
ÏÏ '
(
ÏÏ' (
int
ÏÏ( +
packetCount
ÏÏ, 7
)
ÏÏ7 8
{
ĞĞ 	%
m_PacketReceivedCounter
ÑÑ #
.
ÑÑ# $
	Increment
ÑÑ$ -
(
ÑÑ- .
packetCount
ÑÑ. 9
)
ÑÑ9 :
;
ÑÑ: ;
}
ÒÒ 	
public
ÔÔ 
void
ÔÔ 
TrackRttToServer
ÔÔ $
(
ÔÔ$ %
int
ÔÔ% (
rtt
ÔÔ) ,
)
ÔÔ, -
{
ÕÕ 	 
m_RttToServerGauge
ÖÖ 
.
ÖÖ 
Set
ÖÖ "
(
ÖÖ" #
rtt
ÖÖ# &
)
ÖÖ& '
;
ÖÖ' (
}
×× 	
public
ÙÙ 
void
ÙÙ '
UpdateNetworkObjectsCount
ÙÙ -
(
ÙÙ- .
int
ÙÙ. 1
count
ÙÙ2 7
)
ÙÙ7 8
{
ÚÚ 	#
m_NetworkObjectsGauge
ÛÛ !
.
ÛÛ! "
Set
ÛÛ" %
(
ÛÛ% &
count
ÛÛ& +
)
ÛÛ+ ,
;
ÛÛ, -
}
ÜÜ 	
public
ŞŞ 
void
ŞŞ $
UpdateConnectionsCount
ŞŞ *
(
ŞŞ* +
int
ŞŞ+ .
count
ŞŞ/ 4
)
ŞŞ4 5
{
ßß 	 
m_ConnectionsGauge
àà 
.
àà 
Set
àà "
(
àà" #
count
àà# (
)
àà( )
;
àà) *
}
áá 	
public
ãã 
void
ãã 
UpdatePacketLoss
ãã $
(
ãã$ %
float
ãã% *
count
ãã+ 0
)
ãã0 1
{
ää 	
m_PacketLoss
åå 
.
åå 
Set
åå 
(
åå 
count
åå "
)
åå" #
;
åå# $
}
ææ 	
}
çç 
}èè ĞH
‚C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\TestDataTrends.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsReporting" 3
{ 
internal 
class 
TestDataTrends !
{ 
const		 
float		 

k_LargeMax		 
=		  
$num		! $
;		$ %
const

 
float

 
k_MediumMax

 
=

  !
$num

" %
;

% &
const 
float 

k_SmallMax 
=  
$num! #
;# $
const 
float 
k_MinRtt 
= 
$num  &
;& '
const 
float 
k_MaxRtt 
= 
$num &
;& '
const 
float 
	k_Percent 
= 
$num  %
;% &
const 
float 
k_PacketLossMin #
=$ %
$num& +
*, -
	k_Percent. 7
;7 8
const 
float 
k_PacketLossMax #
=$ %
$num& +
*, -
	k_Percent. 7
;7 8
public 
LogNormalRandomWalk "
NamedMessagesSent# 4
{5 6
get7 :
;: ;
}< =
=> ?
new@ C
LogNormalRandomWalkD W
{X Y
MaxZ ]
=^ _

k_LargeMax` j
}k l
;l m
public 
LogNormalRandomWalk "!
NamedMessagesReceived# 8
{9 :
get; >
;> ?
}@ A
=B C
newD G
LogNormalRandomWalkH [
{\ ]
Max^ a
=b c

k_LargeMaxd n
}o p
;p q
public 
LogNormalRandomWalk "
UnnamedMessagesSent# 6
{7 8
get9 <
;< =
}> ?
=@ A
newB E
LogNormalRandomWalkF Y
{Z [
Max\ _
=` a

k_LargeMaxb l
}m n
;n o
public 
LogNormalRandomWalk "#
UnnamedMessagesReceived# :
{; <
get= @
;@ A
}B C
=D E
newF I
LogNormalRandomWalkJ ]
{^ _
Max` c
=d e

k_LargeMaxf p
}q r
;r s
public 
LogNormalRandomWalk "%
NetworkVariableDeltasSent# <
{= >
get? B
;B C
}D E
=F G
newH K
LogNormalRandomWalkL _
{` a
Maxb e
=f g

k_LargeMaxh r
}s t
;t u
public 
LogNormalRandomWalk ")
NetworkVariableDeltasReceived# @
{A B
getC F
;F G
}H I
=J K
newL O
LogNormalRandomWalkP c
{d e
Maxf i
=j k

k_LargeMaxl v
}w x
;x y
public 
LogNormalRandomWalk ")
OwnershipChangeEventsReceived# @
{A B
getC F
;F G
}H I
=J K
newL O
LogNormalRandomWalkP c
{d e
Maxf i
=j k
k_MediumMaxl w
}x y
;y z
public 
LogNormalRandomWalk "%
OwnershipChangeEventsSent# <
{= >
get? B
;B C
}D E
=F G
newH K
LogNormalRandomWalkL _
{` a
Maxb e
=f g
k_MediumMaxh s
}t u
;u v
public 
LogNormalRandomWalk "!
ObjectSpawnEventsSent# 8
{9 :
get; >
;> ?
}@ A
=B C
newD G
LogNormalRandomWalkH [
{\ ]
Max^ a
=b c

k_LargeMaxd n
}o p
;p q
public   
LogNormalRandomWalk   "%
ObjectSpawnEventsReceived  # <
{  = >
get  ? B
;  B C
}  D E
=  F G
new  H K
LogNormalRandomWalk  L _
{  ` a
Max  b e
=  f g

k_LargeMax  h r
}  s t
;  t u
public"" 
LogNormalRandomWalk"" "%
ObjectDestroyedEventsSent""# <
{""= >
get""? B
;""B C
}""D E
=""F G
new""H K
LogNormalRandomWalk""L _
{""` a
Max""b e
=""f g

k_LargeMax""h r
}""s t
;""t u
public## 
LogNormalRandomWalk## ")
ObjectDestroyedEventsReceived### @
{##A B
get##C F
;##F G
}##H I
=##J K
new##L O
LogNormalRandomWalk##P c
{##d e
Max##f i
=##j k

k_LargeMax##l v
}##w x
;##x y
public%% 
LogNormalRandomWalk%% "
RpcEventsSent%%# 0
{%%1 2
get%%3 6
;%%6 7
}%%8 9
=%%: ;
new%%< ?
LogNormalRandomWalk%%@ S
{%%T U
Max%%V Y
=%%Z [

k_LargeMax%%\ f
}%%g h
;%%h i
public&& 
LogNormalRandomWalk&& "
RpcEventsReceived&&# 4
{&&5 6
get&&7 :
;&&: ;
}&&< =
=&&> ?
new&&@ C
LogNormalRandomWalk&&D W
{&&X Y
Max&&Z ]
=&&^ _

k_LargeMax&&` j
}&&k l
;&&l m
public(( 
LogNormalRandomWalk(( "
ServerLogEventsSent((# 6
{((7 8
get((9 <
;((< =
}((> ?
=((@ A
new((B E
LogNormalRandomWalk((F Y
{((Z [
Max((\ _
=((` a

k_SmallMax((b l
}((m n
;((n o
public)) 
LogNormalRandomWalk)) "#
ServerLogEventsReceived))# :
{)); <
get))= @
;))@ A
}))B C
=))D E
new))F I
LogNormalRandomWalk))J ]
{))^ _
Max))` c
=))d e

k_SmallMax))f p
}))q r
;))r s
public++ 
LogNormalRandomWalk++ "
SceneEventsSent++# 2
{++3 4
get++5 8
;++8 9
}++: ;
=++< =
new++> A
LogNormalRandomWalk++B U
{++V W
Max++X [
=++\ ]

k_SmallMax++^ h
}++i j
;++j k
public,, 
LogNormalRandomWalk,, "
SceneEventsReceived,,# 6
{,,7 8
get,,9 <
;,,< =
},,> ?
=,,@ A
new,,B E
LogNormalRandomWalk,,F Y
{,,Z [
Max,,\ _
=,,` a

k_SmallMax,,b l
},,m n
;,,n o
public.. 
LogNormalRandomWalk.. "
PacketSentCount..# 2
{..3 4
get..5 8
;..8 9
}..: ;
=..< =
new..> A
LogNormalRandomWalk..B U
{..V W
Max..X [
=..\ ]

k_LargeMax..^ h
}..i j
;..j k
public00 
LogNormalRandomWalk00 "
PacketReceivedCount00# 6
{007 8
get009 <
;00< =
}00> ?
=00@ A
new00B E
LogNormalRandomWalk00F Y
{00Z [
Max00\ _
=00` a

k_LargeMax00b l
}00m n
;00n o
public22 
LogNormalRandomWalk22 "
RttToServer22# .
{22/ 0
get221 4
;224 5
}226 7
=228 9
new22: =
LogNormalRandomWalk22> Q
(22Q R
)22R S
{22T U
Min22V Y
=22Z [
k_MinRtt22\ d
,22d e
Max22f i
=22j k
k_MaxRtt22l t
}22u v
;22v w
public44 
LogNormalRandomWalk44 "
NetworkObjectsCount44# 6
{447 8
get449 <
;44< =
}44> ?
=44@ A
new44B E
LogNormalRandomWalk44F Y
(44Y Z
)44Z [
{44\ ]
Min44^ a
=44b c

k_SmallMax44d n
,44n o
Max44p s
=44t u

k_LargeMax	44v €
}
44 ‚
;
44‚ ƒ
public66 
LogNormalRandomWalk66 "
ConnectionsCount66# 3
{664 5
get666 9
;669 :
}66; <
=66= >
new66? B
LogNormalRandomWalk66C V
(66V W
)66W X
{66Y Z
Max66[ ^
=66_ `
k_MediumMax66a l
}66m n
;66n o
public88 
LogNormalRandomWalk88 "

PacketLoss88# -
{88. /
get880 3
;883 4
}885 6
=887 8
new889 <
LogNormalRandomWalk88= P
(88P Q
)88Q R
{88S T
Min88U X
=88Y Z
k_PacketLossMin88[ j
,88j k
Max88l o
=88p q
k_PacketLossMax	88r 
}
88‚ ƒ
;
88ƒ „
}99 
}:: ü„
ŠC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\Definitions\Adjectives.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
TestData" *
.* +
Definitions+ 6
{ 
public 

static 
class 

Adjectives "
{ 
public 
static 
readonly 
string %
[% &
]& '
Values( .
=/ 0
{ 	
$str		 
,		 
$str

 
,

 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str 
, 
$str   
,   
$str!! 
,!! 
$str"" 
,"" 
$str## 
,## 
$str$$ 
,$$ 
$str%% 
,%% 
$str&& 
,&& 
$str'' 
,'' 
$str(( 
,(( 
$str)) 
,)) 
$str** 
,** 
$str++ 
,++ 
$str,, 
,,, 
$str-- 
,-- 
$str.. 
,.. 
$str// 
,// 
$str00 
,00 
$str11 
,11 
$str22 
,22 
$str33 
,33 
$str44 
,44 
$str55 
,55 
$str66 
,66 
$str77 
,77 
$str88 
,88 
$str99 
,99 
$str:: 
,:: 
$str;; 
,;; 
$str<< 
,<< 
$str== 
,== 
$str>> 
,>> 
$str?? 
,?? 
$str@@ 
,@@ 
$strAA 
,AA 
$strBB 
,BB 
$strCC 
,CC 
$strDD 
,DD 
$strEE 
,EE 
$strFF 
,FF 
$strGG 
,GG 
$strHH 
,HH 
$strII 
,II 
$strJJ 
,JJ 
$strKK 
,KK 
$strLL 
,LL 
$strMM 
,MM 
$strNN 
,NN 
$strOO 
,OO 
$strPP 
,PP 
$strQQ 
,QQ 
$strRR 
,RR 
$strSS 
,SS 
$strTT 
,TT 
$strUU 
,UU 
$strVV 
,VV 
$strWW 
,WW 
$strXX 
,XX 
$strYY 
,YY 
$strZZ 
,ZZ 
$str[[ 
,[[ 
$str\\ 
,\\ 
$str]] 
,]] 
$str^^ 
,^^ 
$str__ 
,__ 
$str`` 
,`` 
$straa 
,aa 
$strbb 
,bb 
$strcc 
,cc 
$strdd 
,dd 
$stree 
,ee 
$strff 
,ff 
$strgg 
,gg 
$strhh 
,hh 
$strii 
,ii 
$strjj 
,jj 
$strkk 
,kk 
$strll 
,ll 
$strmm 
,mm 
$strnn 
,nn 
$stroo 
,oo 
$strpp 
,pp 
$strqq 
,qq 
$strrr 
,rr 
$strss 
,ss 
$strtt 
,tt 
$struu 
,uu 
$strvv 
,vv 
$strww 
,ww 
$strxx 
,xx 
$stryy 
,yy 
$strzz 
,zz 
$str{{ 
,{{ 
$str|| 
,|| 
$str}} 
,}} 
$str~~ 
,~~ 
$str 
, 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ  
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
,
ŠŠ 
$str
‹‹ 
,
‹‹ 
$str
ŒŒ 
,
ŒŒ 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
 
,
 
$str
‘‘ 
,
‘‘ 
$str
’’ 
,
’’ 
$str
““ 
,
““ 
$str
”” 
,
”” 
$str
•• 
,
•• 
$str
–– 
,
–– 
$str
—— 
,
—— 
$str
˜˜ 
,
˜˜ 
$str
™™ 
,
™™ 
$str
šš 
,
šš 
$str
›› 
,
›› 
$str
œœ 
,
œœ 
$str
 
,
 
$str
 
,
 
$str
ŸŸ 
,
ŸŸ 
$str
   
,
   
$str
¡¡ 
,
¡¡ 
$str
¢¢ 
,
¢¢ 
$str
££ 
,
££ 
$str
¤¤ 
,
¤¤ 
$str
¥¥ 
,
¥¥ 
$str
¦¦ 
,
¦¦ 
$str
§§ 
,
§§ 
$str
¨¨ 
,
¨¨ 
$str
©© 
,
©© 
$str
ªª 
,
ªª 
$str
«« 
,
«« 
$str
¬¬ 
,
¬¬ 
$str
­­ 
,
­­ 
$str
®® 
,
®® 
$str
¯¯ 
,
¯¯ 
$str
°° 
,
°° 
$str
±± 
,
±± 
$str
²² 
,
²² 
$str
³³ 
,
³³ 
$str
´´ 
,
´´ 
$str
µµ 
,
µµ 
$str
¶¶ 
,
¶¶ 
$str
·· 
,
·· 
$str
¸¸ 
,
¸¸ 
$str
¹¹ 
,
¹¹ 
$str
ºº 
,
ºº 
$str
»» 
,
»» 
$str
¼¼ 
,
¼¼ 
$str
½½ 
,
½½ 
$str
¾¾ 
,
¾¾ 
$str
¿¿ 
,
¿¿ 
$str
ÀÀ 
,
ÀÀ 
$str
ÁÁ 
,
ÁÁ 
$str
ÂÂ 
,
ÂÂ 
$str
ÃÃ 
,
ÃÃ 
$str
ÄÄ 
,
ÄÄ 
$str
ÅÅ 
,
ÅÅ 
$str
ÆÆ 
,
ÆÆ 
$str
ÇÇ 
,
ÇÇ 
$str
ÈÈ 
,
ÈÈ 
$str
ÉÉ 
,
ÉÉ 
$str
ÊÊ 
,
ÊÊ 
$str
ËË 
,
ËË 
$str
ÌÌ 
,
ÌÌ 
$str
ÍÍ 
,
ÍÍ 
$str
ÎÎ 
,
ÎÎ 
$str
ÏÏ 
,
ÏÏ 
$str
ĞĞ 
,
ĞĞ 
$str
ÑÑ 
,
ÑÑ 
$str
ÒÒ 
,
ÒÒ 
$str
ÓÓ 
,
ÓÓ 
$str
ÔÔ 
,
ÔÔ 
$str
ÕÕ 
,
ÕÕ 
$str
ÖÖ 
,
ÖÖ 
$str
×× 
,
×× 
$str
ØØ 
,
ØØ 
$str
ÙÙ 
,
ÙÙ 
$str
ÚÚ 
,
ÚÚ 
$str
ÛÛ 
,
ÛÛ 
$str
ÜÜ 
,
ÜÜ 
$str
İİ 
,
İİ 
$str
ŞŞ 
,
ŞŞ 
$str
ßß 
,
ßß 
$str
àà 
,
àà 
$str
áá 
,
áá 
$str
ââ 
,
ââ 
$str
ãã 
,
ãã 
$str
ää 
,
ää 
$str
åå 
,
åå 
$str
ææ 
,
ææ 
$str
çç 
,
çç 
$str
èè 
,
èè 
$str
éé 
,
éé 
$str
êê 
,
êê 
$str
ëë 
,
ëë 
$str
ìì 
,
ìì 
$str
íí 
,
íí 
$str
îî 
,
îî 
$str
ïï 
,
ïï 
$str
ğğ 
,
ğğ 
$str
ññ 
,
ññ 
$str
òò 
,
òò 
$str
óó 
,
óó 
$str
ôô 
,
ôô 
$str
õõ 
,
õõ 
$str
öö 
,
öö 
$str
÷÷ 
,
÷÷ 
$str
øø 
,
øø 
$str
ùù 
,
ùù 
$str
úú 
,
úú 
$str
ûû 
,
ûû 
$str
üü 
,
üü 
$str
ıı 
,
ıı 
$str
şş 
,
şş 
$str
ÿÿ 
,
ÿÿ 
$str
€€ 
,
€€ 
$str
 
,
 
$str
‚‚ 
,
‚‚ 
$str
ƒƒ 
,
ƒƒ 
$str
„„ 
,
„„ 
$str
…… 
,
…… 
$str
†† 
,
†† 
$str
‡‡ 
,
‡‡ 
$str
ˆˆ 
,
ˆˆ 
$str
‰‰ 
,
‰‰ 
$str
ŠŠ 
}
‹‹ 	
;
‹‹	 

}
ŒŒ 
} 