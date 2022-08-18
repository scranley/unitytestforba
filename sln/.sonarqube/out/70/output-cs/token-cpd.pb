Η@
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
}jj ±
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
}77 Μ
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
}55 ¥)
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
}FF ξU
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
…… 
	ClientRpc
…… 
]
…… 
private
†† 
void
†† 3
%SendClientReadyStatusUpdatesClientRpc
†† 6
(
††6 7
ulong
††7 <
clientId
††= E
,
††E F
bool
††G K
isReady
††L S
)
††S T
{
‡‡ 
if
 

(
 
!
 
IsServer
 
)
 
{
‰‰ 	
if
 
(
 
!
 
m_ClientsInLobby
 !
.
! "
ContainsKey
" -
(
- .
clientId
. 6
)
6 7
)
7 8
m_ClientsInLobby
‹‹  
.
‹‹  !
Add
‹‹! $
(
‹‹$ %
clientId
‹‹% -
,
‹‹- .
isReady
‹‹/ 6
)
‹‹6 7
;
‹‹7 8
else
 
m_ClientsInLobby
  
[
  !
clientId
! )
]
) *
=
+ ,
isReady
- 4
;
4 5'
GenerateUserStatsForLobby
 %
(
% &
)
& '
;
' (
}
 	
}
 
private
–– 
void
–– %
CheckForAllPlayersReady
–– (
(
––( )
)
––) *
{
—— 
if
 

(
 !
m_AllPlayersInLobby
 
)
  
{
™™ 	
var
  
allPlayersAreReady
 "
=
# $
true
% )
;
) *
foreach
›› 
(
›› 
var
›› 
clientLobbyStatus
›› *
in
››+ -
m_ClientsInLobby
››. >
)
››> ?
if
 
(
 
!
 
clientLobbyStatus
 &
.
& '
Value
' ,
)
, - 
allPlayersAreReady
 &
=
' (
false
) .
;
. /
if
ΆΆ 
(
ΆΆ  
allPlayersAreReady
ΆΆ "
)
ΆΆ" #
{
££ 
NetworkManager
¥¥ 
.
¥¥ 
	Singleton
¥¥ (
.
¥¥( )'
OnClientConnectedCallback
¥¥) B
-=
¥¥C E'
OnClientConnectedCallback
¥¥F _
;
¥¥_ `$
SceneTransitionHandler
¨¨ &
.
¨¨& '$
sceneTransitionHandler
¨¨' =
.
¨¨= >!
OnClientLoadedScene
¨¨> Q
-=
¨¨R T
ClientLoadedScene
¨¨U f
;
¨¨f g$
SceneTransitionHandler
«« &
.
««& '$
sceneTransitionHandler
««' =
.
««= >
SwitchScene
««> I
(
««I J
m_InGameSceneName
««J [
)
««[ \
;
««\ ]
}
¬¬ 
}
­­ 	
}
®® 
public
΄΄ 

void
΄΄ 
PlayerIsReady
΄΄ 
(
΄΄ 
)
΄΄ 
{
µµ 
m_ClientsInLobby
¶¶ 
[
¶¶ 
NetworkManager
¶¶ '
.
¶¶' (
	Singleton
¶¶( 1
.
¶¶1 2
LocalClientId
¶¶2 ?
]
¶¶? @
=
¶¶A B
true
¶¶C G
;
¶¶G H
if
·· 

(
·· 
IsServer
·· 
)
·· 
{
ΈΈ 	*
UpdateAndCheckPlayersInLobby
ΉΉ (
(
ΉΉ( )
)
ΉΉ) *
;
ΉΉ* +
}
ΊΊ 	
else
»» 
{
ΌΌ 	&
OnClientIsReadyServerRpc
½½ $
(
½½$ %
NetworkManager
½½% 3
.
½½3 4
	Singleton
½½4 =
.
½½= >
LocalClientId
½½> K
)
½½K L
;
½½L M
}
ΎΎ 	'
GenerateUserStatsForLobby
ΐΐ !
(
ΐΐ! "
)
ΐΐ" #
;
ΐΐ# $
}
ΑΑ 
[
ΘΘ 
	ServerRpc
ΘΘ 
(
ΘΘ 
RequireOwnership
ΘΘ 
=
ΘΘ  !
false
ΘΘ" '
)
ΘΘ' (
]
ΘΘ( )
private
ΙΙ 
void
ΙΙ &
OnClientIsReadyServerRpc
ΙΙ )
(
ΙΙ) *
ulong
ΙΙ* /
clientid
ΙΙ0 8
)
ΙΙ8 9
{
ΚΚ 
if
ΛΛ 

(
ΛΛ 
m_ClientsInLobby
ΛΛ 
.
ΛΛ 
ContainsKey
ΛΛ (
(
ΛΛ( )
clientid
ΛΛ) 1
)
ΛΛ1 2
)
ΛΛ2 3
{
ΜΜ 	
m_ClientsInLobby
ΝΝ 
[
ΝΝ 
clientid
ΝΝ %
]
ΝΝ% &
=
ΝΝ' (
true
ΝΝ) -
;
ΝΝ- .*
UpdateAndCheckPlayersInLobby
ΞΞ (
(
ΞΞ( )
)
ΞΞ) *
;
ΞΞ* +'
GenerateUserStatsForLobby
ΟΟ %
(
ΟΟ% &
)
ΟΟ& '
;
ΟΟ' (
}
ΠΠ 	
}
ΡΡ 
}ÒÒ ¬
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
 …
,


… †

gameObject


‡ ‘
)


‘ ’
;


’ “
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
InvadersObjectType	n €
.
€ 
Shield
 ‡
,
‡ 

gameObject
‰ “
)
“ ”
;
” •
} 
} €5
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
ƒƒ 

void
ƒƒ "
ExitAndLoadStartMenu
ƒƒ $
(
ƒƒ$ %
)
ƒƒ% &
{
„„ 
NetworkManager
…… 
.
…… 
	Singleton
……  
.
……  !
SceneManager
……! -
.
……- .
OnLoadComplete
……. <
-=
……= ?
OnLoadComplete
……@ N
;
……N O!
OnClientLoadedScene
†† 
=
†† 
null
†† "
;
††" #
SetSceneState
‡‡ 
(
‡‡ 
SceneStates
‡‡ !
.
‡‡! "
Start
‡‡" '
)
‡‡' (
;
‡‡( )
SceneManager
 
.
 
	LoadScene
 
(
 
$num
  
)
  !
;
! "
}
‰‰ 
} ήκ
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
€€ 
if
‚‚ 

(
‚‚ 
IsCurrentGameOver
‚‚ 
(
‚‚ 
)
‚‚ 
)
‚‚  
return
‚‚! '
;
‚‚' (
UpdateGameTimer
…… 
(
…… 
)
…… 
;
…… 
if
 

(
 
!
 
IsServer
 
)
 
return
 
;
 
if
‹‹ 

(
‹‹ 
HasGameStarted
‹‹ 
(
‹‹ 
)
‹‹ 
)
‹‹ 
UpdateEnemies
‹‹ +
(
‹‹+ ,
)
‹‹, -
;
‹‹- .
}
 
public
 

override
 
void
 
OnNetworkDespawn
 )
(
) *
)
* +
{
 
base
 
.
 
OnNetworkDespawn
 
(
 
)
 
;
  
if
‘‘ 

(
‘‘ 
IsServer
‘‘ 
)
‘‘ 
{
’’ 	
	m_Enemies
““ 
.
““ 
Clear
““ 
(
““ 
)
““ 
;
““ 
	m_Shields
”” 
.
”” 
Clear
”” 
(
”” 
)
”” 
;
”” 
}
•• 	
NetworkManager
—— 
.
—— 
	Singleton
——  
.
——  !'
OnClientConnectedCallback
——! :
-=
——; =
OnClientConnected
——> O
;
——O P
}
 
internal
 
static
 
event
 
Action
  
OnSingletonReady
! 1
;
1 2
public
 

override
 
void
 
OnNetworkSpawn
 '
(
' (
)
( )
{
 
if
 

(
 
IsClient
 
&&
 
!
 
IsServer
 !
)
! "
{
 	
m_ClientGameOver
   
=
   
false
   $
;
  $ %$
m_ClientStartCountdown
΅΅ "
=
΅΅# $
false
΅΅% *
;
΅΅* +!
m_ClientGameStarted
ΆΆ 
=
ΆΆ  !
false
ΆΆ" '
;
ΆΆ' ( 
m_CountdownStarted
¤¤ 
.
¤¤ 
OnValueChanged
¤¤ -
+=
¤¤. 0
(
¤¤1 2
oldValue
¤¤2 :
,
¤¤: ;
newValue
¤¤< D
)
¤¤D E
=>
¤¤F H
{
¥¥ $
m_ClientStartCountdown
¦¦ &
=
¦¦' (
newValue
¦¦) 1
;
¦¦1 2
Debug
§§ 
.
§§ 
	LogFormat
§§ 
(
§§  
$str
§§  a
,
§§a b
newValue
§§c k
)
§§k l
;
§§l m
}
¨¨ 
;
¨¨ 
hasGameStarted
ªª 
.
ªª 
OnValueChanged
ªª )
+=
ªª* ,
(
ªª- .
oldValue
ªª. 6
,
ªª6 7
newValue
ªª8 @
)
ªª@ A
=>
ªªB D
{
«« !
m_ClientGameStarted
¬¬ #
=
¬¬$ %
newValue
¬¬& .
;
¬¬. /
gameTimerText
­­ 
.
­­ 

gameObject
­­ (
.
­­( )
	SetActive
­­) 2
(
­­2 3
!
­­3 4!
m_ClientGameStarted
­­4 G
)
­­G H
;
­­H I
Debug
®® 
.
®® 
	LogFormat
®® 
(
®®  
$str
®®  ]
,
®®] ^
newValue
®®_ g
)
®®g h
;
®®h i
}
―― 
;
―― 

isGameOver
±± 
.
±± 
OnValueChanged
±± %
+=
±±& (
(
±±) *
oldValue
±±* 2
,
±±2 3
newValue
±±4 <
)
±±< =
=>
±±> @
{
²² 
m_ClientGameOver
³³  
=
³³! "
newValue
³³# +
;
³³+ ,
Debug
΄΄ 
.
΄΄ 
	LogFormat
΄΄ 
(
΄΄  
$str
΄΄  Z
,
΄΄Z [
newValue
΄΄\ d
)
΄΄d e
;
΄΄e f
}
µµ 
;
µµ 
}
¶¶ 	$
SceneTransitionHandler
ΊΊ 
.
ΊΊ $
sceneTransitionHandler
ΊΊ 5
.
ΊΊ5 6
SetSceneState
ΊΊ6 C
(
ΊΊC D$
SceneTransitionHandler
ΊΊD Z
.
ΊΊZ [
SceneStates
ΊΊ[ f
.
ΊΊf g
Ingame
ΊΊg m
)
ΊΊm n
;
ΊΊn o
if
ΌΌ 

(
ΌΌ 
IsServer
ΌΌ 
)
ΌΌ 
{
½½ 	
NetworkManager
ΎΎ 
.
ΎΎ 
	Singleton
ΎΎ $
.
ΎΎ$ %'
OnClientConnectedCallback
ΎΎ% >
+=
ΎΎ? A
OnClientConnected
ΎΎB S
;
ΎΎS T
}
ΏΏ 	
base
ΑΑ 
.
ΑΑ 
OnNetworkSpawn
ΑΑ 
(
ΑΑ 
)
ΑΑ 
;
ΑΑ 
}
ΒΒ 
private
ΔΔ 
void
ΔΔ 
OnClientConnected
ΔΔ "
(
ΔΔ" #
ulong
ΔΔ# (
clientId
ΔΔ) 1
)
ΔΔ1 2
{
ΕΕ 
if
ΖΖ 

(
ΖΖ "
m_ReplicatedTimeSent
ΖΖ  
)
ΖΖ  !
{
ΗΗ 	1
#SetReplicatedTimeRemainingClientRPC
ΙΙ /
(
ΙΙ/ 0
m_TimeRemaining
ΙΙ0 ?
,
ΙΙ? @
new
ΙΙA D
ClientRpcParams
ΙΙE T
{
ΙΙU V
Send
ΙΙV Z
=
ΙΙ[ \
new
ΙΙ] `!
ClientRpcSendParams
ΙΙa t
{
ΙΙt u
TargetClientIdsΙΙu „
=ΙΙ… †
newΙΙ‡ 
ListΙΙ‹ 
<ΙΙ 
ulongΙΙ •
>ΙΙ• –
(ΙΙ– —
)ΙΙ— 
{ΙΙ™ 
clientIdΙΙ Ά
}ΙΙΆ £
}ΙΙ£ ¤
}ΙΙ¤ ¥
)ΙΙ¥ ¦
;ΙΙ¦ §
}
ΚΚ 	
}
ΛΛ 
private
ÒÒ 
bool
ÒÒ "
ShouldStartCountDown
ÒÒ %
(
ÒÒ% &
)
ÒÒ& '
{
ΣΣ 
if
ΥΥ 

(
ΥΥ 
HasGameStarted
ΥΥ 
(
ΥΥ 
)
ΥΥ 
)
ΥΥ 
return
ΥΥ $
false
ΥΥ% *
;
ΥΥ* +
if
ΦΦ 

(
ΦΦ 
IsServer
ΦΦ 
)
ΦΦ 
{
ΧΧ 	 
m_CountdownStarted
ΨΨ 
.
ΨΨ 
Value
ΨΨ $
=
ΨΨ% &$
SceneTransitionHandler
ΨΨ' =
.
ΨΨ= >$
sceneTransitionHandler
ΨΨ> T
.
ΨΨT U!
AllClientsAreLoaded
ΨΨU h
(
ΨΨh i
)
ΨΨi j
;
ΨΨj k
if
ΫΫ 
(
ΫΫ  
m_CountdownStarted
ΫΫ "
.
ΫΫ" #
Value
ΫΫ# (
&&
ΫΫ) +
!
ΫΫ, -"
m_ReplicatedTimeSent
ΫΫ- A
)
ΫΫA B
{
άά 1
#SetReplicatedTimeRemainingClientRPC
έέ 3
(
έέ3 4 
m_DelayedStartTime
έέ4 F
)
έέF G
;
έέG H"
m_ReplicatedTimeSent
ήή $
=
ήή% &
true
ήή' +
;
ήή+ ,
}
ίί 
return
αα  
m_CountdownStarted
αα %
.
αα% &
Value
αα& +
;
αα+ ,
}
ββ 	
return
δδ $
m_ClientStartCountdown
δδ %
;
δδ% &
}
εε 
[
νν 
	ClientRpc
νν 
]
νν 
private
ξξ 
void
ξξ 1
#SetReplicatedTimeRemainingClientRPC
ξξ 4
(
ξξ4 5
float
ξξ5 :
delayedStartTime
ξξ; K
,
ξξK L
ClientRpcParams
ξξM \
clientRpcParams
ξξ] l
=
ξξm n
new
ξξo r
ClientRpcParamsξξs ‚
(ξξ‚ ƒ
)ξξƒ „
)ξξ„ …
{
οο 
if
ρρ 

(
ρρ 
m_TimeRemaining
ρρ 
==
ρρ 
$num
ρρ  
)
ρρ  !
{
ςς 	
Debug
σσ 
.
σσ 
	LogFormat
σσ 
(
σσ 
$str
σσ M
,
σσM N
delayedStartTime
σσO _
)
σσ_ `
;
σσ` a
m_TimeRemaining
ττ 
=
ττ 
delayedStartTime
ττ .
;
ττ. /
}
υυ 	
else
φφ 
{
χχ 	
Debug
ψψ 
.
ψψ 
	LogFormat
ψψ 
(
ψψ 
$str
ψψ e
,
ψψe f
delayedStartTime
ψψg w
)
ψψw x
;
ψψx y
}
ωω 	
}
ϊϊ 
private
 
bool
 
IsCurrentGameOver
 "
(
" #
)
# $
{
‚‚ 
if
ƒƒ 

(
ƒƒ 
IsServer
ƒƒ 
)
ƒƒ 
return
„„ 

isGameOver
„„ 
.
„„ 
Value
„„ #
;
„„# $
return
…… 
m_ClientGameOver
…… 
;
……  
}
†† 
private
 
bool
 
HasGameStarted
 
(
  
)
  !
{
 
if
 

(
 
IsServer
 
)
 
return
 
hasGameStarted
 !
.
! "
Value
" '
;
' (
return
‘‘ !
m_ClientGameStarted
‘‘ "
;
‘‘" #
}
’’ 
private
 
void
 
UpdateGameTimer
  
(
  !
)
! "
{
›› 
if
 

(
 
!
 "
ShouldStartCountDown
 !
(
! "
)
" #
)
# $
return
% +
;
+ ,
if
 

(
 
!
 
HasGameStarted
 
(
 
)
 
&&
  
m_TimeRemaining
! 0
>
1 2
$num
3 7
)
7 8
{
 	
m_TimeRemaining
 
-=
 
Time
 #
.
# $
	deltaTime
$ -
;
- .
if
΅΅ 
(
΅΅ 
IsServer
΅΅ 
&&
΅΅ 
m_TimeRemaining
΅΅ +
<=
΅΅, .
$num
΅΅/ 3
)
΅΅3 4
{
ΆΆ 
m_TimeRemaining
££ 
=
££  !
$num
££" &
;
££& '
hasGameStarted
¤¤ 
.
¤¤ 
Value
¤¤ $
=
¤¤% &
true
¤¤' +
;
¤¤+ ,
OnGameStarted
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥  
}
¦¦ 
if
¨¨ 
(
¨¨ 
m_TimeRemaining
¨¨ 
>
¨¨  !
$num
¨¨" &
)
¨¨& '
gameTimerText
©© 
.
©© 
SetText
©© %
(
©©% &
$str
©©& +
,
©©+ ,
Mathf
©©- 2
.
©©2 3

FloorToInt
©©3 =
(
©©= >
m_TimeRemaining
©©> M
)
©©M N
)
©©N O
;
©©O P
}
ªª 	
}
«« 
private
±± 
void
±± 
OnGameStarted
±± 
(
±± 
)
±±  
{
²² 
gameTimerText
³³ 
.
³³ 

gameObject
³³  
.
³³  !
	SetActive
³³! *
(
³³* +
false
³³+ 0
)
³³0 1
;
³³1 2
CreateEnemies
΄΄ 
(
΄΄ 
)
΄΄ 
;
΄΄ 
CreateShields
µµ 
(
µµ 
)
µµ 
;
µµ 
CreateSuperEnemy
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶ 
}
·· 
private
ΉΉ 
void
ΉΉ 
UpdateEnemies
ΉΉ 
(
ΉΉ 
)
ΉΉ  
{
ΊΊ 
if
ΌΌ 

(
ΌΌ 
Time
ΌΌ 
.
ΌΌ 
time
ΌΌ 
>=
ΌΌ 

m_NextTick
ΌΌ #
)
ΌΌ# $
{
½½ 	

m_NextTick
ΎΎ 
=
ΎΎ 
Time
ΎΎ 
.
ΎΎ 
time
ΎΎ "
+
ΎΎ# $
m_TickPeriodic
ΎΎ% 3
.
ΎΎ3 4
Value
ΎΎ4 9
;
ΎΎ9 :&
UpdateEnemiesResultFlags
ΐΐ $ 
enemiesResultFlags
ΐΐ% 7
=
ΐΐ8 9&
UpdateEnemiesResultFlags
ΐΐ: R
.
ΐΐR S
None
ΐΐS W
;
ΐΐW X#
UpdateShootingEnemies
ΑΑ !
(
ΑΑ! "
ref
ΑΑ" % 
enemiesResultFlags
ΑΑ& 8
)
ΑΑ8 9
;
ΑΑ9 :
if
ΓΓ 
(
ΓΓ 
(
ΓΓ  
enemiesResultFlags
ΓΓ "
&
ΓΓ# $&
UpdateEnemiesResultFlags
ΓΓ% =
.
ΓΓ= >
ReachedBottom
ΓΓ> K
)
ΓΓK L
!=
ΓΓM O
$num
ΓΓP Q
)
ΓΓQ R
{
ΔΔ 

SetGameEnd
ΖΖ 
(
ΖΖ 
GameOverReason
ΖΖ )
.
ΖΖ) *"
EnemiesReachedBottom
ΖΖ* >
)
ΖΖ> ?
;
ΖΖ? @
return
ΗΗ 
;
ΗΗ 
}
ΘΘ 
if
ΛΛ 
(
ΛΛ 
(
ΛΛ  
enemiesResultFlags
ΛΛ #
&
ΛΛ$ %&
UpdateEnemiesResultFlags
ΛΛ& >
.
ΛΛ> ?

FoundEnemy
ΛΛ? I
)
ΛΛI J
==
ΛΛK M
$num
ΛΛN O
)
ΛΛO P
{
ΜΜ 
CreateEnemies
ΝΝ 
(
ΝΝ 
)
ΝΝ 
;
ΝΝ  
m_TickPeriodic
ΞΞ 
.
ΞΞ 
Value
ΞΞ $
=
ΞΞ% &
$num
ΞΞ' +
;
ΞΞ+ ,
}
ΟΟ 
if
ΣΣ 
(
ΣΣ 
(
ΣΣ  
enemiesResultFlags
ΣΣ #
&
ΣΣ$ %&
UpdateEnemiesResultFlags
ΣΣ& >
.
ΣΣ> ?'
ReachedHorizontalBoundary
ΣΣ? X
)
ΣΣX Y
!=
ΣΣZ \
$num
ΣΣ] ^
)
ΣΣ^ _
{
ΤΤ $
m_EnemyMovingDirection
ΥΥ &
.
ΥΥ& '
Value
ΥΥ' ,
=
ΥΥ- .
-
ΥΥ/ 0$
m_EnemyMovingDirection
ΥΥ0 F
.
ΥΥF G
Value
ΥΥG L
;
ΥΥL M
m_TickPeriodic
ΦΦ 
.
ΦΦ 
Value
ΦΦ $
*=
ΦΦ% '
$num
ΦΦ( -
;
ΦΦ- .
var
ΨΨ 
enemiesCount
ΨΨ  
=
ΨΨ! "
	m_Enemies
ΨΨ# ,
.
ΨΨ, -
Count
ΨΨ- 2
;
ΨΨ2 3
for
ΩΩ 
(
ΩΩ 
var
ΩΩ 
index
ΩΩ 
=
ΩΩ  
$num
ΩΩ! "
;
ΩΩ" #
index
ΩΩ$ )
<
ΩΩ* +
enemiesCount
ΩΩ, 8
;
ΩΩ8 9
index
ΩΩ: ?
++
ΩΩ? A
)
ΩΩA B
{
ΪΪ 
var
ΫΫ 
enemy
ΫΫ 
=
ΫΫ 
	m_Enemies
ΫΫ  )
[
ΫΫ) *
index
ΫΫ* /
]
ΫΫ/ 0
;
ΫΫ0 1
enemy
άά 
.
άά 
	transform
άά #
.
άά# $
	Translate
άά$ -
(
άά- .
$num
άά. /
,
άά/ 0+
k_EnemyVerticalMovementOffset
άά1 N
,
άάN O
$num
άάP Q
)
άάQ R
;
άάR S
}
έέ 
}
ήή 
if
ΰΰ 
(
ΰΰ 
m_Saucer
ΰΰ 
==
ΰΰ 
null
ΰΰ  
)
ΰΰ  !
if
αα 
(
αα 
Random
αα 
.
αα 
Range
αα  
(
αα  !
$num
αα! "
,
αα" #
$num
αα$ (
)
αα( )
>
αα* +0
"m_RandomThresholdForSaucerCreation
αα, N
)
ααN O
CreateSuperEnemy
ββ $
(
ββ$ %
)
ββ% &
;
ββ& '
}
γγ 	
}
δδ 
private
ζζ 
void
ζζ #
UpdateShootingEnemies
ζζ &
(
ζζ& '
ref
ζζ' *&
UpdateEnemiesResultFlags
ζζ+ C
flags
ζζD I
)
ζζI J
{
ηη 
flags
θθ 
=
θθ &
UpdateEnemiesResultFlags
θθ (
.
θθ( )
None
θθ) -
;
θθ- .
var
ιι 
enemiesCount
ιι 
=
ιι 
	m_Enemies
ιι $
.
ιι$ %
Count
ιι% *
;
ιι* +
for
κκ 
(
κκ 
var
κκ 
index
κκ 
=
κκ 
$num
κκ 
;
κκ 
index
κκ !
<
κκ" #
enemiesCount
κκ$ 0
;
κκ0 1
index
κκ2 7
++
κκ7 9
)
κκ9 :
{
λλ 	
var
μμ 
enemy
μμ 
=
μμ 
	m_Enemies
μμ !
[
μμ! "
index
μμ" '
]
μμ' (
;
μμ( )
Assert
νν 
.
νν 
	IsNotNull
νν 
(
νν 
enemy
νν "
)
νν" #
;
νν# $
if
ξξ 
(
ξξ 
	m_Enemies
ξξ 
==
ξξ 
null
ξξ !
)
ξξ! "
{
οο 
continue
ππ 
;
ππ 
}
ρρ 
if
ττ 
(
ττ 
enemy
ττ 
.
ττ 
	transform
ττ 
.
ττ  
position
ττ  (
.
ττ( )
y
ττ) *
<=
ττ+ -$
k_BottomBoundaryOffset
ττ. D
)
ττD E
{
υυ 
flags
φφ 
|=
φφ &
UpdateEnemiesResultFlags
φφ 1
.
φφ1 2
ReachedBottom
φφ2 ?
;
φφ? @
return
χχ 
;
χχ 
}
ψψ 
if
ϊϊ 
(
ϊϊ 
enemy
ϊϊ 
.
ϊϊ 
score
ϊϊ 
>
ϊϊ 
$num
ϊϊ !
)
ϊϊ! "
continue
ϋϋ 
;
ϋϋ 
flags
ύύ 
|=
ύύ &
UpdateEnemiesResultFlags
ύύ -
.
ύύ- .

FoundEnemy
ύύ. 8
;
ύύ8 9
enemy
ώώ 
.
ώώ 
	transform
ώώ 
.
ώώ 
position
ώώ $
+=
ώώ% '
new
ώώ( +
Vector3
ώώ, 3
(
ώώ3 4$
m_EnemyMovingDirection
ώώ4 J
.
ώώJ K
Value
ώώK P
,
ώώP Q
$num
ώώR S
,
ώώS T
$num
ώώU V
)
ώώV W
;
ώώW X
if
€€ 
(
€€ 
enemy
€€ 
.
€€ 
	transform
€€ 
.
€€  
position
€€  (
.
€€( )
x
€€) *
>
€€+ ,)
k_LeftOrRightBoundaryOffset
€€- H
||
€€I K
enemy
€€L Q
.
€€Q R
	transform
€€R [
.
€€[ \
position
€€\ d
.
€€d e
x
€€e f
<
€€g h
-
€€i j*
k_LeftOrRightBoundaryOffset€€j …
)€€… †
flags
 
|=
 &
UpdateEnemiesResultFlags
 1
.
1 2'
ReachedHorizontalBoundary
2 K
;
K L
var
„„ 
canShoot
„„ 
=
„„ 
true
„„ 
;
„„  
var
…… 
column
…… 
=
…… 
enemy
…… 
.
…… 
column
…… %
;
……% &
var
†† 
row
†† 
=
†† 
enemy
†† 
.
†† 
row
†† 
;
††  
for
‡‡ 
(
‡‡ 
var
‡‡ 

otherIndex
‡‡ 
=
‡‡  !
$num
‡‡" #
;
‡‡# $

otherIndex
‡‡% /
<
‡‡0 1
enemiesCount
‡‡2 >
;
‡‡> ?

otherIndex
‡‡@ J
++
‡‡J L
)
‡‡L M
{
 
var
‰‰ 

otherEnemy
‰‰ 
=
‰‰  
	m_Enemies
‰‰! *
[
‰‰* +

otherIndex
‰‰+ 5
]
‰‰5 6
;
‰‰6 7
Assert
 
.
 
IsTrue
 
(
 

otherEnemy
 (
!=
) +
null
, 0
)
0 1
;
1 2
if
 
(
 
Math
 
.
 
Abs
 
(
 

otherEnemy
 '
.
' (
column
( .
-
/ 0
column
1 7
)
7 8
<
9 :
$num
; A
)
A B
if
 
(
 

otherEnemy
 "
.
" #
row
# &
<
' (
row
) ,
)
, -
{
 
canShoot
  
=
! "
false
# (
;
( )
break
 
;
 
}
‘‘ 
}
’’ 
enemy
”” 
.
”” 
canShoot
”” 
=
”” 
canShoot
”” %
;
””% &
}
•• 	
}
–– 
public
 

void
 
SetScore
 
(
 
int
 
score
 "
)
" #
{
™™ 
	scoreText
 
.
 
SetText
 
(
 
$str
  
,
  !
score
" '
)
' (
;
( )
}
›› 
public
 

void
 
SetLives
 
(
 
int
 
lives
 "
)
" #
{
 
	livesText
 
.
 
SetText
 
(
 
$str
  
,
  !
lives
" '
)
' (
;
( )
}
   
public
ΆΆ 

void
ΆΆ !
DisplayGameOverText
ΆΆ #
(
ΆΆ# $
string
ΆΆ$ *
message
ΆΆ+ 2
)
ΆΆ2 3
{
££ 
if
¤¤ 

(
¤¤ 
gameOverText
¤¤ 
)
¤¤ 
{
¥¥ 	
gameOverText
¦¦ 
.
¦¦ 
SetText
¦¦  
(
¦¦  !
message
¦¦! (
)
¦¦( )
;
¦¦) *
gameOverText
§§ 
.
§§ 

gameObject
§§ #
.
§§# $
	SetActive
§§$ -
(
§§- .
true
§§. 2
)
§§2 3
;
§§3 4
}
¨¨ 	
}
©© 
public
«« 

void
«« 

SetGameEnd
«« 
(
«« 
GameOverReason
«« )
reason
««* 0
)
««0 1
{
¬¬ 
Assert
­­ 
.
­­ 
IsTrue
­­ 
(
­­ 
IsServer
­­ 
,
­­ 
$str
­­  O
)
­­O P
;
­­P Q
if
°° 

(
°° 
reason
°° 
!=
°° 
GameOverReason
°° $
.
°°$ %
Death
°°% *
)
°°* +
{
±± 	
this
²² 
.
²² 

isGameOver
²² 
.
²² 
Value
²² !
=
²²" #
true
²²$ (
;
²²( )(
BroadcastGameOverClientRpc
³³ &
(
³³& '
reason
³³' -
)
³³- .
;
³³. /
return
΄΄ 
;
΄΄ 
}
µµ 	
foreach
·· 
(
·· 
NetworkClient
·· 
networkedClient
·· .
in
··/ 1
NetworkManager
··2 @
.
··@ A
	Singleton
··A J
.
··J K"
ConnectedClientsList
··K _
)
··_ `
{
ΈΈ 	
var
ΉΉ 
playerObject
ΉΉ 
=
ΉΉ 
networkedClient
ΉΉ .
.
ΉΉ. /
PlayerObject
ΉΉ/ ;
;
ΉΉ; <
if
ΊΊ 
(
ΊΊ 
playerObject
ΊΊ 
==
ΊΊ 
null
ΊΊ #
)
ΊΊ# $
continue
ΊΊ% -
;
ΊΊ- .
if
½½ 
(
½½ 
playerObject
½½ 
.
½½ 
GetComponent
½½ )
<
½½) *
PlayerControl
½½* 7
>
½½7 8
(
½½8 9
)
½½9 :
.
½½: ;
IsAlive
½½; B
)
½½B C
return
ΎΎ 
;
ΎΎ 
}
ΏΏ 	
this
ΑΑ 
.
ΑΑ 

isGameOver
ΑΑ 
.
ΑΑ 
Value
ΑΑ 
=
ΑΑ 
true
ΑΑ  $
;
ΑΑ$ %
}
ΒΒ 
[
ΔΔ 
	ClientRpc
ΔΔ 
]
ΔΔ 
public
ΕΕ 

void
ΕΕ (
BroadcastGameOverClientRpc
ΕΕ *
(
ΕΕ* +
GameOverReason
ΕΕ+ 9
reason
ΕΕ: @
)
ΕΕ@ A
{
ΖΖ 
var
ΗΗ 
localPlayerObject
ΗΗ 
=
ΗΗ 
NetworkManager
ΗΗ  .
.
ΗΗ. /
	Singleton
ΗΗ/ 8
.
ΗΗ8 9
ConnectedClients
ΗΗ9 I
[
ΗΗI J
NetworkManager
ΗΗJ X
.
ΗΗX Y
	Singleton
ΗΗY b
.
ΗΗb c
LocalClientId
ΗΗc p
]
ΗΗp q
.
ΗΗq r
PlayerObject
ΗΗr ~
;
ΗΗ~ 
Assert
ΘΘ 
.
ΘΘ 
	IsNotNull
ΘΘ 
(
ΘΘ 
localPlayerObject
ΘΘ *
)
ΘΘ* +
;
ΘΘ+ ,
if
ΚΚ 

(
ΚΚ 
localPlayerObject
ΚΚ 
.
ΚΚ 
TryGetComponent
ΚΚ -
<
ΚΚ- .
PlayerControl
ΚΚ. ;
>
ΚΚ; <
(
ΚΚ< =
out
ΚΚ= @
var
ΚΚA D
playerControl
ΚΚE R
)
ΚΚR S
)
ΚΚS T
playerControl
ΛΛ 
.
ΛΛ 
NotifyGameOver
ΛΛ (
(
ΛΛ( )
reason
ΛΛ) /
)
ΛΛ/ 0
;
ΛΛ0 1
}
ΜΜ 
public
ΞΞ 

void
ΞΞ %
RegisterSpawnableObject
ΞΞ '
(
ΞΞ' ( 
InvadersObjectType
ΞΞ( : 
invadersObjectType
ΞΞ; M
,
ΞΞM N

GameObject
ΞΞO Y

gameObject
ΞΞZ d
)
ΞΞd e
{
ΟΟ 
Assert
ΠΠ 
.
ΠΠ 
IsTrue
ΠΠ 
(
ΠΠ 
IsClient
ΠΠ 
)
ΠΠ 
;
ΠΠ  
switch
ÒÒ 
(
ÒÒ  
invadersObjectType
ÒÒ "
)
ÒÒ" #
{
ΣΣ 	
case
ΤΤ  
InvadersObjectType
ΤΤ #
.
ΤΤ# $
Enemy
ΤΤ$ )
:
ΤΤ) *
{
ΥΥ 
if
ΧΧ 
(
ΧΧ 

gameObject
ΧΧ 
.
ΧΧ 
TryGetComponent
ΧΧ .
<
ΧΧ. / 
SuperEnemyMovement
ΧΧ/ A
>
ΧΧA B
(
ΧΧB C
out
ΧΧC F
var
ΧΧG J
saucer
ΧΧK Q
)
ΧΧQ R
)
ΧΧR S
return
ΨΨ 
;
ΨΨ 

gameObject
ΪΪ 
.
ΪΪ 
TryGetComponent
ΪΪ *
<
ΪΪ* +

EnemyAgent
ΪΪ+ 5
>
ΪΪ5 6
(
ΪΪ6 7
out
ΪΪ7 :
var
ΪΪ; >

enemyAgent
ΪΪ? I
)
ΪΪI J
;
ΪΪJ K
Assert
ΫΫ 
.
ΫΫ 
IsTrue
ΫΫ 
(
ΫΫ 

enemyAgent
ΫΫ (
!=
ΫΫ) +
null
ΫΫ, 0
)
ΫΫ0 1
;
ΫΫ1 2
if
άά 
(
άά 
!
άά 
	m_Enemies
άά 
.
άά 
Contains
άά '
(
άά' (

enemyAgent
άά( 2
)
άά2 3
)
άά3 4
	m_Enemies
έέ 
.
έέ 
Add
έέ !
(
έέ! "

enemyAgent
έέ" ,
)
έέ, -
;
έέ- .
break
ήή 
;
ήή 
}
ίί 
case
ΰΰ  
InvadersObjectType
ΰΰ #
.
ΰΰ# $
Shield
ΰΰ$ *
:
ΰΰ* +
{
αα 

gameObject
ββ 
.
ββ 
TryGetComponent
ββ *
<
ββ* +
Shield
ββ+ 1
>
ββ1 2
(
ββ2 3
out
ββ3 6
var
ββ7 :
shield
ββ; A
)
ββA B
;
ββB C
Assert
γγ 
.
γγ 
IsTrue
γγ 
(
γγ 
shield
γγ $
!=
γγ% '
null
γγ( ,
)
γγ, -
;
γγ- .
	m_Shields
δδ 
.
δδ 
Add
δδ 
(
δδ 
shield
δδ $
)
δδ$ %
;
δδ% &
break
εε 
;
εε 
}
ζζ 
default
ηη 
:
ηη 
Assert
θθ 
.
θθ 
IsTrue
θθ 
(
θθ 
false
θθ #
)
θθ# $
;
θθ$ %
break
ιι 
;
ιι 
}
κκ 	
}
λλ 
public
νν 

void
νν '
UnregisterSpawnableObject
νν )
(
νν) * 
InvadersObjectType
νν* < 
invadersObjectType
νν= O
,
ννO P

GameObject
ννQ [

gameObject
νν\ f
)
ννf g
{
ξξ 
Assert
οο 
.
οο 
IsTrue
οο 
(
οο 
IsServer
οο 
)
οο 
;
οο  
switch
ρρ 
(
ρρ  
invadersObjectType
ρρ "
)
ρρ" #
{
ςς 	
case
σσ  
InvadersObjectType
σσ #
.
σσ# $
Enemy
σσ$ )
:
σσ) *
{
ττ 
if
φφ 
(
φφ 

gameObject
φφ 
.
φφ 
TryGetComponent
φφ .
<
φφ. / 
SuperEnemyMovement
φφ/ A
>
φφA B
(
φφB C
out
φφC F
var
φφG J
saucer
φφK Q
)
φφQ R
)
φφR S
return
χχ 
;
χχ 

gameObject
ωω 
.
ωω 
TryGetComponent
ωω *
<
ωω* +

EnemyAgent
ωω+ 5
>
ωω5 6
(
ωω6 7
out
ωω7 :
var
ωω; >

enemyAgent
ωω? I
)
ωωI J
;
ωωJ K
Assert
ϊϊ 
.
ϊϊ 
IsTrue
ϊϊ 
(
ϊϊ 

enemyAgent
ϊϊ (
!=
ϊϊ) +
null
ϊϊ, 0
)
ϊϊ0 1
;
ϊϊ1 2
if
ϋϋ 
(
ϋϋ 
	m_Enemies
ϋϋ 
.
ϋϋ 
Contains
ϋϋ &
(
ϋϋ& '

enemyAgent
ϋϋ' 1
)
ϋϋ1 2
)
ϋϋ2 3
	m_Enemies
όό 
.
όό 
Remove
όό $
(
όό$ %

enemyAgent
όό% /
)
όό/ 0
;
όό0 1
break
ύύ 
;
ύύ 
}
ώώ 
case
ÿÿ  
InvadersObjectType
ÿÿ #
.
ÿÿ# $
Shield
ÿÿ$ *
:
ÿÿ* +
{
€€ 

gameObject
 
.
 
TryGetComponent
 *
<
* +
Shield
+ 1
>
1 2
(
2 3
out
3 6
var
7 :
shield
; A
)
A B
;
B C
Assert
‚‚ 
.
‚‚ 
IsTrue
‚‚ 
(
‚‚ 
shield
‚‚ $
!=
‚‚% '
null
‚‚( ,
)
‚‚, -
;
‚‚- .
if
ƒƒ 
(
ƒƒ 
	m_Shields
ƒƒ 
.
ƒƒ 
Contains
ƒƒ &
(
ƒƒ& '
shield
ƒƒ' -
)
ƒƒ- .
)
ƒƒ. /
	m_Shields
„„ 
.
„„ 
Remove
„„ $
(
„„$ %
shield
„„% +
)
„„+ ,
;
„„, -
break
…… 
;
…… 
}
†† 
default
‡‡ 
:
‡‡ 
Assert
 
.
 
IsTrue
 
(
 
false
 #
)
# $
;
$ %
break
‰‰ 
;
‰‰ 
}
 	
}
‹‹ 
public
 

void
 
ExitGame
 
(
 
)
 
{
 
NetworkManager
 
.
 
	Singleton
  
.
  !
Shutdown
! )
(
) *
)
* +
;
+ ,$
SceneTransitionHandler
 
.
 $
sceneTransitionHandler
 5
.
5 6"
ExitAndLoadStartMenu
6 J
(
J K
)
K L
;
L M
}
‘‘ 
private
““ 
void
““ 
CreateShield
““ 
(
““ 

GameObject
““ (
prefab
““) /
,
““/ 0
int
““1 4
posX
““5 9
,
““9 :
int
““; >
posY
““? C
)
““C D
{
”” 
Assert
•• 
.
•• 
IsTrue
•• 
(
•• 
IsServer
•• 
,
•• 
$str
••  R
)
••R S
;
••S T
const
—— 
float
—— 
dy
—— 
=
—— 
$num
—— 
;
—— 
const
 
float
 
dx
 
=
 
$num
 
;
 
var
 
ycount
 
=
 
$num
 
;
 
for
›› 
(
›› 
float
›› 
y
›› 
=
›› 
posY
›› 
;
›› 
y
›› 
<
››  
posY
››! %
+
››& '
$num
››( )
;
››) *
y
››+ ,
+=
››- /
dy
››0 2
)
››2 3
{
 	
var
 
xcount
 
=
 
$num
 
;
 
for
 
(
 
float
 
x
 
=
 
posX
 
;
  
x
! "
<
# $
posX
% )
+
* +
$num
, -
;
- .
x
/ 0
+=
1 3
dx
4 6
)
6 7
{
 
if
   
(
   
ycount
   
==
   
$num
   
&&
    "
(
  # $
xcount
  $ *
==
  + -
$num
  . /
||
  0 2
xcount
  3 9
==
  : <
$num
  = >
)
  > ?
)
  ? @
{
΅΅ 
xcount
ΆΆ 
+=
ΆΆ 
$num
ΆΆ 
;
ΆΆ  
continue
££ 
;
££ 
}
¤¤ 
var
¦¦ 
shield
¦¦ 
=
¦¦ 
Instantiate
¦¦ (
(
¦¦( )
prefab
¦¦) /
,
¦¦/ 0
new
¦¦1 4
Vector3
¦¦5 <
(
¦¦< =
x
¦¦= >
-
¦¦? @
$num
¦¦A B
,
¦¦B C
y
¦¦D E
,
¦¦E F
$num
¦¦G H
)
¦¦H I
,
¦¦I J

Quaternion
¦¦K U
.
¦¦U V
identity
¦¦V ^
)
¦¦^ _
;
¦¦_ `
shield
©© 
.
©© 
GetComponent
©© #
<
©©# $
NetworkObject
©©$ 1
>
©©1 2
(
©©2 3
)
©©3 4
.
©©4 5
Spawn
©©5 :
(
©©: ;
)
©©; <
;
©©< =
xcount
ªª 
+=
ªª 
$num
ªª 
;
ªª 
}
«« 
ycount
­­ 
+=
­­ 
$num
­­ 
;
­­ 
}
®® 	
}
―― 
private
±± 
void
±± 
CreateShields
±± 
(
±± 
)
±±  
{
²² 
CreateShield
΄΄ 
(
΄΄ 
shieldPrefab
΄΄ !
,
΄΄! "
-
΄΄# $
$num
΄΄$ %
,
΄΄% &
-
΄΄' (
$num
΄΄( )
)
΄΄) *
;
΄΄* +
CreateShield
µµ 
(
µµ 
shieldPrefab
µµ !
,
µµ! "
$num
µµ# $
,
µµ$ %
-
µµ& '
$num
µµ' (
)
µµ( )
;
µµ) *
CreateShield
¶¶ 
(
¶¶ 
shieldPrefab
¶¶ !
,
¶¶! "
$num
¶¶# $
,
¶¶$ %
-
¶¶& '
$num
¶¶' (
)
¶¶( )
;
¶¶) *
}
·· 
private
ΉΉ 
void
ΉΉ 
CreateSuperEnemy
ΉΉ !
(
ΉΉ! "
)
ΉΉ" #
{
ΊΊ 
Assert
»» 
.
»» 
IsTrue
»» 
(
»» 
IsServer
»» 
,
»» 
$str
»»  R
)
»»R S
;
»»S T
m_Saucer
½½ 
=
½½ 
Instantiate
½½ 
(
½½ 
superEnemyPrefab
½½ /
,
½½/ 0
saucerSpawnPoint
½½1 A
.
½½A B
position
½½B J
,
½½J K

Quaternion
½½L V
.
½½V W
identity
½½W _
)
½½_ `
;
½½` a
m_Saucer
ΐΐ 
.
ΐΐ 
GetComponent
ΐΐ 
<
ΐΐ 
NetworkObject
ΐΐ +
>
ΐΐ+ ,
(
ΐΐ, -
)
ΐΐ- .
.
ΐΐ. /
Spawn
ΐΐ/ 4
(
ΐΐ4 5
)
ΐΐ5 6
;
ΐΐ6 7
}
ΑΑ 
private
ΓΓ 
void
ΓΓ 
CreateEnemy
ΓΓ 
(
ΓΓ 

GameObject
ΓΓ '
prefab
ΓΓ( .
,
ΓΓ. /
float
ΓΓ0 5
posX
ΓΓ6 :
,
ΓΓ: ;
float
ΓΓ< A
posY
ΓΓB F
)
ΓΓF G
{
ΔΔ 
Assert
ΕΕ 
.
ΕΕ 
IsTrue
ΕΕ 
(
ΕΕ 
IsServer
ΕΕ 
,
ΕΕ 
$str
ΕΕ  Q
)
ΕΕQ R
;
ΕΕR S
var
ΗΗ 
enemy
ΗΗ 
=
ΗΗ 
Instantiate
ΗΗ 
(
ΗΗ  
prefab
ΗΗ  &
)
ΗΗ& '
;
ΗΗ' (
enemy
ΘΘ 
.
ΘΘ 
	transform
ΘΘ 
.
ΘΘ 
position
ΘΘ  
=
ΘΘ! "
new
ΘΘ# &
Vector3
ΘΘ' .
(
ΘΘ. /
posX
ΘΘ/ 3
,
ΘΘ3 4
posY
ΘΘ5 9
,
ΘΘ9 :
$num
ΘΘ; ?
)
ΘΘ? @
;
ΘΘ@ A
enemy
ΙΙ 
.
ΙΙ 
GetComponent
ΙΙ 
<
ΙΙ 

EnemyAgent
ΙΙ %
>
ΙΙ% &
(
ΙΙ& '
)
ΙΙ' (
.
ΙΙ( )
Setup
ΙΙ) .
(
ΙΙ. /
Mathf
ΙΙ/ 4
.
ΙΙ4 5

RoundToInt
ΙΙ5 ?
(
ΙΙ? @
posX
ΙΙ@ D
)
ΙΙD E
,
ΙΙE F
Mathf
ΙΙG L
.
ΙΙL M

RoundToInt
ΙΙM W
(
ΙΙW X
posY
ΙΙX \
)
ΙΙ\ ]
)
ΙΙ] ^
;
ΙΙ^ _
enemy
ΜΜ 
.
ΜΜ 
GetComponent
ΜΜ 
<
ΜΜ 
NetworkObject
ΜΜ (
>
ΜΜ( )
(
ΜΜ) *
)
ΜΜ* +
.
ΜΜ+ ,
Spawn
ΜΜ, 1
(
ΜΜ1 2
)
ΜΜ2 3
;
ΜΜ3 4
}
ΝΝ 
public
ΟΟ 

void
ΟΟ 
CreateEnemies
ΟΟ 
(
ΟΟ 
)
ΟΟ 
{
ΠΠ 
float
ΡΡ 
startx
ΡΡ 
=
ΡΡ 
-
ΡΡ 
$num
ΡΡ 
;
ΡΡ 
for
ÒÒ 
(
ÒÒ 
var
ÒÒ 
i
ÒÒ 
=
ÒÒ 
$num
ÒÒ 
;
ÒÒ 
i
ÒÒ 
<
ÒÒ 
$num
ÒÒ 
;
ÒÒ 
i
ÒÒ  !
++
ÒÒ! #
)
ÒÒ# $
{
ΣΣ 	
CreateEnemy
ΤΤ 
(
ΤΤ 
enemy1Prefab
ΤΤ $
,
ΤΤ$ %
startx
ΤΤ& ,
,
ΤΤ, -
$num
ΤΤ. 0
)
ΤΤ0 1
;
ΤΤ1 2
startx
ΥΥ 
+=
ΥΥ 
$num
ΥΥ 
;
ΥΥ 
}
ΦΦ 	
startx
ΨΨ 
=
ΨΨ 
-
ΨΨ 
$num
ΨΨ 
;
ΨΨ 
for
ΩΩ 
(
ΩΩ 
var
ΩΩ 
i
ΩΩ 
=
ΩΩ 
$num
ΩΩ 
;
ΩΩ 
i
ΩΩ 
<
ΩΩ 
$num
ΩΩ 
;
ΩΩ 
i
ΩΩ  !
++
ΩΩ! #
)
ΩΩ# $
{
ΪΪ 	
CreateEnemy
ΫΫ 
(
ΫΫ 
enemy2Prefab
ΫΫ $
,
ΫΫ$ %
startx
ΫΫ& ,
,
ΫΫ, -
$num
ΫΫ. 0
)
ΫΫ0 1
;
ΫΫ1 2
startx
άά 
+=
άά 
$num
άά 
;
άά 
}
έέ 	
startx
ίί 
=
ίί 
-
ίί 
$num
ίί 
;
ίί 
for
ΰΰ 
(
ΰΰ 
var
ΰΰ 
i
ΰΰ 
=
ΰΰ 
$num
ΰΰ 
;
ΰΰ 
i
ΰΰ 
<
ΰΰ 
$num
ΰΰ 
;
ΰΰ 
i
ΰΰ  !
++
ΰΰ! #
)
ΰΰ# $
{
αα 	
CreateEnemy
ββ 
(
ββ 
enemy3Prefab
ββ $
,
ββ$ %
startx
ββ& ,
,
ββ, -
$num
ββ. /
)
ββ/ 0
;
ββ0 1
startx
γγ 
+=
γγ 
$num
γγ 
;
γγ 
}
δδ 	
}
εε 
}ζζ ή
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
} δ«
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
OwnerClientId	uuz ‡
}
uu ‰
}
uu ‹
}
uu 
;
uu 
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
€€ 
void
€€ 1
#SubscribeToDelegatesAndUpdateValues
€€ 4
(
€€4 5
)
€€5 6
{
 
InvadersGame
‚‚ 
.
‚‚ 
	Singleton
‚‚ 
.
‚‚ 
hasGameStarted
‚‚ -
.
‚‚- .
OnValueChanged
‚‚. <
+=
‚‚= ?"
OnGameStartedChanged
‚‚@ T
;
‚‚T U
InvadersGame
ƒƒ 
.
ƒƒ 
	Singleton
ƒƒ 
.
ƒƒ 

isGameOver
ƒƒ )
.
ƒƒ) *
OnValueChanged
ƒƒ* 8
+=
ƒƒ9 ;"
OnGameStartedChanged
ƒƒ< P
;
ƒƒP Q
if
…… 

(
…… 
IsClient
…… 
&&
…… 
IsOwner
…… 
)
……  
{
†† 	
InvadersGame
‡‡ 
.
‡‡ 
	Singleton
‡‡ "
.
‡‡" #
SetScore
‡‡# +
(
‡‡+ ,
m_Score
‡‡, 3
.
‡‡3 4
Value
‡‡4 9
)
‡‡9 :
;
‡‡: ;
InvadersGame
 
.
 
	Singleton
 "
.
" #
SetLives
# +
(
+ ,
m_Lives
, 3
.
3 4
Value
4 9
)
9 :
;
: ;
}
‰‰ 	
m_HasGameStarted
‹‹ 
=
‹‹ 
InvadersGame
‹‹ '
.
‹‹' (
	Singleton
‹‹( 1
.
‹‹1 2
hasGameStarted
‹‹2 @
.
‹‹@ A
Value
‹‹A F
;
‹‹F G
}
 
public
 

void
 !
IncreasePlayerScore
 #
(
# $
int
$ '
amount
( .
)
. /
{
 
Assert
 
.
 
IsTrue
 
(
 
IsServer
 
,
 
$str
  W
)
W X
;
X Y
m_Score
‘‘ 
.
‘‘ 
Value
‘‘ 
+=
‘‘ 
amount
‘‘ 
;
‘‘  
}
’’ 
private
”” 
void
”” "
OnGameStartedChanged
”” %
(
””% &
bool
””& *
previousValue
””+ 8
,
””8 9
bool
””: >
newValue
””? G
)
””G H
{
•• 
m_HasGameStarted
–– 
=
–– 
newValue
–– #
;
––# $
}
—— 
private
™™ 
void
™™ 
OnLivesChanged
™™ 
(
™™  
int
™™  #
previousAmount
™™$ 2
,
™™2 3
int
™™4 7
currentAmount
™™8 E
)
™™E F
{
 
if
 

(
 
currentAmount
 
<=
 
$num
 
&&
 !
IsClient
" *
)
* +
m_PlayerVisual
 
.
 
enabled
 "
=
# $
false
% *
;
* +
if
 

(
 
!
 
IsOwner
 
)
 
return
 
;
 
Debug
   
.
   
	LogFormat
   
(
   
$str
   $
,
  $ %
currentAmount
  & 3
)
  3 4
;
  4 5
if
΅΅ 

(
΅΅ 
InvadersGame
΅΅ 
.
΅΅ 
	Singleton
΅΅ "
!=
΅΅# %
null
΅΅& *
)
΅΅* +
InvadersGame
΅΅, 8
.
΅΅8 9
	Singleton
΅΅9 B
.
΅΅B C
SetLives
΅΅C K
(
΅΅K L
m_Lives
΅΅L S
.
΅΅S T
Value
΅΅T Y
)
΅΅Y Z
;
΅΅Z [
if
££ 

(
££ 
m_Lives
££ 
.
££ 
Value
££ 
<=
££ 
$num
££ 
)
££ 
{
¤¤ 	
	m_IsAlive
¥¥ 
=
¥¥ 
false
¥¥ 
;
¥¥ 
}
¦¦ 	
}
§§ 
private
©© 
void
©© 
OnScoreChanged
©© 
(
©©  
int
©©  #
previousAmount
©©$ 2
,
©©2 3
int
©©4 7
currentAmount
©©8 E
)
©©E F
{
ªª 
if
«« 

(
«« 
!
«« 
IsOwner
«« 
)
«« 
return
«« 
;
«« 
Debug
¬¬ 
.
¬¬ 
	LogFormat
¬¬ 
(
¬¬ 
$str
¬¬ $
,
¬¬$ %
currentAmount
¬¬& 3
)
¬¬3 4
;
¬¬4 5
if
­­ 

(
­­ 
InvadersGame
­­ 
.
­­ 
	Singleton
­­ "
!=
­­# %
null
­­& *
)
­­* +
InvadersGame
­­, 8
.
­­8 9
	Singleton
­­9 B
.
­­B C
SetScore
­­C K
(
­­K L
m_Score
­­L S
.
­­S T
Value
­­T Y
)
­­Y Z
;
­­Z [
}
®® 
private
°° 
void
°° 
InGameUpdate
°° 
(
°° 
)
°° 
{
±± 
if
²² 

(
²² 
!
²² 
IsLocalPlayer
²² 
||
²² 
!
²² 
IsOwner
²² &
||
²²' )
!
²²* +
m_HasGameStarted
²²+ ;
)
²²; <
return
²²= C
;
²²C D
if
³³ 

(
³³ 
!
³³ 
	m_IsAlive
³³ 
)
³³ 
return
³³ 
;
³³ 
var
µµ 
deltaX
µµ 
=
µµ 
$num
µµ 
;
µµ 
if
¶¶ 

(
¶¶ 
Input
¶¶ 
.
¶¶ 
GetKey
¶¶ 
(
¶¶ 
KeyCode
¶¶  
.
¶¶  !
	LeftArrow
¶¶! *
)
¶¶* +
)
¶¶+ ,
deltaX
¶¶- 3
-=
¶¶4 6
$num
¶¶7 8
;
¶¶8 9
if
·· 

(
·· 
Input
·· 
.
·· 
GetKey
·· 
(
·· 
KeyCode
··  
.
··  !

RightArrow
··! +
)
··+ ,
)
··, -
deltaX
··. 4
+=
··5 7
$num
··8 9
;
··9 :
if
ΉΉ 

(
ΉΉ 
deltaX
ΉΉ 
!=
ΉΉ 
$num
ΉΉ 
)
ΉΉ 
{
ΊΊ 	
var
»» 
newMovement
»» 
=
»» 
new
»» !
Vector3
»»" )
(
»») *
deltaX
»»* 0
,
»»0 1
$num
»»2 3
,
»»3 4
$num
»»5 6
)
»»6 7
;
»»7 8
	transform
ΌΌ 
.
ΌΌ 
position
ΌΌ 
=
ΌΌ  
Vector3
ΌΌ! (
.
ΌΌ( )
MoveTowards
ΌΌ) 4
(
ΌΌ4 5
	transform
ΌΌ5 >
.
ΌΌ> ?
position
ΌΌ? G
,
ΌΌG H
	transform
½½ 
.
½½ 
position
½½ "
+
½½# $
newMovement
½½% 0
,
½½0 1
m_MoveSpeed
½½2 =
*
½½> ?
Time
½½@ D
.
½½D E
	deltaTime
½½E N
)
½½N O
;
½½O P
}
ΎΎ 	
if
ΐΐ 

(
ΐΐ 
Input
ΐΐ 
.
ΐΐ 

GetKeyDown
ΐΐ 
(
ΐΐ 
KeyCode
ΐΐ $
.
ΐΐ$ %
Space
ΐΐ% *
)
ΐΐ* +
)
ΐΐ+ ,
ShootServerRPC
ΐΐ- ;
(
ΐΐ; <
)
ΐΐ< =
;
ΐΐ= >
}
ΑΑ 
[
ΓΓ 
	ServerRpc
ΓΓ 
]
ΓΓ 
private
ΔΔ 
void
ΔΔ 
ShootServerRPC
ΔΔ 
(
ΔΔ  
)
ΔΔ  !
{
ΕΕ 
if
ΖΖ 

(
ΖΖ 
!
ΖΖ 
	m_IsAlive
ΖΖ 
)
ΖΖ 
return
ΗΗ 
;
ΗΗ 
if
ΙΙ 

(
ΙΙ 

m_MyBullet
ΙΙ 
==
ΙΙ 
null
ΙΙ 
)
ΙΙ 
{
ΚΚ 	

m_MyBullet
ΛΛ 
=
ΛΛ 
Instantiate
ΛΛ $
(
ΛΛ$ %
bulletPrefab
ΛΛ% 1
,
ΛΛ1 2
	transform
ΛΛ3 <
.
ΛΛ< =
position
ΛΛ= E
+
ΛΛF G
Vector3
ΛΛH O
.
ΛΛO P
up
ΛΛP R
,
ΛΛR S

Quaternion
ΛΛT ^
.
ΛΛ^ _
identity
ΛΛ_ g
)
ΛΛg h
;
ΛΛh i

m_MyBullet
ΜΜ 
.
ΜΜ 
GetComponent
ΜΜ #
<
ΜΜ# $
PlayerBullet
ΜΜ$ 0
>
ΜΜ0 1
(
ΜΜ1 2
)
ΜΜ2 3
.
ΜΜ3 4
owner
ΜΜ4 9
=
ΜΜ: ;
this
ΜΜ< @
;
ΜΜ@ A

m_MyBullet
ΝΝ 
.
ΝΝ 
GetComponent
ΝΝ #
<
ΝΝ# $
NetworkObject
ΝΝ$ 1
>
ΝΝ1 2
(
ΝΝ2 3
)
ΝΝ3 4
.
ΝΝ4 5
Spawn
ΝΝ5 :
(
ΝΝ: ;
)
ΝΝ; <
;
ΝΝ< =
}
ΞΞ 	
}
ΟΟ 
public
ΡΡ 

void
ΡΡ 
HitByBullet
ΡΡ 
(
ΡΡ 
)
ΡΡ 
{
ÒÒ 
Assert
ΣΣ 
.
ΣΣ 
IsTrue
ΣΣ 
(
ΣΣ 
IsServer
ΣΣ 
,
ΣΣ 
$str
ΣΣ  N
)
ΣΣN O
;
ΣΣO P
if
ΤΤ 

(
ΤΤ 
!
ΤΤ 
	m_IsAlive
ΤΤ 
)
ΤΤ 
return
ΤΤ 
;
ΤΤ 
m_Lives
ΦΦ 
.
ΦΦ 
Value
ΦΦ 
-=
ΦΦ 
$num
ΦΦ 
;
ΦΦ 
if
ΨΨ 

(
ΨΨ 
m_Lives
ΨΨ 
.
ΨΨ 
Value
ΨΨ 
<=
ΨΨ 
$num
ΨΨ 
)
ΨΨ 
{
ΩΩ 	
	m_IsAlive
ΫΫ 
=
ΫΫ 
false
ΫΫ 
;
ΫΫ 
m_MoveX
άά 
.
άά 
Value
άά 
=
άά 
$num
άά 
;
άά 
m_Lives
έέ 
.
έέ 
Value
έέ 
=
έέ 
$num
έέ 
;
έέ 
InvadersGame
ήή 
.
ήή 
	Singleton
ήή "
.
ήή" #

SetGameEnd
ήή# -
(
ήή- .
GameOverReason
ήή. <
.
ήή< =
Death
ήή= B
)
ήήB C
;
ήήC D%
NotifyGameOverClientRpc
ίί #
(
ίί# $
GameOverReason
ίί$ 2
.
ίί2 3
Death
ίί3 8
,
ίί8 9
m_OwnerRPCParams
ίί: J
)
ίίJ K
;
ίίK L
Instantiate
ΰΰ 
(
ΰΰ '
m_ExplosionParticleSystem
ΰΰ 1
,
ΰΰ1 2
	transform
ΰΰ3 <
.
ΰΰ< =
position
ΰΰ= E
,
ΰΰE F

quaternion
ΰΰG Q
.
ΰΰQ R
identity
ΰΰR Z
)
ΰΰZ [
;
ΰΰ[ \
m_PlayerVisual
δδ 
.
δδ 
enabled
δδ "
=
δδ# $
false
δδ% *
;
δδ* +
}
εε 	
else
ζζ 
{
ηη 	
Instantiate
θθ 
(
θθ !
m_HitParticleSystem
θθ +
,
θθ+ ,
	transform
θθ- 6
.
θθ6 7
position
θθ7 ?
,
θθ? @

quaternion
θθA K
.
θθK L
identity
θθL T
)
θθT U
;
θθU V
}
ιι 	
}
κκ 
[
μμ 
	ClientRpc
μμ 
]
μμ 
private
νν 
void
νν %
NotifyGameOverClientRpc
νν (
(
νν( )
GameOverReason
νν) 7
reason
νν8 >
,
νν> ?
ClientRpcParams
νν@ O
clientParams
ννP \
)
νν\ ]
{
ξξ 
NotifyGameOver
οο 
(
οο 
reason
οο 
)
οο 
;
οο 
}
ππ 
public
χχ 

void
χχ 
NotifyGameOver
χχ 
(
χχ 
GameOverReason
χχ -
reason
χχ. 4
)
χχ4 5
{
ψψ 
Assert
ωω 
.
ωω 
IsTrue
ωω 
(
ωω 
IsLocalPlayer
ωω #
)
ωω# $
;
ωω$ %
m_HasGameStarted
ϊϊ 
=
ϊϊ 
false
ϊϊ  
;
ϊϊ  !
switch
ϋϋ 
(
ϋϋ 
reason
ϋϋ 
)
ϋϋ 
{
όό 	
case
ύύ 
GameOverReason
ύύ 
.
ύύ  
None
ύύ  $
:
ύύ$ %
InvadersGame
ώώ 
.
ώώ 
	Singleton
ώώ &
.
ώώ& '!
DisplayGameOverText
ώώ' :
(
ώώ: ;
$str
ώώ; [
)
ώώ[ \
;
ώώ\ ]
break
ÿÿ 
;
ÿÿ 
case
€€ 
GameOverReason
€€ 
.
€€  "
EnemiesReachedBottom
€€  4
:
€€4 5
InvadersGame
 
.
 
	Singleton
 &
.
& '!
DisplayGameOverText
' :
(
: ;
$str
; i
)
i j
;
j k
break
‚‚ 
;
‚‚ 
case
ƒƒ 
GameOverReason
ƒƒ 
.
ƒƒ  
Death
ƒƒ  %
:
ƒƒ% &
InvadersGame
„„ 
.
„„ 
	Singleton
„„ &
.
„„& '!
DisplayGameOverText
„„' :
(
„„: ;
$str
„„; e
)
„„e f
;
„„f g
break
…… 
;
…… 
case
†† 
GameOverReason
†† 
.
††  
Max
††  #
:
††# $
break
‡‡ 
;
‡‡ 
default
 
:
 
throw
‰‰ 
new
‰‰ )
ArgumentOutOfRangeException
‰‰ 5
(
‰‰5 6
nameof
‰‰6 <
(
‰‰< =
reason
‰‰= C
)
‰‰C D
,
‰‰D E
reason
‰‰F L
,
‰‰L M
null
‰‰N R
)
‰‰R S
;
‰‰S T
}
 	
}
‹‹ 
} 