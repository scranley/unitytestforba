ﬂ!
jC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Components\NetworkRigidbody2D.cs
	namespace 	
Unity
 
. 
Netcode 
. 

Components "
{ 
[

 
RequireComponent

 
(

 
typeof

 
(

 
Rigidbody2D

 (
)

( )
)

) *
]

* +
[ 
RequireComponent 
( 
typeof 
( 
NetworkTransform -
)- .
). /
]/ 0
public 

class 
NetworkRigidbody2D #
:$ %
NetworkBehaviour& 6
{ 
private 
Rigidbody2D 
m_Rigidbody '
;' (
private 
NetworkTransform  
m_NetworkTransform! 3
;3 4
private 
bool 
m_OriginalKinematic (
;( )
private $
RigidbodyInterpolation2D (#
m_OriginalInterpolation) @
;@ A
private 
bool 
m_IsAuthority "
;" #
private 
bool 
HasAuthority !
=>" $
m_NetworkTransform% 7
.7 8 
CanCommitToTransform8 L
;L M
private 
void 
Awake 
( 
) 
{ 	
m_Rigidbody 
= 
GetComponent &
<& '
Rigidbody2D' 2
>2 3
(3 4
)4 5
;5 6
m_NetworkTransform 
=  
GetComponent! -
<- .
NetworkTransform. >
>> ?
(? @
)@ A
;A B
}   	
private"" 
void"" 
FixedUpdate""  
(""  !
)""! "
{## 	
if$$ 
($$ 
	IsSpawned$$ 
)$$ 
{%% 
if&& 
(&& 
HasAuthority&&  
!=&&! #
m_IsAuthority&&$ 1
)&&1 2
{'' 
m_IsAuthority(( !
=((" #
HasAuthority(($ 0
;((0 1(
UpdateRigidbodyKinematicMode)) 0
())0 1
)))1 2
;))2 3
}** 
}++ 
},, 	
private// 
void// (
UpdateRigidbodyKinematicMode// 1
(//1 2
)//2 3
{00 	
if11 
(11 
m_IsAuthority11 
==11  
false11! &
)11& '
{22 
m_OriginalKinematic33 #
=33$ %
m_Rigidbody33& 1
.331 2
isKinematic332 =
;33= >
m_Rigidbody44 
.44 
isKinematic44 '
=44( )
true44* .
;44. /#
m_OriginalInterpolation66 '
=66( )
m_Rigidbody66* 5
.665 6
interpolation666 C
;66C D
m_Rigidbody88 
.88 
interpolation88 )
=88* +$
RigidbodyInterpolation2D88, D
.88D E
None88E I
;88I J
}99 
else:: 
{;; 
m_Rigidbody== 
.== 
isKinematic== '
===( )
m_OriginalKinematic==* =
;=== >
m_Rigidbody>> 
.>> 
interpolation>> )
=>>* +#
m_OriginalInterpolation>>, C
;>>C D
}?? 
}@@ 	
publicCC 
overrideCC 
voidCC 
OnNetworkSpawnCC +
(CC+ ,
)CC, -
{DD 	
m_IsAuthorityEE 
=EE 
HasAuthorityEE (
;EE( )
m_OriginalKinematicFF 
=FF  !
m_RigidbodyFF" -
.FF- .
isKinematicFF. 9
;FF9 :#
m_OriginalInterpolationGG #
=GG$ %
m_RigidbodyGG& 1
.GG1 2
interpolationGG2 ?
;GG? @(
UpdateRigidbodyKinematicModeHH (
(HH( )
)HH) *
;HH* +
}II 	
publicLL 
overrideLL 
voidLL 
OnNetworkDespawnLL -
(LL- .
)LL. /
{MM 	(
UpdateRigidbodyKinematicModeNN (
(NN( )
)NN) *
;NN* +
}OO 	
}PP 
}QQ Ã
dC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Components\AssemblyInfo.cs
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
$str 8
)8 9
]9 :
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
 :
)

: ;
]

; <√„
gC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Components\NetworkAnimator.cs
	namespace 	
Unity
 
. 
Netcode 
. 

Components "
{ 
internal		 
class		 -
!NetworkAnimatorStateChangeHandler		 4
:		5 6 
INetworkUpdateSystem		7 K
{

 
private 
NetworkAnimator 
m_NetworkAnimator  1
;1 2
private 
void 
FlushMessages "
(" #
)# $
{ 	
foreach 
( 
var 
clientId !
in" $"
m_ClientsToSynchronize% ;
); <
{ 
m_NetworkAnimator !
.! "&
ServerSynchronizeNewPlayer" <
(< =
clientId= E
)E F
;F G
} "
m_ClientsToSynchronize "
." #
Clear# (
(( )
)) *
;* +
foreach 
( 
var 
	sendEntry "
in# %"
m_SendParameterUpdates& <
)< =
{ 
m_NetworkAnimator !
.! ")
SendParametersUpdateClientRpc" ?
(? @
	sendEntry@ I
.I J#
ParametersUpdateMessageJ a
,a b
	sendEntryc l
.l m
ClientRpcParamsm |
)| }
;} ~
} "
m_SendParameterUpdates "
." #
Clear# (
(( )
)) *
;* +
foreach!! 
(!! 
var!! 
	sendEntry!! "
in!!# % 
m_SendTriggerUpdates!!& :
)!!: ;
{"" 
m_NetworkAnimator## !
.##! "$
SendAnimTriggerClientRpc##" :
(##: ;
	sendEntry##; D
.##D E#
AnimationTriggerMessage##E \
,##\ ]
	sendEntry##^ g
.##g h
ClientRpcParams##h w
)##w x
;##x y
}$$  
m_SendTriggerUpdates%%  
.%%  !
Clear%%! &
(%%& '
)%%' (
;%%( )
}&& 	
public)) 
void)) 
NetworkUpdate)) !
())! "
NetworkUpdateStage))" 4
updateStage))5 @
)))@ A
{** 	
switch++ 
(++ 
updateStage++ 
)++  
{,, 
case-- 
NetworkUpdateStage-- '
.--' (
	PreUpdate--( 1
:--1 2
{.. 
if00 
(00 
m_NetworkAnimator00 -
.00- .
NetworkManager00. <
.00< =
IsServer00= E
)00E F
{11 
FlushMessages33 )
(33) *
)33* +
;33+ ,
}44 
foreach77 
(77  !
var77! $
parameterUpdate77% 4
in775 7%
m_ProcessParameterUpdates778 Q
)77Q R
{88 
m_NetworkAnimator99 -
.99- .
UpdateParameters99. >
(99> ?
parameterUpdate99? N
)99N O
;99O P
}:: %
m_ProcessParameterUpdates;; 1
.;;1 2
Clear;;2 7
(;;7 8
);;8 9
;;;9 :
if>> 
(>> 
m_NetworkAnimator>> -
.>>- .
IsOwner>>. 5
&&>>6 8
!>>9 :
m_NetworkAnimator>>: K
.>>K L!
IsServerAuthoritative>>L a
(>>a b
)>>b c
||>>d f
m_NetworkAnimator>>g x
.>>x y"
IsServerAuthoritative	>>y é
(
>>é è
)
>>è ê
&&
>>ë ì
m_NetworkAnimator
>>î •
.
>>• ¶
NetworkManager
>>¶ ¥
.
>>¥ µ
IsServer
>>µ Ω
)
>>Ω æ
{?? 
m_NetworkAnimator@@ -
.@@- .#
CheckForAnimatorChanges@@. E
(@@E F
)@@F G
;@@G H
}AA 
breakBB 
;BB 
}CC 
}DD 
}EE 	
privateJJ 
ListJJ 
<JJ 
ulongJJ 
>JJ "
m_ClientsToSynchronizeJJ 2
=JJ3 4
newJJ5 8
ListJJ9 =
<JJ= >
ulongJJ> C
>JJC D
(JJD E
)JJE F
;JJF G
internalPP 
voidPP 
SynchronizeClientPP '
(PP' (
ulongPP( -
clientIdPP. 6
)PP6 7
{QQ 	"
m_ClientsToSynchronizeRR "
.RR" #
AddRR# &
(RR& '
clientIdRR' /
)RR/ 0
;RR0 1
}SS 	
privateXX 
structXX 
AnimationUpdateXX &
{YY 	
publicZZ 
ClientRpcParamsZZ "
ClientRpcParamsZZ# 2
;ZZ2 3
public[[ 
NetworkAnimator[[ "
.[[" #
AnimationMessage[[# 3
AnimationMessage[[4 D
;[[D E
}\\ 	
private^^ 
List^^ 
<^^ 
AnimationUpdate^^ $
>^^$ %"
m_SendAnimationUpdates^^& <
=^^= >
new^^? B
List^^C G
<^^G H
AnimationUpdate^^H W
>^^W X
(^^X Y
)^^Y Z
;^^Z [
internalcc 
voidcc 
SendAnimationUpdatecc )
(cc) *
NetworkAnimatorcc* 9
.cc9 :
AnimationMessagecc: J
animationMessageccK [
,cc[ \
ClientRpcParamscc] l
clientRpcParamsccm |
=cc} ~
default	cc Ü
)
ccÜ á
{dd 	"
m_SendAnimationUpdatesee "
.ee" #
Addee# &
(ee& '
newee' *
AnimationUpdateee+ :
(ee: ;
)ee; <
{ee= >
ClientRpcParamsee? N
=eeO P
clientRpcParamseeQ `
,ee` a
AnimationMessageeeb r
=ees t
animationMessage	eeu Ö
}
eeÜ á
)
eeá à
;
eeà â
}ff 	
privatehh 
structhh 
ParameterUpdatehh &
{ii 	
publicjj 
ClientRpcParamsjj "
ClientRpcParamsjj# 2
;jj2 3
publickk 
NetworkAnimatorkk "
.kk" ##
ParametersUpdateMessagekk# :#
ParametersUpdateMessagekk; R
;kkR S
}ll 	
privatenn 
Listnn 
<nn 
ParameterUpdatenn $
>nn$ %"
m_SendParameterUpdatesnn& <
=nn= >
newnn? B
ListnnC G
<nnG H
ParameterUpdatennH W
>nnW X
(nnX Y
)nnY Z
;nnZ [
internalss 
voidss 
SendParameterUpdatess )
(ss) *
NetworkAnimatorss* 9
.ss9 :#
ParametersUpdateMessagess: Q#
parametersUpdateMessagessR i
,ssi j
ClientRpcParamsssk z
clientRpcParams	ss{ ä
=
ssã å
default
ssç î
)
ssî ï
{tt 	"
m_SendParameterUpdatesuu "
.uu" #
Adduu# &
(uu& '
newuu' *
ParameterUpdateuu+ :
(uu: ;
)uu; <
{uu= >
ClientRpcParamsuu? N
=uuO P
clientRpcParamsuuQ `
,uu` a#
ParametersUpdateMessageuub y
=uuz {$
parametersUpdateMessage	uu| ì
}
uuî ï
)
uuï ñ
;
uuñ ó
}vv 	
privatexx 
Listxx 
<xx 
NetworkAnimatorxx $
.xx$ %#
ParametersUpdateMessagexx% <
>xx< =%
m_ProcessParameterUpdatesxx> W
=xxX Y
newxxZ ]
Listxx^ b
<xxb c
NetworkAnimatorxxc r
.xxr s$
ParametersUpdateMessage	xxs ä
>
xxä ã
(
xxã å
)
xxå ç
;
xxç é
internalyy 
voidyy "
ProcessParameterUpdateyy ,
(yy, -
NetworkAnimatoryy- <
.yy< =#
ParametersUpdateMessageyy= T#
parametersUpdateMessageyyU l
)yyl m
{zz 	%
m_ProcessParameterUpdates{{ %
.{{% &
Add{{& )
({{) *#
parametersUpdateMessage{{* A
){{A B
;{{B C
}|| 	
private~~ 
struct~~ 
TriggerUpdate~~ $
{ 	
public
ÄÄ 
ClientRpcParams
ÄÄ "
ClientRpcParams
ÄÄ# 2
;
ÄÄ2 3
public
ÅÅ 
NetworkAnimator
ÅÅ "
.
ÅÅ" #%
AnimationTriggerMessage
ÅÅ# :%
AnimationTriggerMessage
ÅÅ; R
;
ÅÅR S
}
ÇÇ 	
private
ÑÑ 
List
ÑÑ 
<
ÑÑ 
TriggerUpdate
ÑÑ "
>
ÑÑ" #"
m_SendTriggerUpdates
ÑÑ$ 8
=
ÑÑ9 :
new
ÑÑ; >
List
ÑÑ? C
<
ÑÑC D
TriggerUpdate
ÑÑD Q
>
ÑÑQ R
(
ÑÑR S
)
ÑÑS T
;
ÑÑT U
internal
ââ 
void
ââ 
SendTriggerUpdate
ââ '
(
ââ' (
NetworkAnimator
ââ( 7
.
ââ7 8%
AnimationTriggerMessage
ââ8 O%
animationTriggerMessage
ââP g
,
ââg h
ClientRpcParams
ââi x
clientRpcParamsâây à
=âââ ä
defaultââã í
)ââí ì
{
ää 	"
m_SendTriggerUpdates
ãã  
.
ãã  !
Add
ãã! $
(
ãã$ %
new
ãã% (
TriggerUpdate
ãã) 6
(
ãã6 7
)
ãã7 8
{
ãã9 :
ClientRpcParams
ãã; J
=
ããK L
clientRpcParams
ããM \
,
ãã\ ]%
AnimationTriggerMessage
ãã^ u
=
ããv w&
animationTriggerMessageããx è
}ããê ë
)ããë í
;ããí ì
}
åå 	
internal
éé 
void
éé 
DeregisterUpdate
éé &
(
éé& '
)
éé' (
{
èè 	
NetworkUpdateLoop
êê 
.
êê %
UnregisterNetworkUpdate
êê 5
(
êê5 6
this
êê6 :
,
êê: ; 
NetworkUpdateStage
êê< N
.
êêN O
	PreUpdate
êêO X
)
êêX Y
;
êêY Z
}
ëë 	
internal
ìì /
!NetworkAnimatorStateChangeHandler
ìì 2
(
ìì2 3
NetworkAnimator
ìì3 B
networkAnimator
ììC R
)
ììR S
{
îî 	
m_NetworkAnimator
ïï 
=
ïï 
networkAnimator
ïï  /
;
ïï/ 0
NetworkUpdateLoop
ññ 
.
ññ #
RegisterNetworkUpdate
ññ 3
(
ññ3 4
this
ññ4 8
,
ññ8 9 
NetworkUpdateStage
ññ: L
.
ññL M
	PreUpdate
ññM V
)
ññV W
;
ññW X
}
óó 	
}
òò 
[
üü 
AddComponentMenu
üü 
(
üü 
$str
üü  
+
üü! "
nameof
üü# )
(
üü) *
NetworkAnimator
üü* 9
)
üü9 :
)
üü: ;
]
üü; <
[
†† 
RequireComponent
†† 
(
†† 
typeof
†† 
(
†† 
Animator
†† %
)
††% &
)
††& '
]
††' (
public
°° 

class
°° 
NetworkAnimator
°°  
:
°°! "
NetworkBehaviour
°°# 3
{
¢¢ 
internal
££ 
struct
££ 
AnimationMessage
££ (
:
££) *"
INetworkSerializable
££+ ?
{
§§ 	
internal
¶¶ 
int
¶¶ 
	StateHash
¶¶ "
;
¶¶" #
internal
ßß 
float
ßß 
NormalizedTime
ßß )
;
ßß) *
internal
®® 
int
®® 
Layer
®® 
;
®® 
internal
©© 
float
©© 
Weight
©© !
;
©©! "
public
´´ 
void
´´ 
NetworkSerialize
´´ (
<
´´( )
T
´´) *
>
´´* +
(
´´+ ,
BufferSerializer
´´, <
<
´´< =
T
´´= >
>
´´> ?

serializer
´´@ J
)
´´J K
where
´´L Q
T
´´R S
:
´´T U
IReaderWriter
´´V c
{
¨¨ 

serializer
≠≠ 
.
≠≠ 
SerializeValue
≠≠ )
(
≠≠) *
ref
≠≠* -
	StateHash
≠≠. 7
)
≠≠7 8
;
≠≠8 9

serializer
ÆÆ 
.
ÆÆ 
SerializeValue
ÆÆ )
(
ÆÆ) *
ref
ÆÆ* -
NormalizedTime
ÆÆ. <
)
ÆÆ< =
;
ÆÆ= >

serializer
ØØ 
.
ØØ 
SerializeValue
ØØ )
(
ØØ) *
ref
ØØ* -
Layer
ØØ. 3
)
ØØ3 4
;
ØØ4 5

serializer
∞∞ 
.
∞∞ 
SerializeValue
∞∞ )
(
∞∞) *
ref
∞∞* -
Weight
∞∞. 4
)
∞∞4 5
;
∞∞5 6
}
±± 
}
≤≤ 	
internal
¥¥ 
struct
¥¥ %
ParametersUpdateMessage
¥¥ /
:
¥¥0 1"
INetworkSerializable
¥¥2 F
{
µµ 	
internal
∂∂ 
byte
∂∂ 
[
∂∂ 
]
∂∂ 

Parameters
∂∂ &
;
∂∂& '
public
∑∑ 
void
∑∑ 
NetworkSerialize
∑∑ (
<
∑∑( )
T
∑∑) *
>
∑∑* +
(
∑∑+ ,
BufferSerializer
∑∑, <
<
∑∑< =
T
∑∑= >
>
∑∑> ?

serializer
∑∑@ J
)
∑∑J K
where
∑∑L Q
T
∑∑R S
:
∑∑T U
IReaderWriter
∑∑V c
{
∏∏ 

serializer
ππ 
.
ππ 
SerializeValue
ππ )
(
ππ) *
ref
ππ* -

Parameters
ππ. 8
)
ππ8 9
;
ππ9 :
}
∫∫ 
}
ªª 	
internal
ΩΩ 
struct
ΩΩ %
AnimationTriggerMessage
ΩΩ /
:
ΩΩ0 1"
INetworkSerializable
ΩΩ2 F
{
ææ 	
internal
øø 
int
øø 
Hash
øø 
;
øø 
internal
¿¿ 
bool
¿¿ 
IsTriggerSet
¿¿ &
;
¿¿& '
public
¬¬ 
void
¬¬ 
NetworkSerialize
¬¬ (
<
¬¬( )
T
¬¬) *
>
¬¬* +
(
¬¬+ ,
BufferSerializer
¬¬, <
<
¬¬< =
T
¬¬= >
>
¬¬> ?

serializer
¬¬@ J
)
¬¬J K
where
¬¬L Q
T
¬¬R S
:
¬¬T U
IReaderWriter
¬¬V c
{
√√ 

serializer
ƒƒ 
.
ƒƒ 
SerializeValue
ƒƒ )
(
ƒƒ) *
ref
ƒƒ* -
Hash
ƒƒ. 2
)
ƒƒ2 3
;
ƒƒ3 4

serializer
≈≈ 
.
≈≈ 
SerializeValue
≈≈ )
(
≈≈) *
ref
≈≈* -
IsTriggerSet
≈≈. :
)
≈≈: ;
;
≈≈; <
}
∆∆ 
}
«« 	
[
…… 	
SerializeField
……	 
]
…… 
private
……  
Animator
……! )

m_Animator
……* 4
;
……4 5
public
ÀÀ 
Animator
ÀÀ 
Animator
ÀÀ  
{
ÃÃ 	
get
ÕÕ 
{
ÕÕ 
return
ÕÕ 

m_Animator
ÕÕ #
;
ÕÕ# $
}
ÕÕ% &
set
ŒŒ 
{
œœ 

m_Animator
–– 
=
–– 
value
–– "
;
––" #
}
—— 
}
““ 	
internal
‘‘ 
bool
‘‘ #
IsServerAuthoritative
‘‘ +
(
‘‘+ ,
)
‘‘, -
{
’’ 	
return
÷÷ %
OnIsServerAuthoritative
÷÷ *
(
÷÷* +
)
÷÷+ ,
;
÷÷, -
}
◊◊ 	
	protected
‹‹ 
virtual
‹‹ 
bool
‹‹ %
OnIsServerAuthoritative
‹‹ 6
(
‹‹6 7
)
‹‹7 8
{
›› 	
return
ﬁﬁ 
true
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 	
private
‚‚ 
const
‚‚ 
int
‚‚ "
k_MaxAnimationParams
‚‚ .
=
‚‚/ 0
$num
‚‚1 3
;
‚‚3 4
private
‰‰ 
int
‰‰ 
[
‰‰ 
]
‰‰ 
m_TransitionHash
‰‰ &
;
‰‰& '
private
ÂÂ 
int
ÂÂ 
[
ÂÂ 
]
ÂÂ 
m_AnimationHash
ÂÂ %
;
ÂÂ% &
private
ÊÊ 
float
ÊÊ 
[
ÊÊ 
]
ÊÊ 
m_LayerWeights
ÊÊ &
;
ÊÊ& '
private
ÁÁ 
static
ÁÁ 
byte
ÁÁ 
[
ÁÁ 
]
ÁÁ 
s_EmptyArray
ÁÁ *
=
ÁÁ+ ,
new
ÁÁ- 0
byte
ÁÁ1 5
[
ÁÁ5 6
]
ÁÁ6 7
{
ÁÁ8 9
}
ÁÁ: ;
;
ÁÁ; <
private
ËË /
!NetworkAnimatorStateChangeHandler
ËË 11
#m_NetworkAnimatorStateChangeHandler
ËË2 U
;
ËËU V
private
ÍÍ 
unsafe
ÍÍ 
struct
ÍÍ  
AnimatorParamCache
ÍÍ 0
{
ÎÎ 	
internal
ÏÏ 
int
ÏÏ 
Hash
ÏÏ 
;
ÏÏ 
internal
ÌÌ 
int
ÌÌ 
Type
ÌÌ 
;
ÌÌ 
internal
ÓÓ 
fixed
ÓÓ 
byte
ÓÓ 
Value
ÓÓ  %
[
ÓÓ% &
$num
ÓÓ& '
]
ÓÓ' (
;
ÓÓ( )
}
ÔÔ 	
private
ÚÚ 
FastBufferWriter
ÚÚ  
m_ParameterWriter
ÚÚ! 2
=
ÚÚ3 4
new
ÚÚ5 8
FastBufferWriter
ÚÚ9 I
(
ÚÚI J"
k_MaxAnimationParams
ÚÚJ ^
*
ÚÚ_ `
sizeof
ÚÚa g
(
ÚÚg h
float
ÚÚh m
)
ÚÚm n
,
ÚÚn o
	Allocator
ÚÚp y
.
ÚÚy z

PersistentÚÚz Ñ
)ÚÚÑ Ö
;ÚÚÖ Ü
private
ÙÙ 
NativeArray
ÙÙ 
<
ÙÙ  
AnimatorParamCache
ÙÙ .
>
ÙÙ. /(
m_CachedAnimatorParameters
ÙÙ0 J
;
ÙÙJ K
private
˜˜ 
struct
˜˜ '
AnimationParamEnumWrapper
˜˜ 0
{
¯¯ 	
internal
˘˘ 
static
˘˘ 
readonly
˘˘ $
int
˘˘% (,
AnimatorControllerParameterInt
˘˘) G
;
˘˘G H
internal
˙˙ 
static
˙˙ 
readonly
˙˙ $
int
˙˙% (.
 AnimatorControllerParameterFloat
˙˙) I
;
˙˙I J
internal
˚˚ 
static
˚˚ 
readonly
˚˚ $
int
˚˚% (-
AnimatorControllerParameterBool
˚˚) H
;
˚˚H I
internal
¸¸ 
static
¸¸ 
readonly
¸¸ $
int
¸¸% (4
&AnimatorControllerParameterTriggerBool
¸¸) O
;
¸¸O P
static
˛˛ '
AnimationParamEnumWrapper
˛˛ ,
(
˛˛, -
)
˛˛- .
{
ˇˇ ,
AnimatorControllerParameterInt
ÄÄ .
=
ÄÄ/ 0
UnsafeUtility
ÄÄ1 >
.
ÄÄ> ?
	EnumToInt
ÄÄ? H
(
ÄÄH I-
AnimatorControllerParameterType
ÄÄI h
.
ÄÄh i
Int
ÄÄi l
)
ÄÄl m
;
ÄÄm n.
 AnimatorControllerParameterFloat
ÅÅ 0
=
ÅÅ1 2
UnsafeUtility
ÅÅ3 @
.
ÅÅ@ A
	EnumToInt
ÅÅA J
(
ÅÅJ K-
AnimatorControllerParameterType
ÅÅK j
.
ÅÅj k
Float
ÅÅk p
)
ÅÅp q
;
ÅÅq r-
AnimatorControllerParameterBool
ÇÇ /
=
ÇÇ0 1
UnsafeUtility
ÇÇ2 ?
.
ÇÇ? @
	EnumToInt
ÇÇ@ I
(
ÇÇI J-
AnimatorControllerParameterType
ÇÇJ i
.
ÇÇi j
Bool
ÇÇj n
)
ÇÇn o
;
ÇÇo p4
&AnimatorControllerParameterTriggerBool
ÉÉ 6
=
ÉÉ7 8
UnsafeUtility
ÉÉ9 F
.
ÉÉF G
	EnumToInt
ÉÉG P
(
ÉÉP Q-
AnimatorControllerParameterType
ÉÉQ p
.
ÉÉp q
Trigger
ÉÉq x
)
ÉÉx y
;
ÉÉy z
}
ÑÑ 
}
ÖÖ 	
private
áá 
void
áá 
Cleanup
áá 
(
áá 
)
áá 
{
àà 	
if
ââ 
(
ââ 1
#m_NetworkAnimatorStateChangeHandler
ââ 3
!=
ââ4 6
null
ââ7 ;
)
ââ; <
{
ää 1
#m_NetworkAnimatorStateChangeHandler
ãã 3
.
ãã3 4
DeregisterUpdate
ãã4 D
(
ããD E
)
ããE F
;
ããF G1
#m_NetworkAnimatorStateChangeHandler
åå 3
=
åå4 5
null
åå6 :
;
åå: ;
}
çç 
if
èè 
(
èè 
IsServer
èè 
)
èè 
{
êê 
NetworkManager
ëë 
.
ëë '
OnClientConnectedCallback
ëë 8
-=
ëë9 ;'
OnClientConnectedCallback
ëë< U
;
ëëU V
}
íí 
if
îî 
(
îî (
m_CachedAnimatorParameters
îî *
!=
îî+ -
null
îî. 2
&&
îî3 5(
m_CachedAnimatorParameters
îî6 P
.
îîP Q
	IsCreated
îîQ Z
)
îîZ [
{
ïï (
m_CachedAnimatorParameters
ññ *
.
ññ* +
Dispose
ññ+ 2
(
ññ2 3
)
ññ3 4
;
ññ4 5
}
óó 
if
òò 
(
òò 
m_ParameterWriter
òò !
.
òò! "
IsInitialized
òò" /
)
òò/ 0
{
ôô 
m_ParameterWriter
öö !
.
öö! "
Dispose
öö" )
(
öö) *
)
öö* +
;
öö+ ,
}
õõ 
}
úú 	
public
ûû 
override
ûû 
void
ûû 
	OnDestroy
ûû &
(
ûû& '
)
ûû' (
{
üü 	
Cleanup
†† 
(
†† 
)
†† 
;
†† 
base
°° 
.
°° 
	OnDestroy
°° 
(
°° 
)
°° 
;
°° 
}
¢¢ 	
private
§§ 
List
§§ 
<
§§ 
int
§§ 
>
§§ "
m_ParametersToUpdate
§§ .
;
§§. /
private
•• 
List
•• 
<
•• 
ulong
•• 
>
•• 
m_ClientSendList
•• ,
;
••, -
private
¶¶ 
ClientRpcParams
¶¶ 
m_ClientRpcParams
¶¶  1
;
¶¶1 2
public
®® 
override
®® 
void
®® 
OnNetworkSpawn
®® +
(
®®+ ,
)
®®, -
{
©© 	
if
™™ 
(
™™ 
IsOwner
™™ 
||
™™ 
IsServer
™™ #
)
™™# $
{
´´ 
int
¨¨ 
layers
¨¨ 
=
¨¨ 

m_Animator
¨¨ '
.
¨¨' (

layerCount
¨¨( 2
;
¨¨2 3
m_TransitionHash
≠≠  
=
≠≠! "
new
≠≠# &
int
≠≠' *
[
≠≠* +
layers
≠≠+ 1
]
≠≠1 2
;
≠≠2 3
m_AnimationHash
ÆÆ 
=
ÆÆ  !
new
ÆÆ" %
int
ÆÆ& )
[
ÆÆ) *
layers
ÆÆ* 0
]
ÆÆ0 1
;
ÆÆ1 2
m_LayerWeights
ØØ 
=
ØØ  
new
ØØ! $
float
ØØ% *
[
ØØ* +
layers
ØØ+ 1
]
ØØ1 2
;
ØØ2 3
if
±± 
(
±± 
IsServer
±± 
)
±± 
{
≤≤ 
NetworkManager
≥≥ "
.
≥≥" #'
OnClientConnectedCallback
≥≥# <
+=
≥≥= ?'
OnClientConnectedCallback
≥≥@ Y
;
≥≥Y Z
}
¥¥ 
for
∑∑ 
(
∑∑ 
int
∑∑ 
layer
∑∑ 
=
∑∑  
$num
∑∑! "
;
∑∑" #
layer
∑∑$ )
<
∑∑* +

m_Animator
∑∑, 6
.
∑∑6 7

layerCount
∑∑7 A
;
∑∑A B
layer
∑∑C H
++
∑∑H J
)
∑∑J K
{
∏∏ 
float
ππ 
layerWeightNow
ππ (
=
ππ) *

m_Animator
ππ+ 5
.
ππ5 6
GetLayerWeight
ππ6 D
(
ππD E
layer
ππE J
)
ππJ K
;
ππK L
if
∫∫ 
(
∫∫ 
layerWeightNow
∫∫ &
!=
∫∫' )
m_LayerWeights
∫∫* 8
[
∫∫8 9
layer
∫∫9 >
]
∫∫> ?
)
∫∫? @
{
ªª 
m_LayerWeights
ºº &
[
ºº& '
layer
ºº' ,
]
ºº, -
=
ºº. /
layerWeightNow
ºº0 >
;
ºº> ?
}
ΩΩ 
}
ææ 
if
¿¿ 
(
¿¿ 
IsServer
¿¿ 
)
¿¿ 
{
¡¡ 
m_ClientSendList
¬¬ $
=
¬¬% &
new
¬¬' *
List
¬¬+ /
<
¬¬/ 0
ulong
¬¬0 5
>
¬¬5 6
(
¬¬6 7
$num
¬¬7 :
)
¬¬: ;
;
¬¬; <
m_ClientRpcParams
√√ %
=
√√& '
new
√√( +
ClientRpcParams
√√, ;
(
√√; <
)
√√< =
;
√√= >
m_ClientRpcParams
ƒƒ %
.
ƒƒ% &
Send
ƒƒ& *
=
ƒƒ+ ,
new
ƒƒ- 0!
ClientRpcSendParams
ƒƒ1 D
(
ƒƒD E
)
ƒƒE F
;
ƒƒF G
m_ClientRpcParams
≈≈ %
.
≈≈% &
Send
≈≈& *
.
≈≈* +
TargetClientIds
≈≈+ :
=
≈≈; <
m_ClientSendList
≈≈= M
;
≈≈M N
}
∆∆ 
}
«« 
var
…… 

parameters
…… 
=
…… 

m_Animator
…… '
.
……' (

parameters
……( 2
;
……2 3(
m_CachedAnimatorParameters
   &
=
  ' (
new
  ) ,
NativeArray
  - 8
<
  8 9 
AnimatorParamCache
  9 K
>
  K L
(
  L M

parameters
  M W
.
  W X
Length
  X ^
,
  ^ _
	Allocator
  ` i
.
  i j

Persistent
  j t
)
  t u
;
  u v"
m_ParametersToUpdate
ÀÀ  
=
ÀÀ! "
new
ÀÀ# &
List
ÀÀ' +
<
ÀÀ+ ,
int
ÀÀ, /
>
ÀÀ/ 0
(
ÀÀ0 1

parameters
ÀÀ1 ;
.
ÀÀ; <
Length
ÀÀ< B
)
ÀÀB C
;
ÀÀC D
for
ÃÃ 
(
ÃÃ 
var
ÃÃ 
i
ÃÃ 
=
ÃÃ 
$num
ÃÃ 
;
ÃÃ 
i
ÃÃ 
<
ÃÃ 

parameters
ÃÃ  *
.
ÃÃ* +
Length
ÃÃ+ 1
;
ÃÃ1 2
i
ÃÃ3 4
++
ÃÃ4 6
)
ÃÃ6 7
{
ÕÕ 
var
ŒŒ 
	parameter
ŒŒ 
=
ŒŒ 

parameters
ŒŒ  *
[
ŒŒ* +
i
ŒŒ+ ,
]
ŒŒ, -
;
ŒŒ- .
if
–– 
(
–– 

m_Animator
–– 
.
–– *
IsParameterControlledByCurve
–– ;
(
––; <
	parameter
––< E
.
––E F
nameHash
––F N
)
––N O
)
––O P
{
—— 
continue
‘‘ 
;
‘‘ 
}
’’ 
var
◊◊ 

cacheParam
◊◊ 
=
◊◊  
new
◊◊! $ 
AnimatorParamCache
◊◊% 7
{
ÿÿ 
Type
ŸŸ 
=
ŸŸ 
UnsafeUtility
ŸŸ (
.
ŸŸ( )
	EnumToInt
ŸŸ) 2
(
ŸŸ2 3
	parameter
ŸŸ3 <
.
ŸŸ< =
type
ŸŸ= A
)
ŸŸA B
,
ŸŸB C
Hash
⁄⁄ 
=
⁄⁄ 
	parameter
⁄⁄ $
.
⁄⁄$ %
nameHash
⁄⁄% -
}
€€ 
;
€€ 
unsafe
›› 
{
ﬁﬁ 
switch
ﬂﬂ 
(
ﬂﬂ 
	parameter
ﬂﬂ %
.
ﬂﬂ% &
type
ﬂﬂ& *
)
ﬂﬂ* +
{
‡‡ 
case
·· -
AnimatorControllerParameterType
·· <
.
··< =
Float
··= B
:
··B C
var
‚‚ 
value
‚‚  %
=
‚‚& '

m_Animator
‚‚( 2
.
‚‚2 3
GetFloat
‚‚3 ;
(
‚‚; <

cacheParam
‚‚< F
.
‚‚F G
Hash
‚‚G K
)
‚‚K L
;
‚‚L M
UnsafeUtility
„„ )
.
„„) *
WriteArrayElement
„„* ;
(
„„; <

cacheParam
„„< F
.
„„F G
Value
„„G L
,
„„L M
$num
„„N O
,
„„O P
value
„„Q V
)
„„V W
;
„„W X
break
‰‰ !
;
‰‰! "
case
ÂÂ -
AnimatorControllerParameterType
ÂÂ <
.
ÂÂ< =
Int
ÂÂ= @
:
ÂÂ@ A
var
ÊÊ 
valueInt
ÊÊ  (
=
ÊÊ) *

m_Animator
ÊÊ+ 5
.
ÊÊ5 6

GetInteger
ÊÊ6 @
(
ÊÊ@ A

cacheParam
ÊÊA K
.
ÊÊK L
Hash
ÊÊL P
)
ÊÊP Q
;
ÊÊQ R
UnsafeUtility
ÁÁ )
.
ÁÁ) *
WriteArrayElement
ÁÁ* ;
(
ÁÁ; <

cacheParam
ÁÁ< F
.
ÁÁF G
Value
ÁÁG L
,
ÁÁL M
$num
ÁÁN O
,
ÁÁO P
valueInt
ÁÁQ Y
)
ÁÁY Z
;
ÁÁZ [
break
ËË !
;
ËË! "
case
ÈÈ -
AnimatorControllerParameterType
ÈÈ <
.
ÈÈ< =
Bool
ÈÈ= A
:
ÈÈA B
var
ÍÍ 
	valueBool
ÍÍ  )
=
ÍÍ* +

m_Animator
ÍÍ, 6
.
ÍÍ6 7
GetBool
ÍÍ7 >
(
ÍÍ> ?

cacheParam
ÍÍ? I
.
ÍÍI J
Hash
ÍÍJ N
)
ÍÍN O
;
ÍÍO P
UnsafeUtility
ÎÎ )
.
ÎÎ) *
WriteArrayElement
ÎÎ* ;
(
ÎÎ; <

cacheParam
ÎÎ< F
.
ÎÎF G
Value
ÎÎG L
,
ÎÎL M
$num
ÎÎN O
,
ÎÎO P
	valueBool
ÎÎQ Z
)
ÎÎZ [
;
ÎÎ[ \
break
ÏÏ !
;
ÏÏ! "
default
ÌÌ 
:
ÌÌ  
break
ÓÓ !
;
ÓÓ! "
}
ÔÔ 
}
 (
m_CachedAnimatorParameters
ÚÚ *
[
ÚÚ* +
i
ÚÚ+ ,
]
ÚÚ, -
=
ÚÚ. /

cacheParam
ÚÚ0 :
;
ÚÚ: ;
}
ÛÛ 1
#m_NetworkAnimatorStateChangeHandler
ÙÙ /
=
ÙÙ0 1
new
ÙÙ2 5/
!NetworkAnimatorStateChangeHandler
ÙÙ6 W
(
ÙÙW X
this
ÙÙX \
)
ÙÙ\ ]
;
ÙÙ] ^
}
ıı 	
public
˜˜ 
override
˜˜ 
void
˜˜ 
OnNetworkDespawn
˜˜ -
(
˜˜- .
)
˜˜. /
{
¯¯ 	
Cleanup
˘˘ 
(
˘˘ 
)
˘˘ 
;
˘˘ 
}
˙˙ 	
internal
ˇˇ 
void
ˇˇ (
ServerSynchronizeNewPlayer
ˇˇ 0
(
ˇˇ0 1
ulong
ˇˇ1 6
playerId
ˇˇ7 ?
)
ˇˇ? @
{
ÄÄ 	
m_ClientSendList
ÅÅ 
.
ÅÅ 
Clear
ÅÅ "
(
ÅÅ" #
)
ÅÅ# $
;
ÅÅ$ %
m_ClientSendList
ÇÇ 
.
ÇÇ 
Add
ÇÇ  
(
ÇÇ  !
playerId
ÇÇ! )
)
ÇÇ) *
;
ÇÇ* +
m_ClientRpcParams
ÉÉ 
.
ÉÉ 
Send
ÉÉ "
.
ÉÉ" #
TargetClientIds
ÉÉ# 2
=
ÉÉ3 4
m_ClientSendList
ÉÉ5 E
;
ÉÉE F"
m_ParametersToUpdate
ÖÖ  
.
ÖÖ  !
Clear
ÖÖ! &
(
ÖÖ& '
)
ÖÖ' (
;
ÖÖ( )
for
ÜÜ 
(
ÜÜ 
int
ÜÜ 
i
ÜÜ 
=
ÜÜ 
$num
ÜÜ 
;
ÜÜ 
i
ÜÜ 
<
ÜÜ (
m_CachedAnimatorParameters
ÜÜ  :
.
ÜÜ: ;
Length
ÜÜ; A
;
ÜÜA B
i
ÜÜC D
++
ÜÜD F
)
ÜÜF G
{
áá "
m_ParametersToUpdate
àà $
.
àà$ %
Add
àà% (
(
àà( )
i
àà) *
)
àà* +
;
àà+ ,
}
ââ "
SendParametersUpdate
ää  
(
ää  !
m_ClientRpcParams
ää! 2
)
ää2 3
;
ää3 4
for
ãã 
(
ãã 
int
ãã 
layer
ãã 
=
ãã 
$num
ãã 
;
ãã 
layer
ãã  %
<
ãã& '

m_Animator
ãã( 2
.
ãã2 3

layerCount
ãã3 =
;
ãã= >
layer
ãã? D
++
ããD F
)
ããF G
{
åå 
AnimatorStateInfo
çç !
st
çç" $
=
çç% &

m_Animator
çç' 1
.
çç1 2)
GetCurrentAnimatorStateInfo
çç2 M
(
ççM N
layer
ççN S
)
ççS T
;
ççT U
var
èè 
	stateHash
èè 
=
èè 
st
èè  "
.
èè" #
fullPathHash
èè# /
;
èè/ 0
var
êê 
normalizedTime
êê "
=
êê# $
st
êê% '
.
êê' (
normalizedTime
êê( 6
;
êê6 7
var
ëë 

totalSpeed
ëë 
=
ëë  
st
ëë! #
.
ëë# $
speed
ëë$ )
*
ëë* +
st
ëë, .
.
ëë. /
speedMultiplier
ëë/ >
;
ëë> ?
var
íí '
adjustedNormalizedMaxTime
íí -
=
íí. /

totalSpeed
íí0 :
>
íí; <
$num
íí= A
?
ííB C
$num
ííD H
/
ííI J

totalSpeed
ííK U
:
ííV W
$num
ííX \
;
íí\ ]
if
ññ 
(
ññ 

m_Animator
ññ 
.
ññ 
IsInTransition
ññ -
(
ññ- .
layer
ññ. 3
)
ññ3 4
)
ññ4 5
{
óó 
var
òò 
tt
òò 
=
òò 

m_Animator
òò '
.
òò' ('
GetAnimatorTransitionInfo
òò( A
(
òòA B
layer
òòB G
)
òòG H
;
òòH I
var
ôô 
	nextState
ôô !
=
ôô" #

m_Animator
ôô$ .
.
ôô. /&
GetNextAnimatorStateInfo
ôô/ G
(
ôôG H
layer
ôôH M
)
ôôM N
;
ôôN O
if
õõ 
(
õõ 
	nextState
õõ !
.
õõ! "
length
õõ" (
>
õõ) *
$num
õõ+ ,
)
õõ, -
{
úú 
var
ùù !
nextStateTotalSpeed
ùù /
=
ùù0 1
	nextState
ùù2 ;
.
ùù; <
speed
ùù< A
*
ùùB C
	nextState
ùùD M
.
ùùM N
speedMultiplier
ùùN ]
;
ùù] ^
var
ûû %
nextStateAdjustedLength
ûû 3
=
ûû4 5
	nextState
ûû6 ?
.
ûû? @
length
ûû@ F
*
ûûG H!
nextStateTotalSpeed
ûûI \
;
ûû\ ]
var
°° 
transitionTime
°° *
=
°°+ ,
Mathf
°°- 2
.
°°2 3
Min
°°3 6
(
°°6 7
tt
°°7 9
.
°°9 :
duration
°°: B
,
°°B C
tt
°°D F
.
°°F G
duration
°°G O
*
°°P Q
tt
°°R T
.
°°T U
normalizedTime
°°U c
)
°°c d
*
°°e f
$num
°°g k
;
°°k l
normalizedTime
¢¢ &
=
¢¢' (
Mathf
¢¢) .
.
¢¢. /
Min
¢¢/ 2
(
¢¢2 3
$num
¢¢3 7
,
¢¢7 8
transitionTime
¢¢9 G
>
¢¢H I
$num
¢¢J N
?
¢¢O P
transitionTime
¢¢Q _
/
¢¢` a%
nextStateAdjustedLength
¢¢b y
:
¢¢z {
$num¢¢| Ä
)¢¢Ä Å
;¢¢Å Ç
}
££ 
else
§§ 
{
•• 
normalizedTime
¶¶ &
=
¶¶' (
$num
¶¶) -
;
¶¶- .
}
ßß 
	stateHash
©© 
=
©© 
	nextState
©©  )
.
©©) *
fullPathHash
©©* 6
;
©©6 7
}
™™ 
else
´´ 
if
¨¨ 
(
¨¨ 
st
¨¨ 
.
¨¨ 
normalizedTime
¨¨ %
>=
¨¨& ('
adjustedNormalizedMaxTime
¨¨) B
)
¨¨B C
{
≠≠ 
continue
ÆÆ 
;
ÆÆ 
}
ØØ 
var
±± 
animMsg
±± 
=
±± 
new
±± !
AnimationMessage
±±" 2
{
≤≤ 
	StateHash
≥≥ 
=
≥≥ 
	stateHash
≥≥  )
,
≥≥) *
NormalizedTime
¥¥ "
=
¥¥# $
normalizedTime
¥¥% 3
,
¥¥3 4
Layer
µµ 
=
µµ 
layer
µµ !
,
µµ! "
Weight
∂∂ 
=
∂∂ 
m_LayerWeights
∂∂ +
[
∂∂+ ,
layer
∂∂, 1
]
∂∂1 2
}
∑∑ 
;
∑∑ $
SendAnimStateClientRpc
ππ &
(
ππ& '
animMsg
ππ' .
,
ππ. /
m_ClientRpcParams
ππ0 A
)
ππA B
;
ππB C
}
∫∫ 
}
ªª 	
private
ΩΩ 
void
ΩΩ '
OnClientConnectedCallback
ΩΩ .
(
ΩΩ. /
ulong
ΩΩ/ 4
playerId
ΩΩ5 =
)
ΩΩ= >
{
ææ 	1
#m_NetworkAnimatorStateChangeHandler
øø /
.
øø/ 0
SynchronizeClient
øø0 A
(
øøA B
playerId
øøB J
)
øøJ K
;
øøK L
}
¿¿ 	
internal
¬¬ 
void
¬¬ %
CheckForAnimatorChanges
¬¬ -
(
¬¬- .
)
¬¬. /
{
√√ 	
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
IsOwner
ƒƒ 
&&
ƒƒ 
!
ƒƒ #
IsServerAuthoritative
ƒƒ 2
(
ƒƒ2 3
)
ƒƒ3 4
||
ƒƒ5 7#
IsServerAuthoritative
ƒƒ8 M
(
ƒƒM N
)
ƒƒN O
&&
ƒƒP R
!
ƒƒS T
IsServer
ƒƒT \
)
ƒƒ\ ]
{
≈≈ 
return
∆∆ 
;
∆∆ 
}
«« 
if
…… 
(
…… $
CheckParametersChanged
…… &
(
……& '
)
……' (
)
……( )
{
   "
SendParametersUpdate
ÀÀ $
(
ÀÀ$ %
)
ÀÀ% &
;
ÀÀ& '
}
ÃÃ 
if
ŒŒ 
(
ŒŒ 

m_Animator
ŒŒ 
.
ŒŒ '
runtimeAnimatorController
ŒŒ 4
==
ŒŒ5 7
null
ŒŒ8 <
)
ŒŒ< =
{
œœ 
return
–– 
;
–– 
}
—— 
int
”” 
	stateHash
”” 
;
”” 
float
‘‘ 
normalizedTime
‘‘  
;
‘‘  !
for
◊◊ 
(
◊◊ 
int
◊◊ 
layer
◊◊ 
=
◊◊ 
$num
◊◊ 
;
◊◊ 
layer
◊◊  %
<
◊◊& '

m_Animator
◊◊( 2
.
◊◊2 3

layerCount
◊◊3 =
;
◊◊= >
layer
◊◊? D
++
◊◊D F
)
◊◊F G
{
ÿÿ 
AnimatorStateInfo
ŸŸ !
st
ŸŸ" $
=
ŸŸ% &

m_Animator
ŸŸ' 1
.
ŸŸ1 2)
GetCurrentAnimatorStateInfo
ŸŸ2 M
(
ŸŸM N
layer
ŸŸN S
)
ŸŸS T
;
ŸŸT U
var
⁄⁄ 

totalSpeed
⁄⁄ 
=
⁄⁄  
st
⁄⁄! #
.
⁄⁄# $
speed
⁄⁄$ )
*
⁄⁄* +
st
⁄⁄, .
.
⁄⁄. /
speedMultiplier
⁄⁄/ >
;
⁄⁄> ?
var
€€ '
adjustedNormalizedMaxTime
€€ -
=
€€. /

totalSpeed
€€0 :
>
€€; <
$num
€€= A
?
€€B C
$num
€€D H
/
€€I J

totalSpeed
€€K U
:
€€V W
$num
€€X \
;
€€\ ]
if
ﬁﬁ 
(
ﬁﬁ 
st
ﬁﬁ 
.
ﬁﬁ 
normalizedTime
ﬁﬁ %
>=
ﬁﬁ& ('
adjustedNormalizedMaxTime
ﬁﬁ) B
)
ﬁﬁB C
{
ﬂﬂ 
continue
‡‡ 
;
‡‡ 
}
·· 
if
„„ 
(
„„ 
!
„„ #
CheckAnimStateChanged
„„ *
(
„„* +
out
„„+ .
	stateHash
„„/ 8
,
„„8 9
out
„„: =
normalizedTime
„„> L
,
„„L M
layer
„„N S
)
„„S T
)
„„T U
{
‰‰ 
continue
ÂÂ 
;
ÂÂ 
}
ÊÊ 
var
ËË 
animMsg
ËË 
=
ËË 
new
ËË !
AnimationMessage
ËË" 2
{
ÈÈ 
	StateHash
ÍÍ 
=
ÍÍ 
	stateHash
ÍÍ  )
,
ÍÍ) *
NormalizedTime
ÎÎ "
=
ÎÎ# $
normalizedTime
ÎÎ% 3
,
ÎÎ3 4
Layer
ÏÏ 
=
ÏÏ 
layer
ÏÏ !
,
ÏÏ! "
Weight
ÌÌ 
=
ÌÌ 
m_LayerWeights
ÌÌ +
[
ÌÌ+ ,
layer
ÌÌ, 1
]
ÌÌ1 2
}
ÓÓ 
;
ÓÓ 
if
 
(
 
!
 
IsServer
 
&&
  
IsOwner
! (
)
( )
{
ÒÒ $
SendAnimStateServerRpc
ÚÚ *
(
ÚÚ* +
animMsg
ÚÚ+ 2
)
ÚÚ2 3
;
ÚÚ3 4
}
ÛÛ 
else
ÙÙ 
{
ıı $
SendAnimStateClientRpc
ˆˆ *
(
ˆˆ* +
animMsg
ˆˆ+ 2
)
ˆˆ2 3
;
ˆˆ3 4
}
˜˜ 
}
¯¯ 
}
˘˘ 	
private
˚˚ 
void
˚˚ "
SendParametersUpdate
˚˚ )
(
˚˚) *
ClientRpcParams
˚˚* 9
clientRpcParams
˚˚: I
=
˚˚J K
default
˚˚L S
,
˚˚S T
bool
˚˚U Y

sendDirect
˚˚Z d
=
˚˚e f
false
˚˚g l
)
˚˚l m
{
¸¸ 	
m_ParameterWriter
˝˝ 
.
˝˝ 
Seek
˝˝ "
(
˝˝" #
$num
˝˝# $
)
˝˝$ %
;
˝˝% &
m_ParameterWriter
˛˛ 
.
˛˛ 
Truncate
˛˛ &
(
˛˛& '
)
˛˛' (
;
˛˛( )
WriteParameters
ÄÄ 
(
ÄÄ 
m_ParameterWriter
ÄÄ -
,
ÄÄ- .

sendDirect
ÄÄ/ 9
)
ÄÄ9 :
;
ÄÄ: ;
var
ÇÇ 
parametersMessage
ÇÇ !
=
ÇÇ" #
new
ÇÇ$ '%
ParametersUpdateMessage
ÇÇ( ?
{
ÉÉ 

Parameters
ÑÑ 
=
ÑÑ 
m_ParameterWriter
ÑÑ .
.
ÑÑ. /
ToArray
ÑÑ/ 6
(
ÑÑ6 7
)
ÑÑ7 8
}
ÖÖ 
;
ÖÖ 
if
áá 
(
áá 
!
áá 
IsServer
áá 
)
áá 
{
àà +
SendParametersUpdateServerRpc
ââ -
(
ââ- .
parametersMessage
ââ. ?
)
ââ? @
;
ââ@ A
}
ää 
else
ãã 
{
åå 
if
çç 
(
çç 

sendDirect
çç 
)
çç 
{
éé +
SendParametersUpdateClientRpc
èè 1
(
èè1 2
parametersMessage
èè2 C
,
èèC D
clientRpcParams
èèE T
)
èèT U
;
èèU V
}
êê 
else
ëë 
{
íí 1
#m_NetworkAnimatorStateChangeHandler
ìì 7
.
ìì7 8!
SendParameterUpdate
ìì8 K
(
ììK L
parametersMessage
ììL ]
,
ìì] ^
clientRpcParams
ìì_ n
)
ììn o
;
ììo p
}
îî 
}
ïï 
}
ññ 	
unsafe
õõ 
private
õõ 
T
õõ 
GetValue
õõ !
<
õõ! "
T
õõ" #
>
õõ# $
(
õõ$ %
ref
õõ% ( 
AnimatorParamCache
õõ) ; 
animatorParamCache
õõ< N
)
õõN O
{
úú 	
T
ùù 
currentValue
ùù 
;
ùù 
fixed
ûû 
(
ûû 
void
ûû 
*
ûû 
value
ûû 
=
ûû   
animatorParamCache
ûû! 3
.
ûû3 4
Value
ûû4 9
)
ûû9 :
{
üü 
currentValue
†† 
=
†† 
UnsafeUtility
†† ,
.
††, -
ReadArrayElement
††- =
<
††= >
T
††> ?
>
††? @
(
††@ A
value
††A F
,
††F G
$num
††H I
)
††I J
;
††J K
}
°° 
return
¢¢ 
currentValue
¢¢ 
;
¢¢  
}
££ 	
unsafe
™™ 
private
™™ 
bool
™™ $
CheckParametersChanged
™™ 2
(
™™2 3
)
™™3 4
{
´´ 	"
m_ParametersToUpdate
¨¨  
.
¨¨  !
Clear
¨¨! &
(
¨¨& '
)
¨¨' (
;
¨¨( )
for
≠≠ 
(
≠≠ 
int
≠≠ 
i
≠≠ 
=
≠≠ 
$num
≠≠ 
;
≠≠ 
i
≠≠ 
<
≠≠ (
m_CachedAnimatorParameters
≠≠  :
.
≠≠: ;
Length
≠≠; A
;
≠≠A B
i
≠≠C D
++
≠≠D F
)
≠≠F G
{
ÆÆ 
ref
ØØ 
var
ØØ 

cacheValue
ØØ "
=
ØØ# $
ref
ØØ% (
UnsafeUtility
ØØ) 6
.
ØØ6 7
ArrayElementAsRef
ØØ7 H
<
ØØH I 
AnimatorParamCache
ØØI [
>
ØØ[ \
(
ØØ\ ](
m_CachedAnimatorParameters
ØØ] w
.
ØØw x
GetUnsafePtrØØx Ñ
(ØØÑ Ö
)ØØÖ Ü
,ØØÜ á
iØØà â
)ØØâ ä
;ØØä ã
var
∞∞ 
hash
∞∞ 
=
∞∞ 

cacheValue
∞∞ %
.
∞∞% &
Hash
∞∞& *
;
∞∞* +
if
±± 
(
±± 

cacheValue
±± 
.
±± 
Type
±± #
==
±±$ &'
AnimationParamEnumWrapper
±±' @
.
±±@ A,
AnimatorControllerParameterInt
±±A _
)
±±_ `
{
≤≤ 
var
≥≥ 
valueInt
≥≥  
=
≥≥! "

m_Animator
≥≥# -
.
≥≥- .

GetInteger
≥≥. 8
(
≥≥8 9
hash
≥≥9 =
)
≥≥= >
;
≥≥> ?
var
¥¥ 
currentValue
¥¥ $
=
¥¥% &
GetValue
¥¥' /
<
¥¥/ 0
int
¥¥0 3
>
¥¥3 4
(
¥¥4 5
ref
¥¥5 8

cacheValue
¥¥9 C
)
¥¥C D
;
¥¥D E
if
µµ 
(
µµ 
currentValue
µµ $
!=
µµ% '
valueInt
µµ( 0
)
µµ0 1
{
∂∂ "
m_ParametersToUpdate
∑∑ ,
.
∑∑, -
Add
∑∑- 0
(
∑∑0 1
i
∑∑1 2
)
∑∑2 3
;
∑∑3 4
continue
∏∏  
;
∏∏  !
}
ππ 
}
∫∫ 
else
ªª 
if
ªª 
(
ªª 

cacheValue
ªª #
.
ªª# $
Type
ªª$ (
==
ªª) +'
AnimationParamEnumWrapper
ªª, E
.
ªªE F-
AnimatorControllerParameterBool
ªªF e
)
ªªe f
{
ºº 
var
ΩΩ 
	valueBool
ΩΩ !
=
ΩΩ" #

m_Animator
ΩΩ$ .
.
ΩΩ. /
GetBool
ΩΩ/ 6
(
ΩΩ6 7
hash
ΩΩ7 ;
)
ΩΩ; <
;
ΩΩ< =
var
ææ 
currentValue
ææ $
=
ææ% &
GetValue
ææ' /
<
ææ/ 0
bool
ææ0 4
>
ææ4 5
(
ææ5 6
ref
ææ6 9

cacheValue
ææ: D
)
ææD E
;
ææE F
if
øø 
(
øø 
currentValue
øø $
!=
øø% '
	valueBool
øø( 1
)
øø1 2
{
¿¿ "
m_ParametersToUpdate
¡¡ ,
.
¡¡, -
Add
¡¡- 0
(
¡¡0 1
i
¡¡1 2
)
¡¡2 3
;
¡¡3 4
continue
¬¬  
;
¬¬  !
}
√√ 
}
ƒƒ 
else
≈≈ 
if
≈≈ 
(
≈≈ 

cacheValue
≈≈ #
.
≈≈# $
Type
≈≈$ (
==
≈≈) +'
AnimationParamEnumWrapper
≈≈, E
.
≈≈E F.
 AnimatorControllerParameterFloat
≈≈F f
)
≈≈f g
{
∆∆ 
var
«« 

valueFloat
«« "
=
««# $

m_Animator
««% /
.
««/ 0
GetFloat
««0 8
(
««8 9
hash
««9 =
)
««= >
;
««> ?
var
»» 
currentValue
»» $
=
»»% &
GetValue
»»' /
<
»»/ 0
float
»»0 5
>
»»5 6
(
»»6 7
ref
»»7 :

cacheValue
»»; E
)
»»E F
;
»»F G
if
…… 
(
…… 
currentValue
…… $
!=
……% '

valueFloat
……( 2
)
……2 3
{
   "
m_ParametersToUpdate
ÀÀ ,
.
ÀÀ, -
Add
ÀÀ- 0
(
ÀÀ0 1
i
ÀÀ1 2
)
ÀÀ2 3
;
ÀÀ3 4
continue
ÃÃ  
;
ÃÃ  !
}
ÕÕ 
}
ŒŒ 
}
œœ 
return
–– "
m_ParametersToUpdate
–– '
.
––' (
Count
––( -
>
––. /
$num
––0 1
;
––1 2
}
—— 	
private
÷÷ 
unsafe
÷÷ 
bool
÷÷ #
CheckAnimStateChanged
÷÷ 1
(
÷÷1 2
out
÷÷2 5
int
÷÷6 9
	stateHash
÷÷: C
,
÷÷C D
out
÷÷E H
float
÷÷I N
normalizedTime
÷÷O ]
,
÷÷] ^
int
÷÷_ b
layer
÷÷c h
)
÷÷h i
{
◊◊ 	
	stateHash
ÿÿ 
=
ÿÿ 
$num
ÿÿ 
;
ÿÿ 
normalizedTime
ŸŸ 
=
ŸŸ 
$num
ŸŸ 
;
ŸŸ 
float
€€ 
layerWeightNow
€€  
=
€€! "

m_Animator
€€# -
.
€€- .
GetLayerWeight
€€. <
(
€€< =
layer
€€= B
)
€€B C
;
€€C D
if
‹‹ 
(
‹‹ 
layerWeightNow
‹‹ 
!=
‹‹ !
m_LayerWeights
‹‹" 0
[
‹‹0 1
layer
‹‹1 6
]
‹‹6 7
)
‹‹7 8
{
›› 
m_LayerWeights
ﬁﬁ 
[
ﬁﬁ 
layer
ﬁﬁ $
]
ﬁﬁ$ %
=
ﬁﬁ& '
layerWeightNow
ﬁﬁ( 6
;
ﬁﬁ6 7
return
ﬂﬂ 
true
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
if
‚‚ 
(
‚‚ 

m_Animator
‚‚ 
.
‚‚ 
IsInTransition
‚‚ )
(
‚‚) *
layer
‚‚* /
)
‚‚/ 0
)
‚‚0 1
{
„„ $
AnimatorTransitionInfo
‰‰ &
tt
‰‰' )
=
‰‰* +

m_Animator
‰‰, 6
.
‰‰6 7'
GetAnimatorTransitionInfo
‰‰7 P
(
‰‰P Q
layer
‰‰Q V
)
‰‰V W
;
‰‰W X
if
ÂÂ 
(
ÂÂ 
tt
ÂÂ 
.
ÂÂ 
fullPathHash
ÂÂ #
!=
ÂÂ$ &
m_TransitionHash
ÂÂ' 7
[
ÂÂ7 8
layer
ÂÂ8 =
]
ÂÂ= >
)
ÂÂ> ?
{
ÊÊ 
m_TransitionHash
ËË $
[
ËË$ %
layer
ËË% *
]
ËË* +
=
ËË, -
tt
ËË. 0
.
ËË0 1
fullPathHash
ËË1 =
;
ËË= >
m_AnimationHash
ÈÈ #
[
ÈÈ# $
layer
ÈÈ$ )
]
ÈÈ) *
=
ÈÈ+ ,
$num
ÈÈ- .
;
ÈÈ. /
return
ÍÍ 
true
ÍÍ 
;
ÍÍ  
}
ÎÎ 
}
ÏÏ 
else
ÌÌ 
{
ÓÓ 
AnimatorStateInfo
ÔÔ !
st
ÔÔ" $
=
ÔÔ% &

m_Animator
ÔÔ' 1
.
ÔÔ1 2)
GetCurrentAnimatorStateInfo
ÔÔ2 M
(
ÔÔM N
layer
ÔÔN S
)
ÔÔS T
;
ÔÔT U
if
 
(
 
st
 
.
 
fullPathHash
 #
!=
$ &
m_AnimationHash
' 6
[
6 7
layer
7 <
]
< =
)
= >
{
ÒÒ 
if
ÛÛ 
(
ÛÛ 
m_AnimationHash
ÛÛ '
[
ÛÛ' (
layer
ÛÛ( -
]
ÛÛ- .
!=
ÛÛ/ 1
$num
ÛÛ2 3
)
ÛÛ3 4
{
ÙÙ 
	stateHash
ˆˆ !
=
ˆˆ" #
st
ˆˆ$ &
.
ˆˆ& '
fullPathHash
ˆˆ' 3
;
ˆˆ3 4
normalizedTime
˜˜ &
=
˜˜' (
st
˜˜) +
.
˜˜+ ,
normalizedTime
˜˜, :
;
˜˜: ;
}
¯¯ 
m_TransitionHash
˘˘ $
[
˘˘$ %
layer
˘˘% *
]
˘˘* +
=
˘˘, -
$num
˘˘. /
;
˘˘/ 0
m_AnimationHash
˙˙ #
[
˙˙# $
layer
˙˙$ )
]
˙˙) *
=
˙˙+ ,
st
˙˙- /
.
˙˙/ 0
fullPathHash
˙˙0 <
;
˙˙< =
return
˚˚ 
true
˚˚ 
;
˚˚  
}
¸¸ 
}
˝˝ 
return
˛˛ 
false
˛˛ 
;
˛˛ 
}
ˇˇ 	
private
ÜÜ 
unsafe
ÜÜ 
void
ÜÜ 
WriteParameters
ÜÜ +
(
ÜÜ+ ,
FastBufferWriter
ÜÜ, <
writer
ÜÜ= C
,
ÜÜC D
bool
ÜÜE I
sendCacheState
ÜÜJ X
)
ÜÜX Y
{
áá 	

BytePacker
ââ 
.
ââ 
WriteValuePacked
ââ '
(
ââ' (
writer
ââ( .
,
ââ. /
(
ââ0 1
uint
ââ1 5
)
ââ5 6"
m_ParametersToUpdate
ââ6 J
.
ââJ K
Count
ââK P
)
ââP Q
;
ââQ R
foreach
ää 
(
ää 
var
ää 
parameterIndex
ää '
in
ää( *"
m_ParametersToUpdate
ää+ ?
)
ää? @
{
ãã 
ref
åå 
var
åå 

cacheValue
åå "
=
åå# $
ref
åå% (
UnsafeUtility
åå) 6
.
åå6 7
ArrayElementAsRef
åå7 H
<
ååH I 
AnimatorParamCache
ååI [
>
åå[ \
(
åå\ ](
m_CachedAnimatorParameters
åå] w
.
ååw x
GetUnsafePtrååx Ñ
(ååÑ Ö
)ååÖ Ü
,ååÜ á
parameterIndexååà ñ
)ååñ ó
;ååó ò
var
çç 
hash
çç 
=
çç 

cacheValue
çç %
.
çç% &
Hash
çç& *
;
çç* +

BytePacker
éé 
.
éé 
WriteValuePacked
éé +
(
éé+ ,
writer
éé, 2
,
éé2 3
(
éé4 5
uint
éé5 9
)
éé9 :
parameterIndex
éé: H
)
ééH I
;
ééI J
if
èè 
(
èè 

cacheValue
èè 
.
èè 
Type
èè #
==
èè$ &'
AnimationParamEnumWrapper
èè' @
.
èè@ A,
AnimatorControllerParameterInt
èèA _
)
èè_ `
{
êê 
var
ëë 
valueInt
ëë  
=
ëë! "

m_Animator
ëë# -
.
ëë- .

GetInteger
ëë. 8
(
ëë8 9
hash
ëë9 =
)
ëë= >
;
ëë> ?
fixed
íí 
(
íí 
void
íí 
*
íí  
value
íí! &
=
íí' (

cacheValue
íí) 3
.
íí3 4
Value
íí4 9
)
íí9 :
{
ìì 
UnsafeUtility
îî %
.
îî% &
WriteArrayElement
îî& 7
(
îî7 8
value
îî8 =
,
îî= >
$num
îî? @
,
îî@ A
valueInt
îîB J
)
îîJ K
;
îîK L

BytePacker
ïï "
.
ïï" #
WriteValuePacked
ïï# 3
(
ïï3 4
writer
ïï4 :
,
ïï: ;
(
ïï< =
uint
ïï= A
)
ïïA B
valueInt
ïïB J
)
ïïJ K
;
ïïK L
}
ññ 
}
óó 
else
òò 
if
ôô 
(
ôô 

cacheValue
ôô 
.
ôô 
Type
ôô #
==
ôô$ &'
AnimationParamEnumWrapper
ôô' @
.
ôô@ A-
AnimatorControllerParameterBool
ôôA `
)
ôô` a
{
öö 
var
õõ 
	valueBool
õõ !
=
õõ" #

m_Animator
õõ$ .
.
õõ. /
GetBool
õõ/ 6
(
õõ6 7
hash
õõ7 ;
)
õõ; <
;
õõ< =
fixed
úú 
(
úú 
void
úú 
*
úú  
value
úú! &
=
úú' (

cacheValue
úú) 3
.
úú3 4
Value
úú4 9
)
úú9 :
{
ùù 
UnsafeUtility
ûû %
.
ûû% &
WriteArrayElement
ûû& 7
(
ûû7 8
value
ûû8 =
,
ûû= >
$num
ûû? @
,
ûû@ A
	valueBool
ûûB K
)
ûûK L
;
ûûL M

BytePacker
üü "
.
üü" #
WriteValuePacked
üü# 3
(
üü3 4
writer
üü4 :
,
üü: ;
	valueBool
üü< E
)
üüE F
;
üüF G
}
†† 
}
°° 
else
¢¢ 
if
££ 
(
££ 

cacheValue
££ 
.
££ 
Type
££ #
==
££$ &'
AnimationParamEnumWrapper
££' @
.
££@ A.
 AnimatorControllerParameterFloat
££A a
)
££a b
{
§§ 
var
•• 

valueFloat
•• "
=
••# $

m_Animator
••% /
.
••/ 0
GetFloat
••0 8
(
••8 9
hash
••9 =
)
••= >
;
••> ?
fixed
¶¶ 
(
¶¶ 
void
¶¶ 
*
¶¶  
value
¶¶! &
=
¶¶' (

cacheValue
¶¶) 3
.
¶¶3 4
Value
¶¶4 9
)
¶¶9 :
{
ßß 
UnsafeUtility
®® %
.
®®% &
WriteArrayElement
®®& 7
(
®®7 8
value
®®8 =
,
®®= >
$num
®®? @
,
®®@ A

valueFloat
®®B L
)
®®L M
;
®®M N

BytePacker
©© "
.
©©" #
WriteValuePacked
©©# 3
(
©©3 4
writer
©©4 :
,
©©: ;

valueFloat
©©< F
)
©©F G
;
©©G H
}
™™ 
}
´´ 
}
¨¨ 
}
≠≠ 	
private
≤≤ 
unsafe
≤≤ 
void
≤≤ 
ReadParameters
≤≤ *
(
≤≤* +
FastBufferReader
≤≤+ ;
reader
≤≤< B
)
≤≤B C
{
≥≥ 	
ByteUnpacker
¥¥ 
.
¥¥ 
ReadValuePacked
¥¥ (
(
¥¥( )
reader
¥¥) /
,
¥¥/ 0
out
¥¥1 4
uint
¥¥5 9#
totalParametersToRead
¥¥: O
)
¥¥O P
;
¥¥P Q
var
µµ !
totalParametersRead
µµ #
=
µµ$ %
$num
µµ& '
;
µµ' (
while
∑∑ 
(
∑∑ !
totalParametersRead
∑∑ &
<
∑∑' (#
totalParametersToRead
∑∑) >
)
∑∑> ?
{
∏∏ 
ByteUnpacker
ππ 
.
ππ 
ReadValuePacked
ππ ,
(
ππ, -
reader
ππ- 3
,
ππ3 4
out
ππ5 8
uint
ππ9 =
parameterIndex
ππ> L
)
ππL M
;
ππM N
ref
∫∫ 
var
∫∫ 

cacheValue
∫∫ "
=
∫∫# $
ref
∫∫% (
UnsafeUtility
∫∫) 6
.
∫∫6 7
ArrayElementAsRef
∫∫7 H
<
∫∫H I 
AnimatorParamCache
∫∫I [
>
∫∫[ \
(
∫∫\ ](
m_CachedAnimatorParameters
∫∫] w
.
∫∫w x
GetUnsafePtr∫∫x Ñ
(∫∫Ñ Ö
)∫∫Ö Ü
,∫∫Ü á
(∫∫à â
int∫∫â å
)∫∫å ç
parameterIndex∫∫ç õ
)∫∫õ ú
;∫∫ú ù
var
ªª 
hash
ªª 
=
ªª 

cacheValue
ªª %
.
ªª% &
Hash
ªª& *
;
ªª* +
if
ºº 
(
ºº 

cacheValue
ºº 
.
ºº 
Type
ºº #
==
ºº$ &'
AnimationParamEnumWrapper
ºº' @
.
ºº@ A,
AnimatorControllerParameterInt
ººA _
)
ºº_ `
{
ΩΩ 
ByteUnpacker
ææ  
.
ææ  !
ReadValuePacked
ææ! 0
(
ææ0 1
reader
ææ1 7
,
ææ7 8
out
ææ9 <
uint
ææ= A
newValue
ææB J
)
ææJ K
;
ææK L

m_Animator
øø 
.
øø 

SetInteger
øø )
(
øø) *
hash
øø* .
,
øø. /
(
øø0 1
int
øø1 4
)
øø4 5
newValue
øø5 =
)
øø= >
;
øø> ?
fixed
¿¿ 
(
¿¿ 
void
¿¿ 
*
¿¿  
value
¿¿! &
=
¿¿' (

cacheValue
¿¿) 3
.
¿¿3 4
Value
¿¿4 9
)
¿¿9 :
{
¡¡ 
UnsafeUtility
¬¬ %
.
¬¬% &
WriteArrayElement
¬¬& 7
(
¬¬7 8
value
¬¬8 =
,
¬¬= >
$num
¬¬? @
,
¬¬@ A
newValue
¬¬B J
)
¬¬J K
;
¬¬K L
}
√√ 
}
ƒƒ 
else
≈≈ 
if
≈≈ 
(
≈≈ 

cacheValue
≈≈ #
.
≈≈# $
Type
≈≈$ (
==
≈≈) +'
AnimationParamEnumWrapper
≈≈, E
.
≈≈E F-
AnimatorControllerParameterBool
≈≈F e
)
≈≈e f
{
∆∆ 
ByteUnpacker
««  
.
««  !
ReadValuePacked
««! 0
(
««0 1
reader
««1 7
,
««7 8
out
««9 <
bool
««= A
newBoolValue
««B N
)
««N O
;
««O P

m_Animator
»» 
.
»» 
SetBool
»» &
(
»»& '
hash
»»' +
,
»»+ ,
newBoolValue
»»- 9
)
»»9 :
;
»»: ;
fixed
…… 
(
…… 
void
…… 
*
……  
value
……! &
=
……' (

cacheValue
……) 3
.
……3 4
Value
……4 9
)
……9 :
{
   
UnsafeUtility
ÀÀ %
.
ÀÀ% &
WriteArrayElement
ÀÀ& 7
(
ÀÀ7 8
value
ÀÀ8 =
,
ÀÀ= >
$num
ÀÀ? @
,
ÀÀ@ A
newBoolValue
ÀÀB N
)
ÀÀN O
;
ÀÀO P
}
ÃÃ 
}
ÕÕ 
else
ŒŒ 
if
ŒŒ 
(
ŒŒ 

cacheValue
ŒŒ #
.
ŒŒ# $
Type
ŒŒ$ (
==
ŒŒ) +'
AnimationParamEnumWrapper
ŒŒ, E
.
ŒŒE F.
 AnimatorControllerParameterFloat
ŒŒF f
)
ŒŒf g
{
œœ 
ByteUnpacker
––  
.
––  !
ReadValuePacked
––! 0
(
––0 1
reader
––1 7
,
––7 8
out
––9 <
float
––= B
newFloatValue
––C P
)
––P Q
;
––Q R

m_Animator
—— 
.
—— 
SetFloat
—— '
(
——' (
hash
——( ,
,
——, -
newFloatValue
——. ;
)
——; <
;
——< =
fixed
““ 
(
““ 
void
““ 
*
““  
value
““! &
=
““' (

cacheValue
““) 3
.
““3 4
Value
““4 9
)
““9 :
{
”” 
UnsafeUtility
‘‘ %
.
‘‘% &
WriteArrayElement
‘‘& 7
(
‘‘7 8
value
‘‘8 =
,
‘‘= >
$num
‘‘? @
,
‘‘@ A
newFloatValue
‘‘B O
)
‘‘O P
;
‘‘P Q
}
’’ 
}
÷÷ !
totalParametersRead
◊◊ #
++
◊◊# %
;
◊◊% &
}
ÿÿ 
}
ŸŸ 	
internal
ﬁﬁ 
unsafe
ﬁﬁ 
void
ﬁﬁ 
UpdateParameters
ﬁﬁ -
(
ﬁﬁ- .%
ParametersUpdateMessage
ﬁﬁ. E
parametersUpdate
ﬁﬁF V
)
ﬁﬁV W
{
ﬂﬂ 	
if
‡‡ 
(
‡‡ 
parametersUpdate
‡‡  
.
‡‡  !

Parameters
‡‡! +
!=
‡‡, .
null
‡‡/ 3
&&
‡‡4 6
parametersUpdate
‡‡7 G
.
‡‡G H

Parameters
‡‡H R
.
‡‡R S
Length
‡‡S Y
!=
‡‡Z \
$num
‡‡] ^
)
‡‡^ _
{
·· 
fixed
„„ 
(
„„ 
byte
„„ 
*
„„ 

parameters
„„ '
=
„„( )
parametersUpdate
„„* :
.
„„: ;

Parameters
„„; E
)
„„E F
{
‰‰ 
var
ÂÂ 
reader
ÂÂ 
=
ÂÂ  
new
ÂÂ! $
FastBufferReader
ÂÂ% 5
(
ÂÂ5 6

parameters
ÂÂ6 @
,
ÂÂ@ A
	Allocator
ÂÂB K
.
ÂÂK L
None
ÂÂL P
,
ÂÂP Q
parametersUpdate
ÂÂR b
.
ÂÂb c

Parameters
ÂÂc m
.
ÂÂm n
Length
ÂÂn t
)
ÂÂt u
;
ÂÂu v
ReadParameters
ÊÊ "
(
ÊÊ" #
reader
ÊÊ# )
)
ÊÊ) *
;
ÊÊ* +
}
ÁÁ 
}
ËË 
}
ÈÈ 	
private
ÓÓ 
unsafe
ÓÓ 
void
ÓÓ "
UpdateAnimationState
ÓÓ 0
(
ÓÓ0 1
AnimationMessage
ÓÓ1 A
animationState
ÓÓB P
)
ÓÓP Q
{
ÔÔ 	
if
 
(
 
animationState
 
.
 
	StateHash
 (
!=
) +
$num
, -
)
- .
{
ÒÒ 

m_Animator
ÚÚ 
.
ÚÚ 
Play
ÚÚ 
(
ÚÚ  
animationState
ÚÚ  .
.
ÚÚ. /
	StateHash
ÚÚ/ 8
,
ÚÚ8 9
animationState
ÚÚ: H
.
ÚÚH I
Layer
ÚÚI N
,
ÚÚN O
animationState
ÚÚP ^
.
ÚÚ^ _
NormalizedTime
ÚÚ_ m
)
ÚÚm n
;
ÚÚn o
}
ÛÛ 

m_Animator
ÙÙ 
.
ÙÙ 
SetLayerWeight
ÙÙ %
(
ÙÙ% &
animationState
ÙÙ& 4
.
ÙÙ4 5
Layer
ÙÙ5 :
,
ÙÙ: ;
animationState
ÙÙ< J
.
ÙÙJ K
Weight
ÙÙK Q
)
ÙÙQ R
;
ÙÙR S
}
ıı 	
[
˚˚ 	
	ServerRpc
˚˚	 
]
˚˚ 
private
¸¸ 
unsafe
¸¸ 
void
¸¸ +
SendParametersUpdateServerRpc
¸¸ 9
(
¸¸9 :%
ParametersUpdateMessage
¸¸: Q
parametersUpdate
¸¸R b
,
¸¸b c
ServerRpcParams
¸¸d s
serverRpcParams¸¸t É
=¸¸Ñ Ö
default¸¸Ü ç
)¸¸ç é
{
˝˝ 	
if
˛˛ 
(
˛˛ #
IsServerAuthoritative
˛˛ %
(
˛˛% &
)
˛˛& '
)
˛˛' (
{
ˇˇ 1
#m_NetworkAnimatorStateChangeHandler
ÄÄ 3
.
ÄÄ3 4!
SendParameterUpdate
ÄÄ4 G
(
ÄÄG H
parametersUpdate
ÄÄH X
)
ÄÄX Y
;
ÄÄY Z
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
if
ÑÑ 
(
ÑÑ 
serverRpcParams
ÑÑ #
.
ÑÑ# $
Receive
ÑÑ$ +
.
ÑÑ+ ,
SenderClientId
ÑÑ, :
!=
ÑÑ; =
OwnerClientId
ÑÑ> K
)
ÑÑK L
{
ÖÖ 
return
ÜÜ 
;
ÜÜ 
}
áá 
UpdateParameters
àà  
(
àà  !
parametersUpdate
àà! 1
)
àà1 2
;
àà2 3
if
ââ 
(
ââ 
NetworkManager
ââ "
.
ââ" #!
ConnectedClientsIds
ââ# 6
.
ââ6 7
Count
ââ7 <
-
ââ= >
$num
ââ? @
>
ââA B
$num
ââC D
)
ââD E
{
ää 
m_ClientSendList
ãã $
.
ãã$ %
Clear
ãã% *
(
ãã* +
)
ãã+ ,
;
ãã, -
m_ClientSendList
åå $
.
åå$ %
AddRange
åå% -
(
åå- .
NetworkManager
åå. <
.
åå< =!
ConnectedClientsIds
åå= P
)
ååP Q
;
ååQ R
m_ClientSendList
çç $
.
çç$ %
Remove
çç% +
(
çç+ ,
serverRpcParams
çç, ;
.
çç; <
Receive
çç< C
.
ççC D
SenderClientId
ççD R
)
ççR S
;
ççS T
m_ClientSendList
éé $
.
éé$ %
Remove
éé% +
(
éé+ ,
NetworkManager
éé, :
.
éé: ;
ServerClientId
éé; I
)
ééI J
;
ééJ K
m_ClientRpcParams
èè %
.
èè% &
Send
èè& *
.
èè* +
TargetClientIds
èè+ :
=
èè; <
m_ClientSendList
èè= M
;
èèM N1
#m_NetworkAnimatorStateChangeHandler
êê 7
.
êê7 8!
SendParameterUpdate
êê8 K
(
êêK L
parametersUpdate
êêL \
,
êê\ ]
m_ClientRpcParams
êê^ o
)
êêo p
;
êêp q
}
ëë 
}
íí 
}
ìì 	
[
òò 	
	ClientRpc
òò	 
]
òò 
internal
ôô 
unsafe
ôô 
void
ôô +
SendParametersUpdateClientRpc
ôô :
(
ôô: ;%
ParametersUpdateMessage
ôô; R
parametersUpdate
ôôS c
,
ôôc d
ClientRpcParams
ôôe t
clientRpcParamsôôu Ñ
=ôôÖ Ü
defaultôôá é
)ôôé è
{
öö 	
var
õõ #
isServerAuthoritative
õõ %
=
õõ& '#
IsServerAuthoritative
õõ( =
(
õõ= >
)
õõ> ?
;
õõ? @
if
úú 
(
úú 
!
úú #
isServerAuthoritative
úú &
&&
úú' )
!
úú* +
IsOwner
úú+ 2
||
úú3 5#
isServerAuthoritative
úú6 K
)
úúK L
{
ùù 1
#m_NetworkAnimatorStateChangeHandler
ûû 3
.
ûû3 4$
ProcessParameterUpdate
ûû4 J
(
ûûJ K
parametersUpdate
ûûK [
)
ûû[ \
;
ûû\ ]
}
üü 
}
†† 	
[
¶¶ 	
	ServerRpc
¶¶	 
]
¶¶ 
private
ßß 
unsafe
ßß 
void
ßß $
SendAnimStateServerRpc
ßß 2
(
ßß2 3
AnimationMessage
ßß3 C
animSnapshot
ßßD P
,
ßßP Q
ServerRpcParams
ßßR a
serverRpcParams
ßßb q
=
ßßr s
default
ßßt {
)
ßß{ |
{
®® 	
if
©© 
(
©© #
IsServerAuthoritative
©© %
(
©©% &
)
©©& '
)
©©' (
{
™™ 1
#m_NetworkAnimatorStateChangeHandler
´´ 3
.
´´3 4!
SendAnimationUpdate
´´4 G
(
´´G H
animSnapshot
´´H T
)
´´T U
;
´´U V
}
¨¨ 
else
≠≠ 
{
ÆÆ 
if
ØØ 
(
ØØ 
serverRpcParams
ØØ #
.
ØØ# $
Receive
ØØ$ +
.
ØØ+ ,
SenderClientId
ØØ, :
!=
ØØ; =
OwnerClientId
ØØ> K
)
ØØK L
{
∞∞ 
return
±± 
;
±± 
}
≤≤ "
UpdateAnimationState
≥≥ $
(
≥≥$ %
animSnapshot
≥≥% 1
)
≥≥1 2
;
≥≥2 3
if
¥¥ 
(
¥¥ 
NetworkManager
¥¥ "
.
¥¥" #!
ConnectedClientsIds
¥¥# 6
.
¥¥6 7
Count
¥¥7 <
-
¥¥= >
$num
¥¥? @
>
¥¥A B
$num
¥¥C D
)
¥¥D E
{
µµ 
m_ClientSendList
∂∂ $
.
∂∂$ %
Clear
∂∂% *
(
∂∂* +
)
∂∂+ ,
;
∂∂, -
m_ClientSendList
∑∑ $
.
∑∑$ %
AddRange
∑∑% -
(
∑∑- .
NetworkManager
∑∑. <
.
∑∑< =!
ConnectedClientsIds
∑∑= P
)
∑∑P Q
;
∑∑Q R
m_ClientSendList
∏∏ $
.
∏∏$ %
Remove
∏∏% +
(
∏∏+ ,
serverRpcParams
∏∏, ;
.
∏∏; <
Receive
∏∏< C
.
∏∏C D
SenderClientId
∏∏D R
)
∏∏R S
;
∏∏S T
m_ClientSendList
ππ $
.
ππ$ %
Remove
ππ% +
(
ππ+ ,
NetworkManager
ππ, :
.
ππ: ;
ServerClientId
ππ; I
)
ππI J
;
ππJ K
m_ClientRpcParams
∫∫ %
.
∫∫% &
Send
∫∫& *
.
∫∫* +
TargetClientIds
∫∫+ :
=
∫∫; <
m_ClientSendList
∫∫= M
;
∫∫M N1
#m_NetworkAnimatorStateChangeHandler
ªª 7
.
ªª7 8!
SendAnimationUpdate
ªª8 K
(
ªªK L
animSnapshot
ªªL X
,
ªªX Y
m_ClientRpcParams
ªªZ k
)
ªªk l
;
ªªl m
}
ºº 
}
ΩΩ 
}
ææ 	
[
√√ 	
	ClientRpc
√√	 
]
√√ 
private
ƒƒ 
unsafe
ƒƒ 
void
ƒƒ $
SendAnimStateClientRpc
ƒƒ 2
(
ƒƒ2 3
AnimationMessage
ƒƒ3 C
animSnapshot
ƒƒD P
,
ƒƒP Q
ClientRpcParams
ƒƒR a
clientRpcParams
ƒƒb q
=
ƒƒr s
default
ƒƒt {
)
ƒƒ{ |
{
≈≈ 	
var
∆∆ #
isServerAuthoritative
∆∆ %
=
∆∆& '#
IsServerAuthoritative
∆∆( =
(
∆∆= >
)
∆∆> ?
;
∆∆? @
if
«« 
(
«« 
!
«« #
isServerAuthoritative
«« &
&&
««' )
!
««* +
IsOwner
««+ 2
||
««3 5#
isServerAuthoritative
««6 K
)
««K L
{
»» "
UpdateAnimationState
…… $
(
……$ %
animSnapshot
……% 1
)
……1 2
;
……2 3
}
   
}
ÀÀ 	
[
—— 	
	ServerRpc
——	 
]
—— 
private
““ 
void
““ &
SendAnimTriggerServerRpc
““ -
(
““- .%
AnimationTriggerMessage
““. E%
animationTriggerMessage
““F ]
,
““] ^
ServerRpcParams
““_ n
serverRpcParams
““o ~
=““ Ä
default““Å à
)““à â
{
”” 	
if
‘‘ 
(
‘‘ #
IsServerAuthoritative
‘‘ %
(
‘‘% &
)
‘‘& '
)
‘‘' (
{
’’ 1
#m_NetworkAnimatorStateChangeHandler
÷÷ 3
.
÷÷3 4
SendTriggerUpdate
÷÷4 E
(
÷÷E F%
animationTriggerMessage
÷÷F ]
)
÷÷] ^
;
÷÷^ _
}
◊◊ 
else
ÿÿ 
{
ŸŸ 
if
⁄⁄ 
(
⁄⁄ 
serverRpcParams
⁄⁄ #
.
⁄⁄# $
Receive
⁄⁄$ +
.
⁄⁄+ ,
SenderClientId
⁄⁄, :
!=
⁄⁄; =
OwnerClientId
⁄⁄> K
)
⁄⁄K L
{
€€ 
return
‹‹ 
;
‹‹ 
}
›› 

m_Animator
ﬂﬂ 
.
ﬂﬂ 
SetBool
ﬂﬂ "
(
ﬂﬂ" #%
animationTriggerMessage
ﬂﬂ# :
.
ﬂﬂ: ;
Hash
ﬂﬂ; ?
,
ﬂﬂ? @%
animationTriggerMessage
ﬂﬂA X
.
ﬂﬂX Y
IsTriggerSet
ﬂﬂY e
)
ﬂﬂe f
;
ﬂﬂf g
if
·· 
(
·· 
NetworkManager
·· "
.
··" #!
ConnectedClientsIds
··# 6
.
··6 7
Count
··7 <
-
··= >
$num
··? @
>
··A B
$num
··C D
)
··D E
{
‚‚ 
m_ClientSendList
„„ $
.
„„$ %
Clear
„„% *
(
„„* +
)
„„+ ,
;
„„, -
m_ClientSendList
‰‰ $
.
‰‰$ %
AddRange
‰‰% -
(
‰‰- .
NetworkManager
‰‰. <
.
‰‰< =!
ConnectedClientsIds
‰‰= P
)
‰‰P Q
;
‰‰Q R
m_ClientSendList
ÂÂ $
.
ÂÂ$ %
Remove
ÂÂ% +
(
ÂÂ+ ,
serverRpcParams
ÂÂ, ;
.
ÂÂ; <
Receive
ÂÂ< C
.
ÂÂC D
SenderClientId
ÂÂD R
)
ÂÂR S
;
ÂÂS T
m_ClientSendList
ÊÊ $
.
ÊÊ$ %
Remove
ÊÊ% +
(
ÊÊ+ ,
NetworkManager
ÊÊ, :
.
ÊÊ: ;
ServerClientId
ÊÊ; I
)
ÊÊI J
;
ÊÊJ K
m_ClientRpcParams
ÁÁ %
.
ÁÁ% &
Send
ÁÁ& *
.
ÁÁ* +
TargetClientIds
ÁÁ+ :
=
ÁÁ; <
m_ClientSendList
ÁÁ= M
;
ÁÁM N1
#m_NetworkAnimatorStateChangeHandler
ËË 7
.
ËË7 8
SendTriggerUpdate
ËË8 I
(
ËËI J%
animationTriggerMessage
ËËJ a
,
ËËa b
m_ClientRpcParams
ËËc t
)
ËËt u
;
ËËu v
}
ÈÈ 
}
ÍÍ 
}
ÏÏ 	
[
ÙÙ 	
	ClientRpc
ÙÙ	 
]
ÙÙ 
internal
ıı 
void
ıı &
SendAnimTriggerClientRpc
ıı .
(
ıı. /%
AnimationTriggerMessage
ıı/ F%
animationTriggerMessage
ııG ^
,
ıı^ _
ClientRpcParams
ıı` o
clientRpcParams
ııp 
=ııÄ Å
defaultııÇ â
)ııâ ä
{
ˆˆ 	
var
˜˜ #
isServerAuthoritative
˜˜ %
=
˜˜& '#
IsServerAuthoritative
˜˜( =
(
˜˜= >
)
˜˜> ?
;
˜˜? @
if
¯¯ 
(
¯¯ 
!
¯¯ #
isServerAuthoritative
¯¯ &
&&
¯¯' )
!
¯¯* +
IsOwner
¯¯+ 2
||
¯¯3 5#
isServerAuthoritative
¯¯6 K
)
¯¯K L
{
˘˘ 

m_Animator
˙˙ 
.
˙˙ 
SetBool
˙˙ "
(
˙˙" #%
animationTriggerMessage
˙˙# :
.
˙˙: ;
Hash
˙˙; ?
,
˙˙? @%
animationTriggerMessage
˙˙A X
.
˙˙X Y
IsTriggerSet
˙˙Y e
)
˙˙e f
;
˙˙f g
}
˚˚ 
}
¸¸ 	
public
ÇÇ 
void
ÇÇ 

SetTrigger
ÇÇ 
(
ÇÇ 
string
ÇÇ %
triggerName
ÇÇ& 1
)
ÇÇ1 2
{
ÉÉ 	

SetTrigger
ÑÑ 
(
ÑÑ 
Animator
ÑÑ 
.
ÑÑ  
StringToHash
ÑÑ  ,
(
ÑÑ, -
triggerName
ÑÑ- 8
)
ÑÑ8 9
)
ÑÑ9 :
;
ÑÑ: ;
}
ÖÖ 	
public
ää 
void
ää 

SetTrigger
ää 
(
ää 
int
ää "
hash
ää# '
,
ää' (
bool
ää) -

setTrigger
ää. 8
=
ää9 :
true
ää; ?
)
ää? @
{
ãã 	
var
åå #
isServerAuthoritative
åå %
=
åå& '#
IsServerAuthoritative
åå( =
(
åå= >
)
åå> ?
;
åå? @
if
çç 
(
çç 
IsOwner
çç 
&&
çç 
!
çç #
isServerAuthoritative
çç 1
||
çç2 4
IsServer
çç5 =
&&
çç> @#
isServerAuthoritative
ççA V
)
ççV W
{
éé 
var
èè  
animTriggerMessage
èè &
=
èè' (
new
èè) ,%
AnimationTriggerMessage
èè- D
(
èèD E
)
èèE F
{
èèG H
Hash
èèI M
=
èèN O
hash
èèP T
,
èèT U
IsTriggerSet
èèV b
=
èèc d

setTrigger
èèe o
}
èèp q
;
èèq r
if
êê 
(
êê 
IsServer
êê 
)
êê 
{
ëë &
SendAnimTriggerClientRpc
íí ,
(
íí, - 
animTriggerMessage
íí- ?
)
íí? @
;
íí@ A
}
ìì 
else
îî 
{
ïï &
SendAnimTriggerServerRpc
ññ ,
(
ññ, - 
animTriggerMessage
ññ- ?
)
ññ? @
;
ññ@ A
}
óó 

m_Animator
ôô 
.
ôô 
SetBool
ôô "
(
ôô" #
hash
ôô# '
,
ôô' (

setTrigger
ôô) 3
)
ôô3 4
;
ôô4 5
}
öö 
}
õõ 	
public
°° 
void
°° 
ResetTrigger
°°  
(
°°  !
string
°°! '
triggerName
°°( 3
)
°°3 4
{
¢¢ 	
ResetTrigger
££ 
(
££ 
Animator
££ !
.
££! "
StringToHash
££" .
(
££. /
triggerName
££/ :
)
££: ;
)
££; <
;
££< =
}
§§ 	
public
®® 
void
®® 
ResetTrigger
®®  
(
®®  !
int
®®! $
hash
®®% )
)
®®) *
{
©© 	

SetTrigger
™™ 
(
™™ 
hash
™™ 
,
™™ 
false
™™ "
)
™™" #
;
™™# $
}
´´ 	
}
¨¨ 
}≠≠ è"
hC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Components\NetworkRigidbody.cs
	namespace 	
Unity
 
. 
Netcode 
. 

Components "
{ 
[

 
RequireComponent

 
(

 
typeof

 
(

 
	Rigidbody

 &
)

& '
)

' (
]

( )
[ 
RequireComponent 
( 
typeof 
( 
NetworkTransform -
)- .
). /
]/ 0
public 

class 
NetworkRigidbody !
:" #
NetworkBehaviour$ 4
{ 
private 
bool #
m_IsServerAuthoritative ,
;, -
private 
	Rigidbody 
m_Rigidbody %
;% &
private 
NetworkTransform  
m_NetworkTransform! 3
;3 4
private "
RigidbodyInterpolation &#
m_OriginalInterpolation' >
;> ?
private 
bool 
m_IsAuthority "
;" #
private 
void 
Awake 
( 
) 
{ 	
m_NetworkTransform 
=  
GetComponent! -
<- .
NetworkTransform. >
>> ?
(? @
)@ A
;A B#
m_IsServerAuthoritative #
=$ %
m_NetworkTransform& 8
.8 9!
IsServerAuthoritative9 N
(N O
)O P
;P Q
m_Rigidbody 
= 
GetComponent &
<& '
	Rigidbody' 0
>0 1
(1 2
)2 3
;3 4#
m_OriginalInterpolation   #
=  $ %
m_Rigidbody  & 1
.  1 2
interpolation  2 ?
;  ? @
m_Rigidbody## 
.## 
interpolation## %
=##& '
m_NetworkTransform##( :
.##: ;
Interpolate##; F
?##G H"
RigidbodyInterpolation##I _
.##_ `
None##` d
:##e f#
m_OriginalInterpolation##g ~
;##~ 
m_Rigidbody(( 
.(( 
isKinematic(( #
=(($ %
true((& *
;((* +
})) 	
public// 
override// 
void// 
OnGainedOwnership// .
(//. /
)/// 0
{00 	$
UpdateOwnershipAuthority11 $
(11$ %
)11% &
;11& '
}22 	
public88 
override88 
void88 
OnLostOwnership88 ,
(88, -
)88- .
{99 	$
UpdateOwnershipAuthority:: $
(::$ %
)::% &
;::& '
};; 	
privateAA 
voidAA $
UpdateOwnershipAuthorityAA -
(AA- .
)AA. /
{BB 	
ifCC 
(CC #
m_IsServerAuthoritativeCC '
)CC' (
{DD 
m_IsAuthorityEE 
=EE 
NetworkManagerEE  .
.EE. /
IsServerEE/ 7
;EE7 8
}FF 
elseGG 
{HH 
m_IsAuthorityII 
=II 
IsOwnerII  '
;II' (
}JJ 
m_RigidbodyMM 
.MM 
isKinematicMM #
=MM$ %
!MM& '
m_IsAuthorityMM' 4
;MM4 5
m_RigidbodyRR 
.RR 
interpolationRR %
=RR& '
m_IsAuthorityRR( 5
?RR6 7#
m_OriginalInterpolationRR8 O
:RRP Q"
RigidbodyInterpolationRRR h
.RRh i
NoneRRi m
;RRm n
}SS 	
publicVV 
overrideVV 
voidVV 
OnNetworkSpawnVV +
(VV+ ,
)VV, -
{WW 	$
UpdateOwnershipAuthorityXX $
(XX$ %
)XX% &
;XX& '
}YY 	
public\\ 
override\\ 
void\\ 
OnNetworkDespawn\\ -
(\\- .
)\\. /
{]] 	
m_Rigidbody^^ 
.^^ 
interpolation^^ %
=^^& '#
m_OriginalInterpolation^^( ?
;^^? @
m_Rigidbodybb 
.bb 
isKinematicbb #
=bb$ %
truebb& *
;bb* +
}cc 	
}dd 
}ee õä
hC:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Components\NetworkTransform.cs
	namespace 	
Unity
 
. 
Netcode 
. 

Components "
{ 
[ %
DisallowMultipleComponent 
] 
[ 
AddComponentMenu 
( 
$str  
+! "
nameof# )
() *
NetworkTransform* :
): ;
); <
]< =
[ !
DefaultExecutionOrder 
( 
$num !
)! "
]" #
public 

class 
NetworkTransform !
:" #
NetworkBehaviour$ 4
{ 
public 
const 
float $
PositionThresholdDefault 3
=4 5
$num6 <
;< =
public 
const 
float $
RotAngleThresholdDefault 3
=4 5
$num6 ;
;; <
public!! 
const!! 
float!! !
ScaleThresholdDefault!! 0
=!!1 2
$num!!3 8
;!!8 9
public** 
delegate** 
(** 
Vector3**  
pos**! $
,**$ %

Quaternion**& 0
rotOut**1 7
,**7 8
Vector3**9 @
scale**A F
)**F G)
OnClientRequestChangeDelegate**H e
(**e f
Vector3**f m
pos**n q
,**q r

Quaternion**s }
rot	**~ Å
,
**Å Ç
Vector3
**É ä
scale
**ã ê
)
**ê ë
;
**ë í
public00 )
OnClientRequestChangeDelegate00 ,!
OnClientRequestChange00- B
;00B C
internal22 
struct22 !
NetworkTransformState22 -
:22. / 
INetworkSerializable220 D
{33 	
private44 
const44 
int44 
k_InLocalSpaceBit44 /
=440 1
$num442 3
;443 4
private55 
const55 
int55 
k_PositionXBit55 ,
=55- .
$num55/ 0
;550 1
private66 
const66 
int66 
k_PositionYBit66 ,
=66- .
$num66/ 0
;660 1
private77 
const77 
int77 
k_PositionZBit77 ,
=77- .
$num77/ 0
;770 1
private88 
const88 
int88 
k_RotAngleXBit88 ,
=88- .
$num88/ 0
;880 1
private99 
const99 
int99 
k_RotAngleYBit99 ,
=99- .
$num99/ 0
;990 1
private:: 
const:: 
int:: 
k_RotAngleZBit:: ,
=::- .
$num::/ 0
;::0 1
private;; 
const;; 
int;; 
k_ScaleXBit;; )
=;;* +
$num;;, -
;;;- .
private<< 
const<< 
int<< 
k_ScaleYBit<< )
=<<* +
$num<<, -
;<<- .
private== 
const== 
int== 
k_ScaleZBit== )
===* +
$num==, -
;==- .
private>> 
const>> 
int>> 
k_TeleportingBit>> .
=>>/ 0
$num>>1 3
;>>3 4
privateAA 
ushortAA 
m_BitsetAA #
;AA# $
internalCC 
boolCC 
InLocalSpaceCC &
{DD 
getEE 
=>EE 
(EE 
m_BitsetEE  
&EE! "
(EE# $
$numEE$ %
<<EE& (
k_InLocalSpaceBitEE) :
)EE: ;
)EE; <
!=EE= ?
$numEE@ A
;EEA B
setFF 
{GG 
ifHH 
(HH 
valueHH 
)HH 
{HH  
m_BitsetHH! )
=HH* +
(HH, -
ushortHH- 3
)HH3 4
(HH4 5
m_BitsetHH5 =
|HH> ?
(HH@ A
$numHHA B
<<HHC E
k_InLocalSpaceBitHHF W
)HHW X
)HHX Y
;HHY Z
}HH[ \
elseII 
{II 
m_BitsetII #
=II$ %
(II& '
ushortII' -
)II- .
(II. /
m_BitsetII/ 7
&II8 9
~II: ;
(II; <
$numII< =
<<II> @
k_InLocalSpaceBitIIA R
)IIR S
)IIS T
;IIT U
}IIV W
}JJ 
}KK 
internalNN 
boolNN 
HasPositionXNN &
{OO 
getPP 
=>PP 
(PP 
m_BitsetPP  
&PP! "
(PP# $
$numPP$ %
<<PP& (
k_PositionXBitPP) 7
)PP7 8
)PP8 9
!=PP: <
$numPP= >
;PP> ?
setQQ 
{RR 
ifSS 
(SS 
valueSS 
)SS 
{SS  
m_BitsetSS! )
=SS* +
(SS, -
ushortSS- 3
)SS3 4
(SS4 5
m_BitsetSS5 =
|SS> ?
(SS@ A
$numSSA B
<<SSC E
k_PositionXBitSSF T
)SST U
)SSU V
;SSV W
}SSX Y
elseTT 
{TT 
m_BitsetTT #
=TT$ %
(TT& '
ushortTT' -
)TT- .
(TT. /
m_BitsetTT/ 7
&TT8 9
~TT: ;
(TT; <
$numTT< =
<<TT> @
k_PositionXBitTTA O
)TTO P
)TTP Q
;TTQ R
}TTS T
}UU 
}VV 
internalXX 
boolXX 
HasPositionYXX &
{YY 
getZZ 
=>ZZ 
(ZZ 
m_BitsetZZ  
&ZZ! "
(ZZ# $
$numZZ$ %
<<ZZ& (
k_PositionYBitZZ) 7
)ZZ7 8
)ZZ8 9
!=ZZ: <
$numZZ= >
;ZZ> ?
set[[ 
{\\ 
if]] 
(]] 
value]] 
)]] 
{]]  
m_Bitset]]! )
=]]* +
(]], -
ushort]]- 3
)]]3 4
(]]4 5
m_Bitset]]5 =
|]]> ?
(]]@ A
$num]]A B
<<]]C E
k_PositionYBit]]F T
)]]T U
)]]U V
;]]V W
}]]X Y
else^^ 
{^^ 
m_Bitset^^ #
=^^$ %
(^^& '
ushort^^' -
)^^- .
(^^. /
m_Bitset^^/ 7
&^^8 9
~^^: ;
(^^; <
$num^^< =
<<^^> @
k_PositionYBit^^A O
)^^O P
)^^P Q
;^^Q R
}^^S T
}__ 
}`` 
internalbb 
boolbb 
HasPositionZbb &
{cc 
getdd 
=>dd 
(dd 
m_Bitsetdd  
&dd! "
(dd# $
$numdd$ %
<<dd& (
k_PositionZBitdd) 7
)dd7 8
)dd8 9
!=dd: <
$numdd= >
;dd> ?
setee 
{ff 
ifgg 
(gg 
valuegg 
)gg 
{gg  
m_Bitsetgg! )
=gg* +
(gg, -
ushortgg- 3
)gg3 4
(gg4 5
m_Bitsetgg5 =
|gg> ?
(gg@ A
$numggA B
<<ggC E
k_PositionZBitggF T
)ggT U
)ggU V
;ggV W
}ggX Y
elsehh 
{hh 
m_Bitsethh #
=hh$ %
(hh& '
ushorthh' -
)hh- .
(hh. /
m_Bitsethh/ 7
&hh8 9
~hh: ;
(hh; <
$numhh< =
<<hh> @
k_PositionZBithhA O
)hhO P
)hhP Q
;hhQ R
}hhS T
}ii 
}jj 
internalmm 
boolmm 
HasRotAngleXmm &
{nn 
getoo 
=>oo 
(oo 
m_Bitsetoo  
&oo! "
(oo# $
$numoo$ %
<<oo& (
k_RotAngleXBitoo) 7
)oo7 8
)oo8 9
!=oo: <
$numoo= >
;oo> ?
setpp 
{qq 
ifrr 
(rr 
valuerr 
)rr 
{rr  
m_Bitsetrr! )
=rr* +
(rr, -
ushortrr- 3
)rr3 4
(rr4 5
m_Bitsetrr5 =
|rr> ?
(rr@ A
$numrrA B
<<rrC E
k_RotAngleXBitrrF T
)rrT U
)rrU V
;rrV W
}rrX Y
elsess 
{ss 
m_Bitsetss #
=ss$ %
(ss& '
ushortss' -
)ss- .
(ss. /
m_Bitsetss/ 7
&ss8 9
~ss: ;
(ss; <
$numss< =
<<ss> @
k_RotAngleXBitssA O
)ssO P
)ssP Q
;ssQ R
}ssS T
}tt 
}uu 
internalww 
boolww 
HasRotAngleYww &
{xx 
getyy 
=>yy 
(yy 
m_Bitsetyy  
&yy! "
(yy# $
$numyy$ %
<<yy& (
k_RotAngleYBityy) 7
)yy7 8
)yy8 9
!=yy: <
$numyy= >
;yy> ?
setzz 
{{{ 
if|| 
(|| 
value|| 
)|| 
{||  
m_Bitset||! )
=||* +
(||, -
ushort||- 3
)||3 4
(||4 5
m_Bitset||5 =
|||> ?
(||@ A
$num||A B
<<||C E
k_RotAngleYBit||F T
)||T U
)||U V
;||V W
}||X Y
else}} 
{}} 
m_Bitset}} #
=}}$ %
(}}& '
ushort}}' -
)}}- .
(}}. /
m_Bitset}}/ 7
&}}8 9
~}}: ;
(}}; <
$num}}< =
<<}}> @
k_RotAngleYBit}}A O
)}}O P
)}}P Q
;}}Q R
}}}S T
}~~ 
} 
internal
ÅÅ 
bool
ÅÅ 
HasRotAngleZ
ÅÅ &
{
ÇÇ 
get
ÉÉ 
=>
ÉÉ 
(
ÉÉ 
m_Bitset
ÉÉ  
&
ÉÉ! "
(
ÉÉ# $
$num
ÉÉ$ %
<<
ÉÉ& (
k_RotAngleZBit
ÉÉ) 7
)
ÉÉ7 8
)
ÉÉ8 9
!=
ÉÉ: <
$num
ÉÉ= >
;
ÉÉ> ?
set
ÑÑ 
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
value
ÜÜ 
)
ÜÜ 
{
ÜÜ  
m_Bitset
ÜÜ! )
=
ÜÜ* +
(
ÜÜ, -
ushort
ÜÜ- 3
)
ÜÜ3 4
(
ÜÜ4 5
m_Bitset
ÜÜ5 =
|
ÜÜ> ?
(
ÜÜ@ A
$num
ÜÜA B
<<
ÜÜC E
k_RotAngleZBit
ÜÜF T
)
ÜÜT U
)
ÜÜU V
;
ÜÜV W
}
ÜÜX Y
else
áá 
{
áá 
m_Bitset
áá #
=
áá$ %
(
áá& '
ushort
áá' -
)
áá- .
(
áá. /
m_Bitset
áá/ 7
&
áá8 9
~
áá: ;
(
áá; <
$num
áá< =
<<
áá> @
k_RotAngleZBit
ááA O
)
ááO P
)
ááP Q
;
ááQ R
}
ááS T
}
àà 
}
ââ 
internal
åå 
bool
åå 
	HasScaleX
åå #
{
çç 
get
éé 
=>
éé 
(
éé 
m_Bitset
éé  
&
éé! "
(
éé# $
$num
éé$ %
<<
éé& (
k_ScaleXBit
éé) 4
)
éé4 5
)
éé5 6
!=
éé7 9
$num
éé: ;
;
éé; <
set
èè 
{
êê 
if
ëë 
(
ëë 
value
ëë 
)
ëë 
{
ëë  
m_Bitset
ëë! )
=
ëë* +
(
ëë, -
ushort
ëë- 3
)
ëë3 4
(
ëë4 5
m_Bitset
ëë5 =
|
ëë> ?
(
ëë@ A
$num
ëëA B
<<
ëëC E
k_ScaleXBit
ëëF Q
)
ëëQ R
)
ëëR S
;
ëëS T
}
ëëU V
else
íí 
{
íí 
m_Bitset
íí #
=
íí$ %
(
íí& '
ushort
íí' -
)
íí- .
(
íí. /
m_Bitset
íí/ 7
&
íí8 9
~
íí: ;
(
íí; <
$num
íí< =
<<
íí> @
k_ScaleXBit
ííA L
)
ííL M
)
ííM N
;
ííN O
}
ííP Q
}
ìì 
}
îî 
internal
ññ 
bool
ññ 
	HasScaleY
ññ #
{
óó 
get
òò 
=>
òò 
(
òò 
m_Bitset
òò  
&
òò! "
(
òò# $
$num
òò$ %
<<
òò& (
k_ScaleYBit
òò) 4
)
òò4 5
)
òò5 6
!=
òò7 9
$num
òò: ;
;
òò; <
set
ôô 
{
öö 
if
õõ 
(
õõ 
value
õõ 
)
õõ 
{
õõ  
m_Bitset
õõ! )
=
õõ* +
(
õõ, -
ushort
õõ- 3
)
õõ3 4
(
õõ4 5
m_Bitset
õõ5 =
|
õõ> ?
(
õõ@ A
$num
õõA B
<<
õõC E
k_ScaleYBit
õõF Q
)
õõQ R
)
õõR S
;
õõS T
}
õõU V
else
úú 
{
úú 
m_Bitset
úú #
=
úú$ %
(
úú& '
ushort
úú' -
)
úú- .
(
úú. /
m_Bitset
úú/ 7
&
úú8 9
~
úú: ;
(
úú; <
$num
úú< =
<<
úú> @
k_ScaleYBit
úúA L
)
úúL M
)
úúM N
;
úúN O
}
úúP Q
}
ùù 
}
ûû 
internal
†† 
bool
†† 
	HasScaleZ
†† #
{
°° 
get
¢¢ 
=>
¢¢ 
(
¢¢ 
m_Bitset
¢¢  
&
¢¢! "
(
¢¢# $
$num
¢¢$ %
<<
¢¢& (
k_ScaleZBit
¢¢) 4
)
¢¢4 5
)
¢¢5 6
!=
¢¢7 9
$num
¢¢: ;
;
¢¢; <
set
££ 
{
§§ 
if
•• 
(
•• 
value
•• 
)
•• 
{
••  
m_Bitset
••! )
=
••* +
(
••, -
ushort
••- 3
)
••3 4
(
••4 5
m_Bitset
••5 =
|
••> ?
(
••@ A
$num
••A B
<<
••C E
k_ScaleZBit
••F Q
)
••Q R
)
••R S
;
••S T
}
••U V
else
¶¶ 
{
¶¶ 
m_Bitset
¶¶ #
=
¶¶$ %
(
¶¶& '
ushort
¶¶' -
)
¶¶- .
(
¶¶. /
m_Bitset
¶¶/ 7
&
¶¶8 9
~
¶¶: ;
(
¶¶; <
$num
¶¶< =
<<
¶¶> @
k_ScaleZBit
¶¶A L
)
¶¶L M
)
¶¶M N
;
¶¶N O
}
¶¶P Q
}
ßß 
}
®® 
internal
™™ 
bool
™™ $
IsTeleportingNextFrame
™™ 0
{
´´ 
get
¨¨ 
=>
¨¨ 
(
¨¨ 
m_Bitset
¨¨  
&
¨¨! "
(
¨¨# $
$num
¨¨$ %
<<
¨¨& (
k_TeleportingBit
¨¨) 9
)
¨¨9 :
)
¨¨: ;
!=
¨¨< >
$num
¨¨? @
;
¨¨@ A
set
≠≠ 
{
ÆÆ 
if
ØØ 
(
ØØ 
value
ØØ 
)
ØØ 
{
ØØ  
m_Bitset
ØØ! )
=
ØØ* +
(
ØØ, -
ushort
ØØ- 3
)
ØØ3 4
(
ØØ4 5
m_Bitset
ØØ5 =
|
ØØ> ?
(
ØØ@ A
$num
ØØA B
<<
ØØC E
k_TeleportingBit
ØØF V
)
ØØV W
)
ØØW X
;
ØØX Y
}
ØØZ [
else
∞∞ 
{
∞∞ 
m_Bitset
∞∞ #
=
∞∞$ %
(
∞∞& '
ushort
∞∞' -
)
∞∞- .
(
∞∞. /
m_Bitset
∞∞/ 7
&
∞∞8 9
~
∞∞: ;
(
∞∞; <
$num
∞∞< =
<<
∞∞> @
k_TeleportingBit
∞∞A Q
)
∞∞Q R
)
∞∞R S
;
∞∞S T
}
∞∞U V
}
±± 
}
≤≤ 
internal
¥¥ 
float
¥¥ 
	PositionX
¥¥ $
,
¥¥$ %
	PositionY
¥¥& /
,
¥¥/ 0
	PositionZ
¥¥1 :
;
¥¥: ;
internal
µµ 
float
µµ 
	RotAngleX
µµ $
,
µµ$ %
	RotAngleY
µµ& /
,
µµ/ 0
	RotAngleZ
µµ1 :
;
µµ: ;
internal
∂∂ 
float
∂∂ 
ScaleX
∂∂ !
,
∂∂! "
ScaleY
∂∂# )
,
∂∂) *
ScaleZ
∂∂+ 1
;
∂∂1 2
internal
∑∑ 
double
∑∑ 
SentTime
∑∑ $
;
∑∑$ %
internal
ππ 
Vector3
ππ 
Position
ππ %
{
∫∫ 
get
ªª 
{
ªª 
return
ªª 
new
ªª  
Vector3
ªª! (
(
ªª( )
	PositionX
ªª) 2
,
ªª2 3
	PositionY
ªª4 =
,
ªª= >
	PositionZ
ªª? H
)
ªªH I
;
ªªI J
}
ªªK L
set
ºº 
{
ΩΩ 
	PositionX
ææ 
=
ææ 
value
ææ  %
.
ææ% &
x
ææ& '
;
ææ' (
	PositionY
øø 
=
øø 
value
øø  %
.
øø% &
y
øø& '
;
øø' (
	PositionZ
¿¿ 
=
¿¿ 
value
¿¿  %
.
¿¿% &
z
¿¿& '
;
¿¿' (
}
¡¡ 
}
¬¬ 
internal
ƒƒ 
Vector3
ƒƒ 
Rotation
ƒƒ %
{
≈≈ 
get
∆∆ 
{
∆∆ 
return
∆∆ 
new
∆∆  
Vector3
∆∆! (
(
∆∆( )
	RotAngleX
∆∆) 2
,
∆∆2 3
	RotAngleY
∆∆4 =
,
∆∆= >
	RotAngleZ
∆∆? H
)
∆∆H I
;
∆∆I J
}
∆∆K L
set
«« 
{
»» 
	RotAngleX
…… 
=
…… 
value
……  %
.
……% &
x
……& '
;
……' (
	RotAngleY
   
=
   
value
    %
.
  % &
y
  & '
;
  ' (
	RotAngleZ
ÀÀ 
=
ÀÀ 
value
ÀÀ  %
.
ÀÀ% &
z
ÀÀ& '
;
ÀÀ' (
}
ÃÃ 
}
ÕÕ 
internal
œœ 
Vector3
œœ 
Scale
œœ "
{
–– 
get
—— 
{
—— 
return
—— 
new
——  
Vector3
——! (
(
——( )
ScaleX
——) /
,
——/ 0
ScaleY
——1 7
,
——7 8
ScaleZ
——9 ?
)
——? @
;
——@ A
}
——B C
set
““ 
{
”” 
ScaleX
‘‘ 
=
‘‘ 
value
‘‘ "
.
‘‘" #
x
‘‘# $
;
‘‘$ %
ScaleY
’’ 
=
’’ 
value
’’ "
.
’’" #
y
’’# $
;
’’$ %
ScaleZ
÷÷ 
=
÷÷ 
value
÷÷ "
.
÷÷" #
z
÷÷# $
;
÷÷$ %
}
◊◊ 
}
ÿÿ 
public
⁄⁄ 
void
⁄⁄ 
NetworkSerialize
⁄⁄ (
<
⁄⁄( )
T
⁄⁄) *
>
⁄⁄* +
(
⁄⁄+ ,
BufferSerializer
⁄⁄, <
<
⁄⁄< =
T
⁄⁄= >
>
⁄⁄> ?

serializer
⁄⁄@ J
)
⁄⁄J K
where
⁄⁄L Q
T
⁄⁄R S
:
⁄⁄T U
IReaderWriter
⁄⁄V c
{
€€ 

serializer
‹‹ 
.
‹‹ 
SerializeValue
‹‹ )
(
‹‹) *
ref
‹‹* -
SentTime
‹‹. 6
)
‹‹6 7
;
‹‹7 8

serializer
ﬁﬁ 
.
ﬁﬁ 
SerializeValue
ﬁﬁ )
(
ﬁﬁ) *
ref
ﬁﬁ* -
m_Bitset
ﬁﬁ. 6
)
ﬁﬁ6 7
;
ﬁﬁ7 8
if
‡‡ 
(
‡‡ 
HasPositionX
‡‡  
)
‡‡  !
{
·· 

serializer
‚‚ 
.
‚‚ 
SerializeValue
‚‚ -
(
‚‚- .
ref
‚‚. 1
	PositionX
‚‚2 ;
)
‚‚; <
;
‚‚< =
}
„„ 
if
ÂÂ 
(
ÂÂ 
HasPositionY
ÂÂ  
)
ÂÂ  !
{
ÊÊ 

serializer
ÁÁ 
.
ÁÁ 
SerializeValue
ÁÁ -
(
ÁÁ- .
ref
ÁÁ. 1
	PositionY
ÁÁ2 ;
)
ÁÁ; <
;
ÁÁ< =
}
ËË 
if
ÍÍ 
(
ÍÍ 
HasPositionZ
ÍÍ  
)
ÍÍ  !
{
ÎÎ 

serializer
ÏÏ 
.
ÏÏ 
SerializeValue
ÏÏ -
(
ÏÏ- .
ref
ÏÏ. 1
	PositionZ
ÏÏ2 ;
)
ÏÏ; <
;
ÏÏ< =
}
ÌÌ 
if
 
(
 
HasRotAngleX
  
)
  !
{
ÒÒ 

serializer
ÚÚ 
.
ÚÚ 
SerializeValue
ÚÚ -
(
ÚÚ- .
ref
ÚÚ. 1
	RotAngleX
ÚÚ2 ;
)
ÚÚ; <
;
ÚÚ< =
}
ÛÛ 
if
ıı 
(
ıı 
HasRotAngleY
ıı  
)
ıı  !
{
ˆˆ 

serializer
˜˜ 
.
˜˜ 
SerializeValue
˜˜ -
(
˜˜- .
ref
˜˜. 1
	RotAngleY
˜˜2 ;
)
˜˜; <
;
˜˜< =
}
¯¯ 
if
˙˙ 
(
˙˙ 
HasRotAngleZ
˙˙  
)
˙˙  !
{
˚˚ 

serializer
¸¸ 
.
¸¸ 
SerializeValue
¸¸ -
(
¸¸- .
ref
¸¸. 1
	RotAngleZ
¸¸2 ;
)
¸¸; <
;
¸¸< =
}
˝˝ 
if
ÄÄ 
(
ÄÄ 
	HasScaleX
ÄÄ 
)
ÄÄ 
{
ÅÅ 

serializer
ÇÇ 
.
ÇÇ 
SerializeValue
ÇÇ -
(
ÇÇ- .
ref
ÇÇ. 1
ScaleX
ÇÇ2 8
)
ÇÇ8 9
;
ÇÇ9 :
}
ÉÉ 
if
ÖÖ 
(
ÖÖ 
	HasScaleY
ÖÖ 
)
ÖÖ 
{
ÜÜ 

serializer
áá 
.
áá 
SerializeValue
áá -
(
áá- .
ref
áá. 1
ScaleY
áá2 8
)
áá8 9
;
áá9 :
}
àà 
if
ää 
(
ää 
	HasScaleZ
ää 
)
ää 
{
ãã 

serializer
åå 
.
åå 
SerializeValue
åå -
(
åå- .
ref
åå. 1
ScaleZ
åå2 8
)
åå8 9
;
åå9 :
}
çç 
}
éé 
}
èè 	
public
îî 
bool
îî 
SyncPositionX
îî !
=
îî" #
true
îî$ (
;
îî( )
public
òò 
bool
òò 
SyncPositionY
òò !
=
òò" #
true
òò$ (
;
òò( )
public
úú 
bool
úú 
SyncPositionZ
úú !
=
úú" #
true
úú$ (
;
úú( )
public
†† 
bool
†† 
SyncRotAngleX
†† !
=
††" #
true
††$ (
;
††( )
public
§§ 
bool
§§ 
SyncRotAngleY
§§ !
=
§§" #
true
§§$ (
;
§§( )
public
®® 
bool
®® 
SyncRotAngleZ
®® !
=
®®" #
true
®®$ (
;
®®( )
public
¨¨ 
bool
¨¨ 

SyncScaleX
¨¨ 
=
¨¨  
true
¨¨! %
;
¨¨% &
public
∞∞ 
bool
∞∞ 

SyncScaleY
∞∞ 
=
∞∞  
true
∞∞! %
;
∞∞% &
public
¥¥ 
bool
¥¥ 

SyncScaleZ
¥¥ 
=
¥¥  
true
¥¥! %
;
¥¥% &
public
∫∫ 
float
∫∫ 
PositionThreshold
∫∫ &
=
∫∫' (&
PositionThresholdDefault
∫∫) A
;
∫∫A B
[
¬¬ 	
Range
¬¬	 
(
¬¬ 
$num
¬¬ 
,
¬¬ 
$num
¬¬ 
)
¬¬ 
]
¬¬ 
public
√√ 
float
√√ 
RotAngleThreshold
√√ &
=
√√' (&
RotAngleThresholdDefault
√√) A
;
√√A B
public
…… 
float
…… 
ScaleThreshold
…… #
=
……$ %#
ScaleThresholdDefault
……& ;
;
……; <
[
—— 	
Tooltip
——	 
(
—— 
$str
—— [
)
——[ \
]
——\ ]
public
““ 
bool
““ 
InLocalSpace
““  
=
““! "
false
““# (
;
““( )
private
”” 
bool
”” $
m_LastInterpolateLocal
”” +
=
””, -
false
””. 3
;
””3 4
public
ŸŸ 
bool
ŸŸ 
Interpolate
ŸŸ 
=
ŸŸ  !
true
ŸŸ" &
;
ŸŸ& '
private
⁄⁄ 
bool
⁄⁄ 
m_LastInterpolate
⁄⁄ &
=
⁄⁄' (
true
⁄⁄) -
;
⁄⁄- .
public
„„ 
bool
„„ "
CanCommitToTransform
„„ (
{
„„) *
get
„„+ .
;
„„. /
	protected
„„0 9
set
„„: =
;
„„= >
}
„„? @
	protected
ÈÈ 
bool
ÈÈ 
m_CachedIsServer
ÈÈ '
;
ÈÈ' (
	protected
ÔÔ 
NetworkManager
ÔÔ  $
m_CachedNetworkManager
ÔÔ! 7
;
ÔÔ7 8
private
ÒÒ 
readonly
ÒÒ 
NetworkVariable
ÒÒ (
<
ÒÒ( )#
NetworkTransformState
ÒÒ) >
>
ÒÒ> ?&
m_ReplicatedNetworkState
ÒÒ@ X
=
ÒÒY Z
new
ÒÒ[ ^
NetworkVariable
ÒÒ_ n
<
ÒÒn o$
NetworkTransformStateÒÒo Ñ
>ÒÒÑ Ö
(ÒÒÖ Ü
newÒÒÜ â%
NetworkTransformStateÒÒä ü
(ÒÒü †
)ÒÒ† °
)ÒÒ° ¢
;ÒÒ¢ £
private
ÛÛ #
NetworkTransformState
ÛÛ %.
 m_LocalAuthoritativeNetworkState
ÛÛ& F
;
ÛÛF G
private
ıı 
const
ıı 
int
ıı !
k_DebugDrawLineTime
ıı -
=
ıı. /
$num
ıı0 2
;
ıı2 3
private
˜˜ 
bool
˜˜  
m_HasSentLastValue
˜˜ '
=
˜˜( )
false
˜˜* /
;
˜˜/ 0
private
˙˙ (
BufferedLinearInterpolator
˙˙ *
<
˙˙* +
float
˙˙+ 0
>
˙˙0 1%
m_PositionXInterpolator
˙˙2 I
;
˙˙I J
private
˚˚ (
BufferedLinearInterpolator
˚˚ *
<
˚˚* +
float
˚˚+ 0
>
˚˚0 1%
m_PositionYInterpolator
˚˚2 I
;
˚˚I J
private
¸¸ (
BufferedLinearInterpolator
¸¸ *
<
¸¸* +
float
¸¸+ 0
>
¸¸0 1%
m_PositionZInterpolator
¸¸2 I
;
¸¸I J
private
˝˝ (
BufferedLinearInterpolator
˝˝ *
<
˝˝* +

Quaternion
˝˝+ 5
>
˝˝5 6$
m_RotationInterpolator
˝˝7 M
;
˝˝M N
private
˛˛ (
BufferedLinearInterpolator
˛˛ *
<
˛˛* +
float
˛˛+ 0
>
˛˛0 1"
m_ScaleXInterpolator
˛˛2 F
;
˛˛F G
private
ˇˇ (
BufferedLinearInterpolator
ˇˇ *
<
ˇˇ* +
float
ˇˇ+ 0
>
ˇˇ0 1"
m_ScaleYInterpolator
ˇˇ2 F
;
ˇˇF G
private
ÄÄ (
BufferedLinearInterpolator
ÄÄ *
<
ÄÄ* +
float
ÄÄ+ 0
>
ÄÄ0 1"
m_ScaleZInterpolator
ÄÄ2 F
;
ÄÄF G
private
ÅÅ 
readonly
ÅÅ 
List
ÅÅ 
<
ÅÅ (
BufferedLinearInterpolator
ÅÅ 8
<
ÅÅ8 9
float
ÅÅ9 >
>
ÅÅ> ?
>
ÅÅ? @%
m_AllFloatInterpolators
ÅÅA X
=
ÅÅY Z
new
ÅÅ[ ^
List
ÅÅ_ c
<
ÅÅc d(
BufferedLinearInterpolator
ÅÅd ~
<
ÅÅ~ 
floatÅÅ Ñ
>ÅÅÑ Ö
>ÅÅÖ Ü
(ÅÅÜ á
$numÅÅá à
)ÅÅà â
;ÅÅâ ä
private
ÉÉ 
	Transform
ÉÉ 
m_Transform
ÉÉ %
;
ÉÉ% &
private
ÑÑ 
int
ÑÑ 
m_LastSentTick
ÑÑ "
;
ÑÑ" #
private
ÖÖ #
NetworkTransformState
ÖÖ %
m_LastSentState
ÖÖ& 5
;
ÖÖ5 6
	protected
éé 
void
éé (
TryCommitTransformToServer
éé 1
(
éé1 2
	Transform
éé2 ;
transformToCommit
éé< M
,
ééM N
double
ééO U
	dirtyTime
ééV _
)
éé_ `
{
èè 	
var
êê 
isDirty
êê 
=
êê *
ApplyTransformToNetworkState
êê 6
(
êê6 7
ref
êê7 :.
 m_LocalAuthoritativeNetworkState
êê; [
,
êê[ \
	dirtyTime
êê] f
,
êêf g
transformToCommit
êêh y
)
êêy z
;
êêz {
	TryCommit
ëë 
(
ëë 
isDirty
ëë 
)
ëë 
;
ëë 
}
íí 	
private
îî 
void
îî %
TryCommitValuesToServer
îî ,
(
îî, -
Vector3
îî- 4
position
îî5 =
,
îî= >
Vector3
îî? F
rotation
îîG O
,
îîO P
Vector3
îîQ X
scale
îîY ^
,
îî^ _
double
îî` f
	dirtyTime
îîg p
)
îîp q
{
ïï 	
var
ññ 
isDirty
ññ 
=
ññ 2
$ApplyTransformToNetworkStateWithInfo
ññ >
(
ññ> ?
ref
ññ? B.
 m_LocalAuthoritativeNetworkState
ññC c
,
ññc d
	dirtyTime
ññe n
,
ññn o
position
ññp x
,
ññx y
rotationññz Ç
,ññÇ É
scaleññÑ â
)ññâ ä
;ññä ã
	TryCommit
òò 
(
òò 
isDirty
òò 
.
òò 
isDirty
òò %
)
òò% &
;
òò& '
}
ôô 	
private
õõ 
void
õõ 
	TryCommit
õõ 
(
õõ 
bool
õõ #
isDirty
õõ$ +
)
õõ+ ,
{
úú 	
void
ùù 
Send
ùù 
(
ùù #
NetworkTransformState
ùù +
stateToSend
ùù, 7
)
ùù7 8
{
ûû 
if
üü 
(
üü 
m_CachedIsServer
üü $
)
üü$ %
{
†† '
CommitLocallyAndReplicate
¢¢ -
(
¢¢- .
stateToSend
¢¢. 9
)
¢¢9 :
;
¢¢: ;
}
££ 
else
§§ 
{
•• &
CommitTransformServerRpc
¶¶ ,
(
¶¶, -
stateToSend
¶¶- 8
)
¶¶8 9
;
¶¶9 :
}
ßß 
}
®® 
if
±± 
(
±± 
isDirty
±± 
)
±± 
{
≤≤ 
Send
≥≥ 
(
≥≥ .
 m_LocalAuthoritativeNetworkState
≥≥ 5
)
≥≥5 6
;
≥≥6 7 
m_HasSentLastValue
¥¥ "
=
¥¥# $
false
¥¥% *
;
¥¥* +
m_LastSentTick
µµ 
=
µµ  $
m_CachedNetworkManager
µµ! 7
.
µµ7 8
	LocalTime
µµ8 A
.
µµA B
Tick
µµB F
;
µµF G
m_LastSentState
∂∂ 
=
∂∂  !.
 m_LocalAuthoritativeNetworkState
∂∂" B
;
∂∂B C
}
∑∑ 
else
∏∏ 
if
∏∏ 
(
∏∏ 
!
∏∏  
m_HasSentLastValue
∏∏ (
&&
∏∏) +$
m_CachedNetworkManager
∏∏, B
.
∏∏B C
	LocalTime
∏∏C L
.
∏∏L M
Tick
∏∏M Q
>=
∏∏R T
m_LastSentTick
∏∏U c
+
∏∏d e
$num
∏∏f g
)
∏∏g h
{
ππ 
m_LastSentState
∫∫ 
.
∫∫  
SentTime
∫∫  (
=
∫∫) *$
m_CachedNetworkManager
∫∫+ A
.
∫∫A B
	LocalTime
∫∫B K
.
∫∫K L
Time
∫∫L P
;
∫∫P Q
Send
ªª 
(
ªª 
m_LastSentState
ªª $
)
ªª$ %
;
ªª% & 
m_HasSentLastValue
ºº "
=
ºº# $
true
ºº% )
;
ºº) *
}
ΩΩ 
}
ææ 	
[
¿¿ 	
	ServerRpc
¿¿	 
(
¿¿ 
RequireOwnership
¿¿ #
=
¿¿$ %
false
¿¿& +
)
¿¿+ ,
]
¿¿, -
private
¡¡ 
void
¡¡ &
CommitTransformServerRpc
¡¡ -
(
¡¡- .#
NetworkTransformState
¡¡. C
networkState
¡¡D P
,
¡¡P Q
ServerRpcParams
¡¡R a
serverParams
¡¡b n
=
¡¡o p
default
¡¡q x
)
¡¡x y
{
¬¬ 	
if
√√ 
(
√√ 
serverParams
√√ 
.
√√ 
Receive
√√ $
.
√√$ %
SenderClientId
√√% 3
==
√√4 6
OwnerClientId
√√7 D
)
√√D E
{
ƒƒ '
CommitLocallyAndReplicate
≈≈ )
(
≈≈) *
networkState
≈≈* 6
)
≈≈6 7
;
≈≈7 8
}
∆∆ 
}
«« 	
private
…… 
void
…… '
CommitLocallyAndReplicate
…… .
(
……. /#
NetworkTransformState
……/ D
networkState
……E Q
)
……Q R
{
   	&
m_ReplicatedNetworkState
ÀÀ $
.
ÀÀ$ %
Value
ÀÀ% *
=
ÀÀ+ ,
networkState
ÀÀ- 9
;
ÀÀ9 :
if
ÕÕ 
(
ÕÕ 
Interpolate
ÕÕ 
)
ÕÕ 
{
ŒŒ "
AddInterpolatedState
œœ $
(
œœ$ %
networkState
œœ% 1
)
œœ1 2
;
œœ2 3
}
–– 
}
—— 	
private
”” 
void
”” ?
1ResetInterpolatedStateToCurrentAuthoritativeState
”” F
(
””F G
)
””G H
{
‘‘ 	
var
’’ 

serverTime
’’ 
=
’’ 
NetworkManager
’’ +
.
’’+ ,

ServerTime
’’, 6
.
’’6 7
Time
’’7 ;
;
’’; <%
m_PositionXInterpolator
÷÷ #
.
÷÷# $
ResetTo
÷÷$ +
(
÷÷+ ,.
 m_LocalAuthoritativeNetworkState
÷÷, L
.
÷÷L M
	PositionX
÷÷M V
,
÷÷V W

serverTime
÷÷X b
)
÷÷b c
;
÷÷c d%
m_PositionYInterpolator
◊◊ #
.
◊◊# $
ResetTo
◊◊$ +
(
◊◊+ ,.
 m_LocalAuthoritativeNetworkState
◊◊, L
.
◊◊L M
	PositionY
◊◊M V
,
◊◊V W

serverTime
◊◊X b
)
◊◊b c
;
◊◊c d%
m_PositionZInterpolator
ÿÿ #
.
ÿÿ# $
ResetTo
ÿÿ$ +
(
ÿÿ+ ,.
 m_LocalAuthoritativeNetworkState
ÿÿ, L
.
ÿÿL M
	PositionZ
ÿÿM V
,
ÿÿV W

serverTime
ÿÿX b
)
ÿÿb c
;
ÿÿc d$
m_RotationInterpolator
⁄⁄ "
.
⁄⁄" #
ResetTo
⁄⁄# *
(
⁄⁄* +

Quaternion
⁄⁄+ 5
.
⁄⁄5 6
Euler
⁄⁄6 ;
(
⁄⁄; <.
 m_LocalAuthoritativeNetworkState
⁄⁄< \
.
⁄⁄\ ]
Rotation
⁄⁄] e
)
⁄⁄e f
,
⁄⁄f g

serverTime
⁄⁄h r
)
⁄⁄r s
;
⁄⁄s t"
m_ScaleXInterpolator
‹‹  
.
‹‹  !
ResetTo
‹‹! (
(
‹‹( ).
 m_LocalAuthoritativeNetworkState
‹‹) I
.
‹‹I J
ScaleX
‹‹J P
,
‹‹P Q

serverTime
‹‹R \
)
‹‹\ ]
;
‹‹] ^"
m_ScaleYInterpolator
››  
.
››  !
ResetTo
››! (
(
››( ).
 m_LocalAuthoritativeNetworkState
››) I
.
››I J
ScaleY
››J P
,
››P Q

serverTime
››R \
)
››\ ]
;
››] ^"
m_ScaleZInterpolator
ﬁﬁ  
.
ﬁﬁ  !
ResetTo
ﬁﬁ! (
(
ﬁﬁ( ).
 m_LocalAuthoritativeNetworkState
ﬁﬁ) I
.
ﬁﬁI J
ScaleZ
ﬁﬁJ P
,
ﬁﬁP Q

serverTime
ﬁﬁR \
)
ﬁﬁ\ ]
;
ﬁﬁ] ^
}
ﬂﬂ 	
internal
ÊÊ 
(
ÊÊ 
bool
ÊÊ 
isDirty
ÊÊ 
,
ÊÊ 
bool
ÊÊ  $
isPositionDirty
ÊÊ% 4
,
ÊÊ4 5
bool
ÊÊ6 :
isRotationDirty
ÊÊ; J
,
ÊÊJ K
bool
ÊÊL P
isScaleDirty
ÊÊQ ]
)
ÊÊ] ^$
ApplyLocalNetworkState
ÊÊ_ u
(
ÊÊu v
	Transform
ÊÊv 
	transformÊÊÄ â
)ÊÊâ ä
{
ÁÁ 	
return
ËË 2
$ApplyTransformToNetworkStateWithInfo
ËË 7
(
ËË7 8
ref
ËË8 ;.
 m_LocalAuthoritativeNetworkState
ËË< \
,
ËË\ ]$
m_CachedNetworkManager
ËË^ t
.
ËËt u
	LocalTime
ËËu ~
.
ËË~ 
TimeËË É
,ËËÉ Ñ
	transformËËÖ é
)ËËé è
;ËËè ê
}
ÈÈ 	
internal
ÌÌ 
bool
ÌÌ *
ApplyTransformToNetworkState
ÌÌ 2
(
ÌÌ2 3
ref
ÌÌ3 6#
NetworkTransformState
ÌÌ7 L
networkState
ÌÌM Y
,
ÌÌY Z
double
ÌÌ[ a
	dirtyTime
ÌÌb k
,
ÌÌk l
	Transform
ÌÌm v
transformToUseÌÌw Ö
)ÌÌÖ Ü
{
ÓÓ 	
return
ÔÔ 2
$ApplyTransformToNetworkStateWithInfo
ÔÔ 7
(
ÔÔ7 8
ref
ÔÔ8 ;
networkState
ÔÔ< H
,
ÔÔH I
	dirtyTime
ÔÔJ S
,
ÔÔS T
transformToUse
ÔÔU c
)
ÔÔc d
.
ÔÔd e
isDirty
ÔÔe l
;
ÔÔl m
}
 	
private
ÚÚ 
(
ÚÚ 
bool
ÚÚ 
isDirty
ÚÚ 
,
ÚÚ 
bool
ÚÚ #
isPositionDirty
ÚÚ$ 3
,
ÚÚ3 4
bool
ÚÚ5 9
isRotationDirty
ÚÚ: I
,
ÚÚI J
bool
ÚÚK O
isScaleDirty
ÚÚP \
)
ÚÚ\ ]3
$ApplyTransformToNetworkStateWithInfoÚÚ^ Ç
(ÚÚÇ É
refÚÚÉ Ü%
NetworkTransformStateÚÚá ú
networkStateÚÚù ©
,ÚÚ© ™
doubleÚÚ´ ±
	dirtyTimeÚÚ≤ ª
,ÚÚª º
	TransformÚÚΩ ∆
transformToUseÚÚ« ’
)ÚÚ’ ÷
{
ÛÛ 	
var
ÙÙ 
position
ÙÙ 
=
ÙÙ 
InLocalSpace
ÙÙ '
?
ÙÙ( )
transformToUse
ÙÙ* 8
.
ÙÙ8 9
localPosition
ÙÙ9 F
:
ÙÙG H
transformToUse
ÙÙI W
.
ÙÙW X
position
ÙÙX `
;
ÙÙ` a
var
ıı 
	rotAngles
ıı 
=
ıı 
InLocalSpace
ıı (
?
ıı) *
transformToUse
ıı+ 9
.
ıı9 :
localEulerAngles
ıı: J
:
ııK L
transformToUse
ııM [
.
ıı[ \
eulerAngles
ıı\ g
;
ııg h
var
ˆˆ 
scale
ˆˆ 
=
ˆˆ 
transformToUse
ˆˆ &
.
ˆˆ& '

localScale
ˆˆ' 1
;
ˆˆ1 2
return
˜˜ 2
$ApplyTransformToNetworkStateWithInfo
˜˜ 7
(
˜˜7 8
ref
˜˜8 ;
networkState
˜˜< H
,
˜˜H I
	dirtyTime
˜˜J S
,
˜˜S T
position
˜˜U ]
,
˜˜] ^
	rotAngles
˜˜_ h
,
˜˜h i
scale
˜˜j o
)
˜˜o p
;
˜˜p q
}
¯¯ 	
private
˙˙ 
(
˙˙ 
bool
˙˙ 
isDirty
˙˙ 
,
˙˙ 
bool
˙˙ #
isPositionDirty
˙˙$ 3
,
˙˙3 4
bool
˙˙5 9
isRotationDirty
˙˙: I
,
˙˙I J
bool
˙˙K O
isScaleDirty
˙˙P \
)
˙˙\ ]3
$ApplyTransformToNetworkStateWithInfo˙˙^ Ç
(˙˙Ç É
ref˙˙É Ü%
NetworkTransformState˙˙á ú
networkState˙˙ù ©
,˙˙© ™
double˙˙´ ±
	dirtyTime˙˙≤ ª
,˙˙ª º
Vector3˙˙Ω ƒ
position˙˙≈ Õ
,˙˙Õ Œ
Vector3˙˙œ ÷
	rotAngles˙˙◊ ‡
,˙˙‡ ·
Vector3˙˙‚ È
scale˙˙Í Ô
)˙˙Ô 
{
˚˚ 	
var
¸¸ 
isDirty
¸¸ 
=
¸¸ 
false
¸¸ 
;
¸¸  
var
˝˝ 
isPositionDirty
˝˝ 
=
˝˝  !
false
˝˝" '
;
˝˝' (
var
˛˛ 
isRotationDirty
˛˛ 
=
˛˛  !
false
˛˛" '
;
˛˛' (
var
ˇˇ 
isScaleDirty
ˇˇ 
=
ˇˇ 
false
ˇˇ $
;
ˇˇ$ %
if
ÉÉ 
(
ÉÉ 
InLocalSpace
ÉÉ 
!=
ÉÉ 
networkState
ÉÉ  ,
.
ÉÉ, -
InLocalSpace
ÉÉ- 9
)
ÉÉ9 :
{
ÑÑ 
networkState
ÖÖ 
.
ÖÖ 
InLocalSpace
ÖÖ )
=
ÖÖ* +
InLocalSpace
ÖÖ, 8
;
ÖÖ8 9
isDirty
ÜÜ 
=
ÜÜ 
true
ÜÜ 
;
ÜÜ 
}
áá 
if
éé 
(
éé 
SyncPositionX
éé 
&&
éé  
Mathf
èè 
.
èè 
Abs
èè 
(
èè 
networkState
èè &
.
èè& '
	PositionX
èè' 0
-
èè1 2
position
èè3 ;
.
èè; <
x
èè< =
)
èè= >
>
èè? @
PositionThreshold
èèA R
)
èèR S
{
êê 
networkState
ëë 
.
ëë 
	PositionX
ëë &
=
ëë' (
position
ëë) 1
.
ëë1 2
x
ëë2 3
;
ëë3 4
networkState
íí 
.
íí 
HasPositionX
íí )
=
íí* +
true
íí, 0
;
íí0 1
isPositionDirty
ìì 
=
ìì  !
true
ìì" &
;
ìì& '
}
îî 
if
ññ 
(
ññ 
SyncPositionY
ññ 
&&
ññ  
Mathf
óó 
.
óó 
Abs
óó 
(
óó 
networkState
óó &
.
óó& '
	PositionY
óó' 0
-
óó1 2
position
óó3 ;
.
óó; <
y
óó< =
)
óó= >
>
óó? @
PositionThreshold
óóA R
)
óóR S
{
òò 
networkState
ôô 
.
ôô 
	PositionY
ôô &
=
ôô' (
position
ôô) 1
.
ôô1 2
y
ôô2 3
;
ôô3 4
networkState
öö 
.
öö 
HasPositionY
öö )
=
öö* +
true
öö, 0
;
öö0 1
isPositionDirty
õõ 
=
õõ  !
true
õõ" &
;
õõ& '
}
úú 
if
ûû 
(
ûû 
SyncPositionZ
ûû 
&&
ûû  
Mathf
üü 
.
üü 
Abs
üü 
(
üü 
networkState
üü &
.
üü& '
	PositionZ
üü' 0
-
üü1 2
position
üü3 ;
.
üü; <
z
üü< =
)
üü= >
>
üü? @
PositionThreshold
üüA R
)
üüR S
{
†† 
networkState
°° 
.
°° 
	PositionZ
°° &
=
°°' (
position
°°) 1
.
°°1 2
z
°°2 3
;
°°3 4
networkState
¢¢ 
.
¢¢ 
HasPositionZ
¢¢ )
=
¢¢* +
true
¢¢, 0
;
¢¢0 1
isPositionDirty
££ 
=
££  !
true
££" &
;
££& '
}
§§ 
if
¶¶ 
(
¶¶ 
SyncRotAngleX
¶¶ 
&&
¶¶  
Mathf
ßß 
.
ßß 
Abs
ßß 
(
ßß 
Mathf
ßß 
.
ßß  

DeltaAngle
ßß  *
(
ßß* +
networkState
ßß+ 7
.
ßß7 8
	RotAngleX
ßß8 A
,
ßßA B
	rotAngles
ßßC L
.
ßßL M
x
ßßM N
)
ßßN O
)
ßßO P
>
ßßQ R
RotAngleThreshold
ßßS d
)
ßßd e
{
®® 
networkState
©© 
.
©© 
	RotAngleX
©© &
=
©©' (
	rotAngles
©©) 2
.
©©2 3
x
©©3 4
;
©©4 5
networkState
™™ 
.
™™ 
HasRotAngleX
™™ )
=
™™* +
true
™™, 0
;
™™0 1
isRotationDirty
´´ 
=
´´  !
true
´´" &
;
´´& '
}
¨¨ 
if
ÆÆ 
(
ÆÆ 
SyncRotAngleY
ÆÆ 
&&
ÆÆ  
Mathf
ØØ 
.
ØØ 
Abs
ØØ 
(
ØØ 
Mathf
ØØ 
.
ØØ  

DeltaAngle
ØØ  *
(
ØØ* +
networkState
ØØ+ 7
.
ØØ7 8
	RotAngleY
ØØ8 A
,
ØØA B
	rotAngles
ØØC L
.
ØØL M
y
ØØM N
)
ØØN O
)
ØØO P
>
ØØQ R
RotAngleThreshold
ØØS d
)
ØØd e
{
∞∞ 
networkState
±± 
.
±± 
	RotAngleY
±± &
=
±±' (
	rotAngles
±±) 2
.
±±2 3
y
±±3 4
;
±±4 5
networkState
≤≤ 
.
≤≤ 
HasRotAngleY
≤≤ )
=
≤≤* +
true
≤≤, 0
;
≤≤0 1
isRotationDirty
≥≥ 
=
≥≥  !
true
≥≥" &
;
≥≥& '
}
¥¥ 
if
∂∂ 
(
∂∂ 
SyncRotAngleZ
∂∂ 
&&
∂∂  
Mathf
∑∑ 
.
∑∑ 
Abs
∑∑ 
(
∑∑ 
Mathf
∑∑ 
.
∑∑  

DeltaAngle
∑∑  *
(
∑∑* +
networkState
∑∑+ 7
.
∑∑7 8
	RotAngleZ
∑∑8 A
,
∑∑A B
	rotAngles
∑∑C L
.
∑∑L M
z
∑∑M N
)
∑∑N O
)
∑∑O P
>
∑∑Q R
RotAngleThreshold
∑∑S d
)
∑∑d e
{
∏∏ 
networkState
ππ 
.
ππ 
	RotAngleZ
ππ &
=
ππ' (
	rotAngles
ππ) 2
.
ππ2 3
z
ππ3 4
;
ππ4 5
networkState
∫∫ 
.
∫∫ 
HasRotAngleZ
∫∫ )
=
∫∫* +
true
∫∫, 0
;
∫∫0 1
isRotationDirty
ªª 
=
ªª  !
true
ªª" &
;
ªª& '
}
ºº 
if
ææ 
(
ææ 

SyncScaleX
ææ 
&&
ææ 
Mathf
øø 
.
øø 
Abs
øø 
(
øø 
networkState
øø &
.
øø& '
ScaleX
øø' -
-
øø. /
scale
øø0 5
.
øø5 6
x
øø6 7
)
øø7 8
>
øø9 :
ScaleThreshold
øø; I
)
øøI J
{
¿¿ 
networkState
¡¡ 
.
¡¡ 
ScaleX
¡¡ #
=
¡¡$ %
scale
¡¡& +
.
¡¡+ ,
x
¡¡, -
;
¡¡- .
networkState
¬¬ 
.
¬¬ 
	HasScaleX
¬¬ &
=
¬¬' (
true
¬¬) -
;
¬¬- .
isScaleDirty
√√ 
=
√√ 
true
√√ #
;
√√# $
}
ƒƒ 
if
∆∆ 
(
∆∆ 

SyncScaleY
∆∆ 
&&
∆∆ 
Mathf
«« 
.
«« 
Abs
«« 
(
«« 
networkState
«« &
.
««& '
ScaleY
««' -
-
««. /
scale
««0 5
.
««5 6
y
««6 7
)
««7 8
>
««9 :
ScaleThreshold
««; I
)
««I J
{
»» 
networkState
…… 
.
…… 
ScaleY
…… #
=
……$ %
scale
……& +
.
……+ ,
y
……, -
;
……- .
networkState
   
.
   
	HasScaleY
   &
=
  ' (
true
  ) -
;
  - .
isScaleDirty
ÀÀ 
=
ÀÀ 
true
ÀÀ #
;
ÀÀ# $
}
ÃÃ 
if
ŒŒ 
(
ŒŒ 

SyncScaleZ
ŒŒ 
&&
ŒŒ 
Mathf
œœ 
.
œœ 
Abs
œœ 
(
œœ 
networkState
œœ &
.
œœ& '
ScaleZ
œœ' -
-
œœ. /
scale
œœ0 5
.
œœ5 6
z
œœ6 7
)
œœ7 8
>
œœ9 :
ScaleThreshold
œœ; I
)
œœI J
{
–– 
networkState
—— 
.
—— 
ScaleZ
—— #
=
——$ %
scale
——& +
.
——+ ,
z
——, -
;
——- .
networkState
““ 
.
““ 
	HasScaleZ
““ &
=
““' (
true
““) -
;
““- .
isScaleDirty
”” 
=
”” 
true
”” #
;
””# $
}
‘‘ 
isDirty
÷÷ 
|=
÷÷ 
isPositionDirty
÷÷ &
||
÷÷' )
isRotationDirty
÷÷* 9
||
÷÷: <
isScaleDirty
÷÷= I
;
÷÷I J
if
ÿÿ 
(
ÿÿ 
isDirty
ÿÿ 
)
ÿÿ 
{
ŸŸ 
networkState
⁄⁄ 
.
⁄⁄ 
SentTime
⁄⁄ %
=
⁄⁄& '
	dirtyTime
⁄⁄( 1
;
⁄⁄1 2
}
€€ 
return
›› 
(
›› 
isDirty
›› 
,
›› 
isPositionDirty
›› ,
,
››, -
isRotationDirty
››. =
,
››= >
isScaleDirty
››? K
)
››K L
;
››L M
}
ﬁﬁ 	
private
‡‡ 
void
‡‡ 6
(ApplyInterpolatedNetworkStateToTransform
‡‡ =
(
‡‡= >#
NetworkTransformState
‡‡> S
networkState
‡‡T `
,
‡‡` a
	Transform
‡‡b k
transformToUpdate
‡‡l }
)
‡‡} ~
{
·· 	
var
‚‚ "
interpolatedPosition
‚‚ $
=
‚‚% &
InLocalSpace
‚‚' 3
?
‚‚4 5
transformToUpdate
‚‚6 G
.
‚‚G H
localPosition
‚‚H U
:
‚‚V W
transformToUpdate
‚‚X i
.
‚‚i j
position
‚‚j r
;
‚‚r s
var
ÂÂ #
interpolatedRotAngles
ÂÂ %
=
ÂÂ& '
InLocalSpace
ÂÂ( 4
?
ÂÂ5 6
transformToUpdate
ÂÂ7 H
.
ÂÂH I
localEulerAngles
ÂÂI Y
:
ÂÂZ [
transformToUpdate
ÂÂ\ m
.
ÂÂm n
eulerAngles
ÂÂn y
;
ÂÂy z
var
ÊÊ 
interpolatedScale
ÊÊ !
=
ÊÊ" #
transformToUpdate
ÊÊ$ 5
.
ÊÊ5 6

localScale
ÊÊ6 @
;
ÊÊ@ A
InLocalSpace
ÈÈ 
=
ÈÈ 
networkState
ÈÈ '
.
ÈÈ' (
InLocalSpace
ÈÈ( 4
;
ÈÈ4 5
if
ÎÎ 
(
ÎÎ 
SyncPositionX
ÎÎ 
)
ÎÎ 
{
ÏÏ "
interpolatedPosition
ÌÌ $
.
ÌÌ$ %
x
ÌÌ% &
=
ÌÌ' (
networkState
ÌÌ) 5
.
ÌÌ5 6$
IsTeleportingNextFrame
ÌÌ6 L
||
ÌÌM O
!
ÌÌP Q
Interpolate
ÌÌQ \
?
ÌÌ] ^
networkState
ÌÌ_ k
.
ÌÌk l
Position
ÌÌl t
.
ÌÌt u
x
ÌÌu v
:
ÌÌw x&
m_PositionXInterpolatorÌÌy ê
.ÌÌê ë$
GetInterpolatedValueÌÌë •
(ÌÌ• ¶
)ÌÌ¶ ß
;ÌÌß ®
}
ÓÓ 
if
 
(
 
SyncPositionY
 
)
 
{
ÒÒ "
interpolatedPosition
ÚÚ $
.
ÚÚ$ %
y
ÚÚ% &
=
ÚÚ' (
networkState
ÚÚ) 5
.
ÚÚ5 6$
IsTeleportingNextFrame
ÚÚ6 L
||
ÚÚM O
!
ÚÚP Q
Interpolate
ÚÚQ \
?
ÚÚ] ^
networkState
ÚÚ_ k
.
ÚÚk l
Position
ÚÚl t
.
ÚÚt u
y
ÚÚu v
:
ÚÚw x&
m_PositionYInterpolatorÚÚy ê
.ÚÚê ë$
GetInterpolatedValueÚÚë •
(ÚÚ• ¶
)ÚÚ¶ ß
;ÚÚß ®
}
ÛÛ 
if
ıı 
(
ıı 
SyncPositionZ
ıı 
)
ıı 
{
ˆˆ "
interpolatedPosition
˜˜ $
.
˜˜$ %
z
˜˜% &
=
˜˜' (
networkState
˜˜) 5
.
˜˜5 6$
IsTeleportingNextFrame
˜˜6 L
||
˜˜M O
!
˜˜P Q
Interpolate
˜˜Q \
?
˜˜] ^
networkState
˜˜_ k
.
˜˜k l
Position
˜˜l t
.
˜˜t u
z
˜˜u v
:
˜˜w x&
m_PositionZInterpolator˜˜y ê
.˜˜ê ë$
GetInterpolatedValue˜˜ë •
(˜˜• ¶
)˜˜¶ ß
;˜˜ß ®
}
¯¯ 
if
˚˚ 
(
˚˚ 
SyncRotAngleX
˚˚ 
||
˚˚  
SyncRotAngleY
˚˚! .
||
˚˚/ 1
SyncRotAngleZ
˚˚2 ?
)
˚˚? @
{
¸¸ 
var
˝˝ 
eulerAngles
˝˝ 
=
˝˝  !
new
˝˝" %
Vector3
˝˝& -
(
˝˝- .
)
˝˝. /
;
˝˝/ 0
if
˛˛ 
(
˛˛ 
Interpolate
˛˛ 
)
˛˛  
{
ˇˇ 
eulerAngles
ÄÄ 
=
ÄÄ  !$
m_RotationInterpolator
ÄÄ" 8
.
ÄÄ8 9"
GetInterpolatedValue
ÄÄ9 M
(
ÄÄM N
)
ÄÄN O
.
ÄÄO P
eulerAngles
ÄÄP [
;
ÄÄ[ \
}
ÅÅ 
if
ÉÉ 
(
ÉÉ 
SyncRotAngleX
ÉÉ !
)
ÉÉ! "
{
ÑÑ #
interpolatedRotAngles
ÖÖ )
.
ÖÖ) *
x
ÖÖ* +
=
ÖÖ, -
networkState
ÖÖ. :
.
ÖÖ: ;$
IsTeleportingNextFrame
ÖÖ; Q
||
ÖÖR T
!
ÖÖU V
Interpolate
ÖÖV a
?
ÖÖb c
networkState
ÖÖd p
.
ÖÖp q
Rotation
ÖÖq y
.
ÖÖy z
x
ÖÖz {
:
ÖÖ| }
eulerAnglesÖÖ~ â
.ÖÖâ ä
xÖÖä ã
;ÖÖã å
}
ÜÜ 
if
àà 
(
àà 
SyncRotAngleY
àà !
)
àà! "
{
ââ #
interpolatedRotAngles
ää )
.
ää) *
y
ää* +
=
ää, -
networkState
ää. :
.
ää: ;$
IsTeleportingNextFrame
ää; Q
||
ääR T
!
ääU V
Interpolate
ääV a
?
ääb c
networkState
ääd p
.
ääp q
Rotation
ääq y
.
ääy z
y
ääz {
:
ää| }
eulerAnglesää~ â
.ääâ ä
yäää ã
;ääã å
}
ãã 
if
çç 
(
çç 
SyncRotAngleZ
çç !
)
çç! "
{
éé #
interpolatedRotAngles
èè )
.
èè) *
z
èè* +
=
èè, -
networkState
èè. :
.
èè: ;$
IsTeleportingNextFrame
èè; Q
||
èèR T
!
èèU V
Interpolate
èèV a
?
èèb c
networkState
èèd p
.
èèp q
Rotation
èèq y
.
èèy z
z
èèz {
:
èè| }
eulerAnglesèè~ â
.èèâ ä
zèèä ã
;èèã å
}
êê 
}
ëë 
if
îî 
(
îî 

SyncScaleX
îî 
)
îî 
{
ïï 
interpolatedScale
ññ !
.
ññ! "
x
ññ" #
=
ññ$ %
networkState
ññ& 2
.
ññ2 3$
IsTeleportingNextFrame
ññ3 I
||
ññJ L
!
ññM N
Interpolate
ññN Y
?
ññZ [
networkState
ññ\ h
.
ññh i
Scale
ññi n
.
ññn o
x
ñño p
:
ññq r#
m_ScaleXInterpolatorññs á
.ññá à$
GetInterpolatedValueññà ú
(ññú ù
)ññù û
;ññû ü
}
óó 
if
ôô 
(
ôô 

SyncScaleY
ôô 
)
ôô 
{
öö 
interpolatedScale
õõ !
.
õõ! "
y
õõ" #
=
õõ$ %
networkState
õõ& 2
.
õõ2 3$
IsTeleportingNextFrame
õõ3 I
||
õõJ L
!
õõM N
Interpolate
õõN Y
?
õõZ [
networkState
õõ\ h
.
õõh i
Scale
õõi n
.
õõn o
y
õõo p
:
õõq r#
m_ScaleYInterpolatorõõs á
.õõá à$
GetInterpolatedValueõõà ú
(õõú ù
)õõù û
;õõû ü
}
úú 
if
ûû 
(
ûû 

SyncScaleZ
ûû 
)
ûû 
{
üü 
interpolatedScale
†† !
.
††! "
z
††" #
=
††$ %
networkState
††& 2
.
††2 3$
IsTeleportingNextFrame
††3 I
||
††J L
!
††M N
Interpolate
††N Y
?
††Z [
networkState
††\ h
.
††h i
Scale
††i n
.
††n o
z
††o p
:
††q r#
m_ScaleZInterpolator††s á
.††á à$
GetInterpolatedValue††à ú
(††ú ù
)††ù û
;††û ü
}
°° 
if
§§ 
(
§§ 
SyncPositionX
§§ 
||
§§  
SyncPositionY
§§! .
||
§§/ 1
SyncPositionZ
§§2 ?
)
§§? @
{
•• 
if
¶¶ 
(
¶¶ 
InLocalSpace
¶¶  
)
¶¶  !
{
ßß 
transformToUpdate
®® %
.
®®% &
localPosition
®®& 3
=
®®4 5"
interpolatedPosition
®®6 J
;
®®J K
}
©© 
else
™™ 
{
´´ 
transformToUpdate
¨¨ %
.
¨¨% &
position
¨¨& .
=
¨¨/ 0"
interpolatedPosition
¨¨1 E
;
¨¨E F
}
≠≠ 
}
ÆÆ 
if
±± 
(
±± 
SyncRotAngleX
±± 
||
±±  
SyncRotAngleY
±±! .
||
±±/ 1
SyncRotAngleZ
±±2 ?
)
±±? @
{
≤≤ 
if
≥≥ 
(
≥≥ 
InLocalSpace
≥≥  
)
≥≥  !
{
¥¥ 
transformToUpdate
µµ %
.
µµ% &
localRotation
µµ& 3
=
µµ4 5

Quaternion
µµ6 @
.
µµ@ A
Euler
µµA F
(
µµF G#
interpolatedRotAngles
µµG \
)
µµ\ ]
;
µµ] ^
}
∂∂ 
else
∑∑ 
{
∏∏ 
transformToUpdate
ππ %
.
ππ% &
rotation
ππ& .
=
ππ/ 0

Quaternion
ππ1 ;
.
ππ; <
Euler
ππ< A
(
ππA B#
interpolatedRotAngles
ππB W
)
ππW X
;
ππX Y
}
∫∫ 
}
ªª 
if
ææ 
(
ææ 

SyncScaleX
ææ 
||
ææ 

SyncScaleY
ææ (
||
ææ) +

SyncScaleZ
ææ, 6
)
ææ6 7
{
øø 
transformToUpdate
¿¿ !
.
¿¿! "

localScale
¿¿" ,
=
¿¿- .
interpolatedScale
¿¿/ @
;
¿¿@ A
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
void
ƒƒ "
AddInterpolatedState
ƒƒ )
(
ƒƒ) *#
NetworkTransformState
ƒƒ* ?
newState
ƒƒ@ H
,
ƒƒH I
bool
ƒƒJ N
reset
ƒƒO T
=
ƒƒU V
false
ƒƒW \
)
ƒƒ\ ]
{
≈≈ 	
var
∆∆ 
sentTime
∆∆ 
=
∆∆ 
newState
∆∆ #
.
∆∆# $
SentTime
∆∆$ ,
;
∆∆, -
if
»» 
(
»» 
reset
»» 
)
»» 
{
…… 
if
   
(
   
newState
   
.
   
HasPositionX
   )
)
  ) *
{
ÀÀ %
m_PositionXInterpolator
ÃÃ +
.
ÃÃ+ ,
ResetTo
ÃÃ, 3
(
ÃÃ3 4
newState
ÃÃ4 <
.
ÃÃ< =
	PositionX
ÃÃ= F
,
ÃÃF G
sentTime
ÃÃH P
)
ÃÃP Q
;
ÃÃQ R
}
ÕÕ 
if
œœ 
(
œœ 
newState
œœ 
.
œœ 
HasPositionY
œœ )
)
œœ) *
{
–– %
m_PositionYInterpolator
—— +
.
——+ ,
ResetTo
——, 3
(
——3 4
newState
——4 <
.
——< =
	PositionY
——= F
,
——F G
sentTime
——H P
)
——P Q
;
——Q R
}
““ 
if
‘‘ 
(
‘‘ 
newState
‘‘ 
.
‘‘ 
HasPositionZ
‘‘ )
)
‘‘) *
{
’’ %
m_PositionZInterpolator
÷÷ +
.
÷÷+ ,
ResetTo
÷÷, 3
(
÷÷3 4
newState
÷÷4 <
.
÷÷< =
	PositionZ
÷÷= F
,
÷÷F G
sentTime
÷÷H P
)
÷÷P Q
;
÷÷Q R
}
◊◊ $
m_RotationInterpolator
ŸŸ &
.
ŸŸ& '
ResetTo
ŸŸ' .
(
ŸŸ. /

Quaternion
ŸŸ/ 9
.
ŸŸ9 :
Euler
ŸŸ: ?
(
ŸŸ? @
newState
ŸŸ@ H
.
ŸŸH I
Rotation
ŸŸI Q
)
ŸŸQ R
,
ŸŸR S
sentTime
ŸŸT \
)
ŸŸ\ ]
;
ŸŸ] ^
if
€€ 
(
€€ 
newState
€€ 
.
€€ 
	HasScaleX
€€ &
)
€€& '
{
‹‹ "
m_ScaleXInterpolator
›› (
.
››( )
ResetTo
››) 0
(
››0 1
newState
››1 9
.
››9 :
ScaleX
››: @
,
››@ A
sentTime
››B J
)
››J K
;
››K L
}
ﬁﬁ 
if
‡‡ 
(
‡‡ 
newState
‡‡ 
.
‡‡ 
	HasScaleY
‡‡ &
)
‡‡& '
{
·· "
m_ScaleYInterpolator
‚‚ (
.
‚‚( )
ResetTo
‚‚) 0
(
‚‚0 1
newState
‚‚1 9
.
‚‚9 :
ScaleY
‚‚: @
,
‚‚@ A
sentTime
‚‚B J
)
‚‚J K
;
‚‚K L
}
„„ 
if
ÂÂ 
(
ÂÂ 
newState
ÂÂ 
.
ÂÂ 
	HasScaleZ
ÂÂ &
)
ÂÂ& '
{
ÊÊ "
m_ScaleZInterpolator
ÁÁ (
.
ÁÁ( )
ResetTo
ÁÁ) 0
(
ÁÁ0 1
newState
ÁÁ1 9
.
ÁÁ9 :
ScaleZ
ÁÁ: @
,
ÁÁ@ A
sentTime
ÁÁB J
)
ÁÁJ K
;
ÁÁK L
}
ËË 
return
ÍÍ 
;
ÍÍ 
}
ÎÎ 
if
ÏÏ 
(
ÏÏ 
newState
ÏÏ 
.
ÏÏ 
HasPositionX
ÏÏ %
)
ÏÏ% &
{
ÌÌ %
m_PositionXInterpolator
ÓÓ '
.
ÓÓ' (
AddMeasurement
ÓÓ( 6
(
ÓÓ6 7
newState
ÓÓ7 ?
.
ÓÓ? @
	PositionX
ÓÓ@ I
,
ÓÓI J
sentTime
ÓÓK S
)
ÓÓS T
;
ÓÓT U
}
ÔÔ 
if
ÒÒ 
(
ÒÒ 
newState
ÒÒ 
.
ÒÒ 
HasPositionY
ÒÒ %
)
ÒÒ% &
{
ÚÚ %
m_PositionYInterpolator
ÛÛ '
.
ÛÛ' (
AddMeasurement
ÛÛ( 6
(
ÛÛ6 7
newState
ÛÛ7 ?
.
ÛÛ? @
	PositionY
ÛÛ@ I
,
ÛÛI J
sentTime
ÛÛK S
)
ÛÛS T
;
ÛÛT U
}
ÙÙ 
if
ˆˆ 
(
ˆˆ 
newState
ˆˆ 
.
ˆˆ 
HasPositionZ
ˆˆ %
)
ˆˆ% &
{
˜˜ %
m_PositionZInterpolator
¯¯ '
.
¯¯' (
AddMeasurement
¯¯( 6
(
¯¯6 7
newState
¯¯7 ?
.
¯¯? @
	PositionZ
¯¯@ I
,
¯¯I J
sentTime
¯¯K S
)
¯¯S T
;
¯¯T U
}
˘˘ $
m_RotationInterpolator
˚˚ "
.
˚˚" #
AddMeasurement
˚˚# 1
(
˚˚1 2

Quaternion
˚˚2 <
.
˚˚< =
Euler
˚˚= B
(
˚˚B C
newState
˚˚C K
.
˚˚K L
Rotation
˚˚L T
)
˚˚T U
,
˚˚U V
sentTime
˚˚W _
)
˚˚_ `
;
˚˚` a
if
˝˝ 
(
˝˝ 
newState
˝˝ 
.
˝˝ 
	HasScaleX
˝˝ "
)
˝˝" #
{
˛˛ "
m_ScaleXInterpolator
ˇˇ $
.
ˇˇ$ %
AddMeasurement
ˇˇ% 3
(
ˇˇ3 4
newState
ˇˇ4 <
.
ˇˇ< =
ScaleX
ˇˇ= C
,
ˇˇC D
sentTime
ˇˇE M
)
ˇˇM N
;
ˇˇN O
}
ÄÄ 
if
ÇÇ 
(
ÇÇ 
newState
ÇÇ 
.
ÇÇ 
	HasScaleY
ÇÇ "
)
ÇÇ" #
{
ÉÉ "
m_ScaleYInterpolator
ÑÑ $
.
ÑÑ$ %
AddMeasurement
ÑÑ% 3
(
ÑÑ3 4
newState
ÑÑ4 <
.
ÑÑ< =
ScaleY
ÑÑ= C
,
ÑÑC D
sentTime
ÑÑE M
)
ÑÑM N
;
ÑÑN O
}
ÖÖ 
if
áá 
(
áá 
newState
áá 
.
áá 
	HasScaleZ
áá "
)
áá" #
{
àà "
m_ScaleZInterpolator
ââ $
.
ââ$ %
AddMeasurement
ââ% 3
(
ââ3 4
newState
ââ4 <
.
ââ< =
ScaleZ
ââ= C
,
ââC D
sentTime
ââE M
)
ââM N
;
ââN O
}
ää 
}
ãã 	
private
çç 
void
çç #
OnNetworkStateChanged
çç *
(
çç* +#
NetworkTransformState
çç+ @
oldState
ççA I
,
ççI J#
NetworkTransformState
ççK `
newState
çça i
)
ççi j
{
éé 	
if
èè 
(
èè 
!
èè 
NetworkObject
èè 
.
èè 
	IsSpawned
èè (
)
èè( )
{
êê 
return
ëë 
;
ëë 
}
íí 
if
îî 
(
îî "
CanCommitToTransform
îî $
)
îî$ %
{
ïï 
return
óó 
;
óó 
}
òò 
if
öö 
(
öö 
Interpolate
öö 
)
öö 
{
õõ "
AddInterpolatedState
úú $
(
úú$ %
newState
úú% -
,
úú- .
(
úú/ 0
newState
úú0 8
.
úú8 9
InLocalSpace
úú9 E
!=
úúF H$
m_LastInterpolateLocal
úúI _
)
úú_ `
)
úú` a
;
úúa b
}
ùù $
m_LastInterpolateLocal
ûû "
=
ûû# $
newState
ûû% -
.
ûû- .
InLocalSpace
ûû. :
;
ûû: ;
if
†† 
(
†† $
m_CachedNetworkManager
†† &
.
††& '
LogLevel
††' /
==
††0 2
LogLevel
††3 ;
.
††; <
	Developer
††< E
)
††E F
{
°° 
var
¢¢ 
pos
¢¢ 
=
¢¢ 
new
¢¢ 
Vector3
¢¢ %
(
¢¢% &
newState
¢¢& .
.
¢¢. /
	PositionX
¢¢/ 8
,
¢¢8 9
newState
¢¢: B
.
¢¢B C
	PositionY
¢¢C L
,
¢¢L M
newState
¢¢N V
.
¢¢V W
	PositionZ
¢¢W `
)
¢¢` a
;
¢¢a b
}
££ 
}
§§ 	
public
≠≠ 
void
≠≠ &
SetMaxInterpolationBound
≠≠ ,
(
≠≠, -
float
≠≠- 2#
maxInterpolationBound
≠≠3 H
)
≠≠H I
{
ÆÆ 	%
m_PositionXInterpolator
ØØ #
.
ØØ# $#
MaxInterpolationBound
ØØ$ 9
=
ØØ: ;#
maxInterpolationBound
ØØ< Q
;
ØØQ R%
m_PositionYInterpolator
∞∞ #
.
∞∞# $#
MaxInterpolationBound
∞∞$ 9
=
∞∞: ;#
maxInterpolationBound
∞∞< Q
;
∞∞Q R%
m_PositionZInterpolator
±± #
.
±±# $#
MaxInterpolationBound
±±$ 9
=
±±: ;#
maxInterpolationBound
±±< Q
;
±±Q R$
m_RotationInterpolator
≤≤ "
.
≤≤" ##
MaxInterpolationBound
≤≤# 8
=
≤≤9 :#
maxInterpolationBound
≤≤; P
;
≤≤P Q"
m_ScaleXInterpolator
≥≥  
.
≥≥  !#
MaxInterpolationBound
≥≥! 6
=
≥≥7 8#
maxInterpolationBound
≥≥9 N
;
≥≥N O"
m_ScaleYInterpolator
¥¥  
.
¥¥  !#
MaxInterpolationBound
¥¥! 6
=
¥¥7 8#
maxInterpolationBound
¥¥9 N
;
¥¥N O"
m_ScaleZInterpolator
µµ  
.
µµ  !#
MaxInterpolationBound
µµ! 6
=
µµ7 8#
maxInterpolationBound
µµ9 N
;
µµN O
}
∂∂ 	
private
∏∏ 
void
∏∏ 
Awake
∏∏ 
(
∏∏ 
)
∏∏ 
{
ππ 	%
m_PositionXInterpolator
ºº #
=
ºº$ %
new
ºº& )-
BufferedLinearInterpolatorFloat
ºº* I
(
ººI J
)
ººJ K
;
ººK L%
m_PositionYInterpolator
ΩΩ #
=
ΩΩ$ %
new
ΩΩ& )-
BufferedLinearInterpolatorFloat
ΩΩ* I
(
ΩΩI J
)
ΩΩJ K
;
ΩΩK L%
m_PositionZInterpolator
ææ #
=
ææ$ %
new
ææ& )-
BufferedLinearInterpolatorFloat
ææ* I
(
ææI J
)
ææJ K
;
ææK L$
m_RotationInterpolator
øø "
=
øø# $
new
øø% (2
$BufferedLinearInterpolatorQuaternion
øø) M
(
øøM N
)
øøN O
;
øøO P"
m_ScaleXInterpolator
¿¿  
=
¿¿! "
new
¿¿# &-
BufferedLinearInterpolatorFloat
¿¿' F
(
¿¿F G
)
¿¿G H
;
¿¿H I"
m_ScaleYInterpolator
¡¡  
=
¡¡! "
new
¡¡# &-
BufferedLinearInterpolatorFloat
¡¡' F
(
¡¡F G
)
¡¡G H
;
¡¡H I"
m_ScaleZInterpolator
¬¬  
=
¬¬! "
new
¬¬# &-
BufferedLinearInterpolatorFloat
¬¬' F
(
¬¬F G
)
¬¬G H
;
¬¬H I
if
ƒƒ 
(
ƒƒ %
m_AllFloatInterpolators
ƒƒ '
.
ƒƒ' (
Count
ƒƒ( -
==
ƒƒ. 0
$num
ƒƒ1 2
)
ƒƒ2 3
{
≈≈ %
m_AllFloatInterpolators
∆∆ '
.
∆∆' (
Add
∆∆( +
(
∆∆+ ,%
m_PositionXInterpolator
∆∆, C
)
∆∆C D
;
∆∆D E%
m_AllFloatInterpolators
«« '
.
««' (
Add
««( +
(
««+ ,%
m_PositionYInterpolator
««, C
)
««C D
;
««D E%
m_AllFloatInterpolators
»» '
.
»»' (
Add
»»( +
(
»»+ ,%
m_PositionZInterpolator
»», C
)
»»C D
;
»»D E%
m_AllFloatInterpolators
…… '
.
……' (
Add
……( +
(
……+ ,"
m_ScaleXInterpolator
……, @
)
……@ A
;
……A B%
m_AllFloatInterpolators
   '
.
  ' (
Add
  ( +
(
  + ,"
m_ScaleYInterpolator
  , @
)
  @ A
;
  A B%
m_AllFloatInterpolators
ÀÀ '
.
ÀÀ' (
Add
ÀÀ( +
(
ÀÀ+ ,"
m_ScaleZInterpolator
ÀÀ, @
)
ÀÀ@ A
;
ÀÀA B
}
ÃÃ 
}
ÕÕ 	
public
—— 
override
—— 
void
—— 
OnNetworkSpawn
—— +
(
——+ ,
)
——, -
{
““ 	
m_Transform
÷÷ 
=
÷÷ 
	transform
÷÷ #
;
÷÷# $&
m_ReplicatedNetworkState
◊◊ $
.
◊◊$ %
OnValueChanged
◊◊% 3
+=
◊◊4 6#
OnNetworkStateChanged
◊◊7 L
;
◊◊L M"
CanCommitToTransform
ŸŸ  
=
ŸŸ! "
IsServer
ŸŸ# +
;
ŸŸ+ ,
m_CachedIsServer
⁄⁄ 
=
⁄⁄ 
IsServer
⁄⁄ '
;
⁄⁄' ($
m_CachedNetworkManager
€€ "
=
€€# $
NetworkManager
€€% 3
;
€€3 4
if
›› 
(
›› "
CanCommitToTransform
›› $
)
››$ %
{
ﬁﬁ (
TryCommitTransformToServer
ﬂﬂ *
(
ﬂﬂ* +
m_Transform
ﬂﬂ+ 6
,
ﬂﬂ6 7$
m_CachedNetworkManager
ﬂﬂ8 N
.
ﬂﬂN O
	LocalTime
ﬂﬂO X
.
ﬂﬂX Y
Time
ﬂﬂY ]
)
ﬂﬂ] ^
;
ﬂﬂ^ _
}
‡‡ .
 m_LocalAuthoritativeNetworkState
·· ,
=
··- .&
m_ReplicatedNetworkState
··/ G
.
··G H
Value
··H M
;
··M N

Initialize
ÂÂ 
(
ÂÂ 
)
ÂÂ 
;
ÂÂ 
}
ÊÊ 	
public
ÈÈ 
override
ÈÈ 
void
ÈÈ 
OnNetworkDespawn
ÈÈ -
(
ÈÈ- .
)
ÈÈ. /
{
ÍÍ 	&
m_ReplicatedNetworkState
ÎÎ $
.
ÎÎ$ %
OnValueChanged
ÎÎ% 3
-=
ÎÎ4 6#
OnNetworkStateChanged
ÎÎ7 L
;
ÎÎL M
}
ÏÏ 	
public
ÔÔ 
override
ÔÔ 
void
ÔÔ 
OnGainedOwnership
ÔÔ .
(
ÔÔ. /
)
ÔÔ/ 0
{
 	

Initialize
ÒÒ 
(
ÒÒ 
)
ÒÒ 
;
ÒÒ 
}
ÚÚ 	
public
ıı 
override
ıı 
void
ıı 
OnLostOwnership
ıı ,
(
ıı, -
)
ıı- .
{
ˆˆ 	

Initialize
˜˜ 
(
˜˜ 
)
˜˜ 
;
˜˜ 
}
¯¯ 	
private
˙˙ 
void
˙˙ 

Initialize
˙˙ 
(
˙˙  
)
˙˙  !
{
˚˚ 	?
1ResetInterpolatedStateToCurrentAuthoritativeState
¸¸ =
(
¸¸= >
)
¸¸> ?
;
¸¸? @
if
˛˛ 
(
˛˛ "
CanCommitToTransform
˛˛ $
)
˛˛$ %
{
ˇˇ &
m_ReplicatedNetworkState
ÄÄ (
.
ÄÄ( )
SetDirty
ÄÄ) 1
(
ÄÄ1 2
true
ÄÄ2 6
)
ÄÄ6 7
;
ÄÄ7 8
}
ÅÅ 
else
ÇÇ 
if
ÇÇ 
(
ÇÇ 
m_Transform
ÇÇ  
!=
ÇÇ! #
null
ÇÇ$ (
)
ÇÇ( )
{
ÉÉ 6
(ApplyInterpolatedNetworkStateToTransform
ÑÑ 8
(
ÑÑ8 9&
m_ReplicatedNetworkState
ÑÑ9 Q
.
ÑÑQ R
Value
ÑÑR W
,
ÑÑW X
m_Transform
ÑÑY d
)
ÑÑd e
;
ÑÑe f
}
ÖÖ 
}
ÜÜ 	
public
ïï 
void
ïï 
SetState
ïï 
(
ïï 
Vector3
ïï $
?
ïï$ %
posIn
ïï& +
=
ïï, -
null
ïï. 2
,
ïï2 3

Quaternion
ïï4 >
?
ïï> ?
rotIn
ïï@ E
=
ïïF G
null
ïïH L
,
ïïL M
Vector3
ïïN U
?
ïïU V
scaleIn
ïïW ^
=
ïï_ `
null
ïïa e
,
ïïe f
bool
ïïg k&
shouldGhostsInterpolateïïl É
=ïïÑ Ö
trueïïÜ ä
)ïïä ã
{
ññ 	
if
óó 
(
óó 
!
óó 
IsOwner
óó 
)
óó 
{
òò 
throw
ôô 
new
ôô 
	Exception
ôô #
(
ôô# $
$str
ôô$ T
)
ôôT U
;
ôôU V
}
öö 
if
úú 
(
úú $
m_CachedNetworkManager
úú &
&&
úú' )
!
úú* +
(
úú+ ,$
m_CachedNetworkManager
úú, B
.
úúB C
IsConnectedClient
úúC T
||
úúU W$
m_CachedNetworkManager
úúX n
.
úún o
IsListening
úúo z
)
úúz {
)
úú{ |
{
ùù 
return
ûû 
;
ûû 
}
üü 
Vector3
°° 
pos
°° 
=
°° 
posIn
°° 
==
°°  "
null
°°# '
?
°°( )
	transform
°°* 3
.
°°3 4
position
°°4 <
:
°°= >
(
°°? @
Vector3
°°@ G
)
°°G H
posIn
°°H M
;
°°M N

Quaternion
¢¢ 
rot
¢¢ 
=
¢¢ 
rotIn
¢¢ "
==
¢¢# %
null
¢¢& *
?
¢¢+ ,
	transform
¢¢- 6
.
¢¢6 7
rotation
¢¢7 ?
:
¢¢@ A
(
¢¢B C

Quaternion
¢¢C M
)
¢¢M N
rotIn
¢¢N S
;
¢¢S T
Vector3
££ 
scale
££ 
=
££ 
scaleIn
££ #
==
££$ &
null
££' +
?
££, -
	transform
££. 7
.
££7 8

localScale
££8 B
:
££C D
(
££E F
Vector3
££F M
)
££M N
scaleIn
££N U
;
££U V
if
•• 
(
•• 
!
•• "
CanCommitToTransform
•• %
)
••% &
{
¶¶ 
if
ßß 
(
ßß 
!
ßß 
m_CachedIsServer
ßß %
)
ßß% &
{
®® 
SetStateServerRpc
©© %
(
©©% &
pos
©©& )
,
©©) *
rot
©©+ .
,
©©. /
scale
©©0 5
,
©©5 6%
shouldGhostsInterpolate
©©7 N
)
©©N O
;
©©O P
}
™™ 
}
´´ 
else
¨¨ 
{
≠≠ 
m_Transform
ÆÆ 
.
ÆÆ 
position
ÆÆ $
=
ÆÆ% &
pos
ÆÆ' *
;
ÆÆ* +
m_Transform
ØØ 
.
ØØ 
rotation
ØØ $
=
ØØ% &
rot
ØØ' *
;
ØØ* +
m_Transform
∞∞ 
.
∞∞ 

localScale
∞∞ &
=
∞∞' (
scale
∞∞) .
;
∞∞. /.
 m_LocalAuthoritativeNetworkState
±± 0
.
±±0 1$
IsTeleportingNextFrame
±±1 G
=
±±H I%
shouldGhostsInterpolate
±±J a
;
±±a b
}
≤≤ 
}
≥≥ 	
[
µµ 	
	ServerRpc
µµ	 
]
µµ 
private
∂∂ 
void
∂∂ 
SetStateServerRpc
∂∂ &
(
∂∂& '
Vector3
∂∂' .
pos
∂∂/ 2
,
∂∂2 3

Quaternion
∂∂4 >
rot
∂∂? B
,
∂∂B C
Vector3
∂∂D K
scale
∂∂L Q
,
∂∂Q R
bool
∂∂S W
shouldTeleport
∂∂X f
)
∂∂f g
{
∑∑ 	
if
ππ 
(
ππ #
OnClientRequestChange
ππ %
!=
ππ& (
null
ππ) -
)
ππ- .
{
∫∫ 
(
ªª 
pos
ªª 
,
ªª 
rot
ªª 
,
ªª 
scale
ªª  
)
ªª  !
=
ªª" ##
OnClientRequestChange
ªª$ 9
(
ªª9 :
pos
ªª: =
,
ªª= >
rot
ªª? B
,
ªªB C
scale
ªªD I
)
ªªI J
;
ªªJ K
}
ºº 
m_Transform
ΩΩ 
.
ΩΩ 
position
ΩΩ  
=
ΩΩ! "
pos
ΩΩ# &
;
ΩΩ& '
m_Transform
ææ 
.
ææ 
rotation
ææ  
=
ææ! "
rot
ææ# &
;
ææ& '
m_Transform
øø 
.
øø 

localScale
øø "
=
øø# $
scale
øø% *
;
øø* +.
 m_LocalAuthoritativeNetworkState
¿¿ ,
.
¿¿, -$
IsTeleportingNextFrame
¿¿- C
=
¿¿D E
shouldTeleport
¿¿F T
;
¿¿T U
}
¡¡ 	
	protected
∆∆ 
virtual
∆∆ 
void
∆∆ 
Update
∆∆ %
(
∆∆% &
)
∆∆& '
{
«« 	
if
»» 
(
»» 
!
»» 
	IsSpawned
»» 
)
»» 
{
…… 
return
   
;
   
}
ÀÀ 
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
Interpolate
ÕÕ 
&&
ÕÕ 
m_LastInterpolate
ÕÕ  1
)
ÕÕ1 2
{
ŒŒ 
foreach
–– 
(
–– 
var
–– 
interpolator
–– )
in
––* ,%
m_AllFloatInterpolators
––- D
)
––D E
{
—— 
interpolator
““  
.
““  !
Clear
““! &
(
““& '
)
““' (
;
““( )
}
”” 
}
‘‘ 
m_LastInterpolate
÷÷ 
=
÷÷ 
Interpolate
÷÷  +
;
÷÷+ ,
if
ÿÿ 
(
ÿÿ "
CanCommitToTransform
ÿÿ $
)
ÿÿ$ %
{
ŸŸ 
if
⁄⁄ 
(
⁄⁄ 
m_CachedIsServer
⁄⁄ $
)
⁄⁄$ %
{
€€ (
TryCommitTransformToServer
‹‹ .
(
‹‹. /
m_Transform
‹‹/ :
,
‹‹: ;$
m_CachedNetworkManager
‹‹< R
.
‹‹R S
	LocalTime
‹‹S \
.
‹‹\ ]
Time
‹‹] a
)
‹‹a b
;
‹‹b c
}
›› 
}
ﬁﬁ 
if
·· 
(
·· $
m_CachedNetworkManager
·· &
.
··& '
IsConnectedClient
··' 8
||
··9 ;$
m_CachedNetworkManager
··< R
.
··R S
IsListening
··S ^
)
··^ _
{
‚‚ 
var
‰‰ 
cachedDeltaTime
‰‰ #
=
‰‰$ %
Time
‰‰& *
.
‰‰* +
	deltaTime
‰‰+ 4
;
‰‰4 5
var
ÂÂ 

serverTime
ÂÂ 
=
ÂÂ  
NetworkManager
ÂÂ! /
.
ÂÂ/ 0

ServerTime
ÂÂ0 :
;
ÂÂ: ;
var
ÊÊ 
cachedServerTime
ÊÊ $
=
ÊÊ% &

serverTime
ÊÊ' 1
.
ÊÊ1 2
Time
ÊÊ2 6
;
ÊÊ6 7
var
ÁÁ 
cachedRenderTime
ÁÁ $
=
ÁÁ% &

serverTime
ÁÁ' 1
.
ÁÁ1 2
TimeTicksAgo
ÁÁ2 >
(
ÁÁ> ?
$num
ÁÁ? @
)
ÁÁ@ A
.
ÁÁA B
Time
ÁÁB F
;
ÁÁF G
if
ÈÈ 
(
ÈÈ 
Interpolate
ÈÈ 
)
ÈÈ  
{
ÍÍ 
foreach
ÎÎ 
(
ÎÎ 
var
ÎÎ  
interpolator
ÎÎ! -
in
ÎÎ. 0%
m_AllFloatInterpolators
ÎÎ1 H
)
ÎÎH I
{
ÏÏ 
interpolator
ÌÌ $
.
ÌÌ$ %
Update
ÌÌ% +
(
ÌÌ+ ,
cachedDeltaTime
ÌÌ, ;
,
ÌÌ; <
cachedRenderTime
ÌÌ= M
,
ÌÌM N
cachedServerTime
ÌÌO _
)
ÌÌ_ `
;
ÌÌ` a
}
ÓÓ $
m_RotationInterpolator
 *
.
* +
Update
+ 1
(
1 2
cachedDeltaTime
2 A
,
A B
cachedRenderTime
C S
,
S T
cachedServerTime
U e
)
e f
;
f g
}
ÒÒ 
if
ÛÛ 
(
ÛÛ 
!
ÛÛ "
CanCommitToTransform
ÛÛ )
)
ÛÛ) *
{
ÙÙ 6
(ApplyInterpolatedNetworkStateToTransform
ˆˆ <
(
ˆˆ< =&
m_ReplicatedNetworkState
ˆˆ= U
.
ˆˆU V
Value
ˆˆV [
,
ˆˆ[ \
m_Transform
ˆˆ] h
)
ˆˆh i
;
ˆˆi j
}
˜˜ 
}
¯¯ .
 m_LocalAuthoritativeNetworkState
˘˘ ,
.
˘˘, -$
IsTeleportingNextFrame
˘˘- C
=
˘˘D E
false
˘˘F K
;
˘˘K L
}
˙˙ 	
public
ÉÉ 
void
ÉÉ 
Teleport
ÉÉ 
(
ÉÉ 
Vector3
ÉÉ $
newPosition
ÉÉ% 0
,
ÉÉ0 1

Quaternion
ÉÉ2 <
newRotation
ÉÉ= H
,
ÉÉH I
Vector3
ÉÉJ Q
newScale
ÉÉR Z
)
ÉÉZ [
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
!
ÖÖ "
CanCommitToTransform
ÖÖ %
)
ÖÖ% &
{
ÜÜ 
throw
áá 
new
áá 
	Exception
áá #
(
áá# $
$str
áá$ :
)
áá: ;
;
áá; <
}
àà 
var
ää 
newRotationEuler
ää  
=
ää! "
newRotation
ää# .
.
ää. /
eulerAngles
ää/ :
;
ää: ;
var
ãã 
stateToSend
ãã 
=
ãã .
 m_LocalAuthoritativeNetworkState
ãã >
;
ãã> ?
stateToSend
åå 
.
åå $
IsTeleportingNextFrame
åå .
=
åå/ 0
true
åå1 5
;
åå5 6
stateToSend
çç 
.
çç 
Position
çç  
=
çç! "
newPosition
çç# .
;
çç. /
stateToSend
éé 
.
éé 
Rotation
éé  
=
éé! "
newRotationEuler
éé# 3
;
éé3 4
stateToSend
èè 
.
èè 
Scale
èè 
=
èè 
newScale
èè  (
;
èè( )6
(ApplyInterpolatedNetworkStateToTransform
êê 4
(
êê4 5
stateToSend
êê5 @
,
êê@ A
	transform
êêB K
)
êêK L
;
êêL M.
 m_LocalAuthoritativeNetworkState
íí ,
.
íí, -$
IsTeleportingNextFrame
íí- C
=
ííD E
true
ííF J
;
ííJ K%
TryCommitValuesToServer
îî #
(
îî# $
newPosition
îî$ /
,
îî/ 0
newRotationEuler
îî1 A
,
îîA B
newScale
îîC K
,
îîK L$
m_CachedNetworkManager
îîM c
.
îîc d
	LocalTime
îîd m
.
îîm n
Time
îîn r
)
îîr s
;
îîs t.
 m_LocalAuthoritativeNetworkState
ïï ,
.
ïï, -$
IsTeleportingNextFrame
ïï- C
=
ïïD E
false
ïïF K
;
ïïK L
}
ññ 	
	protected
úú 
virtual
úú 
bool
úú %
OnIsServerAuthoritative
úú 6
(
úú6 7
)
úú7 8
{
ùù 	
return
ûû 
true
ûû 
;
ûû 
}
üü 	
internal
§§ 
bool
§§ #
IsServerAuthoritative
§§ +
(
§§+ ,
)
§§, -
{
•• 	
return
¶¶ %
OnIsServerAuthoritative
¶¶ *
(
¶¶* +
)
¶¶+ ,
;
¶¶, -
}
ßß 	
}
®® 
}©© Åá
C:\code\ispclone\Library\PackageCache\com.unity.netcode.gameobjects@1.0.0\Components\Interpolator\BufferedLinearInterpolator.cs
	namespace 	
Unity
 
. 
Netcode 
{ 
public 

abstract 
class &
BufferedLinearInterpolator 4
<4 5
T5 6
>6 7
where8 =
T> ?
:@ A
structB H
{ 
internal 
float !
MaxInterpolationBound ,
=- .
$num/ 3
;3 4
private 
struct 
BufferedItem #
{ 	
public 
T 
Item 
; 
public 
double 
TimeSent "
;" #
public 
BufferedItem 
(  
T  !
item" &
,& '
double( .
timeSent/ 7
)7 8
{ 
Item 
= 
item 
; 
TimeSent 
= 
timeSent #
;# $
} 
} 	
public 
float $
MaximumInterpolationTime -
=. /
$num0 4
;4 5
private   
const   
double   
k_SmallValue   )
=  * +
$num  , A
;  A B
private"" 
T"" 
m_InterpStartValue"" $
;""$ %
private## 
T##  
m_CurrentInterpValue## &
;##& '
private$$ 
T$$ 
m_InterpEndValue$$ "
;$$" #
private&& 
double&& 
m_EndTimeConsumed&& (
;&&( )
private'' 
double'' 
m_StartTimeConsumed'' *
;''* +
private)) 
readonly)) 
List)) 
<)) 
BufferedItem)) *
>))* +
m_Buffer)), 4
=))5 6
new))7 :
List)); ?
<))? @
BufferedItem))@ L
>))L M
())M N
k_BufferCountLimit))N `
)))` a
;))a b
privateDD 
constDD 
intDD 
k_BufferCountLimitDD ,
=DD- .
$numDD/ 2
;DD2 3
privateEE 
BufferedItemEE &
m_LastBufferedItemReceivedEE 7
;EE7 8
privateFF 
intFF &
m_NbItemsReceivedThisFrameFF .
;FF. /
privateHH 
intHH #
m_LifetimeConsumedCountHH +
;HH+ ,
privateJJ 
boolJJ 
InvalidStateJJ !
=>JJ" $
m_BufferJJ% -
.JJ- .
CountJJ. 3
==JJ4 6
$numJJ7 8
&&JJ9 ;#
m_LifetimeConsumedCountJJ< S
==JJT V
$numJJW X
;JJX Y
publicOO 
voidOO 
ClearOO 
(OO 
)OO 
{PP 	
m_BufferQQ 
.QQ 
ClearQQ 
(QQ 
)QQ 
;QQ 
m_EndTimeConsumedRR 
=RR 
$numRR  $
;RR$ %
m_StartTimeConsumedSS 
=SS  !
$numSS" &
;SS& '
}TT 	
public[[ 
void[[ 
ResetTo[[ 
([[ 
T[[ 
targetValue[[ )
,[[) *
double[[+ 1

serverTime[[2 <
)[[< =
{\\ 	#
m_LifetimeConsumedCount]] #
=]]$ %
$num]]& '
;]]' (
m_InterpStartValue^^ 
=^^  
targetValue^^! ,
;^^, -
m_InterpEndValue__ 
=__ 
targetValue__ *
;__* + 
m_CurrentInterpValue``  
=``! "
targetValue``# .
;``. /
m_Bufferaa 
.aa 
Clearaa 
(aa 
)aa 
;aa 
m_EndTimeConsumedbb 
=bb 
$numbb  $
;bb$ %
m_StartTimeConsumedcc 
=cc  !
$numcc" &
;cc& '
Updateee 
(ee 
$numee 
,ee 

serverTimeee  
,ee  !

serverTimeee" ,
)ee, -
;ee- .
}ff 	
privateii 
voidii  
TryConsumeFromBufferii )
(ii) *
doubleii* 0

renderTimeii1 ;
,ii; <
doubleii= C

serverTimeiiD N
)iiN O
{jj 	
intkk 
consumedCountkk 
=kk 
$numkk  !
;kk! "
ifrr 
(rr 

renderTimerr 
>=rr 
m_EndTimeConsumedrr /
)rr/ 0
{ss 
BufferedItemtt 
?tt 
itemToInterpolateTott 1
=tt2 3
nulltt4 8
;tt8 9
foryy 
(yy 
intyy 
iyy 
=yy 
m_Bufferyy %
.yy% &
Countyy& +
-yy, -
$numyy. /
;yy/ 0
iyy1 2
>=yy3 5
$numyy6 7
;yy7 8
iyy9 :
--yy: <
)yy< =
{zz 
var{{ 
bufferedValue{{ %
={{& '
m_Buffer{{( 0
[{{0 1
i{{1 2
]{{2 3
;{{3 4
if}} 
(}} 
bufferedValue}} %
.}}% &
TimeSent}}& .
<=}}/ 1

serverTime}}2 <
)}}< =
{~~ 
if 
( 
! 
itemToInterpolateTo 0
.0 1
HasValue1 9
||: <
bufferedValue= J
.J K
TimeSentK S
>T U
itemToInterpolateToV i
.i j
Valuej o
.o p
TimeSentp x
)x y
{
ÄÄ 
if
ÅÅ 
(
ÅÅ  %
m_LifetimeConsumedCount
ÅÅ  7
==
ÅÅ8 :
$num
ÅÅ; <
)
ÅÅ< =
{
ÇÇ !
m_StartTimeConsumed
ÑÑ  3
=
ÑÑ4 5
bufferedValue
ÑÑ6 C
.
ÑÑC D
TimeSent
ÑÑD L
;
ÑÑL M 
m_InterpStartValue
ÖÖ  2
=
ÖÖ3 4
bufferedValue
ÖÖ5 B
.
ÖÖB C
Item
ÖÖC G
;
ÖÖG H
}
ÜÜ 
else
áá  
if
áá! #
(
áá$ %
consumedCount
áá% 2
==
áá3 5
$num
áá6 7
)
áá7 8
{
àà !
m_StartTimeConsumed
ää  3
=
ää4 5
m_EndTimeConsumed
ää6 G
;
ääG H 
m_InterpStartValue
ãã  2
=
ãã3 4
m_InterpEndValue
ãã5 E
;
ããE F
}
åå 
if
éé 
(
éé  
bufferedValue
éé  -
.
éé- .
TimeSent
éé. 6
>
éé7 8
m_EndTimeConsumed
éé9 J
)
ééJ K
{
èè !
itemToInterpolateTo
êê  3
=
êê4 5
bufferedValue
êê6 C
;
êêC D
m_EndTimeConsumed
ëë  1
=
ëë2 3
bufferedValue
ëë4 A
.
ëëA B
TimeSent
ëëB J
;
ëëJ K
m_InterpEndValue
íí  0
=
íí1 2
bufferedValue
íí3 @
.
íí@ A
Item
ííA E
;
ííE F
}
ìì 
}
îî 
m_Buffer
ññ  
.
ññ  !
RemoveAt
ññ! )
(
ññ) *
i
ññ* +
)
ññ+ ,
;
ññ, -
consumedCount
óó %
++
óó% '
;
óó' (%
m_LifetimeConsumedCount
òò /
++
òò/ 1
;
òò1 2
}
ôô 
}
öö 
}
õõ 
}
úú 	
public
¶¶ 
T
¶¶ 
Update
¶¶ 
(
¶¶ 
float
¶¶ 
	deltaTime
¶¶ '
,
¶¶' (
NetworkTime
¶¶) 4

serverTime
¶¶5 ?
)
¶¶? @
{
ßß 	
return
®® 
Update
®® 
(
®® 
	deltaTime
®® #
,
®®# $

serverTime
®®% /
.
®®/ 0
TimeTicksAgo
®®0 <
(
®®< =
$num
®®= >
)
®®> ?
.
®®? @
Time
®®@ D
,
®®D E

serverTime
®®F P
.
®®P Q
Time
®®Q U
)
®®U V
;
®®V W
}
©© 	
public
≤≤ 
T
≤≤ 
Update
≤≤ 
(
≤≤ 
float
≤≤ 
	deltaTime
≤≤ '
,
≤≤' (
double
≤≤) /

renderTime
≤≤0 :
,
≤≤: ;
double
≤≤< B

serverTime
≤≤C M
)
≤≤M N
{
≥≥ 	"
TryConsumeFromBuffer
¥¥  
(
¥¥  !

renderTime
¥¥! +
,
¥¥+ ,

serverTime
¥¥- 7
)
¥¥7 8
;
¥¥8 9
if
∂∂ 
(
∂∂ 
InvalidState
∂∂ 
)
∂∂ 
{
∑∑ 
throw
∏∏ 
new
∏∏ '
InvalidOperationException
∏∏ 3
(
∏∏3 4
$str
∏∏4 y
)
∏∏y z
;
∏∏z {
}
ππ 
if
¿¿ 
(
¿¿ %
m_LifetimeConsumedCount
¿¿ '
>=
¿¿( *
$num
¿¿+ ,
)
¿¿, -
{
¡¡ 
float
¬¬ 
t
¬¬ 
=
¬¬ 
$num
¬¬ 
;
¬¬ 
double
√√ 
range
√√ 
=
√√ 
m_EndTimeConsumed
√√ 0
-
√√1 2!
m_StartTimeConsumed
√√3 F
;
√√F G
if
ƒƒ 
(
ƒƒ 
range
ƒƒ 
>
ƒƒ 
k_SmallValue
ƒƒ (
)
ƒƒ( )
{
≈≈ 
t
∆∆ 
=
∆∆ 
(
∆∆ 
float
∆∆ 
)
∆∆ 
(
∆∆  
(
∆∆  !

renderTime
∆∆! +
-
∆∆, -!
m_StartTimeConsumed
∆∆. A
)
∆∆A B
/
∆∆C D
range
∆∆E J
)
∆∆J K
;
∆∆K L
if
»» 
(
»» 
t
»» 
<
»» 
$num
»»  
)
»»  !
{
…… 
if
ÕÕ 
(
ÕÕ 

NetworkLog
ÕÕ &
.
ÕÕ& '
CurrentLogLevel
ÕÕ' 6
<=
ÕÕ7 9
LogLevel
ÕÕ: B
.
ÕÕB C
	Developer
ÕÕC L
)
ÕÕL M
{
ŒŒ 

NetworkLog
œœ &
.
œœ& '
LogError
œœ' /
(
œœ/ 0
$"
œœ0 2
$str
œœ2 w
{
œœw x
nameof
œœx ~
(
œœ~ 

renderTimeœœ â
)œœâ ä
}œœä ã
$strœœã è
{œœè ê

renderTimeœœê ö
}œœö õ
$strœœõ ù
{œœù û
nameofœœû §
(œœ§ •#
m_StartTimeConsumedœœ• ∏
)œœ∏ π
}œœπ ∫
$strœœ∫ æ
{œœæ ø#
m_StartTimeConsumedœœø “
}œœ“ ”
"œœ” ‘
)œœ‘ ’
;œœ’ ÷
}
–– 
t
—— 
=
—— 
$num
——  
;
——  !
}
““ 
if
‘‘ 
(
‘‘ 
t
‘‘ 
>
‘‘ #
MaxInterpolationBound
‘‘ 1
)
‘‘1 2
{
’’ 
t
◊◊ 
=
◊◊ 
$num
◊◊  
;
◊◊  !
}
ÿÿ 
}
ŸŸ 
var
€€ 
target
€€ 
=
€€ "
InterpolateUnclamped
€€ 1
(
€€1 2 
m_InterpStartValue
€€2 D
,
€€D E
m_InterpEndValue
€€F V
,
€€V W
t
€€X Y
)
€€Y Z
;
€€Z ["
m_CurrentInterpValue
‹‹ $
=
‹‹% &
Interpolate
‹‹' 2
(
‹‹2 3"
m_CurrentInterpValue
‹‹3 G
,
‹‹G H
target
‹‹I O
,
‹‹O P
	deltaTime
‹‹Q Z
/
‹‹[ \&
MaximumInterpolationTime
‹‹] u
)
‹‹u v
;
‹‹v w
}
›› (
m_NbItemsReceivedThisFrame
ﬂﬂ &
=
ﬂﬂ' (
$num
ﬂﬂ) *
;
ﬂﬂ* +
return
‡‡ "
m_CurrentInterpValue
‡‡ '
;
‡‡' (
}
·· 	
public
ËË 
void
ËË 
AddMeasurement
ËË "
(
ËË" #
T
ËË# $
newMeasurement
ËË% 3
,
ËË3 4
double
ËË5 ;
sentTime
ËË< D
)
ËËD E
{
ÈÈ 	(
m_NbItemsReceivedThisFrame
ÍÍ &
++
ÍÍ& (
;
ÍÍ( )
if
ÓÓ 
(
ÓÓ (
m_NbItemsReceivedThisFrame
ÓÓ *
>
ÓÓ+ , 
k_BufferCountLimit
ÓÓ- ?
)
ÓÓ? @
{
ÔÔ 
if
 
(
 (
m_LastBufferedItemReceived
 .
.
. /
TimeSent
/ 7
<
8 9
sentTime
: B
)
B C
{
ÒÒ (
m_LastBufferedItemReceived
ÚÚ .
=
ÚÚ/ 0
new
ÚÚ1 4
BufferedItem
ÚÚ5 A
(
ÚÚA B
newMeasurement
ÚÚB P
,
ÚÚP Q
sentTime
ÚÚR Z
)
ÚÚZ [
;
ÚÚ[ \
ResetTo
ÛÛ 
(
ÛÛ 
newMeasurement
ÛÛ *
,
ÛÛ* +
sentTime
ÛÛ, 4
)
ÛÛ4 5
;
ÛÛ5 6
m_Buffer
ıı 
.
ıı 
Add
ıı  
(
ıı  !(
m_LastBufferedItemReceived
ıı! ;
)
ıı; <
;
ıı< =
}
ˆˆ 
return
¯¯ 
;
¯¯ 
}
˘˘ 
if
˚˚ 
(
˚˚ 
sentTime
˚˚ 
>
˚˚ 
m_EndTimeConsumed
˚˚ ,
||
˚˚- /%
m_LifetimeConsumedCount
˚˚0 G
==
˚˚H J
$num
˚˚K L
)
˚˚L M
{
¸¸ (
m_LastBufferedItemReceived
˝˝ *
=
˝˝+ ,
new
˝˝- 0
BufferedItem
˝˝1 =
(
˝˝= >
newMeasurement
˝˝> L
,
˝˝L M
sentTime
˝˝N V
)
˝˝V W
;
˝˝W X
m_Buffer
˛˛ 
.
˛˛ 
Add
˛˛ 
(
˛˛ (
m_LastBufferedItemReceived
˛˛ 7
)
˛˛7 8
;
˛˛8 9
}
ˇˇ 
}
ÄÄ 	
public
ÜÜ 
T
ÜÜ "
GetInterpolatedValue
ÜÜ %
(
ÜÜ% &
)
ÜÜ& '
{
áá 	
return
àà "
m_CurrentInterpValue
àà '
;
àà' (
}
ââ 	
	protected
íí 
abstract
íí 
T
íí 
Interpolate
íí (
(
íí( )
T
íí) *
start
íí+ 0
,
íí0 1
T
íí2 3
end
íí4 7
,
íí7 8
float
íí9 >
time
íí? C
)
ííC D
;
ííD E
	protected
õõ 
abstract
õõ 
T
õõ "
InterpolateUnclamped
õõ 1
(
õõ1 2
T
õõ2 3
start
õõ4 9
,
õõ9 :
T
õõ; <
end
õõ= @
,
õõ@ A
float
õõB G
time
õõH L
)
õõL M
;
õõM N
}
úú 
public
¢¢ 

class
¢¢ -
BufferedLinearInterpolatorFloat
¢¢ 0
:
¢¢1 2(
BufferedLinearInterpolator
¢¢3 M
<
¢¢M N
float
¢¢N S
>
¢¢S T
{
££ 
	protected
•• 
override
•• 
float
••  "
InterpolateUnclamped
••! 5
(
••5 6
float
••6 ;
start
••< A
,
••A B
float
••C H
end
••I L
,
••L M
float
••N S
time
••T X
)
••X Y
{
¶¶ 	
return
ßß 
Mathf
ßß 
.
ßß 
LerpUnclamped
ßß &
(
ßß& '
start
ßß' ,
,
ßß, -
end
ßß. 1
,
ßß1 2
time
ßß3 7
)
ßß7 8
;
ßß8 9
}
®® 	
	protected
´´ 
override
´´ 
float
´´  
Interpolate
´´! ,
(
´´, -
float
´´- 2
start
´´3 8
,
´´8 9
float
´´: ?
end
´´@ C
,
´´C D
float
´´E J
time
´´K O
)
´´O P
{
¨¨ 	
return
≠≠ 
Mathf
≠≠ 
.
≠≠ 
Lerp
≠≠ 
(
≠≠ 
start
≠≠ #
,
≠≠# $
end
≠≠% (
,
≠≠( )
time
≠≠* .
)
≠≠. /
;
≠≠/ 0
}
ÆÆ 	
}
ØØ 
public
µµ 

class
µµ 2
$BufferedLinearInterpolatorQuaternion
µµ 5
:
µµ6 7(
BufferedLinearInterpolator
µµ8 R
<
µµR S

Quaternion
µµS ]
>
µµ] ^
{
∂∂ 
	protected
∏∏ 
override
∏∏ 

Quaternion
∏∏ %"
InterpolateUnclamped
∏∏& :
(
∏∏: ;

Quaternion
∏∏; E
start
∏∏F K
,
∏∏K L

Quaternion
∏∏M W
end
∏∏X [
,
∏∏[ \
float
∏∏] b
time
∏∏c g
)
∏∏g h
{
ππ 	
return
∫∫ 

Quaternion
∫∫ 
.
∫∫ 
SlerpUnclamped
∫∫ ,
(
∫∫, -
start
∫∫- 2
,
∫∫2 3
end
∫∫4 7
,
∫∫7 8
time
∫∫9 =
)
∫∫= >
;
∫∫> ?
}
ªª 	
	protected
ææ 
override
ææ 

Quaternion
ææ %
Interpolate
ææ& 1
(
ææ1 2

Quaternion
ææ2 <
start
ææ= B
,
ææB C

Quaternion
ææD N
end
ææO R
,
ææR S
float
ææT Y
time
ææZ ^
)
ææ^ _
{
øø 	
return
¿¿ 

Quaternion
¿¿ 
.
¿¿ 
SlerpUnclamped
¿¿ ,
(
¿¿, -
start
¿¿- 2
,
¿¿2 3
end
¿¿4 7
,
¿¿7 8
time
¿¿9 =
)
¿¿= >
;
¿¿> ?
}
¡¡ 	
}
¬¬ 
}√√ 