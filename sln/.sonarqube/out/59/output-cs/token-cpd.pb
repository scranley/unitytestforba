��
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\TestDataDispatcher.cs
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
�� 
.
�� '
UpdateNetworkObjectsCount
�� /
(
��/ 0
m_Trends
��0 8
.
��8 9!
NetworkObjectsCount
��9 L
.
��L M
NextInt
��M T
(
��T U
m_Random
��U ]
)
��] ^
)
��^ _
;
��_ `
	m_Tracker
�� 
.
�� $
UpdateConnectionsCount
�� ,
(
��, -
m_Trends
��- 5
.
��5 6
ConnectionsCount
��6 F
.
��F G
NextInt
��G N
(
��N O
m_Random
��O W
)
��W X
)
��X Y
;
��Y Z
	m_Tracker
�� 
.
�� 
UpdatePacketLoss
�� &
(
��& '
m_Trends
��' /
.
��/ 0

PacketLoss
��0 :
.
��: ;
	NextFloat
��; D
(
��D E
m_Random
��E M
)
��M N
)
��N O
;
��O P
	m_Tracker
�� 
.
�� 

Dispatcher
��  
.
��  !
Dispatch
��! )
(
��) *
)
��* +
;
��+ ,
}
�� 	
public
�� 
void
�� !
DispatchServerFrame
�� '
(
��' (
uint
��( ,
	nbClients
��- 6
=
��7 8
$num
��9 :
)
��: ;
{
�� 	
	m_Tracker
�� 
.
�� 
SetConnectionId
�� %
(
��% &
DefaultServerId
��& 5
)
��5 6
;
��6 7
var
�� (
clientAndServerConnections
�� *
=
��+ ,

Enumerable
��- 7
.
��7 8
Range
��8 =
(
��= >
$num
��> ?
,
��? @
(
��A B
int
��B E
)
��E F
	nbClients
��F O
+
��P Q
$num
��R S
)
��S T
.
�� 
Select
�� 
(
�� 
x
�� 
=>
�� 
new
��  
ConnectionInfo
��! /
(
��/ 0
(
��0 1
ulong
��1 6
)
��6 7
x
��7 8
)
��8 9
)
��9 :
.
�� 
ToArray
�� 
(
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� 
NamedMessagesSent
�� &
.
��& '
Repeat
��' -
(
��- .
m_Random
��. 6
,
��6 7
(
��8 9
)
��9 :
=>
��; =
{
�� 
var
��  
namedMessageEvents
�� &
=
��' (
m_DataGenerator
��) 8
.
��8 9'
GenerateNamedMessageEvent
��9 R
(
��R S(
clientAndServerConnections
��S m
)
��m n
;
��n o
foreach
�� 
(
�� 
var
�� 
namedMessageEvent
�� .
in
��/ 1 
namedMessageEvents
��2 D
)
��D E
{
�� 
	m_Tracker
�� 
.
�� #
TrackNamedMessageSent
�� 3
(
��3 4
namedMessageEvent
��4 E
)
��E F
;
��F G
	m_Tracker
�� 
.
�� %
TrackTransportBytesSent
�� 5
(
��5 6
namedMessageEvent
��6 G
.
��G H

BytesCount
��H R
)
��R S
;
��S T
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� #
NamedMessagesReceived
�� *
.
��* +
Repeat
��+ 1
(
��1 2
m_Random
��2 :
,
��: ;
(
��< =
)
��= >
=>
��? A
{
�� 
var
��  
namedMessageEvents
�� &
=
��' (
m_DataGenerator
��) 8
.
��8 9'
GenerateNamedMessageEvent
��9 R
(
��R S(
clientAndServerConnections
��S m
)
��m n
;
��n o
foreach
�� 
(
�� 
var
�� 
namedMessageEvent
�� .
in
��/ 1 
namedMessageEvents
��2 D
)
��D E
{
�� 
	m_Tracker
�� 
.
�� '
TrackNamedMessageReceived
�� 7
(
��7 8
namedMessageEvent
��8 I
)
��I J
;
��J K
	m_Tracker
�� 
.
�� )
TrackTransportBytesReceived
�� 9
(
��9 :
namedMessageEvent
��: K
.
��K L

BytesCount
��L V
)
��V W
;
��W X
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� !
UnnamedMessagesSent
�� (
.
��( )
Repeat
��) /
(
��/ 0
m_Random
��0 8
,
��8 9
(
��: ;
)
��; <
=>
��= ?
{
�� 
var
�� "
unnamedMessageEvents
�� (
=
��) *
m_DataGenerator
��+ :
.
��: ;)
GenerateUnnamedMessageEvent
��; V
(
��V W(
clientAndServerConnections
��W q
)
��q r
;
��r s
foreach
�� 
(
�� 
var
�� !
unnamedMessageEvent
�� 0
in
��1 3"
unnamedMessageEvents
��4 H
)
��H I
{
�� 
	m_Tracker
�� 
.
�� %
TrackUnnamedMessageSent
�� 5
(
��5 6!
unnamedMessageEvent
��6 I
)
��I J
;
��J K
	m_Tracker
�� 
.
�� %
TrackTransportBytesSent
�� 5
(
��5 6!
unnamedMessageEvent
��6 I
.
��I J

BytesCount
��J T
)
��T U
;
��U V
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� %
UnnamedMessagesReceived
�� ,
.
��, -
Repeat
��- 3
(
��3 4
m_Random
��4 <
,
��< =
(
��> ?
)
��? @
=>
��A C
{
�� 
var
�� "
unnamedMessageEvents
�� (
=
��) *
m_DataGenerator
��+ :
.
��: ;)
GenerateUnnamedMessageEvent
��; V
(
��V W(
clientAndServerConnections
��W q
)
��q r
;
��r s
foreach
�� 
(
�� 
var
�� !
unnamedMessageEvent
�� 0
in
��1 3"
unnamedMessageEvents
��4 H
)
��H I
{
�� 
	m_Tracker
�� 
.
�� )
TrackUnnamedMessageReceived
�� 9
(
��9 :!
unnamedMessageEvent
��: M
)
��M N
;
��N O
	m_Tracker
�� 
.
�� )
TrackTransportBytesReceived
�� 9
(
��9 :!
unnamedMessageEvent
��: M
.
��M N

BytesCount
��N X
)
��X Y
;
��Y Z
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� '
NetworkVariableDeltasSent
�� .
.
��. /
Repeat
��/ 5
(
��5 6
m_Random
��6 >
,
��> ?
(
��@ A
)
��A B
=>
��C E
{
�� 
var
�� #
networkVariableEvents
�� )
=
��* +
m_DataGenerator
��, ;
.
��; <*
GenerateNetworkVariableEvent
��< X
(
��X Y(
clientAndServerConnections
��Y s
)
��s t
;
��t u
foreach
�� 
(
�� 
var
�� "
networkVariableEvent
�� 1
in
��2 4#
networkVariableEvents
��5 J
)
��J K
{
�� 
	m_Tracker
�� 
.
�� +
TrackNetworkVariableDeltaSent
�� ;
(
��; <"
networkVariableEvent
��< P
)
��P Q
;
��Q R
	m_Tracker
�� 
.
�� %
TrackTransportBytesSent
�� 5
(
��5 6"
networkVariableEvent
��6 J
.
��J K

BytesCount
��K U
)
��U V
;
��V W
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� '
OwnershipChangeEventsSent
�� .
.
��. /
Repeat
��/ 5
(
��5 6
m_Random
��6 >
,
��> ?
(
��@ A
)
��A B
=>
��C E
{
�� 
var
�� #
ownershipChangeEvents
�� )
=
��* +
m_DataGenerator
��, ;
.
��; <*
GenerateOwnershipChangeEvent
��< X
(
��X Y(
clientAndServerConnections
��Y s
)
��s t
;
��t u
foreach
�� 
(
�� 
var
�� "
ownershipChangeEvent
�� 1
in
��2 4#
ownershipChangeEvents
��5 J
)
��J K
{
�� 
	m_Tracker
�� 
.
�� &
TrackOwnershipChangeSent
�� 6
(
��6 7"
ownershipChangeEvent
��7 K
)
��K L
;
��L M
	m_Tracker
�� 
.
�� %
TrackTransportBytesSent
�� 5
(
��5 6"
ownershipChangeEvent
��6 J
.
��J K

BytesCount
��K U
)
��U V
;
��V W
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� #
ObjectSpawnEventsSent
�� *
.
��* +
Repeat
��+ 1
(
��1 2
m_Random
��2 :
,
��: ;
(
��< =
)
��= >
=>
��? A
{
�� 
var
�� 
objectSpawnEvents
�� %
=
��& '
m_DataGenerator
��( 7
.
��7 8(
GenerateObjectSpawnedEvent
��8 R
(
��R S(
clientAndServerConnections
��S m
)
��m n
;
��n o
foreach
�� 
(
�� 
var
�� 
objectSpawnEvent
�� -
in
��. 0
objectSpawnEvents
��1 B
)
��B C
{
�� 
	m_Tracker
�� 
.
�� "
TrackObjectSpawnSent
�� 2
(
��2 3
objectSpawnEvent
��3 C
)
��C D
;
��D E
	m_Tracker
�� 
.
�� %
TrackTransportBytesSent
�� 5
(
��5 6
objectSpawnEvent
��6 F
.
��F G

BytesCount
��G Q
)
��Q R
;
��R S
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� '
ObjectDestroyedEventsSent
�� .
.
��. /
Repeat
��/ 5
(
��5 6
m_Random
��6 >
,
��> ?
(
��@ A
)
��A B
=>
��C E
{
�� 
var
�� !
objectDestroyEvents
�� '
=
��( )
m_DataGenerator
��* 9
.
��9 :*
GenerateObjectDestroyedEvent
��: V
(
��V W(
clientAndServerConnections
��W q
)
��q r
;
��r s
foreach
�� 
(
�� 
var
��  
objectDestroyEvent
�� /
in
��0 2!
objectDestroyEvents
��3 F
)
��F G
{
�� 
	m_Tracker
�� 
.
�� $
TrackObjectDestroySent
�� 4
(
��4 5 
objectDestroyEvent
��5 G
)
��G H
;
��H I
	m_Tracker
�� 
.
�� %
TrackTransportBytesSent
�� 5
(
��5 6 
objectDestroyEvent
��6 H
.
��H I

BytesCount
��I S
)
��S T
;
��T U
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� 
RpcEventsSent
�� "
.
��" #
Repeat
��# )
(
��) *
m_Random
��* 2
,
��2 3
(
��4 5
)
��5 6
=>
��7 9
{
�� 
var
�� 
	rpcEvents
�� 
=
�� 
m_DataGenerator
��  /
.
��/ 0
GenerateRpcEvent
��0 @
(
��@ A(
clientAndServerConnections
��A [
)
��[ \
;
��\ ]
foreach
�� 
(
�� 
var
�� 
rpcEvent
�� %
in
��& (
	rpcEvents
��) 2
)
��2 3
{
�� 
	m_Tracker
�� 
.
�� 
TrackRpcSent
�� *
(
��* +
rpcEvent
��+ 3
)
��3 4
;
��4 5
	m_Tracker
�� 
.
�� %
TrackTransportBytesSent
�� 5
(
��5 6
rpcEvent
��6 >
.
��> ?

BytesCount
��? I
)
��I J
;
��J K
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� 
RpcEventsReceived
�� &
.
��& '
Repeat
��' -
(
��- .
m_Random
��. 6
,
��6 7
(
��8 9
)
��9 :
=>
��; =
{
�� 
var
�� 
	rpcEvents
�� 
=
�� 
m_DataGenerator
��  /
.
��/ 0
GenerateRpcEvent
��0 @
(
��@ A(
clientAndServerConnections
��A [
)
��[ \
;
��\ ]
foreach
�� 
(
�� 
var
�� 
rpcEvent
�� %
in
��& (
	rpcEvents
��) 2
)
��2 3
{
�� 
	m_Tracker
�� 
.
�� 
TrackRpcReceived
�� .
(
��. /
rpcEvent
��/ 7
)
��7 8
;
��8 9
	m_Tracker
�� 
.
�� )
TrackTransportBytesReceived
�� 9
(
��9 :
rpcEvent
��: B
.
��B C

BytesCount
��C M
)
��M N
;
��N O
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� %
ServerLogEventsReceived
�� ,
.
��, -
Repeat
��- 3
(
��3 4
m_Random
��4 <
,
��< =
(
��> ?
)
��? @
=>
��A C
{
�� 
var
�� 
serverLogEvents
�� #
=
��$ %
m_DataGenerator
��& 5
.
��5 6$
GenerateServerLogEvent
��6 L
(
��L M(
clientAndServerConnections
��M g
)
��g h
;
��h i
foreach
�� 
(
�� 
var
�� 
serverLogEvent
�� +
in
��, .
serverLogEvents
��/ >
)
��> ?
{
�� 
	m_Tracker
�� 
.
�� $
TrackServerLogReceived
�� 4
(
��4 5
serverLogEvent
��5 C
)
��C D
;
��D E
	m_Tracker
�� 
.
�� )
TrackTransportBytesReceived
�� 9
(
��9 :
serverLogEvent
��: H
.
��H I

BytesCount
��I S
)
��S T
;
��T U
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� 
SceneEventsSent
�� $
.
��$ %
Repeat
��% +
(
��+ ,
m_Random
��, 4
,
��4 5
(
��6 7
)
��7 8
=>
��9 ;
{
�� 
var
�� 
sceneEvents
�� 
=
��  !
m_DataGenerator
��" 1
.
��1 2 
GenerateSceneEvent
��2 D
(
��D E
$str
��E J
,
��J K(
clientAndServerConnections
��L f
)
��f g
;
��g h
foreach
�� 
(
�� 
var
�� 

sceneEvent
�� '
in
��( *
sceneEvents
��+ 6
)
��6 7
{
�� 
	m_Tracker
�� 
.
�� !
TrackSceneEventSent
�� 1
(
��1 2

sceneEvent
��2 <
)
��< =
;
��= >
	m_Tracker
�� 
.
�� %
TrackTransportBytesSent
�� 5
(
��5 6

sceneEvent
��6 @
.
��@ A

BytesCount
��A K
)
��K L
;
��L M
}
�� 
}
�� 
)
�� 
;
�� 
m_Trends
�� 
.
�� !
SceneEventsReceived
�� (
.
��( )
Repeat
��) /
(
��/ 0
m_Random
��0 8
,
��8 9
(
��: ;
)
��; <
=>
��= ?
{
�� 
var
�� 
sceneEvents
�� 
=
��  !
m_DataGenerator
��" 1
.
��1 2 
GenerateSceneEvent
��2 D
(
��D E
$str
��E J
,
��J K(
clientAndServerConnections
��L f
)
��f g
;
��g h
foreach
�� 
(
�� 
var
�� 

sceneEvent
�� '
in
��( *
sceneEvents
��+ 6
)
��6 7
{
�� 
	m_Tracker
�� 
.
�� %
TrackSceneEventReceived
�� 5
(
��5 6

sceneEvent
��6 @
)
��@ A
;
��A B
	m_Tracker
�� 
.
�� )
TrackTransportBytesReceived
�� 9
(
��9 :

sceneEvent
��: D
.
��D E

BytesCount
��E O
)
��O P
;
��P Q
}
�� 
}
�� 
)
�� 
;
�� 
	m_Tracker
�� 
.
�� 
TrackPacketSent
�� %
(
��% &
m_Trends
��& .
.
��. /
PacketSentCount
��/ >
.
��> ?
NextInt
��? F
(
��F G
m_Random
��G O
)
��O P
)
��P Q
;
��Q R
	m_Tracker
�� 
.
�� !
TrackPacketReceived
�� )
(
��) *
m_Trends
��* 2
.
��2 3!
PacketReceivedCount
��3 F
.
��F G
NextInt
��G N
(
��N O
m_Random
��O W
)
��W X
)
��X Y
;
��Y Z
	m_Tracker
�� 
.
�� 
TrackRttToServer
�� &
(
��& '
m_Trends
��' /
.
��/ 0
RttToServer
��0 ;
.
��; <
NextInt
��< C
(
��C D
m_Random
��D L
)
��L M
)
��M N
;
��N O
	m_Tracker
�� 
.
�� '
UpdateNetworkObjectsCount
�� /
(
��/ 0
m_Trends
��0 8
.
��8 9!
NetworkObjectsCount
��9 L
.
��L M
NextInt
��M T
(
��T U
m_Random
��U ]
)
��] ^
)
��^ _
;
��_ `
	m_Tracker
�� 
.
�� $
UpdateConnectionsCount
�� ,
(
��, -
m_Trends
��- 5
.
��5 6
ConnectionsCount
��6 F
.
��F G
NextInt
��G N
(
��N O
m_Random
��O W
)
��W X
)
��X Y
;
��Y Z
	m_Tracker
�� 
.
�� 
UpdatePacketLoss
�� &
(
��& '
m_Trends
��' /
.
��/ 0

PacketLoss
��0 :
.
��: ;
	NextFloat
��; D
(
��D E
m_Random
��E M
)
��M N
)
��N O
;
��O P
	m_Tracker
�� 
.
�� 

Dispatcher
��  
.
��  !
Dispatch
��! )
(
��) *
)
��* +
;
��+ ,
}
�� 	
}
�� 
}�� ض
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\Definitions\Verbs.cs
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
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
}
�� 	
;
��	 

}
�� 
}�� �

�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\RnsmMetricObserverFactory.cs
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
},, �9
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\TestDataDefinition.cs
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

Capitalize	v �
(
� �
GetRandomValue
� �
(
� �
Nouns
� �
.
� �
Values
� �
)
� �
)
� �
}
� �
"
� �
;
� �
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
GetRandomValue	""u �
(
""� �
m_VariableTypes
""� �
)
""� �
)
""� �
}
""� �
"
""� �
;
""� �
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
}TT �
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
]] ^��
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\Definitions\Nouns.cs
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
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
��  
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
��  
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
��  
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�	�	 
,
�	�	 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�
�
 
,
�
�
 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
� �  
,
� �  
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�!�! 
,
�!�! 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�"�" 
,
�"�" 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�#�# 
,
�#�# 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�$�$ 
,
�$�$ 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�%�% 
,
�%�% 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�&�& 
,
�&�& 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�'�' 
,
�'�' 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�(�( 
,
�(�( 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�)�) 
,
�)�) 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�*�* 
,
�*�* 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�+�+ 
,
�+�+ 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�,�, 
,
�,�, 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�-�- 
,
�-�- 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�.�. 
,
�.�. 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�/�/ 
,
�/�/ 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�0�0 
,
�0�0 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�1�1 
,
�1�1 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�2�2 
,
�2�2 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�3�3 
,
�3�3 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�4�4 
,
�4�4 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�5�5 
,
�5�5 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�6�6 
,
�6�6 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�7�7 
,
�7�7 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�8�8 
,
�8�8 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�9�9 
,
�9�9 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�:�: 
,
�:�: 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�;�; 
,
�;�; 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�<�< 
,
�<�< 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�=�= 
,
�=�= 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�>�> 
,
�>�> 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�?�? 
,
�?�? 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�@�@ 
,
�@�@ 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�A�A 
,
�A�A 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�B�B 
,
�B�B 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�C�C 
,
�C�C 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
,
�D�D 
$str
�D�D 
}
�D�D 	
;
�D�D	 

}
�D�D 
}�D�D �_
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\TestDataGenerator.cs
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
�� !
GetRandomGameObject
��  3
(
��3 4
)
��4 5
=>
��6 8
m_GameObjects
��9 F
[
��F G
m_Random
��G O
.
��O P
Next
��P T
(
��T U
$num
��U V
,
��V W
m_GameObjects
��X e
.
��e f
Count
��f k
)
��k l
]
��l m
;
��m n
}
�� 
}�� �&
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\Dispatch\ITestDataTracker.cs
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
}DD �
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\MetricObserverFactory.cs
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
} �
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\TestDataGeneratorComponent.cs
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
}33 ��
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\Dispatch\TestDataTracker.cs
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
DirectedMetricType	s �
.
� � 
NetworkMessageSent
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	w �
.
� �$
NetworkMessageReceived
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
.	 �
NamedMessageSent
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	q �
.
� �"
NamedMessageReceived
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	s �
.
� � 
UnnamedMessageSent
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	w �
.
� �$
UnnamedMessageReceived
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	{ �
.
� �&
NetworkVariableDeltaSent
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	 �
.
� �*
NetworkVariableDeltaReceived
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	v �
.
� �!
OwnershipChangeSent
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	z �
.
� �%
OwnershipChangeReceived
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	n �
.
� �
ObjectSpawnedSent
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	r �
.
� �#
ObjectSpawnedReceived
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	t �
.
� �!
ObjectDestroyedSent
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
DirectedMetricType	x �
.
� �%
ObjectDestroyedReceived
� �
.
� �
GetId
� �
(
� �
)
� �
)
� �
;
� �
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
ServerLogSent	!!w �
.
!!� �
GetId
!!� �
(
!!� �
)
!!� �
)
!!� �
;
!!� �
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
ServerLogReceived	""{ �
.
""� �
GetId
""� �
(
""� �
)
""� �
)
""� �
;
""� �
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
SceneEventSent	##| �
.
##� �
GetId
##� �
(
##� �
)
##� �
)
##� �
;
##� �
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
.	$$ � 
SceneEventReceived
$$� �
.
$$� �
GetId
$$� �
(
$$� �
)
$$� �
)
$$� �
;
$$� �
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
�� 	+
m_UnnamedMessageReceivedEvent
�� )
.
��) *
Mark
��* .
(
��. /!
unnamedMessageEvent
��/ B
)
��B C
;
��C D
}
�� 	
public
�� 
void
�� +
TrackNetworkVariableDeltaSent
�� 1
(
��1 2"
NetworkVariableEvent
��2 F"
networkVariableEvent
��G [
)
��[ \
{
�� 	-
m_NetworkVariableDeltaSentEvent
�� +
.
��+ ,
Mark
��, 0
(
��0 1"
networkVariableEvent
��1 E
)
��E F
;
��F G
}
�� 	
public
�� 
void
�� /
!TrackNetworkVariableDeltaReceived
�� 5
(
��5 6"
NetworkVariableEvent
��6 J"
networkVariableEvent
��K _
)
��_ `
{
�� 	1
#m_NetworkVariableDeltaReceivedEvent
�� /
.
��/ 0
Mark
��0 4
(
��4 5"
networkVariableEvent
��5 I
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
TrackOwnershipChangeSent
�� ,
(
��, -"
OwnershipChangeEvent
��- A"
ownershipChangeEvent
��B V
)
��V W
{
�� 	(
m_OwnershipChangeSentEvent
�� &
.
��& '
Mark
��' +
(
��+ ,"
ownershipChangeEvent
��, @
)
��@ A
;
��A B
}
�� 	
public
�� 
void
�� *
TrackOwnershipChangeReceived
�� 0
(
��0 1"
OwnershipChangeEvent
��1 E"
ownershipChangeEvent
��F Z
)
��Z [
{
�� 	,
m_OwnershipChangeReceivedEvent
�� *
.
��* +
Mark
��+ /
(
��/ 0"
ownershipChangeEvent
��0 D
)
��D E
;
��E F
}
�� 	
public
�� 
void
�� "
TrackObjectSpawnSent
�� (
(
��( ) 
ObjectSpawnedEvent
��) ; 
objectSpawnedEvent
��< N
)
��N O
{
�� 	$
m_ObjectSpawnSentEvent
�� "
.
��" #
Mark
��# '
(
��' ( 
objectSpawnedEvent
��( :
)
��: ;
;
��; <
}
�� 	
public
�� 
void
�� &
TrackObjectSpawnReceived
�� ,
(
��, - 
ObjectSpawnedEvent
��- ? 
objectSpawnedEvent
��@ R
)
��R S
{
�� 	(
m_ObjectSpawnReceivedEvent
�� &
.
��& '
Mark
��' +
(
��+ , 
objectSpawnedEvent
��, >
)
��> ?
;
��? @
}
�� 	
public
�� 
void
�� $
TrackObjectDestroySent
�� *
(
��* +"
ObjectDestroyedEvent
��+ ?"
objectDestroyedEvent
��@ T
)
��T U
{
�� 	&
m_ObjectDestroySentEvent
�� $
.
��$ %
Mark
��% )
(
��) *"
objectDestroyedEvent
��* >
)
��> ?
;
��? @
}
�� 	
public
�� 
void
�� (
TrackObjectDestroyReceived
�� .
(
��. /"
ObjectDestroyedEvent
��/ C"
objectDestroyedEvent
��D X
)
��X Y
{
�� 	*
m_ObjectDestroyReceivedEvent
�� (
.
��( )
Mark
��) -
(
��- ."
objectDestroyedEvent
��. B
)
��B C
;
��C D
}
�� 	
public
�� 
void
�� 
TrackRpcSent
��  
(
��  !
RpcEvent
��! )
rpcEvent
��* 2
)
��2 3
{
�� 	
m_RpcSentEvent
�� 
.
�� 
Mark
�� 
(
��  
rpcEvent
��  (
)
��( )
;
��) *
}
�� 	
public
�� 
void
�� 
TrackRpcReceived
�� $
(
��$ %
RpcEvent
��% -
rpcEvent
��. 6
)
��6 7
{
�� 	 
m_RpcReceivedEvent
�� 
.
�� 
Mark
�� #
(
��# $
rpcEvent
��$ ,
)
��, -
;
��- .
}
�� 	
public
�� 
void
��  
TrackServerLogSent
�� &
(
��& '
ServerLogEvent
��' 5
serverLogEvent
��6 D
)
��D E
{
�� 	"
m_ServerLogSentEvent
��  
.
��  !
Mark
��! %
(
��% &
serverLogEvent
��& 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
void
�� $
TrackServerLogReceived
�� *
(
��* +
ServerLogEvent
��+ 9
serverLogEvent
��: H
)
��H I
{
�� 	&
m_ServerLogReceivedEvent
�� $
.
��$ %
Mark
��% )
(
��) *
serverLogEvent
��* 8
)
��8 9
;
��9 :
}
�� 	
public
�� 
void
�� !
TrackSceneEventSent
�� '
(
��' (
SceneEventMetric
��( 8

sceneEvent
��9 C
)
��C D
{
�� 	#
m_SceneEventSentEvent
�� !
.
��! "
Mark
��" &
(
��& '

sceneEvent
��' 1
)
��1 2
;
��2 3
}
�� 	
public
�� 
void
�� %
TrackSceneEventReceived
�� +
(
��+ ,
SceneEventMetric
��, <

sceneEvent
��= G
)
��G H
{
�� 	'
m_SceneEventReceivedEvent
�� %
.
��% &
Mark
��& *
(
��* +

sceneEvent
��+ 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
void
�� 
TrackPacketSent
�� #
(
��# $
int
��$ '
packetCount
��( 3
)
��3 4
{
�� 	!
m_PacketSentCounter
�� 
.
��  
	Increment
��  )
(
��) *
packetCount
��* 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
void
�� !
TrackPacketReceived
�� '
(
��' (
int
��( +
packetCount
��, 7
)
��7 8
{
�� 	%
m_PacketReceivedCounter
�� #
.
��# $
	Increment
��$ -
(
��- .
packetCount
��. 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
void
�� 
TrackRttToServer
�� $
(
��$ %
int
��% (
rtt
��) ,
)
��, -
{
�� 	 
m_RttToServerGauge
�� 
.
�� 
Set
�� "
(
��" #
rtt
��# &
)
��& '
;
��' (
}
�� 	
public
�� 
void
�� '
UpdateNetworkObjectsCount
�� -
(
��- .
int
��. 1
count
��2 7
)
��7 8
{
�� 	#
m_NetworkObjectsGauge
�� !
.
��! "
Set
��" %
(
��% &
count
��& +
)
��+ ,
;
��, -
}
�� 	
public
�� 
void
�� $
UpdateConnectionsCount
�� *
(
��* +
int
��+ .
count
��/ 4
)
��4 5
{
�� 	 
m_ConnectionsGauge
�� 
.
�� 
Set
�� "
(
��" #
count
��# (
)
��( )
;
��) *
}
�� 	
public
�� 
void
�� 
UpdatePacketLoss
�� $
(
��$ %
float
��% *
count
��+ 0
)
��0 1
{
�� 	
m_PacketLoss
�� 
.
�� 
Set
�� 
(
�� 
count
�� "
)
��" #
;
��# $
}
�� 	
}
�� 
}�� �H
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\TestDataTrends.cs
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

k_LargeMax	44v �
}
44� �
;
44� �
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
k_PacketLossMax	88r �
}
88� �
;
88� �
}99 
}:: ��
�C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsReporting\Runtime\TestData\Definitions\Adjectives.cs
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
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
��  
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
,
�� 
$str
�� 
}
�� 	
;
��	 

}
�� 
}�� 