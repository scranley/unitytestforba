É	
ÇC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core\Initialization\ServicesInitializationException.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
{ 
public 

class +
ServicesInitializationException 0
:1 2
	Exception3 <
{		 
public +
ServicesInitializationException .
(. /
)/ 0
{1 2
}2 3
public +
ServicesInitializationException .
(. /
string/ 5
message6 =
)= >
: 
base 
( 
message 
) 
{ 
} 
public +
ServicesInitializationException .
(. /
string/ 5
message6 =
,= >
	Exception? H
innerExceptionI W
)W X
: 
base 
( 
message 
, 
innerException *
)* +
{, -
}- .
} 
} ë'
aC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core\UnityServices.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
{ 
public

 

static

 
class

 
UnityServices

 %
{ 
internal 
static 
IUnityServices &
Instance' /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
internal 
static  
TaskCompletionSource ,
<, -
object- 3
>3 4#
InstantiationCompletion5 L
{M N
getO R
;R S
setT W
;W X
}Y Z
public 
static '
ServicesInitializationState 1
State2 7
{ 	
get 
{ 
if 
( 
! 
UnityThreadUtils %
.% &"
IsRunningOnUnityThread& <
)< =
{ 
throw 
new +
ServicesInitializationException =
(= >
$str	> á
+
à â
$str S
)S T
;T U
} 
if 
( 
Instance 
!= 
null  $
)$ %
{ 
return 
Instance #
.# $
State$ )
;) *
} 
if!! 
(!! #
InstantiationCompletion!! +
?!!+ ,
.!!, -
Task!!- 1
.!!1 2
Status!!2 8
==!!9 ;

TaskStatus!!< F
.!!F G 
WaitingForActivation!!G [
)!![ \
{"" 
return## '
ServicesInitializationState## 6
.##6 7
Initializing##7 C
;##C D
}$$ 
return&& '
ServicesInitializationState&& 2
.&&2 3
Uninitialized&&3 @
;&&@ A
}'' 
}(( 	
public00 
static00 
Task00 
InitializeAsync00 *
(00* +
)00+ ,
{11 	
return22 
InitializeAsync22 "
(22" #
new22# &!
InitializationOptions22' <
(22< =
)22= >
)22> ?
;22? @
}33 	
[>> 	
PreserveDependency>>	 
(>> 
$str>> (
,>>( )
$str>>* c
,>>c d
$str	>>e á
)
>>á à
]
>>à â
[?? 	
PreserveDependency??	 
(?? 
$str?? 4
,??4 5
$str??6 m
,??m n
$str	??o ç
)
??ç é
]
??é è
[@@ 	
PreserveDependency@@	 
(@@ 
$str@@ A
,@@A B
$str@@C z
,@@z {
$str	@@| ö
)
@@ö õ
]
@@õ ú
[AA 	
PreserveDependencyAA	 
(AA 
$strAA 6
,AA6 7
$strAA8 ^
,AA^ _
$strAA` u
)AAu v
]AAv w
publicBB 
staticBB 
asyncBB 
TaskBB  
InitializeAsyncBB! 0
(BB0 1!
InitializationOptionsBB1 F
optionsBBG N
)BBN O
{CC 	
ifDD 
(DD 
!DD 
UnityThreadUtilsDD !
.DD! ""
IsRunningOnUnityThreadDD" 8
)DD8 9
{EE 
throwFF 
newFF +
ServicesInitializationExceptionFF 9
(FF9 :
$str	FF: Ç
+
FFÉ Ñ
$strGG M
)GGM N
;GGN O
}HH 
ifJJ 
(JJ 
!JJ 
ApplicationJJ 
.JJ 
	isPlayingJJ &
)JJ& '
{KK 
throwLL 
newLL +
ServicesInitializationExceptionLL 9
(LL9 :
$strLL: y
+LLz {
$strMM J
)MMJ K
;MMK L
}NN 
ifPP 
(PP 
InstancePP 
==PP 
nullPP  
)PP  !
{QQ 
ifRR 
(RR #
InstantiationCompletionRR +
==RR, .
nullRR/ 3
)RR3 4
{SS #
InstantiationCompletionTT +
=TT, -
newTT. 1 
TaskCompletionSourceTT2 F
<TTF G
objectTTG M
>TTM N
(TTN O
)TTO P
;TTP Q
}UU 
awaitWW #
InstantiationCompletionWW -
.WW- .
TaskWW. 2
;WW2 3
}XX 
ifZZ 
(ZZ 
optionsZZ 
isZZ 
nullZZ 
)ZZ  
{[[ 
options\\ 
=\\ 
new\\ !
InitializationOptions\\ 3
(\\3 4
)\\4 5
;\\5 6
}]] 
await__ 
Instance__ 
.__ 
InitializeAsync__ *
(__* +
options__+ 2
)__2 3
;__3 4
}`` 	
}aa 
}bb ˙
dC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core\CommonErrorCodes.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
{ 
public 

static 
class 
CommonErrorCodes (
{ 
public 
const 
int 
Unknown  
=! "
$num# $
;$ %
public 
const 
int 
TransportError '
=( )
$num* +
;+ ,
public 
const 
int 
Timeout  
=! "
$num# $
;$ %
public 
const 
int 
ServiceUnavailable +
=, -
$num. /
;/ 0
public 
const 
int 

ApiMissing #
=$ %
$num& '
;' (
public$$ 
const$$ 
int$$ 
RequestRejected$$ (
=$$) *
$num$$+ ,
;$$, -
public)) 
const)) 
int)) 
TooManyRequests)) (
=))) *
$num))+ -
;))- .
public.. 
const.. 
int.. 
InvalidToken.. %
=..& '
$num..( *
;..* +
public33 
const33 
int33 
TokenExpired33 %
=33& '
$num33( *
;33* +
public88 
const88 
int88 
	Forbidden88 "
=88# $
$num88% '
;88' (
public== 
const== 
int== 
NotFound== !
===" #
$num==$ &
;==& '
publicBB 
constBB 
intBB 
InvalidRequestBB '
=BB( )
$numBB* ,
;BB, -
}CC 
}DD Æ
`C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str @
)@ A
]A B
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str :
): ;
]; <
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str >
)> ?
]? @
[		 
assembly		 	
:			 

InternalsVisibleTo		 
(		 
$str		 <
)		< =
]		= >
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
 A
)

A B
]

B C
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str C
)C D
]D E
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :ê
ÅC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core\DynamicDependency\PreserveDependencyAttribute.cs
	namespace 	
System
 
. 
Runtime 
. 
CompilerServices )
{ 
[   
AttributeUsage   
(   
AttributeTargets   $
.  $ %
Method  % +
|  , -
AttributeTargets  . >
.  > ?
Constructor  ? J
|  K L
AttributeTargets  M ]
.  ] ^
Field  ^ c
,  c d
AllowMultiple  e r
=  s t
true  u y
)  y z
]  z {
internal!! 
sealed!! 
class!! '
PreserveDependencyAttribute!! 5
:!!6 7
	Attribute!!8 A
{"" 
public## '
PreserveDependencyAttribute## *
(##* +
string##+ 1
memberSignature##2 A
)##A B
{$$ 	
}%% 	
public'' '
PreserveDependencyAttribute'' *
(''* +
string''+ 1
memberSignature''2 A
,''A B
string''C I
typeName''J R
)''R S
{(( 	
})) 	
public++ '
PreserveDependencyAttribute++ *
(++* +
string+++ 1
memberSignature++2 A
,++A B
string++C I
typeName++J R
,++R S
string++T Z
assembly++[ c
)++c d
{,, 	
}-- 	
public// 
string// 
	Condition// 
{//  !
get//" %
;//% &
set//' *
;//* +
}//, -
}00 
}11 Ó

jC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core\RequestFailedException.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
{ 
public 

class "
RequestFailedException '
:( )
	Exception* 3
{		 
public 
int 
	ErrorCode 
{ 
get "
;" #
}$ %
public## "
RequestFailedException## %
(##% &
int##& )
	errorCode##* 3
,##3 4
string##5 ;
message##< C
)##C D
:##E F
this##G K
(##K L
	errorCode##L U
,##U V
message##W ^
,##^ _
null##` d
)##d e
{$$ 	
}%% 	
public88 "
RequestFailedException88 %
(88% &
int88& )
	errorCode88* 3
,883 4
string885 ;
message88< C
,88C D
	Exception88E N
innerException88O ]
)88] ^
:88_ `
base88a e
(88e f
message88f m
,88m n
innerException88o }
)88} ~
{99 	
this:: 
.:: 
	ErrorCode:: 
=:: 
	errorCode:: &
;::& '
};; 	
}<< 
}== 
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core\Initialization\ServicesInitializationState.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
{ 
public 

enum '
ServicesInitializationState +
{ 
Uninitialized 
, 
Initializing 
, 
Initialized 
, 
} 
} ‘
jC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core\Utils\UnityThreadUtils.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
{ 
static 

class 
UnityThreadUtils !
{ 
static		 
int		 
s_UnityThreadId		 "
;		" #
internal 
static 
TaskScheduler % 
UnityThreadScheduler& :
;: ;
[ 	)
RuntimeInitializeOnLoadMethod	 &
(& '%
RuntimeInitializeLoadType' @
.@ A!
SubsystemRegistrationA V
)V W
]W X
static 
void "
CaptureUnityThreadInfo *
(* +
)+ ,
{ 	
s_UnityThreadId 
= 
Thread $
.$ %
CurrentThread% 2
.2 3
ManagedThreadId3 B
;B C 
UnityThreadScheduler  
=! "
TaskScheduler# 0
.0 1-
!FromCurrentSynchronizationContext1 R
(R S
)S T
;T U
} 	
public 
static 
bool "
IsRunningOnUnityThread 1
=>2 4
Thread5 ;
.; <
CurrentThread< I
.I J
ManagedThreadIdJ Y
==Z \
s_UnityThreadId] l
;l m
} 
} ¡
bC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core\IUnityServices.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
{ 
	interface 
IUnityServices 
{ '
ServicesInitializationState #
State$ )
{* +
get, /
;/ 0
}1 2!
InitializationOptions		 
Options		 %
{		& '
get		( +
;		+ ,
}		- .
Task 
InitializeAsync 
( !
InitializationOptions 2
options3 :
): ;
;; <
} 
} ı.
xC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core\Initialization\InitializationOptions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
{ 
public		 

class		 !
InitializationOptions		 &
{

 
internal 
IDictionary 
< 
string #
,# $
object% +
>+ ,
Values- 3
{4 5
get6 9
;9 :
}; <
public !
InitializationOptions $
($ %
)% &
: 
this 
( 
new 

Dictionary !
<! "
string" (
,( )
object* 0
>0 1
(1 2
)2 3
)3 4
{5 6
}6 7
internal !
InitializationOptions &
(& '
IDictionary' 2
<2 3
string3 9
,9 :
object; A
>A B
valuesC I
)I J
{ 	
Values 
= 
values 
; 
} 	
internal !
InitializationOptions &
(& '!
InitializationOptions' <
source= C
)C D
: 
this 
( 
new 

Dictionary !
<! "
string" (
,( )
object* 0
>0 1
(1 2
source2 8
.8 9
Values9 ?
)? @
)@ A
{B C
}C D
public(( 
bool(( 
TryGetOption((  
(((  !
string((! '
key((( +
,((+ ,
out((- 0
bool((1 5
option((6 <
)((< =
{)) 	
return** 
TryGetOption** 
<**  
bool**  $
>**$ %
(**% &
key**& )
,**) *
out**+ .
option**/ 5
)**5 6
;**6 7
}++ 	
public:: 
bool:: 
TryGetOption::  
(::  !
string::! '
key::( +
,::+ ,
out::- 0
int::1 4
option::5 ;
)::; <
{;; 	
return<< 
TryGetOption<< 
<<<  
int<<  #
><<# $
(<<$ %
key<<% (
,<<( )
out<<* -
option<<. 4
)<<4 5
;<<5 6
}== 	
publicLL 
boolLL 
TryGetOptionLL  
(LL  !
stringLL! '
keyLL( +
,LL+ ,
outLL- 0
floatLL1 6
optionLL7 =
)LL= >
{MM 	
returnNN 
TryGetOptionNN 
<NN  
floatNN  %
>NN% &
(NN& '
keyNN' *
,NN* +
outNN, /
optionNN0 6
)NN6 7
;NN7 8
}OO 	
public^^ 
bool^^ 
TryGetOption^^  
(^^  !
string^^! '
key^^( +
,^^+ ,
out^^- 0
string^^1 7
option^^8 >
)^^> ?
{__ 	
return`` 
TryGetOption`` 
<``  
string``  &
>``& '
(``' (
key``( +
,``+ ,
out``- 0
option``1 7
)``7 8
;``8 9
}aa 	
boolcc 
TryGetOptioncc 
<cc 
Tcc 
>cc 
(cc 
stringcc #
keycc$ '
,cc' (
outcc) ,
Tcc- .
optioncc/ 5
)cc5 6
{dd 	
optionee 
=ee 
defaultee 
;ee 
ifgg 
(gg 
Valuesgg 
.gg 
TryGetValuegg "
(gg" #
keygg# &
,gg& '
outgg( +
vargg, /
rawValuegg0 8
)gg8 9
&&hh 
rawValuehh 
ishh 
Thh  
valuehh! &
)hh& '
{ii 
optionjj 
=jj 
valuejj 
;jj 
returnkk 
truekk 
;kk 
}ll 
returnnn 
falsenn 
;nn 
}oo 	
public}} !
InitializationOptions}} $
	SetOption}}% .
(}}. /
string}}/ 5
key}}6 9
,}}9 :
bool}}; ?
value}}@ E
)}}E F
{~~ 	
Values 
[ 
key 
] 
= 
value 
;  
return
ÄÄ 
this
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
public
èè #
InitializationOptions
èè $
	SetOption
èè% .
(
èè. /
string
èè/ 5
key
èè6 9
,
èè9 :
int
èè; >
value
èè? D
)
èèD E
{
êê 	
Values
ëë 
[
ëë 
key
ëë 
]
ëë 
=
ëë 
value
ëë 
;
ëë  
return
íí 
this
íí 
;
íí 
}
ìì 	
public
°° #
InitializationOptions
°° $
	SetOption
°°% .
(
°°. /
string
°°/ 5
key
°°6 9
,
°°9 :
float
°°; @
value
°°A F
)
°°F G
{
¢¢ 	
Values
££ 
[
££ 
key
££ 
]
££ 
=
££ 
value
££ 
;
££  
return
§§ 
this
§§ 
;
§§ 
}
•• 	
public
≥≥ #
InitializationOptions
≥≥ $
	SetOption
≥≥% .
(
≥≥. /
string
≥≥/ 5
key
≥≥6 9
,
≥≥9 :
string
≥≥; A
value
≥≥B G
)
≥≥G H
{
¥¥ 	
Values
µµ 
[
µµ 
key
µµ 
]
µµ 
=
µµ 
value
µµ 
;
µµ  
return
∂∂ 
this
∂∂ 
;
∂∂ 
}
∑∑ 	
}
∏∏ 
}ππ 