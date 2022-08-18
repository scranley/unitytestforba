ÙM
tC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Handlers\DiagnosticsHandler.cs
	namespace

 	
Unity


 
.

 
Services

 
.

 
Core

 
.

 
	Telemetry

 '
.

' (
Internal

( 0
{ 
class 	
DiagnosticsHandler
 
: 
TelemetryHandler /
</ 0
DiagnosticsPayload0 B
,B C

DiagnosticD N
>N O
{ 
class 
	SendState 
{ 	
public 
DiagnosticsHandler %
Self& *
;* +
public 
CachedPayload  
<  !
DiagnosticsPayload! 3
>3 4
Payload5 <
;< =
} 	
public 
DiagnosticsHandler !
(! "
TelemetryConfig 
config "
," #
CachedPayload$ 1
<1 2
DiagnosticsPayload2 D
>D E
cacheF K
,K L
IActionSchedulerM ]
	scheduler^ g
,g h
ICachePersister 
< 
DiagnosticsPayload .
>. /
cachePersister0 >
,> ?
TelemetrySender@ O
senderP V
)V W
: 
base 
( 
config 
, 
cache  
,  !
	scheduler" +
,+ ,
cachePersister- ;
,; <
sender= C
)C D
{E F
}F G
internal 
override 
void 
SendPersistedCache 1
(1 2
CachedPayload2 ?
<? @
DiagnosticsPayload@ R
>R S
persistedCacheT b
)b c
{ 	
var 
	sendAsync 
= 
m_Sender $
.$ %
	SendAsync% .
(. /
persistedCache/ =
.= >
Payload> E
)E F
;F G
m_CachePersister!! 
.!! 
Delete!! #
(!!# $
)!!$ %
;!!% &
var## 

localState## 
=## 
new##  
	SendState##! *
{$$ 
Self%% 
=%% 
this%% 
,%% 
Payload&& 
=&& 
new&& 
CachedPayload&& +
<&&+ ,
DiagnosticsPayload&&, >
>&&> ?
{''  
TimeOfOccurenceTicks(( (
=(() *
persistedCache((+ 9
.((9 : 
TimeOfOccurenceTicks((: N
,((N O
Payload)) 
=)) 
persistedCache)) ,
.)), -
Payload))- 4
,))4 5
}** 
,** 
}++ 
;++ 
	sendAsync,, 
.,, 
ContinueWith,, "
(,," # 
OnSendAsyncCompleted,,# 7
,,,7 8

localState,,9 C
,,,C D#
TaskContinuationOptions,,E \
.,,\ ] 
ExecuteSynchronously,,] q
),,q r
;,,r s
}-- 	
static// 
void//  
OnSendAsyncCompleted// (
(//( )
Task//) -
sendOperation//. ;
,//; <
object//= C
state//D I
)//I J
{00 	
if11 
(11 
!11 
(11 
state11 
is11 
	SendState11 $
	castState11% .
)11. /
)11/ 0
{22 
throw33 
new33 
ArgumentException33 +
(33+ ,
$str33, I
)33I J
;33J K
}44 
switch66 
(66 
sendOperation66 !
.66! "
Status66" (
)66( )
{77 
case88 

TaskStatus88 
.88  
Canceled88  (
:88( )
case99 

TaskStatus99 
.99  
Faulted99  '
:99' (
{:: 
	castState;; 
.;; 
Self;; "
.;;" #
Cache;;# (
.;;( )
AddRangeFrom;;) 5
(;;5 6
	castState;;6 ?
.;;? @
Payload;;@ G
);;G H
;;;H I
break<< 
;<< 
}== 
case>> 

TaskStatus>> 
.>>  
RanToCompletion>>  /
:>>/ 0
{?? 
break@@ 
;@@ 
}AA 
defaultCC 
:CC 
throwDD 
newDD '
ArgumentOutOfRangeExceptionDD 9
(DD9 :
nameofEE 
(EE 
sendOperationEE ,
.EE, -
StatusEE- 3
)EE3 4
,EE4 5
$strEE6 r
)EEr s
;EEs t
}FF 
}GG 	
internalII 
overrideII 
voidII #
FetchSpecificCommonTagsII 6
(II6 7
ICloudProjectIdII7 F
cloudProjectIdIIG U
,IIU V
IEnvironmentsIIW d
environmentsIIe q
)IIq r
{JJ 	
varKK 

commonTagsKK 
=KK 
CacheKK "
.KK" #
PayloadKK# *
.KK* +!
DiagnosticsCommonTagsKK+ @
;KK@ A

commonTagsLL 
.LL 
ClearLL 
(LL 
)LL 
;LL 

commonTagsNN 
[NN 
TagKeysNN 
.NN 
ApplicationVersionNN 1
]NN1 2
=NN3 4
ApplicationNN5 @
.NN@ A
versionNNA H
;NNH I

commonTagsOO 
[OO 
TagKeysOO 
.OO 
ProductNameOO *
]OO* +
=OO, -
ApplicationOO. 9
.OO9 :
productNameOO: E
;OOE F

commonTagsPP 
[PP 
TagKeysPP 
.PP 
CloudProjectIdPP -
]PP- .
=PP/ 0
cloudProjectIdPP1 ?
.PP? @
GetCloudProjectIdPP@ Q
(PPQ R
)PPR S
;PPS T

commonTagsQQ 
[QQ 
TagKeysQQ 
.QQ 
EnvironmentNameQQ .
]QQ. /
=QQ0 1
environmentsQQ2 >
.QQ> ?
CurrentQQ? F
;QQF G

commonTagsRR 
[RR 
TagKeysRR 
.RR 
ApplicationGenuineRR 1
]RR1 2
=RR3 4
ApplicationRR5 @
.RR@ A!
genuineCheckAvailableRRA V
?SS 
ApplicationSS 
.SS 
genuineSS %
.SS% &
ToStringSS& .
(SS. /
CultureInfoSS/ :
.SS: ;
InvariantCultureSS; K
)SSK L
:TT 
$strTT 
;TT  

commonTagsUU 
[UU 
TagKeysUU 
.UU  
InternetReachabilityUU 3
]UU3 4
=UU5 6
ApplicationUU7 B
.UUB C 
internetReachabilityUUC W
.UUW X
ToStringUUX `
(UU` a
)UUa b
;UUb c
}VV 	
internalXX 
overrideXX 
voidXX 
SendCachedPayloadXX 0
(XX0 1
)XX1 2
{YY 	
ifZZ 
(ZZ 
CacheZZ 
.ZZ 
IsEmptyZZ 
(ZZ 
)ZZ 
)ZZ  
return[[ 
;[[ 
var]] 
	sendAsync]] 
=]] 
m_Sender]] $
.]]$ %
	SendAsync]]% .
(]]. /
Cache]]/ 4
.]]4 5
Payload]]5 <
)]]< =
;]]= >
var__ 

localState__ 
=__ 
new__  
	SendState__! *
{`` 
Selfaa 
=aa 
thisaa 
,aa 
Payloadbb 
=bb 
newbb 
CachedPayloadbb +
<bb+ ,
DiagnosticsPayloadbb, >
>bb> ?
{cc  
TimeOfOccurenceTicksdd (
=dd) *
Cachedd+ 0
.dd0 1 
TimeOfOccurenceTicksdd1 E
,ddE F
Payloadee 
=ee 
newee !
DiagnosticsPayloadee" 4
{ff 
Diagnosticsgg #
=gg$ %
newgg& )
Listgg* .
<gg. /

Diagnosticgg/ 9
>gg9 :
(gg: ;
Cachegg; @
.gg@ A
PayloadggA H
.ggH I
DiagnosticsggI T
)ggT U
,ggU V

CommonTagshh "
=hh# $
newhh% (

Dictionaryhh) 3
<hh3 4
stringhh4 :
,hh: ;
stringhh< B
>hhB C
(hhC D
CachehhD I
.hhI J
PayloadhhJ Q
.hhQ R

CommonTagshhR \
)hh\ ]
,hh] ^!
DiagnosticsCommonTagsii -
=ii. /
newii0 3

Dictionaryii4 >
<ii> ?
stringii? E
,iiE F
stringiiG M
>iiM N
(iiN O
CacheiiO T
.iiT U
PayloadiiU \
.ii\ ]!
DiagnosticsCommonTagsii] r
)iir s
,iis t
}jj 
,jj 
}kk 
,kk 
}ll 
;ll 
Cachemm 
.mm  
TimeOfOccurenceTicksmm &
=mm' (
$nummm) *
;mm* +
Cachenn 
.nn 
Payloadnn 
.nn 
Diagnosticsnn %
.nn% &
Clearnn& +
(nn+ ,
)nn, -
;nn- .
ifpp 
(pp 
m_CachePersisterpp  
.pp  !

CanPersistpp! +
)pp+ ,
{qq 
m_CachePersisterrr  
.rr  !
Deleterr! '
(rr' (
)rr( )
;rr) *
}ss 
	sendAsyncuu 
.uu 
ContinueWithuu "
(uu" # 
OnSendAsyncCompleteduu# 7
,uu7 8

localStateuu9 C
,uuC D#
TaskContinuationOptionsuuE \
.uu\ ] 
ExecuteSynchronouslyuu] q
)uuq r
;uur s
}vv 	
}ww 
}xx ˆ
mC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Models\CachedPayload.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
[ 
Serializable 
] 
class 	
CachedPayload
 
< 
TPayload  
>  !
where 
TPayload 
: 
ITelemetryPayload *
{ 
public 
long  
TimeOfOccurenceTicks (
;( )
public 
TPayload 
Payload 
;  
} 
} ≤
oC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Metrics\MetricsFactory.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	
MetricsFactory
 
: 
IMetricsFactory *
{		 
readonly

 !
IProjectConfiguration

 &
m_ProjectConfig

' 6
;

6 7
public 
IReadOnlyDictionary "
<" #
string# )
,) *
string+ 1
>1 2

CommonTags3 =
{> ?
get@ C
;C D
}E F
internal 
MetricsHandler 
Handler  '
{( )
get* -
;- .
}/ 0
public 
MetricsFactory 
( 
MetricsHandler ,
handler- 4
,4 5!
IProjectConfiguration6 K
projectConfigL Y
)Y Z
{ 	
Handler 
= 
handler 
; 
m_ProjectConfig 
= 
projectConfig +
;+ ,

CommonTags 
= 
new 

Dictionary '
<' (
string( .
,. /
string0 6
>6 7
(7 8
handler8 ?
.? @
Cache@ E
.E F
PayloadF M
.M N

CommonTagsN X
)X Y
. 
MergeAllowOverride #
(# $
handler$ +
.+ ,
Cache, 1
.1 2
Payload2 9
.9 :
MetricsCommonTags: K
)K L
;L M
} 	
public 
IMetrics 
Create 
( 
string %
packageName& 1
)1 2
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
packageName% 0
)0 1
)1 2
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
packageName7 B
)B C
)C D
;D E
var 
packageTags 
= 
FactoryUtils *
.* +
CreatePackageTags+ <
(< =
m_ProjectConfig= L
,L M
packageNameN Y
)Y Z
;Z [
var 
metrics 
= 
new 
Metrics %
(% &
Handler& -
,- .
packageTags/ :
): ;
;; <
return!! 
metrics!! 
;!! 
}"" 	
}## 
}$$ ™
pC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Metrics\DisabledMetrics.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	
DisabledMetrics
 
: 
IMetrics $
{ 
void 
IMetrics 
. 
SendGaugeMetric %
(% &
string& ,
name- 1
,1 2
double3 9
value: ?
,? @
IDictionaryA L
<L M
stringM S
,S T
stringU [
>[ \
tags] a
)a b
{ 	
}

 	
void 
IMetrics 
. 
SendHistogramMetric )
() *
string* 0
name1 5
,5 6
double7 =
time> B
,B C
IDictionaryD O
<O P
stringP V
,V W
stringX ^
>^ _
tags` d
)d e
{ 	
} 	
void 
IMetrics 
. 
SendSumMetric #
(# $
string$ *
name+ /
,/ 0
double1 7
value8 =
,= >
IDictionary? J
<J K
stringK Q
,Q R
stringS Y
>Y Z
tags[ _
)_ `
{ 	
} 	
} 
} ¿
kC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Utils\FactoryUtils.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
static 

class 
FactoryUtils 
{		 
internal

 
const

 
string

 #
PackageVersionKeyFormat

 5
=

6 7
$str

8 E
;

E F
public 
static 
IDictionary !
<! "
string" (
,( )
string* 0
>0 1
CreatePackageTags2 C
(C D!
IProjectConfiguration !
projectConfig" /
,/ 0
string1 7
packageName8 C
)C D
{ 	
var 
packageVersion 
=  
projectConfig! .
.. /
	GetString/ 8
(8 9
string9 ?
.? @
Format@ F
(F G#
PackageVersionKeyFormatG ^
,^ _
packageName` k
)k l
,l m
Stringn t
.t u
Emptyu z
)z {
;{ |
if 
( 
string 
. 
IsNullOrEmpty $
($ %
packageVersion% 3
)3 4
)4 5
{ 

CoreLogger 
. 

LogVerbose %
(% &
$"& (
$str( S
{S T
packageNameT _
}_ `
$str` b
"b c
)c d
;d e
} 
return 
new 

Dictionary !
<! "
string" (
,( )
string* 0
>0 1
{ 
[ 
TagKeys 
. 
PackageName $
]$ %
=& '
packageName( 3
,3 4
[ 
TagKeys 
. 
PackageVersion '
]' (
=) *
packageVersion+ 9
,9 :
} 
; 
} 	
} 
} „
xC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Diagnotstics\DiagnosticsFactory.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	
DiagnosticsFactory
 
: 
IDiagnosticsFactory 2
{		 
readonly

 !
IProjectConfiguration

 &
m_ProjectConfig

' 6
;

6 7
public 
IReadOnlyDictionary "
<" #
string# )
,) *
string+ 1
>1 2

CommonTags3 =
{> ?
get@ C
;C D
}E F
internal 
DiagnosticsHandler #
Handler$ +
{, -
get. 1
;1 2
}3 4
public 
DiagnosticsFactory !
(! "
DiagnosticsHandler" 4
handler5 <
,< =!
IProjectConfiguration> S
projectConfigT a
)a b
{ 	
Handler 
= 
handler 
; 
m_ProjectConfig 
= 
projectConfig +
;+ ,

CommonTags 
= 
new 

Dictionary '
<' (
string( .
,. /
string0 6
>6 7
(7 8
handler8 ?
.? @
Cache@ E
.E F
PayloadF M
.M N

CommonTagsN X
)X Y
. 
MergeAllowOverride #
(# $
handler$ +
.+ ,
Cache, 1
.1 2
Payload2 9
.9 :!
DiagnosticsCommonTags: O
)O P
;P Q
} 	
public 
IDiagnostics 
Create "
(" #
string# )
packageName* 5
)5 6
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
packageName% 0
)0 1
)1 2
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
packageName7 B
)B C
)C D
;D E
var 
packageTags 
= 
FactoryUtils *
.* +
CreatePackageTags+ <
(< =
m_ProjectConfig= L
,L M
packageNameN Y
)Y Z
;Z [
var 
diagnostics 
= 
new !
Diagnostics" -
(- .
Handler. 5
,5 6
packageTags7 B
)B C
;C D
return!! 
diagnostics!! 
;!! 
}"" 	
}## 
}$$ è"
yC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Networking\UnityWebRequestSender.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	!
UnityWebRequestSender
 
:  !"
IUnityWebRequestSender" 8
{ 
public		 
void		 
SendRequest		 
(		  
UnityWebRequest		  /
request		0 7
,		7 8
Action		9 ?
<		? @

WebRequest		@ J
>		J K
callback		L T
)		T U
{

 	
var 
sendingOperation  
=! "
request# *
.* +
SendWebRequest+ 9
(9 :
): ;
;; <
sendingOperation 
. 
	completed &
+=' )%
OnSendingRequestCompleted* C
;C D
void %
OnSendingRequestCompleted *
(* +
UnityEngine+ 6
.6 7
AsyncOperation7 E
	operationF O
)O P
{ 
using 
( 
var 

webRequest %
=& '
(( )
() *)
UnityWebRequestAsyncOperation* G
)G H
	operationH Q
)Q R
.R S

webRequestS ]
)] ^
{ 
if 
( 
callback  
is! #
null$ (
)( )
return 
; 
var 
simplifiedRequest )
=* +
Simplify, 4
(4 5

webRequest5 ?
)? @
;@ A
callback 
( 
simplifiedRequest .
). /
;/ 0
} 
} 
} 	
static 

WebRequest 
Simplify "
(" #
UnityWebRequest# 2

webRequest3 =
)= >
{ 	
var 
simplifiedRequest !
=" #
new$ '

WebRequest( 2
{ 
ResponseCode 
= 

webRequest )
.) *
responseCode* 6
,6 7
}   
;   
if"" 
("" 

webRequest"" 
."" 
HasSucceeded"" '
(""' (
)""( )
)"") *
{## 
simplifiedRequest$$ !
.$$! "
Result$$" (
=$$) *
WebRequestResult$$+ ;
.$$; <
Success$$< C
;$$C D
}%% 
else&& 
{'' 
switch)) 
()) 

webRequest)) "
.))" #
result))# )
)))) *
{** 
case++ 
UnityWebRequest++ (
.++( )
Result++) /
.++/ 0
ConnectionError++0 ?
:++? @
{,, 
simplifiedRequest-- )
.--) *
Result--* 0
=--1 2
WebRequestResult--3 C
.--C D
ConnectionError--D S
;--S T
break.. 
;.. 
}// 
case00 
UnityWebRequest00 (
.00( )
Result00) /
.00/ 0
ProtocolError000 =
:00= >
{11 
simplifiedRequest22 )
.22) *
Result22* 0
=221 2
WebRequestResult223 C
.22C D
ProtocolError22D Q
;22Q R
break33 
;33 
}44 
default55 
:55 
{66 
simplifiedRequest77 )
.77) *
Result77* 0
=771 2
WebRequestResult773 C
.77C D
UnknownError77D P
;77P Q
break88 
;88 
}99 
}:: 
simplifiedRequestJJ !
.JJ! "
ErrorMessageJJ" .
=JJ/ 0

webRequestJJ1 ;
.JJ; <
errorJJ< A
;JJA B
simplifiedRequestKK !
.KK! "
	ErrorBodyKK" +
=KK, -

webRequestKK. 8
.KK8 9
downloadHandlerKK9 H
.KKH I
textKKI M
;KKM N
}LL 
returnNN 
simplifiedRequestNN $
;NN$ %
}OO 	
}PP 
}QQ ™
qC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Diagnotstics\Diagnostics.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	
Diagnostics
 
: 
IDiagnostics $
{ 
internal 
DiagnosticsHandler #
Handler$ +
{, -
get. 1
;1 2
}3 4
internal

 
IDictionary

 
<

 
string

 #
,

# $
string

% +
>

+ ,
PackageTags

- 8
{

9 :
get

; >
;

> ?
}

@ A
public 
Diagnostics 
( 
DiagnosticsHandler -
handler. 5
,5 6
IDictionary7 B
<B C
stringC I
,I J
stringK Q
>Q R
packageTagsS ^
)^ _
{ 	
Handler 
= 
handler 
; 
PackageTags 
= 
packageTags %
;% &
} 	
public 
void 
SendDiagnostic "
(" #
string# )
name* .
,. /
string0 6
message7 >
,> ?
IDictionary@ K
<K L
stringL R
,R S
stringT Z
>Z [
tags\ `
=a b
nullc g
)g h
{ 	
var 

diagnostic 
= 
new  

Diagnostic! +
{ 
Content 
= 
tags 
is !
null" &
? 
new 

Dictionary $
<$ %
string% +
,+ ,
string- 3
>3 4
(4 5
PackageTags5 @
)@ A
: 
new 

Dictionary $
<$ %
string% +
,+ ,
string- 3
>3 4
(4 5
tags5 9
)9 :
. 
MergeAllowOverride +
(+ ,
PackageTags, 7
)7 8
,8 9
} 
; 

diagnostic 
. 
Content 
. 
Add "
(" #
TagKeys# *
.* +
DiagnosticName+ 9
,9 :
name; ?
)? @
;@ A

diagnostic 
. 
Content 
. 
Add "
(" #
TagKeys# *
.* +
DiagnosticMessage+ <
,< =
message> E
)E F
;F G
Handler 
. 
Register 
( 

diagnostic '
)' (
;( )
}   	
}!! 
}"" ∫
nC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Models\Metrics\Metric.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
[ 
Serializable 
] 
struct		 

Metric		 
:		 
ITelemetryEvent		 #
{

 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Name 
; 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
double 
Value 
; 
[ 	
JsonProperty	 
( 
$str 
) 
] 
[ 	
JsonConverter	 
( 
typeof 
( 
StringEnumConverter 1
)1 2
)2 3
]3 4
public 

MetricType 
Type 
; 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
IDictionary 
< 
string !
,! "
string# )
>) *
Tags+ /
;/ 0
} 
} ﬁ
eC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str :
): ;
]; <
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str @
)@ A
]A B
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
]9 :≠
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Models\Diagnostics\DiagnosticsPayload.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
[ 
Serializable 
] 
struct 

DiagnosticsPayload 
: 
ITelemetryPayload  1
{		 
[

 	
JsonProperty

	 
(

 
$str

 #
)

# $
]

$ %
public 
List 
< 

Diagnostic 
> 
Diagnostics  +
;+ ,
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 

Dictionary 
< 
string  
,  !
string" (
>( )

CommonTags* 4
;4 5
[ 	
JsonProperty	 
( 
$str -
)- .
]. /
public 

Dictionary 
< 
string  
,  !
string" (
>( )!
DiagnosticsCommonTags* ?
;? @

Dictionary 
< 
string 
, 
string !
>! "
ITelemetryPayload# 4
.4 5

CommonTags5 ?
=>@ B

CommonTagsC M
;M N
int 
ITelemetryPayload 
. 
Count #
=>$ &
Diagnostics' 2
?2 3
.3 4
Count4 9
??: <
$num= >
;> ?
void 
ITelemetryPayload 
. 
Add "
(" #
ITelemetryEvent# 2
telemetryEvent3 A
)A B
{ 	
if 
( 
! 
( 
telemetryEvent  
is! #

Diagnostic$ .

diagnostic/ 9
)9 :
): ;
throw 
new 
ArgumentException +
(+ ,
$str, Z
)Z [
;[ \
if 
( 
Diagnostics 
is 
null #
)# $
{ 
Diagnostics 
= 
new !
List" &
<& '

Diagnostic' 1
>1 2
(2 3
$num3 4
)4 5
;5 6
} 
Diagnostics!! 
.!! 
Add!! 
(!! 

diagnostic!! &
)!!& '
;!!' (
}"" 	
}## 
}$$ ã	
wC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Metrics\DisabledMetricsFactory.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	"
DisabledMetricsFactory
  
:! "
IMetricsFactory# 2
{ 
IReadOnlyDictionary 
< 
string "
," #
string$ *
>* +
IMetricsFactory, ;
.; <

CommonTags< F
{G H
getI L
;L M
}N O
= 
new 

Dictionary 
< 
string #
,# $
string% +
>+ ,
(, -
)- .
;. /
IMetrics

 
IMetricsFactory

  
.

  !
Create

! '
(

' (
string

( .
packageName

/ :
)

: ;
=>

< >
new

? B
DisabledMetrics

C R
(

R S
)

S T
;

T U
} 
} Ñ
fC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Utils\TagKeys.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
static 

class 
TagKeys 
{ 
public 
const 
string "
ApplicationInstallMode 2
=3 4
$str5 O
;O P
public 
const 
string 
OperatingSystem +
=, -
$str. @
;@ A
public		 
const		 
string		 
Platform		 $
=		% &
$str		' 1
;		1 2
public 
const 
string 
UnityVersion (
=) *
$str+ :
;: ;
public 
const 
string 
PackageName '
=( )
$str* 8
;8 9
public 
const 
string 
PackageVersion *
=+ ,
$str- >
;> ?
public 
const 
string 
DiagnosticName *
=+ ,
$str- 3
;3 4
public 
const 
string 
DiagnosticMessage -
=. /
$str0 9
;9 :
public 
const 
string 
ApplicationVersion .
=/ 0
$str1 F
;F G
public 
const 
string 
ProductName '
=( )
$str* 8
;8 9
public 
const 
string 
CloudProjectId *
=+ ,
$str- ?
;? @
public 
const 
string 
EnvironmentName +
=, -
$str. @
;@ A
public 
const 
string 
ApplicationGenuine .
=/ 0
$str1 F
;F G
public 
const 
string  
InternetReachability 0
=1 2
$str3 J
;J K
}   
}!! Ú
rC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Models\Metrics\MetricType.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
enum 

MetricType	 
{ 
[ 	

EnumMember	 
( 
Value 
= 
$str #
)# $
]$ %
Gauge 
= 
$num 
, 
[		 	

EnumMember			 
(		 
Value		 
=		 
$str		 !
)		! "
]		" #
Sum
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
 
[ 	

EnumMember	 
( 
Value 
= 
$str '
)' (
]( )
	Histogram 
= 
$num 
, 
} 
} ‚
nC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Cache\ICachePersister.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
	interface 
ICachePersister 
< 
TPayload &
>& '
where 
TPayload 
: 
ITelemetryPayload *
{ 
bool 

CanPersist 
{ 
get 
; 
}  
void 
Persist 
( 
CachedPayload "
<" #
TPayload# +
>+ ,
cache- 2
)2 3
;3 4
bool

 
TryFetch

 
(

 
out

 
CachedPayload

 '
<

' (
TPayload

( 0
>

0 1
persistedCache

2 @
)

@ A
;

A B
void 
Delete 
( 
) 
; 
} 
} É	
nC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Networking\WebRequest.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
enum 
WebRequestResult	 
{ 
Success 
, 
ConnectionError 
, 
ProtocolError 
, 
UnknownError 
, 
}		 
struct 


WebRequest 
{ 
public 
WebRequestResult 
Result  &
;& '
public 
string 
ErrorMessage "
;" #
public 
string 
	ErrorBody 
;  
public 
long 
ResponseCode  
;  !
public 
bool 
	IsSuccess 
=>  
Result! '
==( *
WebRequestResult+ ;
.; <
Success< C
;C D
} 
} …
yC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Diagnotstics\DisabledDiagnostics.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	
DisabledDiagnostics
 
: 
IDiagnostics  ,
{ 
void 
IDiagnostics 
. 
SendDiagnostic (
(( )
string) /
name0 4
,4 5
string6 <
message= D
,D E
IDictionaryF Q
<Q R
stringR X
,X Y
stringZ `
>` a
tagsb f
)f g
{ 	
}

 	
} 
} ˘!
pC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Handlers\MetricsHandler.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{		 
class 	
MetricsHandler
 
: 
TelemetryHandler +
<+ ,
MetricsPayload, :
,: ;
Metric< B
>B C
{ 
public 
MetricsHandler 
( 
TelemetryConfig 
config "
," #
CachedPayload$ 1
<1 2
MetricsPayload2 @
>@ A
cacheB G
,G H
IActionSchedulerI Y
	schedulerZ c
,c d
ICachePersister 
< 
MetricsPayload *
>* +
cachePersister, :
,: ;
TelemetrySender< K
senderL R
)R S
: 
base 
( 
config 
, 
cache  
,  !
	scheduler" +
,+ ,
cachePersister- ;
,; <
sender= C
)C D
{ 	
	AotHelper 
. 

EnsureType  
<  !
StringEnumConverter! 4
>4 5
(5 6
)6 7
;7 8
} 	
internal 
override 
void 
SendPersistedCache 1
(1 2
CachedPayload2 ?
<? @
MetricsPayload@ N
>N O
persistedCacheP ^
)^ _
{ 	
if 
( 
! 
AreMetricsOutdated #
(# $
)$ %
)% &
{ 
m_Sender 
. 
	SendAsync "
(" #
persistedCache# 1
.1 2
Payload2 9
)9 :
;: ;
} 
m_CachePersister 
. 
Delete #
(# $
)$ %
;% &
bool!! 
AreMetricsOutdated!! #
(!!# $
)!!$ %
{"" 
var##  
differenceFromUtcNow## (
=##) *
DateTime##+ 3
.##3 4
UtcNow##4 :
-##; <
new##= @
DateTime##A I
(##I J
persistedCache##J X
.##X Y 
TimeOfOccurenceTicks##Y m
)##m n
;##n o
return$$  
differenceFromUtcNow$$ +
.$$+ ,
TotalSeconds$$, 8
>$$9 :
Config$$; A
.$$A B$
PayloadExpirationSeconds$$B Z
;$$Z [
}%% 
}&& 	
internal(( 
override(( 
void(( #
FetchSpecificCommonTags(( 6
(((6 7
ICloudProjectId((7 F
cloudProjectId((G U
,((U V
IEnvironments((W d
environments((e q
)((q r
{)) 	
Cache** 
.** 
Payload** 
.** 
MetricsCommonTags** +
.**+ ,
Clear**, 1
(**1 2
)**2 3
;**3 4
}++ 	
internal-- 
override-- 
void-- 
SendCachedPayload-- 0
(--0 1
)--1 2
{.. 	
if// 
(// 
Cache// 
.// 
Payload// 
.// 
Metrics// %
.//% &
Count//& +
<=//, .
$num/// 0
)//0 1
return00 
;00 
m_Sender22 
.22 
	SendAsync22 
(22 
Cache22 $
.22$ %
Payload22% ,
)22, -
;22- .
Cache44 
.44 
Payload44 
.44 
Metrics44 !
.44! "
Clear44" '
(44' (
)44( )
;44) *
Cache55 
.55  
TimeOfOccurenceTicks55 &
=55' (
$num55) *
;55* +
if77 
(77 
m_CachePersister77  
.77  !

CanPersist77! +
)77+ ,
{88 
m_CachePersister99  
.99  !
Delete99! '
(99' (
)99( )
;99) *
}:: 
};; 	
}<< 
}== ∂
uC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Cache\DisabledCachePersister.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	"
DisabledCachePersister
  
<  !
TPayload! )
>) *
:+ ,
ICachePersister- <
<< =
TPayload= E
>E F
where 
TPayload 
: 
ITelemetryPayload *
{ 
const 
string 
k_ErrorMessage #
=$ %
$str& b
;b c
public

 
bool

 

CanPersist

 
=>

 !
false

" '
;

' (
public 
void 
Persist 
( 
CachedPayload )
<) *
TPayload* 2
>2 3
cache4 9
)9 :
=>; =
throw> C
newD G!
NotSupportedExceptionH ]
(] ^
k_ErrorMessage^ l
)l m
;m n
public 
bool 
TryFetch 
( 
out  
CachedPayload! .
<. /
TPayload/ 7
>7 8
persistedCache9 G
)G H
=> 
throw 
new !
NotSupportedException .
(. /
k_ErrorMessage/ =
)= >
;> ?
public 
void 
Delete 
( 
) 
=> 
throw  %
new& )!
NotSupportedException* ?
(? @
k_ErrorMessage@ N
)N O
;O P
} 
} ”
|C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Models\Interfaces\ITelemetryPayload.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
	interface 
ITelemetryPayload 
{ 

Dictionary 
< 
string 
, 
string !
>! "

CommonTags# -
{. /
get0 3
;3 4
}5 6
int		 
Count		 
{		 
get		 
;		 
}		 
void 
Add 
( 
ITelemetryEvent  
telemetryEvent! /
)/ 0
;0 1
} 
} °
zC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Models\Interfaces\ITelemetryEvent.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
	interface 
ITelemetryEvent 
{ 
}  
} ı
vC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Models\Metrics\MetricsPayload.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
[ 
Serializable 
] 
struct 

MetricsPayload 
: 
ITelemetryPayload -
{		 
[

 	
JsonProperty

	 
(

 
$str

 
)

  
]

  !
public 
List 
< 
Metric 
> 
Metrics #
;# $
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 

Dictionary 
< 
string  
,  !
string" (
>( )

CommonTags* 4
;4 5
[ 	
JsonProperty	 
( 
$str )
)) *
]* +
public 

Dictionary 
< 
string  
,  !
string" (
>( )
MetricsCommonTags* ;
;; <

Dictionary 
< 
string 
, 
string !
>! "
ITelemetryPayload# 4
.4 5

CommonTags5 ?
=>@ B

CommonTagsC M
;M N
int 
ITelemetryPayload 
. 
Count #
=>$ &
Metrics' .
?. /
./ 0
Count0 5
??6 8
$num9 :
;: ;
void 
ITelemetryPayload 
. 
Add "
(" #
ITelemetryEvent# 2
telemetryEvent3 A
)A B
{ 	
if 
( 
! 
( 
telemetryEvent  
is! #
Metric$ *
metric+ 1
)1 2
)2 3
throw 
new 
ArgumentException +
(+ ,
$str, V
)V W
;W X
if 
( 
Metrics 
is 
null 
)  
{ 
Metrics 
= 
new 
List "
<" #
Metric# )
>) *
(* +
$num+ ,
), -
;- .
} 
Metrics!! 
.!! 
Add!! 
(!! 
metric!! 
)!! 
;!!  
}"" 	
}## 
}$$ ¯
nC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Utils\CacheExtensions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
static 

class 
CacheExtensions  
{ 
public 
static 
bool 
IsEmpty "
<" #
TPayload# +
>+ ,
(, -
this- 1
CachedPayload2 ?
<? @
TPayload@ H
>H I
selfJ N
)N O
where 
TPayload 
: 
ITelemetryPayload .
{		 	
return

 
(

 
self

 
.

 
Payload

  
?

  !
.

! "
Count

" '
??

( *
$num

+ ,
)

, -
<=

. 0
$num

1 2
;

2 3
} 	
public 
static 
void 
AddRangeFrom '
(' (
this 
CachedPayload 
< 
DiagnosticsPayload 1
>1 2
self3 7
,7 8
CachedPayload9 F
<F G
DiagnosticsPayloadG Y
>Y Z
payload[ b
)b c
{ 	
var 
hasDiagnosticsToAdd #
=$ %
payload& -
.- .
Payload. 5
.5 6
Diagnostics6 A
.A B
CountB G
>H I
$numJ K
;K L
if 
( 
hasDiagnosticsToAdd #
)# $
{ 
self 
. 
Payload 
. 
Diagnostics (
.( )
AddRange) 1
(1 2
payload2 9
.9 :
Payload: A
.A B
DiagnosticsB M
)M N
;N O
} 
if 
( 
hasDiagnosticsToAdd #
&& 
self 
.  
TimeOfOccurenceTicks ,
<=- /
$num0 1
)1 2
{ 
self 
.  
TimeOfOccurenceTicks )
=* +
payload, 3
.3 4 
TimeOfOccurenceTicks4 H
;H I
} 
} 	
public 
static 
void 
Add 
< 
TPayload '
>' (
(( )
this) -
CachedPayload. ;
<; <
TPayload< D
>D E
selfF J
,J K
ITelemetryEventL [
telemetryEvent\ j
)j k
where 
TPayload 
: 
ITelemetryPayload .
{ 	
if   
(   
self   
.    
TimeOfOccurenceTicks   )
==  * ,
$num  - .
)  . /
{!! 
self"" 
.""  
TimeOfOccurenceTicks"" )
=""* +
DateTime"", 4
.""4 5
UtcNow""5 ;
.""; <
Ticks""< A
;""A B
}## 
self%% 
.%% 
Payload%% 
.%% 
Add%% 
(%% 
telemetryEvent%% +
)%%+ ,
;%%, -
}&& 	
}'' 
}(( ∑$
hC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Metrics\Metrics.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	
Metrics
 
: 
IMetrics 
{ 
internal 
MetricsHandler 
Handler  '
{( )
get* -
;- .
}/ 0
internal

 
IDictionary

 
<

 
string

 #
,

# $
string

% +
>

+ ,
PackageTags

- 8
{

9 :
get

; >
;

> ?
}

@ A
public 
Metrics 
( 
MetricsHandler %
handler& -
,- .
IDictionary/ :
<: ;
string; A
,A B
stringC I
>I J
packageTagsK V
)V W
{ 	
Handler 
= 
handler 
; 
PackageTags 
= 
packageTags %
;% &
} 	
internal 
Metric 
CreateMetric $
($ %
string% +
name, 0
,0 1
double2 8
value9 >
,> ?

MetricType@ J
typeK O
,O P
IDictionaryQ \
<\ ]
string] c
,c d
stringe k
>k l
tagsm q
)q r
{ 	
var 
metric 
= 
new 
Metric #
{ 
Name 
= 
name 
, 
Value 
= 
value 
, 
Type 
= 
type 
, 
Tags 
= 
tags 
is 
null #
?$ %
PackageTags& 1
:2 3
tags4 8
.8 9
MergeAllowOverride9 K
(K L
PackageTagsL W
)W X
,X Y
} 
; 
return 
metric 
; 
} 	
void 
IMetrics 
. 
SendGaugeMetric %
(% &
string& ,
name- 1
,1 2
double3 9
value: ?
,? @
IDictionaryA L
<L M
stringM S
,S T
stringU [
>[ \
tags] a
)a b
{   	
var!! 
metric!! 
=!! 
CreateMetric!! %
(!!% &
name!!& *
,!!* +
value!!, 1
,!!1 2

MetricType!!3 =
.!!= >
Gauge!!> C
,!!C D
tags!!E I
)!!I J
;!!J K
Handler"" 
."" 
Register"" 
("" 
metric"" #
)""# $
;""$ %
}## 	
void%% 
IMetrics%% 
.%% 
SendHistogramMetric%% )
(%%) *
string%%* 0
name%%1 5
,%%5 6
double%%7 =
time%%> B
,%%B C
IDictionary%%D O
<%%O P
string%%P V
,%%V W
string%%X ^
>%%^ _
tags%%` d
)%%d e
{&& 	
var'' 
metric'' 
='' 
CreateMetric'' %
(''% &
name''& *
,''* +
time'', 0
,''0 1

MetricType''2 <
.''< =
	Histogram''= F
,''F G
tags''H L
)''L M
;''M N
Handler(( 
.(( 
Register(( 
((( 
metric(( #
)((# $
;(($ %
})) 	
void++ 
IMetrics++ 
.++ 
SendSumMetric++ #
(++# $
string++$ *
name+++ /
,++/ 0
double++1 7
value++8 =
,++= >
IDictionary++? J
<++J K
string++K Q
,++Q R
string++S Y
>++Y Z
tags++[ _
)++_ `
{,, 	
var-- 
metric-- 
=-- 
CreateMetric-- %
(--% &
name--& *
,--* +
value--, 1
,--1 2

MetricType--3 =
.--= >
Sum--> A
,--A B
tags--C G
)--G H
;--H I
Handler.. 
... 
Register.. 
(.. 
metric.. #
)..# $
;..$ %
}// 	
}00 
}11 á
vC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Models\Diagnostics\Diagnostic.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
[ 
Serializable 
] 
struct 


Diagnostic 
: 
ITelemetryEvent '
{		 
[

 	
JsonProperty

	 
(

 
$str

 
)

  
]

  !
public 
IDictionary 
< 
string !
,! "
string# )
>) *
Content+ 2
;2 3
} 
} ’
ÅC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Networking\ExponentialBackOffRetryPolicy.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	)
ExponentialBackOffRetryPolicy
 '
{ 
int		 
m_MaxTryCount		 
=		 
$num		 
;		 
public 
int 
MaxTryCount 
{ 	
get 
=> 
m_MaxTryCount  
;  !
set 
=> 
m_MaxTryCount  
=! "
Math# '
.' (
Max( +
(+ ,
value, 1
,1 2
$num3 4
)4 5
;5 6
} 	
float 
m_BaseDelaySeconds  
=! "
$num# $
;$ %
public 
float 
BaseDelaySeconds %
{ 	
get 
=> 
m_BaseDelaySeconds %
;% &
set 
=> 
m_BaseDelaySeconds %
=& '
Math( ,
., -
Max- 0
(0 1
value1 6
,6 7
$num8 9
)9 :
;: ;
} 	
public 
bool 
CanRetry 
( 

WebRequest '

webRequest( 2
,2 3
int4 7
	sendCount8 A
)A B
{ 	
return 
	sendCount 
< 
MaxTryCount *
&& 
IsTransientError #
(# $

webRequest$ .
). /
;/ 0
} 	
public 
static 
bool 
IsTransientError +
(+ ,

WebRequest, 6

webRequest7 A
)A B
{   	
return!! 

webRequest!! 
.!! 
Result!! $
==!!% '
WebRequestResult!!( 8
.!!8 9
ConnectionError!!9 H
||"" 

webRequest"" 
."" 
Result"" $
==""% '
WebRequestResult""( 8
.""8 9
ProtocolError""9 F
&&""G I
IsServerErrorCode""J [
(""[ \

webRequest""\ f
.""f g
ResponseCode""g s
)""s t
;""t u
bool$$ 
IsServerErrorCode$$ "
($$" #
long$$# '
responseCode$$( 4
)$$4 5
{%% 
return&& 
responseCode&& #
>=&&$ &
$num&&' *
&&'' 
responseCode'' #
<''$ %
$num''& )
;'') *
}(( 
})) 	
public++ 
float++ (
GetDelayBeforeSendingSeconds++ 1
(++1 2
int++2 5
	sendCount++6 ?
)++? @
{,, 	
if-- 
(-- 
	sendCount-- 
<=-- 
$num-- 
)-- 
{.. 
return// 
BaseDelaySeconds// '
;//' (
}00 
return22 
Mathf22 
.22 
Pow22 
(22 
BaseDelaySeconds22 -
,22- .
	sendCount22/ 8
)228 9
;229 :
}33 	
}44 
}55 ≤(
qC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Cache\FileCachePersister.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{		 
abstract

 
class

 
FileCachePersister

 %
{ 
internal 
static 
bool 
IsAvailableFor +
(+ ,
RuntimePlatform, ;
platform< D
)D E
{ 	
return 
! 
string 
. 
IsNullOrEmpty (
(( )$
GetPersistentDataPathFor) A
(A B
platformB J
)J K
)K L
;L M
} 	
internal 
static 
string $
GetPersistentDataPathFor 7
(7 8
RuntimePlatform8 G
platformH P
)P Q
{ 	
if 
( 
platform 
== 
RuntimePlatform +
.+ ,
Switch, 2
)2 3
return 
string 
. 
Empty #
;# $
return 
Application 
. 
persistentDataPath 1
;1 2
} 	
} 
class 	
FileCachePersister
 
< 
TPayload %
>% &
:' (
FileCachePersister) ;
,; <
ICachePersister= L
<L M
TPayloadM U
>U V
where 
TPayload 
: 
ITelemetryPayload *
{ 
public 
FileCachePersister !
(! "
string" (
fileName) 1
)1 2
{ 	
FilePath   
=   
Path   
.   
Combine   #
(  # $$
GetPersistentDataPathFor  $ <
(  < =
Application  = H
.  H I
platform  I Q
)  Q R
,  R S
fileName  T \
)  \ ]
;  ] ^
}!! 	
public## 
string## 
FilePath## 
{##  
get##! $
;##$ %
}##& '
public%% 
bool%% 

CanPersist%% 
{%%  
get%%! $
;%%$ %
}%%& '
=%%( )
IsAvailableFor%%* 8
(%%8 9
Application%%9 D
.%%D E
platform%%E M
)%%M N
;%%N O
public'' 
void'' 
Persist'' 
('' 
CachedPayload'' )
<'') *
TPayload''* 2
>''2 3
cache''4 9
)''9 :
{(( 	
var)) 
serializedEvents))  
=))! "
JsonConvert))# .
.)). /
SerializeObject))/ >
())> ?
cache))? D
)))D E
;))E F
File** 
.** 
WriteAllText** 
(** 
FilePath** &
,**& '
serializedEvents**( 8
)**8 9
;**9 :
}++ 	
public-- 
bool-- 
TryFetch-- 
(-- 
out--  
CachedPayload--! .
<--. /
TPayload--/ 7
>--7 8
persistedCache--9 G
)--G H
{.. 	
if// 
(// 
!// 
File// 
.// 
Exists// 
(// 
FilePath// %
)//% &
)//& '
{00 
persistedCache11 
=11  
default11! (
;11( )
return22 
false22 
;22 
}33 
try55 
{66 
var77 
rawPersistedCache77 %
=77& '
File77( ,
.77, -
ReadAllText77- 8
(778 9
FilePath779 A
)77A B
;77B C
persistedCache88 
=88  
JsonConvert88! ,
.88, -
DeserializeObject88- >
<88> ?
CachedPayload88? L
<88L M
TPayload88M U
>88U V
>88V W
(88W X
rawPersistedCache88X i
)88i j
;88j k
return99 
true99 
;99 
}:: 
catch;; 
(;; 
	Exception;; 
e;; 
);; 
{<< 

CoreLogger== 
.== 
LogException== '
(==' (
e==( )
)==) *
;==* +
persistedCache>> 
=>>  
default>>! (
;>>( )
return?? 
false?? 
;?? 
}@@ 
}AA 	
publicCC 
voidCC 
DeleteCC 
(CC 
)CC 
{DD 	
ifEE 
(EE 
FileEE 
.EE 
ExistsEE 
(EE 
FilePathEE $
)EE$ %
)EE% &
{FF 
FileGG 
.GG 
DeleteGG 
(GG 
FilePathGG $
)GG$ %
;GG% &
}HH 
}II 	
}JJ 
}KK ‚
hC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\TelemetryConfig.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
[ 
Serializable 
] 
class 	
TelemetryConfig
 
{ 
public 
string 
	TargetUrl 
;  
public

 
string

 
ServicePath

 !
;

! "
public 
double $
PayloadExpirationSeconds .
;. /
public 
double ,
 PayloadSendingMaxIntervalSeconds 6
;6 7
public 
double ,
 SafetyPersistenceIntervalSeconds 6
;6 7
public 
int $
MaxMetricCountPerPayload +
;+ ,
} 
} œD
sC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Networking\TelemetrySender.cs
	namespace

 	
Unity


 
.

 
Services

 
.

 
Core

 
.

 
	Telemetry

 '
.

' (
Internal

( 0
{ 
class 	
TelemetrySender
 
{ 
public 
string 
	TargetUrl 
{  !
get" %
;% &
}' (
readonly )
ExponentialBackOffRetryPolicy .
m_RetryPolicy/ <
;< =
readonly 
IActionScheduler !
m_Scheduler" -
;- .
readonly "
IUnityWebRequestSender '
m_RequestSender( 7
;7 8
public 
TelemetrySender 
( 
[ 
NotNull 
] 
string 
	targetUrl &
,& '
[( )
NotNull) 0
]0 1
string2 8
servicePath9 D
,D E
[ 
NotNull 
] 
IActionScheduler &
	scheduler' 0
,0 1
[2 3
NotNull3 :
]: ;)
ExponentialBackOffRetryPolicy< Y
retryPolicyZ e
,e f
[ 
NotNull 
] "
IUnityWebRequestSender ,
requestSender- :
): ;
{ 	
	TargetUrl 
= 
$" 
{ 
	targetUrl $
}$ %
$str% &
{& '
servicePath' 2
}2 3
"3 4
;4 5
m_RetryPolicy 
= 
retryPolicy '
;' (
m_Scheduler 
= 
	scheduler #
;# $
m_RequestSender 
= 
requestSender +
;+ ,
} 	
public!! 
Task!! 
	SendAsync!! 
<!! 
TPayload!! &
>!!& '
(!!' (
TPayload!!( 0
payload!!1 8
)!!8 9
where"" 
TPayload"" 
:"" 
ITelemetryPayload"" .
{## 	
var$$ 
completionSource$$  
=$$! "
new$$# & 
TaskCompletionSource$$' ;
<$$; <
object$$< B
>$$B C
($$C D
)$$D E
;$$E F
var%% 
	sendCount%% 
=%% 
$num%% 
;%% 
byte&& 
[&& 
]&& 
serializedPayload&& $
;&&$ %
try(( 
{)) 
serializedPayload** !
=**" #
SerializePayload**$ 4
(**4 5
payload**5 <
)**< =
;**= >
SendWebRequest++ 
(++ 
)++  
;++  !
},, 
catch-- 
(-- 
	Exception-- 
e-- 
)-- 
{.. 
completionSource//  
.//  !
TrySetException//! 0
(//0 1
e//1 2
)//2 3
;//3 4
}00 
return22 
completionSource22 #
.22# $
Task22$ (
;22( )
void44 
SendWebRequest44 
(44  
)44  !
{55 
var66 
request66 
=66 
CreateRequest66 +
(66+ ,
serializedPayload66, =
)66= >
;66> ?
	sendCount88 
++88 
;88 

CoreLogger99 
.99 

LogVerbose99 %
(99% &
$"99& (
$str99( 1
{991 2
	sendCount992 ;
.99; <
ToString99< D
(99D E
)99E F
}99F G
$str99G P
{99P Q
typeof99Q W
(99W X
TPayload99X `
)99` a
.99a b
Name99b f
}99f g
$str99g h
"99h i
)99i j
;99j k
m_RequestSender;; 
.;;  
SendRequest;;  +
(;;+ ,
request;;, 3
,;;3 4
OnRequestCompleted;;5 G
);;G H
;;;H I
}<< 
void>> 
OnRequestCompleted>> #
(>># $

WebRequest>>$ .

webRequest>>/ 9
)>>9 :
{?? 
if@@ 
(@@ 

webRequest@@ 
.@@ 
	IsSuccess@@ (
)@@( )
{AA 

CoreLoggerBB 
.BB 

LogVerboseBB )
(BB) *
$"BB* ,
{BB, -
typeofBB- 3
(BB3 4
TPayloadBB4 <
)BB< =
.BB= >
NameBB> B
}BBB C
$strBBC U
"BBU V
)BBV W
;BBW X
completionSourceCC $
.CC$ %
	SetResultCC% .
(CC. /
nullCC/ 3
)CC3 4
;CC4 5
}DD 
elseEE 
ifEE 
(EE 
m_RetryPolicyEE &
.EE& '
CanRetryEE' /
(EE/ 0

webRequestEE0 :
,EE: ;
	sendCountEE< E
)EEE F
)EEF G
{FF 
varGG %
delayBeforeSendingSecondsGG 1
=GG2 3
m_RetryPolicyGG4 A
.GGA B(
GetDelayBeforeSendingSecondsGGB ^
(GG^ _
	sendCountGG_ h
)GGh i
;GGi j
m_SchedulerHH 
.HH  
ScheduleActionHH  .
(HH. /
SendWebRequestHH/ =
,HH= >%
delayBeforeSendingSecondsHH? X
)HHX Y
;HHY Z
}II 
elseJJ 
{KK 
varLL 
errorMessageLL $
=LL% &
$"LL' )
$strLL) 0
{LL0 1

webRequestLL1 ;
.LL; <
ErrorMessageLL< H
}LLH I
$strLLI Q
{LLQ R

webRequestLLR \
.LL\ ]
	ErrorBodyLL] f
}LLf g
"LLg h
;LLh i
completionSourceMM $
.MM$ %
TrySetExceptionMM% 4
(MM4 5
newMM5 8
	ExceptionMM9 B
(MMB C
errorMessageMMC O
)MMO P
)MMP Q
;MMQ R

CoreLoggerNN 
.NN 

LogVerboseNN )
(NN) *
$"NN* ,
{NN, -
typeofNN- 3
(NN3 4
TPayloadNN4 <
)NN< =
.NN= >
NameNN> B
}NNB C
$strNNC [
{NN[ \
	sendCountNN\ e
.NNe f
ToStringNNf n
(NNn o
)NNo p
}NNp q
$strNNq z
{NNz {
errorMessage	NN{ á
}
NNá à
"
NNà â
)
NNâ ä
;
NNä ã
}OO 
}PP 
}QQ 	
internalSS 
staticSS 
byteSS 
[SS 
]SS 
SerializePayloadSS /
<SS/ 0
TPayloadSS0 8
>SS8 9
(SS9 :
TPayloadSS: B
payloadSSC J
)SSJ K
whereTT 
TPayloadTT 
:TT 
ITelemetryPayloadTT .
{UU 	
varVV 
jsonPayloadVV 
=VV 
JsonConvertVV )
.VV) *
SerializeObjectVV* 9
(VV9 :
payloadVV: A
)VVA B
;VVB C
varWW 
serializedPayloadWW !
=WW" #
EncodingWW$ ,
.WW, -
UTF8WW- 1
.WW1 2
GetBytesWW2 :
(WW: ;
jsonPayloadWW; F
)WWF G
;WWG H
returnXX 
serializedPayloadXX $
;XX$ %
}YY 	
internal[[ 
UnityWebRequest[[  
CreateRequest[[! .
([[. /
byte[[/ 3
[[[3 4
][[4 5
serializedPayload[[6 G
)[[G H
{\\ 	
var]] 
request]] 
=]] 
new]] 
UnityWebRequest]] -
(]]- .
	TargetUrl]]. 7
,]]7 8
UnityWebRequest]]9 H
.]]H I
kHttpVerbPOST]]I V
)]]V W
{^^ 
uploadHandler__ 
=__ 
new__  #
UploadHandlerRaw__$ 4
(__4 5
serializedPayload__5 F
)__F G
{`` 
contentTypeaa 
=aa  ! 
UnityWebRequestUtilsaa" 6
.aa6 7
JsonContentTypeaa7 F
,aaF G
}bb 
,bb 
downloadHandlercc 
=cc  !
newcc" %!
DownloadHandlerBuffercc& ;
(cc; <
)cc< =
}dd 
;dd 
requestee 
.ee 
SetRequestHeaderee $
(ee$ %
$stree% 3
,ee3 4 
UnityWebRequestUtilsee5 I
.eeI J
JsonContentTypeeeJ Y
)eeY Z
;eeZ [
returnff 
requestff 
;ff 
}gg 	
}hh 
}ii ≠	
ÄC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Diagnotstics\DisabledDiagnosticsFactory.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
class 	&
DisabledDiagnosticsFactory
 $
:% &
IDiagnosticsFactory' :
{ 
IReadOnlyDictionary 
< 
string "
," #
string$ *
>* +
IDiagnosticsFactory, ?
.? @

CommonTags@ J
{K L
getM P
;P Q
}R S
= 
new 

Dictionary 
< 
string #
,# $
string% +
>+ ,
(, -
)- .
;. /
IDiagnostics

 
IDiagnosticsFactory

 (
.

( )
Create

) /
(

/ 0
string

0 6
packageName

7 B
)

B C
=>

D F
new

G J
DisabledDiagnostics

K ^
(

^ _
)

_ `
;

` a
} 
} ˝U
rC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Handlers\TelemetryHandler.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
abstract 
class 
TelemetryHandler #
{ 
internal 
static 
string %
FormatOperatingSystemInfo 8
(8 9
string9 ?
	rawOsInfo@ I
)I J
{ 	
return   
	rawOsInfo   
;   
}"" 	
}## 
abstract%% 
class%% 
TelemetryHandler%% #
<%%# $
TPayload%%$ ,
,%%, -
TEvent%%. 4
>%%4 5
:%%6 7
TelemetryHandler%%8 H
where&& 
TPayload&& 
:&& 
ITelemetryPayload&& *
where'' 
TEvent'' 
:'' 
ITelemetryEvent'' &
{(( 
readonly)) 
IActionScheduler)) !
m_Scheduler))" -
;))- .
	protected++ 
readonly++ 
ICachePersister++ *
<++* +
TPayload+++ 3
>++3 4
m_CachePersister++5 E
;++E F
	protected-- 
readonly-- 
TelemetrySender-- *
m_Sender--+ 3
;--3 4
internal// 
long// !
SendingLoopScheduleId// +
;//+ ,
internal11 
long11 %
PersistenceLoopScheduleId11 /
;11/ 0
public33 
TelemetryConfig33 
Config33 %
{33& '
get33( +
;33+ ,
}33- .
public55 
CachedPayload55 
<55 
TPayload55 %
>55% &
Cache55' ,
{55- .
get55/ 2
;552 3
}554 5
	protected77 
TelemetryHandler77 "
(77" #
TelemetryConfig88 
config88 "
,88" #
CachedPayload88$ 1
<881 2
TPayload882 :
>88: ;
cache88< A
,88A B
IActionScheduler88C S
	scheduler88T ]
,88] ^
ICachePersister99 
<99 
TPayload99 $
>99$ %
cachePersister99& 4
,994 5
TelemetrySender996 E
sender99F L
)99L M
{:: 	
Config;; 
=;; 
config;; 
;;; 
Cache<< 
=<< 
cache<< 
;<< 
m_Scheduler== 
=== 
	scheduler== #
;==# $
m_CachePersister>> 
=>> 
cachePersister>> -
;>>- .
m_Sender?? 
=?? 
sender?? 
;?? 
}@@ 	
publicBB 
voidBB 

InitializeBB 
(BB 
ICloudProjectIdBB .
cloudProjectIdBB/ =
,BB= >
IEnvironmentsBB? L
environmentsBBM Y
)BBY Z
{CC 	 
HandlePersistedCacheDD  
(DD  !
)DD! "
;DD" #
FetchAllCommonTagsEE 
(EE 
cloudProjectIdEE -
,EE- .
environmentsEE/ ;
)EE; <
;EE< =
ScheduleSendingLoopFF 
(FF  
)FF  !
;FF! "
ifHH 
(HH 
m_CachePersisterHH  
.HH  !

CanPersistHH! +
)HH+ ,
{II #
SchedulePersistenceLoopJJ '
(JJ' (
)JJ( )
;JJ) *
}KK 
}LL 	
internalNN 
voidNN  
HandlePersistedCacheNN *
(NN* +
)NN+ ,
{OO 	
ifPP 
(PP 
!PP 
m_CachePersisterPP !
.PP! "

CanPersistPP" ,
||QQ 
!QQ 
m_CachePersisterQQ $
.QQ$ %
TryFetchQQ% -
(QQ- .
outQQ. 1
varQQ2 5
persistedCacheQQ6 D
)QQD E
)QQE F
returnRR 
;RR 
ifTT 
(TT 
persistedCacheTT 
.TT 
IsEmptyTT &
(TT& '
)TT' (
)TT( )
{UU 
m_CachePersisterVV  
.VV  !
DeleteVV! '
(VV' (
)VV( )
;VV) *
returnWW 
;WW 
}XX 
SendPersistedCacheZZ 
(ZZ 
persistedCacheZZ -
)ZZ- .
;ZZ. /
}[[ 	
internal]] 
abstract]] 
void]] 
SendPersistedCache]] 1
(]]1 2
CachedPayload]]2 ?
<]]? @
TPayload]]@ H
>]]H I
persistedCache]]J X
)]]X Y
;]]Y Z
void__ 
FetchAllCommonTags__ 
(__  
ICloudProjectId__  /
cloudProjectId__0 >
,__> ?
IEnvironments__@ M
environments__N Z
)__Z [
{`` 	$
FetchTelemetryCommonTagsaa $
(aa$ %
)aa% &
;aa& '#
FetchSpecificCommonTagsbb #
(bb# $
cloudProjectIdbb$ 2
,bb2 3
environmentsbb4 @
)bb@ A
;bbA B
}cc 	
internalee 
abstractee 
voidee #
FetchSpecificCommonTagsee 6
(ee6 7
ICloudProjectIdee7 F
cloudProjectIdeeG U
,eeU V
IEnvironmentseeW d
environmentseee q
)eeq r
;eer s
internalgg 
voidgg $
FetchTelemetryCommonTagsgg .
(gg. /
)gg/ 0
{hh 	
varii 

commonTagsii 
=ii 
Cacheii "
.ii" #
Payloadii# *
.ii* +

CommonTagsii+ 5
;ii5 6

commonTagsjj 
.jj 
Clearjj 
(jj 
)jj 
;jj 

commonTagskk 
[kk 
TagKeyskk 
.kk "
ApplicationInstallModekk 5
]kk5 6
=kk7 8
Applicationkk9 D
.kkD E
installModekkE P
.kkP Q
ToStringkkQ Y
(kkY Z
)kkZ [
;kk[ \

commonTagsll 
[ll 
TagKeysll 
.ll 
OperatingSystemll .
]ll. /
=ll0 1%
FormatOperatingSystemInfoll2 K
(llK L

SystemInfollL V
.llV W
operatingSystemllW f
)llf g
;llg h

commonTagsmm 
[mm 
TagKeysmm 
.mm 
Platformmm '
]mm' (
=mm) *
Applicationmm+ 6
.mm6 7
platformmm7 ?
.mm? @
ToStringmm@ H
(mmH I
)mmI J
;mmJ K

commonTagsnn 
[nn 
TagKeysnn 
.nn 
UnityVersionnn +
]nn+ ,
=nn- .
Applicationnn/ :
.nn: ;
unityVersionnn; G
;nnG H
}oo 	
internalqq 
voidqq 
ScheduleSendingLoopqq )
(qq) *
)qq* +
{rr 	!
SendingLoopScheduleIdss !
=ss" #
m_Schedulerss$ /
.ss/ 0
ScheduleActionss0 >
(ss> ?
SendingLoopss? J
,ssJ K
ConfigssL R
.ssR S,
 PayloadSendingMaxIntervalSecondsssS s
)sss t
;sst u
voiduu 
SendingLoopuu 
(uu 
)uu 
{vv 
ScheduleSendingLoopww #
(ww# $
)ww$ %
;ww% &
SendCachedPayloadxx !
(xx! "
)xx" #
;xx# $
}yy 
}zz 	
internal|| 
abstract|| 
void|| 
SendCachedPayload|| 0
(||0 1
)||1 2
;||2 3
internal~~ 
void~~ #
SchedulePersistenceLoop~~ -
(~~- .
)~~. /
{ 	'
PersistenceLoopScheduleId
ÄÄ %
=
ÄÄ& '
m_Scheduler
ÄÄ( 3
.
ÄÄ3 4
ScheduleAction
ÄÄ4 B
(
ÄÄB C
PersistenceLoop
ÅÅ 
,
ÅÅ  
Config
ÅÅ! '
.
ÅÅ' (.
 SafetyPersistenceIntervalSeconds
ÅÅ( H
)
ÅÅH I
;
ÅÅI J
void
ÉÉ 
PersistenceLoop
ÉÉ  
(
ÉÉ  !
)
ÉÉ! "
{
ÑÑ %
SchedulePersistenceLoop
ÖÖ '
(
ÖÖ' (
)
ÖÖ( )
;
ÖÖ) *
PersistCache
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 
}
àà 	
internal
ää 
void
ää 
PersistCache
ää "
(
ää" #
)
ää# $
{
ãã 	
if
åå 
(
åå 
!
åå 
m_CachePersister
åå !
.
åå! "

CanPersist
åå" ,
||
çç 
Cache
çç 
.
çç "
TimeOfOccurenceTicks
çç -
<=
çç. 0
$num
çç1 2
||
éé 
Cache
éé 
.
éé 
Payload
éé  
.
éé  !
Count
éé! &
<=
éé' )
$num
éé* +
)
éé+ ,
return
èè 
;
èè 
m_CachePersister
ëë 
.
ëë 
Persist
ëë $
(
ëë$ %
Cache
ëë% *
)
ëë* +
;
ëë+ ,
}
íí 	
public
îî 
void
îî 
Register
îî 
(
îî 
TEvent
îî #
telemetryEvent
îî$ 2
)
îî2 3
{
ïï 	

CoreLogger
ññ 
.
ññ 

LogVerbose
ññ !
(
ññ! "
$"
ññ" $
$str
ññ$ /
{
ññ/ 0
typeof
ññ0 6
(
ññ6 7
TEvent
ññ7 =
)
ññ= >
.
ññ> ?
Name
ññ? C
}
ññC D
$str
ññD L
{
ññL M
JsonConvert
ññM X
.
ññX Y
SerializeObject
ññY h
(
ññh i
telemetryEvent
ññi w
)
ññw x
}
ññx y
"
ññy z
)
ññz {
;
ññ{ |
Cache
óó 
.
óó 
Add
óó 
(
óó 
telemetryEvent
óó $
)
óó$ %
;
óó% &
if
ôô 
(
ôô 
!
ôô 
IsCacheFull
ôô 
(
ôô 
)
ôô 
)
ôô 
return
öö 
;
öö 
SendCachedPayload
úú 
(
úú 
)
úú 
;
úú  
m_Scheduler
ùù 
.
ùù 
CancelAction
ùù $
(
ùù$ %#
SendingLoopScheduleId
ùù% :
)
ùù: ;
;
ùù; <!
ScheduleSendingLoop
ûû 
(
ûû  
)
ûû  !
;
ûû! "
bool
†† 
IsCacheFull
†† 
(
†† 
)
†† 
{
°° 
return
¢¢ 
Cache
¢¢ 
.
¢¢ 
Payload
¢¢ $
.
¢¢$ %
Count
¢¢% *
>=
¢¢+ -
Config
¢¢. 4
.
¢¢4 5&
MaxMetricCountPerPayload
¢¢5 M
;
¢¢M N
}
££ 
}
§§ 	
}
•• 
}¶¶ °
zC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Networking\IUnityWebRequestSender.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
	interface "
IUnityWebRequestSender $
{ 
void 
SendRequest 
( 
UnityWebRequest (
request) 0
,0 1
Action2 8
<8 9

WebRequest9 C
>C D
callbackE M
)M N
;N O
}		 
}

 €]
mC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Utils\TelemetryUtils.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
static		 

class		 
TelemetryUtils		 
{

 
internal 
const 
string  
TelemetryDisabledKey 2
=3 4
$str5 a
;a b
public 
static 
IMetricsFactory % 
CreateMetricsFactory& :
(: ;
IActionScheduler 
	scheduler &
,& '!
IProjectConfiguration( = 
projectConfiguration> R
,R S
ICloudProjectIdT c
cloudProjectIdd r
,r s
IEnvironments 
environments &
)& '
{ 	
if 
( 
IsTelemetryDisabled #
(# $ 
projectConfiguration$ 8
)8 9
)9 :
{ 
return 
new "
DisabledMetricsFactory 1
(1 2
)2 3
;3 4
} 
var 
config 
= !
CreateTelemetryConfig .
(. / 
projectConfiguration/ C
)C D
;D E
var 
cache 
= 
new 
CachedPayload )
<) *
MetricsPayload* 8
>8 9
{ 
Payload 
= 
new 
MetricsPayload ,
{ 
Metrics 
= 
new !
List" &
<& '
Metric' -
>- .
(. /
)/ 0
,0 1

CommonTags 
=  
new! $

Dictionary% /
</ 0
string0 6
,6 7
string8 >
>> ?
(? @
)@ A
,A B
MetricsCommonTags %
=& '
new( +

Dictionary, 6
<6 7
string7 =
,= >
string? E
>E F
(F G
)G H
,H I
} 
, 
} 
; 
var   
cachePersister   
=     
CreateCachePersister  ! 5
<  5 6
MetricsPayload  6 D
>  D E
(  E F
$str  F b
,  b c
Application  d o
.  o p
platform  p x
)  x y
;  y z
var!! 
retryPolicy!! 
=!! 
new!! !)
ExponentialBackOffRetryPolicy!!" ?
(!!? @
)!!@ A
;!!A B
var"" 
requestSender"" 
="" 
new""  #!
UnityWebRequestSender""$ 9
(""9 :
)"": ;
;""; <
var## 
metricsSender## 
=## 
new##  #
TelemetrySender##$ 3
(##3 4
config$$ 
.$$ 
	TargetUrl$$  
,$$  !
config$$" (
.$$( )
ServicePath$$) 4
,$$4 5
	scheduler$$6 ?
,$$? @
retryPolicy$$A L
,$$L M
requestSender$$N [
)$$[ \
;$$\ ]
var%% 
handler%% 
=%% 
new%% 
MetricsHandler%% ,
(%%, -
config%%- 3
,%%3 4
cache%%5 :
,%%: ;
	scheduler%%< E
,%%E F
cachePersister%%G U
,%%U V
metricsSender%%W d
)%%d e
;%%e f
handler&& 
.&& 

Initialize&& 
(&& 
cloudProjectId&& -
,&&- .
environments&&/ ;
)&&; <
;&&< =
return(( 
new(( 
MetricsFactory(( %
(((% &
handler((& -
,((- . 
projectConfiguration((/ C
)((C D
;((D E
})) 	
public,, 
static,, 
IDiagnosticsFactory,, )$
CreateDiagnosticsFactory,,* B
(,,B C
IActionScheduler-- 
	scheduler-- &
,--& '!
IProjectConfiguration--( = 
projectConfiguration--> R
,--R S
ICloudProjectId--T c
cloudProjectId--d r
,--r s
IEnvironments.. 
environments.. &
)..& '
{// 	
if00 
(00 
IsTelemetryDisabled00 #
(00# $ 
projectConfiguration00$ 8
)008 9
)009 :
{11 
return22 
new22 &
DisabledDiagnosticsFactory22 5
(225 6
)226 7
;227 8
}33 
var55 
config55 
=55 !
CreateTelemetryConfig55 .
(55. / 
projectConfiguration55/ C
)55C D
;55D E
var66 
cache66 
=66 
new66 
CachedPayload66 )
<66) *
DiagnosticsPayload66* <
>66< =
{77 
Payload88 
=88 
new88 
DiagnosticsPayload88 0
{99 
Diagnostics:: 
=::  !
new::" %
List::& *
<::* +

Diagnostic::+ 5
>::5 6
(::6 7
)::7 8
,::8 9

CommonTags;; 
=;;  
new;;! $

Dictionary;;% /
<;;/ 0
string;;0 6
,;;6 7
string;;8 >
>;;> ?
(;;? @
);;@ A
,;;A B!
DiagnosticsCommonTags<< )
=<<* +
new<<, /

Dictionary<<0 :
<<<: ;
string<<; A
,<<A B
string<<C I
><<I J
(<<J K
)<<K L
,<<L M
}== 
,== 
}>> 
;>> 
var?? 
cachePersister?? 
=??   
CreateCachePersister??! 5
<??5 6
DiagnosticsPayload??6 H
>??H I
(??I J
$str??J j
,??j k
Application??l w
.??w x
platform	??x Ä
)
??Ä Å
;
??Å Ç
var@@ 
retryPolicy@@ 
=@@ 
new@@ !)
ExponentialBackOffRetryPolicy@@" ?
(@@? @
)@@@ A
;@@A B
varAA 
requestSenderAA 
=AA 
newAA  #!
UnityWebRequestSenderAA$ 9
(AA9 :
)AA: ;
;AA; <
varBB 
metricsSenderBB 
=BB 
newBB  #
TelemetrySenderBB$ 3
(BB3 4
configCC 
.CC 
	TargetUrlCC  
,CC  !
configCC" (
.CC( )
ServicePathCC) 4
,CC4 5
	schedulerCC6 ?
,CC? @
retryPolicyCCA L
,CCL M
requestSenderCCN [
)CC[ \
;CC\ ]
varDD 
handlerDD 
=DD 
newDD 
DiagnosticsHandlerDD 0
(DD0 1
configEE 
,EE 
cacheEE 
,EE 
	schedulerEE (
,EE( )
cachePersisterEE* 8
,EE8 9
metricsSenderEE: G
)EEG H
;EEH I
handlerFF 
.FF 

InitializeFF 
(FF 
cloudProjectIdFF -
,FF- .
environmentsFF/ ;
)FF; <
;FF< =
returnHH 
newHH 
DiagnosticsFactoryHH )
(HH) *
handlerHH* 1
,HH1 2 
projectConfigurationHH3 G
)HHG H
;HHH I
}II 	
staticKK 
boolKK 
IsTelemetryDisabledKK '
(KK' (!
IProjectConfigurationKK( = 
projectConfigurationKK> R
)KKR S
=>LL  
projectConfigurationLL #
.LL# $
GetBoolLL$ +
(LL+ , 
TelemetryDisabledKeyLL, @
)LL@ A
;LLA B
internalNN 
staticNN 
ICachePersisterNN '
<NN' (
TPayloadNN( 0
>NN0 1 
CreateCachePersisterNN2 F
<NNF G
TPayloadNNG O
>NNO P
(NNP Q
stringOO 
fileNameOO 
,OO 
RuntimePlatformOO ,
platformOO- 5
)OO5 6
wherePP 
TPayloadPP 
:PP 
ITelemetryPayloadPP .
{QQ 	
ifRR 
(RR 
platformRR 
==RR 
RuntimePlatformRR +
.RR+ ,
SwitchRR, 2
)RR2 3
returnSS 
newSS "
DisabledCachePersisterSS 1
<SS1 2
TPayloadSS2 :
>SS: ;
(SS; <
)SS< =
;SS= >
returnUU 
newUU 
FileCachePersisterUU )
<UU) *
TPayloadUU* 2
>UU2 3
(UU3 4
fileNameUU4 <
)UU< =
;UU= >
}VV 	
internalXX 
staticXX 
TelemetryConfigXX '!
CreateTelemetryConfigXX( =
(XX= >!
IProjectConfigurationXX> S 
projectConfigurationXXT h
)XXh i
{YY 	
constZZ 
stringZZ 
defaultTargetUrlZZ )
=ZZ* +
$strZZ, W
;ZZW X
const[[ 
string[[ 
defaultServicePath[[ +
=[[, -
$str[[. 9
;[[9 :
const\\ 
int\\ +
defaultPayloadExpirationSeconds\\ 5
=\\6 7
$num\\8 <
;\\< =
const]] 
int]] 3
'defaultPayloadSendingMaxIntervalSeconds]] =
=]]> ?
$num]]@ C
;]]C D
const^^ 
int^^ 3
'defaultSafetyPersistenceIntervalSeconds^^ =
=^^> ?
$num^^@ C
;^^C D
const__ 
int__ +
defaultMaxMetricCountPerPayload__ 5
=__6 7
$num__8 <
;__< =
varaa 
configaa 
=aa 
newaa 
TelemetryConfigaa ,
{bb 
	TargetUrlcc 
=cc  
projectConfigurationcc 0
.cc0 1
	GetStringcc1 :
(cc: ;
TelemetryConfigKeyscc; N
.ccN O
	TargetUrlccO X
,ccX Y
defaultTargetUrlccZ j
)ccj k
,cck l
ServicePathdd 
=dd  
projectConfigurationdd 2
.dd2 3
	GetStringdd3 <
(dd< =
TelemetryConfigKeysdd= P
.ddP Q
ServicePathddQ \
,dd\ ]
defaultServicePathdd^ p
)ddp q
,ddq r$
PayloadExpirationSecondsee (
=ee) * 
projectConfigurationee+ ?
.ee? @
GetIntee@ F
(eeF G
TelemetryConfigKeyseeG Z
.eeZ [$
PayloadExpirationSecondsee[ s
,ees t,
defaultPayloadExpirationSeconds	eeu î
)
eeî ï
,
eeï ñ,
 PayloadSendingMaxIntervalSecondsff 0
=ff1 2 
projectConfigurationff3 G
.ffG H
GetIntffH N
(ffN O
TelemetryConfigKeysffO b
.ffb c-
 PayloadSendingMaxIntervalSeconds	ffc É
,
ffÉ Ñ5
'defaultPayloadSendingMaxIntervalSeconds
ffÖ ¨
)
ff¨ ≠
,
ff≠ Æ,
 SafetyPersistenceIntervalSecondsgg 0
=gg1 2 
projectConfigurationgg3 G
.ggG H
GetIntggH N
(ggN O
TelemetryConfigKeysggO b
.ggb c-
 SafetyPersistenceIntervalSeconds	ggc É
,
ggÉ Ñ5
'defaultSafetyPersistenceIntervalSeconds
ggÖ ¨
)
gg¨ ≠
,
gg≠ Æ$
MaxMetricCountPerPayloadhh (
=hh) * 
projectConfigurationhh+ ?
.hh? @
GetInthh@ F
(hhF G
TelemetryConfigKeyshhG Z
.hhZ [$
MaxMetricCountPerPayloadhh[ s
,hhs t,
defaultMaxMetricCountPerPayload	hhu î
)
hhî ï
,
hhï ñ
}ii 
;ii 
returnjj 
configjj 
;jj 
}kk 	
}ll 
}mm Ÿ
rC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Telemetry\Utils\TelemetryConfigKeys.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
static 

class 
TelemetryConfigKeys $
{ 
const 
string 
	k_BaseKey 
=  
$str! E
;E F
public 
const 
string 
	TargetUrl %
=& '
	k_BaseKey( 1
+2 3
$str4 @
;@ A
public		 
const		 
string		 
ServicePath		 '
=		( )
	k_BaseKey		* 3
+		4 5
$str		6 D
;		D E
public 
const 
string $
PayloadExpirationSeconds 4
=5 6
	k_BaseKey7 @
+A B
$strC _
;_ `
public 
const 
string ,
 PayloadSendingMaxIntervalSeconds <
== >
	k_BaseKey? H
+I J
$strK q
;q r
public 
const 
string ,
 SafetyPersistenceIntervalSeconds <
== >
	k_BaseKey? H
+I J
$strK p
;p q
public 
const 
string $
MaxMetricCountPerPayload 4
=5 6
	k_BaseKey7 @
+A B
$strC a
;a b
} 
} 