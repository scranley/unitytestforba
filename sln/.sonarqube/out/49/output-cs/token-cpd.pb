�
oC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Network\WebRequestVerb.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
enum 
WebRequestVerb	 
{ 
Get 
, 
Post 
, 
Put 
, 
Delete 
}		 
}

 �
{C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Components\Profile\IProfile.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
	interface 
IProfile 
{		 
event 
Action 
< 
ProfileEventArgs %
>% &
ProfileChange' 4
;4 5
string 
Current 
{ 
get 
; 
set !
;! "
}# $
} 
} �
|C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Utilities\DateTime\IDateTimeWrapper.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
	interface 
IDateTimeWrapper 
{ 
double !
SecondsSinceUnixEpoch $
($ %
)% &
;& '
DateTime		 
UtcNow		 
{		 
get		 
;		 
}		  
}

 
} �
vC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Metrics\AuthenticationMetrics.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	!
AuthenticationMetrics
 
:  !"
IAuthenticationMetrics" 8
{ 
const 
string %
AuthenticationPackageName .
=/ 0
$str1 T
;T U
const 
string "
NetworkErrorMetricName +
=, -
$str. C
;C D
const		 
string		 $
ExpiredSessionMetricName		 -
=		. /
$str		0 G
;		G H
const

 
string

 1
%ClientInvalidStateExceptionMetricName

 :
=

; <
$str

= c
;

c d
const 
string 7
+UnlinkExternalIdNotFoundExceptionMetricName @
=A B
$strC q
;q r
const 
string :
.ClientSessionTokenNotExistsExceptionMetricName C
=D E
$strF w
;w x
readonly 
IMetrics 
	m_Metrics #
;# $
internal !
AuthenticationMetrics &
(& '
IMetricsFactory' 6
metricsFactory7 E
)E F
{ 	
	m_Metrics 
= 
metricsFactory &
.& '
Create' -
(- .%
AuthenticationPackageName. G
)G H
;H I
} 	
public 
void "
SendNetworkErrorMetric *
(* +
)+ ,
{ 	
	m_Metrics 
. 
SendSumMetric #
(# $"
NetworkErrorMetricName$ :
): ;
;; <
} 	
public 
void $
SendExpiredSessionMetric ,
(, -
)- .
{ 	
	m_Metrics 
. 
SendSumMetric #
(# $$
ExpiredSessionMetricName$ <
)< =
;= >
} 	
public 
void 1
%SendClientInvalidStateExceptionMetric 9
(9 :
): ;
{   	
	m_Metrics!! 
.!! 
SendSumMetric!! #
(!!# $1
%ClientInvalidStateExceptionMetricName!!$ I
)!!I J
;!!J K
}"" 	
public$$ 
void$$ 7
+SendUnlinkExternalIdNotFoundExceptionMetric$$ ?
($$? @
)$$@ A
{%% 	
	m_Metrics&& 
.&& 
SendSumMetric&& #
(&&# $7
+UnlinkExternalIdNotFoundExceptionMetricName&&$ O
)&&O P
;&&P Q
}'' 	
public)) 
void)) :
.SendClientSessionTokenNotExistsExceptionMetric)) B
())B C
)))C D
{** 	
	m_Metrics++ 
.++ 
SendSumMetric++ #
(++# $:
.ClientSessionTokenNotExistsExceptionMetricName++$ R
)++R S
;++S T
},, 	
}-- 
}.. �
�C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Responses\AuthenticationErrorResponse.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[ 
Serializable 
] 
class 	'
AuthenticationErrorResponse
 %
{ 
[ 	
Preserve	 
] 
public '
AuthenticationErrorResponse *
(* +
)+ ,
{- .
}. /
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Title 
; 
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
Detail 
; 
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
int 
Status 
; 
} 
} �
vC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Responses\LinkResponse.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[ 
Serializable 
] 
class 	
LinkResponse
 
{		 
[

 	
Preserve

	 
]

 
public 
LinkResponse 
( 
) 
{ 
}  
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
User 
User 
; 
} 
} ��
vC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\AuthenticationServiceInternal.cs
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
 
Authentication

 '
{ 
class 	)
AuthenticationServiceInternal
 '
:( )"
IAuthenticationService* @
{ 
const 
string 
k_ProfileRegex #
=$ %
$str& >
;> ?
public 
event 
Action 
< "
RequestFailedException 2
>2 3
SignInFailed4 @
;@ A
public 
event 
Action 
SignedIn $
;$ %
public 
event 
Action 
	SignedOut %
;% &
public 
event 
Action 
Expired #
;# $
public 
bool 

IsSignedIn 
=> !
State 
== 
AuthenticationState (
.( )

Authorized) 3
||4 6
State 
== 
AuthenticationState (
.( )

Refreshing) 3
||4 6
State 
== 
AuthenticationState (
.( )
Expired) 0
;0 1
public 
bool 
IsAuthorized  
=>! #
State 
== 
AuthenticationState (
.( )

Authorized) 3
||4 6
State 
== 
AuthenticationState (
.( )

Refreshing) 3
;3 4
public 
bool 
	IsExpired 
=>  
State! &
==' )
AuthenticationState* =
.= >
Expired> E
;E F
public 
bool 
SessionTokenExists &
=>' )
!* +
string+ 1
.1 2
IsNullOrEmpty2 ?
(? @!
SessionTokenComponent@ U
.U V
SessionTokenV b
)b c
;c d
public!! 
string!! 
Profile!! 
=>!!  
	m_Profile!!! *
.!!* +
Current!!+ 2
;!!2 3
public"" 
string"" 
AccessToken"" !
=>""" $ 
AccessTokenComponent""% 9
.""9 :
AccessToken"": E
;""E F
public$$ 
string$$ 
PlayerId$$ 
=>$$ !
PlayerIdComponent$$" 3
.$$3 4
PlayerId$$4 <
;$$< =
public%% 

PlayerInfo%% 

PlayerInfo%% $
{%%% &
get%%' *
;%%* +
internal%%, 4
set%%5 8
;%%8 9
}%%: ;
internal'' 
long'' 
?'' 
ExpirationActionId'' )
{''* +
get'', /
;''/ 0
set''1 4
;''4 5
}''6 7
internal(( 
long(( 
?(( 
RefreshActionId(( &
{((' (
get(() ,
;((, -
set((. 1
;((1 2
}((3 4
internal**  
AccessTokenComponent** % 
AccessTokenComponent**& :
{**; <
get**= @
;**@ A
}**B C
internal++ "
EnvironmentIdComponent++ '"
EnvironmentIdComponent++( >
{++? @
get++A D
;++D E
}++F G
internal,, 
PlayerIdComponent,, "
PlayerIdComponent,,# 4
{,,5 6
get,,7 :
;,,: ;
},,< =
internal-- !
SessionTokenComponent-- &!
SessionTokenComponent--' <
{--= >
get--? B
;--B C
}--D E
internal.. "
WellKnownKeysComponent.. '"
WellKnownKeysComponent..( >
{..? @
get..A D
;..D E
}..F G
internal00 
AuthenticationState00 $
State00% *
{00+ ,
get00- 0
;000 1
set002 5
;005 6
}007 8
internal11 #
IAuthenticationSettings11 (
Settings11) 1
{112 3
get114 7
;117 8
}119 :
internal22 (
IAuthenticationNetworkClient22 -
NetworkClient22. ;
{22< =
get22> A
;22A B
set22C F
;22F G
}22H I
readonly44 
IProfile44 
	m_Profile44 #
;44# $
readonly55 
IJwtDecoder55 
m_JwtDecoder55 )
;55) *
readonly66  
IAuthenticationCache66 %
m_Cache66& -
;66- .
readonly77 
IActionScheduler77 !
m_Scheduler77" -
;77- .
readonly88 
IDateTimeWrapper88 !

m_DateTime88" ,
;88, -
readonly99 "
IAuthenticationMetrics99 '
	m_Metrics99( 1
;991 2
internal;; 
event;; 
Action;; 
<;; 
AuthenticationState;; 1
,;;1 2
AuthenticationState;;3 F
>;;F G
StateChanged;;H T
;;;T U
internal>> )
AuthenticationServiceInternal>> .
(>>. /#
IAuthenticationSettings>>/ F
settings>>G O
,>>O P(
IAuthenticationNetworkClient??/ K
networkClient??L Y
,??Y Z
IProfile@@/ 7
profile@@8 ?
,@@? @
IJwtDecoderAA/ :

jwtDecoderAA; E
,AAE F 
IAuthenticationCacheBB/ C
cacheBBD I
,BBI J
IActionSchedulerCC/ ?
	schedulerCC@ I
,CCI J
IDateTimeWrapperDD/ ?
dateTimeDD@ H
,DDH I"
IAuthenticationMetricsEE/ E
metricsEEF M
,EEM N 
AccessTokenComponentFF/ C
accessTokenFFD O
,FFO P"
EnvironmentIdComponentGG/ E
environmentIdGGF S
,GGS T
PlayerIdComponentHH/ @
playerIdHHA I
,HHI J!
SessionTokenComponentII/ D
sessionTokenIIE Q
,IIQ R"
WellKnownKeysComponentJJ/ E
wellKnownKeysJJF S
)JJS T
{KK 	
SettingsLL 
=LL 
settingsLL 
;LL  
NetworkClientMM 
=MM 
networkClientMM )
;MM) *
	m_ProfileOO 
=OO 
profileOO 
;OO  
m_JwtDecoderPP 
=PP 

jwtDecoderPP %
;PP% &
m_CacheQQ 
=QQ 
cacheQQ 
;QQ 
m_SchedulerRR 
=RR 
	schedulerRR #
;RR# $

m_DateTimeSS 
=SS 
dateTimeSS !
;SS! "
	m_MetricsTT 
=TT 
metricsTT 
;TT   
AccessTokenComponentVV  
=VV! "
accessTokenVV# .
;VV. /"
EnvironmentIdComponentWW "
=WW# $
environmentIdWW% 2
;WW2 3
PlayerIdComponentXX 
=XX 
playerIdXX  (
;XX( )!
SessionTokenComponentYY !
=YY" #
sessionTokenYY$ 0
;YY0 1"
WellKnownKeysComponentZZ "
=ZZ# $
wellKnownKeysZZ% 2
;ZZ2 3
State\\ 
=\\ 
AuthenticationState\\ '
.\\' (
	SignedOut\\( 1
;\\1 2
MigrateCache]] 
(]] 
)]] 
;]] 
Expired__ 
+=__ 
(__ 
)__ 
=>__ 
	m_Metrics__ &
.__& '$
SendExpiredSessionMetric__' ?
(__? @
)__@ A
;__A B
}`` 	
publicbb 
Taskbb "
SignInAnonymouslyAsyncbb *
(bb* +
SignInOptionsbb+ 8
optionsbb9 @
=bbA B
nullbbC G
)bbG H
{cc 	
ifdd 
(dd 
Statedd 
==dd 
AuthenticationStatedd ,
.dd, -
	SignedOutdd- 6
||dd7 9
Statedd: ?
==dd@ B
AuthenticationStateddC V
.ddV W
ExpiredddW ^
)dd^ _
{ee 
ifff 
(ff 
SessionTokenExistsff &
)ff& '
{gg 
varhh 
sessionTokenhh $
=hh% &!
SessionTokenComponenthh' <
.hh< =
SessionTokenhh= I
;hhI J
ifjj 
(jj 
stringjj 
.jj 
IsNullOrEmptyjj ,
(jj, -
sessionTokenjj- 9
)jj9 :
)jj: ;
{kk 
varll 
	exceptionll %
=ll& '5
)BuildClientSessionTokenNotExistsExceptionll( Q
(llQ R
)llR S
;llS T!
SendSignInFailedEventmm -
(mm- .
	exceptionmm. 7
)mm7 8
;mm8 9
returnnn 
Tasknn #
.nn# $
FromExceptionnn$ 1
(nn1 2
	exceptionnn2 ;
)nn; <
;nn< =
}oo 
Loggerqq 
.qq 

LogVerboseqq %
(qq% &
$strqq& V
)qqV W
;qqW X
returnss $
HandleSignInRequestAsyncss 3
(ss3 4
(ss4 5
)ss5 6
=>ss7 9
NetworkClientss: G
.ssG H'
SignInWithSessionTokenAsyncssH c
(ssc d
sessionTokenssd p
)ssp q
)ssq r
;ssr s
}tt 
ifww 
(ww 
optionsww 
?ww 
.ww 
CreateAccountww *
??ww+ -
trueww. 2
)ww2 3
{xx 
returnyy $
HandleSignInRequestAsyncyy 3
(yy3 4
NetworkClientyy4 A
.yyA B"
SignInAnonymouslyAsyncyyB X
)yyX Y
;yyY Z
}zz 
else{{ 
{|| 
var}} 
	exception}} !
=}}" #5
)BuildClientSessionTokenNotExistsException}}$ M
(}}M N
)}}N O
;}}O P!
SendSignInFailedEvent~~ )
(~~) *
	exception~~* 3
)~~3 4
;~~4 5
return 
Task 
.  
FromException  -
(- .
	exception. 7
)7 8
;8 9
}
�� 
}
�� 
else
�� 
{
�� 
var
�� 
	exception
�� 
=
�� .
 BuildClientInvalidStateException
��  @
(
��@ A
)
��A B
;
��B C#
SendSignInFailedEvent
�� %
(
��% &
	exception
��& /
)
��/ 0
;
��0 1
return
�� 
Task
�� 
.
�� 
FromException
�� )
(
��) *
	exception
��* 3
)
��3 4
;
��4 5
}
�� 
}
�� 	
public
�� 
Task
�� "
SignInWithAppleAsync
�� (
(
��( )
string
��) /
idToken
��0 7
,
��7 8
SignInOptions
��9 F
options
��G N
=
��O P
null
��Q U
)
��U V
{
�� 	
return
�� *
SignInWithExternalTokenAsync
�� /
(
��/ 0
IdProviderKeys
��0 >
.
��> ?
Apple
��? D
,
��D E
new
��F I,
SignInWithExternalTokenRequest
��J h
{
�� 

IdProvider
�� 
=
�� 
IdProviderKeys
�� +
.
��+ ,
Apple
��, 1
,
��1 2
Token
�� 
=
�� 
idToken
�� 
,
��  

SignInOnly
�� 
=
�� 
!
�� 
options
�� %
?
��% &
.
��& '
CreateAccount
��' 4
??
��5 7
false
��8 =
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
Task
��  
LinkWithAppleAsync
�� &
(
��& '
string
��' -
idToken
��. 5
,
��5 6
LinkOptions
��7 B
options
��C J
=
��K L
null
��M Q
)
��Q R
{
�� 	
return
�� (
LinkWithExternalTokenAsync
�� -
(
��- .
IdProviderKeys
��. <
.
��< =
Apple
��= B
,
��B C
new
��D G*
LinkWithExternalTokenRequest
��H d
{
�� 

IdProvider
�� 
=
�� 
IdProviderKeys
�� +
.
��+ ,
Apple
��, 1
,
��1 2
Token
�� 
=
�� 
idToken
�� 
,
��  
	ForceLink
�� 
=
�� 
options
�� #
?
��# $
.
��$ %
	ForceLink
��% .
??
��/ 1
false
��2 7
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
Task
�� 
UnlinkAppleAsync
�� $
(
��$ %
)
��% &
{
�� 	
return
�� &
UnlinkExternalTokenAsync
�� +
(
��+ ,
IdProviderKeys
��, :
.
��: ;
Apple
��; @
)
��@ A
;
��A B
}
�� 	
public
�� 
Task
�� #
SignInWithGoogleAsync
�� )
(
��) *
string
��* 0
idToken
��1 8
,
��8 9
SignInOptions
��: G
options
��H O
=
��P Q
null
��R V
)
��V W
{
�� 	
return
�� *
SignInWithExternalTokenAsync
�� /
(
��/ 0
IdProviderKeys
��0 >
.
��> ?
Google
��? E
,
��E F
new
��G J,
SignInWithExternalTokenRequest
��K i
{
�� 

IdProvider
�� 
=
�� 
IdProviderKeys
�� +
.
��+ ,
Google
��, 2
,
��2 3
Token
�� 
=
�� 
idToken
�� 
,
��  

SignInOnly
�� 
=
�� 
!
�� 
options
�� %
?
��% &
.
��& '
CreateAccount
��' 4
??
��5 7
false
��8 =
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
Task
�� !
LinkWithGoogleAsync
�� '
(
��' (
string
��( .
idToken
��/ 6
,
��6 7
LinkOptions
��8 C
options
��D K
=
��L M
null
��N R
)
��R S
{
�� 	
return
�� (
LinkWithExternalTokenAsync
�� -
(
��- .
IdProviderKeys
��. <
.
��< =
Google
��= C
,
��C D
new
��E H*
LinkWithExternalTokenRequest
��I e
{
�� 

IdProvider
�� 
=
�� 
IdProviderKeys
�� +
.
��+ ,
Google
��, 2
,
��2 3
Token
�� 
=
�� 
idToken
�� 
,
��  
	ForceLink
�� 
=
�� 
options
�� #
?
��# $
.
��$ %
	ForceLink
��% .
??
��/ 1
false
��2 7
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
Task
�� 
UnlinkGoogleAsync
�� %
(
��% &
)
��& '
{
�� 	
return
�� &
UnlinkExternalTokenAsync
�� +
(
��+ ,
IdProviderKeys
��, :
.
��: ;
Google
��; A
)
��A B
;
��B C
}
�� 	
public
�� 
Task
�� %
SignInWithFacebookAsync
�� +
(
��+ ,
string
��, 2
accessToken
��3 >
,
��> ?
SignInOptions
��@ M
options
��N U
=
��V W
null
��X \
)
��\ ]
{
�� 	
return
�� *
SignInWithExternalTokenAsync
�� /
(
��/ 0
IdProviderKeys
��0 >
.
��> ?
Facebook
��? G
,
��G H
new
��I L,
SignInWithExternalTokenRequest
��M k
{
�� 

IdProvider
�� 
=
�� 
IdProviderKeys
�� +
.
��+ ,
Facebook
��, 4
,
��4 5
Token
�� 
=
�� 
accessToken
�� #
,
��# $

SignInOnly
�� 
=
�� 
!
�� 
options
�� %
?
��% &
.
��& '
CreateAccount
��' 4
??
��5 7
false
��8 =
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
Task
�� #
LinkWithFacebookAsync
�� )
(
��) *
string
��* 0
accessToken
��1 <
,
��< =
LinkOptions
��> I
options
��J Q
=
��R S
null
��T X
)
��X Y
{
�� 	
return
�� (
LinkWithExternalTokenAsync
�� -
(
��- .
IdProviderKeys
��. <
.
��< =
Facebook
��= E
,
��E F
new
��G J*
LinkWithExternalTokenRequest
��K g
{
�� 

IdProvider
�� 
=
�� 
IdProviderKeys
�� +
.
��+ ,
Facebook
��, 4
,
��4 5
Token
�� 
=
�� 
accessToken
�� #
,
��# $
	ForceLink
�� 
=
�� 
options
�� #
?
��# $
.
��$ %
	ForceLink
��% .
??
��/ 1
false
��2 7
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
Task
�� !
UnlinkFacebookAsync
�� '
(
��' (
)
��( )
{
�� 	
return
�� &
UnlinkExternalTokenAsync
�� +
(
��+ ,
IdProviderKeys
��, :
.
��: ;
Facebook
��; C
)
��C D
;
��D E
}
�� 	
public
�� 
Task
�� "
SignInWithSteamAsync
�� (
(
��( )
string
��) /
sessionTicket
��0 =
,
��= >
SignInOptions
��? L
options
��M T
=
��U V
null
��W [
)
��[ \
{
�� 	
return
�� *
SignInWithExternalTokenAsync
�� /
(
��/ 0
IdProviderKeys
��0 >
.
��> ?
Steam
��? D
,
��D E
new
��F I,
SignInWithExternalTokenRequest
��J h
{
�� 

IdProvider
�� 
=
�� 
IdProviderKeys
�� +
.
��+ ,
Steam
��, 1
,
��1 2
Token
�� 
=
�� 
sessionTicket
�� %
,
��% &

SignInOnly
�� 
=
�� 
!
�� 
options
�� %
?
��% &
.
��& '
CreateAccount
��' 4
??
��5 7
false
��8 =
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
Task
��  
LinkWithSteamAsync
�� &
(
��& '
string
��' -
sessionTicket
��. ;
,
��; <
LinkOptions
��= H
options
��I P
=
��Q R
null
��S W
)
��W X
{
�� 	
return
�� (
LinkWithExternalTokenAsync
�� -
(
��- .
IdProviderKeys
��. <
.
��< =
Steam
��= B
,
��B C
new
��D G*
LinkWithExternalTokenRequest
��H d
{
�� 

IdProvider
�� 
=
�� 
IdProviderKeys
�� +
.
��+ ,
Steam
��, 1
,
��1 2
Token
�� 
=
�� 
sessionTicket
�� %
,
��% &
	ForceLink
�� 
=
�� 
options
�� #
?
��# $
.
��$ %
	ForceLink
��% .
??
��/ 1
false
��2 7
}
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
Task
�� 
UnlinkSteamAsync
�� $
(
��$ %
)
��% &
{
�� 	
return
�� &
UnlinkExternalTokenAsync
�� +
(
��+ ,
IdProviderKeys
��, :
.
��: ;
Steam
��; @
)
��@ A
;
��A B
}
�� 	
public
�� 
async
�� 
Task
��  
DeleteAccountAsync
�� ,
(
��, -
)
��- .
{
�� 	
if
�� 
(
�� 
IsAuthorized
�� 
)
�� 
{
�� 
try
�� 
{
�� 
await
�� 
NetworkClient
�� '
.
��' ( 
DeleteAccountAsync
��( :
(
��: ;
PlayerId
��; C
)
��C D
;
��D E
SignOut
�� 
(
�� 
true
��  
)
��  !
;
��! "
}
�� 
catch
�� 
(
�� !
WebRequestException
�� *
e
��+ ,
)
��, -
{
�� 
throw
�� "
BuildServerException
�� .
(
��. /
e
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 
else
�� 
{
�� 
throw
�� .
 BuildClientInvalidStateException
�� 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
public
�� 
void
�� 
SignOut
�� 
(
�� 
bool
��  
clearCredentials
��! 1
=
��2 3
false
��4 9
)
��9 :
{
�� 	"
AccessTokenComponent
��  
.
��  !
Clear
��! &
(
��& '
)
��' (
;
��( )

PlayerInfo
�� 
=
�� 
null
�� 
;
�� 
if
�� 
(
�� 
clearCredentials
��  
)
��  !
{
�� #
SessionTokenComponent
�� %
.
��% &
Clear
��& +
(
��+ ,
)
��, -
;
��- .
PlayerIdComponent
�� !
.
��! "
Clear
��" '
(
��' (
)
��( )
;
��) *
}
�� $
CancelScheduledRefresh
�� "
(
��" #
)
��# $
;
��$ %'
CancelScheduledExpiration
�� %
(
��% &
)
��& '
;
��' (
ChangeState
�� 
(
�� !
AuthenticationState
�� +
.
��+ ,
	SignedOut
��, 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
void
�� 
SwitchProfile
�� !
(
��! "
string
��" (
profile
��) 0
)
��0 1
{
�� 	
if
�� 
(
�� 
State
�� 
==
�� !
AuthenticationState
�� ,
.
��, -
	SignedOut
��- 6
)
��6 7
{
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
profile
��* 1
)
��1 2
&&
��3 5
Regex
��6 ;
.
��; <
Match
��< A
(
��A B
profile
��B I
,
��I J
k_ProfileRegex
��K Y
)
��Y Z
.
��Z [
Success
��[ b
)
��b c
{
�� 
	m_Profile
�� 
.
�� 
Current
�� %
=
��& '
profile
��( /
;
��/ 0
}
�� 
else
�� 
{
�� 
throw
�� 0
"BuildClientInvalidProfileException
�� <
(
��< =
)
��= >
;
��> ?
}
�� 
}
�� 
else
�� 
{
�� 
throw
�� .
 BuildClientInvalidStateException
�� 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
public
�� 
void
�� 
ClearSessionToken
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
State
�� 
==
�� !
AuthenticationState
�� ,
.
��, -
	SignedOut
��- 6
)
��6 7
{
�� #
SessionTokenComponent
�� %
.
��% &
Clear
��& +
(
��+ ,
)
��, -
;
��- .
}
�� 
else
�� 
{
�� 
throw
�� .
 BuildClientInvalidStateException
�� 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 

PlayerInfo
�� $
>
��$ % 
GetPlayerInfoAsync
��& 8
(
��8 9
)
��9 :
{
�� 	
if
�� 
(
�� 
IsAuthorized
�� 
)
�� 
{
�� 
try
�� 
{
�� 
var
�� 
response
��  
=
��! "
await
��# (
NetworkClient
��) 6
.
��6 7 
GetPlayerInfoAsync
��7 I
(
��I J
PlayerId
��J R
)
��R S
;
��S T

PlayerInfo
�� 
=
��  
new
��! $

PlayerInfo
��% /
(
��/ 0
response
��0 8
)
��8 9
;
��9 :
return
�� 

PlayerInfo
�� %
;
��% &
}
�� 
catch
�� 
(
�� !
WebRequestException
�� *
e
��+ ,
)
��, -
{
�� 
throw
�� "
BuildServerException
�� .
(
��. /
e
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 
else
�� 
{
�� 
throw
�� .
 BuildClientInvalidStateException
�� 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
internal
�� 
async
�� 
Task
�� #
GetWellKnownKeysAsync
�� 1
(
��1 2
)
��2 3
{
�� 	
var
�� 
response
�� 
=
�� 
await
��  
NetworkClient
��! .
.
��. /#
GetWellKnownKeysAsync
��/ D
(
��D E
)
��E F
;
��F G$
WellKnownKeysComponent
�� "
.
��" #
Keys
��# '
=
��( )
response
��* 2
.
��2 3
Keys
��3 7
;
��7 8
}
�� 	
internal
�� 
Task
�� *
SignInWithExternalTokenAsync
�� 2
(
��2 3
string
��3 9

idProvider
��: D
,
��D E,
SignInWithExternalTokenRequest
��F d
request
��e l
,
��l m
bool
��n r
enableRefresh��s �
=��� �
true��� �
)��� �
{
�� 	
if
�� 
(
�� 
State
�� 
==
�� !
AuthenticationState
�� ,
.
��, -
	SignedOut
��- 6
||
��7 9
State
��: ?
==
��@ B!
AuthenticationState
��C V
.
��V W
Expired
��W ^
)
��^ _
{
�� 
return
�� &
HandleSignInRequestAsync
�� /
(
��/ 0
(
��0 1
)
��1 2
=>
��3 5
NetworkClient
��6 C
.
��C D*
SignInWithExternalTokenAsync
��D `
(
��` a

idProvider
��a k
,
��k l
request
��m t
)
��t u
,
��u v
enableRefresh��w �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
var
�� 
	exception
�� 
=
�� .
 BuildClientInvalidStateException
��  @
(
��@ A
)
��A B
;
��B C#
SendSignInFailedEvent
�� %
(
��% &
	exception
��& /
)
��/ 0
;
��0 1
return
�� 
Task
�� 
.
�� 
FromException
�� )
(
��) *
	exception
��* 3
)
��3 4
;
��4 5
}
�� 
}
�� 	
internal
�� 
async
�� 
Task
�� (
LinkWithExternalTokenAsync
�� 6
(
��6 7
string
��7 =

idProvider
��> H
,
��H I*
LinkWithExternalTokenRequest
��J f
request
��g n
)
��n o
{
�� 	
if
�� 
(
�� 
IsAuthorized
�� 
)
�� 
{
�� 
try
�� 
{
�� 
var
�� 
response
��  
=
��! "
await
��# (
NetworkClient
��) 6
.
��6 7(
LinkWithExternalTokenAsync
��7 Q
(
��Q R

idProvider
��R \
,
��\ ]
request
��^ e
)
��e f
;
��f g

PlayerInfo
�� 
?
�� 
.
��  !
AddExternalIdentity
��  3
(
��3 4
response
��4 <
.
��< =
User
��= A
?
��A B
.
��B C
ExternalIds
��C N
?
��N O
.
��O P
FirstOrDefault
��P ^
(
��^ _
x
��_ `
=>
��a c
x
��d e
.
��e f

ProviderId
��f p
==
��q s
request
��t {
.
��{ |

IdProvider��| �
)��� �
)��� �
;��� �
}
�� 
catch
�� 
(
�� !
WebRequestException
�� *
e
��+ ,
)
��, -
{
�� 
throw
�� "
BuildServerException
�� .
(
��. /
e
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 
else
�� 
{
�� 
throw
�� .
 BuildClientInvalidStateException
�� 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
internal
�� 
async
�� 
Task
�� &
UnlinkExternalTokenAsync
�� 4
(
��4 5
string
��5 ;

idProvider
��< F
)
��F G
{
�� 	
if
�� 
(
�� 
IsAuthorized
�� 
)
�� 
{
�� 
var
�� 

externalId
�� 
=
��  

PlayerInfo
��! +
?
��+ ,
.
��, -
GetIdentityId
��- :
(
��: ;

idProvider
��; E
)
��E F
;
��F G
if
�� 
(
�� 

externalId
�� 
==
�� !
null
��" &
)
��& '
{
�� 
throw
�� :
,BuildClientUnlinkExternalIdNotFoundException
�� F
(
��F G
)
��G H
;
��H I
}
�� 
try
�� 
{
�� 
await
�� 
NetworkClient
�� '
.
��' (&
UnlinkExternalTokenAsync
��( @
(
��@ A

idProvider
��A K
,
��K L
new
��M P
UnlinkRequest
��Q ^
{
�� 

IdProvider
�� "
=
��# $

idProvider
��% /
,
��/ 0

ExternalId
�� "
=
��# $

externalId
��% /
}
�� 
)
�� 
;
�� 

PlayerInfo
�� 
.
�� 
RemoveIdentity
�� -
(
��- .

idProvider
��. 8
)
��8 9
;
��9 :
}
�� 
catch
�� 
(
�� !
WebRequestException
�� *
e
��+ ,
)
��, -
{
�� 
throw
�� "
BuildServerException
�� .
(
��. /
e
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 
else
�� 
{
�� 
throw
�� .
 BuildClientInvalidStateException
�� 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
internal
�� 
Task
�� %
RefreshAccessTokenAsync
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
�� 

IsSignedIn
�� 
)
�� 
{
�� 
if
�� 
(
�� 
State
�� 
==
�� !
AuthenticationState
�� 0
.
��0 1
Expired
��1 8
)
��8 9
{
�� 
return
�� 
Task
�� 
.
��  
CompletedTask
��  -
;
��- .
}
�� 
var
�� 
sessionToken
��  
=
��! "#
SessionTokenComponent
��# 8
.
��8 9
SessionToken
��9 E
;
��E F
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� (
(
��( )
sessionToken
��) 5
)
��5 6
)
��6 7
{
�� 
return
�� 
Task
�� 
.
��  
CompletedTask
��  -
;
��- .
}
�� 
return
�� 
StartRefreshAsync
�� (
(
��( )
sessionToken
��) 5
)
��5 6
;
��6 7
}
�� 
return
�� 
Task
�� 
.
�� 
CompletedTask
�� %
;
��% &
}
�� 	
internal
�� 
async
�� 
Task
�� &
HandleSignInRequestAsync
�� 4
(
��4 5
Func
��5 9
<
��9 :
Task
��: >
<
��> ?
SignInResponse
��? M
>
��M N
>
��N O
signInRequest
��P ]
,
��] ^
bool
��_ c
enableRefresh
��d q
=
��r s
true
��t x
)
��x y
{
�� 	
try
�� 
{
�� 
ChangeState
�� 
(
�� !
AuthenticationState
�� /
.
��/ 0
	SigningIn
��0 9
)
��9 :
;
��: ;
var
�� 
wellKnownKeysTask
�� %
=
��& '$
WellKnownKeysComponent
��( >
.
��> ?
Keys
��? C
==
��D F
null
��G K
?
��L M#
GetWellKnownKeysAsync
��N c
(
��c d
)
��d e
:
��f g
Task
��h l
.
��l m
CompletedTask
��m z
;
��z {
var
�� 
signinRequestTask
�� %
=
��& '
signInRequest
��( 5
(
��5 6
)
��6 7
;
��7 8
await
�� 
Task
�� 
.
�� 
WhenAll
�� "
(
��" #
signinRequestTask
��# 4
,
��4 5
wellKnownKeysTask
��6 G
)
��G H
;
��H I
CompleteSignIn
�� 
(
�� 
await
�� $
signinRequestTask
��% 6
,
��6 7
enableRefresh
��8 E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� $
RequestFailedException
�� )
e
��* +
)
��+ ,
{
�� #
SendSignInFailedEvent
�� %
(
��% &
e
��& '
)
��' (
;
��( )
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� !
WebRequestException
�� &
e
��' (
)
��( )
{
�� 
var
�� 
authException
�� !
=
��" #"
BuildServerException
��$ 8
(
��8 9
e
��9 :
)
��: ;
;
��; <#
SendSignInFailedEvent
�� %
(
��% &
authException
��& 3
)
��3 4
;
��4 5
throw
�� 
authException
�� #
;
��# $
}
�� 
}
�� 	
internal
�� 
async
�� 
Task
�� 
StartRefreshAsync
�� -
(
��- .
string
��. 4
sessionToken
��5 A
)
��A B
{
�� 	
ChangeState
�� 
(
�� !
AuthenticationState
�� +
.
��+ ,

Refreshing
��, 6
)
��6 7
;
��7 8
try
�� 
{
�� 
var
�� 
response
�� 
=
�� 
await
�� $
NetworkClient
��% 2
.
��2 3)
SignInWithSessionTokenAsync
��3 N
(
��N O
sessionToken
��O [
)
��[ \
;
��\ ]
CompleteSignIn
�� 
(
�� 
response
�� '
)
��' (
;
��( )
}
�� 
catch
�� 
(
�� $
RequestFailedException
�� )
)
��) *
{
�� 
Logger
�� 
.
�� 

LogWarning
�� !
(
��! "
$str
��" `
)
��` a
;
��a b
if
�� 
(
�� 
State
�� 
!=
�� !
AuthenticationState
�� 0
.
��0 1
Expired
��1 8
)
��8 9
{
�� 
Expire
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 
catch
�� 
(
�� !
WebRequestException
�� &
)
��& '
{
�� 
if
�� 
(
�� 
State
�� 
==
�� !
AuthenticationState
�� 0
.
��0 1

Refreshing
��1 ;
)
��; <
{
�� 
Logger
�� 
.
�� 

LogWarning
�� %
(
��% &
$str��& �
)��� �
;��� �
ChangeState
�� 
(
��  !
AuthenticationState
��  3
.
��3 4

Authorized
��4 >
)
��> ?
;
��? @
ScheduleRefresh
�� #
(
��# $
Settings
��$ ,
.
��, -%
RefreshAttemptFrequency
��- D
)
��D E
;
��E F
}
�� 
}
�� 
}
�� 	
internal
�� 
void
�� 
CompleteSignIn
�� $
(
��$ %
SignInResponse
��% 3
response
��4 <
,
��< =
bool
��> B
enableRefresh
��C P
=
��Q R
true
��S W
)
��W X
{
�� 	
try
�� 
{
�� 
var
��  
accessTokenDecoded
�� &
=
��' (
m_JwtDecoder
��) 5
.
��5 6
Decode
��6 <
<
��< =
AccessToken
��= H
>
��H I
(
��I J
response
��J R
.
��R S
IdToken
��S Z
,
��Z [$
WellKnownKeysComponent
��\ r
?
��r s
.
��s t
Keys
��t x
)
��x y
;
��y z
if
�� 
(
��  
accessTokenDecoded
�� &
==
��' )
null
��* .
)
��. /
{
�� 
throw
�� %
AuthenticationException
�� 1
.
��1 2
Create
��2 8
(
��8 9
CommonErrorCodes
��9 I
.
��I J
InvalidToken
��J V
,
��V W
$str��X �
)��� �
;��� �
}
�� 
else
�� 
{
�� "
AccessTokenComponent
�� (
.
��( )
AccessToken
��) 4
=
��5 6
response
��7 ?
.
��? @
IdToken
��@ G
;
��G H
if
�� 
(
��  
accessTokenDecoded
�� *
.
��* +
Audience
��+ 3
!=
��4 6
null
��7 ;
)
��; <
{
�� $
EnvironmentIdComponent
�� .
.
��. /
EnvironmentId
��/ <
=
��= > 
accessTokenDecoded
��? Q
.
��Q R
Audience
��R Z
.
��Z [
FirstOrDefault
��[ i
(
��i j
s
��j k
=>
��l n
s
��o p
.
��p q

StartsWith
��q {
(
��{ |
$str��| �
)��� �
)��� �
?��� �
.��� �
	Substring��� �
(��� �
$num��� �
)��� �
;��� �
}
�� 

PlayerInfo
�� 
=
��  
response
��! )
.
��) *
User
��* .
!=
��/ 1
null
��2 6
?
��7 8
new
��9 <

PlayerInfo
��= G
(
��G H
response
��H P
.
��P Q
User
��Q U
)
��U V
:
��W X
new
��Y \

PlayerInfo
��] g
(
��g h
response
��h p
.
��p q
UserId
��q w
)
��w x
;
��x y
PlayerIdComponent
�� %
.
��% &
PlayerId
��& .
=
��/ 0
response
��1 9
.
��9 :
UserId
��: @
;
��@ A#
SessionTokenComponent
�� )
.
��) *
SessionToken
��* 6
=
��7 8
response
��9 A
.
��A B
SessionToken
��B N
;
��N O
var
�� 
refreshTime
�� #
=
��$ %
response
��& .
.
��. /
	ExpiresIn
��/ 8
-
��9 :
Settings
��; C
.
��C D&
AccessTokenRefreshBuffer
��D \
;
��\ ]
var
�� 

expiryTime
�� "
=
��# $
response
��% -
.
��- .
	ExpiresIn
��. 7
-
��8 9
Settings
��: B
.
��B C%
AccessTokenExpiryBuffer
��C Z
;
��Z ["
AccessTokenComponent
�� (
.
��( )

ExpiryTime
��) 3
=
��4 5

m_DateTime
��6 @
.
��@ A
UtcNow
��A G
.
��G H

AddSeconds
��H R
(
��R S

expiryTime
��S ]
)
��] ^
;
��^ _
if
�� 
(
�� 
enableRefresh
�� %
)
��% &
{
�� 
ScheduleRefresh
�� '
(
��' (
refreshTime
��( 3
)
��3 4
;
��4 5
}
��  
ScheduleExpiration
�� &
(
��& '

expiryTime
��' 1
)
��1 2
;
��2 3
ChangeState
�� 
(
��  !
AuthenticationState
��  3
.
��3 4

Authorized
��4 >
)
��> ?
;
��? @
}
�� 
}
�� 
catch
�� 
(
�� %
AuthenticationException
�� *
)
��* +
{
�� 
throw
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
throw
�� %
AuthenticationException
�� -
.
��- .
Create
��. 4
(
��4 5
CommonErrorCodes
��5 E
.
��E F
Unknown
��F M
,
��M N
$str
��O r
,
��r s
e
��t u
)
��u v
;
��v w
}
�� 
}
�� 	
internal
�� 
void
�� 
ScheduleRefresh
�� %
(
��% &
double
��& ,
delay
��- 2
)
��2 3
{
�� 	$
CancelScheduledRefresh
�� "
(
��" #
)
��# $
;
��$ %
if
�� 
(
�� 

m_DateTime
�� 
.
�� 
UtcNow
�� !
.
��! "

AddSeconds
��" ,
(
��, -
delay
��- 2
)
��2 3
<
��4 5"
AccessTokenComponent
��6 J
.
��J K

ExpiryTime
��K U
)
��U V
{
�� 
Logger
�� 
.
�� 

LogVerbose
�� !
(
��! "
$"
��" $
$str
��$ :
{
��: ;
delay
��; @
}
��@ A
$str
��A J
"
��J K
)
��K L
;
��L M
RefreshActionId
�� 
=
��  !
m_Scheduler
��" -
.
��- .
ScheduleAction
��. <
(
��< =%
ExecuteScheduledRefresh
��= T
,
��T U
delay
��V [
)
��[ \
;
��\ ]
}
�� 
}
�� 	
internal
�� 
void
��  
ScheduleExpiration
�� (
(
��( )
double
��) /
delay
��0 5
)
��5 6
{
�� 	
Logger
�� 
.
�� 

LogVerbose
�� 
(
�� 
$"
��  
$str
��  9
{
��9 :
delay
��: ?
}
��? @
$str
��@ I
"
��I J
)
��J K
;
��K L'
CancelScheduledExpiration
�� %
(
��% &
)
��& '
;
��' ( 
ExpirationActionId
�� 
=
��  
m_Scheduler
��! ,
.
��, -
ScheduleAction
��- ;
(
��; <(
ExecuteScheduledExpiration
��< V
,
��V W
delay
��X ]
)
��] ^
;
��^ _
}
�� 	
internal
�� 
void
�� %
ExecuteScheduledRefresh
�� -
(
��- .
)
��. /
{
�� 	
Logger
�� 
.
�� 

LogVerbose
�� 
(
�� 
$"
��  
$str
��  <
"
��< =
)
��= >
;
��> ?
RefreshActionId
�� 
=
�� 
null
�� "
;
��" #%
RefreshAccessTokenAsync
�� #
(
��# $
)
��$ %
;
��% &
}
�� 	
internal
�� 
void
�� (
ExecuteScheduledExpiration
�� 0
(
��0 1
)
��1 2
{
�� 	
Logger
�� 
.
�� 

LogVerbose
�� 
(
�� 
$"
��  
$str
��  ?
"
��? @
)
��@ A
;
��A B 
ExpirationActionId
�� 
=
��  
null
��! %
;
��% &
Expire
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� $
CancelScheduledRefresh
�� ,
(
��, -
)
��- .
{
�� 	
if
�� 
(
�� 
RefreshActionId
�� 
.
��  
HasValue
��  (
)
��( )
{
�� 
m_Scheduler
�� 
.
�� 
CancelAction
�� (
(
��( )
RefreshActionId
��) 8
.
��8 9
Value
��9 >
)
��> ?
;
��? @
RefreshActionId
�� 
=
��  !
null
��" &
;
��& '
}
�� 
}
�� 	
internal
�� 
void
�� '
CancelScheduledExpiration
�� /
(
��/ 0
)
��0 1
{
�� 	
if
�� 
(
��  
ExpirationActionId
�� "
.
��" #
HasValue
��# +
)
��+ ,
{
�� 
m_Scheduler
�� 
.
�� 
CancelAction
�� (
(
��( ) 
ExpirationActionId
��) ;
.
��; <
Value
��< A
)
��A B
;
��B C 
ExpirationActionId
�� "
=
��# $
null
��% )
;
��) *
}
�� 
}
�� 	
internal
�� 
void
�� 
Expire
�� 
(
�� 
)
�� 
{
�� 	"
AccessTokenComponent
��  
.
��  !
Clear
��! &
(
��& '
)
��' (
;
��( )$
CancelScheduledRefresh
�� "
(
��" #
)
��# $
;
��$ %'
CancelScheduledExpiration
�� %
(
��% &
)
��& '
;
��' (
ChangeState
�� 
(
�� !
AuthenticationState
�� +
.
��+ ,
Expired
��, 3
)
��3 4
;
��4 5
}
�� 	
internal
�� 
void
�� 
MigrateCache
�� "
(
��" #
)
��# $
{
�� 	
try
�� 
{
�� #
SessionTokenComponent
�� %
.
��% &
Migrate
��& -
(
��- .
)
��. /
;
��/ 0
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogException
�� "
(
��" #
e
��# $
)
��$ %
;
��% &
}
�� 
}
�� 	
void
�� 
ChangeState
�� 
(
�� !
AuthenticationState
�� ,
newState
��- 5
)
��5 6
{
�� 	
if
�� 
(
�� 
State
�� 
==
�� 
newState
�� !
)
��! "
return
�� 
;
�� 
Logger
�� 
.
�� 

LogVerbose
�� 
(
�� 
$"
��  
$str
��  2
{
��2 3
State
��3 8
}
��8 9
$str
��9 ?
{
��? @
newState
��@ H
}
��H I
$str
��I J
"
��J K
)
��K L
;
��L M
var
�� 
oldState
�� 
=
�� 
State
��  
;
��  !
State
�� 
=
�� 
newState
�� 
;
��  
HandleStateChanged
�� 
(
�� 
oldState
�� '
,
��' (
newState
��) 1
)
��1 2
;
��2 3
}
�� 	
void
��  
HandleStateChanged
�� 
(
��  !
AuthenticationState
��  3
oldState
��4 <
,
��< =!
AuthenticationState
��> Q
newState
��R Z
)
��Z [
{
�� 	
StateChanged
�� 
?
�� 
.
�� 
Invoke
��  
(
��  !
oldState
��! )
,
��) *
newState
��+ 3
)
��3 4
;
��4 5
switch
�� 
(
�� 
newState
�� 
)
�� 
{
�� 
case
�� !
AuthenticationState
�� (
.
��( )

Authorized
��) 3
:
��3 4
if
�� 
(
�� 
oldState
��  
!=
��! #!
AuthenticationState
��$ 7
.
��7 8

Refreshing
��8 B
)
��B C
{
�� 
SignedIn
��  
?
��  !
.
��! "
Invoke
��" (
(
��( )
)
��) *
;
��* +
}
�� 
break
�� 
;
�� 
case
�� !
AuthenticationState
�� (
.
��( )
	SignedOut
��) 2
:
��2 3
if
�� 
(
�� 
oldState
��  
!=
��! #!
AuthenticationState
��$ 7
.
��7 8
	SigningIn
��8 A
)
��A B
{
�� 
	SignedOut
�� !
?
��! "
.
��" #
Invoke
��# )
(
��) *
)
��* +
;
��+ ,
}
�� 
break
�� 
;
�� 
case
�� !
AuthenticationState
�� (
.
��( )
Expired
��) 0
:
��0 1
Expired
�� 
?
�� 
.
�� 
Invoke
�� #
(
��# $
)
��$ %
;
��% &
break
�� 
;
�� 
}
�� 
}
�� 	
void
�� #
SendSignInFailedEvent
�� "
(
��" #$
RequestFailedException
��# 9
	exception
��: C
)
��C D
{
�� 	
SignInFailed
�� 
?
�� 
.
�� 
Invoke
��  
(
��  !
	exception
��! *
)
��* +
;
��+ ,
SignOut
�� 
(
�� 
)
�� 
;
�� 
}
�� 	$
RequestFailedException
�� .
 BuildClientInvalidStateException
�� ?
(
��? @
)
��@ A
{
�� 	
var
�� 
errorMessage
�� 
=
�� 
string
�� %
.
��% &
Empty
��& +
;
��+ ,
switch
�� 
(
�� 
State
�� 
)
�� 
{
�� 
case
�� !
AuthenticationState
�� (
.
��( )
	SignedOut
��) 2
:
��2 3
errorMessage
��  
=
��! "
$str
��# `
;
��` a
break
�� 
;
�� 
case
�� !
AuthenticationState
�� (
.
��( )
	SigningIn
��) 2
:
��2 3
errorMessage
��  
=
��! "
$str
��# h
;
��h i
break
�� 
;
�� 
case
�� !
AuthenticationState
�� (
.
��( )

Authorized
��) 3
:
��3 4
case
�� !
AuthenticationState
�� (
.
��( )

Refreshing
��) 3
:
��3 4
errorMessage
��  
=
��! "
$str
��# g
;
��g h
break
�� 
;
�� 
case
�� !
AuthenticationState
�� (
.
��( )
Expired
��) 0
:
��0 1
errorMessage
��  
=
��! "
$str
��# f
;
��f g
break
�� 
;
�� 
}
�� 
	m_Metrics
�� 
.
�� 3
%SendClientInvalidStateExceptionMetric
�� ;
(
��; <
)
��< =
;
��= >
return
�� %
AuthenticationException
�� *
.
��* +
Create
��+ 1
(
��1 2&
AuthenticationErrorCodes
��2 J
.
��J K$
ClientInvalidUserState
��K a
,
��a b
errorMessage
��c o
)
��o p
;
��p q
}
�� 	$
RequestFailedException
�� 0
"BuildClientInvalidProfileException
�� A
(
��A B
)
��B C
{
�� 	
return
�� %
AuthenticationException
�� *
.
��* +
Create
��+ 1
(
��1 2&
AuthenticationErrorCodes
��2 J
.
��J K"
ClientInvalidProfile
��K _
,
��_ `
$str��a �
)��� �
;��� �
}
�� 	$
RequestFailedException
�� :
,BuildClientUnlinkExternalIdNotFoundException
�� K
(
��K L
)
��L M
{
�� 	
	m_Metrics
�� 
.
�� 9
+SendUnlinkExternalIdNotFoundExceptionMetric
�� A
(
��A B
)
��B C
;
��C D
return
�� %
AuthenticationException
�� *
.
��* +
Create
��+ 1
(
��1 2&
AuthenticationErrorCodes
��2 J
.
��J K,
ClientUnlinkExternalIdNotFound
��K i
,
��i j
$str��k �
)��� �
;��� �
}
�� 	$
RequestFailedException
�� 7
)BuildClientSessionTokenNotExistsException
�� H
(
��H I
)
��I J
{
�� 	
	m_Metrics
�� 
.
�� <
.SendClientSessionTokenNotExistsExceptionMetric
�� D
(
��D E
)
��E F
;
��F G#
SessionTokenComponent
�� !
.
��! "
Clear
��" '
(
��' (
)
��( )
;
��) *
return
�� %
AuthenticationException
�� *
.
��* +
Create
��+ 1
(
��1 2&
AuthenticationErrorCodes
��2 J
.
��J K#
ClientNoActiveSession
��K `
,
��` a
$str��b �
)��� �
;��� �
}
�� 	
internal
�� $
RequestFailedException
�� '"
BuildServerException
��( <
(
��< =!
WebRequestException
��= P
	exception
��Q Z
)
��Z [
{
�� 	
Logger
�� 
.
�� 
LogError
�� 
(
�� 
$"
�� 
$str
�� .
{
��. /
	exception
��/ 8
.
��8 9
ResponseCode
��9 E
}
��E F
$str
��F H
{
��H I
	exception
��I R
.
��R S
Message
��S Z
}
��Z [
"
��[ \
)
��\ ]
;
��] ^
if
�� 
(
�� 
	exception
�� 
.
�� 
NetworkError
�� &
)
��& '
{
�� 
	m_Metrics
�� 
.
�� $
SendNetworkErrorMetric
�� 0
(
��0 1
)
��1 2
;
��2 3
return
�� %
AuthenticationException
�� .
.
��. /
Create
��/ 5
(
��5 6
CommonErrorCodes
��6 F
.
��F G
TransportError
��G U
,
��U V
$"
��W Y
$str
��Y h
{
��h i
	exception
��i r
.
��r s
Message
��s z
}
��z {
"
��{ |
,
��| }
	exception��~ �
)��� �
;��� �
}
�� 
try
�� 
{
�� 
var
�� 
errorResponse
�� !
=
��" #
JsonConvert
��$ /
.
��/ 0
DeserializeObject
��0 A
<
��A B)
AuthenticationErrorResponse
��B ]
>
��] ^
(
��^ _
	exception
��_ h
.
��h i
Message
��i p
)
��p q
;
��q r
var
�� 
	errorCode
�� 
=
�� 
MapErrorCodes
��  -
(
��- .
errorResponse
��. ;
.
��; <
Title
��< A
)
��A B
;
��B C
if
�� 
(
�� 
	errorCode
�� 
==
��  &
AuthenticationErrorCodes
��! 9
.
��9 :!
InvalidSessionToken
��: M
)
��M N
{
�� #
SessionTokenComponent
�� )
.
��) *
Clear
��* /
(
��/ 0
)
��0 1
;
��1 2
Logger
�� 
.
�� 
LogError
�� #
(
��# $
$"
��$ &
$str��& �
"��� �
)��� �
;��� �
}
�� 
return
�� %
AuthenticationException
�� .
.
��. /
Create
��/ 5
(
��5 6
	errorCode
��6 ?
,
��? @
errorResponse
��A N
.
��N O
Detail
��O U
,
��U V
	exception
��W `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
JsonException
��  
e
��! "
)
��" #
{
�� 
return
�� %
AuthenticationException
�� .
.
��. /
Create
��/ 5
(
��5 6
CommonErrorCodes
��6 F
.
��F G
Unknown
��G N
,
��N O
$str
��P x
,
��x y
e
��z {
)
��{ |
;
��| }
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� %
AuthenticationException
�� .
.
��. /
Create
��/ 5
(
��5 6
CommonErrorCodes
��6 F
.
��F G
Unknown
��G N
,
��N O
$str
��P 
,�� �
	exception��� �
)��� �
;��� �
}
�� 
}
�� 	
int
�� 
MapErrorCodes
�� 
(
�� 
string
��  
serverErrorTitle
��! 1
)
��1 2
{
�� 	
switch
�� 
(
�� 
serverErrorTitle
�� $
)
��$ %
{
�� 
case
�� 
$str
�� $
:
��$ %
return
�� &
AuthenticationErrorCodes
�� 3
.
��3 4"
AccountAlreadyLinked
��4 H
;
��H I
case
�� 
$str
�� 4
:
��4 5
return
�� &
AuthenticationErrorCodes
�� 3
.
��3 4&
AccountLinkLimitExceeded
��4 L
;
��L M
case
�� 
$str
�� )
:
��) *
return
�� &
AuthenticationErrorCodes
�� 3
.
��3 4
InvalidParameters
��4 E
;
��E F
case
�� 
$str
�� ,
:
��, -
return
�� &
AuthenticationErrorCodes
�� 3
.
��3 4!
InvalidSessionToken
��4 G
;
��G H
case
�� 
$str
�� (
:
��( )
return
�� &
AuthenticationErrorCodes
�� 3
.
��3 4
InvalidParameters
��4 E
;
��E F
case
�� 
$str
�� +
:
��+ ,
return
�� 
CommonErrorCodes
�� +
.
��+ ,
InvalidToken
��, 8
;
��8 9
}
�� 
return
�� 
CommonErrorCodes
�� #
.
��# $
Unknown
��$ +
;
��+ ,
}
�� 	
}
�� 
}�� �
C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Security\AccessTokenExtraClaims.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	"
AccessTokenExtraClaims
  
{ 
[ 	
Preserve	 
] 
public		 "
AccessTokenExtraClaims		 %
(		% &
)		& '
{		( )
}		) *
}

 
} �
vC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Core\AuthenticationExtensions.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
public 

static 
class $
AuthenticationExtensions 0
{		 
internal

 
const

 
string

 

ProfileKey

 (
=

) *
$str

+ V
;

V W
public 
static !
InitializationOptions +

SetProfile, 6
(6 7
this7 ;!
InitializationOptions< Q
optionsR Y
,Y Z
string[ a
profileb i
)i j
{ 	
return 
options 
. 
	SetOption $
($ %

ProfileKey% /
,/ 0
profile1 8
)8 9
;9 :
} 	
} 
} �$
|C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Utilities\Cache\AuthenticationCache.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	
AuthenticationCache
 
:  
IAuthenticationCache  4
{ 
public 
string 
CloudProjectId $
=>% '
m_CloudProjectId( 8
.8 9
GetCloudProjectId9 J
(J K
)K L
;L M
public		 
string		 
Profile		 
=>		  
	m_Profile		! *
.		* +
Current		+ 2
;		2 3
ICloudProjectId 
m_CloudProjectId (
;( )
IProfile 
	m_Profile 
; 
string 
Prefix 
=> 
$" 
{ 
CloudProjectId *
}* +
$str+ ,
{, -
Profile- 4
}4 5
$str5 T
"T U
;U V
string 
	OldPrefix 
=> 
$" 
$str <
"< =
;= >
public 
AuthenticationCache "
(" #
ICloudProjectId# 2
cloudProjectId3 A
,A B
IProfileC K
profileL S
)S T
{ 	
m_CloudProjectId 
= 
cloudProjectId -
;- .
	m_Profile 
= 
profile 
;  
} 	
public 
bool 
HasKey 
( 
string !
key" %
)% &
{ 	
return 
PlayerPrefs 
. 
HasKey %
(% &
GetKey& ,
(, -
key- 0
)0 1
)1 2
;2 3
} 	
public 
void 
	DeleteKey 
( 
string $
key% (
)( )
{ 	
PlayerPrefs 
. 
	DeleteKey !
(! "
GetKey" (
(( )
key) ,
), -
)- .
;. /
} 	
public!! 
string!! 
	GetString!! 
(!!  
string!!  &
key!!' *
)!!* +
{"" 	
return## 
PlayerPrefs## 
.## 
	GetString## (
(##( )
GetKey##) /
(##/ 0
key##0 3
)##3 4
)##4 5
;##5 6
}$$ 	
public&& 
void&& 
	SetString&& 
(&& 
string&& $
key&&% (
,&&( )
string&&* 0
value&&1 6
)&&6 7
{'' 	
PlayerPrefs(( 
.(( 
	SetString(( !
(((! "
GetKey((" (
(((( )
key(() ,
)((, -
,((- .
value((/ 4
)((4 5
;((5 6
PlayerPrefs)) 
.)) 
Save)) 
()) 
))) 
;)) 
}** 	
public11 
void11 
Migrate11 
(11 
string11 "
key11# &
)11& '
{22 	
var33 
oldKey33 
=33 
	GetOldKey33 "
(33" #
key33# &
)33& '
;33' (
if55 
(55 
PlayerPrefs55 
.55 
HasKey55 "
(55" #
oldKey55# )
)55) *
)55* +
{66 
var77 
newKey77 
=77 
GetKey77 #
(77# $
key77$ '
)77' (
;77( )
PlayerPrefs88 
.88 
	SetString88 %
(88% &
newKey88& ,
,88, -
PlayerPrefs88. 9
.889 :
	GetString88: C
(88C D
oldKey88D J
)88J K
)88K L
;88L M
PlayerPrefs99 
.99 
	DeleteKey99 %
(99% &
oldKey99& ,
)99, -
;99- .
}:: 
};; 	
internal== 
string== 
GetKey== 
(== 
string== %
key==& )
)==) *
{>> 	
return?? 
Prefix?? 
+?? 
key?? 
;??  
}@@ 	
internalBB 
stringBB 
	GetOldKeyBB !
(BB! "
stringBB" (
keyBB) ,
)BB, -
{CC 	
returnDD 
	OldPrefixDD 
+DD 
keyDD "
;DD" #
}EE 	
}FF 
}GG �
}C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Utilities\Cache\IAuthenticationCache.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
	interface  
IAuthenticationCache "
:# $
ICache% +
{ 
string 
Profile 
{ 
get 
; 
} 
string 
CloudProjectId 
{ 
get  #
;# $
}% &
void 
Migrate 
( 
string 
key 
)  
;  !
}		 
}

 �
mC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\SignInOptions.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
public 

sealed 
class 
SignInOptions %
{ 
public 
bool 
CreateAccount !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
�C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Components\SessionTokenComponent.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	!
SessionTokenComponent
 
{ 
const 
string 

k_CacheKey 
=  !
$str" 1
;1 2
internal 
string 
SessionToken $
{% &
get' *
=>+ -
GetSessionToken. =
(= >
)> ?
;? @
setA D
=>E G
SetSessionTokenH W
(W X
valueX ]
)] ^
;^ _
}` a
readonly		  
IAuthenticationCache		 %
m_Cache		& -
;		- .
internal !
SessionTokenComponent &
(& ' 
IAuthenticationCache' ;
cache< A
)A B
{ 	
m_Cache 
= 
cache 
; 
} 	
internal 
void 
Clear 
( 
) 
{ 	
m_Cache 
. 
	DeleteKey 
( 

k_CacheKey (
)( )
;) *
} 	
internal 
void 
Migrate 
( 
) 
{ 	
m_Cache 
. 
Migrate 
( 

k_CacheKey &
)& '
;' (
} 	
string 
GetSessionToken 
( 
)  
{ 	
return 
m_Cache 
. 
	GetString $
($ %

k_CacheKey% /
)/ 0
;0 1
} 	
void 
SetSessionToken 
( 
string #
sessionToken$ 0
)0 1
{   	
m_Cache!! 
.!! 
	SetString!! 
(!! 

k_CacheKey!! (
,!!( )
sessionToken!!* 6
)!!6 7
;!!7 8
}"" 	
}## 
}$$ �
eC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str D
)D E
]E F
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str G
)G H
]H I
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str G
)G H
]H I
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str G
)G H
]H I
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str G
)G H
]H I
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str C
)C D
]D E
[		 
assembly		 	
:			 

InternalsVisibleTo		 
(		 
$str		 I
)		I J
]		J K
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
 G
)

G H
]

H I
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :�W
qC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Utilities\Jwt\JwtDecoder.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	

JwtDecoder
 
: 
IJwtDecoder "
{ 
static 
readonly 
DateTime  
k_UnixEpoch! ,
=- .
new/ 2
DateTime3 ;
(; <
$num< @
,@ A
$numB C
,C D
$numE F
,F G
$numH I
,I J
$numK L
,L M
$numN O
,O P
$numQ R
,R S
DateTimeKindT `
.` a
Utca d
)d e
;e f
static 
readonly 
char 
[ 
] 
k_JwtSeparator -
=. /
{0 1
$char2 5
}6 7
;7 8
readonly 
IDateTimeWrapper !

m_DateTime" ,
;, -
internal 

JwtDecoder 
( 
IDateTimeWrapper ,
dateTime- 5
)5 6
{ 	

m_DateTime 
= 
dateTime !
;! "
} 	
public 
T 
Decode 
< 
T 
> 
( 
string !
token" '
,' (
WellKnownKey) 5
[5 6
]6 7
keys8 <
)< =
where> C
TD E
:F G
BaseJwtH O
{ 	
if 
( 
keys 
== 
null 
) 
{ 
Logger 
. 
LogError 
(  
$str  E
)E F
;F G
return 
null 
; 
}   
var"" 
parts"" 
="" 
token"" 
."" 
Split"" #
(""# $
k_JwtSeparator""$ 2
)""2 3
;""3 4
if## 
(## 
parts## 
.## 
Length## 
==## 
$num##  !
)##! "
{$$ 
var%% 
header%% 
=%% 
parts%% "
[%%" #
$num%%# $
]%%$ %
;%%% &
var&& 
payload&& 
=&& 
parts&& #
[&&# $
$num&&$ %
]&&% &
;&&& '
var'' 
	signature'' 
='' 
Base64UrlDecode''  /
(''/ 0
parts''0 5
[''5 6
$num''6 7
]''7 8
)''8 9
;''9 :
var)) 

headerJson)) 
=))  
Encoding))! )
.))) *
UTF8))* .
.)). /
	GetString))/ 8
())8 9
Base64UrlDecode))9 H
())H I
header))I O
)))O P
)))P Q
;))Q R
var** 
payloadJson** 
=**  !
Encoding**" *
.*** +
UTF8**+ /
.**/ 0
	GetString**0 9
(**9 :
Base64UrlDecode**: I
(**I J
payload**J Q
)**Q R
)**R S
;**S T
var,, 

headerData,, 
=,,  
JsonConvert,,! ,
.,,, -
DeserializeObject,,- >
<,,> ?

Dictionary,,? I
<,,I J
string,,J P
,,,P Q
string,,R X
>,,X Y
>,,Y Z
(,,Z [

headerJson,,[ e
),,e f
;,,f g
var-- 
payloadData-- 
=--  !
JsonConvert--" -
.--- .
DeserializeObject--. ?
<--? @
T--@ A
>--A B
(--B C
payloadJson--C N
)--N O
;--O P
var00 
secondsSinceEpoch00 %
=00& '

m_DateTime00( 2
.002 3!
SecondsSinceUnixEpoch003 H
(00H I
)00I J
;00J K
if11 
(11 
secondsSinceEpoch11 %
>=11& (
payloadData11) 4
.114 5
ExpirationTimeUnix115 G
)11G H
{22 
Logger33 
.33 
LogError33 #
(33# $
$str33$ 8
)338 9
;339 :
return44 
null44 
;44  
}55 
if99 
(99 
VerifySignature99 #
(99# $
header99$ *
,99* +

headerData99, 6
[996 7
$str997 <
]99< =
,99= >
payload99? F
,99F G
keys99H L
,99L M
	signature99N W
)99W X
)99X Y
{:: 
return;; 
payloadData;; &
;;;& '
}<< 
Logger>> 
.>> 
LogError>> 
(>>  
$str>>  H
)>>H I
;>>I J
return?? 
null?? 
;?? 
}@@ 
LoggerBB 
.BB 
LogErrorBB 
(BB 
$"BB 
$strBB R
{BBR S
partsBBS X
.BBX Y
LengthBBY _
}BB_ `
$strBB` b
"BBb c
)BBc d
;BBd e
returnCC 
nullCC 
;CC 
}DD 	
boolFF 
VerifySignatureFF 
(FF 
stringFF #
headerFF$ *
,FF* +
stringFF, 2
keyIdFF3 8
,FF8 9
stringFF: @
payloadFFA H
,FFH I
WellKnownKeyFFJ V
[FFV W
]FFW X
keysFFY ]
,FF] ^
byteFF_ c
[FFc d
]FFd e
	signatureFFf o
)FFo p
{GG 	
varHH 
keyHH 
=HH 
GetKeyHH 
(HH 
keyIdHH "
,HH" #
keysHH$ (
)HH( )
;HH) *
ifJJ 
(JJ 
keyJJ 
!=JJ 
nullJJ 
)JJ 
{KK 
varLL 
verifiedLL 
=LL 
VerifyLL %
(LL% &
headerLL& ,
,LL, -
payloadLL. 5
,LL5 6
	signatureLL7 @
,LL@ A
Base64UrlDecodeLLB Q
(LLQ R
keyLLR U
.LLU V
NLLV W
)LLW X
,LLX Y
Base64UrlDecodeLLZ i
(LLi j
keyLLj m
.LLm n
ELLn o
)LLo p
)LLp q
;LLq r
ifMM 
(MM 
!MM 
verifiedMM 
)MM 
{NN 
LoggerOO 
.OO 
LogErrorOO #
(OO# $
$strOO$ D
)OOD E
;OOE F
}PP 
returnRR 
verifiedRR 
;RR  
}SS 
LoggerUU 
.UU 
LogErrorUU 
(UU 
$strUU [
)UU[ \
;UU\ ]
returnVV 
falseVV 
;VV 
}WW 	
WellKnownKeyYY 
GetKeyYY 
(YY 
stringYY "
keyIdYY# (
,YY( )
WellKnownKeyYY* 6
[YY6 7
]YY7 8
keysYY9 =
)YY= >
{ZZ 	
foreach[[ 
([[ 
var[[ 
key[[ 
in[[ 
keys[[  $
)[[$ %
{\\ 
if]] 
(]] 
key]] 
.]] 
KeyId]] 
==]]  
keyId]]! &
)]]& '
{^^ 
return__ 
key__ 
;__ 
}`` 
}aa 
returncc 
nullcc 
;cc 
}dd 	
boolff 
Verifyff 
(ff 
stringff 
headerff !
,ff! "
stringff# )
payloadff* 1
,ff1 2
byteff3 7
[ff7 8
]ff8 9
	signatureff: C
,ffC D
byteffE I
[ffI J
]ffJ K
modulusffL S
,ffS T
byteffU Y
[ffY Z
]ffZ [
exponentff\ d
)ffd e
{gg 	
usingjj 
(jj 
varjj 
rsajj 
=jj 
newjj  $
RSACryptoServiceProviderjj! 9
(jj9 :
)jj: ;
)jj; <
{kk 
rsall 
.ll 
ImportParametersll $
(ll$ %
newll% (
RSAParametersll) 6
{mm 
Modulusnn 
=nn 
modulusnn %
,nn% &
Exponentoo 
=oo 
exponentoo '
}pp 
)pp 
;pp 
usingrr 
(rr 
varrr 
sha256rr !
=rr" #
SHA256rr$ *
.rr* +
Createrr+ 1
(rr1 2
)rr2 3
)rr3 4
{ss 
vartt 
hashtt 
=tt 
sha256tt %
.tt% &
ComputeHashtt& 1
(tt1 2
Encodingtt2 :
.tt: ;
UTF8tt; ?
.tt? @
GetBytestt@ H
(ttH I
headerttI O
+ttP Q
$charttR U
+ttV W
payloadttX _
)tt_ `
)tt` a
;tta b
varvv 
rsaDeformattervv &
=vv' (
newvv) ,(
RSAPKCS1SignatureDeformattervv- I
(vvI J
rsavvJ M
)vvM N
;vvN O
rsaDeformatterww "
.ww" #
SetHashAlgorithmww# 3
(ww3 4
$strww4 <
)ww< =
;ww= >
returnxx 
rsaDeformatterxx )
.xx) *
VerifySignaturexx* 9
(xx9 :
hashxx: >
,xx> ?
	signaturexx@ I
)xxI J
;xxJ K
}yy 
}zz 
}{{ 	
byte}} 
[}} 
]}} 
Base64UrlDecode}} 
(}} 
string}} %
input}}& +
)}}+ ,
{~~ 	
var 
output 
= 
input 
; 
output
�� 
=
�� 
output
�� 
.
�� 
Replace
�� #
(
��# $
$char
��$ '
,
��' (
$char
��) ,
)
��, -
;
��- .
output
�� 
=
�� 
output
�� 
.
�� 
Replace
�� #
(
��# $
$char
��$ '
,
��' (
$char
��) ,
)
��, -
;
��- .
var
�� 
mod4
�� 
=
�� 
input
�� 
.
�� 
Length
�� #
%
��$ %
$num
��& '
;
��' (
if
�� 
(
�� 
mod4
�� 
>
�� 
$num
�� 
)
�� 
{
�� 
output
�� 
+=
�� 
new
�� 
string
�� $
(
��$ %
$char
��% (
,
��( )
$num
��* +
-
��, -
mod4
��. 2
)
��2 3
;
��3 4
}
�� 
var
�� 
	converted
�� 
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
output
��5 ;
)
��; <
;
��< =
return
�� 
	converted
�� 
;
�� 
}
�� 	
}
�� 
}�� �
C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Responses\WellKnownKeysResponse.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	!
WellKnownKeysResponse
 
{ 
[ 	
Preserve	 
] 
public		 !
WellKnownKeysResponse		 $
(		$ %
)		% &
{		' (
}		( )
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
WellKnownKey 
[ 
] 
Keys "
;" #
} 
} �
rC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Utilities\Jwt\IJwtDecoder.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
	interface 
IJwtDecoder 
{ 
T 	
Decode
 
< 
T 
> 
( 
string 
token  
,  !
WellKnownKey" .
[. /
]/ 0
keys1 5
)5 6
where7 <
T= >
:? @
BaseJwtA H
;H I
} 
} �
qC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\AuthenticationErrorCodes.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
public		 

static		 
class		 $
AuthenticationErrorCodes		 0
{

 
public 
static 
readonly 
int "
MinValue# +
=, -
$num. 3
;3 4
public 
static 
readonly 
int ""
ClientInvalidUserState# 9
=: ;
$num< A
;A B
public 
static 
readonly 
int "!
ClientNoActiveSession# 8
=9 :
$num; @
;@ A
public   
static   
readonly   
int   "
InvalidParameters  # 4
=  5 6
$num  7 <
;  < =
public%% 
static%% 
readonly%% 
int%% " 
AccountAlreadyLinked%%# 7
=%%8 9
$num%%: ?
;%%? @
public++ 
static++ 
readonly++ 
int++ "$
AccountLinkLimitExceeded++# ;
=++< =
$num++> C
;++C D
public11 
static11 
readonly11 
int11 "*
ClientUnlinkExternalIdNotFound11# A
=11B C
$num11D I
;11I J
public66 
static66 
readonly66 
int66 " 
ClientInvalidProfile66# 7
=668 9
$num66: ?
;66? @
public;; 
static;; 
readonly;; 
int;; "
InvalidSessionToken;;# 6
=;;7 8
$num;;9 >
;;;> ?
}<< 
}== �
hC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Identity.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
public 

sealed 
class 
Identity  
{ 
public 
string 
TypeId 
; 
public 
string 
UserId 
; 
internal 
Identity 
( 
ExternalIdentity *
externalIdentity+ ;
); <
{ 	
if 
( 
externalIdentity  
!=! #
null$ (
)( )
{ 
TypeId 
= 
externalIdentity )
.) *

ProviderId* 4
;4 5
UserId 
= 
externalIdentity )
.) *

ExternalId* 4
;4 5
} 
} 	
} 
} �
wC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Metrics\IAuthenticationMetrics.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
	interface "
IAuthenticationMetrics $
{ 
void "
SendNetworkErrorMetric #
(# $
)$ %
;% &
void		 $
SendExpiredSessionMetric		 %
(		% &
)		& '
;		' (
void 1
%SendClientInvalidStateExceptionMetric 2
(2 3
)3 4
;4 5
void 7
+SendUnlinkExternalIdNotFoundExceptionMetric 8
(8 9
)9 :
;: ;
void :
.SendClientSessionTokenNotExistsExceptionMetric ;
(; <
)< =
;= >
} 
} �
oC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Utilities\Cache\ICache.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
	interface 
ICache 
{ 
bool 
HasKey 
( 
string 
key 
) 
;  
void 
	DeleteKey 
( 
string 
key !
)! "
;" #
void 
	SetString 
( 
string 
key !
,! "
string# )
value* /
)/ 0
;0 1
string		 
	GetString		 
(		 
string		 
key		  #
)		# $
;		$ %
}

 
} �	
�C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Requests\SignInWithExternalTokenRequest.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[

 
Serializable

 
]

 
class 	*
SignInWithExternalTokenRequest
 (
{ 
[ 	
Preserve	 
] 
internal *
SignInWithExternalTokenRequest /
(/ 0
)0 1
{2 3
}3 4
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

IdProvider  
;  !
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Token 
; 
[## 	
JsonProperty##	 
(## 
$str## "
)##" #
]### $
public$$ 
bool$$ 

SignInOnly$$ 
;$$ 
}%% 
}&& �
nC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\AuthenticationService.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
public 

static 
class !
AuthenticationService -
{		 
static

 "
IAuthenticationService

 %

s_Instance

& 0
;

0 1
public 
static "
IAuthenticationService ,
Instance- 5
{ 	
get 
{ 
if 
( 

s_Instance 
== !
null" &
)& '
{ 
throw 
new +
ServicesInitializationException =
(= >
$str> ^
+_ `
$str T
)T U
;U V
} 
return 

s_Instance !
;! "
} 
internal 
set 
=> 

s_Instance &
=' (
value) .
;. /
}   	
}!! 
}"" �
iC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Utilities\Logger.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
static		 

class		 
Logger		 
{

 
const 
string 
k_Tag 
= 
$str /
;/ 0
internal 
const 
string (
k_GlobalVerboseLoggingDefine :
=; <
$str= d
;d e
internal 
const 
string 0
$k_AuthenticationVerboseLoggingDefine B
=C D
$strE r
;r s
public 
static 
void 
Log 
( 
object %
message& -
)- .
=>/ 1
Debug2 7
.7 8
unityLogger8 C
.C D
LogD G
(G H
k_TagH M
,M N
messageO V
)V W
;W X
public 
static 
void 

LogWarning %
(% &
object& ,
message- 4
)4 5
=>6 8
Debug9 >
.> ?
unityLogger? J
.J K

LogWarningK U
(U V
k_TagV [
,[ \
message] d
)d e
;e f
public 
static 
void 
LogError #
(# $
object$ *
message+ 2
)2 3
=>4 6
Debug7 <
.< =
unityLogger= H
.H I
LogErrorI Q
(Q R
k_TagR W
,W X
messageY `
)` a
;a b
public 
static 
void 
LogException '
(' (
	Exception( 1
	exception2 ;
); <
=>= ?
Debug@ E
.E F
unityLoggerF Q
.Q R
LogR U
(U V
LogTypeV ]
.] ^
	Exception^ g
,g h
k_Tagi n
,n o
	exceptionp y
)y z
;z {
[ 	
Conditional	 
( 
$str '
)' (
]( )
public 
static 
void 
LogAssertion '
(' (
object( .
message/ 6
)6 7
=>8 :
Debug; @
.@ A
unityLoggerA L
.L M
LogM P
(P Q
LogTypeQ X
.X Y
AssertY _
,_ `
k_Taga f
,f g
messageh o
)o p
;p q
[ 	
Conditional	 
( (
k_GlobalVerboseLoggingDefine 1
)1 2
,2 3
Conditional4 ?
(? @0
$k_AuthenticationVerboseLoggingDefine@ d
)d e
]e f
public 
static 
void 

LogVerbose %
(% &
object& ,
message- 4
)4 5
=>6 8
Debug9 >
.> ?
unityLogger? J
.J K
LogK N
(N O
k_TagO T
,T U
messageV ]
)] ^
;^ _
} 
} �
C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Settings\AuthenticationSettings.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	"
AuthenticationSettings
  
:! "#
IAuthenticationSettings# :
{ 
const 
int &
k_AccessTokenRefreshBuffer ,
=- .
$num/ 2
;2 3
const 
int %
k_AccessTokenExpiryBuffer +
=, -
$num. 0
;0 1
const 
int %
k_RefreshAttemptFrequency +
=, -
$num. 0
;0 1
public		 
int		 $
AccessTokenRefreshBuffer		 +
{		, -
get		. 1
;		1 2
internal		3 ;
set		< ?
;		? @
}		A B
public

 
int

 #
AccessTokenExpiryBuffer

 *
{

+ ,
get

- 0
;

0 1
internal

2 :
set

; >
;

> ?
}

@ A
public 
int #
RefreshAttemptFrequency *
{+ ,
get- 0
;0 1
internal2 :
set; >
;> ?
}@ A
internal "
AuthenticationSettings '
(' (
)( )
{ 	$
AccessTokenRefreshBuffer $
=% &&
k_AccessTokenRefreshBuffer' A
;A B#
AccessTokenExpiryBuffer #
=$ %%
k_AccessTokenExpiryBuffer& ?
;? @#
RefreshAttemptFrequency #
=$ %%
k_RefreshAttemptFrequency& ?
;? @
} 	
internal 
void 
Reset 
( 
) 
{ 	$
AccessTokenRefreshBuffer $
=% &&
k_AccessTokenRefreshBuffer' A
;A B#
AccessTokenExpiryBuffer #
=$ %%
k_AccessTokenExpiryBuffer& ?
;? @#
RefreshAttemptFrequency #
=$ %%
k_RefreshAttemptFrequency& ?
;? @
} 	
} 
} �
�C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Components\Profile\ProfileComponent.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	
ProfileComponent
 
: 
IProfile %
{ 
public 
event 
Action 
< 
ProfileEventArgs ,
>, -
ProfileChange. ;
;; <
public		 
string		 
Current		 
{		 
get		  #
=>		$ &
_current		' /
;		/ 0
set		1 4
=>		5 7

SetProfile		8 B
(		B C
value		C H
)		H I
;		I J
}		K L
string 
_current 
; 
internal 
ProfileComponent !
(! "
string" (
profile) 0
)0 1
{ 	

SetProfile 
( 
profile 
) 
;  
} 	
public 
void 

SetProfile 
( 
string %
profile& -
)- .
{ 	
_current 
= 
profile 
; 
ProfileChange 
? 
. 
Invoke !
(! "
new" %
ProfileEventArgs& 6
(6 7
_current7 ?
)? @
)@ A
;A B
} 	
} 
} �
nC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Responses\User.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[ 
Serializable 
] 
class 	
User
 
{ 
[ 	
Preserve	 
] 
public 
User 
( 
) 
{ 
} 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Id 
; 
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
string 
	CreatedAt 
;  
[$$ 	
JsonProperty$$	 
($$ 
$str$$ #
)$$# $
]$$$ %
public%% 
List%% 
<%% 
ExternalIdentity%% $
>%%$ %
ExternalIds%%& 1
;%%1 2
}&& 
}'' �
xC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Responses\SignInResponse.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[ 
Serializable 
] 
class 	
SignInResponse
 
{		 
[

 	
Preserve

	 
]

 
public 
SignInResponse 
( 
) 
{  !
}! "
[ 	
JsonProperty	 
( 
$str 
) 
]  
public 
string 
UserId 
; 
[ 	
JsonProperty	 
( 
$str 
)  
]  !
public 
string 
IdToken 
; 
[ 	
JsonProperty	 
( 
$str $
)$ %
]% &
public 
string 
SessionToken "
;" #
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
int 
	ExpiresIn 
; 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
User 
User 
; 
} 
} �2
jC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\PlayerInfo.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
public

 

sealed

 
class

 

PlayerInfo

 "
{ 
public 
string 
Id 
{ 
get 
; 
}  !
public 
DateTime 
? 
	CreatedAt "
{# $
get% (
;( )
}* +
public 
List 
< 
Identity 
> 

Identities (
{) *
get+ .
;. /
}0 1
internal 

PlayerInfo 
( 
string "
playerId# +
)+ ,
{ 	
Id   
=   
playerId   
;   

Identities!! 
=!! 
new!! 
List!! !
<!!! "
Identity!!" *
>!!* +
(!!+ ,
)!!, -
;!!- .
}"" 	
internal'' 

PlayerInfo'' 
('' 
PlayerInfoResponse'' .
response''/ 7
)''7 8
:''9 :
this''; ?
(''? @
response''@ H
.''H I
Id''I K
,''K L
response''M U
.''U V
	CreatedAt''V _
,''_ `
response''a i
.''i j
ExternalIds''j u
)''u v
{(( 	
})) 	
internal.. 

PlayerInfo.. 
(.. 
User..  
user..! %
)..% &
:..' (
this..) -
(..- .
user... 2
...2 3
Id..3 5
,..5 6
user..7 ;
...; <
	CreatedAt..< E
,..E F
user..G K
...K L
ExternalIds..L W
)..W X
{// 	
}00 	
internal55 

PlayerInfo55 
(55 
string55 "
playerId55# +
,55+ ,
string55- 3
	createdAt554 =
,55= >
List55? C
<55C D
ExternalIdentity55D T
>55T U
externalIdentities55V h
)55h i
{66 	
Id77 
=77 
playerId77 
;77 

Identities88 
=88 
new88 
List88 !
<88! "
Identity88" *
>88* +
(88+ ,
)88, -
;88- .
if:: 
(:: 
double:: 
.:: 
TryParse:: 
(::  
	createdAt::  )
,::) *
out::+ .
var::/ 2
createAtSeconds::3 B
)::B C
)::C D
{;; 
var<< 
epoch<< 
=<< 
new<< 
DateTime<<  (
(<<( )
$num<<) -
,<<- .
$num<</ 0
,<<0 1
$num<<2 3
,<<3 4
$num<<5 6
,<<6 7
$num<<8 9
,<<9 :
$num<<; <
,<<< =
DateTimeKind<<> J
.<<J K
Utc<<K N
)<<N O
;<<O P
	CreatedAt== 
=== 
epoch== !
.==! "

AddSeconds==" ,
(==, -
createAtSeconds==- <
)==< =
;=== >
}>> 
if@@ 
(@@ 
externalIdentities@@ "
!=@@# %
null@@& *
)@@* +
{AA 
foreachBB 
(BB 
varBB 

externalIdBB '
inBB( *
externalIdentitiesBB+ =
)BB= >
{CC 

IdentitiesDD 
.DD 
AddDD "
(DD" #
newDD# &
IdentityDD' /
(DD/ 0

externalIdDD0 :
)DD: ;
)DD; <
;DD< =
}EE 
}FF 
}GG 	
publicMM 
stringMM 
GetFacebookIdMM #
(MM# $
)MM$ %
{NN 	
returnOO 
GetIdentityIdOO  
(OO  !
IdProviderKeysOO! /
.OO/ 0
FacebookOO0 8
)OO8 9
;OO9 :
}PP 	
publicVV 
stringVV 

GetSteamIdVV  
(VV  !
)VV! "
{WW 	
returnXX 
GetIdentityIdXX  
(XX  !
IdProviderKeysXX! /
.XX/ 0
SteamXX0 5
)XX5 6
;XX6 7
}YY 	
public__ 
string__ 
GetGoogleId__ !
(__! "
)__" #
{`` 	
returnaa 
GetIdentityIdaa  
(aa  !
IdProviderKeysaa! /
.aa/ 0
Googleaa0 6
)aa6 7
;aa7 8
}bb 	
publichh 
stringhh 

GetAppleIdhh  
(hh  !
)hh! "
{ii 	
returnjj 
GetIdentityIdjj  
(jj  !
IdProviderKeysjj! /
.jj/ 0
Applejj0 5
)jj5 6
;jj6 7
}kk 	
internalpp 
stringpp 
GetIdentityIdpp %
(pp% &
stringpp& ,
typeIdpp- 3
)pp3 4
{qq 	
returnrr 

Identitiesrr 
?rr 
.rr 
FirstOrDefaultrr -
(rr- .
xrr. /
=>rr0 2
xrr3 4
.rr4 5
TypeIdrr5 ;
==rr< >
typeIdrr? E
)rrE F
?rrF G
.rrG H
UserIdrrH N
;rrN O
}ss 	
internalxx 
voidxx 
AddExternalIdentityxx )
(xx) *
ExternalIdentityxx* :

externalIdxx; E
)xxE F
{yy 	
ifzz 
(zz 

externalIdzz 
!=zz 
nullzz "
)zz" #
{{{ 

Identities|| 
.|| 
Add|| 
(|| 
new|| "
Identity||# +
(||+ ,

externalId||, 6
)||6 7
)||7 8
;||8 9
}}} 
}~~ 	
internal
�� 
void
�� 
RemoveIdentity
�� $
(
��$ %
string
��% +
typeId
��, 2
)
��2 3
{
�� 	

Identities
�� 
?
�� 
.
�� 
	RemoveAll
�� !
(
��! "
x
��" #
=>
��$ &
x
��' (
.
��( )
TypeId
��) /
==
��0 2
typeId
��3 9
)
��9 :
;
��: ;
}
�� 	
}
�� 
}�� ��
kC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Network\WebRequest.cs
	namespace		 	
Unity		
 
.		 
Services		 
.		 
Authentication		 '
{

 
class 	

WebRequest
 
{ 
readonly 
WebRequestVerb 
m_Verb  &
;& '
readonly 
string 
m_Url 
; 
readonly 
IDictionary 
< 
string #
,# $
string% +
>+ ,
	m_Headers- 6
;6 7
readonly 
string 
	m_Payload !
;! "
readonly 
string  
m_PayloadContentType ,
;, -
internal !
INetworkConfiguration &
Configuration' 4
{5 6
get7 :
;: ;
}< =
internal 
int 
Retries 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
internal 

WebRequest 
( !
INetworkConfiguration 1
configuration2 ?
,? @
WebRequestVerb *
verb+ /
,/ 0
string "
url# &
,& '
IDictionary '
<' (
string( .
,. /
string0 6
>6 7
headers8 ?
,? @
string "
payload# *
,* +
string "
payloadContentType# 5
)5 6
{ 	
Configuration 
= 
configuration )
;) *
m_Verb 
= 
verb 
; 
m_Url 
= 
url 
; 
	m_Headers   
=   
headers   
;    
	m_Payload!! 
=!! 
payload!! 
;!!   
m_PayloadContentType""  
=""! "
payloadContentType""# 5
;""5 6
}## 	
internal%% 
Task%% 
	SendAsync%% 
(%%  
)%%  !
{&& 	
return'' 
SendAttemptAsync'' #
(''# $
new''$ ' 
TaskCompletionSource''( <
<''< =
string''= C
>''C D
(''D E
)''E F
)''F G
;''G H
}(( 	
internal** 
async** 
Task** 
<** 
T** 
>** 
	SendAsync** (
<**( )
T**) *
>*** +
(**+ ,
)**, -
{++ 	
var,, 

textResult,, 
=,, 
await,, "
SendAttemptAsync,,# 3
(,,3 4
new,,4 7 
TaskCompletionSource,,8 L
<,,L M
string,,M S
>,,S T
(,,T U
),,U V
),,V W
;,,W X
Logger-- 
.-- 

LogVerbose-- 
(-- 
$str-- ?
)--? @
;--@ A
if00 
(00 
string00 
.00 
IsNullOrEmpty00 $
(00$ %

textResult00% /
)00/ 0
)000 1
{11 
return22 
default22 
;22 
}33 
else44 
{55 
try66 
{77 
return88 
JsonConvert88 &
.88& '
DeserializeObject88' 8
<888 9
T889 :
>88: ;
(88; <

textResult88< F
)88F G
;88G H
}99 
catch:: 
(:: 
	Exception::  
e::! "
)::" #
{;; 
var<< 
errorMessage<< $
=<<% &
$str<<' F
;<<F G
Logger== 
.== 
LogError== #
(==# $
$"==$ &
{==& '
errorMessage==' 3
}==3 4
$str==4 5
{==5 6
e==6 7
.==7 8
Message==8 ?
}==? @
"==@ A
)==A B
;==B C
throw>> 
new>> 
WebRequestException>> 1
(>>1 2
false>>2 7
,>>7 8
false>>9 >
,>>> ?
true>>@ D
,>>D E
$num>>F G
,>>G H
errorMessage>>I U
,>>U V
null>>W [
)>>[ \
;>>\ ]
}?? 
}@@ 
}AA 	
TaskCC 
<CC 
stringCC 
>CC 
SendAttemptAsyncCC %
(CC% & 
TaskCompletionSourceCC& :
<CC: ;
stringCC; A
>CCA B
tcsCCC F
)CCF G
{DD 	
tryEE 
{FF 
varGG 
requestGG 
=GG 
BuildGG #
(GG# $
)GG$ %
;GG% &
requestII 
.II 
SendWebRequestII &
(II& '
)II' (
.II( )
	completedII) 2
+=II3 5
(II6 7
	operationII7 @
)II@ A
=>IIB D
{JJ 
RequestCompletedKK $
(KK$ %
tcsKK% (
,KK( )
requestLL 
.LL  
responseCodeLL  ,
,LL, -"
RequestHasNetworkErrorMM .
(MM. /
requestMM/ 6
)MM6 7
,MM7 8!
RequestHasServerErrorNN -
(NN- .
requestNN. 5
)NN5 6
,NN6 7
requestOO 
.OO  
errorOO  %
,OO% &
requestPP 
.PP  
downloadHandlerPP  /
?PP/ 0
.PP0 1
textPP1 5
,PP5 6
requestQQ 
.QQ  
GetResponseHeadersQQ  2
(QQ2 3
)QQ3 4
)QQ4 5
;QQ5 6
requestRR 
.RR 
DisposeRR #
(RR# $
)RR$ %
;RR% &
}SS 
;SS 
}TT 
catchUU 
(UU 
	ExceptionUU 
eUU 
)UU 
{VV 
tcsWW 
.WW 
SetExceptionWW  
(WW  !
eWW! "
)WW" #
;WW# $
}XX 
returnZZ 
tcsZZ 
.ZZ 
TaskZZ 
;ZZ 
}[[ 	
internal]] 
UnityWebRequest]]  
Build]]! &
(]]& '
)]]' (
{^^ 	
Logger__ 
.__ 

LogVerbose__ 
(__ 
$"__  
$str__  -
{__- .
m_Verb__. 4
.__4 5
ToString__5 =
(__= >
)__> ?
.__? @
ToUpper__@ G
(__G H
)__H I
}__I J
$str__J K
{__K L
m_Url__L Q
}__Q R
$str__R T
"__T U
+__V W
$"`` 
{`` 
string`` 
.`` 
Join`` 
(`` 
$str`` #
,``# $
	m_Headers``% .
?``. /
.``/ 0
Select``0 6
(``6 7
x``7 8
=>``9 ;
x``< =
.``= >
Key``> A
+``B C
$str``D H
+``I J
x``K L
.``L M
Value``M R
)``R S
??``T V
new``W Z
string``[ a
[``a b
]``b c
{``d e
}``f g
)``g h
}``h i
$str``i k
"``k l
+``m n
(aa 
	m_Payloadaa 
??aa 
$straa  
)aa  !
)aa! "
;aa" #
UnityWebRequestcc 
unityWebRequestcc +
;cc+ ,
switchee 
(ee 
m_Verbee 
)ee 
{ff 
casegg 
WebRequestVerbgg #
.gg# $
Postgg$ (
:gg( )
ifhh 
(hh 
stringhh 
.hh 
IsNullOrEmptyhh ,
(hh, -
	m_Payloadhh- 6
)hh6 7
)hh7 8
{ii 
unityWebRequestjj '
=jj( )
UnityWebRequestjj* 9
.jj9 :
Postjj: >
(jj> ?
m_Urljj? D
,jjD E
stringjjF L
.jjL M
EmptyjjM R
)jjR S
;jjS T
}kk 
elsell 
{mm 
unityWebRequestnn '
=nn( )
newnn* -
UnityWebRequestnn. =
(nn= >
m_Urlnn> C
,nnC D
UnityWebRequestnnE T
.nnT U
kHttpVerbPOSTnnU b
)nnb c
{oo 
uploadHandlerpp )
=pp* +
newpp, /
UploadHandlerRawpp0 @
(pp@ A
EncodingppA I
.ppI J
UTF8ppJ N
.ppN O
GetBytesppO W
(ppW X
	m_PayloadppX a
)ppa b
)ppb c
,ppc d
downloadHandlerqq +
=qq, -
newqq. 1!
DownloadHandlerBufferqq2 G
(qqG H
)qqH I
}rr 
;rr 
}ss 
breakuu 
;uu 
casevv 
WebRequestVerbvv #
.vv# $
Getvv$ '
:vv' (
unityWebRequestww #
=ww$ %
UnityWebRequestww& 5
.ww5 6
Getww6 9
(ww9 :
m_Urlww: ?
)ww? @
;ww@ A
breakxx 
;xx 
caseyy 
WebRequestVerbyy #
.yy# $
Putyy$ '
:yy' (
ifzz 
(zz 
stringzz 
.zz 
IsNullOrEmptyzz ,
(zz, -
	m_Payloadzz- 6
)zz6 7
)zz7 8
{{{ 
throw}} 
new}} !
ArgumentException}}" 3
(}}3 4
$str}}4 R
)}}R S
;}}S T
}~~ 
else 
{
�� 
unityWebRequest
�� '
=
��( )
new
��* -
UnityWebRequest
��. =
(
��= >
m_Url
��> C
,
��C D
UnityWebRequest
��E T
.
��T U
kHttpVerbPUT
��U a
)
��a b
{
�� 
uploadHandler
�� )
=
��* +
new
��, /
UploadHandlerRaw
��0 @
(
��@ A
Encoding
��A I
.
��I J
UTF8
��J N
.
��N O
GetBytes
��O W
(
��W X
	m_Payload
��X a
)
��a b
)
��b c
,
��c d
downloadHandler
�� +
=
��, -
new
��. 1#
DownloadHandlerBuffer
��2 G
(
��G H
)
��H I
}
�� 
;
�� 
}
�� 
break
�� 
;
�� 
case
�� 
WebRequestVerb
�� #
.
��# $
Delete
��$ *
:
��* +
unityWebRequest
�� #
=
��$ %
UnityWebRequest
��& 5
.
��5 6
Delete
��6 <
(
��< =
m_Url
��= B
)
��B C
;
��C D
unityWebRequest
�� #
.
��# $
downloadHandler
��$ 3
=
��4 5
new
��6 9#
DownloadHandlerBuffer
��: O
(
��O P
)
��P Q
;
��Q R
break
�� 
;
�� 
default
�� 
:
�� 
throw
�� 
new
�� 
ArgumentException
�� /
(
��/ 0
$str
��0 ?
+
��@ A
m_Verb
��B H
)
��H I
;
��I J
}
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &"
m_PayloadContentType
��& :
)
��: ;
)
��; <
{
�� 
unityWebRequest
�� 
.
��  
SetRequestHeader
��  0
(
��0 1
$str
��1 ?
,
��? @"
m_PayloadContentType
��A U
)
��U V
;
��V W
}
�� 
if
�� 
(
�� 
	m_Headers
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
foreach
�� 
(
�� 
var
�� 
headerAndValue
�� +
in
��, .
	m_Headers
��/ 8
)
��8 9
{
�� 
unityWebRequest
�� #
.
��# $
SetRequestHeader
��$ 4
(
��4 5
headerAndValue
��5 C
.
��C D
Key
��D G
,
��G H
headerAndValue
��I W
.
��W X
Value
��X ]
)
��] ^
;
��^ _
}
�� 
}
�� 
unityWebRequest
�� 
.
�� 
timeout
�� #
=
��$ %
Configuration
��& 3
.
��3 4
Timeout
��4 ;
;
��; <
return
�� 
unityWebRequest
�� "
;
��" #
}
�� 	
internal
�� 
void
�� 
RequestCompleted
�� &
(
��& '"
TaskCompletionSource
��  
<
��  !
string
��! '
>
��' (
tcs
��) ,
,
��, -
long
�� 
responseCode
�� 
,
�� 
bool
�� 
isNetworkError
�� 
,
��  
bool
�� 
isServerError
�� 
,
�� 
string
�� 
	errorText
�� 
,
�� 
string
�� 
bodyText
�� 
,
�� 
IDictionary
�� 
<
�� 
string
�� 
,
�� 
string
��  &
>
��& '
headers
��( /
)
��/ 0
{
�� 	
Logger
�� 
.
�� 

LogVerbose
�� 
(
�� 
$"
��  
$str
��  .
{
��. /
m_Verb
��/ 5
.
��5 6
ToString
��6 >
(
��> ?
)
��? @
.
��@ A
ToUpper
��A H
(
��H I
)
��I J
}
��J K
$str
��K L
{
��L M
m_Url
��M R
}
��R S
$str
��S U
"
��U V
+
��W X
$"
�� 
{
�� 
string
�� 
.
�� 
Join
�� 
(
�� 
$str
�� #
,
��# $
headers
��% ,
?
��, -
.
��- .
Select
��. 4
(
��4 5
x
��5 6
=>
��7 9
x
��: ;
.
��; <
Key
��< ?
+
��@ A
$str
��B F
+
��G H
x
��I J
.
��J K
Value
��K P
)
��P Q
??
��R T
new
��U X
string
��Y _
[
��_ `
]
��` a
{
��b c
}
��d e
)
��e f
}
��f g
$str
��g i
"
��i j
+
��k l
$"
�� 
{
�� 
bodyText
�� 
}
�� 
$str
�� 
{
�� 
	errorText
�� (
}
��( )
$str
��) +
"
��+ ,
)
��, -
;
��- .
if
�� 
(
�� 
isNetworkError
�� 
&&
�� !
Retries
��" )
<
��* +
Configuration
��, 9
.
��9 :
Retries
��: A
)
��A B
{
�� 
Logger
�� 
.
�� 

LogWarning
�� !
(
��! "
$str
��" G
)
��G H
;
��H I
Retries
�� 
++
�� 
;
�� 
SendAttemptAsync
��  
(
��  !
tcs
��! $
)
��$ %
;
��% &
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
isNetworkError
�� "
||
��# %
isServerError
��& 3
)
��3 4
{
�� 
var
�� 
errorMessage
�� $
=
��% &
(
��' (
isServerError
��( 5
&&
��6 8
!
��9 :
string
��: @
.
��@ A
IsNullOrEmpty
��A N
(
��N O
bodyText
��O W
)
��W X
)
��X Y
?
��Z [
bodyText
��\ d
:
��e f
	errorText
��g p
;
��p q
var
�� 
	exception
�� !
=
��" #
new
��$ '!
WebRequestException
��( ;
(
��; <
isNetworkError
��< J
,
��J K
isServerError
��L Y
,
��Y Z
false
��[ `
,
��` a
responseCode
��b n
,
��n o
errorMessage
��p |
,
��| }
headers��~ �
)��� �
;��� �
tcs
�� 
.
�� 
SetException
�� $
(
��$ %
	exception
��% .
)
��. /
;
��/ 0
Logger
�� 
.
�� 

LogWarning
�� %
(
��% &
$"
��& (
$str
��( F
{
��F G
errorMessage
��G S
}
��S T
"
��T U
)
��U V
;
��V W
}
�� 
else
�� 
{
�� 
tcs
�� 
.
�� 
	SetResult
�� !
(
��! "
bodyText
��" *
)
��* +
;
��+ ,
}
�� 
}
�� 
}
�� 	
bool
�� #
RequestHasServerError
�� "
(
��" #
UnityWebRequest
��# 2
request
��3 :
)
��: ;
{
�� 	
return
�� 
request
�� 
.
�� 
responseCode
�� '
>=
��( *
$num
��+ .
;
��. /
}
�� 	
bool
�� $
RequestHasNetworkError
�� #
(
��# $
UnityWebRequest
��$ 3
request
��4 ;
)
��; <
{
�� 	
return
�� 
request
�� 
.
�� 
result
�� !
==
��" $
UnityWebRequest
��% 4
.
��4 5
Result
��5 ;
.
��; <
ConnectionError
��< K
&&
��L N
request
��O V
.
��V W
error
��W \
!=
��] _
$str
��` y
;
��y z
}
�� 	
}
�� 
}�� �
�C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Components\EnvironmentIdComponent.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	"
EnvironmentIdComponent
  
:! "
IEnvironmentId# 1
{ 
public 
string 
EnvironmentId #
{$ %
get& )
;) *
internal+ 3
set4 7
;7 8
}9 :
internal		 "
EnvironmentIdComponent		 '
(		' (
)		( )
{

 	
} 	
} 
} �
|C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Requests\SessionTokenRequest.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[ 
Serializable 
] 
class 	
SessionTokenRequest
 
{		 
[

 	
Preserve

	 
]

 
public 
SessionTokenRequest "
(" #
)# $
{% &
}& '
[ 	
JsonProperty	 
( 
$str $
)$ %
]% &
public 
string 
SessionToken "
;" #
} 
} �;
~C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Core\AuthenticationPackageInitializer.cs
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
 
Authentication

 '
{ 
class 	,
 AuthenticationPackageInitializer
 *
:+ ,!
IInitializablePackage- B
{ 
const 
string 
	k_UasHost 
=  
$str! M
;M N
public 
Task 

Initialize 
( 
CoreRegistry +
registry, 4
)4 5
{ 	
var 
settings 
= 
new "
AuthenticationSettings 5
(5 6
)6 7
;7 8
var 
	scheduler 
= 
registry $
.$ %
GetServiceComponent% 8
<8 9
IActionScheduler9 I
>I J
(J K
)K L
;L M
var 
environment 
= 
registry &
.& '
GetServiceComponent' :
<: ;
IEnvironments; H
>H I
(I J
)J K
;K L
var 
	projectId 
= 
registry $
.$ %
GetServiceComponent% 8
<8 9
ICloudProjectId9 H
>H I
(I J
)J K
;K L
var  
projectConfiguration $
=% &
registry' /
./ 0
GetServiceComponent0 C
<C D!
IProjectConfigurationD Y
>Y Z
(Z [
)[ \
;\ ]
var 
profile 
= 
new 
ProfileComponent .
(. / 
projectConfiguration/ C
.C D
	GetStringD M
(M N$
AuthenticationExtensionsN f
.f g

ProfileKeyg q
,q r
$strs |
)| }
)} ~
;~ 
var 
dateTime 
= 
new 
DateTimeWrapper .
(. /
)/ 0
;0 1
var 
metricsFactory 
=  
registry! )
.) *
GetServiceComponent* =
<= >
IMetricsFactory> M
>M N
(N O
)O P
;P Q
var 
metrics 
= 
new !
AuthenticationMetrics 3
(3 4
metricsFactory4 B
)B C
;C D
var 

jwtDecoder 
= 
new  

JwtDecoder! +
(+ ,
dateTime, 4
)4 5
;5 6
var   
cache   
=   
new   
AuthenticationCache   /
(  / 0
	projectId  0 9
,  9 :
profile  ; B
)  B C
;  C D
var!! 
accessToken!! 
=!! 
new!! ! 
AccessTokenComponent!!" 6
(!!6 7
)!!7 8
;!!8 9
var"" 
environmentId"" 
="" 
new""  #"
EnvironmentIdComponent""$ :
("": ;
)""; <
;""< =
var## 
playerId## 
=## 
new## 
PlayerIdComponent## 0
(##0 1
cache##1 6
)##6 7
;##7 8
var$$ 
sessionToken$$ 
=$$ 
new$$ "!
SessionTokenComponent$$# 8
($$8 9
cache$$9 >
)$$> ?
;$$? @
var%% 
wellKnownKeys%% 
=%% 
new%%  #"
WellKnownKeysComponent%%$ :
(%%: ;
)%%; <
;%%< =
var&& 
networkHandler&& 
=&&  
new&&! $
NetworkHandler&&% 3
(&&3 4
)&&4 5
;&&5 6
var'' 
networkClient'' 
='' 
new''  #'
AuthenticationNetworkClient''$ ?
(''? @
	k_UasHost''@ I
,''I J
	projectId(( 
,(( 
environment)) 
,)) 
networkHandler** 
,** 
accessToken++ 
)++ 
;++ 
var,, !
authenticationService,, %
=,,& '
new,,( +)
AuthenticationServiceInternal,,, I
(,,I J
settings-- 
,-- 
networkClient.. 
,.. 
profile// 
,// 

jwtDecoder00 
,00 
cache11 
,11 
	scheduler22 
,22 
dateTime33 
,33 
metrics44 
,44 
accessToken55 
,55 
environmentId66 
,66 
playerId77 
,77 
sessionToken88 
,88 
wellKnownKeys99 
)99 
;99 !
AuthenticationService;; !
.;;! "
Instance;;" *
=;;+ ,!
authenticationService;;- B
;;;B C
registry<< 
.<< $
RegisterServiceComponent<< -
<<<- .
IAccessToken<<. :
><<: ;
(<<; <!
authenticationService<<< Q
.<<Q R 
AccessTokenComponent<<R f
)<<f g
;<<g h
registry== 
.== $
RegisterServiceComponent== -
<==- .
IEnvironmentId==. <
>==< =
(=== >!
authenticationService==> S
.==S T"
EnvironmentIdComponent==T j
)==j k
;==k l
registry>> 
.>> $
RegisterServiceComponent>> -
<>>- .
	IPlayerId>>. 7
>>>7 8
(>>8 9!
authenticationService>>9 N
.>>N O
PlayerIdComponent>>O `
)>>` a
;>>a b
return@@ 
Task@@ 
.@@ 
CompletedTask@@ %
;@@% &
}AA 	
[CC 	)
RuntimeInitializeOnLoadMethodCC	 &
(CC& '%
RuntimeInitializeLoadTypeCC' @
.CC@ A
BeforeSceneLoadCCA P
)CCP Q
]CCQ R
staticDD 
voidDD 
RegisterDD 
(DD 
)DD 
{EE 	
CoreRegistryFF 
.FF 
InstanceFF !
.FF! "
RegisterPackageFF" 1
(FF1 2
newFF2 5,
 AuthenticationPackageInitializerFF6 V
(FFV W
)FFW X
)FFX Y
.GG 
	DependsOnGG 
<GG 
IEnvironmentsGG (
>GG( )
(GG) *
)GG* +
.HH 
	DependsOnHH 
<HH 
IActionSchedulerHH +
>HH+ ,
(HH, -
)HH- .
.II 
	DependsOnII 
<II 
ICloudProjectIdII *
>II* +
(II+ ,
)II, -
.JJ 
	DependsOnJJ 
<JJ !
IProjectConfigurationJJ 0
>JJ0 1
(JJ1 2
)JJ2 3
.KK 
	DependsOnKK 
<KK 
IMetricsFactoryKK *
>KK* +
(KK+ ,
)KK, -
.LL 
ProvidesComponentLL "
<LL" #
	IPlayerIdLL# ,
>LL, -
(LL- .
)LL. /
.MM 
ProvidesComponentMM "
<MM" #
IAccessTokenMM# /
>MM/ 0
(MM0 1
)MM1 2
.NN 
ProvidesComponentNN "
<NN" #
IEnvironmentIdNN# 1
>NN1 2
(NN2 3
)NN3 4
;NN4 5
}OO 	
}PP 
}QQ �	
C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Components\AccessTokenComponent.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	 
AccessTokenComponent
 
:  
IAccessToken! -
{ 
public 
string 
AccessToken !
{" #
get$ '
;' (
internal) 1
set2 5
;5 6
}7 8
public		 
DateTime		 
?		 

ExpiryTime		 #
{		$ %
get		& )
;		) *
internal		+ 3
set		4 7
;		7 8
}		9 :
internal  
AccessTokenComponent %
(% &
)& '
{ 	
} 	
internal 
void 
Clear 
( 
) 
{ 	
AccessToken 
= 
null 
; 

ExpiryTime 
= 
null 
; 
} 	
} 
} �
}C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Settings\NetworkConfiguration.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	 
NetworkConfiguration
 
:  !
INetworkConfiguration! 6
{ 
const 
int 
k_DefaultRetries "
=# $
$num% &
;& '
const 
int 
k_DefaultTimeout "
=# $
$num% &
;& '
public 
int 
Retries 
{ 
get  
;  !
set" %
;% &
}' (
=) *
k_DefaultRetries+ ;
;; <
public		 
int		 
Timeout		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
=		) *
k_DefaultTimeout		+ ;
;		; <
}

 
} �
kC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\LinkOptions.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
public 

sealed 
class 
LinkOptions #
{ 
public 
bool 
	ForceLink 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} �
qC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Utilities\IdProviderKeys.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
static 

class 
IdProviderKeys 
{ 
internal 
const 
string 
Apple #
=$ %
$str& 1
;1 2
internal 
const 
string 
Google $
=% &
$str' 3
;3 4
internal 
const 
string 
Facebook &
=' (
$str) 7
;7 8
internal 
const 
string 
Steam #
=$ %
$str& 8
;8 9
}		 
}

 �	
|C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Responses\PlayerInfoResponse.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[ 
Serializable 
] 
class 	
PlayerInfoResponse
 
{ 
[ 	
Preserve	 
] 
public 
PlayerInfoResponse !
(! "
)" #
{$ %
}& '
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Id 
; 
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
string 
	CreatedAt 
;  
[## 	
JsonProperty##	 
(## 
$str## #
)### $
]##$ %
public$$ 
List$$ 
<$$ 
ExternalIdentity$$ $
>$$$ %
ExternalIds$$& 1
;$$1 2
}%% 
}&& �
pC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Network\INetworkHandler.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
	interface 
INetworkHandler 
{ 
Task 
< 
T 
> 
GetAsync 
< 
T 
> 
( 
string "
url# &
,& '
IDictionary( 3
<3 4
string4 :
,: ;
string< B
>B C
headersD K
=L M
nullN R
)R S
;S T
Task

 
<

 
T

 
>

 
	PostAsync

 
<

 
T

 
>

 
(

 
string

 #
url

$ '
,

' (
IDictionary

) 4
<

4 5
string

5 ;
,

; <
string

= C
>

C D
headers

E L
=

M N
null

O S
)

S T
;

T U
Task 
< 
T 
> 
	PostAsync 
< 
T 
> 
( 
string #
url$ '
,' (
object) /
payload0 7
,7 8
IDictionary9 D
<D E
stringE K
,K L
stringM S
>S T
headersU \
=] ^
null_ c
)c d
;d e
Task 
< 
T 
> 
PutAsync 
< 
T 
> 
( 
string "
url# &
,& '
object( .
payload/ 6
,6 7
IDictionary8 C
<C D
stringD J
,J K
stringL R
>R S
headersT [
=\ ]
null^ b
)b c
;c d
Task 
DeleteAsync 
( 
string 
url  #
,# $
IDictionary% 0
<0 1
string1 7
,7 8
string9 ?
>? @
headersA H
=I J
nullK O
)O P
;P Q
Task 
< 
T 
> 
DeleteAsync 
< 
T 
> 
( 
string %
url& )
,) *
IDictionary+ 6
<6 7
string7 =
,= >
string? E
>E F
headersG N
=O P
nullQ U
)U V
;V W
} 
} �
�C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Components\Profile\ProfileEventArgs.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	
ProfileEventArgs
 
: 
	EventArgs &
{ 
public 
string 
Profile 
{ 
get  #
;# $
}% &
public		 
ProfileEventArgs		 
(		  
string		  &
profile		' .
)		. /
{

 	
Profile 
= 
profile 
; 
} 	
} 
} �
pC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Security\BaseJwt.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	
BaseJwt
 
{ 
[		 	
Preserve			 
]		 
public

 
BaseJwt

 
(

 
)

 
{

 
}

 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
int 
ExpirationTimeUnix %
;% &
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
int 
IssuedAtTimeUnix #
;# $
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
int 
NotBeforeTimeUnix $
;$ %
[ 	

JsonIgnore	 
] 
public 
DateTime 
? 
ExpirationTime '
=>( *
ConvertTimestamp+ ;
(; <
ExpirationTimeUnix< N
)N O
;O P
[ 	

JsonIgnore	 
] 
public 
DateTime 
? 
IssuedAtTime %
=>& (
ConvertTimestamp) 9
(9 :
IssuedAtTimeUnix: J
)J K
;K L
[ 	

JsonIgnore	 
] 
public 
DateTime 
? 
NotBeforeTime &
=>' )
ConvertTimestamp* :
(: ;
NotBeforeTimeUnix; L
)L M
;M N
	protected 
DateTime 
? 
ConvertTimestamp ,
(, -
int- 0
	timestamp1 :
): ;
{ 	
if 
( 
	timestamp 
!= 
$num 
) 
{ 
var   
dateTimeOffset   "
=  # $
DateTimeOffset  % 3
.  3 4
FromUnixTimeSeconds  4 G
(  G H
	timestamp  H Q
)  Q R
;  R S
return!! 
dateTimeOffset!! %
.!!% &
DateTime!!& .
;!!. /
}"" 
return$$ 
null$$ 
;$$ 
}%% 	
}&& 
}'' �
{C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Exceptions\AuthenticationException.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
public		 

sealed		 
class		 #
AuthenticationException		 /
:		0 1"
RequestFailedException		2 H
{

 #
AuthenticationException 
(  
int  #
	errorCode$ -
,- .
string/ 5
message6 =
,= >
	Exception? H
innerExceptionI W
=X Y
nullZ ^
)^ _
: 
base 
( 
	errorCode 
, 
message %
,% &
innerException' 5
)5 6
{ 	
} 	
public 
static "
RequestFailedException ,
Create- 3
(3 4
int4 7
	errorCode8 A
,A B
stringC I
messageJ Q
,Q R
	ExceptionS \
innerException] k
=l m
nulln r
)r s
{   	
if!! 
(!! 
	errorCode!! 
<!! $
AuthenticationErrorCodes!! 4
.!!4 5
MinValue!!5 =
)!!= >
{"" 
return## 
new## "
RequestFailedException## 1
(##1 2
	errorCode##2 ;
,##; <
message##= D
,##D E
innerException##F T
)##T U
;##U V
}$$ 
else%% 
{&& 
return'' 
new'' #
AuthenticationException'' 2
(''2 3
	errorCode''3 <
,''< =
message''> E
,''E F
innerException''G U
)''U V
;''V W
}(( 
})) 	
}** 
}++ �
tC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Security\AccessToken.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	
AccessToken
 
: 
BaseJwt 
{ 
[ 	
Preserve	 
] 
public		 
AccessToken		 
(		 
)		 
{		 
}		 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
[ 
] 
Audience  
;  !
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
string 
ClientId 
; 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public "
AccessTokenExtraClaims %
Extra& +
;+ ,
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Issuer 
; 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
JwtId 
; 
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 
	ProjectId 
;  
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
[ 
] 
Scope 
; 
[   	
JsonProperty  	 
(   
$str   
)   
]   
public!! 
string!! 
Subject!! 
;!! 
}"" 
}## �
tC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Network\WebRequestException.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	
WebRequestException
 
: 
	Exception  )
{ 
public 
bool 
NetworkError  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public		 
bool		  
DeserializationError		 (
{		) *
get		+ .
;		. /
private		0 7
set		8 ;
;		; <
}		= >
public

 
bool

 
ServerError

 
{

  !
get

" %
;

% &
private

' .
set

/ 2
;

2 3
}

4 5
public 
long 
ResponseCode  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
IDictionary 
< 
string !
,! "
string# )
>) *
ResponseHeaders+ :
{; <
get= @
;@ A
privateB I
setJ M
;M N
}O P
internal 
WebRequestException $
($ %
bool% )
isNetworkError* 8
,8 9
bool: >
isServerError? L
,L M
boolN R"
isDeserializationErrorS i
,i j
longk o
responseCodep |
,| }
string	~ �
errorMessage
� �
,
� �
IDictionary
� �
<
� �
string
� �
,
� �
string
� �
>
� �
responseHeaders
� �
=
� �
null
� �
)
� �
:
� �
base
� �
(
� �
errorMessage
� �
)
� �
{ 	
NetworkError 
= 
isNetworkError )
;) *
ServerError 
= 
isServerError '
;' ( 
DeserializationError  
=! ""
isDeserializationError# 9
;9 :
ResponseCode 
= 
responseCode '
;' (
ResponseHeaders 
= 
responseHeaders -
;- .
} 	
} 
} �g
|C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Network\AuthenticationNetworkClient.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	'
AuthenticationNetworkClient
 %
:& '(
IAuthenticationNetworkClient( D
{		 
const

 
string

 
k_WellKnownUrlStem

 '
=

( )
$str

* B
;

B C
const 
string 
k_AnonymousUrlStem '
=( )
$str* H
;H I
const 
string !
k_SessionTokenUrlStem *
=+ ,
$str- O
;O P
const 
string "
k_ExternalTokenUrlStem +
=, -
$str. Q
;Q R
const 
string &
k_LinkExternalTokenUrlStem /
=0 1
$str2 K
;K L
const 
string (
k_UnlinkExternalTokenUrlStem 1
=2 3
$str4 O
;O P
const 
string 
k_UsersUrlStem #
=$ %
$str& 1
;1 2
internal  
AccessTokenComponent % 
AccessTokenComponent& :
{; <
get= @
;@ A
}B C
internal 
ICloudProjectId  #
CloudProjectIdComponent! 8
{9 :
get; >
;> ?
}@ A
internal 
IEnvironments  
EnvironmentComponent 3
{4 5
get6 9
;9 :
}; <
internal 
INetworkHandler  
NetworkHandler! /
{0 1
get2 5
;5 6
}7 8
string 
AccessToken 
=>  
AccessTokenComponent 2
.2 3
AccessToken3 >
;> ?
string 
EnvironmentId 
=>  
EnvironmentComponent  4
.4 5
Current5 <
;< =
readonly 
string 
m_WellKnownUrl &
;& '
readonly 
string 
m_AnonymousUrl &
;& '
readonly 
string 
m_SessionTokenUrl )
;) *
readonly 
string 
m_ExternalTokenUrl *
;* +
readonly 
string "
m_LinkExternalTokenUrl .
;. /
readonly 
string $
m_UnlinkExternalTokenUrl 0
;0 1
readonly   
string   

m_UsersUrl   "
;  " #
readonly"" 

Dictionary"" 
<"" 
string"" "
,""" #
string""$ *
>""* +
m_CommonHeaders"", ;
;""; <
internal$$ '
AuthenticationNetworkClient$$ ,
($$, -
string$$- 3
host$$4 8
,$$8 9
ICloudProjectId%%- <
cloudProjectId%%= K
,%%K L
IEnvironments&&- :
environment&&; F
,&&F G
INetworkHandler''- <
networkHandler''= K
,''K L 
AccessTokenComponent((- A
accessToken((B M
)((M N
{)) 	 
AccessTokenComponent**  
=**! "
accessToken**# .
;**. /#
CloudProjectIdComponent++ #
=++$ %
cloudProjectId++& 4
;++4 5 
EnvironmentComponent,,  
=,,! "
environment,,# .
;,,. /
NetworkHandler-- 
=-- 
networkHandler-- +
;--+ ,
m_WellKnownUrl// 
=// 
host// !
+//" #
k_WellKnownUrlStem//$ 6
;//6 7
m_AnonymousUrl00 
=00 
host00 !
+00" #
k_AnonymousUrlStem00$ 6
;006 7
m_SessionTokenUrl11 
=11 
host11  $
+11% &!
k_SessionTokenUrlStem11' <
;11< =
m_ExternalTokenUrl22 
=22  
host22! %
+22& '"
k_ExternalTokenUrlStem22( >
;22> ?"
m_LinkExternalTokenUrl33 "
=33# $
host33% )
+33* +&
k_LinkExternalTokenUrlStem33, F
;33F G$
m_UnlinkExternalTokenUrl44 $
=44% &
host44' +
+44, -(
k_UnlinkExternalTokenUrlStem44. J
;44J K

m_UsersUrl55 
=55 
host55 
+55 
k_UsersUrlStem55  .
;55. /
m_CommonHeaders88 
=88 
new88 !

Dictionary88" ,
<88, -
string88- 3
,883 4
string885 ;
>88; <
{99 
[:: 
$str:: 
]:: 
=:: #
CloudProjectIdComponent::  7
.::7 8
GetCloudProjectId::8 I
(::I J
)::J K
,::K L
[<< 
$str<<  
]<<  !
=<<" #
$str<<$ (
}== 
;== 
}>> 	
public@@ 
Task@@ 
<@@ !
WellKnownKeysResponse@@ )
>@@) *!
GetWellKnownKeysAsync@@+ @
(@@@ A
)@@A B
{AA 	
returnBB 
NetworkHandlerBB !
.BB! "
GetAsyncBB" *
<BB* +!
WellKnownKeysResponseBB+ @
>BB@ A
(BBA B
m_WellKnownUrlBBB P
)BBP Q
;BBQ R
}CC 	
publicEE 
TaskEE 
<EE 
SignInResponseEE "
>EE" #"
SignInAnonymouslyAsyncEE$ :
(EE: ;
)EE; <
{FF 	
returnGG 
NetworkHandlerGG !
.GG! "
	PostAsyncGG" +
<GG+ ,
SignInResponseGG, :
>GG: ;
(GG; <
m_AnonymousUrlGG< J
,GGJ K
WithEnvironmentGGL [
(GG[ \
GetCommonHeadersGG\ l
(GGl m
)GGm n
)GGn o
)GGo p
;GGp q
}HH 	
publicJJ 
TaskJJ 
<JJ 
SignInResponseJJ "
>JJ" #'
SignInWithSessionTokenAsyncJJ$ ?
(JJ? @
stringJJ@ F
tokenJJG L
)JJL M
{KK 	
returnLL 
NetworkHandlerLL !
.LL! "
	PostAsyncLL" +
<LL+ ,
SignInResponseLL, :
>LL: ;
(LL; <
m_SessionTokenUrlLL< M
,LLM N
newLLO R
SessionTokenRequestLLS f
{MM 
SessionTokenNN 
=NN 
tokenNN $
}OO 
,OO 
WithEnvironmentOO 
(OO 
GetCommonHeadersOO /
(OO/ 0
)OO0 1
)OO1 2
)OO2 3
;OO3 4
}PP 	
publicRR 
TaskRR 
<RR 
SignInResponseRR "
>RR" #(
SignInWithExternalTokenAsyncRR$ @
(RR@ A
stringRRA G

idProviderRRH R
,RRR S*
SignInWithExternalTokenRequestRRT r
externalToken	RRs �
)
RR� �
{SS 	
varTT 
urlTT 
=TT 
$"TT 
{TT 
m_ExternalTokenUrlTT +
}TT+ ,
$strTT, -
{TT- .

idProviderTT. 8
}TT8 9
"TT9 :
;TT: ;
returnUU 
NetworkHandlerUU !
.UU! "
	PostAsyncUU" +
<UU+ ,
SignInResponseUU, :
>UU: ;
(UU; <
urlUU< ?
,UU? @
externalTokenUUA N
,UUN O
WithEnvironmentUUP _
(UU_ `
GetCommonHeadersUU` p
(UUp q
)UUq r
)UUr s
)UUs t
;UUt u
}VV 	
publicXX 
TaskXX 
<XX 
LinkResponseXX  
>XX  !&
LinkWithExternalTokenAsyncXX" <
(XX< =
stringXX= C

idProviderXXD N
,XXN O(
LinkWithExternalTokenRequestXXP l
externalTokenXXm z
)XXz {
{YY 	
varZZ 
urlZZ 
=ZZ 
$"ZZ 
{ZZ "
m_LinkExternalTokenUrlZZ /
}ZZ/ 0
$strZZ0 1
{ZZ1 2

idProviderZZ2 <
}ZZ< =
"ZZ= >
;ZZ> ?
return[[ 
NetworkHandler[[ !
.[[! "
	PostAsync[[" +
<[[+ ,
LinkResponse[[, 8
>[[8 9
([[9 :
url[[: =
,[[= >
externalToken[[? L
,[[L M
WithEnvironment[[N ]
([[] ^
WithAccessToken[[^ m
([[m n
GetCommonHeaders[[n ~
([[~ 
)	[[ �
)
[[� �
)
[[� �
)
[[� �
;
[[� �
}\\ 	
public^^ 
Task^^ 
<^^ 
UnlinkResponse^^ "
>^^" #$
UnlinkExternalTokenAsync^^$ <
(^^< =
string^^= C

idProvider^^D N
,^^N O
UnlinkRequest^^P ]
request^^^ e
)^^e f
{__ 	
var`` 
url`` 
=`` 
$"`` 
{`` $
m_UnlinkExternalTokenUrl`` 1
}``1 2
$str``2 3
{``3 4

idProvider``4 >
}``> ?
"``? @
;``@ A
returnaa 
NetworkHandleraa !
.aa! "
	PostAsyncaa" +
<aa+ ,
UnlinkResponseaa, :
>aa: ;
(aa; <
urlaa< ?
,aa? @
requestaaA H
,aaH I
WithEnvironmentaaJ Y
(aaY Z
WithAccessTokenaaZ i
(aai j
GetCommonHeadersaaj z
(aaz {
)aa{ |
)aa| }
)aa} ~
)aa~ 
;	aa �
}bb 	
publicdd 
Taskdd 
<dd 
PlayerInfoResponsedd &
>dd& '
GetPlayerInfoAsyncdd( :
(dd: ;
stringdd; A
playerIdddB J
)ddJ K
{ee 	
returnff 
NetworkHandlerff !
.ff! "
GetAsyncff" *
<ff* +
PlayerInfoResponseff+ =
>ff= >
(ff> ? 
CreateUserRequestUrlff? S
(ffS T
playerIdffT \
)ff\ ]
,ff] ^
WithAccessTokenff_ n
(ffn o
GetCommonHeadersffo 
(	ff �
)
ff� �
)
ff� �
)
ff� �
;
ff� �
}gg 	
publicii 
Taskii 
DeleteAccountAsyncii &
(ii& '
stringii' -
playerIdii. 6
)ii6 7
{jj 	
returnkk 
NetworkHandlerkk !
.kk! "
DeleteAsynckk" -
(kk- . 
CreateUserRequestUrlkk. B
(kkB C
playerIdkkC K
)kkK L
,kkL M
WithEnvironmentkkN ]
(kk] ^
WithAccessTokenkk^ m
(kkm n
GetCommonHeaderskkn ~
(kk~ 
)	kk �
)
kk� �
)
kk� �
)
kk� �
;
kk� �
}ll 	
stringnn  
CreateUserRequestUrlnn #
(nn# $
stringnn$ *
usernn+ /
)nn/ 0
{oo 	
returnpp 
$"pp 
{pp 

m_UsersUrlpp  
}pp  !
$strpp! "
{pp" #
userpp# '
}pp' (
"pp( )
;pp) *
}qq 	

Dictionaryss 
<ss 
stringss 
,ss 
stringss !
>ss! "
WithAccessTokenss# 2
(ss2 3

Dictionaryss3 =
<ss= >
stringss> D
,ssD E
stringssF L
>ssL M
headersssN U
)ssU V
{tt 	
headersuu 
[uu 
$struu #
]uu# $
=uu% &
$"uu' )
$struu) 0
{uu0 1
AccessTokenuu1 <
}uu< =
"uu= >
;uu> ?
returnvv 
headersvv 
;vv 
}ww 	

Dictionaryyy 
<yy 
stringyy 
,yy 
stringyy !
>yy! "
WithEnvironmentyy# 2
(yy2 3

Dictionaryyy3 =
<yy= >
stringyy> D
,yyD E
stringyyF L
>yyL M
headersyyN U
)yyU V
{zz 	
var{{ 
environmentId{{ 
={{ 
EnvironmentId{{  -
;{{- .
if}} 
(}} 
!}} 
string}} 
.}} 
IsNullOrEmpty}} %
(}}% &
environmentId}}& 3
)}}3 4
)}}4 5
{~~ 
headers 
[ 
$str *
]* +
=, -
environmentId. ;
;; <
}
�� 
return
�� 
headers
�� 
;
�� 
}
�� 	

Dictionary
�� 
<
�� 
string
�� 
,
�� 
string
�� !
>
��! "
GetCommonHeaders
��# 3
(
��3 4
)
��4 5
{
�� 	
return
�� 
new
�� 

Dictionary
�� !
<
��! "
string
��" (
,
��( )
string
��* 0
>
��0 1
(
��1 2
m_CommonHeaders
��2 A
)
��A B
;
��B C
}
�� 	
}
�� 
}�� �
vC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Requests\UnlinkRequest.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[

 
Serializable

 
]

 
class 	
UnlinkRequest
 
{ 
[ 	
Preserve	 
] 
internal 
UnlinkRequest 
( 
)  
{! "
}" #
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

IdProvider  
;  !
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

ExternalId  
;  !
} 
} �#
nC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Network\HttpUtilities.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
static 

class 
HttpUtilities 
{ 
public 
static 
IDictionary !
<! "
string" (
,( )
string* 0
>0 1
ParseQueryString2 B
(B C
stringC I
queryStringJ U
)U V
{ 	
var 
result 
= 
new 

Dictionary '
<' (
string( .
,. /
string0 6
>6 7
(7 8
)8 9
;9 :
var 

splitQuery 
= 
queryString (
.( )
Split) .
(. /
$char/ 2
,2 3
$char4 7
)7 8
;8 9
foreach 
( 
var 
param 
in !

splitQuery" ,
), -
{ 
var 
assignmentIndex #
=$ %
param& +
.+ ,
IndexOf, 3
(3 4
$char4 7
)7 8
;8 9
if 
( 
assignmentIndex #
>=$ &
$num' (
)( )
{ 
var 
	paramName !
=" #
UnescapeUrlString$ 5
(5 6
param6 ;
.; <
	Substring< E
(E F
$numF G
,G H
assignmentIndexI X
)X Y
)Y Z
;Z [
var 

paramValue "
=# $
UnescapeUrlString% 6
(6 7
param7 <
.< =
	Substring= F
(F G
assignmentIndexG V
+W X
$numY Z
)Z [
)[ \
;\ ]
result 
[ 
	paramName $
]$ %
=& '

paramValue( 2
;2 3
} 
} 
return!! 
result!! 
;!! 
}"" 	
public,, 
static,, 
string,, 
EncodeQueryString,, .
(,,. /
IDictionary,,/ :
<,,: ;
string,,; A
,,,A B
string,,C I
>,,I J
queryParams,,K V
),,V W
{-- 	
var.. 
result.. 
=.. 
new.. 
StringBuilder.. *
(..* +
)..+ ,
;.., -
var00 

firstParam00 
=00 
true00 !
;00! "
foreach11 
(11 
var11 
param11 
in11 !
queryParams11" -
)11- .
{22 
if33 
(33 
!33 

firstParam33 
)33  
{44 
result55 
.55 
Append55 !
(55! "
$char55" %
)55% &
;55& '
}66 
else77 
{88 

firstParam99 
=99  
false99! &
;99& '
}:: 
result<< 
.<< 
Append<< 
(<< 
EscapeUrlString<< -
(<<- .
param<<. 3
.<<3 4
Key<<4 7
)<<7 8
)<<8 9
.<<9 :
Append<<: @
(<<@ A
$char<<A D
)<<D E
.<<E F
Append<<F L
(<<L M
EscapeUrlString<<M \
(<<\ ]
param<<] b
.<<b c
Value<<c h
)<<h i
)<<i j
;<<j k
}== 
return?? 
result?? 
.?? 
ToString?? "
(??" #
)??# $
;??$ %
}@@ 	
staticGG 
stringGG 
EscapeUrlStringGG %
(GG% &
stringGG& ,
	rawStringGG- 6
)GG6 7
{HH 	
returnJJ 
UriJJ 
.JJ 
EscapeDataStringJJ '
(JJ' (
	rawStringJJ( 1
)JJ1 2
;JJ2 3
}KK 	
staticRR 
stringRR 
UnescapeUrlStringRR '
(RR' (
stringRR( .
	urlStringRR/ 8
)RR8 9
{SS 	
returnTT 
UriTT 
.TT 
UnescapeDataStringTT )
(TT) *
	urlStringTT* 3
)TT3 4
;TT4 5
}UU 	
}VV 
}WW �
�C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Settings\IAuthenticationSettings.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
	interface #
IAuthenticationSettings %
{ 
int $
AccessTokenRefreshBuffer $
{% &
get' *
;* +
}, -
int #
AccessTokenExpiryBuffer #
{$ %
get& )
;) *
}+ ,
int #
RefreshAttemptFrequency #
{$ %
get& )
;) *
}+ ,
} 
} �&
oC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\IAuthenticationService.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
public

 

	interface

 "
IAuthenticationService

 +
{ 
event 
Action 
SignedIn 
; 
event 
Action 
	SignedOut 
; 
event 
Action 
Expired 
; 
event   
Action   
<   "
RequestFailedException   +
>  + ,
SignInFailed  - 9
;  9 :
bool'' 

IsSignedIn'' 
{'' 
get'' 
;'' 
}''  
bool.. 
IsAuthorized.. 
{.. 
get.. 
;..  
}..! "
bool44 
	IsExpired44 
{44 
get44 
;44 
}44 
string99 
AccessToken99 
{99 
get99  
;99  !
}99" #
string>> 
PlayerId>> 
{>> 
get>> 
;>> 
}>>  
stringEE 
ProfileEE 
{EE 
getEE 
;EE 
}EE 
boolJJ 
SessionTokenExistsJJ 
{JJ  !
getJJ" %
;JJ% &
}JJ' (

PlayerInfoOO 

PlayerInfoOO 
{OO 
getOO  #
;OO# $
}OO% &
Taskgg "
SignInAnonymouslyAsyncgg #
(gg# $
SignInOptionsgg$ 1
optionsgg2 9
=gg: ;
nullgg< @
)gg@ A
;ggA B
Task  
SignInWithAppleAsync !
(! "
string" (
idToken) 0
,0 1
SignInOptions2 ?
options@ G
=H I
nullJ N
)N O
;O P
Task
��  
LinkWithAppleAsync
�� 
(
��  
string
��  &
idToken
��' .
,
��. /
LinkOptions
��0 ;
options
��< C
=
��D E
null
��F J
)
��J K
;
��K L
Task
�� 
UnlinkAppleAsync
�� 
(
�� 
)
�� 
;
��  
Task
�� #
SignInWithGoogleAsync
�� "
(
��" #
string
��# )
idToken
��* 1
,
��1 2
SignInOptions
��3 @
options
��A H
=
��I J
null
��K O
)
��O P
;
��P Q
Task
�� !
LinkWithGoogleAsync
��  
(
��  !
string
��! '
idToken
��( /
,
��/ 0
LinkOptions
��1 <
options
��= D
=
��E F
null
��G K
)
��K L
;
��L M
Task
�� 
UnlinkGoogleAsync
�� 
(
�� 
)
��  
;
��  !
Task
�� %
SignInWithFacebookAsync
�� $
(
��$ %
string
��% +
accessToken
��, 7
,
��7 8
SignInOptions
��9 F
options
��G N
=
��O P
null
��Q U
)
��U V
;
��V W
Task
�� #
LinkWithFacebookAsync
�� "
(
��" #
string
��# )
accessToken
��* 5
,
��5 6
LinkOptions
��7 B
options
��C J
=
��K L
null
��M Q
)
��Q R
;
��R S
Task
�� !
UnlinkFacebookAsync
��  
(
��  !
)
��! "
;
��" #
Task
�� "
SignInWithSteamAsync
�� !
(
��! "
string
��" (
sessionTicket
��) 6
,
��6 7
SignInOptions
��8 E
options
��F M
=
��N O
null
��P T
)
��T U
;
��U V
Task
��  
LinkWithSteamAsync
�� 
(
��  
string
��  &
sessionTicket
��' 4
,
��4 5
LinkOptions
��6 A
options
��B I
=
��J K
null
��L P
)
��P Q
;
��Q R
Task
�� 
UnlinkSteamAsync
�� 
(
�� 
)
�� 
;
��  
Task
��  
DeleteAccountAsync
�� 
(
��  
)
��  !
;
��! "
Task
�� 
<
�� 

PlayerInfo
�� 
>
��  
GetPlayerInfoAsync
�� +
(
��+ ,
)
��, -
;
��- .
void
�� 
SignOut
�� 
(
�� 
bool
�� 
clearCredentials
�� *
=
��+ ,
false
��- 2
)
��2 3
;
��3 4
void
�� 
SwitchProfile
�� 
(
�� 
string
�� !
profile
��" )
)
��) *
;
��* +
void
�� 
ClearSessionToken
�� 
(
�� 
)
��  
;
��  !
}
�� 
}�� �
�C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Requests\LinkWithExternalTokenRequest.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[

 
Serializable

 
]

 
class 	(
LinkWithExternalTokenRequest
 &
{ 
[ 	
Preserve	 
] 
internal (
LinkWithExternalTokenRequest -
(- .
). /
{0 1
}1 2
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

IdProvider  
;  !
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Token 
; 
["" 	
JsonProperty""	 
("" 
$str"" !
)""! "
]""" #
public## 
bool## 
	ForceLink## 
;## 
}$$ 
}%% �
}C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Network\IAuthenticationNetworkClient.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
	interface (
IAuthenticationNetworkClient *
{ 
Task 
< !
WellKnownKeysResponse "
>" #!
GetWellKnownKeysAsync$ 9
(9 :
): ;
;; <
Task 
< 
SignInResponse 
> "
SignInAnonymouslyAsync 3
(3 4
)4 5
;5 6
Task		 
<		 
SignInResponse		 
>		 '
SignInWithSessionTokenAsync		 8
(		8 9
string		9 ?
token		@ E
)		E F
;		F G
Task

 
<

 
SignInResponse

 
>

 (
SignInWithExternalTokenAsync

 9
(

9 :
string

: @

idProvider

A K
,

K L*
SignInWithExternalTokenRequest

M k
externalToken

l y
)

y z
;

z {
Task 
< 
LinkResponse 
> &
LinkWithExternalTokenAsync 5
(5 6
string6 <

idProvider= G
,G H(
LinkWithExternalTokenRequestI e
externalTokenf s
)s t
;t u
Task 
< 
UnlinkResponse 
> $
UnlinkExternalTokenAsync 5
(5 6
string6 <

idProvider= G
,G H
UnlinkRequestI V
requestW ^
)^ _
;_ `
Task 
< 
PlayerInfoResponse 
>  
GetPlayerInfoAsync! 3
(3 4
string4 :
playerId; C
)C D
;D E
Task 
DeleteAccountAsync 
(  
string  &
playerId' /
)/ 0
;0 1
} 
} �
vC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Responses\WellKnownKey.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	
WellKnownKey
 
{ 
[ 	
Preserve	 
] 
public		 
WellKnownKey		 
(		 
)		 
{		 
}		  
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
Use 
; 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
KeyType 
; 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
KeyId 
; 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
	Algorithm 
;  
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
N 
; 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
E 
; 
} 
} �
zC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Responses\ExternalIdentity.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[

 
Serializable

 
]

 
class 	
ExternalIdentity
 
{ 
[ 	
Preserve	 
] 
public 
ExternalIdentity 
(  
)  !
{" #
}# $
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

ProviderId  
;  !
[ 	
JsonProperty	 
( 
$str "
)" #
]# $
public 
string 

ExternalId  
;  !
} 
} �
mC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Compatibility\Models.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
.' (
Models( .
{ 
class 	
Compatibility
 
{ 
} 
} �
xC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Responses\UnlinkResponse.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
[ 
Serializable 
] 
class 	
UnlinkResponse
 
{		 
[

 	
Preserve

	 
]

 
public 
UnlinkResponse 
( 
) 
{  !
}! "
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
User 
User 
; 
} 
} �
pC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Compatibility\Utilities.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
.' (
	Utilities( 1
{ 
class 	
Compatibility
 
{ 
} 
} �
~C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Settings\INetworkConfiguration.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
	interface !
INetworkConfiguration #
{ 
int 
Retries 
{ 
get 
; 
} 
int 
Timeout 
{ 
get 
; 
} 
} 
} �
�C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Components\WellKnownKeysComponent.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	"
WellKnownKeysComponent
  
{ 
public 
WellKnownKey 
[ 
] 
Keys "
{# $
get% (
;( )
internal* 2
set3 6
;6 7
}8 9
internal		 "
WellKnownKeysComponent		 '
(		' (
)		( )
{

 	
} 	
} 
} �
|C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Models\Components\PlayerIdComponent.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	
PlayerIdComponent
 
: 
	IPlayerId '
{ 
const 
string 

k_CacheKey 
=  !
$str" -
;- .
public

 
event

 
Action

 
<

 
string

 "
>

" #
PlayerIdChanged

$ 3
;

3 4
public 
string 
PlayerId 
{  
get! $
=>% '
GetPlayerId( 3
(3 4
)4 5
;5 6
internal7 ?
set@ C
=>D F
SetPlayerIdG R
(R S
valueS X
)X Y
;Y Z
}[ \
readonly  
IAuthenticationCache %
m_Cache& -
;- .
internal 
PlayerIdComponent "
(" # 
IAuthenticationCache# 7
cache8 =
)= >
{ 	
m_Cache 
= 
cache 
; 
} 	
internal 
void 
Clear 
( 
) 
{ 	
m_Cache 
. 
	DeleteKey 
( 

k_CacheKey (
)( )
;) *
} 	
string 
GetPlayerId 
( 
) 
{ 	
return 
m_Cache 
. 
	GetString $
($ %

k_CacheKey% /
)/ 0
;0 1
} 	
void 
SetPlayerId 
( 
string 
playerId  (
)( )
{   	
if!! 
(!! 
PlayerId!! 
!=!! 
playerId!! $
)!!$ %
{"" 
m_Cache## 
.## 
	SetString## !
(##! "

k_CacheKey##" ,
,##, -
playerId##. 6
)##6 7
;##7 8
PlayerIdChanged$$ 
?$$  
.$$  !
Invoke$$! '
($$' (
playerId$$( 0
)$$0 1
;$$1 2
}%% 
}&& 	
}'' 
}(( �
lC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\AuthenticationState.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
enum 
AuthenticationState	 
{ 
	SignedOut 
, 
	SigningIn 
, 

Authorized 
, 

Refreshing 
, 
Expired		 
}

 
} �
{C:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Utilities\DateTime\DateTimeWrapper.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	
DateTimeWrapper
 
: 
IDateTimeWrapper ,
{ 
static 
readonly 
DateTime  
k_UnixEpoch! ,
=- .
new/ 2
DateTime3 ;
(; <
$num< @
,@ A
$numB C
,C D
$numE F
,F G
$numH I
,I J
$numK L
,L M
$numN O
,O P
$numQ R
,R S
DateTimeKindT `
.` a
Utca d
)d e
;e f
public		 
DateTime		 
UtcNow		 
=>		 !
DateTime		" *
.		* +
UtcNow		+ 1
;		1 2
public 
double !
SecondsSinceUnixEpoch +
(+ ,
), -
{ 	
return 
Math 
. 
Round 
( 
( 
DateTime '
.' (
UtcNow( .
-/ 0
k_UnixEpoch1 <
)< =
.= >
TotalSeconds> J
)J K
;K L
} 	
} 
} �;
oC:\code\ispclone\Library\PackageCache\com.unity.services.authentication@2.0.0\Runtime\Network\NetworkHandler.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
{ 
class 	
NetworkHandler
 
: 
INetworkHandler *
{ 
public		 
static		 
class		 
ContentType		 '
{

 	
public 
const 
string 
Json  $
=% &
$str' 9
;9 :
} 	!
INetworkConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
NetworkHandler 
( 
) 
{ 	
Configuration 
= 
new  
NetworkConfiguration  4
(4 5
)5 6
;6 7
} 	
public 
Task 
< 
T 
> 
GetAsync 
<  
T  !
>! "
(" #
string# )
url* -
,- .
IDictionary/ :
<: ;
string; A
,A B
stringC I
>I J
headersK R
=S T
nullU Y
)Y Z
{ 	
var 
request 
= 
new 

WebRequest (
(( )
Configuration 
, 
WebRequestVerb 
. 
Get "
," #
url 
, 
headers 
, 
null 
, 
ContentType 
. 
Json  
)  !
;! "
return 
request 
. 
	SendAsync $
<$ %
T% &
>& '
(' (
)( )
;) *
}   	
public"" 
Task"" 
<"" 
T"" 
>"" 
	PostAsync""  
<""  !
T""! "
>""" #
(""# $
string""$ *
url""+ .
,"". /
IDictionary""0 ;
<""; <
string""< B
,""B C
string""D J
>""J K
headers""L S
=""T U
null""V Z
)""Z [
{## 	
var$$ 
request$$ 
=$$ 
new$$ 

WebRequest$$ (
($$( )
Configuration%% 
,%% 
WebRequestVerb&& 
.&& 
Post&& #
,&&# $
url'' 
,'' 
headers(( 
,(( 
null)) 
,)) 
ContentType** 
.** 
Json**  
)**  !
;**! "
return,, 
request,, 
.,, 
	SendAsync,, $
<,,$ %
T,,% &
>,,& '
(,,' (
),,( )
;,,) *
}-- 	
public// 
Task// 
<// 
T// 
>// 
	PostAsync//  
<//  !
T//! "
>//" #
(//# $
string//$ *
url//+ .
,//. /
object//0 6
payload//7 >
,//> ?
IDictionary//@ K
<//K L
string//L R
,//R S
string//T Z
>//Z [
headers//\ c
=//d e
null//f j
)//j k
{00 	
var11 
jsonPayload11 
=11 
payload11 %
!=11& (
null11) -
?11. /
JsonConvert110 ;
.11; <
SerializeObject11< K
(11K L
payload11L S
)11S T
:11U V
null11W [
;11[ \
var33 
request33 
=33 
new33 

WebRequest33 (
(33( )
Configuration44 
,44 
WebRequestVerb55 
.55 
Post55 #
,55# $
url66 
,66 
headers77 
,77 
jsonPayload88 
,88 
ContentType99 
.99 
Json99  
)99  !
;99! "
return;; 
request;; 
.;; 
	SendAsync;; $
<;;$ %
T;;% &
>;;& '
(;;' (
);;( )
;;;) *
}<< 	
public>> 
Task>> 
<>> 
T>> 
>>> 
PutAsync>> 
<>>  
T>>  !
>>>! "
(>>" #
string>># )
url>>* -
,>>- .
object>>/ 5
payload>>6 =
,>>= >
IDictionary>>? J
<>>J K
string>>K Q
,>>Q R
string>>S Y
>>>Y Z
headers>>[ b
=>>c d
null>>e i
)>>i j
{?? 	
var@@ 
jsonPayload@@ 
=@@ 
payload@@ %
!=@@& (
null@@) -
?@@. /
JsonConvert@@0 ;
.@@; <
SerializeObject@@< K
(@@K L
payload@@L S
)@@S T
:@@U V
null@@W [
;@@[ \
varBB 
requestBB 
=BB 
newBB 

WebRequestBB (
(BB( )
ConfigurationCC 
,CC 
WebRequestVerbDD 
.DD 
PutDD "
,DD" #
urlEE 
,EE 
headersFF 
,FF 
jsonPayloadGG 
,GG 
ContentTypeHH 
.HH 
JsonHH  
)HH  !
;HH! "
returnJJ 
requestJJ 
.JJ 
	SendAsyncJJ $
<JJ$ %
TJJ% &
>JJ& '
(JJ' (
)JJ( )
;JJ) *
}KK 	
publicMM 
TaskMM 
DeleteAsyncMM 
(MM  
stringMM  &
urlMM' *
,MM* +
IDictionaryMM, 7
<MM7 8
stringMM8 >
,MM> ?
stringMM@ F
>MMF G
headersMMH O
=MMP Q
nullMMR V
)MMV W
{NN 	
varOO 
requestOO 
=OO 
newOO 

WebRequestOO (
(OO( )
ConfigurationPP 
,PP 
WebRequestVerbQQ 
.QQ 
DeleteQQ %
,QQ% &
urlRR 
,RR 
headersSS 
,SS 
nullTT 
,TT 
ContentTypeUU 
.UU 
JsonUU  
)UU  !
;UU! "
returnWW 
requestWW 
.WW 
	SendAsyncWW $
(WW$ %
)WW% &
;WW& '
}XX 	
publicZZ 
TaskZZ 
<ZZ 
TZZ 
>ZZ 
DeleteAsyncZZ "
<ZZ" #
TZZ# $
>ZZ$ %
(ZZ% &
stringZZ& ,
urlZZ- 0
,ZZ0 1
IDictionaryZZ2 =
<ZZ= >
stringZZ> D
,ZZD E
stringZZF L
>ZZL M
headersZZN U
=ZZV W
nullZZX \
)ZZ\ ]
{[[ 	
var\\ 
request\\ 
=\\ 
new\\ 

WebRequest\\ (
(\\( )
Configuration]] 
,]] 
WebRequestVerb^^ 
.^^ 
Delete^^ %
,^^% &
url__ 
,__ 
headers`` 
,`` 
nullaa 
,aa 
ContentTypebb 
.bb 
Jsonbb  
)bb  !
;bb! "
returndd 
requestdd 
.dd 
	SendAsyncdd $
<dd$ %
Tdd% &
>dd& '
(dd' (
)dd( )
;dd) *
}ee 	
}ff 
}gg 