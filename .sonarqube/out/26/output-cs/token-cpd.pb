âc
_C:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\WrappedQosService.cs
	namespace 	
Unity
 
. 
Services 
. 
Qos 
{ 
class 	
WrappedQosService
 
: 
IQosService )
{ 
const 
string #
ResultLatencyMetricName ,
=- .
$str/ F
;F G
const 
string &
ResultPacketLossMetricName /
=0 1
$str2 J
;J K
const 
string &
MetricServiceNameLabelName /
=0 1
$str2 @
;@ A
const 
string (
MetricServiceRegionLabelName 1
=2 3
$str4 D
;D E
const 
string (
MetricClientCountryLabelName 1
=2 3
$str4 D
;D E
const 
string '
MetricClientRegionLabelName 0
=1 2
$str3 B
;B C
const 
string +
MetricClientBestResultLabelName 4
=5 6
$str7 D
;D E
const 
string 0
$MetricClientBestResultLabelTrueValue 9
=: ;
$str< B
;B C"
IQosDiscoveryApiClient "
_qosDiscoveryApiClient 5
;5 6

IQosRunner 

_qosRunner 
; 
IAccessToken 
_accessToken !
;! "
IMetrics 
_metrics 
; 
internal!! 
WrappedQosService!! "
(!!" #"
IQosDiscoveryApiClient!!# 9!
qosDiscoveryApiClient!!: O
,!!O P

IQosRunner!!Q [
	qosRunner!!\ e
,!!e f
IAccessToken""# /
accessToken""0 ;
,""; <
IMetrics""= E
metrics""F M
)""M N
{## 	"
_qosDiscoveryApiClient$$ "
=$$# $!
qosDiscoveryApiClient$$% :
;$$: ;

_qosRunner%% 
=%% 
	qosRunner%% "
;%%" #
_accessToken&& 
=&& 
accessToken&& &
;&&& '
_metrics'' 
='' 
metrics'' 
;'' 
}(( 	
public88 
async88 
Task88 
<88 
IList88 
<88  

IQosResult88  *
>88* +
>88+ ,$
GetSortedQosResultsAsync88- E
(88E F
string88F L
service88M T
,88T U
IList88V [
<88[ \
string88\ b
>88b c
regions88d k
)88k l
{99 	
return:: 
(:: 
await:: ,
 GetSortedInternalQosResultsAsync:: :
(::: ;
service::; B
,::B C
regions::D K
)::K L
)::L M
.;; 
Select;; 
(;;  
MapToPublicQosResult;; ,
);;, -
.<< 
ToList<< 
(<< 
)<< 
;<< 
}== 	
internal?? 
async?? 
Task?? 
<?? 
IList?? !
<??! "
Internal??" *
.??* +
	QosResult??+ 4
>??4 5
>??5 6,
 GetSortedInternalQosResultsAsync??7 W
(??W X
string??X ^
service??_ f
,??f g
IList??h m
<??m n
string??n t
>??t u
regions??v }
)??} ~
{@@ 	
ifBB 
(BB 
stringBB 
.BB 
IsNullOrEmptyBB $
(BB$ %
_accessTokenBB% 1
.BB1 2
AccessTokenBB2 =
)BB= >
)BB> ?
{CC 
throwDD 
newDD 
	ExceptionDD #
(DD# $
$strDD$ q
)DDq r
;DDr s
}EE 
varII 
regionsListII 
=II 
regionsII %
asII& (
ListII) -
<II- .
stringII. 4
>II4 5
;II5 6
ifKK 
(KK 
regionsListKK 
==KK 
nullKK #
&&KK$ &
regionsKK' .
!=KK/ 1
nullKK2 6
)KK6 7
{LL 
regionsListMM 
=MM 
newMM !
ListMM" &
<MM& '
stringMM' -
>MM- .
(MM. /
regionsMM/ 6
)MM6 7
;MM7 8
}NN 
varOO 
httpRespOO 
=OO 
awaitOO  "
_qosDiscoveryApiClientOO! 7
.OO7 8
GetServersAsyncOO8 G
(OOG H
newPP 
GetServersRequestPP %
(PP% &
regionsListPP& 1
,PP1 2
servicePP3 :
)PP: ;
)PP; <
;PP< =
varQQ 
serversQQ 
=QQ 
httpRespQQ "
.QQ" #
ResultQQ# )
.QQ) *
DataQQ* .
.QQ. /
ServersQQ/ 6
;QQ6 7
ifTT 
(TT 
!TT 
serversTT 
.TT 
AnyTT 
(TT 
)TT 
)TT 
{UU 
returnVV 
newVV 
ListVV 
<VV  
InternalVV  (
.VV( )
	QosResultVV) 2
>VV2 3
(VV3 4
)VV4 5
;VV5 6
}WW 
varYY 

qosResultsYY 
=YY 
awaitYY "

_qosRunnerYY# -
.YY- .
MeasureQosAsyncYY. =
(YY= >
serversYY> E
)YYE F
;YYF G
varZZ 
sortedResultsZZ 
=ZZ 
SortResultsZZ  +
(ZZ+ ,

qosResultsZZ, 6
)ZZ6 7
;ZZ7 8
SendResultMetrics\\ 
(\\ 
sortedResults\\ +
,\\+ ,
service\\- 4
,\\4 5
httpResp\\6 >
)\\> ?
;\\? @
return]] 
sortedResults]]  
;]]  !
}bb 	
Listdd 
<dd 
Internaldd 
.dd 
	QosResultdd 
>dd  
SortResultsdd! ,
(dd, -
IListdd- 2
<dd2 3
Internaldd3 ;
.dd; <
	QosResultdd< E
>ddE F
resultsddG N
)ddN O
{ee 	
returnff 
resultsff 
.gg 
OrderBygg 
(gg 
qgg 
=>gg 
qgg 
.gg  
AverageLatencyMsgg  0
)gg0 1
.hh 
ThenByhh 
(hh 
qhh 
=>hh 
qhh 
.hh 
PacketLossPercenthh 0
)hh0 1
.ii 
ToListii 
(ii 
)ii 
;ii 
}jj 	
voidll 
SendResultMetricsll 
(ll 
IListll $
<ll$ %
Internalll% -
.ll- .
	QosResultll. 7
>ll7 8
sortedResultsll9 F
,llF G
stringllH N
servicellO V
,llV W
ResponsellX `
discoveryResponsella r
)llr s
{mm 	
ifoo 
(oo 
sortedResultsoo 
.oo 
Countoo #
==oo$ &
$numoo' (
)oo( )
{pp 
returnqq 
;qq 
}rr 
varvv 

bestResultvv 
=vv 
truevv !
;vv! "
foreachww 
(ww 
varww 
resultww 
inww  "
sortedResultsww# 0
)ww0 1
{xx 
IDictionaryyy 
<yy 
stringyy "
,yy" #
stringyy$ *
>yy* +

metricTagsyy, 6
=yy7 8
newyy9 <

Dictionaryyy= G
<yyG H
stringyyH N
,yyN O
stringyyP V
>yyV W
(yyW X
)yyX Y
;yyY Z

metricTags{{ 
.{{ 
Add{{ 
({{ &
MetricServiceNameLabelName{{ 9
,{{9 :
service{{; B
){{B C
;{{C D

metricTags|| 
.|| 
Add|| 
(|| (
MetricServiceRegionLabelName|| ;
,||; <
result||= C
.||C D
Region||D J
)||J K
;||K L
if}} 
(}} 
discoveryResponse}} %
.}}% &
Headers}}& -
.}}- .
TryGetValue}}. 9
(}}9 :
$str}}: L
,}}L M
out}}N Q
var}}R U
clientCountry}}V c
)}}c d
)}}d e
{~~ 

metricTags 
. 
Add "
(" #(
MetricClientCountryLabelName# ?
,? @
clientCountryA N
)N O
;O P
}
ÄÄ 
if
ÅÅ 
(
ÅÅ 
discoveryResponse
ÅÅ %
.
ÅÅ% &
Headers
ÅÅ& -
.
ÅÅ- .
TryGetValue
ÅÅ. 9
(
ÅÅ9 :
$str
ÅÅ: K
,
ÅÅK L
out
ÅÅM P
var
ÅÅQ T
clientRegion
ÅÅU a
)
ÅÅa b
)
ÅÅb c
{
ÇÇ 

metricTags
ÉÉ 
.
ÉÉ 
Add
ÉÉ "
(
ÉÉ" #)
MetricClientRegionLabelName
ÉÉ# >
,
ÉÉ> ?
clientRegion
ÉÉ@ L
)
ÉÉL M
;
ÉÉM N
}
ÑÑ 
if
áá 
(
áá 

bestResult
áá 
)
áá 
{
àà 

metricTags
ââ 
.
ââ 
Add
ââ "
(
ââ" #-
MetricClientBestResultLabelName
ââ# B
,
ââB C2
$MetricClientBestResultLabelTrueValue
ââD h
)
ââh i
;
ââi j

bestResult
ää 
=
ää  
false
ää! &
;
ää& '
}
ãã 
_metrics
çç 
.
çç !
SendHistogramMetric
çç ,
(
çç, -%
ResultLatencyMetricName
çç- D
,
ççD E
result
ççF L
.
ççL M
AverageLatencyMs
ççM ]
,
çç] ^

metricTags
çç_ i
)
ççi j
;
ççj k
_metrics
éé 
.
éé !
SendHistogramMetric
éé ,
(
éé, -(
ResultPacketLossMetricName
éé- G
,
ééG H
result
ééI O
.
ééO P
PacketLossPercent
ééP a
,
ééa b

metricTags
ééc m
)
éém n
;
één o
}
èè 
}
êê 	

IQosResult
íí "
MapToPublicQosResult
íí '
(
íí' (
Internal
íí( 0
.
íí0 1
	QosResult
íí1 :
internalQosResult
íí; L
)
ííL M
{
ìì 	
return
îî 
new
îî 
	QosResult
îî  
(
îî  !
internalQosResult
îî! 2
.
îî2 3
Region
îî3 9
,
îî9 :
internalQosResult
îî; L
.
îîL M
AverageLatencyMs
îîM ]
,
îî] ^
internalQosResult
ïï !
.
ïï! "
PacketLossPercent
ïï" 3
)
ïï3 4
;
ïï4 5
}
ññ 	
}
óó 
class
ôô 	
	QosResult
ôô
 
:
ôô 

IQosResult
ôô  
{
öö 
public
õõ 
	QosResult
õõ 
(
õõ 
string
õõ 
region
õõ  &
,
õõ& '
int
õõ( +
averageLatencyMs
õõ, <
,
õõ< =
float
õõ> C
packetLossPercent
õõD U
)
õõU V
{
úú 	
Region
ùù 
=
ùù 
region
ùù 
;
ùù 
AverageLatencyMs
ûû 
=
ûû 
averageLatencyMs
ûû /
;
ûû/ 0
PacketLossPercent
üü 
=
üü 
packetLossPercent
üü  1
;
üü1 2
}
†† 	
public
¢¢ 
string
¢¢ 
Region
¢¢ 
{
¢¢ 
get
¢¢ "
;
¢¢" #
}
¢¢$ %
public
££ 
int
££ 
AverageLatencyMs
££ #
{
££$ %
get
££& )
;
££) *
}
££+ ,
public
§§ 
float
§§ 
PacketLossPercent
§§ &
{
§§' (
get
§§) ,
;
§§, -
}
§§. /
}
•• 
class
ßß 	/
!UnsupportedEditorVersionException
ßß
 +
:
ßß, -
	Exception
ßß. 7
{
®® 
public
©© /
!UnsupportedEditorVersionException
©© 0
(
©©0 1
)
©©1 2
{
™™ 	
}
´´ 	
public
≠≠ /
!UnsupportedEditorVersionException
≠≠ 0
(
≠≠0 1
string
≠≠1 7
message
≠≠8 ?
)
≠≠? @
:
≠≠A B
base
≠≠C G
(
≠≠G H
message
≠≠H O
)
≠≠O P
{
ÆÆ 	
}
ØØ 	
}
∞∞ 
}±± Ω
ZC:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\AssemblyInfo.cs
[ 
assembly 	
:	 

AlwaysLinkAssembly 
] ßN
_C:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\QosRequest.cs
	namespace 	
Unity
 
. 

Networking 
. 
QoS 
{		 
internal

 
class

 

QosRequest

 
{ 
private 
const 
int 
MinPacketLen &
=' (
$num) +
;+ ,
private 
const 
int 
MaxPacketLen &
=' (
$num) -
;- .
private 
const 
byte 
RequestMagic '
=( )
$num* .
;. /
private 
const 
int  
ConstructedPacketLen .
=/ 0
$num1 3
;3 4
private 
byte 
m_Magic 
= 
RequestMagic +
;+ ,
private 
byte 
m_VerAndFlow !
=" #
$num$ (
;( )
private 
byte 

m_TitleLen 
=  !
$num" &
;& '
private 
byte 
[ 
] 
m_Title 
=  
null! %
;% &
private 
byte 

m_Sequence 
=  !
$num" &
;& '
private 
ushort 
m_Identifier #
=$ %
$num& '
;' (
private 
ulong 
m_Timestamp !
=" #
$num$ %
;% &
private 
ushort 
m_PacketLength %
=& '
MinPacketLen( 4
-5 6
$num7 8
;8 9
internal 
byte 
Magic 
=> 
m_Magic &
;& '
internal 
byte 
Version 
=>  
(   
byte   
)   
(   
(   
m_VerAndFlow    
>>  ! #
$num  $ %
)  % &
&  ' (
$num  ) -
)  - .
;  . /
internal"" 
byte"" 
FlowControl"" !
=>""" $
(""% &
byte""& *
)""* +
(""+ ,
m_VerAndFlow"", 8
&""9 :
$num""; ?
)""? @
;""@ A
internal$$ 
byte$$ 
[$$ 
]$$ 
Title$$ 
{%% 	
get(( 
=>(( 
m_Title(( 
;(( 
set** 
{++ 
if,, 
(,, 
MinPacketLen,,  
+,,! "
value,,# (
.,,( )
Length,,) /
>,,0 1
MaxPacketLen,,2 >
),,> ?
{-- 
throw.. 
new.. 
ArgumentException.. /
(../ 0
$"// 
$str// K
{//K L
MinPacketLen//L X
+//Y Z
value//[ `
.//` a
Length//a g
}//g h
$str//h v
{//v w
MaxPacketLen	//w É
}
//É Ñ
$str
//Ñ Ö
"
//Ö Ü
)
//Ü á
;
//á à
}00 
m_Title22 
=22 
value22 
;22  

m_TitleLen33 
=33 
(33 
byte33 "
)33" #
(33# $
m_Title33$ +
.33+ ,
Length33, 2
+333 4
$num335 6
)336 7
;337 8
m_PacketLength44 
=44  
(55 
ushort55 
)55 
(55  
ConstructedPacketLen55 1
+552 3
m_Title554 ;
.55; <
Length55< B
)55B C
;55C D
}66 
}77 	
internal99 
byte99 
Sequence99 
{:: 	
get;; 
=>;; 

m_Sequence;; 
;;; 
set<< 
=><< 

m_Sequence<< 
=<< 
value<<  %
;<<% &
}== 	
internal?? 
ushort?? 

Identifier?? "
{@@ 	
getAA 
=>AA 
m_IdentifierAA 
;AA  
setBB 
=>BB 
m_IdentifierBB 
=BB  !
valueBB" '
;BB' (
}CC 	
internalEE 
ulongEE 
	TimestampEE  
{FF 	
getGG 
=>GG 
m_TimestampGG 
;GG 
setHH 
=>HH 
m_TimestampHH 
=HH  
valueHH! &
;HH& '
}II 	
internalKK 
intKK 
LengthKK 
=>KK 
m_PacketLengthKK -
;KK- .
internalXX 
unsafeXX 
(XX 
uintXX 
,XX 
intXX "
)XX" #
SendXX$ (
(XX( )
IntPtrXX) /
socketHandleXX0 <
,XX< =
NetworkEndPointXX> M
endPointXXN V
,XXV W
DateTimeXXX `
expireTimeUtcXXa n
)XXn o
{YY 	
if[[ 
([[ 
Title[[ 
==[[ 
null[[ 
)[[ 
{\\ 
throw^^ 
new^^ %
InvalidOperationException^^ 3
(^^3 4
$str^^4 R
)^^R S
;^^S T
}__ 
varff 
bufferCapacityff 
=ff  
(ff! "
intff" %
)ff% &
Mathff& *
.ff* +
Powff+ .
(ff. /
$numff/ 0
,ff0 1
(ff2 3
intff3 6
)ff6 7
Mathff7 ;
.ff; <
Logff< ?
(ff? @
m_PacketLengthff@ N
-ffO P
$numffQ R
,ffR S
$numffT U
)ffU V
+ffW X
$numffY Z
)ffZ [
;ff[ \
vargg 
buffergg 
=gg 
newgg 
UnsafeAppendBuffergg /
(gg/ 0
bufferCapacitygg0 >
,gg> ?
$numgg@ B
,ggB C
	AllocatorggD M
.ggM N
TempJobggN U
)ggU V
;ggV W
bufferhh 
.hh 
Addhh 
(hh 
m_Magichh 
)hh 
;hh  
bufferii 
.ii 
Addii 
(ii 
m_VerAndFlowii #
)ii# $
;ii$ %
bufferjj 
.jj 
Addjj 
(jj 

m_TitleLenjj !
)jj! "
;jj" #
forkk 
(kk 
varkk 
ikk 
=kk 
$numkk 
;kk 
ikk 
<kk 

m_TitleLenkk  *
-kk+ ,
$numkk- .
;kk. /
ikk0 1
++kk1 3
)kk3 4
{ll 
buffermm 
.mm 
Addmm 
(mm 
m_Titlemm "
[mm" #
imm# $
]mm$ %
)mm% &
;mm& '
}nn 
bufferoo 
.oo 
Addoo 
(oo 

m_Sequenceoo !
)oo! "
;oo" #
bufferpp 
.pp 
Addpp 
(pp 
m_Identifierpp #
)pp# $
;pp$ %
bufferqq 
.qq 
Addqq 
(qq 
m_Timestampqq "
)qq" #
;qq# $
varss 
dataLenss 
=ss 
(ss 
uintss 
)ss  
bufferss  &
.ss& '
Lengthss' -
;ss- .
varuu 
messageuu 
=uu 
defaultuu !
(uu! "
Bindinguu" )
.uu) *"
Baselib_Socket_Messageuu* @
)uu@ A
;uuA B
messagevv 
.vv 
addressvv 
=vv 
&vv 
endPointvv '
.vv' (
rawNetworkAddressvv( 9
;vv9 :
messageww 
.ww 
dataww 
=ww 
newww 
IntPtrww %
(ww% &
bufferww& ,
.ww, -
Ptrww- 0
)ww0 1
;ww1 2
messagexx 
.xx 
dataLenxx 
=xx 
dataLenxx %
;xx% &
varzz 

errorStatezz 
=zz 
defaultzz $
(zz$ %
Bindingzz% ,
.zz, -
Baselib_ErrorStatezz- ?
)zz? @
;zz@ A
var{{ 
socket{{ 
={{ 
new{{ 
Binding{{ $
.{{$ %!
Baselib_Socket_Handle{{% :
{{{; <
handle{{< B
={{C D
socketHandle{{E Q
}{{Q R
;{{R S
uint|| 
sent|| 
=|| 
$num|| 
;|| 
do~~ 
{ 
sent
ÄÄ 
=
ÄÄ 
Binding
ÄÄ 
.
ÄÄ %
Baselib_Socket_UDP_Send
ÄÄ 6
(
ÄÄ6 7
socket
ÄÄ7 =
,
ÄÄ= >
&
ÄÄ? @
message
ÄÄ@ G
,
ÄÄG H
$num
ÄÄI J
,
ÄÄJ K
&
ÄÄL M

errorState
ÄÄM W
)
ÄÄW X
;
ÄÄX Y
}
ÅÅ 
while
ÇÇ 
(
ÇÇ 
sent
ÇÇ 
==
ÇÇ 
$num
ÇÇ 
&&
ÇÇ 
	QosHelper
ÇÇ  )
.
ÇÇ) *

WouldBlock
ÇÇ* 4
(
ÇÇ4 5

errorState
ÇÇ5 ?
.
ÇÇ? @
nativeErrorCode
ÇÇ@ O
)
ÇÇO P
&&
ÇÇQ S
!
ÇÇT U
	QosHelper
ÇÇU ^
.
ÇÇ^ _

ExpiredUtc
ÇÇ_ i
(
ÇÇi j
expireTimeUtc
ÇÇj w
)
ÇÇw x
)
ÇÇx y
;
ÇÇy z
buffer
ÑÑ 
.
ÑÑ 
Dispose
ÑÑ 
(
ÑÑ 
)
ÑÑ 
;
ÑÑ 
return
ÖÖ 
(
ÖÖ 
(
ÖÖ 
uint
ÖÖ 
)
ÖÖ 
Length
ÖÖ  
,
ÖÖ  !
(
ÖÖ" #
int
ÖÖ# &
)
ÖÖ& '

errorState
ÖÖ' 1
.
ÖÖ1 2
code
ÖÖ2 6
)
ÖÖ6 7
;
ÖÖ7 8
}
ââ 	
}
ää 
}ãã •¢
[C:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\QosJob.cs
	namespace 	
Unity
 
. 

Networking 
. 
QoS 
{ 
partial 
struct 
QosJob 
: 
IQosJob #
{ 
uint 
RequestsPerEndpoint  
;  !
ulong 
	TimeoutMs 
; 
ulong 
	MaxWaitMs 
; 
uint  
RequestsBetweenPause !
;! "
uint 
RequestPauseMs 
; 
uint 
ReceiveWaitMs 
; 
NativeArray 
< 
InternalQosResult %
>% &
_qosResults' 2
;2 3
public 
	JobHandle 
Schedule !
<! "
T" #
># $
($ %
	JobHandle% .
	dependsOn/ 8
=9 :
default; B
)B C
whereD I
TJ K
:L M
structN T
,T U
IJobV Z
{ 	
return 
this 
. 
Schedule  
(  !
	dependsOn! *
)* +
;+ ,
} 	
public!! 
NativeArray!! 
<!! 
InternalQosResult!! ,
>!!, -

QosResults!!. 8
=>!!9 ;
_qosResults!!< G
;!!G H
[## 	%
DeallocateOnJobCompletion##	 "
]##" #
NativeArray##$ /
<##/ 0
InternalQosServer##0 A
>##A B
m_QosServers##C O
;##O P
[$$ 	%
DeallocateOnJobCompletion$$	 "
]$$" #
NativeArray$$$ /
<$$/ 0
byte$$0 4
>$$4 5
m_TitleBytesUtf8$$6 F
;$$F G
NativeHashMap%% 
<%% 
FixedString64Bytes%% (
,%%( )
int%%* -
>%%- .
m_AddressIndexes%%/ ?
;%%? @
DateTime&& 
m_JobExpireTimeUtc&& #
;&&# $
int'' 

m_Requests'' 
;'' 
int(( 
m_Responses(( 
;(( 
internal** 
QosJob** 
(** 
IList** 
<** 
UcgQosServer** *
>*** +

qosServers**, 6
,**6 7
string**8 >
title**? D
,**D E
uint++ 
requestsPerEndpoint++ 0
=++1 2
$num++3 4
,++4 5
ulong++6 ;
	timeoutMs++< E
=++F G
$num++H M
,++M N
ulong++O T
	maxWaitMs++U ^
=++_ `
$num++a d
,++d e
uint,,  
requestsBetweenPause,, 1
=,,2 3
$num,,4 6
,,,6 7
uint,,8 <
requestPauseMs,,= K
=,,L M
$num,,N O
,,,O P
uint,,Q U
receiveWaitMs,,V c
=,,d e
$num,,f h
),,h i
:,,j k
this,,l p
(,,p q
),,q r
{-- 	
RequestsPerEndpoint.. 
=..  !
requestsPerEndpoint.." 5
;..5 6
	TimeoutMs// 
=// 
	timeoutMs// !
;//! "
	MaxWaitMs00 
=00 
	maxWaitMs00 !
;00! " 
RequestsBetweenPause11  
=11! " 
requestsBetweenPause11# 7
;117 8
RequestPauseMs22 
=22 
requestPauseMs22 +
;22+ ,
ReceiveWaitMs33 
=33 
receiveWaitMs33 )
;33) *
m_AddressIndexes66 
=66 
new66 "
NativeHashMap66# 0
<660 1
FixedString64Bytes661 C
,66C D
int66E H
>66H I
(66I J

qosServers66J T
?66T U
.66U V
Count66V [
??66\ ^
$num66_ `
,66` a
	Allocator66b k
.66k l

Persistent66l v
)66v w
;66w x
m_QosServers77 
=77 
new77 
NativeArray77 *
<77* +
InternalQosServer77+ <
>77< =
(77= >

qosServers77> H
?77H I
.77I J
Count77J O
??77P R
$num77S T
,77T U
	Allocator77V _
.77_ `

Persistent77` j
)77j k
;77k l
if88 
(88 

qosServers88 
!=88 
null88 "
)88" #
{99 
var:: 
i:: 
=:: 
$num:: 
;:: 
foreach;; 
(;; 
var;; 
s;; 
in;; !

qosServers;;" ,
);;, -
{<< 
if== 
(== 
!== 
NetworkEndPoint== (
.==( )
TryParse==) 1
(==1 2
s==2 3
.==3 4
ipv4==4 8
,==8 9
s==: ;
.==; <
port==< @
,==@ A
out==B E
var==F I
remote==J P
)==P Q
)==Q R
{>> 
Debug?? 
.?? 
LogError?? &
(??& '
$"??' )
$str??) D
{??D E
s??E F
.??F G
ipv4??G K
}??K L
$str??L `
"??` a
)??a b
;??b c
continue@@  
;@@  !
}AA 
varCC 
serverCC 
=CC  
newCC! $
InternalQosServerCC% 6
(CC6 7
remoteCC7 =
,CC= >
sCC? @
.CC@ A
BackoffUntilUtcCCA P
,CCP Q
iCCR S
)CCS T
;CCT U
ifFF 
(FF 
m_AddressIndexesFF (
.FF( )
ContainsKeyFF) 4
(FF4 5
serverFF5 ;
.FF; <
AddressFF< C
)FFC D
)FFD E
{GG 
serverII 
.II 
FirstIdxII '
=II( )
m_AddressIndexesII* :
[II: ;
serverII; A
.IIA B
AddressIIB I
]III J
;IIJ K
}JJ 
elseKK 
{LL 
m_AddressIndexesMM (
.MM( )
AddMM) ,
(MM, -
serverMM- 3
.MM3 4
AddressMM4 ;
,MM; <
iMM= >
)MM> ?
;MM? @
}NN 
StoreServerPP 
(PP  
serverPP  &
)PP& '
;PP' (
iQQ 
++QQ 
;QQ 
}RR 
ifTT 
(TT 
iTT 
<TT 
m_QosServersTT $
.TT$ %
LengthTT% +
)TT+ ,
{UU 
NativeArrayYY 
<YY  
InternalQosServerYY  1
>YY1 2
tYY3 4
=YY5 6
newYY7 :
NativeArrayYY; F
<YYF G
InternalQosServerYYG X
>YYX Y
(YYY Z
iYYZ [
,YY[ \
	AllocatorYY] f
.YYf g

PersistentYYg q
)YYq r
;YYr s
m_QosServersZZ  
.ZZ  !
GetSubArrayZZ! ,
(ZZ, -
$numZZ- .
,ZZ. /
tZZ0 1
.ZZ1 2
LengthZZ2 8
)ZZ8 9
.ZZ9 :
CopyToZZ: @
(ZZ@ A
tZZA B
)ZZB C
;ZZC D
m_QosServers[[  
.[[  !
Dispose[[! (
([[( )
)[[) *
;[[* +
m_QosServers\\  
=\\! "
t\\# $
;\\$ %
}]] 
}^^ 
_qosResultsaa 
=aa 
newaa 
NativeArrayaa )
<aa) *
InternalQosResultaa* ;
>aa; <
(aa< =
m_QosServersaa= I
.aaI J
LengthaaJ P
,aaP Q
	AllocatoraaR [
.aa[ \

Persistentaa\ f
)aaf g
;aag h
bytedd 
[dd 
]dd 
	utf8Titledd 
=dd 
Encodingdd '
.dd' (
UTF8dd( ,
.dd, -
GetBytesdd- 5
(dd5 6
titledd6 ;
)dd; <
;dd< =
m_TitleBytesUtf8ee 
=ee 
newee "
NativeArrayee# .
<ee. /
byteee/ 3
>ee3 4
(ee4 5
	utf8Titleee5 >
.ee> ?
Lengthee? E
,eeE F
	AllocatoreeG P
.eeP Q

PersistenteeQ [
)ee[ \
;ee\ ]
m_TitleBytesUtf8ff 
.ff 
CopyFromff %
(ff% &
	utf8Titleff& /
)ff/ 0
;ff0 1
}gg 	
publicll 
voidll 
Disposell 
(ll 
)ll 
{mm 	
ifnn 
(nn 
m_AddressIndexesnn  
.nn  !
	IsCreatednn! *
)nn* +
m_AddressIndexesoo  
.oo  !
Disposeoo! (
(oo( )
)oo) *
;oo* +
}pp 	
publicuu 
voiduu 
Executeuu 
(uu 
)uu 
{vv 	
ifww 
(ww 
m_QosServersww 
.ww 
Lengthww #
==ww$ &
$numww' (
)ww( )
returnxx 
;xx 

m_Requestszz 
=zz 
$numzz 
;zz 
m_Responses{{ 
={{ 
$num{{ 
;{{ 
var|| 
	startTime|| 
=|| 
DateTime|| $
.||$ %
UtcNow||% +
;||+ ,
m_JobExpireTimeUtc}} 
=}}  
	startTime}}! *
.}}* +
AddMilliseconds}}+ :
(}}: ;
	TimeoutMs}}; D
)}}D E
;}}E F
Debug 
. 
Log 
( 
$" 
$str 3
{3 4
	TimeoutMs4 =
}= >
$str> H
"H I
)I J
;J K
Binding
ÉÉ 
.
ÉÉ 
Baselib_ErrorCode
ÉÉ %
	errorCode
ÉÉ& /
;
ÉÉ/ 0
Binding
ÑÑ 
.
ÑÑ #
Baselib_Socket_Handle
ÑÑ )
socket
ÑÑ* 0
;
ÑÑ0 1
(
ÖÖ 
socket
ÖÖ 
,
ÖÖ 
	errorCode
ÖÖ 
)
ÖÖ 
=
ÖÖ  !!
CreateAndBindSocket
ÖÖ" 5
(
ÖÖ5 6
)
ÖÖ6 7
;
ÖÖ7 8
if
áá 
(
áá 
	errorCode
áá 
!=
áá 
Binding
áá $
.
áá$ %
Baselib_ErrorCode
áá% 6
.
áá6 7
Success
áá7 >
)
áá> ?
{
àà 
Debug
ää 
.
ää 
LogError
ää 
(
ää 
$"
ää !
$str
ää! _
{
ää_ `
	errorCode
ää` i
}
ääi j
$str
ääj k
"
ääk l
)
ääl m
;
ääm n
return
ãã 
;
ãã 
}
åå 
ProcessServers
éé 
(
éé 
socket
éé !
)
éé! "
;
éé" #
Binding
êê 
.
êê "
Baselib_Socket_Close
êê (
(
êê( )
socket
êê) /
)
êê/ 0
;
êê0 1
Debug
íí 
.
íí 
Log
íí 
(
íí 
$"
íí 
$str
íí %
{
íí% &
	QosHelper
íí& /
.
íí/ 0
Since
íí0 5
(
íí5 6
	startTime
íí6 ?
)
íí? @
}
íí@ A
$str
ííA M
{
ííM N
m_QosServers
ííN Z
.
ííZ [
Length
íí[ a
}
íía b
$str
ííb j
"
ííj k
)
íík l
;
ííl m
}
îî 	
void
ôô 
ProcessServers
ôô 
(
ôô 
Binding
ôô #
.
ôô# $#
Baselib_Socket_Handle
ôô$ 9
socketHandle
ôô: F
)
ôôF G
{
öö 	
var
úú 
endpoint
úú 
=
úú 
default
úú "
(
úú" #
NetworkEndPoint
úú# 2
)
úú2 3
;
úú3 4
foreach
ùù 
(
ùù 
var
ùù 
s
ùù 
in
ùù 
m_QosServers
ùù *
)
ùù* +
{
ûû 
if
üü 
(
üü 
s
üü 
.
üü 
	Duplicate
üü 
)
üü  
{
†† 
continue
¢¢ 
;
¢¢ 
}
££ 
ProcessServer
•• 
(
•• 
s
•• 
,
••  
socketHandle
••! -
)
••- .
;
••. /#
RecvQosResponsesTimed
®® %
(
®®% &
endpoint
®®& .
,
®®. / 
m_JobExpireTimeUtc
®®0 B
,
®®B C
socketHandle
®®D P
,
®®P Q
false
®®R W
)
®®W X
;
®®X Y
}
©© 
DateTime
¨¨ 
deadline
¨¨ 
=
¨¨ 
DateTime
¨¨  (
.
¨¨( )
UtcNow
¨¨) /
.
¨¨/ 0
AddMilliseconds
¨¨0 ?
(
¨¨? @
	MaxWaitMs
¨¨@ I
)
¨¨I J
;
¨¨J K
if
≠≠ 
(
≠≠  
m_JobExpireTimeUtc
≠≠ "
<
≠≠# $
deadline
≠≠% -
)
≠≠- .
{
ÆÆ 
deadline
ØØ 
=
ØØ  
m_JobExpireTimeUtc
ØØ -
;
ØØ- .
}
∞∞ 
var
≤≤ 
error
≤≤ 
=
≤≤ 
EnableReceiveWait
≤≤ )
(
≤≤) *
)
≤≤* +
;
≤≤+ ,
if
≥≥ 
(
≥≥ 
error
≥≥ 
!=
≥≥ 
$str
≥≥ 
)
≥≥ 
{
¥¥ 
Debug
µµ 
.
µµ 
LogError
µµ 
(
µµ 
error
µµ $
)
µµ$ %
;
µµ% &
return
∂∂ 
;
∂∂ 
}
∑∑ #
RecvQosResponsesTimed
∏∏ !
(
∏∏! "
endpoint
∏∏" *
,
∏∏* +
deadline
∏∏, 4
,
∏∏4 5
socketHandle
∏∏6 B
,
∏∏B C
true
∏∏D H
)
∏∏H I
;
∏∏I J
foreach
∫∫ 
(
∫∫ 
var
∫∫ 
s
∫∫ 
in
∫∫ 
m_QosServers
∫∫ *
)
∫∫* +
{
ªª 
var
ΩΩ 
r
ΩΩ 
=
ΩΩ 
s
ΩΩ 
.
ΩΩ 
	Duplicate
ΩΩ #
?
ΩΩ$ %
_qosResults
ΩΩ& 1
[
ΩΩ1 2
s
ΩΩ2 3
.
ΩΩ3 4
FirstIdx
ΩΩ4 <
]
ΩΩ< =
:
ΩΩ> ?
_qosResults
ΩΩ@ K
[
ΩΩK L
s
ΩΩL M
.
ΩΩM N
Idx
ΩΩN Q
]
ΩΩQ R
;
ΩΩR S
StoreResult
ææ 
(
ææ 
s
ææ 
.
ææ 
Idx
ææ !
,
ææ! "
r
ææ# $
)
ææ$ %
;
ææ% &
}
øø 
}
¿¿ 	
void
«« 
ProcessServer
«« 
(
«« 
InternalQosServer
«« ,
server
««- 3
,
««3 4
Binding
««5 <
.
««< =#
Baselib_Socket_Handle
««= R
socketHandle
««S _
)
««_ `
{
»» 	
if
…… 
(
…… 
	QosHelper
…… 
.
…… 

ExpiredUtc
…… $
(
……$ % 
m_JobExpireTimeUtc
……% 7
)
……7 8
)
……8 9
{
   
Debug
ÀÀ 
.
ÀÀ 

LogWarning
ÀÀ  
(
ÀÀ  !
$"
ÀÀ! #
$str
ÀÀ# F
{
ÀÀF G
server
ÀÀG M
.
ÀÀM N
Address
ÀÀN U
}
ÀÀU V
$str
ÀÀV W
"
ÀÀW X
)
ÀÀX Y
;
ÀÀY Z
return
ÃÃ 
;
ÃÃ 
}
ÕÕ 
if
œœ 
(
œœ 
DateTime
œœ 
.
œœ 
UtcNow
œœ 
<
œœ  !
server
œœ" (
.
œœ( )
BackoffUntilUtc
œœ) 8
)
œœ8 9
{
–– 
Debug
—— 
.
—— 

LogWarning
——  
(
——  !
$"
——! #
$str
——# 4
{
——4 5
server
——5 ;
.
——; <
Address
——< C
}
——C D
$str
——D `
"
——` a
)
——a b
;
——b c
return
““ 
;
““ 
}
”” 
DateTime
÷÷ 
	startTime
÷÷ 
=
÷÷  
DateTime
÷÷! )
.
÷÷) *
UtcNow
÷÷* 0
;
÷÷0 1
InternalQosResult
ŸŸ 
r
ŸŸ 
=
ŸŸ  !
_qosResults
ŸŸ" -
[
ŸŸ- .
server
ŸŸ. 4
.
ŸŸ4 5
Idx
ŸŸ5 8
]
ŸŸ8 9
;
ŸŸ9 :
var
⁄⁄ 
	errorcode
⁄⁄ 
=
⁄⁄ 
SendQosRequests
⁄⁄ +
(
⁄⁄+ ,
server
⁄⁄, 2
,
⁄⁄2 3
socketHandle
⁄⁄4 @
,
⁄⁄@ A
ref
⁄⁄B E
r
⁄⁄F G
)
⁄⁄G H
;
⁄⁄H I
if
€€ 
(
€€ 
	errorcode
€€ 
!=
€€ 
$num
€€ 
)
€€ 
{
‹‹ 
Debug
›› 
.
›› 
LogError
›› 
(
›› 
$"
›› !
$str
››! ;
{
››; <
server
››< B
.
››B C
Address
››C J
}
››J K
$str
››K W
{
››W X
	errorcode
››X a
}
››a b
$str
››b c
"
››c d
)
››d e
;
››e f
}
ﬁﬁ 
Debug
·· 
.
·· 
Log
·· 
(
·· 
$"
·· 
$str
·· (
{
··( )
server
··) /
.
··/ 0
Address
··0 7
}
··7 8
$str
··8 >
{
··> ?
	QosHelper
··? H
.
··H I
Since
··I N
(
··N O
	startTime
··O X
)
··X Y
}
··Y Z
"
··Z [
)
··[ \
;
··\ ]
StoreResult
„„ 
(
„„ 
server
„„ 
.
„„ 
Idx
„„ "
,
„„" #
r
„„$ %
)
„„% &
;
„„& '
}
‰‰ 	
Binding
ÔÔ 
.
ÔÔ 
Baselib_ErrorCode
ÔÔ !
SendQosRequests
ÔÔ" 1
(
ÔÔ1 2
InternalQosServer
ÔÔ2 C
server
ÔÔD J
,
ÔÔJ K
Binding
ÔÔL S
.
ÔÔS T#
Baselib_Socket_Handle
ÔÔT i
socketHandle
ÔÔj v
,
ÔÔv w
ref
ÔÔx { 
InternalQosResultÔÔ| ç
resultÔÔé î
)ÔÔî ï
{
 	

QosRequest
ÒÒ 
request
ÒÒ 
=
ÒÒ  
new
ÒÒ! $

QosRequest
ÒÒ% /
{
ÚÚ 
Title
ÛÛ 
=
ÛÛ 
m_TitleBytesUtf8
ÛÛ (
.
ÛÛ( )
ToArray
ÛÛ) 0
(
ÛÛ0 1
)
ÛÛ1 2
,
ÛÛ2 3

Identifier
ÙÙ 
=
ÙÙ 
(
ÙÙ 
ushort
ÙÙ $
)
ÙÙ$ %
new
ÙÙ% (
Random
ÙÙ) /
(
ÙÙ/ 0
)
ÙÙ0 1
.
ÙÙ1 2
Next
ÙÙ2 6
(
ÙÙ6 7
ushort
ÙÙ7 =
.
ÙÙ= >
MinValue
ÙÙ> F
,
ÙÙF G
ushort
ÙÙH N
.
ÙÙN O
MaxValue
ÙÙO W
)
ÙÙW X
,
ÙÙX Y
}
ıı 
;
ıı 
server
ˆˆ 
.
ˆˆ 
RequestIdentifier
ˆˆ $
=
ˆˆ% &
request
ˆˆ' .
.
ˆˆ. /

Identifier
ˆˆ/ 9
;
ˆˆ9 :
StoreServer
˜˜ 
(
˜˜ 
server
˜˜ 
)
˜˜ 
;
˜˜  
result
˙˙ 
.
˙˙ 
RequestsSent
˙˙ 
=
˙˙  !
$num
˙˙" #
;
˙˙# $
do
˚˚ 
{
¸¸ 
if
˝˝ 
(
˝˝ 
	QosHelper
˝˝ 
.
˝˝ 

ExpiredUtc
˝˝ (
(
˝˝( ) 
m_JobExpireTimeUtc
˝˝) ;
)
˝˝; <
)
˝˝< =
{
˛˛ 
Debug
ˇˇ 
.
ˇˇ 

LogWarning
ˇˇ $
(
ˇˇ$ %
$"
ˇˇ% '
$str
ˇˇ' K
{
ˇˇK L!
RequestsPerEndpoint
ˇˇL _
-
ˇˇ` a
result
ˇˇb h
.
ˇˇh i
RequestsSent
ˇˇi u
}
ˇˇu v
$strˇˇv Ä
{ˇˇÄ Å
serverˇˇÅ á
.ˇˇá à
Addressˇˇà è
}ˇˇè ê
$strˇˇê ë
"ˇˇë í
)ˇˇí ì
;ˇˇì î
return
ÄÄ 
Binding
ÄÄ "
.
ÄÄ" #
Baselib_ErrorCode
ÄÄ# 4
.
ÄÄ4 5
Timeout
ÄÄ5 <
;
ÄÄ< =
}
ÅÅ 
request
ÇÇ 
.
ÇÇ 
	Timestamp
ÇÇ !
=
ÇÇ" #
(
ÇÇ$ %
ulong
ÇÇ% *
)
ÇÇ* +
(
ÇÇ+ ,
DateTime
ÇÇ, 4
.
ÇÇ4 5
UtcNow
ÇÇ5 ;
.
ÇÇ; <
Ticks
ÇÇ< A
/
ÇÇB C
TimeSpan
ÇÇD L
.
ÇÇL M!
TicksPerMillisecond
ÇÇM `
)
ÇÇ` a
;
ÇÇa b
request
ÉÉ 
.
ÉÉ 
Sequence
ÉÉ  
=
ÉÉ! "
(
ÉÉ# $
byte
ÉÉ$ (
)
ÉÉ( )
result
ÉÉ) /
.
ÉÉ/ 0
RequestsSent
ÉÉ0 <
;
ÉÉ< =
int
ÖÖ 
	errorCode
ÖÖ 
;
ÖÖ 
uint
ÜÜ 
sent
ÜÜ 
;
ÜÜ 
(
áá 
sent
áá 
,
áá 
	errorCode
áá  
)
áá  !
=
áá" #
request
áá$ +
.
áá+ ,
Send
áá, 0
(
áá0 1
socketHandle
áá1 =
.
áá= >
handle
áá> D
,
ááD E
server
ááF L
.
ááL M
RemoteEndpoint
ááM [
,
áá[ \ 
m_JobExpireTimeUtc
áá] o
)
ááo p
;
ááp q
if
àà 
(
àà 
(
àà 
Binding
àà 
.
àà 
Baselib_ErrorCode
àà .
)
àà. /
	errorCode
àà/ 8
!=
àà9 ;
Binding
àà< C
.
ààC D
Baselib_ErrorCode
ààD U
.
ààU V
Success
ààV ]
)
àà] ^
{
ââ 
Debug
ää 
.
ää 
LogError
ää "
(
ää" #
$"
ää# %
$str
ää% F
{
ääF G
(
ääG H
Binding
ääH O
.
ääO P
Baselib_ErrorCode
ääP a
)
ääa b
	errorCode
ääb k
}
ääk l
$str
ääl |
"
ää| }
)
ää} ~
;
ää~ 
return
ãã 
(
ãã 
Binding
ãã #
.
ãã# $
Baselib_ErrorCode
ãã$ 5
)
ãã5 6
	errorCode
ãã6 ?
;
ãã? @
}
åå 
else
çç 
if
çç 
(
çç 
sent
çç 
!=
çç  
request
çç! (
.
çç( )
Length
çç) /
)
çç/ 0
{
éé 
Debug
èè 
.
èè 

LogWarning
èè $
(
èè$ %
$"
èè% '
$str
èè' 4
{
èè4 5
sent
èè5 9
}
èè9 :
$str
èè: >
{
èè> ?
request
èè? F
.
èèF G
Length
èèG M
}
èèM N
$str
èèN k
"
èèk l
)
èèl m
;
èèm n
result
êê 
.
êê 
InvalidRequests
êê *
++
êê* ,
;
êê, -
}
ëë 
else
íí 
{
ìì 

m_Requests
îî 
++
îî  
;
îî  !
result
ïï 
.
ïï 
RequestsSent
ïï '
++
ïï' )
;
ïï) *
if
ññ 
(
ññ "
RequestsBetweenPause
ññ ,
>
ññ- .
$num
ññ/ 0
&&
ññ1 3
RequestPauseMs
ññ4 B
>
ññC D
$num
ññE F
&&
ññG I

m_Requests
ññJ T
%
ññU V"
RequestsBetweenPause
ññW k
==
ññl n
$num
ñño p
)
ññp q
{
óó 
System
öö 
.
öö 
	Threading
öö (
.
öö( )
Thread
öö) /
.
öö/ 0
Sleep
öö0 5
(
öö5 6
(
öö6 7
int
öö7 :
)
öö: ;
RequestPauseMs
öö; I
)
ööI J
;
ööJ K
}
õõ 
}
úú 
}
ùù 
while
ûû 
(
ûû 
result
ûû 
.
ûû 
RequestsSent
ûû &
<
ûû' (!
RequestsPerEndpoint
ûû) <
)
ûû< =
;
ûû= >
return
†† 
$num
†† 
;
†† 
}
°° 	
void
ßß 
StoreServer
ßß 
(
ßß 
InternalQosServer
ßß *
server
ßß+ 1
)
ßß1 2
{
®® 	
m_QosServers
©© 
[
©© 
server
©© 
.
©©  
Idx
©©  #
]
©©# $
=
©©% &
server
©©' -
;
©©- .
}
™™ 	
void
±± 
StoreResult
±± 
(
±± 
int
±± 
idx
±±  
,
±±  !
InternalQosResult
±±" 3
result
±±4 :
)
±±: ;
{
≤≤ 	
_qosResults
≥≥ 
[
≥≥ 
idx
≥≥ 
]
≥≥ 
=
≥≥ 
result
≥≥ %
;
≥≥% &
}
¥¥ 	
void
ºº #
RecvQosResponsesTimed
ºº "
(
ºº" #
NetworkEndPoint
ºº# 2
addr
ºº3 7
,
ºº7 8
DateTime
ºº9 A
deadline
ººB J
,
ººJ K
Binding
ººL S
.
ººS T#
Baselib_Socket_Handle
ººT i
socketHandle
ººj v
,
ººv w
bool
ººx |
waitºº} Å
)ººÅ Ç
{
ΩΩ 	
int
øø 
hadResponses
øø 
=
øø 
m_Responses
øø *
;
øø* +
DateTime
¿¿ 
	startTime
¿¿ 
=
¿¿  
DateTime
¿¿! )
.
¿¿) *
UtcNow
¿¿* 0
;
¿¿0 1
RecvQosResponses
¬¬ 
(
¬¬ 
addr
¬¬ !
,
¬¬! "
deadline
¬¬# +
,
¬¬+ ,
socketHandle
¬¬- 9
,
¬¬9 :
wait
¬¬; ?
)
¬¬? @
;
¬¬@ A
var
ƒƒ 
t
ƒƒ 
=
ƒƒ 
(
ƒƒ 
DateTime
ƒƒ 
.
ƒƒ 
UtcNow
ƒƒ $
-
ƒƒ% &
	startTime
ƒƒ' 0
)
ƒƒ0 1
.
ƒƒ1 2
TotalMilliseconds
ƒƒ2 C
;
ƒƒC D
var
≈≈ 
p
≈≈ 
=
≈≈ 
m_Responses
≈≈ 
-
≈≈  !
hadResponses
≈≈" .
;
≈≈. /
string
∆∆ 
avgTime
∆∆ 
=
∆∆ 
$str
∆∆ 
;
∆∆  
if
«« 
(
«« 
p
«« 
>
«« 
$num
«« 
)
«« 
{
»» 
avgTime
…… 
=
…… 
$"
…… 
$str
…… !
{
……! "
t
……" #
/
……# $
p
……$ %
:
……% &
$str
……& (
}
……( )
$str
……) 8
"
……8 9
;
……9 :
string
   
w
   
=
   
wait
   
?
    !
$str
  " +
:
  , -
$str
  . 0
;
  0 1
Debug
ÀÀ 
.
ÀÀ 
Log
ÀÀ 
(
ÀÀ 
$"
ÀÀ 
$str
ÀÀ -
{
ÀÀ- .
p
ÀÀ. /
}
ÀÀ/ 0
$str
ÀÀ0 >
{
ÀÀ> ?
m_Responses
ÀÀ? J
}
ÀÀJ K
$str
ÀÀK L
{
ÀÀL M

m_Requests
ÀÀM W
}
ÀÀW X
$str
ÀÀX \
{
ÀÀ\ ]
	QosHelper
ÀÀ] f
.
ÀÀf g
Since
ÀÀg l
(
ÀÀl m
	startTime
ÀÀm v
)
ÀÀv w
}
ÀÀw x
$str
ÀÀx y
{
ÀÀy z
w
ÀÀz {
}
ÀÀ{ |
{
ÀÀ| }
avgTimeÀÀ} Ñ
}ÀÀÑ Ö
"ÀÀÖ Ü
)ÀÀÜ á
;ÀÀá à
}
ÃÃ 
}
ŒŒ 	
void
◊◊ 
RecvQosResponses
◊◊ 
(
◊◊ 
NetworkEndPoint
◊◊ -
addr
◊◊. 2
,
◊◊2 3
DateTime
◊◊4 <
deadline
◊◊= E
,
◊◊E F
Binding
◊◊G N
.
◊◊N O#
Baselib_Socket_Handle
◊◊O d
socketHandle
◊◊e q
,
◊◊q r
bool
◊◊s w
wait
◊◊x |
)
◊◊| }
{
ÿÿ 	
if
ŸŸ 
(
ŸŸ 

m_Requests
ŸŸ 
==
ŸŸ 
m_Responses
ŸŸ )
)
ŸŸ) *
return
⁄⁄ 
;
⁄⁄ 
QosResponse
‹‹ 
response
‹‹  
=
‹‹! "
new
‹‹# &
QosResponse
‹‹' 2
(
‹‹2 3
)
‹‹3 4
;
‹‹4 5
InternalQosResult
›› 
result
›› $
=
››% &
_qosResults
››' 2
[
››2 3
$num
››3 4
]
››4 5
;
››5 6
while
ﬂﬂ 
(
ﬂﬂ 

m_Requests
ﬂﬂ 
>
ﬂﬂ 
m_Responses
ﬂﬂ  +
)
ﬂﬂ+ ,
{
‡‡ 
if
·· 
(
·· 
	QosHelper
·· 
.
·· 

ExpiredUtc
·· (
(
··( )
deadline
··) 1
)
··1 2
)
··2 3
{
‚‚ 
Debug
ÊÊ 
.
ÊÊ 
Log
ÊÊ 
(
ÊÊ 
$"
ÊÊ  
$str
ÊÊ  C
{
ÊÊC D

m_Requests
ÊÊD N
-
ÊÊO P
m_Responses
ÊÊQ \
}
ÊÊ\ ]
$str
ÊÊ] s
"
ÊÊs t
)
ÊÊt u
;
ÊÊu v
return
ËË 
;
ËË 
}
ÈÈ 
int
ÎÎ 
received
ÎÎ 
;
ÎÎ 
(
ÏÏ 
received
ÏÏ 
,
ÏÏ 
_
ÏÏ 
)
ÏÏ 
=
ÏÏ 
response
ÏÏ  (
.
ÏÏ( )
Recv
ÏÏ) -
(
ÏÏ- .
socketHandle
ÏÏ. :
.
ÏÏ: ;
handle
ÏÏ; A
,
ÏÏA B
wait
ÏÏC G
,
ÏÏG H
deadline
ÏÏI Q
,
ÏÏQ R
ref
ÏÏS V
addr
ÏÏW [
)
ÏÏ[ \
;
ÏÏ\ ]
if
ÌÌ 
(
ÌÌ 
received
ÌÌ 
==
ÌÌ 
$num
ÌÌ  !
)
ÌÌ! "
{
ÓÓ 
if
ÔÔ 
(
ÔÔ 
!
ÔÔ 
wait
ÔÔ 
)
ÔÔ 
return
 
;
 
continue
ÚÚ 
;
ÚÚ 
}
ÛÛ 
if
ıı 
(
ıı 
received
ıı 
==
ıı 
-
ıı  !
$num
ıı! "
)
ıı" #
{
ˆˆ 
continue
¯¯ 
;
¯¯ 
}
˘˘ 
int
˙˙ 
idx
˙˙ 
=
˙˙ 
LookupResult
˙˙ &
(
˙˙& '
addr
˙˙' +
,
˙˙+ ,
response
˙˙- 5
,
˙˙5 6
ref
˙˙7 :
result
˙˙; A
)
˙˙A B
;
˙˙B C
if
˚˚ 
(
˚˚ 
idx
˚˚ 
<
˚˚ 
$num
˚˚ 
)
˚˚ 
{
¸¸ 
continue
˛˛ 
;
˛˛ 
}
ˇˇ 
string
ÅÅ 
error
ÅÅ 
=
ÅÅ 
$str
ÅÅ !
;
ÅÅ! "
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
response
ÇÇ 
.
ÇÇ 
Verify
ÇÇ $
(
ÇÇ$ %
result
ÇÇ% +
.
ÇÇ+ ,
RequestsSent
ÇÇ, 8
,
ÇÇ8 9
ref
ÇÇ: =
error
ÇÇ> C
)
ÇÇC D
)
ÇÇD E
{
ÉÉ 
Debug
ÑÑ 
.
ÑÑ 

LogWarning
ÑÑ $
(
ÑÑ$ %
$"
ÑÑ% '
$str
ÑÑ' F
{
ÑÑF G
m_QosServers
ÑÑG S
[
ÑÑS T
idx
ÑÑT W
]
ÑÑW X
.
ÑÑX Y
Address
ÑÑY `
}
ÑÑ` a
$str
ÑÑa u
{
ÑÑu v
error
ÑÑv {
}
ÑÑ{ |
"
ÑÑ| }
)
ÑÑ} ~
;
ÑÑ~ 
result
ÖÖ 
.
ÖÖ 
InvalidResponses
ÖÖ +
++
ÖÖ+ -
;
ÖÖ- .
}
ÜÜ 
else
áá 
{
àà 
m_Responses
ââ 
++
ââ !
;
ââ! "
result
ää 
.
ää 
ResponsesReceived
ää ,
++
ää, .
;
ää. /
result
ãã 
.
ãã !
AddAggregateLatency
ãã .
(
ãã. /
(
ãã/ 0
uint
ãã0 4
)
ãã4 5
response
ãã5 =
.
ãã= >
	LatencyMs
ãã> G
)
ããG H
;
ããH I
var
èè 
fc
èè 
=
èè 
response
èè %
.
èè% &
ParseFlowControl
èè& 6
(
èè6 7
)
èè7 8
;
èè8 9
if
êê 
(
êê 
fc
êê 
.
êê 
type
êê 
!=
êê  "
FcType
êê# )
.
êê) *
None
êê* .
&&
êê/ 1
fc
êê2 4
.
êê4 5
units
êê5 :
>
êê; <
result
êê= C
.
êêC D
FcUnits
êêD K
)
êêK L
{
ëë 
result
íí 
.
íí 
FcType
íí %
=
íí& '
fc
íí( *
.
íí* +
type
íí+ /
;
íí/ 0
result
ìì 
.
ìì 
FcUnits
ìì &
=
ìì' (
fc
ìì) +
.
ìì+ ,
units
ìì, 1
;
ìì1 2
}
îî 
}
ïï 
StoreResult
óó 
(
óó 
idx
óó 
,
óó  
result
óó! '
)
óó' (
;
óó( )
}
òò 
}
ôô 	
string
¢¢ 
EnableReceiveWait
¢¢  
(
¢¢  !
)
¢¢! "
{
££ 	
return
•• 
$str
•• 
;
•• 
}
¶¶ 	
int
ÆÆ 
LookupResult
ÆÆ 
(
ÆÆ 
NetworkEndPoint
ÆÆ (
endPoint
ÆÆ) 1
,
ÆÆ1 2
QosResponse
ÆÆ3 >
response
ÆÆ? G
,
ÆÆG H
ref
ÆÆI L
InternalQosResult
ÆÆM ^
result
ÆÆ_ e
)
ÆÆe f
{
ØØ 	
if
≤≤ 
(
≤≤ 
m_AddressIndexes
≤≤  
.
≤≤  !
TryGetValue
≤≤! ,
(
≤≤, -
endPoint
≤≤- 5
.
≤≤5 6
Address
≤≤6 =
,
≤≤= >
out
≤≤? B
var
≤≤C F
idx
≤≤G J
)
≤≤J K
)
≤≤K L
{
≥≥ 
result
¥¥ 
=
¥¥ 
_qosResults
¥¥ $
[
¥¥$ %
idx
¥¥% (
]
¥¥( )
;
¥¥) *
var
µµ 
s
µµ 
=
µµ 
m_QosServers
µµ $
[
µµ$ %
idx
µµ% (
]
µµ( )
;
µµ) *
if
∂∂ 
(
∂∂ 
response
∂∂ 
.
∂∂ 

Identifier
∂∂ '
!=
∂∂( *
s
∂∂+ ,
.
∂∂, -
RequestIdentifier
∂∂- >
)
∂∂> ?
{
∑∑ 
Debug
∏∏ 
.
∏∏ 

LogWarning
∏∏ $
(
∏∏$ %
$"
∏∏% '
$str
∏∏' G
{
∏∏G H
s
∏∏H I
.
∏∏I J
Address
∏∏J Q
}
∏∏Q R
$str
∏∏R U
{
∏∏U V
response
∏∏V ^
.
∏∏^ _

Identifier
∏∏_ i
:
∏∏i j
$str
∏∏j l
}
∏∏l m
$str
∏∏m s
{
∏∏s t
s
∏∏t u
.
∏∏u v 
RequestIdentifier∏∏v á
:∏∏á à
$str∏∏à ä
}∏∏ä ã
$str∏∏ã î
"∏∏î ï
)∏∏ï ñ
;∏∏ñ ó
result
ππ 
.
ππ 
InvalidResponses
ππ +
++
ππ+ -
;
ππ- .
return
∫∫ 
-
∫∫ 
$num
∫∫ 
;
∫∫ 
}
ªª 
return
ΩΩ 
idx
ΩΩ 
;
ΩΩ 
}
ææ 
Debug
¿¿ 
.
¿¿ 

LogWarning
¿¿ 
(
¿¿ 
$"
¿¿ 
$str
¿¿ I
{
¿¿I J
endPoint
¿¿J R
.
¿¿R S
Address
¿¿S Z
}
¿¿Z [
"
¿¿[ \
)
¿¿\ ]
;
¿¿] ^
return
¬¬ 
-
¬¬ 
$num
¬¬ 
;
¬¬ 
}
√√ 	
static
ÕÕ 
unsafe
ÕÕ 
(
ÕÕ 
Binding
ÕÕ 
.
ÕÕ #
Baselib_Socket_Handle
ÕÕ 4
,
ÕÕ4 5
Binding
ÕÕ6 =
.
ÕÕ= >
Baselib_ErrorCode
ÕÕ> O
)
ÕÕO P!
CreateAndBindSocket
ÕÕQ d
(
ÕÕd e
)
ÕÕe f
{
ŒŒ 	
var
œœ 

errorState
œœ 
=
œœ 
default
œœ $
(
œœ$ %
Binding
œœ% ,
.
œœ, - 
Baselib_ErrorState
œœ- ?
)
œœ? @
;
œœ@ A
var
““ 
socketHandle
““ 
=
““ 
Binding
““ &
.
““& '#
Baselib_Socket_Create
““' <
(
““< =
Binding
““= D
.
““D E+
Baselib_NetworkAddress_Family
““E b
.
““b c
IPv4
““c g
,
““g h
Binding
”” 
.
”” %
Baselib_Socket_Protocol
”” /
.
””/ 0
UDP
””0 3
,
””3 4
&
””5 6

errorState
””6 @
)
””@ A
;
””A B
if
’’ 
(
’’ 

errorState
’’ 
.
’’ 
code
’’ 
!=
’’  "
Binding
’’# *
.
’’* +
Baselib_ErrorCode
’’+ <
.
’’< =
Success
’’= D
)
’’D E
{
÷÷ 
Debug
◊◊ 
.
◊◊ 
LogError
◊◊ 
(
◊◊ 
$"
◊◊ !
$str
◊◊! A
{
◊◊A B

errorState
◊◊B L
.
◊◊L M
code
◊◊M Q
}
◊◊Q R
"
◊◊R S
)
◊◊S T
;
◊◊T U
}
ÿÿ 
return
⁄⁄ 
(
⁄⁄ 
socketHandle
⁄⁄  
,
⁄⁄  !

errorState
⁄⁄" ,
.
⁄⁄, -
code
⁄⁄- 1
)
⁄⁄1 2
;
⁄⁄2 3
}
€€ 	
}
‹‹ 
}ıı –(
cC:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\QosPackageInitializer.cs
	namespace 	
Unity
 
. 
Services 
. 
Qos 
{ 
class 	!
QosPackageInitializer
 
:  !!
IInitializablePackage" 7
{ 
const 
string 
PackageName  
=! "
$str# ;
;; <
[ 	)
RuntimeInitializeOnLoadMethod	 &
(& '%
RuntimeInitializeLoadType' @
.@ A
BeforeSceneLoadA P
)P Q
]Q R
static 
void 
Register 
( 
) 
{ 	
CoreRegistry 
. 
Instance !
.! "
RegisterPackage" 1
(1 2
new2 5!
QosPackageInitializer6 K
(K L
)L M
)M N
. 
	DependsOn 
< 
IAccessToken '
>' (
(( )
)) *
. 
	DependsOn 
< 
IMetricsFactory *
>* +
(+ ,
), -
. 
ProvidesComponent "
<" #
IQosResults# .
>. /
(/ 0
)0 1
;1 2
} 	
public 
Task 

Initialize 
( 
CoreRegistry +
registry, 4
)4 5
{ 	
var 

httpClient 
= 
new  

HttpClient! +
(+ ,
), -
;- .
var   #
accessTokenQosDiscovery   '
=  ( )
registry  * 2
.  2 3
GetServiceComponent  3 F
<  F G
IAccessToken  G S
>  S T
(  T U
)  U V
;  V W
var!! 
metricsFactory!! 
=!!  
registry!!! )
.!!) *
GetServiceComponent!!* =
<!!= >
IMetricsFactory!!> M
>!!M N
(!!N O
)!!O P
;!!P Q
var"" 
metrics"" 
="" 
metricsFactory"" (
.""( )
Create"") /
(""/ 0
PackageName""0 ;
)""; <
;""< =
QosDiscoveryService%% 
.%%  
Instance%%  (
=%%) *
new%%+ .'
InternalQosDiscoveryService%%/ J
(%%J K

httpClient%%K U
,%%U V#
accessTokenQosDiscovery%%W n
)%%n o
;%%o p
var(( 
wrappedQosService(( !
=((" #
new(($ '
WrappedQosService((( 9
(((9 :
QosDiscoveryService((: M
.((M N
Instance((N V
.((V W
QosDiscoveryApi((W f
,((f g
new)) 
BaselibQosRunner)) $
())$ %
)))% &
,))& '#
accessTokenQosDiscovery))( ?
,))? @
metrics))A H
)))H I
;))I J

QosService** 
.** 
Instance** 
=**  !
wrappedQosService**" 3
;**3 4
registry++ 
.++ $
RegisterServiceComponent++ -
<++- .
IQosResults++. 9
>++9 :
(++: ;
new++; >

QosResults++? I
(++I J
wrappedQosService++J [
)++[ \
)++\ ]
;++] ^
return-- 
Task-- 
.-- 
CompletedTask-- %
;--% &
}.. 	
}// 
class44 	'
InternalQosDiscoveryService44
 %
:44& ' 
IQosDiscoveryService44( <
{55 
const99 
string99 
QosDiscoveryHost99 %
=99& '
$str99( V
;99V W
const;; 
int;; 
RequestTimeout;;  
=;;! "
$num;;# %
;;;% &
const<< 
int<< 

NumRetries<< 
=<< 
$num<<  
;<<  !
internalCC '
InternalQosDiscoveryServiceCC ,
(CC, -

HttpClientCC- 7

httpClientCC8 B
,CCB C
IAccessTokenCCD P
accessTokenCCQ \
=CC] ^
nullCC_ c
)CCc d
{DD 	
ConfigurationEE 
=EE 
newEE 
ConfigurationEE  -
(EE- .
QosDiscoveryHostEE. >
,EE> ?
RequestTimeoutEE@ N
,EEN O

NumRetriesEEP Z
,EEZ [
nullEE\ `
)EE` a
;EEa b
QosDiscoveryApiGG 
=GG 
newGG !!
QosDiscoveryApiClientGG" 7
(GG7 8

httpClientGG8 B
,GGB C
accessTokenGGD O
,GGO P
ConfigurationGGQ ^
)GG^ _
;GG_ `
}HH 	
publicJJ "
IQosDiscoveryApiClientJJ %
QosDiscoveryApiJJ& 5
{JJ6 7
getJJ8 ;
;JJ; <
setJJ= @
;JJ@ A
}JJB C
publicMM 
ConfigurationMM 
ConfigurationMM *
{MM+ ,
getMM- 0
;MM0 1
setMM2 5
;MM5 6
}MM7 8
}NN 
}OO ù
fC:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\InternalQosServer.cs
	namespace 	
Unity
 
. 

Networking 
. 
QoS 
{ 
internal 
partial 
struct 
QosJob "
{ 
private 
struct 
InternalQosServer (
{ 	
public 
readonly 
NetworkEndPoint +
RemoteEndpoint, :
;: ;
public 
readonly 
DateTime $
BackoffUntilUtc% 4
;4 5
public 
readonly 
int 
Idx  #
;# $
private 
int 

m_FirstIdx "
;" #
private 
ushort 
m_RequestIdentifier .
;. /
public 
InternalQosServer $
($ %
NetworkEndPoint% 4
remote5 ;
,; <
DateTime= E
backoffUntilUtcF U
,U V
intW Z
idx[ ^
)^ _
{ 
RemoteEndpoint 
=  
remote! '
;' (
BackoffUntilUtc 
=  !
backoffUntilUtc" 1
;1 2
Idx 
= 
idx 
; 

m_FirstIdx 
= 
idx  
;  !
m_RequestIdentifier #
=$ %
$num& '
;' (
} 
public## 
int## 
FirstIdx## 
{$$ 
get%% 
=>%% 

m_FirstIdx%% !
;%%! "
set&& 
=>&& 

m_FirstIdx&& !
=&&" #
value&&$ )
;&&) *
}'' 
public,, 
ushort,, 
RequestIdentifier,, +
{-- 
get.. 
=>.. 
m_RequestIdentifier.. *
;..* +
set// 
=>// 
m_RequestIdentifier// *
=//+ ,
value//- 2
;//2 3
}00 
public55 
bool55 
	Duplicate55 !
=>55" $

m_FirstIdx55% /
!=550 2
Idx553 6
;556 7
public:: 
string:: 
Address:: !
=>::" $
RemoteEndpoint::% 3
.::3 4
Address::4 ;
;::; <
};; 	
}<< 
}== ﬂ
XC:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\QosService.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
	namespace 	
Unity
 
. 
Services 
. 
Qos 
{		 
public.. 

static.. 
class.. 

QosService.. "
{// 
public33 
static33 
IQosService33 !
Instance33" *
{33+ ,
get33- 0
;330 1
internal332 :
set33; >
;33> ?
}33@ A
}44 
public:: 

	interface:: 
IQosService::  
{;; 
TaskII 
<II 
IListII 
<II 

IQosResultII 
>II 
>II $
GetSortedQosResultsAsyncII  8
(II8 9
stringII9 ?
serviceII@ G
,IIG H
IListIII N
<IIN O
stringIIO U
>IIU V
regionsIIW ^
)II^ _
;II_ `
}JJ 
publicOO 

	interfaceOO 

IQosResultOO 
{PP 
publicVV 
stringVV 
RegionVV 
{VV 
getVV "
;VV" #
}VV$ %
public`` 
int`` 
AverageLatencyMs`` #
{``$ %
get``& )
;``) *
}``+ ,
publicii 
floatii 
PacketLossPercentii &
{ii' (
getii) ,
;ii, -
}ii. /
}jj 
}kk ÂE
dC:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\NetworkEndPoint.cs
	namespace		 	
Unity		
 
.		 

Networking		 
.		 
QoS		 
{

 
enum 
NetworkFamily	 
{ 
Invalid 
= 
$num 
, 
Ipv4 
= 
$num 
, 
Ipv6 
= 
$num 
} 
[ 
StructLayout 
( 

LayoutKind 
. 

Sequential '
)' (
]( )
unsafe 

struct 
NetworkEndPoint !
{ 
internal 
Binding 
. "
Baselib_NetworkAddress /
rawNetworkAddress0 A
;A B
ushort 
Port 
=> 
( 
ushort 
) 
(  !
rawNetworkAddress! 2
.2 3
port13 8
|9 :
(; <
rawNetworkAddress< M
.M N
port0N S
<<T V
$numW X
)X Y
)Y Z
;Z [
NetworkFamily 
Family 
=> 
FromBaselibFamily  1
(1 2
(2 3
Binding3 :
.: ;)
Baselib_NetworkAddress_Family; X
)X Y
rawNetworkAddressZ k
.k l
familyl r
)r s
;s t
internal 
string 
Address 
=>  "
AddressAsString# 2
(2 3
)3 4
;4 5
bool!! 
IsValid!! 
=>!! 
Family!! 
!=!! !
NetworkFamily!!" /
.!!/ 0
Invalid!!0 7
;!!7 8
internal## 
static## 
bool## 
TryParse## %
(##% &
string##& ,
address##- 4
,##4 5
ushort##6 <
port##= A
,##A B
out##C F
NetworkEndPoint##G V
endpoint##W _
,##_ `
NetworkFamily$$ 
family$$  
=$$! "
NetworkFamily$$# 0
.$$0 1
Ipv4$$1 5
)$$5 6
{%% 	
endpoint&& 
=&& 
default&& 
;&& 
const'' 
char'' 
nullTerminator'' %
=''& '
$char''( ,
;'', -
var(( 

errorState(( 
=(( 
default(( $
((($ %

ErrorState((% /
)((/ 0
;((0 1
var)) 
ipBytes)) 
=)) 
Encoding)) "
.))" #
UTF8))# '
.))' (
GetBytes))( 0
())0 1
address))1 8
+))9 :
nullTerminator)); I
)))I J
;))J K
fixed** 
(** 
byte** 
*** 

ipBytesPtr** #
=**$ %
ipBytes**& -
)**- .
fixed++ 
(++ 
Binding++ 
.++ "
Baselib_NetworkAddress++ 1
*++1 2

rawAddress++3 =
=++> ?
&++@ A
endpoint++A I
.++I J
rawNetworkAddress++J [
)++[ \
{,, 
Binding-- 
.-- )
Baselib_NetworkAddress_Encode-- 5
(--5 6

rawAddress.. 
,.. 
ToBaselibFamily// #
(//# $
family//$ *
)//* +
,//+ ,

ipBytesPtr00 
,00 
port11 
,11 
&22 

errorState22 
)22  
;22  !
}33 
return55 

errorState55 
.55 
code55 "
==55# %
Binding55& -
.55- .
Baselib_ErrorCode55. ?
.55? @
Success55@ G
&&55H J
endpoint55K S
.55S T
IsValid55T [
;55[ \
}66 	
string88 
AddressAsString88 
(88 
)88  
{99 	
switch:: 
(:: 
Family:: 
):: 
{;; 
case<< 
NetworkFamily<< "
.<<" #
Ipv4<<# '
:<<' (
return== 
$">> 
{>> 
rawNetworkAddress>> ,
.>>, -
data0>>- 2
}>>2 3
$str>>3 4
{>>4 5
rawNetworkAddress>>5 F
.>>F G
data1>>G L
}>>L M
$str>>M N
{>>N O
rawNetworkAddress>>O `
.>>` a
data2>>a f
}>>f g
$str>>g h
{>>h i
rawNetworkAddress>>i z
.>>z {
data3	>>{ Ä
}
>>Ä Å
$str
>>Å Ç
{
>>Ç É
Port
>>É á
}
>>á à
"
>>à â
;
>>â ä
case?? 
NetworkFamily?? "
.??" #
Ipv6??# '
:??' (
const@@ 
string@@  
numberFormat@@! -
=@@. /
$str@@0 g
;@@g h
returnCC 
stringCC !
.CC! "
FormatCC" (
(CC( )
numberFormatCC) 5
,CC5 6
rawNetworkAddressDD )
.DD) *
data1DD* /
|DD0 1
(DD2 3
rawNetworkAddressDD3 D
.DDD E
data0DDE J
<<DDK M
$numDDN O
)DDO P
,DDP Q
rawNetworkAddressEE )
.EE) *
data3EE* /
|EE0 1
(EE2 3
rawNetworkAddressEE3 D
.EED E
data2EEE J
<<EEK M
$numEEN O
)EEO P
,EEP Q
rawNetworkAddressFF )
.FF) *
data5FF* /
|FF0 1
(FF2 3
rawNetworkAddressFF3 D
.FFD E
data4FFE J
<<FFK M
$numFFN O
)FFO P
,FFP Q
rawNetworkAddressGG )
.GG) *
data7GG* /
|GG0 1
(GG2 3
rawNetworkAddressGG3 D
.GGD E
data6GGE J
<<GGK M
$numGGN O
)GGO P
,GGP Q
rawNetworkAddressHH )
.HH) *
data9HH* /
|HH0 1
(HH2 3
rawNetworkAddressHH3 D
.HHD E
data8HHE J
<<HHK M
$numHHN O
)HHO P
,HHP Q
rawNetworkAddressII )
.II) *
data11II* 0
|II1 2
(II3 4
rawNetworkAddressII4 E
.IIE F
data10IIF L
<<IIM O
$numIIP Q
)IIQ R
,IIR S
rawNetworkAddressJJ )
.JJ) *
data13JJ* 0
|JJ1 2
(JJ3 4
rawNetworkAddressJJ4 E
.JJE F
data12JJF L
<<JJM O
$numJJP Q
)JJQ R
,JJR S
rawNetworkAddressKK )
.KK) *
data15KK* 0
|KK1 2
(KK3 4
rawNetworkAddressKK4 E
.KKE F
data14KKF L
<<KKM O
$numKKP Q
)KKQ R
,KKR S
PortLL 
)MM 
;MM 
defaultNN 
:NN 
returnPP 
stringPP !
.PP! "
EmptyPP" '
;PP' (
}QQ 
}RR 	
staticTT 
NetworkFamilyTT 
FromBaselibFamilyTT .
(TT. /
BindingTT/ 6
.TT6 7)
Baselib_NetworkAddress_FamilyTT7 T
familyTTU [
)TT[ \
{UU 	
returnVV 
familyVV 
switchVV  
{WW 
BindingXX 
.XX )
Baselib_NetworkAddress_FamilyXX 5
.XX5 6
IPv4XX6 :
=>XX; =
NetworkFamilyXX> K
.XXK L
Ipv4XXL P
,XXP Q
BindingYY 
.YY )
Baselib_NetworkAddress_FamilyYY 5
.YY5 6
IPv6YY6 :
=>YY; =
NetworkFamilyYY> K
.YYK L
Ipv6YYL P
,YYP Q
_ZZ 
=>ZZ 
NetworkFamilyZZ "
.ZZ" #
InvalidZZ# *
}[[ 
;[[ 
}\\ 	
static^^ 
Binding^^ 
.^^ )
Baselib_NetworkAddress_Family^^ 4
ToBaselibFamily^^5 D
(^^D E
NetworkFamily^^E R
family^^S Y
)^^Y Z
{__ 	
return`` 
family`` 
switch``  
{aa 
NetworkFamilybb 
.bb 
Ipv4bb "
=>bb# %
Bindingbb& -
.bb- .)
Baselib_NetworkAddress_Familybb. K
.bbK L
IPv4bbL P
,bbP Q
NetworkFamilycc 
.cc 
Ipv6cc "
=>cc# %
Bindingcc& -
.cc- .)
Baselib_NetworkAddress_Familycc. K
.ccK L
IPv6ccL P
,ccP Q
_dd 
=>dd 
Bindingdd 
.dd )
Baselib_NetworkAddress_Familydd :
.dd: ;
Invaliddd; B
}ee 
;ee 
}ff 	
}jj 
}kk É

]C:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Core\QosResults.cs
	namespace 	
Unity
 
. 
Services 
. 
Qos 
{ 
class 	

QosResults
 
: 
IQosResults "
{ 
WrappedQosService		 
_qosService		 %
;		% &
internal 

QosResults 
( 
WrappedQosService -

qosService. 8
)8 9
{ 	
_qosService 
= 

qosService $
;$ %
} 	
public 
Task 
< 
IList 
< 
Internal "
." #
	QosResult# ,
>, -
>- .$
GetSortedQosResultsAsync/ G
(G H
stringH N
serviceO V
,V W
IListX ]
<] ^
string^ d
>d e
regionsf m
)m n
{ 	
return 
_qosService 
. ,
 GetSortedInternalQosResultsAsync ?
(? @
service@ G
,G H
regionsI P
)P Q
;Q R
} 	
} 
} õ
_C:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\IQosRunner.cs
	namespace 	
Unity
 
. 
Services 
. 
Qos 
. 
Runner #
{ 
	interface 

IQosRunner 
{		 
Task 
< 
List 
< 
Internal 
. 
	QosResult $
>$ %
>% &
MeasureQosAsync' 6
(6 7
IList7 <
<< =
	QosServer= F
>F G
serversH O
)O P
;P Q
} 
} °W
eC:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\BaselibQosRunner.cs
	namespace 	
Unity
 
. 
Services 
. 
Qos 
. 
Runner #
{ 
delegate 
IQosJob 
QosJobProvider #
(# $
IList$ )
<) *
UcgQosServer* 6
>6 7
servers8 ?
,? @
stringA G
titleH M
)M N
;N O
delegate 
Task 
< 
	IPAddress 
[ 
] 
> 
DnsResolver *
(* +
string+ 1
host2 6
)6 7
;7 8
class 	
BaselibQosRunner
 
: 

IQosRunner '
{ 
QosJobProvider 
_qosJobProvider &
=' (
() *
servers* 1
,1 2
title3 8
)8 9
=>: <
new= @
QosJobA G
(G H
serversH O
,O P
titleQ V
)V W
;W X
DnsResolver 
_dnsResolver  
=! "
Dns# &
.& '!
GetHostAddressesAsync' <
;< =
public 
BaselibQosRunner 
(  
QosJobProvider  .
qosJobProvider/ =
=> ?
null@ D
,D E
DnsResolverF Q
dnsResolverR ]
=^ _
null` d
)d e
{ 	
if 
( 
qosJobProvider 
!= !
null" &
)& '
{ 
_qosJobProvider 
=  !
qosJobProvider" 0
;0 1
} 
if 
( 
dnsResolver 
!= 
null #
)# $
{ 
_dnsResolver   
=   
dnsResolver   *
;  * +
}!! 
}"" 	
public%% 
async%% 
Task%% 
<%% 
List%% 
<%% 
Internal%% '
.%%' (
	QosResult%%( 1
>%%1 2
>%%2 3
MeasureQosAsync%%4 C
(%%C D
IList%%D I
<%%I J
	QosServer%%J S
>%%S T
servers%%U \
)%%\ ]
{&& 	
var'' 
convertedServers''  
=''! "
(''# $
await''$ )
Task''* .
.''. /
WhenAll''/ 6
(''6 7
servers''7 >
.''> ?
Select''? E
(''E F
ToUcgFormat''F Q
)''Q R
)''R S
)''S T
.(( 
Where(( 
((( 
s(( 
=>(( 
s(( 
.(( 
HasValue(( &
)((& '
.)) 
Select)) 
()) 
s)) 
=>)) 
s)) 
.)) 
Value)) $
)))$ %
.** 
ToList** 
(** 
)** 
;** 
var,, 
title,, 
=,, 
$str,, %
;,,% &
var-- 
job-- 
=-- 
_qosJobProvider-- %
(--% &
convertedServers--& 6
,--6 7
title--8 =
)--= >
;--> ?
var// 
handle// 
=// 
job// 
.// 
Schedule// %
<//% &
QosJob//& ,
>//, -
(//- .
)//. /
;/// 0
while00 
(00 
!00 
handle00 
.00 
IsCompleted00 &
)00& '
{11 
await22 
Task22 
.22 
Yield22  
(22  !
)22! "
;22" #
}33 
handle44 
.44 
Complete44 
(44 
)44 
;44 
var66 
results66 
=66 
new66 
List66 "
<66" #
Internal66# +
.66+ ,
	QosResult66, 5
>665 6
(666 7
)667 8
;668 9
if77 
(77 
servers77 
.77 
Count77 
(77 
)77 
==77  "
job77# &
.77& '

QosResults77' 1
.771 2
Count772 7
(777 8
)778 9
)779 :
{88 
results99 
=99 
ParseResults99 &
(99& '
job99' *
.99* +

QosResults99+ 5
,995 6
servers997 >
)99> ?
;99? @
}:: 
job<< 
.<< 
Dispose<< 
(<< 
)<< 
;<< 
job== 
.== 

QosResults== 
.== 
Dispose== "
(==" #
)==# $
;==$ %
return>> 
results>> 
;>> 
}?? 	
asyncDD 
TaskDD 
<DD 
UcgQosServerDD 
?DD  
>DD  !
ToUcgFormatDD" -
(DD- .
	QosServerDD. 7
serverDD8 >
)DD> ?
{EE 	
ifFF 
(FF 
!FF 
UriFF 
.FF 
	TryCreateFF 
(FF 
$"FF !
$strFF! '
{FF' (
serverFF( .
.FF. /
	EndpointsFF/ 8
[FF8 9
$numFF9 :
]FF: ;
}FF; <
"FF< =
,FF= >
UriKindFF? F
.FFF G
AbsoluteFFG O
,FFO P
outFFQ T
varFFU X
uriFFY \
)FF\ ]
)FF] ^
{GG 
DebugHH 
.HH 
LogErrorHH 
(HH 
$"HH !
$strHH! J
{HHJ K
serverHHK Q
.HHQ R
	EndpointsHHR [
[HH[ \
$numHH\ ]
]HH] ^
}HH^ _
$strHH_ `
"HH` a
)HHa b
;HHb c
returnII 
nullII 
;II 
}JJ 
ifLL 
(LL 
uriLL 
.LL 
PortLL 
==LL 
-LL 
$numLL 
)LL 
{MM 
DebugNN 
.NN 
LogErrorNN 
(NN 
$"NN !
$strNN! G
{NNG H
serverNNH N
.NNN O
	EndpointsNNO X
[NNX Y
$numNNY Z
]NNZ [
}NN[ \
$strNN\ ]
"NN] ^
)NN^ _
;NN_ `
returnOO 
nullOO 
;OO 
}PP 
varSS 
resolvedIpsSS 
=SS 
awaitSS #
_dnsResolverSS$ 0
(SS0 1
uriSS1 4
.SS4 5
HostSS5 9
)SS9 :
;SS: ;
ifTT 
(TT 
resolvedIpsTT 
.TT 
LengthTT "
==TT# %
$numTT& '
)TT' (
{UU 
DebugVV 
.VV 
LogErrorVV 
(VV 
$"VV !
$strVV! I
{VVI J
uriVVJ M
.VVM N
HostVVN R
}VVR S
"VVS T
)VVT U
;VVU V
returnWW 
nullWW 
;WW 
}XX 
var\\ 
ip\\ 
=\\ 
resolvedIps\\  
[\\  !
$num\\! "
]\\" #
;\\# $
var^^ 
	ucgServer^^ 
=^^ 
new^^ 
UcgQosServer^^  ,
{__ 
regionid`` 
=`` 
server`` !
.``! "
Region``" (
,``( )
ipv6aa 
=aa 
nullaa 
,aa 
portbb 
=bb 
Convertbb 
.bb 
ToUInt16bb '
(bb' (
uribb( +
.bb+ ,
Portbb, 0
)bb0 1
,bb1 2
BackoffUntilUtccc 
=cc  !
defaultcc" )
}dd 
;dd 
ifff 
(ff 
ipff 
.ff 
AddressFamilyff  
==ff! #
AddressFamilyff$ 1
.ff1 2
InterNetworkff2 >
)ff> ?
{gg 
	ucgServerhh 
.hh 
ipv4hh 
=hh  
iphh! #
.hh# $
ToStringhh$ ,
(hh, -
)hh- .
;hh. /
}ii 
elsejj 
ifjj 
(jj 
ipjj 
.jj 
AddressFamilyjj %
==jj& (
AddressFamilyjj) 6
.jj6 7
InterNetworkV6jj7 E
)jjE F
{kk 
	ucgServerll 
.ll 
ipv6ll 
=ll  
ipll! #
.ll# $
ToStringll$ ,
(ll, -
)ll- .
;ll. /
}mm 
returnnn 
	ucgServernn 
;nn 
}oo 	
staticqq 
Listqq 
<qq 
Internalqq 
.qq 
	QosResultqq &
>qq& '
ParseResultsqq( 4
(qq4 5
IEnumerableqq5 @
<qq@ A
InternalQosResultqqA R
>qqR S

ucgResultsqqT ^
,qq^ _
IEnumerableqq` k
<qqk l
	QosServerqql u
>qqu v
serversqqw ~
)qq~ 
{rr 	
varss 
resultsss 
=ss 
newss 
Listss "
<ss" #
Internalss# +
.ss+ ,
	QosResultss, 5
>ss5 6
(ss6 7
)ss7 8
;ss8 9
usingtt 
vartt 
enrtt 
=tt 
serverstt #
.tt# $
GetEnumeratortt$ 1
(tt1 2
)tt2 3
;tt3 4
foreachuu 
(uu 
InternalQosResultuu &
ruu' (
inuu) +

ucgResultsuu, 6
)uu6 7
{vv 
enrww 
.ww 
MoveNextww 
(ww 
)ww 
;ww 
ifxx 
(xx 
enrxx 
.xx 
Currentxx 
==xx  "
nullxx# '
)xx' (
{yy 
breakzz 
;zz 
}{{ 
int~~ 

avgLatency~~ 
=~~  
r~~! "
.~~" #
AverageLatencyMs~~# 3
>~~4 5
int~~6 9
.~~9 :
MaxValue~~: B
?~~C D
int~~E H
.~~H I
MaxValue~~I Q
:~~R S
(~~T U
int~~U X
)~~X Y
r~~Y Z
.~~Z [
AverageLatencyMs~~[ k
;~~k l
results
ÄÄ 
.
ÄÄ 
Add
ÄÄ 
(
ÄÄ 
new
ÄÄ 
Internal
ÄÄ  (
.
ÄÄ( )
	QosResult
ÄÄ) 2
{
ÅÅ 
Region
ÇÇ 
=
ÇÇ 
enr
ÇÇ  
.
ÇÇ  !
Current
ÇÇ! (
.
ÇÇ( )
Region
ÇÇ) /
,
ÇÇ/ 0
AverageLatencyMs
ÉÉ $
=
ÉÉ% &

avgLatency
ÉÉ' 1
,
ÉÉ1 2
PacketLossPercent
ÑÑ %
=
ÑÑ& '
r
ÑÑ( )
.
ÑÑ) *

PacketLoss
ÑÑ* 4
}
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 
return
àà 
results
àà 
;
àà 
}
ââ 	
}
ää 
}ãã Ê
fC:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\InternalQosResult.cs
	namespace 	
Unity
 
. 

Networking 
. 
QoS 
{ 
internal 
struct 
InternalQosResult %
{ 
internal 
const 
uint 
InvalidLatencyValue /
=0 1
uint2 6
.6 7
MaxValue7 ?
;? @
internal 
const 
float "
InvalidPacketLossValue 3
=4 5
float6 ;
.; <
MaxValue< D
;D E
internal		 
uint		 
RequestsSent		 "
;		" #
internal 
uint 
ResponsesReceived '
;' (
internal 
uint 
AverageLatencyMs &
=>' )
(* +
ResponsesReceived+ <
>= >
$num? @
)@ A
?B C
(D E
AggregateLatencyMsE W
/X Y
ResponsesReceivedZ k
)k l
:m n 
InvalidLatencyValue	o Ç
;
Ç É
internal 
float 

PacketLoss !
=>" $
(% &
RequestsSent& 2
==3 5
$num6 7
||8 :
ResponsesReceived; L
>M N
RequestsSentO [
)[ \
?] ^"
InvalidPacketLossValue_ u
:v w
$numx |
-} ~
(	 Ä
ResponsesReceived
Ä ë
/
í ì
(
î ï
float
ï ö
)
ö õ
RequestsSent
õ ß
)
ß ®
;
® ©
internal 
uint 
InvalidRequests %
;% &
internal 
uint 
InvalidResponses &
;& '
internal 
uint 
DuplicateResponses (
;( )
internal   
FcType   
FcType   
;   
internal## 
byte## 
FcUnits## 
;## 
internal%% 
uint%% 
AggregateLatencyMs%% (
;%%( )
internal// 
void// 
AddAggregateLatency// )
(//) *
uint//* .
amountMs/// 7
)//7 8
{00 	
AggregateLatencyMs11 
+=11 !
amountMs11" *
;11* +
}22 	
}33 
}44 ı
^C:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\QosHelper.cs
	namespace 	
Unity
 
. 

Networking 
. 
QoS 
{ 
internal 
static 
class 
	QosHelper #
{ 
const 
ulong 
WSAEWOULDBLOCK "
=# $
$num% *
;* +
const 
ulong 
WSAETIMEDOUT  
=! "
$num# (
;( )
const		 
ulong		  
EAGAIN_EWOULDBLOCK_1		 (
=		) *
$num		+ -
;		- .
const

 
ulong

  
EAGAIN_EWOULDBLOCK_2

 (
=

) *
$num

+ -
;

- .
internal 
static 
bool 

WouldBlock '
(' (
ulong( -
	errorcode. 7
)7 8
{ 	
return 
	errorcode 
== 
WSAEWOULDBLOCK  .
||/ 1
	errorcode 
== 
WSAETIMEDOUT )
||* ,
	errorcode 
==  
EAGAIN_EWOULDBLOCK_1 1
||2 4
	errorcode 
==  
EAGAIN_EWOULDBLOCK_2 1
;1 2
} 	
internal 
static 
bool 

ExpiredUtc '
(' (
DateTime( 0
timeUtc1 8
)8 9
{ 	
return 
DateTime 
. 
UtcNow "
># $
timeUtc% ,
;, -
} 	
internal 
static 
string 
Since $
($ %
DateTime% -
dt. 0
)0 1
{ 	
return 
$" 
{ 
( 
DateTime 
.  
UtcNow  &
-' (
dt) +
)+ ,
., -
TotalMilliseconds- >
:> ?
$str? A
}A B
$strB D
"D E
;E F
} 	
} 
} Ì
\C:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\IQosJob.cs
	namespace 	
Unity
 
. 
Services 
. 
Qos 
. 
Runner #
{ 
internal 
	interface 
IQosJob 
:  
IJob! %
{ 
public

 
	JobHandle

 
Schedule

 !
<

! "
T

" #
>

# $
(

$ %
	JobHandle

% .
	dependsOn

/ 8
=

9 :
default

; B
)

B C
where

D I
T

J K
:

L M
struct

N T
,

T U
IJob

V Z
;

Z [
public 
void 
Dispose 
( 
) 
; 
public 
NativeArray 
< 
Unity  
.  !

Networking! +
.+ ,
QoS, /
./ 0
InternalQosResult0 A
>A B

QosResultsC M
{N O
getP S
;S T
}U V
} 
} ˚
aC:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\UcgQosServer.cs
	namespace 	
Unity
 
. 

Networking 
. 
QoS 
{ 
[ 
Serializable 
] 
internal 
struct 
UcgQosServer  
{ 
internal 
string 
regionid  
;  !
internal 
string 
ipv4 
; 
internal 
string 
ipv6 
; 
internal 
ushort 
port 
; 
[ 	
HideInInspector	 
] 
[ 	
NonSerialized	 
] 
internal 
DateTime 
BackoffUntilUtc )
;) *
public 
override 
string 
ToString '
(' (
)( )
{   	
if"" 
("" 
!"" 
string"" 
."" 
IsNullOrEmpty"" %
(""% &
ipv6""& *
)""* +
)""+ ,
return## 
$"## 
$str## 
{## 
ipv6## 
}##  
$str##  "
{##" #
port### '
}##' (
$str##( *
{##* +
regionid##+ 3
}##3 4
$str##4 6
{##6 7
BackoffUntilUtc##7 F
}##F G
"##G H
;##H I
return%% 
string%% 
.%% 
IsNullOrEmpty%% '
(%%' (
ipv4%%( ,
)%%, -
?%%. /
$str%%0 2
:%%3 4
$"%%5 7
{%%7 8
ipv4%%8 <
}%%< =
$str%%= >
{%%> ?
port%%? C
}%%C D
$str%%D F
{%%F G
regionid%%G O
}%%O P
$str%%P R
{%%R S
BackoffUntilUtc%%S b
}%%b c
"%%c d
;%%d e
}&& 	
}'' 
}(( €j
`C:\code\ispclone\Library\PackageCache\com.unity.services.qos@1.0.1\Runtime\Runner\QosResponse.cs
	namespace		 	
Unity		
 
.		 

Networking		 
.		 
QoS		 
{

 
internal 
enum 
FcType 
{ 
None 
= 
$num 
, 
Throttle 
= 
$num 
, 
Ban 
= 
$num 
} 
internal 
class 
QosResponse 
{ 
private 
const 
int 
MinPacketLen &
=' (
$num) +
;+ ,
private 
const 
int 
MaxPacketLen &
=' (
$num) -
;- .
private 
const 
byte 
ResponseMagic (
=) *
$num+ /
;/ 0
private 
const 
byte 
ResponseVersion *
=+ ,
$num- .
;. /
private 
byte 
m_Magic 
; 
private 
byte 
m_VerAndFlow !
;! "
private 
byte 

m_Sequence 
;  
private 
ushort 
m_Identifier #
;# $
private 
ulong 
m_Timestamp !
;! "
private   
int   
m_LatencyMs   
;    
private"" 
ushort"" 
m_PacketLength"" %
;""% &
internal%% 
byte%% 
Magic%% 
=>%% 
m_Magic%% &
;%%& '
internal&& 
byte&& 
Version&& 
=>&&  
(&&! "
byte&&" &
)&&& '
(&&' (
(&&( )
m_VerAndFlow&&) 5
>>&&6 8
$num&&9 :
)&&: ;
&&&< =
$num&&> B
)&&B C
;&&C D
internal'' 
byte'' 
FlowControl'' !
=>''" $
(''% &
byte''& *
)''* +
(''+ ,
m_VerAndFlow'', 8
&''9 :
$num''; ?
)''? @
;''@ A
internal(( 
byte(( 
Sequence(( 
=>(( !

m_Sequence((" ,
;((, -
internal)) 
ushort)) 

Identifier)) "
=>))# %
m_Identifier))& 2
;))2 3
internal** 
ulong** 
	Timestamp**  
=>**! #
m_Timestamp**$ /
;**/ 0
internal++ 
ushort++ 
Length++ 
=>++ !
m_PacketLength++" 0
;++0 1
internal-- 
int-- 
	LatencyMs-- 
=>-- !
m_LatencyMs--" -
;--- .
internal99 
unsafe99 
(99 
int99 
received99 %
,99% &
int99' *
	errorCode99+ 4
)994 5
Recv996 :
(99: ;
IntPtr99; A
socketHandle99B N
,99N O
bool99P T
wait99U Y
,99Y Z
DateTime99[ c
expireTimeUtc99d q
,99q r
ref99s v
NetworkEndPoint	99w Ü
endPoint
99á è
)
99è ê
{:: 	
Binding<< 
.<< "
Baselib_Socket_Message<< *
message<<+ 2
=<<3 4
new<<5 8
Binding<<9 @
.<<@ A"
Baselib_Socket_Message<<A W
(<<W X
)<<X Y
;<<Y Z
var== 
buffer== 
=== 
new== 
UnsafeAppendBuffer== /
(==/ 0
$num==0 2
,==2 3
$num==4 6
,==6 7
	Allocator==8 A
.==A B

Persistent==B L
)==L M
;==M N
var>> 
	startTime>> 
=>> 
DateTime>> $
.>>$ %
UtcNow>>% +
;>>+ ,
fixed?? 
(?? 
Binding?? 
.?? "
Baselib_NetworkAddress?? 0
*??0 1
pEndpointAddress??2 B
=??C D
&??E F
endPoint??F N
.??N O
rawNetworkAddress??O `
)??` a
{@@ 
messageAA 
.AA 
dataLenAA 
=AA  !
(AA" #
uintAA# '
)AA' (
bufferAA( .
.AA. /
CapacityAA/ 7
;AA7 8
messageBB 
.BB 
addressBB 
=BB  !
pEndpointAddressBB" 2
;BB2 3
messageCC 
.CC 
dataCC 
=CC 
newCC "
IntPtrCC# )
(CC) *
bufferCC* 0
.CC0 1
PtrCC1 4
)CC4 5
;CC5 6
varEE 

errorStateEE 
=EE  
defaultEE! (
(EE( )
BindingEE) 0
.EE0 1
Baselib_ErrorStateEE1 C
)EEC D
;EED E
varFF 
socketFF 
=FF 
newFF  
BindingFF! (
.FF( )!
Baselib_Socket_HandleFF) >
{FF? @
handleFF@ F
=FFG H
socketHandleFFI U
}FFU V
;FFV W
uintHH 
receivedHH 
=HH 
$numHH  !
;HH! "
varII 
triesII 
=II 
$numII 
;II 
whileKK 
(KK 
!KK 
	QosHelperKK !
.KK! "

ExpiredUtcKK" ,
(KK, -
expireTimeUtcKK- :
)KK: ;
)KK; <
{LL 

errorStateMM 
=MM  
defaultMM! (
(MM( )
BindingMM) 0
.MM0 1
Baselib_ErrorStateMM1 C
)MMC D
;MMD E
triesNN 
++NN 
;NN 
receivedPP 
=PP 
BindingPP &
.PP& '#
Baselib_Socket_UDP_RecvPP' >
(PP> ?
socketPP? E
,PPE F
&PPG H
messagePPH O
,PPO P
$numPPQ R
,PPR S
&PPT U

errorStatePPU _
)PP_ `
;PP` a
ifQQ 
(QQ 
receivedQQ  
==QQ! #
$numQQ$ %
)QQ% &
{RR 
ifSS 
(SS 
	QosHelperSS %
.SS% &

WouldBlockSS& 0
(SS0 1

errorStateSS1 ;
.SS; <
nativeErrorCodeSS< K
)SSK L
)SSL M
{TT 
ifUU 
(UU  
!UU  !
waitUU! %
)UU% &
{VV 
returnWW  &
(WW' (
$numWW( )
,WW) *
$numWW+ ,
)WW, -
;WW- .
}XX 
continueZZ $
;ZZ$ %
}[[ 
}\\ 
break]] 
;]] 
}^^ 
if`` 
(`` 
received`` 
==`` 
$num``  !
)``! "
{aa 
buffercc 
.cc 
Disposecc "
(cc" #
)cc# $
;cc$ %
returndd 
(dd 
$numdd 
,dd 
(dd  
intdd  #
)dd# $

errorStatedd$ .
.dd. /
codedd/ 3
)dd3 4
;dd4 5
}ee 
endPointgg 
.gg 
rawNetworkAddressgg *
=gg+ ,
*gg- .
messagegg. 5
.gg5 6
addressgg6 =
;gg= >
m_PacketLengthhh 
=hh  
(hh! "
ushorthh" (
)hh( )
messagehh) 0
.hh0 1
dataLenhh1 8
;hh8 9
m_Magicjj 
=jj 
Marshaljj !
.jj! "
ReadBytejj" *
(jj* +
messagejj+ 2
.jj2 3
datajj3 7
)jj7 8
;jj8 9
m_VerAndFlowkk 
=kk 
Marshalkk &
.kk& '
ReadBytekk' /
(kk/ 0
messagekk0 7
.kk7 8
datakk8 <
,kk< =
$numkk> ?
)kk? @
;kk@ A

m_Sequencell 
=ll 
Marshalll $
.ll$ %
ReadBytell% -
(ll- .
messagell. 5
.ll5 6
datall6 :
,ll: ;
$numll< =
)ll= >
;ll> ?
m_Identifiermm 
=mm 
(mm  
ushortmm  &
)mm& '
Marshalmm' .
.mm. /
	ReadInt16mm/ 8
(mm8 9
messagemm9 @
.mm@ A
datammA E
,mmE F
$nummmG H
)mmH I
;mmI J
m_Timestampnn 
=nn 
(nn 
ulongnn $
)nn$ %
Marshalnn% ,
.nn, -
	ReadInt64nn- 6
(nn6 7
messagenn7 >
.nn> ?
datann? C
,nnC D
$numnnE F
)nnF G
;nnG H
m_LatencyMspp 
=pp 
(pp 
Lengthpp %
>=pp& (
MinPacketLenpp) 5
)pp5 6
?qq 
(qq 
intqq 
)qq 
(qq 
(qq 
ulongqq "
)qq" #
(qq# $
DateTimeqq$ ,
.qq, -
UtcNowqq- 3
.qq3 4
Ticksqq4 9
/qq: ;
TimeSpanqq< D
.qqD E
TicksPerMillisecondqqE X
)qqX Y
-qqZ [
m_Timestampqq\ g
)qqg h
:rr 
-rr 
$numrr 
;rr 
}ss 
bufferuu 
.uu 
Disposeuu 
(uu 
)uu 
;uu 
returnvv 
(vv 
Lengthvv 
,vv 
(vv 
intvv  
)vv  !
Bindingvv! (
.vv( )
Baselib_ErrorCodevv) :
.vv: ;
Successvv; B
)vvB C
;vvC D
}zz 	
internal
ÇÇ 
bool
ÇÇ 
Verify
ÇÇ 
(
ÇÇ 
uint
ÇÇ !
maxSequence
ÇÇ" -
,
ÇÇ- .
ref
ÇÇ/ 2
string
ÇÇ3 9
error
ÇÇ: ?
)
ÇÇ? @
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
Length
ÑÑ 
<
ÑÑ 
MinPacketLen
ÑÑ %
)
ÑÑ% &
{
ÖÖ 
error
ÜÜ 
=
ÜÜ 
$"
ÜÜ 
$str
ÜÜ 4
{
ÜÜ4 5
Length
ÜÜ5 ;
}
ÜÜ; <
$str
ÜÜ< P
{
ÜÜP Q
MinPacketLen
ÜÜQ ]
}
ÜÜ] ^
$str
ÜÜ^ d
"
ÜÜd e
;
ÜÜe f
return
áá 
false
áá 
;
áá 
}
àà 
if
ää 
(
ää 
Magic
ää 
!=
ää 
ResponseMagic
ää &
)
ää& '
{
ãã 
error
åå 
=
åå 
$"
åå 
$str
åå C
{
ååC D
Magic
ååD I
:
ååI J
$str
ååJ K
}
ååK L
$str
ååL X
{
ååX Y
ResponseMagic
ååY f
:
ååf g
$str
ååg h
}
ååh i
"
ååi j
;
ååj k
return
çç 
false
çç 
;
çç 
}
éé 
if
êê 
(
êê 
Version
êê 
!=
êê 
ResponseVersion
êê *
)
êê* +
{
ëë 
error
íí 
=
íí 
$"
íí 
$str
íí ?
{
íí? @
Version
íí@ G
}
ííG H
$str
ííH R
{
ííR S
ResponseVersion
ííS b
}
ííb c
"
ííc d
;
ííd e
return
ìì 
false
ìì 
;
ìì 
}
îî 
if
ññ 
(
ññ 
Sequence
ññ 
>
ññ 
maxSequence
ññ &
)
ññ& '
{
óó 
error
òò 
=
òò 
$"
òò 
$str
òò @
{
òò@ A
Sequence
òòA I
}
òòI J
$str
òòJ X
{
òòX Y
maxSequence
òòY d
}
òòd e
"
òòe f
;
òòf g
return
ôô 
false
ôô 
;
ôô 
}
öö 
return
úú 
true
úú 
;
úú 
}
ùù 	
internal
¶¶ 
(
¶¶ 
FcType
¶¶ 
type
¶¶ 
,
¶¶ 
byte
¶¶ #
units
¶¶$ )
)
¶¶) *
ParseFlowControl
¶¶+ ;
(
¶¶; <
)
¶¶< =
{
ßß 	
if
®® 
(
®® 
FlowControl
®® 
==
®® 
$num
®®  
)
®®  !
{
©© 
return
™™ 
(
™™ 
FcType
™™ 
.
™™ 
None
™™ #
,
™™# $
$num
™™% &
)
™™& '
;
™™' (
}
´´ 
FcType
≠≠ 
type
≠≠ 
=
≠≠ 
(
≠≠ 
(
≠≠ 
FlowControl
≠≠ '
&
≠≠( )
$num
≠≠* -
)
≠≠- .
!=
≠≠/ 1
$num
≠≠2 3
)
≠≠3 4
?
≠≠5 6
FcType
≠≠7 =
.
≠≠= >
Ban
≠≠> A
:
≠≠B C
FcType
≠≠D J
.
≠≠J K
Throttle
≠≠K S
;
≠≠S T
byte
ÆÆ 
units
ÆÆ 
=
ÆÆ 
(
ÆÆ 
byte
ÆÆ 
)
ÆÆ 
(
ÆÆ  
FlowControl
ÆÆ  +
&
ÆÆ, -
$num
ÆÆ. 1
)
ÆÆ1 2
;
ÆÆ2 3
if
≥≥ 
(
≥≥ 
type
≥≥ 
==
≥≥ 
FcType
≥≥ 
.
≥≥ 
Ban
≥≥ "
)
≥≥" #
{
¥¥ 
++
µµ 
units
µµ 
;
µµ 
}
∂∂ 
return
∏∏ 
(
∏∏ 
type
∏∏ 
,
∏∏ 
units
∏∏ 
)
∏∏  
;
∏∏  !
}
ππ 	
}
∫∫ 
}ªª 