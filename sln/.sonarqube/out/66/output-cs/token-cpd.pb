�!
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
}QQ �
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
; <��
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
IsServerAuthoritative	>>y �
(
>>� �
)
>>� �
&&
>>� �
m_NetworkAnimator
>>� �
.
>>� �
NetworkManager
>>� �
.
>>� �
IsServer
>>� �
)
>>� �
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
default	cc �
)
cc� �
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
animationMessage	eeu �
}
ee� �
)
ee� �
;
ee� �
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
clientRpcParams	ss{ �
=
ss� �
default
ss� �
)
ss� �
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
parametersUpdateMessage	uu| �
}
uu� �
)
uu� �
;
uu� �
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
ParametersUpdateMessage	xxs �
>
xx� �
(
xx� �
)
xx� �
;
xx� �
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
�� 
ClientRpcParams
�� "
ClientRpcParams
��# 2
;
��2 3
public
�� 
NetworkAnimator
�� "
.
��" #%
AnimationTriggerMessage
��# :%
AnimationTriggerMessage
��; R
;
��R S
}
�� 	
private
�� 
List
�� 
<
�� 
TriggerUpdate
�� "
>
��" #"
m_SendTriggerUpdates
��$ 8
=
��9 :
new
��; >
List
��? C
<
��C D
TriggerUpdate
��D Q
>
��Q R
(
��R S
)
��S T
;
��T U
internal
�� 
void
�� 
SendTriggerUpdate
�� '
(
��' (
NetworkAnimator
��( 7
.
��7 8%
AnimationTriggerMessage
��8 O%
animationTriggerMessage
��P g
,
��g h
ClientRpcParams
��i x
clientRpcParams��y �
=��� �
default��� �
)��� �
{
�� 	"
m_SendTriggerUpdates
��  
.
��  !
Add
��! $
(
��$ %
new
��% (
TriggerUpdate
��) 6
(
��6 7
)
��7 8
{
��9 :
ClientRpcParams
��; J
=
��K L
clientRpcParams
��M \
,
��\ ]%
AnimationTriggerMessage
��^ u
=
��v w&
animationTriggerMessage��x �
}��� �
)��� �
;��� �
}
�� 	
internal
�� 
void
�� 
DeregisterUpdate
�� &
(
��& '
)
��' (
{
�� 	
NetworkUpdateLoop
�� 
.
�� %
UnregisterNetworkUpdate
�� 5
(
��5 6
this
��6 :
,
��: ; 
NetworkUpdateStage
��< N
.
��N O
	PreUpdate
��O X
)
��X Y
;
��Y Z
}
�� 	
internal
�� /
!NetworkAnimatorStateChangeHandler
�� 2
(
��2 3
NetworkAnimator
��3 B
networkAnimator
��C R
)
��R S
{
�� 	
m_NetworkAnimator
�� 
=
�� 
networkAnimator
��  /
;
��/ 0
NetworkUpdateLoop
�� 
.
�� #
RegisterNetworkUpdate
�� 3
(
��3 4
this
��4 8
,
��8 9 
NetworkUpdateStage
��: L
.
��L M
	PreUpdate
��M V
)
��V W
;
��W X
}
�� 	
}
�� 
[
�� 
AddComponentMenu
�� 
(
�� 
$str
��  
+
��! "
nameof
��# )
(
��) *
NetworkAnimator
��* 9
)
��9 :
)
��: ;
]
��; <
[
�� 
RequireComponent
�� 
(
�� 
typeof
�� 
(
�� 
Animator
�� %
)
��% &
)
��& '
]
��' (
public
�� 

class
�� 
NetworkAnimator
��  
:
��! "
NetworkBehaviour
��# 3
{
�� 
internal
�� 
struct
�� 
AnimationMessage
�� (
:
��) *"
INetworkSerializable
��+ ?
{
�� 	
internal
�� 
int
�� 
	StateHash
�� "
;
��" #
internal
�� 
float
�� 
NormalizedTime
�� )
;
��) *
internal
�� 
int
�� 
Layer
�� 
;
�� 
internal
�� 
float
�� 
Weight
�� !
;
��! "
public
�� 
void
�� 
NetworkSerialize
�� (
<
��( )
T
��) *
>
��* +
(
��+ ,
BufferSerializer
��, <
<
��< =
T
��= >
>
��> ?

serializer
��@ J
)
��J K
where
��L Q
T
��R S
:
��T U
IReaderWriter
��V c
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� )
(
��) *
ref
��* -
	StateHash
��. 7
)
��7 8
;
��8 9

serializer
�� 
.
�� 
SerializeValue
�� )
(
��) *
ref
��* -
NormalizedTime
��. <
)
��< =
;
��= >

serializer
�� 
.
�� 
SerializeValue
�� )
(
��) *
ref
��* -
Layer
��. 3
)
��3 4
;
��4 5

serializer
�� 
.
�� 
SerializeValue
�� )
(
��) *
ref
��* -
Weight
��. 4
)
��4 5
;
��5 6
}
�� 
}
�� 	
internal
�� 
struct
�� %
ParametersUpdateMessage
�� /
:
��0 1"
INetworkSerializable
��2 F
{
�� 	
internal
�� 
byte
�� 
[
�� 
]
�� 

Parameters
�� &
;
��& '
public
�� 
void
�� 
NetworkSerialize
�� (
<
��( )
T
��) *
>
��* +
(
��+ ,
BufferSerializer
��, <
<
��< =
T
��= >
>
��> ?

serializer
��@ J
)
��J K
where
��L Q
T
��R S
:
��T U
IReaderWriter
��V c
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� )
(
��) *
ref
��* -

Parameters
��. 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
internal
�� 
struct
�� %
AnimationTriggerMessage
�� /
:
��0 1"
INetworkSerializable
��2 F
{
�� 	
internal
�� 
int
�� 
Hash
�� 
;
�� 
internal
�� 
bool
�� 
IsTriggerSet
�� &
;
��& '
public
�� 
void
�� 
NetworkSerialize
�� (
<
��( )
T
��) *
>
��* +
(
��+ ,
BufferSerializer
��, <
<
��< =
T
��= >
>
��> ?

serializer
��@ J
)
��J K
where
��L Q
T
��R S
:
��T U
IReaderWriter
��V c
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� )
(
��) *
ref
��* -
Hash
��. 2
)
��2 3
;
��3 4

serializer
�� 
.
�� 
SerializeValue
�� )
(
��) *
ref
��* -
IsTriggerSet
��. :
)
��: ;
;
��; <
}
�� 
}
�� 	
[
�� 	
SerializeField
��	 
]
�� 
private
��  
Animator
��! )

m_Animator
��* 4
;
��4 5
public
�� 
Animator
�� 
Animator
��  
{
�� 	
get
�� 
{
�� 
return
�� 

m_Animator
�� #
;
��# $
}
��% &
set
�� 
{
�� 

m_Animator
�� 
=
�� 
value
�� "
;
��" #
}
�� 
}
�� 	
internal
�� 
bool
�� #
IsServerAuthoritative
�� +
(
��+ ,
)
��, -
{
�� 	
return
�� %
OnIsServerAuthoritative
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
	protected
�� 
virtual
�� 
bool
�� %
OnIsServerAuthoritative
�� 6
(
��6 7
)
��7 8
{
�� 	
return
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
const
�� 
int
�� "
k_MaxAnimationParams
�� .
=
��/ 0
$num
��1 3
;
��3 4
private
�� 
int
�� 
[
�� 
]
�� 
m_TransitionHash
�� &
;
��& '
private
�� 
int
�� 
[
�� 
]
�� 
m_AnimationHash
�� %
;
��% &
private
�� 
float
�� 
[
�� 
]
�� 
m_LayerWeights
�� &
;
��& '
private
�� 
static
�� 
byte
�� 
[
�� 
]
�� 
s_EmptyArray
�� *
=
��+ ,
new
��- 0
byte
��1 5
[
��5 6
]
��6 7
{
��8 9
}
��: ;
;
��; <
private
�� /
!NetworkAnimatorStateChangeHandler
�� 11
#m_NetworkAnimatorStateChangeHandler
��2 U
;
��U V
private
�� 
unsafe
�� 
struct
��  
AnimatorParamCache
�� 0
{
�� 	
internal
�� 
int
�� 
Hash
�� 
;
�� 
internal
�� 
int
�� 
Type
�� 
;
�� 
internal
�� 
fixed
�� 
byte
�� 
Value
��  %
[
��% &
$num
��& '
]
��' (
;
��( )
}
�� 	
private
�� 
FastBufferWriter
��  
m_ParameterWriter
��! 2
=
��3 4
new
��5 8
FastBufferWriter
��9 I
(
��I J"
k_MaxAnimationParams
��J ^
*
��_ `
sizeof
��a g
(
��g h
float
��h m
)
��m n
,
��n o
	Allocator
��p y
.
��y z

Persistent��z �
)��� �
;��� �
private
�� 
NativeArray
�� 
<
��  
AnimatorParamCache
�� .
>
��. /(
m_CachedAnimatorParameters
��0 J
;
��J K
private
�� 
struct
�� '
AnimationParamEnumWrapper
�� 0
{
�� 	
internal
�� 
static
�� 
readonly
�� $
int
��% (,
AnimatorControllerParameterInt
��) G
;
��G H
internal
�� 
static
�� 
readonly
�� $
int
��% (.
 AnimatorControllerParameterFloat
��) I
;
��I J
internal
�� 
static
�� 
readonly
�� $
int
��% (-
AnimatorControllerParameterBool
��) H
;
��H I
internal
�� 
static
�� 
readonly
�� $
int
��% (4
&AnimatorControllerParameterTriggerBool
��) O
;
��O P
static
�� '
AnimationParamEnumWrapper
�� ,
(
��, -
)
��- .
{
�� ,
AnimatorControllerParameterInt
�� .
=
��/ 0
UnsafeUtility
��1 >
.
��> ?
	EnumToInt
��? H
(
��H I-
AnimatorControllerParameterType
��I h
.
��h i
Int
��i l
)
��l m
;
��m n.
 AnimatorControllerParameterFloat
�� 0
=
��1 2
UnsafeUtility
��3 @
.
��@ A
	EnumToInt
��A J
(
��J K-
AnimatorControllerParameterType
��K j
.
��j k
Float
��k p
)
��p q
;
��q r-
AnimatorControllerParameterBool
�� /
=
��0 1
UnsafeUtility
��2 ?
.
��? @
	EnumToInt
��@ I
(
��I J-
AnimatorControllerParameterType
��J i
.
��i j
Bool
��j n
)
��n o
;
��o p4
&AnimatorControllerParameterTriggerBool
�� 6
=
��7 8
UnsafeUtility
��9 F
.
��F G
	EnumToInt
��G P
(
��P Q-
AnimatorControllerParameterType
��Q p
.
��p q
Trigger
��q x
)
��x y
;
��y z
}
�� 
}
�� 	
private
�� 
void
�� 
Cleanup
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 1
#m_NetworkAnimatorStateChangeHandler
�� 3
!=
��4 6
null
��7 ;
)
��; <
{
�� 1
#m_NetworkAnimatorStateChangeHandler
�� 3
.
��3 4
DeregisterUpdate
��4 D
(
��D E
)
��E F
;
��F G1
#m_NetworkAnimatorStateChangeHandler
�� 3
=
��4 5
null
��6 :
;
��: ;
}
�� 
if
�� 
(
�� 
IsServer
�� 
)
�� 
{
�� 
NetworkManager
�� 
.
�� '
OnClientConnectedCallback
�� 8
-=
��9 ;'
OnClientConnectedCallback
��< U
;
��U V
}
�� 
if
�� 
(
�� (
m_CachedAnimatorParameters
�� *
!=
��+ -
null
��. 2
&&
��3 5(
m_CachedAnimatorParameters
��6 P
.
��P Q
	IsCreated
��Q Z
)
��Z [
{
�� (
m_CachedAnimatorParameters
�� *
.
��* +
Dispose
��+ 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
if
�� 
(
�� 
m_ParameterWriter
�� !
.
��! "
IsInitialized
��" /
)
��/ 0
{
�� 
m_ParameterWriter
�� !
.
��! "
Dispose
��" )
(
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
	OnDestroy
�� &
(
��& '
)
��' (
{
�� 	
Cleanup
�� 
(
�� 
)
�� 
;
�� 
base
�� 
.
�� 
	OnDestroy
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
List
�� 
<
�� 
int
�� 
>
�� "
m_ParametersToUpdate
�� .
;
��. /
private
�� 
List
�� 
<
�� 
ulong
�� 
>
�� 
m_ClientSendList
�� ,
;
��, -
private
�� 
ClientRpcParams
�� 
m_ClientRpcParams
��  1
;
��1 2
public
�� 
override
�� 
void
�� 
OnNetworkSpawn
�� +
(
��+ ,
)
��, -
{
�� 	
if
�� 
(
�� 
IsOwner
�� 
||
�� 
IsServer
�� #
)
��# $
{
�� 
int
�� 
layers
�� 
=
�� 

m_Animator
�� '
.
��' (

layerCount
��( 2
;
��2 3
m_TransitionHash
��  
=
��! "
new
��# &
int
��' *
[
��* +
layers
��+ 1
]
��1 2
;
��2 3
m_AnimationHash
�� 
=
��  !
new
��" %
int
��& )
[
��) *
layers
��* 0
]
��0 1
;
��1 2
m_LayerWeights
�� 
=
��  
new
��! $
float
��% *
[
��* +
layers
��+ 1
]
��1 2
;
��2 3
if
�� 
(
�� 
IsServer
�� 
)
�� 
{
�� 
NetworkManager
�� "
.
��" #'
OnClientConnectedCallback
��# <
+=
��= ?'
OnClientConnectedCallback
��@ Y
;
��Y Z
}
�� 
for
�� 
(
�� 
int
�� 
layer
�� 
=
��  
$num
��! "
;
��" #
layer
��$ )
<
��* +

m_Animator
��, 6
.
��6 7

layerCount
��7 A
;
��A B
layer
��C H
++
��H J
)
��J K
{
�� 
float
�� 
layerWeightNow
�� (
=
��) *

m_Animator
��+ 5
.
��5 6
GetLayerWeight
��6 D
(
��D E
layer
��E J
)
��J K
;
��K L
if
�� 
(
�� 
layerWeightNow
�� &
!=
��' )
m_LayerWeights
��* 8
[
��8 9
layer
��9 >
]
��> ?
)
��? @
{
�� 
m_LayerWeights
�� &
[
��& '
layer
��' ,
]
��, -
=
��. /
layerWeightNow
��0 >
;
��> ?
}
�� 
}
�� 
if
�� 
(
�� 
IsServer
�� 
)
�� 
{
�� 
m_ClientSendList
�� $
=
��% &
new
��' *
List
��+ /
<
��/ 0
ulong
��0 5
>
��5 6
(
��6 7
$num
��7 :
)
��: ;
;
��; <
m_ClientRpcParams
�� %
=
��& '
new
��( +
ClientRpcParams
��, ;
(
��; <
)
��< =
;
��= >
m_ClientRpcParams
�� %
.
��% &
Send
��& *
=
��+ ,
new
��- 0!
ClientRpcSendParams
��1 D
(
��D E
)
��E F
;
��F G
m_ClientRpcParams
�� %
.
��% &
Send
��& *
.
��* +
TargetClientIds
��+ :
=
��; <
m_ClientSendList
��= M
;
��M N
}
�� 
}
�� 
var
�� 

parameters
�� 
=
�� 

m_Animator
�� '
.
��' (

parameters
��( 2
;
��2 3(
m_CachedAnimatorParameters
�� &
=
��' (
new
��) ,
NativeArray
��- 8
<
��8 9 
AnimatorParamCache
��9 K
>
��K L
(
��L M

parameters
��M W
.
��W X
Length
��X ^
,
��^ _
	Allocator
��` i
.
��i j

Persistent
��j t
)
��t u
;
��u v"
m_ParametersToUpdate
��  
=
��! "
new
��# &
List
��' +
<
��+ ,
int
��, /
>
��/ 0
(
��0 1

parameters
��1 ;
.
��; <
Length
��< B
)
��B C
;
��C D
for
�� 
(
�� 
var
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
�� 

parameters
��  *
.
��* +
Length
��+ 1
;
��1 2
i
��3 4
++
��4 6
)
��6 7
{
�� 
var
�� 
	parameter
�� 
=
�� 

parameters
��  *
[
��* +
i
��+ ,
]
��, -
;
��- .
if
�� 
(
�� 

m_Animator
�� 
.
�� *
IsParameterControlledByCurve
�� ;
(
��; <
	parameter
��< E
.
��E F
nameHash
��F N
)
��N O
)
��O P
{
�� 
continue
�� 
;
�� 
}
�� 
var
�� 

cacheParam
�� 
=
��  
new
��! $ 
AnimatorParamCache
��% 7
{
�� 
Type
�� 
=
�� 
UnsafeUtility
�� (
.
��( )
	EnumToInt
��) 2
(
��2 3
	parameter
��3 <
.
��< =
type
��= A
)
��A B
,
��B C
Hash
�� 
=
�� 
	parameter
�� $
.
��$ %
nameHash
��% -
}
�� 
;
�� 
unsafe
�� 
{
�� 
switch
�� 
(
�� 
	parameter
�� %
.
��% &
type
��& *
)
��* +
{
�� 
case
�� -
AnimatorControllerParameterType
�� <
.
��< =
Float
��= B
:
��B C
var
�� 
value
��  %
=
��& '

m_Animator
��( 2
.
��2 3
GetFloat
��3 ;
(
��; <

cacheParam
��< F
.
��F G
Hash
��G K
)
��K L
;
��L M
UnsafeUtility
�� )
.
��) *
WriteArrayElement
��* ;
(
��; <

cacheParam
��< F
.
��F G
Value
��G L
,
��L M
$num
��N O
,
��O P
value
��Q V
)
��V W
;
��W X
break
�� !
;
��! "
case
�� -
AnimatorControllerParameterType
�� <
.
��< =
Int
��= @
:
��@ A
var
�� 
valueInt
��  (
=
��) *

m_Animator
��+ 5
.
��5 6

GetInteger
��6 @
(
��@ A

cacheParam
��A K
.
��K L
Hash
��L P
)
��P Q
;
��Q R
UnsafeUtility
�� )
.
��) *
WriteArrayElement
��* ;
(
��; <

cacheParam
��< F
.
��F G
Value
��G L
,
��L M
$num
��N O
,
��O P
valueInt
��Q Y
)
��Y Z
;
��Z [
break
�� !
;
��! "
case
�� -
AnimatorControllerParameterType
�� <
.
��< =
Bool
��= A
:
��A B
var
�� 
	valueBool
��  )
=
��* +

m_Animator
��, 6
.
��6 7
GetBool
��7 >
(
��> ?

cacheParam
��? I
.
��I J
Hash
��J N
)
��N O
;
��O P
UnsafeUtility
�� )
.
��) *
WriteArrayElement
��* ;
(
��; <

cacheParam
��< F
.
��F G
Value
��G L
,
��L M
$num
��N O
,
��O P
	valueBool
��Q Z
)
��Z [
;
��[ \
break
�� !
;
��! "
default
�� 
:
��  
break
�� !
;
��! "
}
�� 
}
�� (
m_CachedAnimatorParameters
�� *
[
��* +
i
��+ ,
]
��, -
=
��. /

cacheParam
��0 :
;
��: ;
}
�� 1
#m_NetworkAnimatorStateChangeHandler
�� /
=
��0 1
new
��2 5/
!NetworkAnimatorStateChangeHandler
��6 W
(
��W X
this
��X \
)
��\ ]
;
��] ^
}
�� 	
public
�� 
override
�� 
void
�� 
OnNetworkDespawn
�� -
(
��- .
)
��. /
{
�� 	
Cleanup
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� (
ServerSynchronizeNewPlayer
�� 0
(
��0 1
ulong
��1 6
playerId
��7 ?
)
��? @
{
�� 	
m_ClientSendList
�� 
.
�� 
Clear
�� "
(
��" #
)
��# $
;
��$ %
m_ClientSendList
�� 
.
�� 
Add
��  
(
��  !
playerId
��! )
)
��) *
;
��* +
m_ClientRpcParams
�� 
.
�� 
Send
�� "
.
��" #
TargetClientIds
��# 2
=
��3 4
m_ClientSendList
��5 E
;
��E F"
m_ParametersToUpdate
��  
.
��  !
Clear
��! &
(
��& '
)
��' (
;
��( )
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
�� (
m_CachedAnimatorParameters
��  :
.
��: ;
Length
��; A
;
��A B
i
��C D
++
��D F
)
��F G
{
�� "
m_ParametersToUpdate
�� $
.
��$ %
Add
��% (
(
��( )
i
��) *
)
��* +
;
��+ ,
}
�� "
SendParametersUpdate
��  
(
��  !
m_ClientRpcParams
��! 2
)
��2 3
;
��3 4
for
�� 
(
�� 
int
�� 
layer
�� 
=
�� 
$num
�� 
;
�� 
layer
��  %
<
��& '

m_Animator
��( 2
.
��2 3

layerCount
��3 =
;
��= >
layer
��? D
++
��D F
)
��F G
{
�� 
AnimatorStateInfo
�� !
st
��" $
=
��% &

m_Animator
��' 1
.
��1 2)
GetCurrentAnimatorStateInfo
��2 M
(
��M N
layer
��N S
)
��S T
;
��T U
var
�� 
	stateHash
�� 
=
�� 
st
��  "
.
��" #
fullPathHash
��# /
;
��/ 0
var
�� 
normalizedTime
�� "
=
��# $
st
��% '
.
��' (
normalizedTime
��( 6
;
��6 7
var
�� 

totalSpeed
�� 
=
��  
st
��! #
.
��# $
speed
��$ )
*
��* +
st
��, .
.
��. /
speedMultiplier
��/ >
;
��> ?
var
�� '
adjustedNormalizedMaxTime
�� -
=
��. /

totalSpeed
��0 :
>
��; <
$num
��= A
?
��B C
$num
��D H
/
��I J

totalSpeed
��K U
:
��V W
$num
��X \
;
��\ ]
if
�� 
(
�� 

m_Animator
�� 
.
�� 
IsInTransition
�� -
(
��- .
layer
��. 3
)
��3 4
)
��4 5
{
�� 
var
�� 
tt
�� 
=
�� 

m_Animator
�� '
.
��' ('
GetAnimatorTransitionInfo
��( A
(
��A B
layer
��B G
)
��G H
;
��H I
var
�� 
	nextState
�� !
=
��" #

m_Animator
��$ .
.
��. /&
GetNextAnimatorStateInfo
��/ G
(
��G H
layer
��H M
)
��M N
;
��N O
if
�� 
(
�� 
	nextState
�� !
.
��! "
length
��" (
>
��) *
$num
��+ ,
)
��, -
{
�� 
var
�� !
nextStateTotalSpeed
�� /
=
��0 1
	nextState
��2 ;
.
��; <
speed
��< A
*
��B C
	nextState
��D M
.
��M N
speedMultiplier
��N ]
;
��] ^
var
�� %
nextStateAdjustedLength
�� 3
=
��4 5
	nextState
��6 ?
.
��? @
length
��@ F
*
��G H!
nextStateTotalSpeed
��I \
;
��\ ]
var
�� 
transitionTime
�� *
=
��+ ,
Mathf
��- 2
.
��2 3
Min
��3 6
(
��6 7
tt
��7 9
.
��9 :
duration
��: B
,
��B C
tt
��D F
.
��F G
duration
��G O
*
��P Q
tt
��R T
.
��T U
normalizedTime
��U c
)
��c d
*
��e f
$num
��g k
;
��k l
normalizedTime
�� &
=
��' (
Mathf
��) .
.
��. /
Min
��/ 2
(
��2 3
$num
��3 7
,
��7 8
transitionTime
��9 G
>
��H I
$num
��J N
?
��O P
transitionTime
��Q _
/
��` a%
nextStateAdjustedLength
��b y
:
��z {
$num��| �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
normalizedTime
�� &
=
��' (
$num
��) -
;
��- .
}
�� 
	stateHash
�� 
=
�� 
	nextState
��  )
.
��) *
fullPathHash
��* 6
;
��6 7
}
�� 
else
�� 
if
�� 
(
�� 
st
�� 
.
�� 
normalizedTime
�� %
>=
��& ('
adjustedNormalizedMaxTime
��) B
)
��B C
{
�� 
continue
�� 
;
�� 
}
�� 
var
�� 
animMsg
�� 
=
�� 
new
�� !
AnimationMessage
��" 2
{
�� 
	StateHash
�� 
=
�� 
	stateHash
��  )
,
��) *
NormalizedTime
�� "
=
��# $
normalizedTime
��% 3
,
��3 4
Layer
�� 
=
�� 
layer
�� !
,
��! "
Weight
�� 
=
�� 
m_LayerWeights
�� +
[
��+ ,
layer
��, 1
]
��1 2
}
�� 
;
�� $
SendAnimStateClientRpc
�� &
(
��& '
animMsg
��' .
,
��. /
m_ClientRpcParams
��0 A
)
��A B
;
��B C
}
�� 
}
�� 	
private
�� 
void
�� '
OnClientConnectedCallback
�� .
(
��. /
ulong
��/ 4
playerId
��5 =
)
��= >
{
�� 	1
#m_NetworkAnimatorStateChangeHandler
�� /
.
��/ 0
SynchronizeClient
��0 A
(
��A B
playerId
��B J
)
��J K
;
��K L
}
�� 	
internal
�� 
void
�� %
CheckForAnimatorChanges
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
�� 
!
�� 
IsOwner
�� 
&&
�� 
!
�� #
IsServerAuthoritative
�� 2
(
��2 3
)
��3 4
||
��5 7#
IsServerAuthoritative
��8 M
(
��M N
)
��N O
&&
��P R
!
��S T
IsServer
��T \
)
��\ ]
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� $
CheckParametersChanged
�� &
(
��& '
)
��' (
)
��( )
{
�� "
SendParametersUpdate
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
if
�� 
(
�� 

m_Animator
�� 
.
�� '
runtimeAnimatorController
�� 4
==
��5 7
null
��8 <
)
��< =
{
�� 
return
�� 
;
�� 
}
�� 
int
�� 
	stateHash
�� 
;
�� 
float
�� 
normalizedTime
��  
;
��  !
for
�� 
(
�� 
int
�� 
layer
�� 
=
�� 
$num
�� 
;
�� 
layer
��  %
<
��& '

m_Animator
��( 2
.
��2 3

layerCount
��3 =
;
��= >
layer
��? D
++
��D F
)
��F G
{
�� 
AnimatorStateInfo
�� !
st
��" $
=
��% &

m_Animator
��' 1
.
��1 2)
GetCurrentAnimatorStateInfo
��2 M
(
��M N
layer
��N S
)
��S T
;
��T U
var
�� 

totalSpeed
�� 
=
��  
st
��! #
.
��# $
speed
��$ )
*
��* +
st
��, .
.
��. /
speedMultiplier
��/ >
;
��> ?
var
�� '
adjustedNormalizedMaxTime
�� -
=
��. /

totalSpeed
��0 :
>
��; <
$num
��= A
?
��B C
$num
��D H
/
��I J

totalSpeed
��K U
:
��V W
$num
��X \
;
��\ ]
if
�� 
(
�� 
st
�� 
.
�� 
normalizedTime
�� %
>=
��& ('
adjustedNormalizedMaxTime
��) B
)
��B C
{
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� #
CheckAnimStateChanged
�� *
(
��* +
out
��+ .
	stateHash
��/ 8
,
��8 9
out
��: =
normalizedTime
��> L
,
��L M
layer
��N S
)
��S T
)
��T U
{
�� 
continue
�� 
;
�� 
}
�� 
var
�� 
animMsg
�� 
=
�� 
new
�� !
AnimationMessage
��" 2
{
�� 
	StateHash
�� 
=
�� 
	stateHash
��  )
,
��) *
NormalizedTime
�� "
=
��# $
normalizedTime
��% 3
,
��3 4
Layer
�� 
=
�� 
layer
�� !
,
��! "
Weight
�� 
=
�� 
m_LayerWeights
�� +
[
��+ ,
layer
��, 1
]
��1 2
}
�� 
;
�� 
if
�� 
(
�� 
!
�� 
IsServer
�� 
&&
��  
IsOwner
��! (
)
��( )
{
�� $
SendAnimStateServerRpc
�� *
(
��* +
animMsg
��+ 2
)
��2 3
;
��3 4
}
�� 
else
�� 
{
�� $
SendAnimStateClientRpc
�� *
(
��* +
animMsg
��+ 2
)
��2 3
;
��3 4
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� "
SendParametersUpdate
�� )
(
��) *
ClientRpcParams
��* 9
clientRpcParams
��: I
=
��J K
default
��L S
,
��S T
bool
��U Y

sendDirect
��Z d
=
��e f
false
��g l
)
��l m
{
�� 	
m_ParameterWriter
�� 
.
�� 
Seek
�� "
(
��" #
$num
��# $
)
��$ %
;
��% &
m_ParameterWriter
�� 
.
�� 
Truncate
�� &
(
��& '
)
��' (
;
��( )
WriteParameters
�� 
(
�� 
m_ParameterWriter
�� -
,
��- .

sendDirect
��/ 9
)
��9 :
;
��: ;
var
�� 
parametersMessage
�� !
=
��" #
new
��$ '%
ParametersUpdateMessage
��( ?
{
�� 

Parameters
�� 
=
�� 
m_ParameterWriter
�� .
.
��. /
ToArray
��/ 6
(
��6 7
)
��7 8
}
�� 
;
�� 
if
�� 
(
�� 
!
�� 
IsServer
�� 
)
�� 
{
�� +
SendParametersUpdateServerRpc
�� -
(
��- .
parametersMessage
��. ?
)
��? @
;
��@ A
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 

sendDirect
�� 
)
�� 
{
�� +
SendParametersUpdateClientRpc
�� 1
(
��1 2
parametersMessage
��2 C
,
��C D
clientRpcParams
��E T
)
��T U
;
��U V
}
�� 
else
�� 
{
�� 1
#m_NetworkAnimatorStateChangeHandler
�� 7
.
��7 8!
SendParameterUpdate
��8 K
(
��K L
parametersMessage
��L ]
,
��] ^
clientRpcParams
��_ n
)
��n o
;
��o p
}
�� 
}
�� 
}
�� 	
unsafe
�� 
private
�� 
T
�� 
GetValue
�� !
<
��! "
T
��" #
>
��# $
(
��$ %
ref
��% ( 
AnimatorParamCache
��) ; 
animatorParamCache
��< N
)
��N O
{
�� 	
T
�� 
currentValue
�� 
;
�� 
fixed
�� 
(
�� 
void
�� 
*
�� 
value
�� 
=
��   
animatorParamCache
��! 3
.
��3 4
Value
��4 9
)
��9 :
{
�� 
currentValue
�� 
=
�� 
UnsafeUtility
�� ,
.
��, -
ReadArrayElement
��- =
<
��= >
T
��> ?
>
��? @
(
��@ A
value
��A F
,
��F G
$num
��H I
)
��I J
;
��J K
}
�� 
return
�� 
currentValue
�� 
;
��  
}
�� 	
unsafe
�� 
private
�� 
bool
�� $
CheckParametersChanged
�� 2
(
��2 3
)
��3 4
{
�� 	"
m_ParametersToUpdate
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
��( )
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
�� (
m_CachedAnimatorParameters
��  :
.
��: ;
Length
��; A
;
��A B
i
��C D
++
��D F
)
��F G
{
�� 
ref
�� 
var
�� 

cacheValue
�� "
=
��# $
ref
��% (
UnsafeUtility
��) 6
.
��6 7
ArrayElementAsRef
��7 H
<
��H I 
AnimatorParamCache
��I [
>
��[ \
(
��\ ](
m_CachedAnimatorParameters
��] w
.
��w x
GetUnsafePtr��x �
(��� �
)��� �
,��� �
i��� �
)��� �
;��� �
var
�� 
hash
�� 
=
�� 

cacheValue
�� %
.
��% &
Hash
��& *
;
��* +
if
�� 
(
�� 

cacheValue
�� 
.
�� 
Type
�� #
==
��$ &'
AnimationParamEnumWrapper
��' @
.
��@ A,
AnimatorControllerParameterInt
��A _
)
��_ `
{
�� 
var
�� 
valueInt
��  
=
��! "

m_Animator
��# -
.
��- .

GetInteger
��. 8
(
��8 9
hash
��9 =
)
��= >
;
��> ?
var
�� 
currentValue
�� $
=
��% &
GetValue
��' /
<
��/ 0
int
��0 3
>
��3 4
(
��4 5
ref
��5 8

cacheValue
��9 C
)
��C D
;
��D E
if
�� 
(
�� 
currentValue
�� $
!=
��% '
valueInt
��( 0
)
��0 1
{
�� "
m_ParametersToUpdate
�� ,
.
��, -
Add
��- 0
(
��0 1
i
��1 2
)
��2 3
;
��3 4
continue
��  
;
��  !
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 

cacheValue
�� #
.
��# $
Type
��$ (
==
��) +'
AnimationParamEnumWrapper
��, E
.
��E F-
AnimatorControllerParameterBool
��F e
)
��e f
{
�� 
var
�� 
	valueBool
�� !
=
��" #

m_Animator
��$ .
.
��. /
GetBool
��/ 6
(
��6 7
hash
��7 ;
)
��; <
;
��< =
var
�� 
currentValue
�� $
=
��% &
GetValue
��' /
<
��/ 0
bool
��0 4
>
��4 5
(
��5 6
ref
��6 9

cacheValue
��: D
)
��D E
;
��E F
if
�� 
(
�� 
currentValue
�� $
!=
��% '
	valueBool
��( 1
)
��1 2
{
�� "
m_ParametersToUpdate
�� ,
.
��, -
Add
��- 0
(
��0 1
i
��1 2
)
��2 3
;
��3 4
continue
��  
;
��  !
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 

cacheValue
�� #
.
��# $
Type
��$ (
==
��) +'
AnimationParamEnumWrapper
��, E
.
��E F.
 AnimatorControllerParameterFloat
��F f
)
��f g
{
�� 
var
�� 

valueFloat
�� "
=
��# $

m_Animator
��% /
.
��/ 0
GetFloat
��0 8
(
��8 9
hash
��9 =
)
��= >
;
��> ?
var
�� 
currentValue
�� $
=
��% &
GetValue
��' /
<
��/ 0
float
��0 5
>
��5 6
(
��6 7
ref
��7 :

cacheValue
��; E
)
��E F
;
��F G
if
�� 
(
�� 
currentValue
�� $
!=
��% '

valueFloat
��( 2
)
��2 3
{
�� "
m_ParametersToUpdate
�� ,
.
��, -
Add
��- 0
(
��0 1
i
��1 2
)
��2 3
;
��3 4
continue
��  
;
��  !
}
�� 
}
�� 
}
�� 
return
�� "
m_ParametersToUpdate
�� '
.
��' (
Count
��( -
>
��. /
$num
��0 1
;
��1 2
}
�� 	
private
�� 
unsafe
�� 
bool
�� #
CheckAnimStateChanged
�� 1
(
��1 2
out
��2 5
int
��6 9
	stateHash
��: C
,
��C D
out
��E H
float
��I N
normalizedTime
��O ]
,
��] ^
int
��_ b
layer
��c h
)
��h i
{
�� 	
	stateHash
�� 
=
�� 
$num
�� 
;
�� 
normalizedTime
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
layerWeightNow
��  
=
��! "

m_Animator
��# -
.
��- .
GetLayerWeight
��. <
(
��< =
layer
��= B
)
��B C
;
��C D
if
�� 
(
�� 
layerWeightNow
�� 
!=
�� !
m_LayerWeights
��" 0
[
��0 1
layer
��1 6
]
��6 7
)
��7 8
{
�� 
m_LayerWeights
�� 
[
�� 
layer
�� $
]
��$ %
=
��& '
layerWeightNow
��( 6
;
��6 7
return
�� 
true
�� 
;
�� 
}
�� 
if
�� 
(
�� 

m_Animator
�� 
.
�� 
IsInTransition
�� )
(
��) *
layer
��* /
)
��/ 0
)
��0 1
{
�� $
AnimatorTransitionInfo
�� &
tt
��' )
=
��* +

m_Animator
��, 6
.
��6 7'
GetAnimatorTransitionInfo
��7 P
(
��P Q
layer
��Q V
)
��V W
;
��W X
if
�� 
(
�� 
tt
�� 
.
�� 
fullPathHash
�� #
!=
��$ &
m_TransitionHash
��' 7
[
��7 8
layer
��8 =
]
��= >
)
��> ?
{
�� 
m_TransitionHash
�� $
[
��$ %
layer
��% *
]
��* +
=
��, -
tt
��. 0
.
��0 1
fullPathHash
��1 =
;
��= >
m_AnimationHash
�� #
[
��# $
layer
��$ )
]
��) *
=
��+ ,
$num
��- .
;
��. /
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
else
�� 
{
�� 
AnimatorStateInfo
�� !
st
��" $
=
��% &

m_Animator
��' 1
.
��1 2)
GetCurrentAnimatorStateInfo
��2 M
(
��M N
layer
��N S
)
��S T
;
��T U
if
�� 
(
�� 
st
�� 
.
�� 
fullPathHash
�� #
!=
��$ &
m_AnimationHash
��' 6
[
��6 7
layer
��7 <
]
��< =
)
��= >
{
�� 
if
�� 
(
�� 
m_AnimationHash
�� '
[
��' (
layer
��( -
]
��- .
!=
��/ 1
$num
��2 3
)
��3 4
{
�� 
	stateHash
�� !
=
��" #
st
��$ &
.
��& '
fullPathHash
��' 3
;
��3 4
normalizedTime
�� &
=
��' (
st
��) +
.
��+ ,
normalizedTime
��, :
;
��: ;
}
�� 
m_TransitionHash
�� $
[
��$ %
layer
��% *
]
��* +
=
��, -
$num
��. /
;
��/ 0
m_AnimationHash
�� #
[
��# $
layer
��$ )
]
��) *
=
��+ ,
st
��- /
.
��/ 0
fullPathHash
��0 <
;
��< =
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
unsafe
�� 
void
�� 
WriteParameters
�� +
(
��+ ,
FastBufferWriter
��, <
writer
��= C
,
��C D
bool
��E I
sendCacheState
��J X
)
��X Y
{
�� 	

BytePacker
�� 
.
�� 
WriteValuePacked
�� '
(
��' (
writer
��( .
,
��. /
(
��0 1
uint
��1 5
)
��5 6"
m_ParametersToUpdate
��6 J
.
��J K
Count
��K P
)
��P Q
;
��Q R
foreach
�� 
(
�� 
var
�� 
parameterIndex
�� '
in
��( *"
m_ParametersToUpdate
��+ ?
)
��? @
{
�� 
ref
�� 
var
�� 

cacheValue
�� "
=
��# $
ref
��% (
UnsafeUtility
��) 6
.
��6 7
ArrayElementAsRef
��7 H
<
��H I 
AnimatorParamCache
��I [
>
��[ \
(
��\ ](
m_CachedAnimatorParameters
��] w
.
��w x
GetUnsafePtr��x �
(��� �
)��� �
,��� �
parameterIndex��� �
)��� �
;��� �
var
�� 
hash
�� 
=
�� 

cacheValue
�� %
.
��% &
Hash
��& *
;
��* +

BytePacker
�� 
.
�� 
WriteValuePacked
�� +
(
��+ ,
writer
��, 2
,
��2 3
(
��4 5
uint
��5 9
)
��9 :
parameterIndex
��: H
)
��H I
;
��I J
if
�� 
(
�� 

cacheValue
�� 
.
�� 
Type
�� #
==
��$ &'
AnimationParamEnumWrapper
��' @
.
��@ A,
AnimatorControllerParameterInt
��A _
)
��_ `
{
�� 
var
�� 
valueInt
��  
=
��! "

m_Animator
��# -
.
��- .

GetInteger
��. 8
(
��8 9
hash
��9 =
)
��= >
;
��> ?
fixed
�� 
(
�� 
void
�� 
*
��  
value
��! &
=
��' (

cacheValue
��) 3
.
��3 4
Value
��4 9
)
��9 :
{
�� 
UnsafeUtility
�� %
.
��% &
WriteArrayElement
��& 7
(
��7 8
value
��8 =
,
��= >
$num
��? @
,
��@ A
valueInt
��B J
)
��J K
;
��K L

BytePacker
�� "
.
��" #
WriteValuePacked
��# 3
(
��3 4
writer
��4 :
,
��: ;
(
��< =
uint
��= A
)
��A B
valueInt
��B J
)
��J K
;
��K L
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 

cacheValue
�� 
.
�� 
Type
�� #
==
��$ &'
AnimationParamEnumWrapper
��' @
.
��@ A-
AnimatorControllerParameterBool
��A `
)
��` a
{
�� 
var
�� 
	valueBool
�� !
=
��" #

m_Animator
��$ .
.
��. /
GetBool
��/ 6
(
��6 7
hash
��7 ;
)
��; <
;
��< =
fixed
�� 
(
�� 
void
�� 
*
��  
value
��! &
=
��' (

cacheValue
��) 3
.
��3 4
Value
��4 9
)
��9 :
{
�� 
UnsafeUtility
�� %
.
��% &
WriteArrayElement
��& 7
(
��7 8
value
��8 =
,
��= >
$num
��? @
,
��@ A
	valueBool
��B K
)
��K L
;
��L M

BytePacker
�� "
.
��" #
WriteValuePacked
��# 3
(
��3 4
writer
��4 :
,
��: ;
	valueBool
��< E
)
��E F
;
��F G
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 

cacheValue
�� 
.
�� 
Type
�� #
==
��$ &'
AnimationParamEnumWrapper
��' @
.
��@ A.
 AnimatorControllerParameterFloat
��A a
)
��a b
{
�� 
var
�� 

valueFloat
�� "
=
��# $

m_Animator
��% /
.
��/ 0
GetFloat
��0 8
(
��8 9
hash
��9 =
)
��= >
;
��> ?
fixed
�� 
(
�� 
void
�� 
*
��  
value
��! &
=
��' (

cacheValue
��) 3
.
��3 4
Value
��4 9
)
��9 :
{
�� 
UnsafeUtility
�� %
.
��% &
WriteArrayElement
��& 7
(
��7 8
value
��8 =
,
��= >
$num
��? @
,
��@ A

valueFloat
��B L
)
��L M
;
��M N

BytePacker
�� "
.
��" #
WriteValuePacked
��# 3
(
��3 4
writer
��4 :
,
��: ;

valueFloat
��< F
)
��F G
;
��G H
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
unsafe
�� 
void
�� 
ReadParameters
�� *
(
��* +
FastBufferReader
��+ ;
reader
��< B
)
��B C
{
�� 	
ByteUnpacker
�� 
.
�� 
ReadValuePacked
�� (
(
��( )
reader
��) /
,
��/ 0
out
��1 4
uint
��5 9#
totalParametersToRead
��: O
)
��O P
;
��P Q
var
�� !
totalParametersRead
�� #
=
��$ %
$num
��& '
;
��' (
while
�� 
(
�� !
totalParametersRead
�� &
<
��' (#
totalParametersToRead
��) >
)
��> ?
{
�� 
ByteUnpacker
�� 
.
�� 
ReadValuePacked
�� ,
(
��, -
reader
��- 3
,
��3 4
out
��5 8
uint
��9 =
parameterIndex
��> L
)
��L M
;
��M N
ref
�� 
var
�� 

cacheValue
�� "
=
��# $
ref
��% (
UnsafeUtility
��) 6
.
��6 7
ArrayElementAsRef
��7 H
<
��H I 
AnimatorParamCache
��I [
>
��[ \
(
��\ ](
m_CachedAnimatorParameters
��] w
.
��w x
GetUnsafePtr��x �
(��� �
)��� �
,��� �
(��� �
int��� �
)��� �
parameterIndex��� �
)��� �
;��� �
var
�� 
hash
�� 
=
�� 

cacheValue
�� %
.
��% &
Hash
��& *
;
��* +
if
�� 
(
�� 

cacheValue
�� 
.
�� 
Type
�� #
==
��$ &'
AnimationParamEnumWrapper
��' @
.
��@ A,
AnimatorControllerParameterInt
��A _
)
��_ `
{
�� 
ByteUnpacker
��  
.
��  !
ReadValuePacked
��! 0
(
��0 1
reader
��1 7
,
��7 8
out
��9 <
uint
��= A
newValue
��B J
)
��J K
;
��K L

m_Animator
�� 
.
�� 

SetInteger
�� )
(
��) *
hash
��* .
,
��. /
(
��0 1
int
��1 4
)
��4 5
newValue
��5 =
)
��= >
;
��> ?
fixed
�� 
(
�� 
void
�� 
*
��  
value
��! &
=
��' (

cacheValue
��) 3
.
��3 4
Value
��4 9
)
��9 :
{
�� 
UnsafeUtility
�� %
.
��% &
WriteArrayElement
��& 7
(
��7 8
value
��8 =
,
��= >
$num
��? @
,
��@ A
newValue
��B J
)
��J K
;
��K L
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 

cacheValue
�� #
.
��# $
Type
��$ (
==
��) +'
AnimationParamEnumWrapper
��, E
.
��E F-
AnimatorControllerParameterBool
��F e
)
��e f
{
�� 
ByteUnpacker
��  
.
��  !
ReadValuePacked
��! 0
(
��0 1
reader
��1 7
,
��7 8
out
��9 <
bool
��= A
newBoolValue
��B N
)
��N O
;
��O P

m_Animator
�� 
.
�� 
SetBool
�� &
(
��& '
hash
��' +
,
��+ ,
newBoolValue
��- 9
)
��9 :
;
��: ;
fixed
�� 
(
�� 
void
�� 
*
��  
value
��! &
=
��' (

cacheValue
��) 3
.
��3 4
Value
��4 9
)
��9 :
{
�� 
UnsafeUtility
�� %
.
��% &
WriteArrayElement
��& 7
(
��7 8
value
��8 =
,
��= >
$num
��? @
,
��@ A
newBoolValue
��B N
)
��N O
;
��O P
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 

cacheValue
�� #
.
��# $
Type
��$ (
==
��) +'
AnimationParamEnumWrapper
��, E
.
��E F.
 AnimatorControllerParameterFloat
��F f
)
��f g
{
�� 
ByteUnpacker
��  
.
��  !
ReadValuePacked
��! 0
(
��0 1
reader
��1 7
,
��7 8
out
��9 <
float
��= B
newFloatValue
��C P
)
��P Q
;
��Q R

m_Animator
�� 
.
�� 
SetFloat
�� '
(
��' (
hash
��( ,
,
��, -
newFloatValue
��. ;
)
��; <
;
��< =
fixed
�� 
(
�� 
void
�� 
*
��  
value
��! &
=
��' (

cacheValue
��) 3
.
��3 4
Value
��4 9
)
��9 :
{
�� 
UnsafeUtility
�� %
.
��% &
WriteArrayElement
��& 7
(
��7 8
value
��8 =
,
��= >
$num
��? @
,
��@ A
newFloatValue
��B O
)
��O P
;
��P Q
}
�� 
}
�� !
totalParametersRead
�� #
++
��# %
;
��% &
}
�� 
}
�� 	
internal
�� 
unsafe
�� 
void
�� 
UpdateParameters
�� -
(
��- .%
ParametersUpdateMessage
��. E
parametersUpdate
��F V
)
��V W
{
�� 	
if
�� 
(
�� 
parametersUpdate
��  
.
��  !

Parameters
��! +
!=
��, .
null
��/ 3
&&
��4 6
parametersUpdate
��7 G
.
��G H

Parameters
��H R
.
��R S
Length
��S Y
!=
��Z \
$num
��] ^
)
��^ _
{
�� 
fixed
�� 
(
�� 
byte
�� 
*
�� 

parameters
�� '
=
��( )
parametersUpdate
��* :
.
��: ;

Parameters
��; E
)
��E F
{
�� 
var
�� 
reader
�� 
=
��  
new
��! $
FastBufferReader
��% 5
(
��5 6

parameters
��6 @
,
��@ A
	Allocator
��B K
.
��K L
None
��L P
,
��P Q
parametersUpdate
��R b
.
��b c

Parameters
��c m
.
��m n
Length
��n t
)
��t u
;
��u v
ReadParameters
�� "
(
��" #
reader
��# )
)
��) *
;
��* +
}
�� 
}
�� 
}
�� 	
private
�� 
unsafe
�� 
void
�� "
UpdateAnimationState
�� 0
(
��0 1
AnimationMessage
��1 A
animationState
��B P
)
��P Q
{
�� 	
if
�� 
(
�� 
animationState
�� 
.
�� 
	StateHash
�� (
!=
��) +
$num
��, -
)
��- .
{
�� 

m_Animator
�� 
.
�� 
Play
�� 
(
��  
animationState
��  .
.
��. /
	StateHash
��/ 8
,
��8 9
animationState
��: H
.
��H I
Layer
��I N
,
��N O
animationState
��P ^
.
��^ _
NormalizedTime
��_ m
)
��m n
;
��n o
}
�� 

m_Animator
�� 
.
�� 
SetLayerWeight
�� %
(
��% &
animationState
��& 4
.
��4 5
Layer
��5 :
,
��: ;
animationState
��< J
.
��J K
Weight
��K Q
)
��Q R
;
��R S
}
�� 	
[
�� 	
	ServerRpc
��	 
]
�� 
private
�� 
unsafe
�� 
void
�� +
SendParametersUpdateServerRpc
�� 9
(
��9 :%
ParametersUpdateMessage
��: Q
parametersUpdate
��R b
,
��b c
ServerRpcParams
��d s
serverRpcParams��t �
=��� �
default��� �
)��� �
{
�� 	
if
�� 
(
�� #
IsServerAuthoritative
�� %
(
��% &
)
��& '
)
��' (
{
�� 1
#m_NetworkAnimatorStateChangeHandler
�� 3
.
��3 4!
SendParameterUpdate
��4 G
(
��G H
parametersUpdate
��H X
)
��X Y
;
��Y Z
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
serverRpcParams
�� #
.
��# $
Receive
��$ +
.
��+ ,
SenderClientId
��, :
!=
��; =
OwnerClientId
��> K
)
��K L
{
�� 
return
�� 
;
�� 
}
�� 
UpdateParameters
��  
(
��  !
parametersUpdate
��! 1
)
��1 2
;
��2 3
if
�� 
(
�� 
NetworkManager
�� "
.
��" #!
ConnectedClientsIds
��# 6
.
��6 7
Count
��7 <
-
��= >
$num
��? @
>
��A B
$num
��C D
)
��D E
{
�� 
m_ClientSendList
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
m_ClientSendList
�� $
.
��$ %
AddRange
��% -
(
��- .
NetworkManager
��. <
.
��< =!
ConnectedClientsIds
��= P
)
��P Q
;
��Q R
m_ClientSendList
�� $
.
��$ %
Remove
��% +
(
��+ ,
serverRpcParams
��, ;
.
��; <
Receive
��< C
.
��C D
SenderClientId
��D R
)
��R S
;
��S T
m_ClientSendList
�� $
.
��$ %
Remove
��% +
(
��+ ,
NetworkManager
��, :
.
��: ;
ServerClientId
��; I
)
��I J
;
��J K
m_ClientRpcParams
�� %
.
��% &
Send
��& *
.
��* +
TargetClientIds
��+ :
=
��; <
m_ClientSendList
��= M
;
��M N1
#m_NetworkAnimatorStateChangeHandler
�� 7
.
��7 8!
SendParameterUpdate
��8 K
(
��K L
parametersUpdate
��L \
,
��\ ]
m_ClientRpcParams
��^ o
)
��o p
;
��p q
}
�� 
}
�� 
}
�� 	
[
�� 	
	ClientRpc
��	 
]
�� 
internal
�� 
unsafe
�� 
void
�� +
SendParametersUpdateClientRpc
�� :
(
��: ;%
ParametersUpdateMessage
��; R
parametersUpdate
��S c
,
��c d
ClientRpcParams
��e t
clientRpcParams��u �
=��� �
default��� �
)��� �
{
�� 	
var
�� #
isServerAuthoritative
�� %
=
��& '#
IsServerAuthoritative
��( =
(
��= >
)
��> ?
;
��? @
if
�� 
(
�� 
!
�� #
isServerAuthoritative
�� &
&&
��' )
!
��* +
IsOwner
��+ 2
||
��3 5#
isServerAuthoritative
��6 K
)
��K L
{
�� 1
#m_NetworkAnimatorStateChangeHandler
�� 3
.
��3 4$
ProcessParameterUpdate
��4 J
(
��J K
parametersUpdate
��K [
)
��[ \
;
��\ ]
}
�� 
}
�� 	
[
�� 	
	ServerRpc
��	 
]
�� 
private
�� 
unsafe
�� 
void
�� $
SendAnimStateServerRpc
�� 2
(
��2 3
AnimationMessage
��3 C
animSnapshot
��D P
,
��P Q
ServerRpcParams
��R a
serverRpcParams
��b q
=
��r s
default
��t {
)
��{ |
{
�� 	
if
�� 
(
�� #
IsServerAuthoritative
�� %
(
��% &
)
��& '
)
��' (
{
�� 1
#m_NetworkAnimatorStateChangeHandler
�� 3
.
��3 4!
SendAnimationUpdate
��4 G
(
��G H
animSnapshot
��H T
)
��T U
;
��U V
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
serverRpcParams
�� #
.
��# $
Receive
��$ +
.
��+ ,
SenderClientId
��, :
!=
��; =
OwnerClientId
��> K
)
��K L
{
�� 
return
�� 
;
�� 
}
�� "
UpdateAnimationState
�� $
(
��$ %
animSnapshot
��% 1
)
��1 2
;
��2 3
if
�� 
(
�� 
NetworkManager
�� "
.
��" #!
ConnectedClientsIds
��# 6
.
��6 7
Count
��7 <
-
��= >
$num
��? @
>
��A B
$num
��C D
)
��D E
{
�� 
m_ClientSendList
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
m_ClientSendList
�� $
.
��$ %
AddRange
��% -
(
��- .
NetworkManager
��. <
.
��< =!
ConnectedClientsIds
��= P
)
��P Q
;
��Q R
m_ClientSendList
�� $
.
��$ %
Remove
��% +
(
��+ ,
serverRpcParams
��, ;
.
��; <
Receive
��< C
.
��C D
SenderClientId
��D R
)
��R S
;
��S T
m_ClientSendList
�� $
.
��$ %
Remove
��% +
(
��+ ,
NetworkManager
��, :
.
��: ;
ServerClientId
��; I
)
��I J
;
��J K
m_ClientRpcParams
�� %
.
��% &
Send
��& *
.
��* +
TargetClientIds
��+ :
=
��; <
m_ClientSendList
��= M
;
��M N1
#m_NetworkAnimatorStateChangeHandler
�� 7
.
��7 8!
SendAnimationUpdate
��8 K
(
��K L
animSnapshot
��L X
,
��X Y
m_ClientRpcParams
��Z k
)
��k l
;
��l m
}
�� 
}
�� 
}
�� 	
[
�� 	
	ClientRpc
��	 
]
�� 
private
�� 
unsafe
�� 
void
�� $
SendAnimStateClientRpc
�� 2
(
��2 3
AnimationMessage
��3 C
animSnapshot
��D P
,
��P Q
ClientRpcParams
��R a
clientRpcParams
��b q
=
��r s
default
��t {
)
��{ |
{
�� 	
var
�� #
isServerAuthoritative
�� %
=
��& '#
IsServerAuthoritative
��( =
(
��= >
)
��> ?
;
��? @
if
�� 
(
�� 
!
�� #
isServerAuthoritative
�� &
&&
��' )
!
��* +
IsOwner
��+ 2
||
��3 5#
isServerAuthoritative
��6 K
)
��K L
{
�� "
UpdateAnimationState
�� $
(
��$ %
animSnapshot
��% 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
[
�� 	
	ServerRpc
��	 
]
�� 
private
�� 
void
�� &
SendAnimTriggerServerRpc
�� -
(
��- .%
AnimationTriggerMessage
��. E%
animationTriggerMessage
��F ]
,
��] ^
ServerRpcParams
��_ n
serverRpcParams
��o ~
=�� �
default��� �
)��� �
{
�� 	
if
�� 
(
�� #
IsServerAuthoritative
�� %
(
��% &
)
��& '
)
��' (
{
�� 1
#m_NetworkAnimatorStateChangeHandler
�� 3
.
��3 4
SendTriggerUpdate
��4 E
(
��E F%
animationTriggerMessage
��F ]
)
��] ^
;
��^ _
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
serverRpcParams
�� #
.
��# $
Receive
��$ +
.
��+ ,
SenderClientId
��, :
!=
��; =
OwnerClientId
��> K
)
��K L
{
�� 
return
�� 
;
�� 
}
�� 

m_Animator
�� 
.
�� 
SetBool
�� "
(
��" #%
animationTriggerMessage
��# :
.
��: ;
Hash
��; ?
,
��? @%
animationTriggerMessage
��A X
.
��X Y
IsTriggerSet
��Y e
)
��e f
;
��f g
if
�� 
(
�� 
NetworkManager
�� "
.
��" #!
ConnectedClientsIds
��# 6
.
��6 7
Count
��7 <
-
��= >
$num
��? @
>
��A B
$num
��C D
)
��D E
{
�� 
m_ClientSendList
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
m_ClientSendList
�� $
.
��$ %
AddRange
��% -
(
��- .
NetworkManager
��. <
.
��< =!
ConnectedClientsIds
��= P
)
��P Q
;
��Q R
m_ClientSendList
�� $
.
��$ %
Remove
��% +
(
��+ ,
serverRpcParams
��, ;
.
��; <
Receive
��< C
.
��C D
SenderClientId
��D R
)
��R S
;
��S T
m_ClientSendList
�� $
.
��$ %
Remove
��% +
(
��+ ,
NetworkManager
��, :
.
��: ;
ServerClientId
��; I
)
��I J
;
��J K
m_ClientRpcParams
�� %
.
��% &
Send
��& *
.
��* +
TargetClientIds
��+ :
=
��; <
m_ClientSendList
��= M
;
��M N1
#m_NetworkAnimatorStateChangeHandler
�� 7
.
��7 8
SendTriggerUpdate
��8 I
(
��I J%
animationTriggerMessage
��J a
,
��a b
m_ClientRpcParams
��c t
)
��t u
;
��u v
}
�� 
}
�� 
}
�� 	
[
�� 	
	ClientRpc
��	 
]
�� 
internal
�� 
void
�� &
SendAnimTriggerClientRpc
�� .
(
��. /%
AnimationTriggerMessage
��/ F%
animationTriggerMessage
��G ^
,
��^ _
ClientRpcParams
��` o
clientRpcParams
��p 
=��� �
default��� �
)��� �
{
�� 	
var
�� #
isServerAuthoritative
�� %
=
��& '#
IsServerAuthoritative
��( =
(
��= >
)
��> ?
;
��? @
if
�� 
(
�� 
!
�� #
isServerAuthoritative
�� &
&&
��' )
!
��* +
IsOwner
��+ 2
||
��3 5#
isServerAuthoritative
��6 K
)
��K L
{
�� 

m_Animator
�� 
.
�� 
SetBool
�� "
(
��" #%
animationTriggerMessage
��# :
.
��: ;
Hash
��; ?
,
��? @%
animationTriggerMessage
��A X
.
��X Y
IsTriggerSet
��Y e
)
��e f
;
��f g
}
�� 
}
�� 	
public
�� 
void
�� 

SetTrigger
�� 
(
�� 
string
�� %
triggerName
��& 1
)
��1 2
{
�� 	

SetTrigger
�� 
(
�� 
Animator
�� 
.
��  
StringToHash
��  ,
(
��, -
triggerName
��- 8
)
��8 9
)
��9 :
;
��: ;
}
�� 	
public
�� 
void
�� 

SetTrigger
�� 
(
�� 
int
�� "
hash
��# '
,
��' (
bool
��) -

setTrigger
��. 8
=
��9 :
true
��; ?
)
��? @
{
�� 	
var
�� #
isServerAuthoritative
�� %
=
��& '#
IsServerAuthoritative
��( =
(
��= >
)
��> ?
;
��? @
if
�� 
(
�� 
IsOwner
�� 
&&
�� 
!
�� #
isServerAuthoritative
�� 1
||
��2 4
IsServer
��5 =
&&
��> @#
isServerAuthoritative
��A V
)
��V W
{
�� 
var
��  
animTriggerMessage
�� &
=
��' (
new
��) ,%
AnimationTriggerMessage
��- D
(
��D E
)
��E F
{
��G H
Hash
��I M
=
��N O
hash
��P T
,
��T U
IsTriggerSet
��V b
=
��c d

setTrigger
��e o
}
��p q
;
��q r
if
�� 
(
�� 
IsServer
�� 
)
�� 
{
�� &
SendAnimTriggerClientRpc
�� ,
(
��, - 
animTriggerMessage
��- ?
)
��? @
;
��@ A
}
�� 
else
�� 
{
�� &
SendAnimTriggerServerRpc
�� ,
(
��, - 
animTriggerMessage
��- ?
)
��? @
;
��@ A
}
�� 

m_Animator
�� 
.
�� 
SetBool
�� "
(
��" #
hash
��# '
,
��' (

setTrigger
��) 3
)
��3 4
;
��4 5
}
�� 
}
�� 	
public
�� 
void
�� 
ResetTrigger
��  
(
��  !
string
��! '
triggerName
��( 3
)
��3 4
{
�� 	
ResetTrigger
�� 
(
�� 
Animator
�� !
.
��! "
StringToHash
��" .
(
��. /
triggerName
��/ :
)
��: ;
)
��; <
;
��< =
}
�� 	
public
�� 
void
�� 
ResetTrigger
��  
(
��  !
int
��! $
hash
��% )
)
��) *
{
�� 	

SetTrigger
�� 
(
�� 
hash
�� 
,
�� 
false
�� "
)
��" #
;
��# $
}
�� 	
}
�� 
}�� �"
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
}ee ��
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
rot	**~ �
,
**� �
Vector3
**� �
scale
**� �
)
**� �
;
**� �
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
�� 
bool
�� 
HasRotAngleZ
�� &
{
�� 
get
�� 
=>
�� 
(
�� 
m_Bitset
��  
&
��! "
(
��# $
$num
��$ %
<<
��& (
k_RotAngleZBit
��) 7
)
��7 8
)
��8 9
!=
��: <
$num
��= >
;
��> ?
set
�� 
{
�� 
if
�� 
(
�� 
value
�� 
)
�� 
{
��  
m_Bitset
��! )
=
��* +
(
��, -
ushort
��- 3
)
��3 4
(
��4 5
m_Bitset
��5 =
|
��> ?
(
��@ A
$num
��A B
<<
��C E
k_RotAngleZBit
��F T
)
��T U
)
��U V
;
��V W
}
��X Y
else
�� 
{
�� 
m_Bitset
�� #
=
��$ %
(
��& '
ushort
��' -
)
��- .
(
��. /
m_Bitset
��/ 7
&
��8 9
~
��: ;
(
��; <
$num
��< =
<<
��> @
k_RotAngleZBit
��A O
)
��O P
)
��P Q
;
��Q R
}
��S T
}
�� 
}
�� 
internal
�� 
bool
�� 
	HasScaleX
�� #
{
�� 
get
�� 
=>
�� 
(
�� 
m_Bitset
��  
&
��! "
(
��# $
$num
��$ %
<<
��& (
k_ScaleXBit
��) 4
)
��4 5
)
��5 6
!=
��7 9
$num
��: ;
;
��; <
set
�� 
{
�� 
if
�� 
(
�� 
value
�� 
)
�� 
{
��  
m_Bitset
��! )
=
��* +
(
��, -
ushort
��- 3
)
��3 4
(
��4 5
m_Bitset
��5 =
|
��> ?
(
��@ A
$num
��A B
<<
��C E
k_ScaleXBit
��F Q
)
��Q R
)
��R S
;
��S T
}
��U V
else
�� 
{
�� 
m_Bitset
�� #
=
��$ %
(
��& '
ushort
��' -
)
��- .
(
��. /
m_Bitset
��/ 7
&
��8 9
~
��: ;
(
��; <
$num
��< =
<<
��> @
k_ScaleXBit
��A L
)
��L M
)
��M N
;
��N O
}
��P Q
}
�� 
}
�� 
internal
�� 
bool
�� 
	HasScaleY
�� #
{
�� 
get
�� 
=>
�� 
(
�� 
m_Bitset
��  
&
��! "
(
��# $
$num
��$ %
<<
��& (
k_ScaleYBit
��) 4
)
��4 5
)
��5 6
!=
��7 9
$num
��: ;
;
��; <
set
�� 
{
�� 
if
�� 
(
�� 
value
�� 
)
�� 
{
��  
m_Bitset
��! )
=
��* +
(
��, -
ushort
��- 3
)
��3 4
(
��4 5
m_Bitset
��5 =
|
��> ?
(
��@ A
$num
��A B
<<
��C E
k_ScaleYBit
��F Q
)
��Q R
)
��R S
;
��S T
}
��U V
else
�� 
{
�� 
m_Bitset
�� #
=
��$ %
(
��& '
ushort
��' -
)
��- .
(
��. /
m_Bitset
��/ 7
&
��8 9
~
��: ;
(
��; <
$num
��< =
<<
��> @
k_ScaleYBit
��A L
)
��L M
)
��M N
;
��N O
}
��P Q
}
�� 
}
�� 
internal
�� 
bool
�� 
	HasScaleZ
�� #
{
�� 
get
�� 
=>
�� 
(
�� 
m_Bitset
��  
&
��! "
(
��# $
$num
��$ %
<<
��& (
k_ScaleZBit
��) 4
)
��4 5
)
��5 6
!=
��7 9
$num
��: ;
;
��; <
set
�� 
{
�� 
if
�� 
(
�� 
value
�� 
)
�� 
{
��  
m_Bitset
��! )
=
��* +
(
��, -
ushort
��- 3
)
��3 4
(
��4 5
m_Bitset
��5 =
|
��> ?
(
��@ A
$num
��A B
<<
��C E
k_ScaleZBit
��F Q
)
��Q R
)
��R S
;
��S T
}
��U V
else
�� 
{
�� 
m_Bitset
�� #
=
��$ %
(
��& '
ushort
��' -
)
��- .
(
��. /
m_Bitset
��/ 7
&
��8 9
~
��: ;
(
��; <
$num
��< =
<<
��> @
k_ScaleZBit
��A L
)
��L M
)
��M N
;
��N O
}
��P Q
}
�� 
}
�� 
internal
�� 
bool
�� $
IsTeleportingNextFrame
�� 0
{
�� 
get
�� 
=>
�� 
(
�� 
m_Bitset
��  
&
��! "
(
��# $
$num
��$ %
<<
��& (
k_TeleportingBit
��) 9
)
��9 :
)
��: ;
!=
��< >
$num
��? @
;
��@ A
set
�� 
{
�� 
if
�� 
(
�� 
value
�� 
)
�� 
{
��  
m_Bitset
��! )
=
��* +
(
��, -
ushort
��- 3
)
��3 4
(
��4 5
m_Bitset
��5 =
|
��> ?
(
��@ A
$num
��A B
<<
��C E
k_TeleportingBit
��F V
)
��V W
)
��W X
;
��X Y
}
��Z [
else
�� 
{
�� 
m_Bitset
�� #
=
��$ %
(
��& '
ushort
��' -
)
��- .
(
��. /
m_Bitset
��/ 7
&
��8 9
~
��: ;
(
��; <
$num
��< =
<<
��> @
k_TeleportingBit
��A Q
)
��Q R
)
��R S
;
��S T
}
��U V
}
�� 
}
�� 
internal
�� 
float
�� 
	PositionX
�� $
,
��$ %
	PositionY
��& /
,
��/ 0
	PositionZ
��1 :
;
��: ;
internal
�� 
float
�� 
	RotAngleX
�� $
,
��$ %
	RotAngleY
��& /
,
��/ 0
	RotAngleZ
��1 :
;
��: ;
internal
�� 
float
�� 
ScaleX
�� !
,
��! "
ScaleY
��# )
,
��) *
ScaleZ
��+ 1
;
��1 2
internal
�� 
double
�� 
SentTime
�� $
;
��$ %
internal
�� 
Vector3
�� 
Position
�� %
{
�� 
get
�� 
{
�� 
return
�� 
new
��  
Vector3
��! (
(
��( )
	PositionX
��) 2
,
��2 3
	PositionY
��4 =
,
��= >
	PositionZ
��? H
)
��H I
;
��I J
}
��K L
set
�� 
{
�� 
	PositionX
�� 
=
�� 
value
��  %
.
��% &
x
��& '
;
��' (
	PositionY
�� 
=
�� 
value
��  %
.
��% &
y
��& '
;
��' (
	PositionZ
�� 
=
�� 
value
��  %
.
��% &
z
��& '
;
��' (
}
�� 
}
�� 
internal
�� 
Vector3
�� 
Rotation
�� %
{
�� 
get
�� 
{
�� 
return
�� 
new
��  
Vector3
��! (
(
��( )
	RotAngleX
��) 2
,
��2 3
	RotAngleY
��4 =
,
��= >
	RotAngleZ
��? H
)
��H I
;
��I J
}
��K L
set
�� 
{
�� 
	RotAngleX
�� 
=
�� 
value
��  %
.
��% &
x
��& '
;
��' (
	RotAngleY
�� 
=
�� 
value
��  %
.
��% &
y
��& '
;
��' (
	RotAngleZ
�� 
=
�� 
value
��  %
.
��% &
z
��& '
;
��' (
}
�� 
}
�� 
internal
�� 
Vector3
�� 
Scale
�� "
{
�� 
get
�� 
{
�� 
return
�� 
new
��  
Vector3
��! (
(
��( )
ScaleX
��) /
,
��/ 0
ScaleY
��1 7
,
��7 8
ScaleZ
��9 ?
)
��? @
;
��@ A
}
��B C
set
�� 
{
�� 
ScaleX
�� 
=
�� 
value
�� "
.
��" #
x
��# $
;
��$ %
ScaleY
�� 
=
�� 
value
�� "
.
��" #
y
��# $
;
��$ %
ScaleZ
�� 
=
�� 
value
�� "
.
��" #
z
��# $
;
��$ %
}
�� 
}
�� 
public
�� 
void
�� 
NetworkSerialize
�� (
<
��( )
T
��) *
>
��* +
(
��+ ,
BufferSerializer
��, <
<
��< =
T
��= >
>
��> ?

serializer
��@ J
)
��J K
where
��L Q
T
��R S
:
��T U
IReaderWriter
��V c
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� )
(
��) *
ref
��* -
SentTime
��. 6
)
��6 7
;
��7 8

serializer
�� 
.
�� 
SerializeValue
�� )
(
��) *
ref
��* -
m_Bitset
��. 6
)
��6 7
;
��7 8
if
�� 
(
�� 
HasPositionX
��  
)
��  !
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� -
(
��- .
ref
��. 1
	PositionX
��2 ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
HasPositionY
��  
)
��  !
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� -
(
��- .
ref
��. 1
	PositionY
��2 ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
HasPositionZ
��  
)
��  !
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� -
(
��- .
ref
��. 1
	PositionZ
��2 ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
HasRotAngleX
��  
)
��  !
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� -
(
��- .
ref
��. 1
	RotAngleX
��2 ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
HasRotAngleY
��  
)
��  !
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� -
(
��- .
ref
��. 1
	RotAngleY
��2 ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
HasRotAngleZ
��  
)
��  !
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� -
(
��- .
ref
��. 1
	RotAngleZ
��2 ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
	HasScaleX
�� 
)
�� 
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� -
(
��- .
ref
��. 1
ScaleX
��2 8
)
��8 9
;
��9 :
}
�� 
if
�� 
(
�� 
	HasScaleY
�� 
)
�� 
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� -
(
��- .
ref
��. 1
ScaleY
��2 8
)
��8 9
;
��9 :
}
�� 
if
�� 
(
�� 
	HasScaleZ
�� 
)
�� 
{
�� 

serializer
�� 
.
�� 
SerializeValue
�� -
(
��- .
ref
��. 1
ScaleZ
��2 8
)
��8 9
;
��9 :
}
�� 
}
�� 
}
�� 	
public
�� 
bool
�� 
SyncPositionX
�� !
=
��" #
true
��$ (
;
��( )
public
�� 
bool
�� 
SyncPositionY
�� !
=
��" #
true
��$ (
;
��( )
public
�� 
bool
�� 
SyncPositionZ
�� !
=
��" #
true
��$ (
;
��( )
public
�� 
bool
�� 
SyncRotAngleX
�� !
=
��" #
true
��$ (
;
��( )
public
�� 
bool
�� 
SyncRotAngleY
�� !
=
��" #
true
��$ (
;
��( )
public
�� 
bool
�� 
SyncRotAngleZ
�� !
=
��" #
true
��$ (
;
��( )
public
�� 
bool
�� 

SyncScaleX
�� 
=
��  
true
��! %
;
��% &
public
�� 
bool
�� 

SyncScaleY
�� 
=
��  
true
��! %
;
��% &
public
�� 
bool
�� 

SyncScaleZ
�� 
=
��  
true
��! %
;
��% &
public
�� 
float
�� 
PositionThreshold
�� &
=
��' (&
PositionThresholdDefault
��) A
;
��A B
[
�� 	
Range
��	 
(
�� 
$num
�� 
,
�� 
$num
�� 
)
�� 
]
�� 
public
�� 
float
�� 
RotAngleThreshold
�� &
=
��' (&
RotAngleThresholdDefault
��) A
;
��A B
public
�� 
float
�� 
ScaleThreshold
�� #
=
��$ %#
ScaleThresholdDefault
��& ;
;
��; <
[
�� 	
Tooltip
��	 
(
�� 
$str
�� [
)
��[ \
]
��\ ]
public
�� 
bool
�� 
InLocalSpace
��  
=
��! "
false
��# (
;
��( )
private
�� 
bool
�� $
m_LastInterpolateLocal
�� +
=
��, -
false
��. 3
;
��3 4
public
�� 
bool
�� 
Interpolate
�� 
=
��  !
true
��" &
;
��& '
private
�� 
bool
�� 
m_LastInterpolate
�� &
=
��' (
true
��) -
;
��- .
public
�� 
bool
�� "
CanCommitToTransform
�� (
{
��) *
get
��+ .
;
��. /
	protected
��0 9
set
��: =
;
��= >
}
��? @
	protected
�� 
bool
�� 
m_CachedIsServer
�� '
;
��' (
	protected
�� 
NetworkManager
��  $
m_CachedNetworkManager
��! 7
;
��7 8
private
�� 
readonly
�� 
NetworkVariable
�� (
<
��( )#
NetworkTransformState
��) >
>
��> ?&
m_ReplicatedNetworkState
��@ X
=
��Y Z
new
��[ ^
NetworkVariable
��_ n
<
��n o$
NetworkTransformState��o �
>��� �
(��� �
new��� �%
NetworkTransformState��� �
(��� �
)��� �
)��� �
;��� �
private
�� #
NetworkTransformState
�� %.
 m_LocalAuthoritativeNetworkState
��& F
;
��F G
private
�� 
const
�� 
int
�� !
k_DebugDrawLineTime
�� -
=
��. /
$num
��0 2
;
��2 3
private
�� 
bool
��  
m_HasSentLastValue
�� '
=
��( )
false
��* /
;
��/ 0
private
�� (
BufferedLinearInterpolator
�� *
<
��* +
float
��+ 0
>
��0 1%
m_PositionXInterpolator
��2 I
;
��I J
private
�� (
BufferedLinearInterpolator
�� *
<
��* +
float
��+ 0
>
��0 1%
m_PositionYInterpolator
��2 I
;
��I J
private
�� (
BufferedLinearInterpolator
�� *
<
��* +
float
��+ 0
>
��0 1%
m_PositionZInterpolator
��2 I
;
��I J
private
�� (
BufferedLinearInterpolator
�� *
<
��* +

Quaternion
��+ 5
>
��5 6$
m_RotationInterpolator
��7 M
;
��M N
private
�� (
BufferedLinearInterpolator
�� *
<
��* +
float
��+ 0
>
��0 1"
m_ScaleXInterpolator
��2 F
;
��F G
private
�� (
BufferedLinearInterpolator
�� *
<
��* +
float
��+ 0
>
��0 1"
m_ScaleYInterpolator
��2 F
;
��F G
private
�� (
BufferedLinearInterpolator
�� *
<
��* +
float
��+ 0
>
��0 1"
m_ScaleZInterpolator
��2 F
;
��F G
private
�� 
readonly
�� 
List
�� 
<
�� (
BufferedLinearInterpolator
�� 8
<
��8 9
float
��9 >
>
��> ?
>
��? @%
m_AllFloatInterpolators
��A X
=
��Y Z
new
��[ ^
List
��_ c
<
��c d(
BufferedLinearInterpolator
��d ~
<
��~ 
float�� �
>��� �
>��� �
(��� �
$num��� �
)��� �
;��� �
private
�� 
	Transform
�� 
m_Transform
�� %
;
��% &
private
�� 
int
�� 
m_LastSentTick
�� "
;
��" #
private
�� #
NetworkTransformState
�� %
m_LastSentState
��& 5
;
��5 6
	protected
�� 
void
�� (
TryCommitTransformToServer
�� 1
(
��1 2
	Transform
��2 ;
transformToCommit
��< M
,
��M N
double
��O U
	dirtyTime
��V _
)
��_ `
{
�� 	
var
�� 
isDirty
�� 
=
�� *
ApplyTransformToNetworkState
�� 6
(
��6 7
ref
��7 :.
 m_LocalAuthoritativeNetworkState
��; [
,
��[ \
	dirtyTime
��] f
,
��f g
transformToCommit
��h y
)
��y z
;
��z {
	TryCommit
�� 
(
�� 
isDirty
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� %
TryCommitValuesToServer
�� ,
(
��, -
Vector3
��- 4
position
��5 =
,
��= >
Vector3
��? F
rotation
��G O
,
��O P
Vector3
��Q X
scale
��Y ^
,
��^ _
double
��` f
	dirtyTime
��g p
)
��p q
{
�� 	
var
�� 
isDirty
�� 
=
�� 2
$ApplyTransformToNetworkStateWithInfo
�� >
(
��> ?
ref
��? B.
 m_LocalAuthoritativeNetworkState
��C c
,
��c d
	dirtyTime
��e n
,
��n o
position
��p x
,
��x y
rotation��z �
,��� �
scale��� �
)��� �
;��� �
	TryCommit
�� 
(
�� 
isDirty
�� 
.
�� 
isDirty
�� %
)
��% &
;
��& '
}
�� 	
private
�� 
void
�� 
	TryCommit
�� 
(
�� 
bool
�� #
isDirty
��$ +
)
��+ ,
{
�� 	
void
�� 
Send
�� 
(
�� #
NetworkTransformState
�� +
stateToSend
��, 7
)
��7 8
{
�� 
if
�� 
(
�� 
m_CachedIsServer
�� $
)
��$ %
{
�� '
CommitLocallyAndReplicate
�� -
(
��- .
stateToSend
��. 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� &
CommitTransformServerRpc
�� ,
(
��, -
stateToSend
��- 8
)
��8 9
;
��9 :
}
�� 
}
�� 
if
�� 
(
�� 
isDirty
�� 
)
�� 
{
�� 
Send
�� 
(
�� .
 m_LocalAuthoritativeNetworkState
�� 5
)
��5 6
;
��6 7 
m_HasSentLastValue
�� "
=
��# $
false
��% *
;
��* +
m_LastSentTick
�� 
=
��  $
m_CachedNetworkManager
��! 7
.
��7 8
	LocalTime
��8 A
.
��A B
Tick
��B F
;
��F G
m_LastSentState
�� 
=
��  !.
 m_LocalAuthoritativeNetworkState
��" B
;
��B C
}
�� 
else
�� 
if
�� 
(
�� 
!
��  
m_HasSentLastValue
�� (
&&
��) +$
m_CachedNetworkManager
��, B
.
��B C
	LocalTime
��C L
.
��L M
Tick
��M Q
>=
��R T
m_LastSentTick
��U c
+
��d e
$num
��f g
)
��g h
{
�� 
m_LastSentState
�� 
.
��  
SentTime
��  (
=
��) *$
m_CachedNetworkManager
��+ A
.
��A B
	LocalTime
��B K
.
��K L
Time
��L P
;
��P Q
Send
�� 
(
�� 
m_LastSentState
�� $
)
��$ %
;
��% & 
m_HasSentLastValue
�� "
=
��# $
true
��% )
;
��) *
}
�� 
}
�� 	
[
�� 	
	ServerRpc
��	 
(
�� 
RequireOwnership
�� #
=
��$ %
false
��& +
)
��+ ,
]
��, -
private
�� 
void
�� &
CommitTransformServerRpc
�� -
(
��- .#
NetworkTransformState
��. C
networkState
��D P
,
��P Q
ServerRpcParams
��R a
serverParams
��b n
=
��o p
default
��q x
)
��x y
{
�� 	
if
�� 
(
�� 
serverParams
�� 
.
�� 
Receive
�� $
.
��$ %
SenderClientId
��% 3
==
��4 6
OwnerClientId
��7 D
)
��D E
{
�� '
CommitLocallyAndReplicate
�� )
(
��) *
networkState
��* 6
)
��6 7
;
��7 8
}
�� 
}
�� 	
private
�� 
void
�� '
CommitLocallyAndReplicate
�� .
(
��. /#
NetworkTransformState
��/ D
networkState
��E Q
)
��Q R
{
�� 	&
m_ReplicatedNetworkState
�� $
.
��$ %
Value
��% *
=
��+ ,
networkState
��- 9
;
��9 :
if
�� 
(
�� 
Interpolate
�� 
)
�� 
{
�� "
AddInterpolatedState
�� $
(
��$ %
networkState
��% 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
private
�� 
void
�� ?
1ResetInterpolatedStateToCurrentAuthoritativeState
�� F
(
��F G
)
��G H
{
�� 	
var
�� 

serverTime
�� 
=
�� 
NetworkManager
�� +
.
��+ ,

ServerTime
��, 6
.
��6 7
Time
��7 ;
;
��; <%
m_PositionXInterpolator
�� #
.
��# $
ResetTo
��$ +
(
��+ ,.
 m_LocalAuthoritativeNetworkState
��, L
.
��L M
	PositionX
��M V
,
��V W

serverTime
��X b
)
��b c
;
��c d%
m_PositionYInterpolator
�� #
.
��# $
ResetTo
��$ +
(
��+ ,.
 m_LocalAuthoritativeNetworkState
��, L
.
��L M
	PositionY
��M V
,
��V W

serverTime
��X b
)
��b c
;
��c d%
m_PositionZInterpolator
�� #
.
��# $
ResetTo
��$ +
(
��+ ,.
 m_LocalAuthoritativeNetworkState
��, L
.
��L M
	PositionZ
��M V
,
��V W

serverTime
��X b
)
��b c
;
��c d$
m_RotationInterpolator
�� "
.
��" #
ResetTo
��# *
(
��* +

Quaternion
��+ 5
.
��5 6
Euler
��6 ;
(
��; <.
 m_LocalAuthoritativeNetworkState
��< \
.
��\ ]
Rotation
��] e
)
��e f
,
��f g

serverTime
��h r
)
��r s
;
��s t"
m_ScaleXInterpolator
��  
.
��  !
ResetTo
��! (
(
��( ).
 m_LocalAuthoritativeNetworkState
��) I
.
��I J
ScaleX
��J P
,
��P Q

serverTime
��R \
)
��\ ]
;
��] ^"
m_ScaleYInterpolator
��  
.
��  !
ResetTo
��! (
(
��( ).
 m_LocalAuthoritativeNetworkState
��) I
.
��I J
ScaleY
��J P
,
��P Q

serverTime
��R \
)
��\ ]
;
��] ^"
m_ScaleZInterpolator
��  
.
��  !
ResetTo
��! (
(
��( ).
 m_LocalAuthoritativeNetworkState
��) I
.
��I J
ScaleZ
��J P
,
��P Q

serverTime
��R \
)
��\ ]
;
��] ^
}
�� 	
internal
�� 
(
�� 
bool
�� 
isDirty
�� 
,
�� 
bool
��  $
isPositionDirty
��% 4
,
��4 5
bool
��6 :
isRotationDirty
��; J
,
��J K
bool
��L P
isScaleDirty
��Q ]
)
��] ^$
ApplyLocalNetworkState
��_ u
(
��u v
	Transform
��v 
	transform��� �
)��� �
{
�� 	
return
�� 2
$ApplyTransformToNetworkStateWithInfo
�� 7
(
��7 8
ref
��8 ;.
 m_LocalAuthoritativeNetworkState
��< \
,
��\ ]$
m_CachedNetworkManager
��^ t
.
��t u
	LocalTime
��u ~
.
��~ 
Time�� �
,��� �
	transform��� �
)��� �
;��� �
}
�� 	
internal
�� 
bool
�� *
ApplyTransformToNetworkState
�� 2
(
��2 3
ref
��3 6#
NetworkTransformState
��7 L
networkState
��M Y
,
��Y Z
double
��[ a
	dirtyTime
��b k
,
��k l
	Transform
��m v
transformToUse��w �
)��� �
{
�� 	
return
�� 2
$ApplyTransformToNetworkStateWithInfo
�� 7
(
��7 8
ref
��8 ;
networkState
��< H
,
��H I
	dirtyTime
��J S
,
��S T
transformToUse
��U c
)
��c d
.
��d e
isDirty
��e l
;
��l m
}
�� 	
private
�� 
(
�� 
bool
�� 
isDirty
�� 
,
�� 
bool
�� #
isPositionDirty
��$ 3
,
��3 4
bool
��5 9
isRotationDirty
��: I
,
��I J
bool
��K O
isScaleDirty
��P \
)
��\ ]3
$ApplyTransformToNetworkStateWithInfo��^ �
(��� �
ref��� �%
NetworkTransformState��� �
networkState��� �
,��� �
double��� �
	dirtyTime��� �
,��� �
	Transform��� �
transformToUse��� �
)��� �
{
�� 	
var
�� 
position
�� 
=
�� 
InLocalSpace
�� '
?
��( )
transformToUse
��* 8
.
��8 9
localPosition
��9 F
:
��G H
transformToUse
��I W
.
��W X
position
��X `
;
��` a
var
�� 
	rotAngles
�� 
=
�� 
InLocalSpace
�� (
?
��) *
transformToUse
��+ 9
.
��9 :
localEulerAngles
��: J
:
��K L
transformToUse
��M [
.
��[ \
eulerAngles
��\ g
;
��g h
var
�� 
scale
�� 
=
�� 
transformToUse
�� &
.
��& '

localScale
��' 1
;
��1 2
return
�� 2
$ApplyTransformToNetworkStateWithInfo
�� 7
(
��7 8
ref
��8 ;
networkState
��< H
,
��H I
	dirtyTime
��J S
,
��S T
position
��U ]
,
��] ^
	rotAngles
��_ h
,
��h i
scale
��j o
)
��o p
;
��p q
}
�� 	
private
�� 
(
�� 
bool
�� 
isDirty
�� 
,
�� 
bool
�� #
isPositionDirty
��$ 3
,
��3 4
bool
��5 9
isRotationDirty
��: I
,
��I J
bool
��K O
isScaleDirty
��P \
)
��\ ]3
$ApplyTransformToNetworkStateWithInfo��^ �
(��� �
ref��� �%
NetworkTransformState��� �
networkState��� �
,��� �
double��� �
	dirtyTime��� �
,��� �
Vector3��� �
position��� �
,��� �
Vector3��� �
	rotAngles��� �
,��� �
Vector3��� �
scale��� �
)��� �
{
�� 	
var
�� 
isDirty
�� 
=
�� 
false
�� 
;
��  
var
�� 
isPositionDirty
�� 
=
��  !
false
��" '
;
��' (
var
�� 
isRotationDirty
�� 
=
��  !
false
��" '
;
��' (
var
�� 
isScaleDirty
�� 
=
�� 
false
�� $
;
��$ %
if
�� 
(
�� 
InLocalSpace
�� 
!=
�� 
networkState
��  ,
.
��, -
InLocalSpace
��- 9
)
��9 :
{
�� 
networkState
�� 
.
�� 
InLocalSpace
�� )
=
��* +
InLocalSpace
��, 8
;
��8 9
isDirty
�� 
=
�� 
true
�� 
;
�� 
}
�� 
if
�� 
(
�� 
SyncPositionX
�� 
&&
��  
Mathf
�� 
.
�� 
Abs
�� 
(
�� 
networkState
�� &
.
��& '
	PositionX
��' 0
-
��1 2
position
��3 ;
.
��; <
x
��< =
)
��= >
>
��? @
PositionThreshold
��A R
)
��R S
{
�� 
networkState
�� 
.
�� 
	PositionX
�� &
=
��' (
position
��) 1
.
��1 2
x
��2 3
;
��3 4
networkState
�� 
.
�� 
HasPositionX
�� )
=
��* +
true
��, 0
;
��0 1
isPositionDirty
�� 
=
��  !
true
��" &
;
��& '
}
�� 
if
�� 
(
�� 
SyncPositionY
�� 
&&
��  
Mathf
�� 
.
�� 
Abs
�� 
(
�� 
networkState
�� &
.
��& '
	PositionY
��' 0
-
��1 2
position
��3 ;
.
��; <
y
��< =
)
��= >
>
��? @
PositionThreshold
��A R
)
��R S
{
�� 
networkState
�� 
.
�� 
	PositionY
�� &
=
��' (
position
��) 1
.
��1 2
y
��2 3
;
��3 4
networkState
�� 
.
�� 
HasPositionY
�� )
=
��* +
true
��, 0
;
��0 1
isPositionDirty
�� 
=
��  !
true
��" &
;
��& '
}
�� 
if
�� 
(
�� 
SyncPositionZ
�� 
&&
��  
Mathf
�� 
.
�� 
Abs
�� 
(
�� 
networkState
�� &
.
��& '
	PositionZ
��' 0
-
��1 2
position
��3 ;
.
��; <
z
��< =
)
��= >
>
��? @
PositionThreshold
��A R
)
��R S
{
�� 
networkState
�� 
.
�� 
	PositionZ
�� &
=
��' (
position
��) 1
.
��1 2
z
��2 3
;
��3 4
networkState
�� 
.
�� 
HasPositionZ
�� )
=
��* +
true
��, 0
;
��0 1
isPositionDirty
�� 
=
��  !
true
��" &
;
��& '
}
�� 
if
�� 
(
�� 
SyncRotAngleX
�� 
&&
��  
Mathf
�� 
.
�� 
Abs
�� 
(
�� 
Mathf
�� 
.
��  

DeltaAngle
��  *
(
��* +
networkState
��+ 7
.
��7 8
	RotAngleX
��8 A
,
��A B
	rotAngles
��C L
.
��L M
x
��M N
)
��N O
)
��O P
>
��Q R
RotAngleThreshold
��S d
)
��d e
{
�� 
networkState
�� 
.
�� 
	RotAngleX
�� &
=
��' (
	rotAngles
��) 2
.
��2 3
x
��3 4
;
��4 5
networkState
�� 
.
�� 
HasRotAngleX
�� )
=
��* +
true
��, 0
;
��0 1
isRotationDirty
�� 
=
��  !
true
��" &
;
��& '
}
�� 
if
�� 
(
�� 
SyncRotAngleY
�� 
&&
��  
Mathf
�� 
.
�� 
Abs
�� 
(
�� 
Mathf
�� 
.
��  

DeltaAngle
��  *
(
��* +
networkState
��+ 7
.
��7 8
	RotAngleY
��8 A
,
��A B
	rotAngles
��C L
.
��L M
y
��M N
)
��N O
)
��O P
>
��Q R
RotAngleThreshold
��S d
)
��d e
{
�� 
networkState
�� 
.
�� 
	RotAngleY
�� &
=
��' (
	rotAngles
��) 2
.
��2 3
y
��3 4
;
��4 5
networkState
�� 
.
�� 
HasRotAngleY
�� )
=
��* +
true
��, 0
;
��0 1
isRotationDirty
�� 
=
��  !
true
��" &
;
��& '
}
�� 
if
�� 
(
�� 
SyncRotAngleZ
�� 
&&
��  
Mathf
�� 
.
�� 
Abs
�� 
(
�� 
Mathf
�� 
.
��  

DeltaAngle
��  *
(
��* +
networkState
��+ 7
.
��7 8
	RotAngleZ
��8 A
,
��A B
	rotAngles
��C L
.
��L M
z
��M N
)
��N O
)
��O P
>
��Q R
RotAngleThreshold
��S d
)
��d e
{
�� 
networkState
�� 
.
�� 
	RotAngleZ
�� &
=
��' (
	rotAngles
��) 2
.
��2 3
z
��3 4
;
��4 5
networkState
�� 
.
�� 
HasRotAngleZ
�� )
=
��* +
true
��, 0
;
��0 1
isRotationDirty
�� 
=
��  !
true
��" &
;
��& '
}
�� 
if
�� 
(
�� 

SyncScaleX
�� 
&&
�� 
Mathf
�� 
.
�� 
Abs
�� 
(
�� 
networkState
�� &
.
��& '
ScaleX
��' -
-
��. /
scale
��0 5
.
��5 6
x
��6 7
)
��7 8
>
��9 :
ScaleThreshold
��; I
)
��I J
{
�� 
networkState
�� 
.
�� 
ScaleX
�� #
=
��$ %
scale
��& +
.
��+ ,
x
��, -
;
��- .
networkState
�� 
.
�� 
	HasScaleX
�� &
=
��' (
true
��) -
;
��- .
isScaleDirty
�� 
=
�� 
true
�� #
;
��# $
}
�� 
if
�� 
(
�� 

SyncScaleY
�� 
&&
�� 
Mathf
�� 
.
�� 
Abs
�� 
(
�� 
networkState
�� &
.
��& '
ScaleY
��' -
-
��. /
scale
��0 5
.
��5 6
y
��6 7
)
��7 8
>
��9 :
ScaleThreshold
��; I
)
��I J
{
�� 
networkState
�� 
.
�� 
ScaleY
�� #
=
��$ %
scale
��& +
.
��+ ,
y
��, -
;
��- .
networkState
�� 
.
�� 
	HasScaleY
�� &
=
��' (
true
��) -
;
��- .
isScaleDirty
�� 
=
�� 
true
�� #
;
��# $
}
�� 
if
�� 
(
�� 

SyncScaleZ
�� 
&&
�� 
Mathf
�� 
.
�� 
Abs
�� 
(
�� 
networkState
�� &
.
��& '
ScaleZ
��' -
-
��. /
scale
��0 5
.
��5 6
z
��6 7
)
��7 8
>
��9 :
ScaleThreshold
��; I
)
��I J
{
�� 
networkState
�� 
.
�� 
ScaleZ
�� #
=
��$ %
scale
��& +
.
��+ ,
z
��, -
;
��- .
networkState
�� 
.
�� 
	HasScaleZ
�� &
=
��' (
true
��) -
;
��- .
isScaleDirty
�� 
=
�� 
true
�� #
;
��# $
}
�� 
isDirty
�� 
|=
�� 
isPositionDirty
�� &
||
��' )
isRotationDirty
��* 9
||
��: <
isScaleDirty
��= I
;
��I J
if
�� 
(
�� 
isDirty
�� 
)
�� 
{
�� 
networkState
�� 
.
�� 
SentTime
�� %
=
��& '
	dirtyTime
��( 1
;
��1 2
}
�� 
return
�� 
(
�� 
isDirty
�� 
,
�� 
isPositionDirty
�� ,
,
��, -
isRotationDirty
��. =
,
��= >
isScaleDirty
��? K
)
��K L
;
��L M
}
�� 	
private
�� 
void
�� 6
(ApplyInterpolatedNetworkStateToTransform
�� =
(
��= >#
NetworkTransformState
��> S
networkState
��T `
,
��` a
	Transform
��b k
transformToUpdate
��l }
)
��} ~
{
�� 	
var
�� "
interpolatedPosition
�� $
=
��% &
InLocalSpace
��' 3
?
��4 5
transformToUpdate
��6 G
.
��G H
localPosition
��H U
:
��V W
transformToUpdate
��X i
.
��i j
position
��j r
;
��r s
var
�� #
interpolatedRotAngles
�� %
=
��& '
InLocalSpace
��( 4
?
��5 6
transformToUpdate
��7 H
.
��H I
localEulerAngles
��I Y
:
��Z [
transformToUpdate
��\ m
.
��m n
eulerAngles
��n y
;
��y z
var
�� 
interpolatedScale
�� !
=
��" #
transformToUpdate
��$ 5
.
��5 6

localScale
��6 @
;
��@ A
InLocalSpace
�� 
=
�� 
networkState
�� '
.
��' (
InLocalSpace
��( 4
;
��4 5
if
�� 
(
�� 
SyncPositionX
�� 
)
�� 
{
�� "
interpolatedPosition
�� $
.
��$ %
x
��% &
=
��' (
networkState
��) 5
.
��5 6$
IsTeleportingNextFrame
��6 L
||
��M O
!
��P Q
Interpolate
��Q \
?
��] ^
networkState
��_ k
.
��k l
Position
��l t
.
��t u
x
��u v
:
��w x&
m_PositionXInterpolator��y �
.��� �$
GetInterpolatedValue��� �
(��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
SyncPositionY
�� 
)
�� 
{
�� "
interpolatedPosition
�� $
.
��$ %
y
��% &
=
��' (
networkState
��) 5
.
��5 6$
IsTeleportingNextFrame
��6 L
||
��M O
!
��P Q
Interpolate
��Q \
?
��] ^
networkState
��_ k
.
��k l
Position
��l t
.
��t u
y
��u v
:
��w x&
m_PositionYInterpolator��y �
.��� �$
GetInterpolatedValue��� �
(��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
SyncPositionZ
�� 
)
�� 
{
�� "
interpolatedPosition
�� $
.
��$ %
z
��% &
=
��' (
networkState
��) 5
.
��5 6$
IsTeleportingNextFrame
��6 L
||
��M O
!
��P Q
Interpolate
��Q \
?
��] ^
networkState
��_ k
.
��k l
Position
��l t
.
��t u
z
��u v
:
��w x&
m_PositionZInterpolator��y �
.��� �$
GetInterpolatedValue��� �
(��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
SyncRotAngleX
�� 
||
��  
SyncRotAngleY
��! .
||
��/ 1
SyncRotAngleZ
��2 ?
)
��? @
{
�� 
var
�� 
eulerAngles
�� 
=
��  !
new
��" %
Vector3
��& -
(
��- .
)
��. /
;
��/ 0
if
�� 
(
�� 
Interpolate
�� 
)
��  
{
�� 
eulerAngles
�� 
=
��  !$
m_RotationInterpolator
��" 8
.
��8 9"
GetInterpolatedValue
��9 M
(
��M N
)
��N O
.
��O P
eulerAngles
��P [
;
��[ \
}
�� 
if
�� 
(
�� 
SyncRotAngleX
�� !
)
��! "
{
�� #
interpolatedRotAngles
�� )
.
��) *
x
��* +
=
��, -
networkState
��. :
.
��: ;$
IsTeleportingNextFrame
��; Q
||
��R T
!
��U V
Interpolate
��V a
?
��b c
networkState
��d p
.
��p q
Rotation
��q y
.
��y z
x
��z {
:
��| }
eulerAngles��~ �
.��� �
x��� �
;��� �
}
�� 
if
�� 
(
�� 
SyncRotAngleY
�� !
)
��! "
{
�� #
interpolatedRotAngles
�� )
.
��) *
y
��* +
=
��, -
networkState
��. :
.
��: ;$
IsTeleportingNextFrame
��; Q
||
��R T
!
��U V
Interpolate
��V a
?
��b c
networkState
��d p
.
��p q
Rotation
��q y
.
��y z
y
��z {
:
��| }
eulerAngles��~ �
.��� �
y��� �
;��� �
}
�� 
if
�� 
(
�� 
SyncRotAngleZ
�� !
)
��! "
{
�� #
interpolatedRotAngles
�� )
.
��) *
z
��* +
=
��, -
networkState
��. :
.
��: ;$
IsTeleportingNextFrame
��; Q
||
��R T
!
��U V
Interpolate
��V a
?
��b c
networkState
��d p
.
��p q
Rotation
��q y
.
��y z
z
��z {
:
��| }
eulerAngles��~ �
.��� �
z��� �
;��� �
}
�� 
}
�� 
if
�� 
(
�� 

SyncScaleX
�� 
)
�� 
{
�� 
interpolatedScale
�� !
.
��! "
x
��" #
=
��$ %
networkState
��& 2
.
��2 3$
IsTeleportingNextFrame
��3 I
||
��J L
!
��M N
Interpolate
��N Y
?
��Z [
networkState
��\ h
.
��h i
Scale
��i n
.
��n o
x
��o p
:
��q r#
m_ScaleXInterpolator��s �
.��� �$
GetInterpolatedValue��� �
(��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 

SyncScaleY
�� 
)
�� 
{
�� 
interpolatedScale
�� !
.
��! "
y
��" #
=
��$ %
networkState
��& 2
.
��2 3$
IsTeleportingNextFrame
��3 I
||
��J L
!
��M N
Interpolate
��N Y
?
��Z [
networkState
��\ h
.
��h i
Scale
��i n
.
��n o
y
��o p
:
��q r#
m_ScaleYInterpolator��s �
.��� �$
GetInterpolatedValue��� �
(��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 

SyncScaleZ
�� 
)
�� 
{
�� 
interpolatedScale
�� !
.
��! "
z
��" #
=
��$ %
networkState
��& 2
.
��2 3$
IsTeleportingNextFrame
��3 I
||
��J L
!
��M N
Interpolate
��N Y
?
��Z [
networkState
��\ h
.
��h i
Scale
��i n
.
��n o
z
��o p
:
��q r#
m_ScaleZInterpolator��s �
.��� �$
GetInterpolatedValue��� �
(��� �
)��� �
;��� �
}
�� 
if
�� 
(
�� 
SyncPositionX
�� 
||
��  
SyncPositionY
��! .
||
��/ 1
SyncPositionZ
��2 ?
)
��? @
{
�� 
if
�� 
(
�� 
InLocalSpace
��  
)
��  !
{
�� 
transformToUpdate
�� %
.
��% &
localPosition
��& 3
=
��4 5"
interpolatedPosition
��6 J
;
��J K
}
�� 
else
�� 
{
�� 
transformToUpdate
�� %
.
��% &
position
��& .
=
��/ 0"
interpolatedPosition
��1 E
;
��E F
}
�� 
}
�� 
if
�� 
(
�� 
SyncRotAngleX
�� 
||
��  
SyncRotAngleY
��! .
||
��/ 1
SyncRotAngleZ
��2 ?
)
��? @
{
�� 
if
�� 
(
�� 
InLocalSpace
��  
)
��  !
{
�� 
transformToUpdate
�� %
.
��% &
localRotation
��& 3
=
��4 5

Quaternion
��6 @
.
��@ A
Euler
��A F
(
��F G#
interpolatedRotAngles
��G \
)
��\ ]
;
��] ^
}
�� 
else
�� 
{
�� 
transformToUpdate
�� %
.
��% &
rotation
��& .
=
��/ 0

Quaternion
��1 ;
.
��; <
Euler
��< A
(
��A B#
interpolatedRotAngles
��B W
)
��W X
;
��X Y
}
�� 
}
�� 
if
�� 
(
�� 

SyncScaleX
�� 
||
�� 

SyncScaleY
�� (
||
��) +

SyncScaleZ
��, 6
)
��6 7
{
�� 
transformToUpdate
�� !
.
��! "

localScale
��" ,
=
��- .
interpolatedScale
��/ @
;
��@ A
}
�� 
}
�� 	
private
�� 
void
�� "
AddInterpolatedState
�� )
(
��) *#
NetworkTransformState
��* ?
newState
��@ H
,
��H I
bool
��J N
reset
��O T
=
��U V
false
��W \
)
��\ ]
{
�� 	
var
�� 
sentTime
�� 
=
�� 
newState
�� #
.
��# $
SentTime
��$ ,
;
��, -
if
�� 
(
�� 
reset
�� 
)
�� 
{
�� 
if
�� 
(
�� 
newState
�� 
.
�� 
HasPositionX
�� )
)
��) *
{
�� %
m_PositionXInterpolator
�� +
.
��+ ,
ResetTo
��, 3
(
��3 4
newState
��4 <
.
��< =
	PositionX
��= F
,
��F G
sentTime
��H P
)
��P Q
;
��Q R
}
�� 
if
�� 
(
�� 
newState
�� 
.
�� 
HasPositionY
�� )
)
��) *
{
�� %
m_PositionYInterpolator
�� +
.
��+ ,
ResetTo
��, 3
(
��3 4
newState
��4 <
.
��< =
	PositionY
��= F
,
��F G
sentTime
��H P
)
��P Q
;
��Q R
}
�� 
if
�� 
(
�� 
newState
�� 
.
�� 
HasPositionZ
�� )
)
��) *
{
�� %
m_PositionZInterpolator
�� +
.
��+ ,
ResetTo
��, 3
(
��3 4
newState
��4 <
.
��< =
	PositionZ
��= F
,
��F G
sentTime
��H P
)
��P Q
;
��Q R
}
�� $
m_RotationInterpolator
�� &
.
��& '
ResetTo
��' .
(
��. /

Quaternion
��/ 9
.
��9 :
Euler
��: ?
(
��? @
newState
��@ H
.
��H I
Rotation
��I Q
)
��Q R
,
��R S
sentTime
��T \
)
��\ ]
;
��] ^
if
�� 
(
�� 
newState
�� 
.
�� 
	HasScaleX
�� &
)
��& '
{
�� "
m_ScaleXInterpolator
�� (
.
��( )
ResetTo
��) 0
(
��0 1
newState
��1 9
.
��9 :
ScaleX
��: @
,
��@ A
sentTime
��B J
)
��J K
;
��K L
}
�� 
if
�� 
(
�� 
newState
�� 
.
�� 
	HasScaleY
�� &
)
��& '
{
�� "
m_ScaleYInterpolator
�� (
.
��( )
ResetTo
��) 0
(
��0 1
newState
��1 9
.
��9 :
ScaleY
��: @
,
��@ A
sentTime
��B J
)
��J K
;
��K L
}
�� 
if
�� 
(
�� 
newState
�� 
.
�� 
	HasScaleZ
�� &
)
��& '
{
�� "
m_ScaleZInterpolator
�� (
.
��( )
ResetTo
��) 0
(
��0 1
newState
��1 9
.
��9 :
ScaleZ
��: @
,
��@ A
sentTime
��B J
)
��J K
;
��K L
}
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
newState
�� 
.
�� 
HasPositionX
�� %
)
��% &
{
�� %
m_PositionXInterpolator
�� '
.
��' (
AddMeasurement
��( 6
(
��6 7
newState
��7 ?
.
��? @
	PositionX
��@ I
,
��I J
sentTime
��K S
)
��S T
;
��T U
}
�� 
if
�� 
(
�� 
newState
�� 
.
�� 
HasPositionY
�� %
)
��% &
{
�� %
m_PositionYInterpolator
�� '
.
��' (
AddMeasurement
��( 6
(
��6 7
newState
��7 ?
.
��? @
	PositionY
��@ I
,
��I J
sentTime
��K S
)
��S T
;
��T U
}
�� 
if
�� 
(
�� 
newState
�� 
.
�� 
HasPositionZ
�� %
)
��% &
{
�� %
m_PositionZInterpolator
�� '
.
��' (
AddMeasurement
��( 6
(
��6 7
newState
��7 ?
.
��? @
	PositionZ
��@ I
,
��I J
sentTime
��K S
)
��S T
;
��T U
}
�� $
m_RotationInterpolator
�� "
.
��" #
AddMeasurement
��# 1
(
��1 2

Quaternion
��2 <
.
��< =
Euler
��= B
(
��B C
newState
��C K
.
��K L
Rotation
��L T
)
��T U
,
��U V
sentTime
��W _
)
��_ `
;
��` a
if
�� 
(
�� 
newState
�� 
.
�� 
	HasScaleX
�� "
)
��" #
{
�� "
m_ScaleXInterpolator
�� $
.
��$ %
AddMeasurement
��% 3
(
��3 4
newState
��4 <
.
��< =
ScaleX
��= C
,
��C D
sentTime
��E M
)
��M N
;
��N O
}
�� 
if
�� 
(
�� 
newState
�� 
.
�� 
	HasScaleY
�� "
)
��" #
{
�� "
m_ScaleYInterpolator
�� $
.
��$ %
AddMeasurement
��% 3
(
��3 4
newState
��4 <
.
��< =
ScaleY
��= C
,
��C D
sentTime
��E M
)
��M N
;
��N O
}
�� 
if
�� 
(
�� 
newState
�� 
.
�� 
	HasScaleZ
�� "
)
��" #
{
�� "
m_ScaleZInterpolator
�� $
.
��$ %
AddMeasurement
��% 3
(
��3 4
newState
��4 <
.
��< =
ScaleZ
��= C
,
��C D
sentTime
��E M
)
��M N
;
��N O
}
�� 
}
�� 	
private
�� 
void
�� #
OnNetworkStateChanged
�� *
(
��* +#
NetworkTransformState
��+ @
oldState
��A I
,
��I J#
NetworkTransformState
��K `
newState
��a i
)
��i j
{
�� 	
if
�� 
(
�� 
!
�� 
NetworkObject
�� 
.
�� 
	IsSpawned
�� (
)
��( )
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� "
CanCommitToTransform
�� $
)
��$ %
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
Interpolate
�� 
)
�� 
{
�� "
AddInterpolatedState
�� $
(
��$ %
newState
��% -
,
��- .
(
��/ 0
newState
��0 8
.
��8 9
InLocalSpace
��9 E
!=
��F H$
m_LastInterpolateLocal
��I _
)
��_ `
)
��` a
;
��a b
}
�� $
m_LastInterpolateLocal
�� "
=
��# $
newState
��% -
.
��- .
InLocalSpace
��. :
;
��: ;
if
�� 
(
�� $
m_CachedNetworkManager
�� &
.
��& '
LogLevel
��' /
==
��0 2
LogLevel
��3 ;
.
��; <
	Developer
��< E
)
��E F
{
�� 
var
�� 
pos
�� 
=
�� 
new
�� 
Vector3
�� %
(
��% &
newState
��& .
.
��. /
	PositionX
��/ 8
,
��8 9
newState
��: B
.
��B C
	PositionY
��C L
,
��L M
newState
��N V
.
��V W
	PositionZ
��W `
)
��` a
;
��a b
}
�� 
}
�� 	
public
�� 
void
�� &
SetMaxInterpolationBound
�� ,
(
��, -
float
��- 2#
maxInterpolationBound
��3 H
)
��H I
{
�� 	%
m_PositionXInterpolator
�� #
.
��# $#
MaxInterpolationBound
��$ 9
=
��: ;#
maxInterpolationBound
��< Q
;
��Q R%
m_PositionYInterpolator
�� #
.
��# $#
MaxInterpolationBound
��$ 9
=
��: ;#
maxInterpolationBound
��< Q
;
��Q R%
m_PositionZInterpolator
�� #
.
��# $#
MaxInterpolationBound
��$ 9
=
��: ;#
maxInterpolationBound
��< Q
;
��Q R$
m_RotationInterpolator
�� "
.
��" ##
MaxInterpolationBound
��# 8
=
��9 :#
maxInterpolationBound
��; P
;
��P Q"
m_ScaleXInterpolator
��  
.
��  !#
MaxInterpolationBound
��! 6
=
��7 8#
maxInterpolationBound
��9 N
;
��N O"
m_ScaleYInterpolator
��  
.
��  !#
MaxInterpolationBound
��! 6
=
��7 8#
maxInterpolationBound
��9 N
;
��N O"
m_ScaleZInterpolator
��  
.
��  !#
MaxInterpolationBound
��! 6
=
��7 8#
maxInterpolationBound
��9 N
;
��N O
}
�� 	
private
�� 
void
�� 
Awake
�� 
(
�� 
)
�� 
{
�� 	%
m_PositionXInterpolator
�� #
=
��$ %
new
��& )-
BufferedLinearInterpolatorFloat
��* I
(
��I J
)
��J K
;
��K L%
m_PositionYInterpolator
�� #
=
��$ %
new
��& )-
BufferedLinearInterpolatorFloat
��* I
(
��I J
)
��J K
;
��K L%
m_PositionZInterpolator
�� #
=
��$ %
new
��& )-
BufferedLinearInterpolatorFloat
��* I
(
��I J
)
��J K
;
��K L$
m_RotationInterpolator
�� "
=
��# $
new
��% (2
$BufferedLinearInterpolatorQuaternion
��) M
(
��M N
)
��N O
;
��O P"
m_ScaleXInterpolator
��  
=
��! "
new
��# &-
BufferedLinearInterpolatorFloat
��' F
(
��F G
)
��G H
;
��H I"
m_ScaleYInterpolator
��  
=
��! "
new
��# &-
BufferedLinearInterpolatorFloat
��' F
(
��F G
)
��G H
;
��H I"
m_ScaleZInterpolator
��  
=
��! "
new
��# &-
BufferedLinearInterpolatorFloat
��' F
(
��F G
)
��G H
;
��H I
if
�� 
(
�� %
m_AllFloatInterpolators
�� '
.
��' (
Count
��( -
==
��. 0
$num
��1 2
)
��2 3
{
�� %
m_AllFloatInterpolators
�� '
.
��' (
Add
��( +
(
��+ ,%
m_PositionXInterpolator
��, C
)
��C D
;
��D E%
m_AllFloatInterpolators
�� '
.
��' (
Add
��( +
(
��+ ,%
m_PositionYInterpolator
��, C
)
��C D
;
��D E%
m_AllFloatInterpolators
�� '
.
��' (
Add
��( +
(
��+ ,%
m_PositionZInterpolator
��, C
)
��C D
;
��D E%
m_AllFloatInterpolators
�� '
.
��' (
Add
��( +
(
��+ ,"
m_ScaleXInterpolator
��, @
)
��@ A
;
��A B%
m_AllFloatInterpolators
�� '
.
��' (
Add
��( +
(
��+ ,"
m_ScaleYInterpolator
��, @
)
��@ A
;
��A B%
m_AllFloatInterpolators
�� '
.
��' (
Add
��( +
(
��+ ,"
m_ScaleZInterpolator
��, @
)
��@ A
;
��A B
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnNetworkSpawn
�� +
(
��+ ,
)
��, -
{
�� 	
m_Transform
�� 
=
�� 
	transform
�� #
;
��# $&
m_ReplicatedNetworkState
�� $
.
��$ %
OnValueChanged
��% 3
+=
��4 6#
OnNetworkStateChanged
��7 L
;
��L M"
CanCommitToTransform
��  
=
��! "
IsServer
��# +
;
��+ ,
m_CachedIsServer
�� 
=
�� 
IsServer
�� '
;
��' ($
m_CachedNetworkManager
�� "
=
��# $
NetworkManager
��% 3
;
��3 4
if
�� 
(
�� "
CanCommitToTransform
�� $
)
��$ %
{
�� (
TryCommitTransformToServer
�� *
(
��* +
m_Transform
��+ 6
,
��6 7$
m_CachedNetworkManager
��8 N
.
��N O
	LocalTime
��O X
.
��X Y
Time
��Y ]
)
��] ^
;
��^ _
}
�� .
 m_LocalAuthoritativeNetworkState
�� ,
=
��- .&
m_ReplicatedNetworkState
��/ G
.
��G H
Value
��H M
;
��M N

Initialize
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnNetworkDespawn
�� -
(
��- .
)
��. /
{
�� 	&
m_ReplicatedNetworkState
�� $
.
��$ %
OnValueChanged
��% 3
-=
��4 6#
OnNetworkStateChanged
��7 L
;
��L M
}
�� 	
public
�� 
override
�� 
void
�� 
OnGainedOwnership
�� .
(
��. /
)
��/ 0
{
�� 	

Initialize
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
OnLostOwnership
�� ,
(
��, -
)
��- .
{
�� 	

Initialize
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 

Initialize
�� 
(
��  
)
��  !
{
�� 	?
1ResetInterpolatedStateToCurrentAuthoritativeState
�� =
(
��= >
)
��> ?
;
��? @
if
�� 
(
�� "
CanCommitToTransform
�� $
)
��$ %
{
�� &
m_ReplicatedNetworkState
�� (
.
��( )
SetDirty
��) 1
(
��1 2
true
��2 6
)
��6 7
;
��7 8
}
�� 
else
�� 
if
�� 
(
�� 
m_Transform
��  
!=
��! #
null
��$ (
)
��( )
{
�� 6
(ApplyInterpolatedNetworkStateToTransform
�� 8
(
��8 9&
m_ReplicatedNetworkState
��9 Q
.
��Q R
Value
��R W
,
��W X
m_Transform
��Y d
)
��d e
;
��e f
}
�� 
}
�� 	
public
�� 
void
�� 
SetState
�� 
(
�� 
Vector3
�� $
?
��$ %
posIn
��& +
=
��, -
null
��. 2
,
��2 3

Quaternion
��4 >
?
��> ?
rotIn
��@ E
=
��F G
null
��H L
,
��L M
Vector3
��N U
?
��U V
scaleIn
��W ^
=
��_ `
null
��a e
,
��e f
bool
��g k&
shouldGhostsInterpolate��l �
=��� �
true��� �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� 
IsOwner
�� 
)
�� 
{
�� 
throw
�� 
new
�� 
	Exception
�� #
(
��# $
$str
��$ T
)
��T U
;
��U V
}
�� 
if
�� 
(
�� $
m_CachedNetworkManager
�� &
&&
��' )
!
��* +
(
��+ ,$
m_CachedNetworkManager
��, B
.
��B C
IsConnectedClient
��C T
||
��U W$
m_CachedNetworkManager
��X n
.
��n o
IsListening
��o z
)
��z {
)
��{ |
{
�� 
return
�� 
;
�� 
}
�� 
Vector3
�� 
pos
�� 
=
�� 
posIn
�� 
==
��  "
null
��# '
?
��( )
	transform
��* 3
.
��3 4
position
��4 <
:
��= >
(
��? @
Vector3
��@ G
)
��G H
posIn
��H M
;
��M N

Quaternion
�� 
rot
�� 
=
�� 
rotIn
�� "
==
��# %
null
��& *
?
��+ ,
	transform
��- 6
.
��6 7
rotation
��7 ?
:
��@ A
(
��B C

Quaternion
��C M
)
��M N
rotIn
��N S
;
��S T
Vector3
�� 
scale
�� 
=
�� 
scaleIn
�� #
==
��$ &
null
��' +
?
��, -
	transform
��. 7
.
��7 8

localScale
��8 B
:
��C D
(
��E F
Vector3
��F M
)
��M N
scaleIn
��N U
;
��U V
if
�� 
(
�� 
!
�� "
CanCommitToTransform
�� %
)
��% &
{
�� 
if
�� 
(
�� 
!
�� 
m_CachedIsServer
�� %
)
��% &
{
�� 
SetStateServerRpc
�� %
(
��% &
pos
��& )
,
��) *
rot
��+ .
,
��. /
scale
��0 5
,
��5 6%
shouldGhostsInterpolate
��7 N
)
��N O
;
��O P
}
�� 
}
�� 
else
�� 
{
�� 
m_Transform
�� 
.
�� 
position
�� $
=
��% &
pos
��' *
;
��* +
m_Transform
�� 
.
�� 
rotation
�� $
=
��% &
rot
��' *
;
��* +
m_Transform
�� 
.
�� 

localScale
�� &
=
��' (
scale
��) .
;
��. /.
 m_LocalAuthoritativeNetworkState
�� 0
.
��0 1$
IsTeleportingNextFrame
��1 G
=
��H I%
shouldGhostsInterpolate
��J a
;
��a b
}
�� 
}
�� 	
[
�� 	
	ServerRpc
��	 
]
�� 
private
�� 
void
�� 
SetStateServerRpc
�� &
(
��& '
Vector3
��' .
pos
��/ 2
,
��2 3

Quaternion
��4 >
rot
��? B
,
��B C
Vector3
��D K
scale
��L Q
,
��Q R
bool
��S W
shouldTeleport
��X f
)
��f g
{
�� 	
if
�� 
(
�� #
OnClientRequestChange
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
(
�� 
pos
�� 
,
�� 
rot
�� 
,
�� 
scale
��  
)
��  !
=
��" ##
OnClientRequestChange
��$ 9
(
��9 :
pos
��: =
,
��= >
rot
��? B
,
��B C
scale
��D I
)
��I J
;
��J K
}
�� 
m_Transform
�� 
.
�� 
position
��  
=
��! "
pos
��# &
;
��& '
m_Transform
�� 
.
�� 
rotation
��  
=
��! "
rot
��# &
;
��& '
m_Transform
�� 
.
�� 

localScale
�� "
=
��# $
scale
��% *
;
��* +.
 m_LocalAuthoritativeNetworkState
�� ,
.
��, -$
IsTeleportingNextFrame
��- C
=
��D E
shouldTeleport
��F T
;
��T U
}
�� 	
	protected
�� 
virtual
�� 
void
�� 
Update
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
!
�� 
	IsSpawned
�� 
)
�� 
{
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
!
�� 
Interpolate
�� 
&&
�� 
m_LastInterpolate
��  1
)
��1 2
{
�� 
foreach
�� 
(
�� 
var
�� 
interpolator
�� )
in
��* ,%
m_AllFloatInterpolators
��- D
)
��D E
{
�� 
interpolator
��  
.
��  !
Clear
��! &
(
��& '
)
��' (
;
��( )
}
�� 
}
�� 
m_LastInterpolate
�� 
=
�� 
Interpolate
��  +
;
��+ ,
if
�� 
(
�� "
CanCommitToTransform
�� $
)
��$ %
{
�� 
if
�� 
(
�� 
m_CachedIsServer
�� $
)
��$ %
{
�� (
TryCommitTransformToServer
�� .
(
��. /
m_Transform
��/ :
,
��: ;$
m_CachedNetworkManager
��< R
.
��R S
	LocalTime
��S \
.
��\ ]
Time
��] a
)
��a b
;
��b c
}
�� 
}
�� 
if
�� 
(
�� $
m_CachedNetworkManager
�� &
.
��& '
IsConnectedClient
��' 8
||
��9 ;$
m_CachedNetworkManager
��< R
.
��R S
IsListening
��S ^
)
��^ _
{
�� 
var
�� 
cachedDeltaTime
�� #
=
��$ %
Time
��& *
.
��* +
	deltaTime
��+ 4
;
��4 5
var
�� 

serverTime
�� 
=
��  
NetworkManager
��! /
.
��/ 0

ServerTime
��0 :
;
��: ;
var
�� 
cachedServerTime
�� $
=
��% &

serverTime
��' 1
.
��1 2
Time
��2 6
;
��6 7
var
�� 
cachedRenderTime
�� $
=
��% &

serverTime
��' 1
.
��1 2
TimeTicksAgo
��2 >
(
��> ?
$num
��? @
)
��@ A
.
��A B
Time
��B F
;
��F G
if
�� 
(
�� 
Interpolate
�� 
)
��  
{
�� 
foreach
�� 
(
�� 
var
��  
interpolator
��! -
in
��. 0%
m_AllFloatInterpolators
��1 H
)
��H I
{
�� 
interpolator
�� $
.
��$ %
Update
��% +
(
��+ ,
cachedDeltaTime
��, ;
,
��; <
cachedRenderTime
��= M
,
��M N
cachedServerTime
��O _
)
��_ `
;
��` a
}
�� $
m_RotationInterpolator
�� *
.
��* +
Update
��+ 1
(
��1 2
cachedDeltaTime
��2 A
,
��A B
cachedRenderTime
��C S
,
��S T
cachedServerTime
��U e
)
��e f
;
��f g
}
�� 
if
�� 
(
�� 
!
�� "
CanCommitToTransform
�� )
)
��) *
{
�� 6
(ApplyInterpolatedNetworkStateToTransform
�� <
(
��< =&
m_ReplicatedNetworkState
��= U
.
��U V
Value
��V [
,
��[ \
m_Transform
��] h
)
��h i
;
��i j
}
�� 
}
�� .
 m_LocalAuthoritativeNetworkState
�� ,
.
��, -$
IsTeleportingNextFrame
��- C
=
��D E
false
��F K
;
��K L
}
�� 	
public
�� 
void
�� 
Teleport
�� 
(
�� 
Vector3
�� $
newPosition
��% 0
,
��0 1

Quaternion
��2 <
newRotation
��= H
,
��H I
Vector3
��J Q
newScale
��R Z
)
��Z [
{
�� 	
if
�� 
(
�� 
!
�� "
CanCommitToTransform
�� %
)
��% &
{
�� 
throw
�� 
new
�� 
	Exception
�� #
(
��# $
$str
��$ :
)
��: ;
;
��; <
}
�� 
var
�� 
newRotationEuler
��  
=
��! "
newRotation
��# .
.
��. /
eulerAngles
��/ :
;
��: ;
var
�� 
stateToSend
�� 
=
�� .
 m_LocalAuthoritativeNetworkState
�� >
;
��> ?
stateToSend
�� 
.
�� $
IsTeleportingNextFrame
�� .
=
��/ 0
true
��1 5
;
��5 6
stateToSend
�� 
.
�� 
Position
��  
=
��! "
newPosition
��# .
;
��. /
stateToSend
�� 
.
�� 
Rotation
��  
=
��! "
newRotationEuler
��# 3
;
��3 4
stateToSend
�� 
.
�� 
Scale
�� 
=
�� 
newScale
��  (
;
��( )6
(ApplyInterpolatedNetworkStateToTransform
�� 4
(
��4 5
stateToSend
��5 @
,
��@ A
	transform
��B K
)
��K L
;
��L M.
 m_LocalAuthoritativeNetworkState
�� ,
.
��, -$
IsTeleportingNextFrame
��- C
=
��D E
true
��F J
;
��J K%
TryCommitValuesToServer
�� #
(
��# $
newPosition
��$ /
,
��/ 0
newRotationEuler
��1 A
,
��A B
newScale
��C K
,
��K L$
m_CachedNetworkManager
��M c
.
��c d
	LocalTime
��d m
.
��m n
Time
��n r
)
��r s
;
��s t.
 m_LocalAuthoritativeNetworkState
�� ,
.
��, -$
IsTeleportingNextFrame
��- C
=
��D E
false
��F K
;
��K L
}
�� 	
	protected
�� 
virtual
�� 
bool
�� %
OnIsServerAuthoritative
�� 6
(
��6 7
)
��7 8
{
�� 	
return
�� 
true
�� 
;
�� 
}
�� 	
internal
�� 
bool
�� #
IsServerAuthoritative
�� +
(
��+ ,
)
��, -
{
�� 	
return
�� %
OnIsServerAuthoritative
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
}
�� 
}�� ��
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
�� 
if
�� 
(
��  %
m_LifetimeConsumedCount
��  7
==
��8 :
$num
��; <
)
��< =
{
�� !
m_StartTimeConsumed
��  3
=
��4 5
bufferedValue
��6 C
.
��C D
TimeSent
��D L
;
��L M 
m_InterpStartValue
��  2
=
��3 4
bufferedValue
��5 B
.
��B C
Item
��C G
;
��G H
}
�� 
else
��  
if
��! #
(
��$ %
consumedCount
��% 2
==
��3 5
$num
��6 7
)
��7 8
{
�� !
m_StartTimeConsumed
��  3
=
��4 5
m_EndTimeConsumed
��6 G
;
��G H 
m_InterpStartValue
��  2
=
��3 4
m_InterpEndValue
��5 E
;
��E F
}
�� 
if
�� 
(
��  
bufferedValue
��  -
.
��- .
TimeSent
��. 6
>
��7 8
m_EndTimeConsumed
��9 J
)
��J K
{
�� !
itemToInterpolateTo
��  3
=
��4 5
bufferedValue
��6 C
;
��C D
m_EndTimeConsumed
��  1
=
��2 3
bufferedValue
��4 A
.
��A B
TimeSent
��B J
;
��J K
m_InterpEndValue
��  0
=
��1 2
bufferedValue
��3 @
.
��@ A
Item
��A E
;
��E F
}
�� 
}
�� 
m_Buffer
��  
.
��  !
RemoveAt
��! )
(
��) *
i
��* +
)
��+ ,
;
��, -
consumedCount
�� %
++
��% '
;
��' (%
m_LifetimeConsumedCount
�� /
++
��/ 1
;
��1 2
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
T
�� 
Update
�� 
(
�� 
float
�� 
	deltaTime
�� '
,
��' (
NetworkTime
��) 4

serverTime
��5 ?
)
��? @
{
�� 	
return
�� 
Update
�� 
(
�� 
	deltaTime
�� #
,
��# $

serverTime
��% /
.
��/ 0
TimeTicksAgo
��0 <
(
��< =
$num
��= >
)
��> ?
.
��? @
Time
��@ D
,
��D E

serverTime
��F P
.
��P Q
Time
��Q U
)
��U V
;
��V W
}
�� 	
public
�� 
T
�� 
Update
�� 
(
�� 
float
�� 
	deltaTime
�� '
,
��' (
double
��) /

renderTime
��0 :
,
��: ;
double
��< B

serverTime
��C M
)
��M N
{
�� 	"
TryConsumeFromBuffer
��  
(
��  !

renderTime
��! +
,
��+ ,

serverTime
��- 7
)
��7 8
;
��8 9
if
�� 
(
�� 
InvalidState
�� 
)
�� 
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 y
)
��y z
;
��z {
}
�� 
if
�� 
(
�� %
m_LifetimeConsumedCount
�� '
>=
��( *
$num
��+ ,
)
��, -
{
�� 
float
�� 
t
�� 
=
�� 
$num
�� 
;
�� 
double
�� 
range
�� 
=
�� 
m_EndTimeConsumed
�� 0
-
��1 2!
m_StartTimeConsumed
��3 F
;
��F G
if
�� 
(
�� 
range
�� 
>
�� 
k_SmallValue
�� (
)
��( )
{
�� 
t
�� 
=
�� 
(
�� 
float
�� 
)
�� 
(
��  
(
��  !

renderTime
��! +
-
��, -!
m_StartTimeConsumed
��. A
)
��A B
/
��C D
range
��E J
)
��J K
;
��K L
if
�� 
(
�� 
t
�� 
<
�� 
$num
��  
)
��  !
{
�� 
if
�� 
(
�� 

NetworkLog
�� &
.
��& '
CurrentLogLevel
��' 6
<=
��7 9
LogLevel
��: B
.
��B C
	Developer
��C L
)
��L M
{
�� 

NetworkLog
�� &
.
��& '
LogError
��' /
(
��/ 0
$"
��0 2
$str
��2 w
{
��w x
nameof
��x ~
(
��~ 

renderTime�� �
)��� �
}��� �
$str��� �
{��� �

renderTime��� �
}��� �
$str��� �
{��� �
nameof��� �
(��� �#
m_StartTimeConsumed��� �
)��� �
}��� �
$str��� �
{��� �#
m_StartTimeConsumed��� �
}��� �
"��� �
)��� �
;��� �
}
�� 
t
�� 
=
�� 
$num
��  
;
��  !
}
�� 
if
�� 
(
�� 
t
�� 
>
�� #
MaxInterpolationBound
�� 1
)
��1 2
{
�� 
t
�� 
=
�� 
$num
��  
;
��  !
}
�� 
}
�� 
var
�� 
target
�� 
=
�� "
InterpolateUnclamped
�� 1
(
��1 2 
m_InterpStartValue
��2 D
,
��D E
m_InterpEndValue
��F V
,
��V W
t
��X Y
)
��Y Z
;
��Z ["
m_CurrentInterpValue
�� $
=
��% &
Interpolate
��' 2
(
��2 3"
m_CurrentInterpValue
��3 G
,
��G H
target
��I O
,
��O P
	deltaTime
��Q Z
/
��[ \&
MaximumInterpolationTime
��] u
)
��u v
;
��v w
}
�� (
m_NbItemsReceivedThisFrame
�� &
=
��' (
$num
��) *
;
��* +
return
�� "
m_CurrentInterpValue
�� '
;
��' (
}
�� 	
public
�� 
void
�� 
AddMeasurement
�� "
(
��" #
T
��# $
newMeasurement
��% 3
,
��3 4
double
��5 ;
sentTime
��< D
)
��D E
{
�� 	(
m_NbItemsReceivedThisFrame
�� &
++
��& (
;
��( )
if
�� 
(
�� (
m_NbItemsReceivedThisFrame
�� *
>
��+ , 
k_BufferCountLimit
��- ?
)
��? @
{
�� 
if
�� 
(
�� (
m_LastBufferedItemReceived
�� .
.
��. /
TimeSent
��/ 7
<
��8 9
sentTime
��: B
)
��B C
{
�� (
m_LastBufferedItemReceived
�� .
=
��/ 0
new
��1 4
BufferedItem
��5 A
(
��A B
newMeasurement
��B P
,
��P Q
sentTime
��R Z
)
��Z [
;
��[ \
ResetTo
�� 
(
�� 
newMeasurement
�� *
,
��* +
sentTime
��, 4
)
��4 5
;
��5 6
m_Buffer
�� 
.
�� 
Add
��  
(
��  !(
m_LastBufferedItemReceived
��! ;
)
��; <
;
��< =
}
�� 
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
sentTime
�� 
>
�� 
m_EndTimeConsumed
�� ,
||
��- /%
m_LifetimeConsumedCount
��0 G
==
��H J
$num
��K L
)
��L M
{
�� (
m_LastBufferedItemReceived
�� *
=
��+ ,
new
��- 0
BufferedItem
��1 =
(
��= >
newMeasurement
��> L
,
��L M
sentTime
��N V
)
��V W
;
��W X
m_Buffer
�� 
.
�� 
Add
�� 
(
�� (
m_LastBufferedItemReceived
�� 7
)
��7 8
;
��8 9
}
�� 
}
�� 	
public
�� 
T
�� "
GetInterpolatedValue
�� %
(
��% &
)
��& '
{
�� 	
return
�� "
m_CurrentInterpValue
�� '
;
��' (
}
�� 	
	protected
�� 
abstract
�� 
T
�� 
Interpolate
�� (
(
��( )
T
��) *
start
��+ 0
,
��0 1
T
��2 3
end
��4 7
,
��7 8
float
��9 >
time
��? C
)
��C D
;
��D E
	protected
�� 
abstract
�� 
T
�� "
InterpolateUnclamped
�� 1
(
��1 2
T
��2 3
start
��4 9
,
��9 :
T
��; <
end
��= @
,
��@ A
float
��B G
time
��H L
)
��L M
;
��M N
}
�� 
public
�� 

class
�� -
BufferedLinearInterpolatorFloat
�� 0
:
��1 2(
BufferedLinearInterpolator
��3 M
<
��M N
float
��N S
>
��S T
{
�� 
	protected
�� 
override
�� 
float
��  "
InterpolateUnclamped
��! 5
(
��5 6
float
��6 ;
start
��< A
,
��A B
float
��C H
end
��I L
,
��L M
float
��N S
time
��T X
)
��X Y
{
�� 	
return
�� 
Mathf
�� 
.
�� 
LerpUnclamped
�� &
(
��& '
start
��' ,
,
��, -
end
��. 1
,
��1 2
time
��3 7
)
��7 8
;
��8 9
}
�� 	
	protected
�� 
override
�� 
float
��  
Interpolate
��! ,
(
��, -
float
��- 2
start
��3 8
,
��8 9
float
��: ?
end
��@ C
,
��C D
float
��E J
time
��K O
)
��O P
{
�� 	
return
�� 
Mathf
�� 
.
�� 
Lerp
�� 
(
�� 
start
�� #
,
��# $
end
��% (
,
��( )
time
��* .
)
��. /
;
��/ 0
}
�� 	
}
�� 
public
�� 

class
�� 2
$BufferedLinearInterpolatorQuaternion
�� 5
:
��6 7(
BufferedLinearInterpolator
��8 R
<
��R S

Quaternion
��S ]
>
��] ^
{
�� 
	protected
�� 
override
�� 

Quaternion
�� %"
InterpolateUnclamped
��& :
(
��: ;

Quaternion
��; E
start
��F K
,
��K L

Quaternion
��M W
end
��X [
,
��[ \
float
��] b
time
��c g
)
��g h
{
�� 	
return
�� 

Quaternion
�� 
.
�� 
SlerpUnclamped
�� ,
(
��, -
start
��- 2
,
��2 3
end
��4 7
,
��7 8
time
��9 =
)
��= >
;
��> ?
}
�� 	
	protected
�� 
override
�� 

Quaternion
�� %
Interpolate
��& 1
(
��1 2

Quaternion
��2 <
start
��= B
,
��B C

Quaternion
��D N
end
��O R
,
��R S
float
��T Y
time
��Z ^
)
��^ _
{
�� 	
return
�� 

Quaternion
�� 
.
�� 
SlerpUnclamped
�� ,
(
��, -
start
��- 2
,
��2 3
end
��4 7
,
��7 8
time
��9 =
)
��= >
;
��> ?
}
�� 	
}
�� 
}�� 