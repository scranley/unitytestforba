á
yC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\RpcEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 

RpcEvent 
: 
INetworkMetricEvent )
,) *
INetworkObjectEvent+ >
{ 
public

 
RpcEvent

 
(

 
ConnectionInfo

 &

connection

' 1
,

1 2#
NetworkObjectIdentifier

3 J
	networkId

K T
,

T U
string

V \
name

] a
,

a b
string

c i 
networkBehaviourName

j ~
,

~ 
long


Ä Ñ

bytesCount


Ö è
)


è ê
: 
this 
( 

connection 
, 
	networkId (
,( )#
StringConversionUtility* A
.A B 
ConvertToFixedStringB V
(V W
nameW [
)[ \
,\ ]#
StringConversionUtility^ u
.u v!
ConvertToFixedString	v ä
(
ä ã"
networkBehaviourName
ã ü
)
ü †
,
† °

bytesCount
¢ ¨
)
¨ ≠
{ 	
} 	
public 
RpcEvent 
( 
ConnectionInfo &

connection' 1
,1 2#
NetworkObjectIdentifier3 J
	networkIdK T
,T U
FixedString64BytesV h
namei m
,m n
FixedString64Bytes	o Å"
networkBehaviourName
Ç ñ
,
ñ ó
long
ò ú

bytesCount
ù ß
)
ß ®
{ 	

Connection 
= 

connection #
;# $
	NetworkId 
= 
	networkId !
;! "
Name 
= 
name 
;  
NetworkBehaviourName  
=! " 
networkBehaviourName# 7
;7 8

BytesCount 
= 

bytesCount #
;# $
} 	
public 
ConnectionInfo 

Connection (
{) *
get+ .
;. /
}0 1
public #
NetworkObjectIdentifier &
	NetworkId' 0
{1 2
get3 6
;6 7
}8 9
public 
FixedString64Bytes !
Name" &
{' (
get) ,
;, -
}. /
public 
FixedString64Bytes ! 
NetworkBehaviourName" 6
{7 8
get9 <
;< =
}> ?
public   
long   

BytesCount   
{    
get  ! $
;  $ %
}  & '
}!! 
}"" ü
ÑC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\NetworkMessageEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 

NetworkMessageEvent 
:  
INetworkMetricEvent! 4
{ 
public

 
NetworkMessageEvent

 "
(

" #
ConnectionInfo

# 1

connection

2 <
,

< =
string

> D
name

E I
,

I J
long

K O

bytesCount

P Z
)

Z [
: 
this 
( 

connection 
, #
StringConversionUtility 6
.6 7 
ConvertToFixedString7 K
(K L
nameL P
)P Q
,Q R

bytesCountS ]
)] ^
{ 	
} 	
public 
NetworkMessageEvent "
(" #
ConnectionInfo# 1

connection2 <
,< =
FixedString64Bytes> P
nameQ U
,U V
longW [

bytesCount\ f
)f g
{ 	

Connection 
= 

connection #
;# $
Name 
= 
name 
; 

BytesCount 
= 

bytesCount #
;# $
} 	
public 
ConnectionInfo 

Connection (
{) *
get+ .
;. /
}0 1
public 
FixedString64Bytes !
Name" &
{' (
get) ,
;, -
}. /
public 
long 

BytesCount 
{  
get! $
;$ %
}& '
} 
}  
ÖC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\OwnershipChangeEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 
 
OwnershipChangeEvent 
:  !
INetworkMetricEvent" 5
,5 6
INetworkObjectEvent7 J
{ 
public  
OwnershipChangeEvent #
(# $
ConnectionInfo$ 2

connection3 =
,= >#
NetworkObjectIdentifier? V
	networkIdW `
,` a
longb f

bytesCountg q
)q r
{		 	

Connection

 
=

 

connection

 #
;

# $
	NetworkId 
= 
	networkId !
;! "

BytesCount 
= 

bytesCount #
;# $
} 	
public 
ConnectionInfo 

Connection (
{) *
get+ .
;. /
}0 1
public #
NetworkObjectIdentifier &
	NetworkId' 0
{1 2
get3 6
;6 7
}8 9
public 
long 

BytesCount 
{  
get! $
;$ %
}& '
} 
} ˇ
ÜC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\DirectionalMetricInfo.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
struct 
!
DirectionalMetricInfo  
{ 
public !
DirectionalMetricInfo $
($ %
DirectedMetricType% 7
directedMetricType8 J
)J K
{ 	
DirectedMetricType 
=  
directedMetricType! 3
;3 4
} 	
public !
DirectionalMetricInfo $
($ %

MetricType% /

metricType0 :
,: ;
NetworkDirection< L
networkDirectionM ]
)] ^
{ 	
DirectedMetricType 
=  

metricType! +
.+ ,
GetDirectedMetric, =
(= >
networkDirection> N
)N O
;O P
} 	
internal 
DirectedMetricType #
DirectedMetricType$ 6
{7 8
get9 <
;< =
}> ?
internal 

MetricType 
Type  
=>! #
DirectedMetricType$ 6
.6 7
	GetMetric7 @
(@ A
)A B
;B C
internal 
NetworkDirection !
	Direction" +
=>, .
DirectedMetricType/ A
.A B
GetDirectionB N
(N O
)O P
;P Q
internal   
MetricId   
Id   
=>   
DirectedMetricType    2
.  2 3
GetId  3 8
(  8 9
)  9 :
;  : ;
internal"" 
string"" 
DisplayName"" #
=>""$ &
DirectedMetricType""' 9
.""9 :
GetDisplayName"": H
(""H I
)""I J
;""J K
}## 
}$$ ƒ
ÉC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\ObjectSpawnedEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 

ObjectSpawnedEvent 
: 
INetworkMetricEvent  3
,3 4
INetworkObjectEvent5 H
{ 
public 
ObjectSpawnedEvent !
(! "
ConnectionInfo" 0

connection1 ;
,; <#
NetworkObjectIdentifier= T
	networkIdU ^
,^ _
long` d

bytesCounte o
)o p
{		 	

Connection

 
=

 

connection

 #
;

# $
	NetworkId 
= 
	networkId !
;! "

BytesCount 
= 

bytesCount #
;# $
} 	
public 
ConnectionInfo 

Connection (
{) *
get+ .
;. /
}0 1
public #
NetworkObjectIdentifier &
	NetworkId' 0
{1 2
get3 6
;6 7
}8 9
public 
long 

BytesCount 
{  
get! $
;$ %
}& '
} 
} ‰
ÅC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\NetworkDirection.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Flags 

]
 
enum 
NetworkDirection	 
{ 
None 
= 
$num 
, 
Received		 
=		 
$num		 
<<		 
$num		  
,		  !
Sent

 
=

 
$num

 
<<

 
$num

  
,

  !
SentAndReceived 
= 
Received "
|# $
Sent% )
,) *
} 
static 

class %
NetworkDirectionConstants *
{ 
internal 
const 
int 
k_Mask !
=" #
($ %
int% (
)( )
NetworkDirection) 9
.9 :
SentAndReceived: I
;I J
internal 
const 
int 

k_BitWidth %
=& '
$num( )
;) *
} 
static 

class &
NetworkDirectionExtensions +
{ 
public 
static 
string 
DisplayString *
(* +
this+ /
NetworkDirection0 @
	directionA J
)J K
{ 	
return 
	direction 
== 
NetworkDirection  0
.0 1
None1 5
? 
$str 
: 
	direction 
. 
ToString $
($ %
)% &
;& '
} 	
} 
}   ©.
çC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\DirectedMetricTypeExtensions.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
internal 
static 
class (
DirectedMetricTypeExtensions 6
{ 
static		 
readonly		 

Dictionary		 "
<		" #
DirectedMetricType		# 5
,		5 6
string		7 =
>		= >
s_Identifiers		? L
=		M N
new

 

Dictionary

 
<

 
DirectedMetricType

 -
,

- .
string

/ 5
>

5 6
(

6 7
)

7 8
;

8 9
static 
readonly 

Dictionary "
<" #
DirectedMetricType# 5
,5 6
string7 =
>= >
s_DisplayNames? M
=N O
new 

Dictionary 
< 
DirectedMetricType -
,- .
string/ 5
>5 6
(6 7
)7 8
;8 9
static (
DirectedMetricTypeExtensions +
(+ ,
), -
{ 	
var 
metricTypes 
= 
EnumUtil &
.& '
	GetValues' 0
<0 1

MetricType1 ;
>; <
(< =
)= >
;> ?
var 
networkDirections !
=" #
EnumUtil$ ,
., -
	GetValues- 6
<6 7
NetworkDirection7 G
>G H
(H I
)I J
;J K
foreach 
( 
var 

metricType #
in$ &
metricTypes' 2
)2 3
{ 
foreach 
( 
var 
networkDirection -
in. 0
networkDirections1 B
)B C
{ 
var 
directedMetricType *
=+ ,

metricType- 7
.7 8
GetDirectedMetric8 I
(I J
networkDirectionJ Z
)Z [
;[ \
var 
combinedName $
=% &

metricType' 1
.1 2
ToString2 :
(: ;
); <
+= >
networkDirection? O
.O P
ToStringP X
(X Y
)Y Z
;Z [
s_Identifiers !
[! "
directedMetricType" 4
]4 5
=6 7
combinedName8 D
;D E
s_DisplayNames "
[" #
directedMetricType# 5
]5 6
=7 8

StringUtil9 C
.C D 
AddSpacesToCamelCaseD X
(X Y
combinedNameY e
)e f
;f g
} 
} 
} 	
internal 
static 
DirectedMetricType *
GetDirectedMetric+ <
(< =
this   

MetricType   

metricType   &
,  & '
NetworkDirection!! 
	direction!! &
)!!& '
{"" 	
return## 
(## 
DirectedMetricType## &
)##& '
(##' (
($$ 
($$ 
int$$ 
)$$ 

metricType$$  
<<$$! #%
NetworkDirectionConstants$$$ =
.$$= >

k_BitWidth$$> H
)$$H I
|$$J K
(%% 
(%% 
int%% 
)%% 
	direction%% 
&%%! "%
NetworkDirectionConstants%%$ =
.%%= >
k_Mask%%> D
)%%D E
)%%E F
;%%F G
}&& 	
internal)) 
static)) 

MetricType)) "
	GetMetric))# ,
()), -
this))- 1
DirectedMetricType))2 D
directedMetric))E S
)))S T
{** 	
return++ 
(++ 

MetricType++ 
)++ 
(++  
(++  !
int++! $
)++$ %
directedMetric++% 3
>>++4 6%
NetworkDirectionConstants++7 P
.++P Q

k_BitWidth++Q [
)++[ \
;++\ ]
},, 	
internal// 
static// 
NetworkDirection// (
GetDirection//) 5
(//5 6
this//6 :
DirectedMetricType//; M
directedMetric//N \
)//\ ]
{00 	
return11 
(11 
NetworkDirection11 $
)11$ %
(11% &
(11& '
int11' *
)11* +
directedMetric11+ 9
&11: ;%
NetworkDirectionConstants11< U
.11U V
k_Mask11V \
)11\ ]
;11] ^
}22 	
internal44 
static44 
MetricId44  
GetId44! &
(44& '
this44' +
DirectedMetricType44, >
directedMetric44? M
)44M N
{55 	
return66 
MetricId66 
.66 
Create66 "
(66" #
directedMetric66# 1
)661 2
;662 3
}77 	
internal99 
static99 
string99 
GetDisplayName99 -
(99- .
this99. 2
DirectedMetricType993 E
directedMetric99F T
)99T U
{:: 	
if;; 
(;; 
s_DisplayNames;; 
.;; 
TryGetValue;; *
(;;* +
directedMetric;;+ 9
,;;9 :
out;;; >
var;;? B
id;;C E
);;E F
);;F G
{<< 
return== 
id== 
;== 
}>> 
return?? 
directedMetric?? !
.??! "
ToString??" *
(??* +
)??+ ,
;??, -
}@@ 	
}AA 
}BB ˚
àC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\NetworkObjectIdentifier.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 
#
NetworkObjectIdentifier "
{ 
public

 #
NetworkObjectIdentifier

 &
(

& '
string

' -
name

. 2
,

2 3
ulong

4 9
	networkId

: C
)

C D
: 
this 
( #
StringConversionUtility *
.* + 
ConvertToFixedString+ ?
(? @
name@ D
)D E
,E F
	networkIdG P
)P Q
{ 	
} 	
public #
NetworkObjectIdentifier &
(& '
FixedString64Bytes' 9
name: >
,> ?
ulong@ E
	networkIdF O
)O P
{ 	
Name 
= 
name 
; 
	NetworkId 
= 
	networkId !
;! "
} 	
public 
FixedString64Bytes !
Name" &
{' (
get) ,
;, -
}. /
public 
ulong 
	NetworkId 
{  
get! $
;$ %
}& '
} 
} –
C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\ServerLogEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
internal 
struct 
ServerLogEvent "
:# $
INetworkMetricEvent% 8
{ 
public 
ServerLogEvent 
( 
ConnectionInfo ,

connection- 7
,7 8
LogLevel9 A
logLevelB J
,J K
longL P

bytesCountQ [
)[ \
{		 	

Connection

 
=

 

connection

 #
;

# $
LogLevel 
= 
logLevel 
;  

BytesCount 
= 

bytesCount #
;# $
} 	
public 
ConnectionInfo 

Connection (
{) *
get+ .
;. /
}0 1
public 
LogLevel 
LogLevel  
{! "
get# &
;& '
}( )
public 
long 

BytesCount 
{  
get! $
;$ %
}& '
} 
internal 
enum 
LogLevel 
{ 
Info 
, 
Warning 
, 
Error 
, 
None 
} 
} õ
C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\ConnectionInfo.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 

ConnectionInfo 
{ 
public 
ConnectionInfo 
( 
ulong #
id$ &
)& '
{		 	
Id

 
=

 
id

 
;

 
} 	
public 
ulong 
Id 
{ 
get 
; 
}  
public 
static 
bool 
operator #
==# %
(% &
ConnectionInfo& 4
a5 6
,6 7
ConnectionInfo8 F
bG H
)H I
{ 	
return 
a 
. 
Equals 
( 
b 
) 
; 
} 	
public 
static 
bool 
operator #
!=# %
(% &
ConnectionInfo& 4
a5 6
,6 7
ConnectionInfo8 F
bG H
)H I
{ 	
return 
! 
( 
a 
== 
b 
) 
; 
} 	
public 
bool 
Equals 
( 
ConnectionInfo )
other* /
)/ 0
{ 	
return 
Id 
== 
other 
. 
Id !
;! "
} 	
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
return 
obj 
is 
ConnectionInfo (
other) .
&&/ 1
Equals2 8
(8 9
other9 >
)> ?
;? @
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{   	
return!! 
Id!! 
.!! 
GetHashCode!! !
(!!! "
)!!" #
;!!# $
}"" 	
}## 
}$$  
ÖC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\ObjectDestroyedEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 
 
ObjectDestroyedEvent 
:  !
INetworkMetricEvent" 5
,5 6
INetworkObjectEvent7 J
{ 
public  
ObjectDestroyedEvent #
(# $
ConnectionInfo$ 2

connection3 =
,= >#
NetworkObjectIdentifier? V
	networkIdW `
,` a
longb f

bytesCountg q
)q r
{		 	

Connection

 
=

 

connection

 #
;

# $
	NetworkId 
= 
	networkId !
;! "

BytesCount 
= 

bytesCount #
;# $
} 	
public 
ConnectionInfo 

Connection (
{) *
get+ .
;. /
}0 1
public #
NetworkObjectIdentifier &
	NetworkId' 0
{1 2
get3 6
;6 7
}8 9
public 
long 

BytesCount 
{  
get! $
;$ %
}& '
} 
} –
ÅC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\SceneEventMetric.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 

SceneEventMetric 
: 
INetworkMetricEvent 1
{ 
public

 
SceneEventMetric

 
(

  
ConnectionInfo

  .

connection

/ 9
,

9 :
string

; A
sceneEventType

B P
,

P Q
string

R X
	sceneName

Y b
,

b c
long

d h

bytesCount

i s
)

s t
: 
this 
( 

connection 
, #
StringConversionUtility 6
.6 7 
ConvertToFixedString7 K
(K L
sceneEventTypeL Z
)Z [
,[ \#
StringConversionUtility] t
.t u!
ConvertToFixedString	u â
(
â ä
	sceneName
ä ì
)
ì î
,
î ï

bytesCount
ñ †
)
† °
{ 	
} 	
public 
SceneEventMetric 
(  
ConnectionInfo  .

connection/ 9
,9 :
FixedString64Bytes; M
sceneEventTypeN \
,\ ]
FixedString64Bytes^ p
	sceneNameq z
,z {
long	| Ä

bytesCount
Å ã
)
ã å
{ 	

Connection 
= 

connection #
;# $
SceneEventType 
= 
sceneEventType +
;+ ,
	SceneName 
= 
	sceneName !
;! "

BytesCount 
= 

bytesCount #
;# $
} 	
public 
ConnectionInfo 

Connection (
{) *
get+ .
;. /
}0 1
public 
FixedString64Bytes !
SceneEventType" 0
{0 1
get2 5
;5 6
}7 8
public 
FixedString64Bytes !
	SceneName" +
{, -
get. 1
;1 2
}3 4
public 
long 

BytesCount 
{  
get! $
;$ %
}& '
} 
} ËH
ÉC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\NetworkMetricTypes.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
static		 

class		 
NetworkMetricTypes		 #
{

 
public 
static 
readonly !
DirectionalMetricInfo 4
NetworkMessageSent5 G
=H I
new !
DirectionalMetricInfo %
(% &
DirectedMetricType& 8
.8 9
NetworkMessageSent9 K
)K L
;L M
public 
static 
readonly !
DirectionalMetricInfo 4"
NetworkMessageReceived5 K
=L M
new !
DirectionalMetricInfo %
(% &
DirectedMetricType& 8
.8 9"
NetworkMessageReceived9 O
)O P
;P Q
public 
static 
readonly !
DirectionalMetricInfo 4
TotalBytesSent5 C
=D E
new !
DirectionalMetricInfo %
(% &
DirectedMetricType& 8
.8 9
TotalBytesSent9 G
)G H
;H I
public 
static 
readonly !
DirectionalMetricInfo 4
TotalBytesReceived5 G
=H I
new !
DirectionalMetricInfo %
(% &
DirectedMetricType& 8
.8 9
TotalBytesReceived9 K
)K L
;L M
public 
static 
readonly !
DirectionalMetricInfo 4
RpcSent5 <
== >
new !
DirectionalMetricInfo %
(% &
DirectedMetricType& 8
.8 9
RpcSent9 @
)@ A
;A B
public 
static 
readonly !
DirectionalMetricInfo 4
RpcReceived5 @
=A B
new !
DirectionalMetricInfo %
(% &
DirectedMetricType& 8
.8 9
RpcReceived9 D
)D E
;E F
public 
static 
readonly !
DirectionalMetricInfo 4
NamedMessageSent5 E
=F G
new !
DirectionalMetricInfo %
(% &
DirectedMetricType& 8
.8 9
NamedMessageSent9 I
)I J
;J K
public 
static 
readonly !
DirectionalMetricInfo 4 
NamedMessageReceived5 I
=J K
new !
DirectionalMetricInfo %
(% &
DirectedMetricType& 8
.8 9 
NamedMessageReceived9 M
)M N
;N O
public 
static 
readonly !
DirectionalMetricInfo 4
UnnamedMessageSent5 G
=H I
new   !
DirectionalMetricInfo   %
(  % &
DirectedMetricType  & 8
.  8 9
UnnamedMessageSent  9 K
)  K L
;  L M
public!! 
static!! 
readonly!! !
DirectionalMetricInfo!! 4"
UnnamedMessageReceived!!5 K
=!!L M
new"" !
DirectionalMetricInfo"" %
(""% &
DirectedMetricType""& 8
.""8 9"
UnnamedMessageReceived""9 O
)""O P
;""P Q
public$$ 
static$$ 
readonly$$ !
DirectionalMetricInfo$$ 4$
NetworkVariableDeltaSent$$5 M
=$$N O
new%% !
DirectionalMetricInfo%% %
(%%% &
DirectedMetricType%%& 8
.%%8 9$
NetworkVariableDeltaSent%%9 Q
)%%Q R
;%%R S
public&& 
static&& 
readonly&& !
DirectionalMetricInfo&& 4(
NetworkVariableDeltaReceived&&5 Q
=&&R S
new'' !
DirectionalMetricInfo'' %
(''% &
DirectedMetricType''& 8
.''8 9(
NetworkVariableDeltaReceived''9 U
)''U V
;''V W
public)) 
static)) 
readonly)) !
DirectionalMetricInfo)) 4
ObjectSpawnedSent))5 F
=))G H
new** !
DirectionalMetricInfo** %
(**% &
DirectedMetricType**& 8
.**8 9
ObjectSpawnedSent**9 J
)**J K
;**K L
public++ 
static++ 
readonly++ !
DirectionalMetricInfo++ 4!
ObjectSpawnedReceived++5 J
=++K L
new,, !
DirectionalMetricInfo,, %
(,,% &
DirectedMetricType,,& 8
.,,8 9!
ObjectSpawnedReceived,,9 N
),,N O
;,,O P
public.. 
static.. 
readonly.. !
DirectionalMetricInfo.. 4
ObjectDestroyedSent..5 H
=..I J
new// !
DirectionalMetricInfo// %
(//% &
DirectedMetricType//& 8
.//8 9
ObjectDestroyedSent//9 L
)//L M
;//M N
public00 
static00 
readonly00 !
DirectionalMetricInfo00 4#
ObjectDestroyedReceived005 L
=00M N
new11 !
DirectionalMetricInfo11 %
(11% &
DirectedMetricType11& 8
.118 9#
ObjectDestroyedReceived119 P
)11P Q
;11Q R
public33 
static33 
readonly33 !
DirectionalMetricInfo33 4
OwnershipChangeSent335 H
=33I J
new44 !
DirectionalMetricInfo44 %
(44% &
DirectedMetricType44& 8
.448 9
OwnershipChangeSent449 L
)44L M
;44M N
public55 
static55 
readonly55 !
DirectionalMetricInfo55 4#
OwnershipChangeReceived555 L
=55M N
new66 !
DirectionalMetricInfo66 %
(66% &
DirectedMetricType66& 8
.668 9#
OwnershipChangeReceived669 P
)66P Q
;66Q R
public88 
static88 
readonly88 !
DirectionalMetricInfo88 4
ServerLogSent885 B
=88C D
new99 !
DirectionalMetricInfo99 %
(99% &
DirectedMetricType99& 8
.998 9
ServerLogSent999 F
)99F G
;99G H
public:: 
static:: 
readonly:: !
DirectionalMetricInfo:: 4
ServerLogReceived::5 F
=::G H
new;; !
DirectionalMetricInfo;; %
(;;% &
DirectedMetricType;;& 8
.;;8 9
ServerLogReceived;;9 J
);;J K
;;;K L
public== 
static== 
readonly== !
DirectionalMetricInfo== 4
SceneEventSent==5 C
===D E
new>> !
DirectionalMetricInfo>> %
(>>% &
DirectedMetricType>>& 8
.>>8 9
SceneEventSent>>9 G
)>>G H
;>>H I
public?? 
static?? 
readonly?? !
DirectionalMetricInfo?? 4
SceneEventReceived??5 G
=??H I
new@@ !
DirectionalMetricInfo@@ %
(@@% &
DirectedMetricType@@& 8
.@@8 9
SceneEventReceived@@9 K
)@@K L
;@@L M
publicBB 
staticBB 
readonlyBB !
DirectionalMetricInfoBB 4
PacketsSentBB5 @
=BBA B
newCC !
DirectionalMetricInfoCC %
(CC% &
DirectedMetricTypeCC& 8
.CC8 9
PacketsSentCC9 D
)CCD E
;CCE F
publicDD 
staticDD 
readonlyDD !
DirectionalMetricInfoDD 4
PacketsReceivedDD5 D
=DDE F
newEE !
DirectionalMetricInfoEE %
(EE% &
DirectedMetricTypeEE& 8
.EE8 9
PacketsReceivedEE9 H
)EEH I
;EEI J
publicGG 
staticGG 
readonlyGG !
DirectionalMetricInfoGG 4
RttToServerGG5 @
=GGA B
newHH !
DirectionalMetricInfoHH %
(HH% &
DirectedMetricTypeHH& 8
.HH8 9
RttToServerHH9 D
)HHD E
;HHE F
publicJJ 
staticJJ 
readonlyJJ !
DirectionalMetricInfoJJ 4
NetworkObjectsJJ5 C
=JJD E
newKK !
DirectionalMetricInfoKK %
(KK% &
DirectedMetricTypeKK& 8
.KK8 9
NetworkObjectsKK9 G
)KKG H
;KKH I
publicMM 
staticMM 
readonlyMM !
DirectionalMetricInfoMM 4
ConnectedClientsMM5 E
=MMF G
newNN !
DirectionalMetricInfoNN %
(NN% &
DirectedMetricTypeNN& 8
.NN8 9
ConnectionsNN9 D
)NND E
;NNE F
publicPP 
staticPP 
readonlyPP !
DirectionalMetricInfoPP 4

PacketLossPP5 ?
=PP@ A
newQQ !
DirectionalMetricInfoQQ %
(QQ% &
DirectedMetricTypeQQ& 8
.QQ8 9

PacketLossQQ9 C
)QQC D
;QQD E
}RR 
}SS Î
ÑC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\INetworkMetricEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
	interface 
INetworkMetricEvent !
{ 
ConnectionInfo 

Connection !
{" #
get$ '
;' (
}) *
long 

BytesCount 
{ 
get 
; 
}  
} 
}		 á
ÖC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\MetricTypeExtensions.cs
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
class  
MetricTypeExtensions %
{ 
internal 
static 
string  
GetDisplayNameString 3
(3 4
string4 :

metricType; E
)E F
{		 	
return

 

StringUtil

 
.

  
AddSpacesToCamelCase

 2
(

2 3

metricType

3 =
)

= >
;

> ?
} 	
internal 
static 
string  
GetDisplayNameString 3
(3 4
this4 8

MetricType9 C

metricTypeD N
)N O
{ 	
return  
GetDisplayNameString '
(' (

metricType( 2
.2 3
ToString3 ;
(; <
)< =
)= >
;> ?
} 	
internal 
static 
string 
GetTypeNameString 0
(0 1
string1 7

metricType8 B
)B C
{ 	
return 

metricType 
. 
ToLowerInvariant .
(. /
)/ 0
;0 1
} 	
internal 
static 
string 
GetTypeNameString 0
(0 1
this1 5

MetricType6 @

metricTypeA K
)K L
{ 	
return 
GetTypeNameString $
($ %

metricType% /
./ 0
ToString0 8
(8 9
)9 :
): ;
;; <
} 	
} 
} ã
ÑC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\INetworkObjectEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
	interface 
INetworkObjectEvent !
{ #
NetworkObjectIdentifier 
	NetworkId  )
{* +
get, /
;/ 0
}1 2
} 
} Ó\
{C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\MetricType.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
enum 

MetricType	 
{		 
None

 
,

 

TotalBytes 
, 
Rpc 
, 
NamedMessage 
, 
UnnamedMessage 
,  
NetworkVariableDelta 
, 
ObjectSpawned 
, 
ObjectDestroyed 
, 
OwnershipChange 
, 
	ServerLog 
, 

SceneEvent 
, 
NetworkMessage 
, 
Packets 
, 
RttToServer 
, 
NetworkObjects 
, 
Connections 
, 

PacketLoss 
} 
[## 
MetricTypeEnum## 
(## 
DisplayName## 
=##  !
$str##" 4
)##4 5
]##5 6
[$$ "
MetricTypeSortPriority$$ 
($$ 
SortPriority$$ (
=$$) *
SortPriority$$+ 7
.$$7 8
VeryHigh$$8 @
)$$@ A
]$$A B
public%% 

enum%% 
DirectedMetricType%% "
{&& 
[** 	
MetricMetadata**	 
(** 
Units** 
=**% &
Units**' ,
.**, -
Bytes**- 2
)**2 3
]**3 4
TotalBytesSent++ 
=++% &
(++' (
MT++( *
.++* +

TotalBytes+++ 5
<<++@ B
NDC++C F
.++F G

k_BitWidth++G Q
)++Q R
|++S T
ND++U W
.++W X
Sent++X \
,++\ ]
[// 	
MetricMetadata//	 
(// 
Units// 
=//% &
Units//' ,
.//, -
Bytes//- 2
)//2 3
]//3 4
TotalBytesReceived00 
=00% &
(00' (
MT00( *
.00* +

TotalBytes00+ 5
<<00@ B
NDC00C F
.00F G

k_BitWidth00G Q
)00Q R
|00S T
ND00U W
.00W X
Received00X `
,00` a
RpcSent55 
=55% &
(55' (
MT55( *
.55* +
Rpc55+ .
<<55@ B
NDC55C F
.55F G

k_BitWidth55G Q
)55Q R
|55S T
ND55U W
.55W X
Sent55X \
,55\ ]
RpcReceived99 
=99% &
(99' (
MT99( *
.99* +
Rpc99+ .
<<99@ B
NDC99C F
.99F G

k_BitWidth99G Q
)99Q R
|99S T
ND99U W
.99W X
Received99X `
,99` a
[>> 	
MetricMetadata>>	 
(>> 
DisplayName>> #
=>>% &
$str>>' <
)>>< =
]>>= >
NamedMessageSent?? 
=??% &
(??' (
MT??( *
.??* +
NamedMessage??+ 7
<<??@ B
NDC??C F
.??F G

k_BitWidth??G Q
)??Q R
|??S T
ND??U W
.??W X
Sent??X \
,??\ ]
[DD 	
MetricMetadataDD	 
(DD 
DisplayNameDD #
=DD% &
$strDD' @
)DD@ A
]DDA B 
NamedMessageReceivedEE 
=EE% &
(EE' (
MTEE( *
.EE* +
NamedMessageEE+ 7
<<EE@ B
NDCEEC F
.EEF G

k_BitWidthEEG Q
)EEQ R
|EES T
NDEEU W
.EEW X
ReceivedEEX `
,EE` a
[JJ 	
MetricMetadataJJ	 
(JJ 
DisplayNameJJ #
=JJ% &
$strJJ' >
)JJ> ?
]JJ? @
UnnamedMessageSentKK 
=KK% &
(KK' (
MTKK( *
.KK* +
UnnamedMessageKK+ 9
<<KK@ B
NDCKKC F
.KKF G

k_BitWidthKKG Q
)KKQ R
|KKS T
NDKKU W
.KKW X
SentKKX \
,KK\ ]
[PP 	
MetricMetadataPP	 
(PP 
DisplayNamePP #
=PP% &
$strPP' B
)PPB C
]PPC D"
UnnamedMessageReceivedQQ 
=QQ% &
(QQ' (
MTQQ( *
.QQ* +
UnnamedMessageQQ+ 9
<<QQ@ B
NDCQQC F
.QQF G

k_BitWidthQQG Q
)QQQ R
|QQS T
NDQQU W
.QQW X
ReceivedQQX `
,QQ` a$
NetworkVariableDeltaSentVV  
=VV% &
(VV' (
MTVV( *
.VV* + 
NetworkVariableDeltaVV+ ?
<<VV@ B
NDCVVC F
.VVF G

k_BitWidthVVG Q
)VVQ R
|VVS T
NDVVU W
.VVW X
SentVVX \
,VV\ ](
NetworkVariableDeltaReceivedZZ $
=ZZ% &
(ZZ' (
MTZZ( *
.ZZ* + 
NetworkVariableDeltaZZ+ ?
<<ZZ@ B
NDCZZC F
.ZZF G

k_BitWidthZZG Q
)ZZQ R
|ZZS T
NDZZU W
.ZZW X
ReceivedZZX `
,ZZ` a
ObjectSpawnedSent__ 
=__% &
(__' (
MT__( *
.__* +
ObjectSpawned__+ 8
<<__@ B
NDC__C F
.__F G

k_BitWidth__G Q
)__Q R
|__S T
ND__U W
.__W X
Sent__X \
,__\ ]!
ObjectSpawnedReceivedcc 
=cc% &
(cc' (
MTcc( *
.cc* +
ObjectSpawnedcc+ 8
<<cc@ B
NDCccC F
.ccF G

k_BitWidthccG Q
)ccQ R
|ccS T
NDccU W
.ccW X
ReceivedccX `
,cc` a
ObjectDestroyedSenthh 
=hh% &
(hh' (
MThh( *
.hh* +
ObjectDestroyedhh+ :
<<hh@ B
NDChhC F
.hhF G

k_BitWidthhhG Q
)hhQ R
|hhS T
NDhhU W
.hhW X
SenthhX \
,hh\ ]#
ObjectDestroyedReceivedll 
=ll% &
(ll' (
MTll( *
.ll* +
ObjectDestroyedll+ :
<<ll@ B
NDCllC F
.llF G

k_BitWidthllG Q
)llQ R
|llS T
NDllU W
.llW X
ReceivedllX `
,ll` a
OwnershipChangeSentqq 
=qq% &
(qq' (
MTqq( *
.qq* +
OwnershipChangeqq+ :
<<qq@ B
NDCqqC F
.qqF G

k_BitWidthqqG Q
)qqQ R
|qqS T
NDqqU W
.qqW X
SentqqX \
,qq\ ]#
OwnershipChangeReceiveduu 
=uu% &
(uu' (
MTuu( *
.uu* +
OwnershipChangeuu+ :
<<uu@ B
NDCuuC F
.uuF G

k_BitWidthuuG Q
)uuQ R
|uuS T
NDuuU W
.uuW X
ReceiveduuX `
,uu` a
ServerLogSentzz 
=zz% &
(zz' (
MTzz( *
.zz* +
	ServerLogzz+ 4
<<zz@ B
NDCzzC F
.zzF G

k_BitWidthzzG Q
)zzQ R
|zzS T
NDzzU W
.zzW X
SentzzX \
,zz\ ]
ServerLogReceived~~ 
=~~% &
(~~' (
MT~~( *
.~~* +
	ServerLog~~+ 4
<<~~@ B
NDC~~C F
.~~F G

k_BitWidth~~G Q
)~~Q R
|~~S T
ND~~U W
.~~W X
Received~~X `
,~~` a
SceneEventSent
ÉÉ 
=
ÉÉ% &
(
ÉÉ' (
MT
ÉÉ( *
.
ÉÉ* +

SceneEvent
ÉÉ+ 5
<<
ÉÉ@ B
NDC
ÉÉC F
.
ÉÉF G

k_BitWidth
ÉÉG Q
)
ÉÉQ R
|
ÉÉS T
ND
ÉÉU W
.
ÉÉW X
Sent
ÉÉX \
,
ÉÉ\ ] 
SceneEventReceived
áá 
=
áá% &
(
áá' (
MT
áá( *
.
áá* +

SceneEvent
áá+ 5
<<
áá@ B
NDC
ááC F
.
ááF G

k_BitWidth
ááG Q
)
ááQ R
|
ááS T
ND
ááU W
.
ááW X
Received
ááX `
,
áá` a 
NetworkMessageSent
åå 
=
åå% &
(
åå' (
MT
åå( *
.
åå* +
NetworkMessage
åå+ 9
<<
åå@ B
NDC
ååC F
.
ååF G

k_BitWidth
ååG Q
)
ååQ R
|
ååS T
ND
ååU W
.
ååW X
Sent
ååX \
,
åå\ ]$
NetworkMessageReceived
êê 
=
êê% &
(
êê' (
MT
êê( *
.
êê* +
NetworkMessage
êê+ 9
<<
êê@ B
NDC
êêC F
.
êêF G

k_BitWidth
êêG Q
)
êêQ R
|
êêS T
ND
êêU W
.
êêW X
Received
êêX `
,
êê` a
PacketsSent
ïï 
=
ïï% &
(
ïï' (
MT
ïï( *
.
ïï* +
Packets
ïï+ 2
<<
ïï@ B
NDC
ïïC F
.
ïïF G

k_BitWidth
ïïG Q
)
ïïQ R
|
ïïS T
ND
ïïU W
.
ïïW X
Sent
ïïX \
,
ïï\ ]
PacketsReceived
ôô 
=
ôô% &
(
ôô' (
MT
ôô( *
.
ôô* +
Packets
ôô+ 2
<<
ôô@ B
NDC
ôôC F
.
ôôF G

k_BitWidth
ôôG Q
)
ôôQ R
|
ôôS T
ND
ôôU W
.
ôôW X
Received
ôôX `
,
ôô` a
[
†† 	
MetricMetadata
††	 
(
†† 
DisplayName
°° 
=
°° 
$str
°° )
,
°°) *

MetricKind
¢¢ 
=
¢¢ 

MetricKind
¢¢ $
.
¢¢$ %
Gauge
¢¢% *
,
¢¢* +
Units
££ 
=
££ 
Units
££ 
.
££  
Seconds
££  '
)
££' (
]
££( )
RttToServer
§§ 
=
§§% &
(
§§' (
MT
§§( *
.
§§* +
RttToServer
§§+ 6
<<
§§@ B
NDC
§§C F
.
§§F G

k_BitWidth
§§G Q
)
§§Q R
|
§§S T
ND
§§U W
.
§§W X
SentAndReceived
§§X g
,
§§g h
[
©© 	
MetricMetadata
©©	 
(
©© 

MetricKind
©© "
=
©©% &

MetricKind
©©' 1
.
©©1 2
Gauge
©©2 7
)
©©7 8
]
©©8 9
NetworkObjects
™™ 
=
™™% &
(
™™' (
MT
™™( *
.
™™* +
NetworkObjects
™™+ 9
<<
™™@ B
NDC
™™C F
.
™™F G

k_BitWidth
™™G Q
)
™™Q R
|
™™S T
ND
™™U W
.
™™W X
SentAndReceived
™™X g
,
™™g h
[
∞∞ 	
MetricMetadata
∞∞	 
(
∞∞ 

MetricKind
∞∞ "
=
∞∞% &

MetricKind
∞∞' 1
.
∞∞1 2
Gauge
∞∞2 7
)
∞∞7 8
]
∞∞8 9
Connections
±± 
=
±±% &
(
±±' (
MT
±±( *
.
±±* +
Connections
±±+ 6
<<
±±@ B
NDC
±±C F
.
±±F G

k_BitWidth
±±G Q
)
±±Q R
|
±±S T
ND
±±U W
.
±±W X
SentAndReceived
±±X g
,
±±g h
[
∏∏ 	
MetricMetadata
∏∏	 
(
∏∏ 

MetricKind
ππ 
=
ππ 

MetricKind
ππ #
.
ππ# $
Gauge
ππ$ )
,
ππ) *!
DisplayAsPercentage
∫∫ 
=
∫∫  !
true
∫∫" &
)
∫∫& '
]
∫∫' (

PacketLoss
ªª 
=
ªª% &
(
ªª' (
MT
ªª( *
.
ªª* +

PacketLoss
ªª+ 5
<<
ªª@ B
NDC
ªªC F
.
ªªF G

k_BitWidth
ªªG Q
)
ªªQ R
|
ªªS T
ND
ªªU W
.
ªªW X
Received
ªªX `
,
ªª` a
}
ºº 
}ΩΩ ˚
àC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\StringConversionUtility.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
static 

class #
StringConversionUtility (
{ 
public 
static 
FixedString64Bytes ( 
ConvertToFixedString) =
(= >
string> D
valueE J
)J K
{ 	
if 
( 
value 
== 
null 
) 
{ 
return 
string 
. 
Empty #
;# $
} 
if 
( 
FixedString64Bytes "
." # 
UTF8MaxLengthInBytes# 7
<8 9
value: ?
.? @
Length@ F
)F G
{ 
var 
fixedString 
=  !
new" %
FixedString64Bytes& 8
(8 9
)9 :
;: ;
unsafe 
{ 
fixed 
( 
char 
*  
chars! &
=' (
value) .
). /
{ "
UTF8ArrayUnsafeUtility .
.. /
Copy/ 3
(3 4
fixedString4 ?
.? @
GetUnsafePtr@ L
(L M
)M N
,N O
outP S
varT W
copiedLengthX d
,d e
FixedString64Bytesf x
.x y!
UTF8MaxLengthInBytes	y ç
,
ç é
chars
è î
,
î ï
value
ñ õ
.
õ ú
Length
ú ¢
)
¢ £
;
£ §
fixedString #
.# $
Length$ *
=+ ,
copiedLength- 9
;9 :
} 
} 
return 
fixedString "
;" #
} 
return!! 
value!! 
;!! 
}"" 	
}## 
}$$ Ú
qC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\AssemblyInfo.cs
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
$str P
)P Q
]Q R
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str @
)@ A
]A B
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
$str U
)U V
]V W
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str V
)V W
]W X
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str A
)A B
]B C
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 7
)7 8
]8 9ª
ÖC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\NetworkVariableEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 
 
NetworkVariableEvent 
:  !
INetworkMetricEvent" 5
,5 6
INetworkObjectEvent7 J
{ 
public

  
NetworkVariableEvent

 #
(

# $
ConnectionInfo

$ 2

connection

3 =
,

= >#
NetworkObjectIdentifier

? V
	networkId

W `
,

` a
string

b h
name

i m
,

m n
string

o u!
networkBehaviourName	

v ä
,


ä ã
long


å ê

bytesCount


ë õ
)


õ ú
: 
this 
( 

connection 
, 
	networkId (
,( )#
StringConversionUtility* A
.A B 
ConvertToFixedStringB V
(V W
nameW [
)[ \
,\ ]#
StringConversionUtility^ u
.u v!
ConvertToFixedString	v ä
(
ä ã"
networkBehaviourName
ã ü
)
ü †
,
† °

bytesCount
¢ ¨
)
¨ ≠
{ 	
} 	
public  
NetworkVariableEvent #
(# $
ConnectionInfo$ 2

connection3 =
,= >#
NetworkObjectIdentifier? V
	networkIdW `
,` a
FixedString64Bytesb t
nameu y
,y z
FixedString64Bytes	{ ç"
networkBehaviourName
é ¢
,
¢ £
long
§ ®

bytesCount
© ≥
)
≥ ¥
{ 	

Connection 
= 

connection #
;# $
	NetworkId 
= 
	networkId !
;! "
Name 
= 
name 
;  
NetworkBehaviourName  
=! " 
networkBehaviourName# 7
;7 8

BytesCount 
= 

bytesCount #
;# $
} 	
public 
ConnectionInfo 

Connection (
{) *
get+ .
;. /
}0 1
public #
NetworkObjectIdentifier &
	NetworkId' 0
{1 2
get3 6
;6 7
}8 9
public 
FixedString64Bytes !
Name" &
{' (
get) ,
;, -
}. /
public 
FixedString64Bytes ! 
NetworkBehaviourName" 6
{7 8
get9 <
;< =
}> ?
public   
long   

BytesCount   
{    
get  ! $
;  $ %
}  & '
}!! 
}"" ó
ÇC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\NamedMessageEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 

NamedMessageEvent 
: 
INetworkMetricEvent 2
{ 
public

 
NamedMessageEvent

  
(

  !
ConnectionInfo

! /

connection

0 :
,

: ;
string

< B
name

C G
,

G H
long

I M

bytesCount

N X
)

X Y
: 
this 
( 

connection 
, #
StringConversionUtility 6
.6 7 
ConvertToFixedString7 K
(K L
nameL P
)P Q
,Q R

bytesCountS ]
)] ^
{ 	
} 	
public 
NamedMessageEvent  
(  !
ConnectionInfo! /

connection0 :
,: ;
FixedString64Bytes< N
nameO S
,S T
longU Y

bytesCountZ d
)d e
{ 	

Connection 
= 

connection #
;# $
Name 
= 
name 
; 

BytesCount 
= 

bytesCount #
;# $
} 	
public 
ConnectionInfo 

Connection (
{) *
get+ .
;. /
}0 1
public 
FixedString64Bytes !
Name" &
{' (
get) ,
;, -
}. /
public 
long 

BytesCount 
{  
get! $
;$ %
}& '
} 
} Ú
ÑC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\MetricTypes\Runtime\MetricTypes\UnnamedMessageEvent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
MetricTypes" -
{ 
[ 
Serializable 
] 
struct 

UnnamedMessageEvent 
:  
INetworkMetricEvent! 4
{ 
public 
UnnamedMessageEvent "
(" #
ConnectionInfo# 1

connection2 <
,< =
long> B

bytesCountC M
)M N
{		 	

Connection

 
=

 

connection

 #
;

# $

BytesCount 
= 

bytesCount #
;# $
} 	
public 
ConnectionInfo 

Connection (
{) *
get+ .
;. /
}0 1
public 
long 

BytesCount 
{  
get! $
;$ %
}& '
} 
} 