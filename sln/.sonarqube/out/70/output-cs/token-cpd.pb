�@
-C:\code\ispclone\Assets\Scripts\EnemyAgent.cs
public 
class 

EnemyAgent 
: 
NetworkBehaviour *
{ 
private		 
const		 
float		 %
k_ShootingRandomThreshold		 1
=		2 3
$num		4 :
;		: ;
private

 
const

 
float

 
k_ShootTimer

 $
=

% &
$num

' ,
;

, -
[ 
Header 
( 
$str 
) 
] 
public 

int 
score 
= 
$num 
; 
public 


GameObject 
bulletPrefab "
;" #
public 

float 
GraceShootingPeriod $
=% &
$num' +
;+ ,
public 

bool 
canShoot 
{ 
get 
; 
set  #
;# $
}% &
public 

float 
column 
{ 
get 
; 
private &
set' *
;* +
}, -
public 

float 
row 
{ 
get 
; 
private #
set$ '
;' (
}) *
private 
float 
m_ShootTimer 
=  
$num! %
;% &
private 
float &
m_FirstShootTimeAfterSpawn ,
=- .
$num/ 3
;3 4
public 

void 
Awake 
( 
) 
{ 
canShoot 
= 
false 
; &
m_FirstShootTimeAfterSpawn "
=# $
Single% +
.+ ,
PositiveInfinity, <
;< =
} 
public 

override 
void 
OnNetworkSpawn '
(' (
)( )
{ 
base 
. 
OnNetworkSpawn 
( 
) 
; 
if!! 

(!! 
IsServer!! 
)!! 
{"" 	
canShoot## 
=## 
false## 
;## 
if$$ 
($$ 
score$$ 
==$$ 
$num$$ 
)$$ 
return%% 
;%% &
m_FirstShootTimeAfterSpawn'' &
=''' (
Time(( 
.(( 
time(( 
+(( 
Random(( "
.((" #
Range((# (
(((( )
GraceShootingPeriod(() <
-((= >
$num((? C
,((C D
GraceShootingPeriod((E X
+((Y Z
$num(([ `
)((` a
;((a b
Assert** 
.** 
	IsNotNull** 
(** 
InvadersGame** )
.**) *
	Singleton*** 3
)**3 4
;**4 5
InvadersGame++ 
.++ 
	Singleton++ "
.++" ##
RegisterSpawnableObject++# :
(++: ;
InvadersObjectType++; M
.++M N
Enemy++N S
,++S T

gameObject++U _
)++_ `
;++` a
InvadersGame,, 
.,, 
	Singleton,, "
.,," #

isGameOver,,# -
.,,- .
OnValueChanged,,. <
+=,,= ?

OnGameOver,,@ J
;,,J K
}-- 	
}.. 
public00 

override00 
void00 
OnNetworkDespawn00 )
(00) *
)00* +
{11 
base22 
.22 
OnNetworkDespawn22 
(22 
)22 
;22  
if33 

(33 
!33 
InvadersGame33 
.33 
	Singleton33 #
)33# $
return33% +
;33+ ,
if55 

(55 
IsServer55 
)55 
InvadersGame55 "
.55" #
	Singleton55# ,
.55, -%
UnregisterSpawnableObject55- F
(55F G
InvadersObjectType55G Y
.55Y Z
Enemy55Z _
,55_ `

gameObject55a k
)55k l
;55l m
InvadersGame66 
.66 
	Singleton66 
.66 

isGameOver66 )
.66) *
OnValueChanged66* 8
-=669 ;

OnGameOver66< F
;66F G
}77 
private99 
void99 
Update99 
(99 
)99 
{:: 
if;; 

(;; 
Time;; 
.;; 
time;; 
<=;; &
m_FirstShootTimeAfterSpawn;; 3
);;3 4
{<< 	
return>> 
;>> 
}?? 	
boolAA 
bCanShootThisFrameAA 
=AA  !
falseAA" '
;AA' (
ifBB 

(BB 
IsServerBB 
&&BB 
canShootBB  
)BB  !
ifCC 
(CC 
RandomCC 
.CC 
RangeCC 
(CC 
$numCC 
,CC 
$numCC  $
)CC$ %
>CC& '%
k_ShootingRandomThresholdCC( A
)CCA B
bCanShootThisFrameDD "
=DD# $
trueDD% )
;DD) *
ifFF 

(FF 
m_ShootTimerFF 
>FF 
$numFF 
)FF 
m_ShootTimerGG 
-=GG 
TimeGG  
.GG  !
	deltaTimeGG! *
;GG* +
elseHH 
{II 	
ifJJ 
(JJ 
!JJ 
bCanShootThisFrameJJ #
)JJ# $
returnJJ% +
;JJ+ ,
m_ShootTimerKK 
=KK 
RandomKK !
.KK! "
RangeKK" '
(KK' (
k_ShootTimerKK( 4
-KK5 6
$numKK7 <
,KK< =
k_ShootTimerKK> J
+KKK L
$numKKM R
)KKR S
;KKS T
SpawnBulletLL 
(LL 
)LL 
;LL 
returnMM 
;MM 
}NN 	
}OO 
privateQQ 
voidQQ 
SpawnBulletQQ 
(QQ 
)QQ 
{RR 
varSS 
myBulletSS 
=SS 
InstantiateSS "
(SS" #
bulletPrefabSS# /
,SS/ 0
	transformSS1 :
.SS: ;
positionSS; C
-SSD E
Vector3SSF M
.SSM N
upSSN P
,SSP Q

QuaternionSSR \
.SS\ ]
identitySS] e
)SSe f
;SSf g
myBulletTT 
.TT 
GetComponentTT 
<TT 
NetworkObjectTT +
>TT+ ,
(TT, -
)TT- .
.TT. /
SpawnTT/ 4
(TT4 5
)TT5 6
;TT6 7
}UU 
privateWW 
voidWW 
OnTriggerEnter2DWW !
(WW! "

Collider2DWW" ,
colliderWW- 5
)WW5 6
{XX 
ifYY 

(YY 
!YY 
IsServerYY 
)YY 
returnYY 
;YY 
var[[ 
	hitShield[[ 
=[[ 
collider[[  
.[[  !

gameObject[[! +
.[[+ ,
GetComponent[[, 8
<[[8 9
Shield[[9 ?
>[[? @
([[@ A
)[[A B
;[[B C
if\\ 

(\\ 
	hitShield\\ 
!=\\ 
null\\ 
)\\ 
Destroy\\ &
(\\& '
	hitShield\\' 0
.\\0 1

gameObject\\1 ;
)\\; <
;\\< =
}]] 
private__ 
void__ 

OnGameOver__ 
(__ 
bool__  
oldValue__! )
,__) *
bool__+ /
newValue__0 8
)__8 9
{`` 
enabledbb 
=bb 
falsebb 
;bb 
}cc 
publicee 

voidee 
Setupee 
(ee 
floatee 
columnee "
,ee" #
floatee$ )
rowee* -
)ee- .
{ff 
thisgg 
.gg 
columngg 
=gg 
columngg 
;gg 
thishh 
.hh 
rowhh 
=hh 
rowhh 
;hh 
}ii 
}jj �
/C:\code\ispclone\Assets\Scripts\PlayerBullet.cs
public 
class 
PlayerBullet 
: 
MonoBehaviour )
{ 
private 
const 
float 
k_YBoundary #
=$ %
$num& +
;+ ,
public 

PlayerControl 
owner 
; 
[

 
Header

 
(

 
$str

 
)

  
]

  !
[ 
SerializeField 
] 
[ 
Tooltip 
( 
$str =
)= >
]> ?
private 
float 
m_TravelSpeed 
=  !
$num" &
;& '
[ 
SerializeField 
] 
ParticleSystem $
m_EnemyExplosionParticle +
;+ ,
private 
void 
Update 
( 
) 
{ 
if 

( 
! 
NetworkManager 
. 
	Singleton %
.% &
IsServer& .
). /
return0 6
;6 7
	transform 
. 
	Translate 
( 
$num 
, 
m_TravelSpeed ,
*- .
Time/ 3
.3 4
	deltaTime4 =
,= >
$num? @
)@ A
;A B
if 

( 
	transform 
. 
position 
. 
y  
>! "
k_YBoundary# .
). /
if 
( 
NetworkManager 
. 
	Singleton (
.( )
IsServer) 1
)1 2
Destroy 
( 

gameObject "
)" #
;# $
} 
private 
void 
OnTriggerEnter2D !
(! "

Collider2D" ,
collider- 5
)5 6
{ 
if 

( 
! 
NetworkManager 
. 
	Singleton %
.% &
IsServer& .
). /
return   
;   
var"" 
hitEnemy"" 
="" 
collider"" 
.""  

gameObject""  *
.""* +
GetComponent""+ 7
<""7 8

EnemyAgent""8 B
>""B C
(""C D
)""D E
;""E F
if## 

(## 
hitEnemy## 
!=## 
null## 
&&## 
owner##  %
!=##& (
null##) -
)##- .
{$$ 	
owner%% 
.%% 
IncreasePlayerScore%% %
(%%% &
hitEnemy%%& .
.%%. /
score%%/ 4
)%%4 5
;%%5 6
Destroy'' 
('' 
hitEnemy'' 
.'' 

gameObject'' '
)''' (
;''( )
Destroy(( 
((( 

gameObject(( 
)(( 
;((  
Instantiate,, 
(,, $
m_EnemyExplosionParticle,, 0
,,,0 1
	transform,,2 ;
.,,; <
position,,< D
,,,D E

quaternion,,F P
.,,P Q
identity,,Q Y
),,Y Z
;,,Z [
return-- 
;-- 
}.. 	
var00 
	hitShield00 
=00 
collider00  
.00  !

gameObject00! +
.00+ ,
GetComponent00, 8
<008 9
Shield009 ?
>00? @
(00@ A
)00A B
;00B C
if11 

(11 
	hitShield11 
!=11 
null11 
)11 
{22 	
Destroy33 
(33 
	hitShield33 
.33 

gameObject33 (
)33( )
;33) *
Destroy44 
(44 

gameObject44 
)44 
;44  
}55 	
}66 
}77 �
.C:\code\ispclone\Assets\Scripts\MenuControl.cs
public 
class 
MenuControl 
: 
MonoBehaviour (
{		 
[

 
SerializeField

 
]

 
private 
TMP_Text 
m_HostIpInput "
;" #
[ 
SerializeField 
] 
private 
string 
m_LobbySceneName #
=$ %
$str& 5
;5 6
public 

void 
StartLocalGame 
( 
)  
{ 
var 
utpTransport 
= 
( 
UnityTransport *
)* +
NetworkManager+ 9
.9 :
	Singleton: C
.C D
NetworkConfigD Q
.Q R
NetworkTransportR b
;b c
if 

( 
utpTransport 
) 
m_HostIpInput '
.' (
text( ,
=- .
$str/ :
;: ;
if 

( 
NetworkManager 
. 
	Singleton $
.$ %
	StartHost% .
(. /
)/ 0
)0 1
{ 	"
SceneTransitionHandler "
." #"
sceneTransitionHandler# 9
.9 :
RegisterCallbacks: K
(K L
)L M
;M N"
SceneTransitionHandler "
." #"
sceneTransitionHandler# 9
.9 :
SwitchScene: E
(E F
m_LobbySceneNameF V
)V W
;W X
} 	
else 
{ 	
Debug 
. 
LogError 
( 
$str 2
)2 3
;3 4
} 	
} 
public   

void   
JoinLocalGame   
(   
)   
{!! 
if"" 

("" 
m_HostIpInput"" 
."" 
text"" 
!="" !
$str""" ,
)"", -
{## 	
var$$ 
utpTransport$$ 
=$$ 
($$  
UnityTransport$$  .
)$$. /
NetworkManager$$/ =
.$$= >
	Singleton$$> G
.$$G H
NetworkConfig$$H U
.$$U V
NetworkTransport$$V f
;$$f g
if%% 
(%% 
utpTransport%% 
)%% 
{&& 
utpTransport'' 
.'' 
SetConnectionData'' .
(''. /
Sanitize''/ 7
(''7 8
m_HostIpInput''8 E
.''E F
text''F J
)''J K
,''K L
$num''M Q
)''Q R
;''R S
}(( 
if)) 
()) 
!)) 
NetworkManager)) 
.))  
	Singleton))  )
.))) *
StartClient))* 5
())5 6
)))6 7
)))7 8
{** 
Debug++ 
.++ 
LogError++ 
(++ 
$str++ 8
)++8 9
;++9 :
},, 
}-- 	
}.. 
public00 

static00 
string00 
Sanitize00 !
(00! "
string00" (
dirtyString00) 4
)004 5
{11 
return33 
Regex33 
.33 
Replace33 
(33 
dirtyString33 (
,33( )
$str33* 9
,339 :
$str33; =
)33= >
;33> ?
}44 
}55 �)
.C:\code\ispclone\Assets\Scripts\EnemyBullet.cs
public 
class 
EnemyBullet 
: 
MonoBehaviour (
{ 
private 
const 
float 
k_YBoundary #
=$ %
-& '
$num' +
;+ ,
[ 
Header 
( 
$str 
)  
]  !
[ 
SerializeField 
] 
[ 
Tooltip 
( 
$str =
)= >
]> ?
private 
float 
m_TravelSpeed 
=  !
$num" &
;& '
[ 
SerializeField 
] 
ParticleSystem %
m_ShieldExplosionParticle ,
;, -
private 
void 
Start 
( 
) 
{ 
Assert 
. 
IsTrue 
( 
InvadersGame "
." #
	Singleton# ,
), -
;- .
Assert 
. 
IsTrue 
( 
NetworkManager $
.$ %
	Singleton% .
). /
;/ 0
if 

(
 
InvadersGame 
. 
	Singleton !
)! "
InvadersGame 
. 
	Singleton "
." #

isGameOver# -
.- .
OnValueChanged. <
+== ?

OnGameOver@ J
;J K
} 
private 
void 
Update 
( 
) 
{ 
if 

( 
! 
NetworkManager 
. 
	Singleton %
.% &
IsServer& .
). /
return0 6
;6 7
	transform 
. 
	Translate 
( 
$num 
, 
-  
m_TravelSpeed  -
*. /
Time0 4
.4 5
	deltaTime5 >
,> ?
$num@ A
)A B
;B C
if!! 

(!! 
	transform!! 
.!! 
position!! 
.!! 
y!!  
<!!! "
k_YBoundary!!# .
)!!. /
Destroy!!0 7
(!!7 8

gameObject!!8 B
)!!B C
;!!C D
}"" 
private$$ 
void$$ 
	OnDestroy$$ 
($$ 
)$$ 
{%% 
if&& 

(&& 
InvadersGame&& 
.&& 
	Singleton&& "
)&&" #
InvadersGame&&$ 0
.&&0 1
	Singleton&&1 :
.&&: ;

isGameOver&&; E
.&&E F
OnValueChanged&&F T
-=&&U W

OnGameOver&&X b
;&&b c
}'' 
private)) 
void)) 
OnTriggerEnter2D)) !
())! "

Collider2D))" ,
collider))- 5
)))5 6
{** 
if++ 

(++ 
!++ 
NetworkManager++ 
.++ 
	Singleton++ %
.++% &
IsServer++& .
)++. /
return,, 
;,, 
var.. 
	hitPlayer.. 
=.. 
collider..  
...  !

gameObject..! +
...+ ,
GetComponent.., 8
<..8 9
PlayerControl..9 F
>..F G
(..G H
)..H I
;..I J
if// 

(// 
	hitPlayer// 
!=// 
null// 
)// 
{00 	
	hitPlayer11 
.11 
HitByBullet11 !
(11! "
)11" #
;11# $
Destroy22 
(22 

gameObject22 
)22 
;22  
return33 
;33 
}44 	
var66 
	hitShield66 
=66 
collider66  
.66  !

gameObject66! +
.66+ ,
GetComponent66, 8
<668 9
Shield669 ?
>66? @
(66@ A
)66A B
;66B C
if77 

(77 
	hitShield77 
!=77 
null77 
)77 
{88 	
Destroy99 
(99 
	hitShield99 
.99 

gameObject99 (
)99( )
;99) *
Destroy:: 
(:: 

gameObject:: 
):: 
;::  
Instantiate;; 
(;; %
m_ShieldExplosionParticle;; 1
,;;1 2
	transform;;3 <
.;;< =
position;;= E
,;;E F

quaternion;;G Q
.;;Q R
identity;;R Z
);;Z [
;;;[ \
}<< 	
}== 
private?? 
void?? 

OnGameOver?? 
(?? 
bool??  
oldValue??! )
,??) *
bool??+ /
newValue??0 8
)??8 9
{@@ 
enabledAA 
=AA 
falseAA 
;AA 
ifDD 

(DD 
NetworkManagerDD 
.DD 
	SingletonDD $
.DD$ %
IsServerDD% -
)DD- .
DestroyDD/ 6
(DD6 7

gameObjectDD7 A
)DDA B
;DDB C
}EE 
}FF �U
/C:\code\ispclone\Assets\Scripts\LobbyControl.cs
public 
class 
LobbyControl 
: 
NetworkBehaviour ,
{		 
[

 
SerializeField

 
]

 
private 
string 
m_InGameSceneName $
=% &
$str' /
;/ 0
[ 
SerializeField 
] 
private 
int  
m_MinimumPlayerCount $
=% &
$num' (
;( )
public 

TMP_Text 
	LobbyText 
; 
private 
bool 
m_AllPlayersInLobby $
;$ %
private 

Dictionary 
< 
ulong 
, 
bool "
>" #
m_ClientsInLobby$ 4
;4 5
private 
string !
m_UserLobbyStatusText (
;( )
public 

override 
void 
OnNetworkSpawn '
(' (
)( )
{ 
m_ClientsInLobby 
= 
new 

Dictionary )
<) *
ulong* /
,/ 0
bool1 5
>5 6
(6 7
)7 8
;8 9
m_ClientsInLobby 
. 
Add 
( 
NetworkManager +
.+ ,
LocalClientId, 9
,9 :
false; @
)@ A
;A B
if   

(   
IsServer   
)   
{!! 	
m_AllPlayersInLobby"" 
=""  !
false""" '
;""' (
NetworkManager%% 
.%% %
OnClientConnectedCallback%% 4
+=%%5 7%
OnClientConnectedCallback%%8 Q
;%%Q R"
SceneTransitionHandler&& "
.&&" #"
sceneTransitionHandler&&# 9
.&&9 :
OnClientLoadedScene&&: M
+=&&N P
ClientLoadedScene&&Q b
;&&b c
}'' 	%
GenerateUserStatsForLobby** !
(**! "
)**" #
;**# $"
SceneTransitionHandler,, 
.,, "
sceneTransitionHandler,, 5
.,,5 6
SetSceneState,,6 C
(,,C D"
SceneTransitionHandler,,D Z
.,,Z [
SceneStates,,[ f
.,,f g
Lobby,,g l
),,l m
;,,m n
}-- 
private// 
void// 
OnGUI// 
(// 
)// 
{00 
if11 

(11 
	LobbyText11 
!=11 
null11 
)11 
	LobbyText11 (
.11( )
text11) -
=11. /!
m_UserLobbyStatusText110 E
;11E F
}22 
private99 
void99 %
GenerateUserStatsForLobby99 *
(99* +
)99+ ,
{:: !
m_UserLobbyStatusText;; 
=;; 
string;;  &
.;;& '
Empty;;' ,
;;;, -
foreach<< 
(<< 
var<< 
clientLobbyStatus<< &
in<<' )
m_ClientsInLobby<<* :
)<<: ;
{== 	!
m_UserLobbyStatusText>> !
+=>>" $
$str>>% .
+>>/ 0
clientLobbyStatus>>1 B
.>>B C
Key>>C F
+>>G H
$str>>I U
;>>U V
if?? 
(?? 
clientLobbyStatus?? !
.??! "
Value??" '
)??' (!
m_UserLobbyStatusText@@ %
+=@@& (
$str@@) 4
;@@4 5
elseAA !
m_UserLobbyStatusTextBB %
+=BB& (
$strBB) 8
;BB8 9
}CC 	
}DD 
privateJJ 
voidJJ (
UpdateAndCheckPlayersInLobbyJJ -
(JJ- .
)JJ. /
{KK 
m_AllPlayersInLobbyLL 
=LL 
m_ClientsInLobbyLL .
.LL. /
CountLL/ 4
>=LL5 7 
m_MinimumPlayerCountLL8 L
;LLL M
foreachNN 
(NN 
varNN 
clientLobbyStatusNN &
inNN' )
m_ClientsInLobbyNN* :
)NN: ;
{OO 	1
%SendClientReadyStatusUpdatesClientRpcPP 1
(PP1 2
clientLobbyStatusPP2 C
.PPC D
KeyPPD G
,PPG H
clientLobbyStatusPPI Z
.PPZ [
ValuePP[ `
)PP` a
;PPa b
ifQQ 
(QQ 
!QQ 
NetworkManagerQQ 
.QQ  
	SingletonQQ  )
.QQ) *
ConnectedClientsQQ* :
.QQ: ;
ContainsKeyQQ; F
(QQF G
clientLobbyStatusQQG X
.QQX Y
KeyQQY \
)QQ\ ]
)QQ] ^
m_AllPlayersInLobbyTT #
=TT$ %
falseTT& +
;TT+ ,
}UU 	#
CheckForAllPlayersReadyWW 
(WW  
)WW  !
;WW! "
}XX 
private__ 
void__ 
ClientLoadedScene__ "
(__" #
ulong__# (
clientId__) 1
)__1 2
{`` 
ifaa 

(aa 
IsServeraa 
)aa 
{bb 	
ifcc 
(cc 
!cc 
m_ClientsInLobbycc !
.cc! "
ContainsKeycc" -
(cc- .
clientIdcc. 6
)cc6 7
)cc7 8
{dd 
m_ClientsInLobbyee  
.ee  !
Addee! $
(ee$ %
clientIdee% -
,ee- .
falseee/ 4
)ee4 5
;ee5 6%
GenerateUserStatsForLobbyff )
(ff) *
)ff* +
;ff+ ,
}gg (
UpdateAndCheckPlayersInLobbyii (
(ii( )
)ii) *
;ii* +
}jj 	
}kk 
privatess 
voidss %
OnClientConnectedCallbackss *
(ss* +
ulongss+ 0
clientIdss1 9
)ss9 :
{tt 
ifuu 

(uu 
IsServeruu 
)uu 
{vv 	
ifww 
(ww 
!ww 
m_ClientsInLobbyww !
.ww! "
ContainsKeyww" -
(ww- .
clientIdww. 6
)ww6 7
)ww7 8
m_ClientsInLobbyww9 I
.wwI J
AddwwJ M
(wwM N
clientIdwwN V
,wwV W
falsewwX ]
)ww] ^
;ww^ _%
GenerateUserStatsForLobbyxx %
(xx% &
)xx& '
;xx' ((
UpdateAndCheckPlayersInLobbyzz (
(zz( )
)zz) *
;zz* +
}{{ 	
}|| 
[
�� 
	ClientRpc
�� 
]
�� 
private
�� 
void
�� 3
%SendClientReadyStatusUpdatesClientRpc
�� 6
(
��6 7
ulong
��7 <
clientId
��= E
,
��E F
bool
��G K
isReady
��L S
)
��S T
{
�� 
if
�� 

(
�� 
!
�� 
IsServer
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
!
�� 
m_ClientsInLobby
�� !
.
��! "
ContainsKey
��" -
(
��- .
clientId
��. 6
)
��6 7
)
��7 8
m_ClientsInLobby
��  
.
��  !
Add
��! $
(
��$ %
clientId
��% -
,
��- .
isReady
��/ 6
)
��6 7
;
��7 8
else
�� 
m_ClientsInLobby
��  
[
��  !
clientId
��! )
]
��) *
=
��+ ,
isReady
��- 4
;
��4 5'
GenerateUserStatsForLobby
�� %
(
��% &
)
��& '
;
��' (
}
�� 	
}
�� 
private
�� 
void
�� %
CheckForAllPlayersReady
�� (
(
��( )
)
��) *
{
�� 
if
�� 

(
�� !
m_AllPlayersInLobby
�� 
)
��  
{
�� 	
var
��  
allPlayersAreReady
�� "
=
��# $
true
��% )
;
��) *
foreach
�� 
(
�� 
var
�� 
clientLobbyStatus
�� *
in
��+ -
m_ClientsInLobby
��. >
)
��> ?
if
�� 
(
�� 
!
�� 
clientLobbyStatus
�� &
.
��& '
Value
��' ,
)
��, - 
allPlayersAreReady
�� &
=
��' (
false
��) .
;
��. /
if
�� 
(
��  
allPlayersAreReady
�� "
)
��" #
{
�� 
NetworkManager
�� 
.
�� 
	Singleton
�� (
.
��( )'
OnClientConnectedCallback
��) B
-=
��C E'
OnClientConnectedCallback
��F _
;
��_ `$
SceneTransitionHandler
�� &
.
��& '$
sceneTransitionHandler
��' =
.
��= >!
OnClientLoadedScene
��> Q
-=
��R T
ClientLoadedScene
��U f
;
��f g$
SceneTransitionHandler
�� &
.
��& '$
sceneTransitionHandler
��' =
.
��= >
SwitchScene
��> I
(
��I J
m_InGameSceneName
��J [
)
��[ \
;
��\ ]
}
�� 
}
�� 	
}
�� 
public
�� 

void
�� 
PlayerIsReady
�� 
(
�� 
)
�� 
{
�� 
m_ClientsInLobby
�� 
[
�� 
NetworkManager
�� '
.
��' (
	Singleton
��( 1
.
��1 2
LocalClientId
��2 ?
]
��? @
=
��A B
true
��C G
;
��G H
if
�� 

(
�� 
IsServer
�� 
)
�� 
{
�� 	*
UpdateAndCheckPlayersInLobby
�� (
(
��( )
)
��) *
;
��* +
}
�� 	
else
�� 
{
�� 	&
OnClientIsReadyServerRpc
�� $
(
��$ %
NetworkManager
��% 3
.
��3 4
	Singleton
��4 =
.
��= >
LocalClientId
��> K
)
��K L
;
��L M
}
�� 	'
GenerateUserStatsForLobby
�� !
(
��! "
)
��" #
;
��# $
}
�� 
[
�� 
	ServerRpc
�� 
(
�� 
RequireOwnership
�� 
=
��  !
false
��" '
)
��' (
]
��( )
private
�� 
void
�� &
OnClientIsReadyServerRpc
�� )
(
��) *
ulong
��* /
clientid
��0 8
)
��8 9
{
�� 
if
�� 

(
�� 
m_ClientsInLobby
�� 
.
�� 
ContainsKey
�� (
(
��( )
clientid
��) 1
)
��1 2
)
��2 3
{
�� 	
m_ClientsInLobby
�� 
[
�� 
clientid
�� %
]
��% &
=
��' (
true
��) -
;
��- .*
UpdateAndCheckPlayersInLobby
�� (
(
��( )
)
��) *
;
��* +'
GenerateUserStatsForLobby
�� %
(
��% &
)
��& '
;
��' (
}
�� 	
}
�� 
}�� �
)C:\code\ispclone\Assets\Scripts\Shield.cs
public 
class 
Shield 
: 
MonoBehaviour #
{ 
	protected 
void 
Start 
( 
) 
{ 
var		 
networkingManager		 
=		 
NetworkManager		  .
.		. /
	Singleton		/ 8
;		8 9
if

 

(

 
networkingManager

 
&&

  
networkingManager

! 2
.

2 3
IsServer

3 ;
)

; <
InvadersGame

= I
.

I J
	Singleton

J S
.

S T#
RegisterSpawnableObject

T k
(

k l
InvadersObjectType

l ~
.

~ 
Shield	

 �
,


� �

gameObject


� �
)


� �
;


� �
} 
	protected 
void 
	OnDestroy 
( 
) 
{ 
var 
networkingManager 
= 
NetworkManager  .
.. /
	Singleton/ 8
;8 9
if 

( 
networkingManager 
&&  
networkingManager! 2
.2 3
IsServer3 ;
); <
InvadersGame= I
.I J
	SingletonJ S
.S T%
UnregisterSpawnableObjectT m
(m n
InvadersObjectType	n �
.
� �
Shield
� �
,
� �

gameObject
� �
)
� �
;
� �
} 
} �5
9C:\code\ispclone\Assets\Scripts\SceneTransitionHandler.cs
public 
class "
SceneTransitionHandler #
:$ %
NetworkBehaviour& 6
{ 
static 

public "
SceneTransitionHandler ("
sceneTransitionHandler) ?
{@ A
getB E
;E F
internalG O
setP S
;S T
}U V
[

 
SerializeField

 
]

 
public 

string 
DefaultMainMenu !
=" #
$str$ /
;/ 0
[ 
HideInInspector 
] 
public 

delegate 
void ,
 ClientLoadedSceneDelegateHandler 9
(9 :
ulong: ?
clientId@ H
)H I
;I J
[ 
HideInInspector 
] 
public 

event ,
 ClientLoadedSceneDelegateHandler 1
OnClientLoadedScene2 E
;E F
[ 
HideInInspector 
] 
public 

delegate 
void ,
 SceneStateChangedDelegateHandler 9
(9 :
SceneStates: E
newStateF N
)N O
;O P
[ 
HideInInspector 
] 
public 

event ,
 SceneStateChangedDelegateHandler 1
OnSceneStateChanged2 E
;E F
private 
int "
m_numberOfClientLoaded &
;& '
public 

enum 
SceneStates 
{ 
Init 
, 
Start 
, 
Lobby   
,   
Ingame!! 
}"" 
private$$ 
SceneStates$$ 
m_SceneState$$ $
;$$$ %
private++ 
void++ 
Awake++ 
(++ 
)++ 
{,, 
if-- 

(--
 "
sceneTransitionHandler-- !
!=--" $
this--% )
&&--* ,"
sceneTransitionHandler--- C
!=--D F
null--G K
)--K L
{.. 	

GameObject// 
.// 
Destroy// 
(// "
sceneTransitionHandler// 5
.//5 6

gameObject//6 @
)//@ A
;//A B
}00 	"
sceneTransitionHandler11 
=11  
this11! %
;11% &
SetSceneState22 
(22 
SceneStates22 !
.22! "
Init22" &
)22& '
;22' (
DontDestroyOnLoad33 
(33 
this33 
)33 
;33  
}44 
public;; 

void;; 
SetSceneState;; 
(;; 
SceneStates;; )

sceneState;;* 4
);;4 5
{<< 
m_SceneState== 
=== 

sceneState== !
;==! "
if>> 

(>>
 
OnSceneStateChanged>> 
!=>> !
null>>" &
)>>& '
{?? 	
OnSceneStateChanged@@ 
.@@  
Invoke@@  &
(@@& '
m_SceneState@@' 3
)@@3 4
;@@4 5
}AA 	
}BB 
publicII 

SceneStatesII  
GetCurrentSceneStateII +
(II+ ,
)II, -
{JJ 
returnKK 
m_SceneStateKK 
;KK 
}LL 
privateRR 
voidRR 
StartRR 
(RR 
)RR 
{SS 
ifTT 

(TT
 
m_SceneStateTT 
==TT 
SceneStatesTT &
.TT& '
InitTT' +
)TT+ ,
{UU 	
SceneManagerVV 
.VV 
	LoadSceneVV "
(VV" #
DefaultMainMenuVV# 2
)VV2 3
;VV3 4
}WW 	
}XX 
public]] 

void]] 
RegisterCallbacks]] !
(]]! "
)]]" #
{^^ 
NetworkManager__ 
.__ 
	Singleton__  
.__  !
SceneManager__! -
.__- .
OnLoadComplete__. <
+=__= ?
OnLoadComplete__@ N
;__N O
}aa 
publicgg 

voidgg 
SwitchScenegg 
(gg 
stringgg "
	scenenamegg# ,
)gg, -
{hh 
ifii 

(ii
 
NetworkManagerii 
.ii 
	Singletonii #
.ii# $
IsListeningii$ /
)ii/ 0
{jj 	"
m_numberOfClientLoadedkk "
=kk# $
$numkk% &
;kk& '
NetworkManagerll 
.ll 
	Singletonll $
.ll$ %
SceneManagerll% 1
.ll1 2
	LoadScenell2 ;
(ll; <
	scenenamell< E
,llE F
LoadSceneModellG T
.llT U
SinglellU [
)ll[ \
;ll\ ]
}mm 	
elsenn 
{oo 	
SceneManagerpp 
.pp 
LoadSceneAsyncpp '
(pp' (
	scenenamepp( 1
)pp1 2
;pp2 3
}qq 	
}rr 
privatett 
voidtt 
OnLoadCompletett 
(tt  
ulongtt  %
clientIdtt& .
,tt. /
stringtt0 6
	sceneNamett7 @
,tt@ A
LoadSceneModettB O
loadSceneModettP ]
)tt] ^
{uu "
m_numberOfClientLoadedvv 
+=vv !
$numvv" #
;vv# $
OnClientLoadedSceneww 
?ww 
.ww 
Invokeww #
(ww# $
clientIdww$ ,
)ww, -
;ww- .
}xx 
publiczz 

boolzz 
AllClientsAreLoadedzz #
(zz# $
)zz$ %
{{{ 
return|| "
m_numberOfClientLoaded|| %
==||& (
NetworkManager||) 7
.||7 8
	Singleton||8 A
.||A B
ConnectedClients||B R
.||R S
Count||S X
;||X Y
}}} 
public
�� 

void
�� "
ExitAndLoadStartMenu
�� $
(
��$ %
)
��% &
{
�� 
NetworkManager
�� 
.
�� 
	Singleton
��  
.
��  !
SceneManager
��! -
.
��- .
OnLoadComplete
��. <
-=
��= ?
OnLoadComplete
��@ N
;
��N O!
OnClientLoadedScene
�� 
=
�� 
null
�� "
;
��" #
SetSceneState
�� 
(
�� 
SceneStates
�� !
.
��! "
Start
��" '
)
��' (
;
��( )
SceneManager
�� 
.
�� 
	LoadScene
�� 
(
�� 
$num
��  
)
��  !
;
��! "
}
�� 
}�� ��
/C:\code\ispclone\Assets\Scripts\InvadersGame.cs
public		 
enum		 
InvadersObjectType		 
{

 
Enemy 	
=
 
$num 
, 
Shield 

,
 
Max 
} 
[ 
Flags 
] 
public 
enum $
UpdateEnemiesResultFlags $
:% &
byte' +
{ 
None 
=	 

$num 
, 

FoundEnemy 
= 
$num 
, %
ReachedHorizontalBoundary 
= 
$num  &
,& '
ReachedBottom 
= 
$num 
, 
Max 
} 
public 
enum 
GameOverReason 
: 
byte !
{ 
None 
=	 

$num 
,  
EnemiesReachedBottom 
= 
$num 
, 
Death 	
=
 
$num 
, 
Max 
, 
}   
public"" 
class"" 
InvadersGame"" 
:"" 
NetworkBehaviour"" ,
{## 
private%% 
const%% 
float%% )
k_EnemyVerticalMovementOffset%% 5
=%%6 7
-%%8 9
$num%%9 =
;%%= >
private&& 
const&& 
float&& '
k_LeftOrRightBoundaryOffset&& 3
=&&4 5
$num&&6 ;
;&&; <
private'' 
const'' 
float'' "
k_BottomBoundaryOffset'' .
=''/ 0
$num''1 6
;''6 7
[)) 
Header)) 
()) 
$str)) 
))) 
])) 
public** 


GameObject** 
enemy1Prefab** "
;**" #
public++ 


GameObject++ 
enemy2Prefab++ "
;++" #
public,, 


GameObject,, 
enemy3Prefab,, "
;,," #
public-- 


GameObject-- 
superEnemyPrefab-- &
;--& '
public.. 


GameObject.. 
shieldPrefab.. "
;.." #
[00 
Header00 
(00 
$str00 
)00 
]00 
public11 

TMP_Text11 
gameTimerText11 !
;11! "
public22 

TMP_Text22 
	scoreText22 
;22 
public33 

TMP_Text33 
	livesText33 
;33 
public44 

TMP_Text44 
gameOverText44  
;44  !
[66 
Header66 
(66 
$str66 
)66  
]66  !
public77 

	Transform77 
saucerSpawnPoint77 %
;77% &
[99 
SerializeField99 
]99 
[:: 
Tooltip:: 
(:: 
$str:: 3
)::3 4
]::4 5
private;; 
float;; 
m_DelayedStartTime;; $
=;;% &
$num;;' +
;;;+ ,
[== 
SerializeField== 
]== 
private>> 
NetworkVariable>> 
<>> 
float>> !
>>>! "
m_TickPeriodic>># 1
=>>2 3
new>>4 7
NetworkVariable>>8 G
<>>G H
float>>H M
>>>M N
(>>N O
$num>>O S
)>>S T
;>>T U
[@@ 
SerializeField@@ 
]@@ 
privateAA 
NetworkVariableAA 
<AA 
floatAA !
>AA! ""
m_EnemyMovingDirectionAA# 9
=AA: ;
newAA< ?
NetworkVariableAA@ O
<AAO P
floatAAP U
>AAU V
(AAV W
$numAAW [
)AA[ \
;AA\ ]
[CC 
SerializeFieldCC 
]CC 
privateDD 
floatDD .
"m_RandomThresholdForSaucerCreationDD 4
=DD5 6
$numDD7 <
;DD< =
privateFF 
ListFF 
<FF 

EnemyAgentFF 
>FF 
	m_EnemiesFF &
=FF' (
newFF) ,
ListFF- 1
<FF1 2

EnemyAgentFF2 <
>FF< =
(FF= >
)FF> ?
;FF? @
privateJJ 
boolJJ 
m_ClientGameOverJJ !
;JJ! "
privateKK 
boolKK 
m_ClientGameStartedKK $
;KK$ %
privateLL 
boolLL "
m_ClientStartCountdownLL '
;LL' (
privateNN 
NetworkVariableNN 
<NN 
boolNN  
>NN  !
m_CountdownStartedNN" 4
=NN5 6
newNN7 :
NetworkVariableNN; J
<NNJ K
boolNNK O
>NNO P
(NNP Q
falseNNQ V
)NNV W
;NNW X
privatePP 
floatPP 

m_NextTickPP 
;PP 
privateTT 
boolTT  
m_ReplicatedTimeSentTT %
=TT& '
falseTT( -
;TT- .
privateUU 

GameObjectUU 
m_SaucerUU 
;UU  
privateVV 
ListVV 
<VV 
ShieldVV 
>VV 
	m_ShieldsVV "
=VV# $
newVV% (
ListVV) -
<VV- .
ShieldVV. 4
>VV4 5
(VV5 6
)VV6 7
;VV7 8
privateWW 
floatWW 
m_TimeRemainingWW !
;WW! "
publicYY 

staticYY 
InvadersGameYY 
	SingletonYY (
{YY) *
getYY+ .
;YY. /
privateYY0 7
setYY8 ;
;YY; <
}YY= >
public[[ 

NetworkVariable[[ 
<[[ 
bool[[ 
>[[  
hasGameStarted[[! /
{[[0 1
get[[2 5
;[[5 6
}[[7 8
=[[9 :
new[[; >
NetworkVariable[[? N
<[[N O
bool[[O S
>[[S T
([[T U
false[[U Z
)[[Z [
;[[[ \
public]] 

NetworkVariable]] 
<]] 
bool]] 
>]]  

isGameOver]]! +
{]], -
get]]. 1
;]]1 2
}]]3 4
=]]5 6
new]]7 :
NetworkVariable]]; J
<]]J K
bool]]K O
>]]O P
(]]P Q
false]]Q V
)]]V W
;]]W X
privatecc 
voidcc 
Awakecc 
(cc 
)cc 
{dd 
Assertee 
.ee 
IsNullee 
(ee 
	Singletonee 
,ee  
$"ee! #
$stree# 9
{ee9 :
nameofee: @
(ee@ A
InvadersGameeeA M
)eeM N
}eeN O
$streeO q
"eeq r
)eer s
;ees t
	Singletonff 
=ff 
thisff 
;ff 
OnSingletonReadyhh 
?hh 
.hh 
Invokehh  
(hh  !
)hh! "
;hh" #
ifjj 

(jj 
IsServerjj 
)jj 
{kk 	
hasGameStartedll 
.ll 
Valuell  
=ll! "
falsell# (
;ll( )
m_TimeRemainingoo 
=oo 
m_DelayedStartTimeoo 0
;oo0 1 
m_ReplicatedTimeSentrr  
=rr! "
falserr# (
;rr( )
}ss 	
elsett 
{uu 	
Debugww 
.ww 
	LogFormatww 
(ww 
$strww N
,wwN O
m_TimeRemainingwwP _
)ww_ `
;ww` a
}xx 	
}yy 
private 
void 
Update 
( 
) 
{
�� 
if
�� 

(
�� 
IsCurrentGameOver
�� 
(
�� 
)
�� 
)
��  
return
��! '
;
��' (
UpdateGameTimer
�� 
(
�� 
)
�� 
;
�� 
if
�� 

(
�� 
!
�� 
IsServer
�� 
)
�� 
return
�� 
;
�� 
if
�� 

(
�� 
HasGameStarted
�� 
(
�� 
)
�� 
)
�� 
UpdateEnemies
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 
public
�� 

override
�� 
void
�� 
OnNetworkDespawn
�� )
(
��) *
)
��* +
{
�� 
base
�� 
.
�� 
OnNetworkDespawn
�� 
(
�� 
)
�� 
;
��  
if
�� 

(
�� 
IsServer
�� 
)
�� 
{
�� 	
	m_Enemies
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
	m_Shields
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
NetworkManager
�� 
.
�� 
	Singleton
��  
.
��  !'
OnClientConnectedCallback
��! :
-=
��; =
OnClientConnected
��> O
;
��O P
}
�� 
internal
�� 
static
�� 
event
�� 
Action
��  
OnSingletonReady
��! 1
;
��1 2
public
�� 

override
�� 
void
�� 
OnNetworkSpawn
�� '
(
��' (
)
��( )
{
�� 
if
�� 

(
�� 
IsClient
�� 
&&
�� 
!
�� 
IsServer
�� !
)
��! "
{
�� 	
m_ClientGameOver
�� 
=
�� 
false
�� $
;
��$ %$
m_ClientStartCountdown
�� "
=
��# $
false
��% *
;
��* +!
m_ClientGameStarted
�� 
=
��  !
false
��" '
;
��' ( 
m_CountdownStarted
�� 
.
�� 
OnValueChanged
�� -
+=
��. 0
(
��1 2
oldValue
��2 :
,
��: ;
newValue
��< D
)
��D E
=>
��F H
{
�� $
m_ClientStartCountdown
�� &
=
��' (
newValue
��) 1
;
��1 2
Debug
�� 
.
�� 
	LogFormat
�� 
(
��  
$str
��  a
,
��a b
newValue
��c k
)
��k l
;
��l m
}
�� 
;
�� 
hasGameStarted
�� 
.
�� 
OnValueChanged
�� )
+=
��* ,
(
��- .
oldValue
��. 6
,
��6 7
newValue
��8 @
)
��@ A
=>
��B D
{
�� !
m_ClientGameStarted
�� #
=
��$ %
newValue
��& .
;
��. /
gameTimerText
�� 
.
�� 

gameObject
�� (
.
��( )
	SetActive
��) 2
(
��2 3
!
��3 4!
m_ClientGameStarted
��4 G
)
��G H
;
��H I
Debug
�� 
.
�� 
	LogFormat
�� 
(
��  
$str
��  ]
,
��] ^
newValue
��_ g
)
��g h
;
��h i
}
�� 
;
�� 

isGameOver
�� 
.
�� 
OnValueChanged
�� %
+=
��& (
(
��) *
oldValue
��* 2
,
��2 3
newValue
��4 <
)
��< =
=>
��> @
{
�� 
m_ClientGameOver
��  
=
��! "
newValue
��# +
;
��+ ,
Debug
�� 
.
�� 
	LogFormat
�� 
(
��  
$str
��  Z
,
��Z [
newValue
��\ d
)
��d e
;
��e f
}
�� 
;
�� 
}
�� 	$
SceneTransitionHandler
�� 
.
�� $
sceneTransitionHandler
�� 5
.
��5 6
SetSceneState
��6 C
(
��C D$
SceneTransitionHandler
��D Z
.
��Z [
SceneStates
��[ f
.
��f g
Ingame
��g m
)
��m n
;
��n o
if
�� 

(
�� 
IsServer
�� 
)
�� 
{
�� 	
NetworkManager
�� 
.
�� 
	Singleton
�� $
.
��$ %'
OnClientConnectedCallback
��% >
+=
��? A
OnClientConnected
��B S
;
��S T
}
�� 	
base
�� 
.
�� 
OnNetworkSpawn
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 
void
�� 
OnClientConnected
�� "
(
��" #
ulong
��# (
clientId
��) 1
)
��1 2
{
�� 
if
�� 

(
�� "
m_ReplicatedTimeSent
��  
)
��  !
{
�� 	1
#SetReplicatedTimeRemainingClientRPC
�� /
(
��/ 0
m_TimeRemaining
��0 ?
,
��? @
new
��A D
ClientRpcParams
��E T
{
��U V
Send
��V Z
=
��[ \
new
��] `!
ClientRpcSendParams
��a t
{
��t u
TargetClientIds��u �
=��� �
new��� �
List��� �
<��� �
ulong��� �
>��� �
(��� �
)��� �
{��� �
clientId��� �
}��� �
}��� �
}��� �
)��� �
;��� �
}
�� 	
}
�� 
private
�� 
bool
�� "
ShouldStartCountDown
�� %
(
��% &
)
��& '
{
�� 
if
�� 

(
�� 
HasGameStarted
�� 
(
�� 
)
�� 
)
�� 
return
�� $
false
��% *
;
��* +
if
�� 

(
�� 
IsServer
�� 
)
�� 
{
�� 	 
m_CountdownStarted
�� 
.
�� 
Value
�� $
=
��% &$
SceneTransitionHandler
��' =
.
��= >$
sceneTransitionHandler
��> T
.
��T U!
AllClientsAreLoaded
��U h
(
��h i
)
��i j
;
��j k
if
�� 
(
��  
m_CountdownStarted
�� "
.
��" #
Value
��# (
&&
��) +
!
��, -"
m_ReplicatedTimeSent
��- A
)
��A B
{
�� 1
#SetReplicatedTimeRemainingClientRPC
�� 3
(
��3 4 
m_DelayedStartTime
��4 F
)
��F G
;
��G H"
m_ReplicatedTimeSent
�� $
=
��% &
true
��' +
;
��+ ,
}
�� 
return
��  
m_CountdownStarted
�� %
.
��% &
Value
��& +
;
��+ ,
}
�� 	
return
�� $
m_ClientStartCountdown
�� %
;
��% &
}
�� 
[
�� 
	ClientRpc
�� 
]
�� 
private
�� 
void
�� 1
#SetReplicatedTimeRemainingClientRPC
�� 4
(
��4 5
float
��5 :
delayedStartTime
��; K
,
��K L
ClientRpcParams
��M \
clientRpcParams
��] l
=
��m n
new
��o r
ClientRpcParams��s �
(��� �
)��� �
)��� �
{
�� 
if
�� 

(
�� 
m_TimeRemaining
�� 
==
�� 
$num
��  
)
��  !
{
�� 	
Debug
�� 
.
�� 
	LogFormat
�� 
(
�� 
$str
�� M
,
��M N
delayedStartTime
��O _
)
��_ `
;
��` a
m_TimeRemaining
�� 
=
�� 
delayedStartTime
�� .
;
��. /
}
�� 	
else
�� 
{
�� 	
Debug
�� 
.
�� 
	LogFormat
�� 
(
�� 
$str
�� e
,
��e f
delayedStartTime
��g w
)
��w x
;
��x y
}
�� 	
}
�� 
private
�� 
bool
�� 
IsCurrentGameOver
�� "
(
��" #
)
��# $
{
�� 
if
�� 

(
�� 
IsServer
�� 
)
�� 
return
�� 

isGameOver
�� 
.
�� 
Value
�� #
;
��# $
return
�� 
m_ClientGameOver
�� 
;
��  
}
�� 
private
�� 
bool
�� 
HasGameStarted
�� 
(
��  
)
��  !
{
�� 
if
�� 

(
�� 
IsServer
�� 
)
�� 
return
�� 
hasGameStarted
�� !
.
��! "
Value
��" '
;
��' (
return
�� !
m_ClientGameStarted
�� "
;
��" #
}
�� 
private
�� 
void
�� 
UpdateGameTimer
��  
(
��  !
)
��! "
{
�� 
if
�� 

(
�� 
!
�� "
ShouldStartCountDown
�� !
(
��! "
)
��" #
)
��# $
return
��% +
;
��+ ,
if
�� 

(
�� 
!
�� 
HasGameStarted
�� 
(
�� 
)
�� 
&&
��  
m_TimeRemaining
��! 0
>
��1 2
$num
��3 7
)
��7 8
{
�� 	
m_TimeRemaining
�� 
-=
�� 
Time
�� #
.
��# $
	deltaTime
��$ -
;
��- .
if
�� 
(
�� 
IsServer
�� 
&&
�� 
m_TimeRemaining
�� +
<=
��, .
$num
��/ 3
)
��3 4
{
�� 
m_TimeRemaining
�� 
=
��  !
$num
��" &
;
��& '
hasGameStarted
�� 
.
�� 
Value
�� $
=
��% &
true
��' +
;
��+ ,
OnGameStarted
�� 
(
�� 
)
�� 
;
��  
}
�� 
if
�� 
(
�� 
m_TimeRemaining
�� 
>
��  !
$num
��" &
)
��& '
gameTimerText
�� 
.
�� 
SetText
�� %
(
��% &
$str
��& +
,
��+ ,
Mathf
��- 2
.
��2 3

FloorToInt
��3 =
(
��= >
m_TimeRemaining
��> M
)
��M N
)
��N O
;
��O P
}
�� 	
}
�� 
private
�� 
void
�� 
OnGameStarted
�� 
(
�� 
)
��  
{
�� 
gameTimerText
�� 
.
�� 

gameObject
��  
.
��  !
	SetActive
��! *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
CreateEnemies
�� 
(
�� 
)
�� 
;
�� 
CreateShields
�� 
(
�� 
)
�� 
;
�� 
CreateSuperEnemy
�� 
(
�� 
)
�� 
;
�� 
}
�� 
private
�� 
void
�� 
UpdateEnemies
�� 
(
�� 
)
��  
{
�� 
if
�� 

(
�� 
Time
�� 
.
�� 
time
�� 
>=
�� 

m_NextTick
�� #
)
��# $
{
�� 	

m_NextTick
�� 
=
�� 
Time
�� 
.
�� 
time
�� "
+
��# $
m_TickPeriodic
��% 3
.
��3 4
Value
��4 9
;
��9 :&
UpdateEnemiesResultFlags
�� $ 
enemiesResultFlags
��% 7
=
��8 9&
UpdateEnemiesResultFlags
��: R
.
��R S
None
��S W
;
��W X#
UpdateShootingEnemies
�� !
(
��! "
ref
��" % 
enemiesResultFlags
��& 8
)
��8 9
;
��9 :
if
�� 
(
�� 
(
��  
enemiesResultFlags
�� "
&
��# $&
UpdateEnemiesResultFlags
��% =
.
��= >
ReachedBottom
��> K
)
��K L
!=
��M O
$num
��P Q
)
��Q R
{
�� 

SetGameEnd
�� 
(
�� 
GameOverReason
�� )
.
��) *"
EnemiesReachedBottom
��* >
)
��> ?
;
��? @
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
(
��  
enemiesResultFlags
�� #
&
��$ %&
UpdateEnemiesResultFlags
��& >
.
��> ?

FoundEnemy
��? I
)
��I J
==
��K M
$num
��N O
)
��O P
{
�� 
CreateEnemies
�� 
(
�� 
)
�� 
;
��  
m_TickPeriodic
�� 
.
�� 
Value
�� $
=
��% &
$num
��' +
;
��+ ,
}
�� 
if
�� 
(
�� 
(
��  
enemiesResultFlags
�� #
&
��$ %&
UpdateEnemiesResultFlags
��& >
.
��> ?'
ReachedHorizontalBoundary
��? X
)
��X Y
!=
��Z \
$num
��] ^
)
��^ _
{
�� $
m_EnemyMovingDirection
�� &
.
��& '
Value
��' ,
=
��- .
-
��/ 0$
m_EnemyMovingDirection
��0 F
.
��F G
Value
��G L
;
��L M
m_TickPeriodic
�� 
.
�� 
Value
�� $
*=
��% '
$num
��( -
;
��- .
var
�� 
enemiesCount
��  
=
��! "
	m_Enemies
��# ,
.
��, -
Count
��- 2
;
��2 3
for
�� 
(
�� 
var
�� 
index
�� 
=
��  
$num
��! "
;
��" #
index
��$ )
<
��* +
enemiesCount
��, 8
;
��8 9
index
��: ?
++
��? A
)
��A B
{
�� 
var
�� 
enemy
�� 
=
�� 
	m_Enemies
��  )
[
��) *
index
��* /
]
��/ 0
;
��0 1
enemy
�� 
.
�� 
	transform
�� #
.
��# $
	Translate
��$ -
(
��- .
$num
��. /
,
��/ 0+
k_EnemyVerticalMovementOffset
��1 N
,
��N O
$num
��P Q
)
��Q R
;
��R S
}
�� 
}
�� 
if
�� 
(
�� 
m_Saucer
�� 
==
�� 
null
��  
)
��  !
if
�� 
(
�� 
Random
�� 
.
�� 
Range
��  
(
��  !
$num
��! "
,
��" #
$num
��$ (
)
��( )
>
��* +0
"m_RandomThresholdForSaucerCreation
��, N
)
��N O
CreateSuperEnemy
�� $
(
��$ %
)
��% &
;
��& '
}
�� 	
}
�� 
private
�� 
void
�� #
UpdateShootingEnemies
�� &
(
��& '
ref
��' *&
UpdateEnemiesResultFlags
��+ C
flags
��D I
)
��I J
{
�� 
flags
�� 
=
�� &
UpdateEnemiesResultFlags
�� (
.
��( )
None
��) -
;
��- .
var
�� 
enemiesCount
�� 
=
�� 
	m_Enemies
�� $
.
��$ %
Count
��% *
;
��* +
for
�� 
(
�� 
var
�� 
index
�� 
=
�� 
$num
�� 
;
�� 
index
�� !
<
��" #
enemiesCount
��$ 0
;
��0 1
index
��2 7
++
��7 9
)
��9 :
{
�� 	
var
�� 
enemy
�� 
=
�� 
	m_Enemies
�� !
[
��! "
index
��" '
]
��' (
;
��( )
Assert
�� 
.
�� 
	IsNotNull
�� 
(
�� 
enemy
�� "
)
��" #
;
��# $
if
�� 
(
�� 
	m_Enemies
�� 
==
�� 
null
�� !
)
��! "
{
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
enemy
�� 
.
�� 
	transform
�� 
.
��  
position
��  (
.
��( )
y
��) *
<=
��+ -$
k_BottomBoundaryOffset
��. D
)
��D E
{
�� 
flags
�� 
|=
�� &
UpdateEnemiesResultFlags
�� 1
.
��1 2
ReachedBottom
��2 ?
;
��? @
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
enemy
�� 
.
�� 
score
�� 
>
�� 
$num
�� !
)
��! "
continue
�� 
;
�� 
flags
�� 
|=
�� &
UpdateEnemiesResultFlags
�� -
.
��- .

FoundEnemy
��. 8
;
��8 9
enemy
�� 
.
�� 
	transform
�� 
.
�� 
position
�� $
+=
��% '
new
��( +
Vector3
��, 3
(
��3 4$
m_EnemyMovingDirection
��4 J
.
��J K
Value
��K P
,
��P Q
$num
��R S
,
��S T
$num
��U V
)
��V W
;
��W X
if
�� 
(
�� 
enemy
�� 
.
�� 
	transform
�� 
.
��  
position
��  (
.
��( )
x
��) *
>
��+ ,)
k_LeftOrRightBoundaryOffset
��- H
||
��I K
enemy
��L Q
.
��Q R
	transform
��R [
.
��[ \
position
��\ d
.
��d e
x
��e f
<
��g h
-
��i j*
k_LeftOrRightBoundaryOffset��j �
)��� �
flags
�� 
|=
�� &
UpdateEnemiesResultFlags
�� 1
.
��1 2'
ReachedHorizontalBoundary
��2 K
;
��K L
var
�� 
canShoot
�� 
=
�� 
true
�� 
;
��  
var
�� 
column
�� 
=
�� 
enemy
�� 
.
�� 
column
�� %
;
��% &
var
�� 
row
�� 
=
�� 
enemy
�� 
.
�� 
row
�� 
;
��  
for
�� 
(
�� 
var
�� 

otherIndex
�� 
=
��  !
$num
��" #
;
��# $

otherIndex
��% /
<
��0 1
enemiesCount
��2 >
;
��> ?

otherIndex
��@ J
++
��J L
)
��L M
{
�� 
var
�� 

otherEnemy
�� 
=
��  
	m_Enemies
��! *
[
��* +

otherIndex
��+ 5
]
��5 6
;
��6 7
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 

otherEnemy
�� (
!=
��) +
null
��, 0
)
��0 1
;
��1 2
if
�� 
(
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 

otherEnemy
�� '
.
��' (
column
��( .
-
��/ 0
column
��1 7
)
��7 8
<
��9 :
$num
��; A
)
��A B
if
�� 
(
�� 

otherEnemy
�� "
.
��" #
row
��# &
<
��' (
row
��) ,
)
��, -
{
�� 
canShoot
��  
=
��! "
false
��# (
;
��( )
break
�� 
;
�� 
}
�� 
}
�� 
enemy
�� 
.
�� 
canShoot
�� 
=
�� 
canShoot
�� %
;
��% &
}
�� 	
}
�� 
public
�� 

void
�� 
SetScore
�� 
(
�� 
int
�� 
score
�� "
)
��" #
{
�� 
	scoreText
�� 
.
�� 
SetText
�� 
(
�� 
$str
��  
,
��  !
score
��" '
)
��' (
;
��( )
}
�� 
public
�� 

void
�� 
SetLives
�� 
(
�� 
int
�� 
lives
�� "
)
��" #
{
�� 
	livesText
�� 
.
�� 
SetText
�� 
(
�� 
$str
��  
,
��  !
lives
��" '
)
��' (
;
��( )
}
�� 
public
�� 

void
�� !
DisplayGameOverText
�� #
(
��# $
string
��$ *
message
��+ 2
)
��2 3
{
�� 
if
�� 

(
�� 
gameOverText
�� 
)
�� 
{
�� 	
gameOverText
�� 
.
�� 
SetText
��  
(
��  !
message
��! (
)
��( )
;
��) *
gameOverText
�� 
.
�� 

gameObject
�� #
.
��# $
	SetActive
��$ -
(
��- .
true
��. 2
)
��2 3
;
��3 4
}
�� 	
}
�� 
public
�� 

void
�� 

SetGameEnd
�� 
(
�� 
GameOverReason
�� )
reason
��* 0
)
��0 1
{
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
IsServer
�� 
,
�� 
$str
��  O
)
��O P
;
��P Q
if
�� 

(
�� 
reason
�� 
!=
�� 
GameOverReason
�� $
.
��$ %
Death
��% *
)
��* +
{
�� 	
this
�� 
.
�� 

isGameOver
�� 
.
�� 
Value
�� !
=
��" #
true
��$ (
;
��( )(
BroadcastGameOverClientRpc
�� &
(
��& '
reason
��' -
)
��- .
;
��. /
return
�� 
;
�� 
}
�� 	
foreach
�� 
(
�� 
NetworkClient
�� 
networkedClient
�� .
in
��/ 1
NetworkManager
��2 @
.
��@ A
	Singleton
��A J
.
��J K"
ConnectedClientsList
��K _
)
��_ `
{
�� 	
var
�� 
playerObject
�� 
=
�� 
networkedClient
�� .
.
��. /
PlayerObject
��/ ;
;
��; <
if
�� 
(
�� 
playerObject
�� 
==
�� 
null
�� #
)
��# $
continue
��% -
;
��- .
if
�� 
(
�� 
playerObject
�� 
.
�� 
GetComponent
�� )
<
��) *
PlayerControl
��* 7
>
��7 8
(
��8 9
)
��9 :
.
��: ;
IsAlive
��; B
)
��B C
return
�� 
;
�� 
}
�� 	
this
�� 
.
�� 

isGameOver
�� 
.
�� 
Value
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
[
�� 
	ClientRpc
�� 
]
�� 
public
�� 

void
�� (
BroadcastGameOverClientRpc
�� *
(
��* +
GameOverReason
��+ 9
reason
��: @
)
��@ A
{
�� 
var
�� 
localPlayerObject
�� 
=
�� 
NetworkManager
��  .
.
��. /
	Singleton
��/ 8
.
��8 9
ConnectedClients
��9 I
[
��I J
NetworkManager
��J X
.
��X Y
	Singleton
��Y b
.
��b c
LocalClientId
��c p
]
��p q
.
��q r
PlayerObject
��r ~
;
��~ 
Assert
�� 
.
�� 
	IsNotNull
�� 
(
�� 
localPlayerObject
�� *
)
��* +
;
��+ ,
if
�� 

(
�� 
localPlayerObject
�� 
.
�� 
TryGetComponent
�� -
<
��- .
PlayerControl
��. ;
>
��; <
(
��< =
out
��= @
var
��A D
playerControl
��E R
)
��R S
)
��S T
playerControl
�� 
.
�� 
NotifyGameOver
�� (
(
��( )
reason
��) /
)
��/ 0
;
��0 1
}
�� 
public
�� 

void
�� %
RegisterSpawnableObject
�� '
(
��' ( 
InvadersObjectType
��( : 
invadersObjectType
��; M
,
��M N

GameObject
��O Y

gameObject
��Z d
)
��d e
{
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
IsClient
�� 
)
�� 
;
��  
switch
�� 
(
��  
invadersObjectType
�� "
)
��" #
{
�� 	
case
��  
InvadersObjectType
�� #
.
��# $
Enemy
��$ )
:
��) *
{
�� 
if
�� 
(
�� 

gameObject
�� 
.
�� 
TryGetComponent
�� .
<
��. / 
SuperEnemyMovement
��/ A
>
��A B
(
��B C
out
��C F
var
��G J
saucer
��K Q
)
��Q R
)
��R S
return
�� 
;
�� 

gameObject
�� 
.
�� 
TryGetComponent
�� *
<
��* +

EnemyAgent
��+ 5
>
��5 6
(
��6 7
out
��7 :
var
��; >

enemyAgent
��? I
)
��I J
;
��J K
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 

enemyAgent
�� (
!=
��) +
null
��, 0
)
��0 1
;
��1 2
if
�� 
(
�� 
!
�� 
	m_Enemies
�� 
.
�� 
Contains
�� '
(
��' (

enemyAgent
��( 2
)
��2 3
)
��3 4
	m_Enemies
�� 
.
�� 
Add
�� !
(
��! "

enemyAgent
��" ,
)
��, -
;
��- .
break
�� 
;
�� 
}
�� 
case
��  
InvadersObjectType
�� #
.
��# $
Shield
��$ *
:
��* +
{
�� 

gameObject
�� 
.
�� 
TryGetComponent
�� *
<
��* +
Shield
��+ 1
>
��1 2
(
��2 3
out
��3 6
var
��7 :
shield
��; A
)
��A B
;
��B C
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
shield
�� $
!=
��% '
null
��( ,
)
��, -
;
��- .
	m_Shields
�� 
.
�� 
Add
�� 
(
�� 
shield
�� $
)
��$ %
;
��% &
break
�� 
;
�� 
}
�� 
default
�� 
:
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
false
�� #
)
��# $
;
��$ %
break
�� 
;
�� 
}
�� 	
}
�� 
public
�� 

void
�� '
UnregisterSpawnableObject
�� )
(
��) * 
InvadersObjectType
��* < 
invadersObjectType
��= O
,
��O P

GameObject
��Q [

gameObject
��\ f
)
��f g
{
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
IsServer
�� 
)
�� 
;
��  
switch
�� 
(
��  
invadersObjectType
�� "
)
��" #
{
�� 	
case
��  
InvadersObjectType
�� #
.
��# $
Enemy
��$ )
:
��) *
{
�� 
if
�� 
(
�� 

gameObject
�� 
.
�� 
TryGetComponent
�� .
<
��. / 
SuperEnemyMovement
��/ A
>
��A B
(
��B C
out
��C F
var
��G J
saucer
��K Q
)
��Q R
)
��R S
return
�� 
;
�� 

gameObject
�� 
.
�� 
TryGetComponent
�� *
<
��* +

EnemyAgent
��+ 5
>
��5 6
(
��6 7
out
��7 :
var
��; >

enemyAgent
��? I
)
��I J
;
��J K
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 

enemyAgent
�� (
!=
��) +
null
��, 0
)
��0 1
;
��1 2
if
�� 
(
�� 
	m_Enemies
�� 
.
�� 
Contains
�� &
(
��& '

enemyAgent
��' 1
)
��1 2
)
��2 3
	m_Enemies
�� 
.
�� 
Remove
�� $
(
��$ %

enemyAgent
��% /
)
��/ 0
;
��0 1
break
�� 
;
�� 
}
�� 
case
��  
InvadersObjectType
�� #
.
��# $
Shield
��$ *
:
��* +
{
�� 

gameObject
�� 
.
�� 
TryGetComponent
�� *
<
��* +
Shield
��+ 1
>
��1 2
(
��2 3
out
��3 6
var
��7 :
shield
��; A
)
��A B
;
��B C
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
shield
�� $
!=
��% '
null
��( ,
)
��, -
;
��- .
if
�� 
(
�� 
	m_Shields
�� 
.
�� 
Contains
�� &
(
��& '
shield
��' -
)
��- .
)
��. /
	m_Shields
�� 
.
�� 
Remove
�� $
(
��$ %
shield
��% +
)
��+ ,
;
��, -
break
�� 
;
�� 
}
�� 
default
�� 
:
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
false
�� #
)
��# $
;
��$ %
break
�� 
;
�� 
}
�� 	
}
�� 
public
�� 

void
�� 
ExitGame
�� 
(
�� 
)
�� 
{
�� 
NetworkManager
�� 
.
�� 
	Singleton
��  
.
��  !
Shutdown
��! )
(
��) *
)
��* +
;
��+ ,$
SceneTransitionHandler
�� 
.
�� $
sceneTransitionHandler
�� 5
.
��5 6"
ExitAndLoadStartMenu
��6 J
(
��J K
)
��K L
;
��L M
}
�� 
private
�� 
void
�� 
CreateShield
�� 
(
�� 

GameObject
�� (
prefab
��) /
,
��/ 0
int
��1 4
posX
��5 9
,
��9 :
int
��; >
posY
��? C
)
��C D
{
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
IsServer
�� 
,
�� 
$str
��  R
)
��R S
;
��S T
const
�� 
float
�� 
dy
�� 
=
�� 
$num
�� 
;
�� 
const
�� 
float
�� 
dx
�� 
=
�� 
$num
�� 
;
�� 
var
�� 
ycount
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
float
�� 
y
�� 
=
�� 
posY
�� 
;
�� 
y
�� 
<
��  
posY
��! %
+
��& '
$num
��( )
;
��) *
y
��+ ,
+=
��- /
dy
��0 2
)
��2 3
{
�� 	
var
�� 
xcount
�� 
=
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
float
�� 
x
�� 
=
�� 
posX
�� 
;
��  
x
��! "
<
��# $
posX
��% )
+
��* +
$num
��, -
;
��- .
x
��/ 0
+=
��1 3
dx
��4 6
)
��6 7
{
�� 
if
�� 
(
�� 
ycount
�� 
==
�� 
$num
�� 
&&
��  "
(
��# $
xcount
��$ *
==
��+ -
$num
��. /
||
��0 2
xcount
��3 9
==
��: <
$num
��= >
)
��> ?
)
��? @
{
�� 
xcount
�� 
+=
�� 
$num
�� 
;
��  
continue
�� 
;
�� 
}
�� 
var
�� 
shield
�� 
=
�� 
Instantiate
�� (
(
��( )
prefab
��) /
,
��/ 0
new
��1 4
Vector3
��5 <
(
��< =
x
��= >
-
��? @
$num
��A B
,
��B C
y
��D E
,
��E F
$num
��G H
)
��H I
,
��I J

Quaternion
��K U
.
��U V
identity
��V ^
)
��^ _
;
��_ `
shield
�� 
.
�� 
GetComponent
�� #
<
��# $
NetworkObject
��$ 1
>
��1 2
(
��2 3
)
��3 4
.
��4 5
Spawn
��5 :
(
��: ;
)
��; <
;
��< =
xcount
�� 
+=
�� 
$num
�� 
;
�� 
}
�� 
ycount
�� 
+=
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
private
�� 
void
�� 
CreateShields
�� 
(
�� 
)
��  
{
�� 
CreateShield
�� 
(
�� 
shieldPrefab
�� !
,
��! "
-
��# $
$num
��$ %
,
��% &
-
��' (
$num
��( )
)
��) *
;
��* +
CreateShield
�� 
(
�� 
shieldPrefab
�� !
,
��! "
$num
��# $
,
��$ %
-
��& '
$num
��' (
)
��( )
;
��) *
CreateShield
�� 
(
�� 
shieldPrefab
�� !
,
��! "
$num
��# $
,
��$ %
-
��& '
$num
��' (
)
��( )
;
��) *
}
�� 
private
�� 
void
�� 
CreateSuperEnemy
�� !
(
��! "
)
��" #
{
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
IsServer
�� 
,
�� 
$str
��  R
)
��R S
;
��S T
m_Saucer
�� 
=
�� 
Instantiate
�� 
(
�� 
superEnemyPrefab
�� /
,
��/ 0
saucerSpawnPoint
��1 A
.
��A B
position
��B J
,
��J K

Quaternion
��L V
.
��V W
identity
��W _
)
��_ `
;
��` a
m_Saucer
�� 
.
�� 
GetComponent
�� 
<
�� 
NetworkObject
�� +
>
��+ ,
(
��, -
)
��- .
.
��. /
Spawn
��/ 4
(
��4 5
)
��5 6
;
��6 7
}
�� 
private
�� 
void
�� 
CreateEnemy
�� 
(
�� 

GameObject
�� '
prefab
��( .
,
��. /
float
��0 5
posX
��6 :
,
��: ;
float
��< A
posY
��B F
)
��F G
{
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
IsServer
�� 
,
�� 
$str
��  Q
)
��Q R
;
��R S
var
�� 
enemy
�� 
=
�� 
Instantiate
�� 
(
��  
prefab
��  &
)
��& '
;
��' (
enemy
�� 
.
�� 
	transform
�� 
.
�� 
position
��  
=
��! "
new
��# &
Vector3
��' .
(
��. /
posX
��/ 3
,
��3 4
posY
��5 9
,
��9 :
$num
��; ?
)
��? @
;
��@ A
enemy
�� 
.
�� 
GetComponent
�� 
<
�� 

EnemyAgent
�� %
>
��% &
(
��& '
)
��' (
.
��( )
Setup
��) .
(
��. /
Mathf
��/ 4
.
��4 5

RoundToInt
��5 ?
(
��? @
posX
��@ D
)
��D E
,
��E F
Mathf
��G L
.
��L M

RoundToInt
��M W
(
��W X
posY
��X \
)
��\ ]
)
��] ^
;
��^ _
enemy
�� 
.
�� 
GetComponent
�� 
<
�� 
NetworkObject
�� (
>
��( )
(
��) *
)
��* +
.
��+ ,
Spawn
��, 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
public
�� 

void
�� 
CreateEnemies
�� 
(
�� 
)
�� 
{
�� 
float
�� 
startx
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
��  !
++
��! #
)
��# $
{
�� 	
CreateEnemy
�� 
(
�� 
enemy1Prefab
�� $
,
��$ %
startx
��& ,
,
��, -
$num
��. 0
)
��0 1
;
��1 2
startx
�� 
+=
�� 
$num
�� 
;
�� 
}
�� 	
startx
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
��  !
++
��! #
)
��# $
{
�� 	
CreateEnemy
�� 
(
�� 
enemy2Prefab
�� $
,
��$ %
startx
��& ,
,
��, -
$num
��. 0
)
��0 1
;
��1 2
startx
�� 
+=
�� 
$num
�� 
;
�� 
}
�� 	
startx
�� 
=
�� 
-
�� 
$num
�� 
;
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
�� 
;
�� 
i
��  !
++
��! #
)
��# $
{
�� 	
CreateEnemy
�� 
(
�� 
enemy3Prefab
�� $
,
��$ %
startx
��& ,
,
��, -
$num
��. /
)
��/ 0
;
��0 1
startx
�� 
+=
�� 
$num
�� 
;
�� 
}
�� 	
}
�� 
}�� �
5C:\code\ispclone\Assets\Scripts\SuperEnemyMovement.cs
public 
class 
SuperEnemyMovement 
:  !
MonoBehaviour" /
{ 
private 
const 
float 
k_YBoundary #
=$ %
$num& +
;+ ,
[		 
Header		 
(		 
$str		 
)		  
]		  !
[

 
SerializeField

 
]

 
[ 
Tooltip 
( 
$str :
): ;
]; <
private 
float 
m_MoveSpeed 
= 
$num  $
;$ %
private 
void 
Update 
( 
) 
{ 
if 

( 
! 
NetworkManager 
. 
	Singleton %
.% &
IsServer& .
). /
return0 6
;6 7
if 

( 
	transform 
. 
position 
. 
x  
>! "
k_YBoundary# .
). /
{ 	
if 
( 
NetworkManager 
. 
	Singleton (
.( )
IsServer) 1
)1 2
Destroy3 :
(: ;

gameObject; E
)E F
;F G
return 
; 
} 	
	transform 
. 
	Translate 
( 
m_MoveSpeed '
*( )
Time* .
.. /
	deltaTime/ 8
,8 9
$num: ;
,; <
$num= >
)> ?
;? @
} 
} �
0C:\code\ispclone\Assets\Scripts\PlayerControl.cs
public 
class 
PlayerControl 
: 
NetworkBehaviour -
{		 
[

 
Header

 
(

 
$str

 
)

 
]

 
public 


GameObject 
bulletPrefab "
;" #
[ 
Header 
( 
$str 
)  
]  !
[ 
SerializeField 
] 
private 
float 
m_MoveSpeed 
= 
$num  $
;$ %
[ 
Header 
( 
$str 
) 
] 
[ 
SerializeField 
] 
private 
NetworkVariable 
< 
int 
>  
m_Lives! (
=) *
new+ .
NetworkVariable/ >
<> ?
int? B
>B C
(C D
$numD E
)E F
;F G
[ 
SerializeField 
] 
ParticleSystem %
m_ExplosionParticleSystem ,
;, -
[ 
SerializeField 
] 
ParticleSystem 
m_HitParticleSystem &
;& '
[ 
SerializeField 
] 
Color 	
m_PlayerColorInGame
 
; 
private 
bool 
m_HasGameStarted !
;! "
private 
bool 
	m_IsAlive 
= 
true !
;! "
private!! 
NetworkVariable!! 
<!! 
int!! 
>!!  
m_MoveX!!! (
=!!) *
new!!+ .
NetworkVariable!!/ >
<!!> ?
int!!? B
>!!B C
(!!C D
$num!!D E
)!!E F
;!!F G
private## 

GameObject## 

m_MyBullet## !
;##! "
private$$ 
ClientRpcParams$$ 
m_OwnerRPCParams$$ ,
;$$, -
[&& 
SerializeField&& 
]&& 
private'' 
SpriteRenderer'' 
m_PlayerVisual'' )
;'') *
private(( 
NetworkVariable(( 
<(( 
int(( 
>((  
m_Score((! (
=(() *
new((+ .
NetworkVariable((/ >
<((> ?
int((? B
>((B C
(((C D
$num((D E
)((E F
;((F G
public** 

bool** 
IsAlive** 
=>** 
m_Lives** "
.**" #
Value**# (
>**) *
$num**+ ,
;**, -
private,, 
void,, 
Awake,, 
(,, 
),, 
{-- 
m_HasGameStarted.. 
=.. 
false..  
;..  !
}// 
private11 
void11 
Update11 
(11 
)11 
{22 
switch33 
(33 "
SceneTransitionHandler33 &
.33& '"
sceneTransitionHandler33' =
.33= > 
GetCurrentSceneState33> R
(33R S
)33S T
)33T U
{44 	
case55 "
SceneTransitionHandler55 '
.55' (
SceneStates55( 3
.553 4
Ingame554 :
:55: ;
{66 
InGameUpdate77 
(77 
)77 
;77 
break88 
;88 
}99 
}:: 	
};; 
private== 
void== 

LateUpdate== 
(== 
)== 
{>>  
HandleCameraMovement?? 
(?? 
)?? 
;?? 
}@@ 
privateBB 
voidBB  
HandleCameraMovementBB %
(BB% &
)BB& '
{CC 
Vector3DD 
cameraPositionDD 
=DD  
	transformDD! *
.DD* +
positionDD+ 3
;DD3 4
cameraPositionEE 
.EE 
xEE 
*=EE 
$numEE !
;EE! "
cameraPositionFF 
.FF 
yFF 
=FF 
$numFF 
;FF  
cameraPositionGG 
.GG 
zGG 
=GG 
-GG 
$numGG 
;GG  
CameraHH 
.HH 
mainHH 
.HH 
	transformHH 
.HH 
positionHH &
=HH' (
cameraPositionHH) 7
;HH7 8
}II 
publicKK 

overrideKK 
voidKK 
OnNetworkDespawnKK )
(KK) *
)KK* +
{LL 
baseMM 
.MM 
OnNetworkDespawnMM 
(MM 
)MM 
;MM  
ifNN 

(NN 
IsClientNN 
)NN 
{OO 	
m_LivesPP 
.PP 
OnValueChangedPP "
-=PP# %
OnLivesChangedPP& 4
;PP4 5
m_ScoreQQ 
.QQ 
OnValueChangedQQ "
-=QQ# %
OnScoreChangedQQ& 4
;QQ4 5
}RR 	
ifTT 

(TT 
InvadersGameTT 
.TT 
	SingletonTT "
)TT" #
{UU 	
InvadersGameVV 
.VV 
	SingletonVV "
.VV" #

isGameOverVV# -
.VV- .
OnValueChangedVV. <
-=VV= ? 
OnGameStartedChangedVV@ T
;VVT U
InvadersGameWW 
.WW 
	SingletonWW "
.WW" #
hasGameStartedWW# 1
.WW1 2
OnValueChangedWW2 @
-=WWA C 
OnGameStartedChangedWWD X
;WWX Y
}XX 	
}YY 
private[[ 
void[[ 4
(SceneTransitionHandler_sceneStateChanged[[ 9
([[9 :"
SceneTransitionHandler[[: P
.[[P Q
SceneStates[[Q \
newState[[] e
)[[e f
{\\ 
UpdateColor]] 
(]] 
)]] 
;]] 
}^^ 
private`` 
void`` 
UpdateColor`` 
(`` 
)`` 
{aa 
ifbb 

(bb "
SceneTransitionHandlerbb "
.bb" #"
sceneTransitionHandlerbb# 9
.bb9 : 
GetCurrentSceneStatebb: N
(bbN O
)bbO P
==bbQ S"
SceneTransitionHandlerbbT j
.bbj k
SceneStatesbbk v
.bbv w
Ingamebbw }
)bb} ~
{cc 	
ifdd 
(dd 
m_PlayerVisualdd 
!=dd !
nulldd" &
)dd& '
m_PlayerVisualdd( 6
.dd6 7
colordd7 <
=dd= >
m_PlayerColorInGamedd? R
;ddR S
}ee 	
elseff 
{gg 	
ifhh 
(hh 
m_PlayerVisualhh 
!=hh !
nullhh" &
)hh& '
m_PlayerVisualhh( 6
.hh6 7
colorhh7 <
=hh= >
Colorhh? D
.hhD E
clearhhE J
;hhJ K
}ii 	
}jj 
publicll 

overridell 
voidll 
OnNetworkSpawnll '
(ll' (
)ll( )
{mm 
basenn 
.nn 
OnNetworkSpawnnn 
(nn 
)nn 
;nn 
m_Livesrr 
.rr 
OnValueChangedrr 
+=rr !
OnLivesChangedrr" 0
;rr0 1
m_Scoress 
.ss 
OnValueChangedss 
+=ss !
OnScoreChangedss" 0
;ss0 1
ifuu 

(uu 
IsServeruu 
)uu 
m_OwnerRPCParamsuu &
=uu' (
newuu) ,
ClientRpcParamsuu- <
{uu= >
Senduu? C
=uuD E
newuuF I
ClientRpcSendParamsuuJ ]
{uu^ _
TargetClientIdsuu` o
=uup q
newuur u
[uuu v
]uuv w
{uux y
OwnerClientId	uuz �
}
uu� �
}
uu� �
}
uu� �
;
uu� �
ifww 

(ww 
!ww 
InvadersGameww 
.ww 
	Singletonww #
)ww# $
InvadersGamexx 
.xx 
OnSingletonReadyxx )
+=xx* ,/
#SubscribeToDelegatesAndUpdateValuesxx- P
;xxP Q
elseyy /
#SubscribeToDelegatesAndUpdateValueszz /
(zz/ 0
)zz0 1
;zz1 2"
SceneTransitionHandler|| 
.|| "
sceneTransitionHandler|| 5
.||5 6
OnSceneStateChanged||6 I
+=||J L4
(SceneTransitionHandler_sceneStateChanged||M u
;||u v
UpdateColor}} 
(}} 
)}} 
;}} 
}~~ 
private
�� 
void
�� 1
#SubscribeToDelegatesAndUpdateValues
�� 4
(
��4 5
)
��5 6
{
�� 
InvadersGame
�� 
.
�� 
	Singleton
�� 
.
�� 
hasGameStarted
�� -
.
��- .
OnValueChanged
��. <
+=
��= ?"
OnGameStartedChanged
��@ T
;
��T U
InvadersGame
�� 
.
�� 
	Singleton
�� 
.
�� 

isGameOver
�� )
.
��) *
OnValueChanged
��* 8
+=
��9 ;"
OnGameStartedChanged
��< P
;
��P Q
if
�� 

(
�� 
IsClient
�� 
&&
�� 
IsOwner
�� 
)
��  
{
�� 	
InvadersGame
�� 
.
�� 
	Singleton
�� "
.
��" #
SetScore
��# +
(
��+ ,
m_Score
��, 3
.
��3 4
Value
��4 9
)
��9 :
;
��: ;
InvadersGame
�� 
.
�� 
	Singleton
�� "
.
��" #
SetLives
��# +
(
��+ ,
m_Lives
��, 3
.
��3 4
Value
��4 9
)
��9 :
;
��: ;
}
�� 	
m_HasGameStarted
�� 
=
�� 
InvadersGame
�� '
.
��' (
	Singleton
��( 1
.
��1 2
hasGameStarted
��2 @
.
��@ A
Value
��A F
;
��F G
}
�� 
public
�� 

void
�� !
IncreasePlayerScore
�� #
(
��# $
int
��$ '
amount
��( .
)
��. /
{
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
IsServer
�� 
,
�� 
$str
��  W
)
��W X
;
��X Y
m_Score
�� 
.
�� 
Value
�� 
+=
�� 
amount
�� 
;
��  
}
�� 
private
�� 
void
�� "
OnGameStartedChanged
�� %
(
��% &
bool
��& *
previousValue
��+ 8
,
��8 9
bool
��: >
newValue
��? G
)
��G H
{
�� 
m_HasGameStarted
�� 
=
�� 
newValue
�� #
;
��# $
}
�� 
private
�� 
void
�� 
OnLivesChanged
�� 
(
��  
int
��  #
previousAmount
��$ 2
,
��2 3
int
��4 7
currentAmount
��8 E
)
��E F
{
�� 
if
�� 

(
�� 
currentAmount
�� 
<=
�� 
$num
�� 
&&
�� !
IsClient
��" *
)
��* +
m_PlayerVisual
�� 
.
�� 
enabled
�� "
=
��# $
false
��% *
;
��* +
if
�� 

(
�� 
!
�� 
IsOwner
�� 
)
�� 
return
�� 
;
�� 
Debug
�� 
.
�� 
	LogFormat
�� 
(
�� 
$str
�� $
,
��$ %
currentAmount
��& 3
)
��3 4
;
��4 5
if
�� 

(
�� 
InvadersGame
�� 
.
�� 
	Singleton
�� "
!=
��# %
null
��& *
)
��* +
InvadersGame
��, 8
.
��8 9
	Singleton
��9 B
.
��B C
SetLives
��C K
(
��K L
m_Lives
��L S
.
��S T
Value
��T Y
)
��Y Z
;
��Z [
if
�� 

(
�� 
m_Lives
�� 
.
�� 
Value
�� 
<=
�� 
$num
�� 
)
�� 
{
�� 	
	m_IsAlive
�� 
=
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
private
�� 
void
�� 
OnScoreChanged
�� 
(
��  
int
��  #
previousAmount
��$ 2
,
��2 3
int
��4 7
currentAmount
��8 E
)
��E F
{
�� 
if
�� 

(
�� 
!
�� 
IsOwner
�� 
)
�� 
return
�� 
;
�� 
Debug
�� 
.
�� 
	LogFormat
�� 
(
�� 
$str
�� $
,
��$ %
currentAmount
��& 3
)
��3 4
;
��4 5
if
�� 

(
�� 
InvadersGame
�� 
.
�� 
	Singleton
�� "
!=
��# %
null
��& *
)
��* +
InvadersGame
��, 8
.
��8 9
	Singleton
��9 B
.
��B C
SetScore
��C K
(
��K L
m_Score
��L S
.
��S T
Value
��T Y
)
��Y Z
;
��Z [
}
�� 
private
�� 
void
�� 
InGameUpdate
�� 
(
�� 
)
�� 
{
�� 
if
�� 

(
�� 
!
�� 
IsLocalPlayer
�� 
||
�� 
!
�� 
IsOwner
�� &
||
��' )
!
��* +
m_HasGameStarted
��+ ;
)
��; <
return
��= C
;
��C D
if
�� 

(
�� 
!
�� 
	m_IsAlive
�� 
)
�� 
return
�� 
;
�� 
var
�� 
deltaX
�� 
=
�� 
$num
�� 
;
�� 
if
�� 

(
�� 
Input
�� 
.
�� 
GetKey
�� 
(
�� 
KeyCode
��  
.
��  !
	LeftArrow
��! *
)
��* +
)
��+ ,
deltaX
��- 3
-=
��4 6
$num
��7 8
;
��8 9
if
�� 

(
�� 
Input
�� 
.
�� 
GetKey
�� 
(
�� 
KeyCode
��  
.
��  !

RightArrow
��! +
)
��+ ,
)
��, -
deltaX
��. 4
+=
��5 7
$num
��8 9
;
��9 :
if
�� 

(
�� 
deltaX
�� 
!=
�� 
$num
�� 
)
�� 
{
�� 	
var
�� 
newMovement
�� 
=
�� 
new
�� !
Vector3
��" )
(
��) *
deltaX
��* 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
;
��7 8
	transform
�� 
.
�� 
position
�� 
=
��  
Vector3
��! (
.
��( )
MoveTowards
��) 4
(
��4 5
	transform
��5 >
.
��> ?
position
��? G
,
��G H
	transform
�� 
.
�� 
position
�� "
+
��# $
newMovement
��% 0
,
��0 1
m_MoveSpeed
��2 =
*
��> ?
Time
��@ D
.
��D E
	deltaTime
��E N
)
��N O
;
��O P
}
�� 	
if
�� 

(
�� 
Input
�� 
.
�� 

GetKeyDown
�� 
(
�� 
KeyCode
�� $
.
��$ %
Space
��% *
)
��* +
)
��+ ,
ShootServerRPC
��- ;
(
��; <
)
��< =
;
��= >
}
�� 
[
�� 
	ServerRpc
�� 
]
�� 
private
�� 
void
�� 
ShootServerRPC
�� 
(
��  
)
��  !
{
�� 
if
�� 

(
�� 
!
�� 
	m_IsAlive
�� 
)
�� 
return
�� 
;
�� 
if
�� 

(
�� 

m_MyBullet
�� 
==
�� 
null
�� 
)
�� 
{
�� 	

m_MyBullet
�� 
=
�� 
Instantiate
�� $
(
��$ %
bulletPrefab
��% 1
,
��1 2
	transform
��3 <
.
��< =
position
��= E
+
��F G
Vector3
��H O
.
��O P
up
��P R
,
��R S

Quaternion
��T ^
.
��^ _
identity
��_ g
)
��g h
;
��h i

m_MyBullet
�� 
.
�� 
GetComponent
�� #
<
��# $
PlayerBullet
��$ 0
>
��0 1
(
��1 2
)
��2 3
.
��3 4
owner
��4 9
=
��: ;
this
��< @
;
��@ A

m_MyBullet
�� 
.
�� 
GetComponent
�� #
<
��# $
NetworkObject
��$ 1
>
��1 2
(
��2 3
)
��3 4
.
��4 5
Spawn
��5 :
(
��: ;
)
��; <
;
��< =
}
�� 	
}
�� 
public
�� 

void
�� 
HitByBullet
�� 
(
�� 
)
�� 
{
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
IsServer
�� 
,
�� 
$str
��  N
)
��N O
;
��O P
if
�� 

(
�� 
!
�� 
	m_IsAlive
�� 
)
�� 
return
�� 
;
�� 
m_Lives
�� 
.
�� 
Value
�� 
-=
�� 
$num
�� 
;
�� 
if
�� 

(
�� 
m_Lives
�� 
.
�� 
Value
�� 
<=
�� 
$num
�� 
)
�� 
{
�� 	
	m_IsAlive
�� 
=
�� 
false
�� 
;
�� 
m_MoveX
�� 
.
�� 
Value
�� 
=
�� 
$num
�� 
;
�� 
m_Lives
�� 
.
�� 
Value
�� 
=
�� 
$num
�� 
;
�� 
InvadersGame
�� 
.
�� 
	Singleton
�� "
.
��" #

SetGameEnd
��# -
(
��- .
GameOverReason
��. <
.
��< =
Death
��= B
)
��B C
;
��C D%
NotifyGameOverClientRpc
�� #
(
��# $
GameOverReason
��$ 2
.
��2 3
Death
��3 8
,
��8 9
m_OwnerRPCParams
��: J
)
��J K
;
��K L
Instantiate
�� 
(
�� '
m_ExplosionParticleSystem
�� 1
,
��1 2
	transform
��3 <
.
��< =
position
��= E
,
��E F

quaternion
��G Q
.
��Q R
identity
��R Z
)
��Z [
;
��[ \
m_PlayerVisual
�� 
.
�� 
enabled
�� "
=
��# $
false
��% *
;
��* +
}
�� 	
else
�� 
{
�� 	
Instantiate
�� 
(
�� !
m_HitParticleSystem
�� +
,
��+ ,
	transform
��- 6
.
��6 7
position
��7 ?
,
��? @

quaternion
��A K
.
��K L
identity
��L T
)
��T U
;
��U V
}
�� 	
}
�� 
[
�� 
	ClientRpc
�� 
]
�� 
private
�� 
void
�� %
NotifyGameOverClientRpc
�� (
(
��( )
GameOverReason
��) 7
reason
��8 >
,
��> ?
ClientRpcParams
��@ O
clientParams
��P \
)
��\ ]
{
�� 
NotifyGameOver
�� 
(
�� 
reason
�� 
)
�� 
;
�� 
}
�� 
public
�� 

void
�� 
NotifyGameOver
�� 
(
�� 
GameOverReason
�� -
reason
��. 4
)
��4 5
{
�� 
Assert
�� 
.
�� 
IsTrue
�� 
(
�� 
IsLocalPlayer
�� #
)
��# $
;
��$ %
m_HasGameStarted
�� 
=
�� 
false
��  
;
��  !
switch
�� 
(
�� 
reason
�� 
)
�� 
{
�� 	
case
�� 
GameOverReason
�� 
.
��  
None
��  $
:
��$ %
InvadersGame
�� 
.
�� 
	Singleton
�� &
.
��& '!
DisplayGameOverText
��' :
(
��: ;
$str
��; [
)
��[ \
;
��\ ]
break
�� 
;
�� 
case
�� 
GameOverReason
�� 
.
��  "
EnemiesReachedBottom
��  4
:
��4 5
InvadersGame
�� 
.
�� 
	Singleton
�� &
.
��& '!
DisplayGameOverText
��' :
(
��: ;
$str
��; i
)
��i j
;
��j k
break
�� 
;
�� 
case
�� 
GameOverReason
�� 
.
��  
Death
��  %
:
��% &
InvadersGame
�� 
.
�� 
	Singleton
�� &
.
��& '!
DisplayGameOverText
��' :
(
��: ;
$str
��; e
)
��e f
;
��f g
break
�� 
;
�� 
case
�� 
GameOverReason
�� 
.
��  
Max
��  #
:
��# $
break
�� 
;
�� 
default
�� 
:
�� 
throw
�� 
new
�� )
ArgumentOutOfRangeException
�� 5
(
��5 6
nameof
��6 <
(
��< =
reason
��= C
)
��C D
,
��D E
reason
��F L
,
��L M
null
��N R
)
��R S
;
��S T
}
�� 	
}
�� 
}�� 