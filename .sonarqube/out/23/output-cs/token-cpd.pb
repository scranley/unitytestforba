ä
oC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\Scheduler\TaskSchedulerThreaded.cs
	namespace 	
Unity
 
. 
Services 
. 
Relay 
. 
	Scheduler (
{		 
public 
sealed 
class !
TaskSchedulerThreaded *
:+ ,
TaskScheduler- :
{ 
private 
Queue 
< 
Action 
> !
m_mainThreadTaskQueue 3
=4 5
new6 9
Queue: ?
<? @
Action@ F
>F G
(G H
)H I
;I J
private 
object 
m_lock 
= 
new  #
object$ *
(* +
)+ ,
;, -
private 
Thread 
m_mainThread #
=$ %
null& *
;* +
void 
Start 
( 
) 
{ 	
m_mainThread 
= 
System !
.! "
	Threading" +
.+ ,
Thread, 2
.2 3
CurrentThread3 @
;@ A
}   	
public'' 
override'' 
bool'' 
IsMainThread'' )
('') *
)''* +
{(( 	
return)) 	
())
 
m_mainThread)) 
==)) 
System)) !
.))! "
	Threading))" +
.))+ ,
Thread)), 2
.))2 3
CurrentThread))3 @
)))@ A
;))A B
}** 	
public11 
override11	 
void11 "
ScheduleBackgroundTask11 -
(11- .
Action11. 4
task115 9
)119 :
{22 	

ThreadPool33 
.33 
QueueUserWorkItem33 (
(33( )
(33) *
object33* 0
state331 6
)336 7
=>338 :
{44 
task55 
(55 
)55 
;55 
}66 
)66 
;66 
}77 	
public?? 
override??	 
void?? "
ScheduleMainThreadTask?? -
(??- .
Action??. 4
task??5 9
)??9 :
{@@ 	
lockAA 
(AA 
m_lockAA 
)AA 
{BB !
m_mainThreadTaskQueueCC %
.CC% &
EnqueueCC& -
(CC- .
taskCC. 2
)CC2 3
;CC3 4
}DD 
}EE 	
voidKK 
UpdateKK 
(KK 
)KK 
{LL 	
QueueMM 
<MM 	
ActionMM	 
>MM 
	taskQueueMM 
=MM 
nullMM !
;MM! "
lockNN 
(NN 
m_lockNN 
)NN 
{OO 
	taskQueuePP 
=PP 
newPP 
QueuePP 
<PP 
ActionPP  
>PP  !
(PP! "!
m_mainThreadTaskQueuePP" 7
)PP7 8
;PP8 9!
m_mainThreadTaskQueueQQ 
.QQ 
ClearQQ 
(QQ  
)QQ  !
;QQ! "
}RR 
foreachTT 
(TT 
ActionTT 
actionTT "
inTT# %
	taskQueueTT& /
)TT/ 0
{UU 
actionVV 
(VV 
)VV 
;VV 
}WW 
}XX 	
}YY 
}ZZ £ 
qC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\SDK\Exceptions\ApiErrorsExtenders.cs
	namespace 	
Unity
 
. 
Services 
. 
Relay 
{ 
internal 
static 
class 
ApiErrorExtender *
{ 
public		 
static		  
RelayExceptionReason		 *
GetExceptionReason		+ =
(		= >
this		> B
ErrorResponseBody		C T
error		U Z
)		Z [
{

 	 
RelayExceptionReason  
reason! '
=( ) 
RelayExceptionReason* >
.> ?
Unknown? F
;F G
if 
( 
error 
. 
Code 
!= 
( 
int "
)" # 
RelayExceptionReason# 7
.7 8
NoError8 ?
)? @
{ 
if 
( 
Enum 
. 
	IsDefined "
(" #
typeof# )
() * 
RelayExceptionReason* >
)> ?
,? @
errorA F
.F G
CodeG K
)K L
)L M
{ 
reason 
= 
(  
RelayExceptionReason 2
)2 3
error3 8
.8 9
Code9 =
;= >
} 
} 
else 
if 
( 
Enum 
. 
	IsDefined #
(# $
typeof$ *
(* + 
RelayExceptionReason+ ?
)? @
,@ A
errorB G
.G H
StatusH N
)N O
)O P
{ 
reason 
= 
(  
RelayExceptionReason .
). /
error/ 4
.4 5
Status5 ;
;; <
} 
return 
reason 
; 
} 	
public 
static  
RelayExceptionReason *
GetExceptionReason+ =
(= >
this> B
HttpClientResponseC U
errorV [
)[ \
{ 	 
RelayExceptionReason  
reason! '
=( ) 
RelayExceptionReason* >
.> ?
Unknown? F
;F G
if   
(   
error   
.   
IsHttpError   !
)  ! "
{!! 
int## 

mappedCode## 
=##  
(##! "
int##" %
)##% &
error##& +
.##+ ,

StatusCode##, 6
+##7 8
(##9 :
int##: =
)##= > 
RelayExceptionReason##> R
.##R S
Min##S V
;##V W
if$$ 
($$ 
Enum$$ 
.$$ 
	IsDefined$$ "
($$" #
typeof$$# )
($$) * 
RelayExceptionReason$$* >
)$$> ?
,$$? @

mappedCode$$A K
)$$K L
)$$L M
{%% 
reason&& 
=&& 
(&&  
RelayExceptionReason&& 2
)&&2 3

mappedCode&&3 =
;&&= >
}'' 
}(( 
else)) 
if)) 
()) 
error)) 
.)) 
IsNetworkError)) )
)))) *
{** 
reason++ 
=++  
RelayExceptionReason++ -
.++- .
NetworkError++. :
;++: ;
},, 
return.. 
reason.. 
;.. 
}// 	
public11 
static11 
string11 
GetExceptionMessage11 0
(110 1
this111 5
ErrorResponseBody116 G
error11H M
)11M N
{22 	
return33 
$"33 
{33 
error33 
.33 
Title33 !
}33! "
$str33" $
{33$ %
error33% *
?33* +
.33+ ,
Detail33, 2
}332 3
"333 4
;334 5
}44 	
}55 
}66 ÷"
sC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\SDK\Exceptions\RelayExceptionReason.cs
	namespace 	
Unity
 
. 
Services 
. 
Relay 
{ 
public 

enum  
RelayExceptionReason $
{ 
Min 
= 
$num 
, 
NoError 
= 
$num 
, 
InvalidRequest 
= 
$num 
, 
InactiveProject 
= 
$num 
,  
RegionNotFound 
= 
$num 
, 
AllocationNotFound!! 
=!! 
$num!! "
,!!" #
JoinCodeNotFound%% 
=%% 
$num%%  
,%%  !
NoSuitableRelay)) 
=)) 
$num)) 
,))  
InvalidArgument.. 
=.. 
$num.. 
,..  
Unauthorized22 
=22 
$num22 
,22 
PaymentRequired66 
=66 
$num66 
,66  
	Forbidden:: 
=:: 
$num:: 
,:: 
EntityNotFound>> 
=>> 
$num>> 
,>> 
MethodNotAllowedBB 
=BB 
$numBB  
,BB  !
NotAcceptableFF 
=FF 
$numFF 
,FF '
ProxyAuthenticationRequiredJJ #
=JJ$ %
$numJJ& +
,JJ+ ,
RequestTimeOutNN 
=NN 
$numNN 
,NN 
ConflictRR 
=RR 
$numRR 
,RR 
GoneVV 
=VV 
$numVV 
,VV 
LengthRequiredZZ 
=ZZ 
$numZZ 
,ZZ 
PreconditionFailed^^ 
=^^ 
$num^^ "
,^^" #!
RequestEntityTooLargebb 
=bb 
$numbb  %
,bb% &
RequestUriTooLongff 
=ff 
$numff !
,ff! " 
UnsupportedMediaTypejj 
=jj 
$numjj $
,jj$ %
RangeNotSatisfiablenn 
=nn 
$numnn #
,nn# $
ExpectationFailedrr 
=rr 
$numrr !
,rr! "
Teapotvv 
=vv 
$numvv 
,vv 
Misdirectedzz 
=zz 
$numzz 
,zz $
UnprocessableTransaction~~  
=~~! "
$num~~# (
,~~( )
Locked
ÇÇ 
=
ÇÇ 
$num
ÇÇ 
,
ÇÇ 
FailedDependency
ÜÜ 
=
ÜÜ 
$num
ÜÜ  
,
ÜÜ  !
TooEarly
ää 
=
ää 
$num
ää 
,
ää 
UpgradeRequired
éé 
=
éé 
$num
éé 
,
éé  "
PreconditionRequired
íí 
=
íí 
$num
íí $
,
íí$ %
RateLimited
ññ 
=
ññ 
$num
ññ 
,
ññ )
RequestHeaderFieldsTooLarge
öö #
=
öö$ %
$num
öö& +
,
öö+ ,(
UnavailableForLegalReasons
ûû "
=
ûû# $
$num
ûû% *
,
ûû* +!
InternalServerError
¢¢ 
=
¢¢ 
$num
¢¢ #
,
¢¢# $
NotImplemented
¶¶ 
=
¶¶ 
$num
¶¶ 
,
¶¶ 

BadGateway
™™ 
=
™™ 
$num
™™ 
,
™™  
ServiceUnavailable
ÆÆ 
=
ÆÆ 
$num
ÆÆ "
,
ÆÆ" #
GatewayTimeout
≤≤ 
=
≤≤ 
$num
≤≤ 
,
≤≤ %
HttpVersionNotSupported
∂∂ 
=
∂∂  !
$num
∂∂" '
,
∂∂' (#
VariantAlsoNegotiates
∫∫ 
=
∫∫ 
$num
∫∫  %
,
∫∫% &!
InsufficientStorage
ææ 
=
ææ 
$num
ææ #
,
ææ# $
LoopDetected
¬¬ 
=
¬¬ 
$num
¬¬ 
,
¬¬ 
NotExtended
∆∆ 
=
∆∆ 
$num
∆∆ 
,
∆∆ +
NetworkAuthenticationRequired
   %
=
  & '
$num
  ( -
,
  - .
NetworkError
œœ 
=
œœ 
$num
œœ 
,
œœ 
Unknown
”” 
=
”” 
$num
”” 
,
”” 
Max
◊◊ 
=
◊◊ 
$num
◊◊ 
}
ÿÿ 
}ŸŸ Ì
`C:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\SDK\RelayService.cs
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
$str 8
)8 9
]9 :
	namespace 	
Unity
 
. 
Services 
. 
Relay 
{ 
public 

static 
class 
RelayService $
{ 
private 
static 
IRelayService $
service% ,
;, -
public 
static 
IRelayService #
Instance$ ,
{ 	
get 
{ 
if 
( 
service 
!= 
null #
)# $
{ 
return 
service "
;" #
} 
var 

serviceSdk 
=  
RelayServiceSdk! 0
.0 1
Instance1 9
;9 :
if 
( 

serviceSdk 
== !
null" &
)& '
{ 
throw 
new %
InvalidOperationException 7
(7 8
$str	8 ¨
)
¨ ≠
;
≠ Æ
}   
service"" 
="" 
new"" 
WrappedRelayService"" 1
(""1 2

serviceSdk""2 <
)""< =
;""= >
return## 
service## 
;## 
}$$ 
}%% 	
}&& 
public,, 

static,, 
class,, 
Relay,, 
{-- 
public22 
static22 
IRelayServiceSDK22 &
Instance22' /
{220 1
get222 5
{226 7
return228 >
(22? @
IRelayServiceSDK22@ P
)22P Q
RelayService22R ^
.22^ _
Instance22_ g
;22g h
}22i j
}22k l
}33 
}44 ‹
gC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\Scheduler\TaskScheduler.cs
	namespace 	
Unity
 
. 
Services 
. 
Relay 
. 
	Scheduler (
{		 
public 
abstract 
class 
TaskScheduler $
:% &
MonoBehaviour' 4
{ 
public 
abstract	 
void "
ScheduleBackgroundTask -
(- .
Action. 4
task5 9
)9 :
;: ;
public   
abstract  	 
bool   
IsMainThread   #
(  # $
)  $ %
;  % &
public(( 
abstract((	 
void(( "
ScheduleMainThreadTask(( -
(((- .
Action((. 4
task((5 9
)((9 :
;((: ;
public// 
void//	 #
ScheduleOrExecuteOnMain// %
(//% &
Action//& ,
action//- 3
)//3 4
{00 
if11 
(11 
IsMainThread11 
(11 
)11 
)11 
{22 
action33 

?33
 
.33 
Invoke33 
(33 
)33 
;33 
}44 
else55 
{66 "
ScheduleMainThreadTask77 
(77 
action77 !
)77! "
;77" #
}88 
}99 
}:: 
};; –í
gC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\SDK\WrappedRelayService.cs
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
 
Relay

 
{ 
internal 
class 
WrappedRelayService &
:' (
IRelayService) 6
,6 7
IRelayServiceSDK8 H
,H I)
IRelayServiceSDKConfigurationJ g
{ 
internal 
IRelayServiceSdk !
m_RelayService" 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
private 
const 
string 
QosRelayServiceName 0
=1 2
$str3 :
;: ;
internal 
WrappedRelayService $
($ %
IRelayServiceSdk% 5
relayService6 B
)B C
{ 	
m_RelayService 
= 
relayService )
;) *
} 	
public 
async 
Task 
< 

Allocation $
>$ %!
CreateAllocationAsync& ;
(; <
int< ?
maxConnections@ N
,N O
stringP V
regionW ]
=^ _
null` d
)d e
{ 	
EnsureSignedIn   
(   
)   
;   
if"" 
("" 
maxConnections"" 
<="" !
$num""" #
)""# $
{## 
throw$$ 
new$$ 
ArgumentException$$ +
($$+ ,
$str$$, u
)$$u v
;$$v w
}%% 
if'' 
('' 
m_RelayService'' 
.'' 

QosResults'' )
==''* ,
null''- 1
)''1 2
{(( 
throw)) 
new)) 
	Exception)) #
())# $
$str))$ n
)))n o
;))o p
}** 
if++ 
(++ 
string++ 
.++ 
IsNullOrEmpty++ $
(++$ %
region++% +
)+++ ,
)++, -
{,, 
try-- 
{.. 
var// 
regions// 
=//  !
(//" #
await//# (
ListRegionsAsync//) 9
(//9 :
)//: ;
)//; <
.//< =
Select//= C
(//C D
r//D E
=>//F H
r//I J
.//J K
Id//K M
)//M N
.//N O
ToList//O U
(//U V
)//V W
;//W X
var00 

qosResults00 "
=00# $
await11 
m_RelayService11 ,
.11, -

QosResults11- 7
.117 8$
GetSortedQosResultsAsync118 P
(11P Q
QosRelayServiceName11Q d
,11d e
regions11f m
)11m n
;11n o
if33 
(33 

qosResults33 "
.33" #
Any33# &
(33& '
)33' (
)33( )
{44 
region55 
=55  

qosResults55! +
[55+ ,
$num55, -
]55- .
.55. /
Region55/ 5
;555 6
Debug66 
.66 
Log66 !
(66! "
$"66" $
$str66$ 3
{663 4
region664 :
}66: ;
"66; <
)66< =
;66= >
}77 
}88 
catch99 
(99 
	Exception99  
ex99! #
)99# $
{:: 
Debug;; 
.;; 

LogWarning;; $
(;;$ %
$";;% '
$str;;' [
{;;[ \
Environment;;\ g
.;;g h
NewLine;;h o
};;o p
";;p q
+;;r s
$"<< 
$str<< -
{<<- .
ex<<. 0
.<<0 1
GetType<<1 8
(<<8 9
)<<9 :
.<<: ;
Name<<; ?
}<<? @
$str<<@ K
{<<K L
ex<<L N
.<<N O
Message<<O V
}<<V W
"<<W X
)<<X Y
;<<Y Z
}== 
}>> 
try@@ 
{AA 
varBB 
responseBB 
=BB 
awaitBB $
m_RelayServiceBB% 3
.BB3 4
AllocationsApiBB4 B
.BBB C!
CreateAllocationAsyncBBC X
(BBX Y
newCC 
RelayAllocationsCC (
.CC( )#
CreateAllocationRequestCC) @
(CC@ A
newCCA D
AllocationRequestCCE V
(CCV W
maxConnectionsCCW e
,CCe f
regionCCg m
)CCm n
)CCn o
,CCo p
m_RelayServiceDD "
.DD" #
ConfigurationDD# 0
)DD0 1
;DD1 2
returnEE 
responseEE 
.EE  
ResultEE  &
.EE& '
DataEE' +
.EE+ ,

AllocationEE, 6
;EE6 7
}FF 
catchGG 
(GG 
HttpExceptionGG  
<GG  !
ErrorResponseBodyGG! 2
>GG2 3
eGG4 5
)GG5 6
{HH 
throwII 
newII !
RelayServiceExceptionII /
(II/ 0
eII0 1
.II1 2
ActualErrorII2 =
.II= >
GetExceptionReasonII> P
(IIP Q
)IIQ R
,IIR S
eIIT U
.IIU V
ActualErrorIIV a
.IIa b
GetExceptionMessageIIb u
(IIu v
)IIv w
,IIw x
eJJ 
)JJ 
;JJ 
}KK 
catchLL 
(LL 
HttpExceptionLL  
eLL! "
)LL" #
{MM 
ifNN 
(NN 
eNN 
.NN 
ResponseNN 
.NN 
IsHttpErrorNN *
)NN* +
{OO 
throwPP 
newPP !
RelayServiceExceptionPP 3
(PP3 4
ePP4 5
.PP5 6
ResponsePP6 >
.PP> ?
GetExceptionReasonPP? Q
(PPQ R
)PPR S
,PPS T
ePPU V
.PPV W
ResponsePPW _
.PP_ `
ErrorMessagePP` l
,PPl m
ePPn o
)PPo p
;PPp q
}QQ 
ifSS 
(SS 
eSS 
.SS 
ResponseSS 
.SS 
IsNetworkErrorSS -
)SS- .
{TT 
throwUU 
newUU !
RelayServiceExceptionUU 3
(UU3 4 
RelayExceptionReasonUU4 H
.UUH I
NetworkErrorUUI U
,UUU V
eUUW X
.UUX Y
ResponseUUY a
.UUa b
ErrorMessageUUb n
)UUn o
;UUo p
}VV 
throwXX 
newXX "
RequestFailedExceptionXX 0
(XX0 1
(XX1 2
intXX2 5
)XX5 6 
RelayExceptionReasonXX7 K
.XXK L
UnknownXXL S
,XXS T
$strXXU l
,XXl m
eXXn o
)XXo p
;XXp q
}YY 
}ZZ 	
public`` 
async`` 
Task`` 
<`` 
string``  
>``  !
GetJoinCodeAsync``" 2
(``2 3
Guid``3 7
allocationId``8 D
)``D E
{aa 	
EnsureSignedInbb 
(bb 
)bb 
;bb 
ifdd 
(dd 
allocationIddd 
==dd 
nulldd  $
||dd% '
allocationIddd( 4
==dd5 7
Guiddd8 <
.dd< =
Emptydd= B
)ddB C
{ee 
throwff 
newff !
ArgumentNullExceptionff /
(ff/ 0
$strff0 W
)ffW X
;ffX Y
}gg 
tryii 
{jj 
varkk 
responsekk 
=kk 
awaitkk $
m_RelayServicekk% 3
.kk3 4
AllocationsApikk4 B
.kkB C
CreateJoincodeAsynckkC V
(kkV W
newll 
RelayAllocationsll (
.ll( )!
CreateJoincodeRequestll) >
(ll> ?
newll? B
JoinCodeRequestllC R
(llR S
allocationIdllS _
)ll_ `
)ll` a
,lla b
m_RelayServicemm "
.mm" #
Configurationmm# 0
)mm0 1
;mm1 2
returnnn 
responsenn 
.nn  
Resultnn  &
.nn& '
Datann' +
.nn+ ,
JoinCodenn, 4
;nn4 5
}oo 
catchpp 
(pp 
HttpExceptionpp  
<pp  !
ErrorResponseBodypp! 2
>pp2 3
epp4 5
)pp5 6
{qq 
throwrr 
newrr !
RelayServiceExceptionrr /
(rr/ 0
err0 1
.rr1 2
ActualErrorrr2 =
.rr= >
GetExceptionReasonrr> P
(rrP Q
)rrQ R
,rrR S
errT U
.rrU V
ActualErrorrrV a
.rra b
GetExceptionMessagerrb u
(rru v
)rrv w
,rrw x
ess 
)ss 
;ss 
}tt 
catchuu 
(uu 
HttpExceptionuu  
euu! "
)uu" #
{vv 
ifww 
(ww 
eww 
.ww 
Responseww 
.ww 
IsHttpErrorww *
)ww* +
{xx 
throwyy 
newyy !
RelayServiceExceptionyy 3
(yy3 4
eyy4 5
.yy5 6
Responseyy6 >
.yy> ?
GetExceptionReasonyy? Q
(yyQ R
)yyR S
,yyS T
eyyU V
.yyV W
ResponseyyW _
.yy_ `
ErrorMessageyy` l
,yyl m
eyyn o
)yyo p
;yyp q
}zz 
if|| 
(|| 
e|| 
.|| 
Response|| 
.|| 
IsNetworkError|| -
)||- .
{}} 
throw~~ 
new~~ !
RelayServiceException~~ 3
(~~3 4 
RelayExceptionReason~~4 H
.~~H I
NetworkError~~I U
,~~U V
e~~W X
.~~X Y
Response~~Y a
.~~a b
ErrorMessage~~b n
)~~n o
;~~o p
} 
throw
ÅÅ 
new
ÅÅ $
RequestFailedException
ÅÅ 0
(
ÅÅ0 1
(
ÅÅ1 2
int
ÅÅ2 5
)
ÅÅ5 6"
RelayExceptionReason
ÅÅ7 K
.
ÅÅK L
Unknown
ÅÅL S
,
ÅÅS T
$str
ÅÅU l
,
ÅÅl m
e
ÅÅn o
)
ÅÅo p
;
ÅÅp q
}
ÇÇ 
}
ÉÉ 	
public
ââ 
async
ââ 
Task
ââ 
<
ââ 
JoinAllocation
ââ (
>
ââ( )!
JoinAllocationAsync
ââ* =
(
ââ= >
string
ââ> D
joinCode
ââE M
)
ââM N
{
ää 	
EnsureSignedIn
ãã 
(
ãã 
)
ãã 
;
ãã 
if
çç 
(
çç 
string
çç 
.
çç  
IsNullOrWhiteSpace
çç )
(
çç) *
joinCode
çç* 2
)
çç2 3
)
çç3 4
{
éé 
throw
èè 
new
èè #
ArgumentNullException
èè /
(
èè/ 0
$str
êê _
)
êê_ `
;
êê` a
}
ëë 
try
ìì 
{
îî 
var
ïï 
response
ïï 
=
ïï 
await
ïï $
m_RelayService
ïï% 3
.
ïï3 4
AllocationsApi
ïï4 B
.
ïïB C
JoinRelayAsync
ïïC Q
(
ïïQ R
new
ññ 
RelayAllocations
ññ (
.
ññ( )
JoinRelayRequest
ññ) 9
(
ññ9 :
new
ññ: =
JoinRequest
ññ> I
(
ññI J
joinCode
ññJ R
)
ññR S
)
ññS T
,
ññT U
m_RelayService
ññV d
.
ññd e
Configuration
ññe r
)
ññr s
;
ññs t
return
òò 
response
òò 
.
òò  
Result
òò  &
.
òò& '
Data
òò' +
.
òò+ ,

Allocation
òò, 6
;
òò6 7
}
ôô 
catch
öö 
(
öö 
HttpException
öö  
<
öö  !
ErrorResponseBody
öö! 2
>
öö2 3
e
öö4 5
)
öö5 6
{
õõ 
throw
úú 
new
úú #
RelayServiceException
úú /
(
úú/ 0
e
úú0 1
.
úú1 2
ActualError
úú2 =
.
úú= > 
GetExceptionReason
úú> P
(
úúP Q
)
úúQ R
,
úúR S
e
úúT U
.
úúU V
ActualError
úúV a
.
úúa b!
GetExceptionMessage
úúb u
(
úúu v
)
úúv w
,
úúw x
e
ùù 
)
ùù 
;
ùù 
}
ûû 
catch
üü 
(
üü 
HttpException
üü  
e
üü! "
)
üü" #
{
†† 
if
°° 
(
°° 
e
°° 
.
°° 
Response
°° 
.
°° 
IsHttpError
°° *
)
°°* +
{
¢¢ 
throw
££ 
new
££ #
RelayServiceException
££ 3
(
££3 4
e
££4 5
.
££5 6
Response
££6 >
.
££> ? 
GetExceptionReason
££? Q
(
££Q R
)
££R S
,
££S T
e
££U V
.
££V W
Response
££W _
.
££_ `
ErrorMessage
££` l
,
££l m
e
££n o
)
££o p
;
££p q
}
§§ 
if
¶¶ 
(
¶¶ 
e
¶¶ 
.
¶¶ 
Response
¶¶ 
.
¶¶ 
IsNetworkError
¶¶ -
)
¶¶- .
{
ßß 
throw
®® 
new
®® #
RelayServiceException
®® 3
(
®®3 4"
RelayExceptionReason
®®4 H
.
®®H I
NetworkError
®®I U
,
®®U V
e
®®W X
.
®®X Y
Response
®®Y a
.
®®a b
ErrorMessage
®®b n
)
®®n o
;
®®o p
}
©© 
throw
´´ 
new
´´ $
RequestFailedException
´´ 0
(
´´0 1
(
´´1 2
int
´´2 5
)
´´5 6"
RelayExceptionReason
´´7 K
.
´´K L
Unknown
´´L S
,
´´S T
$str
´´U l
,
´´l m
e
´´n o
)
´´o p
;
´´p q
}
¨¨ 
}
≠≠ 	
public
≤≤ 
async
≤≤ 
Task
≤≤ 
<
≤≤ 
List
≤≤ 
<
≤≤ 
Region
≤≤ %
>
≤≤% &
>
≤≤& '
ListRegionsAsync
≤≤( 8
(
≤≤8 9
)
≤≤9 :
{
≥≥ 	
EnsureSignedIn
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 
try
∂∂ 
{
∑∑ 
var
∏∏ 
response
∏∏ 
=
∏∏ 
await
ππ 
m_RelayService
ππ (
.
ππ( )
AllocationsApi
ππ) 7
.
ππ7 8
ListRegionsAsync
ππ8 H
(
ππH I
new
ππI L
RelayAllocations
ππM ]
.
ππ] ^ 
ListRegionsRequest
ππ^ p
(
ππp q
)
ππq r
,
ππr s
m_RelayService
∫∫ &
.
∫∫& '
Configuration
∫∫' 4
)
∫∫4 5
;
∫∫5 6
return
ºº 
response
ºº 
.
ºº  
Result
ºº  &
.
ºº& '
Data
ºº' +
.
ºº+ ,
Regions
ºº, 3
;
ºº3 4
}
ΩΩ 
catch
ææ 
(
ææ 
HttpException
ææ  
<
ææ  !
ErrorResponseBody
ææ! 2
>
ææ2 3
e
ææ4 5
)
ææ5 6
{
øø 
throw
¿¿ 
new
¿¿ #
RelayServiceException
¿¿ /
(
¿¿/ 0
e
¿¿0 1
.
¿¿1 2
ActualError
¿¿2 =
.
¿¿= > 
GetExceptionReason
¿¿> P
(
¿¿P Q
)
¿¿Q R
,
¿¿R S
e
¿¿T U
.
¿¿U V
ActualError
¿¿V a
.
¿¿a b!
GetExceptionMessage
¿¿b u
(
¿¿u v
)
¿¿v w
,
¿¿w x
e
¡¡ 
)
¡¡ 
;
¡¡ 
}
¬¬ 
catch
√√ 
(
√√ 
HttpException
√√  
e
√√! "
)
√√" #
{
ƒƒ 
if
≈≈ 
(
≈≈ 
e
≈≈ 
.
≈≈ 
Response
≈≈ 
.
≈≈ 
IsHttpError
≈≈ *
)
≈≈* +
{
∆∆ 
throw
«« 
new
«« #
RelayServiceException
«« 3
(
««3 4
e
««4 5
.
««5 6
Response
««6 >
.
««> ? 
GetExceptionReason
««? Q
(
««Q R
)
««R S
,
««S T
e
««U V
.
««V W
Response
««W _
.
««_ `
ErrorMessage
««` l
,
««l m
e
««n o
)
««o p
;
««p q
}
»» 
if
   
(
   
e
   
.
   
Response
   
.
   
IsNetworkError
   -
)
  - .
{
ÀÀ 
throw
ÃÃ 
new
ÃÃ #
RelayServiceException
ÃÃ 3
(
ÃÃ3 4"
RelayExceptionReason
ÃÃ4 H
.
ÃÃH I
NetworkError
ÃÃI U
,
ÃÃU V
e
ÃÃW X
.
ÃÃX Y
Response
ÃÃY a
.
ÃÃa b
ErrorMessage
ÃÃb n
)
ÃÃn o
;
ÃÃo p
}
ÕÕ 
throw
œœ 
new
œœ $
RequestFailedException
œœ 0
(
œœ0 1
(
œœ1 2
int
œœ2 5
)
œœ5 6"
RelayExceptionReason
œœ7 K
.
œœK L
Unknown
œœL S
,
œœS T
$str
œœU l
,
œœl m
e
œœn o
)
œœo p
;
œœp q
}
–– 
}
—— 	
public
”” 
void
”” +
SetAllocationsServiceBasePath
”” 1
(
””1 2
string
””2 8!
allocationsBasePath
””9 L
)
””L M
{
‘‘ 	
this
’’ 
.
’’ 
m_RelayService
’’ 
.
’’  
Configuration
’’  -
.
’’- .
BasePath
’’. 6
=
’’7 8!
allocationsBasePath
’’9 L
;
’’L M
}
÷÷ 	
private
ÿÿ 
void
ÿÿ 
EnsureSignedIn
ÿÿ #
(
ÿÿ# $
)
ÿÿ$ %
{
ŸŸ 	
if
⁄⁄ 
(
⁄⁄ 
m_RelayService
⁄⁄ 
.
⁄⁄ 
AccessToken
⁄⁄ *
.
⁄⁄* +
AccessToken
⁄⁄+ 6
==
⁄⁄7 9
null
⁄⁄: >
)
⁄⁄> ?
{
€€ 
throw
‹‹ 
new
‹‹ #
RelayServiceException
‹‹ /
(
‹‹/ 0"
RelayExceptionReason
‹‹0 D
.
‹‹D E
Unauthorized
‹‹E Q
,
‹‹Q R
$str
›› Z
)
››Z [
;
››[ \
}
ﬁﬁ 
}
ﬂﬂ 	
}
‡‡ 
}·· –"
dC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\RelayServiceProvider.cs
	namespace 	
Unity
 
. 
Services 
. 
Relay 
{ 
internal 
class  
RelayServiceProvider '
:( )!
IInitializablePackage* ?
{ 
[ 	)
RuntimeInitializeOnLoadMethod	 &
(& '%
RuntimeInitializeLoadType' @
.@ A
BeforeSceneLoadA P
)P Q
]Q R
static 
void 
Register 
( 
) 
{ 	
var $
generatedPackageRegistry (
=) *
CoreRegistry 
. 
Instance !
.! "
RegisterPackage" 1
(1 2
new2 5 
RelayServiceProvider6 J
(J K
)K L
)L M
;M N$
generatedPackageRegistry $
.$ %
	DependsOn% .
<. /
IAccessToken/ ;
>; <
(< =
)= >
;> ?$
generatedPackageRegistry $
.$ %
	DependsOn% .
<. /
IQosResults/ :
>: ;
(; <
)< =
;= >
} 	
public 
Task 

Initialize 
( 
CoreRegistry +
registry, 4
)4 5
{ 	
var 

httpClient 
= 
new  

HttpClient! +
(+ ,
), -
;- .
var 
accessToken 
= 
registry &
.& '
GetServiceComponent' :
<: ;
IAccessToken; G
>G H
(H I
)I J
;J K
var 

qosResults 
= 
registry %
.% &
GetServiceComponent& 9
<9 :
IQosResults: E
>E F
(F G
)G H
;H I
if!! 
(!! 
accessToken!! 
!=!! 
null!! #
)!!# $
{"" 
RelayServiceSdk## 
.##  
Instance##  (
=##) *
new##+ . 
InternalRelayService##/ C
(##C D

httpClient##D N
,##N O
accessToken##P [
,##[ \

qosResults##] g
)##g h
;##h i
}$$ 
return&& 
Task&& 
.&& 
CompletedTask&& %
;&&% &
}'' 	
}(( 
internal-- 
class--  
InternalRelayService-- '
:--( )
IRelayServiceSdk--* :
{.. 
public00 &
IRelayAllocationsApiClient00 )
AllocationsApi00* 8
{009 :
get00; >
;00> ?
set00@ C
;00C D
}00E F
public33 
Configuration33 
Configuration33 *
{33+ ,
get33- 0
;330 1
set332 5
;335 6
}337 8
public44 
IAccessToken44 
AccessToken44 '
{44( )
get44* -
;44- .
set44/ 2
;442 3
}444 5
public66 
IQosResults66 

QosResults66 %
{66& '
get66( +
;66+ ,
set66- 0
;660 1
}662 3
public>>  
InternalRelayService>> #
(>># $

HttpClient>>$ .

httpClient>>/ 9
,>>9 :
IAccessToken>>; G
accessToken>>H S
=>>T U
null>>V Z
,>>Z [
IQosResults>>\ g

qosResults>>h r
=>>s t
null>>u y
)>>y z
{?? 	
AllocationsApi@@ 
=@@ 
new@@  %
RelayAllocationsApiClient@@! :
(@@: ;

httpClient@@; E
,@@E F
accessToken@@G R
)@@R S
;@@S T
ConfigurationAA 
=AA 
newAA 
ConfigurationAA  -
(AA- .
$strAA. `
,AA` a
$numAAb d
,AAd e
$numAAf g
,AAg h
nullAAi m
)AAm n
;AAn o
AccessTokenBB 
=BB 
accessTokenBB %
;BB% &

QosResultsCC 
=CC 

qosResultsCC #
;CC# $
}DD 	
}EE 
}FF ›
tC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\SDK\Exceptions\RelayServiceException.cs
	namespace 	
Unity
 
. 
Services 
. 
Relay 
{ 
public		 

class		 !
RelayServiceException		 &
:		' ("
RequestFailedException		) ?
{

 
public  
RelayExceptionReason #
Reason$ *
{+ ,
get- 0
;0 1
private2 9
set: =
;= >
}? @
public !
RelayServiceException $
($ % 
RelayExceptionReason% 9
reason: @
,@ A
stringB H
messageI P
,P Q
	ExceptionR [
innerException\ j
)j k
:l m
basen r
(r s
(s t
intt w
)w x
reasonx ~
,~ 
message
Ä á
,
á à
innerException
â ó
)
ó ò
{ 	
Reason 
= 
reason 
; 
} 	
public   !
RelayServiceException   $
(  $ % 
RelayExceptionReason  % 9
reason  : @
,  @ A
string  B H
message  I P
)  P Q
:  R S
base  T X
(  X Y
(  Y Z
int  Z ]
)  ] ^
reason  ^ d
,  d e
message  f m
)  m n
{!! 	
Reason"" 
="" 
reason"" 
;"" 
}## 	
public** !
RelayServiceException** $
(**$ %
long**% )
	errorCode*** 3
,**3 4
string**5 ;
message**< C
)**C D
:**E F
base**G K
(**K L
(**L M
int**M P
)**P Q
	errorCode**Q Z
,**Z [
message**\ c
)**c d
{++ 	
if,, 
(,, 
Enum,, 
.,, 
	IsDefined,, 
(,, 
typeof,, %
(,,% & 
RelayExceptionReason,,& :
),,: ;
,,,; <
	errorCode,,= F
),,F G
),,G H
{-- 
Reason.. 
=.. 
(..  
RelayExceptionReason.. .
)... /
	errorCode../ 8
;..8 9
}// 
else00 
{11 
Reason22 
=22  
RelayExceptionReason22 -
.22- .
Unknown22. 5
;225 6
}33 
}44 	
public:: !
RelayServiceException:: $
(::$ %
	Exception::% .
innerException::/ =
)::= >
:::? @
base::A E
(::E F
(::F G
int::G J
)::J K 
RelayExceptionReason::K _
.::_ `
Unknown::` g
,::g h
$str	::i ä
,
::ä ã
innerException
::å ö
)
::ö õ
{;; 	
}<< 	
}== 
}>> ó
lC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\Scheduler\TaskSchedulerWebGL.cs
	namespace 	
Unity
 
. 
Services 
. 
Relay 
. 
	Scheduler (
{		 
public 
sealed 
class 
TaskSchedulerWebGL '
:( )
TaskScheduler* 7
{ 
private 	
Queue
 
< 
Action 
> !
m_mainThreadTaskQueue -
=. /
new0 3
Queue4 9
<9 :
Action: @
>@ A
(A B
)B C
;C D
public 
override	 
void "
ScheduleBackgroundTask -
(- .
Action. 4
task5 9
)9 :
{ "
ScheduleMainThreadTask 
( 
task 
) 
;  
} 
public'' 
override''	 
bool'' 
IsMainThread'' #
(''# $
)''$ %
{(( 
return)) 	
false))
 
;)) 
}** 
public22 
override22	 
void22 "
ScheduleMainThreadTask22 -
(22- .
Action22. 4
task225 9
)229 :
{33 !
m_mainThreadTaskQueue44 
.44 
Enqueue44  
(44  !
task44! %
)44% &
;44& '
}55 
void;; 
Update;; 
(;; 
);; 
{<< 	
var== 
action== 
=== !
m_mainThreadTaskQueue== .
.==. /
Count==/ 4
>==5 6
$num==7 8
?==9 :!
m_mainThreadTaskQueue==; P
.==P Q
Dequeue==Q X
(==X Y
)==Y Z
:==[ \
null==] a
;==a b
action>> 	
?>>	 

.>>
 
Invoke>> 
(>> 
)>> 
;>> 
}?? 	
}@@ 
}AA º

aC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\SDK\IRelayService.cs
	namespace 	
Unity
 
. 
Services 
. 
Relay 
{ 
public 

	interface 
IRelayService "
{ 
Task 
< 

Allocation 
> !
CreateAllocationAsync .
(. /
int/ 2
maxConnections3 A
,A B
stringC I
regionJ P
=Q R
nullS W
)W X
;X Y
Task%% 
<%% 
string%% 
>%% 
GetJoinCodeAsync%% %
(%%% &
Guid%%& *
allocationId%%+ 7
)%%7 8
;%%8 9
Task// 
<// 
JoinAllocation// 
>// 
JoinAllocationAsync// 0
(//0 1
string//1 7
joinCode//8 @
)//@ A
;//A B
Task55 
<55 
List55 
<55 
Region55 
>55 
>55 
ListRegionsAsync55 +
(55+ ,
)55, -
;55- .
}66 
public== 

	interface== 
IRelayServiceSDK== %
:==& '
IRelayService==( 5
{>> 
}@@ 
}AA Ñ
qC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\SDK\IRelayServiceSDKConfiguration.cs
	namespace 	
Unity
 
. 
Services 
. 
Relay 
{ 
public 

	interface )
IRelayServiceSDKConfiguration 2
{		 
void )
SetAllocationsServiceBasePath *
(* +
string+ 1
basePath2 :
): ;
;; <
} 
} ¥
kC:\code\ispclone\Library\PackageCache\com.unity.services.relay@1.0.3\Runtime\Scheduler\GameObjectFactory.cs
	namespace 	
Unity
 
. 
Services 
. 
Relay 
. 
	Scheduler (
{ 
public 

static 
class 
GameObjectFactory )
{ 
public 
static 

GameObject  #
CreateCoreSdkGameObject! 8
(8 9
)9 :
{ 	
var 
random 
= 
new 
System #
.# $
Random$ *
(* +
)+ ,
;, -
string 

objectName 
= 
$str  +
+, -
random. 4
.4 5
Next5 9
(9 :
$num: ;
,; <
Int32= B
.B C
MaxValueC K
)K L
;L M
var 

gameObject 
= 
new  

GameObject! +
(+ ,

objectName, 6
)6 7
;7 8

gameObject 
. 
AddComponent 
< !
TaskSchedulerThreaded 0
>0 1
(1 2
)2 3
;3 4
UnityEngine   
.   
Object   
.   
DontDestroyOnLoad   0
(  0 1

gameObject  1 ;
)  ; <
;  < =
return"" 

gameObject"" 
;"" 
}## 	
}$$ 
}%% 