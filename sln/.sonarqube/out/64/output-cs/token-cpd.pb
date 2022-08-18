� 
lC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\INetworkHooks.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal

 
	interface




 $
{ 
void 
OnBeforeSendMessage
<  !
T! "
>" #
(# $
ulong$ )
clientId* 2
,2 3
ref4 7
T8 9
message: A
,A B
NetworkDeliveryC R
deliveryS [
)[ \
where] b
Tc d
:e f
INetworkMessageg v
;v w
void 
OnAfterSendMessage
<  
T  !
>! "
(" #
ulong# (
clientId) 1
,1 2
ref3 6
T7 8
message9 @
,@ A
NetworkDeliveryB Q
deliveryR Z
,Z [
int\ _
messageSizeBytes` p
)p q
wherer w
Tx y
:z {
INetworkMessage	| �
;
� �
void## "
OnBeforeReceiveMessage##
(### $
ulong##$ )
senderId##* 2
,##2 3
Type##4 8
messageType##9 D
,##D E
int##F I
messageSizeBytes##J Z
)##Z [
;##[ \
void++ !
OnAfterReceiveMessage++
(++" #
ulong++# (
senderId++) 1
,++1 2
Type++3 7
messageType++8 C
,++C D
int++E H
messageSizeBytes++I Y
)++Y Z
;++Z [
void44 
OnBeforeSendBatch44
(44 
ulong44 $
clientId44% -
,44- .
int44/ 2
messageCount443 ?
,44? @
int44A D
batchSizeInBytes44E U
,44U V
NetworkDelivery44W f
delivery44g o
)44o p
;44p q
void== 
OnAfterSendBatch==
(== 
ulong== #
clientId==$ ,
,==, -
int==. 1
messageCount==2 >
,==> ?
int==@ C
batchSizeInBytes==D T
,==T U
NetworkDelivery==V e
delivery==f n
)==n o
;==o p
voidEE  
OnBeforeReceiveBatchEE
(EE! "
ulongEE" '
senderIdEE( 0
,EE0 1
intEE2 5
messageCountEE6 B
,EEB C
intEED G
batchSizeInBytesEEH X
)EEX Y
;EEY Z
voidMM 
OnAfterReceiveBatchMM
(MM  !
ulongMM! &
senderIdMM' /
,MM/ 0
intMM1 4
messageCountMM5 A
,MMA B
intMMC F
batchSizeInBytesMMG W
)MMW X
;MMX Y
boolWW 
OnVerifyCanSendWW
(WW 
ulongWW "

,WW0 1
TypeWW2 6
messageTypeWW7 B
,WWB C
NetworkDeliveryWWD S
deliveryWWT \
)WW\ ]
;WW] ^
boolaa 
OnVerifyCanReceiveaa
(aa  
ulongaa  %
senderIdaa& .
,aa. /
Typeaa0 4
messageTypeaa5 @
,aa@ A
FastBufferReaderaaB R
messageContentaaS a
,aaa b
refaac f
NetworkContextaag u
contextaav }
)aa} ~
;aa~ 
voidjj !
OnBeforeHandleMessagejj
<jj" #
Tjj# $
>jj$ %
(jj% &
refjj& )
Tjj* +
messagejj, 3
,jj3 4
refjj5 8
NetworkContextjj9 G
contextjjH O
)jjO P
wherejjQ V
TjjW X
:jjY Z
INetworkMessagejj[ j
;jjj k
voidss  
OnAfterHandleMessagess
<ss! "
Tss" #
>ss# $
(ss$ %
refss% (
Tss) *
messagess+ 2
,ss2 3
refss4 7
NetworkContextss8 F
contextssG N
)ssN O
wheressP U
TssV W
:ssX Y
INetworkMessagessZ i
;ssi j
}tt 
}uu �
jC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Core\ComponentFactory.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
static
class 
ComponentFactory *
{
internal 
delegate 
object   
CreateObjectDelegate! 5
(5 6
NetworkManager6 D
networkManagerE S
)S T
;T U
private 
static 

Dictionary !
<! "
Type" &
,& ' 
CreateObjectDelegate( <
>< =
s_Delegates> I
=J K
newL O

DictionaryP Z
<Z [
Type[ _
,_ ` 
CreateObjectDelegatea u
>u v
(v w
)w x
;x y
public 
static 
T 
Create 
< 
T  
>  !
(! "
NetworkManager" 0
networkManager1 ?
)? @
{ 	
return 
( 
T 
) 
s_Delegates !
[! "
typeof" (
(( )
T) *
)* +
]+ ,
(, -
networkManager- ;
); <
;< =
} 	
public"" 
static"" 
void"" 
Register"" #
<""# $
T""$ %
>""% &
(""& ' 
CreateObjectDelegate""' ;
creator""< C
)""C D
{## 	
s_Delegates$$ 
[$$ 
typeof$$ 
($$ 
T$$  
)$$  !
]$$! "
=$$# $
creator$$% ,
;$$, -
}%% 	
public++ 
static++ 
void++ 

Deregister++ %
<++% &
T++& '
>++' (
(++( )
)++) *
{,, 	
s_Delegates-- 
.-- 
Remove-- 
(-- 
typeof-- %
(--% &
T--& '
)--' (
)--( )
;--) *
SetDefaults.. 
(.. 
).. 
;.. 
}// 	
public44 
static44 
void44 
SetDefaults44 &
(44& '
)44' (
{55 	

SetDefault66 
<66 #
IDeferredMessageManager66 .
>66. /
(66/ 0
networkManager660 >
=>66? A
new66B E"
DeferredMessageManager66F \
(66\ ]
networkManager66] k
)66k l
)66l m
;66m n
}77 	
private99 
static99 
void99 

SetDefault99 &
<99& '
T99' (
>99( )
(99) * 
CreateObjectDelegate99* >
creator99? F
)99F G
{:: 	
if;; 
(;; 
!;; 
s_Delegates;; 
.;; 
ContainsKey;; (
(;;( )
typeof;;) /
(;;/ 0
T;;0 1
);;1 2
);;2 3
);;3 4
{<< 
s_Delegates== 
[== 
typeof== "
(==" #
T==# $
)==$ %
]==% &
===' (
creator==) 0
;==0 1
}>> 
}?? 	
}@@ 
}AA �
lC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\RpcAttributes.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

enum 
RpcDelivery 
{		 
Reliable
=
$num
,

Unreliable 
} 
public 

abstract 
class 
RpcAttribute &
:' (
	Attribute) 2
{ 
public 
RpcDelivery 
Delivery #
=$ %
RpcDelivery& 1
.1 2
Reliable2 :
;: ;
} 
[$$ 
AttributeUsage$$ 
($$ 
AttributeTargets$$ $
.$$$ %
Method$$% +
)$$+ ,
]$$, -
public%% 

class%% 
ServerRpcAttribute%% #
:%%$ %
RpcAttribute%%& 2
{&& 
public** 
bool** 
RequireOwnership** $
=**% &
true**' +
;**+ ,
}++ 
[11 
AttributeUsage11 
(11 
AttributeTargets11 $
.11$ %
Method11% +
)11+ ,
]11, -
public22 

class22 
ClientRpcAttribute22 #
:22$ %
RpcAttribute22& 2
{223 4
}225 6
}33 �7
mC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\Arithmetic.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

static 
class 

Arithmetic "
{ 
internal		 
const		 
long		 
SIGN_BIT_64		 '
=		( )
-		* +
$num		+ >
;		> ?
internal

 
const

 
int

 
SIGN_BIT_32

 &
=

' (
-

) *
$num

* 4
;

4 5
internal 
const 
short 
SIGN_BIT_16 (
=) *
-+ ,
$num, 1
;1 2
internal 
const 
sbyte 

SIGN_BIT_8 '
=( )
-* +
$num+ .
;. /
internal 
static 
ulong 
CeilingExact *
(* +
ulong+ 0
u11 3
,3 4
ulong5 :
u2; =
)= >
=>? A
(B C
u1C E
+F G
u2H J
-K L
$numM N
)N O
/P Q
u2R T
;T U
internal 
static 
long 
CeilingExact )
() *
long* .
u1/ 1
,1 2
long3 7
u28 :
): ;
=>< >
(? @
u1@ B
+C D
u2E G
-H I
$numJ K
)K L
/M N
u2O Q
;Q R
internal 
static 
uint 
CeilingExact )
() *
uint* .
u1/ 1
,1 2
uint3 7
u28 :
): ;
=>< >
(? @
u1@ B
+C D
u2E G
-H I
$numJ K
)K L
/M N
u2O Q
;Q R
internal 
static 
int 
CeilingExact (
(( )
int) ,
u1- /
,/ 0
int1 4
u25 7
)7 8
=>9 ;
(< =
u1= ?
+@ A
u2B D
-E F
$numG H
)H I
/J K
u2L N
;N O
internal 
static 
ushort 
CeilingExact +
(+ ,
ushort, 2
u13 5
,5 6
ushort7 =
u2> @
)@ A
=>B D
(E F
ushortF L
)L M
(M N
(N O
u1O Q
+R S
u2T V
-W X
$numY Z
)Z [
/\ ]
u2^ `
)` a
;a b
internal 
static 
short 
CeilingExact *
(* +
short+ 0
u11 3
,3 4
short5 :
u2; =
)= >
=>? A
(B C
shortC H
)H I
(I J
(J K
u1K M
+N O
u2P R
-S T
$numU V
)V W
/X Y
u2Z \
)\ ]
;] ^
internal 
static 
byte 
CeilingExact )
() *
byte* .
u1/ 1
,1 2
byte3 7
u28 :
): ;
=>< >
(? @
byte@ D
)D E
(E F
(F G
u1G I
+J K
u2L N
-O P
$numQ R
)R S
/T U
u2V X
)X Y
;Y Z
internal 
static 
sbyte 
CeilingExact *
(* +
sbyte+ 0
u11 3
,3 4
sbyte5 :
u2; =
)= >
=>? A
(B C
sbyteC H
)H I
(I J
(J K
u1K M
+N O
u2P R
-S T
$numU V
)V W
/X Y
u2Z \
)\ ]
;] ^
public 
static 
ulong 
ZigZagEncode (
(( )
long) -
value. 3
)3 4
=>5 7
(8 9
ulong9 >
)> ?
(? @
(@ A
valueA F
>>G I
$numJ L
)L M
^N O
(P Q
valueQ V
<<W Y
$numZ [
)[ \
)\ ]
;] ^
public%% 
static%% 
long%% 
ZigZagDecode%% '
(%%' (
ulong%%( -
value%%. 3
)%%3 4
=>%%5 7
(%%8 9
(%%9 :
(%%: ;
long%%; ?
)%%? @
(%%@ A
value%%A F
>>%%G I
$num%%J K
)%%K L
&%%M N
$num%%O b
)%%b c
^%%d e
(%%f g
(%%g h
long%%h l
)%%l m
(%%m n
value%%n s
<<%%t v
$num%%w y
)%%y z
>>%%{ }
$num	%%~ �
)
%%� �
)
%%� �
;
%%� �
public,, 
static,, 
int,, 

VarIntSize,, $
(,,$ %
ulong,,% *
value,,+ 0
),,0 1
=>,,2 4
value-- 
<=-- 
$num-- 
?-- 
$num-- 
:-- 
value.. 
<=.. 
$num.. 
?.. 
$num.. 
:.. 
value// 
<=// 
$num// 
?// 
$num// 
://  
value00 
<=00 
$num00 
?00 
$num00  !
:00" #
value11 
<=11 
$num11 
?11  !
$num11" #
:11$ %
value22 
<=22 
$num22 "
?22# $
$num22% &
:22' (
value33 
<=33 
$num33 $
?33% &
$num33' (
:33) *
value44 
<=44 
$num44 &
?44' (
$num44) *
:44+ ,
$num55 
;55
internal77 
static77 
long77 
Div8Ceil77 %
(77% &
ulong77& +
value77, 1
)771 2
=>773 5
(776 7
long777 ;
)77; <
(77< =
(77= >
value77> C
>>77D F
$num77G H
)77H I
+77J K
(77L M
(77M N
value77N S
&77T U
$num77V Y
)77Y Z
|77[ \
(77] ^
(77^ _
value77_ d
>>77e g
$num77h i
)77i j
&77k l
$num77m p
)77p q
|77r s
(77t u
(77u v
value77v {
>>77| ~
$num	77 �
)
77� �
&
77� �
$num
77� �
)
77� �
)
77� �
)
77� �
;
77� �
}88 
}99 �
oC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Transports\NetworkDelivery.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

enum 
NetworkDelivery 
{ 

Unreliable 
, 
UnreliableSequenced 
, 
Reliable 
, 
ReliableSequenced 
, '
ReliableFragmentedSequenced #
}   
}!! �E
lC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Metrics\INetworkMetrics.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
	interface
INetworkMetrics &
{ 
void 
SetConnectionId
( 
ulong "
connectionId# /
)/ 0
;0 1
void		 #
TrackTransportBytesSent		
(		$ %
long		% )

bytesCount		* 4
)		4 5
;		5 6
void '
TrackTransportBytesReceived
(( )
long) -

bytesCount. 8
)8 9
;9 :
void
TrackNetworkMessageSent
(
ulong
receivedClientId
,
string
messageType
,
long

bytesCount
)
;
void '
TrackNetworkMessageReceived
(( )
ulong) .
senderClientId/ =
,= >
string? E
messageTypeF Q
,Q R
longS W

bytesCountX b
)b c
;c d
void !
TrackNamedMessageSent
(" #
ulong# (
receiverClientId) 9
,9 :
string; A
messageNameB M
,M N
longO S

bytesCountT ^
)^ _
;_ `
void !
TrackNamedMessageSent
(" #
IReadOnlyCollection# 6
<6 7
ulong7 <
>< =
receiverClientIds> O
,O P
stringQ W
messageNameX c
,c d
longe i

bytesCountj t
)t u
;u v
void %
TrackNamedMessageReceived
(& '
ulong' ,
senderClientId- ;
,; <
string= C
messageNameD O
,O P
longQ U

bytesCountV `
)` a
;a b
void #
TrackUnnamedMessageSent
($ %
ulong% *
receiverClientId+ ;
,; <
long= A

bytesCountB L
)L M
;M N
void #
TrackUnnamedMessageSent
($ %
IReadOnlyCollection% 8
<8 9
ulong9 >
>> ?
receiverClientIds@ Q
,Q R
longS W

bytesCountX b
)b c
;c d
void '
TrackUnnamedMessageReceived
(( )
ulong) .
senderClientId/ =
,= >
long? C

bytesCountD N
)N O
;O P
void )
TrackNetworkVariableDeltaSent
(* +
ulong 
receiverClientId "
," #


,' (
string   
variableName   
,    
string!!  
networkBehaviourName!! '
,!!' (
long"" 

bytesCount"" 
)"" 
;"" 
void$$ -
!TrackNetworkVariableDeltaReceived$$
($$. /
ulong%% 
senderClientId%%  
,%%  !


,&&' (
string'' 
variableName'' 
,''  
string((  
networkBehaviourName(( '
,((' (
long)) 

bytesCount)) 
))) 
;)) 
void++ $
TrackOwnershipChangeSent++
(++% &
ulong++& +
receiverClientId++, <
,++< =


,++Y Z
long++[ _

bytesCount++` j
)++j k
;++k l
void-- (
TrackOwnershipChangeReceived--
(--) *
ulong--* /
senderClientId--0 >
,--> ?


,--[ \
long--] a

bytesCount--b l
)--l m
;--m n
void//  
TrackObjectSpawnSent//
(//! "
ulong//" '
receiverClientId//( 8
,//8 9


,//U V
long//W [

bytesCount//\ f
)//f g
;//g h
void11 $
TrackObjectSpawnReceived11
(11% &
ulong11& +
senderClientId11, :
,11: ;


,11W X
long11Y ]

bytesCount11^ h
)11h i
;11i j
void33 "
TrackObjectDestroySent33
(33# $
ulong33$ )
receiverClientId33* :
,33: ;


,33W X
long33Y ]

bytesCount33^ h
)33h i
;33i j
void55 &
TrackObjectDestroyReceived55
(55' (
ulong55( -
senderClientId55. <
,55< =


,55Y Z
long55[ _

bytesCount55` j
)55j k
;55k l
void77 
TrackRpcSent77
(77 
ulong88 
receiverClientId88 "
,88" #


,99' (
string:: 
rpcName:: 
,:: 
string;;  
networkBehaviourName;; '
,;;' (
long<< 

bytesCount<< 
)<< 
;<< 
void>> 
TrackRpcSent>>
(>> 
ulong?? 
[?? 
]?? 
receiverClientIds?? %
,??% &


,@@' (
stringAA 
rpcNameAA 
,AA 
stringBB  
networkBehaviourNameBB '
,BB' (
longCC 

bytesCountCC 
)CC 
;CC 
voidEE 
TrackRpcReceivedEE
(EE 
ulongFF 
senderClientIdFF  
,FF  !


,GG' (
stringHH 
rpcNameHH 
,HH 
stringII  
networkBehaviourNameII '
,II' (
longJJ 

bytesCountJJ 
)JJ 
;JJ 
voidLL 
TrackServerLogSentLL
(LL  
ulongLL  %
receiverClientIdLL& 6
,LL6 7
uintLL8 <
logTypeLL= D
,LLD E
longLLF J

bytesCountLLK U
)LLU V
;LLV W
voidNN "
TrackServerLogReceivedNN
(NN# $
ulongNN$ )
senderClientIdNN* 8
,NN8 9
uintNN: >
logTypeNN? F
,NNF G
longNNH L

bytesCountNNM W
)NNW X
;NNX Y
voidPP 
TrackSceneEventSentPP
(PP  !

<PP. /
ulongPP/ 4
>PP4 5
receiverClientIdsPP6 G
,PPG H
uintPPI M
sceneEventTypePPN \
,PP\ ]
stringPP^ d
	sceneNamePPe n
,PPn o
longPPp t

bytesCountPPu 
)	PP �
;
PP� �
voidRR 
TrackSceneEventSentRR
(RR  !
ulongRR! &
receiverClientIdRR' 7
,RR7 8
uintRR9 =
sceneEventTypeRR> L
,RRL M
stringRRN T
	sceneNameRRU ^
,RR^ _
longRR` d

bytesCountRRe o
)RRo p
;RRp q
voidTT #
TrackSceneEventReceivedTT
(TT$ %
ulongTT% *
senderClientIdTT+ 9
,TT9 :
uintTT; ?
sceneEventTypeTT@ N
,TTN O
stringTTP V
	sceneNameTTW `
,TT` a
longTTb f

bytesCountTTg q
)TTq r
;TTr s
voidVV 
TrackPacketSentVV
(VV 
uintVV !
packetCountVV" -
)VV- .
;VV. /
voidXX 
TrackPacketReceivedXX
(XX  !
uintXX! %
packetCountXX& 1
)XX1 2
;XX2 3
voidZZ 
UpdateRttToServerZZ
(ZZ 
intZZ "
rttZZ# &
)ZZ& '
;ZZ' (
void\\ %
UpdateNetworkObjectsCount\\
(\\& '
int\\' *
count\\+ 0
)\\0 1
;\\1 2
void^^ "
UpdateConnectionsCount^^
(^^# $
int^^$ '
count^^( -
)^^- .
;^^. /
void`` 
UpdatePacketLoss``
(`` 
float`` #

packetLoss``$ .
)``. /
;``/ 0
voidbb 

(bb 
)bb 
;bb 
}cc 
}dd �
wC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\INetworkSerializable.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

	interface  
INetworkSerializable )
{ 
void 
NetworkSerialize
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

;X Y
} 
} �
}C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Exceptions\NetworkConfigurationException.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

class )
NetworkConfigurationException .
:/ 0
	Exception1 :
{		 
public
NetworkConfigurationException
(
)
{
}
public )
NetworkConfigurationException ,
(, -
string- 3
message4 ;
); <
:= >
base? C
(C D
messageD K
)K L
{M N
}O P
public )
NetworkConfigurationException ,
(, -
string- 3
message4 ;
,; <
	Exception= F
innerG L
)L M
:N O
baseP T
(T U
messageU \
,\ ]
inner^ c
)c d
{e f
}g h
} 
} �
|C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\Messages\DestroyObjectMessage.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
struct
DestroyObjectMessage (
:) *
INetworkMessage+ :
,: ;%
INetworkSerializeByMemcpy< U
{ 
public 
ulong 
NetworkObjectId $
;$ %
public 
bool 
DestroyGameObject %
;% &
public 
void 
	Serialize 
( 
FastBufferWriter .
writer/ 5
)5 6
{		 	
writer

 
.

 
WriteValueSafe

 !
(

! "
this

" &
)

& '
;

' (
} 	
public
bool
Deserialize
(
FastBufferReader
reader
,
ref
NetworkContext
context
)
{ 	
var 
networkManager 
=  
(! "
NetworkManager" 0
)0 1
context1 8
.8 9
SystemOwner9 D
;D E
if 
( 
! 
networkManager 
.  
IsClient  (
)( )
{ 
return 
false 
; 
} 
reader 
. 

(  !
out! $
this% )
)) *
;* +
if 
( 
! 
networkManager 
.  
SpawnManager  ,
., -
SpawnedObjects- ;
.; <
TryGetValue< G
(G H
NetworkObjectIdH W
,W X
outY \
var] `

)n o
)o p
{ 
networkManager 
. "
DeferredMessageManager 5
.5 6
DeferMessage6 B
(B C#
IDeferredMessageManagerC Z
.Z [
TriggerType[ f
.f g
OnSpawng n
,n o
NetworkObjectIdp 
,	 �
reader
� �
,
� �
ref
� �
context
� �
)
� �
;
� �
return 
false 
; 
} 
return 
true 
; 
} 	
public 
void 
Handle 
( 
ref 
NetworkContext -
context. 5
)5 6
{   	
var!! 
networkManager!! 
=!!  
(!!! "
NetworkManager!!" 0
)!!0 1
context!!1 8
.!!8 9
SystemOwner!!9 D
;!!D E
if"" 
("" 
!"" 
networkManager"" 
.""  
SpawnManager""  ,
."", -
SpawnedObjects""- ;
.""; <
TryGetValue""< G
(""G H
NetworkObjectId""H W
,""W X
out""Y \
var""] `

)""n o
)""o p
{## 
return%% 
;%% 
}&& 
networkManager(( 
.(( 
NetworkMetrics(( )
.(() *&
TrackObjectDestroyReceived((* D
(((D E
context((E L
.((L M
SenderId((M U
,((U V

,((d e
context((f m
.((m n
MessageSize((n y
)((y z
;((z {
networkManager)) 
.)) 
SpawnManager)) '
.))' (
OnDespawnObject))( 7
())7 8

,))E F
DestroyGameObject))G X
)))X Y
;))Y Z
}** 	
}++ 
},, ��
rC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Transports\UTP\UnityTransport.cs
	namespace 	
Unity
 
. 
Netcode 
. 

Transports "
." #
UTP# &
{
public 

	interface +
INetworkStreamDriverConstructor 4
{ 
void 
CreateDriver
( 
UnityTransport 
	transport $
,$ %
out 

driver $
,$ %
out 
NetworkPipeline (
unreliableFragmentedPipeline  <
,< =
out 
NetworkPipeline 1
%unreliableSequencedFragmentedPipeline  E
,E F
out   
NetworkPipeline   %
reliableSequencedPipeline    9
)  9 :
;  : ;
}!! 
public&& 

static&& 
class&& 
ErrorUtilities&& &
{'' 
private(( 
const(( 
string(( 
k_NetworkSuccess(( -
=((. /
$str((0 9
;((9 :
private)) 
const)) 
string)) 
k_NetworkIdMismatch)) 0
=))1 2
$str))3 q
;))q r
private** 
const** 
string** $
k_NetworkVersionMismatch** 5
=**6 7
$str**8 {
;**{ |
private++ 
const++ 
string++ "
k_NetworkStateMismatch++ 3
=++4 5
$str++6 w
;++w x
private,, 
const,, 
string,, #
k_NetworkPacketOverflow,, 4
=,,5 6
$str,,7 j
;,,j k
private-- 
const-- 
string-- "
k_NetworkSendQueueFull-- 3
=--4 5
$str	--6 �
;
--� �
private.. 
const.. 
string.. "
k_NetworkHeaderInvalid.. 3
=..4 5
$str..6 `
;..` a
private// 
const// 
string// )
k_NetworkDriverParallelForErr// :
=//; <
$str	//= �
;
//� �
private00 
const00 
string00 &
k_NetworkSendHandleInvalid00 7
=008 9
$str	00: �
;
00� �
private11 
const11 
string11 %
k_NetworkArgumentMismatch11 6
=117 8
$str119 ]
;11] ^
public99 
static99 
string99 

(99* +

Networking99+ 5
.995 6
	Transport996 ?
.99? @
Error99@ E
.99E F

StatusCode99F P
error99Q V
,99V W
ulong99X ]
connectionId99^ j
)99j k
{:: 	
switch;; 
(;; 
error;; 
);; 
{<< 
case== 

Networking== 
.==  
	Transport==  )
.==) *
Error==* /
.==/ 0

StatusCode==0 :
.==: ;
Success==; B
:==B C
return>> 
k_NetworkSuccess>> +
;>>+ ,
case?? 

Networking?? 
.??  
	Transport??  )
.??) *
Error??* /
.??/ 0

StatusCode??0 :
.??: ;
NetworkIdMismatch??; L
:??L M
return@@ 
string@@ !
.@@! "
Format@@" (
(@@( )
k_NetworkIdMismatch@@) <
,@@< =
connectionId@@> J
)@@J K
;@@K L
caseAA 

NetworkingAA 
.AA  
	TransportAA  )
.AA) *
ErrorAA* /
.AA/ 0

StatusCodeAA0 :
.AA: ;"
NetworkVersionMismatchAA; Q
:AAQ R
returnBB 
stringBB !
.BB! "
FormatBB" (
(BB( )$
k_NetworkVersionMismatchBB) A
,BBA B
connectionIdBBC O
)BBO P
;BBP Q
caseCC 

NetworkingCC 
.CC  
	TransportCC  )
.CC) *
ErrorCC* /
.CC/ 0

StatusCodeCC0 :
.CC: ; 
NetworkStateMismatchCC; O
:CCO P
returnDD 
stringDD !
.DD! "
FormatDD" (
(DD( )"
k_NetworkStateMismatchDD) ?
,DD? @
connectionIdDDA M
)DDM N
;DDN O
caseEE 

NetworkingEE 
.EE  
	TransportEE  )
.EE) *
ErrorEE* /
.EE/ 0

StatusCodeEE0 :
.EE: ;!
NetworkPacketOverflowEE; P
:EEP Q
returnFF #
k_NetworkPacketOverflowFF 2
;FF2 3
caseGG 

NetworkingGG 
.GG  
	TransportGG  )
.GG) *
ErrorGG* /
.GG/ 0

StatusCodeGG0 :
.GG: ; 
NetworkSendQueueFullGG; O
:GGO P
returnHH "
k_NetworkSendQueueFullHH 1
;HH1 2
caseII 

NetworkingII 
.II  
	TransportII  )
.II) *
ErrorII* /
.II/ 0

StatusCodeII0 :
.II: ; 
NetworkHeaderInvalidII; O
:IIO P
returnJJ "
k_NetworkHeaderInvalidJJ 1
;JJ1 2
caseKK 

NetworkingKK 
.KK  
	TransportKK  )
.KK) *
ErrorKK* /
.KK/ 0

StatusCodeKK0 :
.KK: ;'
NetworkDriverParallelForErrKK; V
:KKV W
returnLL )
k_NetworkDriverParallelForErrLL 8
;LL8 9
caseMM 

NetworkingMM 
.MM  
	TransportMM  )
.MM) *
ErrorMM* /
.MM/ 0

StatusCodeMM0 :
.MM: ;$
NetworkSendHandleInvalidMM; S
:MMS T
returnNN &
k_NetworkSendHandleInvalidNN 5
;NN5 6
caseOO 

NetworkingOO 
.OO  
	TransportOO  )
.OO) *
ErrorOO* /
.OO/ 0

StatusCodeOO0 :
.OO: ;#
NetworkArgumentMismatchOO; R
:OOR S
returnPP %
k_NetworkArgumentMismatchPP 4
;PP4 5
}QQ 
returnSS 
$"SS 
$strSS '
{SS' (
EnumSS( ,
.SS, -
GetNameSS- 4
(SS4 5
typeofSS5 ;
(SS; <

NetworkingSS< F
.SSF G
	TransportSSG P
.SSP Q
ErrorSSQ V
.SSV W

StatusCodeSSW a
)SSa b
,SSb c
errorSSd i
)SSi j
}SSj k
"SSk l
;SSl m
}TT 	
}UU 
public[[ 

partial[[ 
class[[ 
UnityTransport[[ '
:[[( )
NetworkTransport[[* :
,[[: ;+
INetworkStreamDriverConstructor[[< [
{\\ 
public`` 
enum`` 
ProtocolType``  
{aa 	
UnityTransportee 
,ee 
RelayUnityTransportii 
,ii  
}jj 	
privatell 
enumll 
Statell 
{mm 	
Disconnectednn 
,nn 
	Listeningoo 
,oo 
	Connectedpp 
,pp 
}qq 	
publicvv 
constvv 
intvv %
InitialMaxPacketQueueSizevv 2
=vv3 4
$numvv5 8
;vv8 9
public{{ 
const{{ 
int{{ !
InitialMaxPayloadSize{{ .
={{/ 0
$num{{1 2
*{{3 4
$num{{5 9
;{{9 :
public
�� 
const
�� 
int
�� %
InitialMaxSendQueueSize
�� 0
=
��1 2
$num
��3 5
*
��6 7#
InitialMaxPayloadSize
��8 M
;
��M N
private
�� 
static
�� #
ConnectionAddressData
�� ,,
s_DefaultConnectionAddressData
��- K
=
��L M
new
��N Q#
ConnectionAddressData
��R g
{
��h i
Address
��j q
=
��r s
$str
��t 
,�� �
Port��� �
=��� �
$num��� �
,��� �#
ServerListenAddress��� �
=��� �
string��� �
.��� �
Empty��� �
}��� �
;��� �
public
�� 
static
�� -
INetworkStreamDriverConstructor
�� 5!
s_DriverConstructor
��6 I
;
��I J
public
�� -
INetworkStreamDriverConstructor
�� .
DriverConstructor
��/ @
=>
��A C!
s_DriverConstructor
��D W
??
��X Z
this
��[ _
;
��_ `
[
�� 	
Tooltip
��	 
(
�� 
$str
�� G
)
��G H
]
��H I
[
�� 	
SerializeField
��	 
]
�� 
private
�� 
ProtocolType
�� 
m_ProtocolType
�� +
;
��+ ,
[
�� 	
Tooltip
��	 
(
�� 
$str�� �
)��� �
]��� �
[
�� 	
SerializeField
��	 
]
�� 
private
�� 
int
�� "
m_MaxPacketQueueSize
�� (
=
��) *'
InitialMaxPacketQueueSize
��+ D
;
��D E
public
�� 
int
��  
MaxPacketQueueSize
�� %
{
�� 	
get
�� 
=>
�� "
m_MaxPacketQueueSize
�� '
;
��' (
set
�� 
=>
�� "
m_MaxPacketQueueSize
�� '
=
��( )
value
��* /
;
��/ 0
}
�� 	
[
�� 	
Tooltip
��	 
(
�� 
$str
�� V
)
��V W
]
��W X
[
�� 	
SerializeField
��	 
]
�� 
private
�� 
int
�� 
m_MaxPayloadSize
�� $
=
��% &#
InitialMaxPayloadSize
��' <
;
��< =
public
�� 
int
�� 
MaxPayloadSize
�� !
{
�� 	
get
�� 
=>
�� 
m_MaxPayloadSize
�� #
;
��# $
set
�� 
=>
�� 
m_MaxPayloadSize
�� #
=
��$ %
value
��& +
;
��+ ,
}
�� 	
[
�� 	
Tooltip
��	 
(
�� 
$str�� �
)��� �
]��� �
[
�� 	
SerializeField
��	 
]
�� 
private
�� 
int
��  
m_MaxSendQueueSize
�� &
=
��' (%
InitialMaxSendQueueSize
��) @
;
��@ A
public
�� 
int
�� 
MaxSendQueueSize
�� #
{
�� 	
get
�� 
=>
��  
m_MaxSendQueueSize
�� %
;
��% &
set
�� 
=>
��  
m_MaxSendQueueSize
�� %
=
��& '
value
��( -
;
��- .
}
�� 	
[
�� 	
Tooltip
��	 
(
�� 
$str
�� c
)
��c d
]
��d e
[
�� 	
SerializeField
��	 
]
�� 
private
�� 
int
�� "
m_HeartbeatTimeoutMS
�� (
=
��) *'
NetworkParameterConstants
��+ D
.
��D E 
HeartbeatTimeoutMS
��E W
;
��W X
public
�� 
int
��  
HeartbeatTimeoutMS
�� %
{
�� 	
get
�� 
=>
�� "
m_HeartbeatTimeoutMS
�� '
;
��' (
set
�� 
=>
�� "
m_HeartbeatTimeoutMS
�� '
=
��( )
value
��* /
;
��/ 0
}
�� 	
[
�� 	
Tooltip
��	 
(
�� 
$str
�� s
)
��s t
]
��t u
[
�� 	
SerializeField
��	 
]
�� 
private
�� 
int
��  
m_ConnectTimeoutMS
�� &
=
��' ('
NetworkParameterConstants
��) B
.
��B C
ConnectTimeoutMS
��C S
;
��S T
public
�� 
int
�� 
ConnectTimeoutMS
�� #
{
�� 	
get
�� 
=>
��  
m_ConnectTimeoutMS
�� %
;
��% &
set
�� 
=>
��  
m_ConnectTimeoutMS
�� %
=
��& '
value
��( -
;
��- .
}
�� 	
[
�� 	
Tooltip
��	 
(
�� 
$str
�� ^
)
��^ _
]
��_ `
[
�� 	
SerializeField
��	 
]
�� 
private
�� 
int
�� "
m_MaxConnectAttempts
�� (
=
��) *'
NetworkParameterConstants
��+ D
.
��D E 
MaxConnectAttempts
��E W
;
��W X
public
�� 
int
��  
MaxConnectAttempts
�� %
{
�� 	
get
�� 
=>
�� "
m_MaxConnectAttempts
�� '
;
��' (
set
�� 
=>
�� "
m_MaxConnectAttempts
�� '
=
��( )
value
��* /
;
��/ 0
}
�� 	
[
�� 	
Tooltip
��	 
(
�� 
$str�� �
)��� �
]��� �
[
�� 	
SerializeField
��	 
]
�� 
private
�� 
int
�� #
m_DisconnectTimeoutMS
�� )
=
��* +'
NetworkParameterConstants
��, E
.
��E F!
DisconnectTimeoutMS
��F Y
;
��Y Z
public
�� 
int
�� !
DisconnectTimeoutMS
�� &
{
�� 	
get
�� 
=>
�� #
m_DisconnectTimeoutMS
�� (
;
��( )
set
�� 
=>
�� #
m_DisconnectTimeoutMS
�� (
=
��) *
value
��+ 0
;
��0 1
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
public
�� 
struct
�� #
ConnectionAddressData
�� +
{
�� 	
[
�� 
Tooltip
��
(
�� 
$str
�� [
)
��[ \
]
��\ ]
[
�� 
SerializeField
��
]
�� 
public
�� 
string
�� 
Address
�� !
;
��! "
[
�� 
Tooltip
��
(
�� 
$str
�� .
)
��. /
]
��/ 0
[
�� 
SerializeField
��
]
�� 
public
�� 
ushort
�� 
Port
�� 
;
�� 
[
�� 
Tooltip
��
(
�� 
$str
�� a
)
��a b
]
��b c
[
�� 
SerializeField
��
]
�� 
public
�� 
string
�� !
ServerListenAddress
�� -
;
��- .
private
�� 
static
�� 
NetworkEndPoint
�� *"
ParseNetworkEndpoint
��+ ?
(
��? @
string
��@ F
ip
��G I
,
��I J
ushort
��K Q
port
��R V
)
��V W
{
�� 
if
�� 
(
�� 
!
�� 
NetworkEndPoint
�� $
.
��$ %
TryParse
��% -
(
��- .
ip
��. 0
,
��0 1
port
��2 6
,
��6 7
out
��8 ;
var
��< ?
endpoint
��@ H
)
��H I
)
��I J
{
�� 
Debug
�� 
.
�� 
LogError
�� "
(
��" #
$"
��# %
$str
��% ?
{
��? @
ip
��@ B
}
��B C
$str
��C D
{
��D E
port
��E I
}
��I J
$str
��J K
"
��K L
)
��L M
;
��M N
return
�� 
default
�� "
;
��" #
}
�� 
return
�� 
endpoint
�� 
;
��  
}
�� 
public
�� 
NetworkEndPoint
�� "
ServerEndPoint
��# 1
=>
��2 4"
ParseNetworkEndpoint
��5 I
(
��I J
Address
��J Q
,
��Q R
Port
��S W
)
��W X
;
��X Y
public
�� 
NetworkEndPoint
�� "
ListenEndPoint
��# 1
=>
��2 4"
ParseNetworkEndpoint
��5 I
(
��I J
(
��J K!
ServerListenAddress
��K ^
==
��_ a
string
��b h
.
��h i
Empty
��i n
)
��n o
?
��p q
Address
��r y
:
��z {"
ServerListenAddress��| �
,��� �
Port��� �
)��� �
;��� �
}
�� 	
public
�� #
ConnectionAddressData
�� $
ConnectionData
��% 3
=
��4 5,
s_DefaultConnectionAddressData
��6 T
;
��T U
[
�� 	
Serializable
��	 
]
�� 
public
�� 
struct
�� !
SimulatorParameters
�� )
{
�� 	
[
�� 
Tooltip
��
(
�� 
$str�� �
)��� �
]��� �
[
�� 
SerializeField
��
]
�� 
public
�� 
int
�� 

�� $
;
��$ %
[
�� 
Tooltip
��
(
�� 
$str�� �
)��� �
]��� �
[
�� 
SerializeField
��
]
�� 
public
�� 
int
�� 
PacketJitterMS
�� %
;
��% &
[
�� 
Tooltip
��
(
�� 
$str�� �
)��� �
]��� �
[
�� 
SerializeField
��
]
�� 
public
�� 
int
�� 
PacketDropRate
�� %
;
��% &
}
�� 	
public
�� !
SimulatorParameters
�� "
DebugSimulator
��# 1
=
��2 3
new
��4 7!
SimulatorParameters
��8 K
{
�� 	

�� 
=
�� 
$num
�� 
,
�� 
PacketJitterMS
�� 
=
�� 
$num
�� 
,
�� 
PacketDropRate
�� 
=
�� 
$num
�� 
}
�� 	
;
��	 

private
�� 
struct
�� 
PacketLossCache
�� &
{
�� 	
public
�� 
int
�� 
PacketsReceived
�� &
;
��& '
public
�� 
int
�� 
PacketsDropped
�� %
;
��% &
public
�� 
float
�� 

PacketLoss
�� #
;
��# $
}
�� 	
;
��	 

private
�� 
PacketLossCache
�� 
m_PacketLossCache
��  1
=
��2 3
new
��4 7
PacketLossCache
��8 G
(
��G H
)
��H I
;
��I J
private
�� 
State
�� 
m_State
�� 
=
�� 
State
��  %
.
��% &
Disconnected
��& 2
;
��2 3
private
�� 

�� 
m_Driver
�� &
;
��& '
private
�� 
NetworkSettings
�� 
m_NetworkSettings
��  1
;
��1 2
private
�� 
ulong
�� 
m_ServerClientId
�� &
;
��& '
private
�� 
NetworkPipeline
�� ,
m_UnreliableFragmentedPipeline
��  >
;
��> ?
private
�� 
NetworkPipeline
�� 5
'm_UnreliableSequencedFragmentedPipeline
��  G
;
��G H
private
�� 
NetworkPipeline
�� )
m_ReliableSequencedPipeline
��  ;
;
��; <
public
�� 
override
�� 
ulong
�� 
ServerClientId
�� ,
=>
��- /
m_ServerClientId
��0 @
;
��@ A
public
�� 
ProtocolType
�� 
Protocol
�� $
=>
��% '
m_ProtocolType
��( 6
;
��6 7
private
�� 
RelayServerData
�� 
m_RelayServerData
��  1
;
��1 2
internal
�� 
NetworkManager
�� 
NetworkManager
��  .
;
��. /
private
�� 
readonly
�� 

Dictionary
�� #
<
��# $

SendTarget
��$ .
,
��. /
BatchedSendQueue
��0 @
>
��@ A
m_SendQueue
��B M
=
��N O
new
��P S

Dictionary
��T ^
<
��^ _

SendTarget
��_ i
,
��i j
BatchedSendQueue
��k {
>
��{ |
(
��| }
)
��} ~
;
��~ 
private
�� 
readonly
�� 

Dictionary
�� #
<
��# $
ulong
��$ )
,
��) *!
BatchedReceiveQueue
��+ >
>
��> ?%
m_ReliableReceiveQueues
��@ W
=
��X Y
new
��Z ]

Dictionary
��^ h
<
��h i
ulong
��i n
,
��n o"
BatchedReceiveQueue��p �
>��� �
(��� �
)��� �
;��� �
private
�� 
void
�� 

InitDriver
�� 
(
��  
)
��  !
{
�� 	
DriverConstructor
�� 
.
�� 
CreateDriver
�� *
(
��* +
this
�� 
,
�� 
out
�� 
m_Driver
�� 
,
�� 
out
�� ,
m_UnreliableFragmentedPipeline
�� 2
,
��2 3
out
�� 5
'm_UnreliableSequencedFragmentedPipeline
�� ;
,
��; <
out
�� )
m_ReliableSequencedPipeline
�� /
)
��/ 0
;
��0 1
}
�� 	
private
�� 
void
�� 
DisposeInternals
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
m_Driver
�� 
.
�� 
	IsCreated
�� "
)
��" #
{
�� 
m_Driver
�� 
.
�� 
Dispose
��  
(
��  !
)
��! "
;
��" #
}
�� 
m_NetworkSettings
�� 
.
�� 
Dispose
�� %
(
��% &
)
��& '
;
��' (
foreach
�� 
(
�� 
var
�� 
queue
�� 
in
�� !
m_SendQueue
��" -
.
��- .
Values
��. 4
)
��4 5
{
�� 
queue
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
��  
}
�� 
m_SendQueue
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��  
}
�� 	
private
�� 
NetworkPipeline
��  
SelectSendPipeline
��  2
(
��2 3
NetworkDelivery
��3 B
delivery
��C K
)
��K L
{
�� 	
switch
�� 
(
�� 
delivery
�� 
)
�� 
{
�� 
case
�� 
NetworkDelivery
�� $
.
��$ %

Unreliable
��% /
:
��/ 0
return
�� ,
m_UnreliableFragmentedPipeline
�� 9
;
��9 :
case
�� 
NetworkDelivery
�� $
.
��$ %!
UnreliableSequenced
��% 8
:
��8 9
return
�� 5
'm_UnreliableSequencedFragmentedPipeline
�� B
;
��B C
case
�� 
NetworkDelivery
�� $
.
��$ %
Reliable
��% -
:
��- .
case
�� 
NetworkDelivery
�� $
.
��$ %
ReliableSequenced
��% 6
:
��6 7
case
�� 
NetworkDelivery
�� $
.
��$ %)
ReliableFragmentedSequenced
��% @
:
��@ A
return
�� )
m_ReliableSequencedPipeline
�� 6
;
��6 7
default
�� 
:
�� 
Debug
�� 
.
�� 
LogError
�� "
(
��" #
$"
��# %
$str
��% -
{
��- .
nameof
��. 4
(
��4 5
NetworkDelivery
��5 D
)
��D E
}
��E F
$str
��F N
{
��N O
delivery
��O W
}
��W X
"
��X Y
)
��Y Z
;
��Z [
return
�� 
NetworkPipeline
�� *
.
��* +
Null
��+ /
;
��/ 0
}
�� 
}
�� 	
private
�� 
bool
�� "
ClientBindAndConnect
�� )
(
��) *
)
��* +
{
�� 	
var
�� 
serverEndpoint
�� 
=
��  
default
��! (
(
��( )
NetworkEndPoint
��) 8
)
��8 9
;
��9 :
if
�� 
(
�� 
m_ProtocolType
�� 
==
�� !
ProtocolType
��" .
.
��. /!
RelayUnityTransport
��/ B
)
��B C
{
�� 
if
�� 
(
�� 
m_RelayServerData
�� %
.
��% &
Equals
��& ,
(
��, -
default
��- 4
(
��4 5
RelayServerData
��5 D
)
��D E
)
��E F
)
��F G
{
�� 
Debug
�� 
.
�� 
LogError
�� "
(
��" #
$str
��# v
)
��v w
;
��w x
return
�� 
false
��  
;
��  !
}
�� 
m_NetworkSettings
�� !
.
��! "!
WithRelayParameters
��" 5
(
��5 6
ref
��6 9
m_RelayServerData
��: K
,
��K L"
m_HeartbeatTimeoutMS
��M a
)
��a b
;
��b c
}
�� 
else
�� 
{
�� 
serverEndpoint
�� 
=
��  
ConnectionData
��! /
.
��/ 0
ServerEndPoint
��0 >
;
��> ?
}
�� 

InitDriver
�� 
(
�� 
)
�� 
;
�� 
int
�� 
result
�� 
=
�� 
m_Driver
�� !
.
��! "
Bind
��" &
(
��& '
NetworkEndPoint
��' 6
.
��6 7
AnyIpv4
��7 >
)
��> ?
;
��? @
if
�� 
(
�� 
result
�� 
!=
�� 
$num
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
return
�� 
false
�� 
;
�� 
}
�� 
var
�� 
serverConnection
��  
=
��! "
m_Driver
��# +
.
��+ ,
Connect
��, 3
(
��3 4
serverEndpoint
��4 B
)
��B C
;
��C D
m_ServerClientId
�� 
=
�� 

�� ,
(
��, -
serverConnection
��- =
)
��= >
;
��> ?
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
bool
�� !
ServerBindAndListen
�� (
(
��( )
NetworkEndPoint
��) 8
endPoint
��9 A
)
��A B
{
�� 	

InitDriver
�� 
(
�� 
)
�� 
;
�� 
int
�� 
result
�� 
=
�� 
m_Driver
�� !
.
��! "
Bind
��" &
(
��& '
endPoint
��' /
)
��/ 0
;
��0 1
if
�� 
(
�� 
result
�� 
!=
�� 
$num
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$str
�� 6
)
��6 7
;
��7 8
return
�� 
false
�� 
;
�� 
}
�� 
result
�� 
=
�� 
m_Driver
�� 
.
�� 
Listen
�� $
(
��$ %
)
��% &
;
��& '
if
�� 
(
�� 
result
�� 
!=
�� 
$num
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$str
�� 8
)
��8 9
;
��9 :
return
�� 
false
�� 
;
�� 
}
�� 
m_State
�� 
=
�� 
State
�� 
.
�� 
	Listening
�� %
;
��% &
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
RelayAllocationId
�� (*
ConvertFromAllocationIdBytes
��) E
(
��E F
byte
��F J
[
��J K
]
��K L
allocationIdBytes
��M ^
)
��^ _
{
�� 	
unsafe
�� 
{
�� 
fixed
�� 
(
�� 
byte
�� 
*
�� 
ptr
��  
=
��! "
allocationIdBytes
��# 4
)
��4 5
{
�� 
return
�� 
RelayAllocationId
�� ,
.
��, -
FromBytePointer
��- <
(
��< =
ptr
��= @
,
��@ A
allocationIdBytes
��B S
.
��S T
Length
��T Z
)
��Z [
;
��[ \
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
RelayHMACKey
�� #
ConvertFromHMAC
��$ 3
(
��3 4
byte
��4 8
[
��8 9
]
��9 :
hmac
��; ?
)
��? @
{
�� 	
unsafe
�� 
{
�� 
fixed
�� 
(
�� 
byte
�� 
*
�� 
ptr
��  
=
��! "
hmac
��# '
)
��' (
{
�� 
return
�� 
RelayHMACKey
�� '
.
��' (
FromBytePointer
��( 7
(
��7 8
ptr
��8 ;
,
��; <
RelayHMACKey
��= I
.
��I J
k_Length
��J R
)
��R S
;
��S T
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� !
RelayConnectionData
�� *#
ConvertConnectionData
��+ @
(
��@ A
byte
��A E
[
��E F
]
��F G
connectionData
��H V
)
��V W
{
�� 	
unsafe
�� 
{
�� 
fixed
�� 
(
�� 
byte
�� 
*
�� 
ptr
��  
=
��! "
connectionData
��# 1
)
��1 2
{
�� 
return
�� !
RelayConnectionData
�� .
.
��. /
FromBytePointer
��/ >
(
��> ?
ptr
��? B
,
��B C!
RelayConnectionData
��D W
.
��W X
k_Length
��X `
)
��` a
;
��a b
}
�� 
}
�� 
}
�� 	
internal
�� 
void
�� 
SetMaxPayloadSize
�� '
(
��' (
int
��( +
maxPayloadSize
��, :
)
��: ;
{
�� 	
m_MaxPayloadSize
�� 
=
�� 
maxPayloadSize
�� -
;
��- .
}
�� 	
private
�� 
void
�� 
SetProtocol
��  
(
��  !
ProtocolType
��! -

inProtocol
��. 8
)
��8 9
{
�� 	
m_ProtocolType
�� 
=
�� 

inProtocol
�� '
;
��' (
}
�� 	
public
�� 
void
��  
SetRelayServerData
�� &
(
��& '
string
��' -
ipv4Address
��. 9
,
��9 :
ushort
��; A
port
��B F
,
��F G
byte
��H L
[
��L M
]
��M N
allocationIdBytes
��O `
,
��` a
byte
��b f
[
��f g
]
��g h
keyBytes
��i q
,
��q r
byte
��s w
[
��w x
]
��x y"
connectionDataBytes��z �
,��� �
byte��� �
[��� �
]��� �'
hostConnectionDataBytes��� �
=��� �
null��� �
,��� �
bool��� �
isSecure��� �
=��� �
false��� �
)��� �
{
�� 	!
RelayConnectionData
��  
hostConnectionData
��  2
;
��2 3
if
�� 
(
�� 
!
�� 
NetworkEndPoint
��  
.
��  !
TryParse
��! )
(
��) *
ipv4Address
��* 5
,
��5 6
port
��7 ;
,
��; <
out
��= @
var
��A D
serverEndpoint
��E S
)
��S T
)
��T U
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$"
�� !
$str
��! 1
{
��1 2
ipv4Address
��2 =
}
��= >
$str
��> ?
{
��? @
port
��@ D
}
��D E
"
��E F
)
��F G
;
��G H
m_RelayServerData
�� !
=
��" #
default
��$ +
;
��+ ,
return
�� 
;
�� 
}
�� 
var
�� 
allocationId
�� 
=
�� *
ConvertFromAllocationIdBytes
�� ;
(
��; <
allocationIdBytes
��< M
)
��M N
;
��N O
var
�� 
key
�� 
=
�� 
ConvertFromHMAC
�� %
(
��% &
keyBytes
��& .
)
��. /
;
��/ 0
var
�� 
connectionData
�� 
=
��  #
ConvertConnectionData
��! 6
(
��6 7!
connectionDataBytes
��7 J
)
��J K
;
��K L
if
�� 
(
�� %
hostConnectionDataBytes
�� '
!=
��( *
null
��+ /
)
��/ 0
{
�� 
hostConnectionData
�� "
=
��# $#
ConvertConnectionData
��% :
(
��: ;%
hostConnectionDataBytes
��; R
)
��R S
;
��S T
}
�� 
else
�� 
{
�� 
hostConnectionData
�� "
=
��# $
connectionData
��% 3
;
��3 4
}
�� 
m_RelayServerData
�� 
=
�� 
new
��  #
RelayServerData
��$ 3
(
��3 4
ref
��4 7
serverEndpoint
��8 F
,
��F G
$num
��H I
,
��I J
ref
��K N
allocationId
��O [
,
��[ \
ref
��] `
connectionData
��a o
,
��o p
ref
��q t!
hostConnectionData��u �
,��� �
ref��� �
key��� �
,��� �
isSecure��� �
)��� �
;��� �
m_RelayServerData
�� 
.
�� 
ComputeNewNonce
�� -
(
��- .
)
��. /
;
��/ 0
SetProtocol
�� 
(
�� 
ProtocolType
�� $
.
��$ %!
RelayUnityTransport
��% 8
)
��8 9
;
��9 :
}
�� 	
public
�� 
void
�� 
SetHostRelayData
�� $
(
��$ %
string
��% +
	ipAddress
��, 5
,
��5 6
ushort
��7 =
port
��> B
,
��B C
byte
��D H
[
��H I
]
��I J
allocationId
��K W
,
��W X
byte
��Y ]
[
��] ^
]
��^ _
key
��` c
,
��c d
byte
��e i
[
��i j
]
��j k
connectionData
��l z
,
��z {
bool��| �
isSecure��� �
=��� �
false��� �
)��� �
{
�� 	 
SetRelayServerData
�� 
(
�� 
	ipAddress
�� (
,
��( )
port
��* .
,
��. /
allocationId
��0 <
,
��< =
key
��> A
,
��A B
connectionData
��C Q
,
��Q R
null
��S W
,
��W X
isSecure
��Y a
)
��a b
;
��b c
}
�� 	
public
�� 
void
��  
SetClientRelayData
�� &
(
��& '
string
��' -
	ipAddress
��. 7
,
��7 8
ushort
��9 ?
port
��@ D
,
��D E
byte
��F J
[
��J K
]
��K L
allocationId
��M Y
,
��Y Z
byte
��[ _
[
��_ `
]
��` a
key
��b e
,
��e f
byte
��g k
[
��k l
]
��l m
connectionData
��n |
,
��| }
byte��~ �
[��� �
]��� �"
hostConnectionData��� �
,��� �
bool��� �
isSecure��� �
=��� �
false��� �
)��� �
{
�� 	 
SetRelayServerData
�� 
(
�� 
	ipAddress
�� (
,
��( )
port
��* .
,
��. /
allocationId
��0 <
,
��< =
key
��> A
,
��A B
connectionData
��C Q
,
��Q R 
hostConnectionData
��S e
,
��e f
isSecure
��g o
)
��o p
;
��p q
}
�� 	
public
�� 
void
�� 
SetConnectionData
�� %
(
��% &
string
��& ,
ipv4Address
��- 8
,
��8 9
ushort
��: @
port
��A E
,
��E F
string
��G M

��N [
=
��\ ]
null
��^ b
)
��b c
{
�� 	
ConnectionData
�� 
=
�� 
new
��  #
ConnectionAddressData
��! 6
{
�� 
Address
�� 
=
�� 
ipv4Address
�� %
,
��% &
Port
�� 
=
�� 
port
�� 
,
�� !
ServerListenAddress
�� #
=
��$ %

��& 3
??
��4 6
string
��7 =
.
��= >
Empty
��> C
}
�� 
;
��
SetProtocol
�� 
(
�� 
ProtocolType
�� $
.
��$ %
UnityTransport
��% 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
void
�� 
SetConnectionData
�� %
(
��% &
NetworkEndPoint
��& 5
endPoint
��6 >
,
��> ?
NetworkEndPoint
��@ O
listenEndPoint
��P ^
=
��_ `
default
��a h
)
��h i
{
�� 	
string
�� 

��  
=
��! "
endPoint
��# +
.
��+ ,
Address
��, 3
.
��3 4
Split
��4 9
(
��9 :
$char
��: =
)
��= >
[
��> ?
$num
��? @
]
��@ A
;
��A B
string
�� 

��  
=
��! "
string
��# )
.
��) *
Empty
��* /
;
��/ 0
if
�� 
(
�� 
listenEndPoint
�� 
!=
�� !
default
��" )
)
��) *
{
�� 

�� 
=
�� 
listenEndPoint
��  .
.
��. /
Address
��/ 6
.
��6 7
Split
��7 <
(
��< =
$char
��= @
)
��@ A
[
��A B
$num
��B C
]
��C D
;
��D E
if
�� 
(
�� 
endPoint
�� 
.
�� 
Port
�� !
!=
��" $
listenEndPoint
��% 3
.
��3 4
Port
��4 8
)
��8 9
{
�� 
Debug
�� 
.
�� 
LogError
�� "
(
��" #
$"
��# %
$str
��% X
{
��X Y
endPoint
��Y a
.
��a b
Port
��b f
}
��f g
$str
��g k
{
��k l
listenEndPoint
��l z
.
��z {
Port
��{ 
}�� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
}
�� 
SetConnectionData
�� 
(
�� 

�� +
,
��+ ,
endPoint
��- 5
.
��5 6
Port
��6 :
,
��: ;

��< I
)
��I J
;
��J K
}
�� 	
public
�� 
void
�� )
SetDebugSimulatorParameters
�� /
(
��/ 0
int
��0 3
packetDelay
��4 ?
,
��? @
int
��A D
packetJitter
��E Q
,
��Q R
int
��S V
dropRate
��W _
)
��_ `
{
�� 	
if
�� 
(
�� 
m_Driver
�� 
.
�� 
	IsCreated
�� "
)
��" #
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$str
�� t
)
��t u
;
��u v
return
�� 
;
�� 
}
�� 
DebugSimulator
�� 
=
�� 
new
��  !
SimulatorParameters
��! 4
{
�� 

�� 
=
�� 
packetDelay
��  +
,
��+ ,
PacketJitterMS
�� 
=
��  
packetJitter
��! -
,
��- .
PacketDropRate
�� 
=
��  
dropRate
��! )
}
�� 
;
��
}
�� 	
private
�� 
bool
�� 
StartRelayServer
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
m_RelayServerData
�� !
.
��! "
Equals
��" (
(
��( )
default
��) 0
(
��0 1
RelayServerData
��1 @
)
��@ A
)
��A B
)
��B C
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$str
�� r
)
��r s
;
��s t
return
�� 
false
�� 
;
�� 
}
�� 
else
�� 
{
�� 
m_NetworkSettings
�� !
.
��! "!
WithRelayParameters
��" 5
(
��5 6
ref
��6 9
m_RelayServerData
��: K
,
��K L"
m_HeartbeatTimeoutMS
��M a
)
��a b
;
��b c
return
�� !
ServerBindAndListen
�� *
(
��* +
NetworkEndPoint
��+ :
.
��: ;
AnyIpv4
��; B
)
��B C
;
��C D
}
�� 
}
�� 	
private
�� 
void
�� !
SendBatchedMessages
�� (
(
��( )

SendTarget
��) 3

sendTarget
��4 >
,
��> ?
BatchedSendQueue
��@ P
queue
��Q V
)
��V W
{
�� 	
var
�� 
clientId
�� 
=
�� 

sendTarget
�� %
.
��% &
ClientId
��& .
;
��. /
var
�� 

connection
�� 
=
�� 

�� *
(
��* +
clientId
��+ 3
)
��3 4
;
��4 5
var
�� 
pipeline
�� 
=
�� 

sendTarget
�� %
.
��% &
NetworkPipeline
��& 5
;
��5 6
while
�� 
(
�� 
!
�� 
queue
�� 
.
�� 
IsEmpty
�� !
)
��! "
{
�� 
var
�� 
result
�� 
=
�� 
m_Driver
�� %
.
��% &
	BeginSend
��& /
(
��/ 0
pipeline
��0 8
,
��8 9

connection
��: D
,
��D E
out
��F I
var
��J M
writer
��N T
)
��T U
;
��U V
if
�� 
(
�� 
result
�� 
!=
�� 
(
�� 
int
�� "
)
��" #

Networking
��# -
.
��- .
	Transport
��. 7
.
��7 8
Error
��8 =
.
��= >

StatusCode
��> H
.
��H I
Success
��I P
)
��P Q
{
�� 
Debug
�� 
.
�� 
LogError
�� "
(
��" #
$str
��# @
+
��A B
ErrorUtilities
�� &
.
��& '

��' 4
(
��4 5
(
��5 6

Networking
��6 @
.
��@ A
	Transport
��A J
.
��J K
Error
��K P
.
��P Q

StatusCode
��Q [
)
��[ \
result
��\ b
,
��b c
clientId
��d l
)
��l m
)
��m n
;
��n o
return
�� 
;
�� 
}
�� 
var
�� 
written
�� 
=
�� 
pipeline
�� &
==
��' ))
m_ReliableSequencedPipeline
��* E
?
��F G
queue
��H M
.
��M N!
FillWriterWithBytes
��N a
(
��a b
ref
��b e
writer
��f l
)
��l m
:
��n o
queue
��p u
.
��u v%
FillWriterWithMessages��v �
(��� �
ref��� �
writer��� �
)��� �
;��� �
result
�� 
=
�� 
m_Driver
�� !
.
��! "
EndSend
��" )
(
��) *
writer
��* 0
)
��0 1
;
��1 2
if
�� 
(
�� 
result
�� 
==
�� 
written
�� %
)
��% &
{
�� 
queue
�� 
.
�� 
Consume
�� !
(
��! "
written
��" )
)
��) *
;
��* +
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
result
�� 
!=
�� !
(
��" #
int
��# &
)
��& '

Networking
��' 1
.
��1 2
	Transport
��2 ;
.
��; <
Error
��< A
.
��A B

StatusCode
��B L
.
��L M"
NetworkSendQueueFull
��M a
)
��a b
{
�� 
Debug
�� 
.
�� 
LogError
�� &
(
��& '
$str
��' D
+
��E F
ErrorUtilities
��G U
.
��U V

��V c
(
��c d
(
��d e

Networking
��e o
.
��o p
	Transport
��p y
.
��y z
Error
��z 
.�� �

StatusCode��� �
)��� �
result��� �
,��� �
clientId��� �
)��� �
)��� �
;��� �
queue
�� 
.
�� 
Consume
�� %
(
��% &
written
��& -
)
��- .
;
��. /
}
�� 
return
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
bool
�� 
AcceptConnection
�� %
(
��% &
)
��& '
{
�� 	
var
�� 

connection
�� 
=
�� 
m_Driver
�� %
.
��% &
Accept
��& ,
(
��, -
)
��- .
;
��. /
if
�� 
(
�� 

connection
�� 
==
�� 
default
�� %
)
��% &
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
InvokeOnTransportEvent
�� "
(
��" #!
NetcodeNetworkEvent
��# 6
.
��6 7
Connect
��7 >
,
��> ?

�� 
(
�� 

connection
�� (
)
��( )
,
��) *
default
�� 
,
�� 
Time
�� 
.
�� "
realtimeSinceStartup
�� )
)
��) *
;
��* +
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
ReceiveMessages
�� $
(
��$ %
ulong
��% *
clientId
��+ 3
,
��3 4
NetworkPipeline
��5 D
pipeline
��E M
,
��M N
DataStreamReader
��O _

dataReader
��` j
)
��j k
{
�� 	!
BatchedReceiveQueue
�� 
queue
��  %
;
��% &
if
�� 
(
�� 
pipeline
�� 
==
�� )
m_ReliableSequencedPipeline
�� 7
)
��7 8
{
�� 
if
�� 
(
�� %
m_ReliableReceiveQueues
�� +
.
��+ ,
TryGetValue
��, 7
(
��7 8
clientId
��8 @
,
��@ A
out
��B E
queue
��F K
)
��K L
)
��L M
{
�� 
queue
�� 
.
�� 

PushReader
�� $
(
��$ %

dataReader
��% /
)
��/ 0
;
��0 1
}
�� 
else
�� 
{
�� 
queue
�� 
=
�� 
new
�� !
BatchedReceiveQueue
��  3
(
��3 4

dataReader
��4 >
)
��> ?
;
��? @%
m_ReliableReceiveQueues
�� +
[
��+ ,
clientId
��, 4
]
��4 5
=
��6 7
queue
��8 =
;
��= >
}
�� 
}
�� 
else
�� 
{
�� 
queue
�� 
=
�� 
new
�� !
BatchedReceiveQueue
�� /
(
��/ 0

dataReader
��0 :
)
��: ;
;
��; <
}
�� 
while
�� 
(
�� 
!
�� 
queue
�� 
.
�� 
IsEmpty
�� !
)
��! "
{
�� 
var
�� 
message
�� 
=
�� 
queue
�� #
.
��# $

PopMessage
��$ .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
message
�� 
==
�� 
default
�� &
)
��& '
{
�� 
break
�� 
;
�� 
}
�� $
InvokeOnTransportEvent
�� &
(
��& '!
NetcodeNetworkEvent
��' :
.
��: ;
Data
��; ?
,
��? @
clientId
��A I
,
��I J
message
��K R
,
��R S
Time
��T X
.
��X Y"
realtimeSinceStartup
��Y m
)
��m n
;
��n o
}
�� 
}
�� 	
private
�� 
bool
�� 
ProcessEvent
�� !
(
��! "
)
��" #
{
�� 	
var
�� 
	eventType
�� 
=
�� 
m_Driver
�� $
.
��$ %
PopEvent
��% -
(
��- .
out
��. 1
var
��2 5
networkConnection
��6 G
,
��G H
out
��I L
var
��M P
reader
��Q W
,
��W X
out
��Y \
var
��] `
pipeline
��a i
)
��i j
;
��j k
var
�� 
clientId
�� 
=
�� 

�� (
(
��( )
networkConnection
��) :
)
��: ;
;
��; <
switch
�� 
(
�� 
	eventType
�� 
)
�� 
{
�� 
case
�� #
TransportNetworkEvent
�� *
.
��* +
Type
��+ /
.
��/ 0
Connect
��0 7
:
��7 8
{
�� $
InvokeOnTransportEvent
�� .
(
��. /!
NetcodeNetworkEvent
��/ B
.
��B C
Connect
��C J
,
��J K
clientId
�� $
,
��$ %
default
�� #
,
��# $
Time
��  
.
��  !"
realtimeSinceStartup
��! 5
)
��5 6
;
��6 7
m_State
�� 
=
��  !
State
��" '
.
��' (
	Connected
��( 1
;
��1 2
return
�� 
true
�� #
;
��# $
}
�� 
case
�� #
TransportNetworkEvent
�� *
.
��* +
Type
��+ /
.
��/ 0

Disconnect
��0 :
:
��: ;
{
�� 
if
�� 
(
�� 
m_State
�� #
==
��$ &
State
��' ,
.
��, -
	Connected
��- 6
)
��6 7
{
�� 
m_State
�� #
=
��$ %
State
��& +
.
��+ ,
Disconnected
��, 8
;
��8 9
m_ServerClientId
�� ,
=
��- .
default
��/ 6
;
��6 7
}
�� 
else
�� 
if
�� 
(
��  !
m_State
��! (
==
��) +
State
��, 1
.
��1 2
Disconnected
��2 >
)
��> ?
{
�� 
Debug
�� !
.
��! "
LogError
��" *
(
��* +
$str
��+ I
)
��I J
;
��J K
m_ServerClientId
�� ,
=
��- .
default
��/ 6
;
��6 7
}
�� %
m_ReliableReceiveQueues
�� /
.
��/ 0
Remove
��0 6
(
��6 7
clientId
��7 ?
)
��? @
;
��@ A(
ClearSendQueuesForClientId
�� 2
(
��2 3
clientId
��3 ;
)
��; <
;
��< =$
InvokeOnTransportEvent
�� .
(
��. /!
NetcodeNetworkEvent
��/ B
.
��B C

Disconnect
��C M
,
��M N
clientId
�� $
,
��$ %
default
�� #
,
��# $
Time
��  
.
��  !"
realtimeSinceStartup
��! 5
)
��5 6
;
��6 7
return
�� 
true
�� #
;
��# $
}
�� 
case
�� #
TransportNetworkEvent
�� *
.
��* +
Type
��+ /
.
��/ 0
Data
��0 4
:
��4 5
{
�� 
ReceiveMessages
�� '
(
��' (
clientId
��( 0
,
��0 1
pipeline
��2 :
,
��: ;
reader
��< B
)
��B C
;
��C D
return
�� 
true
�� #
;
��# $
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
Update
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
m_Driver
�� 
.
�� 
	IsCreated
�� "
)
��" #
{
�� 
foreach
�� 
(
�� 
var
�� 
kvp
��  
in
��! #
m_SendQueue
��$ /
)
��/ 0
{
�� !
SendBatchedMessages
�� '
(
��' (
kvp
��( +
.
��+ ,
Key
��, /
,
��/ 0
kvp
��1 4
.
��4 5
Value
��5 :
)
��: ;
;
��; <
}
�� 
m_Driver
�� 
.
�� 
ScheduleUpdate
�� '
(
��' (
)
��( )
.
��) *
Complete
��* 2
(
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� 
m_ProtocolType
�� "
==
��# %
ProtocolType
��& 2
.
��2 3!
RelayUnityTransport
��3 F
&&
��G I
m_Driver
��J R
.
��R S&
GetRelayConnectionStatus
��S k
(
��k l
)
��l m
==
��n p$
RelayConnectionStatus��q �
.��� �!
AllocationInvalid��� �
)��� �
{
�� 
Debug
�� 
.
�� 
LogError
�� "
(
��" #
$str
��# ~
+�� �
$str
�� o
)
��o p
;
��p q$
InvokeOnTransportEvent
�� *
(
��* +!
NetcodeNetworkEvent
��+ >
.
��> ?
TransportFailure
��? O
,
��O P
$num
��Q R
,
��R S
default
��T [
,
��[ \
Time
��] a
.
��a b"
realtimeSinceStartup
��b v
)
��v w
;
��w x
return
�� 
;
�� 
}
�� 
while
�� 
(
�� 
AcceptConnection
�� '
(
��' (
)
��( )
&&
��* ,
m_Driver
��- 5
.
��5 6
	IsCreated
��6 ?
)
��? @
{
�� 
;
�� 
}
�� 
while
�� 
(
�� 
ProcessEvent
�� #
(
��# $
)
��$ %
&&
��& (
m_Driver
��) 1
.
��1 2
	IsCreated
��2 ;
)
��; <
{
�� 
;
�� 
}
�� 
if
�� 
(
�� 
NetworkManager
�� "
)
��" #
{
�� #
ExtractNetworkMetrics
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
	OnDestroy
�� 
(
�� 
)
��  
{
�� 	
DisposeInternals
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� #
ExtractNetworkMetrics
�� *
(
��* +
)
��+ ,
{
�� 	
if
�� 
(
�� 
NetworkManager
�� 
.
�� 
IsServer
�� '
)
��' (
{
�� 
var
�� 
ngoConnectionIds
�� $
=
��% &
NetworkManager
��' 5
.
��5 6
ConnectedClients
��6 F
.
��F G
Keys
��G K
;
��K L
foreach
�� 
(
�� 
var
�� 
ngoConnectionId
�� ,
in
��- /
ngoConnectionIds
��0 @
)
��@ A
{
�� 
if
�� 
(
�� 
ngoConnectionId
�� '
==
��( *
$num
��+ ,
&&
��- /
NetworkManager
��0 >
.
��> ?
IsHost
��? E
)
��E F
{
�� 
continue
��  
;
��  !
}
�� 
var
�� 
transportClientId
�� )
=
��* +
NetworkManager
��, :
.
��: ;#
ClientIdToTransportId
��; P
(
��P Q
ngoConnectionId
��Q `
)
��` a
;
��a b,
ExtractNetworkMetricsForClient
�� 2
(
��2 3
transportClientId
��3 D
)
��D E
;
��E F
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
m_ServerClientId
�� $
!=
��% '
$num
��( )
)
��) *
{
�� ,
ExtractNetworkMetricsForClient
�� 2
(
��2 3
m_ServerClientId
��3 C
)
��C D
;
��D E
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� ,
ExtractNetworkMetricsForClient
�� 3
(
��3 4
ulong
��4 9
transportClientId
��: K
)
��K L
{
�� 	
var
�� 
networkConnection
�� !
=
��" #

��% 2
(
��2 3
transportClientId
��3 D
)
��D E
;
��E F/
!ExtractNetworkMetricsFromPipeline
�� -
(
��- .,
m_UnreliableFragmentedPipeline
��. L
,
��L M
networkConnection
��N _
)
��_ `
;
��` a/
!ExtractNetworkMetricsFromPipeline
�� -
(
��- .5
'm_UnreliableSequencedFragmentedPipeline
��. U
,
��U V
networkConnection
��W h
)
��h i
;
��i j/
!ExtractNetworkMetricsFromPipeline
�� -
(
��- .)
m_ReliableSequencedPipeline
��. I
,
��I J
networkConnection
��K \
)
��\ ]
;
��] ^
var
�� 
rttValue
�� 
=
�� 
NetworkManager
�� )
.
��) *
IsServer
��* 2
?
��3 4
$num
��5 6
:
��7 8

ExtractRtt
��9 C
(
��C D
networkConnection
��D U
)
��U V
;
��V W
NetworkMetrics
�� 
.
�� 
UpdateRttToServer
�� ,
(
��, -
rttValue
��- 5
)
��5 6
;
��6 7
var
�� 

packetLoss
�� 
=
�� 
NetworkManager
�� +
.
��+ ,
IsServer
��, 4
?
��5 6
$num
��7 8
:
��9 :
ExtractPacketLoss
��; L
(
��L M
networkConnection
��M ^
)
��^ _
;
��_ `
NetworkMetrics
�� 
.
�� 
UpdatePacketLoss
�� +
(
��+ ,

packetLoss
��, 6
)
��6 7
;
��7 8
}
�� 	
private
�� 
void
�� /
!ExtractNetworkMetricsFromPipeline
�� 6
(
��6 7
NetworkPipeline
��7 F
pipeline
��G O
,
��O P
NetworkConnection
��Q b
networkConnection
��c t
)
��t u
{
�� 	
m_Driver
�� 
.
��  
GetPipelineBuffers
�� '
(
��' (
pipeline
��( 0
,
��0 1,
NetworkPipelineStageCollection
�� .
.
��. /

GetStageId
��/ 9
(
��9 :
typeof
��: @
(
��@ A)
NetworkMetricsPipelineStage
��A \
)
��\ ]
)
��] ^
,
��^ _
networkConnection
�� !
,
��! "
out
�� 
_
�� 
,
�� 
out
�� 
_
�� 
,
�� 
out
�� 
var
�� 
sharedBuffer
�� $
)
��$ %
;
��% &
unsafe
�� 
{
�� 
var
�� #
networkMetricsContext
�� )
=
��* +
(
��, -#
NetworkMetricsContext
��- B
*
��B C
)
��C D
sharedBuffer
��D P
.
��P Q
GetUnsafePtr
��Q ]
(
��] ^
)
��^ _
;
��_ `
NetworkMetrics
�� 
.
�� 
TrackPacketSent
�� .
(
��. /#
networkMetricsContext
��/ D
->
��D F
PacketSentCount
��F U
)
��U V
;
��V W
NetworkMetrics
�� 
.
�� !
TrackPacketReceived
�� 2
(
��2 3#
networkMetricsContext
��3 H
->
��H J!
PacketReceivedCount
��J ]
)
��] ^
;
��^ _#
networkMetricsContext
�� %
->
��% '
PacketSentCount
��' 6
=
��7 8
$num
��9 :
;
��: ;#
networkMetricsContext
�� %
->
��% '!
PacketReceivedCount
��' :
=
��; <
$num
��= >
;
��> ?
}
�� 
}
�� 	
private
�� 
int
�� 

ExtractRtt
�� 
(
�� 
NetworkConnection
�� 0
networkConnection
��1 B
)
��B C
{
�� 	
if
�� 
(
�� 
m_Driver
�� 
.
��  
GetConnectionState
�� +
(
��+ ,
networkConnection
��, =
)
��= >
!=
��? A
NetworkConnection
��B S
.
��S T
State
��T Y
.
��Y Z
	Connected
��Z c
)
��c d
{
�� 
return
�� 
$num
�� 
;
�� 
}
�� 
m_Driver
�� 
.
��  
GetPipelineBuffers
�� '
(
��' ()
m_ReliableSequencedPipeline
��( C
,
��C D,
NetworkPipelineStageCollection
�� .
.
��. /

GetStageId
��/ 9
(
��9 :
typeof
��: @
(
��@ A,
ReliableSequencedPipelineStage
��A _
)
��_ `
)
��` a
,
��a b
networkConnection
�� !
,
��! "
out
�� 
_
�� 
,
�� 
out
�� 
_
�� 
,
�� 
out
�� 
var
�� 
sharedBuffer
�� $
)
��$ %
;
��% &
unsafe
�� 
{
�� 
var
�� 

�� !
=
��" #
(
��$ %
ReliableUtility
��% 4
.
��4 5

��5 B
*
��B C
)
��C D
sharedBuffer
��D P
.
��P Q
GetUnsafePtr
��Q ]
(
��] ^
)
��^ _
;
��_ `
return
�� 

�� $
->
��$ &
RttInfo
��& -
.
��- .
LastRtt
��. 5
;
��5 6
}
�� 
}
�� 	
private
�� 
float
�� 
ExtractPacketLoss
�� '
(
��' (
NetworkConnection
��( 9
networkConnection
��: K
)
��K L
{
�� 	
if
�� 
(
�� 
m_Driver
�� 
.
��  
GetConnectionState
�� +
(
��+ ,
networkConnection
��, =
)
��= >
!=
��? A
NetworkConnection
��B S
.
��S T
State
��T Y
.
��Y Z
	Connected
��Z c
)
��c d
{
�� 
return
�� 
$num
�� 
;
�� 
}
�� 
m_Driver
�� 
.
��  
GetPipelineBuffers
�� '
(
��' ()
m_ReliableSequencedPipeline
��( C
,
��C D,
NetworkPipelineStageCollection
�� .
.
��. /

GetStageId
��/ 9
(
��9 :
typeof
��: @
(
��@ A,
ReliableSequencedPipelineStage
��A _
)
��_ `
)
��` a
,
��a b
networkConnection
�� !
,
��! "
out
�� 
_
�� 
,
�� 
out
�� 
_
�� 
,
�� 
out
�� 
var
�� 
sharedBuffer
�� $
)
��$ %
;
��% &
unsafe
�� 
{
�� 
var
�� 

�� !
=
��" #
(
��$ %
ReliableUtility
��% 4
.
��4 5

��5 B
*
��B C
)
��C D
sharedBuffer
��D P
.
��P Q
GetUnsafePtr
��Q ]
(
��] ^
)
��^ _
;
��_ `
var
�� !
packetReceivedDelta
�� '
=
��( )
(
��* +
float
��+ 0
)
��0 1
(
��1 2

��2 ?
->
��? A
stats
��A F
.
��F G
PacketsReceived
��G V
-
��W X
m_PacketLossCache
��Y j
.
��j k
PacketsReceived
��k z
)
��z {
;
��{ |
var
��  
packetDroppedDelta
�� &
=
��' (
(
��) *
float
��* /
)
��/ 0
(
��0 1

��1 >
->
��> @
stats
��@ E
.
��E F
PacketsDropped
��F T
-
��U V
m_PacketLossCache
��W h
.
��h i
PacketsDropped
��i w
)
��w x
;
��x y
if
�� 
(
��  
packetDroppedDelta
�� &
==
��' )
$num
��* +
&&
��, .!
packetReceivedDelta
��/ B
==
��C E
$num
��F G
)
��G H
{
�� 
return
�� 
m_PacketLossCache
�� ,
.
��, -

PacketLoss
��- 7
;
��7 8
}
�� 
m_PacketLossCache
�� !
.
��! "
PacketsReceived
��" 1
=
��2 3

��4 A
->
��A C
stats
��C H
.
��H I
PacketsReceived
��I X
;
��X Y
m_PacketLossCache
�� !
.
��! "
PacketsDropped
��" 0
=
��1 2

��3 @
->
��@ B
stats
��B G
.
��G H
PacketsDropped
��H V
;
��V W
m_PacketLossCache
�� !
.
��! "

PacketLoss
��" ,
=
��- .!
packetReceivedDelta
��/ B
>
��C D
$num
��E F
?
��G H 
packetDroppedDelta
��I [
/
��\ ]!
packetReceivedDelta
��^ q
:
��r s
$num
��t u
;
��u v
return
�� 
m_PacketLossCache
�� (
.
��( )

PacketLoss
��) 3
;
��3 4
}
�� 
}
�� 	
private
�� 
static
�� 
unsafe
�� 
ulong
�� #

��$ 1
(
��1 2
NetworkConnection
��2 C
utpConnectionId
��D S
)
��S T
{
�� 	
return
�� 
*
�� 
(
�� 
ulong
�� 
*
�� 
)
�� 
&
�� 
utpConnectionId
�� ,
;
��, -
}
�� 	
private
�� 
static
�� 
unsafe
�� 
NetworkConnection
�� /

��0 =
(
��= >
ulong
��> C!
netcodeConnectionId
��D W
)
��W X
{
�� 	
return
�� 
*
�� 
(
�� 
NetworkConnection
�� &
*
��& '
)
��' (
&
��( )!
netcodeConnectionId
��) <
;
��< =
}
�� 	
private
�� 
void
�� (
ClearSendQueuesForClientId
�� /
(
��/ 0
ulong
��0 5
clientId
��6 >
)
��> ?
{
�� 	
using
�� 
var
�� 
keys
�� 
=
�� 
new
��  

NativeList
��! +
<
��+ ,

SendTarget
��, 6
>
��6 7
(
��7 8
$num
��8 :
,
��: ;
	Allocator
��< E
.
��E F
Temp
��F J
)
��J K
;
��K L
foreach
�� 
(
�� 
var
�� 
key
�� 
in
�� 
m_SendQueue
��  +
.
��+ ,
Keys
��, 0
)
��0 1
{
�� 
if
�� 
(
�� 
key
�� 
.
�� 
ClientId
��  
==
��! #
clientId
��$ ,
)
��, -
{
�� 
keys
�� 
.
�� 
Add
�� 
(
�� 
key
��  
)
��  !
;
��! "
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
target
�� 
in
��  "
keys
��# '
)
��' (
{
�� 
m_SendQueue
�� 
[
�� 
target
�� "
]
��" #
.
��# $
Dispose
��$ +
(
��+ ,
)
��, -
;
��- .
m_SendQueue
�� 
.
�� 
Remove
�� "
(
��" #
target
��# )
)
��) *
;
��* +
}
�� 
}
�� 	
private
�� 
void
�� (
FlushSendQueuesForClientId
�� /
(
��/ 0
ulong
��0 5
clientId
��6 >
)
��> ?
{
�� 	
foreach
�� 
(
�� 
var
�� 
kvp
�� 
in
�� 
m_SendQueue
��  +
)
��+ ,
{
�� 
if
�� 
(
�� 
kvp
�� 
.
�� 
Key
�� 
.
�� 
ClientId
�� $
==
��% '
clientId
��( 0
)
��0 1
{
�� !
SendBatchedMessages
�� '
(
��' (
kvp
��( +
.
��+ ,
Key
��, /
,
��/ 0
kvp
��1 4
.
��4 5
Value
��5 :
)
��: ;
;
��; <
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� #
DisconnectLocalClient
�� 2
(
��2 3
)
��3 4
{
�� 	
if
�� 
(
�� 
m_State
�� 
==
�� 
State
��  
.
��  !
	Connected
��! *
)
��* +
{
�� 
FlushSendQueuesForClientId
�� *
(
��* +
m_ServerClientId
��+ ;
)
��; <
;
��< =
if
�� 
(
�� 
m_Driver
�� 
.
�� 

Disconnect
�� '
(
��' (

��( 5
(
��5 6
m_ServerClientId
��6 F
)
��F G
)
��G H
==
��I K
$num
��L M
)
��M N
{
�� 
m_State
�� 
=
�� 
State
�� #
.
��# $
Disconnected
��$ 0
;
��0 1%
m_ReliableReceiveQueues
�� +
.
��+ ,
Remove
��, 2
(
��2 3
m_ServerClientId
��3 C
)
��C D
;
��D E(
ClearSendQueuesForClientId
�� .
(
��. /
m_ServerClientId
��/ ?
)
��? @
;
��@ A$
InvokeOnTransportEvent
�� *
(
��* +!
NetcodeNetworkEvent
��+ >
.
��> ?

Disconnect
��? I
,
��I J
m_ServerClientId
�� (
,
��( )
default
�� 
,
��  
Time
�� 
.
�� "
realtimeSinceStartup
�� 1
)
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� $
DisconnectRemoteClient
�� 3
(
��3 4
ulong
��4 9
clientId
��: B
)
��B C
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
m_State
��  
==
��! #
State
��$ )
.
��) *
	Listening
��* 3
,
��3 4
$str
��5 t
)
��t u
;
��u v
if
�� 
(
�� 
m_State
�� 
==
�� 
State
��  
.
��  !
	Listening
��! *
)
��* +
{
�� 
FlushSendQueuesForClientId
�� *
(
��* +
clientId
��+ 3
)
��3 4
;
��4 5%
m_ReliableReceiveQueues
�� '
.
��' (
Remove
��( .
(
��. /
clientId
��/ 7
)
��7 8
;
��8 9(
ClearSendQueuesForClientId
�� *
(
��* +
clientId
��+ 3
)
��3 4
;
��4 5
var
�� 

connection
�� 
=
��  

��! .
(
��. /
clientId
��/ 7
)
��7 8
;
��8 9
if
�� 
(
�� 
m_Driver
�� 
.
��  
GetConnectionState
�� /
(
��/ 0

connection
��0 :
)
��: ;
!=
��< >
NetworkConnection
��? P
.
��P Q
State
��Q V
.
��V W
Disconnected
��W c
)
��c d
{
�� 
m_Driver
�� 
.
�� 

Disconnect
�� '
(
��' (

connection
��( 2
)
��2 3
;
��3 4
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
ulong
�� 

�� +
(
��+ ,
ulong
��, 1
clientId
��2 :
)
��: ;
{
�� 	
if
�� 
(
�� 
NetworkManager
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
var
�� 
transportId
�� 
=
��  !
NetworkManager
��" 0
.
��0 1#
ClientIdToTransportId
��1 F
(
��F G
clientId
��G O
)
��O P
;
��P Q
var
�� 
rtt
�� 
=
�� 

ExtractRtt
�� $
(
��$ %

��% 2
(
��2 3
transportId
��3 >
)
��> ?
)
��? @
;
��@ A
if
�� 
(
�� 
rtt
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
return
�� 
(
�� 
ulong
�� !
)
��! "
rtt
��" %
;
��% &
}
�� 
}
�� 
return
�� 
(
�� 
ulong
�� 
)
�� 

ExtractRtt
�� $
(
��$ %

��% 2
(
��2 3
clientId
��3 ;
)
��; <
)
��< =
;
��= >
}
�� 	
public
�� 
override
�� 
void
�� 

Initialize
�� '
(
��' (
NetworkManager
��( 6
networkManager
��7 E
=
��F G
null
��H L
)
��L M
{
�� 	
Debug
�� 
.
�� 
Assert
�� 
(
�� 
sizeof
�� 
(
��  
ulong
��  %
)
��% &
==
��' )

��* 7
.
��7 8
SizeOf
��8 >
<
��> ?
NetworkConnection
��? P
>
��P Q
(
��Q R
)
��R S
,
��S T
$str��U �
)��� �
;��� �
NetworkManager
�� 
=
�� 
networkManager
�� +
;
��+ ,
m_NetworkSettings
�� 
=
�� 
new
��  #
NetworkSettings
��$ 3
(
��3 4
	Allocator
��4 =
.
��= >

Persistent
��> H
)
��H I
;
��I J
var
�� #
fragmentationCapacity
�� %
=
��& '
m_MaxPayloadSize
��( 8
+
��9 :
BatchedSendQueue
��; K
.
��K L 
PerMessageOverhead
��L ^
;
��^ _
m_NetworkSettings
�� 
.
�� .
 WithFragmentationStageParameters
�� 1
(
��1 2
payloadCapacity
��2 A
:
��A B#
fragmentationCapacity
��C X
)
��X Y
.
�� 3
%WithBaselibNetworkInterfaceParameters
�� 6
(
��6 7"
receiveQueueCapacity
�� (
:
��( )"
m_MaxPacketQueueSize
��* >
,
��> ?
sendQueueCapacity
�� %
:
��% &"
m_MaxPacketQueueSize
��' ;
)
��; <
;
��< =
}
�� 	
public
�� 
override
�� !
NetcodeNetworkEvent
�� +
	PollEvent
��, 5
(
��5 6
out
��6 9
ulong
��: ?
clientId
��@ H
,
��H I
out
��J M
ArraySegment
��N Z
<
��Z [
byte
��[ _
>
��_ `
payload
��a h
,
��h i
out
��j m
float
��n s
receiveTime
��t 
)�� �
{
�� 	
clientId
�� 
=
�� 
default
�� 
;
�� 
payload
�� 
=
�� 
default
�� 
;
�� 
receiveTime
�� 
=
�� 
default
�� !
;
��! "
return
�� !
NetcodeNetworkEvent
�� &
.
��& '
Nothing
��' .
;
��. /
}
�� 	
public
�� 
override
�� 
void
�� 
Send
�� !
(
��! "
ulong
��" '
clientId
��( 0
,
��0 1
ArraySegment
��2 >
<
��> ?
byte
��? C
>
��C D
payload
��E L
,
��L M
NetworkDelivery
��N ]
networkDelivery
��^ m
)
��m n
{
�� 	
if
�� 
(
�� 
payload
�� 
.
�� 
Count
�� 
>
�� 
m_MaxPayloadSize
��  0
)
��0 1
{
�	�	 
Debug
�	�	 
.
�	�	 
LogError
�	�	 
(
�	�	 
$"
�	�	 !
$str
�	�	! 1
{
�	�	1 2
payload
�	�	2 9
.
�	�	9 :
Count
�	�	: ?
}
�	�	? @
$str
�	�	@ l
{
�	�	l m
m_MaxPayloadSize
�	�	m }
}
�	�	} ~
$str�	�	~ �
"�	�	� �
)�	�	� �
;�	�	� �
return
�	�	 
;
�	�	 
}
�	�	 
var
�	�	 
pipeline
�	�	 
=
�	�	  
SelectSendPipeline
�	�	 -
(
�	�	- .
networkDelivery
�	�	. =
)
�	�	= >
;
�	�	> ?
var
�	�	 

sendTarget
�	�	 
=
�	�	 
new
�	�	  

SendTarget
�	�	! +
(
�	�	+ ,
clientId
�	�	, 4
,
�	�	4 5
pipeline
�	�	6 >
)
�	�	> ?
;
�	�	? @
if
�	�	 
(
�	�	 
!
�	�	 
m_SendQueue
�	�	 
.
�	�	 
TryGetValue
�	�	 (
(
�	�	( )

sendTarget
�	�	) 3
,
�	�	3 4
out
�	�	5 8
var
�	�	9 <
queue
�	�	= B
)
�	�	B C
)
�	�	C D
{
�	�	 
queue
�	�	 
=
�	�	 
new
�	�	 
BatchedSendQueue
�	�	 ,
(
�	�	, -
Math
�	�	- 1
.
�	�	1 2
Max
�	�	2 5
(
�	�	5 6 
m_MaxSendQueueSize
�	�	6 H
,
�	�	H I
m_MaxPayloadSize
�	�	J Z
)
�	�	Z [
)
�	�	[ \
;
�	�	\ ]
m_SendQueue
�	�	 
.
�	�	 
Add
�	�	 
(
�	�	  

sendTarget
�	�	  *
,
�	�	* +
queue
�	�	, 1
)
�	�	1 2
;
�	�	2 3
}
�	�	 
if
�	�	 
(
�	�	 
!
�	�	 
queue
�	�	 
.
�	�	 
PushMessage
�	�	 "
(
�	�	" #
payload
�	�	# *
)
�	�	* +
)
�	�	+ ,
{
�	�	 
if
�	�	 
(
�	�	 
pipeline
�	�	 
==
�	�	 )
m_ReliableSequencedPipeline
�	�	  ;
)
�	�	; <
{
�	�	 
var
�	�	 
ngoClientId
�	�	 #
=
�	�	$ %
NetworkManager
�	�	& 4
?
�	�	4 5
.
�	�	5 6#
TransportIdToClientId
�	�	6 K
(
�	�	K L
clientId
�	�	L T
)
�	�	T U
??
�	�	V X
clientId
�	�	Y a
;
�	�	a b
Debug
�	�	 
.
�	�	 
LogError
�	�	 "
(
�	�	" #
$"
�	�	# %
$str
�	�	% B
{
�	�	B C
payload
�	�	C J
.
�	�	J K
Count
�	�	K P
}
�	�	P Q
$str
�	�	Q j
"
�	�	j k
+
�	�	l m
$"
�	�	 
$str
�	�	 -
{
�	�	- .
ngoClientId
�	�	. 9
}
�	�	9 :
$str
�	�	: j
"
�	�	j k
+
�	�	l m
$"
�	�	 
$str
�	�	 9
{
�	�	9 : 
m_MaxSendQueueSize
�	�	: L
}
�	�	L M
$str
�	�	M i
"
�	�	i j
)
�	�	j k
;
�	�	k l
if
�	�	 
(
�	�	 
clientId
�	�	  
==
�	�	! #
m_ServerClientId
�	�	$ 4
)
�	�	4 5
{
�	�	 #
DisconnectLocalClient
�	�	 -
(
�	�	- .
)
�	�	. /
;
�	�	/ 0
}
�	�	 
else
�	�	 
{
�	�	 $
DisconnectRemoteClient
�	�	 .
(
�	�	. /
clientId
�	�	/ 7
)
�	�	7 8
;
�	�	8 9$
InvokeOnTransportEvent
�	�	 .
(
�	�	. /!
NetcodeNetworkEvent
�	�	/ B
.
�	�	B C

Disconnect
�	�	C M
,
�	�	M N
clientId
�	�	 $
,
�	�	$ %
default
�	�	 #
(
�	�	# $
ArraySegment
�	�	$ 0
<
�	�	0 1
byte
�	�	1 5
>
�	�	5 6
)
�	�	6 7
,
�	�	7 8
Time
�	�	  
.
�	�	  !"
realtimeSinceStartup
�	�	! 5
)
�	�	5 6
;
�	�	6 7
}
�	�	 
}
�	�	 
else
�	�	 
{
�	�	 
m_Driver
�	�	 
.
�	�	 
ScheduleFlushSend
�	�	 .
(
�	�	. /
default
�	�	/ 6
)
�	�	6 7
.
�	�	7 8
Complete
�	�	8 @
(
�	�	@ A
)
�	�	A B
;
�	�	B C!
SendBatchedMessages
�	�	 '
(
�	�	' (

sendTarget
�	�	( 2
,
�	�	2 3
queue
�	�	4 9
)
�	�	9 :
;
�	�	: ;
queue
�	�	 
.
�	�	 
PushMessage
�	�	 %
(
�	�	% &
payload
�	�	& -
)
�	�	- .
;
�	�	. /
}
�	�	 
}
�	�	 
}
�	�	 	
public
�	�	 
override
�	�	 
bool
�	�	 
StartClient
�	�	 (
(
�	�	( )
)
�	�	) *
{
�	�	 	
if
�	�	 
(
�	�	 
m_Driver
�	�	 
.
�	�	 
	IsCreated
�	�	 "
)
�	�	" #
{
�	�	 
return
�	�	 
false
�	�	 
;
�	�	 
}
�	�	 
var
�	�	 
	succeeded
�	�	 
=
�	�	 "
ClientBindAndConnect
�	�	 0
(
�	�	0 1
)
�	�	1 2
;
�	�	2 3
if
�	�	 
(
�	�	 
!
�	�	 
	succeeded
�	�	 
)
�	�	 
{
�	�	 
Shutdown
�	�	 
(
�	�	 
)
�	�	 
;
�	�	 
}
�	�	 
return
�	�	 
	succeeded
�	�	 
;
�	�	 
}
�	�	 	
public
�	�	 
override
�	�	 
bool
�	�	 
StartServer
�	�	 (
(
�	�	( )
)
�	�	) *
{
�	�	 	
if
�	�	 
(
�	�	 
m_Driver
�	�	 
.
�	�	 
	IsCreated
�	�	 "
)
�	�	" #
{
�	�	 
return
�	�	 
false
�	�	 
;
�	�	 
}
�	�	 
bool
�	�	 
	succeeded
�	�	 
;
�	�	 
switch
�	�	 
(
�	�	 
m_ProtocolType
�	�	 "
)
�	�	" #
{
�	�	 
case
�	�	 
ProtocolType
�	�	 !
.
�	�	! "
UnityTransport
�	�	" 0
:
�	�	0 1
	succeeded
�	�	 
=
�	�	 !
ServerBindAndListen
�	�	  3
(
�	�	3 4
ConnectionData
�	�	4 B
.
�	�	B C
ListenEndPoint
�	�	C Q
)
�	�	Q R
;
�	�	R S
if
�	�	 
(
�	�	 
!
�	�	 
	succeeded
�	�	 "
)
�	�	" #
{
�	�	 
Shutdown
�	�	  
(
�	�	  !
)
�	�	! "
;
�	�	" #
}
�	�	 
return
�	�	 
	succeeded
�	�	 $
;
�	�	$ %
case
�	�	 
ProtocolType
�	�	 !
.
�	�	! "!
RelayUnityTransport
�	�	" 5
:
�	�	5 6
	succeeded
�	�	 
=
�	�	 
StartRelayServer
�	�	  0
(
�	�	0 1
)
�	�	1 2
;
�	�	2 3
if
�	�	 
(
�	�	 
!
�	�	 
	succeeded
�	�	 "
)
�	�	" #
{
�	�	 
Shutdown
�	�	  
(
�	�	  !
)
�	�	! "
;
�	�	" #
}
�	�	 
return
�	�	 
	succeeded
�	�	 $
;
�	�	$ %
default
�	�	 
:
�	�	 
return
�	�	 
false
�	�	  
;
�	�	  !
}
�	�	 
}
�	�	 	
public
�	�	 
override
�	�	 
void
�	�	 
Shutdown
�	�	 %
(
�	�	% &
)
�	�	& '
{
�	�	 	
if
�	�	 
(
�	�	 
!
�	�	 
m_Driver
�	�	 
.
�	�	 
	IsCreated
�	�	 #
)
�	�	# $
{
�	�	 
return
�	�	 
;
�	�	 
}
�	�	 
foreach
�
�
 
(
�
�
 
var
�
�
 
kvp
�
�
 
in
�
�
 
m_SendQueue
�
�
  +
)
�
�
+ ,
{
�
�
 
SendBatchedMessages
�
�
 #
(
�
�
# $
kvp
�
�
$ '
.
�
�
' (
Key
�
�
( +
,
�
�
+ ,
kvp
�
�
- 0
.
�
�
0 1
Value
�
�
1 6
)
�
�
6 7
;
�
�
7 8
}
�
�
 
m_Driver
�
�
 
.
�
�
 
ScheduleFlushSend
�
�
 &
(
�
�
& '
default
�
�
' .
)
�
�
. /
.
�
�
/ 0
Complete
�
�
0 8
(
�
�
8 9
)
�
�
9 :
;
�
�
: ;
DisposeInternals
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 %
m_ReliableReceiveQueues
�
�
 #
.
�
�
# $
Clear
�
�
$ )
(
�
�
) *
)
�
�
* +
;
�
�
+ ,
m_ServerClientId
�
�
 
=
�
�
 
$num
�
�
  
;
�
�
  !
}
�
�
 	
private
�
�
 
void
�
�
  
ConfigureSimulator
�
�
 '
(
�
�
' (
)
�
�
( )
{
�
�
 	
m_NetworkSettings
�
�
 
.
�
�
 *
WithSimulatorStageParameters
�
�
 :
(
�
�
: ;
maxPacketCount
�
�
 
:
�
�
 
$num
�
�
  #
,
�
�
# $

�
�
 
:
�
�
 '
NetworkParameterConstants
�
�
 8
.
�
�
8 9
MTU
�
�
9 <
,
�
�
< =

�
�
 
:
�
�
 
DebugSimulator
�
�
 -
.
�
�
- .

�
�
. ;
,
�
�
; <
packetJitterMs
�
�
 
:
�
�
 
DebugSimulator
�
�
  .
.
�
�
. /
PacketJitterMS
�
�
/ =
,
�
�
= >"
packetDropPercentage
�
�
 $
:
�
�
$ %
DebugSimulator
�
�
& 4
.
�
�
4 5
PacketDropRate
�
�
5 C
)
�
�
 
;
�
�

}
�
�
 	
public
�
�
 
void
�
�
 
CreateDriver
�
�
  
(
�
�
  !
UnityTransport
�
�
! /
	transport
�
�
0 9
,
�
�
9 :
out
�
�
; >

�
�
? L
driver
�
�
M S
,
�
�
S T
out
�
�
 
NetworkPipeline
�
�
 *
unreliableFragmentedPipeline
�
�
  <
,
�
�
< =
out
�
�
 
NetworkPipeline
�
�
 3
%unreliableSequencedFragmentedPipeline
�
�
  E
,
�
�
E F
out
�
�
 
NetworkPipeline
�
�
 '
reliableSequencedPipeline
�
�
  9
)
�
�
9 :
{
�
�
 	,
NetworkPipelineStageCollection
�
�
 *
.
�
�
* +#
RegisterPipelineStage
�
�
+ @
(
�
�
@ A
new
�
�
A D)
NetworkMetricsPipelineStage
�
�
E `
(
�
�
` a
)
�
�
a b
)
�
�
b c
;
�
�
c d
var
�
�
 
maxFrameTimeMS
�
�
 
=
�
�
  
$num
�
�
! "
;
�
�
" #
maxFrameTimeMS
�
�
 
=
�
�
 
$num
�
�
  
;
�
�
  ! 
ConfigureSimulator
�
�
 
(
�
�
 
)
�
�
  
;
�
�
  !
m_NetworkSettings
�
�
 
.
�
�
 )
WithNetworkConfigParameters
�
�
 9
(
�
�
9 : 
maxConnectAttempts
�
�
 "
:
�
�
" #
	transport
�
�
$ -
.
�
�
- ."
m_MaxConnectAttempts
�
�
. B
,
�
�
B C
connectTimeoutMS
�
�
  
:
�
�
  !
	transport
�
�
" +
.
�
�
+ , 
m_ConnectTimeoutMS
�
�
, >
,
�
�
> ?!
disconnectTimeoutMS
�
�
 #
:
�
�
# $
	transport
�
�
% .
.
�
�
. /#
m_DisconnectTimeoutMS
�
�
/ D
,
�
�
D E 
heartbeatTimeoutMS
�
�
 "
:
�
�
" #
	transport
�
�
$ -
.
�
�
- ."
m_HeartbeatTimeoutMS
�
�
. B
,
�
�
B C
maxFrameTimeMS
�
�
 
:
�
�
 
maxFrameTimeMS
�
�
  .
)
�
�
. /
;
�
�
/ 0
driver
�
�
 
=
�
�
 

�
�
 "
.
�
�
" #
Create
�
�
# )
(
�
�
) *
m_NetworkSettings
�
�
* ;
)
�
�
; <
;
�
�
< =
if
�
�
 
(
�
�
 
DebugSimulator
�
�
 
.
�
�
 

�
�
 ,
>
�
�
- .
$num
�
�
/ 0
||
�
�
1 3
DebugSimulator
�
�
4 B
.
�
�
B C
PacketDropRate
�
�
C Q
>
�
�
R S
$num
�
�
T U
)
�
�
U V
{
�
�
 
unreliableFragmentedPipeline
�
�
 ,
=
�
�
- .
driver
�
�
/ 5
.
�
�
5 6
CreatePipeline
�
�
6 D
(
�
�
D E
typeof
�
�
 
(
�
�
 (
FragmentationPipelineStage
�
�
 5
)
�
�
5 6
,
�
�
6 7
typeof
�
�
 
(
�
�
 $
SimulatorPipelineStage
�
�
 1
)
�
�
1 2
,
�
�
2 3
typeof
�
�
 
(
�
�
 *
SimulatorPipelineStageInSend
�
�
 7
)
�
�
7 8
,
�
�
 
typeof
�
�
 
(
�
�
 )
NetworkMetricsPipelineStage
�
�
 8
)
�
�
8 9
)
�
�
 
;
�
�
 3
%unreliableSequencedFragmentedPipeline
�
�
 5
=
�
�
6 7
driver
�
�
8 >
.
�
�
> ?
CreatePipeline
�
�
? M
(
�
�
M N
typeof
�
�
 
(
�
�
 (
FragmentationPipelineStage
�
�
 5
)
�
�
5 6
,
�
�
6 7
typeof
�
�
 
(
�
�
 .
 UnreliableSequencedPipelineStage
�
�
 ;
)
�
�
; <
,
�
�
< =
typeof
�
�
 
(
�
�
 $
SimulatorPipelineStage
�
�
 1
)
�
�
1 2
,
�
�
2 3
typeof
�
�
 
(
�
�
 *
SimulatorPipelineStageInSend
�
�
 7
)
�
�
7 8
,
�
�
 
typeof
�
�
 
(
�
�
 )
NetworkMetricsPipelineStage
�
�
 7
)
�
�
7 8
)
�
�
 
;
�
�
 '
reliableSequencedPipeline
�
�
 )
=
�
�
* +
driver
�
�
, 2
.
�
�
2 3
CreatePipeline
�
�
3 A
(
�
�
A B
typeof
�
�
 
(
�
�
 ,
ReliableSequencedPipelineStage
�
�
 9
)
�
�
9 :
,
�
�
: ;
typeof
�
�
 
(
�
�
 $
SimulatorPipelineStage
�
�
 1
)
�
�
1 2
,
�
�
2 3
typeof
�
�
 
(
�
�
 *
SimulatorPipelineStageInSend
�
�
 7
)
�
�
7 8
,
�
�
 
typeof
�
�
 
(
�
�
 )
NetworkMetricsPipelineStage
�
�
 7
)
�
�
7 8
)
�
�
 
;
�
�
 
}
�
�
 
else
�
�
 
{
�
�
 
unreliableFragmentedPipeline
�
�
 ,
=
�
�
- .
driver
�
�
/ 5
.
�
�
5 6
CreatePipeline
�
�
6 D
(
�
�
D E
typeof
�
�
 
(
�
�
 (
FragmentationPipelineStage
�
�
 5
)
�
�
5 6
,
�
�
 
typeof
�
�
 
(
�
�
 )
NetworkMetricsPipelineStage
�
�
 7
)
�
�
7 8
)
�
�
 
;
�
�
 3
%unreliableSequencedFragmentedPipeline
�
�
 5
=
�
�
6 7
driver
�
�
8 >
.
�
�
> ?
CreatePipeline
�
�
? M
(
�
�
M N
typeof
�
�
 
(
�
�
 (
FragmentationPipelineStage
�
�
 5
)
�
�
5 6
,
�
�
6 7
typeof
�
�
 
(
�
�
 .
 UnreliableSequencedPipelineStage
�
�
 ;
)
�
�
; <
,
�
�
 
typeof
�
�
 
(
�
�
 )
NetworkMetricsPipelineStage
�
�
 7
)
�
�
7 8
)
�
�
 
;
�
�
 '
reliableSequencedPipeline
�
�
 )
=
�
�
* +
driver
�
�
, 2
.
�
�
2 3
CreatePipeline
�
�
3 A
(
�
�
A B
typeof
�
�
 
(
�
�
 ,
ReliableSequencedPipelineStage
�
�
 9
)
�
�
9 :
,
�
�
 
typeof
�
�
 
(
�
�
 )
NetworkMetricsPipelineStage
�
�
 7
)
�
�
7 8
)
�
�
 
;
�
�
 
}
�
�
 
}
�
�
 	
private
�
�
 
struct
�
�
 

SendTarget
�
�
 !
:
�
�
" #

IEquatable
�
�
$ .
<
�
�
. /

SendTarget
�
�
/ 9
>
�
�
9 :
{
�
�
 	
public
�
�
 
readonly
�
�
 
ulong
�
�
 !
ClientId
�
�
" *
;
�
�
* +
public
�
�
 
readonly
�
�
 
NetworkPipeline
�
�
 +
NetworkPipeline
�
�
, ;
;
�
�
; <
public
�� 

SendTarget
�� 
(
�� 
ulong
�� #
clientId
��$ ,
,
��, -
NetworkPipeline
��. =
networkPipeline
��> M
)
��M N
{
�� 
ClientId
�� 
=
�� 
clientId
�� #
;
��# $
NetworkPipeline
�� 
=
��  !
networkPipeline
��" 1
;
��1 2
}
�� 
public
�� 
bool
�� 
Equals
�� 
(
�� 

SendTarget
�� )
other
��* /
)
��/ 0
{
�� 
return
�� 
ClientId
�� 
==
��  "
other
��# (
.
��( )
ClientId
��) 1
&&
��2 4
NetworkPipeline
��5 D
.
��D E
Equals
��E K
(
��K L
other
��L Q
.
��Q R
NetworkPipeline
��R a
)
��a b
;
��b c
}
�� 
public
�� 
override
�� 
bool
��  
Equals
��! '
(
��' (
object
��( .
obj
��/ 2
)
��2 3
{
�� 
return
�� 
obj
�� 
is
�� 

SendTarget
�� (
other
��) .
&&
��/ 1
Equals
��2 8
(
��8 9
other
��9 >
)
��> ?
;
��? @
}
�� 
public
�� 
override
�� 
int
�� 
GetHashCode
��  +
(
��+ ,
)
��, -
{
�� 
	unchecked
�� 
{
�� 
return
�� 
(
�� 
ClientId
�� $
.
��$ %
GetHashCode
��% 0
(
��0 1
)
��1 2
*
��3 4
$num
��5 8
)
��8 9
^
��: ;
NetworkPipeline
��< K
.
��K L
GetHashCode
��L W
(
��W X
)
��X Y
;
��Y Z
}
�� 
}
�� 
}
�� 	
}
�� 
}�� �
oC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\IMessageProvider.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
	interface
IMessageProvider '
{ 
List 
< 
MessagingSystem
. 
MessageWithHandler /
>/ 0
GetMessages1 <
(< =
)= >
;> ?
} 
}		 Ǔ
mC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\BytePacker.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

static 
class 

BytePacker "
{ 
[ 	

MethodImpl	 
( 
MethodImplOptions %
.% &
AggressiveInlining& 8
)8 9
]9 :
public 
static 
unsafe 
void !
WriteValuePacked" 2
<2 3
TEnum3 8
>8 9
(9 :
FastBufferWriter: J
writerK Q
,Q R
TEnumS X
valueY ^
)^ _
where` e
TEnumf k
:l m
	unmanagedn w
,w x
Enumy }
{ 	
TEnum 
	enumValue 
= 
value #
;# $
switch 
( 
sizeof 
( 
TEnum  
)  !
)! "
{ 
case 
sizeof 
( 
int 
)  
:  !
WriteValuePacked $
($ %
writer% +
,+ ,
*- .
(. /
int/ 2
*2 3
)3 4
&4 5
	enumValue5 >
)> ?
;? @
break   
;   
case!! 
sizeof!! 
(!! 
byte!!  
)!!  !
:!!! "
WriteValuePacked"" $
(""$ %
writer""% +
,""+ ,
*""- .
("". /
byte""/ 3
*""3 4
)""4 5
&""5 6
	enumValue""6 ?
)""? @
;""@ A
break## 
;## 
case$$ 
sizeof$$ 
($$ 
short$$ !
)$$! "
:$$" #
WriteValuePacked%% $
(%%$ %
writer%%% +
,%%+ ,
*%%- .
(%%. /
short%%/ 4
*%%4 5
)%%5 6
&%%6 7
	enumValue%%7 @
)%%@ A
;%%A B
break&& 
;&& 
case'' 
sizeof'' 
('' 
long''  
)''  !
:''! "
WriteValuePacked(( $
((($ %
writer((% +
,((+ ,
*((- .
(((. /
long((/ 3
*((3 4
)((4 5
&((5 6
	enumValue((6 ?
)((? @
;((@ A
break)) 
;)) 
}** 
}++ 	
[22 	

MethodImpl22	 
(22 
MethodImplOptions22 %
.22% &
AggressiveInlining22& 8
)228 9
]229 :
public33 
static33 
void33 
WriteValuePacked33 +
(33+ ,
FastBufferWriter33, <
writer33= C
,33C D
float33E J
value33K P
)33P Q
{44 	
WriteUInt32Packed55 
(55 
writer55 $
,55$ %
ToUint55& ,
(55, -
value55- 2
)552 3
)553 4
;554 5
}66 	
[== 	

MethodImpl==	 
(== 
MethodImplOptions== %
.==% &
AggressiveInlining==& 8
)==8 9
]==9 :
public>> 
static>> 
void>> 
WriteValuePacked>> +
(>>+ ,
FastBufferWriter>>, <
writer>>= C
,>>C D
double>>E K
value>>L Q
)>>Q R
{?? 	
WriteUInt64Packed@@ 
(@@ 
writer@@ $
,@@$ %
ToUlong@@& -
(@@- .
value@@. 3
)@@3 4
)@@4 5
;@@5 6
}AA 	
[HH 	

MethodImplHH	 
(HH 
MethodImplOptionsHH %
.HH% &
AggressiveInliningHH& 8
)HH8 9
]HH9 :
publicII 
staticII 
voidII 
WriteValuePackedII +
(II+ ,
FastBufferWriterII, <
writerII= C
,IIC D
byteIIE I
valueIIJ O
)IIO P
=>IIQ S
writerIIT Z
.IIZ [

(IIh i
valueIIi n
)IIn o
;IIo p
[PP 	

MethodImplPP	 
(PP 
MethodImplOptionsPP %
.PP% &
AggressiveInliningPP& 8
)PP8 9
]PP9 :
publicQQ 
staticQQ 
voidQQ 
WriteValuePackedQQ +
(QQ+ ,
FastBufferWriterQQ, <
writerQQ= C
,QQC D
sbyteQQE J
valueQQK P
)QQP Q
=>QQR T
writerQQU [
.QQ[ \

(QQi j
(QQj k
byteQQk o
)QQo p
valueQQp u
)QQu v
;QQv w
[XX 	

MethodImplXX	 
(XX 
MethodImplOptionsXX %
.XX% &
AggressiveInliningXX& 8
)XX8 9
]XX9 :
publicYY 
staticYY 
voidYY 
WriteValuePackedYY +
(YY+ ,
FastBufferWriterYY, <
writerYY= C
,YYC D
boolYYE I
valueYYJ O
)YYO P
=>YYQ S
writerYYT Z
.YYZ [
WriteValueSafeYY[ i
(YYi j
valueYYj o
)YYo p
;YYp q
[dd 	

MethodImpldd	 
(dd 
MethodImplOptionsdd %
.dd% &
AggressiveInliningdd& 8
)dd8 9
]dd9 :
publicee 
staticee 
voidee 
WriteValuePackedee +
(ee+ ,
FastBufferWriteree, <
writeree= C
,eeC D
shorteeE J
valueeeK P
)eeP Q
=>eeR T
WriteUInt32PackedeeU f
(eef g
writereeg m
,eem n
(eeo p
ushorteep v
)eev w

Arithmetic	eew �
.
ee� �
ZigZagEncode
ee� �
(
ee� �
value
ee� �
)
ee� �
)
ee� �
;
ee� �
[oo 	

MethodImploo	 
(oo 
MethodImplOptionsoo %
.oo% &
AggressiveInliningoo& 8
)oo8 9
]oo9 :
publicpp 
staticpp 
voidpp 
WriteValuePackedpp +
(pp+ ,
FastBufferWriterpp, <
writerpp= C
,ppC D
ushortppE K
valueppL Q
)ppQ R
=>ppS U
WriteUInt32PackedppV g
(ppg h
writerpph n
,ppn o
valueppp u
)ppu v
;ppv w
[zz 	

MethodImplzz	 
(zz 
MethodImplOptionszz %
.zz% &
AggressiveInliningzz& 8
)zz8 9
]zz9 :
public{{ 
static{{ 
void{{ 
WriteValuePacked{{ +
({{+ ,
FastBufferWriter{{, <
writer{{= C
,{{C D
char{{E I
c{{J K
){{K L
=>{{M O
WriteUInt32Packed{{P a
({{a b
writer{{b h
,{{h i
c{{j k
){{k l
;{{l m
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
int
��E H
value
��I N
)
��N O
=>
��P R
WriteUInt32Packed
��S d
(
��d e
writer
��e k
,
��k l
(
��m n
uint
��n r
)
��r s

Arithmetic
��s }
.
��} ~
ZigZagEncode��~ �
(��� �
value��� �
)��� �
)��� �
;��� �
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
uint
��E I
value
��J O
)
��O P
=>
��Q S
WriteUInt32Packed
��T e
(
��e f
writer
��f l
,
��l m
value
��n s
)
��s t
;
��t u
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
ulong
��E J
value
��K P
)
��P Q
=>
��R T
WriteUInt64Packed
��U f
(
��f g
writer
��g m
,
��m n
value
��o t
)
��t u
;
��u v
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
long
��E I
value
��J O
)
��O P
=>
��Q S
WriteUInt64Packed
��T e
(
��e f
writer
��f l
,
��l m

Arithmetic
��n x
.
��x y
ZigZagEncode��y �
(��� �
value��� �
)��� �
)��� �
;��� �
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
Ray
��E H
ray
��I L
)
��L M
{
�� 	
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
ray
��% (
.
��( )
origin
��) /
)
��/ 0
;
��0 1
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
ray
��% (
.
��( )
	direction
��) 2
)
��2 3
;
��3 4
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
Ray2D
��E J
ray2d
��K P
)
��P Q
{
�� 	
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
ray2d
��% *
.
��* +
origin
��+ 1
)
��1 2
;
��2 3
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
ray2d
��% *
.
��* +
	direction
��+ 4
)
��4 5
;
��5 6
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
Color
��E J
color
��K P
)
��P Q
{
�� 	
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
color
��% *
.
��* +
r
��+ ,
)
��, -
;
��- .
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
color
��% *
.
��* +
g
��+ ,
)
��, -
;
��- .
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
color
��% *
.
��* +
b
��+ ,
)
��, -
;
��- .
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
color
��% *
.
��* +
a
��+ ,
)
��, -
;
��- .
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
Color32
��E L
color
��M R
)
��R S
{
�� 	
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
color
��% *
.
��* +
r
��+ ,
)
��, -
;
��- .
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
color
��% *
.
��* +
g
��+ ,
)
��, -
;
��- .
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
color
��% *
.
��* +
b
��+ ,
)
��, -
;
��- .
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
color
��% *
.
��* +
a
��+ ,
)
��, -
;
��- .
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
Vector2
��E L
vector2
��M T
)
��T U
{
�� 	
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
vector2
��% ,
.
��, -
x
��- .
)
��. /
;
��/ 0
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
vector2
��% ,
.
��, -
y
��- .
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
Vector3
��E L
vector3
��M T
)
��T U
{
�� 	
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
vector3
��% ,
.
��, -
x
��- .
)
��. /
;
��/ 0
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
vector3
��% ,
.
��, -
y
��- .
)
��. /
;
��/ 0
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
vector3
��% ,
.
��, -
z
��- .
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
Vector4
��E L
vector4
��M T
)
��T U
{
�� 	
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
vector4
��% ,
.
��, -
x
��- .
)
��. /
;
��/ 0
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
vector4
��% ,
.
��, -
y
��- .
)
��. /
;
��/ 0
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
vector4
��% ,
.
��, -
z
��- .
)
��. /
;
��/ 0
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
vector4
��% ,
.
��, -
w
��- .
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
static
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D

Quaternion
��E O
rotation
��P X
)
��X Y
{
�� 	
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
rotation
��% -
.
��- .
x
��. /
)
��/ 0
;
��0 1
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
rotation
��% -
.
��- .
y
��. /
)
��/ 0
;
��0 1
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
rotation
��% -
.
��- .
z
��. /
)
��/ 0
;
��0 1
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
rotation
��% -
.
��- .
w
��. /
)
��/ 0
;
��0 1
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
�� 
void
�� 
WriteValuePacked
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
string
��E K
s
��L M
)
��M N
{
�� 	
WriteValuePacked
�� 
(
�� 
writer
�� #
,
��# $
(
��% &
uint
��& *
)
��* +
s
��+ ,
.
��, -
Length
��- 3
)
��3 4
;
��4 5
int
�� 
target
�� 
=
�� 
s
�� 
.
�� 
Length
�� !
;
��! "
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
target
��  &
;
��& '
++
��( *
i
��* +
)
��+ ,
{
�� 
WriteValuePacked
��  
(
��  !
writer
��! '
,
��' (
s
��) *
[
��* +
i
��+ ,
]
��, -
)
��- .
;
��. /
}
�� 
}
�� 	
public
�� 
const
�� 
ushort
��  
BitPackedUshortMax
�� .
=
��/ 0
(
��1 2
$num
��2 3
<<
��4 6
$num
��7 9
)
��9 :
-
��; <
$num
��= >
;
��> ?
public
�� 
const
�� 
short
�� 
BitPackedShortMax
�� ,
=
��- .
(
��/ 0
$num
��0 1
<<
��2 4
$num
��5 7
)
��7 8
-
��9 :
$num
��; <
;
��< =
public
�� 
const
�� 
short
�� 
BitPackedShortMin
�� ,
=
��- .
-
��/ 0
(
��0 1
$num
��1 2
<<
��3 5
$num
��6 8
)
��8 9
;
��9 :
public
�� 
const
�� 
uint
�� 
BitPackedUintMax
�� *
=
��+ ,
(
��- .
$num
��. /
<<
��0 2
$num
��3 5
)
��5 6
-
��7 8
$num
��9 :
;
��: ;
public
�� 
const
�� 
int
�� 
BitPackedIntMax
�� (
=
��) *
(
��+ ,
$num
��, -
<<
��. 0
$num
��1 3
)
��3 4
-
��5 6
$num
��7 8
;
��8 9
public
�� 
const
�� 
int
�� 
BitPackedIntMin
�� (
=
��) *
-
��+ ,
(
��, -
$num
��- .
<<
��/ 1
$num
��2 4
)
��4 5
;
��5 6
public
�� 
const
�� 
ulong
�� 
BitPackedULongMax
�� ,
=
��- .
(
��/ 0
$num
��0 2
<<
��3 5
$num
��6 8
)
��8 9
-
��: ;
$num
��< =
;
��= >
public
�� 
const
�� 
long
�� 
BitPackedLongMax
�� *
=
��+ ,
(
��- .
$num
��. 0
<<
��1 3
$num
��4 6
)
��6 7
-
��8 9
$num
��: ;
;
��; <
public
�� 
const
�� 
long
�� 
BitPackedLongMin
�� *
=
��+ ,
-
��- .
(
��. /
$num
��/ 1
<<
��2 4
$num
��5 7
)
��7 8
;
��8 9
public
�� 
static
�� 
void
�� !
WriteValueBitPacked
�� .
(
��. /
FastBufferWriter
��/ ?
writer
��@ F
,
��F G
short
��H M
value
��N S
)
��S T
=>
��U W!
WriteValueBitPacked
��X k
(
��k l
writer
��l r
,
��r s
(
��t u
ushort
��u {
)
��{ |

Arithmetic��| �
.��� �
ZigZagEncode��� �
(��� �
value��� �
)��� �
)��� �
;��� �
public
�� 
static
�� 
void
�� !
WriteValueBitPacked
�� .
(
��. /
FastBufferWriter
��/ ?
writer
��@ F
,
��F G
ushort
��H N
value
��O T
)
��T U
{
�� 	
if
�� 
(
�� 
value
�� 
>=
��  
BitPackedUshortMax
�� +
)
��+ ,
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, R
)
��R S
;
��S T
}
�� 
if
�� 
(
�� 
value
�� 
<=
�� 
$num
�� $
)
��$ %
{
�� 
if
�� 
(
�� 
!
�� 
writer
�� 
.
�� #
TryBeginWriteInternal
�� 1
(
��1 2
$num
��2 3
)
��3 4
)
��4 5
{
�� 
throw
�� 
new
�� 
OverflowException
�� /
(
��/ 0
$str
��0 T
)
��T U
;
��U V
}
�� 
writer
�� 
.
�� 
	WriteByte
��  
(
��  !
(
��! "
byte
��" &
)
��& '
(
��' (
value
��( -
<<
��. 0
$num
��1 2
)
��2 3
)
��3 4
;
��4 5
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
writer
�� 
.
�� #
TryBeginWriteInternal
�� -
(
��- .
$num
��. /
)
��/ 0
)
��0 1
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 
writer
�� 
.
�� 

WriteValue
�� 
(
�� 
(
�� 
ushort
�� %
)
��% &
(
��& '
(
��' (
value
��( -
<<
��. 0
$num
��1 2
)
��2 3
|
��4 5
$num
��6 9
)
��9 :
)
��: ;
;
��; <
}
�� 	
public
�� 
static
�� 
void
�� !
WriteValueBitPacked
�� .
(
��. /
FastBufferWriter
��/ ?
writer
��@ F
,
��F G
int
��H K
value
��L Q
)
��Q R
=>
��S U!
WriteValueBitPacked
��V i
(
��i j
writer
��j p
,
��p q
(
��r s
uint
��s w
)
��w x

Arithmetic��x �
.��� �
ZigZagEncode��� �
(��� �
value��� �
)��� �
)��� �
;��� �
public
�� 
static
�� 
void
�� !
WriteValueBitPacked
�� .
(
��. /
FastBufferWriter
��/ ?
writer
��@ F
,
��F G
uint
��H L
value
��M R
)
��R S
{
�� 	
if
�� 
(
�� 
value
�� 
>
�� 
BitPackedUintMax
�� (
)
��( )
{
�� 
throw
�� 
new
�� 
ArgumentException
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
�� 
value
�� 
<<=
�� 
$num
�� 
;
�� 
var
�� 
numBytes
�� 
=
�� 

BitCounter
�� %
.
��% &
GetUsedByteCount
��& 6
(
��6 7
value
��7 <
)
��< =
;
��= >
if
�� 
(
�� 
!
�� 
writer
�� 
.
�� #
TryBeginWriteInternal
�� -
(
��- .
numBytes
��. 6
)
��6 7
)
��7 8
{
�� 
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
�� 
writer
�� 
.
�� 
WritePartialValue
�� $
(
��$ %
value
��% *
|
��+ ,
(
��- .
uint
��. 2
)
��2 3
(
��3 4
numBytes
��4 <
-
��= >
$num
��? @
)
��@ A
,
��A B
numBytes
��C K
)
��K L
;
��L M
}
�� 	
public
�� 
static
�� 
void
�� !
WriteValueBitPacked
�� .
(
��. /
FastBufferWriter
��/ ?
writer
��@ F
,
��F G
long
��H L
value
��M R
)
��R S
=>
��T V!
WriteValueBitPacked
��W j
(
��j k
writer
��k q
,
��q r

Arithmetic
��s }
.
��} ~
ZigZagEncode��~ �
(��� �
value��� �
)��� �
)��� �
;��� �
public
�� 
static
�� 
void
�� !
WriteValueBitPacked
�� .
(
��. /
FastBufferWriter
��/ ?
writer
��@ F
,
��F G
ulong
��H M
value
��N S
)
��S T
{
�� 	
if
�� 
(
�� 
value
�� 
>
�� 
BitPackedULongMax
�� )
)
��) *
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, Q
)
��Q R
;
��R S
}
�� 
value
�� 
<<=
�� 
$num
�� 
;
�� 
var
�� 
numBytes
�� 
=
�� 

BitCounter
�� %
.
��% &
GetUsedByteCount
��& 6
(
��6 7
value
��7 <
)
��< =
;
��= >
if
�� 
(
�� 
!
�� 
writer
�� 
.
�� #
TryBeginWriteInternal
�� -
(
��- .
numBytes
��. 6
)
��6 7
)
��7 8
{
�� 
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
�� 
writer
�� 
.
�� 
WritePartialValue
�� $
(
��$ %
value
��% *
|
��+ ,
(
��- .
uint
��. 2
)
��2 3
(
��3 4
numBytes
��4 <
-
��= >
$num
��? @
)
��@ A
,
��A B
numBytes
��C K
)
��K L
;
��L M
}
�� 	
private
�� 
static
�� 
void
�� 
WriteUInt64Packed
�� -
(
��- .
FastBufferWriter
��. >
writer
��? E
,
��E F
ulong
��G L
value
��M R
)
��R S
{
�� 	
if
�� 
(
�� 
value
�� 
<=
�� 
$num
�� 
)
�� 
{
�� 
writer
�� 
.
�� 

�� $
(
��$ %
(
��% &
byte
��& *
)
��* +
value
��+ 0
)
��0 1
;
��1 2
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
value
�� 
<=
�� 
$num
�� 
)
�� 
{
�� 
writer
�� 
.
�� 

�� $
(
��$ %
(
��% &
byte
��& *
)
��* +
(
��+ ,
(
��, -
(
��- .
value
��. 3
-
��4 5
$num
��6 9
)
��9 :
>>
��; =
$num
��> ?
)
��? @
+
��A B
$num
��C F
)
��F G
)
��G H
;
��H I
writer
�� 
.
�� 

�� $
(
��$ %
(
��% &
byte
��& *
)
��* +
(
��+ ,
value
��, 1
-
��2 3
$num
��4 7
)
��7 8
)
��8 9
;
��9 :
return
�� 
;
�� 
}
�� 
var
�� 

writeBytes
�� 
=
�� 

BitCounter
�� '
.
��' (
GetUsedByteCount
��( 8
(
��8 9
value
��9 >
)
��> ?
;
��? @
if
�� 
(
�� 
!
�� 
writer
�� 
.
�� #
TryBeginWriteInternal
�� -
(
��- .

writeBytes
��. 8
+
��9 :
$num
��; <
)
��< =
)
��= >
{
�� 
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
�� 
writer
�� 
.
�� 
	WriteByte
�� 
(
�� 
(
�� 
byte
�� "
)
��" #
(
��# $
$num
��$ '
+
��( )

writeBytes
��* 4
)
��4 5
)
��5 6
;
��6 7
writer
�� 
.
�� 
WritePartialValue
�� $
(
��$ %
value
��% *
,
��* +

writeBytes
��, 6
)
��6 7
;
��7 8
}
�� 	
private
�� 
static
�� 
void
�� 
WriteUInt32Packed
�� -
(
��- .
FastBufferWriter
��. >
writer
��? E
,
��E F
uint
��G K
value
��L Q
)
��Q R
{
�� 	
if
�� 
(
�� 
value
�� 
<=
�� 
$num
�� 
)
�� 
{
�� 
writer
�� 
.
�� 

�� $
(
��$ %
(
��% &
byte
��& *
)
��* +
value
��+ 0
)
��0 1
;
��1 2
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
value
�� 
<=
�� 
$num
�� 
)
�� 
{
�� 
writer
�� 
.
�� 

�� $
(
��$ %
(
��% &
byte
��& *
)
��* +
(
��+ ,
(
��, -
(
��- .
value
��. 3
-
��4 5
$num
��6 9
)
��9 :
>>
��; =
$num
��> ?
)
��? @
+
��A B
$num
��C F
)
��F G
)
��G H
;
��H I
writer
�� 
.
�� 

�� $
(
��$ %
(
��% &
byte
��& *
)
��* +
(
��+ ,
value
��, 1
-
��2 3
$num
��4 7
)
��7 8
)
��8 9
;
��9 :
return
�� 
;
�� 
}
�� 
var
�� 

writeBytes
�� 
=
�� 

BitCounter
�� '
.
��' (
GetUsedByteCount
��( 8
(
��8 9
value
��9 >
)
��> ?
;
��? @
if
�� 
(
�� 
!
�� 
writer
�� 
.
�� #
TryBeginWriteInternal
�� -
(
��- .

writeBytes
��. 8
+
��9 :
$num
��; <
)
��< =
)
��= >
{
�� 
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
�� 
writer
�� 
.
�� 
	WriteByte
�� 
(
�� 
(
�� 
byte
�� "
)
��" #
(
��# $
$num
��$ '
+
��( )

writeBytes
��* 4
)
��4 5
)
��5 6
;
��6 7
writer
�� 
.
�� 
WritePartialValue
�� $
(
��$ %
value
��% *
,
��* +

writeBytes
��, 6
)
��6 7
;
��7 8
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
��9 :
private
�� 
static
�� 
unsafe
�� 
uint
�� "
ToUint
��# )
<
��) *
T
��* +
>
��+ ,
(
��, -
T
��- .
value
��/ 4
)
��4 5
where
��6 ;
T
��< =
:
��> ?
	unmanaged
��@ I
{
�� 	
uint
�� 
*
�� 
asUint
�� 
=
�� 
(
�� 
uint
��  
*
��  !
)
��! "
&
��" #
value
��# (
;
��( )
return
�� 
*
�� 
asUint
�� 
;
�� 
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
��9 :
private
�� 
static
�� 
unsafe
�� 
ulong
�� #
ToUlong
��$ +
<
��+ ,
T
��, -
>
��- .
(
��. /
T
��/ 0
value
��1 6
)
��6 7
where
��8 =
T
��> ?
:
��@ A
	unmanaged
��B K
{
�� 	
ulong
�� 
*
�� 
asUlong
�� 
=
�� 
(
�� 
ulong
�� #
*
��# $
)
��$ %
&
��% &
value
��& +
;
��+ ,
return
�� 
*
�� 
asUlong
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
jC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Core\NetworkBehaviour.cs
	namespace 	
Unity
 
. 
Netcode 
{		 
public

abstract
class
NetworkBehaviour
:

{ 
internal 
enum 
__RpcExecStage $
{ 	
None 
= 
$num 
, 
Server 
= 
$num 
, 
Client 
= 
$num 
} 	
internal 
virtual 
string 

(- .
). /
=>0 2
nameof3 9
(9 :
NetworkBehaviour: J
)J K
;K L
[ 	

] 
internal 
__RpcExecStage 
__rpc_exec_stage  0
=1 2
__RpcExecStage3 A
.A B
NoneB F
;F G
private   
const   
int   #
k_RpcMessageDefaultSize   1
=  2 3
$num  4 8
;  8 9
private!! 
const!! 
int!! #
k_RpcMessageMaximumSize!! 1
=!!2 3
$num!!4 8
*!!9 :
$num!!; =
;!!= >
internal%% 
FastBufferWriter%% ! 
__beginSendServerRpc%%" 6
(%%6 7
uint%%7 ;
rpcMethodId%%< G
,%%G H
ServerRpcParams%%I X
serverRpcParams%%Y h
,%%h i
RpcDelivery%%j u
rpcDelivery	%%v �
)
%%� �
{'' 	
return(( 
new(( 
FastBufferWriter(( '
(((' (#
k_RpcMessageDefaultSize((( ?
,((? @
	Allocator((A J
.((J K
Temp((K O
,((O P#
k_RpcMessageMaximumSize((Q h
)((h i
;((i j
})) 	
internal-- 
void-- 
__endSendServerRpc-- (
(--( )
ref--) ,
FastBufferWriter--- =
bufferWriter--> J
,--J K
uint--L P
rpcMethodId--Q \
,--\ ]
ServerRpcParams--^ m
serverRpcParams--n }
,--} ~
RpcDelivery	-- �
rpcDelivery
--� �
)
--� �
{// 	
var00 
serverRpcMessage00  
=00! "
new00# &
ServerRpcMessage00' 7
{11 
Metadata22 
=22 
new22 
RpcMetadata22 *
{33 
NetworkObjectId44 #
=44$ %
NetworkObjectId44& 5
,445 6
NetworkBehaviourId55 &
=55' (
NetworkBehaviourId55) ;
,55; <
NetworkRpcMethodId66 &
=66' (
rpcMethodId66) 4
,664 5
}77 
,77 
WriteBuffer88 
=88 
bufferWriter88 *
}99 
;99
NetworkDelivery;; 
networkDelivery;; +
;;;+ ,
switch<< 
(<< 
rpcDelivery<< 
)<<  
{== 
default>> 
:>> 
case?? 
RpcDelivery??  
.??  !
Reliable??! )
:??) *
networkDelivery@@ #
=@@$ %
NetworkDelivery@@& 5
.@@5 6'
ReliableFragmentedSequenced@@6 Q
;@@Q R
breakAA 
;AA 
caseBB 
RpcDeliveryBB  
.BB  !

UnreliableBB! +
:BB+ ,
ifCC 
(CC 
bufferWriterCC $
.CC$ %
LengthCC% +
>CC, -
MessagingSystemCC. =
.CC= >+
NON_FRAGMENTED_MESSAGE_MAX_SIZECC> ]
)CC] ^
{DD 
throwEE 
newEE !
OverflowExceptionEE" 3
(EE3 4
$strEE4 k
)EEk l
;EEl m
}FF 
networkDeliveryGG #
=GG$ %
NetworkDeliveryGG& 5
.GG5 6

UnreliableGG6 @
;GG@ A
breakHH 
;HH 
}II 
varKK 
rpcWriteSizeKK 
=KK 
$numKK  
;KK  !
ifNN 
(NN 
IsHostNN 
||NN 
IsServerNN "
)NN" #
{OO 
usingPP 
varPP 

tempBufferPP $
=PP% &
newPP' *
FastBufferReaderPP+ ;
(PP; <
bufferWriterPP< H
,PPH I
	AllocatorPPJ S
.PPS T
TempPPT X
)PPX Y
;PPY Z
varQQ 
contextQQ 
=QQ 
newQQ !
NetworkContextQQ" 0
{RR 
SenderIdSS 
=SS 
NetworkManagerSS -
.SS- .
ServerClientIdSS. <
,SS< =
	TimestampTT 
=TT 
TimeTT  $
.TT$ % 
realtimeSinceStartupTT% 9
,TT9 :
SystemOwnerUU 
=UU  !
NetworkManagerUU" 0
,UU0 1
HeaderXX 
=XX 
newXX  

(XX. /
)XX/ 0
,XX0 1 
SerializedHeaderSizeYY (
=YY) *
$numYY+ ,
,YY, -
MessageSizeZZ 
=ZZ  !
$numZZ" #
}[[ 
;[[ 
serverRpcMessage\\  
.\\  !

ReadBuffer\\! +
=\\, -

tempBuffer\\. 8
;\\8 9
serverRpcMessage]]  
.]]  !
Handle]]! '
(]]' (
ref]]( +
context]], 3
)]]3 4
;]]4 5
rpcWriteSize^^ 
=^^ 

tempBuffer^^ )
.^^) *
Length^^* 0
;^^0 1
}__ 
else`` 
{aa 
rpcWriteSizebb 
=bb 
NetworkManagerbb -
.bb- .
SendMessagebb. 9
(bb9 :
refbb: =
serverRpcMessagebb> N
,bbN O
networkDeliverybbP _
,bb_ `
NetworkManagerbba o
.bbo p
ServerClientIdbbp ~
)bb~ 
;	bb �
}cc 
bufferWriteree 
.ee 
Disposeee  
(ee  !
)ee! "
;ee" #
ifhh 
(hh 
NetworkManagerhh 
.hh 
__rpc_name_tablehh /
.hh/ 0
TryGetValuehh0 ;
(hh; <
rpcMethodIdhh< G
,hhG H
outhhI L
varhhM P

)hh^ _
)hh_ `
{ii 
NetworkManagerjj 
.jj 
NetworkMetricsjj -
.jj- .
TrackRpcSentjj. :
(jj: ;
NetworkManagerkk "
.kk" #
ServerClientIdkk# 1
,kk1 2

,ll! "

,mm! "

(nn! "
)nn" #
,nn# $
rpcWriteSizeoo  
)oo  !
;oo! "
}pp 
}rr 	
internalvv 
FastBufferWritervv ! 
__beginSendClientRpcvv" 6
(vv6 7
uintvv7 ;
rpcMethodIdvv< G
,vvG H
ClientRpcParamsvvI X
clientRpcParamsvvY h
,vvh i
RpcDeliveryvvj u
rpcDelivery	vvv �
)
vv� �
{xx 	
returnyy 
newyy 
FastBufferWriteryy '
(yy' (#
k_RpcMessageDefaultSizeyy( ?
,yy? @
	AllocatoryyA J
.yyJ K
TempyyK O
,yyO P#
k_RpcMessageMaximumSizeyyQ h
)yyh i
;yyi j
}zz 	
internal~~ 
void~~ 
__endSendClientRpc~~ (
(~~( )
ref~~) ,
FastBufferWriter~~- =
bufferWriter~~> J
,~~J K
uint~~L P
rpcMethodId~~Q \
,~~\ ]
ClientRpcParams~~^ m
clientRpcParams~~n }
,~~} ~
RpcDelivery	~~ �
rpcDelivery
~~� �
)
~~� �
{
�� 	
var
�� 
clientRpcMessage
��  
=
��! "
new
��# &
ClientRpcMessage
��' 7
{
�� 
Metadata
�� 
=
�� 
new
�� 
RpcMetadata
�� *
{
�� 
NetworkObjectId
�� #
=
��$ %
NetworkObjectId
��& 5
,
��5 6 
NetworkBehaviourId
�� &
=
��' ( 
NetworkBehaviourId
��) ;
,
��; < 
NetworkRpcMethodId
�� &
=
��' (
rpcMethodId
��) 4
,
��4 5
}
�� 
,
�� 
WriteBuffer
�� 
=
�� 
bufferWriter
�� *
}
�� 
;
��
NetworkDelivery
�� 
networkDelivery
�� +
;
��+ ,
switch
�� 
(
�� 
rpcDelivery
�� 
)
��  
{
�� 
default
�� 
:
�� 
case
�� 
RpcDelivery
��  
.
��  !
Reliable
��! )
:
��) *
networkDelivery
�� #
=
��$ %
NetworkDelivery
��& 5
.
��5 6)
ReliableFragmentedSequenced
��6 Q
;
��Q R
break
�� 
;
�� 
case
�� 
RpcDelivery
��  
.
��  !

Unreliable
��! +
:
��+ ,
if
�� 
(
�� 
bufferWriter
�� $
.
��$ %
Length
��% +
>
��, -
MessagingSystem
��. =
.
��= >-
NON_FRAGMENTED_MESSAGE_MAX_SIZE
��> ]
)
��] ^
{
�� 
throw
�� 
new
�� !
OverflowException
��" 3
(
��3 4
$str
��4 k
)
��k l
;
��l m
}
�� 
networkDelivery
�� #
=
��$ %
NetworkDelivery
��& 5
.
��5 6

Unreliable
��6 @
;
��@ A
break
�� 
;
�� 
}
�� 
var
�� 
rpcWriteSize
�� 
=
�� 
$num
��  
;
��  !
bool
�� 
shouldSendToHost
�� !
=
��" #
false
��$ )
;
��) *
if
�� 
(
�� 
clientRpcParams
�� 
.
��  
Send
��  $
.
��$ %
TargetClientIds
��% 4
!=
��5 7
null
��8 <
)
��< =
{
�� 
foreach
�� 
(
�� 
var
�� 
targetClientId
�� +
in
��, .
clientRpcParams
��/ >
.
��> ?
Send
��? C
.
��C D
TargetClientIds
��D S
)
��S T
{
�� 
if
�� 
(
�� 
targetClientId
�� &
==
��' )
NetworkManager
��* 8
.
��8 9
ServerClientId
��9 G
)
��G H
{
�� 
shouldSendToHost
�� (
=
��) *
true
��+ /
;
��/ 0
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
NetworkManager
�� &
.
��& '
LogLevel
��' /
>=
��0 2
LogLevel
��3 ;
.
��; <
Error
��< A
&&
��B D
!
��E F

��F S
.
��S T
	Observers
��T ]
.
��] ^
Contains
��^ f
(
��f g
targetClientId
��g u
)
��u v
)
��v w
{
�� 

NetworkLog
�� "
.
��" #
LogError
��# +
(
��+ ,*
GenerateObserverErrorMessage
��, H
(
��H I
clientRpcParams
��I X
,
��X Y
targetClientId
��Z h
)
��h i
)
��i j
;
��j k
}
�� 
}
�� 
rpcWriteSize
�� 
=
�� 
NetworkManager
�� -
.
��- .
SendMessage
��. 9
(
��9 :
ref
��: =
clientRpcMessage
��> N
,
��N O
networkDelivery
��P _
,
��_ `
in
��a c
clientRpcParams
��d s
.
��s t
Send
��t x
.
��x y
TargetClientIds��y �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 
clientRpcParams
�� $
.
��$ %
Send
��% )
.
��) *(
TargetClientIdsNativeArray
��* D
!=
��E G
null
��H L
)
��L M
{
�� 
foreach
�� 
(
�� 
var
�� 
targetClientId
�� +
in
��, .
clientRpcParams
��/ >
.
��> ?
Send
��? C
.
��C D(
TargetClientIdsNativeArray
��D ^
)
��^ _
{
�� 
if
�� 
(
�� 
targetClientId
�� &
==
��' )
NetworkManager
��* 8
.
��8 9
ServerClientId
��9 G
)
��G H
{
�� 
shouldSendToHost
�� (
=
��) *
true
��+ /
;
��/ 0
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
NetworkManager
�� &
.
��& '
LogLevel
��' /
>=
��0 2
LogLevel
��3 ;
.
��; <
Error
��< A
&&
��B D
!
��E F

��F S
.
��S T
	Observers
��T ]
.
��] ^
Contains
��^ f
(
��f g
targetClientId
��g u
)
��u v
)
��v w
{
�� 

NetworkLog
�� "
.
��" #
LogError
��# +
(
��+ ,*
GenerateObserverErrorMessage
��, H
(
��H I
clientRpcParams
��I X
,
��X Y
targetClientId
��Z h
)
��h i
)
��i j
;
��j k
}
�� 
}
�� 
rpcWriteSize
�� 
=
�� 
NetworkManager
�� -
.
��- .
SendMessage
��. 9
(
��9 :
ref
��: =
clientRpcMessage
��> N
,
��N O
networkDelivery
��P _
,
��_ `
clientRpcParams
��a p
.
��p q
Send
��q u
.
��u v)
TargetClientIdsNativeArray��v �
.��� �
Value��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
var
��  
observerEnumerator
�� &
=
��' (

��) 6
.
��6 7
	Observers
��7 @
.
��@ A

��A N
(
��N O
)
��O P
;
��P Q
while
�� 
(
��  
observerEnumerator
�� )
.
��) *
MoveNext
��* 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
if
�� 
(
�� 
IsHost
�� 
&&
�� ! 
observerEnumerator
��" 4
.
��4 5
Current
��5 <
==
��= ?
NetworkManager
��@ N
.
��N O

��O \
)
��\ ]
{
�� 
shouldSendToHost
�� (
=
��) *
true
��+ /
;
��/ 0
continue
��  
;
��  !
}
�� 
rpcWriteSize
��  
=
��! "
NetworkManager
��# 1
.
��1 2
MessagingSystem
��2 A
.
��A B
SendMessage
��B M
(
��M N
ref
��N Q
clientRpcMessage
��R b
,
��b c
networkDelivery
��d s
,
��s t!
observerEnumerator��u �
.��� �
Current��� �
)��� �
;��� �
}
�� 
}
�� 
if
�� 
(
�� 
shouldSendToHost
��  
)
��  !
{
�� 
using
�� 
var
�� 

tempBuffer
�� $
=
��% &
new
��' *
FastBufferReader
��+ ;
(
��; <
bufferWriter
��< H
,
��H I
	Allocator
��J S
.
��S T
Temp
��T X
)
��X Y
;
��Y Z
var
�� 
context
�� 
=
�� 
new
�� !
NetworkContext
��" 0
{
�� 
SenderId
�� 
=
�� 
NetworkManager
�� -
.
��- .
ServerClientId
��. <
,
��< =
	Timestamp
�� 
=
�� 
Time
��  $
.
��$ %"
realtimeSinceStartup
��% 9
,
��9 :
SystemOwner
�� 
=
��  !
NetworkManager
��" 0
,
��0 1
Header
�� 
=
�� 
new
��  

��! .
(
��. /
)
��/ 0
,
��0 1"
SerializedHeaderSize
�� (
=
��) *
$num
��+ ,
,
��, -
MessageSize
�� 
=
��  !
$num
��" #
}
�� 
;
�� 
clientRpcMessage
��  
.
��  !

ReadBuffer
��! +
=
��, -

tempBuffer
��. 8
;
��8 9
clientRpcMessage
��  
.
��  !
Handle
��! '
(
��' (
ref
��( +
context
��, 3
)
��3 4
;
��4 5
}
�� 
bufferWriter
�� 
.
�� 
Dispose
��  
(
��  !
)
��! "
;
��" #
if
�� 
(
�� 
NetworkManager
�� 
.
�� 
__rpc_name_table
�� /
.
��/ 0
TryGetValue
��0 ;
(
��; <
rpcMethodId
��< G
,
��G H
out
��I L
var
��M P

��Q ^
)
��^ _
)
��_ `
{
�� 
foreach
�� 
(
�� 
var
�� 
client
�� #
in
��$ &
NetworkManager
��' 5
.
��5 6
ConnectedClients
��6 F
)
��F G
{
�� 
NetworkManager
�� "
.
��" #
NetworkMetrics
��# 1
.
��1 2
TrackRpcSent
��2 >
(
��> ?
client
�� 
.
�� 
Key
�� "
,
��" #

�� %
,
��% &

�� %
,
��% &

�� %
(
��% &
)
��& '
,
��' (
rpcWriteSize
�� $
)
��$ %
;
��% &
}
�� 
}
�� 
}
�� 	
internal
�� 
string
�� *
GenerateObserverErrorMessage
�� 4
(
��4 5
ClientRpcParams
��5 D
clientRpcParams
��E T
,
��T U
ulong
��V [
targetClientId
��\ j
)
��j k
{
�� 	
var
�� $
containerNameHoldingId
�� &
=
��' (
clientRpcParams
��) 8
.
��8 9
Send
��9 =
.
��= >
TargetClientIds
��> M
!=
��N P
null
��Q U
?
��V W
nameof
��X ^
(
��^ _
ClientRpcParams
��_ n
.
��n o
Send
��o s
.
��s t
TargetClientIds��t �
)��� �
:��� �
nameof��� �
(��� �
ClientRpcParams��� �
.��� �
Send��� �
.��� �*
TargetClientIdsNativeArray��� �
)��� �
;��� �
return
�� 
$"
�� 
$str
�� 8
{
��8 9$
containerNameHoldingId
��9 O
}
��O P
$str
��P c
{
��c d
targetClientId
��d r
}
��r s
$str��s �
"��� �
;��� �
}
�� 	
public
�� 
NetworkManager
�� 
NetworkManager
�� ,
=>
��- /

��0 =
.
��= >
NetworkManager
��> L
;
��L M
public
�� 
bool
�� 

�� !
{
��" #
get
��$ '
;
��' (
private
��) 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
bool
�� 
IsOwner
�� 
{
�� 
get
�� !
;
��! "
internal
��# +
set
��, /
;
��/ 0
}
��1 2
	protected
�� 
bool
�� 
IsServer
�� 
{
��  !
get
��" %
;
��% &
private
��' .
set
��/ 2
;
��2 3
}
��4 5
	protected
�� 
bool
�� 
IsClient
�� 
{
��  !
get
��" %
;
��% &
private
��' .
set
��/ 2
;
��2 3
}
��4 5
	protected
�� 
bool
�� 
IsHost
�� 
{
�� 
get
��  #
;
��# $
private
��% ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
bool
�� 
IsOwnedByServer
�� #
{
��$ %
get
��& )
;
��) *
internal
��+ 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
bool
�� 
	IsSpawned
�� 
{
�� 
get
��  #
;
��# $
internal
��% -
set
��. 1
;
��1 2
}
��3 4
internal
�� 
bool
�� !
IsBehaviourEditable
�� )
(
��) *
)
��* +
{
�� 	
return
�� 
!
�� 
m_NetworkObject
�� #
||
��$ &
m_NetworkObject
�� 
.
��  
NetworkManager
��  .
==
��/ 1
null
��2 6
||
��7 9
m_NetworkObject
�� 
.
��  
NetworkManager
��  .
.
��. /
IsListening
��/ :
==
��; =
false
��> C
||
��D F
m_NetworkObject
�� 
.
��  
NetworkManager
��  .
.
��. /
IsServer
��/ 7
;
��7 8
}
�� 	
public
�� 

�� 

�� *
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
m_NetworkObject
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
m_NetworkObject
�� #
=
��$ %"
GetComponentInParent
��& :
<
��: ;

��; H
>
��H I
(
��I J
)
��J K
;
��K L
}
�� 
if
�� 
(
�� 
m_NetworkObject
�� #
==
��$ &
null
��' +
&&
��, .
(
��/ 0
NetworkManager
��0 >
.
��> ?
	Singleton
��? H
==
��I K
null
��L P
||
��Q S
!
��T U
NetworkManager
��U c
.
��c d
	Singleton
��d m
.
��m n!
ShutdownInProgress��n �
)��� �
)��� �
{
�� 
if
�� 
(
�� 

NetworkLog
�� "
.
��" #
CurrentLogLevel
��# 2
<=
��3 5
LogLevel
��6 >
.
��> ?
Normal
��? E
)
��E F
{
�� 

NetworkLog
�� "
.
��" #

LogWarning
��# -
(
��- .
$"
��. 0
$str
��0 >
{
��> ?
nameof
��? E
(
��E F

��F S
)
��S T
}
��T U
$str
��U ^
{
��^ _
nameof
��_ e
(
��e f
NetworkBehaviour
��f v
)
��v w
}
��w x
$str��x �
{��� �
nameof��� �
(��� �

)��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
}
�� 
return
�� 
m_NetworkObject
�� &
;
��& '
}
�� 
}
�� 	
public
�� 
bool
�� 
HasNetworkObject
�� $
=>
��% '

��( 5
!=
��6 8
null
��9 =
;
��= >
private
�� 

�� 
m_NetworkObject
�� -
=
��. /
null
��0 4
;
��4 5
public
�� 
ulong
�� 
NetworkObjectId
�� $
{
��% &
get
��' *
;
��* +
internal
��, 4
set
��5 8
;
��8 9
}
��: ;
public
�� 
ushort
��  
NetworkBehaviourId
�� (
{
��) *
get
��+ .
;
��. /
internal
��0 8
set
��9 <
;
��< =
}
��> ?
internal
�� 
ushort
�� %
NetworkBehaviourIdCache
�� /
=
��0 1
$num
��2 3
;
��3 4
	protected
�� 
NetworkBehaviour
�� "!
GetNetworkBehaviour
��# 6
(
��6 7
ushort
��7 =
behaviourId
��> I
)
��I J
{
�� 	
return
�� 

��  
.
��  !-
GetNetworkBehaviourAtOrderIndex
��! @
(
��@ A
behaviourId
��A L
)
��L M
;
��M N
}
�� 	
public
�� 
ulong
�� 

�� "
{
��# $
get
��% (
;
��( )
internal
��* 2
set
��3 6
;
��6 7
}
��8 9
internal
�� 
void
�� %
UpdateNetworkProperties
�� -
(
��- .
)
��. /
{
�� 	
if
�� 
(
�� 

�� 
!=
��  
null
��! %
)
��% &
{
�� 
NetworkObjectId
�� 
=
��  !

��" /
.
��/ 0
NetworkObjectId
��0 ?
;
��? @

�� 
=
�� 

��  -
.
��- .

��. ;
;
��; < 
NetworkBehaviourId
�� "
=
��# $

��% 2
.
��2 3+
GetNetworkBehaviourOrderIndex
��3 P
(
��P Q
this
��Q U
)
��U V
;
��V W
IsOwnedByServer
�� 
=
��  !

��" /
.
��/ 0
IsOwnedByServer
��0 ?
;
��? @
IsOwner
�� 
=
�� 

�� '
.
��' (
IsOwner
��( /
;
��/ 0

�� 
=
�� 

��  -
.
��- .

��. ;
;
��; <
if
�� 
(
�� 
NetworkManager
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
IsHost
�� 
=
�� 
NetworkManager
�� +
.
��+ ,
IsListening
��, 7
&&
��8 :
NetworkManager
��; I
.
��I J
IsHost
��J P
;
��P Q
IsClient
�� 
=
�� 
NetworkManager
�� -
.
��- .
IsListening
��. 9
&&
��: <
NetworkManager
��= K
.
��K L
IsClient
��L T
;
��T U
IsServer
�� 
=
�� 
NetworkManager
�� -
.
��- .
IsListening
��. 9
&&
��: <
NetworkManager
��= K
.
��K L
IsServer
��L T
;
��T U
}
�� 
}
�� 
else
�� 
{
�� 

�� 
=
�� 
NetworkObjectId
��  /
=
��0 1
default
��2 9
;
��9 :
IsOwnedByServer
�� 
=
��  !
IsOwner
��" )
=
��* +
IsHost
��, 2
=
��3 4
IsClient
��5 =
=
��> ?
IsServer
��@ H
=
��I J
default
��K R
;
��R S 
NetworkBehaviourId
�� "
=
��# $
default
��% ,
;
��, -
}
�� 
}
�� 	
public
�� 
virtual
�� 
void
�� 
OnNetworkSpawn
�� *
(
��* +
)
��+ ,
{
��- .
}
��/ 0
public
�� 
virtual
�� 
void
�� 
OnNetworkDespawn
�� ,
(
��, -
)
��- .
{
��/ 0
}
��1 2
internal
�� 
void
�� $
InternalOnNetworkSpawn
�� ,
(
��, -
)
��- .
{
�� 	
	IsSpawned
�� 
=
�� 
true
�� 
;
�� !
InitializeVariables
�� 
(
��  
)
��  !
;
��! "%
UpdateNetworkProperties
�� #
(
��# $
)
��$ %
;
��% &
OnNetworkSpawn
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� &
InternalOnNetworkDespawn
�� .
(
��. /
)
��/ 0
{
�� 	
	IsSpawned
�� 
=
�� 
false
�� 
;
�� %
UpdateNetworkProperties
�� #
(
��# $
)
��$ %
;
��% &
OnNetworkDespawn
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
void
�� 
OnGainedOwnership
�� -
(
��- .
)
��. /
{
��0 1
}
��2 3
internal
�� 
void
�� '
InternalOnGainedOwnership
�� /
(
��/ 0
)
��0 1
{
�� 	%
UpdateNetworkProperties
�� #
(
��# $
)
��$ %
;
��% &
OnGainedOwnership
�� 
(
�� 
)
�� 
;
��  
}
�� 	
public
�� 
virtual
�� 
void
�� 
OnLostOwnership
�� +
(
��+ ,
)
��, -
{
��. /
}
��0 1
internal
�� 
void
�� %
InternalOnLostOwnership
�� -
(
��- .
)
��. /
{
�� 	%
UpdateNetworkProperties
�� #
(
��# $
)
��$ %
;
��% &
OnLostOwnership
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
virtual
�� 
void
�� *
OnNetworkObjectParentChanged
�� 8
(
��8 9

��9 F!
parentNetworkObject
��G Z
)
��Z [
{
��\ ]
}
��^ _
private
�� 
bool
�� 
	m_VarInit
�� 
=
��  
false
��! &
;
��& '
private
�� 
readonly
�� 
List
�� 
<
�� 
HashSet
�� %
<
��% &
int
��& )
>
��) *
>
��* +4
&m_DeliveryMappedNetworkVariableIndices
��, R
=
��S T
new
��U X
List
��Y ]
<
��] ^
HashSet
��^ e
<
��e f
int
��f i
>
��i j
>
��j k
(
��k l
)
��l m
;
��m n
private
�� 
readonly
�� 
List
�� 
<
�� 
NetworkDelivery
�� -
>
��- .5
'm_DeliveryTypesForNetworkVariableGroups
��/ V
=
��W X
new
��Y \
List
��] a
<
��a b
NetworkDelivery
��b q
>
��q r
(
��r s
)
��s t
;
��t u
internal
�� 
readonly
�� 
List
�� 
<
�� !
NetworkVariableBase
�� 2
>
��2 3#
NetworkVariableFields
��4 I
=
��J K
new
��L O
List
��P T
<
��T U!
NetworkVariableBase
��U h
>
��h i
(
��i j
)
��j k
;
��k l
private
�� 
static
�� 

Dictionary
�� !
<
��! "
Type
��" &
,
��& '
	FieldInfo
��( 1
[
��1 2
]
��2 3
>
��3 4
s_FieldTypes
��5 A
=
��B C
new
��D G

Dictionary
��H R
<
��R S
Type
��S W
,
��W X
	FieldInfo
��Y b
[
��b c
]
��c d
>
��d e
(
��e f
)
��f g
;
��g h
private
�� 
static
�� 
	FieldInfo
��  
[
��  !
]
��! "!
GetFieldInfoForType
��# 6
(
��6 7
Type
��7 ;
type
��< @
)
��@ A
{
�� 	
if
�� 
(
�� 
!
�� 
s_FieldTypes
�� 
.
�� 
ContainsKey
�� )
(
��) *
type
��* .
)
��. /
)
��/ 0
{
�� 
s_FieldTypes
�� 
.
�� 
Add
��  
(
��  !
type
��! %
,
��% &*
GetFieldInfoForTypeRecursive
��' C
(
��C D
type
��D H
)
��H I
)
��I J
;
��J K
}
�� 
return
�� 
s_FieldTypes
�� 
[
��  
type
��  $
]
��$ %
;
��% &
}
�� 	
private
�� 
static
�� 
	FieldInfo
��  
[
��  !
]
��! "*
GetFieldInfoForTypeRecursive
��# ?
(
��? @
Type
��@ D
type
��E I
,
��I J
List
��K O
<
��O P
	FieldInfo
��P Y
>
��Y Z
list
��[ _
=
��` a
null
��b f
)
��f g
{
�� 	
if
�� 
(
�� 
list
�� 
==
�� 
null
�� 
)
�� 
{
�� 
list
�� 
=
�� 
new
�� 
List
�� 
<
��  
	FieldInfo
��  )
>
��) *
(
��* +
)
��+ ,
;
��, -
list
�� 
.
�� 
AddRange
�� 
(
�� 
type
�� "
.
��" #
	GetFields
��# ,
(
��, -
BindingFlags
��- 9
.
��9 :
Public
��: @
|
��A B
BindingFlags
��C O
.
��O P
	NonPublic
��P Y
|
��Z [
BindingFlags
��\ h
.
��h i
Instance
��i q
)
��q r
)
��r s
;
��s t
}
�� 
else
�� 
{
�� 
list
�� 
.
�� 
AddRange
�� 
(
�� 
type
�� "
.
��" #
	GetFields
��# ,
(
��, -
BindingFlags
��- 9
.
��9 :
	NonPublic
��: C
|
��D E
BindingFlags
��F R
.
��R S
Instance
��S [
)
��[ \
)
��\ ]
;
��] ^
}
�� 
if
�� 
(
�� 
type
�� 
.
�� 
BaseType
�� 
!=
��  
null
��! %
&&
��& (
type
��) -
.
��- .
BaseType
��. 6
!=
��7 9
typeof
��: @
(
��@ A
NetworkBehaviour
��A Q
)
��Q R
)
��R S
{
�� 
return
�� *
GetFieldInfoForTypeRecursive
�� 3
(
��3 4
type
��4 8
.
��8 9
BaseType
��9 A
,
��A B
list
��C G
)
��G H
;
��H I
}
�� 
return
�� 
list
�� 
.
�� 
OrderBy
�� 
(
��  
x
��  !
=>
��" $
x
��% &
.
��& '
Name
��' +
,
��+ ,
StringComparer
��- ;
.
��; <
Ordinal
��< C
)
��C D
.
��D E
ToArray
��E L
(
��L M
)
��M N
;
��N O
}
�� 	
internal
�� 
void
�� !
InitializeVariables
�� )
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� 
	m_VarInit
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
	m_VarInit
�� 
=
�� 
true
�� 
;
�� 
var
�� 
sortedFields
�� 
=
�� !
GetFieldInfoForType
�� 2
(
��2 3
GetType
��3 :
(
��: ;
)
��; <
)
��< =
;
��= >
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
sortedFields
��  ,
.
��, -
Length
��- 3
;
��3 4
i
��5 6
++
��6 8
)
��8 9
{
�� 
var
�� 
	fieldType
�� 
=
�� 
sortedFields
��  ,
[
��, -
i
��- .
]
��. /
.
��/ 0
	FieldType
��0 9
;
��9 :
if
�� 
(
�� 
	fieldType
�� 
.
�� 
IsSubclassOf
�� *
(
��* +
typeof
��+ 1
(
��1 2!
NetworkVariableBase
��2 E
)
��E F
)
��F G
)
��G H
{
�� 
var
�� 
instance
��  
=
��! "
(
��# $!
NetworkVariableBase
��$ 7
)
��7 8
sortedFields
��8 D
[
��D E
i
��E F
]
��F G
.
��G H
GetValue
��H P
(
��P Q
this
��Q U
)
��U V
;
��V W
if
�� 
(
�� 
instance
��  
==
��! #
null
��$ (
)
��( )
{
�� 
throw
�� 
new
�� !
	Exception
��" +
(
��+ ,
$"
��, .
{
��. /
GetType
��/ 6
(
��6 7
)
��7 8
.
��8 9
FullName
��9 A
}
��A B
$str
��B C
{
��C D
sortedFields
��D P
[
��P Q
i
��Q R
]
��R S
.
��S T
Name
��T X
}
��X Y
$str
��Y n
{
��n o
nameof
��o u
(
��u v"
NetworkVariableBase��v �
)��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
instance
�� 
.
�� 

Initialize
�� '
(
��' (
this
��( ,
)
��, -
;
��- .
var
�� "
instanceNameProperty
�� ,
=
��- .
	fieldType
��/ 8
.
��8 9
GetProperty
��9 D
(
��D E
nameof
��E K
(
��K L!
NetworkVariableBase
��L _
.
��_ `
Name
��` d
)
��d e
)
��e f
;
��f g
var
�� #
sanitizedVariableName
�� -
=
��. /
sortedFields
��0 <
[
��< =
i
��= >
]
��> ?
.
��? @
Name
��@ D
.
��D E
Replace
��E L
(
��L M
$str
��M P
,
��P Q
string
��R X
.
��X Y
Empty
��Y ^
)
��^ _
.
��_ `
Replace
��` g
(
��g h
$str
��h z
,
��z {
string��| �
.��� �
Empty��� �
)��� �
;��� �"
instanceNameProperty
�� (
?
��( )
.
��) *
SetValue
��* 2
(
��2 3
instance
��3 ;
,
��; <#
sanitizedVariableName
��= R
)
��R S
;
��S T#
NetworkVariableFields
�� )
.
��) *
Add
��* -
(
��- .
instance
��. 6
)
��6 7
;
��7 8
}
�� 
}
�� 
{
�� 
var
�� 
firstLevelIndex
�� #
=
��$ %
new
��& )

Dictionary
��* 4
<
��4 5
NetworkDelivery
��5 D
,
��D E
int
��F I
>
��I J
(
��J K
)
��K L
;
��L M
int
��  
secondLevelCounter
�� &
=
��' (
$num
��) *
;
��* +
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" ##
NetworkVariableFields
��$ 9
.
��9 :
Count
��: ?
;
��? @
i
��A B
++
��B D
)
��D E
{
�� 
var
�� 
networkDelivery
�� '
=
��( )!
NetworkVariableBase
��* =
.
��= >
Delivery
��> F
;
��F G
if
�� 
(
�� 
!
�� 
firstLevelIndex
�� (
.
��( )
ContainsKey
��) 4
(
��4 5
networkDelivery
��5 D
)
��D E
)
��E F
{
�� 
firstLevelIndex
�� '
.
��' (
Add
��( +
(
��+ ,
networkDelivery
��, ;
,
��; < 
secondLevelCounter
��= O
)
��O P
;
��P Q5
'm_DeliveryTypesForNetworkVariableGroups
�� ?
.
��? @
Add
��@ C
(
��C D
networkDelivery
��D S
)
��S T
;
��T U 
secondLevelCounter
�� *
++
��* ,
;
��, -
}
�� 
if
�� 
(
�� 
firstLevelIndex
�� '
[
��' (
networkDelivery
��( 7
]
��7 8
>=
��9 ;4
&m_DeliveryMappedNetworkVariableIndices
��< b
.
��b c
Count
��c h
)
��h i
{
�� 4
&m_DeliveryMappedNetworkVariableIndices
�� >
.
��> ?
Add
��? B
(
��B C
new
��C F
HashSet
��G N
<
��N O
int
��O R
>
��R S
(
��S T
)
��T U
)
��U V
;
��V W
}
�� 4
&m_DeliveryMappedNetworkVariableIndices
�� :
[
��: ;
firstLevelIndex
��; J
[
��J K
networkDelivery
��K Z
]
��Z [
]
��[ \
.
��\ ]
Add
��] `
(
��` a
i
��a b
)
��b c
;
��c d
}
�� 
}
�� 
}
�� 	
internal
�� 
void
�� %
PreNetworkVariableWrite
�� -
(
��- .
)
��. /
{
�� 	+
NetworkVariableIndexesToReset
�� )
.
��) *
Clear
��* /
(
��/ 0
)
��0 1
;
��1 2.
 NetworkVariableIndexesToResetSet
�� ,
.
��, -
Clear
��- 2
(
��2 3
)
��3 4
;
��4 5
}
�� 	
internal
�� 
void
�� &
PostNetworkVariableWrite
�� .
(
��. /
)
��/ 0
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� +
NetworkVariableIndexesToReset
��  =
.
��= >
Count
��> C
;
��C D
i
��E F
++
��F H
)
��H I
{
�� 
NetworkVariableFields
�� %
[
��% &+
NetworkVariableIndexesToReset
��& C
[
��C D
i
��D E
]
��E F
]
��F G
.
��G H

ResetDirty
��H R
(
��R S
)
��S T
;
��T U
}
�� 
}
�� 	
internal
�� 
void
�� 
VariableUpdate
�� $
(
��$ %
ulong
��% *
targetClientId
��+ 9
)
��9 :
{
�� 	
if
�� 
(
�� 
!
�� 
	m_VarInit
�� 
)
�� 
{
�� 
InitializeVariables
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
PreNetworkVariableWrite
�� #
(
��# $
)
��$ %
;
��% &#
NetworkVariableUpdate
�� !
(
��! "
targetClientId
��" 0
,
��0 1 
NetworkBehaviourId
��2 D
)
��D E
;
��E F
}
�� 	
internal
�� 
readonly
�� 
List
�� 
<
�� 
int
�� "
>
��" #+
NetworkVariableIndexesToReset
��$ A
=
��B C
new
��D G
List
��H L
<
��L M
int
��M P
>
��P Q
(
��Q R
)
��R S
;
��S T
internal
�� 
readonly
�� 
HashSet
�� !
<
��! "
int
��" %
>
��% &.
 NetworkVariableIndexesToResetSet
��' G
=
��H I
new
��J M
HashSet
��N U
<
��U V
int
��V Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ]
private
�� 
void
�� #
NetworkVariableUpdate
�� *
(
��* +
ulong
��+ 0
targetClientId
��1 ?
,
��? @
int
��A D
behaviourIndex
��E S
)
��S T
{
�� 	
if
�� 
(
�� 
!
�� ,
CouldHaveDirtyNetworkVariables
�� /
(
��/ 0
)
��0 1
)
��1 2
{
�� 
return
�� 
;
�� 
}
�� 
for
�� 
(
�� 
int
�� 
j
�� 
=
�� 
$num
�� 
;
�� 
j
�� 
<
�� 4
&m_DeliveryMappedNetworkVariableIndices
��  F
.
��F G
Count
��G L
;
��L M
j
��N O
++
��O Q
)
��Q R
{
�� 
var
�� 

shouldSend
�� 
=
��  
false
��! &
;
��& '
for
�� 
(
�� 
int
�� 
k
�� 
=
�� 
$num
�� 
;
�� 
k
��  !
<
��" ##
NetworkVariableFields
��$ 9
.
��9 :
Count
��: ?
;
��? @
k
��A B
++
��B D
)
��D E
{
�� 
var
�� 
networkVariable
�� '
=
��( )#
NetworkVariableFields
��* ?
[
��? @
k
��@ A
]
��A B
;
��B C
if
�� 
(
�� 
networkVariable
�� '
.
��' (
IsDirty
��( /
(
��/ 0
)
��0 1
&&
��2 4
networkVariable
��5 D
.
��D E

��E R
(
��R S
targetClientId
��S a
)
��a b
)
��b c
{
�� 

shouldSend
�� "
=
��# $
true
��% )
;
��) *
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 

shouldSend
�� 
)
�� 
{
�� 
var
�� 
message
�� 
=
��  !
new
��" %)
NetworkVariableDeltaMessage
��& A
{
�� 
NetworkObjectId
�� '
=
��( )
NetworkObjectId
��* 9
,
��9 :#
NetworkBehaviourIndex
�� -
=
��. /

��0 =
.
��= >+
GetNetworkBehaviourOrderIndex
��> [
(
��[ \
this
��\ `
)
��` a
,
��a b
NetworkBehaviour
�� (
=
��) *
this
��+ /
,
��/ 0
TargetClientId
�� &
=
��' (
targetClientId
��) 7
,
��7 80
"DeliveryMappedNetworkVariableIndex
�� :
=
��; <4
&m_DeliveryMappedNetworkVariableIndices
��= c
[
��c d
j
��d e
]
��e f
}
�� 
;
�� 
if
�� 
(
�� 
IsServer
��  
&&
��! #
targetClientId
��$ 2
==
��3 5
NetworkManager
��6 D
.
��D E
ServerClientId
��E S
)
��S T
{
�� 
var
�� 
	tmpWriter
�� %
=
��& '
new
��( +
FastBufferWriter
��, <
(
��< =
MessagingSystem
��= L
.
��L M-
NON_FRAGMENTED_MESSAGE_MAX_SIZE
��M l
,
��l m
	Allocator
��n w
.
��w x
Temp
��x |
,
��| }
MessagingSystem��~ �
.��� �+
FRAGMENTED_MESSAGE_MAX_SIZE��� �
)��� �
;��� �
using
�� 
(
�� 
	tmpWriter
�� (
)
��( )
{
�� 
message
�� #
.
��# $
	Serialize
��$ -
(
��- .
	tmpWriter
��. 7
)
��7 8
;
��8 9
}
�� 
}
�� 
else
�� 
{
�� 
NetworkManager
�� &
.
��& '
SendMessage
��' 2
(
��2 3
ref
��3 6
message
��7 >
,
��> ?5
'm_DeliveryTypesForNetworkVariableGroups
��@ g
[
��g h
j
��h i
]
��i j
,
��j k
targetClientId
��l z
)
��z {
;
��{ |
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
bool
�� ,
CouldHaveDirtyNetworkVariables
�� 3
(
��3 4
)
��4 5
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� #
NetworkVariableFields
��  5
.
��5 6
Count
��6 ;
;
��; <
i
��= >
++
��> @
)
��@ A
{
�� 
if
�� 
(
�� #
NetworkVariableFields
�� )
[
��) *
i
��* +
]
��+ ,
.
��, -
IsDirty
��- 4
(
��4 5
)
��5 6
)
��6 7
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
internal
�� 
void
��  
MarkVariablesDirty
�� (
(
��( )
)
��) *
{
�� 	
for
�� 
(
�� 
int
�� 
j
�� 
=
�� 
$num
�� 
;
�� 
j
�� 
<
�� #
NetworkVariableFields
��  5
.
��5 6
Count
��6 ;
;
��; <
j
��= >
++
��> @
)
��@ A
{
�� 
NetworkVariableFields
�� %
[
��% &
j
��& '
]
��' (
.
��( )
SetDirty
��) 1
(
��1 2
true
��2 6
)
��6 7
;
��7 8
}
�� 
}
�� 	
internal
�� 
void
�� &
WriteNetworkVariableData
�� .
(
��. /
FastBufferWriter
��/ ?
writer
��@ F
,
��F G
ulong
��H M
targetClientId
��N \
)
��\ ]
{
�� 	
if
�� 
(
�� #
NetworkVariableFields
�� %
.
��% &
Count
��& +
==
��, .
$num
��/ 0
)
��0 1
{
�� 
return
�� 
;
�� 
}
�� 
for
�� 
(
�� 
int
�� 
j
�� 
=
�� 
$num
�� 
;
�� 
j
�� 
<
�� #
NetworkVariableFields
��  5
.
��5 6
Count
��6 ;
;
��; <
j
��= >
++
��> @
)
��@ A
{
�� 
bool
�� 

�� "
=
��# $#
NetworkVariableFields
��% :
[
��: ;
j
��; <
]
��< =
.
��= >

��> K
(
��K L
targetClientId
��L Z
)
��Z [
;
��[ \
if
�� 
(
�� 

�� !
)
��! "
{
�� 
var
�� 
writePos
��  
=
��! "
writer
��# )
.
��) *
Position
��* 2
;
��2 3
writer
�� 
.
�� 
WriteValueSafe
�� )
(
��) *
(
��* +
ushort
��+ 1
)
��1 2
$num
��2 3
)
��3 4
;
��4 5
var
�� 
startPos
��  
=
��! "
writer
��# )
.
��) *
Position
��* 2
;
��2 3#
NetworkVariableFields
�� )
[
��) *
j
��* +
]
��+ ,
.
��, -

WriteField
��- 7
(
��7 8
writer
��8 >
)
��> ?
;
��? @
var
�� 
size
�� 
=
�� 
writer
�� %
.
��% &
Position
��& .
-
��/ 0
startPos
��1 9
;
��9 :
writer
�� 
.
�� 
Seek
�� 
(
��  
writePos
��  (
)
��( )
;
��) *
writer
�� 
.
�� 
WriteValueSafe
�� )
(
��) *
(
��* +
ushort
��+ 1
)
��1 2
size
��2 6
)
��6 7
;
��7 8
writer
�� 
.
�� 
Seek
�� 
(
��  
startPos
��  (
+
��) *
size
��+ /
)
��/ 0
;
��0 1
}
�� 
else
�� 
{
�� 
writer
�� 
.
�� 
WriteValueSafe
�� )
(
��) *
(
��* +
ushort
��+ 1
)
��1 2
$num
��2 3
)
��3 4
;
��4 5
}
�� 
}
�� 
}
�� 	
internal
�� 
void
�� $
SetNetworkVariableData
�� ,
(
��, -
FastBufferReader
��- =
reader
��> D
)
��D E
{
�� 	
if
�� 
(
�� #
NetworkVariableFields
�� %
.
��% &
Count
��& +
==
��, .
$num
��/ 0
)
��0 1
{
�� 
return
�� 
;
�� 
}
�� 
for
�� 
(
�� 
int
�� 
j
�� 
=
�� 
$num
�� 
;
�� 
j
�� 
<
�� #
NetworkVariableFields
��  5
.
��5 6
Count
��6 ;
;
��; <
j
��= >
++
��> @
)
��@ A
{
�� 
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
ushort
��) /
varSize
��0 7
)
��7 8
;
��8 9
if
�� 
(
�� 
varSize
�� 
==
�� 
$num
��  
)
��  !
{
�� 
continue
�� 
;
�� 
}
�� 
var
�� 
readStartPos
��  
=
��! "
reader
��# )
.
��) *
Position
��* 2
;
��2 3#
NetworkVariableFields
�� %
[
��% &
j
��& '
]
��' (
.
��( )
	ReadField
��) 2
(
��2 3
reader
��3 9
)
��9 :
;
��: ;
if
�� 
(
�� 
NetworkManager
�� "
.
��" #

��# 0
.
��0 1/
!EnsureNetworkVariableLengthSafety
��1 R
)
��R S
{
�� 
if
�� 
(
�� 
reader
�� 
.
�� 
Position
�� '
>
��( )
(
��* +
readStartPos
��+ 7
+
��8 9
varSize
��: A
)
��A B
)
��B C
{
�� 
if
�� 
(
�� 

NetworkLog
�� &
.
��& '
CurrentLogLevel
��' 6
<=
��7 9
LogLevel
��: B
.
��B C
Normal
��C I
)
��I J
{
�� 

NetworkLog
�� &
.
��& '

LogWarning
��' 1
(
��1 2
$"
��2 4
$str
��4 K
{
��K L
reader
��L R
.
��R S
Position
��S [
-
��\ ]
(
��^ _
readStartPos
��_ k
+
��l m
varSize
��n u
)
��u v
}
��v w
$str
��w ~
"
��~ 
)�� �
;��� �
}
�� 
reader
�� 
.
�� 
Seek
�� #
(
��# $
readStartPos
��$ 0
+
��1 2
varSize
��3 :
)
��: ;
;
��; <
}
�� 
else
�� 
if
�� 
(
�� 
reader
�� #
.
��# $
Position
��$ ,
<
��- .
(
��/ 0
readStartPos
��0 <
+
��= >
varSize
��? F
)
��F G
)
��G H
{
�� 
if
�� 
(
�� 

NetworkLog
�� &
.
��& '
CurrentLogLevel
��' 6
<=
��7 9
LogLevel
��: B
.
��B C
Normal
��C I
)
��I J
{
�� 

NetworkLog
�� &
.
��& '

LogWarning
��' 1
(
��1 2
$"
��2 4
$str
��4 N
{
��N O
(
��O P
readStartPos
��P \
+
��] ^
varSize
��_ f
)
��f g
-
��h i
reader
��j p
.
��p q
Position
��q y
}
��y z
$str��z �
"��� �
)��� �
;��� �
}
�� 
reader
�� 
.
�� 
Seek
�� #
(
��# $
readStartPos
��$ 0
+
��1 2
varSize
��3 :
)
��: ;
;
��; <
}
�� 
}
�� 
}
�� 
}
�� 	
	protected
�� 

�� 
GetNetworkObject
��  0
(
��0 1
ulong
��1 6
	networkId
��7 @
)
��@ A
{
�� 	
return
�� 
NetworkManager
�� !
.
��! "
SpawnManager
��" .
.
��. /
SpawnedObjects
��/ =
.
��= >
TryGetValue
��> I
(
��I J
	networkId
��J S
,
��S T
out
��U X

��Y f

��g t
)
��t u
?
��v w

:��� �
null��� �
;��� �
}
�� 	
public
�� 
virtual
�� 
void
�� 
	OnDestroy
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
!
�� 
	m_VarInit
�� 
)
�� 
{
�� 
InitializeVariables
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� #
NetworkVariableFields
��  5
.
��5 6
Count
��6 ;
;
��; <
i
��= >
++
��> @
)
��@ A
{
�� 
NetworkVariableFields
�� %
[
��% &
i
��& '
]
��' (
.
��( )
Dispose
��) 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
}
�� 
}�� �
mC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Connection\PendingClient.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

class 

{ 
public 
ulong 
ClientId 
{ 
get  #
;# $
internal% -
set. 1
;1 2
}3 4
public 
State 
ConnectionState $
{% &
get' *
;* +
internal, 4
set5 8
;8 9
}: ;
public 
enum 
State 
{ 	
PendingConnection 
, 
PendingApproval 
} 	
}   
}!! �
rC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Exceptions\NotServerException.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

class 
NotServerException #
:$ %
	Exception& /
{		 
public
NotServerException
(
)
{
}
public 
NotServerException !
(! "
string" (
message) 0
)0 1
:2 3
base4 8
(8 9
message9 @
)@ A
{B C
}D E
public 
NotServerException !
(! "
string" (
message) 0
,0 1
	Exception2 ;
inner< A
)A B
:C D
baseE I
(I J
messageJ Q
,Q R
innerS X
)X Y
{Z [
}\ ]
} 
} �K
�C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\Messages\ConnectionApprovedMessage.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
struct
ConnectionApprovedMessage -
:. /
INetworkMessage0 ?
{ 
public 
ulong 

;" #
public		 
int		 
NetworkTick		 
;		 
public 
HashSet 
< 

>$ %
SpawnedObjectsList& 8
;8 9
private 
FastBufferReader  %
m_ReceivedSceneObjectData! :
;: ;
public 
void 
	Serialize 
( 
FastBufferWriter .
writer/ 5
)5 6
{ 	
if 
( 
! 
writer 
. 

(% &
sizeof& ,
(, -
ulong- 2
)2 3
+4 5
sizeof6 <
(< =
int= @
)@ A
+B C
sizeofD J
(J K
intK N
)N O
)O P
)P Q
{ 
throw 
new 
OverflowException +
(+ ,
$", .
$str. `
{` a
nameofa g
(g h&
ConnectionApprovedMessage	h �
)
� �
}
� �
"
� �
)
� �
;
� �
} 
writer 
. 

WriteValue 
( 

)+ ,
;, -
writer 
. 

WriteValue 
( 
NetworkTick )
)) *
;* +
uint 
sceneObjectCount !
=" #
$num$ %
;% &
if 
( 
SpawnedObjectsList "
!=# %
null& *
)* +
{ 
var 
pos 
= 
writer  
.  !
Position! )
;) *
writer 
. 
Seek 
( 
writer "
." #
Position# +
+, -
FastBufferWriter. >
.> ?
GetWriteSize? K
(K L
sceneObjectCountL \
)\ ]
)] ^
;^ _
foreach   
(   
var   
sobj   !
in  " $
SpawnedObjectsList  % 7
)  7 8
{!! 
if"" 
("" 
sobj"" 
."" !
CheckObjectVisibility"" 2
==""3 5
null""6 :
||""; =
sobj""> B
.""B C!
CheckObjectVisibility""C X
(""X Y

)""f g
)""g h
{## 
sobj$$ 
.$$ 
	Observers$$ &
.$$& '
Add$$' *
($$* +

)$$8 9
;$$9 :
var%% 
sceneObject%% '
=%%( )
sobj%%* .
.%%. /!
GetMessageSceneObject%%/ D
(%%D E

)%%R S
;%%S T
sceneObject&& #
.&&# $
	Serialize&&$ -
(&&- .
writer&&. 4
)&&4 5
;&&5 6
++'' 
sceneObjectCount'' *
;''* +
}(( 
})) 
writer** 
.** 
Seek** 
(** 
pos** 
)**  
;**  !
writer++ 
.++ 

WriteValue++ !
(++! "
sceneObjectCount++" 2
)++2 3
;++3 4
writer,, 
.,, 
Seek,, 
(,, 
writer,, "
.,," #
Length,,# )
),,) *
;,,* +
}-- 
else.. 
{// 
writer00 
.00 

WriteValue00 !
(00! "
sceneObjectCount00" 2
)002 3
;003 4
}11 
}22 	
public44 
bool44 
Deserialize44 
(44  
FastBufferReader44  0
reader441 7
,447 8
ref449 <
NetworkContext44= K
context44L S
)44S T
{55 	
var66 
networkManager66 
=66  
(66! "
NetworkManager66" 0
)660 1
context661 8
.668 9
SystemOwner669 D
;66D E
if77 
(77 
!77 
networkManager77 
.77  
IsClient77  (
)77( )
{88 
return99 
false99 
;99 
}:: 
if<< 
(<< 
!<< 
reader<< 
.<< 
TryBeginRead<< $
(<<$ %
sizeof<<% +
(<<+ ,
ulong<<, 1
)<<1 2
+<<3 4
sizeof<<5 ;
(<<; <
int<<< ?
)<<? @
+<<A B
sizeof<<C I
(<<I J
int<<J M
)<<M N
)<<N O
)<<O P
{== 
throw>> 
new>> 
OverflowException>> +
(>>+ ,
$">>, .
$str>>. U
{>>U V
nameof>>V \
(>>\ ]%
ConnectionApprovedMessage>>] v
)>>v w
}>>w x
">>x y
)>>y z
;>>z {
}?? 
readerAA 
.AA 
	ReadValueAA 
(AA 
outAA  

)AA. /
;AA/ 0
readerBB 
.BB 
	ReadValueBB 
(BB 
outBB  
NetworkTickBB! ,
)BB, -
;BB- .%
m_ReceivedSceneObjectDataCC %
=CC& '
readerCC( .
;CC. /
returnDD 
trueDD 
;DD 
}EE 	
publicGG 
voidGG 
HandleGG 
(GG 
refGG 
NetworkContextGG -
contextGG. 5
)GG5 6
{HH 	
varII 
networkManagerII 
=II  
(II! "
NetworkManagerII" 0
)II0 1
contextII1 8
.II8 9
SystemOwnerII9 D
;IID E
networkManagerJJ 
.JJ 

=JJ) *

;JJ8 9
networkManagerKK 
.KK 
NetworkMetricsKK )
.KK) *
SetConnectionIdKK* 9
(KK9 :
networkManagerKK: H
.KKH I

)KKV W
;KKW X
varMM 
timeMM 
=MM 
newMM 
NetworkTimeMM &
(MM& '
networkManagerMM' 5
.MM5 6
NetworkTickSystemMM6 G
.MMG H
TickRateMMH P
,MMP Q
NetworkTickMMR ]
)MM] ^
;MM^ _
networkManagerNN 
.NN 
NetworkTimeSystemNN ,
.NN, -
ResetNN- 2
(NN2 3
timeNN3 7
.NN7 8
TimeNN8 <
,NN< =
$numNN> C
)NNC D
;NND E
networkManagerOO 
.OO 
NetworkTickSystemOO ,
.OO, -
ResetOO- 2
(OO2 3
networkManagerOO3 A
.OOA B
NetworkTimeSystemOOB S
.OOS T
	LocalTimeOOT ]
,OO] ^
networkManagerOO_ m
.OOm n
NetworkTimeSystemOOn 
.	OO �

ServerTime
OO� �
)
OO� �
;
OO� �
networkManagerQQ 
.QQ 
LocalClientQQ &
=QQ' (
newQQ) ,

(QQ: ;
)QQ; <
{QQ= >
ClientIdQQ? G
=QQH I
networkManagerQQJ X
.QQX Y

}QQg h
;QQh i
ifTT 
(TT 
!TT 
networkManagerTT 
.TT  

.TT- .!
EnableSceneManagementTT. C
)TTC D
{UU 
networkManagerVV 
.VV 
SpawnManagerVV +
.VV+ ,
DestroySceneObjectsVV, ?
(VV? @
)VV@ A
;VVA B%
m_ReceivedSceneObjectDataWW )
.WW) *
	ReadValueWW* 3
(WW3 4
outWW4 7
uintWW8 <
sceneObjectCountWW= M
)WWM N
;WWN O
for[[ 
([[ 
ushort[[ 
i[[ 
=[[ 
$num[[  !
;[[! "
i[[# $
<[[% &
sceneObjectCount[[' 7
;[[7 8
i[[9 :
++[[: <
)[[< =
{\\ 
var]] 
sceneObject]] #
=]]$ %
new]]& )

.]]7 8
SceneObject]]8 C
(]]C D
)]]D E
;]]E F
sceneObject^^ 
.^^  
Deserialize^^  +
(^^+ ,%
m_ReceivedSceneObjectData^^, E
)^^E F
;^^F G

.__! "
AddSceneObject__" 0
(__0 1
sceneObject__1 <
,__< =%
m_ReceivedSceneObjectData__> W
,__W X
networkManager__Y g
)__g h
;__h i
}`` 
networkManagercc 
.cc 
IsConnectedClientcc 0
=cc1 2
truecc3 7
;cc7 8
networkManageree 
.ee +
InvokeOnClientConnectedCallbackee >
(ee> ?
contextee? F
.eeF G
SenderIdeeG O
)eeO P
;eeP Q
}ff 
}gg 	
}hh 
}ii �,
mC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Timing\NetworkTickSystem.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public

 

class

 
NetworkTickSystem

 "
{ 
private
static
ProfilerMarker
s_Tick
=
new
ProfilerMarker
(
$"
{
nameof
(
NetworkTickSystem
)
}
$str
"
)
;
public 
const 
int 
NoTick 
=  !
int" %
.% &
MinValue& .
;. /
public 
uint 
TickRate 
{ 
get "
;" #
internal$ ,
set- 0
;0 1
}2 3
public 
NetworkTime 
	LocalTime $
{% &
get' *
;* +
internal, 4
set5 8
;8 9
}: ;
public$$ 
NetworkTime$$ 

ServerTime$$ %
{$$& '
get$$( +
;$$+ ,
internal$$- 5
set$$6 9
;$$9 :
}$$; <
public)) 
event)) 
Action)) 
Tick))  
;))  !
public11 
NetworkTickSystem11  
(11  !
uint11! %
tickRate11& .
,11. /
double110 6
localTimeSec117 C
,11C D
double11E K

)11Y Z
{22 	
if33 
(33 
tickRate33 
==33 
$num33 
)33 
{44 
throw55 
new55 
ArgumentException55 +
(55+ ,
$str55, P
,55P Q
nameof55R X
(55X Y
tickRate55Y a
)55a b
)55b c
;55c d
}66 
TickRate88 
=88 
tickRate88 
;88  
Tick99 
=99 
null99 
;99 
	LocalTime:: 
=:: 
new:: 
NetworkTime:: '
(::' (
tickRate::( 0
,::0 1
localTimeSec::2 >
)::> ?
;::? @

ServerTime;; 
=;; 
new;; 
NetworkTime;; (
(;;( )
tickRate;;) 1
,;;1 2

);;@ A
;;;A B
}<< 	
publicCC 
voidCC 
ResetCC 
(CC 
doubleCC  
localTimeSecCC! -
,CC- .
doubleCC/ 5

)CCC D
{DD 	
	LocalTimeEE 
=EE 
newEE 
NetworkTimeEE '
(EE' (
TickRateEE( 0
,EE0 1
localTimeSecEE2 >
)EE> ?
;EE? @

ServerTimeFF 
=FF 
newFF 
NetworkTimeFF (
(FF( )
TickRateFF) 1
,FF1 2

)FF@ A
;FFA B
}GG 	
publicNN 
voidNN 

UpdateTickNN 
(NN 
doubleNN %
localTimeSecNN& 2
,NN2 3
doubleNN4 :

)NNH I
{OO 	
varQQ 
previousLocalTickQQ !
=QQ" #
	LocalTimeQQ$ -
.QQ- .
TickQQ. 2
;QQ2 3
	LocalTimeSS 
=SS 
newSS 
NetworkTimeSS '
(SS' (
TickRateSS( 0
,SS0 1
localTimeSecSS2 >
)SS> ?
;SS? @

ServerTimeTT 
=TT 
newTT 
NetworkTimeTT (
(TT( )
TickRateTT) 1
,TT1 2

)TT@ A
;TTA B
varWW 
cacheLocalTimeWW 
=WW  
	LocalTimeWW! *
;WW* +
varXX 
cacheServerTimeXX 
=XX  !

ServerTimeXX" ,
;XX, -
varZZ 
currentLocalTickZZ  
=ZZ! "
	LocalTimeZZ# ,
.ZZ, -
TickZZ- 1
;ZZ1 2
var[[ #
localToServerDifference[[ '
=[[( )
currentLocalTick[[* :
-[[; <

ServerTime[[= G
.[[G H
Tick[[H L
;[[L M
for]] 
(]] 
int]] 
i]] 
=]] 
previousLocalTick]] *
+]]+ ,
$num]]- .
;]]. /
i]]0 1
<=]]2 4
currentLocalTick]]5 E
;]]E F
i]]G H
++]]H J
)]]J K
{^^ 
	LocalTime`` 
=`` 
new`` 
NetworkTime``  +
(``+ ,
TickRate``, 4
,``4 5
i``6 7
)``7 8
;``8 9

ServerTimeaa 
=aa 
newaa  
NetworkTimeaa! ,
(aa, -
TickRateaa- 5
,aa5 6
iaa7 8
-aa9 :#
localToServerDifferenceaa; R
)aaR S
;aaS T
s_Tickdd 
.dd 
Begindd 
(dd 
)dd 
;dd 
Tickff 
?ff 
.ff 
Invokeff 
(ff 
)ff 
;ff 
s_Tickhh 
.hh 
Endhh 
(hh 
)hh 
;hh 
}jj 
	LocalTimemm 
=mm 
cacheLocalTimemm &
;mm& '

ServerTimenn 
=nn 
cacheServerTimenn (
;nn( )
}oo 	
}pp 
}qq �p
sC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\Messages\RpcMessages.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
static
class 
RpcMessageHelpers +
{ 
public		 
static		 
unsafe		 
void		 !
	Serialize		" +
(		+ ,
ref		, /
FastBufferWriter		0 @
writer		A G
,		G H
ref		I L
RpcMetadata		M X
metadata		Y a
,		a b
ref		c f
FastBufferWriter		g w
payload		x 
)			 �
{

 	
if 
( 
! 
writer 
. 

(% &
FastBufferWriter& 6
.6 7
GetWriteSize7 C
<C D
RpcMetadataD O
>O P
(P Q
)Q R
+S T
payloadU \
.\ ]
Length] c
)c d
)d e
{ 
throw
new
OverflowException
(
$str
)
;
} 
writer 
. 

WriteValue 
( 
metadata &
)& '
;' (
writer 
. 

WriteBytes 
( 
payload %
.% &
GetUnsafePtr& 2
(2 3
)3 4
,4 5
payload6 =
.= >
Length> D
)D E
;E F
} 	
public 
static 
unsafe 
bool !
Deserialize" -
(- .
ref. 1
FastBufferReader2 B
readerC I
,I J
refK N
NetworkContextO ]
context^ e
,e f
refg j
RpcMetadatak v
metadataw 
,	 �
ref
� �
FastBufferReader
� �
payload
� �
)
� �
{ 	
int 
metadataSize 
= 
FastBufferWriter /
./ 0
GetWriteSize0 <
<< =
RpcMetadata= H
>H I
(I J
)J K
;K L
if 
( 
! 
reader 
. 
TryBeginRead $
($ %
metadataSize% 1
)1 2
)2 3
{ 
throw 
new %
InvalidOperationException 3
(3 4
$str4 e
)e f
;f g
} 
reader 
. 
	ReadValue 
( 
out  
metadata! )
)) *
;* +
var 
networkManager 
=  
(! "
NetworkManager" 0
)0 1
context1 8
.8 9
SystemOwner9 D
;D E
if 
( 
! 
networkManager 
.  
SpawnManager  ,
., -
SpawnedObjects- ;
.; <
ContainsKey< G
(G H
metadataH P
.P Q
NetworkObjectIdQ `
)` a
)a b
{   
networkManager!! 
.!! "
DeferredMessageManager!! 5
.!!5 6
DeferMessage!!6 B
(!!B C#
IDeferredMessageManager!!C Z
.!!Z [
TriggerType!![ f
.!!f g
OnSpawn!!g n
,!!n o
metadata!!p x
.!!x y
NetworkObjectId	!!y �
,
!!� �
reader
!!� �
,
!!� �
ref
!!� �
context
!!� �
)
!!� �
;
!!� �
return"" 
false"" 
;"" 
}## 
var%% 

=%% 
networkManager%%  .
.%%. /
SpawnManager%%/ ;
.%%; <
SpawnedObjects%%< J
[%%J K
metadata%%K S
.%%S T
NetworkObjectId%%T c
]%%c d
;%%d e
var&& 
networkBehaviour&&  
=&&! "
networkManager&&# 1
.&&1 2
SpawnManager&&2 >
.&&> ?
SpawnedObjects&&? M
[&&M N
metadata&&N V
.&&V W
NetworkObjectId&&W f
]&&f g
.&&g h,
GetNetworkBehaviourAtOrderIndex	&&h �
(
&&� �
metadata
&&� �
.
&&� � 
NetworkBehaviourId
&&� �
)
&&� �
;
&&� �
if'' 
('' 
networkBehaviour''  
==''! #
null''$ (
)''( )
{(( 
return)) 
false)) 
;)) 
}** 
if,, 
(,, 
!,, 
NetworkManager,, 
.,,  
__rpc_func_table,,  0
.,,0 1
ContainsKey,,1 <
(,,< =
metadata,,= E
.,,E F
NetworkRpcMethodId,,F X
),,X Y
),,Y Z
{-- 
return.. 
false.. 
;.. 
}// 
payload11 
=11 
new11 
FastBufferReader11 *
(11* +
reader11+ 1
.111 2
GetUnsafePtr112 >
(11> ?
)11? @
+11A B
metadataSize11C O
,11O P
	Allocator11Q Z
.11Z [
None11[ _
,11_ `
reader11a g
.11g h
Length11h n
-11o p
metadataSize11q }
)11} ~
;11~ 
if44 
(44 
NetworkManager44 
.44 
__rpc_name_table44 /
.44/ 0
TryGetValue440 ;
(44; <
metadata44< D
.44D E
NetworkRpcMethodId44E W
,44W X
out44Y \
var44] `

)44n o
)44o p
{55 
networkManager66 
.66 
NetworkMetrics66 -
.66- .
TrackRpcReceived66. >
(66> ?
context77 
.77 
SenderId77 $
,77$ %

,88! "

,99! "
networkBehaviour:: $
.::$ %

(::2 3
)::3 4
,::4 5
reader;; 
.;; 
Length;; !
);;! "
;;;" #
}<< 
return?? 
true?? 
;?? 
}@@ 	
publicBB 
staticBB 
voidBB 
HandleBB !
(BB! "
refBB" %
NetworkContextBB& 4
contextBB5 <
,BB< =
refBB> A
RpcMetadataBBB M
metadataBBN V
,BBV W
refBBX [
FastBufferReaderBB\ l
payloadBBm t
,BBt u
refBBv y
__RpcParams	BBz �
	rpcParams
BB� �
)
BB� �
{CC 	
varDD 
networkManagerDD 
=DD  
(DD! "
NetworkManagerDD" 0
)DD0 1
contextDD1 8
.DD8 9
SystemOwnerDD9 D
;DDD E
ifEE 
(EE 
!EE 
networkManagerEE 
.EE  
SpawnManagerEE  ,
.EE, -
SpawnedObjectsEE- ;
.EE; <
TryGetValueEE< G
(EEG H
metadataEEH P
.EEP Q
NetworkObjectIdEEQ `
,EE` a
outEEb e
varEEf i

)EEw x
)EEx y
{FF 
throwGG 
newGG %
InvalidOperationExceptionGG 3
(GG3 4
$"GG4 6
$strGG6 I
{GGI J
nameofGGJ P
(GGP Q

)GG^ _
}GG_ `
$str	GG` �
{
GG� �
nameof
GG� �
(
GG� �

GG� �
)
GG� �
}
GG� �
$str
GG� �
"
GG� �
)
GG� �
;
GG� �
}HH 
varII 
networkBehaviourII  
=II! "

.II0 1+
GetNetworkBehaviourAtOrderIndexII1 P
(IIP Q
metadataIIQ Y
.IIY Z
NetworkBehaviourIdIIZ l
)IIl m
;IIm n
tryKK 
{LL 
NetworkManagerMM 
.MM 
__rpc_func_tableMM /
[MM/ 0
metadataMM0 8
.MM8 9
NetworkRpcMethodIdMM9 K
]MMK L
(MML M
networkBehaviourMMM ]
,MM] ^
payloadMM_ f
,MMf g
	rpcParamsMMh q
)MMq r
;MMr s
}NN 
catchOO 
(OO 
	ExceptionOO 
exOO 
)OO  
{PP 
DebugQQ 
.QQ 
LogExceptionQQ "
(QQ" #
newQQ# &
	ExceptionQQ' 0
(QQ0 1
$strQQ1 K
,QQK L
exQQM O
)QQO P
)QQP Q
;QQQ R
}RR 
}SS 	
}TT 
internalVV 
structVV
RpcMetadataVV 
:VV  !%
INetworkSerializeByMemcpyVV" ;
{WW 
publicXX 
ulongXX 
NetworkObjectIdXX $
;XX$ %
publicYY 
ushortYY 
NetworkBehaviourIdYY (
;YY( )
publicZZ 
uintZZ 
NetworkRpcMethodIdZZ &
;ZZ& '
}[[ 
internal]] 
struct]]
ServerRpcMessage]] $
:]]% &
INetworkMessage]]' 6
{^^ 
public__ 
RpcMetadata__ 
Metadata__ #
;__# $
publicaa 
FastBufferWriteraa 
WriteBufferaa  +
;aa+ ,
publicbb 
FastBufferReaderbb 

ReadBufferbb  *
;bb* +
publicdd 
unsafedd 
voiddd 
	Serializedd $
(dd$ %
FastBufferWriterdd% 5
writerdd6 <
)dd< =
{ee 	
RpcMessageHelpersff 
.ff 
	Serializeff '
(ff' (
refff( +
writerff, 2
,ff2 3
refff4 7
Metadataff8 @
,ff@ A
refffB E
WriteBufferffF Q
)ffQ R
;ffR S
}gg 	
publicii 
unsafeii 
boolii 
Deserializeii &
(ii& '
FastBufferReaderii' 7
readerii8 >
,ii> ?
refii@ C
NetworkContextiiD R
contextiiS Z
)iiZ [
{jj 	
returnkk 
RpcMessageHelperskk $
.kk$ %
Deserializekk% 0
(kk0 1
refkk1 4
readerkk5 ;
,kk; <
refkk= @
contextkkA H
,kkH I
refkkJ M
MetadatakkN V
,kkV W
refkkX [

ReadBufferkk\ f
)kkf g
;kkg h
}ll 	
publicnn 
voidnn 
Handlenn 
(nn 
refnn 
NetworkContextnn -
contextnn. 5
)nn5 6
{oo 	
varpp 
	rpcParamspp 
=pp 
newpp 
__RpcParamspp  +
{qq 
Serverrr 
=rr 
newrr 
ServerRpcParamsrr ,
{ss 
Receivett 
=tt 
newtt !"
ServerRpcReceiveParamstt" 8
{uu 
SenderClientIdvv &
=vv' (
contextvv) 0
.vv0 1
SenderIdvv1 9
}ww 
}xx 
}yy 
;yy
RpcMessageHelperszz 
.zz 
Handlezz $
(zz$ %
refzz% (
contextzz) 0
,zz0 1
refzz2 5
Metadatazz6 >
,zz> ?
refzz@ C

ReadBufferzzD N
,zzN O
refzzP S
	rpcParamszzT ]
)zz] ^
;zz^ _
}{{ 	
}|| 
internal~~ 
struct~~
ClientRpcMessage~~ $
:~~% &
INetworkMessage~~' 6
{ 
public
�� 
RpcMetadata
�� 
Metadata
�� #
;
��# $
public
�� 
FastBufferWriter
�� 
WriteBuffer
��  +
;
��+ ,
public
�� 
FastBufferReader
�� 

ReadBuffer
��  *
;
��* +
public
�� 
void
�� 
	Serialize
�� 
(
�� 
FastBufferWriter
�� .
writer
��/ 5
)
��5 6
{
�� 	
RpcMessageHelpers
�� 
.
�� 
	Serialize
�� '
(
��' (
ref
��( +
writer
��, 2
,
��2 3
ref
��4 7
Metadata
��8 @
,
��@ A
ref
��B E
WriteBuffer
��F Q
)
��Q R
;
��R S
}
�� 	
public
�� 
bool
�� 
Deserialize
�� 
(
��  
FastBufferReader
��  0
reader
��1 7
,
��7 8
ref
��9 <
NetworkContext
��= K
context
��L S
)
��S T
{
�� 	
return
�� 
RpcMessageHelpers
�� $
.
��$ %
Deserialize
��% 0
(
��0 1
ref
��1 4
reader
��5 ;
,
��; <
ref
��= @
context
��A H
,
��H I
ref
��J M
Metadata
��N V
,
��V W
ref
��X [

ReadBuffer
��\ f
)
��f g
;
��g h
}
�� 	
public
�� 
void
�� 
Handle
�� 
(
�� 
ref
�� 
NetworkContext
�� -
context
��. 5
)
��5 6
{
�� 	
var
�� 
	rpcParams
�� 
=
�� 
new
�� 
__RpcParams
��  +
{
�� 
Client
�� 
=
�� 
new
�� 
ClientRpcParams
�� ,
{
�� 
Receive
�� 
=
�� 
new
�� !$
ClientRpcReceiveParams
��" 8
{
�� 
}
�� 
}
�� 
}
�� 
;
��
RpcMessageHelpers
�� 
.
�� 
Handle
�� $
(
��$ %
ref
��% (
context
��) 0
,
��0 1
ref
��2 5
Metadata
��6 >
,
��> ?
ref
��@ C

ReadBuffer
��D N
,
��N O
ref
��P S
	rpcParams
��T ]
)
��] ^
;
��^ _
}
�� 	
}
�� 
}�� �
eC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Logging\LogLevel.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

enum 
LogLevel 
{ 
	Developer 
, 
Normal 
, 
Error 
,
Nothing 
} 
} Ă
rC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Spawning\NetworkPrefabHandler.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public

 

	interface

 )
INetworkPrefabInstanceHandler

 2
{ 

Instantiate !
(! "
ulong" '

,5 6
Vector37 >
position? G
,G H

QuaternionI S
rotationT \
)\ ]
;] ^
void++ 
Destroy++
(++ 


)++0 1
;++1 2
},, 
public22 

class22  
NetworkPrefabHandler22 %
{33 
private77 
readonly77 

Dictionary77 #
<77# $
uint77$ (
,77( ))
INetworkPrefabInstanceHandler77* G
>77G H(
m_PrefabAssetToPrefabHandler77I e
=77f g
new77h k

Dictionary77l v
<77v w
uint77w {
,77{ |*
INetworkPrefabInstanceHandler	77} �
>
77� �
(
77� �
)
77� �
;
77� �
private== 
readonly== 

Dictionary== #
<==# $
uint==$ (
,==( )
uint==* .
>==. /)
m_PrefabInstanceToPrefabAsset==0 M
===N O
new==P S

Dictionary==T ^
<==^ _
uint==_ c
,==c d
uint==e i
>==i j
(==j k
)==k l
;==l m
publicEE 
boolEE 

AddHandlerEE 
(EE 

GameObjectEE )
networkPrefabAssetEE* <
,EE< =)
INetworkPrefabInstanceHandlerEE> [
instanceHandlerEE\ k
)EEk l
{FF 	
returnGG 

AddHandlerGG 
(GG 
networkPrefabAssetGG 0
.GG0 1
GetComponentGG1 =
<GG= >

>GGK L
(GGL M
)GGM N
.GGN O
GlobalObjectIdHashGGO a
,GGa b
instanceHandlerGGc r
)GGr s
;GGs t
}HH 	
publicPP 
boolPP 

AddHandlerPP 
(PP 

prefabAssetNetworkObjectPP- E
,PPE F)
INetworkPrefabInstanceHandlerPPG d
instanceHandlerPPe t
)PPt u
{QQ 	
returnRR 

AddHandlerRR 
(RR $
prefabAssetNetworkObjectRR 6
.RR6 7
GlobalObjectIdHashRR7 I
,RRI J
instanceHandlerRRK Z
)RRZ [
;RR[ \
}SS 	
public[[ 
bool[[ 

AddHandler[[ 
([[ 
uint[[ #
globalObjectIdHash[[$ 6
,[[6 7)
INetworkPrefabInstanceHandler[[8 U
instanceHandler[[V e
)[[e f
{\\ 	
if]] 
(]] 
!]] (
m_PrefabAssetToPrefabHandler]] -
.]]- .
ContainsKey]]. 9
(]]9 :
globalObjectIdHash]]: L
)]]L M
)]]M N
{^^ 
m_PrefabAssetToPrefabHandler__ ,
.__, -
Add__- 0
(__0 1
globalObjectIdHash__1 C
,__C D
instanceHandler__E T
)__T U
;__U V
return`` 
true`` 
;`` 
}aa 
returncc 
falsecc 
;cc 
}dd 	
publicmm 
voidmm 0
$RegisterHostGlobalObjectIdHashValuesmm 8
(mm8 9

GameObjectmm9 C
sourceNetworkPrefabmmD W
,mmW X
ListmmY ]
<mm] ^

GameObjectmm^ h
>mmh i#
networkPrefabOverrides	mmj �
)
mm� �
{nn 	
ifoo 
(oo 
NetworkManageroo 
.oo 
	Singletonoo (
.oo( )
IsListeningoo) 4
)oo4 5
{pp 
ifqq 
(qq 
NetworkManagerqq "
.qq" #
	Singletonqq# ,
.qq, -
IsHostqq- 3
)qq3 4
{rr 
varss 
sourceNetworkObjectss +
=ss, -
sourceNetworkPrefabss. A
.ssA B
GetComponentssB N
<ssN O

>ss\ ]
(ss] ^
)ss^ _
;ss_ `
iftt 
(tt 
sourceNetworkPrefabtt +
!=tt, .
nulltt/ 3
)tt3 4
{uu 
varvv $
sourceGlobalObjectIdHashvv 4
=vv5 6
sourceNetworkObjectvv7 J
.vvJ K
GlobalObjectIdHashvvK ]
;vv] ^
foreachxx 
(xx  !
varxx! $

gameObjectxx% /
inxx0 2"
networkPrefabOverridesxx3 I
)xxI J
{yy 
varzz 
targetNetworkObjectzz  3
=zz4 5

gameObjectzz6 @
.zz@ A
GetComponentzzA M
<zzM N

>zz[ \
(zz\ ]
)zz] ^
;zz^ _
if{{ 
({{  
targetNetworkObject{{  3
!={{4 6
null{{7 ;
){{; <
{|| 
if}}  "
(}}# $
!}}$ %)
m_PrefabInstanceToPrefabAsset}}% B
.}}B C
ContainsKey}}C N
(}}N O
targetNetworkObject}}O b
.}}b c
GlobalObjectIdHash}}c u
)}}u v
)}}v w
{~~  !)
m_PrefabInstanceToPrefabAsset$ A
.A B
AddB E
(E F
targetNetworkObjectF Y
.Y Z
GlobalObjectIdHashZ l
,l m%
sourceGlobalObjectIdHash	n �
)
� �
;
� �
}
��  !
else
��  $
{
��  !
Debug
��$ )
.
��) *

LogWarning
��* 4
(
��4 5
$"
��5 7
{
��7 8!
targetNetworkObject
��8 K
.
��K L
name
��L P
}
��P Q
$str
��Q r
"
��r s
)
��s t
;
��t u
}
��  !
}
�� 
else
��  
{
�� 
throw
��  %
new
��& )
System
��* 0
.
��0 1
	Exception
��1 :
(
��: ;
$"
��; =
{
��= >!
targetNetworkObject
��> Q
.
��Q R
name
��R V
}
��V W
$str
��W h
{
��h i
nameof
��i o
(
��o p

��p }
)
��} ~
}
��~ 
$str�� �
"��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� !
System
��" (
.
��( )
	Exception
��) 2
(
��2 3
$"
��3 5
{
��5 6!
sourceNetworkPrefab
��6 I
.
��I J
name
��J N
}
��N O
$str
��O `
{
��` a
nameof
��a g
(
��g h

��h u
)
��u v
}
��v w
$str��w �
"��� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� 
System
�� $
.
��$ %
	Exception
��% .
(
��. /
$"
��/ 1
$str
��1 F
{
��F G
nameof
��G M
(
��M N2
$RegisterHostGlobalObjectIdHashValues
��N r
)
��r s
}
��s t
$str
��t 
"�� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
throw
�� 
new
�� 
System
��  
.
��  !
	Exception
��! *
(
��* +
$"
��+ -
$str
��- ?
{
��? @
nameof
��@ F
(
��F G2
$RegisterHostGlobalObjectIdHashValues
��G k
)
��k l
}
��l m
$str��m �
"��� �
)��� �
;��� �
}
�� 
}
�� 	
public
�� 
bool
�� 

�� !
(
��! "

GameObject
��" , 
networkPrefabAsset
��- ?
)
��? @
{
�� 	
return
�� 

��  
(
��  ! 
networkPrefabAsset
��! 3
.
��3 4
GetComponent
��4 @
<
��@ A

��A N
>
��N O
(
��O P
)
��P Q
.
��Q R 
GlobalObjectIdHash
��R d
)
��d e
;
��e f
}
�� 	
public
�� 
bool
�� 

�� !
(
��! "

��" /

��0 =
)
��= >
{
�� 	
return
�� 

��  
(
��  !

��! .
.
��. / 
GlobalObjectIdHash
��/ A
)
��A B
;
��B C
}
�� 	
public
�� 
bool
�� 

�� !
(
��! "
uint
��" & 
globalObjectIdHash
��' 9
)
��9 :
{
�� 	
if
�� 
(
�� +
m_PrefabInstanceToPrefabAsset
�� -
.
��- .

��. ;
(
��; < 
globalObjectIdHash
��< N
)
��N O
)
��O P
{
�� 
uint
�� "
networkPrefabHashKey
�� )
=
��* +
$num
��, -
;
��- .
foreach
�� 
(
�� 
var
�� 
kvp
��  
in
��! #+
m_PrefabInstanceToPrefabAsset
��$ A
)
��A B
{
�� 
if
�� 
(
�� 
kvp
�� 
.
�� 
Value
�� !
==
��" $ 
globalObjectIdHash
��% 7
)
��7 8
{
�� "
networkPrefabHashKey
�� ,
=
��- .
kvp
��/ 2
.
��2 3
Key
��3 6
;
��6 7
break
�� 
;
�� 
}
�� 
}
�� +
m_PrefabInstanceToPrefabAsset
�� -
.
��- .
Remove
��. 4
(
��4 5"
networkPrefabHashKey
��5 I
)
��I J
;
��J K
}
�� 
return
�� *
m_PrefabAssetToPrefabHandler
�� /
.
��/ 0
Remove
��0 6
(
��6 7 
globalObjectIdHash
��7 I
)
��I J
;
��J K
}
�� 	
internal
�� 
bool
�� 
ContainsHandler
�� %
(
��% &

GameObject
��& 0

��1 >
)
��> ?
{
�� 	
return
�� 
ContainsHandler
�� "
(
��" #

��# 0
.
��0 1
GetComponent
��1 =
<
��= >

��> K
>
��K L
(
��L M
)
��M N
.
��N O 
GlobalObjectIdHash
��O a
)
��a b
;
��b c
}
�� 	
internal
�� 
bool
�� 
ContainsHandler
�� %
(
��% &

��& 3

��4 A
)
��A B
{
�� 	
return
�� 
ContainsHandler
�� "
(
��" #

��# 0
.
��0 1 
GlobalObjectIdHash
��1 C
)
��C D
;
��D E
}
�� 	
internal
�� 
bool
�� 
ContainsHandler
�� %
(
��% &
uint
��& *
networkPrefabHash
��+ <
)
��< =
{
�� 	
return
�� *
m_PrefabAssetToPrefabHandler
�� /
.
��/ 0
ContainsKey
��0 ;
(
��; <
networkPrefabHash
��< M
)
��M N
||
��O Q+
m_PrefabInstanceToPrefabAsset
��R o
.
��o p
ContainsKey
��p {
(
��{ | 
networkPrefabHash��| �
)��� �
;��� �
}
�� 	
internal
�� 
uint
�� )
GetSourceGlobalObjectIdHash
�� 1
(
��1 2
uint
��2 6
networkPrefabHash
��7 H
)
��H I
{
�� 	
if
�� 
(
�� *
m_PrefabAssetToPrefabHandler
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9
networkPrefabHash
��9 J
)
��J K
)
��K L
{
�� 
return
�� 
networkPrefabHash
�� (
;
��( )
}
�� 
else
�� 
if
�� 
(
�� +
m_PrefabInstanceToPrefabAsset
�� 2
.
��2 3
ContainsKey
��3 >
(
��> ?
networkPrefabHash
��? P
)
��P Q
)
��Q R
{
�� 
return
�� +
m_PrefabInstanceToPrefabAsset
�� 4
[
��4 5
networkPrefabHash
��5 F
]
��F G
;
��G H
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
internal
�� 

�� &
HandleNetworkPrefabSpawn
�� 7
(
��7 8
uint
��8 <$
networkPrefabAssetHash
��= S
,
��S T
ulong
��U Z

��[ h
,
��h i
Vector3
��j q
position
��r z
,
��z {

Quaternion��| �
rotation��� �
)��� �
{
�� 	
if
�� 
(
�� *
m_PrefabAssetToPrefabHandler
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9$
networkPrefabAssetHash
��9 O
)
��O P
)
��P Q
{
�� 
var
�� #
networkObjectInstance
�� )
=
��* +*
m_PrefabAssetToPrefabHandler
��, H
[
��H I$
networkPrefabAssetHash
��I _
]
��_ `
.
��` a
Instantiate
��a l
(
��l m

��m z
,
��z {
position��| �
,��� �
rotation��� �
)��� �
;��� �
if
�� 
(
�� #
networkObjectInstance
�� )
!=
��* ,
null
��- 1
&&
��2 4
!
��5 6+
m_PrefabInstanceToPrefabAsset
��6 S
.
��S T
ContainsKey
��T _
(
��_ `#
networkObjectInstance
��` u
.
��u v!
GlobalObjectIdHash��v �
)��� �
)��� �
{
�� +
m_PrefabInstanceToPrefabAsset
�� 1
.
��1 2
Add
��2 5
(
��5 6#
networkObjectInstance
��6 K
.
��K L 
GlobalObjectIdHash
��L ^
,
��^ _$
networkPrefabAssetHash
��` v
)
��v w
;
��w x
}
�� 
return
�� #
networkObjectInstance
�� ,
;
��, -
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
internal
�� 
void
�� (
HandleNetworkPrefabDestroy
�� 0
(
��0 1

��1 >#
networkObjectInstance
��? T
)
��T U
{
�� 	
var
�� '
networkObjectInstanceHash
�� )
=
��* +#
networkObjectInstance
��, A
.
��A B 
GlobalObjectIdHash
��B T
;
��T U
if
�� 
(
�� +
m_PrefabInstanceToPrefabAsset
�� -
.
��- .
ContainsKey
��. 9
(
��9 :'
networkObjectInstanceHash
��: S
)
��S T
)
��T U
{
�� 
var
�� $
networkPrefabAssetHash
�� *
=
��+ ,+
m_PrefabInstanceToPrefabAsset
��- J
[
��J K'
networkObjectInstanceHash
��K d
]
��d e
;
��e f
if
�� 
(
�� *
m_PrefabAssetToPrefabHandler
�� 0
.
��0 1
ContainsKey
��1 <
(
��< =$
networkPrefabAssetHash
��= S
)
��S T
)
��T U
{
�� *
m_PrefabAssetToPrefabHandler
�� 0
[
��0 1$
networkPrefabAssetHash
��1 G
]
��G H
.
��H I
Destroy
��I P
(
��P Q#
networkObjectInstance
��Q f
)
��f g
;
��g h
}
�� 
}
�� 
else
�� 
if
�� 
(
�� *
m_PrefabAssetToPrefabHandler
�� ,
.
��, -
ContainsKey
��- 8
(
��8 9'
networkObjectInstanceHash
��9 R
)
��R S
)
��S T
{
�� 
m_PrefabAssetToPrefabHandler
�� ,
[
��, -'
networkObjectInstanceHash
��- F
]
��F G
.
��G H
Destroy
��H O
(
��O P#
networkObjectInstance
��P e
)
��e f
;
��f g
}
�� 
}
�� 	
}
�� 
}�� �3
tC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\NetworkVariable\NetworkVariable.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
[ 
Serializable 
] 
public

class
NetworkVariable
<
T
>
:
NetworkVariableBase
where
T
:
	unmanaged
{ 
public 
delegate 
void "
OnValueChangedDelegate 3
(3 4
T4 5

,C D
TE F
newValueG O
)O P
;P Q
public "
OnValueChangedDelegate %
OnValueChanged& 4
;4 5
public   
NetworkVariable   
(   
T    
value  ! &
=  ' (
default  ) 0
,  0 1)
NetworkVariableReadPermission!! )
readPerm!!* 2
=!!3 4
DefaultReadPerm!!5 D
,!!D E*
NetworkVariableWritePermission"" *
	writePerm""+ 4
=""5 6
DefaultWritePerm""7 G
)""G H
:## 
base## 
(## 
readPerm## 
,## 
	writePerm## &
)##& '
{$$ 	
m_InternalValue%% 
=%% 
value%% #
;%%# $
}&& 	
[++ 	
SerializeField++	 
]++ 
private,, 
	protected,, 
T,, 
m_InternalValue,, +
;,,+ ,
public11 
virtual11 
T11 
Value11 
{22 	
get33 
=>33 
m_InternalValue33 "
;33" #
set44 
{55 
if77 
(77 
ValueEquals77 
(77  
ref77  #
m_InternalValue77$ 3
,773 4
ref775 8
value779 >
)77> ?
)77? @
{88 
return99 
;99 
}:: 
if<< 
(<< 
m_NetworkBehaviour<< &
&&<<' )
!<<* +
CanClientWrite<<+ 9
(<<9 :
m_NetworkBehaviour<<: L
.<<L M
NetworkManager<<M [
.<<[ \

)<<i j
)<<j k
{== 
throw>> 
new>> %
InvalidOperationException>> 7
(>>7 8
$str>>8 p
)>>p q
;>>q r
}?? 
SetAA 
(AA 
valueAA 
)AA 
;AA 
}BB 
}CC 	
[HH 	

MethodImplHH	 
(HH 
MethodImplOptionsHH %
.HH% &
AggressiveInliningHH& 8
)HH8 9
]HH9 :
privateII 
staticII 
unsafeII 
boolII "
ValueEqualsII# .
(II. /
refII/ 2
TII3 4
aII5 6
,II6 7
refII8 ;
TII< =
bII> ?
)II? @
{JJ 	
varLL 
aptrLL 
=LL 

.LL$ %
	AddressOfLL% .
(LL. /
refLL/ 2
aLL3 4
)LL4 5
;LL5 6
varMM 
bptrMM 
=MM 

.MM$ %
	AddressOfMM% .
(MM. /
refMM/ 2
bMM3 4
)MM4 5
;MM5 6
returnPP 

.PP  !
MemCmpPP! '
(PP' (
aptrPP( ,
,PP, -
bptrPP. 2
,PP2 3
sizeofPP4 :
(PP: ;
TPP; <
)PP< =
)PP= >
==PP? A
$numPPB C
;PPC D
}QQ 	
privateXX 
	protectedXX 
voidXX 
SetXX "
(XX" #
TXX# $
valueXX% *
)XX* +
{YY 	
	m_IsDirtyZZ 
=ZZ 
trueZZ 
;ZZ 
T[[ 

=[[ 
m_InternalValue[[ -
;[[- .
m_InternalValue\\ 
=\\ 
value\\ #
;\\# $
OnValueChanged]] 
?]] 
.]] 
Invoke]] "
(]]" #

,]]0 1
m_InternalValue]]2 A
)]]A B
;]]B C
}^^ 	
publicdd 
overridedd 
voiddd 

WriteDeltadd '
(dd' (
FastBufferWriterdd( 8
writerdd9 ?
)dd? @
{ee 	

WriteFieldff 
(ff 
writerff 
)ff 
;ff 
}gg 	
publicnn 
overridenn 
voidnn 
	ReadDeltann &
(nn& '
FastBufferReadernn' 7
readernn8 >
,nn> ?
boolnn@ D
keepDirtyDeltannE S
)nnS T
{oo 	
Tuu 

=uu 
m_InternalValueuu -
;uu- .(
NetworkVariableSerializationvv (
<vv( )
Tvv) *
>vv* +
.vv+ ,
Readvv, 0
(vv0 1
readervv1 7
,vv7 8
outvv9 <
m_InternalValuevv= L
)vvL M
;vvM N
ifxx 
(xx 
keepDirtyDeltaxx 
)xx 
{yy 
	m_IsDirtyzz 
=zz 
truezz  
;zz  !
}{{ 
OnValueChanged}} 
?}} 
.}} 
Invoke}} "
(}}" #

,}}0 1
m_InternalValue}}2 A
)}}A B
;}}B C
}~~ 	
public
�� 
override
�� 
void
�� 
	ReadField
�� &
(
��& '
FastBufferReader
��' 7
reader
��8 >
)
��> ?
{
�� 	*
NetworkVariableSerialization
�� (
<
��( )
T
��) *
>
��* +
.
��+ ,
Read
��, 0
(
��0 1
reader
��1 7
,
��7 8
out
��9 <
m_InternalValue
��= L
)
��L M
;
��M N
}
�� 	
public
�� 
override
�� 
void
�� 

WriteField
�� '
(
��' (
FastBufferWriter
��( 8
writer
��9 ?
)
��? @
{
�� 	*
NetworkVariableSerialization
�� (
<
��( )
T
��) *
>
��* +
.
��+ ,
Write
��, 1
(
��1 2
writer
��2 8
,
��8 9
ref
��: =
m_InternalValue
��> M
)
��M N
;
��N O
}
�� 	
}
�� 
}�� �
rC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\ILPPMessageProvider.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
struct
ILPPMessageProvider '
:( )
IMessageProvider* :
{ 
internal		 
static		 
readonly		  
List		! %
<		% &
MessagingSystem		& 5
.		5 6
MessageWithHandler		6 H
>		H I#
__network_message_types		J a
=		b c
new		d g
List		h l
<		l m
MessagingSystem		m |
.		| }
MessageWithHandler			} �
>
		� �
(
		� �
)
		� �
;
		� �
public 
List 
< 
MessagingSystem #
.# $
MessageWithHandler$ 6
>6 7
GetMessages8 C
(C D
)D E
{
return #
__network_message_types *
;* +
} 	
} 
} ��
|C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\NetworkVariable\Collections\NetworkList.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

class 
NetworkList 
< 
T 
> 
:  !
NetworkVariableBase" 5
where6 ;
T< =
:> ?
	unmanaged@ I
,I J

IEquatableK U
<U V
TV W
>W X
{ 
private

NativeList
<
T
>
m_List
=
new

NativeList
<
T
>
(
$num
,
	Allocator
.

Persistent
)
;
private 

NativeList 
< 
T 
> 
m_ListAtLastReset /
=0 1
new2 5

NativeList6 @
<@ A
TA B
>B C
(C D
$numD F
,F G
	AllocatorH Q
.Q R

PersistentR \
)\ ]
;] ^
private 

NativeList 
< 
NetworkListEvent +
<+ ,
T, -
>- .
>. /

=> ?
new@ C

NativeListD N
<N O
NetworkListEventO _
<_ `
T` a
>a b
>b c
(c d
$numd f
,f g
	Allocatorh q
.q r

Persistentr |
)| }
;} ~
public 
delegate 
void !
OnListChangedDelegate 2
(2 3
NetworkListEvent3 C
<C D
TD E
>E F
changeEventG R
)R S
;S T
public 
event !
OnListChangedDelegate *

;8 9
public 
NetworkList 
( 
) 
{ 
}  
public%% 
NetworkList%% 
(%% 
IEnumerable%% &
<%%& '
T%%' (
>%%( )
values%%* 0
=%%1 2
default%%3 :
,%%: ;)
NetworkVariableReadPermission&& )
readPerm&&* 2
=&&3 4
DefaultReadPerm&&5 D
,&&D E*
NetworkVariableWritePermission'' *
	writePerm''+ 4
=''5 6
DefaultWritePerm''7 G
)''G H
:(( 
base(( 
((( 
readPerm(( 
,(( 
	writePerm(( &
)((& '
{)) 	
foreach** 
(** 
var** 
value** 
in** !
values**" (
)**( )
{++ 
m_List,, 
.,, 
Add,, 
(,, 
value,,  
),,  !
;,,! "
}-- 
}.. 	
public11 
override11 
void11 

ResetDirty11 '
(11' (
)11( )
{22 	
base33 
.33 

ResetDirty33 
(33 
)33 
;33 
if44 
(44 

.44 
Length44 $
>44% &
$num44' (
)44( )
{55 

.66 
Clear66 #
(66# $
)66$ %
;66% &
m_ListAtLastReset77 !
.77! "
CopyFrom77" *
(77* +
m_List77+ 1
)771 2
;772 3
}88 
}99 	
public<< 
override<< 
bool<< 
IsDirty<< $
(<<$ %
)<<% &
{== 	
return?? 
base?? 
.?? 
IsDirty?? 
(??  
)??  !
||??" $

.??2 3
Length??3 9
>??: ;
$num??< =
;??= >
}@@ 	
publicCC 
overrideCC 
voidCC 

WriteDeltaCC '
(CC' (
FastBufferWriterCC( 8
writerCC9 ?
)CC? @
{DD 	
ifFF 
(FF 
baseFF 
.FF 
IsDirtyFF 
(FF 
)FF 
)FF 
{GG 
writerHH 
.HH 
WriteValueSafeHH %
(HH% &
(HH& '
ushortHH' -
)HH- .
$numHH. /
)HH/ 0
;HH0 1
writerII 
.II 
WriteValueSafeII %
(II% &
NetworkListEventII& 6
<II6 7
TII7 8
>II8 9
.II9 :
	EventTypeII: C
.IIC D
FullIID H
)IIH I
;III J

WriteFieldJJ 
(JJ 
writerJJ !
)JJ! "
;JJ" #
returnLL 
;LL 
}MM 
writerOO 
.OO 
WriteValueSafeOO !
(OO! "
(OO" #
ushortOO# )
)OO) *

.OO7 8
LengthOO8 >
)OO> ?
;OO? @
forPP 
(PP 
intPP 
iPP 
=PP 
$numPP 
;PP 
iPP 
<PP 

.PP- .
LengthPP. 4
;PP4 5
iPP6 7
++PP7 9
)PP9 :
{QQ 
varRR 
elementRR 
=RR 

.RR+ ,
	ElementAtRR, 5
(RR5 6
iRR6 7
)RR7 8
;RR8 9
writerSS 
.SS 
WriteValueSafeSS %
(SS% &
elementSS& -
.SS- .
TypeSS. 2
)SS2 3
;SS3 4
switchTT 
(TT 
elementTT 
.TT  
TypeTT  $
)TT$ %
{UU 
caseVV 
NetworkListEventVV )
<VV) *
TVV* +
>VV+ ,
.VV, -
	EventTypeVV- 6
.VV6 7
AddVV7 :
:VV: ;
{WW (
NetworkVariableSerializationXX 8
<XX8 9
TXX9 :
>XX: ;
.XX; <
WriteXX< A
(XXA B
writerXXB H
,XXH I
refXXJ M
elementXXN U
.XXU V
ValueXXV [
)XX[ \
;XX\ ]
}YY 
breakZZ 
;ZZ 
case[[ 
NetworkListEvent[[ )
<[[) *
T[[* +
>[[+ ,
.[[, -
	EventType[[- 6
.[[6 7
Insert[[7 =
:[[= >
{\\ 
writer]] "
.]]" #
WriteValueSafe]]# 1
(]]1 2
element]]2 9
.]]9 :
Index]]: ?
)]]? @
;]]@ A(
NetworkVariableSerialization^^ 8
<^^8 9
T^^9 :
>^^: ;
.^^; <
Write^^< A
(^^A B
writer^^B H
,^^H I
ref^^J M
element^^N U
.^^U V
Value^^V [
)^^[ \
;^^\ ]
}__ 
break`` 
;`` 
caseaa 
NetworkListEventaa )
<aa) *
Taa* +
>aa+ ,
.aa, -
	EventTypeaa- 6
.aa6 7
Removeaa7 =
:aa= >
{bb (
NetworkVariableSerializationcc 8
<cc8 9
Tcc9 :
>cc: ;
.cc; <
Writecc< A
(ccA B
writerccB H
,ccH I
refccJ M
elementccN U
.ccU V
ValueccV [
)cc[ \
;cc\ ]
}dd 
breakee 
;ee 
caseff 
NetworkListEventff )
<ff) *
Tff* +
>ff+ ,
.ff, -
	EventTypeff- 6
.ff6 7
RemoveAtff7 ?
:ff? @
{gg 
writerhh "
.hh" #
WriteValueSafehh# 1
(hh1 2
elementhh2 9
.hh9 :
Indexhh: ?
)hh? @
;hh@ A
}ii 
breakjj 
;jj 
casekk 
NetworkListEventkk )
<kk) *
Tkk* +
>kk+ ,
.kk, -
	EventTypekk- 6
.kk6 7
Valuekk7 <
:kk< =
{ll 
writermm "
.mm" #
WriteValueSafemm# 1
(mm1 2
elementmm2 9
.mm9 :
Indexmm: ?
)mm? @
;mm@ A(
NetworkVariableSerializationnn 8
<nn8 9
Tnn9 :
>nn: ;
.nn; <
Writenn< A
(nnA B
writernnB H
,nnH I
refnnJ M
elementnnN U
.nnU V
ValuennV [
)nn[ \
;nn\ ]
}oo 
breakpp 
;pp 
caseqq 
NetworkListEventqq )
<qq) *
Tqq* +
>qq+ ,
.qq, -
	EventTypeqq- 6
.qq6 7
Clearqq7 <
:qq< =
{rr 
}tt 
breakuu 
;uu 
}vv 
}ww 
}xx 	
public{{ 
override{{ 
void{{ 

WriteField{{ '
({{' (
FastBufferWriter{{( 8
writer{{9 ?
){{? @
{|| 	
writer}} 
.}} 
WriteValueSafe}} !
(}}! "
(}}" #
ushort}}# )
)}}) *
m_ListAtLastReset}}* ;
.}}; <
Length}}< B
)}}B C
;}}C D
for~~ 
(~~ 
int~~ 
i~~ 
=~~ 
$num~~ 
;~~ 
i~~ 
<~~ 
m_ListAtLastReset~~  1
.~~1 2
Length~~2 8
;~~8 9
i~~: ;
++~~; =
)~~= >
{ 
NetworkVariableSerialization
�� ,
<
��, -
T
��- .
>
��. /
.
��/ 0
Write
��0 5
(
��5 6
writer
��6 <
,
��< =
ref
��> A
m_ListAtLastReset
��B S
.
��S T
	ElementAt
��T ]
(
��] ^
i
��^ _
)
��_ `
)
��` a
;
��a b
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
	ReadField
�� &
(
��& '
FastBufferReader
��' 7
reader
��8 >
)
��> ?
{
�� 	
m_List
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
reader
�� 
.
�� 

��  
(
��  !
out
��! $
ushort
��% +
count
��, 1
)
��1 2
;
��2 3
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
�� 
count
��  %
;
��% &
i
��' (
++
��( *
)
��* +
{
�� 
NetworkVariableSerialization
�� ,
<
��, -
T
��- .
>
��. /
.
��/ 0
Read
��0 4
(
��4 5
reader
��5 ;
,
��; <
out
��= @
T
��A B
value
��C H
)
��H I
;
��I J
m_List
�� 
.
�� 
Add
�� 
(
�� 
value
��  
)
��  !
;
��! "
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
	ReadDelta
�� &
(
��& '
FastBufferReader
��' 7
reader
��8 >
,
��> ?
bool
��@ D
keepDirtyDelta
��E S
)
��S T
{
�� 	
reader
�� 
.
�� 

��  
(
��  !
out
��! $
ushort
��% +

deltaCount
��, 6
)
��6 7
;
��7 8
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
�� 

deltaCount
��  *
;
��* +
i
��, -
++
��- /
)
��/ 0
{
�� 
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
NetworkListEvent
��) 9
<
��9 :
T
��: ;
>
��; <
.
��< =
	EventType
��= F
	eventType
��G P
)
��P Q
;
��Q R
switch
�� 
(
�� 
	eventType
�� !
)
��! "
{
�� 
case
�� 
NetworkListEvent
�� )
<
��) *
T
��* +
>
��+ ,
.
��, -
	EventType
��- 6
.
��6 7
Add
��7 :
:
��: ;
{
�� *
NetworkVariableSerialization
�� 8
<
��8 9
T
��9 :
>
��: ;
.
��; <
Read
��< @
(
��@ A
reader
��A G
,
��G H
out
��I L
T
��M N
value
��O T
)
��T U
;
��U V
m_List
�� "
.
��" #
Add
��# &
(
��& '
value
��' ,
)
��, -
;
��- .
if
�� 
(
��  

��  -
!=
��. 0
null
��1 5
)
��5 6
{
�� 

��  -
(
��- .
new
��. 1
NetworkListEvent
��2 B
<
��B C
T
��C D
>
��D E
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
Index
��$ )
=
��* +
m_List
��, 2
.
��2 3
Length
��3 9
-
��: ;
$num
��< =
,
��= >
Value
��$ )
=
��* +
m_List
��, 2
[
��2 3
m_List
��3 9
.
��9 :
Length
��: @
-
��A B
$num
��C D
]
��D E
}
��  !
)
��! "
;
��" #
}
�� 
if
�� 
(
��  
keepDirtyDelta
��  .
)
��. /
{
�� 

��  -
.
��- .
Add
��. 1
(
��1 2
new
��2 5
NetworkListEvent
��6 F
<
��F G
T
��G H
>
��H I
(
��I J
)
��J K
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
Index
��$ )
=
��* +
m_List
��, 2
.
��2 3
Length
��3 9
-
��: ;
$num
��< =
,
��= >
Value
��$ )
=
��* +
m_List
��, 2
[
��2 3
m_List
��3 9
.
��9 :
Length
��: @
-
��A B
$num
��C D
]
��D E
}
��  !
)
��! "
;
��" #
}
�� 
}
�� 
break
�� 
;
�� 
case
�� 
NetworkListEvent
�� )
<
��) *
T
��* +
>
��+ ,
.
��, -
	EventType
��- 6
.
��6 7
Insert
��7 =
:
��= >
{
�� 
reader
�� "
.
��" #

��# 0
(
��0 1
out
��1 4
int
��5 8
index
��9 >
)
��> ?
;
��? @*
NetworkVariableSerialization
�� 8
<
��8 9
T
��9 :
>
��: ;
.
��; <
Read
��< @
(
��@ A
reader
��A G
,
��G H
out
��I L
T
��M N
value
��O T
)
��T U
;
��U V
m_List
�� "
.
��" #%
InsertRangeWithBeginEnd
��# :
(
��: ;
index
��; @
,
��@ A
index
��B G
+
��H I
$num
��J K
)
��K L
;
��L M
m_List
�� "
[
��" #
index
��# (
]
��( )
=
��* +
value
��, 1
;
��1 2
if
�� 
(
��  

��  -
!=
��. 0
null
��1 5
)
��5 6
{
�� 

��  -
(
��- .
new
��. 1
NetworkListEvent
��2 B
<
��B C
T
��C D
>
��D E
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
Index
��$ )
=
��* +
index
��, 1
,
��1 2
Value
��$ )
=
��* +
m_List
��, 2
[
��2 3
index
��3 8
]
��8 9
}
��  !
)
��! "
;
��" #
}
�� 
if
�� 
(
��  
keepDirtyDelta
��  .
)
��. /
{
�� 

��  -
.
��- .
Add
��. 1
(
��1 2
new
��2 5
NetworkListEvent
��6 F
<
��F G
T
��G H
>
��H I
(
��I J
)
��J K
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
Index
��$ )
=
��* +
index
��, 1
,
��1 2
Value
��$ )
=
��* +
m_List
��, 2
[
��2 3
index
��3 8
]
��8 9
}
��  !
)
��! "
;
��" #
}
�� 
}
�� 
break
�� 
;
�� 
case
�� 
NetworkListEvent
�� )
<
��) *
T
��* +
>
��+ ,
.
��, -
	EventType
��- 6
.
��6 7
Remove
��7 =
:
��= >
{
�� *
NetworkVariableSerialization
�� 8
<
��8 9
T
��9 :
>
��: ;
.
��; <
Read
��< @
(
��@ A
reader
��A G
,
��G H
out
��I L
T
��M N
value
��O T
)
��T U
;
��U V
int
�� 
index
��  %
=
��& '
m_List
��( .
.
��. /
IndexOf
��/ 6
(
��6 7
value
��7 <
)
��< =
;
��= >
if
�� 
(
��  
index
��  %
==
��& (
-
��) *
$num
��* +
)
��+ ,
{
�� 
break
��  %
;
��% &
}
�� 
m_List
�� "
.
��" #
RemoveAt
��# +
(
��+ ,
index
��, 1
)
��1 2
;
��2 3
if
�� 
(
��  

��  -
!=
��. 0
null
��1 5
)
��5 6
{
�� 

��  -
(
��- .
new
��. 1
NetworkListEvent
��2 B
<
��B C
T
��C D
>
��D E
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
Index
��$ )
=
��* +
index
��, 1
,
��1 2
Value
��$ )
=
��* +
value
��, 1
}
��  !
)
��! "
;
��" #
}
�� 
if
�� 
(
��  
keepDirtyDelta
��  .
)
��. /
{
�� 

��  -
.
��- .
Add
��. 1
(
��1 2
new
��2 5
NetworkListEvent
��6 F
<
��F G
T
��G H
>
��H I
(
��I J
)
��J K
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
Index
��$ )
=
��* +
index
��, 1
,
��1 2
Value
��$ )
=
��* +
value
��, 1
}
��  !
)
��! "
;
��" #
}
�� 
}
�� 
break
�� 
;
�� 
case
�� 
NetworkListEvent
�� )
<
��) *
T
��* +
>
��+ ,
.
��, -
	EventType
��- 6
.
��6 7
RemoveAt
��7 ?
:
��? @
{
�� 
reader
�� "
.
��" #

��# 0
(
��0 1
out
��1 4
int
��5 8
index
��9 >
)
��> ?
;
��? @
T
�� 
value
�� #
=
��$ %
m_List
��& ,
[
��, -
index
��- 2
]
��2 3
;
��3 4
m_List
�� "
.
��" #
RemoveAt
��# +
(
��+ ,
index
��, 1
)
��1 2
;
��2 3
if
�� 
(
��  

��  -
!=
��. 0
null
��1 5
)
��5 6
{
�� 

��  -
(
��- .
new
��. 1
NetworkListEvent
��2 B
<
��B C
T
��C D
>
��D E
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
Index
��$ )
=
��* +
index
��, 1
,
��1 2
Value
��$ )
=
��* +
value
��, 1
}
��  !
)
��! "
;
��" #
}
�� 
if
�� 
(
��  
keepDirtyDelta
��  .
)
��. /
{
�� 

��  -
.
��- .
Add
��. 1
(
��1 2
new
��2 5
NetworkListEvent
��6 F
<
��F G
T
��G H
>
��H I
(
��I J
)
��J K
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
Index
��$ )
=
��* +
index
��, 1
,
��1 2
Value
��$ )
=
��* +
value
��, 1
}
��  !
)
��! "
;
��" #
}
�� 
}
�� 
break
�� 
;
�� 
case
�� 
NetworkListEvent
�� )
<
��) *
T
��* +
>
��+ ,
.
��, -
	EventType
��- 6
.
��6 7
Value
��7 <
:
��< =
{
�� 
reader
�� "
.
��" #

��# 0
(
��0 1
out
��1 4
int
��5 8
index
��9 >
)
��> ?
;
��? @*
NetworkVariableSerialization
�� 8
<
��8 9
T
��9 :
>
��: ;
.
��; <
Read
��< @
(
��@ A
reader
��A G
,
��G H
out
��I L
T
��M N
value
��O T
)
��T U
;
��U V
if
�� 
(
��  
index
��  %
>=
��& (
m_List
��) /
.
��/ 0
Length
��0 6
)
��6 7
{
�� 
throw
��  %
new
��& )
	Exception
��* 3
(
��3 4
$str
��4 i
)
��i j
;
��j k
}
�� 
var
�� 

��  -
=
��. /
m_List
��0 6
[
��6 7
index
��7 <
]
��< =
;
��= >
m_List
�� "
[
��" #
index
��# (
]
��( )
=
��* +
value
��, 1
;
��1 2
if
�� 
(
��  

��  -
!=
��. 0
null
��1 5
)
��5 6
{
�� 

��  -
(
��- .
new
��. 1
NetworkListEvent
��2 B
<
��B C
T
��C D
>
��D E
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
Index
��$ )
=
��* +
index
��, 1
,
��1 2
Value
��$ )
=
��* +
value
��, 1
,
��1 2

��$ 1
=
��2 3

��4 A
}
��  !
)
��! "
;
��" #
}
�� 
if
�� 
(
��  
keepDirtyDelta
��  .
)
��. /
{
�� 

��  -
.
��- .
Add
��. 1
(
��1 2
new
��2 5
NetworkListEvent
��6 F
<
��F G
T
��G H
>
��H I
(
��I J
)
��J K
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
Index
��$ )
=
��* +
index
��, 1
,
��1 2
Value
��$ )
=
��* +
value
��, 1
,
��1 2

��$ 1
=
��2 3

��4 A
}
��  !
)
��! "
;
��" #
}
�� 
}
�� 
break
�� 
;
�� 
case
�� 
NetworkListEvent
�� )
<
��) *
T
��* +
>
��+ ,
.
��, -
	EventType
��- 6
.
��6 7
Clear
��7 <
:
��< =
{
�� 
m_List
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
if
�� 
(
��  

��  -
!=
��. 0
null
��1 5
)
��5 6
{
�� 

��  -
(
��- .
new
��. 1
NetworkListEvent
��2 B
<
��B C
T
��C D
>
��D E
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
,
��4 5
}
��  !
)
��! "
;
��" #
}
�� 
if
�� 
(
��  
keepDirtyDelta
��  .
)
��. /
{
�� 

��  -
.
��- .
Add
��. 1
(
��1 2
new
��2 5
NetworkListEvent
��6 F
<
��F G
T
��G H
>
��H I
(
��I J
)
��J K
{
��  !
Type
��$ (
=
��) *
	eventType
��+ 4
}
��  !
)
��! "
;
��" #
}
�� 
}
�� 
break
�� 
;
�� 
case
�� 
NetworkListEvent
�� )
<
��) *
T
��* +
>
��+ ,
.
��, -
	EventType
��- 6
.
��6 7
Full
��7 ;
:
��; <
{
�� 
	ReadField
�� %
(
��% &
reader
��& ,
)
��, -
;
��- .

ResetDirty
�� &
(
��& '
)
��' (
;
��( )
}
�� 
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
IEnumerator
�� 
<
�� 
T
�� 
>
�� 

�� +
(
��+ ,
)
��, -
{
�� 	
return
�� 
m_List
�� 
.
�� 

�� '
(
��' (
)
��( )
;
��) *
}
�� 	
public
�� 
void
�� 
Add
�� 
(
�� 
T
�� 
item
�� 
)
�� 
{
�� 	
m_List
�� 
.
�� 
Add
�� 
(
�� 
item
�� 
)
�� 
;
�� 
var
�� 
	listEvent
�� 
=
�� 
new
�� 
NetworkListEvent
��  0
<
��0 1
T
��1 2
>
��2 3
(
��3 4
)
��4 5
{
�� 
Type
�� 
=
�� 
NetworkListEvent
�� '
<
��' (
T
��( )
>
��) *
.
��* +
	EventType
��+ 4
.
��4 5
Add
��5 8
,
��8 9
Value
�� 
=
�� 
item
�� 
,
�� 
Index
�� 
=
�� 
m_List
�� 
.
�� 
Length
�� %
-
��& '
$num
��( )
}
�� 
;
��
HandleAddListEvent
�� 
(
�� 
	listEvent
�� (
)
��( )
;
��) *
}
�� 	
public
�� 
void
�� 
Clear
�� 
(
�� 
)
�� 
{
�� 	
m_List
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
var
�� 
	listEvent
�� 
=
�� 
new
�� 
NetworkListEvent
��  0
<
��0 1
T
��1 2
>
��2 3
(
��3 4
)
��4 5
{
�� 
Type
�� 
=
�� 
NetworkListEvent
�� '
<
��' (
T
��( )
>
��) *
.
��* +
	EventType
��+ 4
.
��4 5
Clear
��5 :
}
�� 
;
��
HandleAddListEvent
�� 
(
�� 
	listEvent
�� (
)
��( )
;
��) *
}
�� 	
public
�� 
bool
�� 
Contains
�� 
(
�� 
T
�� 
item
�� #
)
��# $
{
�� 	
int
�� 
index
�� 
=
�� #
NativeArrayExtensions
�� -
.
��- .
IndexOf
��. 5
(
��5 6
m_List
��6 <
,
��< =
item
��> B
)
��B C
;
��C D
return
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
Remove
�� 
(
�� 
T
�� 
item
�� !
)
��! "
{
�� 	
int
�� 
index
�� 
=
�� #
NativeArrayExtensions
�� -
.
��- .
IndexOf
��. 5
(
��5 6
m_List
��6 <
,
��< =
item
��> B
)
��B C
;
��C D
if
�� 
(
�� 
index
�� 
==
�� 
-
�� 
$num
�� 
)
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
m_List
�� 
.
�� 
RemoveAt
�� 
(
�� 
index
�� !
)
��! "
;
��" #
var
�� 
	listEvent
�� 
=
�� 
new
�� 
NetworkListEvent
��  0
<
��0 1
T
��1 2
>
��2 3
(
��3 4
)
��4 5
{
�� 
Type
�� 
=
�� 
NetworkListEvent
�� '
<
��' (
T
��( )
>
��) *
.
��* +
	EventType
��+ 4
.
��4 5
Remove
��5 ;
,
��; <
Value
�� 
=
�� 
item
�� 
}
�� 
;
��
HandleAddListEvent
�� 
(
�� 
	listEvent
�� (
)
��( )
;
��) *
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
int
�� 
Count
�� 
=>
�� 
m_List
�� "
.
��" #
Length
��# )
;
��) *
public
�� 
int
�� 
IndexOf
�� 
(
�� 
T
�� 
item
�� !
)
��! "
{
�� 	
return
�� 
m_List
�� 
.
�� 
IndexOf
�� !
(
��! "
item
��" &
)
��& '
;
��' (
}
�� 	
public
�� 
void
�� 
Insert
�� 
(
�� 
int
�� 
index
�� $
,
��$ %
T
��& '
item
��( ,
)
��, -
{
�� 	
m_List
�� 
.
�� %
InsertRangeWithBeginEnd
�� *
(
��* +
index
��+ 0
,
��0 1
index
��2 7
+
��8 9
$num
��: ;
)
��; <
;
��< =
m_List
�� 
[
�� 
index
�� 
]
�� 
=
�� 
item
��  
;
��  !
var
�� 
	listEvent
�� 
=
�� 
new
�� 
NetworkListEvent
��  0
<
��0 1
T
��1 2
>
��2 3
(
��3 4
)
��4 5
{
�� 
Type
�� 
=
�� 
NetworkListEvent
�� '
<
��' (
T
��( )
>
��) *
.
��* +
	EventType
��+ 4
.
��4 5
Insert
��5 ;
,
��; <
Index
�� 
=
�� 
index
�� 
,
�� 
Value
�� 
=
�� 
item
�� 
}
�� 
;
��
HandleAddListEvent
�� 
(
�� 
	listEvent
�� (
)
��( )
;
��) *
}
�� 	
public
�� 
void
�� 
RemoveAt
�� 
(
�� 
int
��  
index
��! &
)
��& '
{
�� 	
m_List
�� 
.
�� 
RemoveAt
�� 
(
�� 
index
�� !
)
��! "
;
��" #
var
�� 
	listEvent
�� 
=
�� 
new
�� 
NetworkListEvent
��  0
<
��0 1
T
��1 2
>
��2 3
(
��3 4
)
��4 5
{
�� 
Type
�� 
=
�� 
NetworkListEvent
�� '
<
��' (
T
��( )
>
��) *
.
��* +
	EventType
��+ 4
.
��4 5
RemoveAt
��5 =
,
��= >
Index
�� 
=
�� 
index
�� 
}
�� 
;
��
HandleAddListEvent
�� 
(
�� 
	listEvent
�� (
)
��( )
;
��) *
}
�� 	
public
�� 
T
�� 
this
�� 
[
�� 
int
�� 
index
�� 
]
��  
{
�� 	
get
�� 
=>
�� 
m_List
�� 
[
�� 
index
�� 
]
��  
;
��  !
set
�� 
{
�� 
m_List
�� 
[
�� 
index
�� 
]
�� 
=
�� 
value
��  %
;
��% &
var
�� 
	listEvent
�� 
=
�� 
new
��  #
NetworkListEvent
��$ 4
<
��4 5
T
��5 6
>
��6 7
(
��7 8
)
��8 9
{
�� 
Type
�� 
=
�� 
NetworkListEvent
�� +
<
��+ ,
T
��, -
>
��- .
.
��. /
	EventType
��/ 8
.
��8 9
Value
��9 >
,
��> ?
Index
�� 
=
�� 
index
�� !
,
��! "
Value
�� 
=
�� 
value
�� !
}
�� 
;
��  
HandleAddListEvent
�� "
(
��" #
	listEvent
��# ,
)
��, -
;
��- .
}
�� 
}
�� 	
private
�� 
void
��  
HandleAddListEvent
�� '
(
��' (
NetworkListEvent
��( 8
<
��8 9
T
��9 :
>
��: ;
	listEvent
��< E
)
��E F
{
�� 	

�� 
.
�� 
Add
�� 
(
�� 
	listEvent
�� '
)
��' (
;
��( )

�� 
?
�� 
.
�� 
Invoke
�� !
(
��! "
	listEvent
��" +
)
��+ ,
;
��, -
}
�� 	
public
�� 
int
�� 
LastModifiedTick
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
NetworkTickSystem
�� (
.
��( )
NoTick
��) /
;
��/ 0
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
Dispose
�� $
(
��$ %
)
��% &
{
�� 	
m_List
�� 
.
�� 
Dispose
�� 
(
�� 
)
�� 
;
�� 
m_ListAtLastReset
�� 
.
�� 
Dispose
�� %
(
��% &
)
��& '
;
��' (

�� 
.
�� 
Dispose
�� !
(
��! "
)
��" #
;
��# $
}
�� 	
}
�� 
public
�� 

struct
�� 
NetworkListEvent
�� "
<
��" #
T
��# $
>
��$ %
{
�� 
public
�� 
enum
�� 
	EventType
�� 
:
�� 
byte
��  $
{
�� 	
Add
�� 
,
�� 
Insert
�� 
,
�� 
Remove
�� 
,
�� 
RemoveAt
�� 
,
�� 
Value
�� 
,
�� 
Clear
�� 
,
�� 
Full
�� 
}
�� 	
public
�� 
	EventType
�� 
Type
�� 
;
�� 
public
�� 
T
�� 
Value
�� 
;
�� 
public
�� 
T
�� 

�� 
;
�� 
public
�� 
int
�� 
Index
�� 
;
�� 
}
�� 
}�� �E
yC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\NetworkObjectReference.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public

 

struct

 "
NetworkObjectReference

 (
:

) * 
INetworkSerializable

+ ?
,

? @

IEquatable

A K
<

K L"
NetworkObjectReference

L b
>

b c
{ 
private 
ulong 
m_NetworkObjectId '
;' (
public 
ulong 
NetworkObjectId $
{ 	
get 
=> 
m_NetworkObjectId $
;$ %
internal 
set 
=> 
m_NetworkObjectId -
=. /
value0 5
;5 6
} 	
public "
NetworkObjectReference %
(% &


)A B
{ 	
if 
( 

==  
null! %
)% &
{   
throw!! 
new!! !
ArgumentNullException!! /
(!!/ 0
nameof!!0 6
(!!6 7

)!!D E
)!!E F
;!!F G
}"" 
if$$ 
($$ 

.$$ 
	IsSpawned$$ '
==$$( *
false$$+ 0
)$$0 1
{%% 
throw&& 
new&& 
ArgumentException&& +
(&&+ ,
$"&&, .
{&&. /
nameof&&/ 5
(&&5 6"
NetworkObjectReference&&6 L
)&&L M
}&&M N
$str&&N p
{&&p q
nameof&&q w
(&&w x

)
&&� �
}
&&� �
$str
&&� �
"
&&� �
)
&&� �
;
&&� �
}'' 
m_NetworkObjectId)) 
=)) 

.))- .
NetworkObjectId)). =
;))= >
}** 	
public22 "
NetworkObjectReference22 %
(22% &

GameObject22& 0

gameObject221 ;
)22; <
{33 	
if44 
(44 

gameObject44 
==44 
null44 "
)44" #
{55 
throw66 
new66 !
ArgumentNullException66 /
(66/ 0
nameof660 6
(666 7

gameObject667 A
)66A B
)66B C
;66C D
}77 
var99 

=99 

gameObject99  *
.99* +
GetComponent99+ 7
<997 8

>99E F
(99F G
)99G H
;99H I
if;; 
(;; 

==;;  
null;;! %
);;% &
{<< 
throw== 
new== 
ArgumentException== +
(==+ ,
$"==, .
$str==. <
{==< =
nameof=== C
(==C D"
NetworkObjectReference==D Z
)==Z [
}==[ \
$str==\ b
{==b c
nameof==c i
(==i j

GameObject==j t
)==t u
}==u v
$str	==v �
{
==� �
nameof
==� �
(
==� �

==� �
)
==� �
}
==� �
$str
==� �
"
==� �
)
==� �
;
==� �
}>> 
if@@ 
(@@ 

.@@ 
	IsSpawned@@ '
==@@( *
false@@+ 0
)@@0 1
{AA 
throwBB 
newBB 
ArgumentExceptionBB +
(BB+ ,
$"BB, .
{BB. /
nameofBB/ 5
(BB5 6"
NetworkObjectReferenceBB6 L
)BBL M
}BBM N
$strBBN p
{BBp q
nameofBBq w
(BBw x

)
BB� �
}
BB� �
$str
BB� �
"
BB� �
)
BB� �
;
BB� �
}CC 
m_NetworkObjectIdEE 
=EE 

.EE- .
NetworkObjectIdEE. =
;EE= >
}FF 	
publicNN 
boolNN 
TryGetNN 
(NN 
outNN 


,NN: ;
NetworkManagerNN< J
networkManagerNNK Y
=NNZ [
nullNN\ `
)NN` a
{OO 	

=PP 
ResolvePP #
(PP# $
thisPP$ (
,PP( )
networkManagerPP* 8
)PP8 9
;PP9 :
returnQQ 

!=QQ! #
nullQQ$ (
;QQ( )
}RR 	
[ZZ 	

MethodImplZZ	 
(ZZ 
MethodImplOptionsZZ %
.ZZ% &
AggressiveInliningZZ& 8
)ZZ8 9
]ZZ9 :
private[[ 
static[[ 

Resolve[[% ,
([[, -"
NetworkObjectReference[[- C
networkObjectRef[[D T
,[[T U
NetworkManager[[V d
networkManager[[e s
=[[t u
null[[v z
)[[z {
{\\ 	
networkManager]] 
=]] 
networkManager]] +
!=]], .
null]]/ 3
?]]4 5
networkManager]]6 D
:]]E F
NetworkManager]]G U
.]]U V
	Singleton]]V _
;]]_ `
networkManager^^ 
.^^ 
SpawnManager^^ '
.^^' (
SpawnedObjects^^( 6
.^^6 7
TryGetValue^^7 B
(^^B C
networkObjectRef^^C S
.^^S T
m_NetworkObjectId^^T e
,^^e f
out^^g j


)
^^� �
;
^^� �
return`` 

;``  !
}aa 	
publicdd 
booldd 
Equalsdd 
(dd "
NetworkObjectReferencedd 1
otherdd2 7
)dd7 8
{ee 	
returnff 
m_NetworkObjectIdff $
==ff% '
otherff( -
.ff- .
m_NetworkObjectIdff. ?
;ff? @
}gg 	
publicjj 
overridejj 
booljj 
Equalsjj #
(jj# $
objectjj$ *
objjj+ .
)jj. /
{kk 	
returnll 
objll 
isll "
NetworkObjectReferencell 0
otherll1 6
&&ll7 9
Equalsll: @
(ll@ A
otherllA F
)llF G
;llG H
}mm 	
publicpp 
overridepp 
intpp 
GetHashCodepp '
(pp' (
)pp( )
{qq 	
returnrr 
m_NetworkObjectIdrr $
.rr$ %
GetHashCoderr% 0
(rr0 1
)rr1 2
;rr2 3
}ss 	
publicvv 
voidvv 
NetworkSerializevv $
<vv$ %
Tvv% &
>vv& '
(vv' (
BufferSerializervv( 8
<vv8 9
Tvv9 :
>vv: ;

serializervv< F
)vvF G
wherevvH M
TvvN O
:vvP Q

{ww 	

serializerxx 
.xx 
SerializeValuexx %
(xx% &
refxx& )
m_NetworkObjectIdxx* ;
)xx; <
;xx< =
}yy 	
public
�� 
static
�� 
implicit
�� 
operator
�� '

��( 5
(
��5 6$
NetworkObjectReference
��6 L
networkObjectRef
��M ]
)
��] ^
=>
��_ a
Resolve
��b i
(
��i j
networkObjectRef
��j z
)
��z {
;
��{ |
public
�� 
static
�� 
implicit
�� 
operator
�� '$
NetworkObjectReference
��( >
(
��> ?

��? L

��M Z
)
��Z [
=>
��\ ^
new
��_ b$
NetworkObjectReference
��c y
(
��y z

)��� �
;��� �
public
�� 
static
�� 
implicit
�� 
operator
�� '

GameObject
��( 2
(
��2 3$
NetworkObjectReference
��3 I
networkObjectRef
��J Z
)
��Z [
=>
��\ ^
Resolve
��_ f
(
��f g
networkObjectRef
��g w
)
��w x
.
��x y

gameObject��y �
;��� �
public
�� 
static
�� 
implicit
�� 
operator
�� '$
NetworkObjectReference
��( >
(
��> ?

GameObject
��? I

gameObject
��J T
)
��T U
=>
��V X
new
��Y \$
NetworkObjectReference
��] s
(
��s t

gameObject
��t ~
)
��~ 
;�� �
}
�� 
}�� ��
yC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\BufferSerializerWriter.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
struct
BufferSerializerWriter *
:+ ,

{ 
private		 
FastBufferWriter		  
m_Writer		! )
;		) *
public "
BufferSerializerWriter %
(% &
FastBufferWriter& 6
writer7 =
)= >
{ 	
m_Writer
=
writer
;
} 	
public 
bool 
IsReader 
=> 
false  %
;% &
public 
bool 
IsWriter 
=> 
true  $
;$ %
public 
FastBufferReader 
GetFastBufferReader  3
(3 4
)4 5
{ 	
throw 
new %
InvalidOperationException /
(/ 0
$str0 }
)} ~
;~ 
} 	
public 
FastBufferWriter 
GetFastBufferWriter  3
(3 4
)4 5
{ 	
return 
m_Writer 
; 
} 	
public 
void 
SerializeValue "
(" #
ref# &
string' -
s. /
,/ 0
bool1 5
oneByteChars6 B
=C D
falseE J
)J K
=>L N
m_WriterO W
.W X
WriteValueSafeX f
(f g
sg h
,h i
oneByteCharsj v
)v w
;w x
public 
void 
SerializeValue "
(" #
ref# &
byte' +
value, 1
)1 2
=>3 5
m_Writer6 >
.> ?

(L M
valueM R
)R S
;S T
public 
void 
SerializeValue "
<" #
T# $
>$ %
(% &
ref& )
T* +
value, 1
,1 2
FastBufferWriter3 C
.C D

unusedR X
=Y Z
default[ b
)b c
whered i
Tj k
:l m
	unmanagedn w
,w x
IComparable	y �
,
� �
IConvertible
� �
,
� �
IComparable
� �
<
� �
T
� �
>
� �
,
� �

IEquatable
� �
<
� �
T
� �
>
� �
=>
� �
m_Writer
� �
.
� �
WriteValueSafe
� �
(
� �
value
� �
)
� �
;
� �
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
value  . 3
,  3 4
FastBufferWriter  5 E
.  E F

unused  T Z
=  [ \
default  ] d
)  d e
where  f k
T  l m
:  n o
	unmanaged  p y
,  y z
IComparable	  { �
,
  � �
IConvertible
  � �
,
  � �
IComparable
  � �
<
  � �
T
  � �
>
  � �
,
  � �

IEquatable
  � �
<
  � �
T
  � �
>
  � �
=>
  � �
m_Writer
  � �
.
  � �
WriteValueSafe
  � �
(
  � �
value
  � �
)
  � �
;
  � �
public!! 
void!! 
SerializeValue!! "
<!!" #
T!!# $
>!!$ %
(!!% &
ref!!& )
T!!* +
value!!, 1
,!!1 2
FastBufferWriter!!3 C
.!!C D
ForEnums!!D L
unused!!M S
=!!T U
default!!V ]
)!!] ^
where!!_ d
T!!e f
:!!g h
	unmanaged!!i r
,!!r s
Enum!!t x
=>!!y {
m_Writer	!!| �
.
!!� �
WriteValueSafe
!!� �
(
!!� �
value
!!� �
)
!!� �
;
!!� �
public"" 
void"" 
SerializeValue"" "
<""" #
T""# $
>""$ %
(""% &
ref""& )
T""* +
[""+ ,
]"", -
value"". 3
,""3 4
FastBufferWriter""5 E
.""E F
ForEnums""F N
unused""O U
=""V W
default""X _
)""_ `
where""a f
T""g h
:""i j
	unmanaged""k t
,""t u
Enum""v z
=>""{ }
m_Writer	""~ �
.
""� �
WriteValueSafe
""� �
(
""� �
value
""� �
)
""� �
;
""� �
public## 
void## 
SerializeValue## "
<##" #
T### $
>##$ %
(##% &
ref##& )
T##* +
value##, 1
,##1 2
FastBufferWriter##3 C
.##C D

ForStructs##D N
unused##O U
=##V W
default##X _
)##_ `
where##a f
T##g h
:##i j
	unmanaged##k t
,##t u&
INetworkSerializeByMemcpy	##v �
=>
##� �
m_Writer
##� �
.
##� �
WriteValueSafe
##� �
(
##� �
value
##� �
)
##� �
;
##� �
public$$ 
void$$ 
SerializeValue$$ "
<$$" #
T$$# $
>$$$ %
($$% &
ref$$& )
T$$* +
[$$+ ,
]$$, -
value$$. 3
,$$3 4
FastBufferWriter$$5 E
.$$E F

ForStructs$$F P
unused$$Q W
=$$X Y
default$$Z a
)$$a b
where$$c h
T$$i j
:$$k l
	unmanaged$$m v
,$$v w&
INetworkSerializeByMemcpy	$$x �
=>
$$� �
m_Writer
$$� �
.
$$� �
WriteValueSafe
$$� �
(
$$� �
value
$$� �
)
$$� �
;
$$� �
public%% 
void%% 
SerializeValue%% "
<%%" #
T%%# $
>%%$ %
(%%% &
ref%%& )
T%%* +
value%%, 1
,%%1 2
FastBufferWriter%%3 C
.%%C D"
ForNetworkSerializable%%D Z
unused%%[ a
=%%b c
default%%d k
)%%k l
where%%m r
T%%s t
:%%u v!
INetworkSerializable	%%w �
,
%%� �
new
%%� �
(
%%� �
)
%%� �
=>
%%� �
m_Writer
%%� �
.
%%� �

WriteValue
%%� �
(
%%� �
value
%%� �
)
%%� �
;
%%� �
public&& 
void&& 
SerializeValue&& "
<&&" #
T&&# $
>&&$ %
(&&% &
ref&&& )
T&&* +
[&&+ ,
]&&, -
value&&. 3
,&&3 4
FastBufferWriter&&5 E
.&&E F"
ForNetworkSerializable&&F \
unused&&] c
=&&d e
default&&f m
)&&m n
where&&o t
T&&u v
:&&w x!
INetworkSerializable	&&y �
,
&&� �
new
&&� �
(
&&� �
)
&&� �
=>
&&� �
m_Writer
&&� �
.
&&� �

WriteValue
&&� �
(
&&� �
value
&&� �
)
&&� �
;
&&� �
public'' 
void'' 
SerializeValue'' "
<''" #
T''# $
>''$ %
(''% &
ref''& )
T''* +
value'', 1
,''1 2
FastBufferWriter''3 C
.''C D
ForFixedStrings''D S
unused''T Z
=''[ \
default''] d
)''d e
where(( 
T(( 
:(( 
	unmanaged(( 
,((  
INativeList((! ,
<((, -
byte((- 1
>((1 2
,((2 3

IUTF8Bytes((4 >
=>((? A
m_Writer((B J
.((J K
WriteValueSafe((K Y
(((Y Z
value((Z _
)((_ `
;((` a
public** 
void** 
SerializeValue** "
(**" #
ref**# &
Vector2**' .
value**/ 4
)**4 5
=>**6 8
m_Writer**9 A
.**A B
WriteValueSafe**B P
(**P Q
value**Q V
)**V W
;**W X
public++ 
void++ 
SerializeValue++ "
(++" #
ref++# &
Vector2++' .
[++. /
]++/ 0
value++1 6
)++6 7
=>++8 :
m_Writer++; C
.++C D
WriteValueSafe++D R
(++R S
value++S X
)++X Y
;++Y Z
public,, 
void,, 
SerializeValue,, "
(,," #
ref,,# &
Vector3,,' .
value,,/ 4
),,4 5
=>,,6 8
m_Writer,,9 A
.,,A B
WriteValueSafe,,B P
(,,P Q
value,,Q V
),,V W
;,,W X
public-- 
void-- 
SerializeValue-- "
(--" #
ref--# &
Vector3--' .
[--. /
]--/ 0
value--1 6
)--6 7
=>--8 :
m_Writer--; C
.--C D
WriteValueSafe--D R
(--R S
value--S X
)--X Y
;--Y Z
public.. 
void.. 
SerializeValue.. "
(.." #
ref..# &

Vector2Int..' 1
value..2 7
)..7 8
=>..9 ;
m_Writer..< D
...D E
WriteValueSafe..E S
(..S T
value..T Y
)..Y Z
;..Z [
public// 
void// 
SerializeValue// "
(//" #
ref//# &

Vector2Int//' 1
[//1 2
]//2 3
value//4 9
)//9 :
=>//; =
m_Writer//> F
.//F G
WriteValueSafe//G U
(//U V
value//V [
)//[ \
;//\ ]
public00 
void00 
SerializeValue00 "
(00" #
ref00# &

Vector3Int00' 1
value002 7
)007 8
=>009 ;
m_Writer00< D
.00D E
WriteValueSafe00E S
(00S T
value00T Y
)00Y Z
;00Z [
public11 
void11 
SerializeValue11 "
(11" #
ref11# &

Vector3Int11' 1
[111 2
]112 3
value114 9
)119 :
=>11; =
m_Writer11> F
.11F G
WriteValueSafe11G U
(11U V
value11V [
)11[ \
;11\ ]
public22 
void22 
SerializeValue22 "
(22" #
ref22# &
Vector422' .
value22/ 4
)224 5
=>226 8
m_Writer229 A
.22A B
WriteValueSafe22B P
(22P Q
value22Q V
)22V W
;22W X
public33 
void33 
SerializeValue33 "
(33" #
ref33# &
Vector433' .
[33. /
]33/ 0
value331 6
)336 7
=>338 :
m_Writer33; C
.33C D
WriteValueSafe33D R
(33R S
value33S X
)33X Y
;33Y Z
public44 
void44 
SerializeValue44 "
(44" #
ref44# &

Quaternion44' 1
value442 7
)447 8
=>449 ;
m_Writer44< D
.44D E
WriteValueSafe44E S
(44S T
value44T Y
)44Y Z
;44Z [
public55 
void55 
SerializeValue55 "
(55" #
ref55# &

Quaternion55' 1
[551 2
]552 3
value554 9
)559 :
=>55; =
m_Writer55> F
.55F G
WriteValueSafe55G U
(55U V
value55V [
)55[ \
;55\ ]
public66 
void66 
SerializeValue66 "
(66" #
ref66# &
Color66' ,
value66- 2
)662 3
=>664 6
m_Writer667 ?
.66? @
WriteValueSafe66@ N
(66N O
value66O T
)66T U
;66U V
public77 
void77 
SerializeValue77 "
(77" #
ref77# &
Color77' ,
[77, -
]77- .
value77/ 4
)774 5
=>776 8
m_Writer779 A
.77A B
WriteValueSafe77B P
(77P Q
value77Q V
)77V W
;77W X
public88 
void88 
SerializeValue88 "
(88" #
ref88# &
Color3288' .
value88/ 4
)884 5
=>886 8
m_Writer889 A
.88A B
WriteValueSafe88B P
(88P Q
value88Q V
)88V W
;88W X
public99 
void99 
SerializeValue99 "
(99" #
ref99# &
Color3299' .
[99. /
]99/ 0
value991 6
)996 7
=>998 :
m_Writer99; C
.99C D
WriteValueSafe99D R
(99R S
value99S X
)99X Y
;99Y Z
public:: 
void:: 
SerializeValue:: "
(::" #
ref::# &
Ray::' *
value::+ 0
)::0 1
=>::2 4
m_Writer::5 =
.::= >
WriteValueSafe::> L
(::L M
value::M R
)::R S
;::S T
public;; 
void;; 
SerializeValue;; "
(;;" #
ref;;# &
Ray;;' *
[;;* +
];;+ ,
value;;- 2
);;2 3
=>;;4 6
m_Writer;;7 ?
.;;? @
WriteValueSafe;;@ N
(;;N O
value;;O T
);;T U
;;;U V
public<< 
void<< 
SerializeValue<< "
(<<" #
ref<<# &
Ray2D<<' ,
value<<- 2
)<<2 3
=><<4 6
m_Writer<<7 ?
.<<? @
WriteValueSafe<<@ N
(<<N O
value<<O T
)<<T U
;<<U V
public== 
void== 
SerializeValue== "
(==" #
ref==# &
Ray2D==' ,
[==, -
]==- .
value==/ 4
)==4 5
=>==6 8
m_Writer==9 A
.==A B
WriteValueSafe==B P
(==P Q
value==Q V
)==V W
;==W X
public?? 
void?? (
SerializeNetworkSerializable?? 0
<??0 1
T??1 2
>??2 3
(??3 4
ref??4 7
T??8 9
value??: ?
)??? @
where??A F
T??G H
:??I J 
INetworkSerializable??K _
,??_ `
new??a d
(??d e
)??e f
{@@ 	
m_WriterAA 
.AA $
WriteNetworkSerializableAA -
(AA- .
valueAA. 3
)AA3 4
;AA4 5
}BB 	
publicDD 
boolDD 
PreCheckDD 
(DD 
intDD  
amountDD! '
)DD' (
{EE 	
returnFF 
m_WriterFF 
.FF 

(FF) *
amountFF* 0
)FF0 1
;FF1 2
}GG 	
publicII 
voidII $
SerializeValuePreCheckedII ,
(II, -
refII- 0
stringII1 7
sII8 9
,II9 :
boolII; ?
oneByteCharsII@ L
=IIM N
falseIIO T
)IIT U
=>IIV X
m_WriterIIY a
.IIa b

WriteValueIIb l
(IIl m
sIIm n
,IIn o
oneByteCharsIIp |
)II| }
;II} ~
publicJJ 
voidJJ $
SerializeValuePreCheckedJJ ,
(JJ, -
refJJ- 0
byteJJ1 5
valueJJ6 ;
)JJ; <
=>JJ= ?
m_WriterJJ@ H
.JJH I
	WriteByteJJI R
(JJR S
valueJJS X
)JJX Y
;JJY Z
publicKK 
voidKK $
SerializeValuePreCheckedKK ,
<KK, -
TKK- .
>KK. /
(KK/ 0
refKK0 3
TKK4 5
valueKK6 ;
,KK; <
FastBufferWriterKK= M
.KKM N

unusedKK\ b
=KKc d
defaultKKe l
)KKl m
whereKKn s
TKKt u
:KKv w
	unmanaged	KKx �
,
KK� �
IComparable
KK� �
,
KK� �
IConvertible
KK� �
,
KK� �
IComparable
KK� �
<
KK� �
T
KK� �
>
KK� �
,
KK� �

IEquatable
KK� �
<
KK� �
T
KK� �
>
KK� �
=>
KK� �
m_Writer
KK� �
.
KK� �

WriteValue
KK� �
(
KK� �
value
KK� �
)
KK� �
;
KK� �
publicLL 
voidLL $
SerializeValuePreCheckedLL ,
<LL, -
TLL- .
>LL. /
(LL/ 0
refLL0 3
TLL4 5
[LL5 6
]LL6 7
valueLL8 =
,LL= >
FastBufferWriterLL? O
.LLO P

unusedLL^ d
=LLe f
defaultLLg n
)LLn o
whereLLp u
TLLv w
:LLx y
	unmanaged	LLz �
,
LL� �
IComparable
LL� �
,
LL� �
IConvertible
LL� �
,
LL� �
IComparable
LL� �
<
LL� �
T
LL� �
>
LL� �
,
LL� �

IEquatable
LL� �
<
LL� �
T
LL� �
>
LL� �
=>
LL� �
m_Writer
LL� �
.
LL� �

WriteValue
LL� �
(
LL� �
value
LL� �
)
LL� �
;
LL� �
publicNN 
voidNN $
SerializeValuePreCheckedNN ,
<NN, -
TNN- .
>NN. /
(NN/ 0
refNN0 3
TNN4 5
valueNN6 ;
,NN; <
FastBufferWriterNN= M
.NNM N
ForEnumsNNN V
unusedNNW ]
=NN^ _
defaultNN` g
)NNg h
whereNNi n
TNNo p
:NNq r
	unmanagedNNs |
,NN| }
Enum	NN~ �
=>
NN� �
m_Writer
NN� �
.
NN� �

WriteValue
NN� �
(
NN� �
value
NN� �
)
NN� �
;
NN� �
publicOO 
voidOO $
SerializeValuePreCheckedOO ,
<OO, -
TOO- .
>OO. /
(OO/ 0
refOO0 3
TOO4 5
[OO5 6
]OO6 7
valueOO8 =
,OO= >
FastBufferWriterOO? O
.OOO P
ForEnumsOOP X
unusedOOY _
=OO` a
defaultOOb i
)OOi j
whereOOk p
TOOq r
:OOs t
	unmanagedOOu ~
,OO~ 
Enum
OO� �
=>
OO� �
m_Writer
OO� �
.
OO� �

WriteValue
OO� �
(
OO� �
value
OO� �
)
OO� �
;
OO� �
publicPP 
voidPP $
SerializeValuePreCheckedPP ,
<PP, -
TPP- .
>PP. /
(PP/ 0
refPP0 3
TPP4 5
valuePP6 ;
,PP; <
FastBufferWriterPP= M
.PPM N

ForStructsPPN X
unusedPPY _
=PP` a
defaultPPb i
)PPi j
wherePPk p
TPPq r
:PPs t
	unmanagedPPu ~
,PP~ '
INetworkSerializeByMemcpy
PP� �
=>
PP� �
m_Writer
PP� �
.
PP� �

WriteValue
PP� �
(
PP� �
value
PP� �
)
PP� �
;
PP� �
publicQQ 
voidQQ $
SerializeValuePreCheckedQQ ,
<QQ, -
TQQ- .
>QQ. /
(QQ/ 0
refQQ0 3
TQQ4 5
[QQ5 6
]QQ6 7
valueQQ8 =
,QQ= >
FastBufferWriterQQ? O
.QQO P

ForStructsQQP Z
unusedQQ[ a
=QQb c
defaultQQd k
)QQk l
whereQQm r
TQQs t
:QQu v
	unmanaged	QQw �
,
QQ� �'
INetworkSerializeByMemcpy
QQ� �
=>
QQ� �
m_Writer
QQ� �
.
QQ� �

WriteValue
QQ� �
(
QQ� �
value
QQ� �
)
QQ� �
;
QQ� �
publicRR 
voidRR $
SerializeValuePreCheckedRR ,
<RR, -
TRR- .
>RR. /
(RR/ 0
refRR0 3
TRR4 5
valueRR6 ;
,RR; <
FastBufferWriterRR= M
.RRM N
ForFixedStringsRRN ]
unusedRR^ d
=RRe f
defaultRRg n
)RRn o
whereSS 
TSS 
:SS 
	unmanagedSS 
,SS  
INativeListSS! ,
<SS, -
byteSS- 1
>SS1 2
,SS2 3

IUTF8BytesSS4 >
=>SS? A
m_WriterSSB J
.SSJ K

WriteValueSSK U
(SSU V
valueSSV [
)SS[ \
;SS\ ]
publicUU 
voidUU $
SerializeValuePreCheckedUU ,
(UU, -
refUU- 0
Vector2UU1 8
valueUU9 >
)UU> ?
=>UU@ B
m_WriterUUC K
.UUK L

WriteValueUUL V
(UUV W
valueUUW \
)UU\ ]
;UU] ^
publicVV 
voidVV $
SerializeValuePreCheckedVV ,
(VV, -
refVV- 0
Vector2VV1 8
[VV8 9
]VV9 :
valueVV; @
)VV@ A
=>VVB D
m_WriterVVE M
.VVM N

WriteValueVVN X
(VVX Y
valueVVY ^
)VV^ _
;VV_ `
publicWW 
voidWW $
SerializeValuePreCheckedWW ,
(WW, -
refWW- 0
Vector3WW1 8
valueWW9 >
)WW> ?
=>WW@ B
m_WriterWWC K
.WWK L

WriteValueWWL V
(WWV W
valueWWW \
)WW\ ]
;WW] ^
publicXX 
voidXX $
SerializeValuePreCheckedXX ,
(XX, -
refXX- 0
Vector3XX1 8
[XX8 9
]XX9 :
valueXX; @
)XX@ A
=>XXB D
m_WriterXXE M
.XXM N

WriteValueXXN X
(XXX Y
valueXXY ^
)XX^ _
;XX_ `
publicYY 
voidYY $
SerializeValuePreCheckedYY ,
(YY, -
refYY- 0

Vector2IntYY1 ;
valueYY< A
)YYA B
=>YYC E
m_WriterYYF N
.YYN O

WriteValueYYO Y
(YYY Z
valueYYZ _
)YY_ `
;YY` a
publicZZ 
voidZZ $
SerializeValuePreCheckedZZ ,
(ZZ, -
refZZ- 0

Vector2IntZZ1 ;
[ZZ; <
]ZZ< =
valueZZ> C
)ZZC D
=>ZZE G
m_WriterZZH P
.ZZP Q

WriteValueZZQ [
(ZZ[ \
valueZZ\ a
)ZZa b
;ZZb c
public[[ 
void[[ $
SerializeValuePreChecked[[ ,
([[, -
ref[[- 0

Vector3Int[[1 ;
value[[< A
)[[A B
=>[[C E
m_Writer[[F N
.[[N O

WriteValue[[O Y
([[Y Z
value[[Z _
)[[_ `
;[[` a
public\\ 
void\\ $
SerializeValuePreChecked\\ ,
(\\, -
ref\\- 0

Vector3Int\\1 ;
[\\; <
]\\< =
value\\> C
)\\C D
=>\\E G
m_Writer\\H P
.\\P Q

WriteValue\\Q [
(\\[ \
value\\\ a
)\\a b
;\\b c
public]] 
void]] $
SerializeValuePreChecked]] ,
(]], -
ref]]- 0
Vector4]]1 8
value]]9 >
)]]> ?
=>]]@ B
m_Writer]]C K
.]]K L

WriteValue]]L V
(]]V W
value]]W \
)]]\ ]
;]]] ^
public^^ 
void^^ $
SerializeValuePreChecked^^ ,
(^^, -
ref^^- 0
Vector4^^1 8
[^^8 9
]^^9 :
value^^; @
)^^@ A
=>^^B D
m_Writer^^E M
.^^M N

WriteValue^^N X
(^^X Y
value^^Y ^
)^^^ _
;^^_ `
public__ 
void__ $
SerializeValuePreChecked__ ,
(__, -
ref__- 0

Quaternion__1 ;
value__< A
)__A B
=>__C E
m_Writer__F N
.__N O

WriteValue__O Y
(__Y Z
value__Z _
)___ `
;__` a
public`` 
void`` $
SerializeValuePreChecked`` ,
(``, -
ref``- 0

Quaternion``1 ;
[``; <
]``< =
value``> C
)``C D
=>``E G
m_Writer``H P
.``P Q

WriteValue``Q [
(``[ \
value``\ a
)``a b
;``b c
publicaa 
voidaa $
SerializeValuePreCheckedaa ,
(aa, -
refaa- 0
Coloraa1 6
valueaa7 <
)aa< =
=>aa> @
m_WriteraaA I
.aaI J

WriteValueaaJ T
(aaT U
valueaaU Z
)aaZ [
;aa[ \
publicbb 
voidbb $
SerializeValuePreCheckedbb ,
(bb, -
refbb- 0
Colorbb1 6
[bb6 7
]bb7 8
valuebb9 >
)bb> ?
=>bb@ B
m_WriterbbC K
.bbK L

WriteValuebbL V
(bbV W
valuebbW \
)bb\ ]
;bb] ^
publiccc 
voidcc $
SerializeValuePreCheckedcc ,
(cc, -
refcc- 0
Color32cc1 8
valuecc9 >
)cc> ?
=>cc@ B
m_WriterccC K
.ccK L

WriteValueccL V
(ccV W
valueccW \
)cc\ ]
;cc] ^
publicdd 
voiddd $
SerializeValuePreCheckeddd ,
(dd, -
refdd- 0
Color32dd1 8
[dd8 9
]dd9 :
valuedd; @
)dd@ A
=>ddB D
m_WriterddE M
.ddM N

WriteValueddN X
(ddX Y
valueddY ^
)dd^ _
;dd_ `
publicee 
voidee $
SerializeValuePreCheckedee ,
(ee, -
refee- 0
Rayee1 4
valueee5 :
)ee: ;
=>ee< >
m_Writeree? G
.eeG H

WriteValueeeH R
(eeR S
valueeeS X
)eeX Y
;eeY Z
publicff 
voidff $
SerializeValuePreCheckedff ,
(ff, -
refff- 0
Rayff1 4
[ff4 5
]ff5 6
valueff7 <
)ff< =
=>ff> @
m_WriterffA I
.ffI J

WriteValueffJ T
(ffT U
valueffU Z
)ffZ [
;ff[ \
publicgg 
voidgg $
SerializeValuePreCheckedgg ,
(gg, -
refgg- 0
Ray2Dgg1 6
valuegg7 <
)gg< =
=>gg> @
m_WriterggA I
.ggI J

WriteValueggJ T
(ggT U
valueggU Z
)ggZ [
;gg[ \
publichh 
voidhh $
SerializeValuePreCheckedhh ,
(hh, -
refhh- 0
Ray2Dhh1 6
[hh6 7
]hh7 8
valuehh9 >
)hh> ?
=>hh@ B
m_WriterhhC K
.hhK L

WriteValuehhL V
(hhV W
valuehhW \
)hh\ ]
;hh] ^
}ii 
}jj �
{C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\Messages\CreateObjectMessage.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
struct
CreateObjectMessage '
:( )
INetworkMessage* 9
{ 
public 

. 
SceneObject (

ObjectInfo) 3
;3 4
private 
FastBufferReader  )
m_ReceivedNetworkVariableData! >
;> ?
public 
void 
	Serialize 
( 
FastBufferWriter .
writer/ 5
)5 6
{		 	

ObjectInfo

 
.

 
	Serialize

  
(

  !
writer

! '
)

' (
;

( )
} 	
public
bool
Deserialize
(
FastBufferReader
reader
,
ref
NetworkContext
context
)
{ 	
var 
networkManager 
=  
(! "
NetworkManager" 0
)0 1
context1 8
.8 9
SystemOwner9 D
;D E
if 
( 
! 
networkManager 
.  
IsClient  (
)( )
{ 
return 
false 
; 
} 

ObjectInfo 
. 
Deserialize "
(" #
reader# )
)) *
;* +
if 
( 
! 
networkManager 
.  

.- .
ForceSamePrefabs. >
&&? A
!B C
networkManagerC Q
.Q R
SpawnManagerR ^
.^ _
	HasPrefab_ h
(h i

ObjectInfoi s
)s t
)t u
{ 
networkManager 
. "
DeferredMessageManager 5
.5 6
DeferMessage6 B
(B C#
IDeferredMessageManagerC Z
.Z [
TriggerType[ f
.f g
OnAddPrefabg r
,r s

ObjectInfot ~
.~ 
Header	 �
.
� �
Hash
� �
,
� �
reader
� �
,
� �
ref
� �
context
� �
)
� �
;
� �
return 
false 
; 
} 
m_ReceivedNetworkVariableData )
=* +
reader, 2
;2 3
return 
true 
; 
} 	
public   
void   
Handle   
(   
ref   
NetworkContext   -
context  . 5
)  5 6
{!! 	
var"" 
networkManager"" 
=""  
(""! "
NetworkManager""" 0
)""0 1
context""1 8
.""8 9
SystemOwner""9 D
;""D E
var## 

=## 

.##- .
AddSceneObject##. <
(##< =

ObjectInfo##= G
,##G H)
m_ReceivedNetworkVariableData##I f
,##f g
networkManager##h v
)##v w
;##w x
networkManager%% 
.%% 
NetworkMetrics%% )
.%%) *$
TrackObjectSpawnReceived%%* B
(%%B C
context%%C J
.%%J K
SenderId%%K S
,%%S T

,%%b c
context%%d k
.%%k l
MessageSize%%l w
)%%w x
;%%x y
}&& 	
}'' 
}(( �
pC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Transports\NetworkTransport.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

abstract 
class 
NetworkTransport *
:+ ,

{ 
public 
abstract 
ulong 
ServerClientId ,
{- .
get/ 2
;2 3
}4 5
public 
virtual 
bool 
IsSupported '
=>( *
true+ /
;/ 0
internal 
INetworkMetrics  
NetworkMetrics! /
;/ 0
public 
delegate 
void "
TransportEventDelegate 3
(3 4
NetworkEvent4 @
	eventTypeA J
,J K
ulongL Q
clientIdR Z
,Z [
ArraySegment\ h
<h i
bytei m
>m n
payloado v
,v w
floatx }
receiveTime	~ �
)
� �
;
� �
public&& 
event&& "
TransportEventDelegate&& +
OnTransportEvent&&, <
;&&< =
	protected// 
void// "
InvokeOnTransportEvent// -
(//- .
NetworkEvent//. :
	eventType//; D
,//D E
ulong//F K
clientId//L T
,//T U
ArraySegment//V b
<//b c
byte//c g
>//g h
payload//i p
,//p q
float//r w
receiveTime	//x �
)
//� �
{00 	
OnTransportEvent11 
?11 
.11 
Invoke11 $
(11$ %
	eventType11% .
,11. /
clientId110 8
,118 9
payload11: A
,11A B
receiveTime11C N
)11N O
;11O P
}22 	
public:: 
abstract:: 
void:: 
Send:: !
(::! "
ulong::" '
clientId::( 0
,::0 1
ArraySegment::2 >
<::> ?
byte::? C
>::C D
payload::E L
,::L M
NetworkDelivery::N ]
networkDelivery::^ m
)::m n
;::n o
publicCC 
abstractCC 
NetworkEventCC $
	PollEventCC% .
(CC. /
outCC/ 2
ulongCC3 8
clientIdCC9 A
,CCA B
outCCC F
ArraySegmentCCG S
<CCS T
byteCCT X
>CCX Y
payloadCCZ a
,CCa b
outCCc f
floatCCg l
receiveTimeCCm x
)CCx y
;CCy z
publicII 
abstractII 
boolII 
StartClientII (
(II( )
)II) *
;II* +
publicOO 
abstractOO 
boolOO 
StartServerOO (
(OO( )
)OO) *
;OO* +
publicUU 
abstractUU 
voidUU "
DisconnectRemoteClientUU 3
(UU3 4
ulongUU4 9
clientIdUU: B
)UUB C
;UUC D
publicZZ 
abstractZZ 
voidZZ !
DisconnectLocalClientZZ 2
(ZZ2 3
)ZZ3 4
;ZZ4 5
publicaa 
abstractaa 
ulongaa 

(aa+ ,
ulongaa, 1
clientIdaa2 :
)aa: ;
;aa; <
publicff 
abstractff 
voidff 
Shutdownff %
(ff% &
)ff& '
;ff' (
publicll 
abstractll 
voidll 

Initializell '
(ll' (
NetworkManagerll( 6
networkManagerll7 E
=llF G
nullllH L
)llL M
;llM N
}mm 
publicpp 

abstractpp 
classpp #
TestingNetworkTransportpp 1
:pp2 3
NetworkTransportpp4 D
{qq 
}ss 
}uu �
mC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\IMessageSender.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
	interface
IMessageSender %
{ 
void 
Send
( 
ulong 
clientId  
,  !
NetworkDelivery" 1
delivery2 :
,: ;
FastBufferWriter< L
	batchDataM V
)V W
;W X
} 
} �
vC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Exceptions\InvalidParentException.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

class "
InvalidParentException '
:( )
	Exception* 3
{		 
public
InvalidParentException
(
)
{
}
public "
InvalidParentException %
(% &
string& ,
message- 4
)4 5
:6 7
base8 <
(< =
message= D
)D E
{F G
}H I
public "
InvalidParentException %
(% &
string& ,
message- 4
,4 5
	Exception6 ?
innerException@ N
)N O
:P Q
baseR V
(V W
messageW ^
,^ _
innerException` n
)n o
{p q
}r s
} 
} �
yC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\SceneManagement\ISceneManagerHandler.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
	interface
ISceneManagerHandler +
{ 
struct 
SceneEventAction 
{ 	
internal 
uint 
SceneEventId &
;& '
internal 
Action 
< 
uint  
>  !
EventAction" -
;- .
internal 
Action 
	Completed %
;% &
internal 
void 
Invoke  
(  !
)! "
{ 
	Completed 
? 
. 
Invoke !
(! "
)" #
;# $
EventAction 
. 
Invoke "
(" #
SceneEventId# /
)/ 0
;0 1
} 
} 	
AsyncOperation 
LoadSceneAsync %
(% &
string& ,
	sceneName- 6
,6 7


,S T
SceneEventActionU e
sceneEventActionf v
)v w
;w x
AsyncOperation   
UnloadSceneAsync   '
(  ' (
Scene  ( -
scene  . 3
,  3 4
SceneEventAction  5 E
sceneEventAction  F V
)  V W
;  W X
}!! 
}"" ��
sC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\BufferSerializer.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

ref 
struct 
BufferSerializer &
<& '

>4 5
where6 ;

:J K

{ 
private 

m_Implementation .
;. /
public!! 
bool!! 
IsReader!! 
=>!! 
m_Implementation!!  0
.!!0 1
IsReader!!1 9
;!!9 :
public&& 
bool&& 
IsWriter&& 
=>&& 
m_Implementation&&  0
.&&0 1
IsWriter&&1 9
;&&9 :
internal(( 
BufferSerializer(( !
(((! "

implementation((0 >
)((> ?
{)) 	
m_Implementation** 
=** 
implementation** -
;**- .
}++ 	
public22 
FastBufferReader22 
GetFastBufferReader22  3
(223 4
)224 5
{33 	
return44 
m_Implementation44 #
.44# $
GetFastBufferReader44$ 7
(447 8
)448 9
;449 :
}55 	
public<< 
FastBufferWriter<< 
GetFastBufferWriter<<  3
(<<3 4
)<<4 5
{== 	
return>> 
m_Implementation>> #
.>># $
GetFastBufferWriter>>$ 7
(>>7 8
)>>8 9
;>>9 :
}?? 	
publicGG 
voidGG 
SerializeValueGG "
(GG" #
refGG# &
stringGG' -
sGG. /
,GG/ 0
boolGG1 5
oneByteCharsGG6 B
=GGC D
falseGGE J
)GGJ K
=>GGL N
m_ImplementationGGO _
.GG_ `
SerializeValueGG` n
(GGn o
refGGo r
sGGs t
,GGt u
oneByteChars	GGv �
)
GG� �
;
GG� �
publicMM 
voidMM 
SerializeValueMM "
(MM" #
refMM# &
byteMM' +
valueMM, 1
)MM1 2
=>MM3 5
m_ImplementationMM6 F
.MMF G
SerializeValueMMG U
(MMU V
refMMV Y
valueMMZ _
)MM_ `
;MM` a
publicWW 
voidWW 
SerializeValueWW "
<WW" #
TWW# $
>WW$ %
(WW% &
refWW& )
TWW* +
valueWW, 1
,WW1 2
FastBufferWriterWW3 C
.WWC D

unusedWWR X
=WWY Z
defaultWW[ b
)WWb c
whereWWd i
TWWj k
:WWl m
	unmanagedWWn w
,WWw x
IComparable	WWy �
,
WW� �
IConvertible
WW� �
,
WW� �
IComparable
WW� �
<
WW� �
T
WW� �
>
WW� �
,
WW� �

IEquatable
WW� �
<
WW� �
T
WW� �
>
WW� �
=>
WW� �
m_Implementation
WW� �
.
WW� �
SerializeValue
WW� �
(
WW� �
ref
WW� �
value
WW� �
)
WW� �
;
WW� �
publicaa 
voidaa 
SerializeValueaa "
<aa" #
Taa# $
>aa$ %
(aa% &
refaa& )
Taa* +
[aa+ ,
]aa, -
valueaa. 3
,aa3 4
FastBufferWriteraa5 E
.aaE F

unusedaaT Z
=aa[ \
defaultaa] d
)aad e
whereaaf k
Taal m
:aan o
	unmanagedaap y
,aay z
IComparable	aa{ �
,
aa� �
IConvertible
aa� �
,
aa� �
IComparable
aa� �
<
aa� �
T
aa� �
>
aa� �
,
aa� �

IEquatable
aa� �
<
aa� �
T
aa� �
>
aa� �
=>
aa� �
m_Implementation
aa� �
.
aa� �
SerializeValue
aa� �
(
aa� �
ref
aa� �
value
aa� �
)
aa� �
;
aa� �
publicii 
voidii 
SerializeValueii "
<ii" #
Tii# $
>ii$ %
(ii% &
refii& )
Tii* +
valueii, 1
,ii1 2
FastBufferWriterii3 C
.iiC D
ForEnumsiiD L
unusediiM S
=iiT U
defaultiiV ]
)ii] ^
whereii_ d
Tiie f
:iig h
	unmanagediii r
,iir s
Enumiit x
=>iiy {
m_Implementation	ii| �
.
ii� �
SerializeValue
ii� �
(
ii� �
ref
ii� �
value
ii� �
)
ii� �
;
ii� �
publicqq 
voidqq 
SerializeValueqq "
<qq" #
Tqq# $
>qq$ %
(qq% &
refqq& )
Tqq* +
[qq+ ,
]qq, -
valueqq. 3
,qq3 4
FastBufferWriterqq5 E
.qqE F
ForEnumsqqF N
unusedqqO U
=qqV W
defaultqqX _
)qq_ `
whereqqa f
Tqqg h
:qqi j
	unmanagedqqk t
,qqt u
Enumqqv z
=>qq{ }
m_Implementation	qq~ �
.
qq� �
SerializeValue
qq� �
(
qq� �
ref
qq� �
value
qq� �
)
qq� �
;
qq� �
publicyy 
voidyy 
SerializeValueyy "
<yy" #
Tyy# $
>yy$ %
(yy% &
refyy& )
Tyy* +
valueyy, 1
,yy1 2
FastBufferWriteryy3 C
.yyC D

ForStructsyyD N
unusedyyO U
=yyV W
defaultyyX _
)yy_ `
whereyya f
Tyyg h
:yyi j
	unmanagedyyk t
,yyt u&
INetworkSerializeByMemcpy	yyv �
=>
yy� �
m_Implementation
yy� �
.
yy� �
SerializeValue
yy� �
(
yy� �
ref
yy� �
value
yy� �
)
yy� �
;
yy� �
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
��* +
[
��+ ,
]
��, -
value
��. 3
,
��3 4
FastBufferWriter
��5 E
.
��E F

ForStructs
��F P
unused
��Q W
=
��X Y
default
��Z a
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
,
��v w(
INetworkSerializeByMemcpy��x �
=>��� � 
m_Implementation��� �
.��� �
SerializeValue��� �
(��� �
ref��� �
value��� �
)��� �
;��� �
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
,
��1 2
FastBufferWriter
��3 C
.
��C D$
ForNetworkSerializable
��D Z
unused
��[ a
=
��b c
default
��d k
)
��k l
where
��m r
T
��s t
:
��u v#
INetworkSerializable��w �
,��� �
new��� �
(��� �
)��� �
=>��� � 
m_Implementation��� �
.��� �
SerializeValue��� �
(��� �
ref��� �
value��� �
)��� �
;��� �
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
��* +
[
��+ ,
]
��, -
value
��. 3
,
��3 4
FastBufferWriter
��5 E
.
��E F$
ForNetworkSerializable
��F \
unused
��] c
=
��d e
default
��f m
)
��m n
where
��o t
T
��u v
:
��w x#
INetworkSerializable��y �
,��� �
new��� �
(��� �
)��� �
=>��� � 
m_Implementation��� �
.��� �
SerializeValue��� �
(��� �
ref��� �
value��� �
)��� �
;��� �
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Vector2
��' .
value
��/ 4
)
��4 5
=>
��6 8
m_Implementation
��9 I
.
��I J
SerializeValue
��J X
(
��X Y
ref
��Y \
value
��] b
)
��b c
;
��c d
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Vector2
��' .
[
��. /
]
��/ 0
value
��1 6
)
��6 7
=>
��8 :
m_Implementation
��; K
.
��K L
SerializeValue
��L Z
(
��Z [
ref
��[ ^
value
��_ d
)
��d e
;
��e f
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Vector3
��' .
value
��/ 4
)
��4 5
=>
��6 8
m_Implementation
��9 I
.
��I J
SerializeValue
��J X
(
��X Y
ref
��Y \
value
��] b
)
��b c
;
��c d
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Vector3
��' .
[
��. /
]
��/ 0
value
��1 6
)
��6 7
=>
��8 :
m_Implementation
��; K
.
��K L
SerializeValue
��L Z
(
��Z [
ref
��[ ^
value
��_ d
)
��d e
;
��e f
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &

Vector2Int
��' 1
value
��2 7
)
��7 8
=>
��9 ;
m_Implementation
��< L
.
��L M
SerializeValue
��M [
(
��[ \
ref
��\ _
value
��` e
)
��e f
;
��f g
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &

Vector2Int
��' 1
[
��1 2
]
��2 3
value
��4 9
)
��9 :
=>
��; =
m_Implementation
��> N
.
��N O
SerializeValue
��O ]
(
��] ^
ref
��^ a
value
��b g
)
��g h
;
��h i
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &

Vector3Int
��' 1
value
��2 7
)
��7 8
=>
��9 ;
m_Implementation
��< L
.
��L M
SerializeValue
��M [
(
��[ \
ref
��\ _
value
��` e
)
��e f
;
��f g
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &

Vector3Int
��' 1
[
��1 2
]
��2 3
value
��4 9
)
��9 :
=>
��; =
m_Implementation
��> N
.
��N O
SerializeValue
��O ]
(
��] ^
ref
��^ a
value
��b g
)
��g h
;
��h i
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Vector4
��' .
value
��/ 4
)
��4 5
=>
��6 8
m_Implementation
��9 I
.
��I J
SerializeValue
��J X
(
��X Y
ref
��Y \
value
��] b
)
��b c
;
��c d
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Vector4
��' .
[
��. /
]
��/ 0
value
��1 6
)
��6 7
=>
��8 :
m_Implementation
��; K
.
��K L
SerializeValue
��L Z
(
��Z [
ref
��[ ^
value
��_ d
)
��d e
;
��e f
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &

Quaternion
��' 1
value
��2 7
)
��7 8
=>
��9 ;
m_Implementation
��< L
.
��L M
SerializeValue
��M [
(
��[ \
ref
��\ _
value
��` e
)
��e f
;
��f g
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &

Quaternion
��' 1
[
��1 2
]
��2 3
value
��4 9
)
��9 :
=>
��; =
m_Implementation
��> N
.
��N O
SerializeValue
��O ]
(
��] ^
ref
��^ a
value
��b g
)
��g h
;
��h i
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Color
��' ,
value
��- 2
)
��2 3
=>
��4 6
m_Implementation
��7 G
.
��G H
SerializeValue
��H V
(
��V W
ref
��W Z
value
��[ `
)
��` a
;
��a b
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Color
��' ,
[
��, -
]
��- .
value
��/ 4
)
��4 5
=>
��6 8
m_Implementation
��9 I
.
��I J
SerializeValue
��J X
(
��X Y
ref
��Y \
value
��] b
)
��b c
;
��c d
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Color32
��' .
value
��/ 4
)
��4 5
=>
��6 8
m_Implementation
��9 I
.
��I J
SerializeValue
��J X
(
��X Y
ref
��Y \
value
��] b
)
��b c
;
��c d
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Color32
��' .
[
��. /
]
��/ 0
value
��1 6
)
��6 7
=>
��8 :
m_Implementation
��; K
.
��K L
SerializeValue
��L Z
(
��Z [
ref
��[ ^
value
��_ d
)
��d e
;
��e f
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Ray
��' *
value
��+ 0
)
��0 1
=>
��2 4
m_Implementation
��5 E
.
��E F
SerializeValue
��F T
(
��T U
ref
��U X
value
��Y ^
)
��^ _
;
��_ `
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Ray
��' *
[
��* +
]
��+ ,
value
��- 2
)
��2 3
=>
��4 6
m_Implementation
��7 G
.
��G H
SerializeValue
��H V
(
��V W
ref
��W Z
value
��[ `
)
��` a
;
��a b
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Ray2D
��' ,
value
��- 2
)
��2 3
=>
��4 6
m_Implementation
��7 G
.
��G H
SerializeValue
��H V
(
��V W
ref
��W Z
value
��[ `
)
��` a
;
��a b
public
�� 
void
�� 
SerializeValue
�� "
(
��" #
ref
��# &
Ray2D
��' ,
[
��, -
]
��- .
value
��/ 4
)
��4 5
=>
��6 8
m_Implementation
��9 I
.
��I J
SerializeValue
��J X
(
��X Y
ref
��Y \
value
��] b
)
��b c
;
��c d
public
�� 
void
�� 
SerializeValue
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
ref
��& )
T
��* +
value
��, 1
,
��1 2
FastBufferWriter
��3 C
.
��C D
ForFixedStrings
��D S
unused
��T Z
=
��[ \
default
��] d
)
��d e
where
�� 
T
�� 
:
�� 
	unmanaged
�� 
,
��  
INativeList
��! ,
<
��, -
byte
��- 1
>
��1 2
,
��2 3

IUTF8Bytes
��4 >
=>
��? A
m_Implementation
��B R
.
��R S
SerializeValue
��S a
(
��a b
ref
��b e
value
��f k
)
��k l
;
��l m
public
�� 
void
�� *
SerializeNetworkSerializable
�� 0
<
��0 1
T
��1 2
>
��2 3
(
��3 4
ref
��4 7
T
��8 9
value
��: ?
)
��? @
where
��A F
T
��G H
:
��I J"
INetworkSerializable
��K _
,
��_ `
new
��a d
(
��d e
)
��e f
=>
��g i
m_Implementation
��j z
.
��z {+
SerializeNetworkSerializable��{ �
(��� �
ref��� �
value��� �
)��� �
;��� �
public
�� 
bool
�� 
PreCheck
�� 
(
�� 
int
��  
amount
��! '
)
��' (
{
�� 	
return
�� 
m_Implementation
�� #
.
��# $
PreCheck
��$ ,
(
��, -
amount
��- 3
)
��3 4
;
��4 5
}
�� 	
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
string
��1 7
s
��8 9
,
��9 :
bool
��; ?
oneByteChars
��@ L
=
��M N
false
��O T
)
��T U
=>
��V X
m_Implementation
��Y i
.
��i j'
SerializeValuePreChecked��j �
(��� �
ref��� �
s��� �
,��� �
oneByteChars��� �
)��� �
;��� �
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
byte
��1 5
value
��6 ;
)
��; <
=>
��= ?
m_Implementation
��@ P
.
��P Q&
SerializeValuePreChecked
��Q i
(
��i j
ref
��j m
value
��n s
)
��s t
;
��t u
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
ref
��0 3
T
��4 5
value
��6 ;
,
��; <
FastBufferWriter
��= M
.
��M N

��N [
unused
��\ b
=
��c d
default
��e l
)
��l m
where
��n s
T
��t u
:
��v w
	unmanaged��x �
,��� �
IComparable��� �
,��� �
IConvertible��� �
,��� �
IComparable��� �
<��� �
T��� �
>��� �
,��� �

IEquatable��� �
<��� �
T��� �
>��� �
=>��� � 
m_Implementation��� �
.��� �(
SerializeValuePreChecked��� �
(��� �
ref��� �
value��� �
)��� �
;��� �
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
ref
��0 3
T
��4 5
[
��5 6
]
��6 7
value
��8 =
,
��= >
FastBufferWriter
��? O
.
��O P

��P ]
unused
��^ d
=
��e f
default
��g n
)
��n o
where
��p u
T
��v w
:
��x y
	unmanaged��z �
,��� �
IComparable��� �
,��� �
IConvertible��� �
,��� �
IComparable��� �
<��� �
T��� �
>��� �
,��� �

IEquatable��� �
<��� �
T��� �
>��� �
=>��� � 
m_Implementation��� �
.��� �(
SerializeValuePreChecked��� �
(��� �
ref��� �
value��� �
)��� �
;��� �
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
ref
��0 3
T
��4 5
value
��6 ;
,
��; <
FastBufferWriter
��= M
.
��M N
ForEnums
��N V
unused
��W ]
=
��^ _
default
��` g
)
��g h
where
��i n
T
��o p
:
��q r
	unmanaged
��s |
,
��| }
Enum��~ �
=>��� � 
m_Implementation��� �
.��� �(
SerializeValuePreChecked��� �
(��� �
ref��� �
value��� �
)��� �
;��� �
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
ref
��0 3
T
��4 5
[
��5 6
]
��6 7
value
��8 =
,
��= >
FastBufferWriter
��? O
.
��O P
ForEnums
��P X
unused
��Y _
=
��` a
default
��b i
)
��i j
where
��k p
T
��q r
:
��s t
	unmanaged
��u ~
,
��~ 
Enum��� �
=>��� � 
m_Implementation��� �
.��� �(
SerializeValuePreChecked��� �
(��� �
ref��� �
value��� �
)��� �
;��� �
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
ref
��0 3
T
��4 5
value
��6 ;
,
��; <
FastBufferWriter
��= M
.
��M N

ForStructs
��N X
unused
��Y _
=
��` a
default
��b i
)
��i j
where
��k p
T
��q r
:
��s t
	unmanaged
��u ~
,
��~ )
INetworkSerializeByMemcpy��� �
=>��� � 
m_Implementation��� �
.��� �(
SerializeValuePreChecked��� �
(��� �
ref��� �
value��� �
)��� �
;��� �
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
ref
��0 3
T
��4 5
[
��5 6
]
��6 7
value
��8 =
,
��= >
FastBufferWriter
��? O
.
��O P

ForStructs
��P Z
unused
��[ a
=
��b c
default
��d k
)
��k l
where
��m r
T
��s t
:
��u v
	unmanaged��w �
,��� �)
INetworkSerializeByMemcpy��� �
=>��� � 
m_Implementation��� �
.��� �(
SerializeValuePreChecked��� �
(��� �
ref��� �
value��� �
)��� �
;��� �
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Vector2
��1 8
value
��9 >
)
��> ?
=>
��@ B
m_Implementation
��C S
.
��S T&
SerializeValuePreChecked
��T l
(
��l m
ref
��m p
value
��q v
)
��v w
;
��w x
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Vector2
��1 8
[
��8 9
]
��9 :
value
��; @
)
��@ A
=>
��B D
m_Implementation
��E U
.
��U V&
SerializeValuePreChecked
��V n
(
��n o
ref
��o r
value
��s x
)
��x y
;
��y z
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Vector3
��1 8
value
��9 >
)
��> ?
=>
��@ B
m_Implementation
��C S
.
��S T&
SerializeValuePreChecked
��T l
(
��l m
ref
��m p
value
��q v
)
��v w
;
��w x
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Vector3
��1 8
[
��8 9
]
��9 :
value
��; @
)
��@ A
=>
��B D
m_Implementation
��E U
.
��U V&
SerializeValuePreChecked
��V n
(
��n o
ref
��o r
value
��s x
)
��x y
;
��y z
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0

Vector2Int
��1 ;
value
��< A
)
��A B
=>
��C E
m_Implementation
��F V
.
��V W&
SerializeValuePreChecked
��W o
(
��o p
ref
��p s
value
��t y
)
��y z
;
��z {
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0

Vector2Int
��1 ;
[
��; <
]
��< =
value
��> C
)
��C D
=>
��E G
m_Implementation
��H X
.
��X Y&
SerializeValuePreChecked
��Y q
(
��q r
ref
��r u
value
��v {
)
��{ |
;
��| }
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0

Vector3Int
��1 ;
value
��< A
)
��A B
=>
��C E
m_Implementation
��F V
.
��V W&
SerializeValuePreChecked
��W o
(
��o p
ref
��p s
value
��t y
)
��y z
;
��z {
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0

Vector3Int
��1 ;
[
��; <
]
��< =
value
��> C
)
��C D
=>
��E G
m_Implementation
��H X
.
��X Y&
SerializeValuePreChecked
��Y q
(
��q r
ref
��r u
value
��v {
)
��{ |
;
��| }
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Vector4
��1 8
value
��9 >
)
��> ?
=>
��@ B
m_Implementation
��C S
.
��S T&
SerializeValuePreChecked
��T l
(
��l m
ref
��m p
value
��q v
)
��v w
;
��w x
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Vector4
��1 8
[
��8 9
]
��9 :
value
��; @
)
��@ A
=>
��B D
m_Implementation
��E U
.
��U V&
SerializeValuePreChecked
��V n
(
��n o
ref
��o r
value
��s x
)
��x y
;
��y z
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0

Quaternion
��1 ;
value
��< A
)
��A B
=>
��C E
m_Implementation
��F V
.
��V W&
SerializeValuePreChecked
��W o
(
��o p
ref
��p s
value
��t y
)
��y z
;
��z {
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0

Quaternion
��1 ;
[
��; <
]
��< =
value
��> C
)
��C D
=>
��E G
m_Implementation
��H X
.
��X Y&
SerializeValuePreChecked
��Y q
(
��q r
ref
��r u
value
��v {
)
��{ |
;
��| }
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Color
��1 6
value
��7 <
)
��< =
=>
��> @
m_Implementation
��A Q
.
��Q R&
SerializeValuePreChecked
��R j
(
��j k
ref
��k n
value
��o t
)
��t u
;
��u v
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Color
��1 6
[
��6 7
]
��7 8
value
��9 >
)
��> ?
=>
��@ B
m_Implementation
��C S
.
��S T&
SerializeValuePreChecked
��T l
(
��l m
ref
��m p
value
��q v
)
��v w
;
��w x
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Color32
��1 8
value
��9 >
)
��> ?
=>
��@ B
m_Implementation
��C S
.
��S T&
SerializeValuePreChecked
��T l
(
��l m
ref
��m p
value
��q v
)
��v w
;
��w x
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Color32
��1 8
[
��8 9
]
��9 :
value
��; @
)
��@ A
=>
��B D
m_Implementation
��E U
.
��U V&
SerializeValuePreChecked
��V n
(
��n o
ref
��o r
value
��s x
)
��x y
;
��y z
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Ray
��1 4
value
��5 :
)
��: ;
=>
��< >
m_Implementation
��? O
.
��O P&
SerializeValuePreChecked
��P h
(
��h i
ref
��i l
value
��m r
)
��r s
;
��s t
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Ray
��1 4
[
��4 5
]
��5 6
value
��7 <
)
��< =
=>
��> @
m_Implementation
��A Q
.
��Q R&
SerializeValuePreChecked
��R j
(
��j k
ref
��k n
value
��o t
)
��t u
;
��u v
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Ray2D
��1 6
value
��7 <
)
��< =
=>
��> @
m_Implementation
��A Q
.
��Q R&
SerializeValuePreChecked
��R j
(
��j k
ref
��k n
value
��o t
)
��t u
;
��u v
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
(
��, -
ref
��- 0
Ray2D
��1 6
[
��6 7
]
��7 8
value
��9 >
)
��> ?
=>
��@ B
m_Implementation
��C S
.
��S T&
SerializeValuePreChecked
��T l
(
��l m
ref
��m p
value
��q v
)
��v w
;
��w x
public
�� 
void
�� &
SerializeValuePreChecked
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
ref
��0 3
T
��4 5
value
��6 ;
,
��; <
FastBufferWriter
��= M
.
��M N
ForFixedStrings
��N ]
unused
��^ d
=
��e f
default
��g n
)
��n o
where
�� 
T
�� 
:
�� 
	unmanaged
�� 
,
��  
INativeList
��! ,
<
��, -
byte
��- 1
>
��1 2
,
��2 3

IUTF8Bytes
��4 >
=>
��? A
m_Implementation
��B R
.
��R S&
SerializeValuePreChecked
��S k
(
��k l
ref
��l o
value
��p u
)
��u v
;
��v w
}
�� 
}�� �
tC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\Messages\NamedMessage.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
struct
NamedMessage  
:! "
INetworkMessage# 2
{ 
public 
ulong 
Hash 
; 
public 
FastBufferWriter 
SendData  (
;( )
private 
FastBufferReader  

;. /
public

 
unsafe

 
void

 
	Serialize

 $
(

$ %
FastBufferWriter

% 5
writer

6 <
)

< =
{ 	
writer 
. 
WriteValueSafe !
(! "
Hash" &
)& '
;' (
writer
.
WriteBytesSafe
(
SendData
.
GetUnsafePtr
(
)
,
SendData
.
Length
)
;
} 	
public 
bool 
Deserialize 
(  
FastBufferReader  0
reader1 7
,7 8
ref9 <
NetworkContext= K
contextL S
)S T
{ 	
reader 
. 

(  !
out! $
Hash% )
)) *
;* +

= 
reader "
;" #
return 
true 
; 
} 	
public 
void 
Handle 
( 
ref 
NetworkContext -
context. 5
)5 6
{ 	
( 
(
NetworkManager 
) 
context $
.$ %
SystemOwner% 0
)0 1
.1 2"
CustomMessagingManager2 H
.H I
InvokeNamedMessageI [
([ \
Hash\ `
,` a
contextb i
.i j
SenderIdj r
,r s

,
� �
context
� �
.
� �"
SerializedHeaderSize
� �
)
� �
;
� �
} 	
} 
} �O
wC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\SceneManagement\SceneEventProgress.cs
	namespace 	
Unity
 
. 
Netcode 
{		 
public 

enum $
SceneEventProgressStatus (
{ 
None 
, 
Started 
, 
SceneNotLoaded 
,  
SceneEventInProgress"" 
,"" 
InvalidSceneName'' 
,'' #
SceneFailedVerification,, 
,,,   
InternalNetcodeError11 
,11 
}22 
internal88 
class88
SceneEventProgress88 %
{99 
internal== 
List== 
<== 
ulong== 
>== 
DoneClients== (
{==) *
get==+ .
;==. /
}==0 1
===2 3
new==4 7
List==8 <
<==< =
ulong=== B
>==B C
(==C D
)==D E
;==E F
internalBB 
floatBB 
TimeAtInitiationBB '
{BB( )
getBB* -
;BB- .
}BB/ 0
internalGG 
delegateGG 
boolGG 
OnCompletedDelegateGG 2
(GG2 3
SceneEventProgressGG3 E
sceneEventProgressGGF X
)GGX Y
;GGY Z
internalLL 
OnCompletedDelegateLL $

OnCompleteLL% /
;LL/ 0
internalQQ 
boolQQ 
IsCompletedQQ !
{QQ" #
getQQ$ '
;QQ' (
privateQQ) 0
setQQ1 4
;QQ4 5
}QQ6 7
internalSS 
boolSS 
TimedOutSS 
{SS  
getSS! $
;SS$ %
privateSS& -
setSS. 1
;SS1 2
}SS3 4
internalXX 
boolXX $
AreAllClientsDoneLoadingXX .
{XX/ 0
getXX1 4
;XX4 5
privateXX6 =
setXX> A
;XXA B
}XXC D
internal]] 
uint]] 
	SceneHash]] 
{]]  !
get]]" %
;]]% &
set]]' *
;]]* +
}]], -
internal__ 
Guid__ 
Guid__ 
{__ 
get__  
;__  !
}__" #
=__$ %
Guid__& *
.__* +
NewGuid__+ 2
(__2 3
)__3 4
;__4 5
privateaa 
	Coroutineaa 
m_TimeOutCoroutineaa ,
;aa, -
privatebb 
AsyncOperationbb  
m_SceneLoadOperationbb 3
;bb3 4
privatedd 
NetworkManagerdd 
m_NetworkManagerdd /
{dd0 1
getdd2 5
;dd5 6
}dd7 8
internalff $
SceneEventProgressStatusff )
Statusff* 0
{ff1 2
getff3 6
;ff6 7
setff8 ;
;ff; <
}ff= >
internalhh 
SceneEventTypehh 
SceneEventTypehh  .
{hh/ 0
gethh1 4
;hh4 5
sethh6 9
;hh9 :
}hh; <
internaljj 


;jj, -
internalll 
Listll 
<ll 
ulongll 
>ll (
ClientsThatStartedSceneEventll 9
;ll9 :
internalnn 
SceneEventProgressnn #
(nn# $
NetworkManagernn$ 2
networkManagernn3 A
,nnA B$
SceneEventProgressStatusnnC [
statusnn\ b
=nnc d$
SceneEventProgressStatusnne }
.nn} ~
Started	nn~ �
)
nn� �
{oo 	
ifpp 
(pp 
statuspp 
==pp $
SceneEventProgressStatuspp 2
.pp2 3
Startedpp3 :
)pp: ;
{qq 
ClientsThatStartedSceneEventss ,
=ss- .
newss/ 2
Listss3 7
<ss7 8
ulongss8 =
>ss= >
(ss> ?
networkManagerss? M
.ssM N
ConnectedClientsIdsssN a
)ssa b
;ssb c
m_NetworkManagertt  
=tt! "
networkManagertt# 1
;tt1 2
m_TimeOutCoroutineuu "
=uu# $
m_NetworkManageruu% 5
.uu5 6
StartCoroutineuu6 D
(uuD E%
TimeOutSceneEventProgressuuE ^
(uu^ _
)uu_ `
)uu` a
;uua b
TimeAtInitiationvv  
=vv! "
Timevv# '
.vv' ( 
realtimeSinceStartupvv( <
;vv< =
}ww 
Statusxx 
=xx 
statusxx 
;xx 
}yy 	
internal
�� 
IEnumerator
�� '
TimeOutSceneEventProgress
�� 6
(
��6 7
)
��7 8
{
�� 	
var
��  
waitForNetworkTick
�� "
=
��# $
new
��% (
WaitForSeconds
��) 7
(
��7 8
$num
��8 <
/
��= >
m_NetworkManager
��? O
.
��O P

��P ]
.
��] ^
TickRate
��^ f
)
��f g
;
��g h
while
�� 
(
�� 
!
�� 
TimedOut
�� 
&&
�� 
!
��  !
IsCompleted
��! ,
)
��, -
{
�� 
yield
�� 
return
��  
waitForNetworkTick
�� /
;
��/ 0
CheckCompletion
�� 
(
��  
)
��  !
;
��! "
if
�� 
(
�� 
!
�� 
IsCompleted
��  
)
��  !
{
�� 
TimedOut
�� 
=
�� 
TimeAtInitiation
�� /
-
��0 1
Time
��2 6
.
��6 7"
realtimeSinceStartup
��7 K
>=
��L N
m_NetworkManager
��O _
.
��_ `

��` m
.
��m n
LoadSceneTimeOut
��n ~
;
��~ 
}
�� 
}
�� 
}
�� 	
internal
�� 
void
�� 
AddClientAsDone
�� %
(
��% &
ulong
��& +
clientId
��, 4
)
��4 5
{
�� 	
DoneClients
�� 
.
�� 
Add
�� 
(
�� 
clientId
�� $
)
��$ %
;
��% &
CheckCompletion
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
��  
RemoveClientAsDone
�� (
(
��( )
ulong
��) .
clientId
��/ 7
)
��7 8
{
�� 	
DoneClients
�� 
.
�� 
Remove
�� 
(
�� 
clientId
�� '
)
��' (
;
��( )
CheckCompletion
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� #
SetSceneLoadOperation
�� +
(
��+ ,
AsyncOperation
��, : 
sceneLoadOperation
��; M
)
��M N
{
�� 	"
m_SceneLoadOperation
��  
=
��! " 
sceneLoadOperation
��# 5
;
��5 6"
m_SceneLoadOperation
��  
.
��  !
	completed
��! *
+=
��+ -
	operation
��. 7
=>
��8 :
CheckCompletion
��; J
(
��J K
)
��K L
;
��L M
}
�� 	
internal
�� 
void
�� #
SetSceneLoadOperation
�� +
(
��+ ,"
ISceneManagerHandler
��, @
.
��@ A
SceneEventAction
��A Q
sceneEventAction
��R b
)
��b c
{
�� 	
sceneEventAction
�� 
.
�� 
	Completed
�� &
=
��' (
SetComplete
��) 4
;
��4 5
}
�� 	
internal
�� 
void
�� 
SetComplete
�� !
(
��! "
)
��" #
{
�� 	
IsCompleted
�� 
=
�� 
true
�� 
;
�� &
AreAllClientsDoneLoading
�� $
=
��% &
true
��' +
;
��+ ,
if
�� 
(
�� 

OnComplete
�� 
==
�� 
null
�� "
||
��# %
(
��& '

OnComplete
��' 1
!=
��2 4
null
��5 9
&&
��: <

OnComplete
��= G
.
��G H
Invoke
��H N
(
��N O
this
��O S
)
��S T
)
��T U
)
��U V
{
�� 
m_NetworkManager
��  
.
��  !
SceneManager
��! -
.
��- .(
SceneEventProgressTracking
��. H
.
��H I
Remove
��I O
(
��O P
Guid
��P T
)
��T U
;
��U V
}
�� 
m_NetworkManager
�� 
.
�� 

�� *
(
��* + 
m_TimeOutCoroutine
��+ =
)
��= >
;
��> ?
}
�� 	
internal
�� 
void
�� 
CheckCompletion
�� %
(
��% &
)
��& '
{
�� 	
try
�� 
{
�� 
if
�� 
(
�� 
(
�� 
!
�� 
IsCompleted
�� !
&&
��" $
DoneClients
��% 0
.
��0 1
Count
��1 6
==
��7 9
m_NetworkManager
��: J
.
��J K"
ConnectedClientsList
��K _
.
��_ `
Count
��` e
&&
��f h
(
��i j"
m_SceneLoadOperation
��j ~
==�� �
null��� �
||��� �$
m_SceneLoadOperation��� �
.��� �
isDone��� �
)��� �
)��� �
||��� �
(��� �
!��� �
IsCompleted��� �
&&��� �
TimedOut��� �
)��� �
)��� �
{
�� 
SetComplete
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Debug
�� 
.
�� 
LogException
�� "
(
��" #
ex
��# %
)
��% &
;
��& '
}
�� 
}
�� 	
}
�� 
}�� ��
�C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\Messages\NetworkVariableDeltaMessage.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal
struct
NetworkVariableDeltaMessage
:
INetworkMessage
{ 
public 
ulong 
NetworkObjectId $
;$ %
public 
ushort !
NetworkBehaviourIndex +
;+ ,
public 
HashSet 
< 
int 
> .
"DeliveryMappedNetworkVariableIndex >
;> ?
public 
ulong 
TargetClientId #
;# $
public 
NetworkBehaviour 
NetworkBehaviour  0
;0 1
private 
FastBufferReader  )
m_ReceivedNetworkVariableData! >
;> ?
public 
void 
	Serialize 
( 
FastBufferWriter .
writer/ 5
)5 6
{ 	
if 
( 
! 
writer 
. 

(% &
FastBufferWriter& 6
.6 7
GetWriteSize7 C
(C D
NetworkObjectIdD S
)S T
+U V
FastBufferWriterW g
.g h
GetWriteSizeh t
(t u"
NetworkBehaviourIndex	u �
)
� �
)
� �
)
� �
{ 
throw 
new 
OverflowException +
(+ ,
$", .
$str. V
{V W
nameofW ]
(] ^'
NetworkVariableDeltaMessage^ y
)y z
}z {
"{ |
)| }
;} ~
} 
writer 
. 

WriteValue 
( 
NetworkObjectId -
)- .
;. /
writer   
.   

WriteValue   
(   !
NetworkBehaviourIndex   3
)  3 4
;  4 5
for"" 
("" 
int"" 
i"" 
="" 
$num"" 
;"" 
i"" 
<"" 
NetworkBehaviour""  0
.""0 1!
NetworkVariableFields""1 F
.""F G
Count""G L
;""L M
i""N O
++""O Q
)""Q R
{## 
if$$ 
($$ 
!$$ .
"DeliveryMappedNetworkVariableIndex$$ 7
.$$7 8
Contains$$8 @
($$@ A
i$$A B
)$$B C
)$$C D
{%% 
if'' 
('' 
NetworkBehaviour'' (
.''( )
NetworkManager'') 7
.''7 8

.''E F-
!EnsureNetworkVariableLengthSafety''F g
)''g h
{(( 
writer)) 
.)) 
WriteValueSafe)) -
())- .
()). /
ushort))/ 5
)))5 6
$num))6 7
)))7 8
;))8 9
}** 
else++ 
{,, 
writer-- 
.-- 
WriteValueSafe-- -
(--- .
false--. 3
)--3 4
;--4 5
}.. 
continue00 
;00 
}11 
var33 
startingSize33  
=33! "
writer33# )
.33) *
Length33* 0
;330 1
var44 
networkVariable44 #
=44$ %
NetworkBehaviour44& 6
.446 7!
NetworkVariableFields447 L
[44L M
i44M N
]44N O
;44O P
var55 
shouldWrite55 
=55  !
networkVariable55" 1
.551 2
IsDirty552 9
(559 :
)55: ;
&&55< >
networkVariable66 #
.66# $

(661 2
TargetClientId662 @
)66@ A
&&66B D
(77 
NetworkBehaviour77 %
.77% &
NetworkManager77& 4
.774 5
IsServer775 =
||77> @
networkVariable77A P
.77P Q
CanClientWrite77Q _
(77_ `
NetworkBehaviour77` p
.77p q
NetworkManager77q 
.	77 �

77� �
)
77� �
)
77� �
;
77� �
if;; 
(;; 
networkVariable;; #
.;;# $
	WritePerm;;$ -
==;;. 0*
NetworkVariableWritePermission;;1 O
.;;O P
Owner;;P U
&&;;V X
networkVariable<< #
.<<# $

(<<1 2
)<<2 3
==<<4 6
TargetClientId<<7 E
)<<E F
{== 
shouldWrite>> 
=>>  !
false>>" '
;>>' (
}?? 
ifAA 
(AA 
NetworkBehaviourAA $
.AA$ %
NetworkManagerAA% 3
.AA3 4

.AAA B-
!EnsureNetworkVariableLengthSafetyAAB c
)AAc d
{BB 
ifCC 
(CC 
!CC 
shouldWriteCC $
)CC$ %
{DD 

BytePackerEE "
.EE" #
WriteValueBitPackedEE# 6
(EE6 7
writerEE7 =
,EE= >
$numEE? @
)EE@ A
;EEA B
}FF 
}GG 
elseHH 
{II 
writerJJ 
.JJ 
WriteValueSafeJJ )
(JJ) *
shouldWriteJJ* 5
)JJ5 6
;JJ6 7
}KK 
ifMM 
(MM 
shouldWriteMM 
)MM  
{NN 
ifOO 
(OO 
NetworkBehaviourOO (
.OO( )
NetworkManagerOO) 7
.OO7 8

.OOE F-
!EnsureNetworkVariableLengthSafetyOOF g
)OOg h
{PP 
varQQ 

tempWriterQQ &
=QQ' (
newQQ) ,
FastBufferWriterQQ- =
(QQ= >
MessagingSystemQQ> M
.QQM N+
NON_FRAGMENTED_MESSAGE_MAX_SIZEQQN m
,QQm n
	AllocatorQQo x
.QQx y
TempQQy }
,QQ} ~
MessagingSystem	QQ �
.
QQ� �)
FRAGMENTED_MESSAGE_MAX_SIZE
QQ� �
)
QQ� �
;
QQ� �
NetworkBehaviourRR (
.RR( )!
NetworkVariableFieldsRR) >
[RR> ?
iRR? @
]RR@ A
.RRA B

WriteDeltaRRB L
(RRL M

tempWriterRRM W
)RRW X
;RRX Y

BytePackerSS "
.SS" #
WriteValueBitPackedSS# 6
(SS6 7
writerSS7 =
,SS= >

tempWriterSS? I
.SSI J
LengthSSJ P
)SSP Q
;SSQ R
ifUU 
(UU 
!UU 
writerUU #
.UU# $

(UU1 2

tempWriterUU2 <
.UU< =
LengthUU= C
)UUC D
)UUD E
{VV 
throwWW !
newWW" %
OverflowExceptionWW& 7
(WW7 8
$"WW8 :
$strWW: b
{WWb c
nameofWWc i
(WWi j(
NetworkVariableDeltaMessage	WWj �
)
WW� �
}
WW� �
"
WW� �
)
WW� �
;
WW� �
}XX 

tempWriterZZ "
.ZZ" #
CopyToZZ# )
(ZZ) *
writerZZ* 0
)ZZ0 1
;ZZ1 2
}[[ 
else\\ 
{]] 
networkVariable^^ '
.^^' (

WriteDelta^^( 2
(^^2 3
writer^^3 9
)^^9 :
;^^: ;
}__ 
ifaa 
(aa 
!aa 
NetworkBehaviouraa )
.aa) *,
 NetworkVariableIndexesToResetSetaa* J
.aaJ K
ContainsaaK S
(aaS T
iaaT U
)aaU V
)aaV W
{bb 
NetworkBehaviourcc (
.cc( ),
 NetworkVariableIndexesToResetSetcc) I
.ccI J
AddccJ M
(ccM N
iccN O
)ccO P
;ccP Q
NetworkBehaviourdd (
.dd( ))
NetworkVariableIndexesToResetdd) F
.ddF G
AddddG J
(ddJ K
iddK L
)ddL M
;ddM N
}ee 
NetworkBehaviourgg $
.gg$ %
NetworkManagergg% 3
.gg3 4
NetworkMetricsgg4 B
.ggB C)
TrackNetworkVariableDeltaSentggC `
(gg` a
TargetClientIdhh &
,hh& '
NetworkBehaviourii (
.ii( )

,ii6 7
networkVariablejj '
.jj' (
Namejj( ,
,jj, -
NetworkBehaviourkk (
.kk( )

(kk6 7
)kk7 8
,kk8 9
writerll 
.ll 
Lengthll %
-ll& '
startingSizell( 4
)ll4 5
;ll5 6
}mm 
}nn 
}oo 	
publicqq 
boolqq 
Deserializeqq 
(qq  
FastBufferReaderqq  0
readerqq1 7
,qq7 8
refqq9 <
NetworkContextqq= K
contextqqL S
)qqS T
{rr 	
ifss 
(ss 
!ss 
readerss 
.ss 
TryBeginReadss $
(ss$ %
FastBufferWriterss% 5
.ss5 6
GetWriteSizess6 B
(ssB C
NetworkObjectIdssC R
)ssR S
+ssT U
FastBufferWriterssV f
.ssf g
GetWriteSizessg s
(sss t"
NetworkBehaviourIndex	sst �
)
ss� �
)
ss� �
)
ss� �
{tt 
throwuu 
newuu 
OverflowExceptionuu +
(uu+ ,
$"uu, .
$struu. T
{uuT U
nameofuuU [
(uu[ \'
NetworkVariableDeltaMessageuu\ w
)uuw x
}uux y
"uuy z
)uuz {
;uu{ |
}vv 
readerxx 
.xx 
	ReadValuexx 
(xx 
outxx  
NetworkObjectIdxx! 0
)xx0 1
;xx1 2
readeryy 
.yy 
	ReadValueyy 
(yy 
outyy  !
NetworkBehaviourIndexyy! 6
)yy6 7
;yy7 8)
m_ReceivedNetworkVariableData{{ )
={{* +
reader{{, 2
;{{2 3
return}} 
true}} 
;}} 
}~~ 	
public
�� 
void
�� 
Handle
�� 
(
�� 
ref
�� 
NetworkContext
�� -
context
��. 5
)
��5 6
{
�� 	
var
�� 
networkManager
�� 
=
��  
(
��! "
NetworkManager
��" 0
)
��0 1
context
��1 8
.
��8 9
SystemOwner
��9 D
;
��D E
if
�� 
(
�� 
networkManager
�� 
.
�� 
SpawnManager
�� +
.
��+ ,
SpawnedObjects
��, :
.
��: ;
TryGetValue
��; F
(
��F G
NetworkObjectId
��G V
,
��V W
out
��X [

��\ i

��j w
)
��w x
)
��x y
{
�� 
var
�� 
networkBehaviour
�� $
=
��% &

��' 4
.
��4 5-
GetNetworkBehaviourAtOrderIndex
��5 T
(
��T U#
NetworkBehaviourIndex
��U j
)
��j k
;
��k l
if
�� 
(
�� 
networkBehaviour
�� $
==
��% '
null
��( ,
)
��, -
{
�� 
if
�� 
(
�� 

NetworkLog
�� "
.
��" #
CurrentLogLevel
��# 2
<=
��3 5
LogLevel
��6 >
.
��> ?
Normal
��? E
)
��E F
{
�� 

NetworkLog
�� "
.
��" #

LogWarning
��# -
(
��- .
$"
��. 0
$str
��0 v
{
��v w
nameof
��w }
(
��} ~
NetworkObjectId��~ �
)��� �
}��� �
$str��� �
{��� �
NetworkObjectId��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �%
NetworkBehaviourIndex��� �
)��� �
}��� �
$str��� �
{��� �%
NetworkBehaviourIndex��� �
}��� �
"��� �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '
networkBehaviour
��( 8
.
��8 9#
NetworkVariableFields
��9 N
.
��N O
Count
��O T
;
��T U
i
��V W
++
��W Y
)
��Y Z
{
�� 
int
�� 
varSize
�� #
=
��$ %
$num
��& '
;
��' (
if
�� 
(
�� 
networkManager
�� *
.
��* +

��+ 8
.
��8 9/
!EnsureNetworkVariableLengthSafety
��9 Z
)
��Z [
{
�� 
ByteUnpacker
�� (
.
��( ) 
ReadValueBitPacked
��) ;
(
��; <+
m_ReceivedNetworkVariableData
��< Y
,
��Y Z
out
��[ ^
varSize
��_ f
)
��f g
;
��g h
if
�� 
(
��  
varSize
��  '
==
��( *
$num
��+ ,
)
��, -
{
�� 
continue
��  (
;
��( )
}
�� 
}
�� 
else
�� 
{
�� +
m_ReceivedNetworkVariableData
�� 9
.
��9 :

��: G
(
��G H
out
��H K
bool
��L P
deltaExists
��Q \
)
��\ ]
;
��] ^
if
�� 
(
��  
!
��  !
deltaExists
��! ,
)
��, -
{
�� 
continue
��  (
;
��( )
}
�� 
}
�� 
var
�� 
networkVariable
�� +
=
��, -
networkBehaviour
��. >
.
��> ?#
NetworkVariableFields
��? T
[
��T U
i
��U V
]
��V W
;
��W X
if
�� 
(
�� 
networkManager
�� *
.
��* +
IsServer
��+ 3
&&
��4 6
!
��7 8
networkVariable
��8 G
.
��G H
CanClientWrite
��H V
(
��V W
context
��W ^
.
��^ _
SenderId
��_ g
)
��g h
)
��h i
{
�� 
if
�� 
(
��  
networkManager
��  .
.
��. /

��/ <
.
��< =/
!EnsureNetworkVariableLengthSafety
��= ^
)
��^ _
{
�� 
if
��  "
(
��# $

NetworkLog
��$ .
.
��. /
CurrentLogLevel
��/ >
<=
��? A
LogLevel
��B J
.
��J K
	Developer
��K T
)
��T U
{
��  !

NetworkLog
��$ .
.
��. /

LogWarning
��/ 9
(
��9 :
$"
��: <
$str
��< L
{
��L M
typeof
��M S
(
��S T
NetworkVariable
��T c
<
��c d
>
��d e
)
��e f
.
��f g
Name
��g k
}
��k l
$str��l �
{��� �
nameof��� �
(��� �
NetworkObjectId��� �
)��� �
}��� �
$str��� �
{��� �
NetworkObjectId��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

.��� �-
GetNetworkBehaviourOrderIndex��� �
)��� �
}��� �
$str��� �
{��� �

.��� �-
GetNetworkBehaviourOrderIndex��� �
(��� � 
networkBehaviour��� �
)��� �
}��� �
$str��� �
{��� �
i��� �
}��� �
"��� �
)��� �
;��� �

NetworkLog
��$ .
.
��. /
LogError
��/ 7
(
��7 8
$"
��8 :
$str
��: ;
{
��; <
networkVariable
��< K
.
��K L
GetType
��L S
(
��S T
)
��T U
.
��U V
Name
��V Z
}
��Z [
$str
��[ \
"
��\ ]
)
��] ^
;
��^ _
}
��  !+
m_ReceivedNetworkVariableData
��  =
.
��= >
Seek
��> B
(
��B C+
m_ReceivedNetworkVariableData
��C `
.
��` a
Position
��a i
+
��j k
varSize
��l s
)
��s t
;
��t u
continue
��  (
;
��( )
}
�� 
if
�� 
(
��  

NetworkLog
��  *
.
��* +
CurrentLogLevel
��+ :
<=
��; =
LogLevel
��> F
.
��F G
	Developer
��G P
)
��P Q
{
�� 

NetworkLog
��  *
.
��* +
LogError
��+ 3
(
��3 4
$"
��4 6
$str
��6 F
{
��F G
typeof
��G M
(
��M N
NetworkVariable
��N ]
<
��] ^
>
��^ _
)
��_ `
.
��` a
Name
��a e
}
��e f
$str��f �
{��� �
nameof��� �
(��� �
NetworkObjectId��� �
)��� �
}��� �
$str��� �
{��� �
NetworkObjectId��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

.��� �-
GetNetworkBehaviourOrderIndex��� �
)��� �
}��� �
$str��� �
{��� �

.��� �-
GetNetworkBehaviourOrderIndex��� �
(��� � 
networkBehaviour��� �
)��� �
}��� �
$str��� �
{��� �
i��� �
}��� �
"��� �
)��� �
;��� �

NetworkLog
��  *
.
��* +
LogError
��+ 3
(
��3 4
$"
��4 6
$str
��6 7
{
��7 8
networkVariable
��8 G
.
��G H
GetType
��H O
(
��O P
)
��P Q
.
��Q R
Name
��R V
}
��V W
$str
��W X
"
��X Y
)
��Y Z
;
��Z [
}
�� 
return
�� "
;
��" #
}
�� 
int
�� 
readStartPos
�� (
=
��) *+
m_ReceivedNetworkVariableData
��+ H
.
��H I
Position
��I Q
;
��Q R
networkVariable
�� '
.
��' (
	ReadDelta
��( 1
(
��1 2+
m_ReceivedNetworkVariableData
��2 O
,
��O P
networkManager
��Q _
.
��_ `
IsServer
��` h
)
��h i
;
��i j
networkManager
�� &
.
��& '
NetworkMetrics
��' 5
.
��5 6/
!TrackNetworkVariableDeltaReceived
��6 W
(
��W X
context
�� #
.
��# $
SenderId
��$ ,
,
��, -

�� )
,
��) *
networkVariable
�� +
.
��+ ,
Name
��, 0
,
��0 1
networkBehaviour
�� ,
.
��, -

��- :
(
��: ;
)
��; <
,
��< =
context
�� #
.
��# $
MessageSize
��$ /
)
��/ 0
;
��0 1
if
�� 
(
�� 
networkManager
�� *
.
��* +

��+ 8
.
��8 9/
!EnsureNetworkVariableLengthSafety
��9 Z
)
��Z [
{
�� 
if
�� 
(
��  +
m_ReceivedNetworkVariableData
��  =
.
��= >
Position
��> F
>
��G H
(
��I J
readStartPos
��J V
+
��W X
varSize
��Y `
)
��` a
)
��a b
{
�� 
if
��  "
(
��# $

NetworkLog
��$ .
.
��. /
CurrentLogLevel
��/ >
<=
��? A
LogLevel
��B J
.
��J K
Normal
��K Q
)
��Q R
{
��  !

NetworkLog
��$ .
.
��. /

LogWarning
��/ 9
(
��9 :
$"
��: <
$str
��< T
{
��T U+
m_ReceivedNetworkVariableData
��U r
.
��r s
Position
��s {
-
��| }
(
��~ 
readStartPos�� �
+��� �
varSize��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �
NetworkObjectId��� �
)��� �
}��� �
$str��� �
{��� �
NetworkObjectId��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

.��� �-
GetNetworkBehaviourOrderIndex��� �
)��� �
}��� �
$str��� �
{��� �

.��� �-
GetNetworkBehaviourOrderIndex��� �
(��� � 
networkBehaviour��� �
)��� �
}��� �
$str��� �
{��� �
i��� �
}��� �
"��� �
)��� �
;��� �
}
��  !+
m_ReceivedNetworkVariableData
��  =
.
��= >
Seek
��> B
(
��B C
readStartPos
��C O
+
��P Q
varSize
��R Y
)
��Y Z
;
��Z [
}
�� 
else
��  
if
��! #
(
��$ %+
m_ReceivedNetworkVariableData
��% B
.
��B C
Position
��C K
<
��L M
(
��N O
readStartPos
��O [
+
��\ ]
varSize
��^ e
)
��e f
)
��f g
{
�� 
if
��  "
(
��# $

NetworkLog
��$ .
.
��. /
CurrentLogLevel
��/ >
<=
��? A
LogLevel
��B J
.
��J K
Normal
��K Q
)
��Q R
{
��  !

NetworkLog
��$ .
.
��. /

LogWarning
��/ 9
(
��9 :
$"
��: <
$str
��< W
{
��W X
readStartPos
��X d
+
��e f
varSize
��g n
-
��o p,
m_ReceivedNetworkVariableData��q �
.��� �
Position��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �
NetworkObjectId��� �
)��� �
}��� �
$str��� �
{��� �
NetworkObjectId��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �

.��� �-
GetNetworkBehaviourOrderIndex��� �
)��� �
}��� �
$str��� �
{��� �

.��� �-
GetNetworkBehaviourOrderIndex��� �
(��� � 
networkBehaviour��� �
)��� �
}��� �
$str��� �
{��� �
i��� �
}��� �
"��� �
)��� �
;��� �
}
��  !+
m_ReceivedNetworkVariableData
��  =
.
��= >
Seek
��> B
(
��B C
readStartPos
��C O
+
��P Q
varSize
��R Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
networkManager
�� 
.
�� $
DeferredMessageManager
�� 5
.
��5 6
DeferMessage
��6 B
(
��B C%
IDeferredMessageManager
��C Z
.
��Z [
TriggerType
��[ f
.
��f g
OnSpawn
��g n
,
��n o
NetworkObjectId
��p 
,�� �-
m_ReceivedNetworkVariableData��� �
,��� �
ref��� �
context��� �
)��� �
;��� �
}
�� 
}
�� 	
}
�� 
}�� ��
�C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\NetworkVariable\NetworkVariableSerialization.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
	interface
INetworkVariableSerializer 1
<1 2
T2 3
>3 4
{
public 
void 
Write 
( 
FastBufferWriter *
writer+ 1
,1 2
ref3 6
T7 8
value9 >
)> ?
;? @
public 
void 
Read 
( 
FastBufferReader )
reader* 0
,0 1
out2 5
T6 7
value8 =
)= >
;> ?
} 
internal   
class  
UnmanagedTypeSerializer   *
<  * +
T  + ,
>  , -
:  . /&
INetworkVariableSerializer  0 J
<  J K
T  K L
>  L M
where  N S
T  T U
:  V W
	unmanaged  X a
{!! 
public"" 
void"" 
Write"" 
("" 
FastBufferWriter"" *
writer""+ 1
,""1 2
ref""3 6
T""7 8
value""9 >
)""> ?
{## 	
writer$$ 
.$$ 
WriteUnmanagedSafe$$ %
($$% &
value$$& +
)$$+ ,
;$$, -
}%% 	
public&& 
void&& 
Read&& 
(&& 
FastBufferReader&& )
reader&&* 0
,&&0 1
out&&2 5
T&&6 7
value&&8 =
)&&= >
{'' 	
reader(( 
.(( 
ReadUnmanagedSafe(( $
((($ %
out((% (
value(() .
)((. /
;((/ 0
})) 	
}** 
internal88 
class88
FixedStringSerializer88 (
<88( )
T88) *
>88* +
:88, -&
INetworkVariableSerializer88. H
<88H I
T88I J
>88J K
where88L Q
T88R S
:88T U
	unmanaged88V _
{99 
internal:: 
delegate:: 
int:: 
GetLengthDelegate:: /
(::/ 0
ref::0 3
T::4 5
value::6 ;
)::; <
;::< =
internal;; 
delegate;; 
void;; 
SetLengthDelegate;; 0
(;;0 1
ref;;1 4
T;;5 6
value;;7 <
,;;< =
int;;> A
length;;B H
);;H I
;;;I J
internal<< 
unsafe<< 
delegate<<  
byte<<! %
*<<% & 
GetUnsafePtrDelegate<<' ;
(<<; <
ref<<< ?
T<<@ A
value<<B G
)<<G H
;<<H I
internal>> 
GetLengthDelegate>> "
	GetLength>># ,
;>>, -
internal?? 
SetLengthDelegate?? "
	SetLength??# ,
;??, -
internal@@  
GetUnsafePtrDelegate@@ %
GetUnsafePtr@@& 2
;@@2 3
publicBB 
unsafeBB 
voidBB 
WriteBB  
(BB  !
FastBufferWriterBB! 1
writerBB2 8
,BB8 9
refBB: =
TBB> ?
valueBB@ E
)BBE F
{CC 	
intDD 
lengthDD 
=DD 
	GetLengthDD "
(DD" #
refDD# &
valueDD' ,
)DD, -
;DD- .
byteEE 
*EE 
dataEE 
=EE 
GetUnsafePtrEE %
(EE% &
refEE& )
valueEE* /
)EE/ 0
;EE0 1
writerFF 
.FF 
WriteUnmanagedSafeFF %
(FF% &
lengthFF& ,
)FF, -
;FF- .
writerGG 
.GG 
WriteBytesSafeGG !
(GG! "
dataGG" &
,GG& '
lengthGG( .
)GG. /
;GG/ 0
}HH 	
publicII 
unsafeII 
voidII 
ReadII 
(II  
FastBufferReaderII  0
readerII1 7
,II7 8
outII9 <
TII= >
valueII? D
)IID E
{JJ 	
valueKK 
=KK 
newKK 
TKK 
(KK 
)KK 
;KK 
readerLL 
.LL 

(LL  !
outLL! $
intLL% (
lengthLL) /
)LL/ 0
;LL0 1
	SetLengthMM 
(MM 
refMM 
valueMM 
,MM  
lengthMM! '
)MM' (
;MM( )
readerNN 
.NN 

(NN  !
GetUnsafePtrNN! -
(NN- .
refNN. 1
valueNN2 7
)NN7 8
,NN8 9
lengthNN: @
)NN@ A
;NNA B
}OO 	
}PP 
internal^^ 
class^^
NetworkSerializableSerializer^^ 0
<^^0 1
T^^1 2
>^^2 3
:^^4 5&
INetworkVariableSerializer^^6 P
<^^P Q
T^^Q R
>^^R S
where^^T Y
T^^Z [
:^^\ ]
	unmanaged^^^ g
{__ 
internal`` 
delegate`` 
void`` 
WriteValueDelegate`` 1
(``1 2
ref``2 5
T``6 7
value``8 =
,``= >
BufferSerializer``? O
<``O P"
BufferSerializerWriter``P f
>``f g

serializer``h r
)``r s
;``s t
internalaa 
delegateaa 
voidaa 
ReadValueDelegateaa 0
(aa0 1
refaa1 4
Taa5 6
valueaa7 <
,aa< =
BufferSerializeraa> N
<aaN O"
BufferSerializerReaderaaO e
>aae f

serializeraag q
)aaq r
;aar s
internalcc 
WriteValueDelegatecc #

WriteValuecc$ .
;cc. /
internaldd 
ReadValueDelegatedd "
	ReadValuedd# ,
;dd, -
publicee 
voidee 
Writeee 
(ee 
FastBufferWriteree *
writeree+ 1
,ee1 2
refee3 6
Tee7 8
valueee9 >
)ee> ?
{ff 	
vargg 
bufferSerializergg  
=gg! "
newgg# &
BufferSerializergg' 7
<gg7 8"
BufferSerializerWritergg8 N
>ggN O
(ggO P
newggP S"
BufferSerializerWriterggT j
(ggj k
writerggk q
)ggq r
)ggr s
;ggs t

WriteValuehh 
(hh 
refhh 
valuehh  
,hh  !
bufferSerializerhh" 2
)hh2 3
;hh3 4
}ii 	
publicjj 
voidjj 
Readjj 
(jj 
FastBufferReaderjj )
readerjj* 0
,jj0 1
outjj2 5
Tjj6 7
valuejj8 =
)jj= >
{kk 	
valuell 
=ll 
newll 
Tll 
(ll 
)ll 
;ll 
varmm 
bufferSerializermm  
=mm! "
newmm# &
BufferSerializermm' 7
<mm7 8"
BufferSerializerReadermm8 N
>mmN O
(mmO P
newmmP S"
BufferSerializerReadermmT j
(mmj k
readermmk q
)mmq r
)mmr s
;mms t
	ReadValuenn 
(nn 
refnn 
valuenn 
,nn  
bufferSerializernn! 1
)nn1 2
;nn2 3
}oo 	
}pp 
publicyy 

classyy ,
 UserNetworkVariableSerializationyy 1
<yy1 2
Tyy2 3
>yy3 4
{zz 
public
�� 
delegate
�� 
void
��  
WriteValueDelegate
�� /
(
��/ 0
FastBufferWriter
��0 @
writer
��A G
,
��G H
in
��I K
T
��L M
value
��N S
)
��S T
;
��T U
public
�� 
delegate
�� 
void
�� 
ReadValueDelegate
�� .
(
��. /
FastBufferReader
��/ ?
reader
��@ F
,
��F G
out
��H K
T
��L M
value
��N S
)
��S T
;
��T U
public
�� 
static
��  
WriteValueDelegate
�� (

WriteValue
��) 3
;
��3 4
public
�� 
static
�� 
ReadValueDelegate
�� '
	ReadValue
��( 1
;
��1 2
}
�� 
internal
�� 
class
��
FallbackSerializer
�� %
<
��% &
T
��& '
>
��' (
:
��) *(
INetworkVariableSerializer
��+ E
<
��E F
T
��F G
>
��G H
{
�� 
public
�� 
void
�� 
Write
�� 
(
�� 
FastBufferWriter
�� *
writer
��+ 1
,
��1 2
ref
��3 6
T
��7 8
value
��9 >
)
��> ?
{
�� 	
if
�� 
(
�� .
 UserNetworkVariableSerialization
�� 0
<
��0 1
T
��1 2
>
��2 3
.
��3 4
	ReadValue
��4 =
==
��> @
null
��A E
||
��F H.
 UserNetworkVariableSerialization
��I i
<
��i j
T
��j k
>
��k l
.
��l m

WriteValue
��m w
==
��x z
null
��{ 
)�� �
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$"
��, .
$str
��. 3
{
��3 4
typeof
��4 :
(
��: ;
T
��; <
)
��< =
.
��= >
FullName
��> F
}
��F G
$str
��G \
{
��\ ]
typeof
��] c
(
��c d
NetworkVariable
��d s
<
��s t
>
��t u
)
��u v
.
��v w
Name
��w {
}
��{ |
$str��| �
{��� �
nameof��� �
(��� �$
INetworkSerializable��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �)
INetworkSerializeByMemcpy��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �0
 UserNetworkVariableSerialization��� �
<��� �
T��� �
>��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �0
 UserNetworkVariableSerialization��� �
<��� �
T��� �
>��� �
.��� �

WriteValue��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �0
 UserNetworkVariableSerialization��� �
<��� �
T��� �
>��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �0
 UserNetworkVariableSerialization��� �
<��� �
T��� �
>��� �
.��� �
	ReadValue��� �
)��� �
}��� �
$str��� �
{��� �
typeof��� �
(��� �-
ForceNetworkSerializeByMemcpy��� �
<��� �
>��� �
)��� �
.��� �
Name��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
 UserNetworkVariableSerialization
�� ,
<
��, -
T
��- .
>
��. /
.
��/ 0

WriteValue
��0 :
(
��: ;
writer
��; A
,
��A B
value
��C H
)
��H I
;
��I J
}
�� 	
public
�� 
void
�� 
Read
�� 
(
�� 
FastBufferReader
�� )
reader
��* 0
,
��0 1
out
��2 5
T
��6 7
value
��8 =
)
��= >
{
�� 	
if
�� 
(
�� .
 UserNetworkVariableSerialization
�� 0
<
��0 1
T
��1 2
>
��2 3
.
��3 4
	ReadValue
��4 =
==
��> @
null
��A E
||
��F H.
 UserNetworkVariableSerialization
��I i
<
��i j
T
��j k
>
��k l
.
��l m

WriteValue
��m w
==
��x z
null
��{ 
)�� �
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$"
��, .
$str
��. 3
{
��3 4
typeof
��4 :
(
��: ;
T
��; <
)
��< =
.
��= >
FullName
��> F
}
��F G
$str
��G \
{
��\ ]
typeof
��] c
(
��c d
NetworkVariable
��d s
<
��s t
>
��t u
)
��u v
.
��v w
Name
��w {
}
��{ |
$str��| �
{��� �
nameof��� �
(��� �$
INetworkSerializable��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �)
INetworkSerializeByMemcpy��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �0
 UserNetworkVariableSerialization��� �
<��� �
T��� �
>��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �0
 UserNetworkVariableSerialization��� �
<��� �
T��� �
>��� �
.��� �

WriteValue��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �0
 UserNetworkVariableSerialization��� �
<��� �
T��� �
>��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �0
 UserNetworkVariableSerialization��� �
<��� �
T��� �
>��� �
.��� �
	ReadValue��� �
)��� �
}��� �
$str��� �
{��� �
typeof��� �
(��� �-
ForceNetworkSerializeByMemcpy��� �
<��� �
>��� �
)��� �
.��� �
Name��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
 UserNetworkVariableSerialization
�� ,
<
��, -
T
��- .
>
��. /
.
��/ 0
	ReadValue
��0 9
(
��9 :
reader
��: @
,
��@ A
out
��B E
value
��F K
)
��K L
;
��L M
}
�� 	
}
�� 
internal
�� 
static
��
class
�� /
!NetworkVariableSerializationTypes
�� ;
{
�� 
internal
�� 
static
�� 
readonly
��  
HashSet
��! (
<
��( )
Type
��) -
>
��- . 
BaseSupportedTypes
��/ A
=
��B C
new
��D G
HashSet
��H O
<
��O P
Type
��P T
>
��T U
{
�� 	
typeof
�� 
(
�� 
bool
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
byte
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
sbyte
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
char
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
decimal
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
double
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
float
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
int
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
uint
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
long
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
ulong
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
short
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
ushort
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
Vector2
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
Vector3
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 

Vector2Int
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 

Vector3Int
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
Vector4
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 

Quaternion
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
Color
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
Color32
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
Ray
�� 
)
�� 
,
�� 
typeof
�� 
(
�� 
Ray2D
�� 
)
�� 
}
�� 	
;
��	 

}
�� 
[
�� 
Serializable
�� 
]
�� 
public
�� 

static
�� 
class
�� *
NetworkVariableSerialization
�� 4
<
��4 5
T
��5 6
>
��6 7
where
��8 =
T
��> ?
:
��@ A
	unmanaged
��B K
{
�� 
private
�� 
static
�� (
INetworkVariableSerializer
�� 1
<
��1 2
T
��2 3
>
��3 4
s_Serializer
��5 A
=
��B C

��D Q
(
��Q R
)
��R S
;
��S T
private
�� 
static
�� (
INetworkVariableSerializer
�� 1
<
��1 2
T
��2 3
>
��3 4

��5 B
(
��B C
)
��C D
{
�� 	
if
�� 
(
�� /
!NetworkVariableSerializationTypes
�� 1
.
��1 2 
BaseSupportedTypes
��2 D
.
��D E
Contains
��E M
(
��M N
typeof
��N T
(
��T U
T
��U V
)
��V W
)
��W X
)
��X Y
{
�� 
return
�� 
new
�� %
UnmanagedTypeSerializer
�� 2
<
��2 3
T
��3 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
if
�� 
(
�� 
typeof
�� 
(
�� '
INetworkSerializeByMemcpy
�� 0
)
��0 1
.
��1 2
IsAssignableFrom
��2 B
(
��B C
typeof
��C I
(
��I J
T
��J K
)
��K L
)
��L M
)
��M N
{
�� 
return
�� 
new
�� %
UnmanagedTypeSerializer
�� 2
<
��2 3
T
��3 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
if
�� 
(
�� 
typeof
�� 
(
�� 
Enum
�� 
)
�� 
.
�� 
IsAssignableFrom
�� -
(
��- .
typeof
��. 4
(
��4 5
T
��5 6
)
��6 7
)
��7 8
)
��8 9
{
�� 
return
�� 
new
�� %
UnmanagedTypeSerializer
�� 2
<
��2 3
T
��3 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
if
�� 
(
�� 
typeof
�� 
(
�� "
INetworkSerializable
�� +
)
��+ ,
.
��, -
IsAssignableFrom
��- =
(
��= >
typeof
��> D
(
��D E
T
��E F
)
��F G
)
��G H
)
��H I
{
�� 
var
�� 
writeMethod
�� 
=
��  !
(
��" #+
NetworkSerializableSerializer
��# @
<
��@ A
T
��A B
>
��B C
.
��C D 
WriteValueDelegate
��D V
)
��V W
Delegate
��W _
.
��_ `
CreateDelegate
��` n
(
��n o
typeof
��o u
(
��u v,
NetworkSerializableSerializer��v �
<��� �
T��� �
>��� �
.��� �"
WriteValueDelegate��� �
)��� �
,��� �
null��� �
,��� �
typeof��� �
(��� �
T��� �
)��� �
.��� �
	GetMethod��� �
(��� �
nameof��� �
(��� �$
INetworkSerializable��� �
.��� � 
NetworkSerialize��� �
)��� �
)��� �
.��� �!
MakeGenericMethod��� �
(��� �
typeof��� �
(��� �&
BufferSerializerWriter��� �
)��� �
)��� �
)��� �
;��� �
var
�� 

readMethod
�� 
=
��  
(
��! "+
NetworkSerializableSerializer
��" ?
<
��? @
T
��@ A
>
��A B
.
��B C
ReadValueDelegate
��C T
)
��T U
Delegate
��U ]
.
��] ^
CreateDelegate
��^ l
(
��l m
typeof
��m s
(
��s t,
NetworkSerializableSerializer��t �
<��� �
T��� �
>��� �
.��� �!
ReadValueDelegate��� �
)��� �
,��� �
null��� �
,��� �
typeof��� �
(��� �
T��� �
)��� �
.��� �
	GetMethod��� �
(��� �
nameof��� �
(��� �$
INetworkSerializable��� �
.��� � 
NetworkSerialize��� �
)��� �
)��� �
.��� �!
MakeGenericMethod��� �
(��� �
typeof��� �
(��� �&
BufferSerializerReader��� �
)��� �
)��� �
)��� �
;��� �
return
�� 
new
�� +
NetworkSerializableSerializer
�� 8
<
��8 9
T
��9 :
>
��: ;
{
��< =

WriteValue
��> H
=
��I J
writeMethod
��K V
,
��V W
	ReadValue
��X a
=
��b c

readMethod
��d n
}
��o p
;
��p q
}
�� 
if
�� 
(
�� 
typeof
�� 
(
�� 

IUTF8Bytes
�� !
)
��! "
.
��" #
IsAssignableFrom
��# 3
(
��3 4
typeof
��4 :
(
��: ;
T
��; <
)
��< =
)
��= >
&&
��? A
typeof
��B H
(
��H I
INativeList
��I T
<
��T U
byte
��U Y
>
��Y Z
)
��Z [
.
��[ \
IsAssignableFrom
��\ l
(
��l m
typeof
��m s
(
��s t
T
��t u
)
��u v
)
��v w
)
��w x
{
�� 
var
�� 
	getLength
�� 
=
�� 
(
��  !#
FixedStringSerializer
��! 6
<
��6 7
T
��7 8
>
��8 9
.
��9 :
GetLengthDelegate
��: K
)
��K L
Delegate
��L T
.
��T U
CreateDelegate
��U c
(
��c d
typeof
��d j
(
��j k$
FixedStringSerializer��k �
<��� �
T��� �
>��� �
.��� �!
GetLengthDelegate��� �
)��� �
,��� �
null��� �
,��� �
typeof��� �
(��� �
T��� �
)��� �
.��� �
	GetMethod��� �
(��� �
$str��� �
+��� �
nameof��� �
(��� �
INativeList��� �
<��� �
byte��� �
>��� �
.��� �
Length��� �
)��� �
)��� �
)��� �
;��� �
var
�� 
	setLength
�� 
=
�� 
(
��  !#
FixedStringSerializer
��! 6
<
��6 7
T
��7 8
>
��8 9
.
��9 :
SetLengthDelegate
��: K
)
��K L
Delegate
��L T
.
��T U
CreateDelegate
��U c
(
��c d
typeof
��d j
(
��j k$
FixedStringSerializer��k �
<��� �
T��� �
>��� �
.��� �!
SetLengthDelegate��� �
)��� �
,��� �
null��� �
,��� �
typeof��� �
(��� �
T��� �
)��� �
.��� �
	GetMethod��� �
(��� �
$str��� �
+��� �
nameof��� �
(��� �
INativeList��� �
<��� �
byte��� �
>��� �
.��� �
Length��� �
)��� �
)��� �
)��� �
;��� �
var
�� 
getUnsafePtr
��  
=
��! "
(
��# $#
FixedStringSerializer
��$ 9
<
��9 :
T
��: ;
>
��; <
.
��< ="
GetUnsafePtrDelegate
��= Q
)
��Q R
Delegate
��R Z
.
��Z [
CreateDelegate
��[ i
(
��i j
typeof
��j p
(
��p q$
FixedStringSerializer��q �
<��� �
T��� �
>��� �
.��� �$
GetUnsafePtrDelegate��� �
)��� �
,��� �
null��� �
,��� �
typeof��� �
(��� �
T��� �
)��� �
.��� �
	GetMethod��� �
(��� �
nameof��� �
(��� �

IUTF8Bytes��� �
.��� �
GetUnsafePtr��� �
)��� �
)��� �
)��� �
;��� �
return
�� 
new
�� #
FixedStringSerializer
�� 0
<
��0 1
T
��1 2
>
��2 3
{
��4 5
	GetLength
��6 ?
=
��@ A
	getLength
��B K
,
��K L
	SetLength
��M V
=
��W X
	setLength
��Y b
,
��b c
GetUnsafePtr
��d p
=
��q r
getUnsafePtr
��s 
}��� �
;��� �
}
�� 
return
�� 
new
��  
FallbackSerializer
�� )
<
��) *
T
��* +
>
��+ ,
(
��, -
)
��- .
;
��. /
}
�� 	
internal
�� 
static
�� 
void
�� 
Write
�� "
(
��" #
FastBufferWriter
��# 3
writer
��4 :
,
��: ;
ref
��< ?
T
��@ A
value
��B G
)
��G H
{
�� 	
s_Serializer
�� 
.
�� 
Write
�� 
(
�� 
writer
�� %
,
��% &
ref
��' *
value
��+ 0
)
��0 1
;
��1 2
}
�� 	
internal
�� 
static
�� 
void
�� 
Read
�� !
(
��! "
FastBufferReader
��" 2
reader
��3 9
,
��9 :
out
��; >
T
��? @
value
��A F
)
��F G
{
�� 	
s_Serializer
�� 
.
�� 
Read
�� 
(
�� 
reader
�� $
,
��$ %
out
��& )
value
��* /
)
��/ 0
;
��0 1
}
�� 	
}
�� 
}�� �
jC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\BatchHeader.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
struct
BatchHeader 
:  !%
INetworkSerializeByMemcpy" ;
{ 
public 
ushort 
	BatchSize 
;  
} 
}
|C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\NetworkBehaviourReference.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public

 

struct

 %
NetworkBehaviourReference

 +
:

, - 
INetworkSerializable

. B
,

B C

IEquatable

D N
<

N O%
NetworkBehaviourReference

O h
>

h i
{ 
private "
NetworkObjectReference &$
m_NetworkObjectReference' ?
;? @
private
ushort
m_NetworkBehaviourId
;
public %
NetworkBehaviourReference (
(( )
NetworkBehaviour) 9
networkBehaviour: J
)J K
{ 	
if 
( 
networkBehaviour  
==! #
null$ (
)( )
{ 
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
networkBehaviour7 G
)G H
)H I
;I J
} 
if 
( 
networkBehaviour  
.  !

==/ 1
null2 6
)6 7
{ 
throw 
new 
ArgumentException +
(+ ,
$", .
$str. <
{< =
nameof= C
(C D%
NetworkBehaviourReferenceD ]
)] ^
}^ _
$str_ e
{e f
nameoff l
(l m
NetworkBehaviourm }
)} ~
}~ 
$str	 �
{
� �
nameof
� �
(
� �

� �
)
� �
}
� �
$str
� �
"
� �
)
� �
;
� �
} 
m_NetworkObjectReference $
=% &
networkBehaviour' 7
.7 8

;E F 
m_NetworkBehaviourId    
=  ! "
networkBehaviour  # 3
.  3 4
NetworkBehaviourId  4 F
;  F G
}!! 	
public)) 
bool)) 
TryGet)) 
()) 
out)) 
NetworkBehaviour)) /
networkBehaviour))0 @
,))@ A
NetworkManager))B P
networkManager))Q _
=))` a
null))b f
)))f g
{** 	
networkBehaviour++ 
=++ 
GetInternal++ *
(++* +
this+++ /
,++/ 0
null++1 5
)++5 6
;++6 7
return,, 
networkBehaviour,, #
!=,,$ &
null,,' +
;,,+ ,
}-- 	
public66 
bool66 
TryGet66 
<66 
T66 
>66 
(66 
out66 !
T66" #
networkBehaviour66$ 4
,664 5
NetworkManager666 D
networkManager66E S
=66T U
null66V Z
)66Z [
where66\ a
T66b c
:66d e
NetworkBehaviour66f v
{77 	
networkBehaviour88 
=88 
GetInternal88 *
(88* +
this88+ /
,88/ 0
null881 5
)885 6
as887 9
T88: ;
;88; <
return99 
networkBehaviour99 #
!=99$ &
null99' +
;99+ ,
}:: 	
[<< 	

MethodImpl<<	 
(<< 
MethodImplOptions<< %
.<<% &
AggressiveInlining<<& 8
)<<8 9
]<<9 :
private== 
static== 
NetworkBehaviour== '
GetInternal==( 3
(==3 4%
NetworkBehaviourReference==4 M
networkBehaviourRef==N a
,==a b
NetworkManager==c q
networkManager	==r �
=
==� �
null
==� �
)
==� �
{>> 	
if?? 
(?? 
networkBehaviourRef?? #
.??# $$
m_NetworkObjectReference??$ <
.??< =
TryGet??= C
(??C D
out??D G


,??c d
networkManager??e s
)??s t
)??t u
{@@ 
returnAA 

.AA$ %+
GetNetworkBehaviourAtOrderIndexAA% D
(AAD E
networkBehaviourRefAAE X
.AAX Y 
m_NetworkBehaviourIdAAY m
)AAm n
;AAn o
}BB 
returnDD 
nullDD 
;DD 
}EE 	
publicHH 
boolHH 
EqualsHH 
(HH %
NetworkBehaviourReferenceHH 4
otherHH5 :
)HH: ;
{II 	
returnJJ $
m_NetworkObjectReferenceJJ +
.JJ+ ,
EqualsJJ, 2
(JJ2 3
otherJJ3 8
.JJ8 9$
m_NetworkObjectReferenceJJ9 Q
)JJQ R
&&JJS U 
m_NetworkBehaviourIdJJV j
==JJk m
otherJJn s
.JJs t!
m_NetworkBehaviourId	JJt �
;
JJ� �
}KK 	
publicNN 
overrideNN 
boolNN 
EqualsNN #
(NN# $
objectNN$ *
objNN+ .
)NN. /
{OO 	
returnPP 
objPP 
isPP %
NetworkBehaviourReferencePP 3
otherPP4 9
&&PP: <
EqualsPP= C
(PPC D
otherPPD I
)PPI J
;PPJ K
}QQ 	
publicTT 
overrideTT 
intTT 
GetHashCodeTT '
(TT' (
)TT( )
{UU 	
	uncheckedVV 
{WW 
returnXX 
(XX $
m_NetworkObjectReferenceXX 0
.XX0 1
GetHashCodeXX1 <
(XX< =
)XX= >
*XX? @
$numXXA D
)XXD E
^XXF G 
m_NetworkBehaviourIdXXH \
.XX\ ]
GetHashCodeXX] h
(XXh i
)XXi j
;XXj k
}YY 
}ZZ 	
public]] 
void]] 
NetworkSerialize]] $
<]]$ %
T]]% &
>]]& '
(]]' (
BufferSerializer]]( 8
<]]8 9
T]]9 :
>]]: ;

serializer]]< F
)]]F G
where]]H M
T]]N O
:]]P Q

{^^ 	$
m_NetworkObjectReference__ $
.__$ %
NetworkSerialize__% 5
(__5 6

serializer__6 @
)__@ A
;__A B

serializer`` 
.`` 
SerializeValue`` %
(``% &
ref``& ) 
m_NetworkBehaviourId``* >
)``> ?
;``? @
}aa 	
publichh 
statichh 
implicithh 
operatorhh '
NetworkBehaviourhh( 8
(hh8 9%
NetworkBehaviourReferencehh9 R
networkBehaviourRefhhS f
)hhf g
=>hhh j
GetInternalhhk v
(hhv w 
networkBehaviourRef	hhw �
)
hh� �
;
hh� �
publicoo 
staticoo 
implicitoo 
operatoroo '%
NetworkBehaviourReferenceoo( A
(ooA B
NetworkBehaviourooB R
networkBehaviourooS c
)ooc d
=>ooe g
newooh k&
NetworkBehaviourReference	ool �
(
oo� �
networkBehaviour
oo� �
)
oo� �
;
oo� �
}pp 
}qq �
kC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Configuration\HashSize.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

enum 
HashSize 
: 
byte 
{		 
VarIntFourBytes
,
VarIntEightBytes 
} 
} �
aC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str <
)< =
]= >
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 4
)4 5
]5 6
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 7
)7 8
]8 9
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str <
)< =
]= >
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
]9 :
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str :
): ;
]; <
[
assembly
:

InternalsVisibleTo
(
$str
)
]
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 9
)9 :
]: ;� 
xC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\Messages\ServerLogMessage.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
struct
ServerLogMessage $
:% &
INetworkMessage' 6
{ 
public 

NetworkLog 
. 
LogType !
LogType" )
;) *
public 
string 
Message 
; 
public 
void 
	Serialize 
( 
FastBufferWriter .
writer/ 5
)5 6
{ 	
writer 
. 
WriteValueSafe !
(! "
LogType" )
)) *
;* +

BytePacker 
. 
WriteValuePacked '
(' (
writer( .
,. /
Message0 7
)7 8
;8 9
} 	
public 
bool 
Deserialize 
(  
FastBufferReader  0
reader1 7
,7 8
ref9 <
NetworkContext= K
contextL S
)S T
{ 	
var 
networkManager 
=  
(! "
NetworkManager" 0
)0 1
context1 8
.8 9
SystemOwner9 D
;D E
if 
( 
networkManager 
. 
IsServer '
&&( *
networkManager+ 9
.9 :

.G H
EnableNetworkLogsH Y
)Y Z
{ 
reader 
. 

($ %
out% (
LogType) 0
)0 1
;1 2
ByteUnpacker 
. 
ReadValuePacked ,
(, -
reader- 3
,3 4
out5 8
Message9 @
)@ A
;A B
return 
true 
; 
} 
return 
false 
; 
} 	
public!! 
void!! 
Handle!! 
(!! 
ref!! 
NetworkContext!! -
context!!. 5
)!!5 6
{"" 	
var## 
networkManager## 
=##  
(##! "
NetworkManager##" 0
)##0 1
context##1 8
.##8 9
SystemOwner##9 D
;##D E
var$$ 
senderId$$ 
=$$ 
context$$ "
.$$" #
SenderId$$# +
;$$+ ,
networkManager&& 
.&& 
NetworkMetrics&& )
.&&) *"
TrackServerLogReceived&&* @
(&&@ A
senderId&&A I
,&&I J
(&&K L
uint&&L P
)&&P Q
LogType&&Q X
,&&X Y
context&&Z a
.&&a b
MessageSize&&b m
)&&m n
;&&n o
switch(( 
((( 
LogType(( 
)(( 
{)) 
case** 

NetworkLog** 
.**  
LogType**  '
.**' (
Info**( ,
:**, -

NetworkLog++ 
.++ 
LogInfoServerLocal++ 1
(++1 2
Message++2 9
,++9 :
senderId++; C
)++C D
;++D E
break,, 
;,, 
case-- 

NetworkLog-- 
.--  
LogType--  '
.--' (
Warning--( /
:--/ 0

NetworkLog.. 
... !
LogWarningServerLocal.. 4
(..4 5
Message..5 <
,..< =
senderId..> F
)..F G
;..G H
break// 
;// 
case00 

NetworkLog00 
.00  
LogType00  '
.00' (
Error00( -
:00- .

NetworkLog11 
.11 
LogErrorServerLocal11 2
(112 3
Message113 :
,11: ;
senderId11< D
)11D E
;11E F
break22 
;22 
}33 
}44 	
}55 
}66 Ɣ
gC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Core\NetworkObject.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
[ 
AddComponentMenu 
( 
$str  
+! "
nameof# )
() *

)7 8
,8 9
-: ;
$num; =
)= >
]> ?
[
DisallowMultipleComponent
]
public 

sealed 
class 

:& '

{ 
[ 	
HideInInspector	 
] 
[ 	
SerializeField	 
] 
internal 
uint 
GlobalObjectIdHash (
;( )
private 
void 

OnValidate 
(  
)  !
{ 	&
GenerateGlobalObjectIdHash &
(& '
)' (
;( )
} 	
internal 
void &
GenerateGlobalObjectIdHash 0
(0 1
)1 2
{ 	
if 
( 
UnityEditor 
. 
EditorApplication -
.- .
	isPlaying. 7
&&8 :
!; <
string< B
.B C

(P Q

gameObjectQ [
.[ \
scene\ a
.a b
nameb f
)f g
)g h
{ 
return 
; 
}   
if## 
(## 
!## 
UnityEditor## 
.## 
EditorApplication## .
.##. /
	isPlaying##/ 8
&&##9 ;
UnityEditor##< G
.##G H
EditorApplication##H Y
.##Y Z)
isPlayingOrWillChangePlaymode##Z w
)##w x
{$$ 
return%% 
;%% 
}&& 
var((  
globalObjectIdString(( $
=((% &
UnityEditor((' 2
.((2 3
GlobalObjectId((3 A
.((A B!
GetGlobalObjectIdSlow((B W
(((W X
this((X \
)((\ ]
.((] ^
ToString((^ f
(((f g
)((g h
;((h i
GlobalObjectIdHash)) 
=))  
XXHash))! '
.))' (
Hash32))( .
()). / 
globalObjectIdString))/ C
)))C D
;))D E
}** 	
public00 
NetworkManager00 
NetworkManager00 ,
=>00- /
NetworkManagerOwner000 C
??00D F
NetworkManager00G U
.00U V
	Singleton00V _
;00_ `
internal88 
NetworkManager88 
NetworkManagerOwner88  3
;883 4
public== 
ulong== 
NetworkObjectId== $
{==% &
get==' *
;==* +
internal==, 4
set==5 8
;==8 9
}==: ;
publicBB 
ulongBB 

{BB# $
getBB% (
;BB( )
internalBB* 2
setBB3 6
;BB6 7
}BB8 9
publicGG 
boolGG !
AlwaysReplicateAsRootGG )
;GG) *
publicLL 
boolLL 
IsPlayerObjectLL "
{LL# $
getLL% (
;LL( )
internalLL* 2
setLL3 6
;LL6 7
}LL8 9
publicQQ 
boolQQ 

=>QQ" $
NetworkManagerQQ% 3
!=QQ4 6
nullQQ7 ;
&&QQ< >
IsPlayerObjectQQ? M
&&QQN P

==QQ_ a
NetworkManagerQQb p
.QQp q

;QQ~ 
publicVV 
boolVV 
IsOwnerVV 
=>VV 
NetworkManagerVV -
!=VV. 0
nullVV1 5
&&VV6 8

==VVG I
NetworkManagerVVJ X
.VVX Y

;VVf g
public[[ 
bool[[ 
IsOwnedByServer[[ #
=>[[$ &
NetworkManager[[' 5
!=[[6 8
null[[9 =
&&[[> @

==[[O Q
NetworkManager[[R `
.[[` a
ServerClientId[[a o
;[[o p
public`` 
bool`` 
	IsSpawned`` 
{`` 
get``  #
;``# $
internal``% -
set``. 1
;``1 2
}``3 4
publicee 
boolee 
?ee 

{ee# $
getee% (
;ee( )
internalee* 2
setee3 6
;ee6 7
}ee8 9
publicjj 
booljj 
DestroyWithScenejj $
{jj% &
getjj' *
;jj* +
setjj, /
;jj/ 0
}jj1 2
publicpp 
delegatepp 
boolpp 
VisibilityDelegatepp /
(pp/ 0
ulongpp0 5
clientIdpp6 >
)pp> ?
;pp? @
publicuu 
VisibilityDelegateuu !!
CheckObjectVisibilityuu" 7
=uu8 9
nulluu: >
;uu> ?
public{{ 
delegate{{ 
bool{{ 

({{* +
ulong{{+ 0
clientId{{1 9
){{9 :
;{{: ;
public
�� 

�� *
IncludeTransformWhenSpawning
�� 9
=
��: ;
null
��< @
;
��@ A
public
�� 
bool
�� "
DontDestroyWithOwner
�� (
;
��( )
public
�� 
bool
�� "
AutoObjectParentSync
�� (
=
��) *
true
��+ /
;
��/ 0
internal
�� 
readonly
�� 
HashSet
�� !
<
��! "
ulong
��" '
>
��' (
	Observers
��) 2
=
��3 4
new
��5 8
HashSet
��9 @
<
��@ A
ulong
��A F
>
��F G
(
��G H
)
��H I
;
��I J
private
�� 
string
�� $
m_CachedNameForMetrics
�� -
;
��- .
internal
�� 
string
�� 
GetNameForMetrics
�� )
(
��) *
)
��* +
{
�� 	
return
�� $
m_CachedNameForMetrics
�� )
??=
��* -
name
��. 2
;
��2 3
}
�� 	
private
�� 
readonly
�� 
HashSet
��  
<
��  !
ulong
��! &
>
��& '!
m_EmptyULongHashSet
��( ;
=
��< =
new
��> A
HashSet
��B I
<
��I J
ulong
��J O
>
��O P
(
��P Q
)
��Q R
;
��R S
public
�� 
HashSet
�� 
<
�� 
ulong
�� 
>
�� 
.
�� 

Enumerator
�� (
GetObservers
��) 5
(
��5 6
)
��6 7
{
�� 	
if
�� 
(
�� 
!
�� 
	IsSpawned
�� 
)
�� 
{
�� 
return
�� !
m_EmptyULongHashSet
�� *
.
��* +

��+ 8
(
��8 9
)
��9 :
;
��: ;
}
�� 
return
�� 
	Observers
�� 
.
�� 

�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
public
�� 
bool
��  
IsNetworkVisibleTo
�� &
(
��& '
ulong
��' ,
clientId
��- 5
)
��5 6
{
�� 	
if
�� 
(
�� 
!
�� 
	IsSpawned
�� 
)
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
	Observers
�� 
.
�� 
Contains
�� %
(
��% &
clientId
��& .
)
��. /
;
��/ 0
}
�� 	
internal
�� 
int
�� 
SceneOriginHandle
�� &
=
��' (
$num
��) *
;
��* +
private
�� 
Scene
�� 

�� #
;
��# $
internal
�� 
Scene
�� 
SceneOrigin
�� "
{
�� 	
get
�� 
{
�� 
return
�� 

�� $
;
��$ %
}
�� 
set
�� 
{
�� 
if
�� 
(
�� 
SceneOriginHandle
�� %
==
��& (
$num
��) *
&&
��+ -
value
��. 3
.
��3 4
IsValid
��4 ;
(
��; <
)
��< =
&&
��> @
value
��A F
.
��F G
isLoaded
��G O
)
��O P
{
�� 

�� !
=
��" #
value
��$ )
;
��) *
SceneOriginHandle
�� %
=
��& '
value
��( -
.
��- .
handle
��. 4
;
��4 5
}
�� 
}
�� 
}
�� 	
internal
�� 
int
�� "
GetSceneOriginHandle
�� )
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� 
SceneOriginHandle
�� !
==
��" $
$num
��% &
&&
��' )
	IsSpawned
��* 3
&&
��4 6

��7 D
!=
��E G
false
��H M
)
��M N
{
�� 
throw
�� 
new
�� 
	Exception
�� #
(
��# $
$"
��$ &
{
��& '
nameof
��' -
(
��- ."
GetSceneOriginHandle
��. B
)
��B C
}
��C D
$str
��D Q
{
��Q R
nameof
��R X
(
��X Y
SceneOriginHandle
��Y j
)
��j k
}
��k l
$str��l �
{��� �
nameof��� �
(��� �

)��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
return
�� 
SceneOriginHandle
�� $
!=
��% '
$num
��( )
?
��* +
SceneOriginHandle
��, =
:
��> ?

gameObject
��@ J
.
��J K
scene
��K P
.
��P Q
handle
��Q W
;
��W X
}
�� 	
private
�� 
void
�� 
Awake
�� 
(
�� 
)
�� 
{
�� 	
SetCachedParent
�� 
(
�� 
	transform
�� %
.
��% &
parent
��& ,
)
��, -
;
��- .
SceneOrigin
�� 
=
�� 

gameObject
�� $
.
��$ %
scene
��% *
;
��* +
}
�� 	
public
�� 
void
�� 
NetworkShow
�� 
(
��  
ulong
��  %
clientId
��& .
)
��. /
{
�� 	
if
�� 
(
�� 
!
�� 
	IsSpawned
�� 
)
�� 
{
�� 
throw
�� 
new
�� !
SpawnStateException
�� -
(
��- .
$str
��. E
)
��E F
;
��F G
}
�� 
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
IsServer
��  (
)
��( )
{
�� 
throw
�� 
new
��  
NotServerException
�� ,
(
��, -
$str
��- P
)
��P Q
;
��Q R
}
�� 
if
�� 
(
�� 
	Observers
�� 
.
�� 
Contains
�� "
(
��" #
clientId
��# +
)
��+ ,
)
��, -
{
�� 
throw
�� 
new
�� '
VisibilityChangeException
�� 3
(
��3 4
$str
��4 S
)
��S T
;
��T U
}
�� 
	Observers
�� 
.
�� 
Add
�� 
(
�� 
clientId
�� "
)
��" #
;
��# $
NetworkManager
�� 
.
�� 
SpawnManager
�� '
.
��' ($
SendSpawnCallForObject
��( >
(
��> ?
clientId
��? G
,
��G H
this
��I M
)
��M N
;
��N O
}
�� 	
public
�� 
static
�� 
void
�� 
NetworkShow
�� &
(
��& '
List
��' +
<
��+ ,

��, 9
>
��9 :
networkObjects
��; I
,
��I J
ulong
��K P
clientId
��Q Y
)
��Y Z
{
�� 	
if
�� 
(
�� 
networkObjects
�� 
==
�� !
null
��" &
||
��' )
networkObjects
��* 8
.
��8 9
Count
��9 >
==
��? A
$num
��B C
)
��C D
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 ?
+
��@ A
nameof
��B H
(
��H I

��I V
)
��V W
+
��X Y
$str
��Z o
)
��o p
;
��p q
}
�� 
NetworkManager
�� 
networkManager
�� )
=
��* +
networkObjects
��, :
[
��: ;
$num
��; <
]
��< =
.
��= >
NetworkManager
��> L
;
��L M
if
�� 
(
�� 
!
�� 
networkManager
�� 
.
��  
IsServer
��  (
)
��( )
{
�� 
throw
�� 
new
��  
NotServerException
�� ,
(
��, -
$str
��- P
)
��P Q
;
��Q R
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
networkObjects
��  .
.
��. /
Count
��/ 4
;
��4 5
i
��6 7
++
��7 9
)
��9 :
{
�� 
if
�� 
(
�� 
!
�� 
networkObjects
�� #
[
��# $
i
��$ %
]
��% &
.
��& '
	IsSpawned
��' 0
)
��0 1
{
�� 
throw
�� 
new
�� !
SpawnStateException
�� 1
(
��1 2
$str
��2 I
)
��I J
;
��J K
}
�� 
if
�� 
(
�� 
networkObjects
�� "
[
��" #
i
��# $
]
��$ %
.
��% &
	Observers
��& /
.
��/ 0
Contains
��0 8
(
��8 9
clientId
��9 A
)
��A B
)
��B C
{
�� 
throw
�� 
new
�� '
VisibilityChangeException
�� 7
(
��7 8
$"
��8 :
{
��: ;
nameof
��; A
(
��A B

��B O
)
��O P
}
��P Q
$str
��Q b
{
��b c
networkObjects
��c q
[
��q r
i
��r s
]
��s t
.
��t u
NetworkObjectId��u �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
networkObjects
�� "
[
��" #
i
��# $
]
��$ %
.
��% &
NetworkManager
��& 4
!=
��5 7
networkManager
��8 F
)
��F G
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� 3
(
��3 4
$str
��4 :
+
��; <
nameof
��= C
(
��C D

��D Q
)
��Q R
+
��S T
$str
��U q
+
��r s
nameof
��t z
(
��z {
NetworkManager��{ �
)��� �
)��� �
;��� �
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 

�� &
in
��' )
networkObjects
��* 8
)
��8 9
{
�� 

�� 
.
�� 
NetworkShow
�� )
(
��) *
clientId
��* 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
public
�� 
void
�� 
NetworkHide
�� 
(
��  
ulong
��  %
clientId
��& .
)
��. /
{
�� 	
if
�� 
(
�� 
!
�� 
	IsSpawned
�� 
)
�� 
{
�� 
throw
�� 
new
�� !
SpawnStateException
�� -
(
��- .
$str
��. E
)
��E F
;
��F G
}
�� 
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
IsServer
��  (
)
��( )
{
�� 
throw
�� 
new
��  
NotServerException
�� ,
(
��, -
$str
��- P
)
��P Q
;
��Q R
}
�� 
if
�� 
(
�� 
!
�� 
	Observers
�� 
.
�� 
Contains
�� #
(
��# $
clientId
��$ ,
)
��, -
)
��- .
{
�� 
throw
�� 
new
�� '
VisibilityChangeException
�� 3
(
��3 4
$str
��4 R
)
��R S
;
��S T
}
�� 
if
�� 
(
�� 
clientId
�� 
==
�� 
NetworkManager
�� *
.
��* +
ServerClientId
��+ 9
)
��9 :
{
�� 
throw
�� 
new
�� '
VisibilityChangeException
�� 3
(
��3 4
$str
��4 [
)
��[ \
;
��\ ]
}
�� 
	Observers
�� 
.
�� 
Remove
�� 
(
�� 
clientId
�� %
)
��% &
;
��& '
var
�� 
message
�� 
=
�� 
new
�� "
DestroyObjectMessage
�� 2
{
�� 
NetworkObjectId
�� 
=
��  !
NetworkObjectId
��" 1
,
��1 2
DestroyGameObject
�� !
=
��" #
true
��$ (
}
�� 
;
��
var
�� 
size
�� 
=
�� 
NetworkManager
�� %
.
��% &
SendMessage
��& 1
(
��1 2
ref
��2 5
message
��6 =
,
��= >
NetworkDelivery
��? N
.
��N O
ReliableSequenced
��O `
,
��` a
clientId
��b j
)
��j k
;
��k l
NetworkManager
�� 
.
�� 
NetworkMetrics
�� )
.
��) *$
TrackObjectDestroySent
��* @
(
��@ A
clientId
��A I
,
��I J
this
��K O
,
��O P
size
��Q U
)
��U V
;
��V W
}
�� 	
public
�� 
static
�� 
void
�� 
NetworkHide
�� &
(
��& '
List
��' +
<
��+ ,

��, 9
>
��9 :
networkObjects
��; I
,
��I J
ulong
��K P
clientId
��Q Y
)
��Y Z
{
�� 	
if
�� 
(
�� 
networkObjects
�� 
==
�� !
null
��" &
||
��' )
networkObjects
��* 8
.
��8 9
Count
��9 >
==
��? A
$num
��B C
)
��C D
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 ?
+
��@ A
nameof
��B H
(
��H I

��I V
)
��V W
+
��X Y
$str
��Z o
)
��o p
;
��p q
}
�� 
var
�� 
networkManager
�� 
=
��  
networkObjects
��! /
[
��/ 0
$num
��0 1
]
��1 2
.
��2 3
NetworkManager
��3 A
;
��A B
if
�� 
(
�� 
!
�� 
networkManager
�� 
.
��  
IsServer
��  (
)
��( )
{
�� 
throw
�� 
new
��  
NotServerException
�� ,
(
��, -
$str
��- P
)
��P Q
;
��Q R
}
�� 
if
�� 
(
�� 
clientId
�� 
==
�� 
NetworkManager
�� *
.
��* +
ServerClientId
��+ 9
)
��9 :
{
�� 
throw
�� 
new
�� '
VisibilityChangeException
�� 3
(
��3 4
$str
��4 [
)
��[ \
;
��\ ]
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
networkObjects
��  .
.
��. /
Count
��/ 4
;
��4 5
i
��6 7
++
��7 9
)
��9 :
{
�� 
if
�� 
(
�� 
!
�� 
networkObjects
�� #
[
��# $
i
��$ %
]
��% &
.
��& '
	IsSpawned
��' 0
)
��0 1
{
�� 
throw
�� 
new
�� !
SpawnStateException
�� 1
(
��1 2
$str
��2 I
)
��I J
;
��J K
}
�� 
if
�� 
(
�� 
!
�� 
networkObjects
�� #
[
��# $
i
��$ %
]
��% &
.
��& '
	Observers
��' 0
.
��0 1
Contains
��1 9
(
��9 :
clientId
��: B
)
��B C
)
��C D
{
�� 
throw
�� 
new
�� '
VisibilityChangeException
�� 7
(
��7 8
$"
��8 :
{
��: ;
nameof
��; A
(
��A B

��B O
)
��O P
}
��P Q
$str
��Q W
{
��W X
nameof
��X ^
(
��^ _
NetworkObjectId
��_ n
)
��n o
}
��o p
$str
��p r
{
��r s
networkObjects��s �
[��� �
i��� �
]��� �
.��� �
NetworkObjectId��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
networkObjects
�� "
[
��" #
i
��# $
]
��$ %
.
��% &
NetworkManager
��& 4
!=
��5 7
networkManager
��8 F
)
��F G
{
�� 
throw
�� 
new
�� #
ArgumentNullException
�� 3
(
��3 4
$str
��4 :
+
��; <
nameof
��= C
(
��C D

��D Q
)
��Q R
+
��S T
$str
��U q
+
��r s
nameof
��t z
(
��z {
NetworkManager��{ �
)��� �
)��� �
;��� �
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 

�� &
in
��' )
networkObjects
��* 8
)
��8 9
{
�� 

�� 
.
�� 
NetworkHide
�� )
(
��) *
clientId
��* 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
void
�� 
	OnDestroy
�� 
(
�� 
)
��  
{
�� 	
if
�� 
(
�� 
NetworkManager
�� 
!=
�� !
null
��" &
&&
��' )
NetworkManager
��* 8
.
��8 9
IsListening
��9 D
&&
��E G
NetworkManager
��H V
.
��V W
IsServer
��W _
==
��` b
false
��c h
&&
��i k
	IsSpawned
��l u
&&
��v x
(
�� 

�� 
==
�� !
null
��" &
||
��' )
(
��* +

��+ 8
!=
��9 ;
null
��< @
&&
��A C

��D Q
.
��Q R
Value
��R W
!=
��X Z
true
��[ _
)
��_ `
)
��` a
)
��a b
{
�� 
throw
�� 
new
��  
NotServerException
�� ,
(
��, -
$"
��- /
$str
��/ A
{
��A B
nameof
��B H
(
��H I

��I V
)
��V W
}
��W X
$str��X �
{��� �
nameof��� �
(��� �
Destroy��� �
)��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �
Despawn��� �
)��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
NetworkManager
�� 
!=
�� !
null
��" &
&&
��' )
NetworkManager
��* 8
.
��8 9
SpawnManager
��9 E
!=
��F H
null
��I M
&&
��N P
NetworkManager
�� 
.
�� 
SpawnManager
�� +
.
��+ ,
SpawnedObjects
��, :
.
��: ;
TryGetValue
��; F
(
��F G
NetworkObjectId
��G V
,
��V W
out
��X [
var
��\ _

��` m
)
��m n
)
��n o
{
�� 
if
�� 
(
�� 
this
�� 
==
�� 

�� )
)
��) *
{
�� 
NetworkManager
�� "
.
��" #
SpawnManager
��# /
.
��/ 0
OnDespawnObject
��0 ?
(
��? @

��@ M
,
��M N
false
��O T
)
��T U
;
��U V
}
�� 
}
�� 
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
��9 :
private
�� 
void
�� 

�� "
(
��" #
bool
��# '
destroyWithScene
��( 8
,
��8 9
ulong
��: ?

��@ M
,
��M N
bool
��O S
playerObject
��T `
)
��` a
{
�� 	
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
IsListening
��  +
)
��+ ,
{
�� 
throw
�� 
new
�� #
NotListeningException
�� /
(
��/ 0
$"
��0 2
{
��2 3
nameof
��3 9
(
��9 :
NetworkManager
��: H
)
��H I
}
��I J
$str��J �
"��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
IsServer
��  (
)
��( )
{
�� 
throw
�� 
new
��  
NotServerException
�� ,
(
��, -
$"
��- /
$str
��/ E
{
��E F
nameof
��F L
(
��L M

��M Z
)
��Z [
}
��[ \
$str
��\ ]
"
��] ^
)
��^ _
;
��_ `
}
�� 
NetworkManager
�� 
.
�� 
SpawnManager
�� '
.
��' ('
SpawnNetworkObjectLocally
��( A
(
��A B
this
��B F
,
��F G
NetworkManager
��H V
.
��V W
SpawnManager
��W c
.
��c d 
GetNetworkObjectId
��d v
(
��v w
)
��w x
,
��x y

.��� �
HasValue��� �
&&��� �

.��� �
Value��� �
,��� �
playerObject��� �
,��� �

,��� � 
destroyWithScene��� �
)��� �
;��� �
for
�� 
(
�� 
int
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
�� 
NetworkManager
��  .
.
��. /"
ConnectedClientsList
��/ C
.
��C D
Count
��D I
;
��I J
i
��K L
++
��L N
)
��N O
{
�� 
if
�� 
(
�� 
	Observers
�� 
.
�� 
Contains
�� &
(
��& '
NetworkManager
��' 5
.
��5 6"
ConnectedClientsList
��6 J
[
��J K
i
��K L
]
��L M
.
��M N
ClientId
��N V
)
��V W
)
��W X
{
�� 
NetworkManager
�� "
.
��" #
SpawnManager
��# /
.
��/ 0$
SendSpawnCallForObject
��0 F
(
��F G
NetworkManager
��G U
.
��U V"
ConnectedClientsList
��V j
[
��j k
i
��k l
]
��l m
.
��m n
ClientId
��n v
,
��v w
this
��x |
)
��| }
;
��} ~
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
Spawn
�� 
(
�� 
bool
�� 
destroyWithScene
�� /
=
��0 1
false
��2 7
)
��7 8
{
�� 	

�� 
(
�� 
destroyWithScene
�� *
,
��* +
NetworkManager
��, :
.
��: ;
ServerClientId
��; I
,
��I J
false
��K P
)
��P Q
;
��Q R
}
�� 	
public
�� 
void
��  
SpawnWithOwnership
�� &
(
��& '
ulong
��' ,
clientId
��- 5
,
��5 6
bool
��7 ;
destroyWithScene
��< L
=
��M N
false
��O T
)
��T U
{
�� 	

�� 
(
�� 
destroyWithScene
�� *
,
��* +
clientId
��, 4
,
��4 5
false
��6 ;
)
��; <
;
��< =
}
�� 	
public
�� 
void
�� !
SpawnAsPlayerObject
�� '
(
��' (
ulong
��( -
clientId
��. 6
,
��6 7
bool
��8 <
destroyWithScene
��= M
=
��N O
false
��P U
)
��U V
{
�� 	

�� 
(
�� 
destroyWithScene
�� *
,
��* +
clientId
��, 4
,
��4 5
true
��6 :
)
��: ;
;
��; <
}
�� 	
public
�� 
void
�� 
Despawn
�� 
(
�� 
bool
��  
destroy
��! (
=
��) *
true
��+ /
)
��/ 0
{
�� 	
NetworkManager
�� 
.
�� 
SpawnManager
�� '
.
��' (

��( 5
(
��5 6
this
��6 :
,
��: ;
destroy
��< C
)
��C D
;
��D E
}
�� 	
public
�� 
void
�� 
RemoveOwnership
�� #
(
��# $
)
��$ %
{
�� 	
NetworkManager
�� 
.
�� 
SpawnManager
�� '
.
��' (
RemoveOwnership
��( 7
(
��7 8
this
��8 <
)
��< =
;
��= >
}
�� 	
public
�� 
void
�� 
ChangeOwnership
�� #
(
��# $
ulong
��$ )
newOwnerClientId
��* :
)
��: ;
{
�� 	
NetworkManager
�� 
.
�� 
SpawnManager
�� '
.
��' (
ChangeOwnership
��( 7
(
��7 8
this
��8 <
,
��< =
newOwnerClientId
��> N
)
��N O
;
��O P
}
�� 	
internal
�� 
void
�� ,
InvokeBehaviourOnLostOwnership
�� 4
(
��4 5
)
��5 6
{
�� 	
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
IsServer
��  (
)
��( )
{
�� 
NetworkManager
�� 
.
�� 
SpawnManager
�� +
.
��+ ,"
UpdateOwnershipTable
��, @
(
��@ A
this
��A E
,
��E F

��G T
,
��T U
true
��V Z
)
��Z [
;
��[ \
}
�� 
for
�� 
(
�� 
int
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
�� $
ChildNetworkBehaviours
��  6
.
��6 7
Count
��7 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
ChildNetworkBehaviours
�� &
[
��& '
i
��' (
]
��( )
.
��) *%
InternalOnLostOwnership
��* A
(
��A B
)
��B C
;
��C D
}
�� 
}
�� 	
internal
�� 
void
�� .
 InvokeBehaviourOnGainedOwnership
�� 6
(
��6 7
)
��7 8
{
�� 	
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
IsServer
��  (
&&
��) +
NetworkManager
��, :
.
��: ;

��; H
==
��I K

��L Y
)
��Y Z
{
�� 
NetworkManager
�� 
.
�� 
SpawnManager
�� +
.
��+ ,"
UpdateOwnershipTable
��, @
(
��@ A
this
��A E
,
��E F

��G T
)
��T U
;
��U V
}
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� $
ChildNetworkBehaviours
��  6
.
��6 7
Count
��7 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
ChildNetworkBehaviours
�� &
[
��& '
i
��' (
]
��( )
.
��) *'
InternalOnGainedOwnership
��* C
(
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
internal
�� 
void
�� 9
+InvokeBehaviourOnNetworkObjectParentChanged
�� A
(
��A B

��B O!
parentNetworkObject
��P c
)
��c d
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� $
ChildNetworkBehaviours
��  6
.
��6 7
Count
��7 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
ChildNetworkBehaviours
�� &
[
��& '
i
��' (
]
��( )
.
��) **
OnNetworkObjectParentChanged
��* F
(
��F G!
parentNetworkObject
��G Z
)
��Z [
;
��[ \
}
�� 
}
�� 	
private
�� 
bool
�� 
m_IsReparented
�� #
;
��# $
private
�� 
ulong
�� 
?
�� 
m_LatestParent
�� %
;
��% &
private
�� 
	Transform
�� 
m_CachedParent
�� (
;
��( )
internal
�� 
void
�� 
SetCachedParent
�� %
(
��% &
	Transform
��& /
parentTransform
��0 ?
)
��? @
{
�� 	
m_CachedParent
�� 
=
�� 
parentTransform
�� ,
;
��, -
}
�� 	
internal
�� 
(
�� 
bool
�� 
IsReparented
�� #
,
��# $
ulong
��% *
?
��* +
LatestParent
��, 8
)
��8 9!
GetNetworkParenting
��: M
(
��M N
)
��N O
=>
��P R
(
��S T
m_IsReparented
��T b
,
��b c
m_LatestParent
��d r
)
��r s
;
��s t
internal
�� 
void
�� !
SetNetworkParenting
�� )
(
��) *
bool
��* .
isReparented
��/ ;
,
��; <
ulong
��= B
?
��B C
latestParent
��D P
)
��P Q
{
�� 	
m_IsReparented
�� 
=
�� 
isReparented
�� )
;
��) *
m_LatestParent
�� 
=
�� 
latestParent
�� )
;
��) *
}
�� 	
public
�� 
bool
�� 
TrySetParent
��  
(
��  !
	Transform
��! *
parent
��+ 1
,
��1 2
bool
��3 7 
worldPositionStays
��8 J
=
��K L
true
��M Q
)
��Q R
{
�� 	
return
�� 
TrySetParent
�� 
(
��  
parent
��  &
.
��& '
GetComponent
��' 3
<
��3 4

��4 A
>
��A B
(
��B C
)
��C D
,
��D E 
worldPositionStays
��F X
)
��X Y
;
��Y Z
}
�� 	
public
�� 
bool
�� 
TrySetParent
��  
(
��  !

GameObject
��! +
parent
��, 2
,
��2 3
bool
��4 8 
worldPositionStays
��9 K
=
��L M
true
��N R
)
��R S
{
�� 	
return
�� 
TrySetParent
�� 
(
��  
parent
��  &
.
��& '
GetComponent
��' 3
<
��3 4

��4 A
>
��A B
(
��B C
)
��C D
,
��D E 
worldPositionStays
��F X
)
��X Y
;
��Y Z
}
�� 	
public
�� 
bool
�� 
TrySetParent
��  
(
��  !

��! .
parent
��/ 5
,
��5 6
bool
��7 ; 
worldPositionStays
��< N
=
��O P
true
��Q U
)
��U V
{
�� 	
if
�� 
(
�� 
!
�� "
AutoObjectParentSync
�� %
)
��% &
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
NetworkManager
�� 
==
�� !
null
��" &
||
��' )
!
��* +
NetworkManager
��+ 9
.
��9 :
IsListening
��: E
)
��E F
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
IsServer
��  (
)
��( )
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
	IsSpawned
�� 
)
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
parent
�� 
==
�� 
null
�� 
)
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
parent
�� 
.
�� 
	IsSpawned
�� !
)
��! "
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
	transform
�� 
.
�� 
	SetParent
�� 
(
��  
parent
��  &
.
��& '
	transform
��' 0
,
��0 1 
worldPositionStays
��2 D
)
��D E
;
��E F
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
void
�� &
OnTransformParentChanged
�� -
(
��- .
)
��. /
{
�� 	
if
�� 
(
�� 
!
�� "
AutoObjectParentSync
�� %
)
��% &
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
	transform
�� 
.
�� 
parent
��  
==
��! #
m_CachedParent
��$ 2
)
��2 3
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
NetworkManager
�� 
==
�� !
null
��" &
||
��' )
!
��* +
NetworkManager
��+ 9
.
��9 :
IsListening
��: E
)
��E F
{
�� 
	transform
�� 
.
�� 
parent
��  
=
��! "
m_CachedParent
��# 1
;
��1 2
Debug
�� 
.
�� 
LogException
�� "
(
��" #
new
��# &#
NotListeningException
��' <
(
��< =
$"
��= ?
{
��? @
nameof
��@ F
(
��F G
NetworkManager
��G U
)
��U V
}
��V W
$str��W �
"��� �
)��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
IsServer
��  (
)
��( )
{
�� 
	transform
�� 
.
�� 
parent
��  
=
��! "
m_CachedParent
��# 1
;
��1 2
Debug
�� 
.
�� 
LogException
�� "
(
��" #
new
��# & 
NotServerException
��' 9
(
��9 :
$"
��: <
$str
��< Y
{
��Y Z
nameof
��Z `
(
��` a

��a n
)
��n o
}
��o p
$str
��p q
"
��q r
)
��r s
)
��s t
;
��t u
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
	IsSpawned
�� 
)
�� 
{
�� 
	transform
�� 
.
�� 
parent
��  
=
��! "
m_CachedParent
��# 1
;
��1 2
Debug
�� 
.
�� 
LogException
�� "
(
��" #
new
��# &!
SpawnStateException
��' :
(
��: ;
$"
��; =
{
��= >
nameof
��> D
(
��D E

��E R
)
��R S
}
��S T
$str
��T 
"�� �
)��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
var
�� 
parentTransform
�� 
=
��  !
	transform
��" +
.
��+ ,
parent
��, 2
;
��2 3
if
�� 
(
�� 
parentTransform
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
var
�� 
parentObject
��  
=
��! "
	transform
��# ,
.
��, -
parent
��- 3
.
��3 4
GetComponent
��4 @
<
��@ A

��A N
>
��N O
(
��O P
)
��P Q
;
��Q R
if
�� 
(
�� 
parentObject
��  
==
��! #
null
��$ (
)
��( )
{
�� 
	transform
�� 
.
�� 
parent
�� $
=
��% &
m_CachedParent
��' 5
;
��5 6
Debug
�� 
.
�� 
LogException
�� &
(
��& '
new
��' *$
InvalidParentException
��+ A
(
��A B
$"
��B D
$str
��D W
{
��W X
nameof
��X ^
(
��^ _

��_ l
)
��l m
}
��m n
$str��n �
{��� �
nameof��� �
(��� �

)��� �
}��� �
$str��� �
"��� �
)��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
parentObject
�� !
.
��! "
	IsSpawned
��" +
)
��+ ,
{
�� 
	transform
�� 
.
�� 
parent
�� $
=
��% &
m_CachedParent
��' 5
;
��5 6
Debug
�� 
.
�� 
LogException
�� &
(
��& '
new
��' *!
SpawnStateException
��+ >
(
��> ?
$"
��? A
{
��A B
nameof
��B H
(
��H I

��I V
)
��V W
}
��W X
$str��X �
{��� �
nameof��� �
(��� �

)��� �
}��� �
"��� �
)��� �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
m_LatestParent
�� 
=
��  
parentObject
��! -
.
��- .
NetworkObjectId
��. =
;
��= >
}
�� 
else
�� 
{
�� 
m_LatestParent
�� 
=
��  
null
��! %
;
��% &
}
�� 
m_IsReparented
�� 
=
�� 
true
�� !
;
��! "#
ApplyNetworkParenting
�� !
(
��! "
)
��" #
;
��# $
var
�� 
message
�� 
=
�� 
new
�� 
ParentSyncMessage
�� /
{
�� 
NetworkObjectId
�� 
=
��  !
NetworkObjectId
��" 1
,
��1 2
IsReparented
�� 
=
�� 
m_IsReparented
�� -
,
��- .
IsLatestParentSet
�� !
=
��" #
m_LatestParent
��$ 2
!=
��3 5
null
��6 :
&&
��; =
m_LatestParent
��> L
.
��L M
HasValue
��M U
,
��U V
LatestParent
�� 
=
�� 
m_LatestParent
�� -
}
�� 
;
��
unsafe
�� 
{
�� 
var
�� 
maxCount
�� 
=
�� 
NetworkManager
�� -
.
��- .!
ConnectedClientsIds
��. A
.
��A B
Count
��B G
;
��G H
ulong
�� 
*
�� 
	clientIds
��  
=
��! "

stackalloc
��# -
ulong
��. 3
[
��3 4
maxCount
��4 <
]
��< =
;
��= >
int
�� 
idx
�� 
=
�� 
$num
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
clientId
�� %
in
��& (
NetworkManager
��) 7
.
��7 8!
ConnectedClientsIds
��8 K
)
��K L
{
�� 
if
�� 
(
�� 
	Observers
�� !
.
��! "
Contains
��" *
(
��* +
clientId
��+ 3
)
��3 4
)
��4 5
{
�� 
	clientIds
�� !
[
��! "
idx
��" %
++
��% '
]
��' (
=
��) *
clientId
��+ 3
;
��3 4
}
�� 
}
�� 
NetworkManager
�� 
.
�� 
SendMessage
�� *
(
��* +
ref
��+ .
message
��/ 6
,
��6 7
NetworkDelivery
��8 G
.
��G H
ReliableSequenced
��H Y
,
��Y Z
	clientIds
��[ d
,
��d e
idx
��f i
)
��i j
;
��j k
}
�� 
}
�� 	
internal
�� 
static
�� 
HashSet
�� 
<
��  

��  -
>
��- .
OrphanChildren
��/ =
=
��> ?
new
��@ C
HashSet
��D K
<
��K L

��L Y
>
��Y Z
(
��Z [
)
��[ \
;
��\ ]
internal
�� 
bool
�� #
ApplyNetworkParenting
�� +
(
��+ ,
)
��, -
{
�� 	
if
�� 
(
�� 
!
�� "
AutoObjectParentSync
�� %
)
��% &
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
	IsSpawned
�� 
)
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
m_IsReparented
�� 
)
��  
{
�� 
return
�� 
true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
m_LatestParent
�� 
==
�� !
null
��" &
||
��' )
!
��* +
m_LatestParent
��+ 9
.
��9 :
HasValue
��: B
)
��B C
{
�� 
m_CachedParent
�� 
=
��  
null
��! %
;
��% &
	transform
�� 
.
�� 
parent
��  
=
��! "
null
��# '
;
��' (9
+InvokeBehaviourOnNetworkObjectParentChanged
�� ;
(
��; <
null
��< @
)
��@ A
;
��A B
return
�� 
true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
SpawnManager
��  ,
.
��, -
SpawnedObjects
��- ;
.
��; <
ContainsKey
��< G
(
��G H
m_LatestParent
��H V
.
��V W
Value
��W \
)
��\ ]
)
��] ^
{
�� 
OrphanChildren
�� 
.
�� 
Add
�� "
(
��" #
this
��# '
)
��' (
;
��( )
return
�� 
false
�� 
;
�� 
}
�� 
var
�� 
parentObject
�� 
=
�� 
NetworkManager
�� -
.
��- .
SpawnManager
��. :
.
��: ;
SpawnedObjects
��; I
[
��I J
m_LatestParent
��J X
.
��X Y
Value
��Y ^
]
��^ _
;
��_ `
m_CachedParent
�� 
=
�� 
parentObject
�� )
.
��) *
	transform
��* 3
;
��3 4
	transform
�� 
.
�� 
parent
�� 
=
�� 
parentObject
�� +
.
��+ ,
	transform
��, 5
;
��5 69
+InvokeBehaviourOnNetworkObjectParentChanged
�� 7
(
��7 8
parentObject
��8 D
)
��D E
;
��E F
return
�� 
true
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
void
�� !
CheckOrphanChildren
�� 0
(
��0 1
)
��1 2
{
�� 	
var
�� 
objectsToRemove
�� 
=
��  !
new
��" %
List
��& *
<
��* +

��+ 8
>
��8 9
(
��9 :
)
��: ;
;
��; <
foreach
�� 
(
�� 
var
�� 
orphanObject
�� %
in
��& (
OrphanChildren
��) 7
)
��7 8
{
�� 
if
�� 
(
�� 
orphanObject
��  
.
��  !#
ApplyNetworkParenting
��! 6
(
��6 7
)
��7 8
)
��8 9
{
�� 
objectsToRemove
�� #
.
��# $
Add
��$ '
(
��' (
orphanObject
��( 4
)
��4 5
;
��5 6
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 

�� &
in
��' )
objectsToRemove
��* 9
)
��9 :
{
�� 
OrphanChildren
�� 
.
�� 
Remove
�� %
(
��% &

��& 3
)
��3 4
;
��4 5
}
�� 
}
�� 	
internal
�� 
void
�� )
InvokeBehaviourNetworkSpawn
�� 1
(
��1 2
)
��2 3
{
�� 	
NetworkManager
�� 
.
�� 
SpawnManager
�� '
.
��' ("
UpdateOwnershipTable
��( <
(
��< =
this
��= A
,
��A B

��C P
)
��P Q
;
��Q R
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� $
ChildNetworkBehaviours
��  6
.
��6 7
Count
��7 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
ChildNetworkBehaviours
�� &
[
��& '
i
��' (
]
��( )
.
��) *$
InternalOnNetworkSpawn
��* @
(
��@ A
)
��A B
;
��B C
}
�� 
}
�� 	
internal
�� 
void
�� +
InvokeBehaviourNetworkDespawn
�� 3
(
��3 4
)
��4 5
{
�� 	
NetworkManager
�� 
.
�� 
SpawnManager
�� '
.
��' ("
UpdateOwnershipTable
��( <
(
��< =
this
��= A
,
��A B

��C P
,
��P Q
true
��R V
)
��V W
;
��W X
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� $
ChildNetworkBehaviours
��  6
.
��6 7
Count
��7 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
ChildNetworkBehaviours
�� &
[
��& '
i
��' (
]
��( )
.
��) *&
InternalOnNetworkDespawn
��* B
(
��B C
)
��C D
;
��D E
}
�� 
}
�� 	
private
�� 
List
�� 
<
�� 
NetworkBehaviour
�� %
>
��% &&
m_ChildNetworkBehaviours
��' ?
;
��? @
internal
�� 
List
�� 
<
�� 
NetworkBehaviour
�� &
>
��& '$
ChildNetworkBehaviours
��( >
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� &
m_ChildNetworkBehaviours
�� ,
!=
��- /
null
��0 4
)
��4 5
{
�� 
return
�� &
m_ChildNetworkBehaviours
�� 3
;
��3 4
}
�� &
m_ChildNetworkBehaviours
�� (
=
��) *
new
��+ .
List
��/ 3
<
��3 4
NetworkBehaviour
��4 D
>
��D E
(
��E F
)
��F G
;
��G H
var
�� 
networkBehaviours
�� %
=
��& '%
GetComponentsInChildren
��( ?
<
��? @
NetworkBehaviour
��@ P
>
��P Q
(
��Q R
true
��R V
)
��V W
;
��W X
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
networkBehaviours
��$ 5
.
��5 6
Length
��6 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
if
�� 
(
�� 
networkBehaviours
�� )
[
��) *
i
��* +
]
��+ ,
.
��, -

��- :
==
��; =
this
��> B
)
��B C
{
�� &
m_ChildNetworkBehaviours
�� 0
.
��0 1
Add
��1 4
(
��4 5
networkBehaviours
��5 F
[
��F G
i
��G H
]
��H I
)
��I J
;
��J K
}
�� 
}
�� 
return
�� &
m_ChildNetworkBehaviours
�� /
;
��/ 0
}
�� 
}
�� 	
internal
�� 
void
�� &
WriteNetworkVariableData
�� .
(
��. /
FastBufferWriter
��/ ?
writer
��@ F
,
��F G
ulong
��H M
targetClientId
��N \
)
��\ ]
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� $
ChildNetworkBehaviours
��  6
.
��6 7
Count
��7 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
var
�� 
behavior
�� 
=
�� $
ChildNetworkBehaviours
�� 5
[
��5 6
i
��6 7
]
��7 8
;
��8 9
behavior
�� 
.
�� !
InitializeVariables
�� ,
(
��, -
)
��- .
;
��. /
behavior
�� 
.
�� &
WriteNetworkVariableData
�� 1
(
��1 2
writer
��2 8
,
��8 9
targetClientId
��: H
)
��H I
;
��I J
}
�� 
}
�� 	
internal
�� 
void
��  
MarkVariablesDirty
�� (
(
��( )
)
��) *
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� $
ChildNetworkBehaviours
��  6
.
��6 7
Count
��7 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
var
�� 
behavior
�� 
=
�� $
ChildNetworkBehaviours
�� 5
[
��5 6
i
��6 7
]
��7 8
;
��8 9
behavior
�� 
.
��  
MarkVariablesDirty
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� #
VerifyParentingStatus
�� 2
(
��2 3
)
��3 4
{
�� 	
if
�� 
(
�� 

NetworkLog
�� 
.
�� 
CurrentLogLevel
�� *
<=
��+ -
LogLevel
��. 6
.
��6 7
Normal
��7 =
)
��= >
{
�� 
if
�� 
(
�� 
OrphanChildren
�� "
.
��" #
Count
��# (
>
��) *
$num
��+ ,
)
��, -
{
�� 

NetworkLog
�� 
.
�� 

LogWarning
�� )
(
��) *
$"
��* ,
{
��, -
nameof
��- 3
(
��3 4

��4 A
)
��A B
}
��B C
$str
��C E
{
��E F
OrphanChildren
��F T
.
��T U
Count
��U Z
}
��Z [
$str��[ �
"��� �
)��� �
;��� �
}
�� 
}
�� 
}
�� 	
internal
�� 
void
�� $
SetNetworkVariableData
�� ,
(
��, -
FastBufferReader
��- =
reader
��> D
)
��D E
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� $
ChildNetworkBehaviours
��  6
.
��6 7
Count
��7 <
;
��< =
i
��> ?
++
��? A
)
��A B
{
�� 
var
�� 
	behaviour
�� 
=
�� $
ChildNetworkBehaviours
��  6
[
��6 7
i
��7 8
]
��8 9
;
��9 :
	behaviour
�� 
.
�� !
InitializeVariables
�� -
(
��- .
)
��. /
;
��/ 0
	behaviour
�� 
.
�� $
SetNetworkVariableData
�� 0
(
��0 1
reader
��1 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
internal
�� 
ushort
�� +
GetNetworkBehaviourOrderIndex
�� 5
(
��5 6
NetworkBehaviour
��6 F
instance
��G O
)
��O P
{
�� 	
if
�� 
(
�� 
instance
�� 
.
�� %
NetworkBehaviourIdCache
�� 0
<
��1 2$
ChildNetworkBehaviours
��3 I
.
��I J
Count
��J O
)
��O P
{
�� 
if
�� 
(
�� $
ChildNetworkBehaviours
�� *
[
��* +
instance
��+ 3
.
��3 4%
NetworkBehaviourIdCache
��4 K
]
��K L
==
��M O
instance
��P X
)
��X Y
{
�� 
return
�� 
instance
�� #
.
��# $%
NetworkBehaviourIdCache
��$ ;
;
��; <
}
�� 
instance
�� 
.
�� %
NetworkBehaviourIdCache
�� 0
=
��1 2
default
��3 :
;
��: ;
}
�� 
for
�� 
(
�� 
ushort
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  
<
��! "$
ChildNetworkBehaviours
��# 9
.
��9 :
Count
��: ?
;
��? @
i
��A B
++
��B D
)
��D E
{
�� 
if
�� 
(
�� $
ChildNetworkBehaviours
�� *
[
��* +
i
��+ ,
]
��, -
==
��. 0
instance
��1 9
)
��9 :
{
�� 
instance
�� 
.
�� %
NetworkBehaviourIdCache
�� 4
=
��5 6
i
��7 8
;
��8 9
return
�� 
i
�� 
;
�� 
}
�� 
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
internal
�� 
NetworkBehaviour
�� !-
GetNetworkBehaviourAtOrderIndex
��" A
(
��A B
ushort
��B H
index
��I N
)
��N O
{
�� 	
if
�� 
(
�� 
index
�� 
>=
�� $
ChildNetworkBehaviours
�� /
.
��/ 0
Count
��0 5
)
��5 6
{
�� 
if
�� 
(
�� 

NetworkLog
�� 
.
�� 
CurrentLogLevel
�� .
<=
��/ 1
LogLevel
��2 :
.
��: ;
Error
��; @
)
��@ A
{
�� 

NetworkLog
�� 
.
�� 
LogError
�� '
(
��' (
$"
��( *
$str
��* o
{
��o p
nameof
��p v
(
��v w
NetworkBehaviour��w �
)��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 
return
�� $
ChildNetworkBehaviours
�� )
[
��) *
index
��* /
]
��/ 0
;
��0 1
}
�� 	
internal
�� 
struct
�� 
SceneObject
�� #
{
�� 	
public
�� 
struct
�� 

HeaderData
�� $
:
��% &'
INetworkSerializeByMemcpy
��' @
{
�� 
public
�� 
ulong
�� 
NetworkObjectId
�� ,
;
��, -
public
�� 
ulong
�� 

�� *
;
��* +
public
�� 
uint
�� 
Hash
��  
;
��  !
public
�� 
bool
�� 
IsPlayerObject
�� *
;
��* +
public
�� 
bool
�� 
	HasParent
�� %
;
��% &
public
�� 
bool
�� 

�� )
;
��) *
public
�� 
bool
�� 
HasTransform
�� (
;
��( )
public
�� 
bool
�� 
IsReparented
�� (
;
��( )
}
�� 
public
�� 

HeaderData
�� 
Header
�� $
;
��$ %
public
�� 
ulong
�� 
ParentObjectId
�� '
;
��' (
public
�� 
struct
�� 

�� '
:
��( )'
INetworkSerializeByMemcpy
��* C
{
�� 
public
�� 
Vector3
�� 
Position
�� '
;
��' (
public
�� 

Quaternion
�� !
Rotation
��" *
;
��* +
}
�� 
public
�� 

��  
	Transform
��! *
;
��* +
public
�� 
bool
�� 
IsLatestParentSet
�� )
;
��) *
public
�� 
ulong
�� 
?
�� 
LatestParent
�� &
;
��& '
public
�� 

��  
OwnerObject
��! ,
;
��, -
public
�� 
ulong
�� 
TargetClientId
�� '
;
��' (
public
�� 
int
��  
NetworkSceneHandle
�� )
;
��) *
public
�� 
unsafe
�� 
void
�� 
	Serialize
�� (
(
��( )
FastBufferWriter
��) 9
writer
��: @
)
��@ A
{
�� 
var
�� 
	writeSize
�� 
=
�� 
sizeof
��  &
(
��& '

HeaderData
��' 1
)
��1 2
;
��2 3
	writeSize
�� 
+=
�� 
Header
�� #
.
��# $
	HasParent
��$ -
?
��. /
FastBufferWriter
��0 @
.
��@ A
GetWriteSize
��A M
(
��M N
ParentObjectId
��N \
)
��\ ]
:
��^ _
$num
��` a
;
��a b
	writeSize
�� 
+=
�� 
Header
�� #
.
��# $
HasTransform
��$ 0
?
��1 2
FastBufferWriter
��3 C
.
��C D
GetWriteSize
��D P
(
��P Q
	Transform
��Q Z
)
��Z [
:
��\ ]
$num
��^ _
;
��_ `
	writeSize
�� 
+=
�� 
Header
�� #
.
��# $
IsReparented
��$ 0
?
��1 2
FastBufferWriter
��3 C
.
��C D
GetWriteSize
��D P
(
��P Q
IsLatestParentSet
��Q b
)
��b c
+
��d e
(
��f g
IsLatestParentSet
��g x
?
��y z
FastBufferWriter��{ �
.��� �
GetWriteSize��� �
<��� �
ulong��� �
>��� �
(��� �
)��� �
:��� �
$num��� �
)��� �
:��� �
$num��� �
;��� �
	writeSize
�� 
+=
�� 
Header
�� #
.
��# $

��$ 1
?
��2 3
FastBufferWriter
��4 D
.
��D E
GetWriteSize
��E Q
<
��Q R
int
��R U
>
��U V
(
��V W
)
��W X
:
��Y Z
$num
��[ \
;
��\ ]
if
�� 
(
�� 
!
�� 
writer
�� 
.
�� 

�� )
(
��) *
	writeSize
��* 3
)
��3 4
)
��4 5
{
�� 
throw
�� 
new
�� 
OverflowException
�� /
(
��/ 0
$str
��0 g
)
��g h
;
��h i
}
�� 
writer
�� 
.
�� 

WriteValue
�� !
(
��! "
Header
��" (
)
��( )
;
��) *
if
�� 
(
�� 
Header
�� 
.
�� 
	HasParent
�� $
)
��$ %
{
�� 
writer
�� 
.
�� 

WriteValue
�� %
(
��% &
ParentObjectId
��& 4
)
��4 5
;
��5 6
}
�� 
if
�� 
(
�� 
Header
�� 
.
�� 
HasTransform
�� '
)
��' (
{
�� 
writer
�� 
.
�� 

WriteValue
�� %
(
��% &
	Transform
��& /
)
��/ 0
;
��0 1
}
�� 
if
�� 
(
�� 
Header
�� 
.
�� 
IsReparented
�� '
)
��' (
{
�� 
writer
�� 
.
�� 

WriteValue
�� %
(
��% &
IsLatestParentSet
��& 7
)
��7 8
;
��8 9
if
�� 
(
�� 
IsLatestParentSet
�� )
)
��) *
{
�� 
writer
�� 
.
�� 

WriteValue
�� )
(
��) *
(
��* +
ulong
��+ 0
)
��0 1
LatestParent
��1 =
)
��= >
;
��> ?
}
�� 
}
�� 
if
�� 
(
�� 
Header
�� 
.
�� 

�� (
)
��( )
{
�� 
writer
�� 
.
�� 

WriteValue
�� %
(
��% &
OwnerObject
��& 1
.
��1 2"
GetSceneOriginHandle
��2 F
(
��F G
)
��G H
)
��H I
;
��I J
}
�� 
OwnerObject
�� 
.
�� &
WriteNetworkVariableData
�� 4
(
��4 5
writer
��5 ;
,
��; <
TargetClientId
��= K
)
��K L
;
��L M
}
�� 
public
�� 
unsafe
�� 
void
�� 
Deserialize
�� *
(
��* +
FastBufferReader
��+ ;
reader
��< B
)
��B C
{
�� 
if
�� 
(
�� 
!
�� 
reader
�� 
.
�� 
TryBeginRead
�� (
(
��( )
sizeof
��) /
(
��/ 0

HeaderData
��0 :
)
��: ;
)
��; <
)
��< =
{
�� 
throw
�� 
new
�� 
OverflowException
�� /
(
��/ 0
$str
��0 i
)
��i j
;
��j k
}
�� 
reader
�� 
.
�� 
	ReadValue
��  
(
��  !
out
��! $
Header
��% +
)
��+ ,
;
��, -
var
�� 
readSize
�� 
=
�� 
Header
�� %
.
��% &
	HasParent
��& /
?
��0 1
FastBufferWriter
��2 B
.
��B C
GetWriteSize
��C O
(
��O P
ParentObjectId
��P ^
)
��^ _
:
��` a
$num
��b c
;
��c d
readSize
�� 
+=
�� 
Header
�� "
.
��" #
HasTransform
��# /
?
��0 1
FastBufferWriter
��2 B
.
��B C
GetWriteSize
��C O
(
��O P
	Transform
��P Y
)
��Y Z
:
��[ \
$num
��] ^
;
��^ _
readSize
�� 
+=
�� 
Header
�� "
.
��" #
IsReparented
��# /
?
��0 1
FastBufferWriter
��2 B
.
��B C
GetWriteSize
��C O
(
��O P
IsLatestParentSet
��P a
)
��a b
+
��c d
(
��e f
IsLatestParentSet
��f w
?
��x y
FastBufferWriter��z �
.��� �
GetWriteSize��� �
<��� �
ulong��� �
>��� �
(��� �
)��� �
:��� �
$num��� �
)��� �
:��� �
$num��� �
;��� �
readSize
�� 
+=
�� 
Header
�� "
.
��" #

��# 0
?
��1 2
FastBufferWriter
��3 C
.
��C D
GetWriteSize
��D P
<
��P Q
int
��Q T
>
��T U
(
��U V
)
��V W
:
��X Y
$num
��Z [
;
��[ \
if
�� 
(
�� 
!
�� 
reader
�� 
.
�� 
TryBeginRead
�� (
(
��( )
readSize
��) 1
)
��1 2
)
��2 3
{
�� 
throw
�� 
new
�� 
OverflowException
�� /
(
��/ 0
$str
��0 i
)
��i j
;
��j k
}
�� 
if
�� 
(
�� 
Header
�� 
.
�� 
	HasParent
�� $
)
��$ %
{
�� 
reader
�� 
.
�� 
	ReadValue
�� $
(
��$ %
out
��% (
ParentObjectId
��) 7
)
��7 8
;
��8 9
}
�� 
if
�� 
(
�� 
Header
�� 
.
�� 
HasTransform
�� '
)
��' (
{
�� 
reader
�� 
.
�� 
	ReadValue
�� $
(
��$ %
out
��% (
	Transform
��) 2
)
��2 3
;
��3 4
}
�� 
if
�� 
(
�� 
Header
�� 
.
�� 
IsReparented
�� '
)
��' (
{
�� 
reader
�� 
.
�� 
	ReadValue
�� $
(
��$ %
out
��% (
IsLatestParentSet
��) :
)
��: ;
;
��; <
if
�� 
(
�� 
IsLatestParentSet
�� )
)
��) *
{
�� 
reader
�� 
.
�� 

�� ,
(
��, -
out
��- 0
ulong
��1 6
latestParent
��7 C
)
��C D
;
��D E
LatestParent
�� $
=
��% &
latestParent
��' 3
;
��3 4
}
�� 
}
�� 
if
�� 
(
�� 
Header
�� 
.
�� 

�� (
)
��( )
{
�� 
reader
�� 
.
�� 

�� (
(
��( )
out
��) , 
NetworkSceneHandle
��- ?
)
��? @
;
��@ A
}
�� 
}
�� 
}
�� 	
internal
�� 
SceneObject
�� #
GetMessageSceneObject
�� 2
(
��2 3
ulong
��3 8
targetClientId
��9 G
)
��G H
{
�� 	
var
�� 
obj
�� 
=
�� 
new
�� 
SceneObject
�� %
{
�� 
Header
�� 
=
�� 
new
�� 
SceneObject
�� (
.
��( )

HeaderData
��) 3
{
�� 
IsPlayerObject
�� "
=
��# $
IsPlayerObject
��% 3
,
��3 4
NetworkObjectId
�� #
=
��$ %
NetworkObjectId
��& 5
,
��5 6

�� !
=
��" #

��$ 1
,
��1 2

�� !
=
��" #

��$ 1
??
��2 4
true
��5 9
,
��9 :
Hash
�� 
=
�� 4
&HostCheckForGlobalObjectIdHashOverride
�� A
(
��A B
)
��B C
,
��C D
}
�� 
,
�� 
OwnerObject
�� 
=
�� 
this
�� "
,
��" #
TargetClientId
�� 
=
��  
targetClientId
��! /
}
�� 
;
��

�� !
parentNetworkObject
�� -
=
��. /
null
��0 4
;
��4 5
if
�� 
(
�� 
!
�� #
AlwaysReplicateAsRoot
�� &
&&
��' )
	transform
��* 3
.
��3 4
parent
��4 :
!=
��; =
null
��> B
)
��B C
{
�� 
parentNetworkObject
�� #
=
��$ %
	transform
��& /
.
��/ 0
parent
��0 6
.
��6 7
GetComponent
��7 C
<
��C D

��D Q
>
��Q R
(
��R S
)
��S T
;
��T U
}
�� 
if
�� 
(
�� !
parentNetworkObject
�� #
)
��# $
{
�� 
obj
�� 
.
�� 
Header
�� 
.
�� 
	HasParent
�� $
=
��% &
true
��' +
;
��+ ,
obj
�� 
.
�� 
ParentObjectId
�� "
=
��# $!
parentNetworkObject
��% 8
.
��8 9
NetworkObjectId
��9 H
;
��H I
}
�� 
if
�� 
(
�� *
IncludeTransformWhenSpawning
�� ,
==
��- /
null
��0 4
||
��5 7*
IncludeTransformWhenSpawning
��8 T
(
��T U

��U b
)
��b c
)
��c d
{
�� 
obj
�� 
.
�� 
Header
�� 
.
�� 
HasTransform
�� '
=
��( )
true
��* .
;
��. /
obj
�� 
.
�� 
	Transform
�� 
=
�� 
new
��  #
SceneObject
��$ /
.
��/ 0

��0 =
{
�� 
Position
�� 
=
�� 
	transform
�� (
.
��( )
position
��) 1
,
��1 2
Rotation
�� 
=
�� 
	transform
�� (
.
��( )
rotation
��) 1
}
�� 
;
�� 
}
�� 
var
�� 
(
�� 
isReparented
�� 
,
�� 
latestParent
�� +
)
��+ ,
=
��- .!
GetNetworkParenting
��/ B
(
��B C
)
��C D
;
��D E
obj
�� 
.
�� 
Header
�� 
.
�� 
IsReparented
�� #
=
��$ %
isReparented
��& 2
;
��2 3
if
�� 
(
�� 
isReparented
�� 
)
�� 
{
�� 
var
�� 
isLatestParentSet
�� %
=
��& '
latestParent
��( 4
!=
��5 7
null
��8 <
&&
��= ?
latestParent
��@ L
.
��L M
HasValue
��M U
;
��U V
obj
�� 
.
�� 
IsLatestParentSet
�� %
=
��& '
isLatestParentSet
��( 9
;
��9 :
if
�� 
(
�� 
isLatestParentSet
�� %
)
��% &
{
�� 
obj
�� 
.
�� 
LatestParent
�� $
=
��% &
latestParent
��' 3
.
��3 4
Value
��4 9
;
��9 :
}
�� 
}
�� 
return
�� 
obj
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 

�� %
AddSceneObject
��& 4
(
��4 5
in
��5 7
SceneObject
��8 C
sceneObject
��D O
,
��O P
FastBufferReader
��Q a
variableData
��b n
,
��n o
NetworkManager
��p ~
networkManager�� �
)��� �
{
�� 	
Vector3
�� 
?
�� 
position
�� 
=
�� 
null
��  $
;
��$ %

Quaternion
�� 
?
�� 
rotation
��  
=
��! "
null
��# '
;
��' (
ulong
�� 
?
�� 
parentNetworkId
�� "
=
��# $
null
��% )
;
��) *
int
�� 
?
��  
networkSceneHandle
�� #
=
��$ %
null
��& *
;
��* +
if
�� 
(
�� 
sceneObject
�� 
.
�� 
Header
�� "
.
��" #
HasTransform
��# /
)
��/ 0
{
�� 
position
�� 
=
�� 
sceneObject
�� &
.
��& '
	Transform
��' 0
.
��0 1
Position
��1 9
;
��9 :
rotation
�� 
=
�� 
sceneObject
�� &
.
��& '
	Transform
��' 0
.
��0 1
Rotation
��1 9
;
��9 :
}
�� 
if
�� 
(
�� 
sceneObject
�� 
.
�� 
Header
�� "
.
��" #
	HasParent
��# ,
)
��, -
{
�� 
parentNetworkId
�� 
=
��  !
sceneObject
��" -
.
��- .
ParentObjectId
��. <
;
��< =
}
�� 
if
�� 
(
�� 
sceneObject
�� 
.
�� 
Header
�� "
.
��" #

��# 0
)
��0 1
{
�� 
networkSceneHandle
�� "
=
��# $
sceneObject
��% 0
.
��0 1 
NetworkSceneHandle
��1 C
;
��C D
}
�� 
var
�� 

�� 
=
�� 
networkManager
��  .
.
��. /
SpawnManager
��/ ;
.
��; <&
CreateLocalNetworkObject
��< T
(
��T U
sceneObject
�� 
.
�� 
Header
�� "
.
��" #

��# 0
,
��0 1
sceneObject
��2 =
.
��= >
Header
��> D
.
��D E
Hash
��E I
,
��I J
sceneObject
�� 
.
�� 
Header
�� "
.
��" #

��# 0
,
��0 1
parentNetworkId
��2 A
,
��A B 
networkSceneHandle
��C U
,
��U V
position
��W _
,
��_ `
rotation
��a i
,
��i j
sceneObject
��k v
.
��v w
Header
��w }
.
��} ~
IsReparented��~ �
)��� �
;��� �

�� 
?
�� 
.
�� !
SetNetworkParenting
�� .
(
��. /
sceneObject
��/ :
.
��: ;
Header
��; A
.
��A B
IsReparented
��B N
,
��N O
sceneObject
��P [
.
��[ \
LatestParent
��\ h
)
��h i
;
��i j
if
�� 
(
�� 

�� 
==
��  
null
��! %
)
��% &
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$"
�� !
$str
��! 1
{
��1 2
nameof
��2 8
(
��8 9

��9 F
)
��F G
}
��G H
$str
��H R
{
��R S
sceneObject
��S ^
.
��^ _
Header
��_ e
.
��e f
Hash
��f j
}
��j k
$str
��k l
"
��l m
)
��m n
;
��n o
variableData
�� 
.
�� 

�� *
(
��* +
out
��+ .
ushort
��/ 5
varSize
��6 =
)
��= >
;
��> ?
variableData
�� 
.
�� 
Seek
�� !
(
��! "
variableData
��" .
.
��. /
Position
��/ 7
+
��8 9
varSize
��: A
)
��A B
;
��B C
return
�� 
null
�� 
;
�� 
}
�� 
networkManager
�� 
.
�� 
SpawnManager
�� '
.
��' ('
SpawnNetworkObjectLocally
��( A
(
��A B

��B O
,
��O P
sceneObject
��Q \
,
��\ ]
variableData
��^ j
,
��j k
false
��l q
)
��q r
;
��r s
return
�� 

��  
;
��  !
}
�� 	
internal
�� 
uint
�� 4
&HostCheckForGlobalObjectIdHashOverride
�� <
(
��< =
)
��= >
{
�� 	
if
�	�	 
(
�	�	 
NetworkManager
�	�	 
.
�	�	 
IsHost
�	�	 %
)
�	�	% &
{
�	�	 
if
�	�	 
(
�	�	 
NetworkManager
�	�	 "
.
�	�	" #

�	�	# 0
.
�	�	0 1
ContainsHandler
�	�	1 @
(
�	�	@ A
this
�	�	A E
)
�	�	E F
)
�	�	F G
{
�	�	 
var
�	�	  
globalObjectIdHash
�	�	 *
=
�	�	+ ,
NetworkManager
�	�	- ;
.
�	�	; <

�	�	< I
.
�	�	I J)
GetSourceGlobalObjectIdHash
�	�	J e
(
�	�	e f 
GlobalObjectIdHash
�	�	f x
)
�	�	x y
;
�	�	y z
return
�	�	  
globalObjectIdHash
�	�	 -
==
�	�	. 0
$num
�	�	1 2
?
�	�	3 4 
GlobalObjectIdHash
�	�	5 G
:
�	�	H I 
globalObjectIdHash
�	�	J \
;
�	�	\ ]
}
�	�	 
else
�	�	 
if
�	�	 
(
�	�	 
NetworkManager
�	�	 '
.
�	�	' (

�	�	( 5
.
�	�	5 6%
OverrideToNetworkPrefab
�	�	6 M
.
�	�	M N
ContainsKey
�	�	N Y
(
�	�	Y Z 
GlobalObjectIdHash
�	�	Z l
)
�	�	l m
)
�	�	m n
{
�	�	 
return
�	�	 
NetworkManager
�	�	 )
.
�	�	) *

�	�	* 7
.
�	�	7 8%
OverrideToNetworkPrefab
�	�	8 O
[
�	�	O P 
GlobalObjectIdHash
�	�	P b
]
�	�	b c
;
�	�	c d
}
�	�	 
}
�	�	 
return
�	�	  
GlobalObjectIdHash
�	�	 %
;
�	�	% &
}
�	�	 	
}
�	�	 
}�	�	 ��
sC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\FastBufferWriter.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

struct 
FastBufferWriter "
:# $
IDisposable% 0
{ 
internal 
struct 
WriterHandle $
{ 	
internal 
unsafe 
byte  
*  !

;/ 0
internal 
int 
Position !
;! "
internal 
int 
Length 
;  
internal 
int 
Capacity !
;! "
internal 
int 
MaxCapacity $
;$ %
internal 
	Allocator 
	Allocator (
;( )
internal 
bool 

BufferGrew $
;$ %
internal 
int 
AllowedWriteMark )
;) *
internal 
bool 
InBitwiseContext *
;* +
} 	
internal   
unsafe   
WriterHandle   $
*  $ %
Handle  & ,
;  , -
private"" 
static"" 
byte"" 
["" 
]"" 
s_ByteArrayCache"" .
=""/ 0
new""1 4
byte""5 9
[""9 :
$num"": ?
]""? @
;""@ A
public'' 
unsafe'' 
int'' 
Position'' "
{(( 	
[)) 

MethodImpl))
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
Position** #
;**# $
}++ 	
public00 
unsafe00 
int00 
Capacity00 "
{11 	
[22 

MethodImpl22
(22 
MethodImplOptions22 )
.22) *
AggressiveInlining22* <
)22< =
]22= >
get33 
=>33 
Handle33 
->33 
Capacity33 #
;33# $
}44 	
public99 
unsafe99 
int99 
MaxCapacity99 %
{:: 	
[;; 

MethodImpl;;
(;; 
MethodImplOptions;; )
.;;) *
AggressiveInlining;;* <
);;< =
];;= >
get<< 
=><< 
Handle<< 
-><< 
MaxCapacity<< &
;<<& '
}== 	
publicBB 
unsafeBB 
intBB 
LengthBB  
{CC 	
[DD 

MethodImplDD
(DD 
MethodImplOptionsDD )
.DD) *
AggressiveInliningDD* <
)DD< =
]DD= >
getEE 
=>EE 
HandleEE 
->EE 
PositionEE #
>EE$ %
HandleEE& ,
->EE, .
LengthEE. 4
?EE5 6
HandleEE7 =
->EE= ?
PositionEE? G
:EEH I
HandleEEJ P
->EEP R
LengthEER X
;EEX Y
}FF 	
publicKK 
unsafeKK 
boolKK 

=>KK) +
HandleKK, 2
!=KK3 5
nullKK6 :
;KK: ;
[NN 	

MethodImplNN	 
(NN 
MethodImplOptionsNN %
.NN% &
AggressiveInliningNN& 8
)NN8 9
]NN9 :
internalOO 
unsafeOO 
voidOO 
CommitBitwiseWritesOO 0
(OO0 1
intOO1 4
amountOO5 ;
)OO; <
{PP 	
HandleQQ 
->QQ 
PositionQQ 
+=QQ 
amountQQ  &
;QQ& '
HandleSS 
->SS 
InBitwiseContextSS $
=SS% &
falseSS' ,
;SS, -
}UU 	
public]] 
unsafe]] 
FastBufferWriter]] &
(]]& '
int]]' *
size]]+ /
,]]/ 0
	Allocator]]1 :
	allocator]]; D
,]]D E
int]]F I
maxSize]]J Q
=]]R S
-]]T U
$num]]U V
)]]V W
{^^ 	
Handlecc 
=cc 
(cc 
WriterHandlecc "
*cc" #
)cc# $

.cc1 2
Malloccc2 8
(cc8 9
sizeofcc9 ?
(cc? @
WriterHandlecc@ L
)ccL M
+ccN O
sizeccP T
,ccT U

.ccc d
AlignOfccd k
<cck l
WriterHandleccl x
>ccx y
(ccy z
)ccz {
,cc{ |
	allocator	cc} �
)
cc� �
;
cc� �

.ee 
MemSetee  
(ee  !
Handleee! '
,ee' (
$numee) *
,ee* +
sizeofee, 2
(ee2 3
WriterHandleee3 ?
)ee? @
+eeA B
sizeeeC G
)eeG H
;eeH I
Handlegg 
->gg 

=gg" #
(gg$ %
bytegg% )
*gg) *
)gg* +
(gg+ ,
Handlegg, 2
+gg3 4
$numgg5 6
)gg6 7
;gg7 8
Handlehh 
->hh 
Positionhh 
=hh 
$numhh  
;hh  !
Handleii 
->ii 
Lengthii 
=ii 
$numii 
;ii 
Handlejj 
->jj 
Capacityjj 
=jj 
sizejj #
;jj# $
Handlekk 
->kk 
	Allocatorkk 
=kk 
	allocatorkk  )
;kk) *
Handlell 
->ll 
MaxCapacityll 
=ll  !
maxSizell" )
<ll* +
sizell, 0
?ll1 2
sizell3 7
:ll8 9
maxSizell: A
;llA B
Handlemm 
->mm 

BufferGrewmm 
=mm  
falsemm! &
;mm& '
Handleoo 
->oo 
AllowedWriteMarkoo $
=oo% &
$numoo' (
;oo( )
Handlepp 
->pp 
InBitwiseContextpp $
=pp% &
falsepp' ,
;pp, -
}rr 	
publicww 
unsafeww 
voidww 
Disposeww "
(ww" #
)ww# $
{xx 	
ifyy 
(yy 
Handleyy 
->yy 

BufferGrewyy "
)yy" #
{zz 

.{{ 
Free{{ "
({{" #
Handle{{# )
->{{) +

,{{8 9
Handle{{: @
->{{@ B
	Allocator{{B K
){{K L
;{{L M
}|| 

.}} 
Free}} 
(}} 
Handle}} %
,}}% &
Handle}}' -
->}}- /
	Allocator}}/ 8
)}}8 9
;}}9 :
Handle~~ 
=~~ 
null~~ 
;~~ 
} 	
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
�� 	
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
�� 
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
�� 
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
�� 
where
�� 
=
�� 
Position
��  
;
��  !
}
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
desiredSize
�� 
*=
�� 
$num
��  
;
��  !
}
�� 
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
��- .
newSize
��/ 6
)
��6 7
;
��7 8

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
�� 

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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
}
�� 
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
��8 9
bytes
��: ?
;
��? @
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 

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
�� 
return
�� 
ret
�� 
;
�� 
}
�� 	
internal
�� 
unsafe
�� 
ArraySegment
�� $
<
��$ %
byte
��% )
>
��) *
ToTempByteArray
��+ :
(
��: ;
)
��; <
{
�� 	
var
�� 
length
�� 
=
�� 
Length
�� 
;
��  
if
�� 
(
�� 
length
�� 
>
�� 
s_ByteArrayCache
�� )
.
��) *
Length
��* 0
)
��0 1
{
�� 
return
�� 
new
�� 
ArraySegment
�� '
<
��' (
byte
��( ,
>
��, -
(
��- .
ToArray
��. 5
(
��5 6
)
��6 7
,
��7 8
$num
��9 :
,
��: ;
length
��< B
)
��B C
;
��C D
}
�� 
fixed
�� 
(
�� 
byte
�� 
*
�� 
b
�� 
=
�� 
s_ByteArrayCache
�� -
)
��- .
{
�� 

�� 
.
�� 
MemCpy
�� $
(
��$ %
b
��% &
,
��& '
Handle
��( .
->
��. 0

��0 =
,
��= >
length
��? E
)
��E F
;
��F G
}
�� 
return
�� 
new
�� 
ArraySegment
�� #
<
��# $
byte
��$ (
>
��( )
(
��) *
s_ByteArrayCache
��* :
,
��: ;
$num
��< =
,
��= >
length
��? E
)
��E F
;
��F G
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
byte
�� 
*
�� 
GetUnsafePtr
�� (
(
��( )
)
��) *
{
�� 	
return
�� 
Handle
�� 
->
�� 

�� (
;
��( )
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
byte
�� 
*
�� +
GetUnsafePtrAtCurrentPosition
�� 9
(
��9 :
)
��: ;
{
�� 	
return
�� 
Handle
�� 
->
�� 

�� (
+
��) *
Handle
��+ 1
->
��1 3
Position
��3 ;
;
��; <
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
�� 
int
�� 
GetWriteSize
�� &
(
��& '
string
��' -
s
��. /
,
��/ 0
bool
��1 5
oneByteChars
��6 B
=
��C D
false
��E J
)
��J K
{
�� 	
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
��  
s
��! "
.
��" #
Length
��# )
*
��* +
(
��, -
oneByteChars
��- 9
?
��: ;
sizeof
��< B
(
��B C
byte
��C G
)
��G H
:
��I J
sizeof
��K Q
(
��Q R
char
��R V
)
��V W
)
��W X
;
��X Y
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
��/ 0
T
��0 1
[
��1 2
]
��2 3
array
��4 9
,
��9 :
int
��; >
count
��? D
=
��E F
-
��G H
$num
��H I
,
��I J
int
��K N
offset
��O U
=
��V W
$num
��X Y
)
��Y Z
where
��[ `
T
��a b
:
��c d"
INetworkSerializable
��e y
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
�� 
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
�� 
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
�� 
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
�� 
else
�� 
{
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 

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
�� 
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
�� 
}
�� 
else
�� 
{
�� 
fixed
�� 
(
�� 
char
�� 
*
�� 
native
�� #
=
��$ %
s
��& '
)
��' (
{
�� 

WriteBytes
�� 
(
�� 
(
��  
byte
��  $
*
��$ %
)
��% &
native
��& ,
,
��, -
target
��. 4
*
��5 6
sizeof
��7 =
(
��= >
char
��> B
)
��B C
)
��C D
;
��D E
}
�� 
}
�� 
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
static
�� 
unsafe
�� 
int
��  
GetWriteSize
��! -
<
��- .
T
��. /
>
��/ 0
(
��0 1
T
��1 2
[
��2 3
]
��3 4
array
��5 :
,
��: ;
int
��< ?
count
��@ E
=
��F G
-
��H I
$num
��I J
,
��J K
int
��L O
offset
��P V
=
��W X
$num
��Y Z
)
��Z [
where
��\ a
T
��b c
:
��d e
	unmanaged
��f o
{
�� 	
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
��2 3
return
�� 
sizeof
�� 
(
�� 
int
�� 
)
�� 
+
��  
sizeInBytes
��! ,
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
�� 
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
�� 
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
�� 
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
�� 
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

�� 
=
��  !
Handle
��" (
->
��( *

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

�� 
.
�� 
MemCpy
��  
(
��  !

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
�� 
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
�� 
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
�� 
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
�� 
Handle
�� 
->
�� 

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
�� 
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
�� 
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
�� 
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
�� 
Handle
�� 
->
�� 

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
�� 
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
�� 
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
AllowedWriteMark
��2 B
)
��B C
{
�� 
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
�� 

�� 
.
�� 
MemCpy
��  
(
��  !
(
��! "
Handle
��" (
->
��( *

��* 7
+
��8 9
Handle
��: @
->
��@ B
Position
��B J
)
��J K
,
��K L
value
��M R
+
��S T
offset
��U [
,
��[ \
size
��] a
)
��a b
;
��b c
Handle
�� 
->
�� 
Position
�� 
+=
�� 
size
��  $
;
��$ %
}
�� 	
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
�� 
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
�� 
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
�� 
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
�� 

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
�� 

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
�� 
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
�� 
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
�� 
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
,
��; <

ForStructs
��= G
unused
��H N
=
��O P
default
��Q X
)
��X Y
where
��Z _
T
��` a
:
��b c
	unmanaged
��d m
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
�� 
int
�� 
GetWriteSize
�� &
<
��& '
T
��' (
>
��( )
(
��) *
in
��* ,
T
��- .
value
��/ 4
)
��4 5
where
�� 
T
�� 
:
�� 
	unmanaged
�� 
,
��  
INativeList
��! ,
<
��, -
byte
��- 1
>
��1 2
,
��2 3

IUTF8Bytes
��4 >
{
�� 	
return
�� 
value
�� 
.
�� 
Length
�� 
+
��  !
sizeof
��" (
(
��( )
int
��) ,
)
��, -
;
��- .
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
��9 :
internal
�� 
unsafe
�� 
void
�� 
WriteUnmanaged
�� +
<
��+ ,
T
��, -
>
��- .
(
��. /
in
��/ 1
T
��2 3
value
��4 9
)
��9 :
where
��; @
T
��A B
:
��C D
	unmanaged
��E N
{
�� 	
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
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
ptr
��% (
;
��( )

WriteBytes
�� 
(
�� 
bytes
��  
,
��  !
sizeof
��" (
(
��( )
T
��) *
)
��* +
)
��+ ,
;
��, -
}
�� 
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
��9 :
internal
�� 
unsafe
�� 
void
��  
WriteUnmanagedSafe
�� /
<
��/ 0
T
��0 1
>
��1 2
(
��2 3
in
��3 5
T
��6 7
value
��8 =
)
��= >
where
��? D
T
��E F
:
��G H
	unmanaged
��I R
{
�� 	
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
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
ptr
��% (
;
��( )
WriteBytesSafe
�� 
(
�� 
bytes
�� $
,
��$ %
sizeof
��& ,
(
��, -
T
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
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
��9 :
internal
�� 
unsafe
�� 
void
�� 
WriteUnmanaged
�� +
<
��+ ,
T
��, -
>
��- .
(
��. /
T
��/ 0
[
��0 1
]
��1 2
value
��3 8
)
��8 9
where
��: ?
T
��@ A
:
��B C
	unmanaged
��D M
{
�� 	
WriteUnmanaged
�� 
(
�� 
value
��  
.
��  !
Length
��! '
)
��' (
;
��( )
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
�� 
value
�� !
)
��! "
{
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
ptr
��% (
;
��( )

WriteBytes
�� 
(
�� 
bytes
��  
,
��  !
sizeof
��" (
(
��( )
T
��) *
)
��* +
*
��, -
value
��. 3
.
��3 4
Length
��4 :
)
��: ;
;
��; <
}
�� 
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
��9 :
internal
�� 
unsafe
�� 
void
��  
WriteUnmanagedSafe
�� /
<
��/ 0
T
��0 1
>
��1 2
(
��2 3
T
��3 4
[
��4 5
]
��5 6
value
��7 <
)
��< =
where
��> C
T
��D E
:
��F G
	unmanaged
��H Q
{
�� 	 
WriteUnmanagedSafe
�� 
(
�� 
value
�� $
.
��$ %
Length
��% +
)
��+ ,
;
��, -
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
�� 
value
�� !
)
��! "
{
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
ptr
��% (
;
��( )
WriteBytesSafe
�� 
(
�� 
bytes
�� $
,
��$ %
sizeof
��& ,
(
��, -
T
��- .
)
��. /
*
��0 1
value
��2 7
.
��7 8
Length
��8 >
)
��> ?
;
��? @
}
�� 
}
�� 	
public
�� 
struct
�� 

�� #
{
�� 	
}
�� 	
public
�� 
struct
�� 
ForEnums
�� 
{
�� 	
}
�� 	
public
�� 
struct
�� 

ForStructs
��  
{
�� 	
}
�� 	
public
�� 
struct
�� $
ForNetworkSerializable
�� ,
{
�� 	
}
�� 	
public
�� 
struct
�� 
ForFixedStrings
�� %
{
�� 	
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
�� 
void
�� 

WriteValue
�� 
<
�� 
T
��  
>
��  !
(
��! "
in
��" $
T
��% &
value
��' ,
,
��, -$
ForNetworkSerializable
��. D
unused
��E K
=
��L M
default
��N U
)
��U V
where
��W \
T
��] ^
:
��_ `"
INetworkSerializable
��a u
=>
��v x'
WriteNetworkSerializable��y �
(��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 

WriteValue
�� 
<
�� 
T
��  
>
��  !
(
��! "
T
��" #
[
��# $
]
��$ %
value
��& +
,
��+ ,$
ForNetworkSerializable
��- C
unused
��D J
=
��K L
default
��M T
)
��T U
where
��V [
T
��\ ]
:
��^ _"
INetworkSerializable
��` t
=>
��u w'
WriteNetworkSerializable��x �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
WriteValueSafe
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
in
��& (
T
��) *
value
��+ 0
,
��0 1$
ForNetworkSerializable
��2 H
unused
��I O
=
��P Q
default
��R Y
)
��Y Z
where
��[ `
T
��a b
:
��c d"
INetworkSerializable
��e y
=>
��z |'
WriteNetworkSerializable��} �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
WriteValueSafe
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
T
��& '
[
��' (
]
��( )
value
��* /
,
��/ 0$
ForNetworkSerializable
��1 G
unused
��H N
=
��O P
default
��Q X
)
��X Y
where
��Z _
T
��` a
:
��b c"
INetworkSerializable
��d x
=>
��y {'
WriteNetworkSerializable��| �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
<
�� 
T
��  
>
��  !
(
��! "
in
��" $
T
��% &
value
��' ,
,
��, -

ForStructs
��. 8
unused
��9 ?
=
��@ A
default
��B I
)
��I J
where
��K P
T
��Q R
:
��S T
	unmanaged
��U ^
,
��^ _'
INetworkSerializeByMemcpy
��` y
=>
��z |
WriteUnmanaged��} �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
<
�� 
T
��  
>
��  !
(
��! "
T
��" #
[
��# $
]
��$ %
value
��& +
,
��+ ,

ForStructs
��- 7
unused
��8 >
=
��? @
default
��A H
)
��H I
where
��J O
T
��P Q
:
��R S
	unmanaged
��T ]
,
��] ^'
INetworkSerializeByMemcpy
��_ x
=>
��y {
WriteUnmanaged��| �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
WriteValueSafe
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
in
��& (
T
��) *
value
��+ 0
,
��0 1

ForStructs
��2 <
unused
��= C
=
��D E
default
��F M
)
��M N
where
��O T
T
��U V
:
��W X
	unmanaged
��Y b
,
��b c'
INetworkSerializeByMemcpy
��d }
=>��~ �"
WriteUnmanagedSafe��� �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
WriteValueSafe
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
T
��& '
[
��' (
]
��( )
value
��* /
,
��/ 0

ForStructs
��1 ;
unused
��< B
=
��C D
default
��E L
)
��L M
where
��N S
T
��T U
:
��V W
	unmanaged
��X a
,
��a b'
INetworkSerializeByMemcpy
��c |
=>
��} "
WriteUnmanagedSafe��� �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
<
�� 
T
��  
>
��  !
(
��! "
in
��" $
T
��% &
value
��' ,
,
��, -

��. ;
unused
��< B
=
��C D
default
��E L
)
��L M
where
��N S
T
��T U
:
��V W
	unmanaged
��X a
,
��a b
IComparable
��c n
,
��n o
IConvertible
��p |
,
��| }
IComparable��~ �
<��� �
T��� �
>��� �
,��� �

IEquatable��� �
<��� �
T��� �
>��� �
=>��� �
WriteUnmanaged��� �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
<
�� 
T
��  
>
��  !
(
��! "
T
��" #
[
��# $
]
��$ %
value
��& +
,
��+ ,

��- :
unused
��; A
=
��B C
default
��D K
)
��K L
where
��M R
T
��S T
:
��U V
	unmanaged
��W `
,
��` a
IComparable
��b m
,
��m n
IConvertible
��o {
,
��{ |
IComparable��} �
<��� �
T��� �
>��� �
,��� �

IEquatable��� �
<��� �
T��� �
>��� �
=>��� �
WriteUnmanaged��� �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
WriteValueSafe
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
in
��& (
T
��) *
value
��+ 0
,
��0 1

��2 ?
unused
��@ F
=
��G H
default
��I P
)
��P Q
where
��R W
T
��X Y
:
��Z [
	unmanaged
��\ e
,
��e f
IComparable
��g r
,
��r s
IConvertible��t �
,��� �
IComparable��� �
<��� �
T��� �
>��� �
,��� �

IEquatable��� �
<��� �
T��� �
>��� �
=>��� �"
WriteUnmanagedSafe��� �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
WriteValueSafe
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
T
��& '
[
��' (
]
��( )
value
��* /
,
��/ 0

��1 >
unused
��? E
=
��F G
default
��H O
)
��O P
where
��Q V
T
��W X
:
��Y Z
	unmanaged
��[ d
,
��d e
IComparable
��f q
,
��q r
IConvertible
��s 
,�� �
IComparable��� �
<��� �
T��� �
>��� �
,��� �

IEquatable��� �
<��� �
T��� �
>��� �
=>��� �"
WriteUnmanagedSafe��� �
(��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
<
�� 
T
��  
>
��  !
(
��! "
in
��" $
T
��% &
value
��' ,
,
��, -
ForEnums
��. 6
unused
��7 =
=
��> ?
default
��@ G
)
��G H
where
��I N
T
��O P
:
��Q R
	unmanaged
��S \
,
��\ ]
Enum
��^ b
=>
��c e
WriteUnmanaged
��f t
(
��t u
value
��u z
)
��z {
;
��{ |
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
<
�� 
T
��  
>
��  !
(
��! "
T
��" #
[
��# $
]
��$ %
value
��& +
,
��+ ,
ForEnums
��- 5
unused
��6 <
=
��= >
default
��? F
)
��F G
where
��H M
T
��N O
:
��P Q
	unmanaged
��R [
,
��[ \
Enum
��] a
=>
��b d
WriteUnmanaged
��e s
(
��s t
value
��t y
)
��y z
;
��z {
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
WriteValueSafe
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
in
��& (
T
��) *
value
��+ 0
,
��0 1
ForEnums
��2 :
unused
��; A
=
��B C
default
��D K
)
��K L
where
��M R
T
��S T
:
��U V
	unmanaged
��W `
,
��` a
Enum
��b f
=>
��g i 
WriteUnmanagedSafe
��j |
(
��| }
value��} �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
WriteValueSafe
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
T
��& '
[
��' (
]
��( )
value
��* /
,
��/ 0
ForEnums
��1 9
unused
��: @
=
��A B
default
��C J
)
��J K
where
��L Q
T
��R S
:
��T U
	unmanaged
��V _
,
��_ `
Enum
��a e
=>
��f h 
WriteUnmanagedSafe
��i {
(
��{ |
value��| �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
in
�� !
Vector2
��" )
value
��* /
)
��/ 0
=>
��1 3
WriteUnmanaged
��4 B
(
��B C
value
��C H
)
��H I
;
��I J
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
Vector2
�� &
[
��& '
]
��' (
value
��) .
)
��. /
=>
��0 2
WriteUnmanaged
��3 A
(
��A B
value
��B G
)
��G H
;
��H I
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
in
�� !
Vector3
��" )
value
��* /
)
��/ 0
=>
��1 3
WriteUnmanaged
��4 B
(
��B C
value
��C H
)
��H I
;
��I J
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
Vector3
�� &
[
��& '
]
��' (
value
��) .
)
��. /
=>
��0 2
WriteUnmanaged
��3 A
(
��A B
value
��B G
)
��G H
;
��H I
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
in
�� !

Vector2Int
��" ,
value
��- 2
)
��2 3
=>
��4 6
WriteUnmanaged
��7 E
(
��E F
value
��F K
)
��K L
;
��L M
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 

Vector2Int
�� )
[
��) *
]
��* +
value
��, 1
)
��1 2
=>
��3 5
WriteUnmanaged
��6 D
(
��D E
value
��E J
)
��J K
;
��K L
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
in
�� !

Vector3Int
��" ,
value
��- 2
)
��2 3
=>
��4 6
WriteUnmanaged
��7 E
(
��E F
value
��F K
)
��K L
;
��L M
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 

Vector3Int
�� )
[
��) *
]
��* +
value
��, 1
)
��1 2
=>
��3 5
WriteUnmanaged
��6 D
(
��D E
value
��E J
)
��J K
;
��K L
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
in
�� !
Vector4
��" )
value
��* /
)
��/ 0
=>
��1 3
WriteUnmanaged
��4 B
(
��B C
value
��C H
)
��H I
;
��I J
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
Vector4
�� &
[
��& '
]
��' (
value
��) .
)
��. /
=>
��0 2
WriteUnmanaged
��3 A
(
��A B
value
��B G
)
��G H
;
��H I
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
in
�� !

Quaternion
��" ,
value
��- 2
)
��2 3
=>
��4 6
WriteUnmanaged
��7 E
(
��E F
value
��F K
)
��K L
;
��L M
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 

Quaternion
�� )
[
��) *
]
��* +
value
��, 1
)
��1 2
=>
��3 5
WriteUnmanaged
��6 D
(
��D E
value
��E J
)
��J K
;
��K L
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
in
�� !
Color
��" '
value
��( -
)
��- .
=>
��/ 1
WriteUnmanaged
��2 @
(
��@ A
value
��A F
)
��F G
;
��G H
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
Color
�� $
[
��$ %
]
��% &
value
��' ,
)
��, -
=>
��. 0
WriteUnmanaged
��1 ?
(
��? @
value
��@ E
)
��E F
;
��F G
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

WriteValue
�� 
(
�� 
in
�� !
Color32
��" )
value
��* /
)
��/ 0
=>
��1 3
WriteUnmanaged
��4 B
(
��B C
value
��C H
)
��H I
;
��I J
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

WriteValue
�	�	 
(
�	�	 
Color32
�	�	 &
[
�	�	& '
]
�	�	' (
value
�	�	) .
)
�	�	. /
=>
�	�	0 2
WriteUnmanaged
�	�	3 A
(
�	�	A B
value
�	�	B G
)
�	�	G H
;
�	�	H I
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

WriteValue
�	�	 
(
�	�	 
in
�	�	 !
Ray
�	�	" %
value
�	�	& +
)
�	�	+ ,
=>
�	�	- /
WriteUnmanaged
�	�	0 >
(
�	�	> ?
value
�	�	? D
)
�	�	D E
;
�	�	E F
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

WriteValue
�	�	 
(
�	�	 
Ray
�	�	 "
[
�	�	" #
]
�	�	# $
value
�	�	% *
)
�	�	* +
=>
�	�	, .
WriteUnmanaged
�	�	/ =
(
�	�	= >
value
�	�	> C
)
�	�	C D
;
�	�	D E
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

WriteValue
�	�	 
(
�	�	 
in
�	�	 !
Ray2D
�	�	" '
value
�	�	( -
)
�	�	- .
=>
�	�	/ 1
WriteUnmanaged
�	�	2 @
(
�	�	@ A
value
�	�	A F
)
�	�	F G
;
�	�	G H
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

WriteValue
�	�	 
(
�	�	 
Ray2D
�	�	 $
[
�	�	$ %
]
�	�	% &
value
�	�	' ,
)
�	�	, -
=>
�	�	. 0
WriteUnmanaged
�	�	1 ?
(
�	�	? @
value
�	�	@ E
)
�	�	E F
;
�	�	F G
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 
WriteValueSafe
�	�	 "
(
�	�	" #
in
�	�	# %
Vector2
�	�	& -
value
�	�	. 3
)
�	�	3 4
=>
�	�	5 7 
WriteUnmanagedSafe
�	�	8 J
(
�	�	J K
value
�	�	K P
)
�	�	P Q
;
�	�	Q R
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 
WriteValueSafe
�	�	 "
(
�	�	" #
Vector2
�	�	# *
[
�	�	* +
]
�	�	+ ,
value
�	�	- 2
)
�	�	2 3
=>
�	�	4 6 
WriteUnmanagedSafe
�	�	7 I
(
�	�	I J
value
�	�	J O
)
�	�	O P
;
�	�	P Q
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 
WriteValueSafe
�	�	 "
(
�	�	" #
in
�	�	# %
Vector3
�	�	& -
value
�	�	. 3
)
�	�	3 4
=>
�	�	5 7 
WriteUnmanagedSafe
�	�	8 J
(
�	�	J K
value
�	�	K P
)
�	�	P Q
;
�	�	Q R
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 
WriteValueSafe
�	�	 "
(
�	�	" #
Vector3
�	�	# *
[
�	�	* +
]
�	�	+ ,
value
�	�	- 2
)
�	�	2 3
=>
�	�	4 6 
WriteUnmanagedSafe
�	�	7 I
(
�	�	I J
value
�	�	J O
)
�	�	O P
;
�	�	P Q
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 
WriteValueSafe
�	�	 "
(
�	�	" #
in
�	�	# %

Vector2Int
�	�	& 0
value
�	�	1 6
)
�	�	6 7
=>
�	�	8 : 
WriteUnmanagedSafe
�	�	; M
(
�	�	M N
value
�	�	N S
)
�	�	S T
;
�	�	T U
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 
WriteValueSafe
�	�	 "
(
�	�	" #

Vector2Int
�	�	# -
[
�	�	- .
]
�	�	. /
value
�	�	0 5
)
�	�	5 6
=>
�	�	7 9 
WriteUnmanagedSafe
�	�	: L
(
�	�	L M
value
�	�	M R
)
�	�	R S
;
�	�	S T
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 
WriteValueSafe
�	�	 "
(
�	�	" #
in
�	�	# %

Vector3Int
�	�	& 0
value
�	�	1 6
)
�	�	6 7
=>
�	�	8 : 
WriteUnmanagedSafe
�	�	; M
(
�	�	M N
value
�	�	N S
)
�	�	S T
;
�	�	T U
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 
WriteValueSafe
�	�	 "
(
�	�	" #

Vector3Int
�	�	# -
[
�	�	- .
]
�	�	. /
value
�	�	0 5
)
�	�	5 6
=>
�	�	7 9 
WriteUnmanagedSafe
�	�	: L
(
�	�	L M
value
�	�	M R
)
�	�	R S
;
�	�	S T
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 
WriteValueSafe
�	�	 "
(
�	�	" #
in
�	�	# %
Vector4
�	�	& -
value
�	�	. 3
)
�	�	3 4
=>
�	�	5 7 
WriteUnmanagedSafe
�	�	8 J
(
�	�	J K
value
�	�	K P
)
�	�	P Q
;
�	�	Q R
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #
Vector4
�
�
# *
[
�
�
* +
]
�
�
+ ,
value
�
�
- 2
)
�
�
2 3
=>
�
�
4 6 
WriteUnmanagedSafe
�
�
7 I
(
�
�
I J
value
�
�
J O
)
�
�
O P
;
�
�
P Q
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #
in
�
�
# %

Quaternion
�
�
& 0
value
�
�
1 6
)
�
�
6 7
=>
�
�
8 : 
WriteUnmanagedSafe
�
�
; M
(
�
�
M N
value
�
�
N S
)
�
�
S T
;
�
�
T U
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #

Quaternion
�
�
# -
[
�
�
- .
]
�
�
. /
value
�
�
0 5
)
�
�
5 6
=>
�
�
7 9 
WriteUnmanagedSafe
�
�
: L
(
�
�
L M
value
�
�
M R
)
�
�
R S
;
�
�
S T
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #
in
�
�
# %
Color
�
�
& +
value
�
�
, 1
)
�
�
1 2
=>
�
�
3 5 
WriteUnmanagedSafe
�
�
6 H
(
�
�
H I
value
�
�
I N
)
�
�
N O
;
�
�
O P
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #
Color
�
�
# (
[
�
�
( )
]
�
�
) *
value
�
�
+ 0
)
�
�
0 1
=>
�
�
2 4 
WriteUnmanagedSafe
�
�
5 G
(
�
�
G H
value
�
�
H M
)
�
�
M N
;
�
�
N O
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #
in
�
�
# %
Color32
�
�
& -
value
�
�
. 3
)
�
�
3 4
=>
�
�
5 7 
WriteUnmanagedSafe
�
�
8 J
(
�
�
J K
value
�
�
K P
)
�
�
P Q
;
�
�
Q R
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #
Color32
�
�
# *
[
�
�
* +
]
�
�
+ ,
value
�
�
- 2
)
�
�
2 3
=>
�
�
4 6 
WriteUnmanagedSafe
�
�
7 I
(
�
�
I J
value
�
�
J O
)
�
�
O P
;
�
�
P Q
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #
in
�
�
# %
Ray
�
�
& )
value
�
�
* /
)
�
�
/ 0
=>
�
�
1 3 
WriteUnmanagedSafe
�
�
4 F
(
�
�
F G
value
�
�
G L
)
�
�
L M
;
�
�
M N
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #
Ray
�
�
# &
[
�
�
& '
]
�
�
' (
value
�
�
) .
)
�
�
. /
=>
�
�
0 2 
WriteUnmanagedSafe
�
�
3 E
(
�
�
E F
value
�
�
F K
)
�
�
K L
;
�
�
L M
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #
in
�
�
# %
Ray2D
�
�
& +
value
�
�
, 1
)
�
�
1 2
=>
�
�
3 5 
WriteUnmanagedSafe
�
�
6 H
(
�
�
H I
value
�
�
I N
)
�
�
N O
;
�
�
O P
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
void
�
�
 
WriteValueSafe
�
�
 "
(
�
�
" #
Ray2D
�
�
# (
[
�
�
( )
]
�
�
) *
value
�
�
+ 0
)
�
�
0 1
=>
�
�
2 4 
WriteUnmanagedSafe
�
�
5 G
(
�
�
G H
value
�
�
H M
)
�
�
M N
;
�
�
N O
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
unsafe
�
�
 
void
�
�
 

WriteValue
�
�
 %
<
�
�
% &
T
�
�
& '
>
�
�
' (
(
�
�
( )
in
�
�
) +
T
�
�
, -
value
�
�
. 3
,
�
�
3 4
ForFixedStrings
�
�
5 D
unused
�
�
E K
=
�
�
L M
default
�
�
N U
)
�
�
U V
where
�
�
 
T
�
�
 
:
�
�
 
	unmanaged
�
�
 
,
�
�
  
INativeList
�
�
! ,
<
�
�
, -
byte
�
�
- 1
>
�
�
1 2
,
�
�
2 3

IUTF8Bytes
�
�
4 >
{
�
�
 	
WriteUnmanaged
�� 
(
�� 
value
��  
.
��  !
Length
��! '
)
��' (
;
��( )
fixed
�� 
(
�� 
T
�� 
*
�� 
ptr
�� 
=
�� 
&
�� 
value
�� "
)
��" #
{
�� 

WriteBytes
�� 
(
�� 
ptr
�� 
->
��  
GetUnsafePtr
��  ,
(
��, -
)
��- .
,
��. /
value
��0 5
.
��5 6
Length
��6 <
)
��< =
;
��= >
}
�� 
}
�� 	
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
WriteValueSafe
�� "
<
��" #
T
��# $
>
��$ %
(
��% &
in
��& (
T
��) *
value
��+ 0
,
��0 1
ForFixedStrings
��2 A
unused
��B H
=
��I J
default
��K R
)
��R S
where
�� 
T
�� 
:
�� 
	unmanaged
�� 
,
��  
INativeList
��! ,
<
��, -
byte
��- 1
>
��1 2
,
��2 3

IUTF8Bytes
��4 >
{
�� 	
if
�� 
(
�� 
!
�� #
TryBeginWriteInternal
�� &
(
��& '
sizeof
��' -
(
��- .
int
��. 1
)
��1 2
+
��3 4
value
��5 :
.
��: ;
Length
��; A
)
��A B
)
��B C
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, P
)
��P Q
;
��Q R
}
�� 

WriteValue
�� 
(
�� 
value
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
|C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\MemoryStructures\ByteBool.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
[ 
StructLayout 
( 

LayoutKind 
. 
Explicit %
)% &
]& '
internal 
struct
ByteBool 
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
) 
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
}!! �
lC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Transports\NetworkEvent.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

enum 
NetworkEvent 
{ 
Data 
, 
Connect 
, 

Disconnect 
, 
TransportFailure 
, 
Nothing 
}   
}!! ��
kC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Core\NetworkUpdateLoop.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

	interface  
INetworkUpdateSystem )
{
void 

( 
NetworkUpdateStage -
updateStage. 9
)9 :
;: ;
} 
public 

enum 
NetworkUpdateStage "
:# $
byte% )
{ 
Unset 
= 
$num 
, 
Initialization## 
=## 
$num## 
,## 
EarlyUpdate'' 
='' 
$num'' 
,'' 
FixedUpdate++ 
=++ 
$num++ 
,++ 
	PreUpdate// 
=// 
$num// 
,// 
Update33 
=33 
$num33 
,33 

=77 
$num77 
,77 
PostLateUpdate;; 
=;; 
$num;; 
}<< 
publicAA 

staticAA 
classAA 
NetworkUpdateLoopAA )
{BB 
privateCC 
staticCC 

DictionaryCC !
<CC! "
NetworkUpdateStageCC" 4
,CC4 5
HashSetCC6 =
<CC= > 
INetworkUpdateSystemCC> R
>CCR S
>CCS T
s_UpdateSystem_SetsCCU h
;CCh i
privateDD 
staticDD 

DictionaryDD !
<DD! "
NetworkUpdateStageDD" 4
,DD4 5 
INetworkUpdateSystemDD6 J
[DDJ K
]DDK L
>DDL M!
s_UpdateSystem_ArraysDDN c
;DDc d
privateEE 
constEE 
intEE /
#k_UpdateSystem_InitialArrayCapacityEE =
=EE> ?
$numEE@ D
;EED E
staticGG 
NetworkUpdateLoopGG  
(GG  !
)GG! "
{HH 	
s_UpdateSystem_SetsII 
=II  !
newII" %

DictionaryII& 0
<II0 1
NetworkUpdateStageII1 C
,IIC D
HashSetIIE L
<IIL M 
INetworkUpdateSystemIIM a
>IIa b
>IIb c
(IIc d
)IId e
;IIe f!
s_UpdateSystem_ArraysJJ !
=JJ" #
newJJ$ '

DictionaryJJ( 2
<JJ2 3
NetworkUpdateStageJJ3 E
,JJE F 
INetworkUpdateSystemJJG [
[JJ[ \
]JJ\ ]
>JJ] ^
(JJ^ _
)JJ_ `
;JJ` a
foreachLL 
(LL 
NetworkUpdateStageLL '
updateStageLL( 3
inLL4 6
EnumLL7 ;
.LL; <
	GetValuesLL< E
(LLE F
typeofLLF L
(LLL M
NetworkUpdateStageLLM _
)LL_ `
)LL` a
)LLa b
{MM 
s_UpdateSystem_SetsNN #
.NN# $
AddNN$ '
(NN' (
updateStageNN( 3
,NN3 4
newNN5 8
HashSetNN9 @
<NN@ A 
INetworkUpdateSystemNNA U
>NNU V
(NNV W
)NNW X
)NNX Y
;NNY Z!
s_UpdateSystem_ArraysOO %
.OO% &
AddOO& )
(OO) *
updateStageOO* 5
,OO5 6
newOO7 : 
INetworkUpdateSystemOO; O
[OOO P/
#k_UpdateSystem_InitialArrayCapacityOOP s
]OOs t
)OOt u
;OOu v
}PP 
}QQ 	
publicWW 
staticWW 
voidWW %
RegisterAllNetworkUpdatesWW 4
(WW4 5
thisWW5 9 
INetworkUpdateSystemWW: N
updateSystemWWO [
)WW[ \
{XX 	
foreachYY 
(YY 
NetworkUpdateStageYY '
updateStageYY( 3
inYY4 6
EnumYY7 ;
.YY; <
	GetValuesYY< E
(YYE F
typeofYYF L
(YYL M
NetworkUpdateStageYYM _
)YY_ `
)YY` a
)YYa b
{ZZ 
RegisterNetworkUpdate[[ %
([[% &
updateSystem[[& 2
,[[2 3
updateStage[[4 ?
)[[? @
;[[@ A
}\\ 
}]] 	
publicdd 
staticdd 
voiddd !
RegisterNetworkUpdatedd 0
(dd0 1
thisdd1 5 
INetworkUpdateSystemdd6 J
updateSystemddK W
,ddW X
NetworkUpdateStageddY k
updateStageddl w
=ddx y
NetworkUpdateStage	ddz �
.
dd� �
Update
dd� �
)
dd� �
{ee 	
varff 
sysSetff 
=ff 
s_UpdateSystem_Setsff ,
[ff, -
updateStageff- 8
]ff8 9
;ff9 :
ifgg 
(gg 
!gg 
sysSetgg 
.gg 
Containsgg  
(gg  !
updateSystemgg! -
)gg- .
)gg. /
{hh 
sysSetii 
.ii 
Addii 
(ii 
updateSystemii '
)ii' (
;ii( )
intkk 
setLenkk 
=kk 
sysSetkk #
.kk# $
Countkk$ )
;kk) *
varll 
sysArrll 
=ll !
s_UpdateSystem_Arraysll 2
[ll2 3
updateStagell3 >
]ll> ?
;ll? @
intmm 
arrLenmm 
=mm 
sysArrmm #
.mm# $
Lengthmm$ *
;mm* +
ifoo 
(oo 
setLenoo 
>oo 
arrLenoo #
)oo# $
{pp 
sysArrrr 
=rr !
s_UpdateSystem_Arraysrr 2
[rr2 3
updateStagerr3 >
]rr> ?
=rr@ A
newrrB E 
INetworkUpdateSystemrrF Z
[rrZ [
arrLenrr[ a
*=rrb d
$numrre f
]rrf g
;rrg h
}ss 
sysSetuu 
.uu 
CopyTouu 
(uu 
sysArruu $
)uu$ %
;uu% &
ifww 
(ww 
setLenww 
<ww 
arrLenww #
)ww# $
{xx 
sysArrzz 
[zz 
setLenzz !
]zz! "
=zz# $
nullzz% )
;zz) *
}{{ 
}|| 
}}} 	
public
�� 
static
�� 
void
�� )
UnregisterAllNetworkUpdates
�� 6
(
��6 7
this
��7 ;"
INetworkUpdateSystem
��< P
updateSystem
��Q ]
)
��] ^
{
�� 	
foreach
�� 
(
��  
NetworkUpdateStage
�� '
updateStage
��( 3
in
��4 6
Enum
��7 ;
.
��; <
	GetValues
��< E
(
��E F
typeof
��F L
(
��L M 
NetworkUpdateStage
��M _
)
��_ `
)
��` a
)
��a b
{
�� 
UnregisterNetworkUpdate
�� '
(
��' (
updateSystem
��( 4
,
��4 5
updateStage
��6 A
)
��A B
;
��B C
}
�� 
}
�� 	
public
�� 
static
�� 
void
�� %
UnregisterNetworkUpdate
�� 2
(
��2 3
this
��3 7"
INetworkUpdateSystem
��8 L
updateSystem
��M Y
,
��Y Z 
NetworkUpdateStage
��[ m
updateStage
��n y
=
��z {!
NetworkUpdateStage��| �
.��� �
Update��� �
)��� �
{
�� 	
var
�� 
sysSet
�� 
=
�� !
s_UpdateSystem_Sets
�� ,
[
��, -
updateStage
��- 8
]
��8 9
;
��9 :
if
�� 
(
�� 
sysSet
�� 
.
�� 
Contains
�� 
(
��  
updateSystem
��  ,
)
��, -
)
��- .
{
�� 
sysSet
�� 
.
�� 
Remove
�� 
(
�� 
updateSystem
�� *
)
��* +
;
��+ ,
int
�� 
setLen
�� 
=
�� 
sysSet
�� #
.
��# $
Count
��$ )
;
��) *
var
�� 
sysArr
�� 
=
�� #
s_UpdateSystem_Arrays
�� 2
[
��2 3
updateStage
��3 >
]
��> ?
;
��? @
int
�� 
arrLen
�� 
=
�� 
sysArr
�� #
.
��# $
Length
��$ *
;
��* +
sysSet
�� 
.
�� 
CopyTo
�� 
(
�� 
sysArr
�� $
)
��$ %
;
��% &
if
�� 
(
�� 
setLen
�� 
<
�� 
arrLen
�� #
)
��# $
{
�� 
sysArr
�� 
[
�� 
setLen
�� !
]
��! "
=
��# $
null
��% )
;
��) *
}
�� 
}
�� 
}
�� 	
public
�� 
static
��  
NetworkUpdateStage
�� (
UpdateStage
��) 4
;
��4 5
private
�� 
static
�� 
void
�� #
RunNetworkUpdateStage
�� 1
(
��1 2 
NetworkUpdateStage
��2 D
updateStage
��E P
)
��P Q
{
�� 	
UpdateStage
�� 
=
�� 
updateStage
�� %
;
��% &
var
�� 
sysArr
�� 
=
�� #
s_UpdateSystem_Arrays
�� .
[
��. /
updateStage
��/ :
]
��: ;
;
��; <
int
�� 
arrLen
�� 
=
�� 
sysArr
�� 
.
��  
Length
��  &
;
��& '
for
�� 
(
�� 
int
�� 
curIdx
�� 
=
�� 
$num
�� 
;
��  
curIdx
��! '
<
��( )
arrLen
��* 0
;
��0 1
curIdx
��2 8
++
��8 :
)
��: ;
{
�� 
var
�� 
curSys
�� 
=
�� 
sysArr
�� #
[
��# $
curIdx
��$ *
]
��* +
;
��+ ,
if
�� 
(
�� 
curSys
�� 
==
�� 
null
�� "
)
��" #
{
�� 
break
�� 
;
�� 
}
�� 
curSys
�� 
.
�� 

�� $
(
��$ %
updateStage
��% 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
internal
�� 
struct
�� #
NetworkInitialization
�� -
{
�� 	
public
�� 
static
�� 
PlayerLoopSystem
�� *
CreateLoopSystem
��+ ;
(
��; <
)
��< =
{
�� 
return
�� 
new
�� 
PlayerLoopSystem
�� +
{
�� 
type
�� 
=
�� 
typeof
�� !
(
��! "#
NetworkInitialization
��" 7
)
��7 8
,
��8 9
updateDelegate
�� "
=
��# $
(
��% &
)
��& '
=>
��( *#
RunNetworkUpdateStage
��+ @
(
��@ A 
NetworkUpdateStage
��A S
.
��S T
Initialization
��T b
)
��b c
}
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
struct
��  
NetworkEarlyUpdate
�� *
{
�� 	
public
�� 
static
�� 
PlayerLoopSystem
�� *
CreateLoopSystem
��+ ;
(
��; <
)
��< =
{
�� 
return
�� 
new
�� 
PlayerLoopSystem
�� +
{
�� 
type
�� 
=
�� 
typeof
�� !
(
��! " 
NetworkEarlyUpdate
��" 4
)
��4 5
,
��5 6
updateDelegate
�� "
=
��# $
(
��% &
)
��& '
=>
��( *#
RunNetworkUpdateStage
��+ @
(
��@ A 
NetworkUpdateStage
��A S
.
��S T
EarlyUpdate
��T _
)
��_ `
}
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
struct
��  
NetworkFixedUpdate
�� *
{
�� 	
public
�� 
static
�� 
PlayerLoopSystem
�� *
CreateLoopSystem
��+ ;
(
��; <
)
��< =
{
�� 
return
�� 
new
�� 
PlayerLoopSystem
�� +
{
�� 
type
�� 
=
�� 
typeof
�� !
(
��! " 
NetworkFixedUpdate
��" 4
)
��4 5
,
��5 6
updateDelegate
�� "
=
��# $
(
��% &
)
��& '
=>
��( *#
RunNetworkUpdateStage
��+ @
(
��@ A 
NetworkUpdateStage
��A S
.
��S T
FixedUpdate
��T _
)
��_ `
}
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
struct
�� 
NetworkPreUpdate
�� (
{
�� 	
public
�� 
static
�� 
PlayerLoopSystem
�� *
CreateLoopSystem
��+ ;
(
��; <
)
��< =
{
�� 
return
�� 
new
�� 
PlayerLoopSystem
�� +
{
�� 
type
�� 
=
�� 
typeof
�� !
(
��! "
NetworkPreUpdate
��" 2
)
��2 3
,
��3 4
updateDelegate
�� "
=
��# $
(
��% &
)
��& '
=>
��( *#
RunNetworkUpdateStage
��+ @
(
��@ A 
NetworkUpdateStage
��A S
.
��S T
	PreUpdate
��T ]
)
��] ^
}
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
struct
�� 

�� %
{
�� 	
public
�� 
static
�� 
PlayerLoopSystem
�� *
CreateLoopSystem
��+ ;
(
��; <
)
��< =
{
�� 
return
�� 
new
�� 
PlayerLoopSystem
�� +
{
�� 
type
�� 
=
�� 
typeof
�� !
(
��! "

��" /
)
��/ 0
,
��0 1
updateDelegate
�� "
=
��# $
(
��% &
)
��& '
=>
��( *#
RunNetworkUpdateStage
��+ @
(
��@ A 
NetworkUpdateStage
��A S
.
��S T
Update
��T Z
)
��Z [
}
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
struct
�� "
NetworkPreLateUpdate
�� ,
{
�� 	
public
�� 
static
�� 
PlayerLoopSystem
�� *
CreateLoopSystem
��+ ;
(
��; <
)
��< =
{
�� 
return
�� 
new
�� 
PlayerLoopSystem
�� +
{
�� 
type
�� 
=
�� 
typeof
�� !
(
��! ""
NetworkPreLateUpdate
��" 6
)
��6 7
,
��7 8
updateDelegate
�� "
=
��# $
(
��% &
)
��& '
=>
��( *#
RunNetworkUpdateStage
��+ @
(
��@ A 
NetworkUpdateStage
��A S
.
��S T

��T a
)
��a b
}
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
struct
�� #
NetworkPostLateUpdate
�� -
{
�� 	
public
�� 
static
�� 
PlayerLoopSystem
�� *
CreateLoopSystem
��+ ;
(
��; <
)
��< =
{
�� 
return
�� 
new
�� 
PlayerLoopSystem
�� +
{
�� 
type
�� 
=
�� 
typeof
�� !
(
��! "#
NetworkPostLateUpdate
��" 7
)
��7 8
,
��8 9
updateDelegate
�� "
=
��# $
(
��% &
)
��& '
=>
��( *#
RunNetworkUpdateStage
��+ @
(
��@ A 
NetworkUpdateStage
��A S
.
��S T
PostLateUpdate
��T b
)
��b c
}
�� 
;
�� 
}
�� 
}
�� 	
[
�� 	+
RuntimeInitializeOnLoadMethod
��	 &
(
��& ''
RuntimeInitializeLoadType
��' @
.
��@ A#
SubsystemRegistration
��A V
)
��V W
]
��W X
private
�� 
static
�� 
void
�� 

Initialize
�� &
(
��& '
)
��' (
{
�� 	#
UnregisterLoopSystems
�� !
(
��! "
)
��" #
;
��# $!
RegisterLoopSystems
�� 
(
��  
)
��  !
;
��! "
}
�� 	
private
�� 
enum
��  
LoopSystemPosition
�� '
{
�� 	
After
�� 
,
�� 
Before
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
TryAddLoopSystem
�� ,
(
��, -
ref
��- 0
PlayerLoopSystem
��1 A
parentLoopSystem
��B R
,
��R S
PlayerLoopSystem
��T d
childLoopSystem
��e t
,
��t u
Type
��v z
anchorSystemType��{ �
,��� �"
LoopSystemPosition��� �"
loopSystemPosition��� �
)��� �
{
�� 	
int
�� 
systemPosition
�� 
=
��  
-
��! "
$num
��" #
;
��# $
if
�� 
(
�� 
anchorSystemType
��  
!=
��! #
null
��$ (
)
��( )
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
parentLoopSystem
��$ 4
.
��4 5

��5 B
.
��B C
Length
��C I
;
��I J
i
��K L
++
��L N
)
��N O
{
�� 
var
�� 
	subsystem
�� !
=
��" #
parentLoopSystem
��$ 4
.
��4 5

��5 B
[
��B C
i
��C D
]
��D E
;
��E F
if
�� 
(
�� 
	subsystem
�� !
.
��! "
type
��" &
==
��' )
anchorSystemType
��* :
)
��: ;
{
�� 
systemPosition
�� &
=
��' ( 
loopSystemPosition
��) ;
==
��< > 
LoopSystemPosition
��? Q
.
��Q R
After
��R W
?
��X Y
i
��Z [
+
��\ ]
$num
��^ _
:
��` a
i
��b c
;
��c d
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
else
�� 
{
�� 
systemPosition
�� 
=
��   
loopSystemPosition
��! 3
==
��4 6 
LoopSystemPosition
��7 I
.
��I J
After
��J O
?
��P Q
parentLoopSystem
��R b
.
��b c

��c p
.
��p q
Length
��q w
:
��x y
$num
��z {
;
��{ |
}
�� 
if
�� 
(
�� 
systemPosition
�� 
==
�� !
-
��" #
$num
��# $
)
��$ %
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
var
�� 
newSubsystemList
��  
=
��! "
new
��# &
PlayerLoopSystem
��' 7
[
��7 8
parentLoopSystem
��8 H
.
��H I

��I V
.
��V W
Length
��W ]
+
��^ _
$num
��` a
]
��a b
;
��b c
if
�� 
(
�� 
systemPosition
�� 
>
��  
$num
��! "
)
��" #
{
�� 
Array
�� 
.
�� 
Copy
�� 
(
�� 
parentLoopSystem
�� +
.
��+ ,

��, 9
,
��9 :
newSubsystemList
��; K
,
��K L
systemPosition
��M [
)
��[ \
;
��\ ]
}
�� 
newSubsystemList
�� 
[
�� 
systemPosition
�� +
]
��+ ,
=
��- .
childLoopSystem
��/ >
;
��> ?
if
�� 
(
�� 
systemPosition
�� 
<
��  
parentLoopSystem
��! 1
.
��1 2

��2 ?
.
��? @
Length
��@ F
)
��F G
{
�� 
Array
�� 
.
�� 
Copy
�� 
(
�� 
parentLoopSystem
�� +
.
��+ ,

��, 9
,
��9 :
systemPosition
��; I
,
��I J
newSubsystemList
��K [
,
��[ \
systemPosition
��] k
+
��l m
$num
��n o
,
��o p
parentLoopSystem��q �
.��� �

.��� �
Length��� �
-��� �
systemPosition��� �
)��� �
;��� �
}
�� 
parentLoopSystem
�� 
.
�� 

�� *
=
��+ ,
newSubsystemList
��- =
;
��= >
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� !
TryRemoveLoopSystem
�� /
(
��/ 0
ref
��0 3
PlayerLoopSystem
��4 D
parentLoopSystem
��E U
,
��U V
Type
��W [
childSystemType
��\ k
)
��k l
{
�� 	
int
�� 
systemPosition
�� 
=
��  
-
��! "
$num
��" #
;
��# $
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
parentLoopSystem
��  0
.
��0 1

��1 >
.
��> ?
Length
��? E
;
��E F
i
��G H
++
��H J
)
��J K
{
�� 
var
�� 
	subsystem
�� 
=
�� 
parentLoopSystem
��  0
.
��0 1

��1 >
[
��> ?
i
��? @
]
��@ A
;
��A B
if
�� 
(
�� 
	subsystem
�� 
.
�� 
type
�� "
==
��# %
childSystemType
��& 5
)
��5 6
{
�� 
systemPosition
�� "
=
��# $
i
��% &
;
��& '
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
systemPosition
�� 
==
�� !
-
��" #
$num
��# $
)
��$ %
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
var
�� 
newSubsystemList
��  
=
��! "
new
��# &
PlayerLoopSystem
��' 7
[
��7 8
parentLoopSystem
��8 H
.
��H I

��I V
.
��V W
Length
��W ]
-
��^ _
$num
��` a
]
��a b
;
��b c
if
�� 
(
�� 
systemPosition
�� 
>
��  
$num
��! "
)
��" #
{
�� 
Array
�� 
.
�� 
Copy
�� 
(
�� 
parentLoopSystem
�� +
.
��+ ,

��, 9
,
��9 :
newSubsystemList
��; K
,
��K L
systemPosition
��M [
)
��[ \
;
��\ ]
}
�� 
if
�� 
(
�� 
systemPosition
�� 
<
��  
parentLoopSystem
��! 1
.
��1 2

��2 ?
.
��? @
Length
��@ F
-
��G H
$num
��I J
)
��J K
{
�� 
Array
�� 
.
�� 
Copy
�� 
(
�� 
parentLoopSystem
�� +
.
��+ ,

��, 9
,
��9 :
systemPosition
��; I
+
��J K
$num
��L M
,
��M N
newSubsystemList
��O _
,
��_ `
systemPosition
��a o
,
��o p
parentLoopSystem��q �
.��� �

.��� �
Length��� �
-��� �
systemPosition��� �
-��� �
$num��� �
)��� �
;��� �
}
�� 
parentLoopSystem
�� 
.
�� 

�� *
=
��+ ,
newSubsystemList
��- =
;
��= >
return
�� 
true
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
void
�� !
RegisterLoopSystems
�� 0
(
��0 1
)
��1 2
{
�� 	
var
�� 
rootPlayerLoop
�� 
=
��  

PlayerLoop
��! +
.
��+ ,"
GetCurrentPlayerLoop
��, @
(
��@ A
)
��A B
;
��B C
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
rootPlayerLoop
��  .
.
��. /

��/ <
.
��< =
Length
��= C
;
��C D
i
��E F
++
��F H
)
��H I
{
�� 
ref
�� 
var
�� 

�� %
=
��& '
ref
��( +
rootPlayerLoop
��, :
.
��: ;

��; H
[
��H I
i
��I J
]
��J K
;
��K L
if
�� 
(
�� 

�� !
.
��! "
type
��" &
==
��' )
typeof
��* 0
(
��0 1
Initialization
��1 ?
)
��? @
)
��@ A
{
�� 
TryAddLoopSystem
�� $
(
��$ %
ref
��% (

��) 6
,
��6 7#
NetworkInitialization
��8 M
.
��M N
CreateLoopSystem
��N ^
(
��^ _
)
��_ `
,
��` a
null
��b f
,
��f g 
LoopSystemPosition
��h z
.
��z {
After��{ �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6
EarlyUpdate
��6 A
)
��A B
)
��B C
{
�� 
TryAddLoopSystem
�� $
(
��$ %
ref
��% (

��) 6
,
��6 7 
NetworkEarlyUpdate
��8 J
.
��J K
CreateLoopSystem
��K [
(
��[ \
)
��\ ]
,
��] ^
typeof
��_ e
(
��e f
EarlyUpdate
��f q
.
��q r+
ScriptRunDelayedStartupFrame��r �
)��� �
,��� �"
LoopSystemPosition��� �
.��� �
Before��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6
FixedUpdate
��6 A
)
��A B
)
��B C
{
�� 
TryAddLoopSystem
�� $
(
��$ %
ref
��% (

��) 6
,
��6 7 
NetworkFixedUpdate
��8 J
.
��J K
CreateLoopSystem
��K [
(
��[ \
)
��\ ]
,
��] ^
typeof
��_ e
(
��e f
FixedUpdate
��f q
.
��q r,
ScriptRunBehaviourFixedUpdate��r �
)��� �
,��� �"
LoopSystemPosition��� �
.��� �
Before��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6
	PreUpdate
��6 ?
)
��? @
)
��@ A
{
�� 
TryAddLoopSystem
�� $
(
��$ %
ref
��% (

��) 6
,
��6 7
NetworkPreUpdate
��8 H
.
��H I
CreateLoopSystem
��I Y
(
��Y Z
)
��Z [
,
��[ \
typeof
��] c
(
��c d
	PreUpdate
��d m
.
��m n

��n {
)
��{ |
,
��| }!
LoopSystemPosition��~ �
.��� �
Before��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6
Update
��6 <
)
��< =
)
��= >
{
�� 
TryAddLoopSystem
�� $
(
��$ %
ref
��% (

��) 6
,
��6 7

��8 E
.
��E F
CreateLoopSystem
��F V
(
��V W
)
��W X
,
��X Y
typeof
��Z `
(
��` a
Update
��a g
.
��g h'
ScriptRunBehaviourUpdate��h �
)��� �
,��� �"
LoopSystemPosition��� �
.��� �
Before��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6

��6 C
)
��C D
)
��D E
{
�� 
TryAddLoopSystem
�� $
(
��$ %
ref
��% (

��) 6
,
��6 7"
NetworkPreLateUpdate
��8 L
.
��L M
CreateLoopSystem
��M ]
(
��] ^
)
��^ _
,
��_ `
typeof
��a g
(
��g h

��h u
.
��u v+
ScriptRunBehaviourLateUpdate��v �
)��� �
,��� �"
LoopSystemPosition��� �
.��� �
Before��� �
)��� �
;��� �
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6
PostLateUpdate
��6 D
)
��D E
)
��E F
{
�� 
TryAddLoopSystem
�� $
(
��$ %
ref
��% (

��) 6
,
��6 7#
NetworkPostLateUpdate
��8 M
.
��M N
CreateLoopSystem
��N ^
(
��^ _
)
��_ `
,
��` a
typeof
��b h
(
��h i
PostLateUpdate
��i w
.
��w x&
PlayerSendFrameComplete��x �
)��� �
,��� �"
LoopSystemPosition��� �
.��� �
After��� �
)��� �
;��� �
}
�� 
}
�� 

PlayerLoop
�� 
.
�� 

�� $
(
��$ %
rootPlayerLoop
��% 3
)
��3 4
;
��4 5
}
�� 	
internal
�� 
static
�� 
void
�� #
UnregisterLoopSystems
�� 2
(
��2 3
)
��3 4
{
�� 	
var
�� 
rootPlayerLoop
�� 
=
��  

PlayerLoop
��! +
.
��+ ,"
GetCurrentPlayerLoop
��, @
(
��@ A
)
��A B
;
��B C
for
�� 
(
�� 
int
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
�� 
rootPlayerLoop
��  .
.
��. /

��/ <
.
��< =
Length
��= C
;
��C D
i
��E F
++
��F H
)
��H I
{
�� 
ref
�� 
var
�� 

�� %
=
��& '
ref
��( +
rootPlayerLoop
��, :
.
��: ;

��; H
[
��H I
i
��I J
]
��J K
;
��K L
if
�� 
(
�� 

�� !
.
��! "
type
��" &
==
��' )
typeof
��* 0
(
��0 1
Initialization
��1 ?
)
��? @
)
��@ A
{
�� !
TryRemoveLoopSystem
�� '
(
��' (
ref
��( +

��, 9
,
��9 :
typeof
��; A
(
��A B#
NetworkInitialization
��B W
)
��W X
)
��X Y
;
��Y Z
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6
EarlyUpdate
��6 A
)
��A B
)
��B C
{
�� !
TryRemoveLoopSystem
�� '
(
��' (
ref
��( +

��, 9
,
��9 :
typeof
��; A
(
��A B 
NetworkEarlyUpdate
��B T
)
��T U
)
��U V
;
��V W
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6
FixedUpdate
��6 A
)
��A B
)
��B C
{
�� !
TryRemoveLoopSystem
�� '
(
��' (
ref
��( +

��, 9
,
��9 :
typeof
��; A
(
��A B 
NetworkFixedUpdate
��B T
)
��T U
)
��U V
;
��V W
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6
	PreUpdate
��6 ?
)
��? @
)
��@ A
{
�� !
TryRemoveLoopSystem
�� '
(
��' (
ref
��( +

��, 9
,
��9 :
typeof
��; A
(
��A B
NetworkPreUpdate
��B R
)
��R S
)
��S T
;
��T U
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6
Update
��6 <
)
��< =
)
��= >
{
�� !
TryRemoveLoopSystem
�� '
(
��' (
ref
��( +

��, 9
,
��9 :
typeof
��; A
(
��A B

��B O
)
��O P
)
��P Q
;
��Q R
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6

��6 C
)
��C D
)
��D E
{
�� !
TryRemoveLoopSystem
�� '
(
��' (
ref
��( +

��, 9
,
��9 :
typeof
��; A
(
��A B"
NetworkPreLateUpdate
��B V
)
��V W
)
��W X
;
��X Y
}
�� 
else
�� 
if
�� 
(
�� 

�� &
.
��& '
type
��' +
==
��, .
typeof
��/ 5
(
��5 6
PostLateUpdate
��6 D
)
��D E
)
��E F
{
�� !
TryRemoveLoopSystem
�� '
(
��' (
ref
��( +

��, 9
,
��9 :
typeof
��; A
(
��A B#
NetworkPostLateUpdate
��B W
)
��W X
)
��X Y
;
��Y Z
}
�� 
}
�� 

PlayerLoop
�� 
.
�� 

�� $
(
��$ %
rootPlayerLoop
��% 3
)
��3 4
;
��4 5
}
�� 	
}
�� 
}�� �	
}C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\MemoryStructures\UIntFloat.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
[ 
StructLayout 
( 

LayoutKind 
. 
Explicit %
)% &
]& '
internal 
struct
	UIntFloat 
{
[ 	
FieldOffset	 
( 
$num 
) 
] 
public 
float 

FloatValue 
;  
[ 	
FieldOffset	 
( 
$num 
) 
] 
public 
uint 
	UIntValue 
; 
[ 	
FieldOffset	 
( 
$num 
) 
] 
public 
double 
DoubleValue !
;! "
[ 	
FieldOffset	 
( 
$num 
) 
] 
public 
ulong 

ULongValue 
;  
} 
} �
pC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Configuration\NetworkPrefab.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
enum
NetworkPrefabOverride '
{ 
None 
, 
Prefab		 
,		 
Hash

 
} 
[ 
Serializable 
] 
internal 
class

{ 
public !
NetworkPrefabOverride $
Override% -
;- .
public 

GameObject 
Prefab  
;  !
public!! 

GameObject!! "
SourcePrefabToOverride!! 0
;!!0 1
public&& 
uint&&  
SourceHashToOverride&& (
;&&( )
public++ 

GameObject++ "
OverridingTargetPrefab++ 0
;++0 1
},, 
}-- ˕
sC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\FastBufferReader.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

struct 
FastBufferReader "
:# $
IDisposable% 0
{ 
internal 
struct 
ReaderHandle $
{ 	
internal 
unsafe 
byte  
*  !

;/ 0
internal 
int 
Position !
;! "
internal 
int 
Length 
;  
internal 
	Allocator 
	Allocator (
;( )
internal 
int 
AllowedReadMark (
;( )
internal 
bool 
InBitwiseContext *
;* +
} 	
internal 
unsafe 
ReaderHandle $
*$ %
Handle& ,
;, -
public"" 
unsafe"" 
int"" 
Position"" "
{## 	
[$$ 

MethodImpl$$
($$ 
MethodImplOptions$$ )
.$$) *
AggressiveInlining$$* <
)$$< =
]$$= >
get%% 
=>%% 
Handle%% 
->%% 
Position%% #
;%%# $
}&& 	
public++ 
unsafe++ 
int++ 
Length++  
{,, 	
[-- 

MethodImpl--
(-- 
MethodImplOptions-- )
.--) *
AggressiveInlining--* <
)--< =
]--= >
get.. 
=>.. 
Handle.. 
->.. 
Length.. !
;..! "
}// 	
public44 
unsafe44 
bool44 

=>44) +
Handle44, 2
!=443 5
null446 :
;44: ;
[66 	

MethodImpl66	 
(66 
MethodImplOptions66 %
.66% &
AggressiveInlining66& 8
)668 9
]669 :
internal77 
unsafe77 
void77 
CommitBitwiseReads77 /
(77/ 0
int770 3
amount774 :
)77: ;
{88 	
Handle99 
->99 
Position99 
+=99 
amount99  &
;99& '
Handle;; 
->;; 
InBitwiseContext;; $
=;;% &
false;;' ,
;;;, -
}== 	
private?? 
static?? 
unsafe?? 
ReaderHandle?? *
*??* +
CreateHandle??, 8
(??8 9
byte??9 =
*??= >
buffer??? E
,??E F
int??G J
length??K Q
,??Q R
int??S V
offset??W ]
,??] ^
	Allocator??_ h

,??v w
	Allocator	??x �
internalAllocator
??� �
)
??� �
{@@ 	
ReaderHandleAA 
*AA 
readerHandleAA &
=AA' (
nullAA) -
;AA- .
ifBB 
(BB 

==BB  
	AllocatorBB! *
.BB* +
NoneBB+ /
)BB/ 0
{CC 
readerHandleDD 
=DD 
(DD  
ReaderHandleDD  ,
*DD, -
)DD- .

.DD; <
MallocDD< B
(DDB C
sizeofDDC I
(DDI J
ReaderHandleDDJ V
)DDV W
+DDX Y
lengthDDZ `
,DD` a

.DDo p
AlignOfDDp w
<DDw x
byteDDx |
>DD| }
(DD} ~
)DD~ 
,	DD �
internalAllocator
DD� �
)
DD� �
;
DD� �
readerHandleEE 
->EE 

=EE, -
bufferEE. 4
;EE4 5
readerHandleFF 
->FF 
PositionFF &
=FF' (
offsetFF) /
;FF/ 0
}GG 
elseHH 
{II 
readerHandleJJ 
=JJ 
(JJ  
ReaderHandleJJ  ,
*JJ, -
)JJ- .

.JJ; <
MallocJJ< B
(JJB C
sizeofJJC I
(JJI J
ReaderHandleJJJ V
)JJV W
+JJX Y
lengthJJZ `
,JJ` a

.JJo p
AlignOfJJp w
<JJw x
byteJJx |
>JJ| }
(JJ} ~
)JJ~ 
,	JJ �

JJ� �
)
JJ� �
;
JJ� �

.KK 
MemCpyKK $
(KK$ %
readerHandleKK% 1
+KK2 3
$numKK4 5
,KK5 6
bufferKK7 =
+KK> ?
offsetKK@ F
,KKF G
lengthKKH N
)KKN O
;KKO P
readerHandleLL 
->LL 

=LL, -
(LL. /
byteLL/ 3
*LL3 4
)LL4 5
(LL5 6
readerHandleLL6 B
+LLC D
$numLLE F
)LLF G
;LLG H
readerHandleMM 
->MM 
PositionMM &
=MM' (
$numMM) *
;MM* +
}NN 
readerHandlePP 
->PP 
LengthPP  
=PP! "
lengthPP# )
;PP) *
readerHandleUU 
->UU 
	AllocatorUU #
=UU$ %

==UU4 6
	AllocatorUU7 @
.UU@ A
NoneUUA E
?UUF G
internalAllocatorUUH Y
:UUZ [

;UUi j
readerHandleWW 
->WW 
AllowedReadMarkWW )
=WW* +
$numWW, -
;WW- .
readerHandleXX 
->XX 
InBitwiseContextXX *
=XX+ ,
falseXX- 2
;XX2 3
returnZZ 
readerHandleZZ 
;ZZ  
}[[ 	
publicqq 
unsafeqq 
FastBufferReaderqq &
(qq& '
NativeArrayqq' 2
<qq2 3
byteqq3 7
>qq7 8
bufferqq9 ?
,qq? @
	AllocatorqqA J

,qqX Y
intqqZ ]
lengthqq^ d
=qqe f
-qqg h
$numqqh i
,qqi j
intqqk n
offsetqqo u
=qqv w
$numqqx y
,qqy z
	Allocator	qq{ �
internalAllocator
qq� �
=
qq� �
	Allocator
qq� �
.
qq� �
Temp
qq� �
)
qq� �
{rr 	
Handless 
=ss 
CreateHandless !
(ss! "
(ss" #
bytess# '
*ss' (
)ss( )
bufferss) /
.ss/ 0
GetUnsafePtrss0 <
(ss< =
)ss= >
,ss> ?
lengthss@ F
==ssG I
-ssJ K
$numssK L
?ssM N
bufferssO U
.ssU V
LengthssV \
:ss] ^
lengthss_ e
,sse f
offsetssg m
,ssm n

,ss| }
internalAllocator	ss~ �
)
ss� �
;
ss� �
}tt 	
public
�� 
unsafe
�� 
FastBufferReader
�� &
(
��& '
ArraySegment
��' 3
<
��3 4
byte
��4 8
>
��8 9
buffer
��: @
,
��@ A
	Allocator
��B K

��L Y
,
��Y Z
int
��[ ^
length
��_ e
=
��f g
-
��h i
$num
��i j
,
��j k
int
��l o
offset
��p v
=
��w x
$num
��y z
)
��z {
{
�� 	
if
�� 
(
�� 

�� 
==
��  
	Allocator
��! *
.
��* +
None
��+ /
)
��/ 0
{
�� 
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
�� 
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
.
��& '
Array
��' ,
)
��, -
{
�� 
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
��* +
length
��, 2
==
��3 5
-
��6 7
$num
��7 8
?
��9 :
buffer
��; A
.
��A B
Count
��B G
:
��H I
length
��J P
,
��P Q
offset
��R X
,
��X Y

��Z g
,
��g h
	Allocator
��i r
.
��r s
Temp
��s w
)
��w x
;
��x y
}
�� 
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
[
��+ ,
]
��, -
buffer
��. 4
,
��4 5
	Allocator
��6 ?

��@ M
,
��M N
int
��O R
length
��S Y
=
��Z [
-
��\ ]
$num
��] ^
,
��^ _
int
��` c
offset
��d j
=
��k l
$num
��m n
)
��n o
{
�� 	
if
�� 
(
�� 

�� 
==
��  
	Allocator
��! *
.
��* +
None
��+ /
)
��/ 0
{
�� 
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
�� 
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
�� 
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
��* +
length
��, 2
==
��3 5
-
��6 7
$num
��7 8
?
��9 :
buffer
��; A
.
��A B
Length
��B H
:
��I J
length
��K Q
,
��Q R
offset
��S Y
,
��Y Z

��[ h
,
��h i
	Allocator
��j s
.
��s t
Temp
��t x
)
��x y
;
��y z
}
�� 
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
��5 >

��? L
,
��L M
int
��N Q
length
��R X
,
��X Y
int
��Z ]
offset
��^ d
=
��e f
$num
��g h
,
��h i
	Allocator
��j s 
internalAllocator��t �
=��� �
	Allocator��� �
.��� �
Temp��� �
)��� �
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
��( )
length
��* 0
,
��0 1
offset
��2 8
,
��8 9

��: G
,
��G H
internalAllocator
��I Z
)
��Z [
;
��[ \
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
��@ I

��J W
,
��W X
int
��Y \
length
��] c
=
��d e
-
��f g
$num
��g h
,
��h i
int
��j m
offset
��n t
=
��u v
$num
��w x
,
��x y
	Allocator��z �!
internalAllocator��� �
=��� �
	Allocator��� �
.��� �
Temp��� �
)��� �
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
��7 8
length
��9 ?
==
��@ B
-
��C D
$num
��D E
?
��F G
writer
��H N
.
��N O
Length
��O U
:
��V W
length
��X ^
,
��^ _
offset
��` f
,
��f g

��h u
,
��u v 
internalAllocator��w �
)��� �
;��� �
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
FastBufferReader
��' 7
reader
��8 >
,
��> ?
	Allocator
��@ I

��J W
,
��W X
int
��Y \
length
��] c
=
��d e
-
��f g
$num
��g h
,
��h i
int
��j m
offset
��n t
=
��u v
$num
��w x
,
��x y
	Allocator��z �!
internalAllocator��� �
=��� �
	Allocator��� �
.��� �
Temp��� �
)��� �
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
reader
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
��7 8
length
��9 ?
==
��@ B
-
��C D
$num
��D E
?
��F G
reader
��H N
.
��N O
Length
��O U
:
��V W
length
��X ^
,
��^ _
offset
��` f
,
��f g

��h u
,
��u v 
internalAllocator��w �
)��� �
;��� �
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
��9 :
Handle
�� 
=
�� 
null
�� 
;
�� 
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
void
�� 
Seek
�� 
(
��  
int
��  #
where
��$ )
)
��) *
{
�� 	
Handle
�� 
->
�� 
Position
�� 
=
�� 
Math
�� #
.
��# $
Min
��$ '
(
��' (
Length
��( .
,
��. /
where
��0 5
)
��5 6
;
��6 7
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
void
�� 

�� *
(
��* +
int
��+ .
amount
��/ 5
)
��5 6
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
�� 
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
�� 
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
��! "
amount
��# )
>
��* +
Handle
��, 2
->
��2 4
AllowedReadMark
��4 C
)
��C D
{
�� 
throw
�� 
new
�� 
OverflowException
�� +
(
��+ ,
$str
��, d
)
��d e
;
��e f
}
�� 
Handle
�� 
->
�� 
Position
�� 
+=
�� 
amount
��  &
;
��& '
}
�� 	
public
�� 
unsafe
�� 
	BitReader
�� !
EnterBitwiseContext
��  3
(
��3 4
)
��4 5
{
�� 	
Handle
�� 
->
�� 
InBitwiseContext
�� $
=
��% &
true
��' +
;
��+ ,
return
�� 
new
�� 
	BitReader
��  
(
��  !
this
��! %
)
��% &
;
��& '
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
�� 
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
�� 
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
�� 
return
�� 
false
�� 
;
�� 
}
�� 
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
�� 
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
�� 
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
�� 
return
�� 
false
�� 
;
�� 
}
�� 
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
�� 
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
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
bytes
��# (
>
��) *
Handle
��+ 1
->
��1 3
Length
��3 9
)
��9 :
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
if
�� 
(
�� 
Handle
�� 
->
�� 
Position
��  
+
��! "
bytes
��# (
>
��) *
Handle
��+ 1
->
��1 3
AllowedReadMark
��3 B
)
��B C
{
�� 
Handle
�� 
->
�� 
AllowedReadMark
�� '
=
��( )
Handle
��* 0
->
��0 2
Position
��2 :
+
��; <
bytes
��= B
;
��B C
}
�� 
return
�� 
true
�� 
;
�� 
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
byte
�� 
[
�� 
]
�� 
ToArray
�� $
(
��$ %
)
��% &
{
�� 	
byte
�� 
[
�� 
]
�� 
ret
�� 
=
�� 
new
�� 
byte
�� !
[
��! "
Length
��" (
]
��( )
;
��) *
fixed
�� 
(
�� 
byte
�� 
*
�� 
b
�� 
=
�� 
ret
��  
)
��  !
{
�� 

�� 
.
�� 
MemCpy
�� $
(
��$ %
b
��% &
,
��& '
Handle
��( .
->
��. 0

��0 =
,
��= >
Length
��? E
)
��E F
;
��F G
}
�� 
return
�� 
ret
�� 
;
�� 
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
byte
�� 
*
�� 
GetUnsafePtr
�� (
(
��( )
)
��) *
{
�� 	
return
�� 
Handle
�� 
->
�� 

�� (
;
��( )
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
byte
�� 
*
�� +
GetUnsafePtrAtCurrentPosition
�� 9
(
��9 :
)
��: ;
{
�� 	
return
�� 
Handle
�� 
->
�� 

�� (
+
��) *
Handle
��+ 1
->
��1 3
Position
��3 ;
;
��; <
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
}
�� 	
public
�� 
unsafe
�� 
void
�� 

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
�� 
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
�� 
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
�� 
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
�� 
	ReadValue
�� 
(
�� 
out
�� 
uint
�� 
length
�� %
)
��% &
;
��& '
if
�� 
(
�� 
!
�� "
TryBeginReadInternal
�� %
(
��% &
(
��& '
int
��' *
)
��* +
length
��+ 1
*
��2 3
(
��4 5
oneByteChars
��5 A
?
��B C
$num
��D E
:
��F G
sizeof
��H N
(
��N O
char
��O S
)
��S T
)
��T U
)
��U V
)
��V W
{
�� 
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
�� 
s
�� 
=
�� 
$str
�� 
.
�� 
PadRight
�� 
(
�� 
(
�� 
int
��  
)
��  !
length
��! '
)
��' (
;
��( )
int
�� 
target
�� 
=
�� 
s
�� 
.
�� 
Length
�� !
;
��! "
fixed
�� 
(
�� 
char
�� 
*
�� 
native
�� 
=
��  !
s
��" #
)
��# $
{
�� 
if
�� 
(
�� 
oneByteChars
��  
)
��  !
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '
target
��( .
;
��. /
++
��0 2
i
��2 3
)
��3 4
{
�� 
ReadByte
��  
(
��  !
out
��! $
byte
��% )
b
��* +
)
��+ ,
;
��, -
native
�� 
[
�� 
i
��  
]
��  !
=
��" #
(
��$ %
char
��% )
)
��) *
b
��* +
;
��+ ,
}
�� 
}
�� 
else
�� 
{
�� 
	ReadBytes
�� 
(
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
native
��% +
,
��+ ,
target
��- 3
*
��4 5
sizeof
��6 <
(
��< =
char
��= A
)
��A B
)
��B C
;
��C D
}
�� 
}
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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

�� 
=
��  !
Handle
��" (
->
��( *

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
�� 
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
�� 
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
�� 
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
�� 
value
�� 
=
�� 
Handle
�� 
->
�� 

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
�� 
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
�� 
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
�� 
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
�� 
value
�� 
=
�� 
Handle
�� 
->
�� 

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
�� 
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
�� 
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
�� 
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
�� 

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
�� 
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
�� 
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
�� 
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
�� 

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
�� 
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
�� 
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
�� 

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
�� 
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
��9 :
internal
�� 
unsafe
�� 
void
�� 

�� *
<
��* +
T
��+ ,
>
��, -
(
��- .
out
��. 1
T
��2 3
value
��4 9
)
��9 :
where
��; @
T
��A B
:
��C D
	unmanaged
��E N
{
�� 	
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
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
ptr
��% (
;
��( )
	ReadBytes
�� 
(
�� 
bytes
�� 
,
��  
sizeof
��! '
(
��' (
T
��( )
)
��) *
)
��* +
;
��+ ,
}
�� 
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
��9 :
internal
�� 
unsafe
�� 
void
�� 
ReadUnmanagedSafe
�� .
<
��. /
T
��/ 0
>
��0 1
(
��1 2
out
��2 5
T
��6 7
value
��8 =
)
��= >
where
��? D
T
��E F
:
��G H
	unmanaged
��I R
{
�� 	
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
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
ptr
��% (
;
��( )

�� 
(
�� 
bytes
�� #
,
��# $
sizeof
��% +
(
��+ ,
T
��, -
)
��- .
)
��. /
;
��/ 0
}
�� 
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
��9 :
internal
�� 
unsafe
�� 
void
�� 

�� *
<
��* +
T
��+ ,
>
��, -
(
��- .
out
��. 1
T
��2 3
[
��3 4
]
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
�� 	

�� 
(
�� 
out
�� 
int
�� !
sizeInTs
��" *
)
��* +
;
��+ ,
int
�� 
sizeInBytes
�� 
=
�� 
sizeInTs
�� &
*
��' (
sizeof
��) /
(
��/ 0
T
��0 1
)
��1 2
;
��2 3
value
�� 
=
�� 
new
�� 
T
�� 
[
�� 
sizeInTs
�� "
]
��" #
;
��# $
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
�� 
value
�� !
)
��! "
{
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
ptr
��% (
;
��( )
	ReadBytes
�� 
(
�� 
bytes
�� 
,
��  
sizeInBytes
��! ,
)
��, -
;
��- .
}
�� 
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
��9 :
internal
�� 
unsafe
�� 
void
�� 
ReadUnmanagedSafe
�� .
<
��. /
T
��/ 0
>
��0 1
(
��1 2
out
��2 5
T
��6 7
[
��7 8
]
��8 9
value
��: ?
)
��? @
where
��A F
T
��G H
:
��I J
	unmanaged
��K T
{
�� 	
ReadUnmanagedSafe
�� 
(
�� 
out
�� !
int
��" %
sizeInTs
��& .
)
��. /
;
��/ 0
int
�� 
sizeInBytes
�� 
=
�� 
sizeInTs
�� &
*
��' (
sizeof
��) /
(
��/ 0
T
��0 1
)
��1 2
;
��2 3
value
�� 
=
�� 
new
�� 
T
�� 
[
�� 
sizeInTs
�� "
]
��" #
;
��# $
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
�� 
value
�� !
)
��! "
{
�� 
byte
�� 
*
�� 
bytes
�� 
=
�� 
(
�� 
byte
�� #
*
��# $
)
��$ %
ptr
��% (
;
��( )

�� 
(
�� 
bytes
�� #
,
��# $
sizeInBytes
��% 0
)
��0 1
;
��1 2
}
�� 
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
�� 
void
�� 
	ReadValue
�� 
<
�� 
T
�� 
>
��  
(
��  !
out
��! $
T
��% &
value
��' ,
,
��, -
FastBufferWriter
��. >
.
��> ?$
ForNetworkSerializable
��? U
unused
��V \
=
��] ^
default
��_ f
)
��f g
where
��h m
T
��n o
:
��p q#
INetworkSerializable��r �
,��� �
new��� �
(��� �
)��� �
=>��� �'
ReadNetworkSerializable��� �
(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 
	ReadValue
�� 
<
�� 
T
�� 
>
��  
(
��  !
out
��! $
T
��% &
[
��& '
]
��' (
value
��) .
,
��. /
FastBufferWriter
��0 @
.
��@ A$
ForNetworkSerializable
��A W
unused
��X ^
=
��_ `
default
��a h
)
��h i
where
��j o
T
��p q
:
��r s#
INetworkSerializable��t �
,��� �
new��� �
(��� �
)��� �
=>��� �'
ReadNetworkSerializable��� �
(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 

�� !
<
��! "
T
��" #
>
��# $
(
��$ %
out
��% (
T
��) *
value
��+ 0
,
��0 1
FastBufferWriter
��2 B
.
��B C$
ForNetworkSerializable
��C Y
unused
��Z `
=
��a b
default
��c j
)
��j k
where
��l q
T
��r s
:
��t u#
INetworkSerializable��v �
,��� �
new��� �
(��� �
)��� �
=>��� �'
ReadNetworkSerializable��� �
(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 

�� !
<
��! "
T
��" #
>
��# $
(
��$ %
out
��% (
T
��) *
[
��* +
]
��+ ,
value
��- 2
,
��2 3
FastBufferWriter
��4 D
.
��D E$
ForNetworkSerializable
��E [
unused
��\ b
=
��c d
default
��e l
)
��l m
where
��n s
T
��t u
:
��v w#
INetworkSerializable��x �
,��� �
new��� �
(��� �
)��� �
=>��� �'
ReadNetworkSerializable��� �
(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 
	ReadValue
�� 
<
�� 
T
�� 
>
��  
(
��  !
out
��! $
T
��% &
value
��' ,
,
��, -
FastBufferWriter
��. >
.
��> ?

ForStructs
��? I
unused
��J P
=
��Q R
default
��S Z
)
��Z [
where
��\ a
T
��b c
:
��d e
	unmanaged
��f o
,
��o p(
INetworkSerializeByMemcpy��q �
=>��� �

(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 
	ReadValue
�� 
<
�� 
T
�� 
>
��  
(
��  !
out
��! $
T
��% &
[
��& '
]
��' (
value
��) .
,
��. /
FastBufferWriter
��0 @
.
��@ A

ForStructs
��A K
unused
��L R
=
��S T
default
��U \
)
��\ ]
where
��^ c
T
��d e
:
��f g
	unmanaged
��h q
,
��q r(
INetworkSerializeByMemcpy��s �
=>��� �

(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 

�� !
<
��! "
T
��" #
>
��# $
(
��$ %
out
��% (
T
��) *
value
��+ 0
,
��0 1
FastBufferWriter
��2 B
.
��B C

ForStructs
��C M
unused
��N T
=
��U V
default
��W ^
)
��^ _
where
��` e
T
��f g
:
��h i
	unmanaged
��j s
,
��s t(
INetworkSerializeByMemcpy��u �
=>��� �!
ReadUnmanagedSafe��� �
(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 

�� !
<
��! "
T
��" #
>
��# $
(
��$ %
out
��% (
T
��) *
[
��* +
]
��+ ,
value
��- 2
,
��2 3
FastBufferWriter
��4 D
.
��D E

ForStructs
��E O
unused
��P V
=
��W X
default
��Y `
)
��` a
where
��b g
T
��h i
:
��j k
	unmanaged
��l u
,
��u v(
INetworkSerializeByMemcpy��w �
=>��� �!
ReadUnmanagedSafe��� �
(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 
	ReadValue
�� 
<
�� 
T
�� 
>
��  
(
��  !
out
��! $
T
��% &
value
��' ,
,
��, -
FastBufferWriter
��. >
.
��> ?

��? L
unused
��M S
=
��T U
default
��V ]
)
��] ^
where
��_ d
T
��e f
:
��g h
	unmanaged
��i r
,
��r s
IComparable
��t 
,�� �
IConvertible��� �
,��� �
IComparable��� �
<��� �
T��� �
>��� �
,��� �

IEquatable��� �
<��� �
T��� �
>��� �
=>��� �

(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 
	ReadValue
�� 
<
�� 
T
�� 
>
��  
(
��  !
out
��! $
T
��% &
[
��& '
]
��' (
value
��) .
,
��. /
FastBufferWriter
��0 @
.
��@ A

��A N
unused
��O U
=
��V W
default
��X _
)
��_ `
where
��a f
T
��g h
:
��i j
	unmanaged
��k t
,
��t u
IComparable��v �
,��� �
IConvertible��� �
,��� �
IComparable��� �
<��� �
T��� �
>��� �
,��� �

IEquatable��� �
<��� �
T��� �
>��� �
=>��� �

(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 

�� !
<
��! "
T
��" #
>
��# $
(
��$ %
out
��% (
T
��) *
value
��+ 0
,
��0 1
FastBufferWriter
��2 B
.
��B C

��C P
unused
��Q W
=
��X Y
default
��Z a
)
��a b
where
��c h
T
��i j
:
��k l
	unmanaged
��m v
,
��v w
IComparable��x �
,��� �
IConvertible��� �
,��� �
IComparable��� �
<��� �
T��� �
>��� �
,��� �

IEquatable��� �
<��� �
T��� �
>��� �
=>��� �!
ReadUnmanagedSafe��� �
(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 

�� !
<
��! "
T
��" #
>
��# $
(
��$ %
out
��% (
T
��) *
[
��* +
]
��+ ,
value
��- 2
,
��2 3
FastBufferWriter
��4 D
.
��D E

��E R
unused
��S Y
=
��Z [
default
��\ c
)
��c d
where
��e j
T
��k l
:
��m n
	unmanaged
��o x
,
��x y
IComparable��z �
,��� �
IConvertible��� �
,��� �
IComparable��� �
<��� �
T��� �
>��� �
,��� �

IEquatable��� �
<��� �
T��� �
>��� �
=>��� �!
ReadUnmanagedSafe��� �
(��� �
out��� �
value��� �
)��� �
;��� �
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
�� 
void
�� 
	ReadValue
�� 
<
�� 
T
�� 
>
��  
(
��  !
out
��! $
T
��% &
value
��' ,
,
��, -
FastBufferWriter
��. >
.
��> ?
ForEnums
��? G
unused
��H N
=
��O P
default
��Q X
)
��X Y
where
��Z _
T
��` a
:
��b c
	unmanaged
��d m
,
��m n
Enum
��o s
=>
��t v

(��� �
out��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
<
�� 
T
�� 
>
��  
(
��  !
out
��! $
T
��% &
[
��& '
]
��' (
value
��) .
,
��. /
FastBufferWriter
��0 @
.
��@ A
ForEnums
��A I
unused
��J P
=
��Q R
default
��S Z
)
��Z [
where
��\ a
T
��b c
:
��d e
	unmanaged
��f o
,
��o p
Enum
��q u
=>
��v x

(��� �
out��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

�� !
<
��! "
T
��" #
>
��# $
(
��$ %
out
��% (
T
��) *
value
��+ 0
,
��0 1
FastBufferWriter
��2 B
.
��B C
ForEnums
��C K
unused
��L R
=
��S T
default
��U \
)
��\ ]
where
��^ c
T
��d e
:
��f g
	unmanaged
��h q
,
��q r
Enum
��s w
=>
��x z 
ReadUnmanagedSafe��{ �
(��� �
out��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

�� !
<
��! "
T
��" #
>
��# $
(
��$ %
out
��% (
T
��) *
[
��* +
]
��+ ,
value
��- 2
,
��2 3
FastBufferWriter
��4 D
.
��D E
ForEnums
��E M
unused
��N T
=
��U V
default
��W ^
)
��^ _
where
��` e
T
��f g
:
��h i
	unmanaged
��j s
,
��s t
Enum
��u y
=>
��z | 
ReadUnmanagedSafe��} �
(��� �
out��� �
value��� �
)��� �
;��� �
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Vector2
��" )
value
��* /
)
��/ 0
=>
��1 3

��4 A
(
��A B
out
��B E
value
��F K
)
��K L
;
��L M
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Vector2
��" )
[
��) *
]
��* +
value
��, 1
)
��1 2
=>
��3 5

��6 C
(
��C D
out
��D G
value
��H M
)
��M N
;
��N O
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Vector3
��" )
value
��* /
)
��/ 0
=>
��1 3

��4 A
(
��A B
out
��B E
value
��F K
)
��K L
;
��L M
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Vector3
��" )
[
��) *
]
��* +
value
��, 1
)
��1 2
=>
��3 5

��6 C
(
��C D
out
��D G
value
��H M
)
��M N
;
��N O
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !

Vector2Int
��" ,
value
��- 2
)
��2 3
=>
��4 6

��7 D
(
��D E
out
��E H
value
��I N
)
��N O
;
��O P
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !

Vector2Int
��" ,
[
��, -
]
��- .
value
��/ 4
)
��4 5
=>
��6 8

��9 F
(
��F G
out
��G J
value
��K P
)
��P Q
;
��Q R
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !

Vector3Int
��" ,
value
��- 2
)
��2 3
=>
��4 6

��7 D
(
��D E
out
��E H
value
��I N
)
��N O
;
��O P
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !

Vector3Int
��" ,
[
��, -
]
��- .
value
��/ 4
)
��4 5
=>
��6 8

��9 F
(
��F G
out
��G J
value
��K P
)
��P Q
;
��Q R
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Vector4
��" )
value
��* /
)
��/ 0
=>
��1 3

��4 A
(
��A B
out
��B E
value
��F K
)
��K L
;
��L M
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Vector4
��" )
[
��) *
]
��* +
value
��, 1
)
��1 2
=>
��3 5

��6 C
(
��C D
out
��D G
value
��H M
)
��M N
;
��N O
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !

Quaternion
��" ,
value
��- 2
)
��2 3
=>
��4 6

��7 D
(
��D E
out
��E H
value
��I N
)
��N O
;
��O P
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !

Quaternion
��" ,
[
��, -
]
��- .
value
��/ 4
)
��4 5
=>
��6 8

��9 F
(
��F G
out
��G J
value
��K P
)
��P Q
;
��Q R
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Color
��" '
value
��( -
)
��- .
=>
��/ 1

��2 ?
(
��? @
out
��@ C
value
��D I
)
��I J
;
��J K
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Color
��" '
[
��' (
]
��( )
value
��* /
)
��/ 0
=>
��1 3

��4 A
(
��A B
out
��B E
value
��F K
)
��K L
;
��L M
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Color32
��" )
value
��* /
)
��/ 0
=>
��1 3

��4 A
(
��A B
out
��B E
value
��F K
)
��K L
;
��L M
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Color32
��" )
[
��) *
]
��* +
value
��, 1
)
��1 2
=>
��3 5

��6 C
(
��C D
out
��D G
value
��H M
)
��M N
;
��N O
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Ray
��" %
value
��& +
)
��+ ,
=>
��- /

��0 =
(
��= >
out
��> A
value
��B G
)
��G H
;
��H I
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Ray
��" %
[
��% &
]
��& '
value
��( -
)
��- .
=>
��/ 1

��2 ?
(
��? @
out
��@ C
value
��D I
)
��I J
;
��J K
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Ray2D
��" '
value
��( -
)
��- .
=>
��/ 1

��2 ?
(
��? @
out
��@ C
value
��D I
)
��I J
;
��J K
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 
	ReadValue
�� 
(
�� 
out
�� !
Ray2D
��" '
[
��' (
]
��( )
value
��* /
)
��/ 0
=>
��1 3

��4 A
(
��A B
out
��B E
value
��F K
)
��K L
;
��L M
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

�� !
(
��! "
out
��" %
Vector2
��& -
value
��. 3
)
��3 4
=>
��5 7
ReadUnmanagedSafe
��8 I
(
��I J
out
��J M
value
��N S
)
��S T
;
��T U
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

�� !
(
��! "
out
��" %
Vector2
��& -
[
��- .
]
��. /
value
��0 5
)
��5 6
=>
��7 9
ReadUnmanagedSafe
��: K
(
��K L
out
��L O
value
��P U
)
��U V
;
��V W
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

�� !
(
��! "
out
��" %
Vector3
��& -
value
��. 3
)
��3 4
=>
��5 7
ReadUnmanagedSafe
��8 I
(
��I J
out
��J M
value
��N S
)
��S T
;
��T U
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

�� !
(
��! "
out
��" %
Vector3
��& -
[
��- .
]
��. /
value
��0 5
)
��5 6
=>
��7 9
ReadUnmanagedSafe
��: K
(
��K L
out
��L O
value
��P U
)
��U V
;
��V W
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

�� !
(
��! "
out
��" %

Vector2Int
��& 0
value
��1 6
)
��6 7
=>
��8 :
ReadUnmanagedSafe
��; L
(
��L M
out
��M P
value
��Q V
)
��V W
;
��W X
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

�� !
(
��! "
out
��" %

Vector2Int
��& 0
[
��0 1
]
��1 2
value
��3 8
)
��8 9
=>
��: <
ReadUnmanagedSafe
��= N
(
��N O
out
��O R
value
��S X
)
��X Y
;
��Y Z
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

�� !
(
��! "
out
��" %

Vector3Int
��& 0
value
��1 6
)
��6 7
=>
��8 :
ReadUnmanagedSafe
��; L
(
��L M
out
��M P
value
��Q V
)
��V W
;
��W X
[
�� 	

MethodImpl
��	 
(
�� 
MethodImplOptions
�� %
.
��% & 
AggressiveInlining
��& 8
)
��8 9
]
��9 :
public
�� 
void
�� 

�� !
(
��! "
out
��" %

Vector3Int
��& 0
[
��0 1
]
��1 2
value
��3 8
)
��8 9
=>
��: <
ReadUnmanagedSafe
��= N
(
��N O
out
��O R
value
��S X
)
��X Y
;
��Y Z
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %
Vector4
�	�	& -
value
�	�	. 3
)
�	�	3 4
=>
�	�	5 7
ReadUnmanagedSafe
�	�	8 I
(
�	�	I J
out
�	�	J M
value
�	�	N S
)
�	�	S T
;
�	�	T U
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %
Vector4
�	�	& -
[
�	�	- .
]
�	�	. /
value
�	�	0 5
)
�	�	5 6
=>
�	�	7 9
ReadUnmanagedSafe
�	�	: K
(
�	�	K L
out
�	�	L O
value
�	�	P U
)
�	�	U V
;
�	�	V W
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %

Quaternion
�	�	& 0
value
�	�	1 6
)
�	�	6 7
=>
�	�	8 :
ReadUnmanagedSafe
�	�	; L
(
�	�	L M
out
�	�	M P
value
�	�	Q V
)
�	�	V W
;
�	�	W X
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %

Quaternion
�	�	& 0
[
�	�	0 1
]
�	�	1 2
value
�	�	3 8
)
�	�	8 9
=>
�	�	: <
ReadUnmanagedSafe
�	�	= N
(
�	�	N O
out
�	�	O R
value
�	�	S X
)
�	�	X Y
;
�	�	Y Z
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %
Color
�	�	& +
value
�	�	, 1
)
�	�	1 2
=>
�	�	3 5
ReadUnmanagedSafe
�	�	6 G
(
�	�	G H
out
�	�	H K
value
�	�	L Q
)
�	�	Q R
;
�	�	R S
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %
Color
�	�	& +
[
�	�	+ ,
]
�	�	, -
value
�	�	. 3
)
�	�	3 4
=>
�	�	5 7
ReadUnmanagedSafe
�	�	8 I
(
�	�	I J
out
�	�	J M
value
�	�	N S
)
�	�	S T
;
�	�	T U
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %
Color32
�	�	& -
value
�	�	. 3
)
�	�	3 4
=>
�	�	5 7
ReadUnmanagedSafe
�	�	8 I
(
�	�	I J
out
�	�	J M
value
�	�	N S
)
�	�	S T
;
�	�	T U
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %
Color32
�	�	& -
[
�	�	- .
]
�	�	. /
value
�	�	0 5
)
�	�	5 6
=>
�	�	7 9
ReadUnmanagedSafe
�	�	: K
(
�	�	K L
out
�	�	L O
value
�	�	P U
)
�	�	U V
;
�	�	V W
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %
Ray
�	�	& )
value
�	�	* /
)
�	�	/ 0
=>
�	�	1 3
ReadUnmanagedSafe
�	�	4 E
(
�	�	E F
out
�	�	F I
value
�	�	J O
)
�	�	O P
;
�	�	P Q
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %
Ray
�	�	& )
[
�	�	) *
]
�	�	* +
value
�	�	, 1
)
�	�	1 2
=>
�	�	3 5
ReadUnmanagedSafe
�	�	6 G
(
�	�	G H
out
�	�	H K
value
�	�	L Q
)
�	�	Q R
;
�	�	R S
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %
Ray2D
�	�	& +
value
�	�	, 1
)
�	�	1 2
=>
�	�	3 5
ReadUnmanagedSafe
�	�	6 G
(
�	�	G H
out
�	�	H K
value
�	�	L Q
)
�	�	Q R
;
�	�	R S
[
�	�	 	

MethodImpl
�	�		 
(
�	�	 
MethodImplOptions
�	�	 %
.
�	�	% & 
AggressiveInlining
�	�	& 8
)
�	�	8 9
]
�	�	9 :
public
�	�	 
void
�	�	 

�	�	 !
(
�	�	! "
out
�	�	" %
Ray2D
�	�	& +
[
�	�	+ ,
]
�	�	, -
value
�	�	. 3
)
�	�	3 4
=>
�	�	5 7
ReadUnmanagedSafe
�	�	8 I
(
�	�	I J
out
�	�	J M
value
�	�	N S
)
�	�	S T
;
�	�	T U
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
unsafe
�
�
 
void
�
�
 
	ReadValue
�
�
 $
<
�
�
$ %
T
�
�
% &
>
�
�
& '
(
�
�
' (
out
�
�
( +
T
�
�
, -
value
�
�
. 3
,
�
�
3 4
FastBufferWriter
�
�
5 E
.
�
�
E F
ForFixedStrings
�
�
F U
unused
�
�
V \
=
�
�
] ^
default
�
�
_ f
)
�
�
f g
where
�
�
 
T
�
�
 
:
�
�
 
	unmanaged
�
�
 
,
�
�
  
INativeList
�
�
! ,
<
�
�
, -
byte
�
�
- 1
>
�
�
1 2
,
�
�
2 3

IUTF8Bytes
�
�
4 >
{
�
�
 	

�
�
 
(
�
�
 
out
�
�
 
int
�
�
 !
length
�
�
" (
)
�
�
( )
;
�
�
) *
value
�
�
 
=
�
�
 
new
�
�
 
T
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
value
�
�
 
.
�
�
 
Length
�
�
 
=
�
�
 
length
�
�
 !
;
�
�
! "
	ReadBytes
�
�
 
(
�
�
 
value
�
�
 
.
�
�
 
GetUnsafePtr
�
�
 (
(
�
�
( )
)
�
�
) *
,
�
�
* +
length
�
�
, 2
)
�
�
2 3
;
�
�
3 4
}
�
�
 	
[
�
�
 	

MethodImpl
�
�
	 
(
�
�
 
MethodImplOptions
�
�
 %
.
�
�
% & 
AggressiveInlining
�
�
& 8
)
�
�
8 9
]
�
�
9 :
public
�
�
 
unsafe
�
�
 
void
�
�
 

�
�
 (
<
�
�
( )
T
�
�
) *
>
�
�
* +
(
�
�
+ ,
out
�
�
, /
T
�
�
0 1
value
�
�
2 7
,
�
�
7 8
FastBufferWriter
�
�
9 I
.
�
�
I J
ForFixedStrings
�
�
J Y
unused
�
�
Z `
=
�
�
a b
default
�
�
c j
)
�
�
j k
where
�
�
 
T
�
�
 
:
�
�
 
	unmanaged
�
�
 
,
�
�
  
INativeList
�
�
! ,
<
�
�
, -
byte
�
�
- 1
>
�
�
1 2
,
�
�
2 3

IUTF8Bytes
�
�
4 >
{
�
�
 	
ReadUnmanagedSafe
�
�
 
(
�
�
 
out
�
�
 !
int
�
�
" %
length
�
�
& ,
)
�
�
, -
;
�
�
- .
value
�
�
 
=
�
�
 
new
�
�
 
T
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
value
�
�
 
.
�
�
 
Length
�
�
 
=
�
�
 
length
�
�
 !
;
�
�
! "

�
�
 
(
�
�
 
value
�
�
 
.
�
�
  
GetUnsafePtr
�
�
  ,
(
�
�
, -
)
�
�
- .
,
�
�
. /
length
�
�
0 6
)
�
�
6 7
;
�
�
7 8
}
�
�
 	
}
�
�
 
}�
�
 �
yC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Transports\UTP\NetworkMetricsContext.cs
	namespace 	
Unity
 
. 
Netcode 
. 

Transports "
." #
UTP# &
{ 
public 

struct !
NetworkMetricsContext '
{ 
public 
uint 
PacketSentCount #
;# $
public 
uint 
PacketReceivedCount '
;' (
} 
} �
hC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\RpcParams.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

struct 
ServerRpcSendParams %
{
} 
public 

struct "
ServerRpcReceiveParams (
{ 
public 
ulong 
SenderClientId #
;# $
} 
public!! 

struct!! 
ServerRpcParams!! !
{"" 
public&& 
ServerRpcSendParams&& "
Send&&# '
;&&' (
public++ "
ServerRpcReceiveParams++ %
Receive++& -
;++- .
},, 
public44 

struct44 
ClientRpcSendParams44 %
{55 
public;; 

<;; 
ulong;; "
>;;" #
TargetClientIds;;$ 3
;;;3 4
publicAA 
NativeArrayAA 
<AA 
ulongAA  
>AA  !
?AA! "&
TargetClientIdsNativeArrayAA# =
;AA= >
}BB 
publicII 

structII "
ClientRpcReceiveParamsII (
{JJ 
}KK 
publicTT 

structTT 
ClientRpcParamsTT !
{UU 
publicYY 
ClientRpcSendParamsYY "
SendYY# '
;YY' (
public^^ "
ClientRpcReceiveParams^^ %
Receive^^& -
;^^- .
}__ 
internalcc 
structcc
__RpcParamscc 
{ee 
publicff 
ServerRpcParamsff 
Serverff %
;ff% &
publicgg 
ClientRpcParamsgg 
Clientgg %
;gg% &
}hh 
}ii ��
jC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Hashing\XXHash\XXHash.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
static
class 
XXHash  
{ 
private 
const 
ulong 
k_Prime64v1 '
=( )
$num* @
;@ A
private 
const 
ulong 
k_Prime64v2 '
=( )
$num* @
;@ A
private 
const 
ulong 
k_Prime64v3 '
=( )
$num* ?
;? @
private 
const 
ulong 
k_Prime64v4 '
=( )
$num* ?
;? @
private 
const 
ulong 
k_Prime64v5 '
=( )
$num* ?
;? @
private 
const 
uint 
k_Prime32v1 &
=' (
$num) 4
;4 5
private 
const 
uint 
k_Prime32v2 &
=' (
$num) 4
;4 5
private 
const 
uint 
k_Prime32v3 &
=' (
$num) 4
;4 5
private 
const 
uint 
k_Prime32v4 &
=' (
$num) 3
;3 4
private 
const 
uint 
k_Prime32v5 &
=' (
$num) 3
;3 4
public 
static 
uint 
Hash32 !
(! "
string" (
text) -
)- .
=>/ 1
Hash322 8
(8 9
text9 =
,= >
Encoding? G
.G H
UTF8H L
)L M
;M N
public 
static 
uint 
Hash32 !
(! "
string" (
text) -
,- .
Encoding/ 7
encoding8 @
)@ A
=>B D
Hash32E K
(K L
encodingL T
.T U
GetBytesU ]
(] ^
text^ b
)b c
)c d
;d e
public   
static   
uint   
Hash32   !
(  ! "
byte  " &
[  & '
]  ' (
buffer  ) /
)  / 0
{!! 	
unsafe"" 
{## 
fixed$$ 
($$ 
byte$$ 
*$$ 
ptr$$  
=$$! "
buffer$$# )
)$$) *
{%% 
return&& 
Hash32&& !
(&&! "
ptr&&" %
,&&% &
buffer&&' -
.&&- .
Length&&. 4
)&&4 5
;&&5 6
}'' 
}(( 
})) 	
public22 
static22 
unsafe22 
uint22 !
Hash3222" (
(22( )
byte22) -
*22- .
buffer22/ 5
,225 6
int227 :
bufferLength22; G
,22G H
uint22I M
seed22N R
=22S T
$num22U V
)22V W
{33 	
const44 
int44 
stripeLength44 "
=44# $
$num44% '
;44' (
int66 
len66 
=66 
bufferLength66 "
;66" #
int77 
remainingLen77 
=77 
len77 "
;77" #
uint88 
acc88 
;88 
byte:: 
*:: 
pInput:: 
=:: 
buffer:: !
;::! "
if;; 
(;; 
len;; 
>=;; 
stripeLength;; #
);;# $
{<< 
uint== 
acc1== 
=== 
seed==  
+==! "
k_Prime32v1==# .
+==/ 0
k_Prime32v2==1 <
;==< =
uint>> 
acc2>> 
=>> 
seed>>  
+>>! "
k_Prime32v2>># .
;>>. /
uint?? 
acc3?? 
=?? 
seed??  
;??  !
uint@@ 
acc4@@ 
=@@ 
seed@@  
-@@! "
k_Prime32v1@@# .
;@@. /
doBB 
{CC 
accDD 
=DD 
processStripe32DD )
(DD) *
refDD* -
pInputDD. 4
,DD4 5
refDD6 9
acc1DD: >
,DD> ?
refDD@ C
acc2DDD H
,DDH I
refDDJ M
acc3DDN R
,DDR S
refDDT W
acc4DDX \
)DD\ ]
;DD] ^
remainingLenEE  
-=EE! #
stripeLengthEE$ 0
;EE0 1
}FF 
whileFF 
(FF 
remainingLenFF %
>=FF& (
stripeLengthFF) 5
)FF5 6
;FF6 7
}GG 
elseHH 
{II 
accJJ 
=JJ 
seedJJ 
+JJ 
k_Prime32v5JJ (
;JJ( )
}KK 
accMM 
+=MM 
(MM 
uintMM 
)MM 
lenMM 
;MM 
accNN 
=NN 
processRemaining32NN $
(NN$ %
pInputNN% +
,NN+ ,
accNN- 0
,NN0 1
remainingLenNN2 >
)NN> ?
;NN? @
returnPP 
avalanche32PP 
(PP 
accPP "
)PP" #
;PP# $
}QQ 	
publicSS 
staticSS 
ulongSS 
Hash64SS "
(SS" #
stringSS# )
textSS* .
)SS. /
=>SS0 2
Hash64SS3 9
(SS9 :
textSS: >
,SS> ?
EncodingSS@ H
.SSH I
UTF8SSI M
)SSM N
;SSN O
publicTT 
staticTT 
ulongTT 
Hash64TT "
(TT" #
stringTT# )
textTT* .
,TT. /
EncodingTT0 8
encodingTT9 A
)TTA B
=>TTC E
Hash64TTF L
(TTL M
encodingTTM U
.TTU V
GetBytesTTV ^
(TT^ _
textTT_ c
)TTc d
)TTd e
;TTe f
publicUU 
staticUU 
ulongUU 
Hash64UU "
(UU" #
byteUU# '
[UU' (
]UU( )
bufferUU* 0
)UU0 1
{VV 	
unsafeWW 
{XX 
fixedYY 
(YY 
byteYY 
*YY 
ptrYY  
=YY! "
bufferYY# )
)YY) *
{ZZ 
return[[ 
Hash64[[ !
([[! "
ptr[[" %
,[[% &
buffer[[' -
.[[- .
Length[[. 4
)[[4 5
;[[5 6
}\\ 
}]] 
}^^ 	
publicgg 
staticgg 
unsafegg 
ulonggg "
Hash64gg# )
(gg) *
bytegg* .
*gg. /
buffergg0 6
,gg6 7
intgg8 ;
bufferLengthgg< H
,ggH I
ulongggJ O
seedggP T
=ggU V
$numggW X
)ggX Y
{hh 	
constii 
intii 
stripeLengthii "
=ii# $
$numii% '
;ii' (
intkk 
lenkk 
=kk 
bufferLengthkk "
;kk" #
intll 
remainingLenll 
=ll 
lenll "
;ll" #
ulongmm 
accmm 
;mm 
byteoo 
*oo 
pInputoo 
=oo 
bufferoo !
;oo! "
ifpp 
(pp 
lenpp 
>=pp 
stripeLengthpp #
)pp# $
{qq 
ulongrr 
acc1rr 
=rr 
seedrr !
+rr" #
k_Prime64v1rr$ /
+rr0 1
k_Prime64v2rr2 =
;rr= >
ulongss 
acc2ss 
=ss 
seedss !
+ss" #
k_Prime64v2ss$ /
;ss/ 0
ulongtt 
acc3tt 
=tt 
seedtt !
;tt! "
ulonguu 
acc4uu 
=uu 
seeduu !
-uu" #
k_Prime64v1uu$ /
;uu/ 0
doww 
{xx 
accyy 
=yy 
processStripe64yy )
(yy) *
refyy* -
pInputyy. 4
,yy4 5
refyy6 9
acc1yy: >
,yy> ?
refyy@ C
acc2yyD H
,yyH I
refyyJ M
acc3yyN R
,yyR S
refyyT W
acc4yyX \
)yy\ ]
;yy] ^
remainingLenzz  
-=zz! #
stripeLengthzz$ 0
;zz0 1
}{{ 
while{{ 
({{ 
remainingLen{{ %
>={{& (
stripeLength{{) 5
){{5 6
;{{6 7
}|| 
else}} 
{~~ 
acc 
= 
seed 
+ 
k_Prime64v5 (
;( )
}
�� 
acc
�� 
+=
�� 
(
�� 
ulong
�� 
)
�� 
len
�� 
;
�� 
acc
�� 
=
��  
processRemaining64
�� $
(
��$ %
pInput
��% +
,
��+ ,
acc
��- 0
,
��0 1
remainingLen
��2 >
)
��> ?
;
��? @
return
�� 
avalanche64
�� 
(
�� 
acc
�� "
)
��" #
;
��# $
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
static
�� 
unsafe
�� 
ulong
�� #
processStripe64
��$ 3
(
��3 4
ref
�� 
byte
�� 
*
�� 
pInput
�� 
,
�� 
ref
�� 
ulong
�� 
acc1
�� 
,
�� 
ref
�� 
ulong
�� 
acc2
�� 
,
�� 
ref
�� 
ulong
�� 
acc3
�� 
,
�� 
ref
�� 
ulong
�� 
acc4
�� 
)
�� 
{
�� 	

�� 
(
�� 
ref
�� 
acc1
�� "
,
��" #
ref
��$ '
pInput
��( .
)
��. /
;
��/ 0

�� 
(
�� 
ref
�� 
acc2
�� "
,
��" #
ref
��$ '
pInput
��( .
)
��. /
;
��/ 0

�� 
(
�� 
ref
�� 
acc3
�� "
,
��" #
ref
��$ '
pInput
��( .
)
��. /
;
��/ 0

�� 
(
�� 
ref
�� 
acc4
�� "
,
��" #
ref
��$ '
pInput
��( .
)
��. /
;
��/ 0
ulong
�� 
acc
�� 
=
�� 
Bits
�� 
.
�� 

RotateLeft
�� '
(
��' (
acc1
��( ,
,
��, -
$num
��. /
)
��/ 0
+
�� 
Bits
�� 
.
�� 

RotateLeft
�� )
(
��) *
acc2
��* .
,
��. /
$num
��0 1
)
��1 2
+
�� 
Bits
�� 
.
�� 

RotateLeft
�� )
(
��) *
acc3
��* .
,
��. /
$num
��0 2
)
��2 3
+
�� 
Bits
�� 
.
�� 

RotateLeft
�� )
(
��) *
acc4
��* .
,
��. /
$num
��0 2
)
��2 3
;
��3 4 
mergeAccumulator64
�� 
(
�� 
ref
�� "
acc
��# &
,
��& '
acc1
��( ,
)
��, -
;
��- . 
mergeAccumulator64
�� 
(
�� 
ref
�� "
acc
��# &
,
��& '
acc2
��( ,
)
��, -
;
��- . 
mergeAccumulator64
�� 
(
�� 
ref
�� "
acc
��# &
,
��& '
acc3
��( ,
)
��, -
;
��- . 
mergeAccumulator64
�� 
(
�� 
ref
�� "
acc
��# &
,
��& '
acc4
��( ,
)
��, -
;
��- .
return
�� 
acc
�� 
;
�� 
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
static
�� 
unsafe
�� 
void
�� "

��# 0
(
��0 1
ref
��1 4
ulong
��5 :
accn
��; ?
,
��? @
ref
��A D
byte
��E I
*
��I J
pInput
��K Q
)
��Q R
{
�� 	
ulong
�� 
lane
�� 
=
�� 
*
�� 
(
�� 
ulong
��  
*
��  !
)
��! "
pInput
��" (
;
��( )
accn
�� 
=
�� 
round64
�� 
(
�� 
accn
�� 
,
��  
lane
��! %
)
��% &
;
��& '
pInput
�� 
+=
�� 
$num
�� 
;
�� 
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
static
�� 
unsafe
�� 
ulong
�� # 
processRemaining64
��$ 6
(
��6 7
byte
�� 
*
�� 
pInput
�� 
,
�� 
ulong
�� 
acc
�� 
,
�� 
int
�� 
remainingLen
�� 
)
�� 
{
�� 	
for
�� 
(
�� 
ulong
�� 
lane
�� 
;
�� 
remainingLen
�� )
>=
��* ,
$num
��- .
;
��. /
remainingLen
��0 <
-=
��= ?
$num
��@ A
,
��A B
pInput
��C I
+=
��J L
$num
��M N
)
��N O
{
�� 
lane
�� 
=
�� 
*
�� 
(
�� 
ulong
�� 
*
�� 
)
��  
pInput
��  &
;
��& '
acc
�� 
^=
�� 
round64
�� 
(
�� 
$num
��  
,
��  !
lane
��" &
)
��& '
;
��' (
acc
�� 
=
�� 
Bits
�� 
.
�� 

RotateLeft
�� %
(
��% &
acc
��& )
,
��) *
$num
��+ -
)
��- .
*
��/ 0
k_Prime64v1
��1 <
;
��< =
acc
�� 
+=
�� 
k_Prime64v4
�� "
;
��" #
}
�� 
for
�� 
(
�� 
uint
�� 
lane32
�� 
;
�� 
remainingLen
�� *
>=
��+ -
$num
��. /
;
��/ 0
remainingLen
��1 =
-=
��> @
$num
��A B
,
��B C
pInput
��D J
+=
��K M
$num
��N O
)
��O P
{
�� 
lane32
�� 
=
�� 
*
�� 
(
�� 
uint
�� 
*
��  
)
��  !
pInput
��! '
;
��' (
acc
�� 
^=
�� 
lane32
�� 
*
�� 
k_Prime64v1
��  +
;
��+ ,
acc
�� 
=
�� 
Bits
�� 
.
�� 

RotateLeft
�� %
(
��% &
acc
��& )
,
��) *
$num
��+ -
)
��- .
*
��/ 0
k_Prime64v2
��1 <
;
��< =
acc
�� 
+=
�� 
k_Prime64v3
�� "
;
��" #
}
�� 
for
�� 
(
�� 
byte
�� 
lane8
�� 
;
�� 
remainingLen
�� )
>=
��* ,
$num
��- .
;
��. /
remainingLen
��0 <
--
��< >
,
��> ?
pInput
��@ F
++
��F H
)
��H I
{
�� 
lane8
�� 
=
�� 
*
�� 
pInput
�� 
;
��  
acc
�� 
^=
�� 
lane8
�� 
*
�� 
k_Prime64v5
�� *
;
��* +
acc
�� 
=
�� 
Bits
�� 
.
�� 

RotateLeft
�� %
(
��% &
acc
��& )
,
��) *
$num
��+ -
)
��- .
*
��/ 0
k_Prime64v1
��1 <
;
��< =
}
�� 
return
�� 
acc
�� 
;
�� 
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
static
�� 
ulong
�� 
avalanche64
�� (
(
��( )
ulong
��) .
acc
��/ 2
)
��2 3
{
�� 	
acc
�� 
^=
�� 
acc
�� 
>>
�� 
$num
�� 
;
�� 
acc
�� 
*=
�� 
k_Prime64v2
�� 
;
�� 
acc
�� 
^=
�� 
acc
�� 
>>
�� 
$num
�� 
;
�� 
acc
�� 
*=
�� 
k_Prime64v3
�� 
;
�� 
acc
�� 
^=
�� 
acc
�� 
>>
�� 
$num
�� 
;
�� 
return
�� 
acc
�� 
;
�� 
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
static
�� 
ulong
�� 
round64
�� $
(
��$ %
ulong
��% *
accn
��+ /
,
��/ 0
ulong
��1 6
lane
��7 ;
)
��; <
{
�� 	
accn
�� 
+=
�� 
lane
�� 
*
�� 
k_Prime64v2
�� &
;
��& '
return
�� 
Bits
�� 
.
�� 

RotateLeft
�� "
(
��" #
accn
��# '
,
��' (
$num
��) +
)
��+ ,
*
��- .
k_Prime64v1
��/ :
;
��: ;
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
static
�� 
void
��  
mergeAccumulator64
�� .
(
��. /
ref
��/ 2
ulong
��3 8
acc
��9 <
,
��< =
ulong
��> C
accn
��D H
)
��H I
{
�� 	
acc
�� 
^=
�� 
round64
�� 
(
�� 
$num
�� 
,
�� 
accn
�� "
)
��" #
;
��# $
acc
�� 
*=
�� 
k_Prime64v1
�� 
;
�� 
acc
�� 
+=
�� 
k_Prime64v4
�� 
;
�� 
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
static
�� 
unsafe
�� 
uint
�� "
processStripe32
��# 2
(
��2 3
ref
�� 
byte
�� 
*
�� 
pInput
�� 
,
�� 
ref
�� 
uint
�� 
acc1
�� 
,
�� 
ref
�� 
uint
�� 
acc2
�� 
,
�� 
ref
�� 
uint
�� 
acc3
�� 
,
�� 
ref
�� 
uint
�� 
acc4
�� 
)
�� 
{
�� 	

�� 
(
�� 
ref
�� 
pInput
�� $
,
��$ %
ref
��& )
acc1
��* .
)
��. /
;
��/ 0

�� 
(
�� 
ref
�� 
pInput
�� $
,
��$ %
ref
��& )
acc2
��* .
)
��. /
;
��/ 0

�� 
(
�� 
ref
�� 
pInput
�� $
,
��$ %
ref
��& )
acc3
��* .
)
��. /
;
��/ 0

�� 
(
�� 
ref
�� 
pInput
�� $
,
��$ %
ref
��& )
acc4
��* .
)
��. /
;
��/ 0
return
�� 
Bits
�� 
.
�� 

RotateLeft
�� "
(
��" #
acc1
��# '
,
��' (
$num
��) *
)
��* +
+
�� 
Bits
�� 
.
�� 

RotateLeft
�� $
(
��$ %
acc2
��% )
,
��) *
$num
��+ ,
)
��, -
+
�� 
Bits
�� 
.
�� 

RotateLeft
�� $
(
��$ %
acc3
��% )
,
��) *
$num
��+ -
)
��- .
+
�� 
Bits
�� 
.
�� 

RotateLeft
�� $
(
��$ %
acc4
��% )
,
��) *
$num
��+ -
)
��- .
;
��. /
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
static
�� 
unsafe
�� 
void
�� "

��# 0
(
��0 1
ref
��1 4
byte
��5 9
*
��9 :
pInput
��; A
,
��A B
ref
��C F
uint
��G K
accn
��L P
)
��P Q
{
�� 	
uint
�� 
lane
�� 
=
�� 
*
�� 
(
�� 
uint
�� 
*
�� 
)
��  
pInput
��  &
;
��& '
accn
�� 
=
�� 
round32
�� 
(
�� 
accn
�� 
,
��  
lane
��! %
)
��% &
;
��& '
pInput
�� 
+=
�� 
$num
�� 
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
��9 :
private
�� 
static
�� 
unsafe
�� 
uint
�� " 
processRemaining32
��# 5
(
��5 6
byte
�� 
*
�� 
pInput
�� 
,
�� 
uint
�� 
acc
�� 
,
�� 
int
�� 
remainingLen
�� 
)
�� 
{
�� 	
for
�� 
(
�� 
uint
�� 
lane
�� 
;
�� 
remainingLen
�� (
>=
��) +
$num
��, -
;
��- .
remainingLen
��/ ;
-=
��< >
$num
��? @
,
��@ A
pInput
��B H
+=
��I K
$num
��L M
)
��M N
{
�� 
lane
�� 
=
�� 
*
�� 
(
�� 
uint
�� 
*
�� 
)
�� 
pInput
�� %
;
��% &
acc
�� 
+=
�� 
lane
�� 
*
�� 
k_Prime32v3
�� )
;
��) *
acc
�� 
=
�� 
Bits
�� 
.
�� 

RotateLeft
�� %
(
��% &
acc
��& )
,
��) *
$num
��+ -
)
��- .
*
��/ 0
k_Prime32v4
��1 <
;
��< =
}
�� 
for
�� 
(
�� 
byte
�� 
lane
�� 
;
�� 
remainingLen
�� (
>=
��) +
$num
��, -
;
��- .
remainingLen
��/ ;
--
��; =
,
��= >
pInput
��? E
++
��E G
)
��G H
{
�� 
lane
�� 
=
�� 
*
�� 
pInput
�� 
;
�� 
acc
�� 
+=
�� 
lane
�� 
*
�� 
k_Prime32v5
�� )
;
��) *
acc
�� 
=
�� 
Bits
�� 
.
�� 

RotateLeft
�� %
(
��% &
acc
��& )
,
��) *
$num
��+ -
)
��- .
*
��/ 0
k_Prime32v1
��1 <
;
��< =
}
�� 
return
�� 
acc
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
��9 :
private
�� 
static
�� 
uint
�� 
round32
�� #
(
��# $
uint
��$ (
accn
��) -
,
��- .
uint
��/ 3
lane
��4 8
)
��8 9
{
�� 	
accn
�� 
+=
�� 
lane
�� 
*
�� 
k_Prime32v2
�� &
;
��& '
accn
�� 
=
�� 
Bits
�� 
.
�� 

RotateLeft
�� "
(
��" #
accn
��# '
,
��' (
$num
��) +
)
��+ ,
;
��, -
accn
�� 
*=
�� 
k_Prime32v1
�� 
;
��  
return
�� 
accn
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
��9 :
private
�� 
static
�� 
uint
�� 
avalanche32
�� '
(
��' (
uint
��( ,
acc
��- 0
)
��0 1
{
�� 	
acc
�� 
^=
�� 
acc
�� 
>>
�� 
$num
�� 
;
�� 
acc
�� 
*=
�� 
k_Prime32v2
�� 
;
�� 
acc
�� 
^=
�� 
acc
�� 
>>
�� 
$num
�� 
;
�� 
acc
�� 
*=
�� 
k_Prime32v3
�� 
;
�� 
acc
�� 
^=
�� 
acc
�� 
>>
�� 
$num
�� 
;
�� 
return
�� 
acc
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
class
�� 
Bits
�� !
{
�� 	
[
�� 

MethodImpl
��
(
�� 
MethodImplOptions
�� )
.
��) * 
AggressiveInlining
��* <
)
��< =
]
��= >
internal
�� 
static
�� 
ulong
�� !

RotateLeft
��" ,
(
��, -
ulong
��- 2
value
��3 8
,
��8 9
int
��: =
bits
��> B
)
��B C
{
�� 
return
�� 
(
�� 
value
�� 
<<
��  
bits
��! %
)
��% &
|
��' (
(
��) *
value
��* /
>>
��0 2
(
��3 4
$num
��4 6
-
��7 8
bits
��9 =
)
��= >
)
��> ?
;
��? @
}
�� 
[
�� 

MethodImpl
��
(
�� 
MethodImplOptions
�� )
.
��) * 
AggressiveInlining
��* <
)
��< =
]
��= >
internal
�� 
static
�� 
uint
��  

RotateLeft
��! +
(
��+ ,
uint
��, 0
value
��1 6
,
��6 7
int
��8 ;
bits
��< @
)
��@ A
{
�� 
return
�� 
(
�� 
value
�� 
<<
��  
bits
��! %
)
��% &
|
��' (
(
��) *
value
��* /
>>
��0 2
(
��3 4
$num
��4 6
-
��7 8
bits
��9 =
)
��= >
)
��> ?
;
��? @
}
�� 
}
�� 	
}
�� 
}�� �
mC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\NetworkContext.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
ref
struct 
NetworkContext &
{ 
public 
object 
SystemOwner !
;! "
public 
ulong 
SenderId 
; 
public 
float 
	Timestamp 
; 
public 

Header #
;# $
public   
int    
SerializedHeaderSize   '
;  ' (
public%% 
uint%% 
MessageSize%% 
;%%  
}&& 
}'' �;
gC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Logging\NetworkLog.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

static 
class 

NetworkLog "
{		 
public 
static 
LogLevel 
CurrentLogLevel .
=>/ 1
NetworkManager2 @
.@ A
	SingletonA J
==K M
nullN R
?S T
LogLevelU ]
.] ^
Normal^ d
:e f
NetworkManagerg u
.u v
	Singletonv 
.	 �
LogLevel
� �
;
� �
public 
static 
void 
LogInfo "
(" #
string# )
message* 1
)1 2
=>3 5
Debug6 ;
.; <
Log< ?
(? @
$"@ B
$strB L
{L M
messageM T
}T U
"U V
)V W
;W X
public 
static 
void 

LogWarning %
(% &
string& ,
message- 4
)4 5
=>6 8
Debug9 >
.> ?

LogWarning? I
(I J
$"J L
$strL V
{V W
messageW ^
}^ _
"_ `
)` a
;a b
public"" 
static"" 
void"" 
LogError"" #
(""# $
string""$ *
message""+ 2
)""2 3
=>""4 6
Debug""7 <
.""< =
LogError""= E
(""E F
$"""F H
$str""H R
{""R S
message""S Z
}""Z [
"""[ \
)""\ ]
;""] ^
public(( 
static(( 
void(( 

(((( )
string(() /
message((0 7
)((7 8
=>((9 ;
	LogServer((< E
(((E F
message((F M
,((M N
LogType((O V
.((V W
Info((W [
)(([ \
;((\ ]
public.. 
static.. 
void.. 
LogWarningServer.. +
(..+ ,
string.., 2
message..3 :
)..: ;
=>..< >
	LogServer..? H
(..H I
message..I P
,..P Q
LogType..R Y
...Y Z
Warning..Z a
)..a b
;..b c
public44 
static44 
void44 
LogErrorServer44 )
(44) *
string44* 0
message441 8
)448 9
=>44: <
	LogServer44= F
(44F G
message44G N
,44N O
LogType44P W
.44W X
Error44X ]
)44] ^
;44^ _
private66 
static66 
void66 
	LogServer66 %
(66% &
string66& ,
message66- 4
,664 5
LogType666 =
logType66> E
)66E F
{77 	
ulong99 
localId99 
=99 
NetworkManager99 *
.99* +
	Singleton99+ 4
!=995 7
null998 <
?99= >
NetworkManager99? M
.99M N
	Singleton99N W
.99W X

:99f g
$num99h i
;99i j
switch;; 
(;; 
logType;; 
);; 
{<< 
case== 
LogType== 
.== 
Info== !
:==! "
LogInfoServerLocal>> &
(>>& '
message>>' .
,>>. /
localId>>0 7
)>>7 8
;>>8 9
break?? 
;?? 
case@@ 
LogType@@ 
.@@ 
Warning@@ $
:@@$ %!
LogWarningServerLocalAA )
(AA) *
messageAA* 1
,AA1 2
localIdAA3 :
)AA: ;
;AA; <
breakBB 
;BB 
caseCC 
LogTypeCC 
.CC 
ErrorCC "
:CC" #
LogErrorServerLocalDD '
(DD' (
messageDD( /
,DD/ 0
localIdDD1 8
)DD8 9
;DD9 :
breakEE 
;EE 
}FF 
ifHH 
(HH 
NetworkManagerHH 
.HH 
	SingletonHH (
!=HH) +
nullHH, 0
&&HH1 3
!HH4 5
NetworkManagerHH5 C
.HHC D
	SingletonHHD M
.HHM N
IsServerHHN V
&&HHW Y
NetworkManagerHHZ h
.HHh i
	SingletonHHi r
.HHr s

.
HH� �
EnableNetworkLogs
HH� �
)
HH� �
{II 
varKK 
networkMessageKK "
=KK# $
newKK% (
ServerLogMessageKK) 9
{LL 
LogTypeMM 
=MM 
logTypeMM %
,MM% &
MessageNN 
=NN 
messageNN %
}OO 
;OO 
varPP 
sizePP 
=PP 
NetworkManagerPP )
.PP) *
	SingletonPP* 3
.PP3 4
SendMessagePP4 ?
(PP? @
refPP@ C
networkMessagePPD R
,PPR S
NetworkDeliveryPPT c
.PPc d'
ReliableFragmentedSequencedPPd 
,	PP �
NetworkManager
PP� �
.
PP� �
ServerClientId
PP� �
)
PP� �
;
PP� �
NetworkManagerRR 
.RR 
	SingletonRR (
.RR( )
NetworkMetricsRR) 7
.RR7 8
TrackServerLogSentRR8 J
(RRJ K
NetworkManagerRRK Y
.RRY Z
ServerClientIdRRZ h
,RRh i
(RRj k
uintRRk o
)RRo p
logTypeRRp w
,RRw x
sizeRRy }
)RR} ~
;RR~ 
}SS 
}TT 	
internalVV 
staticVV 
voidVV 
LogInfoServerLocalVV /
(VV/ 0
stringVV0 6
messageVV7 >
,VV> ?
ulongVV@ E
senderVVF L
)VVL M
=>VVN P
DebugVVQ V
.VVV W
LogVVW Z
(VVZ [
$"VV[ ]
$strVV] t
{VVt u
senderVVu {
}VV{ |
$strVV| ~
{VV~ 
message	VV �
}
VV� �
"
VV� �
)
VV� �
;
VV� �
internalWW 
staticWW 
voidWW !
LogWarningServerLocalWW 2
(WW2 3
stringWW3 9
messageWW: A
,WWA B
ulongWWC H
senderWWI O
)WWO P
=>WWQ S
DebugWWT Y
.WWY Z

LogWarningWWZ d
(WWd e
$"WWe g
$strWWg ~
{WW~ 
sender	WW �
}
WW� �
$str
WW� �
{
WW� �
message
WW� �
}
WW� �
"
WW� �
)
WW� �
;
WW� �
internalXX 
staticXX 
voidXX 
LogErrorServerLocalXX 0
(XX0 1
stringXX1 7
messageXX8 ?
,XX? @
ulongXXA F
senderXXG M
)XXM N
=>XXO Q
DebugXXR W
.XXW X
LogErrorXXX `
(XX` a
$"XXa c
$strXXc z
{XXz {
sender	XX{ �
}
XX� �
$str
XX� �
{
XX� �
message
XX� �
}
XX� �
"
XX� �
)
XX� �
;
XX� �
internalZZ 
enumZZ 
LogTypeZZ 
:ZZ 
byteZZ  $
{[[ 	
Info\\ 
,\\ 
Warning]] 
,]] 
Error^^ 
,^^ 
None__ 
}`` 	
}aa 
}bb �
�C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\ForceNetworkSerializeByMemcpy.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public

 

struct

 )
ForceNetworkSerializeByMemcpy

 /
<

/ 0
T

0 1
>

1 2
:

3 4%
INetworkSerializeByMemcpy

5 N
,

N O

IEquatable

P Z
<

Z [)
ForceNetworkSerializeByMemcpy

[ x
<

x y
T

y z
>

z {
>

{ |
where	

} �
T


� �
:


� �
	unmanaged


� �
,


� �

IEquatable


� �
<


� �
T


� �
>


� �
{ 
public 
T 
Value 
; 
public )
ForceNetworkSerializeByMemcpy ,
(, -
T- .
value/ 4
)4 5
{ 	
Value 
= 
value 
; 
} 	
public 
static 
implicit 
operator '
T( )
() *)
ForceNetworkSerializeByMemcpy* G
<G H
TH I
>I J
	containerK T
)T U
=>V X
	containerY b
.b c
Valuec h
;h i
public&& 
static&& 
implicit&& 
operator&& ')
ForceNetworkSerializeByMemcpy&&( E
<&&E F
T&&F G
>&&G H
(&&H I
T&&I J
underlyingValue&&K Z
)&&Z [
=>&&\ ^
new&&_ b*
ForceNetworkSerializeByMemcpy	&&c �
<
&&� �
T
&&� �
>
&&� �
{
&&� �
Value
&&� �
=
&&� �
underlyingValue
&&� �
}
&&� �
;
&&� �
public-- 
bool-- 
Equals-- 
(-- )
ForceNetworkSerializeByMemcpy-- 8
<--8 9
T--9 :
>--: ;
other--< A
)--A B
{.. 	
return// 
Value// 
.// 
Equals// 
(//  
other//  %
.//% &
Value//& +
)//+ ,
;//, -
}00 	
public77 
override77 
bool77 
Equals77 #
(77# $
object77$ *
obj77+ .
)77. /
{88 	
return99 
obj99 
is99 )
ForceNetworkSerializeByMemcpy99 7
<997 8
T998 9
>999 :
other99; @
&&99A C
Equals99D J
(99J K
other99K P
)99P Q
;99Q R
}:: 	
public@@ 
override@@ 
int@@ 
GetHashCode@@ '
(@@' (
)@@( )
{AA 	
returnBB 
ValueBB 
.BB 
GetHashCodeBB $
(BB$ %
)BB% &
;BB& '
}CC 	
}DD 
}EE �K
mC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Profiling\ProfilingHooks.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
class
ProfilingHooks !
:" #

{ 
private		 

Dictionary		 
<		 
Type		 
,		  
ProfilerMarker		! /
>		/ 0$
m_HandlerProfilerMarkers		1 I
=		J K
new		L O

Dictionary		P Z
<		Z [
Type		[ _
,		_ `
ProfilerMarker		a o
>		o p
(		p q
)		q r
;		r s
private

 

Dictionary

 
<

 
Type

 
,

  
ProfilerMarker

! /
>

/ 0#
m_SenderProfilerMarkers

1 H
=

I J
new

K N

Dictionary

O Y
<

Y Z
Type

Z ^
,

^ _
ProfilerMarker

` n
>

n o
(

o p
)

p q
;

q r
private 
readonly 
ProfilerMarker '
m_SendBatch( 3
=4 5
new6 9
ProfilerMarker: H
(H I
$"I K
{K L
nameofL R
(R S
MessagingSystemS b
)b c
}c d
$strd n
"n o
)o p
;p q
private 
readonly 
ProfilerMarker '
m_ReceiveBatch( 6
=7 8
new9 <
ProfilerMarker= K
(K L
$"L N
{N O
nameofO U
(U V
MessagingSystemV e
)e f
}f g
$strg y
"y z
)z {
;{ |
private 
ProfilerMarker $
GetHandlerProfilerMarker 7
(7 8
Type8 <
type= A
)A B
{ 	
var 
result 
= $
m_HandlerProfilerMarkers 1
.1 2
TryGetValue2 =
(= >
type> B
,B C
outD G
varH K
markerL R
)R S
;S T
if 
( 
result 
) 
{ 
return 
marker 
; 
} 
marker 
= 
new 
ProfilerMarker '
(' (
$"( *
{* +
nameof+ 1
(1 2
MessagingSystem2 A
)A B
}B C
$strC Y
{Y Z
typeZ ^
.^ _
Name_ c
}c d
"d e
)e f
;f g$
m_HandlerProfilerMarkers $
[$ %
type% )
]) *
=+ ,
marker- 3
;3 4
return 
marker 
; 
} 	
private 
ProfilerMarker #
GetSenderProfilerMarker 6
(6 7
Type7 ;
type< @
)@ A
{ 	
var 
result 
= #
m_SenderProfilerMarkers 0
.0 1
TryGetValue1 <
(< =
type= A
,A B
outC F
varG J
markerK Q
)Q R
;R S
if 
( 
result 
) 
{ 
return   
marker   
;   
}!! 
marker## 
=## 
new## 
ProfilerMarker## '
(##' (
$"##( *
{##* +
nameof##+ 1
(##1 2
MessagingSystem##2 A
)##A B
}##B C
$str##C X
{##X Y
type##Y ]
.##] ^
Name##^ b
}##b c
"##c d
)##d e
;##e f#
m_SenderProfilerMarkers$$ #
[$$# $
type$$$ (
]$$( )
=$$* +
marker$$, 2
;$$2 3
return%% 
marker%% 
;%% 
}&& 	
public(( 
void(( 
OnBeforeSendMessage(( '
<((' (
T((( )
>(() *
(((* +
ulong((+ 0
clientId((1 9
,((9 :
ref((; >
T((? @
message((A H
,((H I
NetworkDelivery((J Y
delivery((Z b
)((b c
where((d i
T((j k
:((l m
INetworkMessage((n }
{)) 	#
GetSenderProfilerMarker** #
(**# $
typeof**$ *
(*** +
T**+ ,
)**, -
)**- .
.**. /
Begin**/ 4
(**4 5
)**5 6
;**6 7
}++ 	
public-- 
void-- 
OnAfterSendMessage-- &
<--& '
T--' (
>--( )
(--) *
ulong--* /
clientId--0 8
,--8 9
ref--: =
T--> ?
message--@ G
,--G H
NetworkDelivery--I X
delivery--Y a
,--a b
int--c f
messageSizeBytes--g w
)--w x
where--y ~
T	-- �
:
--� �
INetworkMessage
--� �
{.. 	#
GetSenderProfilerMarker// #
(//# $
typeof//$ *
(//* +
T//+ ,
)//, -
)//- .
.//. /
End/// 2
(//2 3
)//3 4
;//4 5
}00 	
public22 
void22 "
OnBeforeReceiveMessage22 *
(22* +
ulong22+ 0
senderId221 9
,229 :
Type22; ?
messageType22@ K
,22K L
int22M P
messageSizeBytes22Q a
)22a b
{33 	$
GetHandlerProfilerMarker44 $
(44$ %
messageType44% 0
)440 1
.441 2
Begin442 7
(447 8
)448 9
;449 :
}55 	
public77 
void77 !
OnAfterReceiveMessage77 )
(77) *
ulong77* /
senderId770 8
,778 9
Type77: >
messageType77? J
,77J K
int77L O
messageSizeBytes77P `
)77` a
{88 	$
GetHandlerProfilerMarker99 $
(99$ %
messageType99% 0
)990 1
.991 2
End992 5
(995 6
)996 7
;997 8
}:: 	
public<< 
void<< 
OnBeforeSendBatch<< %
(<<% &
ulong<<& +
clientId<<, 4
,<<4 5
int<<6 9
messageCount<<: F
,<<F G
int<<H K
batchSizeInBytes<<L \
,<<\ ]
NetworkDelivery<<^ m
delivery<<n v
)<<v w
{== 	
m_SendBatch>> 
.>> 
Begin>> 
(>> 
)>> 
;>>  
}?? 	
publicAA 
voidAA 
OnAfterSendBatchAA $
(AA$ %
ulongAA% *
clientIdAA+ 3
,AA3 4
intAA5 8
messageCountAA9 E
,AAE F
intAAG J
batchSizeInBytesAAK [
,AA[ \
NetworkDeliveryAA] l
deliveryAAm u
)AAu v
{BB 	
m_SendBatchCC 
.CC 
EndCC 
(CC 
)CC 
;CC 
}DD 	
publicFF 
voidFF  
OnBeforeReceiveBatchFF (
(FF( )
ulongFF) .
senderIdFF/ 7
,FF7 8
intFF9 <
messageCountFF= I
,FFI J
intFFK N
batchSizeInBytesFFO _
)FF_ `
{GG 	
m_ReceiveBatchHH 
.HH 
BeginHH  
(HH  !
)HH! "
;HH" #
}II 	
publicKK 
voidKK 
OnAfterReceiveBatchKK '
(KK' (
ulongKK( -
senderIdKK. 6
,KK6 7
intKK8 ;
messageCountKK< H
,KKH I
intKKJ M
batchSizeInBytesKKN ^
)KK^ _
{LL 	
m_ReceiveBatchMM 
.MM 
EndMM 
(MM 
)MM  
;MM  !
}NN 	
publicPP 
boolPP 
OnVerifyCanSendPP #
(PP# $
ulongPP$ )

,PP7 8
TypePP9 =
messageTypePP> I
,PPI J
NetworkDeliveryPPK Z
deliveryPP[ c
)PPc d
{QQ 	
returnRR 
trueRR 
;RR 
}SS 	
publicUU 
boolUU 
OnVerifyCanReceiveUU &
(UU& '
ulongUU' ,
senderIdUU- 5
,UU5 6
TypeUU7 ;
messageTypeUU< G
,UUG H
FastBufferReaderUUI Y
messageContentUUZ h
,UUh i
refUUj m
NetworkContextUUn |
context	UU} �
)
UU� �
{VV 	
returnWW 
trueWW 
;WW 
}XX 	
publicZZ 
voidZZ !
OnBeforeHandleMessageZZ )
<ZZ) *
TZZ* +
>ZZ+ ,
(ZZ, -
refZZ- 0
TZZ1 2
messageZZ3 :
,ZZ: ;
refZZ< ?
NetworkContextZZ@ N
contextZZO V
)ZZV W
whereZZX ]
TZZ^ _
:ZZ` a
INetworkMessageZZb q
{[[ 	
}]] 	
public__ 
void__  
OnAfterHandleMessage__ (
<__( )
T__) *
>__* +
(__+ ,
ref__, /
T__0 1
message__2 9
,__9 :
ref__; >
NetworkContext__? M
context__N U
)__U V
where__W \
T__] ^
:___ `
INetworkMessage__a p
{`` 	
}bb 	
}cc 
}dd �0
qC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Core\NetworkBehaviourUpdater.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public		 

class		 #
NetworkBehaviourUpdater		 (
{

 
private 
HashSet 
< 

>% &
	m_Touched' 0
=1 2
new3 6
HashSet7 >
<> ?

>L M
(M N
)N O
;O P
private 
ProfilerMarker $
m_NetworkBehaviourUpdate 7
=8 9
new: =
ProfilerMarker> L
(L M
$"M O
{O P
nameofP V
(V W
NetworkBehaviourW g
)g h
}h i
$stri j
{j k
nameofk q
(q r#
NetworkBehaviourUpdate	r �
)
� �
}
� �
"
� �
)
� �
;
� �
internal 
void "
NetworkBehaviourUpdate ,
(, -
NetworkManager- ;
networkManager< J
)J K
{ 	$
m_NetworkBehaviourUpdate $
.$ %
Begin% *
(* +
)+ ,
;, -
try 
{ 
if 
( 
networkManager "
." #
IsServer# +
)+ ,
{ 
	m_Touched 
. 
Clear #
(# $
)$ %
;% &
for 
( 
int 
i 
=  
$num! "
;" #
i$ %
<& '
networkManager( 6
.6 7 
ConnectedClientsList7 K
.K L
CountL Q
;Q R
iS T
++T V
)V W
{ 
var 
client "
=# $
networkManager% 3
.3 4 
ConnectedClientsList4 H
[H I
iI J
]J K
;K L
var 
spawnedObjs '
=( )
networkManager* 8
.8 9
SpawnManager9 E
.E F
SpawnedObjectsListF X
;X Y
	m_Touched !
.! "
	UnionWith" +
(+ ,
spawnedObjs, 7
)7 8
;8 9
foreach   
(    !
var  ! $
sobj  % )
in  * ,
spawnedObjs  - 8
)  8 9
{!! 
if"" 
(""  
sobj""  $
.""$ %
IsNetworkVisibleTo""% 7
(""7 8
client""8 >
.""> ?
ClientId""? G
)""G H
)""H I
{## 
for%%  #
(%%$ %
int%%% (
k%%) *
=%%+ ,
$num%%- .
;%%. /
k%%0 1
<%%2 3
sobj%%4 8
.%%8 9"
ChildNetworkBehaviours%%9 O
.%%O P
Count%%P U
;%%U V
k%%W X
++%%X Z
)%%Z [
{&&  !
sobj''$ (
.''( )"
ChildNetworkBehaviours'') ?
[''? @
k''@ A
]''A B
.''B C
VariableUpdate''C Q
(''Q R
client''R X
.''X Y
ClientId''Y a
)''a b
;''b c
}((  !
})) 
}** 
}++ 
foreach.. 
(.. 
var..  
sobj..! %
in..& (
	m_Touched..) 2
)..2 3
{// 
for00 
(00 
int00  
k00! "
=00# $
$num00% &
;00& '
k00( )
<00* +
sobj00, 0
.000 1"
ChildNetworkBehaviours001 G
.00G H
Count00H M
;00M N
k00O P
++00P R
)00R S
{11 
sobj22  
.22  !"
ChildNetworkBehaviours22! 7
[227 8
k228 9
]229 :
.22: ;$
PostNetworkVariableWrite22; S
(22S T
)22T U
;22U V
}33 
}44 
}55 
else66 
{77 
foreach99 
(99 
var99  
sobj99! %
in99& (
networkManager99) 7
.997 8
SpawnManager998 D
.99D E
SpawnedObjectsList99E W
)99W X
{:: 
if;; 
(;; 
sobj;;  
.;;  !
IsOwner;;! (
);;( )
{<< 
for== 
(==  !
int==! $
k==% &
===' (
$num==) *
;==* +
k==, -
<==. /
sobj==0 4
.==4 5"
ChildNetworkBehaviours==5 K
.==K L
Count==L Q
;==Q R
k==S T
++==T V
)==V W
{>> 
sobj??  $
.??$ %"
ChildNetworkBehaviours??% ;
[??; <
k??< =
]??= >
.??> ?
VariableUpdate??? M
(??M N
NetworkManager??N \
.??\ ]
ServerClientId??] k
)??k l
;??l m
}@@ 
}AA 
}BB 
foreachEE 
(EE 
varEE  
sobjEE! %
inEE& (
networkManagerEE) 7
.EE7 8
SpawnManagerEE8 D
.EED E
SpawnedObjectsListEEE W
)EEW X
{FF 
forGG 
(GG 
intGG  
kGG! "
=GG# $
$numGG% &
;GG& '
kGG( )
<GG* +
sobjGG, 0
.GG0 1"
ChildNetworkBehavioursGG1 G
.GGG H
CountGGH M
;GGM N
kGGO P
++GGP R
)GGR S
{HH 
sobjII  
.II  !"
ChildNetworkBehavioursII! 7
[II7 8
kII8 9
]II9 :
.II: ;$
PostNetworkVariableWriteII; S
(IIS T
)IIT U
;IIU V
}JJ 
}KK 
}LL 
}MM 
finallyNN 
{OO 
m_NetworkBehaviourUpdateQQ (
.QQ( )
EndQQ) ,
(QQ, -
)QQ- .
;QQ. /
}SS 
}TT 	
}VV 
}WW �a
tC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Transports\UTP\BatchedSendQueue.cs
	namespace 	
Unity
 
. 
Netcode 
. 

Transports "
." #
UTP# &
{ 
internal 
struct
BatchedSendQueue $
:% &
IDisposable' 2
{ 
private 
NativeArray 
< 
byte  
>  !
m_Data" (
;( )
private 
NativeArray 
< 
int 
>  
m_HeadTailIndices! 2
;2 3
public 
const 
int 
PerMessageOverhead +
=, -
sizeof. 4
(4 5
int5 8
)8 9
;9 :
private 
const 
int 
k_HeadInternalIndex -
=. /
$num0 1
;1 2
private 
const 
int 
k_TailInternalIndex -
=. /
$num0 1
;1 2
private   
int   
	HeadIndex   
{!! 	
get"" 
{"" 
return"" 
m_HeadTailIndices"" *
[""* +
k_HeadInternalIndex""+ >
]""> ?
;""? @
}""A B
set## 
{## 
m_HeadTailIndices## #
[### $
k_HeadInternalIndex##$ 7
]##7 8
=##9 :
value##; @
;##@ A
}##B C
}$$ 	
private'' 
int'' 
	TailIndex'' 
{(( 	
get)) 
{)) 
return)) 
m_HeadTailIndices)) *
[))* +
k_TailInternalIndex))+ >
]))> ?
;))? @
}))A B
set** 
{** 
m_HeadTailIndices** #
[**# $
k_TailInternalIndex**$ 7
]**7 8
=**9 :
value**; @
;**@ A
}**B C
}++ 	
public-- 
int-- 
Length-- 
=>-- 
	TailIndex-- &
---' (
	HeadIndex--) 2
;--2 3
public// 
bool// 
IsEmpty// 
=>// 
	HeadIndex// (
==//) +
	TailIndex//, 5
;//5 6
public11 
bool11 
	IsCreated11 
=>11  
m_Data11! '
.11' (
	IsCreated11( 1
;111 2
public55 
BatchedSendQueue55 
(55  
int55  #
capacity55$ ,
)55, -
{66 	
m_Data77 
=77 
new77 
NativeArray77 $
<77$ %
byte77% )
>77) *
(77* +
capacity77+ 3
,773 4
	Allocator775 >
.77> ?

Persistent77? I
)77I J
;77J K
m_HeadTailIndices88 
=88 
new88  #
NativeArray88$ /
<88/ 0
int880 3
>883 4
(884 5
$num885 6
,886 7
	Allocator888 A
.88A B

Persistent88B L
)88L M
;88M N
	HeadIndex:: 
=:: 
$num:: 
;:: 
	TailIndex;; 
=;; 
$num;; 
;;; 
}<< 	
public>> 
void>> 
Dispose>> 
(>> 
)>> 
{?? 	
if@@ 
(@@ 
	IsCreated@@ 
)@@ 
{AA 
m_DataBB 
.BB 
DisposeBB 
(BB 
)BB  
;BB  !
m_HeadTailIndicesCC !
.CC! "
DisposeCC" )
(CC) *
)CC* +
;CC+ ,
}DD 
}EE 	
privateHH 
voidHH 
AppendDataAtTailHH %
(HH% &
ArraySegmentHH& 2
<HH2 3
byteHH3 7
>HH7 8
dataHH9 =
)HH= >
{II 	
unsafeJJ 
{KK 
varLL 
writerLL 
=LL 
newLL  
DataStreamWriterLL! 1
(LL1 2
(LL2 3
byteLL3 7
*LL7 8
)LL8 9
m_DataLL9 ?
.LL? @
GetUnsafePtrLL@ L
(LLL M
)LLM N
+LLO P
	TailIndexLLQ Z
,LLZ [
m_DataLL\ b
.LLb c
LengthLLc i
-LLj k
	TailIndexLLl u
)LLu v
;LLv w
writerNN 
.NN 
WriteIntNN 
(NN  
dataNN  $
.NN$ %
CountNN% *
)NN* +
;NN+ ,
fixedPP 
(PP 
bytePP 
*PP 
dataPtrPP $
=PP% &
dataPP' +
.PP+ ,
ArrayPP, 1
)PP1 2
{QQ 
writerRR 
.RR 

WriteBytesRR %
(RR% &
dataPtrRR& -
+RR. /
dataRR0 4
.RR4 5
OffsetRR5 ;
,RR; <
dataRR= A
.RRA B
CountRRB G
)RRG H
;RRH I
}SS 
}TT 
	TailIndexVV 
+=VV 
sizeofVV 
(VV  
intVV  #
)VV# $
+VV% &
dataVV' +
.VV+ ,
CountVV, 1
;VV1 2
}WW 	
public__ 
bool__ 
PushMessage__ 
(__  
ArraySegment__  ,
<__, -
byte__- 1
>__1 2
message__3 :
)__: ;
{`` 	
ifaa 
(aa 
!aa 
	IsCreatedaa 
)aa 
{bb 
returncc 
falsecc 
;cc 
}dd 
ifgg 
(gg 
m_Datagg 
.gg 
Lengthgg 
-gg 
	TailIndexgg  )
>=gg* ,
sizeofgg- 3
(gg3 4
intgg4 7
)gg7 8
+gg9 :
messagegg; B
.ggB C
CountggC H
)ggH I
{hh 
AppendDataAtTailii  
(ii  !
messageii! (
)ii( )
;ii) *
returnjj 
truejj 
;jj 
}kk 
ifnn 
(nn 
m_Datann 
.nn 
Lengthnn 
-nn 
	TailIndexnn  )
+nn* +
	HeadIndexnn, 5
>=nn6 8
sizeofnn9 ?
(nn? @
intnn@ C
)nnC D
+nnE F
messagennG N
.nnN O
CountnnO T
)nnT U
{oo 
unsafeqq 
{rr 

.ss! "
MemMovess" )
(ss) *
m_Datass* 0
.ss0 1
GetUnsafePtrss1 =
(ss= >
)ss> ?
,ss? @
(ssA B
bytessB F
*ssF G
)ssG H
m_DatassH N
.ssN O
GetUnsafePtrssO [
(ss[ \
)ss\ ]
+ss^ _
	HeadIndexss` i
,ssi j
Lengthssk q
)ssq r
;ssr s
}tt 
	TailIndexvv 
=vv 
Lengthvv "
;vv" #
	HeadIndexww 
=ww 
$numww 
;ww 
AppendDataAtTailyy  
(yy  !
messageyy! (
)yy( )
;yy) *
returnzz 
truezz 
;zz 
}{{ 
return}} 
false}} 
;}} 
}~~ 	
public
�� 
int
�� $
FillWriterWithMessages
�� )
(
��) *
ref
��* -
DataStreamWriter
��. >
writer
��? E
)
��E F
{
�� 	
if
�� 
(
�� 
!
�� 
	IsCreated
�� 
||
�� 
Length
�� $
==
��% '
$num
��( )
)
��) *
{
�� 
return
�� 
$num
�� 
;
�� 
}
�� 
unsafe
�� 
{
�� 
var
�� 
reader
�� 
=
�� 
new
��  
DataStreamReader
��! 1
(
��1 2
(
��2 3
byte
��3 7
*
��7 8
)
��8 9
m_Data
��9 ?
.
��? @
GetUnsafePtr
��@ L
(
��L M
)
��M N
+
��O P
	HeadIndex
��Q Z
,
��Z [
Length
��\ b
)
��b c
;
��c d
var
�� 
writerAvailable
�� #
=
��$ %
writer
��& ,
.
��, -
Capacity
��- 5
;
��5 6
var
�� 
readerOffset
��  
=
��! "
$num
��# $
;
��$ %
while
�� 
(
�� 
readerOffset
�� #
<
��$ %
Length
��& ,
)
��, -
{
�� 
reader
�� 
.
�� 
SeekSet
�� "
(
��" #
readerOffset
��# /
)
��/ 0
;
��0 1
var
�� 

�� %
=
��& '
reader
��( .
.
��. /
ReadInt
��/ 6
(
��6 7
)
��7 8
;
��8 9
if
�� 
(
�� 
writerAvailable
�� '
<
��( )
sizeof
��* 0
(
��0 1
int
��1 4
)
��4 5
+
��6 7

��8 E
)
��E F
{
�� 
break
�� 
;
�� 
}
�� 
else
�� 
{
�� 
writer
�� 
.
�� 
WriteInt
�� '
(
��' (

��( 5
)
��5 6
;
��6 7
var
�� 

�� )
=
��* +
	HeadIndex
��, 5
+
��6 7
reader
��8 >
.
��> ?
GetBytesRead
��? K
(
��K L
)
��L M
;
��M N
writer
�� 
.
�� 

WriteBytes
�� )
(
��) *
(
��* +
byte
��+ /
*
��/ 0
)
��0 1
m_Data
��1 7
.
��7 8
GetUnsafePtr
��8 D
(
��D E
)
��E F
+
��G H

��I V
,
��V W

��X e
)
��e f
;
��f g
writerAvailable
�� '
-=
��( *
sizeof
��+ 1
(
��1 2
int
��2 5
)
��5 6
+
��7 8

��9 F
;
��F G
readerOffset
�� $
+=
��% '
sizeof
��( .
(
��. /
int
��/ 2
)
��2 3
+
��4 5

��6 C
;
��C D
}
�� 
}
�� 
return
�� 
writer
�� 
.
�� 
Capacity
�� &
-
��' (
writerAvailable
��) 8
;
��8 9
}
�� 
}
�� 	
public
�� 
int
�� !
FillWriterWithBytes
�� &
(
��& '
ref
��' *
DataStreamWriter
��+ ;
writer
��< B
)
��B C
{
�� 	
if
�� 
(
�� 
!
�� 
	IsCreated
�� 
||
�� 
Length
�� $
==
��% '
$num
��( )
)
��) *
{
�� 
return
�� 
$num
�� 
;
�� 
}
�� 
var
�� 

copyLength
�� 
=
�� 
Math
�� !
.
��! "
Min
��" %
(
��% &
writer
��& ,
.
��, -
Capacity
��- 5
,
��5 6
Length
��7 =
)
��= >
;
��> ?
unsafe
�� 
{
�� 
writer
�� 
.
�� 

WriteBytes
�� !
(
��! "
(
��" #
byte
��# '
*
��' (
)
��( )
m_Data
��) /
.
��/ 0
GetUnsafePtr
��0 <
(
��< =
)
��= >
+
��? @
	HeadIndex
��A J
,
��J K

copyLength
��L V
)
��V W
;
��W X
}
�� 
return
�� 

copyLength
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
Consume
�� 
(
�� 
int
�� 
size
��  $
)
��$ %
{
�� 	
if
�� 
(
�� 
size
�� 
>=
�� 
Length
�� 
)
�� 
{
�� 
	HeadIndex
�� 
=
�� 
$num
�� 
;
�� 
	TailIndex
�� 
=
�� 
$num
�� 
;
�� 
}
�� 
else
�� 
{
�� 
	HeadIndex
�� 
+=
�� 
size
�� !
;
��! "
}
�� 
}
�� 	
}
�� 
}�� �
uC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Exceptions\NotListeningException.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

class !
NotListeningException &
:' (
	Exception) 2
{		 
public
NotListeningException
(
)
{
}
public !
NotListeningException $
($ %
string% +
message, 3
)3 4
:5 6
base7 ;
(; <
message< C
)C D
{E F
}G H
public !
NotListeningException $
($ %
string% +
message, 3
,3 4
	Exception5 >
inner? D
)D E
:F G
baseH L
(L M
messageM T
,T U
innerV [
)[ \
{] ^
}_ `
} 
} �0
hC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Metrics\MetricHooks.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
class
MetricHooks 
:  

{ 
private 
readonly 
NetworkManager '
m_NetworkManager( 8
;8 9
public		 
MetricHooks		 
(		 
NetworkManager		 )
networkManager		* 8
)		8 9
{

 	
m_NetworkManager 
= 
networkManager -
;- .
} 	
public 
void 
OnBeforeSendMessage '
<' (
T( )
>) *
(* +
ulong+ 0
clientId1 9
,9 :
ref; >
T? @
messageA H
,H I
NetworkDeliveryJ Y
deliveryZ b
)b c
whered i
Tj k
:l m
INetworkMessagen }
{ 	
} 	
public 
void 
OnAfterSendMessage &
<& '
T' (
>( )
() *
ulong* /
clientId0 8
,8 9
ref: =
T> ?
message@ G
,G H
NetworkDeliveryI X
deliveryY a
,a b
intc f
messageSizeBytesg w
)w x
wherey ~
T	 �
:
� �
INetworkMessage
� �
{ 	
m_NetworkManager 
. 
NetworkMetrics +
.+ ,#
TrackNetworkMessageSent, C
(C D
clientIdD L
,L M
typeofN T
(T U
TU V
)V W
.W X
NameX \
,\ ]
messageSizeBytes^ n
)n o
;o p
} 	
public 
void "
OnBeforeReceiveMessage *
(* +
ulong+ 0
senderId1 9
,9 :
Type; ?
messageType@ K
,K L
intM P
messageSizeBytesQ a
)a b
{ 	
m_NetworkManager 
. 
NetworkMetrics +
.+ ,'
TrackNetworkMessageReceived, G
(G H
senderIdH P
,P Q
messageTypeR ]
.] ^
Name^ b
,b c
messageSizeBytesd t
)t u
;u v
} 	
public 
void !
OnAfterReceiveMessage )
() *
ulong* /
senderId0 8
,8 9
Type: >
messageType? J
,J K
intL O
messageSizeBytesP `
)` a
{ 	
} 	
public   
void   
OnBeforeSendBatch   %
(  % &
ulong  & +
clientId  , 4
,  4 5
int  6 9
messageCount  : F
,  F G
int  H K
batchSizeInBytes  L \
,  \ ]
NetworkDelivery  ^ m
delivery  n v
)  v w
{!! 	
}"" 	
public$$ 
void$$ 
OnAfterSendBatch$$ $
($$$ %
ulong$$% *
clientId$$+ 3
,$$3 4
int$$5 8
messageCount$$9 E
,$$E F
int$$G J
batchSizeInBytes$$K [
,$$[ \
NetworkDelivery$$] l
delivery$$m u
)$$u v
{%% 	
m_NetworkManager&& 
.&& 
NetworkMetrics&& +
.&&+ ,#
TrackTransportBytesSent&&, C
(&&C D
batchSizeInBytes&&D T
)&&T U
;&&U V
}'' 	
public)) 
void))  
OnBeforeReceiveBatch)) (
())( )
ulong))) .
senderId))/ 7
,))7 8
int))9 <
messageCount))= I
,))I J
int))K N
batchSizeInBytes))O _
)))_ `
{** 	
m_NetworkManager++ 
.++ 
NetworkMetrics++ +
.+++ ,'
TrackTransportBytesReceived++, G
(++G H
batchSizeInBytes++H X
)++X Y
;++Y Z
},, 	
public.. 
void.. 
OnAfterReceiveBatch.. '
(..' (
ulong..( -
senderId... 6
,..6 7
int..8 ;
messageCount..< H
,..H I
int..J M
batchSizeInBytes..N ^
)..^ _
{// 	
}00 	
public22 
bool22 
OnVerifyCanSend22 #
(22# $
ulong22$ )

,227 8
Type229 =
messageType22> I
,22I J
NetworkDelivery22K Z
delivery22[ c
)22c d
{33 	
return44 
true44 
;44 
}55 	
public77 
bool77 
OnVerifyCanReceive77 &
(77& '
ulong77' ,
senderId77- 5
,775 6
Type777 ;
messageType77< G
,77G H
FastBufferReader77I Y
messageContent77Z h
,77h i
ref77j m
NetworkContext77n |
context	77} �
)
77� �
{88 	
return99 
true99 
;99 
}:: 	
public<< 
void<< !
OnBeforeHandleMessage<< )
<<<) *
T<<* +
><<+ ,
(<<, -
ref<<- 0
T<<1 2
message<<3 :
,<<: ;
ref<<< ?
NetworkContext<<@ N
context<<O V
)<<V W
where<<X ]
T<<^ _
:<<` a
INetworkMessage<<b q
{== 	
}?? 	
publicAA 
voidAA  
OnAfterHandleMessageAA (
<AA( )
TAA) *
>AA* +
(AA+ ,
refAA, /
TAA0 1
messageAA2 9
,AA9 :
refAA; >
NetworkContextAA? M
contextAAN U
)AAU V
whereAAW \
TAA] ^
:AA_ `
INetworkMessageAAa p
{BB 	
}DD 	
}EE 
}FF �*
wC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Transports\UTP\BatchedReceiveQueue.cs
	namespace 	
Unity
 
. 
Netcode 
. 

Transports "
." #
UTP# &
{ 
internal 
class
BatchedReceiveQueue &
{		 
private

 
byte

 
[

 
]

 
m_Data

 
;

 
private 
int 
m_Offset 
; 
private 
int 
m_Length 
; 
public 
bool 
IsEmpty 
=> 
m_Length '
<=( *
$num+ ,
;, -
public 
BatchedReceiveQueue "
(" #
DataStreamReader# 3
reader4 :
): ;
{ 	
m_Data 
= 
new 
byte 
[ 
reader $
.$ %
Length% +
]+ ,
;, -
unsafe 
{ 
fixed 
( 
byte 
* 
dataPtr $
=% &
m_Data' -
)- .
{ 
reader 
. 
	ReadBytes $
($ %
dataPtr% ,
,, -
reader. 4
.4 5
Length5 ;
); <
;< =
} 
} 
m_Offset   
=   
$num   
;   
m_Length!! 
=!! 
reader!! 
.!! 
Length!! $
;!!$ %
}"" 	
public)) 
void)) 

PushReader)) 
()) 
DataStreamReader)) /
reader))0 6
)))6 7
{** 	
var-- 
	available-- 
=-- 
m_Data-- "
.--" #
Length--# )
---* +
(--, -
m_Offset--- 5
+--6 7
m_Length--8 @
)--@ A
;--A B
if.. 
(.. 
	available.. 
<.. 
reader.. "
..." #
Length..# )
)..) *
{// 
if00 
(00 
m_Length00 
>00 
$num00  
)00  !
{11 
Array22 
.22 
Copy22 
(22 
m_Data22 %
,22% &
m_Offset22' /
,22/ 0
m_Data221 7
,227 8
$num229 :
,22: ;
m_Length22< D
)22D E
;22E F
}33 
m_Offset55 
=55 
$num55 
;55 
while77 
(77 
m_Data77 
.77 
Length77 $
-77% &
m_Length77' /
<770 1
reader772 8
.778 9
Length779 ?
)77? @
{88 
Array99 
.99 
Resize99  
(99  !
ref99! $
m_Data99% +
,99+ ,
m_Data99- 3
.993 4
Length994 :
*99; <
$num99= >
)99> ?
;99? @
}:: 
};; 
unsafe== 
{>> 
fixed?? 
(?? 
byte?? 
*?? 
dataPtr?? $
=??% &
m_Data??' -
)??- .
{@@ 
readerAA 
.AA 
	ReadBytesAA $
(AA$ %
dataPtrAA% ,
+AA- .
m_OffsetAA/ 7
+AA8 9
m_LengthAA: B
,AAB C
readerAAD J
.AAJ K
LengthAAK Q
)AAQ R
;AAR S
}BB 
}CC 
m_LengthEE 
+=EE 
readerEE 
.EE 
LengthEE %
;EE% &
}FF 	
publicJJ 
ArraySegmentJJ 
<JJ 
byteJJ  
>JJ  !

PopMessageJJ" ,
(JJ, -
)JJ- .
{KK 	
ifLL 
(LL 
m_LengthLL 
<LL 
sizeofLL !
(LL! "
intLL" %
)LL% &
)LL& '
{MM 
returnNN 
defaultNN 
;NN 
}OO 
varQQ 

=QQ 
BitConverterQQ  ,
.QQ, -
ToInt32QQ- 4
(QQ4 5
m_DataQQ5 ;
,QQ; <
m_OffsetQQ= E
)QQE F
;QQF G
ifSS 
(SS 
m_LengthSS 
-SS 
sizeofSS !
(SS! "
intSS" %
)SS% &
<SS' (

)SS6 7
{TT 
returnUU 
defaultUU 
;UU 
}VV 
varXX 
dataXX 
=XX 
newXX 
ArraySegmentXX '
<XX' (
byteXX( ,
>XX, -
(XX- .
m_DataXX. 4
,XX4 5
m_OffsetXX6 >
+XX? @
sizeofXXA G
(XXG H
intXXH K
)XXK L
,XXL M

)XX[ \
;XX\ ]
m_OffsetZZ 
+=ZZ 
sizeofZZ 
(ZZ 
intZZ "
)ZZ" #
+ZZ$ %

;ZZ3 4
m_Length[[ 
-=[[ 
sizeof[[ 
([[ 
int[[ "
)[[" #
+[[$ %

;[[3 4
return]] 
data]] 
;]] 
}^^ 	
}__ 
}`` �)
~C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\Messages\ChangeOwnershipMessage.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
struct
ChangeOwnershipMessage *
:+ ,
INetworkMessage- <
,< =%
INetworkSerializeByMemcpy> W
{ 
public 
ulong 
NetworkObjectId $
;$ %
public 
ulong 

;" #
public 
void 
	Serialize 
( 
FastBufferWriter .
writer/ 5
)5 6
{		 	
writer

 
.

 
WriteValueSafe

 !
(

! "
this

" &
)

& '
;

' (
} 	
public
bool
Deserialize
(
FastBufferReader
reader
,
ref
NetworkContext
context
)
{ 	
var 
networkManager 
=  
(! "
NetworkManager" 0
)0 1
context1 8
.8 9
SystemOwner9 D
;D E
if 
( 
! 
networkManager 
.  
IsClient  (
)( )
{ 
return 
false 
; 
} 
reader 
. 

(  !
out! $
this% )
)) *
;* +
if 
( 
! 
networkManager 
.  
SpawnManager  ,
., -
SpawnedObjects- ;
.; <
ContainsKey< G
(G H
NetworkObjectIdH W
)W X
)X Y
{ 
networkManager 
. "
DeferredMessageManager 5
.5 6
DeferMessage6 B
(B C#
IDeferredMessageManagerC Z
.Z [
TriggerType[ f
.f g
OnSpawng n
,n o
NetworkObjectIdp 
,	 �
reader
� �
,
� �
ref
� �
context
� �
)
� �
;
� �
return 
false 
; 
} 
return 
true 
; 
} 	
public 
void 
Handle 
( 
ref 
NetworkContext -
context. 5
)5 6
{ 	
var   
networkManager   
=    
(  ! "
NetworkManager  " 0
)  0 1
context  1 8
.  8 9
SystemOwner  9 D
;  D E
var!! 

=!! 
networkManager!!  .
.!!. /
SpawnManager!!/ ;
.!!; <
SpawnedObjects!!< J
[!!J K
NetworkObjectId!!K Z
]!!Z [
;!![ \
var"" 

="" 

.""- .

;""; <

.$$ 

=$$( )

;$$7 8
if'' 
('' 

==''  
networkManager''! /
.''/ 0

)''= >
{(( 

.)) *
InvokeBehaviourOnLostOwnership)) <
())< =
)))= >
;))> ?
}** 
if-- 
(-- 

==--  
networkManager--! /
.--/ 0

)--= >
{.. 

.// ,
 InvokeBehaviourOnGainedOwnership// >
(//> ?
)//? @
;//@ A
}00 
if33 
(33 

!=33  
networkManager33! /
.33/ 0

&&33> @

!=33O Q
networkManager33R `
.33` a

)33n o
{44 
for55 
(55 
int55 
i55 
=55 
$num55 
;55 
i55  !
<55" #

.551 2"
ChildNetworkBehaviours552 H
.55H I
Count55I N
;55N O
i55P Q
++55Q S
)55S T
{66 

.77! ""
ChildNetworkBehaviours77" 8
[778 9
i779 :
]77: ;
.77; <#
UpdateNetworkProperties77< S
(77S T
)77T U
;77U V
}88 
}99 
networkManager;; 
.;; 
NetworkMetrics;; )
.;;) *(
TrackOwnershipChangeReceived;;* F
(;;F G
context;;G N
.;;N O
SenderId;;O W
,;;W X

,;;f g
context;;h o
.;;o p
MessageSize;;p {
);;{ |
;;;| }
}<< 	
}== 
}>> �{
lC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Serialization\BitWriter.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

ref 
struct 
	BitWriter 
{
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

;! "
private 
int %
m_AllowedBitwiseWriteMark -
;- .
private 
const 
int 

=( )
$num* +
;+ ,
public 
bool 

BitAligned 
{ 	
[ 

MethodImpl
( 
MethodImplOptions )
.) *
AggressiveInlining* <
)< =
]= >
get 
=> 
( 

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

>>00- /
$num000 1
;001 2
if11 
(11 
!11 

BitAligned11 
)11 
{22 
++44 
bytesWritten44 
;44 
}55 
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
{MM 
++OO -
!totalBytesWrittenInBitwiseContextOO 3
;OO3 4
}PP 
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
{SS 
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
}aa 
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
{qq 
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
}ss 
intuu 
checkPosuu 
=uu 
(uu 
intuu 
)uu  
(uu  !

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
{ww 
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
}yy 
int|| 

wholeBytes|| 
=|| 
(|| 
int|| !
)||! "
bitCount||" *
/||+ ,

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
{ 
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
�� 
else
�� 
{
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
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
�� 
int
�� 
offset
�� 
=
�� 

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

�� #
>>
��$ &
$num
��' (
;
��( )
++
�� 

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

�� 
.
�� 
MemCpy
��  
(
��  !

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

�� 
+=
�� 
bytesToWrite
�� )
*
��* +

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
}�� ��
pC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Configuration\NetworkConfig.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
[ 
Serializable 
] 
public

class

{ 
[ 	
Tooltip	 
( 
$str K
)K L
]L M
public 
ushort 
ProtocolVersion %
=& '
$num( )
;) *
[ 	
Tooltip	 
( 
$str .
). /
]/ 0
public 
NetworkTransport 
NetworkTransport  0
=1 2
null3 7
;7 8
[ 	
Tooltip	 
( 
$str	 �
)
� �
]
� �
public 

GameObject 
PlayerPrefab &
;& '
[$$ 	
SerializeField$$	 
]$$ 
[%% 	
Tooltip%%	 
(%% 
$str%% E
)%%E F
]%%F G
internal&& 
List&& 
<&& 

>&&# $
NetworkPrefabs&&% 3
=&&4 5
new&&6 9
List&&: >
<&&> ?

>&&L M
(&&M N
)&&N O
;&&O P
internal,, 

Dictionary,, 
<,, 
uint,,  
,,,  !

>,,/ 0&
NetworkPrefabOverrideLinks,,1 K
=,,L M
new,,N Q

Dictionary,,R \
<,,\ ]
uint,,] a
,,,a b

>,,p q
(,,q r
),,r s
;,,s t
internal.. 

Dictionary.. 
<.. 
uint..  
,..  !
uint.." &
>..& '#
OverrideToNetworkPrefab..( ?
=..@ A
new..B E

Dictionary..F P
<..P Q
uint..Q U
,..U V
uint..W [
>..[ \
(..\ ]
)..] ^
;..^ _
[44 	
Tooltip44	 
(44 
$str	44 �
)
44� �
]
44� �
public55 
uint55 
TickRate55 
=55 
$num55 !
;55! "
[FF 	
TooltipFF	 
(FF 
$str	FF �
)
FF� �
]
FF� �
publicGG 
intGG )
ClientConnectionBufferTimeoutGG 0
=GG1 2
$numGG3 5
;GG5 6
[LL 	
TooltipLL	 
(LL 
$strLL U
)LLU V
]LLV W
publicMM 
boolMM 
ConnectionApprovalMM &
=MM' (
falseMM) .
;MM. /
[RR 	
TooltipRR	 
(RR 
$strRR J
)RRJ K
]RRK L
publicSS 
byteSS 
[SS 
]SS 
ConnectionDataSS $
=SS% &
newSS' *
byteSS+ /
[SS/ 0
$numSS0 1
]SS1 2
;SS2 3
[XX 	
TooltipXX	 
(XX 
$strXX P
)XXP Q
]XXQ R
publicYY 
boolYY 
EnableTimeResyncYY $
=YY% &
falseYY' ,
;YY, -
[^^ 	
Tooltip^^	 
(^^ 
$str^^ T
)^^T U
]^^U V
public__ 
int__ 
TimeResyncInterval__ %
=__& '
$num__( *
;__* +
[dd 	
Tooltipdd	 
(dd 
$str	dd �
)
dd� �
]
dd� �
publicee 
boolee -
!EnsureNetworkVariableLengthSafetyee 5
=ee6 7
falseee8 =
;ee= >
[kk 	
Tooltipkk	 
(kk 
$str	kk �
+
kk� �
$str	ll �
)
ll� �
]
ll� �
publicmm 
boolmm !
EnableSceneManagementmm )
=mm* +
truemm, 0
;mm0 1
[ss 	
Tooltipss	 
(ss 
$strss l
)ssl m
]ssm n
publictt 
booltt 
ForceSamePrefabstt $
=tt% &
truett' +
;tt+ ,
[yy 	
Tooltipyy	 
(yy 
$stryy U
)yyU V
]yyV W
publiczz 
boolzz 
RecycleNetworkIdszz %
=zz& '
truezz( ,
;zz, -
[ 	
Tooltip	 
( 
$str _
)_ `
]` a
public
�� 
float
�� #
NetworkIdRecycleDelay
�� *
=
��+ ,
$num
��- 1
;
��1 2
[
�� 	
Tooltip
��	 
(
�� 
$str
�� G
)
��G H
]
��H I
public
�� 
HashSize
�� 
RpcHashSize
�� #
=
��$ %
HashSize
��& .
.
��. /
VarIntFourBytes
��/ >
;
��> ?
[
�� 	
Tooltip
��	 
(
�� 
$str�� �
)��� �
]��� �
public
�� 
int
�� 
LoadSceneTimeOut
�� #
=
��$ %
$num
��& )
;
��) *
[
�� 	
Tooltip
��	 
(
�� 
$str�� �
)��� �
]��� �
public
�� 
float
�� 
SpawnTimeout
�� !
=
��" #
$num
��$ &
;
��& '
public
�� 
bool
�� 
EnableNetworkLogs
�� %
=
��& '
true
��( ,
;
��, -
public
�� 
const
�� 
int
�� 
RttAverageSamples
�� *
=
��+ ,
$num
��- .
;
��. /
public
�� 
const
�� 
int
�� 

�� &
=
��' (
$num
��) +
;
��+ ,
public
�� 
string
�� 
ToBase64
�� 
(
�� 
)
��  
{
�� 	

�� 
config
��  
=
��! "
this
��# '
;
��' (
var
�� 
writer
�� 
=
�� 
new
�� 
FastBufferWriter
�� -
(
��- .
MessagingSystem
��. =
.
��= >-
NON_FRAGMENTED_MESSAGE_MAX_SIZE
��> ]
,
��] ^
	Allocator
��_ h
.
��h i
Temp
��i m
)
��m n
;
��n o
using
�� 
(
�� 
writer
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
config
��& ,
.
��, -
ProtocolVersion
��- <
)
��< =
;
��= >
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
config
��& ,
.
��, -
TickRate
��- 5
)
��5 6
;
��6 7
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
config
��& ,
.
��, -+
ClientConnectionBufferTimeout
��- J
)
��J K
;
��K L
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
config
��& ,
.
��, - 
ConnectionApproval
��- ?
)
��? @
;
��@ A
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
config
��& ,
.
��, -
LoadSceneTimeOut
��- =
)
��= >
;
��> ?
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
config
��& ,
.
��, -
EnableTimeResync
��- =
)
��= >
;
��> ?
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
config
��& ,
.
��, -/
!EnsureNetworkVariableLengthSafety
��- N
)
��N O
;
��O P
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
config
��& ,
.
��, -
RpcHashSize
��- 8
)
��8 9
;
��9 :
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
ForceSamePrefabs
��& 6
)
��6 7
;
��7 8
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &#
EnableSceneManagement
��& ;
)
��; <
;
��< =
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
RecycleNetworkIds
��& 7
)
��7 8
;
��8 9
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &#
NetworkIdRecycleDelay
��& ;
)
��; <
;
��< =
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
EnableNetworkLogs
��& 7
)
��7 8
;
��8 9
return
�� 
Convert
�� 
.
�� 
ToBase64String
�� -
(
��- .
writer
��. 4
.
��4 5
ToArray
��5 <
(
��< =
)
��= >
)
��> ?
;
��? @
}
�� 
}
�� 	
public
�� 
void
�� 

FromBase64
�� 
(
�� 
string
�� %
base64
��& ,
)
��, -
{
�� 	

�� 
config
��  
=
��! "
this
��# '
;
��' (
byte
�� 
[
�� 
]
�� 
binary
�� 
=
�� 
Convert
�� #
.
��# $
FromBase64String
��$ 4
(
��4 5
base64
��5 ;
)
��; <
;
��< =
using
�� 
var
�� 
reader
�� 
=
�� 
new
�� "
FastBufferReader
��# 3
(
��3 4
binary
��4 :
,
��: ;
	Allocator
��< E
.
��E F
Temp
��F J
)
��J K
;
��K L
using
�� 
(
�� 
reader
�� 
)
�� 
{
�� 
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0
ProtocolVersion
��0 ?
)
��? @
;
��@ A
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0
TickRate
��0 8
)
��8 9
;
��9 :
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0+
ClientConnectionBufferTimeout
��0 M
)
��M N
;
��N O
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0 
ConnectionApproval
��0 B
)
��B C
;
��C D
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0
LoadSceneTimeOut
��0 @
)
��@ A
;
��A B
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0
EnableTimeResync
��0 @
)
��@ A
;
��A B
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0/
!EnsureNetworkVariableLengthSafety
��0 Q
)
��Q R
;
��R S
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0
RpcHashSize
��0 ;
)
��; <
;
��< =
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0
ForceSamePrefabs
��0 @
)
��@ A
;
��A B
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0#
EnableSceneManagement
��0 E
)
��E F
;
��F G
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0
RecycleNetworkIds
��0 A
)
��A B
;
��B C
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0#
NetworkIdRecycleDelay
��0 E
)
��E F
;
��F G
reader
�� 
.
�� 

�� $
(
��$ %
out
��% (
config
��) /
.
��/ 0
EnableNetworkLogs
��0 A
)
��A B
;
��B C
}
�� 
}
�� 	
private
�� 
ulong
�� 
?
�� 
m_ConfigHash
�� #
=
��$ %
null
��& *
;
��* +
public
�� 
ulong
�� 
	GetConfig
�� 
(
�� 
bool
�� #
cache
��$ )
=
��* +
true
��, 0
)
��0 1
{
�� 	
if
�� 
(
�� 
m_ConfigHash
�� 
!=
�� 
null
��  $
&&
��% '
cache
��( -
)
��- .
{
�� 
return
�� 
m_ConfigHash
�� #
.
��# $
Value
��$ )
;
��) *
}
�� 
var
�� 
writer
�� 
=
�� 
new
�� 
FastBufferWriter
�� -
(
��- .
MessagingSystem
��. =
.
��= >-
NON_FRAGMENTED_MESSAGE_MAX_SIZE
��> ]
,
��] ^
	Allocator
��_ h
.
��h i
Temp
��i m
,
��m n
int
��o r
.
��r s
MaxValue
��s {
)
��{ |
;
��| }
using
�� 
(
�� 
writer
�� 
)
�� 
{
�� 
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
ProtocolVersion
��& 5
)
��5 6
;
��6 7
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
NetworkConstants
��& 6
.
��6 7
PROTOCOL_VERSION
��7 G
)
��G H
;
��H I
if
�� 
(
�� 
ForceSamePrefabs
�� $
)
��$ %
{
�� 
var
�� 
sortedDictionary
�� (
=
��) *(
NetworkPrefabOverrideLinks
��+ E
.
��E F
OrderBy
��F M
(
��M N
x
��N O
=>
��P R
x
��S T
.
��T U
Key
��U X
)
��X Y
;
��Y Z
foreach
�� 
(
�� 
var
��  
sortedEntry
��! ,
in
��- /
sortedDictionary
��0 @
)
��@ A
{
�� 
writer
�� 
.
�� 
WriteValueSafe
�� -
(
��- .
sortedEntry
��. 9
.
��9 :
Key
��: =
)
��= >
;
��> ?
}
�� 
}
�� 
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
TickRate
��& .
)
��. /
;
��/ 0
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% & 
ConnectionApproval
��& 8
)
��8 9
;
��9 :
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
ForceSamePrefabs
��& 6
)
��6 7
;
��7 8
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &#
EnableSceneManagement
��& ;
)
��; <
;
��< =
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &/
!EnsureNetworkVariableLengthSafety
��& G
)
��G H
;
��H I
writer
�� 
.
�� 
WriteValueSafe
�� %
(
��% &
RpcHashSize
��& 1
)
��1 2
;
��2 3
if
�� 
(
�� 
cache
�� 
)
�� 
{
�� 
m_ConfigHash
��  
=
��! "
XXHash
��# )
.
��) *
Hash64
��* 0
(
��0 1
writer
��1 7
.
��7 8
ToArray
��8 ?
(
��? @
)
��@ A
)
��A B
;
��B C
return
�� 
m_ConfigHash
�� '
.
��' (
Value
��( -
;
��- .
}
�� 
return
�� 
XXHash
�� 
.
�� 
Hash64
�� $
(
��$ %
writer
��% +
.
��+ ,
ToArray
��, 3
(
��3 4
)
��4 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
public
�� 
bool
�� 

�� !
(
��! "
ulong
��" '
hash
��( ,
)
��, -
{
�� 	
return
�� 
hash
�� 
==
�� 
	GetConfig
�� $
(
��$ %
)
��% &
;
��& '
}
�� 	
}
�� 
}�� �
nC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\INetworkMessage.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal)) 
	interface))
INetworkMessage)) &
{** 
void++ 
	Serialize++
(++ 
FastBufferWriter++ '
writer++( .
)++. /
;++/ 0
bool,, 
Deserialize,,
(,, 
FastBufferReader,, )
reader,,* 0
,,,0 1
ref,,2 5
NetworkContext,,6 D
context,,E L
),,L M
;,,M N
void-- 
Handle--
(-- 
ref-- 
NetworkContext-- &
context--' .
)--. /
;--/ 0
}.. 
}// �J
�C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Messaging\Messages\ConnectionRequestMessage.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
struct
ConnectionRequestMessage ,
:- .
INetworkMessage/ >
{ 
public 
ulong 

ConfigHash 
;  
public 
byte 
[ 
] 
ConnectionData $
;$ %
public		 
bool		 $
ShouldSendConnectionData		 ,
;		, -
public 
void 
	Serialize 
( 
FastBufferWriter .
writer/ 5
)5 6
{ 	
if
(
ShouldSendConnectionData
)
{ 
writer 
. 
WriteValueSafe %
(% &

ConfigHash& 0
)0 1
;1 2
writer 
. 
WriteValueSafe %
(% &
ConnectionData& 4
)4 5
;5 6
} 
else 
{ 
writer 
. 
WriteValueSafe %
(% &

ConfigHash& 0
)0 1
;1 2
} 
} 	
public 
bool 
Deserialize 
(  
FastBufferReader  0
reader1 7
,7 8
ref9 <
NetworkContext= K
contextL S
)S T
{ 	
var 
networkManager 
=  
(! "
NetworkManager" 0
)0 1
context1 8
.8 9
SystemOwner9 D
;D E
if 
( 
! 
networkManager 
.  
IsServer  (
)( )
{ 
return 
false 
; 
} 
if   
(   
networkManager   
.   

.  , -
ConnectionApproval  - ?
)  ? @
{!! 
if"" 
("" 
!"" 
reader"" 
."" 
TryBeginRead"" (
(""( )
FastBufferWriter"") 9
.""9 :
GetWriteSize"": F
(""F G

ConfigHash""G Q
)""Q R
+""S T
FastBufferWriter""U e
.""e f
GetWriteSize""f r
<""r s
int""s v
>""v w
(""w x
)""x y
)""y z
)""z {
{## 
if$$ 
($$ 

NetworkLog$$ "
.$$" #
CurrentLogLevel$$# 2
<=$$3 5
LogLevel$$6 >
.$$> ?
Normal$$? E
)$$E F
{%% 

NetworkLog&& "
.&&" #

LogWarning&&# -
(&&- .
$"&&. 0
$str&&0 n
{&&n o
nameof&&o u
(&&u v

)
&&� �
}
&&� �
$str
&&� �
"
&&� �
)
&&� �
;
&&� �
}'' 
networkManager)) "
.))" #
DisconnectClient))# 3
())3 4
context))4 ;
.)); <
SenderId))< D
)))D E
;))E F
return** 
false**  
;**  !
}++ 
reader-- 
.-- 
	ReadValue--  
(--  !
out--! $

ConfigHash--% /
)--/ 0
;--0 1
if// 
(// 
!// 
networkManager// #
.//# $

.//1 2

(//? @

ConfigHash//@ J
)//J K
)//K L
{00 
if11 
(11 

NetworkLog11 "
.11" #
CurrentLogLevel11# 2
<=113 5
LogLevel116 >
.11> ?
Normal11? E
)11E F
{22 

NetworkLog33 "
.33" #

LogWarning33# -
(33- .
$"33. 0
{330 1
nameof331 7
(337 8

)33E F
}33F G
$str	33G �
"
33� �
)
33� �
;
33� �
}44 
networkManager66 "
.66" #
DisconnectClient66# 3
(663 4
context664 ;
.66; <
SenderId66< D
)66D E
;66E F
return77 
false77  
;77  !
}88 
reader:: 
.:: 

(::$ %
out::% (
ConnectionData::) 7
)::7 8
;::8 9
};; 
else<< 
{== 
if>> 
(>> 
!>> 
reader>> 
.>> 
TryBeginRead>> (
(>>( )
FastBufferWriter>>) 9
.>>9 :
GetWriteSize>>: F
(>>F G

ConfigHash>>G Q
)>>Q R
)>>R S
)>>S T
{?? 
if@@ 
(@@ 

NetworkLog@@ "
.@@" #
CurrentLogLevel@@# 2
<=@@3 5
LogLevel@@6 >
.@@> ?
Normal@@? E
)@@E F
{AA 

NetworkLogBB "
.BB" #

LogWarningBB# -
(BB- .
$"BB. 0
$strBB0 V
"BBV W
)BBW X
;BBX Y
}CC 
networkManagerEE "
.EE" #
DisconnectClientEE# 3
(EE3 4
contextEE4 ;
.EE; <
SenderIdEE< D
)EED E
;EEE F
returnFF 
falseFF  
;FF  !
}GG 
readerHH 
.HH 
	ReadValueHH  
(HH  !
outHH! $

ConfigHashHH% /
)HH/ 0
;HH0 1
ifJJ 
(JJ 
!JJ 
networkManagerJJ #
.JJ# $

.JJ1 2

(JJ? @

ConfigHashJJ@ J
)JJJ K
)JJK L
{KK 
ifLL 
(LL 

NetworkLogLL "
.LL" #
CurrentLogLevelLL# 2
<=LL3 5
LogLevelLL6 >
.LL> ?
NormalLL? E
)LLE F
{MM 

NetworkLogNN "
.NN" #

LogWarningNN# -
(NN- .
$"NN. 0
{NN0 1
nameofNN1 7
(NN7 8

)NNE F
}NNF G
$str	NNG �
"
NN� �
)
NN� �
;
NN� �
}OO 
networkManagerQQ "
.QQ" #
DisconnectClientQQ# 3
(QQ3 4
contextQQ4 ;
.QQ; <
SenderIdQQ< D
)QQD E
;QQE F
returnRR 
falseRR  
;RR  !
}SS 
}TT 
returnVV 
trueVV 
;VV 
}WW 	
publicYY 
voidYY 
HandleYY 
(YY 
refYY 
NetworkContextYY -
contextYY. 5
)YY5 6
{ZZ 	
var[[ 
networkManager[[ 
=[[  
([[! "
NetworkManager[[" 0
)[[0 1
context[[1 8
.[[8 9
SystemOwner[[9 D
;[[D E
var\\ 
senderId\\ 
=\\ 
context\\ "
.\\" #
SenderId\\# +
;\\+ ,
if^^ 
(^^ 
networkManager^^ 
.^^ 
PendingClients^^ -
.^^- .
TryGetValue^^. 9
(^^9 :
senderId^^: B
,^^B C
out^^D G

client^^V \
)^^\ ]
)^^] ^
{__ 
clientaa 
.aa 
ConnectionStateaa &
=aa' (

.aa6 7
Stateaa7 <
.aa< =
PendingApprovalaa= L
;aaL M
}bb 
ifdd 
(dd 
networkManagerdd 
.dd 

.dd, -
ConnectionApprovaldd- ?
)dd? @
{ee 
varhh 
responsehh 
=hh 
newhh "
NetworkManagerhh# 1
.hh1 2&
ConnectionApprovalResponsehh2 L
(hhL M
)hhM N
;hhN O
networkManagerii 
.ii 
ClientsToApproveii /
[ii/ 0
senderIdii0 8
]ii8 9
=ii: ;
responseii< D
;iiD E
networkManagerkk 
.kk &
ConnectionApprovalCallbackkk 9
(kk9 :
newll 
NetworkManagerll &
.ll& '%
ConnectionApprovalRequestll' @
{mm 
Payloadnn 
=nn  !
ConnectionDatann" 0
,nn0 1
ClientNetworkIdoo '
=oo( )
senderIdoo* 2
}pp 
,pp 
responsepp 
)pp  
;pp  !
}qq 
elserr 
{ss 
vartt 
responsett 
=tt 
newtt "
NetworkManagertt# 1
.tt1 2&
ConnectionApprovalResponsett2 L
{uu 
Approvedvv 
=vv 
truevv #
,vv# $
CreatePlayerObjectww &
=ww' (
networkManagerww) 7
.ww7 8

.wwE F
PlayerPrefabwwF R
!=wwS U
nullwwV Z
}xx 
;xx 
networkManageryy 
.yy $
HandleConnectionApprovalyy 7
(yy7 8
senderIdyy8 @
,yy@ A
responseyyB J
)yyJ K
;yyK L
}zz 
}{{ 	
}|| 
}}} �8
C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Transports\UTP\NetworkMetricsPipelineStage.cs
	namespace		 	
Unity		
 
.		 
Netcode		 
.		 

Transports		 "
.		" #
UTP		# &
{

 
[ 
BurstCompile 
] 
internal 
unsafe
struct '
NetworkMetricsPipelineStage 6
:7 8!
INetworkPipelineStage9 N
{
static $
TransportFunctionPointer '
<' ( 
NetworkPipelineStage( <
.< =
ReceiveDelegate= L
>L M
ReceiveFunctionN ]
=^ _
new` c$
TransportFunctionPointerd |
<| }!
NetworkPipelineStage	} �
.
� �
ReceiveDelegate
� �
>
� �
(
� �
Receive
� �
)
� �
;
� �
static $
TransportFunctionPointer '
<' ( 
NetworkPipelineStage( <
.< =
SendDelegate= I
>I J
SendFunctionK W
=X Y
newZ ]$
TransportFunctionPointer^ v
<v w!
NetworkPipelineStage	w �
.
� �
SendDelegate
� �
>
� �
(
� �
Send
� �
)
� �
;
� �
static $
TransportFunctionPointer '
<' ( 
NetworkPipelineStage( <
.< =(
InitializeConnectionDelegate= Y
>Y Z(
InitializeConnectionFunction[ w
=x y
newz }%
TransportFunctionPointer	~ �
<
� �"
NetworkPipelineStage
� �
.
� �*
InitializeConnectionDelegate
� �
>
� �
(
� �"
InitializeConnection
� �
)
� �
;
� �
public  
NetworkPipelineStage #
StaticInitialize$ 4
(4 5
byte5 9
*9 : 
staticInstanceBuffer; O
,O P
int &
staticInstanceBufferLength *
,* +
NetworkSettings 
settings $
)$ %
{ 	
return 
new  
NetworkPipelineStage +
(+ ,
ReceiveFunction 
,  
SendFunction 
, (
InitializeConnectionFunction ,
,, -
ReceiveCapacity 
:  
$num! "
," #
SendCapacity 
: 
$num 
,  
HeaderCapacity 
: 
$num  !
,! "
SharedStateCapacity #
:# $

.2 3
SizeOf3 9
<9 :!
NetworkMetricsContext: O
>O P
(P Q
)Q R
)R S
;S T
} 	
public   
int   

StaticSize   
=>    
$num  ! "
;  " #
["" 	
BurstCompile""	 
("" 
DisableDirectCall"" '
=""( )
true""* .
)"". /
]""/ 0
[## 	
MonoPInvokeCallback##	 
(## 
typeof## #
(### $ 
NetworkPipelineStage##$ 8
.##8 9
ReceiveDelegate##9 H
)##H I
)##I J
]##J K
private$$ 
static$$ 
void$$ 
Receive$$ #
($$# $
ref$$$ '"
NetworkPipelineContext$$( >"
networkPipelineContext$$? U
,$$U V
ref%% 
InboundRecvBuffer%% ! 
inboundReceiveBuffer%%" 6
,%%6 7
ref&&  
NetworkPipelineStage&& $
.&&$ %
Requests&&% -
requests&&. 6
,&&6 7
int'' 
systemHeaderSize''  
)''  !
{(( 	
var))  
networkMetricContext)) $
=))% &
())' (!
NetworkMetricsContext))( =
*))= >
)))> ?"
networkPipelineContext))? U
.))U V'
internalSharedProcessBuffer))V q
;))q r 
networkMetricContext**  
->**  "
PacketReceivedCount**" 5
++**5 7
;**7 8
}++ 	
[-- 	
BurstCompile--	 
(-- 
DisableDirectCall-- '
=--( )
true--* .
)--. /
]--/ 0
[.. 	
MonoPInvokeCallback..	 
(.. 
typeof.. #
(..# $ 
NetworkPipelineStage..$ 8
...8 9
SendDelegate..9 E
)..E F
)..F G
]..G H
private// 
static// 
int// 
Send// 
(//  
ref//  #"
NetworkPipelineContext//$ :"
networkPipelineContext//; Q
,//Q R
ref00 
InboundSendBuffer00 !
inboundSendBuffer00" 3
,003 4
ref11  
NetworkPipelineStage11 $
.11$ %
Requests11% -
requests11. 6
,116 7
int22 
systemHeaderSize22  
)22  !
{33 	
var44  
networkMetricContext44 $
=44% &
(44' (!
NetworkMetricsContext44( =
*44= >
)44> ?"
networkPipelineContext44? U
.44U V'
internalSharedProcessBuffer44V q
;44q r 
networkMetricContext55  
->55  "
PacketSentCount55" 1
++551 3
;553 4
return66 
$num66 
;66 
}77 	
[99 	
BurstCompile99	 
(99 
DisableDirectCall99 '
=99( )
true99* .
)99. /
]99/ 0
[:: 	
MonoPInvokeCallback::	 
(:: 
typeof:: #
(::# $ 
NetworkPipelineStage::$ 8
.::8 9(
InitializeConnectionDelegate::9 U
)::U V
)::V W
]::W X
private;; 
static;; 
void;;  
InitializeConnection;; 0
(;;0 1
byte;;1 5
*;;5 6 
staticInstanceBuffer;;7 K
,;;K L
int;;M P&
staticInstanceBufferLength;;Q k
,;;k l
byte<< 
*<< 
sendProcessBuffer<< #
,<<# $
int<<% (#
sendProcessBufferLength<<) @
,<<@ A
byte<<B F
*<<F G 
receiveProcessBuffer<<H \
,<<\ ]
int<<^ a&
receiveProcessBufferLength<<b |
,<<| }
byte== 
*== 
sharedProcessBuffer== %
,==% &
int==' *%
sharedProcessBufferLength==+ D
)==D E
{>> 	
var??  
networkMetricContext?? $
=??% &
(??' (!
NetworkMetricsContext??( =
*??= >
)??> ?
sharedProcessBuffer??? R
;??R S 
networkMetricContext@@  
->@@  "
PacketSentCount@@" 1
=@@2 3
$num@@4 5
;@@5 6 
networkMetricContextAA  
->AA  "
PacketReceivedCountAA" 5
=AA6 7
$numAA8 9
;AA9 :
}BB 	
}CC 
}DD �
~C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\NetworkVariable\NetworkVariablePermission.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

enum )
NetworkVariableReadPermission -
{ 
Everyone 
, 
Owner 
,
} 
public 

enum *
NetworkVariableWritePermission .
{ 
Server 
, 
Owner 
} 
}   �
kC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Metrics\NetworkMetrics.cs
	namespace

 	
Unity


 
.

 
Netcode

 
{ 
internal 
class
NetworkMetrics !
:" #
INetworkMetrics$ 3
{
const 
ulong  
k_MaxMetricsPerFrame (
=) *
$num+ 0
;0 1
static 

Dictionary 
< 
uint 
, 
string  &
>& '!
s_SceneEventTypeNames( =
;= >
static 
ProfilerMarker 
s_FrameDispatch -
=. /
new0 3
ProfilerMarker4 B
(B C
$"C E
{E F
nameofF L
(L M
NetworkMetricsM [
)[ \
}\ ]
$str] k
"k l
)l m
;m n
static 
NetworkMetrics 
( 
) 
{ 	!
s_SceneEventTypeNames !
=" #
new$ '

Dictionary( 2
<2 3
uint3 7
,7 8
string9 ?
>? @
(@ A
)A B
;B C
foreach 
( 
SceneEventType #
type$ (
in) +
Enum, 0
.0 1
	GetValues1 :
(: ;
typeof; A
(A B
SceneEventTypeB P
)P Q
)Q R
)R S
{ 
s_SceneEventTypeNames %
[% &
(& '
uint' +
)+ ,
type, 0
]0 1
=2 3
type4 8
.8 9
ToString9 A
(A B
)B C
;C D
} 
} 	
private 
static 
string !
GetSceneEventTypeName 3
(3 4
uint4 8
typeCode9 A
)A B
{ 	
if 
( 
! !
s_SceneEventTypeNames &
.& '
TryGetValue' 2
(2 3
typeCode3 ;
,; <
out= @
stringA G
nameH L
)L M
)M N
{   
name!! 
=!! 
$str!!  
;!!  !
}"" 
return$$ 
name$$ 
;$$ 
}%% 	
private'' 
readonly'' 
Counter''   
m_TransportBytesSent''! 5
=''6 7
new''8 ;
Counter''< C
(''C D
NetworkMetricTypes''D V
.''V W
TotalBytesSent''W e
.''e f
Id''f h
)''h i
{(( 	!
ShouldResetOnDispatch)) !
=))" #
true))$ (
,))( )
}** 	
;**	 

private++ 
readonly++ 
Counter++  $
m_TransportBytesReceived++! 9
=++: ;
new++< ?
Counter++@ G
(++G H
NetworkMetricTypes++H Z
.++Z [
TotalBytesReceived++[ m
.++m n
Id++n p
)++p q
{,, 	!
ShouldResetOnDispatch-- !
=--" #
true--$ (
,--( )
}.. 	
;..	 

private00 
readonly00 
EventMetric00 $
<00$ %
NetworkMessageEvent00% 8
>008 9%
m_NetworkMessageSentEvent00: S
=00T U
new00V Y
EventMetric00Z e
<00e f
NetworkMessageEvent00f y
>00y z
(00z {
NetworkMetricTypes	00{ �
.
00� � 
NetworkMessageSent
00� �
.
00� �
Id
00� �
)
00� �
;
00� �
private11 
readonly11 
EventMetric11 $
<11$ %
NetworkMessageEvent11% 8
>118 9)
m_NetworkMessageReceivedEvent11: W
=11X Y
new11Z ]
EventMetric11^ i
<11i j
NetworkMessageEvent11j }
>11} ~
(11~ 
NetworkMetricTypes	11 �
.
11� �$
NetworkMessageReceived
11� �
.
11� �
Id
11� �
)
11� �
;
11� �
private22 
readonly22 
EventMetric22 $
<22$ %
NamedMessageEvent22% 6
>226 7#
m_NamedMessageSentEvent228 O
=22P Q
new22R U
EventMetric22V a
<22a b
NamedMessageEvent22b s
>22s t
(22t u
NetworkMetricTypes	22u �
.
22� �
NamedMessageSent
22� �
.
22� �
Id
22� �
)
22� �
;
22� �
private33 
readonly33 
EventMetric33 $
<33$ %
NamedMessageEvent33% 6
>336 7'
m_NamedMessageReceivedEvent338 S
=33T U
new33V Y
EventMetric33Z e
<33e f
NamedMessageEvent33f w
>33w x
(33x y
NetworkMetricTypes	33y �
.
33� �"
NamedMessageReceived
33� �
.
33� �
Id
33� �
)
33� �
;
33� �
private44 
readonly44 
EventMetric44 $
<44$ %
UnnamedMessageEvent44% 8
>448 9%
m_UnnamedMessageSentEvent44: S
=44T U
new44V Y
EventMetric44Z e
<44e f
UnnamedMessageEvent44f y
>44y z
(44z {
NetworkMetricTypes	44{ �
.
44� � 
UnnamedMessageSent
44� �
.
44� �
Id
44� �
)
44� �
;
44� �
private55 
readonly55 
EventMetric55 $
<55$ %
UnnamedMessageEvent55% 8
>558 9)
m_UnnamedMessageReceivedEvent55: W
=55X Y
new55Z ]
EventMetric55^ i
<55i j
UnnamedMessageEvent55j }
>55} ~
(55~ 
NetworkMetricTypes	55 �
.
55� �$
UnnamedMessageReceived
55� �
.
55� �
Id
55� �
)
55� �
;
55� �
private66 
readonly66 
EventMetric66 $
<66$ % 
NetworkVariableEvent66% 9
>669 :+
m_NetworkVariableDeltaSentEvent66; Z
=66[ \
new66] `
EventMetric66a l
<66l m!
NetworkVariableEvent	66m �
>
66� �
(
66� � 
NetworkMetricTypes
66� �
.
66� �&
NetworkVariableDeltaSent
66� �
.
66� �
Id
66� �
)
66� �
;
66� �
private77 
readonly77 
EventMetric77 $
<77$ % 
NetworkVariableEvent77% 9
>779 :/
#m_NetworkVariableDeltaReceivedEvent77; ^
=77_ `
new77a d
EventMetric77e p
<77p q!
NetworkVariableEvent	77q �
>
77� �
(
77� � 
NetworkMetricTypes
77� �
.
77� �*
NetworkVariableDeltaReceived
77� �
.
77� �
Id
77� �
)
77� �
;
77� �
private88 
readonly88 
EventMetric88 $
<88$ % 
OwnershipChangeEvent88% 9
>889 :&
m_OwnershipChangeSentEvent88; U
=88V W
new88X [
EventMetric88\ g
<88g h 
OwnershipChangeEvent88h |
>88| }
(88} ~
NetworkMetricTypes	88~ �
.
88� �!
OwnershipChangeSent
88� �
.
88� �
Id
88� �
)
88� �
;
88� �
private99 
readonly99 
EventMetric99 $
<99$ % 
OwnershipChangeEvent99% 9
>999 :*
m_OwnershipChangeReceivedEvent99; Y
=99Z [
new99\ _
EventMetric99` k
<99k l!
OwnershipChangeEvent	99l �
>
99� �
(
99� � 
NetworkMetricTypes
99� �
.
99� �%
OwnershipChangeReceived
99� �
.
99� �
Id
99� �
)
99� �
;
99� �
private:: 
readonly:: 
EventMetric:: $
<::$ %
ObjectSpawnedEvent::% 7
>::7 8"
m_ObjectSpawnSentEvent::9 O
=::P Q
new::R U
EventMetric::V a
<::a b
ObjectSpawnedEvent::b t
>::t u
(::u v
NetworkMetricTypes	::v �
.
::� �
ObjectSpawnedSent
::� �
.
::� �
Id
::� �
)
::� �
;
::� �
private;; 
readonly;; 
EventMetric;; $
<;;$ %
ObjectSpawnedEvent;;% 7
>;;7 8&
m_ObjectSpawnReceivedEvent;;9 S
=;;T U
new;;V Y
EventMetric;;Z e
<;;e f
ObjectSpawnedEvent;;f x
>;;x y
(;;y z
NetworkMetricTypes	;;z �
.
;;� �#
ObjectSpawnedReceived
;;� �
.
;;� �
Id
;;� �
)
;;� �
;
;;� �
private<< 
readonly<< 
EventMetric<< $
<<<$ % 
ObjectDestroyedEvent<<% 9
><<9 :$
m_ObjectDestroySentEvent<<; S
=<<T U
new<<V Y
EventMetric<<Z e
<<<e f 
ObjectDestroyedEvent<<f z
><<z {
(<<{ |
NetworkMetricTypes	<<| �
.
<<� �!
ObjectDestroyedSent
<<� �
.
<<� �
Id
<<� �
)
<<� �
;
<<� �
private== 
readonly== 
EventMetric== $
<==$ % 
ObjectDestroyedEvent==% 9
>==9 :(
m_ObjectDestroyReceivedEvent==; W
===X Y
new==Z ]
EventMetric==^ i
<==i j 
ObjectDestroyedEvent==j ~
>==~ 
(	== � 
NetworkMetricTypes
==� �
.
==� �%
ObjectDestroyedReceived
==� �
.
==� �
Id
==� �
)
==� �
;
==� �
private>> 
readonly>> 
EventMetric>> $
<>>$ %
RpcEvent>>% -
>>>- .
m_RpcSentEvent>>/ =
=>>> ?
new>>@ C
EventMetric>>D O
<>>O P
RpcEvent>>P X
>>>X Y
(>>Y Z
NetworkMetricTypes>>Z l
.>>l m
RpcSent>>m t
.>>t u
Id>>u w
)>>w x
;>>x y
private?? 
readonly?? 
EventMetric?? $
<??$ %
RpcEvent??% -
>??- .
m_RpcReceivedEvent??/ A
=??B C
new??D G
EventMetric??H S
<??S T
RpcEvent??T \
>??\ ]
(??] ^
NetworkMetricTypes??^ p
.??p q
RpcReceived??q |
.??| }
Id??} 
)	?? �
;
??� �
private@@ 
readonly@@ 
EventMetric@@ $
<@@$ %
ServerLogEvent@@% 3
>@@3 4 
m_ServerLogSentEvent@@5 I
=@@J K
new@@L O
EventMetric@@P [
<@@[ \
ServerLogEvent@@\ j
>@@j k
(@@k l
NetworkMetricTypes@@l ~
.@@~ 

.
@@� �
Id
@@� �
)
@@� �
;
@@� �
privateAA 
readonlyAA 
EventMetricAA $
<AA$ %
ServerLogEventAA% 3
>AA3 4$
m_ServerLogReceivedEventAA5 M
=AAN O
newAAP S
EventMetricAAT _
<AA_ `
ServerLogEventAA` n
>AAn o
(AAo p
NetworkMetricTypes	AAp �
.
AA� �
ServerLogReceived
AA� �
.
AA� �
Id
AA� �
)
AA� �
;
AA� �
privateBB 
readonlyBB 
EventMetricBB $
<BB$ %
SceneEventMetricBB% 5
>BB5 6!
m_SceneEventSentEventBB7 L
=BBM N
newBBO R
EventMetricBBS ^
<BB^ _
SceneEventMetricBB_ o
>BBo p
(BBp q
NetworkMetricTypes	BBq �
.
BB� �
SceneEventSent
BB� �
.
BB� �
Id
BB� �
)
BB� �
;
BB� �
privateCC 
readonlyCC 
EventMetricCC $
<CC$ %
SceneEventMetricCC% 5
>CC5 6%
m_SceneEventReceivedEventCC7 P
=CCQ R
newCCS V
EventMetricCCW b
<CCb c
SceneEventMetricCCc s
>CCs t
(CCt u
NetworkMetricTypes	CCu �
.
CC� � 
SceneEventReceived
CC� �
.
CC� �
Id
CC� �
)
CC� �
;
CC� �
privateFF 
readonlyFF 
CounterFF  
m_PacketSentCounterFF! 4
=FF5 6
newFF7 :
CounterFF; B
(FFB C
NetworkMetricTypesFFC U
.FFU V
PacketsSentFFV a
.FFa b
IdFFb d
)FFd e
{GG 	!
ShouldResetOnDispatchHH !
=HH" #
trueHH$ (
,HH( )
}II 	
;II	 

privateJJ 
readonlyJJ 
CounterJJ  #
m_PacketReceivedCounterJJ! 8
=JJ9 :
newJJ; >
CounterJJ? F
(JJF G
NetworkMetricTypesJJG Y
.JJY Z
PacketsReceivedJJZ i
.JJi j
IdJJj l
)JJl m
{KK 	!
ShouldResetOnDispatchLL !
=LL" #
trueLL$ (
,LL( )
}MM 	
;MM	 

privateNN 
readonlyNN 
GaugeNN 
m_RttToServerGaugeNN 1
=NN2 3
newNN4 7
GaugeNN8 =
(NN= >
NetworkMetricTypesNN> P
.NNP Q
RttToServerNNQ \
.NN\ ]
IdNN] _
)NN_ `
{OO 	!
ShouldResetOnDispatchPP !
=PP" #
truePP$ (
,PP( )
}QQ 	
;QQ	 

privateRR 
readonlyRR 
GaugeRR !
m_NetworkObjectsGaugeRR 4
=RR5 6
newRR7 :
GaugeRR; @
(RR@ A
NetworkMetricTypesRRA S
.RRS T
NetworkObjectsRRT b
.RRb c
IdRRc e
)RRe f
{SS 	!
ShouldResetOnDispatchTT !
=TT" #
trueTT$ (
,TT( )
}UU 	
;UU	 

privateVV 
readonlyVV 
GaugeVV 
m_ConnectionsGaugeVV 1
=VV2 3
newVV4 7
GaugeVV8 =
(VV= >
NetworkMetricTypesVV> P
.VVP Q
ConnectedClientsVVQ a
.VVa b
IdVVb d
)VVd e
{WW 	!
ShouldResetOnDispatchXX !
=XX" #
trueXX$ (
,XX( )
}YY 	
;YY	 

privateZZ 
readonlyZZ 
GaugeZZ 
m_PacketLossGaugeZZ 0
=ZZ1 2
newZZ3 6
GaugeZZ7 <
(ZZ< =
NetworkMetricTypesZZ= O
.ZZO P

PacketLossZZP Z
.ZZZ [
IdZZ[ ]
)ZZ] ^
;ZZ^ _
private]] 
ulong]] &
m_NumberOfMetricsThisFrame]] 0
;]]0 1
public__ 
NetworkMetrics__ 
(__ 
)__ 
{`` 	

Dispatcheraa 
=aa 
newaa #
MetricDispatcherBuilderaa 4
(aa4 5
)aa5 6
.bb 
WithCountersbb 
(bb  
m_TransportBytesSentbb 2
,bb2 3$
m_TransportBytesReceivedbb4 L
)bbL M
.cc 
WithMetricEventscc !
(cc! "%
m_NetworkMessageSentEventcc" ;
,cc; <)
m_NetworkMessageReceivedEventcc= Z
)ccZ [
.dd 
WithMetricEventsdd !
(dd! "#
m_NamedMessageSentEventdd" 9
,dd9 :'
m_NamedMessageReceivedEventdd; V
)ddV W
.ee 
WithMetricEventsee !
(ee! "%
m_UnnamedMessageSentEventee" ;
,ee; <)
m_UnnamedMessageReceivedEventee= Z
)eeZ [
.ff 
WithMetricEventsff !
(ff! "+
m_NetworkVariableDeltaSentEventff" A
,ffA B/
#m_NetworkVariableDeltaReceivedEventffC f
)fff g
.gg 
WithMetricEventsgg !
(gg! "&
m_OwnershipChangeSentEventgg" <
,gg< =*
m_OwnershipChangeReceivedEventgg> \
)gg\ ]
.hh 
WithMetricEventshh !
(hh! ""
m_ObjectSpawnSentEventhh" 8
,hh8 9&
m_ObjectSpawnReceivedEventhh: T
)hhT U
.ii 
WithMetricEventsii !
(ii! "$
m_ObjectDestroySentEventii" :
,ii: ;(
m_ObjectDestroyReceivedEventii< X
)iiX Y
.jj 
WithMetricEventsjj !
(jj! "
m_RpcSentEventjj" 0
,jj0 1
m_RpcReceivedEventjj2 D
)jjD E
.kk 
WithMetricEventskk !
(kk! " 
m_ServerLogSentEventkk" 6
,kk6 7$
m_ServerLogReceivedEventkk8 P
)kkP Q
.ll 
WithMetricEventsll !
(ll! "!
m_SceneEventSentEventll" 7
,ll7 8%
m_SceneEventReceivedEventll9 R
)llR S
.nn 
WithCountersnn 
(nn 
m_PacketSentCounternn 1
,nn1 2#
m_PacketReceivedCounternn3 J
)nnJ K
.oo 

WithGaugesoo 
(oo 
m_RttToServerGaugeoo .
)oo. /
.pp 

WithGaugespp 
(pp !
m_NetworkObjectsGaugepp 1
)pp1 2
.qq 

WithGaugesqq 
(qq 
m_ConnectionsGaugeqq .
)qq. /
.rr 

WithGaugesrr 
(rr 
m_PacketLossGaugerr -
)rr- .
.tt 
Buildtt 
(tt 
)tt 
;tt 

Dispatchervv 
.vv 
RegisterObservervv '
(vv' (
NetcodeObservervv( 7
.vv7 8
Observervv8 @
)vv@ A
;vvA B
}ww 	
internalyy 
IMetricDispatcheryy "

Dispatcheryy# -
{yy. /
getyy0 3
;yy3 4
}yy5 6
private{{ 
bool{{ 
CanSendMetrics{{ #
=>{{$ &&
m_NumberOfMetricsThisFrame{{' A
<{{B C 
k_MaxMetricsPerFrame{{D X
;{{X Y
public}} 
void}} 
SetConnectionId}} #
(}}# $
ulong}}$ )
connectionId}}* 6
)}}6 7
{~~ 	

Dispatcher 
. 
SetConnectionId &
(& '
connectionId' 3
)3 4
;4 5
}
�� 	
public
�� 
void
�� %
TrackTransportBytesSent
�� +
(
��+ ,
long
��, 0

bytesCount
��1 ;
)
��; <
{
�� 	"
m_TransportBytesSent
��  
.
��  !
	Increment
��! *
(
��* +

bytesCount
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
�� )
TrackTransportBytesReceived
�� /
(
��/ 0
long
��0 4

bytesCount
��5 ?
)
��? @
{
�� 	&
m_TransportBytesReceived
�� $
.
��$ %
	Increment
��% .
(
��. /

bytesCount
��/ 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
void
�� %
TrackNetworkMessageSent
�� +
(
��+ ,
ulong
��, 1
receivedClientId
��2 B
,
��B C
string
��D J
messageType
��K V
,
��V W
long
��X \

bytesCount
��] g
)
��g h
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_NetworkMessageSentEvent
�� %
.
��% &
Mark
��& *
(
��* +
new
��+ .!
NetworkMessageEvent
��/ B
(
��B C
new
��C F
ConnectionInfo
��G U
(
��U V
receivedClientId
��V f
)
��f g
,
��g h
messageType
��i t
,
��t u

bytesCount��v �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� )
TrackNetworkMessageReceived
�� /
(
��/ 0
ulong
��0 5
senderClientId
��6 D
,
��D E
string
��F L
messageType
��M X
,
��X Y
long
��Z ^

bytesCount
��_ i
)
��i j
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_NetworkMessageReceivedEvent
�� )
.
��) *
Mark
��* .
(
��. /
new
��/ 2!
NetworkMessageEvent
��3 F
(
��F G
new
��G J
ConnectionInfo
��K Y
(
��Y Z
senderClientId
��Z h
)
��h i
,
��i j
messageType
��k v
,
��v w

bytesCount��x �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� #
TrackNamedMessageSent
�� )
(
��) *
ulong
��* /
receiverClientId
��0 @
,
��@ A
string
��B H
messageName
��I T
,
��T U
long
��V Z

bytesCount
��[ e
)
��e f
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_NamedMessageSentEvent
�� #
.
��# $
Mark
��$ (
(
��( )
new
��) ,
NamedMessageEvent
��- >
(
��> ?
new
��? B
ConnectionInfo
��C Q
(
��Q R
receiverClientId
��R b
)
��b c
,
��c d
messageName
��e p
,
��p q

bytesCount
��r |
)
��| }
)
��} ~
;
��~ "
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� #
TrackNamedMessageSent
�� )
(
��) *!
IReadOnlyCollection
��* =
<
��= >
ulong
��> C
>
��C D
receiverClientIds
��E V
,
��V W
string
��X ^
messageName
��_ j
,
��j k
long
��l p

bytesCount
��q {
)
��{ |
{
�� 	
foreach
�� 
(
�� 
var
�� 
receiver
�� !
in
��" $
receiverClientIds
��% 6
)
��6 7
{
�� 
TrackNamedMessageSent
�� %
(
��% &
receiver
��& .
,
��. /
messageName
��0 ;
,
��; <

bytesCount
��= G
)
��G H
;
��H I
}
�� 
}
�� 	
public
�� 
void
�� '
TrackNamedMessageReceived
�� -
(
��- .
ulong
��. 3
senderClientId
��4 B
,
��B C
string
��D J
messageName
��K V
,
��V W
long
��X \

bytesCount
��] g
)
��g h
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_NamedMessageReceivedEvent
�� '
.
��' (
Mark
��( ,
(
��, -
new
��- 0
NamedMessageEvent
��1 B
(
��B C
new
��C F
ConnectionInfo
��G U
(
��U V
senderClientId
��V d
)
��d e
,
��e f
messageName
��g r
,
��r s

bytesCount
��t ~
)
��~ 
)�� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� %
TrackUnnamedMessageSent
�� +
(
��+ ,
ulong
��, 1
receiverClientId
��2 B
,
��B C
long
��D H

bytesCount
��I S
)
��S T
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_UnnamedMessageSentEvent
�� %
.
��% &
Mark
��& *
(
��* +
new
��+ .!
UnnamedMessageEvent
��/ B
(
��B C
new
��C F
ConnectionInfo
��G U
(
��U V
receiverClientId
��V f
)
��f g
,
��g h

bytesCount
��i s
)
��s t
)
��t u
;
��u v"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� %
TrackUnnamedMessageSent
�� +
(
��+ ,!
IReadOnlyCollection
��, ?
<
��? @
ulong
��@ E
>
��E F
receiverClientIds
��G X
,
��X Y
long
��Z ^

bytesCount
��_ i
)
��i j
{
�� 	
foreach
�� 
(
�� 
var
�� 
receiverClientId
�� )
in
��* ,
receiverClientIds
��- >
)
��> ?
{
�� 
TrackUnnamedMessageSent
�� '
(
��' (
receiverClientId
��( 8
,
��8 9

bytesCount
��: D
)
��D E
;
��E F
}
�� 
}
�� 	
public
�� 
void
�� )
TrackUnnamedMessageReceived
�� /
(
��/ 0
ulong
��0 5
senderClientId
��6 D
,
��D E
long
��F J

bytesCount
��K U
)
��U V
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_UnnamedMessageReceivedEvent
�� )
.
��) *
Mark
��* .
(
��. /
new
��/ 2!
UnnamedMessageEvent
��3 F
(
��F G
new
��G J
ConnectionInfo
��K Y
(
��Y Z
senderClientId
��Z h
)
��h i
,
��i j

bytesCount
��k u
)
��u v
)
��v w
;
��w x"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� +
TrackNetworkVariableDeltaSent
�� 1
(
��1 2
ulong
�� 
receiverClientId
�� "
,
��" #

�� 

�� '
,
��' (
string
�� 
variableName
�� 
,
��  
string
�� "
networkBehaviourName
�� '
,
��' (
long
�� 

bytesCount
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_NetworkVariableDeltaSentEvent
�� +
.
��+ ,
Mark
��, 0
(
��0 1
new
�� "
NetworkVariableEvent
�� (
(
��( )
new
�� 
ConnectionInfo
�� &
(
��& '
receiverClientId
��' 7
)
��7 8
,
��8 9!
GetObjectIdentifier
�� '
(
��' (

��( 5
)
��5 6
,
��6 7
variableName
��  
,
��  !"
networkBehaviourName
�� (
,
��( )

bytesCount
�� 
)
�� 
)
��  
;
��  !"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� /
!TrackNetworkVariableDeltaReceived
�� 5
(
��5 6
ulong
�� 
senderClientId
��  
,
��  !

�� 

�� '
,
��' (
string
�� 
variableName
�� 
,
��  
string
�� "
networkBehaviourName
�� '
,
��' (
long
�� 

bytesCount
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
#m_NetworkVariableDeltaReceivedEvent
�� /
.
��/ 0
Mark
��0 4
(
��4 5
new
�� "
NetworkVariableEvent
�� (
(
��( )
new
�� 
ConnectionInfo
�� &
(
��& '
senderClientId
��' 5
)
��5 6
,
��6 7!
GetObjectIdentifier
�� '
(
��' (

��( 5
)
��5 6
,
��6 7
variableName
��  
,
��  !"
networkBehaviourName
�� (
,
��( )

bytesCount
�� 
)
�� 
)
��  
;
��  !"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� &
TrackOwnershipChangeSent
�� ,
(
��, -
ulong
��- 2
receiverClientId
��3 C
,
��C D

��E R

��S `
,
��` a
long
��b f

bytesCount
��g q
)
��q r
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_OwnershipChangeSentEvent
�� &
.
��& '
Mark
��' +
(
��+ ,
new
��, /"
OwnershipChangeEvent
��0 D
(
��D E
new
��E H
ConnectionInfo
��I W
(
��W X
receiverClientId
��X h
)
��h i
,
��i j!
GetObjectIdentifier
��k ~
(
��~ 

)��� �
,��� �

bytesCount��� �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� *
TrackOwnershipChangeReceived
�� 0
(
��0 1
ulong
��1 6
senderClientId
��7 E
,
��E F

��G T

��U b
,
��b c
long
��d h

bytesCount
��i s
)
��s t
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_OwnershipChangeReceivedEvent
�� *
.
��* +
Mark
��+ /
(
��/ 0
new
��0 3"
OwnershipChangeEvent
��4 H
(
��H I
new
��I L
ConnectionInfo
��M [
(
��[ \
senderClientId
��\ j
)
��j k
,
��k l!
GetObjectIdentifier
�� #
(
��# $

��$ 1
)
��1 2
,
��2 3

bytesCount
��4 >
)
��> ?
)
��? @
;
��@ A"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� "
TrackObjectSpawnSent
�� (
(
��( )
ulong
��) .
receiverClientId
��/ ?
,
��? @

��A N

��O \
,
��\ ]
long
��^ b

bytesCount
��c m
)
��m n
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_ObjectSpawnSentEvent
�� "
.
��" #
Mark
��# '
(
��' (
new
��( + 
ObjectSpawnedEvent
��, >
(
��> ?
new
��? B
ConnectionInfo
��C Q
(
��Q R
receiverClientId
��R b
)
��b c
,
��c d!
GetObjectIdentifier
��e x
(
��x y

)��� �
,��� �

bytesCount��� �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� &
TrackObjectSpawnReceived
�� ,
(
��, -
ulong
��- 2
senderClientId
��3 A
,
��A B

��C P

��Q ^
,
��^ _
long
��` d

bytesCount
��e o
)
��o p
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_ObjectSpawnReceivedEvent
�� &
.
��& '
Mark
��' +
(
��+ ,
new
��, / 
ObjectSpawnedEvent
��0 B
(
��B C
new
��C F
ConnectionInfo
��G U
(
��U V
senderClientId
��V d
)
��d e
,
��e f!
GetObjectIdentifier
��g z
(
��z {

)��� �
,��� �

bytesCount��� �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� $
TrackObjectDestroySent
�� *
(
��* +
ulong
��+ 0
receiverClientId
��1 A
,
��A B

��C P

��Q ^
,
��^ _
long
��` d

bytesCount
��e o
)
��o p
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_ObjectDestroySentEvent
�� $
.
��$ %
Mark
��% )
(
��) *
new
��* -"
ObjectDestroyedEvent
��. B
(
��B C
new
��C F
ConnectionInfo
��G U
(
��U V
receiverClientId
��V f
)
��f g
,
��g h!
GetObjectIdentifier
��i |
(
��| }

)��� �
,��� �

bytesCount��� �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� (
TrackObjectDestroyReceived
�� .
(
��. /
ulong
��/ 4
senderClientId
��5 C
,
��C D

��E R

��S `
,
��` a
long
��b f

bytesCount
��g q
)
��q r
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_ObjectDestroyReceivedEvent
�� (
.
��( )
Mark
��) -
(
��- .
new
��. 1"
ObjectDestroyedEvent
��2 F
(
��F G
new
��G J
ConnectionInfo
��K Y
(
��Y Z
senderClientId
��Z h
)
��h i
,
��i j!
GetObjectIdentifier
��k ~
(
��~ 

)��� �
,��� �

bytesCount��� �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� 
TrackRpcSent
��  
(
��  !
ulong
�� 
receiverClientId
�� "
,
��" #

�� 

�� '
,
��' (
string
�� 
rpcName
�� 
,
�� 
string
�� "
networkBehaviourName
�� '
,
��' (
long
�� 

bytesCount
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_RpcSentEvent
�� 
.
�� 
Mark
�� 
(
��  
new
�� 
RpcEvent
�� 
(
�� 
new
�� 
ConnectionInfo
�� &
(
��& '
receiverClientId
��' 7
)
��7 8
,
��8 9!
GetObjectIdentifier
�� '
(
��' (

��( 5
)
��5 6
,
��6 7
rpcName
�� 
,
�� "
networkBehaviourName
�� (
,
��( )

bytesCount
�� 
)
�� 
)
��  
;
��  !"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� 
TrackRpcSent
��  
(
��  !
ulong
�� 
[
�� 
]
�� 
receiverClientIds
�� %
,
��% &

�� 

�� '
,
��' (
string
�� 
rpcName
�� 
,
�� 
string
�� "
networkBehaviourName
�� '
,
��' (
long
�� 

bytesCount
�� 
)
�� 
{
�� 	
foreach
�� 
(
�� 
var
�� 
receiverClientId
�� )
in
��* ,
receiverClientIds
��- >
)
��> ?
{
�� 
TrackRpcSent
�� 
(
�� 
receiverClientId
�� -
,
��- .

��/ <
,
��< =
rpcName
��> E
,
��E F"
networkBehaviourName
��G [
,
��[ \

bytesCount
��] g
)
��g h
;
��h i
}
�� 
}
�� 	
public
�� 
void
�� 
TrackRpcReceived
�� $
(
��$ %
ulong
�� 
senderClientId
��  
,
��  !

�� 

�� '
,
��' (
string
�� 
rpcName
�� 
,
�� 
string
�� "
networkBehaviourName
�� '
,
��' (
long
�� 

bytesCount
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_RpcReceivedEvent
�� 
.
�� 
Mark
�� #
(
��# $
new
�� 
RpcEvent
�� 
(
�� 
new
��  
ConnectionInfo
��! /
(
��/ 0
senderClientId
��0 >
)
��> ?
,
��? @!
GetObjectIdentifier
�� '
(
��' (

��( 5
)
��5 6
,
��6 7
rpcName
�� 
,
�� "
networkBehaviourName
�� (
,
��( )

bytesCount
�� 
)
�� 
)
��  
;
��  !"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
��  
TrackServerLogSent
�� &
(
��& '
ulong
��' ,
receiverClientId
��- =
,
��= >
uint
��? C
logType
��D K
,
��K L
long
��M Q

bytesCount
��R \
)
��\ ]
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_ServerLogSentEvent
��  
.
��  !
Mark
��! %
(
��% &
new
��& )
ServerLogEvent
��* 8
(
��8 9
new
��9 <
ConnectionInfo
��= K
(
��K L
receiverClientId
��L \
)
��\ ]
,
��] ^
(
��_ `
Multiplayer
��` k
.
��k l
Tools
��l q
.
��q r
MetricTypes
��r }
.
��} ~
LogLevel��~ �
)��� �
logType��� �
,��� �

bytesCount��� �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� $
TrackServerLogReceived
�� *
(
��* +
ulong
��+ 0
senderClientId
��1 ?
,
��? @
uint
��A E
logType
��F M
,
��M N
long
��O S

bytesCount
��T ^
)
��^ _
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_ServerLogReceivedEvent
�� $
.
��$ %
Mark
��% )
(
��) *
new
��* -
ServerLogEvent
��. <
(
��< =
new
��= @
ConnectionInfo
��A O
(
��O P
senderClientId
��P ^
)
��^ _
,
��_ `
(
��a b
Multiplayer
��b m
.
��m n
Tools
��n s
.
��s t
MetricTypes
��t 
.�� �
LogLevel��� �
)��� �
logType��� �
,��� �

bytesCount��� �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� !
TrackSceneEventSent
�� '
(
��' (

��( 5
<
��5 6
ulong
��6 ;
>
��; <
receiverClientIds
��= N
,
��N O
uint
��P T
sceneEventType
��U c
,
��c d
string
��e k
	sceneName
��l u
,
��u v
long
��w {

bytesCount��| �
)��� �
{
�� 	
foreach
�� 
(
�� 
var
�� 
receiverClientId
�� )
in
��* ,
receiverClientIds
��- >
)
��> ?
{
�� 
TrackSceneEventSent
�� #
(
��# $
receiverClientId
��$ 4
,
��4 5
sceneEventType
��6 D
,
��D E
	sceneName
��F O
,
��O P

bytesCount
��Q [
)
��[ \
;
��\ ]
}
�� 
}
�� 	
public
�� 
void
�� !
TrackSceneEventSent
�� '
(
��' (
ulong
��( -
receiverClientId
��. >
,
��> ?
uint
��@ D
sceneEventType
��E S
,
��S T
string
��U [
	sceneName
��\ e
,
��e f
long
��g k

bytesCount
��l v
)
��v w
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_SceneEventSentEvent
�� !
.
��! "
Mark
��" &
(
��& '
new
��' *
SceneEventMetric
��+ ;
(
��; <
new
��< ?
ConnectionInfo
��@ N
(
��N O
receiverClientId
��O _
)
��_ `
,
��` a#
GetSceneEventTypeName
��b w
(
��w x
sceneEventType��x �
)��� �
,��� �
	sceneName��� �
,��� �

bytesCount��� �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� %
TrackSceneEventReceived
�� +
(
��+ ,
ulong
��, 1
senderClientId
��2 @
,
��@ A
uint
��B F
sceneEventType
��G U
,
��U V
string
��W ]
	sceneName
��^ g
,
��g h
long
��i m

bytesCount
��n x
)
��x y
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_SceneEventReceivedEvent
�� %
.
��% &
Mark
��& *
(
��* +
new
��+ .
SceneEventMetric
��/ ?
(
��? @
new
��@ C
ConnectionInfo
��D R
(
��R S
senderClientId
��S a
)
��a b
,
��b c#
GetSceneEventTypeName
��d y
(
��y z
sceneEventType��z �
)��� �
,��� �
	sceneName��� �
,��� �

bytesCount��� �
)��� �
)��� �
;��� �"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� 
TrackPacketSent
�� #
(
��# $
uint
��$ (
packetCount
��) 4
)
��4 5
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_PacketSentCounter
�� 
.
��  
	Increment
��  )
(
��) *
packetCount
��* 5
)
��5 6
;
��6 7"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� !
TrackPacketReceived
�� '
(
��' (
uint
��( ,
packetCount
��- 8
)
��8 9
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_PacketReceivedCounter
�� #
.
��# $
	Increment
��$ -
(
��- .
packetCount
��. 9
)
��9 :
;
��: ;"
IncrementMetricCount
��  
(
��  !
)
��! "
;
��" #
}
�� 	
public
�� 
void
�� 
UpdateRttToServer
�� %
(
��% &
int
��& )
rttMilliseconds
��* 9
)
��9 :
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
var
�� 

rttSeconds
�� 
=
�� 
rttMilliseconds
�� ,
*
��- .
$num
��/ 3
;
��3 4 
m_RttToServerGauge
�� 
.
�� 
Set
�� "
(
��" #

rttSeconds
��# -
)
��- .
;
��. /
}
�� 	
public
�� 
void
�� '
UpdateNetworkObjectsCount
�� -
(
��- .
int
��. 1
count
��2 7
)
��7 8
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_NetworkObjectsGauge
�� !
.
��! "
Set
��" %
(
��% &
count
��& +
)
��+ ,
;
��, -
}
�� 	
public
�� 
void
�� $
UpdateConnectionsCount
�� *
(
��* +
int
��+ .
count
��/ 4
)
��4 5
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_ConnectionsGauge
�� 
.
�� 
Set
�� "
(
��" #
count
��# (
)
��( )
;
��) *
}
�� 	
public
�� 
void
�� 
UpdatePacketLoss
�� $
(
��$ %
float
��% *

packetLoss
��+ 5
)
��5 6
{
�� 	
if
�� 
(
�� 
!
�� 
CanSendMetrics
�� 
)
��  
{
�� 
return
�� 
;
�� 
}
�� 
m_PacketLossGauge
�� 
.
�� 
Set
�� !
(
��! "

packetLoss
��" ,
)
��, -
;
��- .
}
�� 	
public
�� 
void
�� 

�� !
(
��! "
)
��" #
{
�� 	
s_FrameDispatch
�� 
.
�� 
Begin
�� !
(
��! "
)
��" #
;
��# $

Dispatcher
�� 
.
�� 
Dispatch
�� 
(
��  
)
��  !
;
��! "
s_FrameDispatch
�� 
.
�� 
End
�� 
(
��  
)
��  !
;
��! "(
m_NumberOfMetricsThisFrame
�� &
=
��' (
$num
��) *
;
��* +
}
�� 	
private
�� 
void
�� "
IncrementMetricCount
�� )
(
��) *
)
��* +
{
�� 	(
m_NumberOfMetricsThisFrame
�� &
++
��& (
;
��( )
}
�� 	
private
�� 
static
�� %
NetworkObjectIdentifier
�� .!
GetObjectIdentifier
��/ B
(
��B C

��C P

��Q ^
)
��^ _
{
�� 	
return
�� 
new
�� %
NetworkObjectIdentifier
�� .
(
��. /

��/ <
.
��< =
GetNameForMetrics
��= N
(
��N O
)
��O P
,
��P Q

��R _
.
��_ `
NetworkObjectId
��` o
)
��o p
;
��p q
}
�� 	
}
�� 
internal
�� 
class
�� 
NetcodeObserver
�� &
{
�� 
public
�� 
static
�� 
IMetricObserver
�� %
Observer
��& .
{
��/ 0
get
��1 4
;
��4 5
}
��6 7
=
��8 9#
MetricObserverFactory
��: O
.
��O P
	Construct
��P Y
(
��Y Z
)
��Z [
;
��[ \
}
�� 
}�� �
sC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Configuration\NetworkConstants.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
internal 
static
class 
NetworkConstants *
{ 
internal 
const 
string 
PROTOCOL_VERSION .
=/ 0
$str1 9
;9 :
}		 
}

 �
mC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Connection\NetworkClient.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

class 

{		 
public
ulong
ClientId
;
public 

PlayerObject )
;) *
public 
List 
< 

>! "
OwnedObjects# /
{ 	
get 
{ 
if 
( 
PlayerObject  
!=! #
null$ (
&&) +
PlayerObject, 8
.8 9
NetworkManager9 G
!=H J
nullK O
&&P R
PlayerObjectS _
._ `
NetworkManager` n
.n o
IsListeningo z
)z {
{ 
return 
PlayerObject '
.' (
NetworkManager( 6
.6 7
SpawnManager7 C
.C D!
GetClientOwnedObjectsD Y
(Y Z
ClientIdZ b
)b c
;c d
} 
return   
new   
List   
<    

>  - .
(  . /
)  / 0
;  0 1
}!! 
}"" 	
}## 
}$$ ��
qC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Runtime\Spawning\NetworkSpawnManager.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

class 
NetworkSpawnManager $
{ 
public 
readonly 

Dictionary "
<" #
ulong# (
,( )

>7 8
SpawnedObjects9 G
=H I
newJ M

DictionaryN X
<X Y
ulongY ^
,^ _

>m n
(n o
)o p
;p q
public 
readonly 
HashSet 
<  

>- .
SpawnedObjectsList/ A
=B C
newD G
HashSetH O
<O P

>] ^
(^ _
)_ `
;` a
public 
readonly 

Dictionary "
<" #
ulong# (
,( )

Dictionary* 4
<4 5
ulong5 :
,: ;

>I J
>J K#
OwnershipToObjectsTableL c
=d e
newf i

Dictionaryj t
<t u
ulongu z
,z {

Dictionary	| �
<
� �
ulong
� �
,
� �

� �
>
� �
>
� �
(
� �
)
� �
;
� �
private&& 

Dictionary&& 
<&& 
ulong&&  
,&&  !
ulong&&" '
>&&' ($
m_ObjectToOwnershipTable&&) A
=&&B C
new&&D G

Dictionary&&H R
<&&R S
ulong&&S X
,&&X Y
ulong&&Z _
>&&_ `
(&&` a
)&&a b
;&&b c
internal++ 
void++  
UpdateOwnershipTable++ *
(++* +


,++F G
ulong++H M
newOwner++N V
,++V W
bool++X \

isRemoving++] g
=++h i
false++j o
)++o p
{,, 	
var-- 

=-- 
newOwner--  (
;--( )
if00 
(00 $
m_ObjectToOwnershipTable00 (
.00( )
ContainsKey00) 4
(004 5

.00B C
NetworkObjectId00C R
)00R S
)00S T
{11 

=33 $
m_ObjectToOwnershipTable33  8
[338 9

.33F G
NetworkObjectId33G V
]33V W
;33W X
if66 
(66 

isRemoving66 
)66 
{77 $
m_ObjectToOwnershipTable88 ,
.88, -
Remove88- 3
(883 4

.88A B
NetworkObjectId88B Q
)88Q R
;88R S
}99 
else:: 
{;; $
m_ObjectToOwnershipTable<< ,
[<<, -

.<<: ;
NetworkObjectId<<; J
]<<J K
=<<L M
newOwner<<N V
;<<V W
}== 
}>> 
else?? 
{@@ 
m_ObjectToOwnershipTableBB (
.BB( )
AddBB) ,
(BB, -

.BB: ;
NetworkObjectIdBB; J
,BBJ K
newOwnerBBL T
)BBT U
;BBU V
}CC 
ifFF 
(FF 

!=FF  
newOwnerFF! )
&&FF* ,#
OwnershipToObjectsTableFF- D
.FFD E
ContainsKeyFFE P
(FFP Q

)FF^ _
)FF_ `
{GG 
ifII 
(II #
OwnershipToObjectsTableII +
[II+ ,

]II9 :
.II: ;
ContainsKeyII; F
(IIF G

.IIT U
NetworkObjectIdIIU d
)IId e
)IIe f
{JJ #
OwnershipToObjectsTableLL +
[LL+ ,

]LL9 :
.LL: ;
RemoveLL; A
(LLA B

.LLO P
NetworkObjectIdLLP _
)LL_ `
;LL` a
ifOO 
(OO 
NetworkManagerOO &
.OO& '
IsServerOO' /
)OO/ 0
{PP 

.QQ% &*
InvokeBehaviourOnLostOwnershipQQ& D
(QQD E
)QQE F
;QQF G
}RR 
ifUU 
(UU 

isRemovingUU "
)UU" #
{VV 
returnWW 
;WW 
}XX 
}YY 
elseZZ 
{[[ 
throw]] 
new]] 
	Exception]] '
(]]' (
$"]]( *
$str]]* 4
{]]4 5

}]]B C
$str]]C R
{]]R S
nameof]]S Y
(]]Y Z$
m_ObjectToOwnershipTable]]Z r
)]]r s
}]]s t
$str	]]t �
{
]]� �
nameof
]]� �
(
]]� �%
OwnershipToObjectsTable
]]� �
)
]]� �
}
]]� �
$str
]]� �
"
]]� �
)
]]� �
;
]]� �
}^^ 
}__ 
ifbb 
(bb 
!bb #
OwnershipToObjectsTablebb (
.bb( )
ContainsKeybb) 4
(bb4 5
newOwnerbb5 =
)bb= >
)bb> ?
{cc 
OwnershipToObjectsTabledd '
.dd' (
Adddd( +
(dd+ ,
newOwnerdd, 4
,dd4 5
newdd6 9

Dictionarydd: D
<ddD E
ulongddE J
,ddJ K

>ddY Z
(ddZ [
)dd[ \
)dd\ ]
;dd] ^
}ee 
ifhh 
(hh 
!hh #
OwnershipToObjectsTablehh (
[hh( )
newOwnerhh) 1
]hh1 2
.hh2 3
ContainsKeyhh3 >
(hh> ?

.hhL M
NetworkObjectIdhhM \
)hh\ ]
)hh] ^
{ii 
OwnershipToObjectsTablekk '
[kk' (
newOwnerkk( 0
]kk0 1
.kk1 2
Addkk2 5
(kk5 6

.kkC D
NetworkObjectIdkkD S
,kkS T

)kkb c
;kkc d
ifnn 
(nn 
NetworkManagernn "
.nn" #
IsServernn# +
)nn+ ,
{oo 

.pp! ",
 InvokeBehaviourOnGainedOwnershippp" B
(ppB C
)ppC D
;ppD E
}qq 
}rr 
elsess 
ifss 
(ss 

isRemovingss 
)ss  
{tt 
OwnershipToObjectsTableuu '
[uu' (

]uu5 6
.uu6 7
Removeuu7 =
(uu= >

.uuK L
NetworkObjectIduuL [
)uu[ \
;uu\ ]
}vv 
elseww 
ifww 
(ww 
NetworkManagerww #
.ww# $
LogLevelww$ ,
==ww- /
LogLevelww0 8
.ww8 9
	Developerww9 B
)wwB C
{xx 

NetworkLogyy 
.yy 

LogWarningyy %
(yy% &
$"yy& (
$stryy( K
{yyK L

}yyY Z
$stryyZ y
{yyy z

.
yy� �
NetworkObjectId
yy� �
}
yy� �
$str
yy� �
"
yy� �
)
yy� �
;
yy� �
}zz 
}{{ 	
public
�� 
List
�� 
<
�� 

�� !
>
��! "#
GetClientOwnedObjects
��# 8
(
��8 9
ulong
��9 >
clientId
��? G
)
��G H
{
�� 	
if
�� 
(
�� 
!
�� %
OwnershipToObjectsTable
�� (
.
��( )
ContainsKey
��) 4
(
��4 5
clientId
��5 =
)
��= >
)
��> ?
{
�� 
OwnershipToObjectsTable
�� '
.
��' (
Add
��( +
(
��+ ,
clientId
��, 4
,
��4 5
new
��6 9

Dictionary
��: D
<
��D E
ulong
��E J
,
��J K

��L Y
>
��Y Z
(
��Z [
)
��[ \
)
��\ ]
;
��] ^
}
�� 
return
�� %
OwnershipToObjectsTable
�� *
[
��* +
clientId
��+ 3
]
��3 4
.
��4 5
Values
��5 ;
.
��; <
ToList
��< B
(
��B C
)
��C D
;
��D E
}
�� 	
public
�� 
NetworkManager
�� 
NetworkManager
�� ,
{
��- .
get
��/ 2
;
��2 3
}
��4 5
internal
�� !
NetworkSpawnManager
�� $
(
��$ %
NetworkManager
��% 3
networkManager
��4 B
)
��B C
{
�� 	
NetworkManager
�� 
=
�� 
networkManager
�� +
;
��+ ,
}
�� 	
internal
�� 
readonly
�� 
Queue
�� 
<
��  
ReleasedNetworkId
��  1
>
��1 2&
ReleasedNetworkObjectIds
��3 K
=
��L M
new
��N Q
Queue
��R W
<
��W X
ReleasedNetworkId
��X i
>
��i j
(
��j k
)
��k l
;
��l m
private
�� 
ulong
�� &
m_NetworkObjectIdCounter
�� .
;
��. /
private
�� 
List
�� 
<
�� 
ulong
�� 
>
�� 
m_TargetClientIds
�� -
=
��. /
new
��0 3
List
��4 8
<
��8 9
ulong
��9 >
>
��> ?
(
��? @
)
��@ A
;
��A B
internal
�� 
ulong
��  
GetNetworkObjectId
�� )
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� &
ReleasedNetworkObjectIds
�� (
.
��( )
Count
��) .
>
��/ 0
$num
��1 2
&&
��3 5
NetworkManager
��6 D
.
��D E

��E R
.
��R S
RecycleNetworkIds
��S d
&&
��e g
(
��h i
Time
��i m
.
��m n
unscaledTime
��n z
-
��{ |'
ReleasedNetworkObjectIds��} �
.��� �
Peek��� �
(��� �
)��� �
.��� �
ReleaseTime��� �
)��� �
>=��� �
NetworkManager��� �
.��� �

.��� �%
NetworkIdRecycleDelay��� �
)��� �
{
�� 
return
�� &
ReleasedNetworkObjectIds
�� /
.
��/ 0
Dequeue
��0 7
(
��7 8
)
��8 9
.
��9 :
	NetworkId
��: C
;
��C D
}
�� 
m_NetworkObjectIdCounter
�� $
++
��$ &
;
��& '
return
�� &
m_NetworkObjectIdCounter
�� +
;
��+ ,
}
�� 	
public
�� 

�� "
GetLocalPlayerObject
�� 1
(
��1 2
)
��2 3
{
�� 	
return
�� $
GetPlayerNetworkObject
�� )
(
��) *
NetworkManager
��* 8
.
��8 9

��9 F
)
��F G
;
��G H
}
�� 	
public
�� 

�� $
GetPlayerNetworkObject
�� 3
(
��3 4
ulong
��4 9
clientId
��: B
)
��B C
{
�� 	
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
IsServer
��  (
&&
��) +
NetworkManager
��, :
.
��: ;

��; H
!=
��I K
clientId
��L T
)
��T U
{
�� 
throw
�� 
new
��  
NotServerException
�� ,
(
��, -
$str
��- j
)
��j k
;
��k l
}
�� 
if
�� 
(
�� !
TryGetNetworkClient
�� #
(
��# $
clientId
��$ ,
,
��, -
out
��. 1

��2 ?

��@ M
)
��M N
)
��N O
{
�� 
return
�� 

�� $
.
��$ %
PlayerObject
��% 1
;
��1 2
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 
RemoveOwnership
�� %
(
��% &

��& 3

��4 A
)
��A B
{
�� 	
if
�� 
(
�� 
!
�� 
NetworkManager
�� 
.
��  
IsServer
��  (
)
��( )
{
�� 
throw
�� 
new
��  
NotServerException
�� ,
(
��, -
$str
��- S
)
��S T
;
��T U
}
�� 
if
�� 
(
�� 
!
�� 

�� 
.
�� 
	IsSpawned
�� (
)
��( )
{
�� 
throw
�� 
new
�� !
SpawnStateException
�� -
(
��- .
$str
��. E
)
��E F
;
��F G
}
�� 
if
�� 
(
�� 

�� 
.
�� 

�� +
==
��, .
NetworkManager
��/ =
.
��= >
ServerClientId
��> L
)
��L M
{
�� 
return
�� 
;
�� 
}
�� 
UpdateOwnershipTable
��  
(
��  !

��! .
,
��. /
NetworkManager
��0 >
.
��> ?
ServerClientId
��? M
,
��M N
true
��O S
)
��S T
;
��T U

�� 
.
�� 

�� '
=
��( )
NetworkManager
��* 8
.
��8 9
ServerClientId
��9 G
;
��G H
var
�� 
message
�� 
=
�� 
new
�� $
ChangeOwnershipMessage
�� 4
{
�� 
NetworkObjectId
�� 
=
��  !

��" /
.
��/ 0
NetworkObjectId
��0 ?
,
��? @

�� 
=
�� 

��  -
.
��- .

��. ;
}
�� 
;
��
var
�� 
size
�� 
=
�� 
NetworkManager
�� %
.
��% &
SendMessage
��& 1
(
��1 2
ref
��2 5
message
��6 =
,
��= >
NetworkDelivery
��? N
.
��N O
ReliableSequenced
��O `
,
��` a
NetworkManager
��b p
.
��p q"
ConnectedClientsIds��q �
)��� �
;��� �
foreach
�� 
(
�� 
var
�� 
client
�� 
in
��  "
NetworkManager
��# 1
.
��1 2
ConnectedClients
��2 B
)
��B C
{
�� 
NetworkManager
�� 
.
�� 

