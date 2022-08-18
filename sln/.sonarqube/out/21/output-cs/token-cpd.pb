¨J
oC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Networking\UnityWebRequestClient.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 

Networking (
{		 
class

 	!
UnityWebRequestClient


 
:

  !
IHttpClient

" -
{ 
readonly 

Dictionary 
< 
string "
," #
HttpServiceConfig$ 5
>5 6
m_ServiceIdToConfig7 J
= 
new 

Dictionary 
< 
string #
,# $
HttpServiceConfig% 6
>6 7
(7 8
)8 9
;9 :
public 
string 
GetBaseUrlFor #
(# $
string$ *
	serviceId+ 4
)4 5
{ 	
return 
m_ServiceIdToConfig &
[& '
	serviceId' 0
]0 1
.1 2
BaseUrl2 9
;9 :
} 	
public 
HttpOptions  
GetDefaultOptionsFor /
(/ 0
string0 6
	serviceId7 @
)@ A
{ 	
return 
m_ServiceIdToConfig &
[& '
	serviceId' 0
]0 1
.1 2
DefaultOptions2 @
;@ A
} 	
public   
HttpRequest   #
CreateRequestForService   2
(  2 3
string  3 9
	serviceId  : C
,  C D
string  E K
resourcePath  L X
)  X Y
{!! 	
var"" 
serviceConfig"" 
="" 
m_ServiceIdToConfig""  3
[""3 4
	serviceId""4 =
]""= >
;""> ?
var## 
url## 
=## 
CombinePaths## "
(##" #
serviceConfig### 0
.##0 1
BaseUrl##1 8
,##8 9
resourcePath##: F
)##F G
;##G H
var$$ 
request$$ 
=$$ 
new$$ 
HttpRequest$$ )
($$) *
)$$* +
.%% 
SetUrl%% 
(%% 
url%% 
)%% 
.&& 

SetOptions&& 
(&& 
serviceConfig&& )
.&&) *
DefaultOptions&&* 8
)&&8 9
;&&9 :
return(( 
request(( 
;(( 
})) 	
internal++ 
static++ 
string++ 
CombinePaths++ +
(+++ ,
string++, 2
path1++3 8
,++8 9
string++: @
path2++A F
)++F G
{,, 	
return.. 
Path.. 
... 
Combine.. 
(..  
path1..  %
,..% &
path2..' ,
).., -
.// 
Replace// 
(// 
$char// 
,// 
$char// "
)//" #
;//# $
}00 	
public33 
IAsyncOperation33 
<33  
ReadOnlyHttpResponse33 3
>333 4
Send335 9
(339 :
HttpRequest33: E
request33F M
)33M N
{44 	
var55 
	operation55 
=55 
new55 
AsyncOperation55  .
<55. / 
ReadOnlyHttpResponse55/ C
>55C D
(55D E
)55E F
;55F G
	operation66 
.66 
SetInProgress66 #
(66# $
)66$ %
;66% &
try88 
{99 
var:: 

webRequest:: 
=::  
ConvertToWebRequest::! 4
(::4 5
request::5 <
)::< =
;::= >

webRequest;; 
.;; 
SendWebRequest;; )
(;;) *
);;* +
.<< 
	completed<< 
+=<< !!
OnWebRequestCompleted<<" 7
;<<7 8
}== 
catch>> 
(>> 
	Exception>> 
reason>> #
)>># $
{?? 
	operation@@ 
.@@ 
Fail@@ 
(@@ 
reason@@ %
)@@% &
;@@& '
}AA 
returnCC 
	operationCC 
;CC 
voidEE !
OnWebRequestCompletedEE &
(EE& '
UnityEngineEE' 2
.EE2 3
AsyncOperationEE3 A
unityOperationEEB P
)EEP Q
{FF 
varGG 
callbackWebRequestGG &
=GG' (
(GG) *
(GG* +)
UnityWebRequestAsyncOperationGG+ H
)GGH I
unityOperationGGI W
)GGW X
.GGX Y

webRequestGGY c
;GGc d
varHH 
responseHH 
=HH 
ConvertToResponseHH 0
(HH0 1
callbackWebRequestHH1 C
)HHC D
.II 

SetRequestII 
(II  
requestII  '
)II' (
;II( )
varJJ 
responseHandleJJ "
=JJ# $
newJJ% ( 
ReadOnlyHttpResponseJJ) =
(JJ= >
responseJJ> F
)JJF G
;JJG H
callbackWebRequestKK "
.KK" #
DisposeKK# *
(KK* +
)KK+ ,
;KK, -
	operationMM 
.MM 
SucceedMM !
(MM! "
responseHandleMM" 0
)MM0 1
;MM1 2
}NN 
}OO 	
staticQQ 
UnityWebRequestQQ 
ConvertToWebRequestQQ 2
(QQ2 3
HttpRequestQQ3 >
requestQQ? F
)QQF G
{RR 	
varSS 

webRequestSS 
=SS 
newSS  
UnityWebRequestSS! 0
(SS0 1
requestSS1 8
.SS8 9
UrlSS9 <
,SS< =
requestSS> E
.SSE F
MethodSSF L
)SSL M
{TT 
downloadHandlerUU 
=UU  !
newUU" %!
DownloadHandlerBufferUU& ;
(UU; <
)UU< =
,UU= >
redirectLimitVV 
=VV 
requestVV  '
.VV' (
OptionsVV( /
.VV/ 0
RedirectLimitVV0 =
,VV= >
timeoutWW 
=WW 
requestWW !
.WW! "
OptionsWW" )
.WW) *#
RequestTimeoutInSecondsWW* A
}XX 
;XX 
ifZZ 
(ZZ 
!ZZ 
(ZZ 
requestZZ 
.ZZ 
BodyZZ 
isZZ !
nullZZ" &
)ZZ& '
&&[[ 
request[[ 
.[[ 
Body[[ 
.[[  
Length[[  &
>[[' (
$num[[) *
)[[* +
{\\ 

webRequest]] 
.]] 
uploadHandler]] (
=]]) *
new]]+ .
UploadHandlerRaw]]/ ?
(]]? @
request]]@ G
.]]G H
Body]]H L
)]]L M
;]]M N
}^^ 
if`` 
(`` 
!`` 
(`` 
request`` 
.`` 
Headers`` !
is``" $
null``% )
)``) *
)``* +
{aa 
foreachbb 
(bb 
varbb 
headerbb #
inbb$ &
requestbb' .
.bb. /
Headersbb/ 6
)bb6 7
{cc 

webRequestdd 
.dd 
SetRequestHeaderdd /
(dd/ 0
headerdd0 6
.dd6 7
Keydd7 :
,dd: ;
headerdd< B
.ddB C
ValueddC H
)ddH I
;ddI J
}ee 
}ff 
returnhh 

webRequesthh 
;hh 
}ii 	
statickk 
HttpResponsekk 
ConvertToResponsekk -
(kk- .
UnityWebRequestkk. =

webRequestkk> H
)kkH I
{ll 	
varmm 
responsemm 
=mm 
newmm 
HttpResponsemm +
(mm+ ,
)mm, -
.nn 

SetHeadersnn 
(nn 

webRequestnn &
.nn& '
GetResponseHeadersnn' 9
(nn9 :
)nn: ;
)nn; <
.oo 
SetDataoo 
(oo 

webRequestoo #
.oo# $
downloadHandleroo$ 3
?oo3 4
.oo4 5
dataoo5 9
)oo9 :
.pp 
SetStatusCodepp 
(pp 

webRequestpp )
.pp) *
responseCodepp* 6
)pp6 7
.qq 
SetErrorMessageqq  
(qq  !

webRequestqq! +
.qq+ ,
errorqq, 1
)qq1 2
.ss 
SetIsHttpErrorss 
(ss  

webRequestss  *
.ss* +
resultss+ 1
==ss2 4
UnityWebRequestss5 D
.ssD E
ResultssE K
.ssK L
ProtocolErrorssL Y
)ssY Z
.tt 
SetIsNetworkErrortt "
(tt" #

webRequesttt# -
.tt- .
resulttt. 4
==tt5 7
UnityWebRequesttt8 G
.ttG H
ResultttH N
.ttN O
ConnectionErrorttO ^
)tt^ _
;tt_ `
returnzz 
responsezz 
;zz 
}{{ 	
internal}} 
void}} 
SetServiceConfig}} &
(}}& '
HttpServiceConfig}}' 8
config}}9 ?
)}}? @
{~~ 	
m_ServiceIdToConfig 
[  
config  &
.& '
	ServiceId' 0
]0 1
=2 3
config4 :
;: ;
}
€€ 	
}
 
}‚‚ Î
fC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Networking\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str :
): ;
]; <
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
]9 :—
kC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Networking\HttpServiceConfig.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 

Networking (
{ 
[ 
Serializable 
] 
struct 

HttpServiceConfig 
{ 
public		 
string		 
	ServiceId		 
;		  
public 
string 
BaseUrl 
; 
public 
HttpOptions 
DefaultOptions )
;) *
} 
} 