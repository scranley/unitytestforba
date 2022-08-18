ÿ
dC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Events\Signals\SignalAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ "
AssetFileNameExtension 
( 
$str $
)$ %
]% &
[ 
TimelineHelpURL 
( 
typeof 
( 
SignalAsset '
)' (
)( )
]) *
public 

class 
SignalAsset 
: 
ScriptableObject /
{ 
internal 
static 
event 
Action $
<$ %
SignalAsset% 0
>0 1
OnEnableCallback2 B
;B C
void 
OnEnable 
( 
) 
{ 	
if 
( 
OnEnableCallback  
!=! #
null$ (
)( )
OnEnableCallback  
(  !
this! %
)% &
;& '
} 	
} 
} „
pC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Events\Signals\CustomSignalEventDrawer.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class 	#
CustomSignalEventDrawer
 !
:" #
PropertyAttribute$ 5
{6 7
}8 9
} _
]C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\FrameRate.csè
rC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Animation\AnimationPreviewUpdateCallback.cs
	namespace		 	
UnityEngine		
 
.		 
Timeline		 
{

 
class 	*
AnimationPreviewUpdateCallback
 (
:) *%
ITimelineEvaluateCallback+ D
{ #
AnimationPlayableOutput 
m_Output  (
;( )
PlayableGraph 
m_Graph 
; 
List 
< #
IAnimationWindowPreview $
>$ %
m_PreviewComponents& 9
;9 :
public *
AnimationPreviewUpdateCallback -
(- .#
AnimationPlayableOutput. E
outputF L
)L M
{ 	
m_Output 
= 
output 
; 
Playable 
playable 
= 
m_Output  (
.( )
GetSourcePlayable) :
(: ;
); <
;< =
if 
( 
playable 
. 
IsValid  
(  !
)! "
)" #
{ 
m_Graph 
= 
playable "
." #
GetGraph# +
(+ ,
), -
;- .
} 
} 	
public 
void 
Evaluate 
( 
) 
{ 	
if 
( 
! 
m_Graph 
. 
IsValid  
(  !
)! "
)" #
return 
; 
if!! 
(!! 
m_PreviewComponents!! #
==!!$ &
null!!' +
)!!+ ,"
FetchPreviewComponents"" &
(""& '
)""' (
;""( )
foreach$$ 
($$ 
var$$ 
	component$$ "
in$$# %
m_PreviewComponents$$& 9
)$$9 :
{%% 
if&& 
(&& 
	component&& 
!=&&  
null&&! %
)&&% &
{'' 
	component(( 
.(( 
UpdatePreviewGraph(( 0
(((0 1
m_Graph((1 8
)((8 9
;((9 :
})) 
}** 
}++ 	
private-- 
void-- "
FetchPreviewComponents-- +
(--+ ,
)--, -
{.. 	
m_PreviewComponents// 
=//  !
new//" %
List//& *
<//* +#
IAnimationWindowPreview//+ B
>//B C
(//C D
)//D E
;//E F
var11 
animator11 
=11 
m_Output11 #
.11# $
	GetTarget11$ -
(11- .
)11. /
;11/ 0
if22 
(22 
animator22 
==22 
null22  
)22  !
return33 
;33 
var55 

gameObject55 
=55 
animator55 %
.55% &

gameObject55& 0
;550 1
m_PreviewComponents66 
.66  
AddRange66  (
(66( )

gameObject66) 3
.663 4
GetComponents664 A
<66A B#
IAnimationWindowPreview66B Y
>66Y Z
(66Z [
)66[ \
)66\ ]
;66] ^
}77 	
}88 
}99 û…
ZC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\TimelinePlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{		 
internal 
	interface %
ITimelineEvaluateCallback 0
{ 
void 
Evaluate 
( 
) 
; 
} 
class 	"
IntervalTreeRebalancer
  
{ 
private 
IntervalTree 
< 
RuntimeElement +
>+ ,
m_Tree- 3
;3 4
public "
IntervalTreeRebalancer %
(% &
IntervalTree& 2
<2 3
RuntimeElement3 A
>A B
treeC G
)G H
{ 	
m_Tree 
= 
tree 
; 
} 	
public 
bool 
	Rebalance 
( 
) 
{ 	
m_Tree 
. 
UpdateIntervals "
(" #
)# $
;$ %
return   
m_Tree   
.   
dirty   
;    
}!! 	
}"" 
public11 

class11 
TimelinePlayable11 !
:11" #
PlayableBehaviour11$ 5
{22 
private33 
IntervalTree33 
<33 
RuntimeElement33 +
>33+ ,
m_IntervalTree33- ;
=33< =
new33> A
IntervalTree33B N
<33N O
RuntimeElement33O ]
>33] ^
(33^ _
)33_ `
;33` a
private44 
List44 
<44 
RuntimeElement44 #
>44# $
m_ActiveClips44% 2
=443 4
new445 8
List449 =
<44= >
RuntimeElement44> L
>44L M
(44M N
)44N O
;44O P
private55 
List55 
<55 
RuntimeElement55 #
>55# $&
m_CurrentListOfActiveClips55% ?
;55? @
private66 
int66 
m_ActiveBit66 
=66  !
$num66" #
;66# $
private88 
List88 
<88 %
ITimelineEvaluateCallback88 .
>88. /
m_EvaluateCallbacks880 C
=88D E
new88F I
List88J N
<88N O%
ITimelineEvaluateCallback88O h
>88h i
(88i j
)88j k
;88k l
private:: 

Dictionary:: 
<:: 

TrackAsset:: %
,::% &
Playable::' /
>::/ 0
m_PlayableCache::1 @
=::A B
new::C F

Dictionary::G Q
<::Q R

TrackAsset::R \
,::\ ]
Playable::^ f
>::f g
(::g h
)::h i
;::i j
internal<< 
static<< 
bool<< 
muteAudioScrubbing<< /
=<<0 1
true<<2 6
;<<6 7
private?? "
IntervalTreeRebalancer?? &
m_Rebalancer??' 3
;??3 4
internal@@ 
static@@ 
event@@ 
Action@@ $
<@@$ %
Playable@@% -
>@@- .
playableLooped@@/ =
;@@= >
publicKK 
staticKK 
ScriptPlayableKK $
<KK$ %
TimelinePlayableKK% 5
>KK5 6
CreateKK7 =
(KK= >
PlayableGraphKK> K
graphKKL Q
,KKQ R
IEnumerableKKS ^
<KK^ _

TrackAssetKK_ i
>KKi j
tracksKKk q
,KKq r

GameObjectKKs }
go	KK~ Ä
,
KKÄ Å
bool
KKÇ Ü
autoRebalance
KKá î
,
KKî ï
bool
KKñ ö
createOutputs
KKõ ®
)
KK® ©
{LL 	
ifMM 
(MM 
tracksMM 
==MM 
nullMM 
)MM 
throwNN 
newNN !
ArgumentNullExceptionNN /
(NN/ 0
$strNN0 E
,NNE F
$strNNG O
)NNO P
;NNP Q
ifPP 
(PP 
goPP 
==PP 
nullPP 
)PP 
throwQQ 
newQQ !
ArgumentNullExceptionQQ /
(QQ/ 0
$strQQ0 N
,QQN O
$strQQP T
)QQT U
;QQU V
varSS 
playableSS 
=SS 
ScriptPlayableSS )
<SS) *
TimelinePlayableSS* :
>SS: ;
.SS; <
CreateSS< B
(SSB C
graphSSC H
)SSH I
;SSI J
playableTT 
.TT 
SetTraversalModeTT %
(TT% &!
PlayableTraversalModeTT& ;
.TT; <
PassthroughTT< G
)TTG H
;TTH I
varUU 
sequenceUU 
=UU 
playableUU #
.UU# $
GetBehaviourUU$ 0
(UU0 1
)UU1 2
;UU2 3
sequenceVV 
.VV 
CompileVV 
(VV 
graphVV "
,VV" #
playableVV$ ,
,VV, -
tracksVV. 4
,VV4 5
goVV6 8
,VV8 9
autoRebalanceVV: G
,VVG H
createOutputsVVI V
)VVV W
;VVW X
returnWW 
playableWW 
;WW 
}XX 	
publiccc 
voidcc 
Compilecc 
(cc 
PlayableGraphcc )
graphcc* /
,cc/ 0
Playablecc1 9
timelinePlayablecc: J
,ccJ K
IEnumerableccL W
<ccW X

TrackAssetccX b
>ccb c
tracksccd j
,ccj k

GameObjectccl v
goccw y
,ccy z
boolcc{ 
autoRebalance
ccÄ ç
,
ccç é
bool
ccè ì
createOutputs
ccî °
)
cc° ¢
{dd 	
ifee 
(ee 
tracksee 
==ee 
nullee 
)ee 
throwff 
newff !
ArgumentNullExceptionff /
(ff/ 0
$strff0 E
,ffE F
$strffG O
)ffO P
;ffP Q
ifhh 
(hh 
gohh 
==hh 
nullhh 
)hh 
throwii 
newii !
ArgumentNullExceptionii /
(ii/ 0
$strii0 N
,iiN O
$striiP T
)iiT U
;iiU V
varkk 
outputTrackListkk 
=kk  !
newkk" %
Listkk& *
<kk* +

TrackAssetkk+ 5
>kk5 6
(kk6 7
trackskk7 =
)kk= >
;kk> ?
varll (
maximumNumberOfIntersectionsll ,
=ll- .
outputTrackListll/ >
.ll> ?
Countll? D
*llE F
$numllG H
+llI J
outputTrackListllK Z
.llZ [
Countll[ `
;ll` a&
m_CurrentListOfActiveClipsmm &
=mm' (
newmm) ,
Listmm- 1
<mm1 2
RuntimeElementmm2 @
>mm@ A
(mmA B(
maximumNumberOfIntersectionsmmB ^
)mm^ _
;mm_ `
m_ActiveClipsnn 
=nn 
newnn 
Listnn  $
<nn$ %
RuntimeElementnn% 3
>nn3 4
(nn4 5(
maximumNumberOfIntersectionsnn5 Q
)nnQ R
;nnR S
m_EvaluateCallbackspp 
.pp  
Clearpp  %
(pp% &
)pp& '
;pp' (
m_PlayableCacheqq 
.qq 
Clearqq !
(qq! "
)qq" #
;qq# $
CompileTrackListss 
(ss 
graphss "
,ss" #
timelinePlayabless$ 4
,ss4 5
outputTrackListss6 E
,ssE F
gossG I
,ssI J
createOutputsssK X
)ssX Y
;ssY Z
ifvv 
(vv 
autoRebalancevv 
)vv 
{ww 
m_Rebalancerxx 
=xx 
newxx ""
IntervalTreeRebalancerxx# 9
(xx9 :
m_IntervalTreexx: H
)xxH I
;xxI J
}yy 
}{{ 	
private}} 
void}} 
CompileTrackList}} %
(}}% &
PlayableGraph}}& 3
graph}}4 9
,}}9 :
Playable}}; C
timelinePlayable}}D T
,}}T U
IEnumerable}}V a
<}}a b

TrackAsset}}b l
>}}l m
tracks}}n t
,}}t u

GameObject	}}v Ä
go
}}Å É
,
}}É Ñ
bool
}}Ö â
createOutputs
}}ä ó
)
}}ó ò
{~~ 	
foreach 
( 
var 
track 
in !
tracks" (
)( )
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
track
ÅÅ 
.
ÅÅ 
IsCompilable
ÅÅ '
(
ÅÅ' (
)
ÅÅ( )
)
ÅÅ) *
continue
ÇÇ 
;
ÇÇ 
if
ÑÑ 
(
ÑÑ 
!
ÑÑ 
m_PlayableCache
ÑÑ $
.
ÑÑ$ %
ContainsKey
ÑÑ% 0
(
ÑÑ0 1
track
ÑÑ1 6
)
ÑÑ6 7
)
ÑÑ7 8
{
ÖÖ 
track
ÜÜ 
.
ÜÜ 
	SortClips
ÜÜ #
(
ÜÜ# $
)
ÜÜ$ %
;
ÜÜ% &!
CreateTrackPlayable
áá '
(
áá' (
graph
áá( -
,
áá- .
timelinePlayable
áá/ ?
,
áá? @
track
ááA F
,
ááF G
go
ááH J
,
ááJ K
createOutputs
ááL Y
)
ááY Z
;
ááZ [
}
àà 
}
ââ 
}
ää 	
void
åå 
CreateTrackOutput
åå 
(
åå 
PlayableGraph
åå ,
graph
åå- 2
,
åå2 3

TrackAsset
åå4 >
track
åå? D
,
ååD E

GameObject
ååF P
go
ååQ S
,
ååS T
Playable
ååU ]
playable
åå^ f
,
ååf g
int
ååh k
port
åål p
)
ååp q
{
çç 	
if
éé 
(
éé 
track
éé 
.
éé 

isSubTrack
éé  
)
éé  !
return
èè 
;
èè 
var
ëë 
bindings
ëë 
=
ëë 
track
ëë  
.
ëë  !
outputs
ëë! (
;
ëë( )
foreach
íí 
(
íí 
var
íí 
binding
íí  
in
íí! #
bindings
íí$ ,
)
íí, -
{
ìì 
var
îî 
playableOutput
îî "
=
îî# $
binding
îî% ,
.
îî, -
CreateOutput
îî- 9
(
îî9 :
graph
îî: ?
)
îî? @
;
îî@ A
playableOutput
ïï 
.
ïï  
SetReferenceObject
ïï 1
(
ïï1 2
binding
ïï2 9
.
ïï9 :
sourceObject
ïï: F
)
ïïF G
;
ïïG H
playableOutput
ññ 
.
ññ 
SetSourcePlayable
ññ 0
(
ññ0 1
playable
ññ1 9
,
ññ9 :
port
ññ; ?
)
ññ? @
;
ññ@ A
playableOutput
óó 
.
óó 
	SetWeight
óó (
(
óó( )
$num
óó) -
)
óó- .
;
óó. /
if
öö 
(
öö 
track
öö 
as
öö 
AnimationTrack
öö +
!=
öö, .
null
öö/ 3
)
öö3 4
{
õõ 7
)EvaluateWeightsForAnimationPlayableOutput
úú =
(
úú= >
track
úú> C
,
úúC D
(
úúE F%
AnimationPlayableOutput
úúF ]
)
úú] ^
playableOutput
úú^ l
)
úúl m
;
úúm n
if
ûû 
(
ûû 
!
ûû 
Application
ûû $
.
ûû$ %
	isPlaying
ûû% .
)
ûû. /4
&EvaluateAnimationPreviewUpdateCallback
üü >
(
üü> ?
track
üü? D
,
üüD E
(
üüF G%
AnimationPlayableOutput
üüG ^
)
üü^ _
playableOutput
üü_ m
)
üüm n
;
üün o
}
°° 
if
¢¢ 
(
¢¢ 
playableOutput
¢¢ "
.
¢¢" #$
IsPlayableOutputOfType
¢¢# 9
<
¢¢9 :!
AudioPlayableOutput
¢¢: M
>
¢¢M N
(
¢¢N O
)
¢¢O P
)
¢¢P Q
(
££ 
(
££ !
AudioPlayableOutput
££ )
)
££) *
playableOutput
££* 8
)
££8 9
.
££9 :
SetEvaluateOnSeek
££: K
(
££K L
!
££L M 
muteAudioScrubbing
££M _
)
££_ `
;
££` a
if
¶¶ 
(
¶¶ 
track
¶¶ 
.
¶¶ 
timelineAsset
¶¶ '
.
¶¶' (
markerTrack
¶¶( 3
==
¶¶4 6
track
¶¶7 <
)
¶¶< =
{
ßß 
var
®® 
director
®®  
=
®®! "
go
®®# %
.
®®% &
GetComponent
®®& 2
<
®®2 3
PlayableDirector
®®3 C
>
®®C D
(
®®D E
)
®®E F
;
®®F G
playableOutput
©© "
.
©©" #
SetUserData
©©# .
(
©©. /
director
©©/ 7
)
©©7 8
;
©©8 9
foreach
™™ 
(
™™ 
var
™™  
c
™™! "
in
™™# %
go
™™& (
.
™™( )
GetComponents
™™) 6
<
™™6 7#
INotificationReceiver
™™7 L
>
™™L M
(
™™M N
)
™™N O
)
™™O P
{
´´ 
playableOutput
¨¨ &
.
¨¨& '%
AddNotificationReceiver
¨¨' >
(
¨¨> ?
c
¨¨? @
)
¨¨@ A
;
¨¨A B
}
≠≠ 
}
ÆÆ 
}
ØØ 
}
∞∞ 	
void
≤≤ 7
)EvaluateWeightsForAnimationPlayableOutput
≤≤ 6
(
≤≤6 7

TrackAsset
≤≤7 A
track
≤≤B G
,
≤≤G H%
AnimationPlayableOutput
≤≤I `

animOutput
≤≤a k
)
≤≤k l
{
≥≥ 	!
m_EvaluateCallbacks
¥¥ 
.
¥¥  
Add
¥¥  #
(
¥¥# $
new
¥¥$ ',
AnimationOutputWeightProcessor
¥¥( F
(
¥¥F G

animOutput
¥¥G Q
)
¥¥Q R
)
¥¥R S
;
¥¥S T
}
µµ 	
void
∑∑ 4
&EvaluateAnimationPreviewUpdateCallback
∑∑ 3
(
∑∑3 4

TrackAsset
∑∑4 >
track
∑∑? D
,
∑∑D E%
AnimationPlayableOutput
∑∑F ]

animOutput
∑∑^ h
)
∑∑h i
{
∏∏ 	!
m_EvaluateCallbacks
ππ 
.
ππ  
Add
ππ  #
(
ππ# $
new
ππ$ ',
AnimationPreviewUpdateCallback
ππ( F
(
ππF G

animOutput
ππG Q
)
ππQ R
)
ππR S
;
ππS T
}
∫∫ 	
Playable
ºº !
CreateTrackPlayable
ºº $
(
ºº$ %
PlayableGraph
ºº% 2
graph
ºº3 8
,
ºº8 9
Playable
ºº: B
timelinePlayable
ººC S
,
ººS T

TrackAsset
ººU _
track
ºº` e
,
ººe f

GameObject
ººg q
go
ººr t
,
ººt u
bool
ººv z
createOutputsºº{ à
)ººà â
{
ΩΩ 	
if
ææ 
(
ææ 
!
ææ 
track
ææ 
.
ææ 
IsCompilable
ææ #
(
ææ# $
)
ææ$ %
)
ææ% &
return
øø 
timelinePlayable
øø '
;
øø' (
Playable
¡¡ 
playable
¡¡ 
;
¡¡ 
if
¬¬ 
(
¬¬ 
m_PlayableCache
¬¬ 
.
¬¬  
TryGetValue
¬¬  +
(
¬¬+ ,
track
¬¬, 1
,
¬¬1 2
out
¬¬3 6
playable
¬¬7 ?
)
¬¬? @
)
¬¬@ A
return
√√ 
playable
√√ 
;
√√  
if
≈≈ 
(
≈≈ 
track
≈≈ 
.
≈≈ 
name
≈≈ 
==
≈≈ 
$str
≈≈ $
)
≈≈$ %
return
∆∆ 
timelinePlayable
∆∆ '
;
∆∆' (

TrackAsset
»» 
parentActor
»» "
=
»»# $
track
»»% *
.
»»* +
parent
»»+ 1
as
»»2 4

TrackAsset
»»5 ?
;
»»? @
var
…… 
parentPlayable
…… 
=
……  
parentActor
……! ,
!=
……- /
null
……0 4
?
……5 6!
CreateTrackPlayable
……7 J
(
……J K
graph
……K P
,
……P Q
timelinePlayable
……R b
,
……b c
parentActor
……d o
,
……o p
go
……q s
,
……s t
createOutputs……u Ç
)……Ç É
:……Ñ Ö 
timelinePlayable……Ü ñ
;……ñ ó
var
   
actorPlayable
   
=
   
track
    %
.
  % &!
CreatePlayableGraph
  & 9
(
  9 :
graph
  : ?
,
  ? @
go
  A C
,
  C D
m_IntervalTree
  E S
,
  S T
timelinePlayable
  U e
)
  e f
;
  f g
bool
ÀÀ 
	connected
ÀÀ 
=
ÀÀ 
false
ÀÀ "
;
ÀÀ" #
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
actorPlayable
ÕÕ 
.
ÕÕ 
IsValid
ÕÕ &
(
ÕÕ& '
)
ÕÕ' (
)
ÕÕ( )
{
ŒŒ 
throw
–– 
new
–– '
InvalidOperationException
–– 3
(
––3 4
track
––4 9
.
––9 :
name
––: >
+
––? @
$str
––A D
+
––E F
track
––G L
.
––L M
GetType
––M T
(
––T U
)
––U V
+
––W X
$str
––Y ~
)
––~ 
;–– Ä
}
—— 
if
’’ 
(
’’ 
parentPlayable
’’ 
.
’’ 
IsValid
’’ &
(
’’& '
)
’’' (
&&
’’) +
actorPlayable
’’, 9
.
’’9 :
IsValid
’’: A
(
’’A B
)
’’B C
)
’’C D
{
÷÷ 
int
◊◊ 
port
◊◊ 
=
◊◊ 
parentPlayable
◊◊ )
.
◊◊) *
GetInputCount
◊◊* 7
(
◊◊7 8
)
◊◊8 9
;
◊◊9 :
parentPlayable
ÿÿ 
.
ÿÿ 
SetInputCount
ÿÿ ,
(
ÿÿ, -
port
ÿÿ- 1
+
ÿÿ2 3
$num
ÿÿ4 5
)
ÿÿ5 6
;
ÿÿ6 7
	connected
ŸŸ 
=
ŸŸ 
graph
ŸŸ !
.
ŸŸ! "
Connect
ŸŸ" )
(
ŸŸ) *
actorPlayable
ŸŸ* 7
,
ŸŸ7 8
$num
ŸŸ9 :
,
ŸŸ: ;
parentPlayable
ŸŸ< J
,
ŸŸJ K
port
ŸŸL P
)
ŸŸP Q
;
ŸŸQ R
parentPlayable
⁄⁄ 
.
⁄⁄ 
SetInputWeight
⁄⁄ -
(
⁄⁄- .
port
⁄⁄. 2
,
⁄⁄2 3
$num
⁄⁄4 8
)
⁄⁄8 9
;
⁄⁄9 :
}
€€ 
if
›› 
(
›› 
createOutputs
›› 
&&
››  
	connected
››! *
)
››* +
{
ﬁﬁ 
CreateTrackOutput
ﬂﬂ !
(
ﬂﬂ! "
graph
ﬂﬂ" '
,
ﬂﬂ' (
track
ﬂﬂ) .
,
ﬂﬂ. /
go
ﬂﬂ0 2
,
ﬂﬂ2 3
parentPlayable
ﬂﬂ4 B
,
ﬂﬂB C
parentPlayable
ﬂﬂD R
.
ﬂﬂR S
GetInputCount
ﬂﬂS `
(
ﬂﬂ` a
)
ﬂﬂa b
-
ﬂﬂc d
$num
ﬂﬂe f
)
ﬂﬂf g
;
ﬂﬂg h
}
‡‡ 

CacheTrack
‚‚ 
(
‚‚ 
track
‚‚ 
,
‚‚ 
actorPlayable
‚‚ +
,
‚‚+ ,
	connected
‚‚- 6
?
‚‚7 8
(
‚‚9 :
parentPlayable
‚‚: H
.
‚‚H I
GetInputCount
‚‚I V
(
‚‚V W
)
‚‚W X
-
‚‚Y Z
$num
‚‚[ \
)
‚‚\ ]
:
‚‚^ _
-
‚‚` a
$num
‚‚a b
,
‚‚b c
parentPlayable
‚‚d r
)
‚‚r s
;
‚‚s t
return
„„ 
actorPlayable
„„  
;
„„  !
}
‰‰ 	
public
ÎÎ 
override
ÎÎ 
void
ÎÎ 
PrepareFrame
ÎÎ )
(
ÎÎ) *
Playable
ÎÎ* 2
playable
ÎÎ3 ;
,
ÎÎ; <
	FrameData
ÎÎ= F
info
ÎÎG K
)
ÎÎK L
{
ÏÏ 	
if
ÓÓ 
(
ÓÓ 
m_Rebalancer
ÓÓ 
!=
ÓÓ 
null
ÓÓ  $
)
ÓÓ$ %
m_Rebalancer
ÔÔ 
.
ÔÔ 
	Rebalance
ÔÔ &
(
ÔÔ& '
)
ÔÔ' (
;
ÔÔ( )
if
ÚÚ 
(
ÚÚ 
playableLooped
ÚÚ 
!=
ÚÚ !
null
ÚÚ" &
&&
ÚÚ' )
info
ÚÚ* .
.
ÚÚ. /

timeLooped
ÚÚ/ 9
)
ÚÚ9 :
playableLooped
ÛÛ 
.
ÛÛ 
Invoke
ÛÛ %
(
ÛÛ% &
playable
ÛÛ& .
)
ÛÛ. /
;
ÛÛ/ 0
Evaluate
˘˘ 
(
˘˘ 
playable
˘˘ 
,
˘˘ 
info
˘˘ #
)
˘˘# $
;
˘˘$ %
}
˙˙ 	
private
¸¸ 
void
¸¸ 
Evaluate
¸¸ 
(
¸¸ 
Playable
¸¸ &
playable
¸¸' /
,
¸¸/ 0
	FrameData
¸¸1 :
	frameData
¸¸; D
)
¸¸D E
{
˝˝ 	
if
˛˛ 
(
˛˛ 
m_IntervalTree
˛˛ 
==
˛˛ !
null
˛˛" &
)
˛˛& '
return
ˇˇ 
;
ˇˇ 
double
ÅÅ 
	localTime
ÅÅ 
=
ÅÅ 
playable
ÅÅ '
.
ÅÅ' (
GetTime
ÅÅ( /
(
ÅÅ/ 0
)
ÅÅ0 1
;
ÅÅ1 2
m_ActiveBit
ÇÇ 
=
ÇÇ 
m_ActiveBit
ÇÇ %
==
ÇÇ& (
$num
ÇÇ) *
?
ÇÇ+ ,
$num
ÇÇ- .
:
ÇÇ/ 0
$num
ÇÇ1 2
;
ÇÇ2 3(
m_CurrentListOfActiveClips
ÑÑ &
.
ÑÑ& '
Clear
ÑÑ' ,
(
ÑÑ, -
)
ÑÑ- .
;
ÑÑ. /
m_IntervalTree
ÖÖ 
.
ÖÖ 
IntersectsWith
ÖÖ )
(
ÖÖ) *
DiscreteTime
ÖÖ* 6
.
ÖÖ6 7
GetNearestTick
ÖÖ7 E
(
ÖÖE F
	localTime
ÖÖF O
)
ÖÖO P
,
ÖÖP Q(
m_CurrentListOfActiveClips
ÖÖR l
)
ÖÖl m
;
ÖÖm n
foreach
áá 
(
áá 
var
áá 
c
áá 
in
áá (
m_CurrentListOfActiveClips
áá 8
)
áá8 9
{
àà 
c
ââ 
.
ââ 
intervalBit
ââ 
=
ââ 
m_ActiveBit
ââ  +
;
ââ+ ,
}
ää 
var
éé 
timelineEnd
éé 
=
éé 
(
éé 
double
éé %
)
éé% &
new
éé& )
DiscreteTime
éé* 6
(
éé6 7
playable
éé7 ?
.
éé? @
GetDuration
éé@ K
(
ééK L
)
ééL M
)
ééM N
;
ééN O
foreach
èè 
(
èè 
var
èè 
c
èè 
in
èè 
m_ActiveClips
èè +
)
èè+ ,
{
êê 
if
ëë 
(
ëë 
c
ëë 
.
ëë 
intervalBit
ëë !
!=
ëë" $
m_ActiveBit
ëë% 0
)
ëë0 1
c
íí 
.
íí 
	DisableAt
íí 
(
íí  
	localTime
íí  )
,
íí) *
timelineEnd
íí+ 6
,
íí6 7
	frameData
íí8 A
)
ííA B
;
ííB C
}
ìì 
m_ActiveClips
ïï 
.
ïï 
Clear
ïï 
(
ïï  
)
ïï  !
;
ïï! "
for
óó 
(
óó 
var
óó 
a
óó 
=
óó 
$num
óó 
;
óó 
a
óó 
<
óó (
m_CurrentListOfActiveClips
óó  :
.
óó: ;
Count
óó; @
;
óó@ A
a
óóB C
++
óóC E
)
óóE F
{
òò (
m_CurrentListOfActiveClips
ôô *
[
ôô* +
a
ôô+ ,
]
ôô, -
.
ôô- .

EvaluateAt
ôô. 8
(
ôô8 9
	localTime
ôô9 B
,
ôôB C
	frameData
ôôD M
)
ôôM N
;
ôôN O
m_ActiveClips
öö 
.
öö 
Add
öö !
(
öö! "(
m_CurrentListOfActiveClips
öö" <
[
öö< =
a
öö= >
]
öö> ?
)
öö? @
;
öö@ A
}
õõ 
int
ùù 
count
ùù 
=
ùù !
m_EvaluateCallbacks
ùù +
.
ùù+ ,
Count
ùù, 1
;
ùù1 2
for
ûû 
(
ûû 
int
ûû 
i
ûû 
=
ûû 
$num
ûû 
;
ûû 
i
ûû 
<
ûû 
count
ûû  %
;
ûû% &
i
ûû' (
++
ûû( *
)
ûû* +
{
üü !
m_EvaluateCallbacks
†† #
[
††# $
i
††$ %
]
††% &
.
††& '
Evaluate
††' /
(
††/ 0
)
††0 1
;
††1 2
}
°° 
}
¢¢ 	
private
§§ 
void
§§ 

CacheTrack
§§ 
(
§§  

TrackAsset
§§  *
track
§§+ 0
,
§§0 1
Playable
§§2 :
playable
§§; C
,
§§C D
int
§§E H
port
§§I M
,
§§M N
Playable
§§O W
parent
§§X ^
)
§§^ _
{
•• 	
m_PlayableCache
¶¶ 
[
¶¶ 
track
¶¶ !
]
¶¶! "
=
¶¶# $
playable
¶¶% -
;
¶¶- .
}
ßß 	
static
™™ 
void
™™ #
ForAOTCompilationOnly
™™ )
(
™™) *
)
™™* +
{
´´ 	
new
¨¨ 
List
¨¨ 
<
¨¨ 
IntervalTree
¨¨ !
<
¨¨! "
RuntimeElement
¨¨" 0
>
¨¨0 1
.
¨¨1 2
Entry
¨¨2 7
>
¨¨7 8
(
¨¨8 9
)
¨¨9 :
;
¨¨: ;
}
≠≠ 	
}
ÆÆ 
}ØØ é
dC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\IPropertyPreview.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

	interface 
IPropertyPreview %
{		 
void 
GatherProperties 
( 
PlayableDirector .
director/ 7
,7 8
IPropertyCollector9 K
driverL R
)R S
;S T
} 
} ∂%
RC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\ClipCaps.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Flags 

]
 
public		 

enum		 
ClipCaps		 
{

 
None 
= 
$num 
, 
Looping 
= 
$num 
<< 
$num 
, 
Extrapolation 
= 
$num 
<< 
$num 
, 
ClipIn 
= 
$num 
<< 
$num 
, 
SpeedMultiplier"" 
="" 
$num"" 
<<"" 
$num""  
,""  !
Blending'' 
='' 
$num'' 
<<'' 
$num'' 
,'' 
	AutoScale-- 
=-- 
$num-- 
<<-- 
$num-- 
|-- 
SpeedMultiplier-- ,
,--, -
All22 
=22 
~22 
None22 
}33 
static55 

class55 &
TimelineClipCapsExtensions55 +
{66 
public77 
static77 
bool77 
SupportsLooping77 *
(77* +
this77+ /
TimelineClip770 <
clip77= A
)77A B
{88 	
return99 
clip99 
!=99 
null99 
&&99  "
(99# $
clip99$ (
.99( )
clipCaps99) 1
&992 3
ClipCaps994 <
.99< =
Looping99= D
)99D E
!=99F H
ClipCaps99I Q
.99Q R
None99R V
;99V W
}:: 	
public<< 
static<< 
bool<< !
SupportsExtrapolation<< 0
(<<0 1
this<<1 5
TimelineClip<<6 B
clip<<C G
)<<G H
{== 	
return>> 
clip>> 
!=>> 
null>> 
&&>>  "
(>># $
clip>>$ (
.>>( )
clipCaps>>) 1
&>>2 3
ClipCaps>>4 <
.>>< =
Extrapolation>>= J
)>>J K
!=>>L N
ClipCaps>>O W
.>>W X
None>>X \
;>>\ ]
}?? 	
publicAA 
staticAA 
boolAA 
SupportsClipInAA )
(AA) *
thisAA* .
TimelineClipAA/ ;
clipAA< @
)AA@ A
{BB 	
returnCC 
clipCC 
!=CC 
nullCC 
&&CC  "
(CC# $
clipCC$ (
.CC( )
clipCapsCC) 1
&CC2 3
ClipCapsCC4 <
.CC< =
ClipInCC= C
)CCC D
!=CCE G
ClipCapsCCH P
.CCP Q
NoneCCQ U
;CCU V
}DD 	
publicFF 
staticFF 
boolFF #
SupportsSpeedMultiplierFF 2
(FF2 3
thisFF3 7
TimelineClipFF8 D
clipFFE I
)FFI J
{GG 	
returnHH 
clipHH 
!=HH 
nullHH 
&&HH  "
(HH# $
clipHH$ (
.HH( )
clipCapsHH) 1
&HH2 3
ClipCapsHH4 <
.HH< =
SpeedMultiplierHH= L
)HHL M
!=HHN P
ClipCapsHHQ Y
.HHY Z
NoneHHZ ^
;HH^ _
}II 	
publicKK 
staticKK 
boolKK 
SupportsBlendingKK +
(KK+ ,
thisKK, 0
TimelineClipKK1 =
clipKK> B
)KKB C
{LL 	
returnMM 
clipMM 
!=MM 
nullMM 
&&MM  "
(MM# $
clipMM$ (
.MM( )
clipCapsMM) 1
&MM2 3
ClipCapsMM4 <
.MM< =
BlendingMM= E
)MME F
!=MMG I
ClipCapsMMJ R
.MMR S
NoneMMS W
;MMW X
}NN 	
publicPP 
staticPP 
boolPP 
HasAllPP !
(PP! "
thisPP" &
ClipCapsPP' /
capsPP0 4
,PP4 5
ClipCapsPP6 >
flagsPP? D
)PPD E
{QQ 	
returnRR 
(RR 
capsRR 
&RR 
flagsRR  
)RR  !
==RR" $
flagsRR% *
;RR* +
}SS 	
publicUU 
staticUU 
boolUU 
HasAnyUU !
(UU! "
thisUU" &
ClipCapsUU' /
capsUU0 4
,UU4 5
ClipCapsUU6 >
flagsUU? D
)UUD E
{VV 	
returnWW 
(WW 
capsWW 
&WW 
flagsWW  
)WW  !
!=WW" $
$numWW% &
;WW& '
}XX 	
}YY 
}ZZ Éö
dC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\TimelineAsset_CreateRemove.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{		 
public

 

partial

 
class

 
TimelineAsset

 &
{ 
public 

TrackAsset 
CreateTrack %
(% &
Type& *
type+ /
,/ 0

TrackAsset1 ;
parent< B
,B C
stringD J
nameK O
)O P
{ 	
if 
( 
parent 
!= 
null 
&& !
parent" (
.( )
timelineAsset) 6
!=7 9
this: >
)> ?
throw 
new %
InvalidOperationException 3
(3 4
$str4 k
)k l
;l m
if 
( 
! 
typeof 
( 

TrackAsset "
)" #
.# $
IsAssignableFrom$ 4
(4 5
type5 9
)9 :
): ;
throw 
new %
InvalidOperationException 3
(3 4
$str4 Y
)Y Z
;Z [
if 
( 
parent 
!= 
null 
) 
{ 
if   
(   
!   #
TimelineCreateUtilities   ,
.  , -
ValidateParentTrack  - @
(  @ A
parent  A G
,  G H
type  I M
)  M N
)  N O
throw!! 
new!! %
InvalidOperationException!! 7
(!!7 8
$str!!8 X
+!!Y Z
type!![ _
.!!_ `
Name!!` d
+!!e f
$str!!g ~
+	!! Ä
parent
!!Å á
.
!!á à
GetType
!!à è
(
!!è ê
)
!!ê ë
.
!!ë í
Name
!!í ñ
)
!!ñ ó
;
!!ó ò
}"" 
var$$ 
baseName$$ 
=$$ 
name$$ 
;$$  
if%% 
(%% 
string%% 
.%% 
IsNullOrEmpty%% $
(%%$ %
baseName%%% -
)%%- .
)%%. /
{&& 
baseName'' 
='' 
type'' 
.''  
Name''  $
;''$ %
baseName)) 
=)) 
UnityEditor)) &
.))& '
ObjectNames))' 2
.))2 3
NicifyVariableName))3 E
())E F
baseName))F N
)))N O
;))O P
}++ 
var-- 
	trackName-- 
=-- 
baseName-- $
;--$ %
if.. 
(.. 
parent.. 
!=.. 
null.. 
).. 
	trackName// 
=// #
TimelineCreateUtilities// 3
.//3 4#
GenerateUniqueActorName//4 K
(//K L
parent//L R
.//R S
subTracksObjects//S c
,//c d
baseName//e m
)//m n
;//n o
else00 
	trackName11 
=11 #
TimelineCreateUtilities11 3
.113 4#
GenerateUniqueActorName114 K
(11K L
trackObjects11L X
,11X Y
baseName11Z b
)11b c
;11c d

TrackAsset33 
newTrack33 
=33  !
AllocateTrack33" /
(33/ 0
parent330 6
,336 7
	trackName338 A
,33A B
type33C G
)33G H
;33H I
return55 
newTrack55 
;55 
}66 	
publicBB 
TBB 
CreateTrackBB 
<BB 
TBB 
>BB 
(BB  

TrackAssetBB  *
parentBB+ 1
,BB1 2
stringBB3 9
	trackNameBB: C
)BBC D
whereBBE J
TBBK L
:BBM N

TrackAssetBBO Y
,BBY Z
newBB[ ^
(BB^ _
)BB_ `
{CC 	
returnDD 
(DD 
TDD 
)DD 
CreateTrackDD !
(DD! "
typeofDD" (
(DD( )
TDD) *
)DD* +
,DD+ ,
parentDD- 3
,DD3 4
	trackNameDD5 >
)DD> ?
;DD? @
}EE 	
publicMM 
TMM 
CreateTrackMM 
<MM 
TMM 
>MM 
(MM  
stringMM  &
	trackNameMM' 0
)MM0 1
whereMM2 7
TMM8 9
:MM: ;

TrackAssetMM< F
,MMF G
newMMH K
(MMK L
)MML M
{NN 	
returnOO 
(OO 
TOO 
)OO 
CreateTrackOO !
(OO! "
typeofOO" (
(OO( )
TOO) *
)OO* +
,OO+ ,
nullOO- 1
,OO1 2
	trackNameOO3 <
)OO< =
;OO= >
}PP 	
publicWW 
TWW 
CreateTrackWW 
<WW 
TWW 
>WW 
(WW  
)WW  !
whereWW" '
TWW( )
:WW* +

TrackAssetWW, 6
,WW6 7
newWW8 ;
(WW; <
)WW< =
{XX 	
returnYY 
(YY 
TYY 
)YY 
CreateTrackYY !
(YY! "
typeofYY" (
(YY( )
TYY) *
)YY* +
,YY+ ,
nullYY- 1
,YY1 2
nullYY3 7
)YY7 8
;YY8 9
}ZZ 	
publicdd 
booldd 

DeleteClipdd 
(dd 
TimelineClipdd +
clipdd, 0
)dd0 1
{ee 	
ifff 
(ff 
clipff 
==ff 
nullff 
||ff 
clipff  $
.ff$ %
GetParentTrackff% 3
(ff3 4
)ff4 5
==ff6 8
nullff9 =
)ff= >
{gg 
returnhh 
falsehh 
;hh 
}ii 
ifjj 
(jj 
thisjj 
!=jj 
clipjj 
.jj 
GetParentTrackjj +
(jj+ ,
)jj, -
.jj- .
timelineAssetjj. ;
)jj; <
{kk 
Debugll 
.ll 
LogErrorll 
(ll 
$strll H
)llH I
;llI J
returnmm 
falsemm 
;mm 
}nn 
TimelineUndopp 
.pp 
PushUndopp !
(pp! "
clippp" &
.pp& '
GetParentTrackpp' 5
(pp5 6
)pp6 7
,pp7 8
$strpp9 F
)ppF G
;ppG H
ifqq 
(qq 
clipqq 
.qq 
curvesqq 
!=qq 
nullqq #
)qq# $
{rr 
TimelineUndoss 
.ss 
PushDestroyUndoss ,
(ss, -
thisss- 1
,ss1 2
clipss3 7
.ss7 8
GetParentTrackss8 F
(ssF G
)ssG H
,ssH I
clipssJ N
.ssN O
curvesssO U
)ssU V
;ssV W
}tt 
ifww 
(ww 
clipww 
.ww 
assetww 
!=ww 
nullww "
)ww" #
{xx #
DeleteRecordedAnimationyy '
(yy' (
clipyy( ,
)yy, -
;yy- .
string}} 
path}} 
=}} 
UnityEditor}} )
.}}) *
AssetDatabase}}* 7
.}}7 8
GetAssetPath}}8 D
(}}D E
clip}}E I
.}}I J
asset}}J O
)}}O P
;}}P Q
if~~ 
(~~ 
path~~ 
==~~ 
UnityEditor~~ '
.~~' (
AssetDatabase~~( 5
.~~5 6
GetAssetPath~~6 B
(~~B C
this~~C G
)~~G H
)~~H I
{
ÄÄ 
TimelineUndo
ÅÅ  
.
ÅÅ  !
PushDestroyUndo
ÅÅ! 0
(
ÅÅ0 1
this
ÅÅ1 5
,
ÅÅ5 6
clip
ÅÅ7 ;
.
ÅÅ; <
GetParentTrack
ÅÅ< J
(
ÅÅJ K
)
ÅÅK L
,
ÅÅL M
clip
ÅÅN R
.
ÅÅR S
asset
ÅÅS X
)
ÅÅX Y
;
ÅÅY Z
}
ÇÇ 
}
ÉÉ 
var
ÖÖ 
clipParentTrack
ÖÖ 
=
ÖÖ  !
clip
ÖÖ" &
.
ÖÖ& '
GetParentTrack
ÖÖ' 5
(
ÖÖ5 6
)
ÖÖ6 7
;
ÖÖ7 8
clipParentTrack
ÜÜ 
.
ÜÜ 

RemoveClip
ÜÜ &
(
ÜÜ& '
clip
ÜÜ' +
)
ÜÜ+ ,
;
ÜÜ, -
clipParentTrack
áá 
.
áá )
CalculateExtrapolationTimes
áá 7
(
áá7 8
)
áá8 9
;
áá9 :
return
ââ 
true
ââ 
;
ââ 
}
ää 	
public
ëë 
bool
ëë 
DeleteTrack
ëë 
(
ëë  

TrackAsset
ëë  *
track
ëë+ 0
)
ëë0 1
{
íí 	
if
ìì 
(
ìì 
track
ìì 
.
ìì 
timelineAsset
ìì #
!=
ìì$ &
this
ìì' +
)
ìì+ ,
return
îî 
false
îî 
;
îî 
TimelineUndo
óó 
.
óó 
PushUndo
óó !
(
óó! "
track
óó" '
,
óó' (
$str
óó) 7
)
óó7 8
;
óó8 9
TimelineUndo
òò 
.
òò 
PushUndo
òò !
(
òò! "
this
òò" &
,
òò& '
$str
òò( 6
)
òò6 7
;
òò7 8

TrackAsset
öö 
parent
öö 
=
öö 
track
öö  %
.
öö% &
parent
öö& ,
as
öö- /

TrackAsset
öö0 :
;
öö: ;
if
õõ 
(
õõ 
parent
õõ 
!=
õõ 
null
õõ 
)
õõ 
TimelineUndo
úú 
.
úú 
PushUndo
úú %
(
úú% &
parent
úú& ,
,
úú, -
$str
úú. <
)
úú< =
;
úú= >
var
ûû 
children
ûû 
=
ûû 
track
ûû  
.
ûû  !
GetChildTracks
ûû! /
(
ûû/ 0
)
ûû0 1
;
ûû1 2
foreach
üü 
(
üü 
var
üü 
child
üü 
in
üü !
children
üü" *
)
üü* +
{
†† 
DeleteTrack
°° 
(
°° 
child
°° !
)
°°! "
;
°°" #
}
¢¢ %
DeleteRecordedAnimation
§§ #
(
§§# $
track
§§$ )
)
§§) *
;
§§* +
var
¶¶ 
clipsToDelete
¶¶ 
=
¶¶ 
new
¶¶  #
List
¶¶$ (
<
¶¶( )
TimelineClip
¶¶) 5
>
¶¶5 6
(
¶¶6 7
track
¶¶7 <
.
¶¶< =
clips
¶¶= B
)
¶¶B C
;
¶¶C D
foreach
ßß 
(
ßß 
var
ßß 
clip
ßß 
in
ßß  
clipsToDelete
ßß! .
)
ßß. /
{
®® 

DeleteClip
©© 
(
©© 
clip
©© 
)
©©  
;
©©  !
}
™™ 
RemoveTrack
´´ 
(
´´ 
track
´´ 
)
´´ 
;
´´ 
TimelineUndo
≠≠ 
.
≠≠ 
PushDestroyUndo
≠≠ (
(
≠≠( )
this
≠≠) -
,
≠≠- .
this
≠≠/ 3
,
≠≠3 4
track
≠≠5 :
)
≠≠: ;
;
≠≠; <
return
ØØ 
true
ØØ 
;
ØØ 
}
∞∞ 	
internal
≤≤ 
void
≤≤ !
MoveLastTrackBefore
≤≤ )
(
≤≤) *

TrackAsset
≤≤* 4
asset
≤≤5 :
)
≤≤: ;
{
≥≥ 	
if
¥¥ 
(
¥¥ 
m_Tracks
¥¥ 
==
¥¥ 
null
¥¥  
||
¥¥! #
m_Tracks
¥¥$ ,
.
¥¥, -
Count
¥¥- 2
<
¥¥3 4
$num
¥¥5 6
||
¥¥7 9
asset
¥¥: ?
==
¥¥@ B
null
¥¥C G
)
¥¥G H
return
µµ 
;
µµ 
var
∑∑ 
	lastTrack
∑∑ 
=
∑∑ 
m_Tracks
∑∑ $
[
∑∑$ %
m_Tracks
∑∑% -
.
∑∑- .
Count
∑∑. 3
-
∑∑4 5
$num
∑∑6 7
]
∑∑7 8
;
∑∑8 9
if
∏∏ 
(
∏∏ 
	lastTrack
∏∏ 
==
∏∏ 
asset
∏∏ "
)
∏∏" #
return
ππ 
;
ππ 
for
ªª 
(
ªª 
int
ªª 
i
ªª 
=
ªª 
$num
ªª 
;
ªª 
i
ªª 
<
ªª 
m_Tracks
ªª  (
.
ªª( )
Count
ªª) .
-
ªª/ 0
$num
ªª1 2
;
ªª2 3
i
ªª4 5
++
ªª5 7
)
ªª7 8
{
ºº 
if
ΩΩ 
(
ΩΩ 
m_Tracks
ΩΩ 
[
ΩΩ 
i
ΩΩ 
]
ΩΩ 
==
ΩΩ  "
asset
ΩΩ# (
)
ΩΩ( )
{
ææ 
for
øø 
(
øø 
int
øø 
j
øø 
=
øø  
m_Tracks
øø! )
.
øø) *
Count
øø* /
-
øø0 1
$num
øø2 3
;
øø3 4
j
øø5 6
>
øø7 8
i
øø9 :
;
øø: ;
j
øø< =
--
øø= ?
)
øø? @
m_Tracks
¿¿  
[
¿¿  !
j
¿¿! "
]
¿¿" #
=
¿¿$ %
m_Tracks
¿¿& .
[
¿¿. /
j
¿¿/ 0
-
¿¿1 2
$num
¿¿3 4
]
¿¿4 5
;
¿¿5 6
m_Tracks
¡¡ 
[
¡¡ 
i
¡¡ 
]
¡¡ 
=
¡¡  !
	lastTrack
¡¡" +
;
¡¡+ ,

Invalidate
¬¬ 
(
¬¬ 
)
¬¬  
;
¬¬  !
break
√√ 
;
√√ 
}
ƒƒ 
}
≈≈ 
}
∆∆ 	

TrackAsset
»» 
AllocateTrack
»»  
(
»»  !

TrackAsset
»»! +
trackAssetParent
»», <
,
»»< =
string
»»> D
	trackName
»»E N
,
»»N O
Type
»»P T
	trackType
»»U ^
)
»»^ _
{
…… 	
if
   
(
   
trackAssetParent
    
!=
  ! #
null
  $ (
&&
  ) +
trackAssetParent
  , <
.
  < =
timelineAsset
  = J
!=
  K M
this
  N R
)
  R S
throw
ÀÀ 
new
ÀÀ '
InvalidOperationException
ÀÀ 3
(
ÀÀ3 4
$str
ÀÀ4 k
)
ÀÀk l
;
ÀÀl m
if
ÕÕ 
(
ÕÕ 
!
ÕÕ 
typeof
ÕÕ 
(
ÕÕ 

TrackAsset
ÕÕ "
)
ÕÕ" #
.
ÕÕ# $
IsAssignableFrom
ÕÕ$ 4
(
ÕÕ4 5
	trackType
ÕÕ5 >
)
ÕÕ> ?
)
ÕÕ? @
throw
ŒŒ 
new
ŒŒ '
InvalidOperationException
ŒŒ 3
(
ŒŒ3 4
$str
ŒŒ4 Y
)
ŒŒY Z
;
ŒŒZ [
var
–– 
asset
–– 
=
–– 
(
–– 

TrackAsset
–– #
)
––# $
CreateInstance
––$ 2
(
––2 3
	trackType
––3 <
)
––< =
;
––= >
asset
—— 
.
—— 
name
—— 
=
—— 
	trackName
—— "
;
——" #
const
”” 
string
”” !
createTrackUndoName
”” ,
=
””- .
$str
””/ =
;
””= >
PlayableAsset
’’ 
parent
’’  
=
’’! "
trackAssetParent
’’# 3
!=
’’4 6
null
’’7 ;
?
’’< =
trackAssetParent
’’> N
as
’’O Q
PlayableAsset
’’R _
:
’’` a
this
’’b f
;
’’f g%
TimelineCreateUtilities
÷÷ #
.
÷÷# $!
SaveAssetIntoObject
÷÷$ 7
(
÷÷7 8
asset
÷÷8 =
,
÷÷= >
parent
÷÷? E
)
÷÷E F
;
÷÷F G
TimelineUndo
◊◊ 
.
◊◊ '
RegisterCreatedObjectUndo
◊◊ 2
(
◊◊2 3
asset
◊◊3 8
,
◊◊8 9!
createTrackUndoName
◊◊: M
)
◊◊M N
;
◊◊N O
TimelineUndo
ÿÿ 
.
ÿÿ 
PushUndo
ÿÿ !
(
ÿÿ! "
parent
ÿÿ" (
,
ÿÿ( )!
createTrackUndoName
ÿÿ* =
)
ÿÿ= >
;
ÿÿ> ?
if
⁄⁄ 
(
⁄⁄ 
trackAssetParent
⁄⁄  
!=
⁄⁄! #
null
⁄⁄$ (
)
⁄⁄( )
trackAssetParent
€€  
.
€€  !
AddChild
€€! )
(
€€) *
asset
€€* /
)
€€/ 0
;
€€0 1
else
‹‹ 
AddTrackInternal
››  
(
››  !
asset
››! &
)
››& '
;
››' (
return
ﬂﬂ 
asset
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
void
‚‚ %
DeleteRecordedAnimation
‚‚ $
(
‚‚$ %

TrackAsset
‚‚% /
track
‚‚0 5
)
‚‚5 6
{
„„ 	
var
‰‰ 
	animTrack
‰‰ 
=
‰‰ 
track
‰‰ !
as
‰‰" $
AnimationTrack
‰‰% 3
;
‰‰3 4
if
ÂÂ 
(
ÂÂ 
	animTrack
ÂÂ 
!=
ÂÂ 
null
ÂÂ !
&&
ÂÂ" $
	animTrack
ÂÂ% .
.
ÂÂ. /
infiniteClip
ÂÂ/ ;
!=
ÂÂ< >
null
ÂÂ? C
)
ÂÂC D
TimelineUndo
ÊÊ 
.
ÊÊ 
PushDestroyUndo
ÊÊ ,
(
ÊÊ, -
this
ÊÊ- 1
,
ÊÊ1 2
track
ÊÊ3 8
,
ÊÊ8 9
	animTrack
ÊÊ: C
.
ÊÊC D
infiniteClip
ÊÊD P
)
ÊÊP Q
;
ÊÊQ R
if
ËË 
(
ËË 
track
ËË 
.
ËË 
curves
ËË 
!=
ËË 
null
ËË  $
)
ËË$ %
TimelineUndo
ÈÈ 
.
ÈÈ 
PushDestroyUndo
ÈÈ ,
(
ÈÈ, -
this
ÈÈ- 1
,
ÈÈ1 2
track
ÈÈ3 8
,
ÈÈ8 9
track
ÈÈ: ?
.
ÈÈ? @
curves
ÈÈ@ F
)
ÈÈF G
;
ÈÈG H
}
ÍÍ 	
void
ÏÏ %
DeleteRecordedAnimation
ÏÏ $
(
ÏÏ$ %
TimelineClip
ÏÏ% 1
clip
ÏÏ2 6
)
ÏÏ6 7
{
ÌÌ 	
if
ÓÓ 
(
ÓÓ 
clip
ÓÓ 
==
ÓÓ 
null
ÓÓ 
)
ÓÓ 
return
ÔÔ 
;
ÔÔ 
if
ÒÒ 
(
ÒÒ 
clip
ÒÒ 
.
ÒÒ 
curves
ÒÒ 
!=
ÒÒ 
null
ÒÒ #
)
ÒÒ# $
TimelineUndo
ÚÚ 
.
ÚÚ 
PushDestroyUndo
ÚÚ ,
(
ÚÚ, -
this
ÚÚ- 1
,
ÚÚ1 2
clip
ÚÚ3 7
.
ÚÚ7 8
GetParentTrack
ÚÚ8 F
(
ÚÚF G
)
ÚÚG H
,
ÚÚH I
clip
ÚÚJ N
.
ÚÚN O
curves
ÚÚO U
)
ÚÚU V
;
ÚÚV W
if
ÙÙ 
(
ÙÙ 
!
ÙÙ 
clip
ÙÙ 
.
ÙÙ 

recordable
ÙÙ  
)
ÙÙ  !
return
ıı 
;
ıı $
AnimationPlayableAsset
˜˜ "
asset
˜˜# (
=
˜˜) *
clip
˜˜+ /
.
˜˜/ 0
asset
˜˜0 5
as
˜˜6 8$
AnimationPlayableAsset
˜˜9 O
;
˜˜O P
if
¯¯ 
(
¯¯ 
asset
¯¯ 
==
¯¯ 
null
¯¯ 
||
¯¯  
asset
¯¯! &
.
¯¯& '
clip
¯¯' +
==
¯¯, .
null
¯¯/ 3
)
¯¯3 4
return
˘˘ 
;
˘˘ 
TimelineUndo
˚˚ 
.
˚˚ 
PushDestroyUndo
˚˚ (
(
˚˚( )
this
˚˚) -
,
˚˚- .
asset
˚˚/ 4
,
˚˚4 5
asset
˚˚6 ;
.
˚˚; <
clip
˚˚< @
)
˚˚@ A
;
˚˚A B
}
¸¸ 	
}
˝˝ 
}˛˛ ∂
fC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\IPropertyCollector.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

	interface 
IPropertyCollector '
{		 
void  
PushActiveGameObject !
(! "

GameObject" ,

gameObject- 7
)7 8
;8 9
void 
PopActiveGameObject  
(  !
)! "
;" #
void 
AddFromClip 
( 
AnimationClip &
clip' +
)+ ,
;, -
void 
AddFromClips 
( 
IEnumerable %
<% &
AnimationClip& 3
>3 4
clips5 :
): ;
;; <
void)) 
AddFromName)) 
<)) 
T)) 
>)) 
()) 
string)) "
name))# '
)))' (
where))) .
T))/ 0
:))1 2
	Component))3 <
;))< =
void22 
AddFromName22 
(22 
string22 
name22  $
)22$ %
;22% &
void99 
AddFromClip99 
(99 

GameObject99 #
obj99$ '
,99' (
AnimationClip99) 6
clip997 ;
)99; <
;99< =
void@@ 
AddFromClips@@ 
(@@ 

GameObject@@ $
obj@@% (
,@@( )
IEnumerable@@* 5
<@@5 6
AnimationClip@@6 C
>@@C D
clips@@E J
)@@J K
;@@K L
voidHH 
AddFromNameHH 
<HH 
THH 
>HH 
(HH 

GameObjectHH &
objHH' *
,HH* +
stringHH, 2
nameHH3 7
)HH7 8
whereHH9 >
THH? @
:HHA B
	ComponentHHC L
;HHL M
voidOO 
AddFromNameOO 
(OO 

GameObjectOO #
objOO$ '
,OO' (
stringOO) /
nameOO0 4
)OO4 5
;OO5 6
voidVV 
AddFromNameVV 
(VV 
	ComponentVV "
	componentVV# ,
,VV, -
stringVV. 4
nameVV5 9
)VV9 :
;VV: ;
void]] 
AddFromComponent]] 
(]] 

GameObject]] (
obj]]) ,
,]], -
	Component]]. 7
	component]]8 A
)]]A B
;]]B C
voiddd 
AddObjectPropertiesdd  
(dd  !
Objectdd! '
objdd( +
,dd+ ,
AnimationClipdd- :
clipdd; ?
)dd? @
;dd@ A
}ee 
}ff û
mC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Attributes\TimelineHelpURLAttribute.cs
	namespace		 	
UnityEngine		
 
.		 
Timeline		 
{

 
[ 
Conditional 
( 
$str 
)  
]  !
class 	$
TimelineHelpURLAttribute
 "
:# $
HelpURLAttribute% 5
{ 
const 
string 
	k_BaseURL 
=  
$str! X
;X Y
const 
string 
k_MidURL 
= 
$str  '
;' (
const 
string 
k_EndURL 
= 
$str  '
;' (
const 
string 
k_FallbackVersion &
=' (
$str) 1
;1 2
static 
readonly 
string 
k_PackageVersion /
;/ 0
static $
TimelineHelpURLAttribute '
(' (
)( )
{ 	
PackageInfo 
packageInfo #
=$ %
PackageInfo& 1
.1 2
FindForAssembly2 A
(A B
typeofB H
(H I
TimelineAssetI V
)V W
.W X
AssemblyX `
)` a
;a b
k_PackageVersion 
= 
packageInfo *
==+ -
null. 2
?3 4
k_FallbackVersion5 F
:G H
packageInfoI T
.T U
versionU \
.\ ]
	Substring] f
(f g
$numg h
,h i
$numj k
)k l
;l m
} 	
public $
TimelineHelpURLAttribute '
(' (
Type( ,
type- 1
)1 2
:   
base   
(   
HelpURL   
(   
type   
)    
)    !
{  " #
}  # $
static"" 
string"" 
HelpURL"" 
("" 
Type"" "
type""# '
)""' (
{## 	
return$$ 
$"$$ 
{$$ 
	k_BaseURL$$ 
}$$  
{$$  !
k_PackageVersion$$! 1
}$$1 2
{$$2 3
k_MidURL$$3 ;
}$$; <
{$$< =
type$$= A
.$$A B
FullName$$B J
}$$J K
{$$K L
k_EndURL$$L T
}$$T U
"$$U V
;$$V W
}%% 	
}&& 
}.. –T
ZC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Audio\AudioTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 
TrackClipType 
( 
typeof 
( 
AudioPlayableAsset ,
), -
,- .
false/ 4
)4 5
]5 6
[ 
TrackBindingType 
( 
typeof 
( 
AudioSource (
)( )
)) *
]* +
[ 
ExcludeFromPreset 
] 
[ 
TimelineHelpURL 
( 
typeof 
( 

AudioTrack &
)& '
)' (
]( )
public 

class 

AudioTrack 
: 

TrackAsset (
{ 
[ 	
SerializeField	 
]  
AudioMixerProperties 
m_TrackProperties .
=/ 0
new1 4 
AudioMixerProperties5 I
(I J
)J K
;K L
Playable 
m_LiveMixerPlayable $
=% &
Playable' /
./ 0
Null0 4
;4 5
public 
TimelineClip 

CreateClip &
(& '
	AudioClip' 0
clip1 5
)5 6
{   	
if!! 
(!! 
clip!! 
==!! 
null!! 
)!! 
return"" 
null"" 
;"" 
var$$ 
newClip$$ 
=$$ 
CreateDefaultClip$$ +
($$+ ,
)$$, -
;$$- .
var&& 

audioAsset&& 
=&& 
newClip&& $
.&&$ %
asset&&% *
as&&+ -
AudioPlayableAsset&&. @
;&&@ A
if'' 
('' 

audioAsset'' 
!='' 
null'' "
)''" #

audioAsset(( 
.(( 
clip(( 
=((  !
clip((" &
;((& '
newClip** 
.** 
duration** 
=** 
clip** #
.**# $
length**$ *
;*** +
newClip++ 
.++ 
displayName++ 
=++  !
clip++" &
.++& '
name++' +
;+++ ,
return-- 
newClip-- 
;-- 
}.. 	
internal00 
override00 
Playable00 "
CompileClips00# /
(00/ 0
PlayableGraph000 =
graph00> C
,00C D

GameObject00E O
go00P R
,00R S
IList00T Y
<00Y Z
TimelineClip00Z f
>00f g
timelineClips00h u
,00u v
IntervalTree	00w É
<
00É Ñ
RuntimeElement
00Ñ í
>
00í ì
tree
00î ò
)
00ò ô
{11 	
var22 
clipBlender22 
=22 
AudioMixerPlayable22 0
.220 1
Create221 7
(227 8
graph228 =
,22= >
timelineClips22? L
.22L M
Count22M R
)22R S
;22S T
clipBlender55 
.55 
	GetHandle55 !
(55! "
)55" #
.55# $
SetScriptInstance55$ 5
(555 6
m_TrackProperties556 G
.55G H
Clone55H M
(55M N
)55N O
)55O P
;55P Q
m_LiveMixerPlayable66 
=66  !
clipBlender66" -
;66- .
for<< 
(<< 
int<< 
i<< 
=<< 
$num<< 
;<< 
i<< 
<<< 
timelineClips<<  -
.<<- .
Count<<. 3
;<<3 4
i<<5 6
++<<6 8
)<<8 9
{== 
var>> 
c>> 
=>> 
timelineClips>> %
[>>% &
i>>& '
]>>' (
;>>( )
var?? 
asset?? 
=?? 
c?? 
.?? 
asset?? #
as??$ &
PlayableAsset??' 4
;??4 5
if@@ 
(@@ 
asset@@ 
==@@ 
null@@ !
)@@! "
continueAA 
;AA 
varCC 
bufferCC 
=CC 
$numCC !
;CC! "
varDD 

audioAssetDD 
=DD  
cDD! "
.DD" #
assetDD# (
asDD) +
AudioPlayableAssetDD, >
;DD> ?
ifEE 
(EE 

audioAssetEE 
!=EE !
nullEE" &
)EE& '
bufferFF 
=FF 

audioAssetFF '
.FF' (
bufferingTimeFF( 5
;FF5 6
varHH 
sourceHH 
=HH 
assetHH "
.HH" #
CreatePlayableHH# 1
(HH1 2
graphHH2 7
,HH7 8
goHH9 ;
)HH; <
;HH< =
ifII 
(II 
!II 
sourceII 
.II 
IsValidII #
(II# $
)II$ %
)II% &
continueJJ 
;JJ 
ifLL 
(LL 
sourceLL 
.LL 
IsPlayableOfTypeLL +
<LL+ ,
AudioClipPlayableLL, =
>LL= >
(LL> ?
)LL? @
)LL@ A
{MM 
varOO 
audioClipPlayableOO )
=OO* +
(OO, -
AudioClipPlayableOO- >
)OO> ?
sourceOO? E
;OOE F
varPP 
audioClipPropertiesPP +
=PP, -
audioClipPlayablePP. ?
.PP? @
	GetHandlePP@ I
(PPI J
)PPJ K
.PPK L
	GetObjectPPL U
<PPU V
AudioClipPropertiesPPV i
>PPi j
(PPj k
)PPk l
;PPl m
audioClipPlayableRR %
.RR% &
	SetVolumeRR& /
(RR/ 0
MathfRR0 5
.RR5 6
Clamp01RR6 =
(RR= >
m_TrackPropertiesRR> O
.RRO P
volumeRRP V
*RRW X
audioClipPropertiesRRY l
.RRl m
volumeRRm s
)RRs t
)RRt u
;RRu v
audioClipPlayableSS %
.SS% &
SetStereoPanSS& 2
(SS2 3
MathfSS3 8
.SS8 9
ClampSS9 >
(SS> ?
m_TrackPropertiesSS? P
.SSP Q
	stereoPanSSQ Z
,SSZ [
-SS\ ]
$numSS] a
,SSa b
$numSSc g
)SSg h
)SSh i
;SSi j
audioClipPlayableTT %
.TT% &
SetSpatialBlendTT& 5
(TT5 6
MathfTT6 ;
.TT; <
Clamp01TT< C
(TTC D
m_TrackPropertiesTTD U
.TTU V
spatialBlendTTV b
)TTb c
)TTc d
;TTd e
}UU 
treeWW 
.WW 
AddWW 
(WW 
newWW 
ScheduleRuntimeClipWW 0
(WW0 1
cWW1 2
,WW2 3
sourceWW4 :
,WW: ;
clipBlenderWW< G
,WWG H
bufferWWI O
)WWO P
)WWP Q
;WWQ R
graphXX 
.XX 
ConnectXX 
(XX 
sourceXX $
,XX$ %
$numXX& '
,XX' (
clipBlenderXX) 4
,XX4 5
iXX6 7
)XX7 8
;XX8 9
sourceYY 
.YY 
SetSpeedYY 
(YY  
cYY  !
.YY! "
	timeScaleYY" +
)YY+ ,
;YY, -
sourceZZ 
.ZZ 
SetDurationZZ "
(ZZ" #
cZZ# $
.ZZ$ % 
extrapolatedDurationZZ% 9
)ZZ9 :
;ZZ: ;
clipBlender[[ 
.[[ 
SetInputWeight[[ *
([[* +
source[[+ 1
,[[1 2
$num[[3 7
)[[7 8
;[[8 9
}\\ #
ConfigureTrackAnimation^^ #
(^^# $
tree^^$ (
,^^( )
go^^* ,
,^^, -
clipBlender^^. 9
)^^9 :
;^^: ;
return`` 
clipBlender`` 
;`` 
}aa 	
publicdd 
overridedd 
IEnumerabledd #
<dd# $
PlayableBindingdd$ 3
>dd3 4
outputsdd5 <
{ee 	
getff 
{ff 
yieldff 
returnff  
AudioPlayableBindingff 3
.ff3 4
Createff4 :
(ff: ;
nameff; ?
,ff? @
thisffA E
)ffE F
;ffF G
}ffH I
}gg 	
internaljj 
voidjj 
LiveLinkjj 
(jj 
)jj  
{kk 	
ifll 
(ll 
!ll 
m_LiveMixerPlayablell $
.ll$ %
IsValidll% ,
(ll, -
)ll- .
)ll. /
returnmm 
;mm 
varoo  
audioMixerPropertiesoo $
=oo% &
m_LiveMixerPlayableoo' :
.oo: ;
	GetHandleoo; D
(ooD E
)ooE F
.ooF G
	GetObjectooG P
<ooP Q 
AudioMixerPropertiesooQ e
>ooe f
(oof g
)oog h
;ooh i
ifqq 
(qq  
audioMixerPropertiesqq $
==qq% '
nullqq( ,
)qq, -
returnrr 
;rr  
audioMixerPropertiestt  
.tt  !
volumett! '
=tt( )
m_TrackPropertiestt* ;
.tt; <
volumett< B
;ttB C 
audioMixerPropertiesuu  
.uu  !
	stereoPanuu! *
=uu+ ,
m_TrackPropertiesuu- >
.uu> ?
	stereoPanuu? H
;uuH I 
audioMixerPropertiesvv  
.vv  !
spatialBlendvv! -
=vv. /
m_TrackPropertiesvv0 A
.vvA B
spatialBlendvvB N
;vvN O
}ww 	
void{{ 

OnValidate{{ 
({{ 
){{ 
{|| 	
m_TrackProperties}} 
.}} 
volume}} $
=}}% &
Mathf}}' ,
.}}, -
Clamp01}}- 4
(}}4 5
m_TrackProperties}}5 F
.}}F G
volume}}G M
)}}M N
;}}N O
m_TrackProperties~~ 
.~~ 
	stereoPan~~ '
=~~( )
Mathf~~* /
.~~/ 0
Clamp~~0 5
(~~5 6
m_TrackProperties~~6 G
.~~G H
	stereoPan~~H Q
,~~Q R
-~~S T
$num~~T X
,~~X Y
$num~~Z ^
)~~^ _
;~~_ `
m_TrackProperties 
. 
spatialBlend *
=+ ,
Mathf- 2
.2 3
Clamp013 :
(: ;
m_TrackProperties; L
.L M
spatialBlendM Y
)Y Z
;Z [
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ÚÎ
WC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\TimelineAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[

 
ExcludeFromPreset

 
]

 
[ 
Serializable 
] 
[ 
TimelineHelpURL 
( 
typeof 
( 
TimelineAsset )
)) *
)* +
]+ ,
public 

partial 
class 
TimelineAsset &
:' (
PlayableAsset) 6
,6 7*
ISerializationCallbackReceiver8 V
,V W
ITimelineClipAssetX j
,j k
IPropertyPreviewl |
{ 
public 
enum 
DurationMode  
{ 	
BasedOnClips 
, 
FixedLength 
} 	
[!! 	
Serializable!!	 
]!! 
public"" 
class"" 
EditorSettings"" #
{## 	
internal$$ 
static$$ 
readonly$$ $
double$$% +
kMinFrameRate$$, 9
=$$: ;
TimeUtility$$< G
.$$G H
kFrameRateEpsilon$$H Y
;$$Y Z
internal%% 
static%% 
readonly%% $
double%%% +
kMaxFrameRate%%, 9
=%%: ;
$num%%< B
;%%B C
internal&& 
static&& 
readonly&& $
double&&% +
kDefaultFrameRate&&, =
=&&> ?
$num&&@ D
;&&D E
['' 
HideInInspector'' 
,'' 
SerializeField'' ,
,'', -
FrameRateField''. <
]''< =
double''> D
m_Framerate''E P
=''Q R
kDefaultFrameRate''S d
;''d e
[(( 
HideInInspector(( 
,(( 
SerializeField(( ,
]((, -
bool((. 2
m_ScenePreview((3 A
=((B C
true((D H
;((H I
[-- 
Obsolete-- 
(-- 
$str-- e
,--e f
false--g l
)--l m
]--m n
public.. 
float.. 
fps.. 
{// 
get00 
{11 
return22 
(22 
float22 !
)22! "
m_Framerate22" -
;22- .
}33 
set44 
{55 
m_Framerate66 
=66  !
Mathf66" '
.66' (
Clamp66( -
(66- .
value66. 3
,663 4
(665 6
float666 ;
)66; <
kMinFrameRate66< I
,66I J
(66K L
float66L Q
)66Q R
kMaxFrameRate66R _
)66_ `
;66` a
}77 
}88 
publicBB 
doubleBB 
	frameRateBB #
{CC 
getDD 
{DD 
returnDD 
m_FramerateDD (
;DD( )
}DD* +
setEE 
{EE 
m_FramerateEE !
=EE" #
GetValidFrameRateEE$ 5
(EE5 6
valueEE6 ;
)EE; <
;EE< =
}EE> ?
}FF 
publicSS 
voidSS  
SetStandardFrameRateSS ,
(SS, -
StandardFrameRatesSS- ?
	enumValueSS@ I
)SSI J
{TT 
	FrameRateUU 
rateUU 
=UU  
TimeUtilityUU! ,
.UU, -
ToFrameRateUU- 8
(UU8 9
	enumValueUU9 B
)UUB C
;UUC D
ifVV 
(VV 
rateVV 
.VV 
IsValidVV  
(VV  !
)VV! "
)VV" #
throwWW 
newWW 
ArgumentExceptionWW /
(WW/ 0
StringWW0 6
.WW6 7
FormatWW7 =
(WW= >
$strWW> f
,WWf g
	enumValueXX !
.XX! "
ToStringXX" *
(XX* +
)XX+ ,
)XX, -
)XX- .
;XX. /
m_FramerateYY 
=YY 
rateYY "
.YY" #
rateYY# '
;YY' (
}ZZ 
publicii 
boolii 
scenePreviewii $
{jj 
getkk 
=>kk 
m_ScenePreviewkk %
;kk% &
setll 
=>ll 
m_ScenePreviewll %
=ll& '
valuell( -
;ll- .
}mm 
}nn 	
[pp 	
HideInInspectorpp	 
,pp 
SerializeFieldpp (
]pp( )
Listpp* .
<pp. /
ScriptableObjectpp/ ?
>pp? @
m_TracksppA I
;ppI J
[qq 	
HideInInspectorqq	 
,qq 
SerializeFieldqq (
]qq( )
doubleqq* 0
m_FixedDurationqq1 @
;qq@ A
[rr 	
HideInInspectorrr	 
,rr 
NonSerializedrr '
]rr' (

TrackAssetrr) 3
[rr3 4
]rr4 5
m_CacheOutputTracksrr6 I
;rrI J
[ss 	
HideInInspectorss	 
,ss 
NonSerializedss '
]ss' (
Listss) -
<ss- .

TrackAssetss. 8
>ss8 9
m_CacheRootTracksss: K
;ssK L
[tt 	
HideInInspectortt	 
,tt 
NonSerializedtt '
]tt' (

TrackAssettt) 3
[tt3 4
]tt4 5"
m_CacheFlattenedTrackstt6 L
;ttL M
[uu 	
HideInInspectoruu	 
,uu 
SerializeFielduu (
]uu( )
EditorSettingsuu* 8
m_EditorSettingsuu9 I
=uuJ K
newuuL O
EditorSettingsuuP ^
(uu^ _
)uu_ `
;uu` a
[vv 	
SerializeFieldvv	 
]vv 
DurationModevv %
m_DurationModevv& 4
;vv4 5
[xx 	
HideInInspectorxx	 
,xx 
SerializeFieldxx (
]xx( )
MarkerTrackxx* 5
m_MarkerTrackxx6 C
;xxC D
public}} 
EditorSettings}} 
editorSettings}} ,
{~~ 	
get 
{ 
return 
m_EditorSettings )
;) *
}+ ,
}
ÄÄ 	
public
ÖÖ 
override
ÖÖ 
double
ÖÖ 
duration
ÖÖ '
{
ÜÜ 	
get
áá 
{
àà 
if
ää 
(
ää 
m_DurationMode
ää "
==
ää# %
DurationMode
ää& 2
.
ää2 3
BasedOnClips
ää3 ?
)
ää? @
{
ãã 
var
çç 
discreteDuration
çç (
=
çç) *$
CalculateItemsDuration
çç+ A
(
ççA B
)
ççB C
;
ççC D
if
éé 
(
éé 
discreteDuration
éé (
<=
éé) +
$num
éé, -
)
éé- .
return
èè 
$num
èè "
;
èè" #
return
êê 
(
êê 
double
êê "
)
êê" #
discreteDuration
êê# 3
.
êê3 4
OneTickBefore
êê4 A
(
êêA B
)
êêB C
;
êêC D
}
ëë 
return
ìì 
m_FixedDuration
ìì &
;
ìì& '
}
îî 
}
ïï 	
public
öö 
double
öö 
fixedDuration
öö #
{
õõ 	
get
úú 
{
ùù 
DiscreteTime
ûû 
discreteDuration
ûû -
=
ûû. /
(
ûû0 1
DiscreteTime
ûû1 =
)
ûû= >
m_FixedDuration
ûû> M
;
ûûM N
if
üü 
(
üü 
discreteDuration
üü $
<=
üü% '
$num
üü( )
)
üü) *
return
†† 
$num
†† 
;
†† 
return
££ 
(
££ 
double
££ 
)
££ 
discreteDuration
££ /
.
££/ 0
OneTickBefore
££0 =
(
££= >
)
££> ?
;
££? @
}
§§ 
set
•• 
{
•• 
m_FixedDuration
•• !
=
••" #
Math
••$ (
.
••( )
Max
••) ,
(
••, -
$num
••- 0
,
••0 1
value
••2 7
)
••7 8
;
••8 9
}
••: ;
}
¶¶ 	
public
´´ 
DurationMode
´´ 
durationMode
´´ (
{
¨¨ 	
get
≠≠ 
{
≠≠ 
return
≠≠ 
m_DurationMode
≠≠ '
;
≠≠' (
}
≠≠) *
set
ÆÆ 
{
ÆÆ 
m_DurationMode
ÆÆ  
=
ÆÆ! "
value
ÆÆ# (
;
ÆÆ( )
}
ÆÆ* +
}
ØØ 	
public
∑∑ 
override
∑∑ 
IEnumerable
∑∑ #
<
∑∑# $
PlayableBinding
∑∑$ 3
>
∑∑3 4
outputs
∑∑5 <
{
∏∏ 	
get
ππ 
{
∫∫ 
foreach
ªª 
(
ªª 
var
ªª 
outputTracks
ªª )
in
ªª* ,
GetOutputTracks
ªª- <
(
ªª< =
)
ªª= >
)
ªª> ?
foreach
ºº 
(
ºº 
var
ºº  
output
ºº! '
in
ºº( *
outputTracks
ºº+ 7
.
ºº7 8
outputs
ºº8 ?
)
ºº? @
yield
ΩΩ 
return
ΩΩ $
output
ΩΩ% +
;
ΩΩ+ ,
}
ææ 
}
øø 	
public
ƒƒ 
ClipCaps
ƒƒ 
clipCaps
ƒƒ  
{
≈≈ 	
get
∆∆ 
{
«« 
var
»» 
caps
»» 
=
»» 
ClipCaps
»» #
.
»»# $
All
»»$ '
;
»»' (
foreach
…… 
(
…… 
var
…… 
track
…… "
in
……# %
GetRootTracks
……& 3
(
……3 4
)
……4 5
)
……5 6
{
   
foreach
ÀÀ 
(
ÀÀ 
var
ÀÀ  
clip
ÀÀ! %
in
ÀÀ& (
track
ÀÀ) .
.
ÀÀ. /
clips
ÀÀ/ 4
)
ÀÀ4 5
caps
ÃÃ 
&=
ÃÃ 
clip
ÃÃ  $
.
ÃÃ$ %
clipCaps
ÃÃ% -
;
ÃÃ- .
}
ÕÕ 
return
ŒŒ 
caps
ŒŒ 
;
ŒŒ 
}
œœ 
}
–– 	
public
ÿÿ 
int
ÿÿ 
outputTrackCount
ÿÿ #
{
ŸŸ 	
get
⁄⁄ 
{
€€ $
UpdateOutputTrackCache
‹‹ &
(
‹‹& '
)
‹‹' (
;
‹‹( )
return
›› !
m_CacheOutputTracks
›› *
.
››* +
Length
››+ 1
;
››1 2
}
ﬁﬁ 
}
ﬂﬂ 	
public
ÁÁ 
int
ÁÁ 
rootTrackCount
ÁÁ !
{
ËË 	
get
ÈÈ 
{
ÍÍ "
UpdateRootTrackCache
ÎÎ $
(
ÎÎ$ %
)
ÎÎ% &
;
ÎÎ& '
return
ÏÏ 
m_CacheRootTracks
ÏÏ (
.
ÏÏ( )
Count
ÏÏ) .
;
ÏÏ. /
}
ÌÌ 
}
ÓÓ 	
void
 

OnValidate
 
(
 
)
 
{
ÒÒ 	
editorSettings
ÚÚ 
.
ÚÚ 
	frameRate
ÚÚ $
=
ÚÚ% &
GetValidFrameRate
ÚÚ' 8
(
ÚÚ8 9
editorSettings
ÚÚ9 G
.
ÚÚG H
	frameRate
ÚÚH Q
)
ÚÚQ R
;
ÚÚR S
}
ÛÛ 	
public
˝˝ 

TrackAsset
˝˝ 
GetRootTrack
˝˝ &
(
˝˝& '
int
˝˝' *
index
˝˝+ 0
)
˝˝0 1
{
˛˛ 	"
UpdateRootTrackCache
ˇˇ  
(
ˇˇ  !
)
ˇˇ! "
;
ˇˇ" #
return
ÄÄ 
m_CacheRootTracks
ÄÄ $
[
ÄÄ$ %
index
ÄÄ% *
]
ÄÄ* +
;
ÄÄ+ ,
}
ÅÅ 	
public
àà 
IEnumerable
àà 
<
àà 

TrackAsset
àà %
>
àà% &
GetRootTracks
àà' 4
(
àà4 5
)
àà5 6
{
ââ 	"
UpdateRootTrackCache
ää  
(
ää  !
)
ää! "
;
ää" #
return
ãã 
m_CacheRootTracks
ãã $
;
ãã$ %
}
åå 	
public
ìì 

TrackAsset
ìì 
GetOutputTrack
ìì (
(
ìì( )
int
ìì) ,
index
ìì- 2
)
ìì2 3
{
îî 	$
UpdateOutputTrackCache
ïï "
(
ïï" #
)
ïï# $
;
ïï$ %
return
ññ !
m_CacheOutputTracks
ññ &
[
ññ& '
index
ññ' ,
]
ññ, -
;
ññ- .
}
óó 	
public
†† 
IEnumerable
†† 
<
†† 

TrackAsset
†† %
>
††% &
GetOutputTracks
††' 6
(
††6 7
)
††7 8
{
°° 	$
UpdateOutputTrackCache
¢¢ "
(
¢¢" #
)
¢¢# $
;
¢¢$ %
return
££ !
m_CacheOutputTracks
££ &
;
££& '
}
§§ 	
static
¶¶ 
double
¶¶ 
GetValidFrameRate
¶¶ '
(
¶¶' (
double
¶¶( .
	frameRate
¶¶/ 8
)
¶¶8 9
{
ßß 	
return
®® 
Math
®® 
.
®® 
Min
®® 
(
®® 
Math
®®  
.
®®  !
Max
®®! $
(
®®$ %
	frameRate
®®% .
,
®®. /
EditorSettings
®®0 >
.
®®> ?
kMinFrameRate
®®? L
)
®®L M
,
®®M N
EditorSettings
®®O ]
.
®®] ^
kMaxFrameRate
®®^ k
)
®®k l
;
®®l m
}
©© 	
void
´´ "
UpdateRootTrackCache
´´ !
(
´´! "
)
´´" #
{
¨¨ 	
if
≠≠ 
(
≠≠ 
m_CacheRootTracks
≠≠ !
==
≠≠" $
null
≠≠% )
)
≠≠) *
{
ÆÆ 
if
ØØ 
(
ØØ 
m_Tracks
ØØ 
==
ØØ 
null
ØØ  $
)
ØØ$ %
m_CacheRootTracks
∞∞ %
=
∞∞& '
new
∞∞( +
List
∞∞, 0
<
∞∞0 1

TrackAsset
∞∞1 ;
>
∞∞; <
(
∞∞< =
)
∞∞= >
;
∞∞> ?
else
±± 
{
≤≤ 
m_CacheRootTracks
≥≥ %
=
≥≥& '
new
≥≥( +
List
≥≥, 0
<
≥≥0 1

TrackAsset
≥≥1 ;
>
≥≥; <
(
≥≥< =
m_Tracks
≥≥= E
.
≥≥E F
Count
≥≥F K
)
≥≥K L
;
≥≥L M
if
¥¥ 
(
¥¥ 
markerTrack
¥¥ #
!=
¥¥$ &
null
¥¥' +
)
¥¥+ ,
{
µµ 
m_CacheRootTracks
∂∂ )
.
∂∂) *
Add
∂∂* -
(
∂∂- .
markerTrack
∂∂. 9
)
∂∂9 :
;
∂∂: ;
}
∑∑ 
foreach
ππ 
(
ππ 
var
ππ  
t
ππ! "
in
ππ# %
m_Tracks
ππ& .
)
ππ. /
{
∫∫ 
var
ªª 

trackAsset
ªª &
=
ªª' (
t
ªª) *
as
ªª+ -

TrackAsset
ªª. 8
;
ªª8 9
if
ºº 
(
ºº 

trackAsset
ºº &
!=
ºº' )
null
ºº* .
)
ºº. /
m_CacheRootTracks
ΩΩ -
.
ΩΩ- .
Add
ΩΩ. 1
(
ΩΩ1 2

trackAsset
ΩΩ2 <
)
ΩΩ< =
;
ΩΩ= >
}
ææ 
}
øø 
}
¿¿ 
}
¡¡ 	
void
√√ $
UpdateOutputTrackCache
√√ #
(
√√# $
)
√√$ %
{
ƒƒ 	
if
≈≈ 
(
≈≈ !
m_CacheOutputTracks
≈≈ #
==
≈≈$ &
null
≈≈' +
)
≈≈+ ,
{
∆∆ 
var
«« 
outputTracks
««  
=
««! "
new
««# &
List
««' +
<
««+ ,

TrackAsset
««, 6
>
««6 7
(
««7 8
)
««8 9
;
««9 :
foreach
»» 
(
»» 
var
»» 
flattenedTrack
»» +
in
»», .
flattenedTracks
»»/ >
)
»»> ?
{
…… 
if
   
(
   
flattenedTrack
   &
!=
  ' )
null
  * .
&&
  / 1
flattenedTrack
  2 @
.
  @ A
GetType
  A H
(
  H I
)
  I J
!=
  K M
typeof
  N T
(
  T U

GroupTrack
  U _
)
  _ `
&&
  a c
!
  d e
flattenedTrack
  e s
.
  s t

isSubTrack
  t ~
)
  ~ 
outputTracks
ÀÀ $
.
ÀÀ$ %
Add
ÀÀ% (
(
ÀÀ( )
flattenedTrack
ÀÀ) 7
)
ÀÀ7 8
;
ÀÀ8 9
}
ÃÃ !
m_CacheOutputTracks
ÕÕ #
=
ÕÕ$ %
outputTracks
ÕÕ& 2
.
ÕÕ2 3
ToArray
ÕÕ3 :
(
ÕÕ: ;
)
ÕÕ; <
;
ÕÕ< =
}
ŒŒ 
}
œœ 	
internal
—— 

TrackAsset
—— 
[
—— 
]
—— 
flattenedTracks
—— -
{
““ 	
get
”” 
{
‘‘ 
if
’’ 
(
’’ $
m_CacheFlattenedTracks
’’ *
==
’’+ -
null
’’. 2
)
’’2 3
{
÷÷ 
var
◊◊ 
list
◊◊ 
=
◊◊ 
new
◊◊ "
List
◊◊# '
<
◊◊' (

TrackAsset
◊◊( 2
>
◊◊2 3
(
◊◊3 4
m_Tracks
◊◊4 <
.
◊◊< =
Count
◊◊= B
*
◊◊C D
$num
◊◊E F
)
◊◊F G
;
◊◊G H"
UpdateRootTrackCache
ÿÿ (
(
ÿÿ( )
)
ÿÿ) *
;
ÿÿ* +
list
⁄⁄ 
.
⁄⁄ 
AddRange
⁄⁄ !
(
⁄⁄! "
m_CacheRootTracks
⁄⁄" 3
)
⁄⁄3 4
;
⁄⁄4 5
for
€€ 
(
€€ 
int
€€ 
i
€€ 
=
€€  
$num
€€! "
;
€€" #
i
€€$ %
<
€€& '
m_CacheRootTracks
€€( 9
.
€€9 :
Count
€€: ?
;
€€? @
i
€€A B
++
€€B D
)
€€D E
{
‹‹ #
AddSubTracksRecursive
›› -
(
››- .
m_CacheRootTracks
››. ?
[
››? @
i
››@ A
]
››A B
,
››B C
ref
››D G
list
››H L
)
››L M
;
››M N
}
ﬁﬁ $
m_CacheFlattenedTracks
‡‡ *
=
‡‡+ ,
list
‡‡- 1
.
‡‡1 2
ToArray
‡‡2 9
(
‡‡9 :
)
‡‡: ;
;
‡‡; <
}
·· 
return
‚‚ $
m_CacheFlattenedTracks
‚‚ -
;
‚‚- .
}
„„ 
}
‰‰ 	
public
ÌÌ 
MarkerTrack
ÌÌ 
markerTrack
ÌÌ &
{
ÓÓ 	
get
ÔÔ 
{
ÔÔ 
return
ÔÔ 
m_MarkerTrack
ÔÔ &
;
ÔÔ& '
}
ÔÔ( )
}
 	
internal
ÛÛ 
List
ÛÛ 
<
ÛÛ 
ScriptableObject
ÛÛ &
>
ÛÛ& '
trackObjects
ÛÛ( 4
{
ÙÙ 	
get
ıı 
{
ıı 
return
ıı 
m_Tracks
ıı !
;
ıı! "
}
ıı# $
}
ˆˆ 	
internal
¯¯ 
void
¯¯ 
AddTrackInternal
¯¯ &
(
¯¯& '

TrackAsset
¯¯' 1
track
¯¯2 7
)
¯¯7 8
{
˘˘ 	
m_Tracks
˙˙ 
.
˙˙ 
Add
˙˙ 
(
˙˙ 
track
˙˙ 
)
˙˙ 
;
˙˙  
track
˚˚ 
.
˚˚ 
parent
˚˚ 
=
˚˚ 
this
˚˚ 
;
˚˚  

Invalidate
¸¸ 
(
¸¸ 
)
¸¸ 
;
¸¸ 
}
˝˝ 	
internal
ˇˇ 
void
ˇˇ 
RemoveTrack
ˇˇ !
(
ˇˇ! "

TrackAsset
ˇˇ" ,
track
ˇˇ- 2
)
ˇˇ2 3
{
ÄÄ 	
m_Tracks
ÅÅ 
.
ÅÅ 
Remove
ÅÅ 
(
ÅÅ 
track
ÅÅ !
)
ÅÅ! "
;
ÅÅ" #

Invalidate
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
var
ÉÉ 
parentTrack
ÉÉ 
=
ÉÉ 
track
ÉÉ #
.
ÉÉ# $
parent
ÉÉ$ *
as
ÉÉ+ -

TrackAsset
ÉÉ. 8
;
ÉÉ8 9
if
ÑÑ 
(
ÑÑ 
parentTrack
ÑÑ 
!=
ÑÑ 
null
ÑÑ #
)
ÑÑ# $
{
ÖÖ 
parentTrack
ÜÜ 
.
ÜÜ 
RemoveSubTrack
ÜÜ *
(
ÜÜ* +
track
ÜÜ+ 0
)
ÜÜ0 1
;
ÜÜ1 2
}
áá 
}
àà 	
public
êê 
override
êê 
Playable
êê  
CreatePlayable
êê! /
(
êê/ 0
PlayableGraph
êê0 =
graph
êê> C
,
êêC D

GameObject
êêE O
go
êêP R
)
êêR S
{
ëë 	
bool
íí 
autoRebalanceTree
íí "
=
íí# $
false
íí% *
;
íí* +
autoRebalanceTree
îî 
=
îî 
true
îî  $
;
îî$ %
bool
òò 
createOutputs
òò 
=
òò  
graph
òò! &
.
òò& '
GetPlayableCount
òò' 7
(
òò7 8
)
òò8 9
==
òò: <
$num
òò= >
;
òò> ?
var
ôô 
timeline
ôô 
=
ôô 
TimelinePlayable
ôô +
.
ôô+ ,
Create
ôô, 2
(
ôô2 3
graph
ôô3 8
,
ôô8 9
GetOutputTracks
ôô: I
(
ôôI J
)
ôôJ K
,
ôôK L
go
ôôM O
,
ôôO P
autoRebalanceTree
ôôQ b
,
ôôb c
createOutputs
ôôd q
)
ôôq r
;
ôôr s
timeline
öö 
.
öö 
SetDuration
öö  
(
öö  !
this
öö! %
.
öö% &
duration
öö& .
)
öö. /
;
öö/ 0
timeline
õõ 
.
õõ !
SetPropagateSetTime
õõ (
(
õõ( )
true
õõ) -
)
õõ- .
;
õõ. /
return
úú 
timeline
úú 
.
úú 
IsValid
úú #
(
úú# $
)
úú$ %
?
úú& '
timeline
úú( 0
:
úú1 2
Playable
úú3 ;
.
úú; <
Null
úú< @
;
úú@ A
}
ùù 	
void
¢¢ ,
ISerializationCallbackReceiver
¢¢ +
.
¢¢+ ,
OnBeforeSerialize
¢¢, =
(
¢¢= >
)
¢¢> ?
{
££ 	
	m_Version
§§ 
=
§§ 
k_LatestVersion
§§ '
;
§§' (
}
•• 	
void
™™ ,
ISerializationCallbackReceiver
™™ +
.
™™+ , 
OnAfterDeserialize
™™, >
(
™™> ?
)
™™? @
{
´´ 	

Invalidate
≠≠ 
(
≠≠ 
)
≠≠ 
;
≠≠ 
if
ÆÆ 
(
ÆÆ 
	m_Version
ÆÆ 
<
ÆÆ 
k_LatestVersion
ÆÆ +
)
ÆÆ+ ,
{
ØØ $
UpgradeToLatestVersion
∞∞ &
(
∞∞& '
)
∞∞' (
;
∞∞( )
}
±± 
}
≤≤ 	
internal
µµ 
event
µµ 
Action
µµ !
AssetModifiedOnDisk
µµ 1
;
µµ1 2
void
∑∑ 
__internalAwake
∑∑ 
(
∑∑ 
)
∑∑ 
{
∏∏ 	
if
ππ 
(
ππ 
m_Tracks
ππ 
==
ππ 
null
ππ  
)
ππ  !
m_Tracks
∫∫ 
=
∫∫ 
new
∫∫ 
List
∫∫ #
<
∫∫# $
ScriptableObject
∫∫$ 4
>
∫∫4 5
(
∫∫5 6
)
∫∫6 7
;
∫∫7 8
if
øø 
(
øø 
!
øø 
UnityEditor
øø 
.
øø 
EditorUtility
øø *
.
øø* +
IsPersistent
øø+ 7
(
øø7 8
this
øø8 <
)
øø< =
)
øø= >
return
¿¿ 
;
¿¿ 
for
ƒƒ 
(
ƒƒ 
int
ƒƒ 
i
ƒƒ 
=
ƒƒ 
m_Tracks
ƒƒ !
.
ƒƒ! "
Count
ƒƒ" '
-
ƒƒ( )
$num
ƒƒ* +
;
ƒƒ+ ,
i
ƒƒ- .
>=
ƒƒ/ 1
$num
ƒƒ2 3
;
ƒƒ3 4
i
ƒƒ5 6
--
ƒƒ6 8
)
ƒƒ8 9
{
≈≈ 

TrackAsset
∆∆ 
asset
∆∆  
=
∆∆! "
m_Tracks
∆∆# +
[
∆∆+ ,
i
∆∆, -
]
∆∆- .
as
∆∆/ 1

TrackAsset
∆∆2 <
;
∆∆< =
if
«« 
(
«« 
asset
«« 
!=
«« 
null
«« !
)
««! "
asset
»» 
.
»» 
parent
»»  
=
»»! "
this
»»# '
;
»»' (
object
   
o
   
=
   
m_Tracks
   #
[
  # $
i
  $ %
]
  % &
;
  & '
if
ÀÀ 
(
ÀÀ 
o
ÀÀ 
==
ÀÀ 
null
ÀÀ 
)
ÀÀ 
{
ÃÃ 
Debug
ÕÕ 
.
ÕÕ 

LogWarning
ÕÕ $
(
ÕÕ$ %
$str
ÕÕ% d
)
ÕÕd e
;
ÕÕe f
m_Tracks
ŒŒ 
.
ŒŒ 
RemoveAt
ŒŒ %
(
ŒŒ% &
i
ŒŒ& '
)
ŒŒ' (
;
ŒŒ( )
}
œœ 
}
—— !
AssetModifiedOnDisk
‘‘ 
?
‘‘  
.
‘‘  !
Invoke
‘‘! '
(
‘‘' (
)
‘‘( )
;
‘‘) *
}
÷÷ 	
public
›› 
void
›› 
GatherProperties
›› $
(
››$ %
PlayableDirector
››% 5
director
››6 >
,
››> ? 
IPropertyCollector
››@ R
driver
››S Y
)
››Y Z
{
ﬁﬁ 	
var
ﬂﬂ 
outputTracks
ﬂﬂ 
=
ﬂﬂ 
GetOutputTracks
ﬂﬂ .
(
ﬂﬂ. /
)
ﬂﬂ/ 0
;
ﬂﬂ0 1
foreach
‡‡ 
(
‡‡ 
var
‡‡ 
track
‡‡ 
in
‡‡ !
outputTracks
‡‡" .
)
‡‡. /
{
·· 
if
‚‚ 
(
‚‚ 
!
‚‚ 
track
‚‚ 
.
‚‚ 
mutedInHierarchy
‚‚ +
)
‚‚+ ,
track
„„ 
.
„„ 
GatherProperties
„„ *
(
„„* +
director
„„+ 3
,
„„3 4
driver
„„5 ;
)
„„; <
;
„„< =
}
‰‰ 
}
ÂÂ 	
public
ÔÔ 
void
ÔÔ 
CreateMarkerTrack
ÔÔ %
(
ÔÔ% &
)
ÔÔ& '
{
 	
if
ÒÒ 
(
ÒÒ 
m_MarkerTrack
ÒÒ 
==
ÒÒ  
null
ÒÒ! %
)
ÒÒ% &
{
ÚÚ 
m_MarkerTrack
ÛÛ 
=
ÛÛ 
CreateInstance
ÛÛ  .
<
ÛÛ. /
MarkerTrack
ÛÛ/ :
>
ÛÛ: ;
(
ÛÛ; <
)
ÛÛ< =
;
ÛÛ= >%
TimelineCreateUtilities
ÙÙ '
.
ÙÙ' (!
SaveAssetIntoObject
ÙÙ( ;
(
ÙÙ; <
m_MarkerTrack
ÙÙ< I
,
ÙÙI J
this
ÙÙK O
)
ÙÙO P
;
ÙÙP Q
m_MarkerTrack
ıı 
.
ıı 
parent
ıı $
=
ıı% &
this
ıı' +
;
ıı+ ,
m_MarkerTrack
ˆˆ 
.
ˆˆ 
name
ˆˆ "
=
ˆˆ# $
$str
ˆˆ% .
;
ˆˆ. /

Invalidate
˜˜ 
(
˜˜ 
)
˜˜ 
;
˜˜ 
}
¯¯ 
}
˘˘ 	
internal
¸¸ 
void
¸¸ 

Invalidate
¸¸  
(
¸¸  !
)
¸¸! "
{
˝˝ 	
m_CacheRootTracks
˛˛ 
=
˛˛ 
null
˛˛  $
;
˛˛$ %!
m_CacheOutputTracks
ˇˇ 
=
ˇˇ  !
null
ˇˇ" &
;
ˇˇ& '$
m_CacheFlattenedTracks
ÄÄ "
=
ÄÄ# $
null
ÄÄ% )
;
ÄÄ) *
}
ÅÅ 	
internal
ÉÉ 
void
ÉÉ 2
$UpdateFixedDurationWithItemsDuration
ÉÉ :
(
ÉÉ: ;
)
ÉÉ; <
{
ÑÑ 	
m_FixedDuration
ÖÖ 
=
ÖÖ 
(
ÖÖ 
double
ÖÖ %
)
ÖÖ% &$
CalculateItemsDuration
ÖÖ& <
(
ÖÖ< =
)
ÖÖ= >
;
ÖÖ> ?
}
ÜÜ 	
DiscreteTime
àà $
CalculateItemsDuration
àà +
(
àà+ ,
)
àà, -
{
ââ 	
var
ää 
discreteDuration
ää  
=
ää! "
new
ää# &
DiscreteTime
ää' 3
(
ää3 4
$num
ää4 5
)
ää5 6
;
ää6 7
foreach
ãã 
(
ãã 
var
ãã 
track
ãã 
in
ãã !
flattenedTracks
ãã" 1
)
ãã1 2
{
åå 
if
çç 
(
çç 
track
çç 
.
çç 
muted
çç 
)
çç  
continue
éé 
;
éé 
discreteDuration
êê  
=
êê! "
DiscreteTime
êê# /
.
êê/ 0
Max
êê0 3
(
êê3 4
discreteDuration
êê4 D
,
êêD E
(
êêF G
DiscreteTime
êêG S
)
êêS T
track
êêT Y
.
êêY Z
end
êêZ ]
)
êê] ^
;
êê^ _
}
ëë 
if
ìì 
(
ìì 
discreteDuration
ìì  
<=
ìì! #
$num
ìì$ %
)
ìì% &
return
îî 
new
îî 
DiscreteTime
îî '
(
îî' (
$num
îî( )
)
îî) *
;
îî* +
return
ññ 
discreteDuration
ññ #
;
ññ# $
}
óó 	
static
ôô 
void
ôô #
AddSubTracksRecursive
ôô )
(
ôô) *

TrackAsset
ôô* 4
track
ôô5 :
,
ôô: ;
ref
ôô< ?
List
ôô@ D
<
ôôD E

TrackAsset
ôôE O
>
ôôO P
	allTracks
ôôQ Z
)
ôôZ [
{
öö 	
if
õõ 
(
õõ 
track
õõ 
==
õõ 
null
õõ 
)
õõ 
return
úú 
;
úú 
	allTracks
ûû 
.
ûû 
AddRange
ûû 
(
ûû 
track
ûû $
.
ûû$ %
GetChildTracks
ûû% 3
(
ûû3 4
)
ûû4 5
)
ûû5 6
;
ûû6 7
foreach
üü 
(
üü 

TrackAsset
üü 
subTrack
üü  (
in
üü) +
track
üü, 1
.
üü1 2
GetChildTracks
üü2 @
(
üü@ A
)
üüA B
)
üüB C
{
†† #
AddSubTracksRecursive
°° %
(
°°% &
subTrack
°°& .
,
°°. /
ref
°°0 3
	allTracks
°°4 =
)
°°= >
;
°°> ?
}
¢¢ 
}
££ 	
}
§§ 
}•• Ÿî
kC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Playables\DirectorControlPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

class #
DirectorControlPlayable (
:) *
PlayableBehaviour+ <
{ 
public 
PlayableDirector 
director  (
;( )
private 
bool 

m_SyncTime 
=  !
false" '
;' (
private 
double 
m_AssetDuration &
=' (
double) /
./ 0
MaxValue0 8
;8 9
public 
static 
ScriptPlayable $
<$ %#
DirectorControlPlayable% <
>< =
Create> D
(D E
PlayableGraphE R
graphS X
,X Y
PlayableDirectorZ j
directork s
)s t
{ 	
if   
(   
director   
==   
null    
)    !
return!! 
ScriptPlayable!! %
<!!% &#
DirectorControlPlayable!!& =
>!!= >
.!!> ?
Null!!? C
;!!C D
var## 
handle## 
=## 
ScriptPlayable## '
<##' (#
DirectorControlPlayable##( ?
>##? @
.##@ A
Create##A G
(##G H
graph##H M
)##M N
;##N O
handle$$ 
.$$ 
GetBehaviour$$ 
($$  
)$$  !
.$$! "
director$$" *
=$$+ ,
director$$- 5
;$$5 6
if'' 
('' 
!'' 
Application'' 
.'' 
	isPlaying'' &
&&''' )
UnityEditor''* 5
.''5 6
PrefabUtility''6 C
.''C D"
IsPartOfPrefabInstance''D Z
(''Z [
director''[ c
)''c d
)''d e
UnityEditor(( 
.(( 
PrefabUtility(( )
.(() *!
prefabInstanceUpdated((* ?
+=((@ B
handle((C I
.((I J
GetBehaviour((J V
(((V W
)((W X
.((X Y
OnPrefabUpdated((Y h
;((h i
return++ 
handle++ 
;++ 
},, 	
public22 
override22 
void22 
OnPlayableDestroy22 .
(22. /
Playable22/ 7
playable228 @
)22@ A
{33 	
if55 
(55 
!55 
Application55 
.55 
	isPlaying55 &
)55& '
UnityEditor66 
.66 
PrefabUtility66 )
.66) *!
prefabInstanceUpdated66* ?
-=66@ B
OnPrefabUpdated66C R
;66R S
if88 
(88 
director88 
!=88 
null88  
&&88! #
director88$ ,
.88, -
playableAsset88- :
!=88; =
null88> B
)88B C
director99 
.99 
Stop99 
(99 
)99 
;99  
}:: 	
publicAA 
overrideAA 
voidAA 
PrepareFrameAA )
(AA) *
PlayableAA* 2
playableAA3 ;
,AA; <
	FrameDataAA= F
infoAAG K
)AAK L
{BB 	
ifCC 
(CC 
directorCC 
==CC 
nullCC  
||CC! #
!CC$ %
directorCC% -
.CC- .
isActiveAndEnabledCC. @
||CCA C
directorCCD L
.CCL M
playableAssetCCM Z
==CC[ ]
nullCC^ b
)CCb c
returnDD 
;DD 

m_SyncTimeGG 
|=GG 
(GG 
infoGG 
.GG  
evaluationTypeGG  .
==GG/ 1
	FrameDataGG2 ;
.GG; <
EvaluationTypeGG< J
.GGJ K
EvaluateGGK S
)GGS T
||GGU W
DetectDiscontinuityHH #
(HH# $
playableHH$ ,
,HH, -
infoHH. 2
)HH2 3
;HH3 4
	SyncSpeedJJ 
(JJ 
infoJJ 
.JJ 
effectiveSpeedJJ )
)JJ) *
;JJ* +
	SyncStartKK 
(KK 
playableKK 
.KK 
GetGraphKK '
(KK' (
)KK( )
,KK) *
playableKK+ 3
.KK3 4
GetTimeKK4 ;
(KK; <
)KK< =
)KK= >
;KK> ?
}OO 	
publicVV 
overrideVV 
voidVV 
OnBehaviourPlayVV ,
(VV, -
PlayableVV- 5
playableVV6 >
,VV> ?
	FrameDataVV@ I
infoVVJ N
)VVN O
{WW 	

m_SyncTimeXX 
=XX 
trueXX 
;XX 
ifZZ 
(ZZ 
directorZZ 
!=ZZ 
nullZZ  
&&ZZ! #
directorZZ$ ,
.ZZ, -
playableAssetZZ- :
!=ZZ; =
nullZZ> B
)ZZB C
m_AssetDuration[[ 
=[[  !
director[[" *
.[[* +
playableAsset[[+ 8
.[[8 9
duration[[9 A
;[[A B
}\\ 	
publiccc 
overridecc 
voidcc 
OnBehaviourPausecc -
(cc- .
Playablecc. 6
playablecc7 ?
,cc? @
	FrameDataccA J
infoccK O
)ccO P
{dd 	
ifee 
(ee 
directoree 
!=ee 
nullee  
&&ee! #
directoree$ ,
.ee, -
playableAssetee- :
!=ee; =
nullee> B
)eeB C
{ff 
ifgg 
(gg 
infogg 
.gg 
effectivePlayStategg +
==gg, .
	PlayStategg/ 8
.gg8 9
Playinggg9 @
)gg@ A
directorhh 
.hh 
Pausehh "
(hh" #
)hh# $
;hh$ %
elseii 
directorjj 
.jj 
Stopjj !
(jj! "
)jj" #
;jj# $
}kk 
}ll 	
publictt 
overridett 
voidtt 
ProcessFramett )
(tt) *
Playablett* 2
playablett3 ;
,tt; <
	FrameDatatt= F
infottG K
,ttK L
objectttM S

playerDatattT ^
)tt^ _
{uu 	
ifvv 
(vv 
directorvv 
==vv 
nullvv  
||vv! #
!vv$ %
directorvv% -
.vv- .
isActiveAndEnabledvv. @
||vvA C
directorvvD L
.vvL M
playableAssetvvM Z
==vv[ ]
nullvv^ b
)vvb c
returnww 
;ww 
ifyy 
(yy 

m_SyncTimeyy 
||yy 
DetectOutOfSyncyy -
(yy- .
playableyy. 6
)yy6 7
)yy7 8
{zz 

UpdateTime{{ 
({{ 
playable{{ #
){{# $
;{{$ %
if|| 
(|| 
director|| 
.|| 
playableGraph|| *
.||* +
IsValid||+ 2
(||2 3
)||3 4
)||4 5
{}} 
director~~ 
.~~ 
playableGraph~~ *
.~~* +
Evaluate~~+ 3
(~~3 4
)~~4 5
;~~5 6
director
ÄÄ 
.
ÄÄ 
playableGraph
ÄÄ *
.
ÄÄ* +#
SynchronizeEvaluation
ÄÄ+ @
(
ÄÄ@ A
playable
ÄÄA I
.
ÄÄI J
GetGraph
ÄÄJ R
(
ÄÄR S
)
ÄÄS T
)
ÄÄT U
;
ÄÄU V
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
director
ÖÖ 
.
ÖÖ 
Evaluate
ÖÖ %
(
ÖÖ% &
)
ÖÖ& '
;
ÖÖ' (
}
ÜÜ 
}
áá 

m_SyncTime
ââ 
=
ââ 
false
ââ 
;
ââ 
SyncStop
ãã 
(
ãã 
playable
ãã 
.
ãã 
GetGraph
ãã &
(
ãã& '
)
ãã' (
,
ãã( )
playable
ãã* 2
.
ãã2 3
GetTime
ãã3 :
(
ãã: ;
)
ãã; <
)
ãã< =
;
ãã= >
}
çç 	
void
êê 
OnPrefabUpdated
êê 
(
êê 

GameObject
êê '
go
êê( *
)
êê* +
{
ëë 	
if
ìì 
(
ìì 
UnityEditor
ìì 
.
ìì 
PrefabUtility
ìì )
.
ìì) *
GetRootGameObject
ìì* ;
(
ìì; <
director
ìì< D
)
ììD E
==
ììF H
go
ììI K
)
ììK L
director
îî 
.
îî 
RebuildGraph
îî %
(
îî% &
)
îî& '
;
îî' (
}
ïï 	
void
ôô 
	SyncSpeed
ôô 
(
ôô 
double
ôô 
speed
ôô #
)
ôô# $
{
öö 	
if
õõ 
(
õõ 
director
õõ 
.
õõ 
playableGraph
õõ &
.
õõ& '
IsValid
õõ' .
(
õõ. /
)
õõ/ 0
)
õõ0 1
{
úú 
int
ùù 
roots
ùù 
=
ùù 
director
ùù $
.
ùù$ %
playableGraph
ùù% 2
.
ùù2 3"
GetRootPlayableCount
ùù3 G
(
ùùG H
)
ùùH I
;
ùùI J
for
ûû 
(
ûû 
int
ûû 
i
ûû 
=
ûû 
$num
ûû 
;
ûû 
i
ûû  !
<
ûû" #
roots
ûû$ )
;
ûû) *
i
ûû+ ,
++
ûû, .
)
ûû. /
{
üü 
var
†† 
rootPlayable
†† $
=
††% &
director
††' /
.
††/ 0
playableGraph
††0 =
.
††= >
GetRootPlayable
††> M
(
††M N
i
††N O
)
††O P
;
††P Q
if
°° 
(
°° 
rootPlayable
°° $
.
°°$ %
IsValid
°°% ,
(
°°, -
)
°°- .
)
°°. /
{
¢¢ 
rootPlayable
££ $
.
££$ %
SetSpeed
££% -
(
££- .
speed
££. 3
)
££3 4
;
££4 5
}
§§ 
}
•• 
}
¶¶ 
}
ßß 	
void
©© 
	SyncStart
©© 
(
©© 
PlayableGraph
©© $
graph
©©% *
,
©©* +
double
©©, 2
time
©©3 7
)
©©7 8
{
™™ 	
if
´´ 
(
´´ 
director
´´ 
.
´´ 
state
´´ 
==
´´ !
	PlayState
´´" +
.
´´+ ,
Playing
´´, 3
||
¨¨ 
!
¨¨ 
graph
¨¨ 
.
¨¨ 
	IsPlaying
¨¨ #
(
¨¨# $
)
¨¨$ %
||
≠≠ 
(
≠≠ 
director
≠≠ 
.
≠≠ 
extrapolationMode
≠≠ .
==
≠≠/ 1
DirectorWrapMode
≠≠2 B
.
≠≠B C
None
≠≠C G
&&
≠≠H J
time
≠≠K O
>
≠≠P Q
m_AssetDuration
≠≠R a
)
≠≠a b
)
≠≠b c
return
ÆÆ 
;
ÆÆ 
if
∞∞ 
(
∞∞ 
graph
∞∞ 
.
∞∞ %
IsMatchFrameRateEnabled
∞∞ -
(
∞∞- .
)
∞∞. /
)
∞∞/ 0
director
±± 
.
±± 
Play
±± 
(
±± 
graph
±± #
.
±±# $
GetFrameRate
±±$ 0
(
±±0 1
)
±±1 2
)
±±2 3
;
±±3 4
else
≤≤ 
director
≥≥ 
.
≥≥ 
Play
≥≥ 
(
≥≥ 
)
≥≥ 
;
≥≥  
}
∑∑ 	
void
ππ 
SyncStop
ππ 
(
ππ 
PlayableGraph
ππ #
graph
ππ$ )
,
ππ) *
double
ππ+ 1
time
ππ2 6
)
ππ6 7
{
∫∫ 	
if
ªª 
(
ªª 
director
ªª 
.
ªª 
state
ªª 
==
ªª !
	PlayState
ªª" +
.
ªª+ ,
Paused
ªª, 2
)
ªª2 3
return
ºº 
;
ºº 
bool
ææ 
expectedFinished
ææ !
=
ææ" #
director
ææ$ ,
.
ææ, -
extrapolationMode
ææ- >
==
ææ? A
DirectorWrapMode
ææB R
.
ææR S
None
ææS W
&&
ææX Z
time
ææ[ _
>
ææ` a
m_AssetDuration
ææb q
;
ææq r
if
øø 
(
øø 
expectedFinished
øø  
||
øø! #
!
øø$ %
graph
øø% *
.
øø* +
	IsPlaying
øø+ 4
(
øø4 5
)
øø5 6
)
øø6 7
director
¿¿ 
.
¿¿ 
Pause
¿¿ 
(
¿¿ 
)
¿¿  
;
¿¿  !
}
¡¡ 	
bool
√√ !
DetectDiscontinuity
√√  
(
√√  !
Playable
√√! )
playable
√√* 2
,
√√2 3
	FrameData
√√4 =
info
√√> B
)
√√B C
{
ƒƒ 	
return
≈≈ 
Math
≈≈ 
.
≈≈ 
Abs
≈≈ 
(
≈≈ 
playable
≈≈ $
.
≈≈$ %
GetTime
≈≈% ,
(
≈≈, -
)
≈≈- .
-
≈≈/ 0
playable
≈≈1 9
.
≈≈9 :
GetPreviousTime
≈≈: I
(
≈≈I J
)
≈≈J K
-
≈≈L M
info
≈≈N R
.
≈≈R S
m_DeltaTime
≈≈S ^
*
≈≈_ `
info
≈≈a e
.
≈≈e f
m_EffectiveSpeed
≈≈f v
)
≈≈v w
>
≈≈x y
DiscreteTime≈≈z Ü
.≈≈Ü á
	tickValue≈≈á ê
;≈≈ê ë
}
∆∆ 	
bool
»» 
DetectOutOfSync
»» 
(
»» 
Playable
»» %
playable
»»& .
)
»». /
{
…… 	
double
   
expectedTime
   
=
    !
playable
  " *
.
  * +
GetTime
  + 2
(
  2 3
)
  3 4
;
  4 5
if
ÀÀ 
(
ÀÀ 
playable
ÀÀ 
.
ÀÀ 
GetTime
ÀÀ  
(
ÀÀ  !
)
ÀÀ! "
>=
ÀÀ# %
m_AssetDuration
ÀÀ& 5
)
ÀÀ5 6
{
ÃÃ 
switch
ÕÕ 
(
ÕÕ 
director
ÕÕ  
.
ÕÕ  !
extrapolationMode
ÕÕ! 2
)
ÕÕ2 3
{
ŒŒ 
case
œœ 
DirectorWrapMode
œœ )
.
œœ) *
None
œœ* .
:
œœ. /
expectedTime
–– $
=
––% &
m_AssetDuration
––' 6
;
––6 7
break
—— 
;
—— 
case
““ 
DirectorWrapMode
““ )
.
““) *
Hold
““* .
:
““. /
expectedTime
”” $
=
””% &
m_AssetDuration
””' 6
;
””6 7
break
‘‘ 
;
‘‘ 
case
’’ 
DirectorWrapMode
’’ )
.
’’) *
Loop
’’* .
:
’’. /
expectedTime
÷÷ $
%=
÷÷% '
m_AssetDuration
÷÷( 7
;
÷÷7 8
break
◊◊ 
;
◊◊ 
}
ÿÿ 
}
ŸŸ 
if
€€ 
(
€€ 
!
€€ 
Mathf
€€ 
.
€€ 
Approximately
€€ $
(
€€$ %
(
€€% &
float
€€& +
)
€€+ ,
expectedTime
€€, 8
,
€€8 9
(
€€: ;
float
€€; @
)
€€@ A
director
€€A I
.
€€I J
time
€€J N
)
€€N O
)
€€O P
{
‹‹ 
double
ﬁﬁ 
	lastDelta
ﬁﬁ  
=
ﬁﬁ! "
playable
ﬁﬁ# +
.
ﬁﬁ+ ,
GetTime
ﬁﬁ, 3
(
ﬁﬁ3 4
)
ﬁﬁ4 5
-
ﬁﬁ6 7
playable
ﬁﬁ8 @
.
ﬁﬁ@ A
GetPreviousTime
ﬁﬁA P
(
ﬁﬁP Q
)
ﬁﬁQ R
;
ﬁﬁR S
if
ﬂﬂ 
(
ﬂﬂ 
UnityEditor
ﬂﬂ 
.
ﬂﬂ  
Unsupported
ﬂﬂ  +
.
ﬂﬂ+ ,
IsDeveloperBuild
ﬂﬂ, <
(
ﬂﬂ< =
)
ﬂﬂ= >
)
ﬂﬂ> ?
Debug
‡‡ 
.
‡‡ 
LogWarningFormat
‡‡ *
(
‡‡* +
$str‡‡+ ’
,‡‡’ ÷
playable‡‡◊ ﬂ
.‡‡ﬂ ‡
GetTime‡‡‡ Á
(‡‡Á Ë
)‡‡Ë È
,‡‡È Í
director‡‡Î Û
.‡‡Û Ù
time‡‡Ù ¯
,‡‡¯ ˘
director‡‡˙ Ç
.‡‡Ç É
name‡‡É á
,‡‡á à
	lastDelta‡‡â í
)‡‡í ì
;‡‡ì î
return
‚‚ 
true
‚‚ 
;
‚‚ 
}
„„ 
return
‰‰ 
false
‰‰ 
;
‰‰ 
}
ÂÂ 	
void
ËË 

UpdateTime
ËË 
(
ËË 
Playable
ËË  
playable
ËË! )
)
ËË) *
{
ÈÈ 	
double
ÍÍ 
duration
ÍÍ 
=
ÍÍ 
Math
ÍÍ "
.
ÍÍ" #
Max
ÍÍ# &
(
ÍÍ& '
$num
ÍÍ' *
,
ÍÍ* +
director
ÍÍ, 4
.
ÍÍ4 5
playableAsset
ÍÍ5 B
.
ÍÍB C
duration
ÍÍC K
)
ÍÍK L
;
ÍÍL M
switch
ÎÎ 
(
ÎÎ 
director
ÎÎ 
.
ÎÎ 
extrapolationMode
ÎÎ .
)
ÎÎ. /
{
ÏÏ 
case
ÌÌ 
DirectorWrapMode
ÌÌ %
.
ÌÌ% &
Hold
ÌÌ& *
:
ÌÌ* +
director
ÓÓ 
.
ÓÓ 
time
ÓÓ !
=
ÓÓ" #
Math
ÓÓ$ (
.
ÓÓ( )
Min
ÓÓ) ,
(
ÓÓ, -
duration
ÓÓ- 5
,
ÓÓ5 6
Math
ÓÓ7 ;
.
ÓÓ; <
Max
ÓÓ< ?
(
ÓÓ? @
$num
ÓÓ@ A
,
ÓÓA B
playable
ÓÓC K
.
ÓÓK L
GetTime
ÓÓL S
(
ÓÓS T
)
ÓÓT U
)
ÓÓU V
)
ÓÓV W
;
ÓÓW X
break
ÔÔ 
;
ÔÔ 
case
 
DirectorWrapMode
 %
.
% &
Loop
& *
:
* +
director
ÒÒ 
.
ÒÒ 
time
ÒÒ !
=
ÒÒ" #
Math
ÒÒ$ (
.
ÒÒ( )
Max
ÒÒ) ,
(
ÒÒ, -
$num
ÒÒ- .
,
ÒÒ. /
playable
ÒÒ0 8
.
ÒÒ8 9
GetTime
ÒÒ9 @
(
ÒÒ@ A
)
ÒÒA B
%
ÒÒC D
duration
ÒÒE M
)
ÒÒM N
;
ÒÒN O
break
ÚÚ 
;
ÚÚ 
case
ÛÛ 
DirectorWrapMode
ÛÛ %
.
ÛÛ% &
None
ÛÛ& *
:
ÛÛ* +
director
ÙÙ 
.
ÙÙ 
time
ÙÙ !
=
ÙÙ" #
Math
ÙÙ$ (
.
ÙÙ( )
Min
ÙÙ) ,
(
ÙÙ, -
duration
ÙÙ- 5
,
ÙÙ5 6
Math
ÙÙ7 ;
.
ÙÙ; <
Max
ÙÙ< ?
(
ÙÙ? @
$num
ÙÙ@ A
,
ÙÙA B
playable
ÙÙC K
.
ÙÙK L
GetTime
ÙÙL S
(
ÙÙS T
)
ÙÙT U
)
ÙÙU V
)
ÙÙV W
;
ÙÙW X
break
ıı 
;
ıı 
}
ˆˆ 
}
˜˜ 	
}
¯¯ 
}˘˘ ©¢
mC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\AnimationPreviewUtilities.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static		 

class		 %
AnimationPreviewUtilities		 *
{

 
private 
const 
string 
k_PosX #
=$ %
$str& 9
;9 :
private 
const 
string 
k_PosY #
=$ %
$str& 9
;9 :
private 
const 
string 
k_PosZ #
=$ %
$str& 9
;9 :
private 
const 
string 
k_RotX #
=$ %
$str& 9
;9 :
private 
const 
string 
k_RotY #
=$ %
$str& 9
;9 :
private 
const 
string 
k_RotZ #
=$ %
$str& 9
;9 :
private 
const 
string 
k_RotW #
=$ %
$str& 9
;9 :
private 
const 
string 
k_ScaleX %
=& '
$str( 8
;8 9
private 
const 
string 
k_ScaleY %
=& '
$str( 8
;8 9
private 
const 
string 
k_ScaleZ %
=& '
$str( 8
;8 9
private 
const 
string 
k_EulerAnglesRaw -
=. /
$str0 E
;E F
private 
const 
string 
k_EulerHint (
=) *
$str+ C
;C D
private 
const 
string 
k_Pos "
=# $
$str% 6
;6 7
private 
const 
string 
k_Rot "
=# $
$str% 6
;6 7
private 
const 
string 
	k_MotionT &
=' (
$str) 2
;2 3
private 
const 
string 
	k_MotionQ &
=' (
$str) 2
;2 3
private 
const 
string 
k_RootT $
=% &
$str' .
;. /
private 
const 
string 
k_RootQ $
=% &
$str' .
;. /
internal 
static 
Object 
s_PreviewDriver .
;. /
internal"" 
class"" &
EditorCurveBindingComparer"" 1
:""2 3
IEqualityComparer""4 E
<""E F
EditorCurveBinding""F X
>""X Y
{## 	
public$$ 
bool$$ 
Equals$$ 
($$ 
EditorCurveBinding$$ 1
x$$2 3
,$$3 4
EditorCurveBinding$$5 G
y$$H I
)$$I J
{$$K L
return$$M S
x$$T U
.$$U V
path$$V Z
.$$Z [
Equals$$[ a
($$a b
y$$b c
.$$c d
path$$d h
)$$h i
&&$$j l
x$$m n
.$$n o
type$$o s
==$$t v
y$$w x
.$$x y
type$$y }
&&	$$~ Ä
x
$$Å Ç
.
$$Ç É
propertyName
$$É è
==
$$ê í
y
$$ì î
.
$$î ï
propertyName
$$ï °
;
$$° ¢
}
$$£ §
public%% 
int%% 
GetHashCode%% "
(%%" #
EditorCurveBinding%%# 5
obj%%6 9
)%%9 :
{&& 
return'' 
obj'' 
.'' 
propertyName'' '
.''' (
GetHashCode''( 3
(''3 4
)''4 5
^''6 7
obj''8 ;
.''; <
path''< @
.''@ A
GetHashCode''A L
(''L M
)''M N
;''N O
}(( 
public** 
static** 
readonly** "&
EditorCurveBindingComparer**# =
Instance**> F
=**G H
new**I L&
EditorCurveBindingComparer**M g
(**g h
)**h i
;**i j
}++ 	
private.. 
static.. 
readonly.. 

Dictionary..  *
<..* +
EditorCurveBinding..+ =
,..= >
int..? B
>..B C

s_CurveSet..D N
=..O P
new..Q T

Dictionary..U _
<.._ `
EditorCurveBinding..` r
,..r s
int..t w
>..w x
(..x y
$num..y ~
,..~ (
EditorCurveBindingComparer
..Ä ö
.
..ö õ
Instance
..õ £
)
..£ §
;
..§ •
private// 
static// 
readonly//  
AnimatorBindingCache//  4
s_BindingCache//5 C
=//D E
new//F I 
AnimatorBindingCache//J ^
(//^ _
)//_ `
;//` a
private33 
static33 
bool33 
FastStartsWith33 *
(33* +
string33+ 1
a332 3
,333 4
string335 ;
	toCompare33< E
)33E F
{44 	
int55 
aLen55 
=55 
a55 
.55 
Length55 
;55  
int66 
bLen66 
=66 
	toCompare66  
.66  !
Length66! '
;66' (
int88 
ap88 
=88 
$num88 
;88 
int99 
bp99 
=99 
$num99 
;99 
while;; 
(;; 
ap;; 
<;; 
aLen;; 
&&;; 
bp;;  "
<;;# $
bLen;;% )
&&;;* ,
a;;- .
[;;. /
ap;;/ 1
];;1 2
==;;3 5
	toCompare;;6 ?
[;;? @
bp;;@ B
];;B C
);;C D
{<< 
ap== 
++== 
;== 
bp>> 
++>> 
;>> 
}?? 
returnAA 
(AA 
bpAA 
==AA 
bLenAA 
)AA 
;AA  
}BB 	
publicDD 
staticDD 
voidDD 
ClearCachesDD &
(DD& '
)DD' (
{EE 	
s_BindingCacheFF 
.FF 
ClearFF  
(FF  !
)FF! "
;FF" #

s_CurveSetGG 
.GG 
ClearGG 
(GG 
)GG 
;GG 
}HH 	
publicJJ 
staticJJ 
EditorCurveBindingJJ (
[JJ( )
]JJ) *
GetBindingsJJ+ 6
(JJ6 7

GameObjectJJ7 A
animatorRootJJB N
,JJN O
IEnumerableJJP [
<JJ[ \
AnimationClipJJ\ i
>JJi j
clipsJJk p
)JJp q
{KK 	

s_CurveSetLL 
.LL 
ClearLL 
(LL 
)LL 
;LL 
foreachMM 
(MM 
varMM 
clipMM 
inMM  
clipsMM! &
)MM& '
{NN 
AddBindingsOO 
(OO 
s_BindingCacheOO *
.OO* +
GetCurveBindingsOO+ ;
(OO; <
clipOO< @
)OO@ A
)OOA B
;OOB C
}PP 
ifSS 
(SS !
NeedsSkeletonBindingsSS %
(SS% &

s_CurveSetSS& 0
.SS0 1
KeysSS1 5
)SS5 6
)SS6 7
AddBindingsTT 
(TT 
s_BindingCacheTT *
.TT* +
GetAnimatorBindingsTT+ >
(TT> ?
animatorRootTT? K
)TTK L
)TTL M
;TTM N
varVV 
bindingsVV 
=VV 
newVV 
EditorCurveBindingVV 1
[VV1 2

s_CurveSetVV2 <
.VV< =
KeysVV= A
.VVA B
CountVVB G
]VVG H
;VVH I

s_CurveSetWW 
.WW 
KeysWW 
.WW 
CopyToWW "
(WW" #
bindingsWW# +
,WW+ ,
$numWW- .
)WW. /
;WW/ 0
returnXX 
bindingsXX 
;XX 
}YY 	
public[[ 
static[[ 
int[[ 
GetClipHash[[ %
([[% &
List[[& *
<[[* +
AnimationClip[[+ 8
>[[8 9
clips[[: ?
)[[? @
{\\ 	
int]] 
hash]] 
=]] 
$num]] 
;]] 
foreach__ 
(__ 
var__ 
clip__ 
in__  
clips__! &
)__& '
{`` 
varaa 
statsaa 
=aa 
AnimationUtilityaa ,
.aa, -!
GetAnimationClipStatsaa- B
(aaB C
clipaaC G
)aaG H
;aaH I
hashbb 
=bb 
HashUtilitybb "
.bb" #
CombineHashbb# .
(bb. /
hashbb/ 3
,bb3 4
clipbb5 9
.bb9 :
GetHashCodebb: E
(bbE F
)bbF G
,bbG H
statsbbI N
.bbN O
clipsbbO T
,bbT U
statsbbV [
.bb[ \
sizebb\ `
,bb` a
statsbbb g
.bbg h
totalCurvesbbh s
)bbs t
;bbt u
}cc 
returndd 
hashdd 
;dd 
}ee 	
publicgg 
staticgg 
voidgg 
PreviewFromCurvesgg ,
(gg, -

GameObjectgg- 7
animatorRootgg8 D
,ggD E
IEnumerableggF Q
<ggQ R
EditorCurveBindingggR d
>ggd e
keysggf j
)ggj k
{hh 	
ifii 
(ii 
!ii 
AnimationModeii 
.ii 
InAnimationModeii .
(ii. /
)ii/ 0
)ii0 1
returnjj 
;jj 
varll 

avatarRootll 
=ll 
GetAvatarRootll *
(ll* +
animatorRootll+ 7
)ll7 8
;ll8 9
foreachmm 
(mm 
varmm 
bindingmm  
inmm! #
keysmm$ (
)mm( )
{nn 
ifoo 
(oo 
IsAvatarBindingoo #
(oo# $
bindingoo$ +
)oo+ ,
||oo- /
IsEuleroo0 7
(oo7 8
bindingoo8 ?
)oo? @
)oo@ A
continuepp 
;pp 
boolrr 
isTransformrr  
=rr! "
typeofrr# )
(rr) *
	Transformrr* 3
)rr3 4
.rr4 5
IsAssignableFromrr5 E
(rrE F
bindingrrF M
.rrM N
typerrN R
)rrR S
;rrS T
ifss 
(ss 
isTransformss 
&&ss  "
bindingss# *
.ss* +
propertyNamess+ 7
.ss7 8
Equalsss8 >
(ss> ? 
AnimatorBindingCachess? S
.ssS T
TRPlaceHolderssT a
)ssa b
)ssb c
AddTRBindingtt  
(tt  !
animatorRoottt! -
,tt- .
bindingtt/ 6
)tt6 7
;tt7 8
elseuu 
ifuu 
(uu 
isTransformuu $
&&uu% '
bindinguu( /
.uu/ 0
propertyNameuu0 <
.uu< =
Equalsuu= C
(uuC D 
AnimatorBindingCacheuuD X
.uuX Y
ScalePlaceholderuuY i
)uui j
)uuj k
AddScaleBindingvv #
(vv# $
animatorRootvv$ 0
,vv0 1
bindingvv2 9
)vv9 :
;vv: ;
elseww 
AnimationModexx !
.xx! "!
AddEditorCurveBindingxx" 7
(xx7 8

avatarRootxx8 B
,xxB C
bindingxxD K
)xxK L
;xxL M
}yy 
}zz 	
public|| 
static|| 
AnimationClip|| #
CreateDefaultClip||$ 5
(||5 6

GameObject||6 @
animatorRoot||A M
,||M N
IEnumerable||O Z
<||Z [
EditorCurveBinding||[ m
>||m n
keys||o s
)||s t
{}} 	
AnimationClip~~ 
animClip~~ "
=~~# $
new~~% (
AnimationClip~~) 6
(~~6 7
)~~7 8
{~~9 :
name~~; ?
=~~@ A
$str~~B O
}~~P Q
;~~Q R
var 
	keyFrames 
= 
new 
[  
]  !
{" #
new# &
Keyframe' /
(/ 0
$num0 1
,1 2
$num3 4
)4 5
}5 6
;6 7
var
ÄÄ 
curve
ÄÄ 
=
ÄÄ 
new
ÄÄ 
AnimationCurve
ÄÄ *
(
ÄÄ* +
	keyFrames
ÄÄ+ 4
)
ÄÄ4 5
;
ÄÄ5 6
bool
ÅÅ 

rootMotion
ÅÅ 
=
ÅÅ 
false
ÅÅ #
;
ÅÅ# $
var
ÇÇ 

avatarRoot
ÇÇ 
=
ÇÇ 
GetAvatarRoot
ÇÇ *
(
ÇÇ* +
animatorRoot
ÇÇ+ 7
)
ÇÇ7 8
;
ÇÇ8 9
foreach
ÑÑ 
(
ÑÑ 
var
ÑÑ 
binding
ÑÑ  
in
ÑÑ! #
keys
ÑÑ$ (
)
ÑÑ( )
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
IsRootMotion
ÜÜ  
(
ÜÜ  !
binding
ÜÜ! (
)
ÜÜ( )
)
ÜÜ) *
{
áá 

rootMotion
àà 
=
àà  
true
àà! %
;
àà% &
continue
ââ 
;
ââ 
}
ää 
if
åå 
(
åå 
typeof
åå 
(
åå 
	Transform
åå $
)
åå$ %
.
åå% &
IsAssignableFrom
åå& 6
(
åå6 7
binding
åå7 >
.
åå> ?
type
åå? C
)
ååC D
&&
ååE G
binding
ååH O
.
ååO P
propertyName
ååP \
.
åå\ ]
Equals
åå] c
(
ååc d"
AnimatorBindingCache
ååd x
.
ååx y
TRPlaceHolderååy Ü
)ååÜ á
)ååá à
{
çç 
if
éé 
(
éé 
string
éé 
.
éé 
IsNullOrEmpty
éé ,
(
éé, -
binding
éé- 4
.
éé4 5
path
éé5 9
)
éé9 :
)
éé: ;

rootMotion
èè "
=
èè# $
true
èè% )
;
èè) *
else
êê 
{
ëë 
var
íí 
	transform
íí %
=
íí& '
animatorRoot
íí( 4
.
íí4 5
	transform
íí5 >
.
íí> ?
Find
íí? C
(
ííC D
binding
ííD K
.
ííK L
path
ííL P
)
ííP Q
;
ííQ R
if
ìì 
(
ìì 
	transform
ìì %
!=
ìì& (
null
ìì) -
)
ìì- .
{
îî 
var
ïï 
pos
ïï  #
=
ïï$ %
	transform
ïï& /
.
ïï/ 0
localPosition
ïï0 =
;
ïï= >
var
ññ 
rot
ññ  #
=
ññ$ %
	transform
ññ& /
.
ññ/ 0
localRotation
ññ0 =
;
ññ= >
animClip
óó $
.
óó$ %
SetCurve
óó% -
(
óó- .
binding
óó. 5
.
óó5 6
path
óó6 :
,
óó: ;
typeof
óó< B
(
óóB C
	Transform
óóC L
)
óóL M
,
óóM N
k_PosX
óóO U
,
óóU V

SetZeroKey
óóW a
(
óóa b
curve
óób g
,
óóg h
	keyFrames
óói r
,
óór s
pos
óót w
.
óów x
x
óóx y
)
óóy z
)
óóz {
;
óó{ |
animClip
òò $
.
òò$ %
SetCurve
òò% -
(
òò- .
binding
òò. 5
.
òò5 6
path
òò6 :
,
òò: ;
typeof
òò< B
(
òòB C
	Transform
òòC L
)
òòL M
,
òòM N
k_PosY
òòO U
,
òòU V

SetZeroKey
òòW a
(
òòa b
curve
òòb g
,
òòg h
	keyFrames
òòi r
,
òòr s
pos
òòt w
.
òòw x
y
òòx y
)
òòy z
)
òòz {
;
òò{ |
animClip
ôô $
.
ôô$ %
SetCurve
ôô% -
(
ôô- .
binding
ôô. 5
.
ôô5 6
path
ôô6 :
,
ôô: ;
typeof
ôô< B
(
ôôB C
	Transform
ôôC L
)
ôôL M
,
ôôM N
k_PosZ
ôôO U
,
ôôU V

SetZeroKey
ôôW a
(
ôôa b
curve
ôôb g
,
ôôg h
	keyFrames
ôôi r
,
ôôr s
pos
ôôt w
.
ôôw x
z
ôôx y
)
ôôy z
)
ôôz {
;
ôô{ |
animClip
öö $
.
öö$ %
SetCurve
öö% -
(
öö- .
binding
öö. 5
.
öö5 6
path
öö6 :
,
öö: ;
typeof
öö< B
(
ööB C
	Transform
ööC L
)
ööL M
,
ööM N
k_RotX
ööO U
,
ööU V

SetZeroKey
ööW a
(
ööa b
curve
ööb g
,
öög h
	keyFrames
ööi r
,
öör s
rot
ööt w
.
ööw x
x
ööx y
)
ööy z
)
ööz {
;
öö{ |
animClip
õõ $
.
õõ$ %
SetCurve
õõ% -
(
õõ- .
binding
õõ. 5
.
õõ5 6
path
õõ6 :
,
õõ: ;
typeof
õõ< B
(
õõB C
	Transform
õõC L
)
õõL M
,
õõM N
k_RotY
õõO U
,
õõU V

SetZeroKey
õõW a
(
õõa b
curve
õõb g
,
õõg h
	keyFrames
õõi r
,
õõr s
rot
õõt w
.
õõw x
y
õõx y
)
õõy z
)
õõz {
;
õõ{ |
animClip
úú $
.
úú$ %
SetCurve
úú% -
(
úú- .
binding
úú. 5
.
úú5 6
path
úú6 :
,
úú: ;
typeof
úú< B
(
úúB C
	Transform
úúC L
)
úúL M
,
úúM N
k_RotZ
úúO U
,
úúU V

SetZeroKey
úúW a
(
úúa b
curve
úúb g
,
úúg h
	keyFrames
úúi r
,
úúr s
rot
úút w
.
úúw x
z
úúx y
)
úúy z
)
úúz {
;
úú{ |
animClip
ùù $
.
ùù$ %
SetCurve
ùù% -
(
ùù- .
binding
ùù. 5
.
ùù5 6
path
ùù6 :
,
ùù: ;
typeof
ùù< B
(
ùùB C
	Transform
ùùC L
)
ùùL M
,
ùùM N
k_RotW
ùùO U
,
ùùU V

SetZeroKey
ùùW a
(
ùùa b
curve
ùùb g
,
ùùg h
	keyFrames
ùùi r
,
ùùr s
rot
ùùt w
.
ùùw x
w
ùùx y
)
ùùy z
)
ùùz {
;
ùù{ |
}
ûû 
}
üü 
continue
°° 
;
°° 
}
¢¢ 
if
§§ 
(
§§ 
typeof
§§ 
(
§§ 
	Transform
§§ $
)
§§$ %
.
§§% &
IsAssignableFrom
§§& 6
(
§§6 7
binding
§§7 >
.
§§> ?
type
§§? C
)
§§C D
&&
§§E G
binding
§§H O
.
§§O P
propertyName
§§P \
==
§§] _"
AnimatorBindingCache
§§` t
.
§§t u
ScalePlaceholder§§u Ö
)§§Ö Ü
{
•• 
var
¶¶ 
	transform
¶¶ !
=
¶¶" #
animatorRoot
¶¶$ 0
.
¶¶0 1
	transform
¶¶1 :
.
¶¶: ;
Find
¶¶; ?
(
¶¶? @
binding
¶¶@ G
.
¶¶G H
path
¶¶H L
)
¶¶L M
;
¶¶M N
if
ßß 
(
ßß 
	transform
ßß !
!=
ßß" $
null
ßß% )
)
ßß) *
{
®® 
var
©© 
scale
©© !
=
©©" #
	transform
©©$ -
.
©©- .

localScale
©©. 8
;
©©8 9
animClip
™™  
.
™™  !
SetCurve
™™! )
(
™™) *
binding
™™* 1
.
™™1 2
path
™™2 6
,
™™6 7
typeof
™™8 >
(
™™> ?
	Transform
™™? H
)
™™H I
,
™™I J
k_ScaleX
™™K S
,
™™S T

SetZeroKey
™™U _
(
™™_ `
curve
™™` e
,
™™e f
	keyFrames
™™g p
,
™™p q
scale
™™r w
.
™™w x
x
™™x y
)
™™y z
)
™™z {
;
™™{ |
animClip
´´  
.
´´  !
SetCurve
´´! )
(
´´) *
binding
´´* 1
.
´´1 2
path
´´2 6
,
´´6 7
typeof
´´8 >
(
´´> ?
	Transform
´´? H
)
´´H I
,
´´I J
k_ScaleY
´´K S
,
´´S T

SetZeroKey
´´U _
(
´´_ `
curve
´´` e
,
´´e f
	keyFrames
´´g p
,
´´p q
scale
´´r w
.
´´w x
y
´´x y
)
´´y z
)
´´z {
;
´´{ |
animClip
¨¨  
.
¨¨  !
SetCurve
¨¨! )
(
¨¨) *
binding
¨¨* 1
.
¨¨1 2
path
¨¨2 6
,
¨¨6 7
typeof
¨¨8 >
(
¨¨> ?
	Transform
¨¨? H
)
¨¨H I
,
¨¨I J
k_ScaleZ
¨¨K S
,
¨¨S T

SetZeroKey
¨¨U _
(
¨¨_ `
curve
¨¨` e
,
¨¨e f
	keyFrames
¨¨g p
,
¨¨p q
scale
¨¨r w
.
¨¨w x
z
¨¨x y
)
¨¨y z
)
¨¨z {
;
¨¨{ |
}
≠≠ 
continue
ØØ 
;
ØØ 
}
∞∞ 
if
µµ 
(
µµ 
IsAvatarBinding
µµ #
(
µµ# $
binding
µµ$ +
)
µµ+ ,
||
µµ- /
IsEulerHint
µµ0 ;
(
µµ; <
binding
µµ< C
)
µµC D
||
µµE G
binding
µµH O
.
µµO P
isPPtrCurve
µµP [
)
µµ[ \
continue
∂∂ 
;
∂∂ 
float
∏∏ 

floatValue
∏∏  
;
∏∏  !
AnimationUtility
ππ  
.
ππ  !
GetFloatValue
ππ! .
(
ππ. /

avatarRoot
ππ/ 9
,
ππ9 :
binding
ππ; B
,
ππB C
out
ππD G

floatValue
ππH R
)
ππR S
;
ππS T
animClip
∫∫ 
.
∫∫ 
SetCurve
∫∫ !
(
∫∫! "
binding
∫∫" )
.
∫∫) *
path
∫∫* .
,
∫∫. /
binding
∫∫0 7
.
∫∫7 8
type
∫∫8 <
,
∫∫< =
binding
∫∫> E
.
∫∫E F
propertyName
∫∫F R
,
∫∫R S

SetZeroKey
∫∫T ^
(
∫∫^ _
curve
∫∫_ d
,
∫∫d e
	keyFrames
∫∫f o
,
∫∫o p

floatValue
∫∫q {
)
∫∫{ |
)
∫∫| }
;
∫∫} ~
}
ªª 
if
ææ 
(
ææ 

rootMotion
ææ 
)
ææ 
{
øø 
var
¿¿ 
pos
¿¿ 
=
¿¿ 
Vector3
¿¿ !
.
¿¿! "
zero
¿¿" &
;
¿¿& '
var
¡¡ 
rot
¡¡ 
=
¡¡ 

Quaternion
¡¡ $
.
¡¡$ %
identity
¡¡% -
;
¡¡- .
animClip
¬¬ 
.
¬¬ 
SetCurve
¬¬ !
(
¬¬! "
string
¬¬" (
.
¬¬( )
Empty
¬¬) .
,
¬¬. /
typeof
¬¬0 6
(
¬¬6 7
	Transform
¬¬7 @
)
¬¬@ A
,
¬¬A B
k_PosX
¬¬C I
,
¬¬I J

SetZeroKey
¬¬K U
(
¬¬U V
curve
¬¬V [
,
¬¬[ \
	keyFrames
¬¬] f
,
¬¬f g
pos
¬¬h k
.
¬¬k l
x
¬¬l m
)
¬¬m n
)
¬¬n o
;
¬¬o p
animClip
√√ 
.
√√ 
SetCurve
√√ !
(
√√! "
string
√√" (
.
√√( )
Empty
√√) .
,
√√. /
typeof
√√0 6
(
√√6 7
	Transform
√√7 @
)
√√@ A
,
√√A B
k_PosY
√√C I
,
√√I J

SetZeroKey
√√K U
(
√√U V
curve
√√V [
,
√√[ \
	keyFrames
√√] f
,
√√f g
pos
√√h k
.
√√k l
y
√√l m
)
√√m n
)
√√n o
;
√√o p
animClip
ƒƒ 
.
ƒƒ 
SetCurve
ƒƒ !
(
ƒƒ! "
string
ƒƒ" (
.
ƒƒ( )
Empty
ƒƒ) .
,
ƒƒ. /
typeof
ƒƒ0 6
(
ƒƒ6 7
	Transform
ƒƒ7 @
)
ƒƒ@ A
,
ƒƒA B
k_PosZ
ƒƒC I
,
ƒƒI J

SetZeroKey
ƒƒK U
(
ƒƒU V
curve
ƒƒV [
,
ƒƒ[ \
	keyFrames
ƒƒ] f
,
ƒƒf g
pos
ƒƒh k
.
ƒƒk l
z
ƒƒl m
)
ƒƒm n
)
ƒƒn o
;
ƒƒo p
animClip
≈≈ 
.
≈≈ 
SetCurve
≈≈ !
(
≈≈! "
string
≈≈" (
.
≈≈( )
Empty
≈≈) .
,
≈≈. /
typeof
≈≈0 6
(
≈≈6 7
	Transform
≈≈7 @
)
≈≈@ A
,
≈≈A B
k_RotX
≈≈C I
,
≈≈I J

SetZeroKey
≈≈K U
(
≈≈U V
curve
≈≈V [
,
≈≈[ \
	keyFrames
≈≈] f
,
≈≈f g
rot
≈≈h k
.
≈≈k l
x
≈≈l m
)
≈≈m n
)
≈≈n o
;
≈≈o p
animClip
∆∆ 
.
∆∆ 
SetCurve
∆∆ !
(
∆∆! "
string
∆∆" (
.
∆∆( )
Empty
∆∆) .
,
∆∆. /
typeof
∆∆0 6
(
∆∆6 7
	Transform
∆∆7 @
)
∆∆@ A
,
∆∆A B
k_RotY
∆∆C I
,
∆∆I J

SetZeroKey
∆∆K U
(
∆∆U V
curve
∆∆V [
,
∆∆[ \
	keyFrames
∆∆] f
,
∆∆f g
rot
∆∆h k
.
∆∆k l
y
∆∆l m
)
∆∆m n
)
∆∆n o
;
∆∆o p
animClip
«« 
.
«« 
SetCurve
«« !
(
««! "
string
««" (
.
««( )
Empty
««) .
,
««. /
typeof
««0 6
(
««6 7
	Transform
««7 @
)
««@ A
,
««A B
k_RotZ
««C I
,
««I J

SetZeroKey
««K U
(
««U V
curve
««V [
,
««[ \
	keyFrames
««] f
,
««f g
rot
««h k
.
««k l
z
««l m
)
««m n
)
««n o
;
««o p
animClip
»» 
.
»» 
SetCurve
»» !
(
»»! "
string
»»" (
.
»»( )
Empty
»») .
,
»». /
typeof
»»0 6
(
»»6 7
	Transform
»»7 @
)
»»@ A
,
»»A B
k_RotW
»»C I
,
»»I J

SetZeroKey
»»K U
(
»»U V
curve
»»V [
,
»»[ \
	keyFrames
»»] f
,
»»f g
rot
»»h k
.
»»k l
w
»»l m
)
»»m n
)
»»n o
;
»»o p
}
…… 
return
ÀÀ 
animClip
ÀÀ 
;
ÀÀ 
}
ÃÃ 	
public
ŒŒ 
static
ŒŒ 
bool
ŒŒ 
IsRootMotion
ŒŒ '
(
ŒŒ' ( 
EditorCurveBinding
ŒŒ( :
binding
ŒŒ; B
)
ŒŒB C
{
œœ 	
if
—— 
(
—— 
typeof
—— 
(
—— 
	Transform
——  
)
——  !
.
——! "
IsAssignableFrom
——" 2
(
——2 3
binding
——3 :
.
——: ;
type
——; ?
)
——? @
&&
——A C
string
——D J
.
——J K
IsNullOrEmpty
——K X
(
——X Y
binding
——Y `
.
——` a
path
——a e
)
——e f
)
——f g
{
““ 
return
”” 
FastStartsWith
”” %
(
””% &
binding
””& -
.
””- .
propertyName
””. :
,
””: ;
k_Pos
””< A
)
””A B
||
””D F
FastStartsWith
””G U
(
””U V
binding
””V ]
.
””] ^
propertyName
””^ j
,
””j k
k_Rot
””l q
)
””q r
;
””r s
}
‘‘ 
if
◊◊ 
(
◊◊ 
binding
◊◊ 
.
◊◊ 
type
◊◊ 
==
◊◊ 
typeof
◊◊  &
(
◊◊& '
Animator
◊◊' /
)
◊◊/ 0
)
◊◊0 1
{
ÿÿ 
return
ŸŸ 
FastStartsWith
ŸŸ %
(
ŸŸ% &
binding
ŸŸ& -
.
ŸŸ- .
propertyName
ŸŸ. :
,
ŸŸ: ;
	k_MotionT
ŸŸ< E
)
ŸŸE F
||
ŸŸG I
FastStartsWith
⁄⁄ "
(
⁄⁄" #
binding
⁄⁄# *
.
⁄⁄* +
propertyName
⁄⁄+ 7
,
⁄⁄7 8
	k_MotionQ
⁄⁄9 B
)
⁄⁄B C
||
⁄⁄D F
FastStartsWith
€€ "
(
€€" #
binding
€€# *
.
€€* +
propertyName
€€+ 7
,
€€7 8
k_RootT
€€9 @
)
€€@ A
||
€€B D
FastStartsWith
‹‹ "
(
‹‹" #
binding
‹‹# *
.
‹‹* +
propertyName
‹‹+ 7
,
‹‹7 8
k_RootQ
‹‹9 @
)
‹‹@ A
;
‹‹A B
}
›› 
return
ﬂﬂ 
false
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 	
private
‚‚ 
static
‚‚ 
bool
‚‚ #
NeedsSkeletonBindings
‚‚ 1
(
‚‚1 2
IEnumerable
‚‚2 =
<
‚‚= > 
EditorCurveBinding
‚‚> P
>
‚‚P Q
bindings
‚‚R Z
)
‚‚Z [
{
„„ 	
foreach
‰‰ 
(
‰‰ 
var
‰‰ 
b
‰‰ 
in
‰‰ 
bindings
‰‰ &
)
‰‰& '
{
ÂÂ 
if
ÊÊ 
(
ÊÊ 
IsSkeletalBinding
ÊÊ %
(
ÊÊ% &
b
ÊÊ& '
)
ÊÊ' (
)
ÊÊ( )
return
ÁÁ 
true
ÁÁ 
;
ÁÁ  
}
ËË 
return
ÍÍ 
false
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
private
ÌÌ 
static
ÌÌ 
void
ÌÌ 
AddBindings
ÌÌ '
(
ÌÌ' (
IEnumerable
ÌÌ( 3
<
ÌÌ3 4 
EditorCurveBinding
ÌÌ4 F
>
ÌÌF G
bindings
ÌÌH P
)
ÌÌP Q
{
ÓÓ 	
foreach
ÔÔ 
(
ÔÔ 
var
ÔÔ 
b
ÔÔ 
in
ÔÔ 
bindings
ÔÔ &
)
ÔÔ& '
{
 
if
ÒÒ 
(
ÒÒ 
!
ÒÒ 

s_CurveSet
ÒÒ 
.
ÒÒ  
ContainsKey
ÒÒ  +
(
ÒÒ+ ,
b
ÒÒ, -
)
ÒÒ- .
)
ÒÒ. /

s_CurveSet
ÚÚ 
[
ÚÚ 
b
ÚÚ  
]
ÚÚ  !
=
ÚÚ" #
$num
ÚÚ$ %
;
ÚÚ% &
}
ÛÛ 
}
ÙÙ 	
private
ˆˆ 
static
ˆˆ 
void
ˆˆ 
AddTRBinding
ˆˆ (
(
ˆˆ( )

GameObject
ˆˆ) 3
root
ˆˆ4 8
,
ˆˆ8 9 
EditorCurveBinding
ˆˆ: L
binding
ˆˆM T
)
ˆˆT U
{
˜˜ 	
var
¯¯ 
t
¯¯ 
=
¯¯ 
root
¯¯ 
.
¯¯ 
	transform
¯¯ "
.
¯¯" #
Find
¯¯# '
(
¯¯' (
binding
¯¯( /
.
¯¯/ 0
path
¯¯0 4
)
¯¯4 5
;
¯¯5 6
if
˘˘ 
(
˘˘ 
t
˘˘ 
!=
˘˘ 
null
˘˘ 
)
˘˘ 
{
˙˙ #
DrivenPropertyManager
˚˚ %
.
˚˚% &
RegisterProperty
˚˚& 6
(
˚˚6 7
s_PreviewDriver
˚˚7 F
,
˚˚F G
t
˚˚H I
,
˚˚I J
$str
˚˚K \
)
˚˚\ ]
;
˚˚] ^#
DrivenPropertyManager
¸¸ %
.
¸¸% &
RegisterProperty
¸¸& 6
(
¸¸6 7
s_PreviewDriver
¸¸7 F
,
¸¸F G
t
¸¸H I
,
¸¸I J
$str
¸¸K \
)
¸¸\ ]
;
¸¸] ^
}
˝˝ 
}
˛˛ 	
private
ÄÄ 
static
ÄÄ 
void
ÄÄ 
AddScaleBinding
ÄÄ +
(
ÄÄ+ ,

GameObject
ÄÄ, 6
root
ÄÄ7 ;
,
ÄÄ; < 
EditorCurveBinding
ÄÄ= O
binding
ÄÄP W
)
ÄÄW X
{
ÅÅ 	
var
ÇÇ 
t
ÇÇ 
=
ÇÇ 
root
ÇÇ 
.
ÇÇ 
	transform
ÇÇ "
.
ÇÇ" #
Find
ÇÇ# '
(
ÇÇ' (
binding
ÇÇ( /
.
ÇÇ/ 0
path
ÇÇ0 4
)
ÇÇ4 5
;
ÇÇ5 6
if
ÉÉ 
(
ÉÉ 
t
ÉÉ 
!=
ÉÉ 
null
ÉÉ 
)
ÉÉ #
DrivenPropertyManager
ÑÑ %
.
ÑÑ% &
RegisterProperty
ÑÑ& 6
(
ÑÑ6 7
s_PreviewDriver
ÑÑ7 F
,
ÑÑF G
t
ÑÑH I
,
ÑÑI J
$str
ÑÑK Y
)
ÑÑY Z
;
ÑÑZ [
}
ÖÖ 	
private
áá 
static
áá 
bool
áá 
IsEuler
áá #
(
áá# $ 
EditorCurveBinding
áá$ 6
binding
áá7 >
)
áá> ?
{
àà 	
return
ââ 
FastStartsWith
ââ !
(
ââ! "
binding
ââ" )
.
ââ) *
propertyName
ââ* 6
,
ââ6 7
k_EulerAnglesRaw
ââ8 H
)
ââH I
&&
ââJ L
typeof
ää 
(
ää 
	Transform
ää  
)
ää  !
.
ää! "
IsAssignableFrom
ää" 2
(
ää2 3
binding
ää3 :
.
ää: ;
type
ää; ?
)
ää? @
;
ää@ A
}
ãã 	
private
çç 
static
çç 
bool
çç 
IsAvatarBinding
çç +
(
çç+ , 
EditorCurveBinding
çç, >
binding
çç? F
)
ççF G
{
éé 	
return
èè 
string
èè 
.
èè 
IsNullOrEmpty
èè '
(
èè' (
binding
èè( /
.
èè/ 0
path
èè0 4
)
èè4 5
&&
èè6 8
typeof
èè9 ?
(
èè? @
Animator
èè@ H
)
èèH I
==
èèJ L
binding
èèM T
.
èèT U
type
èèU Y
;
èèY Z
}
êê 	
private
íí 
static
íí 
bool
íí 
IsSkeletalBinding
íí -
(
íí- . 
EditorCurveBinding
íí. @
binding
ííA H
)
ííH I
{
ìì 	
return
ïï 
typeof
ïï 
(
ïï 
	Transform
ïï #
)
ïï# $
.
ïï$ %
IsAssignableFrom
ïï% 5
(
ïï5 6
binding
ïï6 =
.
ïï= >
type
ïï> B
)
ïïB C
||
ïïD F
typeof
ïïG M
(
ïïM N!
SkinnedMeshRenderer
ïïN a
)
ïïa b
.
ïïb c
IsAssignableFrom
ïïc s
(
ïïs t
binding
ïït {
.
ïï{ |
typeïï| Ä
)ïïÄ Å
;ïïÅ Ç
}
ññ 	
private
òò 
static
òò 
AnimationCurve
òò %

SetZeroKey
òò& 0
(
òò0 1
AnimationCurve
òò1 ?
curve
òò@ E
,
òòE F
Keyframe
òòG O
[
òòO P
]
òòP Q
keys
òòR V
,
òòV W
float
òòX ]
val
òò^ a
)
òòa b
{
ôô 	
keys
öö 
[
öö 
$num
öö 
]
öö 
.
öö 
value
öö 
=
öö 
val
öö 
;
öö  
curve
õõ 
.
õõ 
keys
õõ 
=
õõ 
keys
õõ 
;
õõ 
return
úú 
curve
úú 
;
úú 
}
ùù 	
private
üü 
static
üü 
bool
üü 
IsEulerHint
üü '
(
üü' ( 
EditorCurveBinding
üü( :
binding
üü; B
)
üüB C
{
†† 	
return
°° 
typeof
°° 
(
°° 
	Transform
°° #
)
°°# $
.
°°$ %
IsAssignableFrom
°°% 5
(
°°5 6
binding
°°6 =
.
°°= >
type
°°> B
)
°°B C
&&
°°D F
binding
°°G N
.
°°N O
propertyName
°°O [
.
°°[ \

StartsWith
°°\ f
(
°°f g
k_EulerHint
°°g r
)
°°r s
;
°°s t
}
¢¢ 	
private
§§ 
static
§§ 

GameObject
§§ !
GetAvatarRoot
§§" /
(
§§/ 0

GameObject
§§0 :
animatorRoot
§§; G
)
§§G H
{
•• 	
var
¶¶ 
animator
¶¶ 
=
¶¶ 
animatorRoot
¶¶ '
.
¶¶' (
GetComponent
¶¶( 4
<
¶¶4 5
Animator
¶¶5 =
>
¶¶= >
(
¶¶> ?
)
¶¶? @
;
¶¶@ A
if
ßß 
(
ßß 
animator
ßß 
!=
ßß 
null
ßß  
&&
ßß! #
animator
ßß$ ,
.
ßß, -

avatarRoot
ßß- 7
!=
ßß8 :
animatorRoot
ßß; G
.
ßßG H
	transform
ßßH Q
)
ßßQ R
return
®® 
animator
®® 
.
®®  

avatarRoot
®®  *
.
®®* +

gameObject
®®+ 5
;
®®5 6
return
©© 
animatorRoot
©© 
;
©©  
}
™™ 	
}
´´ 
}¨¨ Ω
lC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Events\INotificationOptionProvider.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

	interface '
INotificationOptionProvider 0
{		 
NotificationFlags 
flags 
{  !
get" %
;% &
}' (
} 
} …[
kC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\TimelineCreateUtilities.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static		 

class		 #
TimelineCreateUtilities		 (
{

 
public 
static 
string #
GenerateUniqueActorName 4
(4 5
List5 9
<9 :
ScriptableObject: J
>J K
tracksL R
,R S
stringT Z
name[ _
)_ `
{ 	
if 
( 
! 
tracks 
. 
Exists 
( 
x  
=>! #
($ %
(% &
object& ,
), -
x- .
). /
!=0 2
null3 7
&&8 :
x; <
.< =
name= A
==B D
nameE I
)I J
)J K
return 
name 
; 
int 
numberInParentheses #
=$ %
$num& '
;' (
string 
baseName 
= 
name "
;" #
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &
name& *
)* +
&&, .
name/ 3
[3 4
name4 8
.8 9
Length9 ?
-@ A
$numB C
]C D
==E G
$charH K
)K L
{ 
int 
index 
= 
name  
.  !
LastIndexOf! ,
(, -
$char- 0
)0 1
;1 2
if 
( 
index 
> 
$num 
) 
{ 
string 
numberString '
=( )
name* .
.. /
	Substring/ 8
(8 9
index9 >
+? @
$numA B
,B C
nameD H
.H I
LengthI O
-P Q
indexR W
-X Y
$numZ [
)[ \
;\ ]
if 
( 
int 
. 
TryParse $
($ %
numberString% 1
,1 2
out3 6
numberInParentheses7 J
)J K
)K L
{ 
numberInParentheses +
+++ -
;- .
baseName  
=! "
name# '
.' (
	Substring( 1
(1 2
$num2 3
,3 4
index5 :
): ;
;; <
} 
} 
}   
baseName"" 
="" 
baseName"" 
.""  
TrimEnd""  '
(""' (
)""( )
;"") *
for$$ 
($$ 
int$$ 
i$$ 
=$$ 
numberInParentheses$$ ,
;$$, -
i$$. /
<$$0 1
numberInParentheses$$2 E
+$$F G
$num$$H L
;$$L M
i$$N O
++$$O Q
)$$Q R
{%% 
if&& 
(&& 
i&& 
>&& 
$num&& 
)&& 
{'' 
string(( 
result(( !
=((" #
string(($ *
.((* +
Format((+ 1
(((1 2
$str((2 =
,((= >
baseName((? G
,((G H
i((I J
)((J K
;((K L
if)) 
()) 
!)) 
tracks)) 
.))  
Exists))  &
())& '
x))' (
=>))) +
()), -
())- .
object)). 4
)))4 5
x))5 6
)))6 7
!=))8 :
null)); ?
&&))@ B
x))C D
.))D E
name))E I
==))J L
result))M S
)))S T
)))T U
return** 
result** %
;**% &
}++ 
},, 
return// 
name// 
;// 
}00 	
public22 
static22 
void22 
SaveAssetIntoObject22 .
(22. /
Object22/ 5

childAsset226 @
,22@ A
Object22B H
masterAsset22I T
)22T U
{33 	
if44 
(44 

childAsset44 
==44 
null44 "
||44# %
masterAsset44& 1
==442 4
null445 9
)449 :
return55 
;55 
if77 
(77 
(77 
masterAsset77 
.77 
	hideFlags77 &
&77' (
	HideFlags77) 2
.772 3
DontSave773 ;
)77; <
!=77= ?
$num77@ A
)77A B
{88 

childAsset99 
.99 
	hideFlags99 $
|=99% '
	HideFlags99( 1
.991 2
DontSave992 :
;99: ;
}:: 
else;; 
{<< 

childAsset== 
.== 
	hideFlags== $
|===% '
	HideFlags==( 1
.==1 2
HideInHierarchy==2 A
;==A B
if?? 
(?? 
!?? 
AssetDatabase?? "
.??" #
Contains??# +
(??+ ,

childAsset??, 6
)??6 7
&&??8 :
AssetDatabase??; H
.??H I
Contains??I Q
(??Q R
masterAsset??R ]
)??] ^
)??^ _
AssetDatabase@@ !
.@@! "
AddObjectToAsset@@" 2
(@@2 3

childAsset@@3 =
,@@= >
masterAsset@@? J
)@@J K
;@@K L
}BB 
}CC 	
publicEE 
staticEE 
voidEE !
RemoveAssetFromObjectEE 0
(EE0 1
ObjectEE1 7

childAssetEE8 B
,EEB C
ObjectEED J
masterAssetEEK V
)EEV W
{FF 	
ifGG 
(GG 

childAssetGG 
==GG 
nullGG "
||GG# %
masterAssetGG& 1
==GG2 4
nullGG5 9
)GG9 :
returnHH 
;HH 
ifKK 
(KK 
AssetDatabaseKK 
.KK 
ContainsKK &
(KK& '

childAssetKK' 1
)KK1 2
&&KK3 5
AssetDatabaseKK6 C
.KKC D
ContainsKKD L
(KKL M
masterAssetKKM X
)KKX Y
)KKY Z
AssetDatabaseLL 
.LL !
RemoveObjectFromAssetLL 3
(LL3 4

childAssetLL4 >
)LL> ?
;LL? @
}NN 	
publicPP 
staticPP 
AnimationClipPP #'
CreateAnimationClipForTrackPP$ ?
(PP? @
stringPP@ F
namePPG K
,PPK L

TrackAssetPPM W
trackPPX ]
,PP] ^
boolPP_ c
isLegacyPPd l
)PPl m
{QQ 	
varRR 
timelineAssetRR 
=RR 
trackRR  %
!=RR& (
nullRR) -
?RR. /
trackRR0 5
.RR5 6
timelineAssetRR6 C
:RRD E
nullRRF J
;RRJ K
varSS 

trackFlagsSS 
=SS 
trackSS "
!=SS# %
nullSS& *
?SS+ ,
trackSS- 2
.SS2 3
	hideFlagsSS3 <
:SS= >
	HideFlagsSS? H
.SSH I
NoneSSI M
;SSM N
varUU 
curvesUU 
=UU 
newUU 
AnimationClipUU *
{VV 
legacyWW 
=WW 
isLegacyWW !
,WW! "
nameYY 
=YY 
nameYY 
,YY 
	frameRate[[ 
=[[ 
timelineAsset[[ )
==[[* ,
null[[- 1
?\\ 
(\\ 
float\\ 
)\\ 
TimelineAsset\\ *
.\\* +
EditorSettings\\+ 9
.\\9 :
kDefaultFrameRate\\: K
:]] 
(]] 
float]] 
)]] 
timelineAsset]] *
.]]* +
editorSettings]]+ 9
.]]9 :
	frameRate]]: C
}^^ 
;^^ 
SaveAssetIntoObject`` 
(``  
curves``  &
,``& '
timelineAsset``( 5
)``5 6
;``6 7
curvesaa 
.aa 
	hideFlagsaa 
=aa 

trackFlagsaa )
&aa* +
~aa, -
	HideFlagsaa- 6
.aa6 7
HideInHierarchyaa7 F
;aaF G
TimelineUndocc 
.cc %
RegisterCreatedObjectUndocc 2
(cc2 3
curvescc3 9
,cc9 :
$strcc; J
)ccJ K
;ccK L
returnee 
curvesee 
;ee 
}ff 	
publichh 
statichh 
boolhh 
ValidateParentTrackhh .
(hh. /

TrackAssethh/ 9
parenthh: @
,hh@ A
TypehhB F
	childTypehhG P
)hhP Q
{ii 	
ifjj 
(jj 
	childTypejj 
==jj 
nulljj !
||jj" $
!jj% &
typeofjj& ,
(jj, -

TrackAssetjj- 7
)jj7 8
.jj8 9
IsAssignableFromjj9 I
(jjI J
	childTypejjJ S
)jjS T
)jjT U
returnkk 
falsekk 
;kk 
ifnn 
(nn 
parentnn 
==nn 
nullnn 
)nn 
returnoo 
trueoo 
;oo 
ifss 
(ss 
parentss 
isss 

ILayerabless $
&&ss% '
!ss( )
parentss) /
.ss/ 0

isSubTrackss0 :
&&ss; =
parentss> D
.ssD E
GetTypessE L
(ssL M
)ssM N
==ssO Q
	childTypessR [
)ss[ \
returntt 
truett 
;tt 
varvv 
attrvv 
=vv 
	Attributevv  
.vv  !
GetCustomAttributevv! 3
(vv3 4
parentvv4 :
.vv: ;
GetTypevv; B
(vvB C
)vvC D
,vvD E
typeofvvF L
(vvL M(
SupportsChildTracksAttributevvM i
)vvi j
)vvj k
asvvl n)
SupportsChildTracksAttribute	vvo ã
;
vvã å
ifww 
(ww 
attrww 
==ww 
nullww 
)ww 
returnxx 
falsexx 
;xx 
if{{ 
({{ 
attr{{ 
.{{ 
	childType{{ 
=={{ !
null{{" &
){{& '
return|| 
true|| 
;|| 
if 
( 
	childType 
== 
attr !
.! "
	childType" +
)+ ,
{
ÄÄ 
int
ÅÅ 
	nestCount
ÅÅ 
=
ÅÅ 
$num
ÅÅ  !
;
ÅÅ! "
var
ÇÇ 
p
ÇÇ 
=
ÇÇ 
parent
ÇÇ 
;
ÇÇ 
while
ÉÉ 
(
ÉÉ 
p
ÉÉ 
!=
ÉÉ 
null
ÉÉ  
&&
ÉÉ! #
p
ÉÉ$ %
.
ÉÉ% &

isSubTrack
ÉÉ& 0
)
ÉÉ0 1
{
ÑÑ 
	nestCount
ÖÖ 
++
ÖÖ 
;
ÖÖ  
p
ÜÜ 
=
ÜÜ 
p
ÜÜ 
.
ÜÜ 
parent
ÜÜ  
as
ÜÜ! #

TrackAsset
ÜÜ$ .
;
ÜÜ. /
}
áá 
return
ââ 
	nestCount
ââ  
<
ââ! "
attr
ââ# '
.
ââ' (
levels
ââ( .
;
ââ. /
}
ää 
return
ãã 
false
ãã 
;
ãã 
}
åå 	
}
çç 
}éé ¡)
_C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\HashUtility.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static 

class 
HashUtility 
{ 
public 
static 
int 
CombineHash %
(% &
this& *
int+ .
h1/ 1
,1 2
int3 6
h27 9
)9 :
{ 	
return		 
h1		 
^		 
(		 
int		 
)		 
(		 
h2		  
+		! "
$num		# -
+		. /
(		0 1
h1		1 3
<<		4 6
$num		7 8
)		8 9
+		: ;
(		< =
h1		= ?
>>		@ B
$num		C D
)		D E
)		E F
;		F G
}

 	
public 
static 
int 
CombineHash %
(% &
int& )
h1* ,
,, -
int. 1
h22 4
,4 5
int6 9
h3: <
)< =
{ 	
return 
CombineHash 
( 
h1 !
,! "
h2# %
)% &
.& '
CombineHash' 2
(2 3
h33 5
)5 6
;6 7
} 	
public 
static 
int 
CombineHash %
(% &
int& )
h1* ,
,, -
int. 1
h22 4
,4 5
int6 9
h3: <
,< =
int> A
h4B D
)D E
{ 	
return 
CombineHash 
( 
h1 !
,! "
h2# %
,% &
h3' )
)) *
.* +
CombineHash+ 6
(6 7
h47 9
)9 :
;: ;
} 	
public 
static 
int 
CombineHash %
(% &
int& )
h1* ,
,, -
int. 1
h22 4
,4 5
int6 9
h3: <
,< =
int> A
h4B D
,D E
intF I
h5J L
)L M
{ 	
return 
CombineHash 
( 
h1 !
,! "
h2# %
,% &
h3' )
,) *
h4+ -
)- .
.. /
CombineHash/ :
(: ;
h5; =
)= >
;> ?
} 	
public 
static 
int 
CombineHash %
(% &
int& )
h1* ,
,, -
int. 1
h22 4
,4 5
int6 9
h3: <
,< =
int> A
h4B D
,D E
intF I
h5J L
,L M
intN Q
h6R T
)T U
{ 	
return 
CombineHash 
( 
h1 !
,! "
h2# %
,% &
h3' )
,) *
h4+ -
,- .
h5/ 1
)1 2
.2 3
CombineHash3 >
(> ?
h6? A
)A B
;B C
} 	
public   
static   
int   
CombineHash   %
(  % &
int  & )
h1  * ,
,  , -
int  . 1
h2  2 4
,  4 5
int  6 9
h3  : <
,  < =
int  > A
h4  B D
,  D E
int  F I
h5  J L
,  L M
int  N Q
h6  R T
,  T U
int  V Y
h7  Z \
)  \ ]
{!! 	
return"" 
CombineHash"" 
("" 
h1"" !
,""! "
h2""# %
,""% &
h3""' )
,"") *
h4""+ -
,""- .
h5""/ 1
,""1 2
h6""3 5
)""5 6
.""6 7
CombineHash""7 B
(""B C
h7""C E
)""E F
;""F G
}## 	
public%% 
static%% 
int%% 
CombineHash%% %
(%%% &
int%%& )
[%%) *
]%%* +
hashes%%, 2
)%%2 3
{&& 	
if'' 
('' 
hashes'' 
=='' 
null'' 
||'' !
hashes''" (
.''( )
Length'') /
==''0 2
$num''3 4
)''4 5
return(( 
$num(( 
;(( 
var** 
h** 
=** 
hashes** 
[** 
$num** 
]** 
;** 
for++ 
(++ 
int++ 
i++ 
=++ 
$num++ 
;++ 
i++ 
<++ 
hashes++  &
.++& '
Length++' -
;++- .
++++/ 1
i++1 2
)++2 3
{,, 
h-- 
=-- 
CombineHash-- 
(--  
h--  !
,--! "
hashes--# )
[--) *
i--* +
]--+ ,
)--, -
;--- .
}.. 
return00 
h00 
;00 
}11 	
}22 
}33 ßF
`C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Evaluation\RuntimeClip.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class

 	
RuntimeClip


 
:

 
RuntimeClipBase

 '
{ 
TimelineClip 
m_Clip 
; 
Playable 

m_Playable 
; 
Playable 
m_ParentMixer 
; 
public 
override 
double 
start $
{ 	
get 
{ 
return 
m_Clip 
.  
extrapolatedStart  1
;1 2
}3 4
} 	
public 
override 
double 
duration '
{ 	
get 
{ 
return 
m_Clip 
.   
extrapolatedDuration  4
;4 5
}6 7
} 	
public 
RuntimeClip 
( 
TimelineClip '
clip( ,
,, -
Playable. 6
clipPlayable7 C
,C D
PlayableE M
parentMixerN Y
)Y Z
{ 	
Create 
( 
clip 
, 
clipPlayable %
,% &
parentMixer' 2
)2 3
;3 4
} 	
void 
Create 
( 
TimelineClip  
clip! %
,% &
Playable' /
clipPlayable0 <
,< =
Playable> F
parentMixerG R
)R S
{   	
m_Clip!! 
=!! 
clip!! 
;!! 

m_Playable"" 
="" 
clipPlayable"" %
;""% &
m_ParentMixer## 
=## 
parentMixer## '
;##' (
clipPlayable$$ 
.$$ 
Pause$$ 
($$ 
)$$  
;$$  !
}%% 	
public'' 
TimelineClip'' 
clip''  
{(( 	
get)) 
{)) 
return)) 
m_Clip)) 
;))  
}))! "
}** 	
public,, 
Playable,, 
mixer,, 
{-- 	
get.. 
{.. 
return.. 
m_ParentMixer.. &
;..& '
}..( )
}// 	
public11 
Playable11 
playable11  
{22 	
get33 
{33 
return33 

m_Playable33 #
;33# $
}33% &
}44 	
public66 
override66 
bool66 
enable66 #
{77 	
set88 
{99 
if:: 
(:: 
value:: 
&&:: 

m_Playable:: '
.::' (
GetPlayState::( 4
(::4 5
)::5 6
!=::7 9
	PlayState::: C
.::C D
Playing::D K
)::K L
{;; 

m_Playable<< 
.<< 
Play<< #
(<<# $
)<<$ %
;<<% &
SetTime== 
(== 
m_Clip== "
.==" #
clipIn==# )
)==) *
;==* +
}>> 
else?? 
if?? 
(?? 
!?? 
value?? 
&&??  "

m_Playable??# -
.??- .
GetPlayState??. :
(??: ;
)??; <
!=??= ?
	PlayState??@ I
.??I J
Paused??J P
)??P Q
{@@ 

m_PlayableAA 
.AA 
PauseAA $
(AA$ %
)AA% &
;AA& '
ifBB 
(BB 
m_ParentMixerBB %
.BB% &
IsValidBB& -
(BB- .
)BB. /
)BB/ 0
m_ParentMixerCC %
.CC% &
SetInputWeightCC& 4
(CC4 5

m_PlayableCC5 ?
,CC? @
$numCCA E
)CCE F
;CCF G
}DD 
}EE 
}FF 	
publicHH 
voidHH 
SetTimeHH 
(HH 
doubleHH "
timeHH# '
)HH' (
{II 	

m_PlayableJJ 
.JJ 
SetTimeJJ 
(JJ 
timeJJ #
)JJ# $
;JJ$ %
}KK 	
publicMM 
voidMM 
SetDurationMM 
(MM  
doubleMM  &
durationMM' /
)MM/ 0
{NN 	

m_PlayableOO 
.OO 
SetDurationOO "
(OO" #
durationOO# +
)OO+ ,
;OO, -
}PP 	
publicRR 
overrideRR 
voidRR 

EvaluateAtRR '
(RR' (
doubleRR( .
	localTimeRR/ 8
,RR8 9
	FrameDataRR: C
	frameDataRRD M
)RRM N
{SS 	
enableTT 
=TT 
trueTT 
;TT 
ifUU 
(UU 
	frameDataUU 
.UU 

timeLoopedUU $
)UU$ %
{VV 
SetTimeXX 
(XX 
clipXX 
.XX 
clipInXX #
)XX# $
;XX$ %
SetTimeYY 
(YY 
clipYY 
.YY 
clipInYY #
)YY# $
;YY$ %
}ZZ 
float\\ 
weight\\ 
=\\ 
$num\\ 
;\\  
if]] 
(]] 
clip]] 
.]] !
IsPreExtrapolatedTime]] *
(]]* +
	localTime]]+ 4
)]]4 5
)]]5 6
weight^^ 
=^^ 
clip^^ 
.^^ 
EvaluateMixIn^^ +
(^^+ ,
(^^, -
float^^- 2
)^^2 3
clip^^3 7
.^^7 8
start^^8 =
)^^= >
;^^> ?
else__ 
if__ 
(__ 
clip__ 
.__ "
IsPostExtrapolatedTime__ 0
(__0 1
	localTime__1 :
)__: ;
)__; <
weight`` 
=`` 
clip`` 
.`` 
EvaluateMixOut`` ,
(``, -
(``- .
float``. 3
)``3 4
clip``4 8
.``8 9
end``9 <
)``< =
;``= >
elseaa 
weightbb 
=bb 
clipbb 
.bb 
EvaluateMixInbb +
(bb+ ,
	localTimebb, 5
)bb5 6
*bb7 8
clipbb9 =
.bb= >
EvaluateMixOutbb> L
(bbL M
	localTimebbM V
)bbV W
;bbW X
ifdd 
(dd 
mixerdd 
.dd 
IsValiddd 
(dd 
)dd 
)dd  
mixeree 
.ee 
SetInputWeightee $
(ee$ %
playableee% -
,ee- .
weightee/ 5
)ee5 6
;ee6 7
doublehh 
clipTimehh 
=hh 
cliphh "
.hh" #
ToLocalTimehh# .
(hh. /
	localTimehh/ 8
)hh8 9
;hh9 :
ifii 
(ii 
clipTimeii 
>=ii 
-ii 
DiscreteTimeii )
.ii) *
	tickValueii* 3
/ii4 5
$numii6 7
)ii7 8
{jj 
SetTimekk 
(kk 
clipTimekk  
)kk  !
;kk! "
}ll 
SetDurationnn 
(nn 
clipnn 
.nn  
extrapolatedDurationnn 1
)nn1 2
;nn2 3
}oo 	
publicqq 
overrideqq 
voidqq 
	DisableAtqq &
(qq& '
doubleqq' -
	localTimeqq. 7
,qq7 8
doubleqq9 ?
rootDurationqq@ L
,qqL M
	FrameDataqqN W
	frameDataqqX a
)qqa b
{rr 	
varss 
timess 
=ss 
Mathss 
.ss 
Minss 
(ss  
	localTimess  )
,ss) *
(ss+ ,
doubless, 2
)ss2 3
DiscreteTimess3 ?
.ss? @
	FromTicksss@ I
(ssI J
intervalEndssJ U
)ssU V
)ssV W
;ssW X
iftt 
(tt 
	frameDatatt 
.tt 

timeLoopedtt $
)tt$ %
timeuu 
=uu 
Mathuu 
.uu 
Minuu 
(uu  
timeuu  $
,uu$ %
rootDurationuu& 2
)uu2 3
;uu3 4
varww 
clipTimeww 
=ww 
clipww 
.ww  
ToLocalTimeww  +
(ww+ ,
timeww, 0
)ww0 1
;ww1 2
ifxx 
(xx 
clipTimexx 
>xx 
-xx 
DiscreteTimexx (
.xx( )
	tickValuexx) 2
/xx3 4
$numxx5 6
)xx6 7
{yy 
SetTimezz 
(zz 
clipTimezz  
)zz  !
;zz! "
}{{ 
enable|| 
=|| 
false|| 
;|| 
}}} 	
}~~ 
} í	
`C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Animation\ICurvesOwner.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
	interface 
ICurvesOwner 
{ 
AnimationClip 
curves 
{ 
get "
;" #
}$ %
bool 
	hasCurves 
{ 
get 
; 
} 
double 
duration 
{ 
get 
; 
}  
void 
CreateCurves 
( 
string  
curvesClipName! /
)/ 0
;0 1
string

 
defaultCurvesName

  
{

! "
get

# &
;

& '
}

( )
Object 
asset 
{ 
get 
; 
} 
Object 

assetOwner 
{ 
get 
;  
}! "

TrackAsset 
targetTrack 
{  
get! $
;$ %
}& '
} 
} €#
cC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\AssetUpgrade\TrackUpgrade.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
partial 
class 

TrackAsset 
: *
ISerializationCallbackReceiver =
{ 
internal 
enum 
Versions 
{		 	
Initial

 
=

 
$num

 
,

 
RotationAsEuler 
= 
$num 
,  
RootMotionUpgrade 
= 
$num  !
,! "#
AnimatedTrackProperties #
=$ %
$num& '
} 	
const 
int 
k_LatestVersion !
=" #
($ %
int% (
)( )
Versions) 1
.1 2#
AnimatedTrackProperties2 I
;I J
[ 	
SerializeField	 
, 
HideInInspector (
]( )
int* -
	m_Version. 7
;7 8
[ 	
Obsolete	 
( 
$str J
,J K
falseL Q
)Q R
]R S
[ 	
SerializeField	 
, 
HideInInspector (
,( ) 
FormerlySerializedAs* >
(> ?
$str? K
)K L
]L M
internal 
AnimationClip 

m_AnimClip )
;) *
	protected 
virtual 
void "
OnBeforeTrackSerialize 5
(5 6
)6 7
{8 9
}: ;
	protected   
virtual   
void   #
OnAfterTrackDeserialize   6
(  6 7
)  7 8
{  9 :
}  ; <
internal"" 
virtual"" 
void""  
OnUpgradeFromVersion"" 2
(""2 3
int""3 6

oldVersion""7 A
)""A B
{""C D
}""E F
void'' *
ISerializationCallbackReceiver'' +
.''+ ,
OnBeforeSerialize'', =
(''= >
)''> ?
{(( 	
	m_Version)) 
=)) 
k_LatestVersion)) '
;))' (
if,, 
(,, 

m_Children,, 
!=,, 
null,, "
),," #
{-- 
for.. 
(.. 
var.. 
i.. 
=.. 

m_Children.. '
...' (
Count..( -
-... /
$num..0 1
;..1 2
i..3 4
>=..5 7
$num..8 9
;..9 :
i..; <
--..< >
)..> ?
{// 
var00 
asset00 
=00 

m_Children00  *
[00* +
i00+ ,
]00, -
as00. 0

TrackAsset001 ;
;00; <
if11 
(11 
asset11 
!=11  
null11! %
&&11& (
asset11) .
.11. /
parent11/ 5
!=116 8
this119 =
)11= >
asset22 
.22 
parent22 $
=22% &
this22' +
;22+ ,
}33 
}44 "
OnBeforeTrackSerialize66 "
(66" #
)66# $
;66$ %
}77 	
void<< *
ISerializationCallbackReceiver<< +
.<<+ ,
OnAfterDeserialize<<, >
(<<> ?
)<<? @
{== 	
m_ClipsCache@@ 
=@@ 
null@@ 
;@@  

InvalidateAA 
(AA 
)AA 
;AA 
ifCC 
(CC 
	m_VersionCC 
<CC 
k_LatestVersionCC +
)CC+ ,
{DD "
UpgradeToLatestVersionEE &
(EE& '
)EE' (
;EE( ) 
OnUpgradeFromVersionFF $
(FF$ %
	m_VersionFF% .
)FF. /
;FF/ 0
}GG 
foreachII 
(II 
varII 
markerII 
inII  "

GetMarkersII# -
(II- .
)II. /
)II/ 0
{JJ 
markerKK 
.KK 

InitializeKK !
(KK! "
thisKK" &
)KK& '
;KK' (
}LL #
OnAfterTrackDeserializeNN #
(NN# $
)NN$ %
;NN% &
}OO 	
voidRR "
UpgradeToLatestVersionRR #
(RR# $
)RR$ %
{SS 	
}SS
 
staticVV 
classVV 
TrackAssetUpgradeVV &
{WW 	
}WW
 
}XX 
}YY Çá
bC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Animation\AnimationTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Flags 

]
 
public 

enum 
MatchTargetFields !
{ 
	PositionX 
= 
$num 
<< 
$num 
, 
	PositionY 
= 
$num 
<< 
$num 
, 
	PositionZ"" 
="" 
$num"" 
<<"" 
$num"" 
,"" 
	RotationX&& 
=&& 
$num&& 
<<&& 
$num&& 
,&& 
	RotationY** 
=** 
$num** 
<<** 
$num** 
,** 
	RotationZ.. 
=.. 
$num.. 
<<.. 
$num.. 
}// 
public88 

enum88 
TrackOffset88 
{99 !
ApplyTransformOffsets== 
,== 
ApplySceneOffsetsAA 
,AA 
AutoLL 
}MM 
enumPP 
AppliedOffsetModePP	 
{QQ 
NoRootTransformRR 
,RR 
TransformOffsetSS 
,SS 
SceneOffsetTT 
,TT !
TransformOffsetLegacyUU 
,UU 
SceneOffsetLegacyVV 
,VV 
SceneOffsetEditorWW 
,WW #
SceneOffsetLegacyEditorXX 
,XX  
}YY 
static\\ 

class\\ %
MatchTargetFieldConstants\\ *
{]] 
public^^ 
static^^ 
MatchTargetFields^^ '
All^^( +
=^^, -
MatchTargetFields^^. ?
.^^? @
	PositionX^^@ I
|^^J K
MatchTargetFields^^L ]
.^^] ^
	PositionY^^^ g
|^^h i
MatchTargetFields__ 
.__ 
	PositionZ__ '
|__( )
MatchTargetFields__* ;
.__; <
	RotationX__< E
|__F G
MatchTargetFields`` 
.`` 
	RotationY`` '
|``( )
MatchTargetFields``* ;
.``; <
	RotationZ``< E
;``E F
publicbb 
staticbb 
MatchTargetFieldsbb '
Nonebb( ,
=bb- .
$numbb/ 0
;bb0 1
publicdd 
staticdd 
MatchTargetFieldsdd '
Positiondd( 0
=dd1 2
MatchTargetFieldsdd3 D
.ddD E
	PositionXddE N
|ddO P
MatchTargetFieldsddQ b
.ddb c
	PositionYddc l
|ddm n
MatchTargetFieldsee 
.ee 
	PositionZee '
;ee' (
publicgg 
staticgg 
MatchTargetFieldsgg '
Rotationgg( 0
=gg1 2
MatchTargetFieldsgg3 D
.ggD E
	RotationXggE N
|ggO P
MatchTargetFieldsggQ b
.ggb c
	RotationYggc l
|ggm n
MatchTargetFieldshh 
.hh 
	RotationZhh '
;hh' (
publicjj 
staticjj 
booljj 
HasAnyjj !
(jj! "
thisjj" &
MatchTargetFieldsjj' 8
mejj9 ;
,jj; <
MatchTargetFieldsjj= N
fieldsjjO U
)jjU V
{kk 	
returnll 
(ll 
mell 
&ll 
fieldsll 
)ll  
!=ll! #
Nonell$ (
;ll( )
}mm 	
publicoo 
staticoo 
MatchTargetFieldsoo '
Toggleoo( .
(oo. /
thisoo/ 3
MatchTargetFieldsoo4 E
meooF H
,ooH I
MatchTargetFieldsooJ [
flagoo\ `
)oo` a
{pp 	
returnqq 
meqq 
^qq 
flagqq 
;qq 
}rr 	
}ss 
[xx 
Serializablexx 
]xx 
[yy 
TrackClipTypeyy 
(yy 
typeofyy 
(yy "
AnimationPlayableAssetyy 0
)yy0 1
,yy1 2
falseyy3 8
)yy8 9
]yy9 :
[zz 
TrackBindingTypezz 
(zz 
typeofzz 
(zz 
Animatorzz %
)zz% &
)zz& '
]zz' (
[{{ 
ExcludeFromPreset{{ 
]{{ 
[|| 
TimelineHelpURL|| 
(|| 
typeof|| 
(|| 
AnimationTrack|| *
)||* +
)||+ ,
]||, -
public}} 

partial}} 
class}} 
AnimationTrack}} '
:}}( )

TrackAsset}}* 4
,}}4 5

ILayerable}}6 @
{~~ 
const 
string %
k_DefaultInfiniteClipName .
=/ 0
$str1 ;
;; <
const
ÄÄ 
string
ÄÄ )
k_DefaultRecordableClipName
ÄÄ 0
=
ÄÄ1 2
$str
ÄÄ3 =
;
ÄÄ= >
[
ÇÇ 	
SerializeField
ÇÇ	 
,
ÇÇ "
FormerlySerializedAs
ÇÇ -
(
ÇÇ- .
$str
ÇÇ. J
)
ÇÇJ K
]
ÇÇK L
TimelineClip
ÉÉ 
.
ÉÉ 
ClipExtrapolation
ÉÉ &,
m_InfiniteClipPreExtrapolation
ÉÉ' E
=
ÉÉF G
TimelineClip
ÉÉH T
.
ÉÉT U
ClipExtrapolation
ÉÉU f
.
ÉÉf g
None
ÉÉg k
;
ÉÉk l
[
ÖÖ 	
SerializeField
ÖÖ	 
,
ÖÖ "
FormerlySerializedAs
ÖÖ -
(
ÖÖ- .
$str
ÖÖ. K
)
ÖÖK L
]
ÖÖL M
TimelineClip
ÜÜ 
.
ÜÜ 
ClipExtrapolation
ÜÜ &-
m_InfiniteClipPostExtrapolation
ÜÜ' F
=
ÜÜG H
TimelineClip
ÜÜI U
.
ÜÜU V
ClipExtrapolation
ÜÜV g
.
ÜÜg h
None
ÜÜh l
;
ÜÜl m
[
àà 	
SerializeField
àà	 
,
àà "
FormerlySerializedAs
àà -
(
àà- .
$str
àà. H
)
ààH I
]
ààI J
Vector3
ââ *
m_InfiniteClipOffsetPosition
ââ ,
=
ââ- .
Vector3
ââ/ 6
.
ââ6 7
zero
ââ7 ;
;
ââ; <
[
ãã 	
SerializeField
ãã	 
,
ãã "
FormerlySerializedAs
ãã -
(
ãã- .
$str
ãã. K
)
ããK L
]
ããL M
Vector3
åå -
m_InfiniteClipOffsetEulerAngles
åå /
=
åå0 1
Vector3
åå2 9
.
åå9 :
zero
åå: >
;
åå> ?
[
éé 	
SerializeField
éé	 
,
éé "
FormerlySerializedAs
éé -
(
éé- .
$str
éé. D
)
ééD E
]
ééE F
double
èè &
m_InfiniteClipTimeOffset
èè '
;
èè' (
[
ëë 	
SerializeField
ëë	 
,
ëë "
FormerlySerializedAs
ëë -
(
ëë- .
$str
ëë. F
)
ëëF G
]
ëëG H
bool
íí (
m_InfiniteClipRemoveOffset
íí '
;
íí' (
[
îî 	
SerializeField
îî	 
]
îî 
bool
ïï '
m_InfiniteClipApplyFootIK
ïï &
=
ïï' (
true
ïï) -
;
ïï- .
[
óó 	
SerializeField
óó	 
,
óó 
HideInInspector
óó (
]
óó( )$
AnimationPlayableAsset
òò 
.
òò 
LoopMode
òò '
mInfiniteClipLoop
òò( 9
=
òò: ;$
AnimationPlayableAsset
òò< R
.
òòR S
LoopMode
òòS [
.
òò[ \
UseSourceAsset
òò\ j
;
òòj k
[
öö 	
SerializeField
öö	 
]
öö 
MatchTargetFields
õõ !
m_MatchTargetFields
õõ -
=
õõ. /'
MatchTargetFieldConstants
õõ0 I
.
õõI J
All
õõJ M
;
õõM N
[
úú 	
SerializeField
úú	 
]
úú 
Vector3
ùù 

m_Position
ùù 
=
ùù 
Vector3
ùù $
.
ùù$ %
zero
ùù% )
;
ùù) *
[
ûû 	
SerializeField
ûû	 
]
ûû 
Vector3
üü 
m_EulerAngles
üü 
=
üü 
Vector3
üü  '
.
üü' (
zero
üü( ,
;
üü, -
[
¢¢ 	
SerializeField
¢¢	 
]
¢¢ 

AvatarMask
¢¢ #
m_AvatarMask
¢¢$ 0
;
¢¢0 1
[
££ 	
SerializeField
££	 
]
££ 
bool
££ 
m_ApplyAvatarMask
££ /
=
££0 1
true
££2 6
;
££6 7
[
•• 	
SerializeField
••	 
]
•• 
TrackOffset
•• $
m_TrackOffset
••% 2
=
••3 4
TrackOffset
••5 @
.
••@ A#
ApplyTransformOffsets
••A V
;
••V W
[
ßß 	
SerializeField
ßß	 
,
ßß 
HideInInspector
ßß (
]
ßß( )
AnimationClip
ßß* 7
m_InfiniteClip
ßß8 F
;
ßßF G
private
´´ 
AnimationClip
´´ 
m_DefaultPoseClip
´´ /
;
´´/ 0
private
¨¨ 
AnimationClip
¨¨ $
m_CachedPropertiesClip
¨¨ 4
;
¨¨4 5
private
≠≠ 
int
≠≠ 
m_CachedHash
≠≠ *
;
≠≠* +
private
ÆÆ  
EditorCurveBinding
ÆÆ "
[
ÆÆ" #
]
ÆÆ# $
m_CachedBindings
ÆÆ% 5
;
ÆÆ5 6%
AnimationOffsetPlayable
∞∞ 
m_ClipOffset
∞∞  ,
;
∞∞, -
private
≤≤ 
Vector3
≤≤ #
m_SceneOffsetPosition
≤≤ -
=
≤≤. /
Vector3
≤≤0 7
.
≤≤7 8
zero
≤≤8 <
;
≤≤< =
private
≥≥ 
Vector3
≥≥ #
m_SceneOffsetRotation
≥≥ -
=
≥≥. /
Vector3
≥≥0 7
.
≥≥7 8
zero
≥≥8 <
;
≥≥< =
private
µµ 
bool
µµ $
m_HasPreviewComponents
µµ +
=
µµ, -
false
µµ. 3
;
µµ3 4
public
ªª 
Vector3
ªª 
position
ªª 
{
ºº 	
get
ΩΩ 
{
ΩΩ 
return
ΩΩ 

m_Position
ΩΩ #
;
ΩΩ# $
}
ΩΩ% &
set
ææ 
{
ææ 

m_Position
ææ 
=
ææ 
value
ææ $
;
ææ$ %
}
ææ& '
}
øø 	
public
ƒƒ 

Quaternion
ƒƒ 
rotation
ƒƒ "
{
≈≈ 	
get
∆∆ 
{
∆∆ 
return
∆∆ 

Quaternion
∆∆ #
.
∆∆# $
Euler
∆∆$ )
(
∆∆) *
m_EulerAngles
∆∆* 7
)
∆∆7 8
;
∆∆8 9
}
∆∆: ;
set
«« 
{
«« 
m_EulerAngles
«« 
=
««  !
value
««" '
.
««' (
eulerAngles
««( 3
;
««3 4
}
««5 6
}
»» 	
public
ÕÕ 
Vector3
ÕÕ 
eulerAngles
ÕÕ "
{
ŒŒ 	
get
œœ 
{
œœ 
return
œœ 
m_EulerAngles
œœ &
;
œœ& '
}
œœ( )
set
–– 
{
–– 
m_EulerAngles
–– 
=
––  !
value
––" '
;
––' (
}
––) *
}
—— 	
[
ŸŸ 	
Obsolete
ŸŸ	 
(
ŸŸ 
$str
ŸŸ F
,
ŸŸF G
true
ŸŸH L
)
ŸŸL M
]
ŸŸM N
public
⁄⁄ 
bool
⁄⁄ 
applyOffsets
⁄⁄  
{
€€ 	
get
‹‹ 
{
‹‹ 
return
‹‹ 
false
‹‹ 
;
‹‹ 
}
‹‹  !
set
›› 
{
›› 
}
›› 
}
ﬁﬁ 	
public
ÊÊ 
TrackOffset
ÊÊ 
trackOffset
ÊÊ &
{
ÁÁ 	
get
ËË 
{
ËË 
return
ËË 
m_TrackOffset
ËË &
;
ËË& '
}
ËË( )
set
ÈÈ 
{
ÈÈ 
m_TrackOffset
ÈÈ 
=
ÈÈ  !
value
ÈÈ" '
;
ÈÈ' (
}
ÈÈ) *
}
ÍÍ 	
public
ÔÔ 
MatchTargetFields
ÔÔ  
matchTargetFields
ÔÔ! 2
{
 	
get
ÒÒ 
{
ÒÒ 
return
ÒÒ !
m_MatchTargetFields
ÒÒ ,
;
ÒÒ, -
}
ÒÒ. /
set
ÚÚ 
{
ÚÚ !
m_MatchTargetFields
ÚÚ %
=
ÚÚ& '
value
ÚÚ( -
&
ÚÚ. /'
MatchTargetFieldConstants
ÚÚ0 I
.
ÚÚI J
All
ÚÚJ M
;
ÚÚM N
}
ÚÚO P
}
ÛÛ 	
public
˚˚ 
AnimationClip
˚˚ 
infiniteClip
˚˚ )
{
¸¸ 	
get
˝˝ 
{
˝˝ 
return
˝˝ 
m_InfiniteClip
˝˝ '
;
˝˝' (
}
˝˝) *
internal
˛˛ 
set
˛˛ 
{
˛˛ 
m_InfiniteClip
˛˛ )
=
˛˛* +
value
˛˛, 1
;
˛˛1 2
}
˛˛3 4
}
ˇˇ 	
internal
ÇÇ 
bool
ÇÇ &
infiniteClipRemoveOffset
ÇÇ .
{
ÉÉ 	
get
ÑÑ 
{
ÑÑ 
return
ÑÑ (
m_InfiniteClipRemoveOffset
ÑÑ 3
;
ÑÑ3 4
}
ÑÑ5 6
set
ÖÖ 
{
ÖÖ (
m_InfiniteClipRemoveOffset
ÖÖ ,
=
ÖÖ- .
value
ÖÖ/ 4
;
ÖÖ4 5
}
ÖÖ6 7
}
ÜÜ 	
public
éé 

AvatarMask
éé 

avatarMask
éé $
{
èè 	
get
êê 
{
êê 
return
êê 
m_AvatarMask
êê %
;
êê% &
}
êê' (
set
ëë 
{
ëë 
m_AvatarMask
ëë 
=
ëë  
value
ëë! &
;
ëë& '
}
ëë( )
}
íí 	
public
óó 
bool
óó 
applyAvatarMask
óó #
{
òò 	
get
ôô 
{
ôô 
return
ôô 
m_ApplyAvatarMask
ôô *
;
ôô* +
}
ôô, -
set
öö 
{
öö 
m_ApplyAvatarMask
öö #
=
öö$ %
value
öö& +
;
öö+ ,
}
öö- .
}
õõ 	
internal
üü 
override
üü 
bool
üü 
CanCompileClips
üü .
(
üü. /
)
üü/ 0
{
†† 	
return
°° 
!
°° 
muted
°° 
&&
°° 
(
°° 
m_Clips
°° %
.
°°% &
Count
°°& +
>
°°, -
$num
°°. /
||
°°0 2
(
°°3 4
m_InfiniteClip
°°4 B
!=
°°C E
null
°°F J
&&
°°K M
!
°°N O
m_InfiniteClip
°°O ]
.
°°] ^
empty
°°^ c
)
°°c d
)
°°d e
;
°°e f
}
¢¢ 	
public
•• 
override
•• 
IEnumerable
•• #
<
••# $
PlayableBinding
••$ 3
>
••3 4
outputs
••5 <
{
¶¶ 	
get
ßß 
{
ßß 
yield
ßß 
return
ßß &
AnimationPlayableBinding
ßß 7
.
ßß7 8
Create
ßß8 >
(
ßß> ?
name
ßß? C
,
ßßC D
this
ßßE I
)
ßßI J
;
ßßJ K
}
ßßL M
}
®® 	
public
ÆÆ 
bool
ÆÆ 

inClipMode
ÆÆ 
{
ØØ 	
get
∞∞ 
{
∞∞ 
return
∞∞ 
clips
∞∞ 
!=
∞∞ !
null
∞∞" &
&&
∞∞' )
clips
∞∞* /
.
∞∞/ 0
Length
∞∞0 6
!=
∞∞7 9
$num
∞∞: ;
;
∞∞; <
}
∞∞= >
}
±± 	
public
∂∂ 
Vector3
∂∂ (
infiniteClipOffsetPosition
∂∂ 1
{
∑∑ 	
get
∏∏ 
{
∏∏ 
return
∏∏ *
m_InfiniteClipOffsetPosition
∏∏ 5
;
∏∏5 6
}
∏∏7 8
set
ππ 
{
ππ *
m_InfiniteClipOffsetPosition
ππ .
=
ππ/ 0
value
ππ1 6
;
ππ6 7
}
ππ8 9
}
∫∫ 	
public
øø 

Quaternion
øø (
infiniteClipOffsetRotation
øø 4
{
¿¿ 	
get
¡¡ 
{
¡¡ 
return
¡¡ 

Quaternion
¡¡ #
.
¡¡# $
Euler
¡¡$ )
(
¡¡) *-
m_InfiniteClipOffsetEulerAngles
¡¡* I
)
¡¡I J
;
¡¡J K
}
¡¡L M
set
¬¬ 
{
¬¬ -
m_InfiniteClipOffsetEulerAngles
¬¬ 1
=
¬¬2 3
value
¬¬4 9
.
¬¬9 :
eulerAngles
¬¬: E
;
¬¬E F
}
¬¬G H
}
√√ 	
public
»» 
Vector3
»» +
infiniteClipOffsetEulerAngles
»» 4
{
…… 	
get
   
{
   
return
   -
m_InfiniteClipOffsetEulerAngles
   8
;
  8 9
}
  : ;
set
ÀÀ 
{
ÀÀ -
m_InfiniteClipOffsetEulerAngles
ÀÀ 1
=
ÀÀ2 3
value
ÀÀ4 9
;
ÀÀ9 :
}
ÀÀ; <
}
ÃÃ 	
internal
ŒŒ 
bool
ŒŒ %
infiniteClipApplyFootIK
ŒŒ -
{
œœ 	
get
–– 
{
–– 
return
–– '
m_InfiniteClipApplyFootIK
–– 2
;
––2 3
}
––4 5
set
—— 
{
—— '
m_InfiniteClipApplyFootIK
—— +
=
——, -
value
——. 3
;
——3 4
}
——5 6
}
““ 	
internal
‘‘ 
double
‘‘ $
infiniteClipTimeOffset
‘‘ .
{
’’ 	
get
÷÷ 
{
÷÷ 
return
÷÷ &
m_InfiniteClipTimeOffset
÷÷ 1
;
÷÷1 2
}
÷÷3 4
set
◊◊ 
{
◊◊ &
m_InfiniteClipTimeOffset
◊◊ *
=
◊◊+ ,
value
◊◊- 2
;
◊◊2 3
}
◊◊4 5
}
ÿÿ 	
public
›› 
TimelineClip
›› 
.
›› 
ClipExtrapolation
›› -*
infiniteClipPreExtrapolation
››. J
{
ﬁﬁ 	
get
ﬂﬂ 
{
ﬂﬂ 
return
ﬂﬂ ,
m_InfiniteClipPreExtrapolation
ﬂﬂ 7
;
ﬂﬂ7 8
}
ﬂﬂ9 :
set
‡‡ 
{
‡‡ ,
m_InfiniteClipPreExtrapolation
‡‡ 0
=
‡‡1 2
value
‡‡3 8
;
‡‡8 9
}
‡‡: ;
}
·· 	
public
ÊÊ 
TimelineClip
ÊÊ 
.
ÊÊ 
ClipExtrapolation
ÊÊ -+
infiniteClipPostExtrapolation
ÊÊ. K
{
ÁÁ 	
get
ËË 
{
ËË 
return
ËË -
m_InfiniteClipPostExtrapolation
ËË 8
;
ËË8 9
}
ËË: ;
set
ÈÈ 
{
ÈÈ -
m_InfiniteClipPostExtrapolation
ÈÈ 1
=
ÈÈ2 3
value
ÈÈ4 9
;
ÈÈ9 :
}
ÈÈ; <
}
ÍÍ 	
internal
ÔÔ $
AnimationPlayableAsset
ÔÔ '
.
ÔÔ' (
LoopMode
ÔÔ( 0
infiniteClipLoop
ÔÔ1 A
{
 	
get
ÒÒ 
{
ÒÒ 
return
ÒÒ 
mInfiniteClipLoop
ÒÒ *
;
ÒÒ* +
}
ÒÒ, -
set
ÚÚ 
{
ÚÚ 
mInfiniteClipLoop
ÚÚ #
=
ÚÚ$ %
value
ÚÚ& +
;
ÚÚ+ ,
}
ÚÚ- .
}
ÛÛ 	
[
ıı 	
ContextMenu
ıı	 
(
ıı 
$str
ıı $
)
ıı$ %
]
ıı% &
void
ˆˆ 
ResetOffsets
ˆˆ 
(
ˆˆ 
)
ˆˆ 
{
˜˜ 	

m_Position
¯¯ 
=
¯¯ 
Vector3
¯¯  
.
¯¯  !
zero
¯¯! %
;
¯¯% &
m_EulerAngles
˘˘ 
=
˘˘ 
Vector3
˘˘ #
.
˘˘# $
zero
˘˘$ (
;
˘˘( )
UpdateClipOffsets
˙˙ 
(
˙˙ 
)
˙˙ 
;
˙˙  
}
˚˚ 	
public
ÇÇ 
TimelineClip
ÇÇ 

CreateClip
ÇÇ &
(
ÇÇ& '
AnimationClip
ÇÇ' 4
clip
ÇÇ5 9
)
ÇÇ9 :
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
clip
ÑÑ 
==
ÑÑ 
null
ÑÑ 
)
ÑÑ 
return
ÖÖ 
null
ÖÖ 
;
ÖÖ 
var
áá 
newClip
áá 
=
áá 

CreateClip
áá $
<
áá$ %$
AnimationPlayableAsset
áá% ;
>
áá; <
(
áá< =
)
áá= >
;
áá> ?!
AssignAnimationClip
àà 
(
àà  
newClip
àà  '
,
àà' (
clip
àà) -
)
àà- .
;
àà. /
return
ââ 
newClip
ââ 
;
ââ 
}
ää 	
public
°° 
void
°°  
CreateInfiniteClip
°° &
(
°°& '
string
°°' -
infiniteClipName
°°. >
)
°°> ?
{
¢¢ 	
if
££ 
(
££ 

inClipMode
££ 
)
££ 
{
§§ 
Debug
•• 
.
•• 

LogWarning
••  
(
••  !
$str••! î
)••î ï
;••ï ñ
return
¶¶ 
;
¶¶ 
}
ßß 
if
©© 
(
©© 
m_InfiniteClip
©© 
!=
©© !
null
©©" &
)
©©& '
return
™™ 
;
™™ 
m_InfiniteClip
¨¨ 
=
¨¨ %
TimelineCreateUtilities
¨¨ 4
.
¨¨4 5)
CreateAnimationClipForTrack
¨¨5 P
(
¨¨P Q
string
¨¨Q W
.
¨¨W X
IsNullOrEmpty
¨¨X e
(
¨¨e f
infiniteClipName
¨¨f v
)
¨¨v w
?
¨¨x y(
k_DefaultInfiniteClipName¨¨z ì
:¨¨î ï 
infiniteClipName¨¨ñ ¶
,¨¨¶ ß
this¨¨® ¨
,¨¨¨ ≠
false¨¨Æ ≥
)¨¨≥ ¥
;¨¨¥ µ
}
≠≠ 	
public
øø 
TimelineClip
øø "
CreateRecordableClip
øø 0
(
øø0 1
string
øø1 7
animClipName
øø8 D
)
øøD E
{
¿¿ 	
var
¡¡ 
clip
¡¡ 
=
¡¡ %
TimelineCreateUtilities
¡¡ .
.
¡¡. /)
CreateAnimationClipForTrack
¡¡/ J
(
¡¡J K
string
¡¡K Q
.
¡¡Q R
IsNullOrEmpty
¡¡R _
(
¡¡_ `
animClipName
¡¡` l
)
¡¡l m
?
¡¡n o*
k_DefaultRecordableClipName¡¡p ã
:¡¡å ç
animClipName¡¡é ö
,¡¡ö õ
this¡¡ú †
,¡¡† °
false¡¡¢ ß
)¡¡ß ®
;¡¡® ©
var
√√ 
timelineClip
√√ 
=
√√ 

CreateClip
√√ )
(
√√) *
clip
√√* .
)
√√. /
;
√√/ 0
timelineClip
ƒƒ 
.
ƒƒ 
displayName
ƒƒ $
=
ƒƒ% &
animClipName
ƒƒ' 3
;
ƒƒ3 4
timelineClip
≈≈ 
.
≈≈ 

recordable
≈≈ #
=
≈≈$ %
true
≈≈& *
;
≈≈* +
timelineClip
∆∆ 
.
∆∆ 
start
∆∆ 
=
∆∆  
$num
∆∆! "
;
∆∆" #
timelineClip
«« 
.
«« 
duration
«« !
=
««" #
$num
««$ %
;
««% &
var
…… 
apa
…… 
=
…… 
timelineClip
…… "
.
……" #
asset
……# (
as
……) +$
AnimationPlayableAsset
……, B
;
……B C
if
   
(
   
apa
   
!=
   
null
   
)
   
apa
ÀÀ 
.
ÀÀ 
removeStartOffset
ÀÀ %
=
ÀÀ& '
false
ÀÀ( -
;
ÀÀ- .
return
ÕÕ 
timelineClip
ÕÕ 
;
ÕÕ  
}
ŒŒ 	
internal
—— 
Vector3
—— !
sceneOffsetPosition
—— ,
{
““ 	
get
”” 
{
”” 
return
”” #
m_SceneOffsetPosition
”” .
;
””. /
}
””0 1
set
‘‘ 
{
‘‘ #
m_SceneOffsetPosition
‘‘ '
=
‘‘( )
value
‘‘* /
;
‘‘/ 0
}
‘‘1 2
}
’’ 	
internal
◊◊ 
Vector3
◊◊ !
sceneOffsetRotation
◊◊ ,
{
ÿÿ 	
get
ŸŸ 
{
ŸŸ 
return
ŸŸ #
m_SceneOffsetRotation
ŸŸ .
;
ŸŸ. /
}
ŸŸ0 1
set
⁄⁄ 
{
⁄⁄ #
m_SceneOffsetRotation
⁄⁄ '
=
⁄⁄( )
value
⁄⁄* /
;
⁄⁄/ 0
}
⁄⁄1 2
}
€€ 	
internal
›› 
bool
›› "
hasPreviewComponents
›› *
{
ﬁﬁ 	
get
ﬂﬂ 
{
‡‡ 
if
·· 
(
·· $
m_HasPreviewComponents
·· *
)
··* +
return
‚‚ 
true
‚‚ 
;
‚‚  
var
‰‰ 
parentTrack
‰‰ 
=
‰‰  !
parent
‰‰" (
as
‰‰) +
AnimationTrack
‰‰, :
;
‰‰: ;
if
ÂÂ 
(
ÂÂ 
parentTrack
ÂÂ 
!=
ÂÂ  "
null
ÂÂ# '
)
ÂÂ' (
{
ÊÊ 
return
ÁÁ 
parentTrack
ÁÁ &
.
ÁÁ& '"
hasPreviewComponents
ÁÁ' ;
;
ÁÁ; <
}
ËË 
return
ÍÍ 
false
ÍÍ 
;
ÍÍ 
}
ÎÎ 
}
ÏÏ 	
	protected
ÛÛ 
override
ÛÛ 
void
ÛÛ 
OnCreateClip
ÛÛ  ,
(
ÛÛ, -
TimelineClip
ÛÛ- 9
clip
ÛÛ: >
)
ÛÛ> ?
{
ÙÙ 	
var
ıı 
extrapolation
ıı 
=
ıı 
TimelineClip
ıı  ,
.
ıı, -
ClipExtrapolation
ıı- >
.
ıı> ?
None
ıı? C
;
ııC D
if
ˆˆ 
(
ˆˆ 
!
ˆˆ 

isSubTrack
ˆˆ 
)
ˆˆ 
extrapolation
˜˜ 
=
˜˜ 
TimelineClip
˜˜  ,
.
˜˜, -
ClipExtrapolation
˜˜- >
.
˜˜> ?
Hold
˜˜? C
;
˜˜C D
clip
¯¯ 
.
¯¯ "
preExtrapolationMode
¯¯ %
=
¯¯& '
extrapolation
¯¯( 5
;
¯¯5 6
clip
˘˘ 
.
˘˘ #
postExtrapolationMode
˘˘ &
=
˘˘' (
extrapolation
˘˘) 6
;
˘˘6 7
}
˙˙ 	
	protected
¸¸ 
internal
¸¸ 
override
¸¸ #
int
¸¸$ ' 
CalculateItemsHash
¸¸( :
(
¸¸: ;
)
¸¸; <
{
˝˝ 	
return
˛˛ "
GetAnimationClipHash
˛˛ '
(
˛˛' (
m_InfiniteClip
˛˛( 6
)
˛˛6 7
.
˛˛7 8
CombineHash
˛˛8 C
(
˛˛C D
base
˛˛D H
.
˛˛H I 
CalculateItemsHash
˛˛I [
(
˛˛[ \
)
˛˛\ ]
)
˛˛] ^
;
˛˛^ _
}
ˇˇ 	
internal
ÅÅ 
void
ÅÅ 
UpdateClipOffsets
ÅÅ '
(
ÅÅ' (
)
ÅÅ( )
{
ÇÇ 	
if
ÑÑ 
(
ÑÑ 
m_ClipOffset
ÑÑ 
.
ÑÑ 
IsValid
ÑÑ $
(
ÑÑ$ %
)
ÑÑ% &
)
ÑÑ& '
{
ÖÖ 
m_ClipOffset
ÜÜ 
.
ÜÜ 
SetPosition
ÜÜ (
(
ÜÜ( )
position
ÜÜ) 1
)
ÜÜ1 2
;
ÜÜ2 3
m_ClipOffset
áá 
.
áá 
SetRotation
áá (
(
áá( )
rotation
áá) 1
)
áá1 2
;
áá2 3
}
àà 
}
ää 	
Playable
åå "
CompileTrackPlayable
åå %
(
åå% &
PlayableGraph
åå& 3
graph
åå4 9
,
åå9 :
AnimationTrack
åå; I
track
ååJ O
,
ååO P

GameObject
ååQ [
go
åå\ ^
,
åå^ _
IntervalTree
åå` l
<
åål m
RuntimeElement
ååm {
>
åå{ |
treeåå} Å
,ååÅ Ç!
AppliedOffsetModeååÉ î
modeååï ô
)ååô ö
{
çç 	
var
éé 
mixer
éé 
=
éé $
AnimationMixerPlayable
éé .
.
éé. /
Create
éé/ 5
(
éé5 6
graph
éé6 ;
,
éé; <
track
éé= B
.
ééB C
clips
ééC H
.
ééH I
Length
ééI O
)
ééO P
;
ééP Q
for
èè 
(
èè 
int
èè 
i
èè 
=
èè 
$num
èè 
;
èè 
i
èè 
<
èè 
track
èè  %
.
èè% &
clips
èè& +
.
èè+ ,
Length
èè, 2
;
èè2 3
i
èè4 5
++
èè5 7
)
èè7 8
{
êê 
var
ëë 
c
ëë 
=
ëë 
track
ëë 
.
ëë 
clips
ëë #
[
ëë# $
i
ëë$ %
]
ëë% &
;
ëë& '
var
íí 
asset
íí 
=
íí 
c
íí 
.
íí 
asset
íí #
as
íí$ &
PlayableAsset
íí' 4
;
íí4 5
if
ìì 
(
ìì 
asset
ìì 
==
ìì 
null
ìì !
)
ìì! "
continue
îî 
;
îî 
var
ññ 
animationAsset
ññ "
=
ññ# $
asset
ññ% *
as
ññ+ -$
AnimationPlayableAsset
ññ. D
;
ññD E
if
óó 
(
óó 
animationAsset
óó "
!=
óó# %
null
óó& *
)
óó* +
animationAsset
òò "
.
òò" #
appliedOffsetMode
òò# 4
=
òò5 6
mode
òò7 ;
;
òò; <
var
öö 
source
öö 
=
öö 
asset
öö "
.
öö" #
CreatePlayable
öö# 1
(
öö1 2
graph
öö2 7
,
öö7 8
go
öö9 ;
)
öö; <
;
öö< =
if
õõ 
(
õõ 
source
õõ 
.
õõ 
IsValid
õõ "
(
õõ" #
)
õõ# $
)
õõ$ %
{
úú 
var
ùù 
clip
ùù 
=
ùù 
new
ùù "
RuntimeClip
ùù# .
(
ùù. /
c
ùù/ 0
,
ùù0 1
source
ùù2 8
,
ùù8 9
mixer
ùù: ?
)
ùù? @
;
ùù@ A
tree
ûû 
.
ûû 
Add
ûû 
(
ûû 
clip
ûû !
)
ûû! "
;
ûû" #
graph
üü 
.
üü 
Connect
üü !
(
üü! "
source
üü" (
,
üü( )
$num
üü* +
,
üü+ ,
mixer
üü- 2
,
üü2 3
i
üü4 5
)
üü5 6
;
üü6 7
mixer
†† 
.
†† 
SetInputWeight
†† (
(
††( )
i
††) *
,
††* +
$num
††, 0
)
††0 1
;
††1 2
}
°° 
}
¢¢ 
if
§§ 
(
§§ 
!
§§ 
track
§§ 
.
§§ #
AnimatesRootTransform
§§ ,
(
§§, -
)
§§- .
)
§§. /
return
•• 
mixer
•• 
;
•• 
return
ßß 
ApplyTrackOffset
ßß #
(
ßß# $
graph
ßß$ )
,
ßß) *
mixer
ßß+ 0
,
ßß0 1
go
ßß2 4
,
ßß4 5
mode
ßß6 :
)
ßß: ;
;
ßß; <
}
®® 	
Playable
¨¨ 

ILayerable
¨¨ 
.
¨¨ 
CreateLayerMixer
¨¨ ,
(
¨¨, -
PlayableGraph
¨¨- :
graph
¨¨; @
,
¨¨@ A

GameObject
¨¨B L
go
¨¨M O
,
¨¨O P
int
¨¨Q T

inputCount
¨¨U _
)
¨¨_ `
{
≠≠ 	
return
ÆÆ 
Playable
ÆÆ 
.
ÆÆ 
Null
ÆÆ  
;
ÆÆ  !
}
ØØ 	
internal
±± 
override
±± 
Playable
±± "&
CreateMixerPlayableGraph
±±# ;
(
±±; <
PlayableGraph
±±< I
graph
±±J O
,
±±O P

GameObject
±±Q [
go
±±\ ^
,
±±^ _
IntervalTree
±±` l
<
±±l m
RuntimeElement
±±m {
>
±±{ |
tree±±} Å
)±±Å Ç
{
≤≤ 	
if
≥≥ 
(
≥≥ 

isSubTrack
≥≥ 
)
≥≥ 
throw
¥¥ 
new
¥¥ '
InvalidOperationException
¥¥ 3
(
¥¥3 4
$str
¥¥4 ~
)
¥¥~ 
;¥¥ Ä
List
∂∂ 
<
∂∂ 
AnimationTrack
∂∂ 
>
∂∂  
flattenTracks
∂∂! .
=
∂∂/ 0
new
∂∂1 4
List
∂∂5 9
<
∂∂9 :
AnimationTrack
∂∂: H
>
∂∂H I
(
∂∂I J
)
∂∂J K
;
∂∂K L
if
∑∑ 
(
∑∑ 
CanCompileClips
∑∑ 
(
∑∑  
)
∑∑  !
)
∑∑! "
flattenTracks
∏∏ 
.
∏∏ 
Add
∏∏ !
(
∏∏! "
this
∏∏" &
)
∏∏& '
;
∏∏' (
var
∫∫ 
genericRoot
∫∫ 
=
∫∫  
GetGenericRootNode
∫∫ 0
(
∫∫0 1
go
∫∫1 3
)
∫∫3 4
;
∫∫4 5
var
ªª )
animatesRootTransformNoMask
ªª +
=
ªª, -#
AnimatesRootTransform
ªª. C
(
ªªC D
)
ªªD E
;
ªªE F
var
ºº #
animatesRootTransform
ºº %
=
ºº& ')
animatesRootTransformNoMask
ºº( C
&&
ººD F
!
ººG H+
IsRootTransformDisabledByMask
ººH e
(
ººe f
go
ººf h
,
ººh i
genericRoot
ººj u
)
ººu v
;
ººv w
foreach
ΩΩ 
(
ΩΩ 
var
ΩΩ 
subTrack
ΩΩ !
in
ΩΩ" $
GetChildTracks
ΩΩ% 3
(
ΩΩ3 4
)
ΩΩ4 5
)
ΩΩ5 6
{
ææ 
var
øø 
child
øø 
=
øø 
subTrack
øø $
as
øø% '
AnimationTrack
øø( 6
;
øø6 7
if
¿¿ 
(
¿¿ 
child
¿¿ 
!=
¿¿ 
null
¿¿ !
&&
¿¿" $
child
¿¿% *
.
¿¿* +
CanCompileClips
¿¿+ :
(
¿¿: ;
)
¿¿; <
)
¿¿< =
{
¡¡ 
var
¬¬ 
childAnimatesRoot
¬¬ )
=
¬¬* +
child
¬¬, 1
.
¬¬1 2#
AnimatesRootTransform
¬¬2 G
(
¬¬G H
)
¬¬H I
;
¬¬I J)
animatesRootTransformNoMask
√√ /
|=
√√0 2
child
√√3 8
.
√√8 9#
AnimatesRootTransform
√√9 N
(
√√N O
)
√√O P
;
√√P Q#
animatesRootTransform
ƒƒ )
|=
ƒƒ* ,
(
ƒƒ- .
childAnimatesRoot
ƒƒ. ?
&&
ƒƒ@ B
!
ƒƒC D
child
ƒƒD I
.
ƒƒI J+
IsRootTransformDisabledByMask
ƒƒJ g
(
ƒƒg h
go
ƒƒh j
,
ƒƒj k
genericRoot
ƒƒl w
)
ƒƒw x
)
ƒƒx y
;
ƒƒy z
flattenTracks
≈≈ !
.
≈≈! "
Add
≈≈" %
(
≈≈% &
child
≈≈& +
)
≈≈+ ,
;
≈≈, -
}
∆∆ 
}
«« 
AppliedOffsetMode
   
mode
   "
=
  # $
GetOffsetMode
  % 2
(
  2 3
go
  3 5
,
  5 6#
animatesRootTransform
  7 L
)
  L M
;
  M N
int
ÀÀ 
defaultBlendCount
ÀÀ !
=
ÀÀ" #"
GetDefaultBlendCount
ÀÀ$ 8
(
ÀÀ8 9
)
ÀÀ9 :
;
ÀÀ: ;
var
ÃÃ 

layerMixer
ÃÃ 
=
ÃÃ 
CreateGroupMixer
ÃÃ -
(
ÃÃ- .
graph
ÃÃ. 3
,
ÃÃ3 4
go
ÃÃ5 7
,
ÃÃ7 8
flattenTracks
ÃÃ9 F
.
ÃÃF G
Count
ÃÃG L
+
ÃÃM N
defaultBlendCount
ÃÃO `
)
ÃÃ` a
;
ÃÃa b
for
ÕÕ 
(
ÕÕ 
int
ÕÕ 
c
ÕÕ 
=
ÕÕ 
$num
ÕÕ 
;
ÕÕ 
c
ÕÕ 
<
ÕÕ 
flattenTracks
ÕÕ  -
.
ÕÕ- .
Count
ÕÕ. 3
;
ÕÕ3 4
c
ÕÕ5 6
++
ÕÕ6 8
)
ÕÕ8 9
{
ŒŒ 
int
œœ 

blendIndex
œœ 
=
œœ  
c
œœ! "
+
œœ# $
defaultBlendCount
œœ% 6
;
œœ6 7
var
—— 
	childMode
—— 
=
—— 
mode
——  $
;
——$ %
if
““ 
(
““ 
mode
““ 
!=
““ 
AppliedOffsetMode
““ -
.
““- .
NoRootTransform
““. =
&&
““> @
flattenTracks
““A N
[
““N O
c
““O P
]
““P Q
.
““Q R+
IsRootTransformDisabledByMask
““R o
(
““o p
go
““p r
,
““r s
genericRoot
““t 
)““ Ä
)““Ä Å
	childMode
”” 
=
”” 
AppliedOffsetMode
””  1
.
””1 2
NoRootTransform
””2 A
;
””A B
var
’’ #
compiledTrackPlayable
’’ )
=
’’* +
flattenTracks
’’, 9
[
’’9 :
c
’’: ;
]
’’; <
.
’’< =

inClipMode
’’= G
?
’’H I"
CompileTrackPlayable
÷÷ (
(
÷÷( )
graph
÷÷) .
,
÷÷. /
flattenTracks
÷÷0 =
[
÷÷= >
c
÷÷> ?
]
÷÷? @
,
÷÷@ A
go
÷÷B D
,
÷÷D E
tree
÷÷F J
,
÷÷J K
	childMode
÷÷L U
)
÷÷U V
:
÷÷W X
flattenTracks
◊◊ !
[
◊◊! "
c
◊◊" #
]
◊◊# $
.
◊◊$ %)
CreateInfiniteTrackPlayable
◊◊% @
(
◊◊@ A
graph
◊◊A F
,
◊◊F G
go
◊◊H J
,
◊◊J K
tree
◊◊L P
,
◊◊P Q
	childMode
◊◊R [
)
◊◊[ \
;
◊◊\ ]
graph
ÿÿ 
.
ÿÿ 
Connect
ÿÿ 
(
ÿÿ #
compiledTrackPlayable
ÿÿ 3
,
ÿÿ3 4
$num
ÿÿ5 6
,
ÿÿ6 7

layerMixer
ÿÿ8 B
,
ÿÿB C

blendIndex
ÿÿD N
)
ÿÿN O
;
ÿÿO P

layerMixer
ŸŸ 
.
ŸŸ 
SetInputWeight
ŸŸ )
(
ŸŸ) *

blendIndex
ŸŸ* 4
,
ŸŸ4 5
flattenTracks
ŸŸ6 C
[
ŸŸC D
c
ŸŸD E
]
ŸŸE F
.
ŸŸF G

inClipMode
ŸŸG Q
?
ŸŸR S
$num
ŸŸT U
:
ŸŸV W
$num
ŸŸX Y
)
ŸŸY Z
;
ŸŸZ [
if
⁄⁄ 
(
⁄⁄ 
flattenTracks
⁄⁄ !
[
⁄⁄! "
c
⁄⁄" #
]
⁄⁄# $
.
⁄⁄$ %
applyAvatarMask
⁄⁄% 4
&&
⁄⁄5 7
flattenTracks
⁄⁄8 E
[
⁄⁄E F
c
⁄⁄F G
]
⁄⁄G H
.
⁄⁄H I

avatarMask
⁄⁄I S
!=
⁄⁄T V
null
⁄⁄W [
)
⁄⁄[ \
{
€€ 

layerMixer
‹‹ 
.
‹‹ (
SetLayerMaskFromAvatarMask
‹‹ 9
(
‹‹9 :
(
‹‹: ;
uint
‹‹; ?
)
‹‹? @

blendIndex
‹‹@ J
,
‹‹J K
flattenTracks
‹‹L Y
[
‹‹Y Z
c
‹‹Z [
]
‹‹[ \
.
‹‹\ ]

avatarMask
‹‹] g
)
‹‹g h
;
‹‹h i
}
›› 
}
ﬁﬁ 
var
‡‡ %
requiresMotionXPlayable
‡‡ '
=
‡‡( )%
RequiresMotionXPlayable
‡‡* A
(
‡‡A B
mode
‡‡B F
,
‡‡F G
go
‡‡H J
)
‡‡J K
;
‡‡K L%
requiresMotionXPlayable
‰‰ #
|=
‰‰$ &
(
‰‰' (
defaultBlendCount
‰‰( 9
>
‰‰: ;
$num
‰‰< =
&&
‰‰> @%
RequiresMotionXPlayable
‰‰A X
(
‰‰X Y
GetOffsetMode
‰‰Y f
(
‰‰f g
go
‰‰g i
,
‰‰i j*
animatesRootTransformNoMask‰‰k Ü
)‰‰Ü á
,‰‰á à
go‰‰â ã
)‰‰ã å
)‰‰å ç
;‰‰ç é 
AttachDefaultBlend
ÁÁ 
(
ÁÁ 
graph
ÁÁ $
,
ÁÁ$ %

layerMixer
ÁÁ& 0
,
ÁÁ0 1%
requiresMotionXPlayable
ÁÁ2 I
)
ÁÁI J
;
ÁÁJ K
Playable
ÍÍ 
mixer
ÍÍ 
=
ÍÍ 

layerMixer
ÍÍ '
;
ÍÍ' (
if
ÎÎ 
(
ÎÎ %
requiresMotionXPlayable
ÎÎ '
)
ÎÎ' (
{
ÏÏ 
var
ÓÓ 
motionXToDelta
ÓÓ "
=
ÓÓ# $-
AnimationMotionXToDeltaPlayable
ÓÓ% D
.
ÓÓD E
Create
ÓÓE K
(
ÓÓK L
graph
ÓÓL Q
)
ÓÓQ R
;
ÓÓR S
graph
ÔÔ 
.
ÔÔ 
Connect
ÔÔ 
(
ÔÔ 
mixer
ÔÔ #
,
ÔÔ# $
$num
ÔÔ% &
,
ÔÔ& '
motionXToDelta
ÔÔ( 6
,
ÔÔ6 7
$num
ÔÔ8 9
)
ÔÔ9 :
;
ÔÔ: ;
motionXToDelta
 
.
 
SetInputWeight
 -
(
- .
$num
. /
,
/ 0
$num
1 5
)
5 6
;
6 7
motionXToDelta
ÒÒ 
.
ÒÒ 
SetAbsoluteMotion
ÒÒ 0
(
ÒÒ0 1 
UsesAbsoluteMotion
ÒÒ1 C
(
ÒÒC D
mode
ÒÒD H
)
ÒÒH I
)
ÒÒI J
;
ÒÒJ K
mixer
ÚÚ 
=
ÚÚ 
(
ÚÚ 
Playable
ÚÚ !
)
ÚÚ! "
motionXToDelta
ÚÚ" 0
;
ÚÚ0 1
}
ÛÛ 
if
˜˜ 
(
˜˜ 
!
˜˜ 
Application
˜˜ 
.
˜˜ 
	isPlaying
˜˜ &
)
˜˜& '
{
¯¯ 
var
˘˘ 
animator
˘˘ 
=
˘˘ 

GetBinding
˘˘ )
(
˘˘) *
go
˘˘* ,
!=
˘˘- /
null
˘˘0 4
?
˘˘5 6
go
˘˘7 9
.
˘˘9 :
GetComponent
˘˘: F
<
˘˘F G
PlayableDirector
˘˘G W
>
˘˘W X
(
˘˘X Y
)
˘˘Y Z
:
˘˘[ \
null
˘˘] a
)
˘˘a b
;
˘˘b c
if
˙˙ 
(
˙˙ 
animator
˙˙ 
!=
˙˙ 
null
˙˙  $
)
˙˙$ %
{
˚˚ 

GameObject
¸¸ 
targetGO
¸¸ '
=
¸¸( )
animator
¸¸* 2
.
¸¸2 3

gameObject
¸¸3 =
;
¸¸= >%
IAnimationWindowPreview
˝˝ +
[
˝˝+ ,
]
˝˝, -
previewComponents
˝˝. ?
=
˝˝@ A
targetGO
˝˝B J
.
˝˝J K
GetComponents
˝˝K X
<
˝˝X Y%
IAnimationWindowPreview
˝˝Y p
>
˝˝p q
(
˝˝q r
)
˝˝r s
;
˝˝s t$
m_HasPreviewComponents
ˇˇ *
=
ˇˇ+ ,
previewComponents
ˇˇ- >
.
ˇˇ> ?
Length
ˇˇ? E
>
ˇˇF G
$num
ˇˇH I
;
ˇˇI J
if
ÄÄ 
(
ÄÄ $
m_HasPreviewComponents
ÄÄ .
)
ÄÄ. /
{
ÅÅ 
foreach
ÇÇ 
(
ÇÇ  !
var
ÇÇ! $
	component
ÇÇ% .
in
ÇÇ/ 1
previewComponents
ÇÇ2 C
)
ÇÇC D
{
ÉÉ 
mixer
ÑÑ !
=
ÑÑ" #
	component
ÑÑ$ -
.
ÑÑ- .
BuildPreviewGraph
ÑÑ. ?
(
ÑÑ? @
graph
ÑÑ@ E
,
ÑÑE F
mixer
ÑÑG L
)
ÑÑL M
;
ÑÑM N
}
ÖÖ 
}
ÜÜ 
}
áá 
}
àà 
return
ãã 
mixer
ãã 
;
ãã 
}
åå 	
private
éé 
int
éé "
GetDefaultBlendCount
éé (
(
éé( )
)
éé) *
{
èè 	
if
ëë 
(
ëë 
Application
ëë 
.
ëë 
	isPlaying
ëë %
)
ëë% &
return
íí 
$num
íí 
;
íí 
return
îî 
(
îî 
(
îî $
m_CachedPropertiesClip
îî +
!=
îî, .
null
îî/ 3
)
îî3 4
?
îî5 6
$num
îî7 8
:
îî9 :
$num
îî; <
)
îî< =
+
îî> ?
(
îî@ A
(
îîA B
m_DefaultPoseClip
îîB S
!=
îîT V
null
îîW [
)
îî[ \
?
îî] ^
$num
îî_ `
:
îîa b
$num
îîc d
)
îîd e
;
îîe f
}
òò 	
private
ùù 
void
ùù  
AttachDefaultBlend
ùù '
(
ùù' (
PlayableGraph
ùù( 5
graph
ùù6 ;
,
ùù; <)
AnimationLayerMixerPlayable
ùù= X
mixer
ùùY ^
,
ùù^ _
bool
ùù` d
requireOffset
ùùe r
)
ùùr s
{
ûû 	
if
†† 
(
†† 
Application
†† 
.
†† 
	isPlaying
†† %
)
††% &
return
°° 
;
°° 
int
££ 

mixerInput
££ 
=
££ 
$num
££ 
;
££ 
if
§§ 
(
§§ $
m_CachedPropertiesClip
§§ &
)
§§& '
{
•• 
var
¶¶ "
cachedPropertiesClip
¶¶ (
=
¶¶) *#
AnimationClipPlayable
¶¶+ @
.
¶¶@ A
Create
¶¶A G
(
¶¶G H
graph
¶¶H M
,
¶¶M N$
m_CachedPropertiesClip
¶¶O e
)
¶¶e f
;
¶¶f g"
cachedPropertiesClip
ßß $
.
ßß$ %
SetApplyFootIK
ßß% 3
(
ßß3 4
false
ßß4 9
)
ßß9 :
;
ßß: ;
var
®® 
defaults
®® 
=
®® 
(
®®  
Playable
®®  (
)
®®( )"
cachedPropertiesClip
®®) =
;
®®= >
if
©© 
(
©© 
requireOffset
©© !
)
©©! "
defaults
™™ 
=
™™ "
AttachOffsetPlayable
™™ 3
(
™™3 4
graph
™™4 9
,
™™9 :
defaults
™™; C
,
™™C D#
m_SceneOffsetPosition
™™E Z
,
™™Z [

Quaternion
™™\ f
.
™™f g
Euler
™™g l
(
™™l m$
m_SceneOffsetRotation™™m Ç
)™™Ç É
)™™É Ñ
;™™Ñ Ö
graph
´´ 
.
´´ 
Connect
´´ 
(
´´ 
defaults
´´ &
,
´´& '
$num
´´( )
,
´´) *
mixer
´´+ 0
,
´´0 1

mixerInput
´´2 <
)
´´< =
;
´´= >
mixer
¨¨ 
.
¨¨ 
SetInputWeight
¨¨ $
(
¨¨$ %

mixerInput
¨¨% /
,
¨¨/ 0
$num
¨¨1 5
)
¨¨5 6
;
¨¨6 7

mixerInput
≠≠ 
++
≠≠ 
;
≠≠ 
}
ÆÆ 
if
∞∞ 
(
∞∞ 
m_DefaultPoseClip
∞∞ !
)
∞∞! "
{
±± 
var
≤≤ 
defaultPose
≤≤ 
=
≤≤  !#
AnimationClipPlayable
≤≤" 7
.
≤≤7 8
Create
≤≤8 >
(
≤≤> ?
graph
≤≤? D
,
≤≤D E
m_DefaultPoseClip
≤≤F W
)
≤≤W X
;
≤≤X Y
defaultPose
≥≥ 
.
≥≥ 
SetApplyFootIK
≥≥ *
(
≥≥* +
false
≥≥+ 0
)
≥≥0 1
;
≥≥1 2
var
¥¥ 
blendDefault
¥¥  
=
¥¥! "
(
¥¥# $
Playable
¥¥$ ,
)
¥¥, -
defaultPose
¥¥- 8
;
¥¥8 9
if
µµ 
(
µµ 
requireOffset
µµ !
)
µµ! "
blendDefault
∂∂  
=
∂∂! ""
AttachOffsetPlayable
∂∂# 7
(
∂∂7 8
graph
∂∂8 =
,
∂∂= >
blendDefault
∂∂? K
,
∂∂K L#
m_SceneOffsetPosition
∂∂M b
,
∂∂b c

Quaternion
∂∂d n
.
∂∂n o
Euler
∂∂o t
(
∂∂t u$
m_SceneOffsetRotation∂∂u ä
)∂∂ä ã
)∂∂ã å
;∂∂å ç
graph
∑∑ 
.
∑∑ 
Connect
∑∑ 
(
∑∑ 
blendDefault
∑∑ *
,
∑∑* +
$num
∑∑, -
,
∑∑- .
mixer
∑∑/ 4
,
∑∑4 5

mixerInput
∑∑6 @
)
∑∑@ A
;
∑∑A B
mixer
∏∏ 
.
∏∏ 
SetInputWeight
∏∏ $
(
∏∏$ %

mixerInput
∏∏% /
,
∏∏/ 0
$num
∏∏1 5
)
∏∏5 6
;
∏∏6 7
}
ππ 
}
ªª 	
private
ΩΩ 
Playable
ΩΩ "
AttachOffsetPlayable
ΩΩ -
(
ΩΩ- .
PlayableGraph
ΩΩ. ;
graph
ΩΩ< A
,
ΩΩA B
Playable
ΩΩC K
playable
ΩΩL T
,
ΩΩT U
Vector3
ΩΩV ]
pos
ΩΩ^ a
,
ΩΩa b

Quaternion
ΩΩc m
rot
ΩΩn q
)
ΩΩq r
{
ææ 	
var
øø 
offsetPlayable
øø 
=
øø  %
AnimationOffsetPlayable
øø! 8
.
øø8 9
Create
øø9 ?
(
øø? @
graph
øø@ E
,
øøE F
pos
øøG J
,
øøJ K
rot
øøL O
,
øøO P
$num
øøQ R
)
øøR S
;
øøS T
offsetPlayable
¿¿ 
.
¿¿ 
SetInputWeight
¿¿ )
(
¿¿) *
$num
¿¿* +
,
¿¿+ ,
$num
¿¿- 1
)
¿¿1 2
;
¿¿2 3
graph
¡¡ 
.
¡¡ 
Connect
¡¡ 
(
¡¡ 
playable
¡¡ "
,
¡¡" #
$num
¡¡$ %
,
¡¡% &
offsetPlayable
¡¡' 5
,
¡¡5 6
$num
¡¡7 8
)
¡¡8 9
;
¡¡9 :
return
¬¬ 
offsetPlayable
¬¬ !
;
¬¬! "
}
√√ 	
private
∆∆ 
static
∆∆ 
string
∆∆ '
k_DefaultHumanoidClipPath
∆∆ 7
=
∆∆8 9
$str∆∆: É
;∆∆É Ñ
private
«« 
static
«« 
AnimationClip
«« $#
s_DefaultHumanoidClip
««% :
=
««; <
null
««= A
;
««A B
AnimationClip
…… $
GetDefaultHumanoidClip
…… ,
(
……, -
)
……- .
{
   	
if
ÀÀ 
(
ÀÀ #
s_DefaultHumanoidClip
ÀÀ %
==
ÀÀ& (
null
ÀÀ) -
)
ÀÀ- .
{
ÃÃ #
s_DefaultHumanoidClip
ÕÕ %
=
ÕÕ& '
AssetDatabase
ÕÕ( 5
.
ÕÕ5 6
LoadAssetAtPath
ÕÕ6 E
<
ÕÕE F
AnimationClip
ÕÕF S
>
ÕÕS T
(
ÕÕT U'
k_DefaultHumanoidClipPath
ÕÕU n
)
ÕÕn o
;
ÕÕo p
if
ŒŒ 
(
ŒŒ #
s_DefaultHumanoidClip
ŒŒ )
==
ŒŒ* ,
null
ŒŒ- 1
)
ŒŒ1 2
Debug
œœ 
.
œœ 
LogError
œœ "
(
œœ" #
$str
œœ# `
)
œœ` a
;
œœa b
}
–– 
return
““ #
s_DefaultHumanoidClip
““ (
;
““( )
}
”” 	
bool
◊◊ %
RequiresMotionXPlayable
◊◊ $
(
◊◊$ %
AppliedOffsetMode
◊◊% 6
mode
◊◊7 ;
,
◊◊; <

GameObject
◊◊= G

gameObject
◊◊H R
)
◊◊R S
{
ÿÿ 	
if
ŸŸ 
(
ŸŸ 
mode
ŸŸ 
==
ŸŸ 
AppliedOffsetMode
ŸŸ )
.
ŸŸ) *
NoRootTransform
ŸŸ* 9
)
ŸŸ9 :
return
⁄⁄ 
false
⁄⁄ 
;
⁄⁄ 
if
€€ 
(
€€ 
mode
€€ 
==
€€ 
AppliedOffsetMode
€€ )
.
€€) *
SceneOffsetLegacy
€€* ;
)
€€; <
{
‹‹ 
var
›› 
animator
›› 
=
›› 

GetBinding
›› )
(
››) *

gameObject
››* 4
!=
››5 7
null
››8 <
?
››= >

gameObject
››? I
.
››I J
GetComponent
››J V
<
››V W
PlayableDirector
››W g
>
››g h
(
››h i
)
››i j
:
››k l
null
››m q
)
››q r
;
››r s
return
ﬁﬁ 
animator
ﬁﬁ 
!=
ﬁﬁ  "
null
ﬁﬁ# '
&&
ﬁﬁ( *
animator
ﬁﬁ+ 3
.
ﬁﬁ3 4
hasRootMotion
ﬁﬁ4 A
;
ﬁﬁA B
}
ﬂﬂ 
return
‡‡ 
true
‡‡ 
;
‡‡ 
}
·· 	
static
„„ 
bool
„„  
UsesAbsoluteMotion
„„ &
(
„„& '
AppliedOffsetMode
„„' 8
mode
„„9 =
)
„„= >
{
‰‰ 	
if
ÁÁ 
(
ÁÁ 
!
ÁÁ 
Application
ÁÁ 
.
ÁÁ 
	isPlaying
ÁÁ &
)
ÁÁ& '
return
ËË 
true
ËË 
;
ËË 
return
ÍÍ 
mode
ÍÍ 
!=
ÍÍ 
AppliedOffsetMode
ÍÍ ,
.
ÍÍ, -
SceneOffset
ÍÍ- 8
&&
ÍÍ9 ;
mode
ÎÎ 
!=
ÎÎ 
AppliedOffsetMode
ÎÎ )
.
ÎÎ) *
SceneOffsetLegacy
ÎÎ* ;
;
ÎÎ; <
}
ÏÏ 	
bool
ÓÓ 
HasController
ÓÓ 
(
ÓÓ 

GameObject
ÓÓ %

gameObject
ÓÓ& 0
)
ÓÓ0 1
{
ÔÔ 	
var
 
animator
 
=
 

GetBinding
 %
(
% &

gameObject
& 0
!=
1 3
null
4 8
?
9 :

gameObject
; E
.
E F
GetComponent
F R
<
R S
PlayableDirector
S c
>
c d
(
d e
)
e f
:
g h
null
i m
)
m n
;
n o
return
ÚÚ 
animator
ÚÚ 
!=
ÚÚ 
null
ÚÚ #
&&
ÚÚ$ &
animator
ÚÚ' /
.
ÚÚ/ 0'
runtimeAnimatorController
ÚÚ0 I
!=
ÚÚJ L
null
ÚÚM Q
;
ÚÚQ R
}
ÛÛ 	
internal
ıı 
Animator
ıı 

GetBinding
ıı $
(
ıı$ %
PlayableDirector
ıı% 5
director
ıı6 >
)
ıı> ?
{
ˆˆ 	
if
˜˜ 
(
˜˜ 
director
˜˜ 
==
˜˜ 
null
˜˜  
)
˜˜  !
return
¯¯ 
null
¯¯ 
;
¯¯ 
UnityEngine
˙˙ 
.
˙˙ 
Object
˙˙ 
key
˙˙ "
=
˙˙# $
this
˙˙% )
;
˙˙) *
if
˚˚ 
(
˚˚ 

isSubTrack
˚˚ 
)
˚˚ 
key
¸¸ 
=
¸¸ 
parent
¸¸ 
;
¸¸ 
UnityEngine
˛˛ 
.
˛˛ 
Object
˛˛ 
binding
˛˛ &
=
˛˛' (
null
˛˛) -
;
˛˛- .
if
ˇˇ 
(
ˇˇ 
director
ˇˇ 
!=
ˇˇ 
null
ˇˇ  
)
ˇˇ  !
binding
ÄÄ 
=
ÄÄ 
director
ÄÄ "
.
ÄÄ" #
GetGenericBinding
ÄÄ# 4
(
ÄÄ4 5
key
ÄÄ5 8
)
ÄÄ8 9
;
ÄÄ9 :
Animator
ÇÇ 
animator
ÇÇ 
=
ÇÇ 
null
ÇÇ  $
;
ÇÇ$ %
if
ÉÉ 
(
ÉÉ 
binding
ÉÉ 
!=
ÉÉ 
null
ÉÉ 
)
ÉÉ  
{
ÑÑ 
animator
ÖÖ 
=
ÖÖ 
binding
ÖÖ "
as
ÖÖ# %
Animator
ÖÖ& .
;
ÖÖ. /
var
ÜÜ 

gameObject
ÜÜ 
=
ÜÜ  
binding
ÜÜ! (
as
ÜÜ) +

GameObject
ÜÜ, 6
;
ÜÜ6 7
if
áá 
(
áá 
animator
áá 
==
áá 
null
áá  $
&&
áá% '

gameObject
áá( 2
!=
áá3 5
null
áá6 :
)
áá: ;
animator
àà 
=
àà 

gameObject
àà )
.
àà) *
GetComponent
àà* 6
<
àà6 7
Animator
àà7 ?
>
àà? @
(
àà@ A
)
ààA B
;
ààB C
}
ââ 
return
ãã 
animator
ãã 
;
ãã 
}
åå 	
static
éé )
AnimationLayerMixerPlayable
éé *
CreateGroupMixer
éé+ ;
(
éé; <
PlayableGraph
éé< I
graph
ééJ O
,
ééO P

GameObject
ééQ [
go
éé\ ^
,
éé^ _
int
éé` c

inputCount
ééd n
)
één o
{
èè 	
return
êê )
AnimationLayerMixerPlayable
êê .
.
êê. /
Create
êê/ 5
(
êê5 6
graph
êê6 ;
,
êê; <

inputCount
êê= G
)
êêG H
;
êêH I
}
ëë 	
Playable
ìì )
CreateInfiniteTrackPlayable
ìì ,
(
ìì, -
PlayableGraph
ìì- :
graph
ìì; @
,
ìì@ A

GameObject
ììB L
go
ììM O
,
ììO P
IntervalTree
ììQ ]
<
ìì] ^
RuntimeElement
ìì^ l
>
ììl m
tree
ììn r
,
ììr s 
AppliedOffsetModeììt Ö
modeììÜ ä
)ììä ã
{
îî 	
if
ïï 
(
ïï 
m_InfiniteClip
ïï 
==
ïï !
null
ïï" &
)
ïï& '
return
ññ 
Playable
ññ 
.
ññ  
Null
ññ  $
;
ññ$ %
var
òò 
mixer
òò 
=
òò $
AnimationMixerPlayable
òò .
.
òò. /
Create
òò/ 5
(
òò5 6
graph
òò6 ;
,
òò; <
$num
òò= >
)
òò> ?
;
òò? @
var
ùù 
playable
ùù 
=
ùù $
AnimationPlayableAsset
ùù 1
.
ùù1 2
CreatePlayable
ùù2 @
(
ùù@ A
graph
ùùA F
,
ùùF G
m_InfiniteClip
ùùH V
,
ùùV W*
m_InfiniteClipOffsetPosition
ùùX t
,
ùùt u.
m_InfiniteClipOffsetEulerAnglesùùv ï
,ùùï ñ
falseùùó ú
,ùùú ù
modeùùû ¢
,ùù¢ £'
infiniteClipApplyFootIKùù§ ª
,ùùª º&
AnimationPlayableAssetùùΩ ”
.ùù” ‘
LoopModeùù‘ ‹
.ùù‹ ›
Offùù› ‡
)ùù‡ ·
;ùù· ‚
if
ûû 
(
ûû 
playable
ûû 
.
ûû 
IsValid
ûû  
(
ûû  !
)
ûû! "
)
ûû" #
{
üü 
tree
†† 
.
†† 
Add
†† 
(
†† 
new
†† !
InfiniteRuntimeClip
†† 0
(
††0 1
playable
††1 9
)
††9 :
)
††: ;
;
††; <
graph
°° 
.
°° 
Connect
°° 
(
°° 
playable
°° &
,
°°& '
$num
°°( )
,
°°) *
mixer
°°+ 0
,
°°0 1
$num
°°2 3
)
°°3 4
;
°°4 5
mixer
¢¢ 
.
¢¢ 
SetInputWeight
¢¢ $
(
¢¢$ %
$num
¢¢% &
,
¢¢& '
$num
¢¢( ,
)
¢¢, -
;
¢¢- .
}
££ 
if
•• 
(
•• 
!
•• #
AnimatesRootTransform
•• &
(
••& '
)
••' (
)
••( )
return
¶¶ 
mixer
¶¶ 
;
¶¶ 
var
®® 
	rootTrack
®® 
=
®® 

isSubTrack
®® &
?
®®' (
(
®®) *
AnimationTrack
®®* 8
)
®®8 9
parent
®®9 ?
:
®®@ A
this
®®B F
;
®®F G
return
©© 
	rootTrack
©© 
.
©© 
ApplyTrackOffset
©© -
(
©©- .
graph
©©. 3
,
©©3 4
mixer
©©5 :
,
©©: ;
go
©©< >
,
©©> ?
mode
©©@ D
)
©©D E
;
©©E F
}
™™ 	
Playable
¨¨ 
ApplyTrackOffset
¨¨ !
(
¨¨! "
PlayableGraph
¨¨" /
graph
¨¨0 5
,
¨¨5 6
Playable
¨¨7 ?
root
¨¨@ D
,
¨¨D E

GameObject
¨¨F P
go
¨¨Q S
,
¨¨S T
AppliedOffsetMode
¨¨U f
mode
¨¨g k
)
¨¨k l
{
≠≠ 	
m_ClipOffset
ØØ 
=
ØØ %
AnimationOffsetPlayable
ØØ 2
.
ØØ2 3
Null
ØØ3 7
;
ØØ7 8
if
≥≥ 
(
≥≥ 
mode
≥≥ 
==
≥≥ 
AppliedOffsetMode
≥≥ )
.
≥≥) *
SceneOffsetLegacy
≥≥* ;
||
≥≥< >
mode
¥¥ 
==
¥¥ 
AppliedOffsetMode
¥¥ )
.
¥¥) *
SceneOffset
¥¥* 5
||
¥¥6 8
mode
µµ 
==
µµ 
AppliedOffsetMode
µµ )
.
µµ) *
NoRootTransform
µµ* 9
)
∂∂ 
return
∑∑ 
root
∑∑ 
;
∑∑ 
var
∫∫ 
pos
∫∫ 
=
∫∫ 
position
∫∫ 
;
∫∫ 
var
ªª 
rot
ªª 
=
ªª 
rotation
ªª 
;
ªª 
if
øø 
(
øø 
mode
øø 
==
øø 
AppliedOffsetMode
øø )
.
øø) *
SceneOffsetEditor
øø* ;
)
øø; <
{
¿¿ 
pos
¡¡ 
=
¡¡ #
m_SceneOffsetPosition
¡¡ +
;
¡¡+ ,
rot
¬¬ 
=
¬¬ 

Quaternion
¬¬  
.
¬¬  !
Euler
¬¬! &
(
¬¬& '#
m_SceneOffsetRotation
¬¬' <
)
¬¬< =
;
¬¬= >
}
√√ 
var
∆∆ 
offsetPlayable
∆∆ 
=
∆∆  %
AnimationOffsetPlayable
∆∆! 8
.
∆∆8 9
Create
∆∆9 ?
(
∆∆? @
graph
∆∆@ E
,
∆∆E F
pos
∆∆G J
,
∆∆J K
rot
∆∆L O
,
∆∆O P
$num
∆∆Q R
)
∆∆R S
;
∆∆S T
m_ClipOffset
»» 
=
»» 
offsetPlayable
»» )
;
»») *
graph
   
.
   
Connect
   
(
   
root
   
,
   
$num
    !
,
  ! "
offsetPlayable
  # 1
,
  1 2
$num
  3 4
)
  4 5
;
  5 6
offsetPlayable
ÀÀ 
.
ÀÀ 
SetInputWeight
ÀÀ )
(
ÀÀ) *
$num
ÀÀ* +
,
ÀÀ+ ,
$num
ÀÀ- .
)
ÀÀ. /
;
ÀÀ/ 0
return
ÕÕ 
offsetPlayable
ÕÕ !
;
ÕÕ! "
}
ŒŒ 	
internal
—— 
override
—— 
void
—— 
GetEvaluationTime
—— 0
(
——0 1
out
——1 4
double
——5 ;
outStart
——< D
,
——D E
out
——F I
double
——J P
outDuration
——Q \
)
——\ ]
{
““ 	
if
”” 
(
”” 

inClipMode
”” 
)
”” 
{
‘‘ 
base
’’ 
.
’’ 
GetEvaluationTime
’’ &
(
’’& '
out
’’' *
outStart
’’+ 3
,
’’3 4
out
’’5 8
outDuration
’’9 D
)
’’D E
;
’’E F
}
÷÷ 
else
◊◊ 
{
ÿÿ 
outStart
ŸŸ 
=
ŸŸ 
$num
ŸŸ 
;
ŸŸ 
outDuration
⁄⁄ 
=
⁄⁄ 
TimelineClip
⁄⁄ *
.
⁄⁄* +
kMaxTimeValue
⁄⁄+ 8
;
⁄⁄8 9
}
€€ 
}
‹‹ 	
internal
ﬁﬁ 
override
ﬁﬁ 
void
ﬁﬁ 
GetSequenceTime
ﬁﬁ .
(
ﬁﬁ. /
out
ﬁﬁ/ 2
double
ﬁﬁ3 9
outStart
ﬁﬁ: B
,
ﬁﬁB C
out
ﬁﬁD G
double
ﬁﬁH N
outDuration
ﬁﬁO Z
)
ﬁﬁZ [
{
ﬂﬂ 	
if
‡‡ 
(
‡‡ 

inClipMode
‡‡ 
)
‡‡ 
{
·· 
base
‚‚ 
.
‚‚ 
GetSequenceTime
‚‚ $
(
‚‚$ %
out
‚‚% (
outStart
‚‚) 1
,
‚‚1 2
out
‚‚3 6
outDuration
‚‚7 B
)
‚‚B C
;
‚‚C D
}
„„ 
else
‰‰ 
{
ÂÂ 
outStart
ÊÊ 
=
ÊÊ 
$num
ÊÊ 
;
ÊÊ 
outDuration
ÁÁ 
=
ÁÁ 
Math
ÁÁ "
.
ÁÁ" #
Max
ÁÁ# &
(
ÁÁ& '%
GetNotificationDuration
ÁÁ' >
(
ÁÁ> ?
)
ÁÁ? @
,
ÁÁ@ A
TimeUtility
ÁÁB M
.
ÁÁM N$
GetAnimationClipLength
ÁÁN d
(
ÁÁd e
m_InfiniteClip
ÁÁe s
)
ÁÁs t
)
ÁÁt u
;
ÁÁu v
}
ËË 
}
ÈÈ 	
void
ÎÎ !
AssignAnimationClip
ÎÎ  
(
ÎÎ  !
TimelineClip
ÎÎ! -
clip
ÎÎ. 2
,
ÎÎ2 3
AnimationClip
ÎÎ4 A
animClip
ÎÎB J
)
ÎÎJ K
{
ÏÏ 	
if
ÌÌ 
(
ÌÌ 
clip
ÌÌ 
==
ÌÌ 
null
ÌÌ 
||
ÌÌ 
animClip
ÌÌ  (
==
ÌÌ) +
null
ÌÌ, 0
)
ÌÌ0 1
return
ÓÓ 
;
ÓÓ 
if
 
(
 
animClip
 
.
 
legacy
 
)
  
throw
ÒÒ 
new
ÒÒ '
InvalidOperationException
ÒÒ 3
(
ÒÒ3 4
$str
ÒÒ4 ^
)
ÒÒ^ _
;
ÒÒ_ `$
AnimationPlayableAsset
ÛÛ "
asset
ÛÛ# (
=
ÛÛ) *
clip
ÛÛ+ /
.
ÛÛ/ 0
asset
ÛÛ0 5
as
ÛÛ6 8$
AnimationPlayableAsset
ÛÛ9 O
;
ÛÛO P
if
ÙÙ 
(
ÙÙ 
asset
ÙÙ 
!=
ÙÙ 
null
ÙÙ 
)
ÙÙ 
{
ıı 
asset
ˆˆ 
.
ˆˆ 
clip
ˆˆ 
=
ˆˆ 
animClip
ˆˆ %
;
ˆˆ% &
asset
˜˜ 
.
˜˜ 
name
˜˜ 
=
˜˜ 
animClip
˜˜ %
.
˜˜% &
name
˜˜& *
;
˜˜* +
var
¯¯ 
duration
¯¯ 
=
¯¯ 
asset
¯¯ $
.
¯¯$ %
duration
¯¯% -
;
¯¯- .
if
˘˘ 
(
˘˘ 
!
˘˘ 
double
˘˘ 
.
˘˘ 

IsInfinity
˘˘ &
(
˘˘& '
duration
˘˘' /
)
˘˘/ 0
&&
˘˘1 3
duration
˘˘4 <
>=
˘˘= ?
TimelineClip
˘˘@ L
.
˘˘L M
kMinDuration
˘˘M Y
&&
˘˘Z \
duration
˘˘] e
<
˘˘f g
TimelineClip
˘˘h t
.
˘˘t u
kMaxTimeValue˘˘u Ç
)˘˘Ç É
clip
˙˙ 
.
˙˙ 
duration
˙˙ !
=
˙˙" #
duration
˙˙$ ,
;
˙˙, -
}
˚˚ 
clip
¸¸ 
.
¸¸ 
displayName
¸¸ 
=
¸¸ 
animClip
¸¸ '
.
¸¸' (
name
¸¸( ,
;
¸¸, -
}
˝˝ 	
public
ÑÑ 
override
ÑÑ 
void
ÑÑ 
GatherProperties
ÑÑ -
(
ÑÑ- .
PlayableDirector
ÑÑ. >
director
ÑÑ? G
,
ÑÑG H 
IPropertyCollector
ÑÑI [
driver
ÑÑ\ b
)
ÑÑb c
{
ÖÖ 	#
m_SceneOffsetPosition
áá !
=
áá" #
Vector3
áá$ +
.
áá+ ,
zero
áá, 0
;
áá0 1#
m_SceneOffsetRotation
àà !
=
àà" #
Vector3
àà$ +
.
àà+ ,
zero
àà, 0
;
àà0 1
var
ää 
animator
ää 
=
ää 

GetBinding
ää %
(
ää% &
director
ää& .
)
ää. /
;
ää/ 0
if
ãã 
(
ãã 
animator
ãã 
==
ãã 
null
ãã  
)
ãã  !
return
åå 
;
åå 
var
éé 
	animClips
éé 
=
éé 
new
éé 
List
éé  $
<
éé$ %
AnimationClip
éé% 2
>
éé2 3
(
éé3 4
this
éé4 8
.
éé8 9
clips
éé9 >
.
éé> ?
Length
éé? E
+
ééF G
$num
ééH I
)
ééI J
;
ééJ K
GetAnimationClips
èè 
(
èè 
	animClips
èè '
)
èè' (
;
èè( )
var
ëë 
hasHumanMotion
ëë 
=
ëë  
	animClips
ëë! *
.
ëë* +
Exists
ëë+ 1
(
ëë1 2
clip
ëë2 6
=>
ëë7 9
clip
ëë: >
.
ëë> ?
humanMotion
ëë? J
)
ëëJ K
;
ëëK L
if
ìì 
(
ìì 
!
ìì 
hasHumanMotion
ìì 
&&
ìì  "
animator
ìì# +
.
ìì+ ,
isHuman
ìì, 3
&&
ìì4 6#
AnimatesRootTransform
ìì7 L
(
ììL M
)
ììM N
&&
ììO Q
!
îî +
DrivenPropertyManagerInternal
îî .
.
îî. /
IsDriven
îî/ 7
(
îî7 8
animator
îî8 @
.
îî@ A
	transform
îîA J
,
îîJ K
$str
îîL _
)
îî_ `
&&
îîa c
!
ïï +
DrivenPropertyManagerInternal
ïï .
.
ïï. /
IsDriven
ïï/ 7
(
ïï7 8
animator
ïï8 @
.
ïï@ A
	transform
ïïA J
,
ïïJ K
$str
ïïL _
)
ïï_ `
)
ïï` a
hasHumanMotion
ññ 
=
ññ  
true
ññ! %
;
ññ% &#
m_SceneOffsetPosition
òò !
=
òò" #
animator
òò$ ,
.
òò, -
	transform
òò- 6
.
òò6 7
localPosition
òò7 D
;
òòD E#
m_SceneOffsetRotation
ôô !
=
ôô" #
animator
ôô$ ,
.
ôô, -
	transform
ôô- 6
.
ôô6 7
localEulerAngles
ôô7 G
;
ôôG H
if
úú 
(
úú 
hasHumanMotion
úú 
)
úú 
	animClips
ùù 
.
ùù 
Add
ùù 
(
ùù $
GetDefaultHumanoidClip
ùù 4
(
ùù4 5
)
ùù5 6
)
ùù6 7
;
ùù7 8
m_DefaultPoseClip
üü 
=
üü 
hasHumanMotion
üü  .
?
üü/ 0$
GetDefaultHumanoidClip
üü1 G
(
üüG H
)
üüH I
:
üüJ K
null
üüL P
;
üüP Q
var
†† 
hash
†† 
=
†† '
AnimationPreviewUtilities
†† 0
.
††0 1
GetClipHash
††1 <
(
††< =
	animClips
††= F
)
††F G
;
††G H
if
°° 
(
°° 
m_CachedBindings
°°  
==
°°! #
null
°°$ (
||
°°) +
m_CachedHash
°°, 8
!=
°°9 ;
hash
°°< @
)
°°@ A
{
¢¢ 
m_CachedBindings
££  
=
££! "'
AnimationPreviewUtilities
££# <
.
££< =
GetBindings
££= H
(
££H I
animator
££I Q
.
££Q R

gameObject
££R \
,
££\ ]
	animClips
££^ g
)
££g h
;
££h i$
m_CachedPropertiesClip
§§ &
=
§§' ('
AnimationPreviewUtilities
§§) B
.
§§B C
CreateDefaultClip
§§C T
(
§§T U
animator
§§U ]
.
§§] ^

gameObject
§§^ h
,
§§h i
m_CachedBindings
§§j z
)
§§z {
;
§§{ |
m_CachedHash
•• 
=
•• 
hash
•• #
;
••# $
}
¶¶ '
AnimationPreviewUtilities
®® %
.
®®% &
PreviewFromCurves
®®& 7
(
®®7 8
animator
®®8 @
.
®®@ A

gameObject
®®A K
,
®®K L
m_CachedBindings
®®M ]
)
®®] ^
;
®®^ _
}
™™ 	
private
∞∞ 
void
∞∞ 
GetAnimationClips
∞∞ &
(
∞∞& '
List
∞∞' +
<
∞∞+ ,
AnimationClip
∞∞, 9
>
∞∞9 :
	animClips
∞∞; D
)
∞∞D E
{
±± 	
foreach
≤≤ 
(
≤≤ 
var
≤≤ 
c
≤≤ 
in
≤≤ 
clips
≤≤ #
)
≤≤# $
{
≥≥ 
var
¥¥ 
a
¥¥ 
=
¥¥ 
c
¥¥ 
.
¥¥ 
asset
¥¥ 
as
¥¥  "$
AnimationPlayableAsset
¥¥# 9
;
¥¥9 :
if
µµ 
(
µµ 
a
µµ 
!=
µµ 
null
µµ 
&&
µµ  
a
µµ! "
.
µµ" #
clip
µµ# '
!=
µµ( *
null
µµ+ /
)
µµ/ 0
	animClips
∂∂ 
.
∂∂ 
Add
∂∂ !
(
∂∂! "
a
∂∂" #
.
∂∂# $
clip
∂∂$ (
)
∂∂( )
;
∂∂) *
}
∑∑ 
if
ππ 
(
ππ 
m_InfiniteClip
ππ 
!=
ππ !
null
ππ" &
)
ππ& '
	animClips
∫∫ 
.
∫∫ 
Add
∫∫ 
(
∫∫ 
m_InfiniteClip
∫∫ ,
)
∫∫, -
;
∫∫- .
foreach
ºº 
(
ºº 
var
ºº 

childTrack
ºº #
in
ºº$ &
GetChildTracks
ºº' 5
(
ºº5 6
)
ºº6 7
)
ºº7 8
{
ΩΩ 
var
ææ 
animChildTrack
ææ "
=
ææ# $

childTrack
ææ% /
as
ææ0 2
AnimationTrack
ææ3 A
;
ææA B
if
øø 
(
øø 
animChildTrack
øø "
!=
øø# %
null
øø& *
)
øø* +
animChildTrack
¿¿ "
.
¿¿" #
GetAnimationClips
¿¿# 4
(
¿¿4 5
	animClips
¿¿5 >
)
¿¿> ?
;
¿¿? @
}
¡¡ 
}
¬¬ 	
AppliedOffsetMode
≈≈ 
GetOffsetMode
≈≈ '
(
≈≈' (

GameObject
≈≈( 2
go
≈≈3 5
,
≈≈5 6
bool
≈≈7 ;#
animatesRootTransform
≈≈< Q
)
≈≈Q R
{
∆∆ 	
if
«« 
(
«« 
!
«« #
animatesRootTransform
«« &
)
««& '
return
»» 
AppliedOffsetMode
»» (
.
»»( )
NoRootTransform
»») 8
;
»»8 9
if
   
(
   
m_TrackOffset
   
==
    
TrackOffset
  ! ,
.
  , -#
ApplyTransformOffsets
  - B
)
  B C
return
ÀÀ 
AppliedOffsetMode
ÀÀ (
.
ÀÀ( )
TransformOffset
ÀÀ) 8
;
ÀÀ8 9
if
ÕÕ 
(
ÕÕ 
m_TrackOffset
ÕÕ 
==
ÕÕ  
TrackOffset
ÕÕ! ,
.
ÕÕ, -
ApplySceneOffsets
ÕÕ- >
)
ÕÕ> ?
return
ŒŒ 
(
ŒŒ 
Application
ŒŒ #
.
ŒŒ# $
	isPlaying
ŒŒ$ -
)
ŒŒ- .
?
ŒŒ/ 0
AppliedOffsetMode
ŒŒ1 B
.
ŒŒB C
SceneOffset
ŒŒC N
:
ŒŒO P
AppliedOffsetMode
ŒŒQ b
.
ŒŒb c
SceneOffsetEditor
ŒŒc t
;
ŒŒt u
if
–– 
(
–– 
HasController
–– 
(
–– 
go
––  
)
––  !
)
––! "
{
—— 
if
““ 
(
““ 
!
““ 
Application
““  
.
““  !
	isPlaying
““! *
)
““* +
return
”” 
AppliedOffsetMode
”” ,
.
””, -%
SceneOffsetLegacyEditor
””- D
;
””D E
return
‘‘ 
AppliedOffsetMode
‘‘ (
.
‘‘( )
SceneOffsetLegacy
‘‘) :
;
‘‘: ;
}
’’ 
return
◊◊ 
AppliedOffsetMode
◊◊ $
.
◊◊$ %#
TransformOffsetLegacy
◊◊% :
;
◊◊: ;
}
ÿÿ 	
private
⁄⁄ 
bool
⁄⁄ +
IsRootTransformDisabledByMask
⁄⁄ 2
(
⁄⁄2 3

GameObject
⁄⁄3 =

gameObject
⁄⁄> H
,
⁄⁄H I
	Transform
⁄⁄J S
genericRootNode
⁄⁄T c
)
⁄⁄c d
{
€€ 	
if
‹‹ 
(
‹‹ 

avatarMask
‹‹ 
==
‹‹ 
null
‹‹ "
||
‹‹# %
!
‹‹& '
applyAvatarMask
‹‹' 6
)
‹‹6 7
return
›› 
false
›› 
;
›› 
var
ﬂﬂ 
animator
ﬂﬂ 
=
ﬂﬂ 

GetBinding
ﬂﬂ %
(
ﬂﬂ% &

gameObject
ﬂﬂ& 0
!=
ﬂﬂ1 3
null
ﬂﬂ4 8
?
ﬂﬂ9 :

gameObject
ﬂﬂ; E
.
ﬂﬂE F
GetComponent
ﬂﬂF R
<
ﬂﬂR S
PlayableDirector
ﬂﬂS c
>
ﬂﬂc d
(
ﬂﬂd e
)
ﬂﬂe f
:
ﬂﬂg h
null
ﬂﬂi m
)
ﬂﬂm n
;
ﬂﬂn o
if
‡‡ 
(
‡‡ 
animator
‡‡ 
==
‡‡ 
null
‡‡  
)
‡‡  !
return
·· 
false
·· 
;
·· 
if
„„ 
(
„„ 
animator
„„ 
.
„„ 
isHuman
„„  
)
„„  !
return
‰‰ 
!
‰‰ 

avatarMask
‰‰ "
.
‰‰" #'
GetHumanoidBodyPartActive
‰‰# <
(
‰‰< = 
AvatarMaskBodyPart
‰‰= O
.
‰‰O P
Root
‰‰P T
)
‰‰T U
;
‰‰U V
if
ÊÊ 
(
ÊÊ 

avatarMask
ÊÊ 
.
ÊÊ 
transformCount
ÊÊ )
==
ÊÊ* ,
$num
ÊÊ- .
)
ÊÊ. /
return
ÁÁ 
false
ÁÁ 
;
ÁÁ 
if
ÍÍ 
(
ÍÍ 
genericRootNode
ÍÍ 
==
ÍÍ  "
null
ÍÍ# '
)
ÍÍ' (
return
ÎÎ 
string
ÎÎ 
.
ÎÎ 
IsNullOrEmpty
ÎÎ +
(
ÎÎ+ ,

avatarMask
ÎÎ, 6
.
ÎÎ6 7
GetTransformPath
ÎÎ7 G
(
ÎÎG H
$num
ÎÎH I
)
ÎÎI J
)
ÎÎJ K
&&
ÎÎL N
!
ÎÎO P

avatarMask
ÎÎP Z
.
ÎÎZ [ 
GetTransformActive
ÎÎ[ m
(
ÎÎm n
$num
ÎÎn o
)
ÎÎo p
;
ÎÎp q
for
ÓÓ 
(
ÓÓ 
int
ÓÓ 
i
ÓÓ 
=
ÓÓ 
$num
ÓÓ 
;
ÓÓ 
i
ÓÓ 
<
ÓÓ 

avatarMask
ÓÓ  *
.
ÓÓ* +
transformCount
ÓÓ+ 9
;
ÓÓ9 :
i
ÓÓ; <
++
ÓÓ< >
)
ÓÓ> ?
{
ÔÔ 
if
 
(
 
genericRootNode
 #
==
$ &
animator
' /
.
/ 0
	transform
0 9
.
9 :
Find
: >
(
> ?

avatarMask
? I
.
I J
GetTransformPath
J Z
(
Z [
i
[ \
)
\ ]
)
] ^
)
^ _
return
ÒÒ 
!
ÒÒ 

avatarMask
ÒÒ &
.
ÒÒ& ' 
GetTransformActive
ÒÒ' 9
(
ÒÒ9 :
i
ÒÒ: ;
)
ÒÒ; <
;
ÒÒ< =
}
ÚÚ 
return
ÙÙ 
false
ÙÙ 
;
ÙÙ 
}
ıı 	
private
¯¯ 
	Transform
¯¯  
GetGenericRootNode
¯¯ ,
(
¯¯, -

GameObject
¯¯- 7

gameObject
¯¯8 B
)
¯¯B C
{
˘˘ 	
var
˙˙ 
animator
˙˙ 
=
˙˙ 

GetBinding
˙˙ %
(
˙˙% &

gameObject
˙˙& 0
!=
˙˙1 3
null
˙˙4 8
?
˙˙9 :

gameObject
˙˙; E
.
˙˙E F
GetComponent
˙˙F R
<
˙˙R S
PlayableDirector
˙˙S c
>
˙˙c d
(
˙˙d e
)
˙˙e f
:
˙˙g h
null
˙˙i m
)
˙˙m n
;
˙˙n o
if
˚˚ 
(
˚˚ 
animator
˚˚ 
==
˚˚ 
null
˚˚  
)
˚˚  !
return
¸¸ 
null
¸¸ 
;
¸¸ 
if
˛˛ 
(
˛˛ 
animator
˛˛ 
.
˛˛ 
isHuman
˛˛  
)
˛˛  !
return
ˇˇ 
null
ˇˇ 
;
ˇˇ 
if
ÅÅ 
(
ÅÅ 
animator
ÅÅ 
.
ÅÅ 
avatar
ÅÅ 
==
ÅÅ  "
null
ÅÅ# '
)
ÅÅ' (
return
ÇÇ 
null
ÇÇ 
;
ÇÇ 
var
ÖÖ 
rootName
ÖÖ 
=
ÖÖ 
animator
ÖÖ #
.
ÖÖ# $
avatar
ÖÖ$ *
.
ÖÖ* +
humanDescription
ÖÖ+ ;
.
ÖÖ; <"
m_RootMotionBoneName
ÖÖ< P
;
ÖÖP Q
if
ÜÜ 
(
ÜÜ 
rootName
ÜÜ 
==
ÜÜ 
animator
ÜÜ $
.
ÜÜ$ %
name
ÜÜ% )
||
ÜÜ* ,
string
ÜÜ- 3
.
ÜÜ3 4
IsNullOrEmpty
ÜÜ4 A
(
ÜÜA B
rootName
ÜÜB J
)
ÜÜJ K
)
ÜÜK L
return
áá 
null
áá 
;
áá 
return
ää )
FindInHierarchyBreadthFirst
ää .
(
ää. /
animator
ää/ 7
.
ää7 8
	transform
ää8 A
,
ääA B
rootName
ääC K
)
ääK L
;
ääL M
}
ãã 	
internal
çç 
bool
çç #
AnimatesRootTransform
çç +
(
çç+ ,
)
çç, -
{
éé 	
if
êê 
(
êê $
AnimationPlayableAsset
êê &
.
êê& '
HasRootTransforms
êê' 8
(
êê8 9
m_InfiniteClip
êê9 G
)
êêG H
)
êêH I
return
ëë 
true
ëë 
;
ëë 
foreach
îî 
(
îî 
var
îî 
c
îî 
in
îî 
GetClips
îî &
(
îî& '
)
îî' (
)
îî( )
{
ïï 
var
ññ 
apa
ññ 
=
ññ 
c
ññ 
.
ññ 
asset
ññ !
as
ññ" $$
AnimationPlayableAsset
ññ% ;
;
ññ; <
if
óó 
(
óó 
apa
óó 
!=
óó 
null
óó 
&&
óó  "
apa
óó# &
.
óó& '
hasRootTransforms
óó' 8
)
óó8 9
return
òò 
true
òò 
;
òò  
}
ôô 
return
õõ 
false
õõ 
;
õõ 
}
úú 	
private
ûû 
static
ûû 
readonly
ûû 
Queue
ûû  %
<
ûû% &
	Transform
ûû& /
>
ûû/ 0
s_CachedQueue
ûû1 >
=
ûû? @
new
ûûA D
Queue
ûûE J
<
ûûJ K
	Transform
ûûK T
>
ûûT U
(
ûûU V
$num
ûûV Y
)
ûûY Z
;
ûûZ [
private
üü 
static
üü 
	Transform
üü  )
FindInHierarchyBreadthFirst
üü! <
(
üü< =
	Transform
üü= F
t
üüG H
,
üüH I
string
üüJ P
name
üüQ U
)
üüU V
{
†† 	
s_CachedQueue
°° 
.
°° 
Clear
°° 
(
°°  
)
°°  !
;
°°! "
s_CachedQueue
¢¢ 
.
¢¢ 
Enqueue
¢¢ !
(
¢¢! "
t
¢¢" #
)
¢¢# $
;
¢¢$ %
while
££ 
(
££ 
s_CachedQueue
££  
.
££  !
Count
££! &
>
££' (
$num
££) *
)
££* +
{
§§ 
var
•• 
r
•• 
=
•• 
s_CachedQueue
•• %
.
••% &
Dequeue
••& -
(
••- .
)
••. /
;
••/ 0
if
¶¶ 
(
¶¶ 
r
¶¶ 
.
¶¶ 
name
¶¶ 
==
¶¶ 
name
¶¶ "
)
¶¶" #
return
ßß 
r
ßß 
;
ßß 
for
®® 
(
®® 
int
®® 
i
®® 
=
®® 
$num
®® 
;
®® 
i
®®  !
<
®®" #
r
®®$ %
.
®®% &

childCount
®®& 0
;
®®0 1
i
®®2 3
++
®®3 5
)
®®5 6
s_CachedQueue
©© !
.
©©! "
Enqueue
©©" )
(
©©) *
r
©©* +
.
©©+ ,
GetChild
©©, 4
(
©©4 5
i
©©5 6
)
©©6 7
)
©©7 8
;
©©8 9
}
™™ 
return
¨¨ 
null
¨¨ 
;
¨¨ 
}
≠≠ 	
}
ÆÆ 
}ØØ  !
dC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Extensions\TrackExtensions.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

static 
class  
TrackAssetExtensions ,
{ 
public 
static 

GroupTrack  
GetGroup! )
() *
this* .

TrackAsset/ 9
asset: ?
)? @
{ 	
if 
( 
asset 
== 
null 
) 
return 
null 
; 
return 
asset 
. 
parent 
as  "

GroupTrack# -
;- .
} 	
public"" 
static"" 
void"" 
SetGroup"" #
(""# $
this""$ (

TrackAsset"") 3
asset""4 9
,""9 :

GroupTrack""; E
group""F K
)""K L
{## 	
const$$ 
string$$ 

undoString$$ #
=$$$ %
$str$$& 0
;$$0 1
if&& 
(&& 
asset&& 
==&& 
null&& 
||&&  
asset&&! &
==&&' )
group&&* /
||&&0 2
asset&&3 8
.&&8 9
parent&&9 ?
==&&@ B
group&&C H
)&&H I
return'' 
;'' 
if)) 
()) 
group)) 
!=)) 
null)) 
&&))  
asset))! &
.))& '
timelineAsset))' 4
!=))5 7
group))8 =
.))= >
timelineAsset))> K
)))K L
throw** 
new** %
InvalidOperationException** 3
(**3 4
$str**4 f
)**f g
;**g h
TimelineUndo-- 
.-- 
PushUndo-- !
(--! "
asset--" '
,--' (

undoString--) 3
)--3 4
;--4 5
var// 
timeline// 
=// 
asset//  
.//  !
timelineAsset//! .
;//. /
var00 
parentTrack00 
=00 
asset00 #
.00# $
parent00$ *
as00+ -

TrackAsset00. 8
;008 9
var11 
parentTimeline11 
=11  
asset11! &
.11& '
parent11' -
as11. 0
TimelineAsset111 >
;11> ?
if22 
(22 
parentTrack22 
!=22 
null22 #
||22$ &
parentTimeline22' 5
!=226 8
null229 =
)22= >
{33 
TimelineUndo44 
.44 
PushUndo44 %
(44% &
asset44& +
.44+ ,
parent44, 2
,442 3

undoString444 >
)44> ?
;44? @
if55 
(55 
parentTimeline55 "
!=55# %
null55& *
)55* +
{66 
parentTimeline77 "
.77" #
RemoveTrack77# .
(77. /
asset77/ 4
)774 5
;775 6
}88 
else99 
{:: 
parentTrack;; 
.;;  
RemoveSubTrack;;  .
(;;. /
asset;;/ 4
);;4 5
;;;5 6
}<< 
}== 
if?? 
(?? 
group?? 
==?? 
null?? 
)?? 
{@@ 
TimelineUndoAA 
.AA 
PushUndoAA %
(AA% &
timelineAA& .
,AA. /

undoStringAA0 :
)AA: ;
;AA; <
assetBB 
.BB 
parentBB 
=BB 
assetBB $
.BB$ %
timelineAssetBB% 2
;BB2 3
timelineCC 
.CC 
AddTrackInternalCC )
(CC) *
assetCC* /
)CC/ 0
;CC0 1
}DD 
elseEE 
{FF 
TimelineUndoGG 
.GG 
PushUndoGG %
(GG% &
groupGG& +
,GG+ ,

undoStringGG- 7
)GG7 8
;GG8 9
groupHH 
.HH 
AddChildHH 
(HH 
assetHH $
)HH$ %
;HH% &
}II 
}JJ 	
}KK 
}LL ¸#
dC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Activation\ActivationTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[		 
Serializable		 
]		 
[

 
TrackClipType

 
(

 
typeof

 
(

 #
ActivationPlayableAsset

 1
)

1 2
)

2 3
]

3 4
[ 
TrackBindingType 
( 
typeof 
( 

GameObject '
)' (
)( )
]) *
[ 
ExcludeFromPreset 
] 
[ 
TimelineHelpURL 
( 
typeof 
( 
ActivationTrack +
)+ ,
), -
]- .
public 

class 
ActivationTrack  
:! "

TrackAsset# -
{ 
[ 	
SerializeField	 
] 
PostPlaybackState 
m_PostPlaybackState -
=. /
PostPlaybackState0 A
.A B
	LeaveAsIsB K
;K L#
ActivationMixerPlayable 
m_ActivationMixer  1
;1 2
public 
enum 
PostPlaybackState %
{ 	
Active 
, 
Inactive!! 
,!! 
Revert&& 
,&& 
	LeaveAsIs++ 
},, 	
internal.. 
override.. 
bool.. 
CanCompileClips.. .
(... /
)../ 0
{// 	
return00 
!00 
hasClips00 
||00 
base00  $
.00$ %
CanCompileClips00% 4
(004 5
)005 6
;006 7
}11 	
public66 
PostPlaybackState66  
postPlaybackState66! 2
{77 	
get88 
{88 
return88 
m_PostPlaybackState88 ,
;88, -
}88. /
set99 
{99 
m_PostPlaybackState99 %
=99& '
value99( -
;99- .
UpdateTrackMode99/ >
(99> ?
)99? @
;99@ A
}99B C
}:: 	
public== 
override== 
Playable==  
CreateTrackMixer==! 1
(==1 2
PlayableGraph==2 ?
graph==@ E
,==E F

GameObject==G Q
go==R T
,==T U
int==V Y

inputCount==Z d
)==d e
{>> 	
var?? 
mixer?? 
=?? #
ActivationMixerPlayable?? /
.??/ 0
Create??0 6
(??6 7
graph??7 <
,??< =

inputCount??> H
)??H I
;??I J
m_ActivationMixer@@ 
=@@ 
mixer@@  %
.@@% &
GetBehaviour@@& 2
(@@2 3
)@@3 4
;@@4 5
UpdateTrackModeBB 
(BB 
)BB 
;BB 
returnDD 
mixerDD 
;DD 
}EE 	
internalGG 
voidGG 
UpdateTrackModeGG %
(GG% &
)GG& '
{HH 	
ifII 
(II 
m_ActivationMixerII !
!=II" $
nullII% )
)II) *
m_ActivationMixerJJ !
.JJ! "
postPlaybackStateJJ" 3
=JJ4 5
m_PostPlaybackStateJJ6 I
;JJI J
}KK 	
publicNN 
overrideNN 
voidNN 
GatherPropertiesNN -
(NN- .
PlayableDirectorNN. >
directorNN? G
,NNG H
IPropertyCollectorNNI [
driverNN\ b
)NNb c
{OO 	
varPP 

gameObjectPP 
=PP  
GetGameObjectBindingPP 1
(PP1 2
directorPP2 :
)PP: ;
;PP; <
ifQQ 
(QQ 

gameObjectQQ 
!=QQ 
nullQQ "
)QQ" #
{RR 
driverSS 
.SS 
AddFromNameSS "
(SS" #

gameObjectSS# -
,SS- .
$strSS/ ;
)SS; <
;SS< =
}TT 
}UU 	
	protectedXX 
overrideXX 
voidXX 
OnCreateClipXX  ,
(XX, -
TimelineClipXX- 9
clipXX: >
)XX> ?
{YY 	
clipZZ 
.ZZ 
displayNameZZ 
=ZZ 
$strZZ '
;ZZ' (
base[[ 
.[[ 
OnCreateClip[[ 
([[ 
clip[[ "
)[[" #
;[[# $
}\\ 	
}]] 
}^^ ≥(
lC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Activation\ActivationMixerPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class 	#
ActivationMixerPlayable
 !
:" #
PlayableBehaviour$ 5
{ 
ActivationTrack 
. 
PostPlaybackState )
m_PostPlaybackState* =
;= >
bool 1
%m_BoundGameObjectInitialStateIsActive 2
;2 3
private

 

GameObject

 
m_BoundGameObject

 ,
;

, -
public 
static 
ScriptPlayable $
<$ %#
ActivationMixerPlayable% <
>< =
Create> D
(D E
PlayableGraphE R
graphS X
,X Y
intZ ]

inputCount^ h
)h i
{ 	
return 
ScriptPlayable !
<! "#
ActivationMixerPlayable" 9
>9 :
.: ;
Create; A
(A B
graphB G
,G H

inputCountI S
)S T
;T U
} 	
public 
ActivationTrack 
. 
PostPlaybackState 0
postPlaybackState1 B
{ 	
get 
{ 
return 
m_PostPlaybackState ,
;, -
}. /
set 
{ 
m_PostPlaybackState %
=& '
value( -
;- .
}/ 0
} 	
public 
override 
void 
OnPlayableDestroy .
(. /
Playable/ 7
playable8 @
)@ A
{ 	
if 
( 
m_BoundGameObject !
==" $
null% )
)) *
return 
; 
switch 
( 
m_PostPlaybackState '
)' (
{ 
case 
ActivationTrack $
.$ %
PostPlaybackState% 6
.6 7
Active7 =
:= >
m_BoundGameObject   %
.  % &
	SetActive  & /
(  / 0
true  0 4
)  4 5
;  5 6
break!! 
;!! 
case"" 
ActivationTrack"" $
.""$ %
PostPlaybackState""% 6
.""6 7
Inactive""7 ?
:""? @
m_BoundGameObject## %
.##% &
	SetActive##& /
(##/ 0
false##0 5
)##5 6
;##6 7
break$$ 
;$$ 
case%% 
ActivationTrack%% $
.%%$ %
PostPlaybackState%%% 6
.%%6 7
Revert%%7 =
:%%= >
m_BoundGameObject&& %
.&&% &
	SetActive&&& /
(&&/ 01
%m_BoundGameObjectInitialStateIsActive&&0 U
)&&U V
;&&V W
break'' 
;'' 
case(( 
ActivationTrack(( $
.(($ %
PostPlaybackState((% 6
.((6 7
	LeaveAsIs((7 @
:((@ A
default)) 
:)) 
break** 
;** 
}++ 
},, 	
public.. 
override.. 
void.. 
ProcessFrame.. )
(..) *
Playable..* 2
playable..3 ;
,..; <
	FrameData..= F
info..G K
,..K L
object..M S

playerData..T ^
)..^ _
{// 	
if00 
(00 
m_BoundGameObject00 !
==00" $
null00% )
)00) *
{11 
m_BoundGameObject22 !
=22" #

playerData22$ .
as22/ 1

GameObject222 <
;22< =1
%m_BoundGameObjectInitialStateIsActive33 5
=336 7
m_BoundGameObject338 I
!=33J L
null33M Q
&&33R T
m_BoundGameObject33U f
.33f g

activeSelf33g q
;33q r
}44 
if66 
(66 
m_BoundGameObject66 !
==66" $
null66% )
)66) *
return77 
;77 
int99 

inputCount99 
=99 
playable99 %
.99% &
GetInputCount99& 3
(993 4
)994 5
;995 6
bool:: 
hasInput:: 
=:: 
false:: !
;::! "
for;; 
(;; 
int;; 
i;; 
=;; 
$num;; 
;;; 
i;; 
<;; 

inputCount;;  *
;;;* +
i;;, -
++;;- /
);;/ 0
{<< 
if== 
(== 
playable== 
.== 
GetInputWeight== +
(==+ ,
i==, -
)==- .
>==/ 0
$num==1 2
)==2 3
{>> 
hasInput?? 
=?? 
true?? #
;??# $
break@@ 
;@@ 
}AA 
}BB 
m_BoundGameObjectDD 
.DD 
	SetActiveDD '
(DD' (
hasInputDD( 0
)DD0 1
;DD1 2
}EE 	
}FF 
}GG ’A
iC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Playables\PrefabControlPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public

 

class

 !
PrefabControlPlayable

 &
:

' (
PlayableBehaviour

) :
{ 

GameObject 

m_Instance 
; 
private 
bool 
m_IsActiveCached %
;% &
public 
static 
ScriptPlayable $
<$ %!
PrefabControlPlayable% :
>: ;
Create< B
(B C
PlayableGraphC P
graphQ V
,V W

GameObjectX b
prefabGameObjectc s
,s t
	Transformu ~
parentTransform	 é
)
é è
{ 	
if 
( 
prefabGameObject  
==! #
null$ (
)( )
return 
ScriptPlayable %
<% &!
PrefabControlPlayable& ;
>; <
.< =
Null= A
;A B
var 
handle 
= 
ScriptPlayable '
<' (!
PrefabControlPlayable( =
>= >
.> ?
Create? E
(E F
graphF K
)K L
;L M
handle 
. 
GetBehaviour 
(  
)  !
.! "

Initialize" ,
(, -
prefabGameObject- =
,= >
parentTransform? N
)N O
;O P
return   
handle   
;   
}!! 	
public&& 

GameObject&& 
prefabInstance&& (
{'' 	
get(( 
{(( 
return(( 

m_Instance(( #
;((# $
}((% &
})) 	
public11 

GameObject11 

Initialize11 $
(11$ %

GameObject11% /
prefabGameObject110 @
,11@ A
	Transform11B K
parentTransform11L [
)11[ \
{22 	
if33 
(33 
prefabGameObject33  
==33! #
null33$ (
)33( )
throw44 
new44 !
ArgumentNullException44 /
(44/ 0
$str440 G
)44G H
;44H I
if66 
(66 

m_Instance66 
!=66 
null66 "
)66" #
{77 
Debug88 
.88 
LogWarningFormat88 &
(88& '
$str88' x
,88x y
prefabGameObject	88z ä
.
88ä ã
name
88ã è
,
88è ê

m_Instance
88ë õ
.
88õ ú
name
88ú †
)
88† °
;
88° ¢
}99 
else:: 
{;; 
if== 
(== 
!== 
Application==  
.==  !
	isPlaying==! *
)==* +
{>> 

m_Instance?? 
=??  
(??! "

GameObject??" ,
)??, -
UnityEditor??- 8
.??8 9
PrefabUtility??9 F
.??F G
InstantiatePrefab??G X
(??X Y
prefabGameObject??Y i
,??i j
parentTransform??k z
)??z {
;??{ |
UnityEditor@@ 
.@@  
PrefabUtility@@  -
.@@- .!
prefabInstanceUpdated@@. C
+=@@D F
OnPrefabUpdated@@G V
;@@V W
}AA 
elseBB 
{DD 

m_InstanceEE 
=EE  
ObjectEE! '
.EE' (
InstantiateEE( 3
(EE3 4
prefabGameObjectEE4 D
,EED E
parentTransformEEF U
,EEU V
falseEEW \
)EE\ ]
;EE] ^
}FF 

m_InstanceGG 
.GG 
nameGG 
=GG  !
prefabGameObjectGG" 2
.GG2 3
nameGG3 7
+GG8 9
$strGG: G
;GGG H

m_InstanceHH 
.HH 
	SetActiveHH $
(HH$ %
falseHH% *
)HH* +
;HH+ ,!
SetHideFlagsRecursiveII %
(II% &

m_InstanceII& 0
)II0 1
;II1 2
}JJ 
returnKK 

m_InstanceKK 
;KK 
}LL 	
publicRR 
overrideRR 
voidRR 
OnPlayableDestroyRR .
(RR. /
PlayableRR/ 7
playableRR8 @
)RR@ A
{SS 	
ifTT 
(TT 

m_InstanceTT 
)TT 
{UU 
ifVV 
(VV 
ApplicationVV 
.VV  
	isPlayingVV  )
)VV) *
ObjectWW 
.WW 
DestroyWW "
(WW" #

m_InstanceWW# -
)WW- .
;WW. /
elseXX 
ObjectYY 
.YY 
DestroyImmediateYY +
(YY+ ,

m_InstanceYY, 6
)YY6 7
;YY7 8
}ZZ 
UnityEditor]] 
.]] 
PrefabUtility]] %
.]]% &!
prefabInstanceUpdated]]& ;
-=]]< >
OnPrefabUpdated]]? N
;]]N O
}__ 	
publicff 
overrideff 
voidff 
OnBehaviourPlayff ,
(ff, -
Playableff- 5
playableff6 >
,ff> ?
	FrameDataff@ I
infoffJ N
)ffN O
{gg 	
ifhh 
(hh 

m_Instancehh 
==hh 
nullhh "
)hh" #
returnii 
;ii 

m_Instancekk 
.kk 
	SetActivekk  
(kk  !
truekk! %
)kk% &
;kk& '
m_IsActiveCachednn 
=nn 
truenn #
;nn# $
}pp 	
publicww 
overrideww 
voidww 
OnBehaviourPauseww -
(ww- .
Playableww. 6
playableww7 ?
,ww? @
	FrameDatawwA J
infowwK O
)wwO P
{xx 	
if{{ 
({{ 

m_Instance{{ 
!={{ 
null{{ "
&&{{# %
info{{& *
.{{* +
effectivePlayState{{+ =
=={{> @
	PlayState{{A J
.{{J K
Paused{{K Q
){{Q R
{|| 

m_Instance}} 
.}} 
	SetActive}} $
(}}$ %
false}}% *
)}}* +
;}}+ ,
m_IsActiveCached  
=! "
false# (
;( )
}
ÅÅ 
}
ÇÇ 	
void
ÖÖ 
OnPrefabUpdated
ÖÖ 
(
ÖÖ 

GameObject
ÖÖ '
go
ÖÖ( *
)
ÖÖ* +
{
ÜÜ 	
if
áá 
(
áá 
go
áá 
==
áá 

m_Instance
áá  
)
áá  !
{
àà #
SetHideFlagsRecursive
ââ %
(
ââ% &
go
ââ& (
)
ââ( )
;
ââ) *
go
ää 
.
ää 
	SetActive
ää 
(
ää 
m_IsActiveCached
ää -
)
ää- .
;
ää. /
}
ãã 
}
åå 	
static
êê 
void
êê #
SetHideFlagsRecursive
êê )
(
êê) *

GameObject
êê* 4

gameObject
êê5 ?
)
êê? @
{
ëë 	
if
íí 
(
íí 

gameObject
íí 
==
íí 
null
íí "
)
íí" #
return
ìì 
;
ìì 

gameObject
ïï 
.
ïï 
	hideFlags
ïï  
=
ïï! "
	HideFlags
ïï# ,
.
ïï, -
DontSaveInBuild
ïï- <
|
ïï= >
	HideFlags
ïï? H
.
ïïH I
DontSaveInEditor
ïïI Y
;
ïïY Z
if
ññ 
(
ññ 
!
ññ 
Application
ññ 
.
ññ 
	isPlaying
ññ &
)
ññ& '

gameObject
óó 
.
óó 
	hideFlags
óó $
|=
óó% '
	HideFlags
óó( 1
.
óó1 2
HideInHierarchy
óó2 A
;
óóA B
foreach
òò 
(
òò 
	Transform
òò 
child
òò $
in
òò% '

gameObject
òò( 2
.
òò2 3
	transform
òò3 <
)
òò< =
{
ôô #
SetHideFlagsRecursive
öö %
(
öö% &
child
öö& +
.
öö+ ,

gameObject
öö, 6
)
öö6 7
;
öö7 8
}
õõ 
}
úú 	
}
ùù 
}ûû êr
gC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Events\Signals\SignalReceiver.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
TimelineHelpURL 
( 
typeof 
( 
SignalReceiver *
)* +
)+ ,
], -
public 

class 
SignalReceiver 
:  !
MonoBehaviour" /
,/ 0!
INotificationReceiver1 F
{ 
[ 	
SerializeField	 
] 
EventKeyValue 
m_Events 
=  
new! $
EventKeyValue% 2
(2 3
)3 4
;4 5
public 
void 
OnNotify 
( 
Playable %
origin& ,
,, -
INotification. ;
notification< H
,H I
objectJ P
contextQ X
)X Y
{ 	
var 
signal 
= 
notification %
as& (
SignalEmitter) 6
;6 7
if 
( 
signal 
!= 
null 
&& !
signal" (
.( )
asset) .
!=/ 1
null2 6
)6 7
{   

UnityEvent!! 
evt!! 
;!! 
if"" 
("" 
m_Events"" 
."" 
TryGetValue"" (
(""( )
signal"") /
.""/ 0
asset""0 5
,""5 6
out""7 :
evt""; >
)""> ?
&&""@ B
evt""C F
!=""G I
null""J N
)""N O
{## 
evt$$ 
.$$ 
Invoke$$ 
($$ 
)$$  
;$$  !
}%% 
}&& 
}'' 	
public00 
void00 
AddReaction00 
(00  
SignalAsset00  +
asset00, 1
,001 2

UnityEvent003 =
reaction00> F
)00F G
{11 	
if22 
(22 
asset22 
==22 
null22 
)22 
throw33 
new33 !
ArgumentNullException33 /
(33/ 0
$str330 7
)337 8
;338 9
if55 
(55 
m_Events55 
.55 
signals55  
.55  !
Contains55! )
(55) *
asset55* /
)55/ 0
)550 1
throw66 
new66 
ArgumentException66 +
(66+ ,
$str66, G
)66G H
;66H I
m_Events77 
.77 
Append77 
(77 
asset77 !
,77! "
reaction77# +
)77+ ,
;77, -
}88 	
public@@ 
int@@ 
AddEmptyReaction@@ #
(@@# $

UnityEvent@@$ .
reaction@@/ 7
)@@7 8
{AA 	
m_EventsBB 
.BB 
AppendBB 
(BB 
nullBB  
,BB  !
reactionBB" *
)BB* +
;BB+ ,
returnCC 
m_EventsCC 
.CC 
eventsCC "
.CC" #
CountCC# (
-CC) *
$numCC+ ,
;CC, -
}DD 	
publicJJ 
voidJJ 
RemoveJJ 
(JJ 
SignalAssetJJ &
assetJJ' ,
)JJ, -
{KK 	
ifLL 
(LL 
!LL 
m_EventsLL 
.LL 
signalsLL !
.LL! "
ContainsLL" *
(LL* +
assetLL+ 0
)LL0 1
)LL1 2
{MM 
throwNN 
newNN 
ArgumentExceptionNN +
(NN+ ,
$strNN, c
)NNc d
;NNd e
}OO 
m_EventsQQ 
.QQ 
RemoveQQ 
(QQ 
assetQQ !
)QQ! "
;QQ" #
}RR 	
publicXX 
IEnumerableXX 
<XX 
SignalAssetXX &
>XX& ' 
GetRegisteredSignalsXX( <
(XX< =
)XX= >
{YY 	
returnZZ 
m_EventsZZ 
.ZZ 
signalsZZ #
;ZZ# $
}[[ 	
publicbb 

UnityEventbb 
GetReactionbb %
(bb% &
SignalAssetbb& 1
keybb2 5
)bb5 6
{cc 	

UnityEventdd 
retdd 
;dd 
ifee 
(ee 
m_Eventsee 
.ee 
TryGetValueee $
(ee$ %
keyee% (
,ee( )
outee* -
retee. 1
)ee1 2
)ee2 3
{ff 
returngg 
retgg 
;gg 
}hh 
returnjj 
nulljj 
;jj 
}kk 	
publicqq 
intqq 
Countqq 
(qq 
)qq 
{rr 	
returnss 
m_Eventsss 
.ss 
signalsss #
.ss# $
Countss$ )
;ss) *
}tt 	
public}} 
void}} 
ChangeSignalAtIndex}} '
(}}' (
int}}( +
idx}}, /
,}}/ 0
SignalAsset}}1 <
newKey}}= C
)}}C D
{~~ 	
if 
( 
idx 
< 
$num 
|| 
idx 
>  
m_Events! )
.) *
signals* 1
.1 2
Count2 7
-8 9
$num: ;
); <
throw
ÄÄ 
new
ÄÄ &
IndexOutOfRangeException
ÄÄ 2
(
ÄÄ2 3
)
ÄÄ3 4
;
ÄÄ4 5
if
ÇÇ 
(
ÇÇ 
m_Events
ÇÇ 
.
ÇÇ 
signals
ÇÇ  
[
ÇÇ  !
idx
ÇÇ! $
]
ÇÇ$ %
==
ÇÇ& (
newKey
ÇÇ) /
)
ÇÇ/ 0
return
ÉÉ 
;
ÉÉ 
var
ÑÑ 
alreadyUsed
ÑÑ 
=
ÑÑ 
m_Events
ÑÑ &
.
ÑÑ& '
signals
ÑÑ' .
.
ÑÑ. /
Contains
ÑÑ/ 7
(
ÑÑ7 8
newKey
ÑÑ8 >
)
ÑÑ> ?
;
ÑÑ? @
if
ÖÖ 
(
ÖÖ 
newKey
ÖÖ 
==
ÖÖ 
null
ÖÖ 
||
ÖÖ !
m_Events
ÖÖ" *
.
ÖÖ* +
signals
ÖÖ+ 2
[
ÖÖ2 3
idx
ÖÖ3 6
]
ÖÖ6 7
==
ÖÖ8 :
null
ÖÖ; ?
||
ÖÖ@ B
!
ÖÖC D
alreadyUsed
ÖÖD O
)
ÖÖO P
m_Events
ÜÜ 
.
ÜÜ 
signals
ÜÜ  
[
ÜÜ  !
idx
ÜÜ! $
]
ÜÜ$ %
=
ÜÜ& '
newKey
ÜÜ( .
;
ÜÜ. /
if
àà 
(
àà 
newKey
àà 
!=
àà 
null
àà 
&&
àà !
alreadyUsed
àà" -
)
àà- .
throw
ââ 
new
ââ 
ArgumentException
ââ +
(
ââ+ ,
$str
ââ, G
)
ââG H
;
ââH I
}
ää 	
public
êê 
void
êê 
RemoveAtIndex
êê !
(
êê! "
int
êê" %
idx
êê& )
)
êê) *
{
ëë 	
if
íí 
(
íí 
idx
íí 
<
íí 
$num
íí 
||
íí 
idx
íí 
>
íí  
m_Events
íí! )
.
íí) *
signals
íí* 1
.
íí1 2
Count
íí2 7
-
íí8 9
$num
íí: ;
)
íí; <
throw
ìì 
new
ìì &
IndexOutOfRangeException
ìì 2
(
ìì2 3
)
ìì3 4
;
ìì4 5
m_Events
îî 
.
îî 
Remove
îî 
(
îî 
idx
îî 
)
îî  
;
îî  !
}
ïï 	
public
ùù 
void
ùù #
ChangeReactionAtIndex
ùù )
(
ùù) *
int
ùù* -
idx
ùù. 1
,
ùù1 2

UnityEvent
ùù3 =
reaction
ùù> F
)
ùùF G
{
ûû 	
if
üü 
(
üü 
idx
üü 
<
üü 
$num
üü 
||
üü 
idx
üü 
>
üü  
m_Events
üü! )
.
üü) *
events
üü* 0
.
üü0 1
Count
üü1 6
-
üü7 8
$num
üü9 :
)
üü: ;
throw
†† 
new
†† &
IndexOutOfRangeException
†† 2
(
††2 3
)
††3 4
;
††4 5
m_Events
¢¢ 
.
¢¢ 
events
¢¢ 
[
¢¢ 
idx
¢¢ 
]
¢¢  
=
¢¢! "
reaction
¢¢# +
;
¢¢+ ,
}
££ 	
public
™™ 

UnityEvent
™™  
GetReactionAtIndex
™™ ,
(
™™, -
int
™™- 0
idx
™™1 4
)
™™4 5
{
´´ 	
if
¨¨ 
(
¨¨ 
idx
¨¨ 
<
¨¨ 
$num
¨¨ 
||
¨¨ 
idx
¨¨ 
>
¨¨  
m_Events
¨¨! )
.
¨¨) *
events
¨¨* 0
.
¨¨0 1
Count
¨¨1 6
-
¨¨7 8
$num
¨¨9 :
)
¨¨: ;
throw
≠≠ 
new
≠≠ &
IndexOutOfRangeException
≠≠ 2
(
≠≠2 3
)
≠≠3 4
;
≠≠4 5
return
ÆÆ 
m_Events
ÆÆ 
.
ÆÆ 
events
ÆÆ "
[
ÆÆ" #
idx
ÆÆ# &
]
ÆÆ& '
;
ÆÆ' (
}
ØØ 	
public
∂∂ 
SignalAsset
∂∂ #
GetSignalAssetAtIndex
∂∂ 0
(
∂∂0 1
int
∂∂1 4
idx
∂∂5 8
)
∂∂8 9
{
∑∑ 	
if
∏∏ 
(
∏∏ 
idx
∏∏ 
<
∏∏ 
$num
∏∏ 
||
∏∏ 
idx
∏∏ 
>
∏∏  
m_Events
∏∏! )
.
∏∏) *
signals
∏∏* 1
.
∏∏1 2
Count
∏∏2 7
-
∏∏8 9
$num
∏∏: ;
)
∏∏; <
throw
ππ 
new
ππ &
IndexOutOfRangeException
ππ 2
(
ππ2 3
)
ππ3 4
;
ππ4 5
return
∫∫ 
m_Events
∫∫ 
.
∫∫ 
signals
∫∫ #
[
∫∫# $
idx
∫∫$ '
]
∫∫' (
;
∫∫( )
}
ªª 	
private
ææ 
void
ææ 
OnEnable
ææ 
(
ææ 
)
ææ 
{
øø 	
}
¿¿ 	
[
¬¬ 	
Serializable
¬¬	 
]
¬¬ 
class
√√ 
EventKeyValue
√√ 
{
ƒƒ 	
[
≈≈ 
SerializeField
≈≈ 
]
≈≈ 
List
∆∆ 
<
∆∆ 
SignalAsset
∆∆ 
>
∆∆ 
	m_Signals
∆∆ '
=
∆∆( )
new
∆∆* -
List
∆∆. 2
<
∆∆2 3
SignalAsset
∆∆3 >
>
∆∆> ?
(
∆∆? @
)
∆∆@ A
;
∆∆A B
[
»» 
SerializeField
»» 
,
»» %
CustomSignalEventDrawer
»» 4
]
»»4 5
List
…… 
<
…… 

UnityEvent
…… 
>
…… 
m_Events
…… %
=
……& '
new
……( +
List
……, 0
<
……0 1

UnityEvent
……1 ;
>
……; <
(
……< =
)
……= >
;
……> ?
public
ÀÀ 
bool
ÀÀ 
TryGetValue
ÀÀ #
(
ÀÀ# $
SignalAsset
ÀÀ$ /
key
ÀÀ0 3
,
ÀÀ3 4
out
ÀÀ5 8

UnityEvent
ÀÀ9 C
value
ÀÀD I
)
ÀÀI J
{
ÃÃ 
var
ÕÕ 
index
ÕÕ 
=
ÕÕ 
	m_Signals
ÕÕ %
.
ÕÕ% &
IndexOf
ÕÕ& -
(
ÕÕ- .
key
ÕÕ. 1
)
ÕÕ1 2
;
ÕÕ2 3
if
ŒŒ 
(
ŒŒ 
index
ŒŒ 
!=
ŒŒ 
-
ŒŒ 
$num
ŒŒ 
)
ŒŒ  
{
œœ 
value
–– 
=
–– 
m_Events
–– $
[
––$ %
index
––% *
]
––* +
;
––+ ,
return
—— 
true
—— 
;
——  
}
““ 
value
‘‘ 
=
‘‘ 
null
‘‘ 
;
‘‘ 
return
’’ 
false
’’ 
;
’’ 
}
÷÷ 
public
ÿÿ 
void
ÿÿ 
Append
ÿÿ 
(
ÿÿ 
SignalAsset
ÿÿ *
key
ÿÿ+ .
,
ÿÿ. /

UnityEvent
ÿÿ0 :
value
ÿÿ; @
)
ÿÿ@ A
{
ŸŸ 
	m_Signals
⁄⁄ 
.
⁄⁄ 
Add
⁄⁄ 
(
⁄⁄ 
key
⁄⁄ !
)
⁄⁄! "
;
⁄⁄" #
m_Events
€€ 
.
€€ 
Add
€€ 
(
€€ 
value
€€ "
)
€€" #
;
€€# $
}
‹‹ 
public
ﬁﬁ 
void
ﬁﬁ 
Remove
ﬁﬁ 
(
ﬁﬁ 
int
ﬁﬁ "
idx
ﬁﬁ# &
)
ﬁﬁ& '
{
ﬂﬂ 
if
‡‡ 
(
‡‡ 
idx
‡‡ 
!=
‡‡ 
-
‡‡ 
$num
‡‡ 
)
‡‡ 
{
·· 
	m_Signals
‚‚ 
.
‚‚ 
RemoveAt
‚‚ &
(
‚‚& '
idx
‚‚' *
)
‚‚* +
;
‚‚+ ,
m_Events
„„ 
.
„„ 
RemoveAt
„„ %
(
„„% &
idx
„„& )
)
„„) *
;
„„* +
}
‰‰ 
}
ÂÂ 
public
ÁÁ 
void
ÁÁ 
Remove
ÁÁ 
(
ÁÁ 
SignalAsset
ÁÁ *
key
ÁÁ+ .
)
ÁÁ. /
{
ËË 
var
ÈÈ 
idx
ÈÈ 
=
ÈÈ 
	m_Signals
ÈÈ #
.
ÈÈ# $
IndexOf
ÈÈ$ +
(
ÈÈ+ ,
key
ÈÈ, /
)
ÈÈ/ 0
;
ÈÈ0 1
if
ÍÍ 
(
ÍÍ 
idx
ÍÍ 
!=
ÍÍ 
-
ÍÍ 
$num
ÍÍ 
)
ÍÍ 
{
ÎÎ 
	m_Signals
ÏÏ 
.
ÏÏ 
RemoveAt
ÏÏ &
(
ÏÏ& '
idx
ÏÏ' *
)
ÏÏ* +
;
ÏÏ+ ,
m_Events
ÌÌ 
.
ÌÌ 
RemoveAt
ÌÌ %
(
ÌÌ% &
idx
ÌÌ& )
)
ÌÌ) *
;
ÌÌ* +
}
ÓÓ 
}
ÔÔ 
public
ÒÒ 
List
ÒÒ 
<
ÒÒ 
SignalAsset
ÒÒ #
>
ÒÒ# $
signals
ÒÒ% ,
{
ÚÚ 
get
ÛÛ 
{
ÛÛ 
return
ÛÛ 
	m_Signals
ÛÛ &
;
ÛÛ& '
}
ÛÛ( )
}
ÙÙ 
public
ˆˆ 
List
ˆˆ 
<
ˆˆ 

UnityEvent
ˆˆ "
>
ˆˆ" #
events
ˆˆ$ *
{
˜˜ 
get
¯¯ 
{
¯¯ 
return
¯¯ 
m_Events
¯¯ %
;
¯¯% &
}
¯¯' (
}
˘˘ 
}
˙˙ 	
}
˚˚ 
}¸¸ á®
fC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Control\ControlPlayableAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 

NotKeyable 
] 
public 

class  
ControlPlayableAsset %
:& '
PlayableAsset( 5
,5 6
IPropertyPreview7 G
,G H
ITimelineClipAssetI [
{ 
const 
int 
k_MaxRandInt 
=  
$num! &
;& '
static 
readonly 
List 
< 
PlayableDirector -
>- . 
k_EmptyDirectorsList/ C
=D E
newF I
ListJ N
<N O
PlayableDirectorO _
>_ `
(` a
$numa b
)b c
;c d
static 
readonly 
List 
< 
ParticleSystem +
>+ , 
k_EmptyParticlesList- A
=B C
newD G
ListH L
<L M
ParticleSystemM [
>[ \
(\ ]
$num] ^
)^ _
;_ `
static 
readonly 
HashSet 
<  
ParticleSystem  .
>. /!
s_SubEmitterCollector0 E
=F G
newH K
HashSetL S
<S T
ParticleSystemT b
>b c
(c d
)d e
;e f
[ 	
SerializeField	 
] 
public 
ExposedReference  0
<0 1

GameObject1 ;
>; <
sourceGameObject= M
;M N
[ 	
SerializeField	 
] 
public 

GameObject  *
prefabGameObject+ ;
;; <
[!! 	
SerializeField!!	 
]!! 
public!! 
bool!!  $
updateParticle!!% 3
=!!4 5
true!!6 :
;!!: ;
[)) 	
SerializeField))	 
])) 
public)) 
uint))  $
particleRandomSeed))% 7
;))7 8
[.. 	
SerializeField..	 
].. 
public.. 
bool..  $
updateDirector..% 3
=..4 5
true..6 :
;..: ;
[33 	
SerializeField33	 
]33 
public33 
bool33  $
updateITimeControl33% 7
=338 9
true33: >
;33> ?
[88 	
SerializeField88	 
]88 
public88 
bool88  $
searchHierarchy88% 4
=885 6
false887 <
;88< =
[== 	
SerializeField==	 
]== 
public== 
bool==  $
active==% +
===, -
true==. 2
;==2 3
[BB 	
SerializeFieldBB	 
]BB 
publicBB %
ActivationControlPlayableBB  9
.BB9 :
PostPlaybackStateBB: K
postPlaybackBBL X
=BBY Z%
ActivationControlPlayableBB[ t
.BBt u
PostPlaybackState	BBu Ü
.
BBÜ á
Revert
BBá ç
;
BBç é
PlayableAssetDD "
m_ControlDirectorAssetDD ,
;DD, -
doubleEE 

m_DurationEE 
=EE 
PlayableBindingEE +
.EE+ ,
DefaultDurationEE, ;
;EE; <
boolFF 
m_SupportLoopFF 
;FF 
privateHH 
staticHH 
HashSetHH 
<HH 
PlayableDirectorHH /
>HH/ 0 
s_ProcessedDirectorsHH1 E
=HHF G
newHHH K
HashSetHHL S
<HHS T
PlayableDirectorHHT d
>HHd e
(HHe f
)HHf g
;HHg h
privateII 
staticII 
HashSetII 
<II 

GameObjectII )
>II) *
s_CreatedPrefabsII+ ;
=II< =
newII> A
HashSetIIB I
<III J

GameObjectIIJ T
>IIT U
(IIU V
)IIV W
;IIW X
internalLL 
boolLL  
controllingDirectorsLL *
{LL+ ,
getLL- 0
;LL0 1
privateLL2 9
setLL: =
;LL= >
}LL? @
internalMM 
boolMM  
controllingParticlesMM *
{MM+ ,
getMM- 0
;MM0 1
privateMM2 9
setMM: =
;MM= >
}MM? @
publicRR 
voidRR 
OnEnableRR 
(RR 
)RR 
{SS 	
ifUU 
(UU 
particleRandomSeedUU "
==UU# %
$numUU& '
)UU' (
particleRandomSeedVV "
=VV# $
(VV% &
uintVV& *
)VV* +
RandomVV+ 1
.VV1 2
RangeVV2 7
(VV7 8
$numVV8 9
,VV9 :
k_MaxRandIntVV; G
)VVG H
;VVH I
}WW 	
public\\ 
override\\ 
double\\ 
duration\\ '
{\\( )
get\\* -
{\\. /
return\\0 6

m_Duration\\7 A
;\\A B
}\\C D
}\\E F
publicaa 
ClipCapsaa 
clipCapsaa  
{bb 	
getcc 
{cc 
returncc 
ClipCapscc !
.cc! "
ClipIncc" (
|cc) *
ClipCapscc+ 3
.cc3 4
SpeedMultipliercc4 C
|ccD E
(ccF G
m_SupportLoopccG T
?ccU V
ClipCapsccW _
.cc_ `
Loopingcc` g
:cch i
ClipCapsccj r
.ccr s
Noneccs w
)ccw x
;ccx y
}ccz {
}dd 	
publicll 
overridell 
Playablell  
CreatePlayablell! /
(ll/ 0
PlayableGraphll0 =
graphll> C
,llC D

GameObjectllE O
gollP R
)llR S
{mm 	
ifoo 
(oo 
prefabGameObjectoo  
!=oo! #
nulloo$ (
)oo( )
{pp 
ifqq 
(qq 
s_CreatedPrefabsqq $
.qq$ %
Containsqq% -
(qq- .
prefabGameObjectqq. >
)qq> ?
)qq? @
{rr 
Debugss 
.ss 
LogWarningFormatss *
(ss* +
$str	ss+ ò
,
ssò ô
name
ssö û
)
ssû ü
;
ssü †
returntt 
Playablett #
.tt# $
Creatett$ *
(tt* +
graphtt+ 0
)tt0 1
;tt1 2
}uu 
s_CreatedPrefabsvv  
.vv  !
Addvv! $
(vv$ %
prefabGameObjectvv% 5
)vv5 6
;vv6 7
}ww 
Playableyy 
rootyy 
=yy 
Playableyy $
.yy$ %
Nullyy% )
;yy) *
varzz 
	playableszz 
=zz 
newzz 
Listzz  $
<zz$ %
Playablezz% -
>zz- .
(zz. /
)zz/ 0
;zz0 1

GameObject|| 
sourceObject|| #
=||$ %
sourceGameObject||& 6
.||6 7
Resolve||7 >
(||> ?
graph||? D
.||D E
GetResolver||E P
(||P Q
)||Q R
)||R S
;||S T
if}} 
(}} 
prefabGameObject}}  
!=}}! #
null}}$ (
)}}( )
{~~ 
	Transform 
parenTransform (
=) *
sourceObject+ 7
!=8 :
null; ?
?@ A
sourceObjectB N
.N O
	transformO X
:Y Z
null[ _
;_ `
var
ÄÄ 
controlPlayable
ÄÄ #
=
ÄÄ$ %#
PrefabControlPlayable
ÄÄ& ;
.
ÄÄ; <
Create
ÄÄ< B
(
ÄÄB C
graph
ÄÄC H
,
ÄÄH I
prefabGameObject
ÄÄJ Z
,
ÄÄZ [
parenTransform
ÄÄ\ j
)
ÄÄj k
;
ÄÄk l
sourceObject
ÇÇ 
=
ÇÇ 
controlPlayable
ÇÇ .
.
ÇÇ. /
GetBehaviour
ÇÇ/ ;
(
ÇÇ; <
)
ÇÇ< =
.
ÇÇ= >
prefabInstance
ÇÇ> L
;
ÇÇL M
	playables
ÉÉ 
.
ÉÉ 
Add
ÉÉ 
(
ÉÉ 
controlPlayable
ÉÉ -
)
ÉÉ- .
;
ÉÉ. /
}
ÑÑ 

m_Duration
ÜÜ 
=
ÜÜ 
PlayableBinding
ÜÜ (
.
ÜÜ( )
DefaultDuration
ÜÜ) 8
;
ÜÜ8 9
m_SupportLoop
áá 
=
áá 
false
áá !
;
áá! ""
controllingParticles
ââ  
=
ââ! "
false
ââ# (
;
ââ( )"
controllingDirectors
ää  
=
ää! "
false
ää# (
;
ää( )
if
åå 
(
åå 
sourceObject
åå 
!=
åå 
null
åå  $
)
åå$ %
{
çç 
var
éé 
	directors
éé 
=
éé 
updateDirector
éé  .
?
éé/ 0
GetComponent
éé1 =
<
éé= >
PlayableDirector
éé> N
>
ééN O
(
ééO P
sourceObject
ééP \
)
éé\ ]
:
éé^ _"
k_EmptyDirectorsList
éé` t
;
éét u
var
èè 
particleSystems
èè #
=
èè$ %
updateParticle
èè& 4
?
èè5 6,
GetControllableParticleSystems
èè7 U
(
èèU V
sourceObject
èèV b
)
èèb c
:
èèd e"
k_EmptyParticlesList
èèf z
;
èèz {'
UpdateDurationAndLoopFlag
ìì )
(
ìì) *
	directors
ìì* 3
,
ìì3 4
particleSystems
ìì5 D
)
ììD E
;
ììE F
var
ïï 
director
ïï 
=
ïï 
go
ïï !
.
ïï! "
GetComponent
ïï" .
<
ïï. /
PlayableDirector
ïï/ ?
>
ïï? @
(
ïï@ A
)
ïïA B
;
ïïB C
if
ññ 
(
ññ 
director
ññ 
!=
ññ 
null
ññ  $
)
ññ$ %$
m_ControlDirectorAsset
óó *
=
óó+ ,
director
óó- 5
.
óó5 6
playableAsset
óó6 C
;
óóC D
if
ôô 
(
ôô 
go
ôô 
==
ôô 
sourceObject
ôô &
&&
ôô' )
prefabGameObject
ôô* :
==
ôô; =
null
ôô> B
)
ôôB C
{
öö 
Debug
õõ 
.
õõ 
LogWarningFormat
õõ *
(
õõ* +
$strõõ+ õ
,õõõ ú
nameõõù °
)õõ° ¢
;õõ¢ £
active
úú 
=
úú 
false
úú "
;
úú" #
if
ùù 
(
ùù 
!
ùù 
searchHierarchy
ùù (
)
ùù( )
updateDirector
ûû &
=
ûû' (
false
ûû) .
;
ûû. /
}
üü 
if
°° 
(
°° 
active
°° 
)
°° &
CreateActivationPlayable
¢¢ ,
(
¢¢, -
sourceObject
¢¢- 9
,
¢¢9 :
graph
¢¢; @
,
¢¢@ A
	playables
¢¢B K
)
¢¢K L
;
¢¢L M
if
§§ 
(
§§ 
updateDirector
§§ "
)
§§" #/
!SearchHierarchyAndConnectDirector
•• 5
(
••5 6
	directors
••6 ?
,
••? @
graph
••A F
,
••F G
	playables
••H Q
,
••Q R
prefabGameObject
••S c
!=
••d f
null
••g k
)
••k l
;
••l m
if
ßß 
(
ßß 
updateParticle
ßß "
)
ßß" #5
'SearchHierarchyAndConnectParticleSystem
®® ;
(
®®; <
particleSystems
®®< K
,
®®K L
graph
®®M R
,
®®R S
	playables
®®T ]
)
®®] ^
;
®®^ _
if
™™ 
(
™™  
updateITimeControl
™™ &
)
™™& '9
+SearchHierarchyAndConnectControlableScripts
´´ ?
(
´´? @#
GetControlableScripts
´´@ U
(
´´U V
sourceObject
´´V b
)
´´b c
,
´´c d
graph
´´e j
,
´´j k
	playables
´´l u
)
´´u v
;
´´v w
root
ÆÆ 
=
ÆÆ %
ConnectPlayablesToMixer
ÆÆ .
(
ÆÆ. /
graph
ÆÆ/ 4
,
ÆÆ4 5
	playables
ÆÆ6 ?
)
ÆÆ? @
;
ÆÆ@ A
}
ØØ 
if
±± 
(
±± 
prefabGameObject
±±  
!=
±±! #
null
±±$ (
)
±±( )
s_CreatedPrefabs
≤≤  
.
≤≤  !
Remove
≤≤! '
(
≤≤' (
prefabGameObject
≤≤( 8
)
≤≤8 9
;
≤≤9 :
if
¥¥ 
(
¥¥ 
!
¥¥ 
root
¥¥ 
.
¥¥ 
IsValid
¥¥ 
(
¥¥ 
)
¥¥ 
)
¥¥  
root
µµ 
=
µµ 
Playable
µµ 
.
µµ  
Create
µµ  &
(
µµ& '
graph
µµ' ,
)
µµ, -
;
µµ- .
return
∑∑ 
root
∑∑ 
;
∑∑ 
}
∏∏ 	
static
∫∫ 
Playable
∫∫ %
ConnectPlayablesToMixer
∫∫ /
(
∫∫/ 0
PlayableGraph
∫∫0 =
graph
∫∫> C
,
∫∫C D
List
∫∫E I
<
∫∫I J
Playable
∫∫J R
>
∫∫R S
	playables
∫∫T ]
)
∫∫] ^
{
ªª 	
var
ºº 
mixer
ºº 
=
ºº 
Playable
ºº  
.
ºº  !
Create
ºº! '
(
ºº' (
graph
ºº( -
,
ºº- .
	playables
ºº/ 8
.
ºº8 9
Count
ºº9 >
)
ºº> ?
;
ºº? @
for
ææ 
(
ææ 
int
ææ 
i
ææ 
=
ææ 
$num
ææ 
;
ææ 
i
ææ 
!=
ææ  
	playables
ææ! *
.
ææ* +
Count
ææ+ 0
;
ææ0 1
++
ææ2 4
i
ææ4 5
)
ææ5 6
{
øø %
ConnectMixerAndPlayable
¿¿ '
(
¿¿' (
graph
¿¿( -
,
¿¿- .
mixer
¿¿/ 4
,
¿¿4 5
	playables
¿¿6 ?
[
¿¿? @
i
¿¿@ A
]
¿¿A B
,
¿¿B C
i
¿¿D E
)
¿¿E F
;
¿¿F G
}
¡¡ 
mixer
√√ 
.
√√ !
SetPropagateSetTime
√√ %
(
√√% &
true
√√& *
)
√√* +
;
√√+ ,
return
≈≈ 
mixer
≈≈ 
;
≈≈ 
}
∆∆ 	
void
»» &
CreateActivationPlayable
»» %
(
»»% &

GameObject
»»& 0
root
»»1 5
,
»»5 6
PlayableGraph
»»7 D
graph
»»E J
,
»»J K
List
…… 
<
…… 
Playable
…… 
>
…… 
outplayables
…… '
)
……' (
{
   	
var
ÀÀ 

activation
ÀÀ 
=
ÀÀ '
ActivationControlPlayable
ÀÀ 6
.
ÀÀ6 7
Create
ÀÀ7 =
(
ÀÀ= >
graph
ÀÀ> C
,
ÀÀC D
root
ÀÀE I
,
ÀÀI J
postPlayback
ÀÀK W
)
ÀÀW X
;
ÀÀX Y
if
ÃÃ 
(
ÃÃ 

activation
ÃÃ 
.
ÃÃ 
IsValid
ÃÃ "
(
ÃÃ" #
)
ÃÃ# $
)
ÃÃ$ %
outplayables
ÕÕ 
.
ÕÕ 
Add
ÕÕ  
(
ÕÕ  !

activation
ÕÕ! +
)
ÕÕ+ ,
;
ÕÕ, -
}
ŒŒ 	
void
–– 5
'SearchHierarchyAndConnectParticleSystem
–– 4
(
––4 5
IEnumerable
––5 @
<
––@ A
ParticleSystem
––A O
>
––O P
particleSystems
––Q `
,
––` a
PlayableGraph
––b o
graph
––p u
,
––u v
List
—— 
<
—— 
Playable
—— 
>
—— 
outplayables
—— '
)
——' (
{
““ 	
foreach
”” 
(
”” 
var
”” 
particleSystem
”” '
in
””( *
particleSystems
””+ :
)
””: ;
{
‘‘ 
if
’’ 
(
’’ 
particleSystem
’’ "
!=
’’# %
null
’’& *
)
’’* +
{
÷÷ "
controllingParticles
◊◊ (
=
◊◊) *
true
◊◊+ /
;
◊◊/ 0
outplayables
ÿÿ  
.
ÿÿ  !
Add
ÿÿ! $
(
ÿÿ$ %%
ParticleControlPlayable
ÿÿ% <
.
ÿÿ< =
Create
ÿÿ= C
(
ÿÿC D
graph
ÿÿD I
,
ÿÿI J
particleSystem
ÿÿK Y
,
ÿÿY Z 
particleRandomSeed
ÿÿ[ m
)
ÿÿm n
)
ÿÿn o
;
ÿÿo p
}
ŸŸ 
}
⁄⁄ 
}
€€ 	
void
›› /
!SearchHierarchyAndConnectDirector
›› .
(
››. /
IEnumerable
››/ :
<
››: ;
PlayableDirector
››; K
>
››K L
	directors
››M V
,
››V W
PlayableGraph
››X e
graph
››f k
,
››k l
List
ﬁﬁ 
<
ﬁﬁ 
Playable
ﬁﬁ 
>
ﬁﬁ 
outplayables
ﬁﬁ '
,
ﬁﬁ' (
bool
ﬁﬁ) -#
disableSelfReferences
ﬁﬁ. C
)
ﬁﬁC D
{
ﬂﬂ 	
foreach
‡‡ 
(
‡‡ 
var
‡‡ 
director
‡‡ !
in
‡‡" $
	directors
‡‡% .
)
‡‡. /
{
·· 
if
‚‚ 
(
‚‚ 
director
‚‚ 
!=
‚‚ 
null
‚‚  $
)
‚‚$ %
{
„„ 
if
‰‰ 
(
‰‰ 
director
‰‰  
.
‰‰  !
playableAsset
‰‰! .
!=
‰‰/ 1$
m_ControlDirectorAsset
‰‰2 H
)
‰‰H I
{
ÂÂ 
outplayables
ÊÊ $
.
ÊÊ$ %
Add
ÊÊ% (
(
ÊÊ( )%
DirectorControlPlayable
ÊÊ) @
.
ÊÊ@ A
Create
ÊÊA G
(
ÊÊG H
graph
ÊÊH M
,
ÊÊM N
director
ÊÊO W
)
ÊÊW X
)
ÊÊX Y
;
ÊÊY Z"
controllingDirectors
ÁÁ ,
=
ÁÁ- .
true
ÁÁ/ 3
;
ÁÁ3 4
}
ËË 
else
ÍÍ 
if
ÍÍ 
(
ÍÍ #
disableSelfReferences
ÍÍ 2
)
ÍÍ2 3
{
ÎÎ 
director
ÏÏ  
.
ÏÏ  !
enabled
ÏÏ! (
=
ÏÏ) *
false
ÏÏ+ 0
;
ÏÏ0 1
}
ÌÌ 
}
ÓÓ 
}
ÔÔ 
}
 	
static
ÚÚ 
void
ÚÚ 9
+SearchHierarchyAndConnectControlableScripts
ÚÚ ?
(
ÚÚ? @
IEnumerable
ÚÚ@ K
<
ÚÚK L
MonoBehaviour
ÚÚL Y
>
ÚÚY Z 
controlableScripts
ÚÚ[ m
,
ÚÚm n
PlayableGraph
ÚÚo |
graphÚÚ} Ç
,ÚÚÇ É
ListÚÚÑ à
<ÚÚà â
PlayableÚÚâ ë
>ÚÚë í
outplayablesÚÚì ü
)ÚÚü †
{
ÛÛ 	
foreach
ÙÙ 
(
ÙÙ 
var
ÙÙ 
script
ÙÙ 
in
ÙÙ  " 
controlableScripts
ÙÙ# 5
)
ÙÙ5 6
{
ıı 
outplayables
ˆˆ 
.
ˆˆ 
Add
ˆˆ  
(
ˆˆ  !!
TimeControlPlayable
ˆˆ! 4
.
ˆˆ4 5
Create
ˆˆ5 ;
(
ˆˆ; <
graph
ˆˆ< A
,
ˆˆA B
(
ˆˆC D
ITimeControl
ˆˆD P
)
ˆˆP Q
script
ˆˆQ W
)
ˆˆW X
)
ˆˆX Y
;
ˆˆY Z
}
˜˜ 
}
¯¯ 	
static
˙˙ 
void
˙˙ %
ConnectMixerAndPlayable
˙˙ +
(
˙˙+ ,
PlayableGraph
˙˙, 9
graph
˙˙: ?
,
˙˙? @
Playable
˙˙A I
mixer
˙˙J O
,
˙˙O P
Playable
˙˙Q Y
playable
˙˙Z b
,
˙˙b c
int
˚˚ 
	portIndex
˚˚ 
)
˚˚ 
{
¸¸ 	
graph
˝˝ 
.
˝˝ 
Connect
˝˝ 
(
˝˝ 
playable
˝˝ "
,
˝˝" #
$num
˝˝$ %
,
˝˝% &
mixer
˝˝' ,
,
˝˝, -
	portIndex
˝˝. 7
)
˝˝7 8
;
˝˝8 9
mixer
˛˛ 
.
˛˛ 
SetInputWeight
˛˛  
(
˛˛  !
playable
˛˛! )
,
˛˛) *
$num
˛˛+ /
)
˛˛/ 0
;
˛˛0 1
}
ˇˇ 	
internal
ÅÅ 
IList
ÅÅ 
<
ÅÅ 
T
ÅÅ 
>
ÅÅ 
GetComponent
ÅÅ &
<
ÅÅ& '
T
ÅÅ' (
>
ÅÅ( )
(
ÅÅ) *

GameObject
ÅÅ* 4

gameObject
ÅÅ5 ?
)
ÅÅ? @
{
ÇÇ 	
var
ÉÉ 

components
ÉÉ 
=
ÉÉ 
new
ÉÉ  
List
ÉÉ! %
<
ÉÉ% &
T
ÉÉ& '
>
ÉÉ' (
(
ÉÉ( )
)
ÉÉ) *
;
ÉÉ* +
if
ÑÑ 
(
ÑÑ 

gameObject
ÑÑ 
!=
ÑÑ 
null
ÑÑ "
)
ÑÑ" #
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
searchHierarchy
ÜÜ #
)
ÜÜ# $
{
áá 

gameObject
àà 
.
àà %
GetComponentsInChildren
àà 6
<
àà6 7
T
àà7 8
>
àà8 9
(
àà9 :
true
àà: >
,
àà> ?

components
àà@ J
)
ààJ K
;
ààK L
}
ââ 
else
ää 
{
ãã 

gameObject
åå 
.
åå 
GetComponents
åå ,
<
åå, -
T
åå- .
>
åå. /
(
åå/ 0

components
åå0 :
)
åå: ;
;
åå; <
}
çç 
}
éé 
return
èè 

components
èè 
;
èè 
}
êê 	
internal
íí 
static
íí 
IEnumerable
íí #
<
íí# $
MonoBehaviour
íí$ 1
>
íí1 2#
GetControlableScripts
íí3 H
(
ííH I

GameObject
ííI S
root
ííT X
)
ííX Y
{
ìì 	
if
îî 
(
îî 
root
îî 
==
îî 
null
îî 
)
îî 
yield
ïï 
break
ïï 
;
ïï 
foreach
óó 
(
óó 
var
óó 
script
óó 
in
óó  "
root
óó# '
.
óó' (%
GetComponentsInChildren
óó( ?
<
óó? @
MonoBehaviour
óó@ M
>
óóM N
(
óóN O
)
óóO P
)
óóP Q
{
òò 
if
ôô 
(
ôô 
script
ôô 
is
ôô 
ITimeControl
ôô *
)
ôô* +
yield
öö 
return
öö  
script
öö! '
;
öö' (
}
õõ 
}
úú 	
internal
ûû 
void
ûû '
UpdateDurationAndLoopFlag
ûû /
(
ûû/ 0
IList
ûû0 5
<
ûû5 6
PlayableDirector
ûû6 F
>
ûûF G
	directors
ûûH Q
,
ûûQ R
IList
ûûS X
<
ûûX Y
ParticleSystem
ûûY g
>
ûûg h
particleSystems
ûûi x
)
ûûx y
{
üü 	
if
†† 
(
†† 
	directors
†† 
.
†† 
Count
†† 
==
††  "
$num
††# $
&&
††% '
particleSystems
††( 7
.
††7 8
Count
††8 =
==
††> @
$num
††A B
)
††B C
return
°° 
;
°° 
const
££ 
double
££ 
invalidDuration
££ (
=
££) *
double
££+ 1
.
££1 2
NegativeInfinity
££2 B
;
££B C
var
•• 
maxDuration
•• 
=
•• 
invalidDuration
•• -
;
••- .
var
¶¶ 
supportsLoop
¶¶ 
=
¶¶ 
false
¶¶ $
;
¶¶$ %
foreach
®® 
(
®® 
var
®® 
director
®® !
in
®®" $
	directors
®®% .
)
®®. /
{
©© 
if
™™ 
(
™™ 
director
™™ 
.
™™ 
playableAsset
™™ *
!=
™™+ -
null
™™. 2
)
™™2 3
{
´´ 
var
¨¨ 
assetDuration
¨¨ %
=
¨¨& '
director
¨¨( 0
.
¨¨0 1
playableAsset
¨¨1 >
.
¨¨> ?
duration
¨¨? G
;
¨¨G H
if
ÆÆ 
(
ÆÆ 
director
ÆÆ  
.
ÆÆ  !
playableAsset
ÆÆ! .
is
ÆÆ/ 1
TimelineAsset
ÆÆ2 ?
&&
ÆÆ@ B
assetDuration
ÆÆC P
>
ÆÆQ R
$num
ÆÆS V
)
ÆÆV W
assetDuration
∞∞ %
=
∞∞& '
(
∞∞( )
double
∞∞) /
)
∞∞/ 0
(
∞∞0 1
(
∞∞1 2
DiscreteTime
∞∞2 >
)
∞∞> ?
assetDuration
∞∞? L
)
∞∞L M
.
∞∞M N
OneTickAfter
∞∞N Z
(
∞∞Z [
)
∞∞[ \
;
∞∞\ ]
maxDuration
≤≤ 
=
≤≤  !
Math
≤≤" &
.
≤≤& '
Max
≤≤' *
(
≤≤* +
maxDuration
≤≤+ 6
,
≤≤6 7
assetDuration
≤≤8 E
)
≤≤E F
;
≤≤F G
supportsLoop
≥≥  
=
≥≥! "
supportsLoop
≥≥# /
||
≥≥0 2
director
≥≥3 ;
.
≥≥; <
extrapolationMode
≥≥< M
==
≥≥N P
DirectorWrapMode
≥≥Q a
.
≥≥a b
Loop
≥≥b f
;
≥≥f g
}
¥¥ 
}
µµ 
foreach
∑∑ 
(
∑∑ 
var
∑∑ 
particleSystem
∑∑ '
in
∑∑( *
particleSystems
∑∑+ :
)
∑∑: ;
{
∏∏ 
maxDuration
ππ 
=
ππ 
Math
ππ "
.
ππ" #
Max
ππ# &
(
ππ& '
maxDuration
ππ' 2
,
ππ2 3
particleSystem
ππ4 B
.
ππB C
main
ππC G
.
ππG H
duration
ππH P
)
ππP Q
;
ππQ R
supportsLoop
∫∫ 
=
∫∫ 
supportsLoop
∫∫ +
||
∫∫, .
particleSystem
∫∫/ =
.
∫∫= >
main
∫∫> B
.
∫∫B C
loop
∫∫C G
;
∫∫G H
}
ªª 

m_Duration
ΩΩ 
=
ΩΩ 
double
ΩΩ 
.
ΩΩ   
IsNegativeInfinity
ΩΩ  2
(
ΩΩ2 3
maxDuration
ΩΩ3 >
)
ΩΩ> ?
?
ΩΩ@ A
PlayableBinding
ΩΩB Q
.
ΩΩQ R
DefaultDuration
ΩΩR a
:
ΩΩb c
maxDuration
ΩΩd o
;
ΩΩo p
m_SupportLoop
ææ 
=
ææ 
supportsLoop
ææ (
;
ææ( )
}
øø 	
IList
¡¡ 
<
¡¡ 
ParticleSystem
¡¡ 
>
¡¡ ,
GetControllableParticleSystems
¡¡ <
(
¡¡< =

GameObject
¡¡= G
go
¡¡H J
)
¡¡J K
{
¬¬ 	
var
√√ 
roots
√√ 
=
√√ 
new
√√ 
List
√√  
<
√√  !
ParticleSystem
√√! /
>
√√/ 0
(
√√0 1
)
√√1 2
;
√√2 3
if
…… 
(
…… 
searchHierarchy
…… 
||
……  "
go
……# %
.
……% &
GetComponent
……& 2
<
……2 3
ParticleSystem
……3 A
>
……A B
(
……B C
)
……C D
!=
……E G
null
……H L
)
……L M
{
   ,
GetControllableParticleSystems
ÀÀ .
(
ÀÀ. /
go
ÀÀ/ 1
.
ÀÀ1 2
	transform
ÀÀ2 ;
,
ÀÀ; <
roots
ÀÀ= B
,
ÀÀB C#
s_SubEmitterCollector
ÀÀD Y
)
ÀÀY Z
;
ÀÀZ [#
s_SubEmitterCollector
ÃÃ %
.
ÃÃ% &
Clear
ÃÃ& +
(
ÃÃ+ ,
)
ÃÃ, -
;
ÃÃ- .
}
ÕÕ 
return
œœ 
roots
œœ 
;
œœ 
}
–– 	
static
““ 
void
““ ,
GetControllableParticleSystems
““ 2
(
““2 3
	Transform
““3 <
t
““= >
,
““> ?
ICollection
““@ K
<
““K L
ParticleSystem
““L Z
>
““Z [
roots
““\ a
,
““a b
HashSet
““c j
<
““j k
ParticleSystem
““k y
>
““y z
subEmitters““{ Ü
)““Ü á
{
”” 	
var
‘‘ 
ps
‘‘ 
=
‘‘ 
t
‘‘ 
.
‘‘ 
GetComponent
‘‘ #
<
‘‘# $
ParticleSystem
‘‘$ 2
>
‘‘2 3
(
‘‘3 4
)
‘‘4 5
;
‘‘5 6
if
’’ 
(
’’ 
ps
’’ 
!=
’’ 
null
’’ 
)
’’ 
{
÷÷ 
if
◊◊ 
(
◊◊ 
!
◊◊ 
subEmitters
◊◊  
.
◊◊  !
Contains
◊◊! )
(
◊◊) *
ps
◊◊* ,
)
◊◊, -
)
◊◊- .
{
ÿÿ 
roots
ŸŸ 
.
ŸŸ 
Add
ŸŸ 
(
ŸŸ 
ps
ŸŸ  
)
ŸŸ  !
;
ŸŸ! "
CacheSubEmitters
⁄⁄ $
(
⁄⁄$ %
ps
⁄⁄% '
,
⁄⁄' (
subEmitters
⁄⁄) 4
)
⁄⁄4 5
;
⁄⁄5 6
}
€€ 
}
‹‹ 
for
ﬁﬁ 
(
ﬁﬁ 
int
ﬁﬁ 
i
ﬁﬁ 
=
ﬁﬁ 
$num
ﬁﬁ 
;
ﬁﬁ 
i
ﬁﬁ 
<
ﬁﬁ 
t
ﬁﬁ  !
.
ﬁﬁ! "

childCount
ﬁﬁ" ,
;
ﬁﬁ, -
++
ﬁﬁ. 0
i
ﬁﬁ0 1
)
ﬁﬁ1 2
{
ﬂﬂ ,
GetControllableParticleSystems
‡‡ .
(
‡‡. /
t
‡‡/ 0
.
‡‡0 1
GetChild
‡‡1 9
(
‡‡9 :
i
‡‡: ;
)
‡‡; <
,
‡‡< =
roots
‡‡> C
,
‡‡C D
subEmitters
‡‡E P
)
‡‡P Q
;
‡‡Q R
}
·· 
}
‚‚ 	
static
‰‰ 
void
‰‰ 
CacheSubEmitters
‰‰ $
(
‰‰$ %
ParticleSystem
‰‰% 3
ps
‰‰4 6
,
‰‰6 7
HashSet
‰‰8 ?
<
‰‰? @
ParticleSystem
‰‰@ N
>
‰‰N O
subEmitters
‰‰P [
)
‰‰[ \
{
ÂÂ 	
if
ÊÊ 
(
ÊÊ 
ps
ÊÊ 
==
ÊÊ 
null
ÊÊ 
)
ÊÊ 
return
ÁÁ 
;
ÁÁ 
for
ÈÈ 
(
ÈÈ 
int
ÈÈ 
i
ÈÈ 
=
ÈÈ 
$num
ÈÈ 
;
ÈÈ 
i
ÈÈ 
<
ÈÈ 
ps
ÈÈ  "
.
ÈÈ" #
subEmitters
ÈÈ# .
.
ÈÈ. /
subEmittersCount
ÈÈ/ ?
;
ÈÈ? @
i
ÈÈA B
++
ÈÈB D
)
ÈÈD E
{
ÍÍ 
subEmitters
ÎÎ 
.
ÎÎ 
Add
ÎÎ 
(
ÎÎ  
ps
ÎÎ  "
.
ÎÎ" #
subEmitters
ÎÎ# .
.
ÎÎ. /!
GetSubEmitterSystem
ÎÎ/ B
(
ÎÎB C
i
ÎÎC D
)
ÎÎD E
)
ÎÎE F
;
ÎÎF G
}
ÌÌ 
}
ÓÓ 	
public
ÒÒ 
void
ÒÒ 
GatherProperties
ÒÒ $
(
ÒÒ$ %
PlayableDirector
ÒÒ% 5
director
ÒÒ6 >
,
ÒÒ> ? 
IPropertyCollector
ÒÒ@ R
driver
ÒÒS Y
)
ÒÒY Z
{
ÚÚ 	
if
ÙÙ 
(
ÙÙ 
director
ÙÙ 
==
ÙÙ 
null
ÙÙ  
)
ÙÙ  !
return
ıı 
;
ıı 
if
¯¯ 
(
¯¯ "
s_ProcessedDirectors
¯¯ $
.
¯¯$ %
Contains
¯¯% -
(
¯¯- .
director
¯¯. 6
)
¯¯6 7
)
¯¯7 8
return
˘˘ 
;
˘˘ "
s_ProcessedDirectors
˙˙  
.
˙˙  !
Add
˙˙! $
(
˙˙$ %
director
˙˙% -
)
˙˙- .
;
˙˙. /
var
¸¸ 

gameObject
¸¸ 
=
¸¸ 
sourceGameObject
¸¸ -
.
¸¸- .
Resolve
¸¸. 5
(
¸¸5 6
director
¸¸6 >
)
¸¸> ?
;
¸¸? @
if
˝˝ 
(
˝˝ 

gameObject
˝˝ 
!=
˝˝ 
null
˝˝ "
)
˝˝" #
{
˛˛ 
if
ˇˇ 
(
ˇˇ 
updateParticle
ˇˇ "
)
ˇˇ" #
PreviewParticles
ÄÄ $
(
ÄÄ$ %
driver
ÄÄ% +
,
ÄÄ+ ,

gameObject
ÄÄ- 7
.
ÄÄ7 8%
GetComponentsInChildren
ÄÄ8 O
<
ÄÄO P
ParticleSystem
ÄÄP ^
>
ÄÄ^ _
(
ÄÄ_ `
true
ÄÄ` d
)
ÄÄd e
)
ÄÄe f
;
ÄÄf g
if
ÇÇ 
(
ÇÇ 
active
ÇÇ 
)
ÇÇ 
PreviewActivation
ÉÉ %
(
ÉÉ% &
driver
ÉÉ& ,
,
ÉÉ, -
new
ÉÉ. 1
[
ÉÉ1 2
]
ÉÉ2 3
{
ÉÉ4 5

gameObject
ÉÉ6 @
}
ÉÉA B
)
ÉÉB C
;
ÉÉC D
if
ÖÖ 
(
ÖÖ  
updateITimeControl
ÖÖ &
)
ÖÖ& ' 
PreviewTimeControl
ÜÜ &
(
ÜÜ& '
driver
ÜÜ' -
,
ÜÜ- .
director
ÜÜ/ 7
,
ÜÜ7 8#
GetControlableScripts
ÜÜ9 N
(
ÜÜN O

gameObject
ÜÜO Y
)
ÜÜY Z
)
ÜÜZ [
;
ÜÜ[ \
if
àà 
(
àà 
updateDirector
àà "
)
àà" #
PreviewDirectors
ââ $
(
ââ$ %
driver
ââ% +
,
ââ+ ,
GetComponent
ââ- 9
<
ââ9 :
PlayableDirector
ââ: J
>
ââJ K
(
ââK L

gameObject
ââL V
)
ââV W
)
ââW X
;
ââX Y
}
ää "
s_ProcessedDirectors
ãã  
.
ãã  !
Remove
ãã! '
(
ãã' (
director
ãã( 0
)
ãã0 1
;
ãã1 2
}
åå 	
internal
éé 
static
éé 
void
éé 
PreviewParticles
éé -
(
éé- . 
IPropertyCollector
éé. @
driver
ééA G
,
ééG H
IEnumerable
ééI T
<
ééT U
ParticleSystem
ééU c
>
ééc d
	particles
éée n
)
één o
{
èè 	
foreach
êê 
(
êê 
var
êê 
ps
êê 
in
êê 
	particles
êê (
)
êê( )
{
ëë 
driver
íí 
.
íí 
AddFromName
íí "
<
íí" #
ParticleSystem
íí# 1
>
íí1 2
(
íí2 3
ps
íí3 5
.
íí5 6

gameObject
íí6 @
,
íí@ A
$str
ííB N
)
ííN O
;
ííO P
driver
ìì 
.
ìì 
AddFromName
ìì "
<
ìì" #
ParticleSystem
ìì# 1
>
ìì1 2
(
ìì2 3
ps
ìì3 5
.
ìì5 6

gameObject
ìì6 @
,
ìì@ A
$str
ììB R
)
ììR S
;
ììS T
}
îî 
}
ïï 	
internal
óó 
static
óó 
void
óó 
PreviewActivation
óó .
(
óó. / 
IPropertyCollector
óó/ A
driver
óóB H
,
óóH I
IEnumerable
óóJ U
<
óóU V

GameObject
óóV `
>
óó` a
objects
óób i
)
óói j
{
òò 	
foreach
ôô 
(
ôô 
var
ôô 

gameObject
ôô #
in
ôô$ &
objects
ôô' .
)
ôô. /
driver
öö 
.
öö 
AddFromName
öö "
(
öö" #

gameObject
öö# -
,
öö- .
$str
öö/ ;
)
öö; <
;
öö< =
}
õõ 	
internal
ùù 
static
ùù 
void
ùù  
PreviewTimeControl
ùù /
(
ùù/ 0 
IPropertyCollector
ùù0 B
driver
ùùC I
,
ùùI J
PlayableDirector
ùùK [
director
ùù\ d
,
ùùd e
IEnumerable
ùùf q
<
ùùq r
MonoBehaviour
ùùr 
>ùù Ä
scriptsùùÅ à
)ùùà â
{
ûû 	
foreach
üü 
(
üü 
var
üü 
script
üü 
in
üü  "
scripts
üü# *
)
üü* +
{
†† 
var
°° 
propertyPreview
°° #
=
°°$ %
script
°°& ,
as
°°- /
IPropertyPreview
°°0 @
;
°°@ A
if
¢¢ 
(
¢¢ 
propertyPreview
¢¢ #
!=
¢¢$ &
null
¢¢' +
)
¢¢+ ,
propertyPreview
££ #
.
££# $
GatherProperties
££$ 4
(
££4 5
director
££5 =
,
££= >
driver
££? E
)
££E F
;
££F G
else
§§ 
driver
•• 
.
•• 
AddFromComponent
•• +
(
••+ ,
script
••, 2
.
••2 3

gameObject
••3 =
,
••= >
script
••? E
)
••E F
;
••F G
}
¶¶ 
}
ßß 	
internal
©© 
static
©© 
void
©© 
PreviewDirectors
©© -
(
©©- . 
IPropertyCollector
©©. @
driver
©©A G
,
©©G H
IEnumerable
©©I T
<
©©T U
PlayableDirector
©©U e
>
©©e f
	directors
©©g p
)
©©p q
{
™™ 	
foreach
´´ 
(
´´ 
var
´´ 
childDirector
´´ &
in
´´' )
	directors
´´* 3
)
´´3 4
{
¨¨ 
if
≠≠ 
(
≠≠ 
childDirector
≠≠ !
==
≠≠" $
null
≠≠% )
)
≠≠) *
continue
ÆÆ 
;
ÆÆ 
var
∞∞ 
timeline
∞∞ 
=
∞∞ 
childDirector
∞∞ ,
.
∞∞, -
playableAsset
∞∞- :
as
∞∞; =
TimelineAsset
∞∞> K
;
∞∞K L
if
±± 
(
±± 
timeline
±± 
==
±± 
null
±±  $
)
±±$ %
continue
≤≤ 
;
≤≤ 
timeline
¥¥ 
.
¥¥ 
GatherProperties
¥¥ )
(
¥¥) *
childDirector
¥¥* 7
,
¥¥7 8
driver
¥¥9 ?
)
¥¥? @
;
¥¥@ A
}
µµ 
}
∂∂ 	
}
∑∑ 
}∏∏ ¢
TC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\ILayerable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public		 

	interface		 

ILayerable		 
{

 
Playable 
CreateLayerMixer !
(! "
PlayableGraph" /
graph0 5
,5 6

GameObject7 A
goB D
,D E
intF I

inputCountJ T
)T U
;U V
} 
} —•
VC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\TimelineClip.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

	interface 
ITimelineClipAsset '
{ 
ClipCaps 
clipCaps 
{ 
get 
;  
}! "
} 
[ 
Serializable 
] 
public 

partial 
class 
TimelineClip %
:& '
ICurvesOwner( 4
,4 5*
ISerializationCallbackReceiver6 T
{ 
public 
static 
readonly 
ClipCaps '
kDefaultClipCaps( 8
=9 :
ClipCaps; C
.C D
BlendingD L
;L M
public!! 
static!! 
readonly!! 
float!! $)
kDefaultClipDurationInSeconds!!% B
=!!C D
$num!!E F
;!!F G
public&& 
static&& 
readonly&& 
double&& %
kTimeScaleMin&&& 3
=&&4 5
$num&&6 9
/&&: ;
$num&&< @
;&&@ A
public++ 
static++ 
readonly++ 
double++ %
kTimeScaleMax++& 3
=++4 5
$num++6 :
;++: ;
internal-- 
static-- 
readonly--  
string--! '
kDefaultCurvesName--( :
=--; <
$str--= N
;--N O
internal// 
static// 
readonly//  
double//! '
kMinDuration//( 4
=//5 6
$num//7 8
///9 :
$num//; ?
;//? @
internal22 
static22 
readonly22  
double22! '
kMaxTimeValue22( 5
=226 7
$num228 ?
;22? @
public77 
enum77 
ClipExtrapolation77 %
{88 	
None<< 
,<< 
HoldAA 
,AA 
LoopFF 
,FF 
PingPongKK 
,KK 
ContinuePP 
}QQ 	
;QQ	 

publicVV 
enumVV 
BlendCurveModeVV "
{WW 	
Auto[[ 
,[[ 
Manual`` 
}aa 	
;aa	 

internalcc 
TimelineClipcc 
(cc 

TrackAssetcc (
parentcc) /
)cc/ 0
{dd 	#
SetParentTrack_Internalff #
(ff# $
parentff$ *
)ff* +
;ff+ ,
}gg 	
[ii 	
SerializeFieldii	 
]ii 
doubleii 
m_Startii  '
;ii' (
[jj 	
SerializeFieldjj	 
]jj 
doublejj 
m_ClipInjj  (
;jj( )
[kk 	
SerializeFieldkk	 
]kk 
Objectkk 
m_Assetkk  '
;kk' (
[ll 	
SerializeFieldll	 
]ll 
[ll  
FormerlySerializedAsll .
(ll. /
$strll/ ?
)ll? @
]ll@ A
doublellB H

m_DurationllI S
;llS T
[mm 	
SerializeFieldmm	 
]mm 
doublemm 
m_TimeScalemm  +
=mm, -
$nummm. 1
;mm1 2
[nn 	
SerializeFieldnn	 
]nn 

TrackAssetnn #
m_ParentTracknn$ 1
;nn1 2
[qq 	
SerializeFieldqq	 
]qq 
doubleqq 
m_EaseInDurationqq  0
;qq0 1
[rr 	
SerializeFieldrr	 
]rr 
doublerr 
m_EaseOutDurationrr  1
;rr1 2
[uu 	
SerializeFielduu	 
]uu 
doubleuu 
m_BlendInDurationuu  1
=uu2 3
-uu4 5
$numuu5 9
;uu9 :
[vv 	
SerializeFieldvv	 
]vv 
doublevv 
m_BlendOutDurationvv  2
=vv3 4
-vv5 6
$numvv6 :
;vv: ;
[yy 	
SerializeFieldyy	 
]yy 
AnimationCurveyy '
m_MixInCurveyy( 4
;yy4 5
[zz 	
SerializeFieldzz	 
]zz 
AnimationCurvezz '
m_MixOutCurvezz( 5
;zz5 6
[|| 	
SerializeField||	 
]|| 
BlendCurveMode|| '
m_BlendInCurveMode||( :
=||; <
BlendCurveMode||= K
.||K L
Auto||L P
;||P Q
[}} 	
SerializeField}}	 
]}} 
BlendCurveMode}} '
m_BlendOutCurveMode}}( ;
=}}< =
BlendCurveMode}}> L
.}}L M
Auto}}M Q
;}}Q R
[ 	
SerializeField	 
] 
List 
< 
string $
>$ %#
m_ExposedParameterNames& =
;= >
[
ÄÄ 	
SerializeField
ÄÄ	 
]
ÄÄ 
AnimationClip
ÄÄ &
m_AnimationCurves
ÄÄ' 8
;
ÄÄ8 9
[
ÇÇ 	
SerializeField
ÇÇ	 
]
ÇÇ 
bool
ÇÇ 
m_Recordable
ÇÇ *
;
ÇÇ* +
[
ÖÖ 	
SerializeField
ÖÖ	 
]
ÖÖ 
ClipExtrapolation
ÖÖ *%
m_PostExtrapolationMode
ÖÖ+ B
;
ÖÖB C
[
ÜÜ 	
SerializeField
ÜÜ	 
]
ÜÜ 
ClipExtrapolation
ÜÜ *$
m_PreExtrapolationMode
ÜÜ+ A
;
ÜÜA B
[
áá 	
SerializeField
áá	 
]
áá 
double
áá %
m_PostExtrapolationTime
áá  7
;
áá7 8
[
àà 	
SerializeField
àà	 
]
àà 
double
àà $
m_PreExtrapolationTime
àà  6
;
àà6 7
[
ää 	
SerializeField
ää	 
]
ää 
string
ää 
m_DisplayName
ää  -
;
ää- .
public
èè 
bool
èè !
hasPreExtrapolation
èè '
{
êê 	
get
ëë 
{
ëë 
return
ëë $
m_PreExtrapolationMode
ëë /
!=
ëë0 2
ClipExtrapolation
ëë3 D
.
ëëD E
None
ëëE I
&&
ëëJ L$
m_PreExtrapolationTime
ëëM c
>
ëëd e
$num
ëëf g
;
ëëg h
}
ëëi j
}
íí 	
public
óó 
bool
óó "
hasPostExtrapolation
óó (
{
òò 	
get
ôô 
{
ôô 
return
ôô %
m_PostExtrapolationMode
ôô 0
!=
ôô1 3
ClipExtrapolation
ôô4 E
.
ôôE F
None
ôôF J
&&
ôôK M%
m_PostExtrapolationTime
ôôN e
>
ôôf g
$num
ôôh i
;
ôôi j
}
ôôk l
}
öö 	
public
üü 
double
üü 
	timeScale
üü 
{
†† 	
get
°° 
{
°° 
return
°° 
clipCaps
°° !
.
°°! "
HasAny
°°" (
(
°°( )
ClipCaps
°°) 1
.
°°1 2
SpeedMultiplier
°°2 A
)
°°A B
?
°°C D
Math
°°E I
.
°°I J
Max
°°J M
(
°°M N
kTimeScaleMin
°°N [
,
°°[ \
Math
°°] a
.
°°a b
Min
°°b e
(
°°e f
m_TimeScale
°°f q
,
°°q r
kTimeScaleMax°°s Ä
)°°Ä Å
)°°Å Ç
:°°É Ñ
$num°°Ö à
;°°à â
}°°ä ã
set
¢¢ 
{
££ 
UpdateDirty
§§ 
(
§§ 
m_TimeScale
§§ '
,
§§' (
value
§§) .
)
§§. /
;
§§/ 0
m_TimeScale
•• 
=
•• 
clipCaps
•• &
.
••& '
HasAny
••' -
(
••- .
ClipCaps
••. 6
.
••6 7
SpeedMultiplier
••7 F
)
••F G
?
••H I
Math
••J N
.
••N O
Max
••O R
(
••R S
kTimeScaleMin
••S `
,
••` a
Math
••b f
.
••f g
Min
••g j
(
••j k
value
••k p
,
••p q
kTimeScaleMax
••r 
)•• Ä
)••Ä Å
:••Ç É
$num••Ñ á
;••á à
}
¶¶ 
}
ßß 	
public
¨¨ 
double
¨¨ 
start
¨¨ 
{
≠≠ 	
get
ÆÆ 
{
ÆÆ 
return
ÆÆ 
m_Start
ÆÆ  
;
ÆÆ  !
}
ÆÆ" #
set
ØØ 
{
∞∞ 
UpdateDirty
±± 
(
±± 
value
±± !
,
±±! "
m_Start
±±# *
)
±±* +
;
±±+ ,
var
≤≤ 
newValue
≤≤ 
=
≤≤ 
Math
≤≤ #
.
≤≤# $
Max
≤≤$ '
(
≤≤' (
SanitizeTimeValue
≤≤( 9
(
≤≤9 :
value
≤≤: ?
,
≤≤? @
m_Start
≤≤A H
)
≤≤H I
,
≤≤I J
$num
≤≤K L
)
≤≤L M
;
≤≤M N
if
≥≥ 
(
≥≥ 
m_ParentTrack
≥≥ !
!=
≥≥" $
null
≥≥% )
&&
≥≥* ,
m_Start
≥≥- 4
!=
≥≥5 7
newValue
≥≥8 @
)
≥≥@ A
{
¥¥ 
m_ParentTrack
µµ !
.
µµ! "

OnClipMove
µµ" ,
(
µµ, -
)
µµ- .
;
µµ. /
}
∂∂ 
m_Start
∑∑ 
=
∑∑ 
newValue
∑∑ "
;
∑∑" #
}
∏∏ 
}
ππ 	
public
ææ 
double
ææ 
duration
ææ 
{
øø 	
get
¿¿ 
{
¿¿ 
return
¿¿ 

m_Duration
¿¿ #
;
¿¿# $
}
¿¿% &
set
¡¡ 
{
¬¬ 
UpdateDirty
√√ 
(
√√ 

m_Duration
√√ &
,
√√& '
value
√√( -
)
√√- .
;
√√. /

m_Duration
ƒƒ 
=
ƒƒ 
Math
ƒƒ !
.
ƒƒ! "
Max
ƒƒ" %
(
ƒƒ% &
SanitizeTimeValue
ƒƒ& 7
(
ƒƒ7 8
value
ƒƒ8 =
,
ƒƒ= >

m_Duration
ƒƒ? I
)
ƒƒI J
,
ƒƒJ K
double
ƒƒL R
.
ƒƒR S
Epsilon
ƒƒS Z
)
ƒƒZ [
;
ƒƒ[ \
}
≈≈ 
}
∆∆ 	
public
ÀÀ 
double
ÀÀ 
end
ÀÀ 
{
ÃÃ 	
get
ÕÕ 
{
ÕÕ 
return
ÕÕ 
m_Start
ÕÕ  
+
ÕÕ! "

m_Duration
ÕÕ# -
;
ÕÕ- .
}
ÕÕ/ 0
}
ŒŒ 	
public
”” 
double
”” 
clipIn
”” 
{
‘‘ 	
get
’’ 
{
’’ 
return
’’ 
clipCaps
’’ !
.
’’! "
HasAny
’’" (
(
’’( )
ClipCaps
’’) 1
.
’’1 2
ClipIn
’’2 8
)
’’8 9
?
’’: ;
m_ClipIn
’’< D
:
’’E F
$num
’’G H
;
’’H I
}
’’J K
set
÷÷ 
{
◊◊ 
UpdateDirty
ÿÿ 
(
ÿÿ 
m_ClipIn
ÿÿ $
,
ÿÿ$ %
value
ÿÿ& +
)
ÿÿ+ ,
;
ÿÿ, -
m_ClipIn
ŸŸ 
=
ŸŸ 
clipCaps
ŸŸ #
.
ŸŸ# $
HasAny
ŸŸ$ *
(
ŸŸ* +
ClipCaps
ŸŸ+ 3
.
ŸŸ3 4
ClipIn
ŸŸ4 :
)
ŸŸ: ;
?
ŸŸ< =
Math
ŸŸ> B
.
ŸŸB C
Max
ŸŸC F
(
ŸŸF G
Math
ŸŸG K
.
ŸŸK L
Min
ŸŸL O
(
ŸŸO P
SanitizeTimeValue
ŸŸP a
(
ŸŸa b
value
ŸŸb g
,
ŸŸg h
m_ClipIn
ŸŸi q
)
ŸŸq r
,
ŸŸr s
kMaxTimeValueŸŸt Å
)ŸŸÅ Ç
,ŸŸÇ É
$numŸŸÑ á
)ŸŸá à
:ŸŸâ ä
$numŸŸã å
;ŸŸå ç
}
⁄⁄ 
}
€€ 	
public
‡‡ 
string
‡‡ 
displayName
‡‡ !
{
·· 	
get
‚‚ 
{
‚‚ 
return
‚‚ 
m_DisplayName
‚‚ &
;
‚‚& '
}
‚‚( )
set
„„ 
{
„„ 
m_DisplayName
„„ 
=
„„  !
value
„„" '
;
„„' (
}
„„) *
}
‰‰ 	
public
ÍÍ 
double
ÍÍ 
clipAssetDuration
ÍÍ '
{
ÎÎ 	
get
ÏÏ 
{
ÌÌ 
var
ÓÓ 
playableAsset
ÓÓ !
=
ÓÓ" #
m_Asset
ÓÓ$ +
as
ÓÓ, .
IPlayableAsset
ÓÓ/ =
;
ÓÓ= >
return
ÔÔ 
playableAsset
ÔÔ $
!=
ÔÔ% '
null
ÔÔ( ,
?
ÔÔ- .
playableAsset
ÔÔ/ <
.
ÔÔ< =
duration
ÔÔ= E
:
ÔÔF G
double
ÔÔH N
.
ÔÔN O
MaxValue
ÔÔO W
;
ÔÔW X
}
 
}
ÒÒ 	
public
˘˘ 
AnimationClip
˘˘ 
curves
˘˘ #
{
˙˙ 	
get
˚˚ 
{
˚˚ 
return
˚˚ 
m_AnimationCurves
˚˚ *
;
˚˚* +
}
˚˚, -
internal
¸¸ 
set
¸¸ 
{
¸¸ 
m_AnimationCurves
¸¸ ,
=
¸¸- .
value
¸¸/ 4
;
¸¸4 5
}
¸¸6 7
}
˝˝ 	
string
ˇˇ 
ICurvesOwner
ˇˇ 
.
ˇˇ 
defaultCurvesName
ˇˇ -
{
ÄÄ 	
get
ÅÅ 
{
ÅÅ 
return
ÅÅ  
kDefaultCurvesName
ÅÅ +
;
ÅÅ+ ,
}
ÅÅ- .
}
ÇÇ 	
public
ää 
bool
ää 
	hasCurves
ää 
{
ãã 	
get
åå 
{
åå 
return
åå 
m_AnimationCurves
åå *
!=
åå+ -
null
åå. 2
&&
åå3 5
!
åå6 7
m_AnimationCurves
åå7 H
.
ååH I
empty
ååI N
;
ååN O
}
ååP Q
}
çç 	
public
íí 
Object
íí 
asset
íí 
{
ìì 	
get
îî 
{
îî 
return
îî 
m_Asset
îî  
;
îî  !
}
îî" #
set
ïï 
{
ïï 
m_Asset
ïï 
=
ïï 
value
ïï !
;
ïï! "
}
ïï# $
}
ññ 	
Object
òò 
ICurvesOwner
òò 
.
òò 

assetOwner
òò &
{
ôô 	
get
öö 
{
öö 
return
öö 
GetParentTrack
öö '
(
öö' (
)
öö( )
;
öö) *
}
öö+ ,
}
õõ 	

TrackAsset
ùù 
ICurvesOwner
ùù 
.
ùù  
targetTrack
ùù  +
{
ûû 	
get
üü 
{
üü 
return
üü 
GetParentTrack
üü '
(
üü' (
)
üü( )
;
üü) *
}
üü+ ,
}
†† 	
[
•• 	
Obsolete
••	 
(
•• 
$str
•• T
,
••T U
true
••V Z
)
••Z [
]
••[ \
public
¶¶ 
Object
¶¶ 
underlyingAsset
¶¶ %
{
ßß 	
get
®® 
{
®® 
return
®® 
null
®® 
;
®® 
}
®®  
set
©© 
{
©© 
}
©© 
}
™™ 	
[
ØØ 	
Obsolete
ØØ	 
(
ØØ 
$str
ØØ [
+
ØØ\ ]
nameof
ØØ^ d
(
ØØd e
GetParentTrack
ØØe s
)
ØØs t
+
ØØu v
$strØØw Ä
+ØØÅ Ç
nameofØØÉ â
(ØØâ ä&
TimelineClipExtensionsØØä †
)ØØ† °
+ØØ¢ £
$strØØ§ ®
+ØØ© ™
nameofØØ´ ±
(ØØ± ≤&
TimelineClipExtensionsØØ≤ »
.ØØ» …
MoveToTrackØØ… ‘
)ØØ‘ ’
+ØØ÷ ◊
$strØØÿ ‡
+ØØ· ‚
nameofØØ„ È
(ØØÈ Í&
TimelineClipExtensionsØØÍ Ä
)ØØÄ Å
+ØØÇ É
$strØØÑ à
+ØØâ ä
nameofØØã ë
(ØØë í&
TimelineClipExtensionsØØí ®
.ØØ® ©
TryMoveToTrackØØ© ∑
)ØØ∑ ∏
+ØØπ ∫
$strØØª »
,ØØ» …
falseØØ  œ
)ØØœ –
]ØØ– —
public
∞∞ 

TrackAsset
∞∞ 
parentTrack
∞∞ %
{
±± 	
get
≤≤ 
{
≤≤ 
return
≤≤ 
m_ParentTrack
≤≤ &
;
≤≤& '
}
≤≤( )
set
≥≥ 
{
≥≥ %
SetParentTrack_Internal
≥≥ )
(
≥≥) *
value
≥≥* /
)
≥≥/ 0
;
≥≥0 1
}
≥≥2 3
}
¥¥ 	
public
∫∫ 

TrackAsset
∫∫ 
GetParentTrack
∫∫ (
(
∫∫( )
)
∫∫) *
{
ªª 	
return
ºº 
m_ParentTrack
ºº  
;
ºº  !
}
ΩΩ 	
internal
√√ 
void
√√ %
SetParentTrack_Internal
√√ -
(
√√- .

TrackAsset
√√. 8
newParentTrack
√√9 G
)
√√G H
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
m_ParentTrack
≈≈ 
==
≈≈  
newParentTrack
≈≈! /
)
≈≈/ 0
return
∆∆ 
;
∆∆ 
if
»» 
(
»» 
m_ParentTrack
»» 
!=
»»  
null
»»! %
)
»»% &
m_ParentTrack
…… 
.
…… 

RemoveClip
…… (
(
……( )
this
……) -
)
……- .
;
……. /
m_ParentTrack
ÀÀ 
=
ÀÀ 
newParentTrack
ÀÀ *
;
ÀÀ* +
if
ÕÕ 
(
ÕÕ 
m_ParentTrack
ÕÕ 
!=
ÕÕ  
null
ÕÕ! %
)
ÕÕ% &
m_ParentTrack
ŒŒ 
.
ŒŒ 
AddClip
ŒŒ %
(
ŒŒ% &
this
ŒŒ& *
)
ŒŒ* +
;
ŒŒ+ ,
}
œœ 	
public
‘‘ 
double
‘‘ 
easeInDuration
‘‘ $
{
’’ 	
get
÷÷ 
{
◊◊ 
var
ÿÿ 
availableDuration
ÿÿ %
=
ÿÿ& '
hasBlendOut
ÿÿ( 3
?
ÿÿ4 5
duration
ÿÿ6 >
-
ÿÿ? @ 
m_BlendOutDuration
ÿÿA S
:
ÿÿT U
duration
ÿÿV ^
;
ÿÿ^ _
return
ŸŸ 
clipCaps
ŸŸ 
.
ŸŸ  
HasAny
ŸŸ  &
(
ŸŸ& '
ClipCaps
ŸŸ' /
.
ŸŸ/ 0
Blending
ŸŸ0 8
)
ŸŸ8 9
?
ŸŸ: ;
Math
ŸŸ< @
.
ŸŸ@ A
Min
ŸŸA D
(
ŸŸD E
Math
ŸŸE I
.
ŸŸI J
Max
ŸŸJ M
(
ŸŸM N
m_EaseInDuration
ŸŸN ^
,
ŸŸ^ _
$num
ŸŸ` a
)
ŸŸa b
,
ŸŸb c
availableDuration
ŸŸd u
)
ŸŸu v
:
ŸŸw x
$num
ŸŸy z
;
ŸŸz {
}
⁄⁄ 
set
€€ 
{
‹‹ 
var
›› 
availableDuration
›› %
=
››& '
hasBlendOut
››( 3
?
››4 5
duration
››6 >
-
››? @ 
m_BlendOutDuration
››A S
:
››T U
duration
››V ^
;
››^ _
m_EaseInDuration
ﬁﬁ  
=
ﬁﬁ! "
clipCaps
ﬁﬁ# +
.
ﬁﬁ+ ,
HasAny
ﬁﬁ, 2
(
ﬁﬁ2 3
ClipCaps
ﬁﬁ3 ;
.
ﬁﬁ; <
Blending
ﬁﬁ< D
)
ﬁﬁD E
?
ﬁﬁF G
Math
ﬁﬁH L
.
ﬁﬁL M
Max
ﬁﬁM P
(
ﬁﬁP Q
$num
ﬁﬁQ R
,
ﬁﬁR S
Math
ﬁﬁT X
.
ﬁﬁX Y
Min
ﬁﬁY \
(
ﬁﬁ\ ]
SanitizeTimeValue
ﬁﬁ] n
(
ﬁﬁn o
value
ﬁﬁo t
,
ﬁﬁt u
m_EaseInDurationﬁﬁv Ü
)ﬁﬁÜ á
,ﬁﬁá à!
availableDurationﬁﬁâ ö
)ﬁﬁö õ
)ﬁﬁõ ú
:ﬁﬁù û
$numﬁﬁü †
;ﬁﬁ† °
}
ﬂﬂ 
}
‡‡ 	
public
ÂÂ 
double
ÂÂ 
easeOutDuration
ÂÂ %
{
ÊÊ 	
get
ÁÁ 
{
ËË 
var
ÈÈ 
availableDuration
ÈÈ %
=
ÈÈ& '

hasBlendIn
ÈÈ( 2
?
ÈÈ3 4
duration
ÈÈ5 =
-
ÈÈ> ?
m_BlendInDuration
ÈÈ@ Q
:
ÈÈR S
duration
ÈÈT \
;
ÈÈ\ ]
return
ÍÍ 
clipCaps
ÍÍ 
.
ÍÍ  
HasAny
ÍÍ  &
(
ÍÍ& '
ClipCaps
ÍÍ' /
.
ÍÍ/ 0
Blending
ÍÍ0 8
)
ÍÍ8 9
?
ÍÍ: ;
Math
ÍÍ< @
.
ÍÍ@ A
Min
ÍÍA D
(
ÍÍD E
Math
ÍÍE I
.
ÍÍI J
Max
ÍÍJ M
(
ÍÍM N
m_EaseOutDuration
ÍÍN _
,
ÍÍ_ `
$num
ÍÍa b
)
ÍÍb c
,
ÍÍc d
availableDuration
ÍÍe v
)
ÍÍv w
:
ÍÍx y
$num
ÍÍz {
;
ÍÍ{ |
}
ÎÎ 
set
ÏÏ 
{
ÌÌ 
var
ÓÓ 
availableDuration
ÓÓ %
=
ÓÓ& '

hasBlendIn
ÓÓ( 2
?
ÓÓ3 4
duration
ÓÓ5 =
-
ÓÓ> ?
m_BlendInDuration
ÓÓ@ Q
:
ÓÓR S
duration
ÓÓT \
;
ÓÓ\ ]
m_EaseOutDuration
ÔÔ !
=
ÔÔ" #
clipCaps
ÔÔ$ ,
.
ÔÔ, -
HasAny
ÔÔ- 3
(
ÔÔ3 4
ClipCaps
ÔÔ4 <
.
ÔÔ< =
Blending
ÔÔ= E
)
ÔÔE F
?
ÔÔG H
Math
ÔÔI M
.
ÔÔM N
Max
ÔÔN Q
(
ÔÔQ R
$num
ÔÔR S
,
ÔÔS T
Math
ÔÔU Y
.
ÔÔY Z
Min
ÔÔZ ]
(
ÔÔ] ^
SanitizeTimeValue
ÔÔ^ o
(
ÔÔo p
value
ÔÔp u
,
ÔÔu v 
m_EaseOutDurationÔÔw à
)ÔÔà â
,ÔÔâ ä!
availableDurationÔÔã ú
)ÔÔú ù
)ÔÔù û
:ÔÔü †
$numÔÔ° ¢
;ÔÔ¢ £
}
 
}
ÒÒ 	
[
ˆˆ 	
Obsolete
ˆˆ	 
(
ˆˆ 
$str
ˆˆ L
,
ˆˆL M
true
ˆˆN R
)
ˆˆR S
]
ˆˆS T
public
˜˜ 
double
˜˜ 
eastOutTime
˜˜ !
{
¯¯ 	
get
˘˘ 
{
˘˘ 
return
˘˘ 
duration
˘˘ !
-
˘˘" #
easeOutDuration
˘˘$ 3
+
˘˘4 5
m_Start
˘˘6 =
;
˘˘= >
}
˘˘? @
}
˙˙ 	
public
ˇˇ 
double
ˇˇ 
easeOutTime
ˇˇ !
{
ÄÄ 	
get
ÅÅ 
{
ÅÅ 
return
ÅÅ 
duration
ÅÅ !
-
ÅÅ" #
easeOutDuration
ÅÅ$ 3
+
ÅÅ4 5
m_Start
ÅÅ6 =
;
ÅÅ= >
}
ÅÅ? @
}
ÇÇ 	
public
áá 
double
áá 
blendInDuration
áá %
{
àà 	
get
ââ 
{
ââ 
return
ââ 
clipCaps
ââ !
.
ââ! "
HasAny
ââ" (
(
ââ( )
ClipCaps
ââ) 1
.
ââ1 2
Blending
ââ2 :
)
ââ: ;
?
ââ< =
m_BlendInDuration
ââ> O
:
ââP Q
$num
ââR S
;
ââS T
}
ââU V
set
ää 
{
ää 
m_BlendInDuration
ää #
=
ää$ %
clipCaps
ää& .
.
ää. /
HasAny
ää/ 5
(
ää5 6
ClipCaps
ää6 >
.
ää> ?
Blending
ää? G
)
ääG H
?
ääI J
SanitizeTimeValue
ääK \
(
ää\ ]
value
ää] b
,
ääb c
m_BlendInDuration
ääd u
)
ääu v
:
ääw x
$num
ääy z
;
ääz {
}
ää| }
}
ãã 	
public
êê 
double
êê 
blendOutDuration
êê &
{
ëë 	
get
íí 
{
íí 
return
íí 
clipCaps
íí !
.
íí! "
HasAny
íí" (
(
íí( )
ClipCaps
íí) 1
.
íí1 2
Blending
íí2 :
)
íí: ;
?
íí< = 
m_BlendOutDuration
íí> P
:
ííQ R
$num
ííS T
;
ííT U
}
ííV W
set
ìì 
{
ìì  
m_BlendOutDuration
ìì $
=
ìì% &
clipCaps
ìì' /
.
ìì/ 0
HasAny
ìì0 6
(
ìì6 7
ClipCaps
ìì7 ?
.
ìì? @
Blending
ìì@ H
)
ììH I
?
ììJ K
SanitizeTimeValue
ììL ]
(
ìì] ^
value
ìì^ c
,
ììc d 
m_BlendOutDuration
ììe w
)
ììw x
:
ììy z
$num
ìì{ |
;
ìì| }
}
ìì~ 
}
îî 	
public
ôô 
BlendCurveMode
ôô 
blendInCurveMode
ôô .
{
öö 	
get
õõ 
{
õõ 
return
õõ  
m_BlendInCurveMode
õõ +
;
õõ+ ,
}
õõ- .
set
úú 
{
úú  
m_BlendInCurveMode
úú $
=
úú% &
value
úú' ,
;
úú, -
}
úú. /
}
ùù 	
public
¢¢ 
BlendCurveMode
¢¢ 
blendOutCurveMode
¢¢ /
{
££ 	
get
§§ 
{
§§ 
return
§§ !
m_BlendOutCurveMode
§§ ,
;
§§, -
}
§§. /
set
•• 
{
•• !
m_BlendOutCurveMode
•• %
=
••& '
value
••( -
;
••- .
}
••/ 0
}
¶¶ 	
public
´´ 
bool
´´ 

hasBlendIn
´´ 
{
´´  
get
´´! $
{
´´% &
return
´´' -
clipCaps
´´. 6
.
´´6 7
HasAny
´´7 =
(
´´= >
ClipCaps
´´> F
.
´´F G
Blending
´´G O
)
´´O P
&&
´´Q S
m_BlendInDuration
´´T e
>
´´f g
$num
´´h i
;
´´i j
}
´´k l
}
´´m n
public
∞∞ 
bool
∞∞ 
hasBlendOut
∞∞ 
{
∞∞  !
get
∞∞" %
{
∞∞& '
return
∞∞( .
clipCaps
∞∞/ 7
.
∞∞7 8
HasAny
∞∞8 >
(
∞∞> ?
ClipCaps
∞∞? G
.
∞∞G H
Blending
∞∞H P
)
∞∞P Q
&&
∞∞R T 
m_BlendOutDuration
∞∞U g
>
∞∞h i
$num
∞∞j k
;
∞∞k l
}
∞∞m n
}
∞∞o p
public
µµ 
AnimationCurve
µµ 

mixInCurve
µµ (
{
∂∂ 	
get
∑∑ 
{
∏∏ 
if
∫∫ 
(
∫∫ 
m_MixInCurve
∫∫  
==
∫∫! #
null
∫∫$ (
||
∫∫) +
m_MixInCurve
∫∫, 8
.
∫∫8 9
length
∫∫9 ?
<
∫∫@ A
$num
∫∫B C
)
∫∫C D
m_MixInCurve
ªª  
=
ªª! ""
GetDefaultMixInCurve
ªª# 7
(
ªª7 8
)
ªª8 9
;
ªª9 :
return
ΩΩ 
m_MixInCurve
ΩΩ #
;
ΩΩ# $
}
ææ 
set
øø 
{
øø 
m_MixInCurve
øø 
=
øø  
value
øø! &
;
øø& '
}
øø( )
}
¿¿ 	
public
≈≈ 
float
≈≈ 
mixInPercentage
≈≈ $
{
∆∆ 	
get
«« 
{
«« 
return
«« 
(
«« 
float
«« 
)
««  
(
««  !
mixInDuration
««! .
/
««/ 0
duration
««1 9
)
««9 :
;
««: ;
}
««< =
}
»» 	
public
ÕÕ 
double
ÕÕ 
mixInDuration
ÕÕ #
{
ŒŒ 	
get
œœ 
{
œœ 
return
œœ 

hasBlendIn
œœ #
?
œœ$ %
blendInDuration
œœ& 5
:
œœ6 7
easeInDuration
œœ8 F
;
œœF G
}
œœH I
}
–– 	
public
’’ 
AnimationCurve
’’ 
mixOutCurve
’’ )
{
÷÷ 	
get
◊◊ 
{
ÿÿ 
if
ŸŸ 
(
ŸŸ 
m_MixOutCurve
ŸŸ !
==
ŸŸ" $
null
ŸŸ% )
||
ŸŸ* ,
m_MixOutCurve
ŸŸ- :
.
ŸŸ: ;
length
ŸŸ; A
<
ŸŸB C
$num
ŸŸD E
)
ŸŸE F
m_MixOutCurve
⁄⁄ !
=
⁄⁄" ##
GetDefaultMixOutCurve
⁄⁄$ 9
(
⁄⁄9 :
)
⁄⁄: ;
;
⁄⁄; <
return
€€ 
m_MixOutCurve
€€ $
;
€€$ %
}
‹‹ 
set
›› 
{
›› 
m_MixOutCurve
›› 
=
››  !
value
››" '
;
››' (
}
››) *
}
ﬁﬁ 	
public
„„ 
double
„„ 

mixOutTime
„„  
{
‰‰ 	
get
ÂÂ 
{
ÂÂ 
return
ÂÂ 
duration
ÂÂ !
-
ÂÂ" #
mixOutDuration
ÂÂ$ 2
+
ÂÂ3 4
m_Start
ÂÂ5 <
;
ÂÂ< =
}
ÂÂ> ?
}
ÊÊ 	
public
ÎÎ 
double
ÎÎ 
mixOutDuration
ÎÎ $
{
ÏÏ 	
get
ÌÌ 
{
ÌÌ 
return
ÌÌ 
hasBlendOut
ÌÌ $
?
ÌÌ% &
blendOutDuration
ÌÌ' 7
:
ÌÌ8 9
easeOutDuration
ÌÌ: I
;
ÌÌI J
}
ÌÌK L
}
ÓÓ 	
public
ÛÛ 
float
ÛÛ 
mixOutPercentage
ÛÛ %
{
ÙÙ 	
get
ıı 
{
ıı 
return
ıı 
(
ıı 
float
ıı 
)
ıı  
(
ıı  !
mixOutDuration
ıı! /
/
ıı0 1
duration
ıı2 :
)
ıı: ;
;
ıı; <
}
ıı= >
}
ˆˆ 	
public
˚˚ 
bool
˚˚ 

recordable
˚˚ 
{
¸¸ 	
get
˝˝ 
{
˝˝ 
return
˝˝ 
m_Recordable
˝˝ %
;
˝˝% &
}
˝˝' (
internal
˛˛ 
set
˛˛ 
{
˛˛ 
m_Recordable
˛˛ '
=
˛˛( )
value
˛˛* /
;
˛˛/ 0
}
˛˛1 2
}
ˇˇ 	
[
ÑÑ 	
Obsolete
ÑÑ	 
(
ÑÑ 
$str
ÑÑ Z
,
ÑÑZ [
true
ÑÑ\ `
)
ÑÑ` a
]
ÑÑa b
public
ÖÖ 
List
ÖÖ 
<
ÖÖ 
string
ÖÖ 
>
ÖÖ 
exposedParameters
ÖÖ -
{
ÜÜ 	
get
áá 
{
áá 
return
áá %
m_ExposedParameterNames
áá 0
??
áá1 3
(
áá4 5%
m_ExposedParameterNames
áá5 L
=
ááM N
new
ááO R
List
ááS W
<
ááW X
string
ááX ^
>
áá^ _
(
áá_ `
)
áá` a
)
ááa b
;
ááb c
}
áád e
}
àà 	
public
çç 
ClipCaps
çç 
clipCaps
çç  
{
éé 	
get
èè 
{
êê 
var
ëë 
	clipAsset
ëë 
=
ëë 
asset
ëë  %
as
ëë& ( 
ITimelineClipAsset
ëë) ;
;
ëë; <
return
íí 
(
íí 
	clipAsset
íí !
!=
íí" $
null
íí% )
)
íí) *
?
íí+ ,
	clipAsset
íí- 6
.
íí6 7
clipCaps
íí7 ?
:
íí@ A
kDefaultClipCaps
ííB R
;
ííR S
}
ìì 
}
îî 	
internal
ññ 
int
ññ 
Hash
ññ 
(
ññ 
)
ññ 
{
óó 	
return
òò 
HashUtility
òò 
.
òò 
CombineHash
òò *
(
òò* +
m_Start
òò+ 2
.
òò2 3
GetHashCode
òò3 >
(
òò> ?
)
òò? @
,
òò@ A

m_Duration
ôô 
.
ôô 
GetHashCode
ôô &
(
ôô& '
)
ôô' (
,
ôô( )
m_TimeScale
öö 
.
öö 
GetHashCode
öö '
(
öö' (
)
öö( )
,
öö) *
m_ClipIn
õõ 
.
õõ 
GetHashCode
õõ $
(
õõ$ %
)
õõ% &
,
õõ& '
(
úú 
(
úú 
int
úú 
)
úú $
m_PreExtrapolationMode
úú ,
)
úú, -
.
úú- .
GetHashCode
úú. 9
(
úú9 :
)
úú: ;
,
úú; <
(
ùù 
(
ùù 
int
ùù 
)
ùù %
m_PostExtrapolationMode
ùù -
)
ùù- .
.
ùù. /
GetHashCode
ùù/ :
(
ùù: ;
)
ùù; <
)
ùù< =
;
ùù= >
}
ûû 	
public
•• 
float
•• 
EvaluateMixOut
•• #
(
••# $
double
••$ *
time
••+ /
)
••/ 0
{
¶¶ 	
if
ßß 
(
ßß 
!
ßß 
clipCaps
ßß 
.
ßß 
HasAny
ßß  
(
ßß  !
ClipCaps
ßß! )
.
ßß) *
Blending
ßß* 2
)
ßß2 3
)
ßß3 4
return
®® 
$num
®® 
;
®® 
if
™™ 
(
™™ 
mixOutDuration
™™ 
>
™™  
Mathf
™™! &
.
™™& '
Epsilon
™™' .
)
™™. /
{
´´ 
var
¨¨ 
perc
¨¨ 
=
¨¨ 
(
¨¨ 
float
¨¨ !
)
¨¨! "
(
¨¨" #
time
¨¨# '
-
¨¨( )

mixOutTime
¨¨* 4
)
¨¨4 5
/
¨¨6 7
(
¨¨8 9
float
¨¨9 >
)
¨¨> ?
mixOutDuration
¨¨? M
;
¨¨M N
perc
≠≠ 
=
≠≠ 
Mathf
≠≠ 
.
≠≠ 
Clamp01
≠≠ $
(
≠≠$ %
mixOutCurve
≠≠% 0
.
≠≠0 1
Evaluate
≠≠1 9
(
≠≠9 :
perc
≠≠: >
)
≠≠> ?
)
≠≠? @
;
≠≠@ A
return
ÆÆ 
perc
ÆÆ 
;
ÆÆ 
}
ØØ 
return
∞∞ 
$num
∞∞ 
;
∞∞ 
}
±± 	
public
∏∏ 
float
∏∏ 
EvaluateMixIn
∏∏ "
(
∏∏" #
double
∏∏# )
time
∏∏* .
)
∏∏. /
{
ππ 	
if
∫∫ 
(
∫∫ 
!
∫∫ 
clipCaps
∫∫ 
.
∫∫ 
HasAny
∫∫  
(
∫∫  !
ClipCaps
∫∫! )
.
∫∫) *
Blending
∫∫* 2
)
∫∫2 3
)
∫∫3 4
return
ªª 
$num
ªª 
;
ªª 
if
ΩΩ 
(
ΩΩ 
mixInDuration
ΩΩ 
>
ΩΩ 
Mathf
ΩΩ  %
.
ΩΩ% &
Epsilon
ΩΩ& -
)
ΩΩ- .
{
ææ 
var
øø 
perc
øø 
=
øø 
(
øø 
float
øø !
)
øø! "
(
øø" #
time
øø# '
-
øø( )
m_Start
øø* 1
)
øø1 2
/
øø3 4
(
øø5 6
float
øø6 ;
)
øø; <
mixInDuration
øø< I
;
øøI J
perc
¿¿ 
=
¿¿ 
Mathf
¿¿ 
.
¿¿ 
Clamp01
¿¿ $
(
¿¿$ %

mixInCurve
¿¿% /
.
¿¿/ 0
Evaluate
¿¿0 8
(
¿¿8 9
perc
¿¿9 =
)
¿¿= >
)
¿¿> ?
;
¿¿? @
return
¡¡ 
perc
¡¡ 
;
¡¡ 
}
¬¬ 
return
√√ 
$num
√√ 
;
√√ 
}
ƒƒ 	
static
∆∆ 
AnimationCurve
∆∆ "
GetDefaultMixInCurve
∆∆ 2
(
∆∆2 3
)
∆∆3 4
{
«« 	
return
»» 
AnimationCurve
»» !
.
»»! "
	EaseInOut
»»" +
(
»»+ ,
$num
»», -
,
»»- .
$num
»»/ 0
,
»»0 1
$num
»»2 3
,
»»3 4
$num
»»5 6
)
»»6 7
;
»»7 8
}
…… 	
static
ÀÀ 
AnimationCurve
ÀÀ #
GetDefaultMixOutCurve
ÀÀ 3
(
ÀÀ3 4
)
ÀÀ4 5
{
ÃÃ 	
return
ÕÕ 
AnimationCurve
ÕÕ !
.
ÕÕ! "
	EaseInOut
ÕÕ" +
(
ÕÕ+ ,
$num
ÕÕ, -
,
ÕÕ- .
$num
ÕÕ/ 0
,
ÕÕ0 1
$num
ÕÕ2 3
,
ÕÕ3 4
$num
ÕÕ5 6
)
ÕÕ6 7
;
ÕÕ7 8
}
ŒŒ 	
public
◊◊ 
double
◊◊ 
ToLocalTime
◊◊ !
(
◊◊! "
double
◊◊" (
time
◊◊) -
)
◊◊- .
{
ÿÿ 	
if
ŸŸ 
(
ŸŸ 
time
ŸŸ 
<
ŸŸ 
$num
ŸŸ 
)
ŸŸ 
return
⁄⁄ 
time
⁄⁄ 
;
⁄⁄ 
if
›› 
(
›› #
IsPreExtrapolatedTime
›› %
(
››% &
time
››& *
)
››* +
)
››+ ,
time
ﬁﬁ 
=
ﬁﬁ !
GetExtrapolatedTime
ﬁﬁ *
(
ﬁﬁ* +
time
ﬁﬁ+ /
-
ﬁﬁ0 1
m_Start
ﬁﬁ2 9
,
ﬁﬁ9 :$
m_PreExtrapolationMode
ﬁﬁ; Q
,
ﬁﬁQ R

m_Duration
ﬁﬁS ]
)
ﬁﬁ] ^
;
ﬁﬁ^ _
else
ﬂﬂ 
if
ﬂﬂ 
(
ﬂﬂ $
IsPostExtrapolatedTime
ﬂﬂ +
(
ﬂﬂ+ ,
time
ﬂﬂ, 0
)
ﬂﬂ0 1
)
ﬂﬂ1 2
time
‡‡ 
=
‡‡ !
GetExtrapolatedTime
‡‡ *
(
‡‡* +
time
‡‡+ /
-
‡‡0 1
m_Start
‡‡2 9
,
‡‡9 :%
m_PostExtrapolationMode
‡‡; R
,
‡‡R S

m_Duration
‡‡T ^
)
‡‡^ _
;
‡‡_ `
else
·· 
time
‚‚ 
-=
‚‚ 
m_Start
‚‚ 
;
‚‚  
time
ÂÂ 
*=
ÂÂ 
	timeScale
ÂÂ 
;
ÂÂ 
time
ÊÊ 
+=
ÊÊ 
clipIn
ÊÊ 
;
ÊÊ 
return
ËË 
time
ËË 
;
ËË 
}
ÈÈ 	
public
 
double
  
ToLocalTimeUnbound
 (
(
( )
double
) /
time
0 4
)
4 5
{
ÒÒ 	
return
ÚÚ 
(
ÚÚ 
time
ÚÚ 
-
ÚÚ 
m_Start
ÚÚ "
)
ÚÚ" #
*
ÚÚ$ %
	timeScale
ÚÚ& /
+
ÚÚ0 1
clipIn
ÚÚ2 8
;
ÚÚ8 9
}
ÛÛ 	
internal
˙˙ 
double
˙˙ "
FromLocalTimeUnbound
˙˙ ,
(
˙˙, -
double
˙˙- 3
time
˙˙4 8
)
˙˙8 9
{
˚˚ 	
return
¸¸ 
(
¸¸ 
time
¸¸ 
-
¸¸ 
clipIn
¸¸ !
)
¸¸! "
/
¸¸# $
	timeScale
¸¸% .
+
¸¸/ 0
m_Start
¸¸1 8
;
¸¸8 9
}
˝˝ 	
public
ÇÇ 
AnimationClip
ÇÇ 
animationClip
ÇÇ *
{
ÉÉ 	
get
ÑÑ 
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
m_Asset
ÜÜ 
==
ÜÜ 
null
ÜÜ #
)
ÜÜ# $
return
áá 
null
áá 
;
áá  
var
ââ 
playableAsset
ââ !
=
ââ" #
m_Asset
ââ$ +
as
ââ, .$
AnimationPlayableAsset
ââ/ E
;
ââE F
return
ää 
playableAsset
ää $
!=
ää% '
null
ää( ,
?
ää- .
playableAsset
ää/ <
.
ää< =
clip
ää= A
:
ääB C
null
ääD H
;
ääH I
}
ãã 
}
åå 	
static
éé 
double
éé 
SanitizeTimeValue
éé '
(
éé' (
double
éé( .
value
éé/ 4
,
éé4 5
double
éé6 <
defaultValue
éé= I
)
ééI J
{
èè 	
if
êê 
(
êê 
double
êê 
.
êê 

IsInfinity
êê !
(
êê! "
value
êê" '
)
êê' (
||
êê) +
double
êê, 2
.
êê2 3
IsNaN
êê3 8
(
êê8 9
value
êê9 >
)
êê> ?
)
êê? @
{
ëë 
Debug
íí 
.
íí 
LogError
íí 
(
íí 
$str
íí <
)
íí< =
;
íí= >
return
ìì 
defaultValue
ìì #
;
ìì# $
}
îî 
return
ññ 
Math
ññ 
.
ññ 
Max
ññ 
(
ññ 
-
ññ 
kMaxTimeValue
ññ *
,
ññ* +
Math
ññ, 0
.
ññ0 1
Min
ññ1 4
(
ññ4 5
kMaxTimeValue
ññ5 B
,
ññB C
value
ññD I
)
ññI J
)
ññJ K
;
ññK L
}
óó 	
public
úú 
ClipExtrapolation
úú  #
postExtrapolationMode
úú! 6
{
ùù 	
get
ûû 
{
ûû 
return
ûû 
clipCaps
ûû !
.
ûû! "
HasAny
ûû" (
(
ûû( )
ClipCaps
ûû) 1
.
ûû1 2
Extrapolation
ûû2 ?
)
ûû? @
?
ûûA B%
m_PostExtrapolationMode
ûûC Z
:
ûû[ \
ClipExtrapolation
ûû] n
.
ûûn o
None
ûûo s
;
ûûs t
}
ûûu v
internal
üü 
set
üü 
{
üü %
m_PostExtrapolationMode
üü 2
=
üü3 4
clipCaps
üü5 =
.
üü= >
HasAny
üü> D
(
üüD E
ClipCaps
üüE M
.
üüM N
Extrapolation
üüN [
)
üü[ \
?
üü] ^
value
üü_ d
:
üüe f
ClipExtrapolation
üüg x
.
üüx y
None
üüy }
;
üü} ~
}üü Ä
}
†† 	
public
•• 
ClipExtrapolation
••  "
preExtrapolationMode
••! 5
{
¶¶ 	
get
ßß 
{
ßß 
return
ßß 
clipCaps
ßß !
.
ßß! "
HasAny
ßß" (
(
ßß( )
ClipCaps
ßß) 1
.
ßß1 2
Extrapolation
ßß2 ?
)
ßß? @
?
ßßA B$
m_PreExtrapolationMode
ßßC Y
:
ßßZ [
ClipExtrapolation
ßß\ m
.
ßßm n
None
ßßn r
;
ßßr s
}
ßßt u
internal
®® 
set
®® 
{
®® $
m_PreExtrapolationMode
®® 1
=
®®2 3
clipCaps
®®4 <
.
®®< =
HasAny
®®= C
(
®®C D
ClipCaps
®®D L
.
®®L M
Extrapolation
®®M Z
)
®®Z [
?
®®\ ]
value
®®^ c
:
®®d e
ClipExtrapolation
®®f w
.
®®w x
None
®®x |
;
®®| }
}
®®~ 
}
©© 	
internal
´´ 
void
´´ &
SetPostExtrapolationTime
´´ .
(
´´. /
double
´´/ 5
time
´´6 :
)
´´: ;
{
¨¨ 	%
m_PostExtrapolationTime
≠≠ #
=
≠≠$ %
time
≠≠& *
;
≠≠* +
}
ÆÆ 	
internal
∞∞ 
void
∞∞ %
SetPreExtrapolationTime
∞∞ -
(
∞∞- .
double
∞∞. 4
time
∞∞5 9
)
∞∞9 :
{
±± 	$
m_PreExtrapolationTime
≤≤ "
=
≤≤# $
time
≤≤% )
;
≤≤) *
}
≥≥ 	
public
∫∫ 
bool
∫∫  
IsExtrapolatedTime
∫∫ &
(
∫∫& '
double
∫∫' -
sequenceTime
∫∫. :
)
∫∫: ;
{
ªª 	
return
ºº #
IsPreExtrapolatedTime
ºº (
(
ºº( )
sequenceTime
ºº) 5
)
ºº5 6
||
ºº7 9$
IsPostExtrapolatedTime
ºº: P
(
ººP Q
sequenceTime
ººQ ]
)
ºº] ^
;
ºº^ _
}
ΩΩ 	
public
ƒƒ 
bool
ƒƒ #
IsPreExtrapolatedTime
ƒƒ )
(
ƒƒ) *
double
ƒƒ* 0
sequenceTime
ƒƒ1 =
)
ƒƒ= >
{
≈≈ 	
return
∆∆ "
preExtrapolationMode
∆∆ '
!=
∆∆( *
ClipExtrapolation
∆∆+ <
.
∆∆< =
None
∆∆= A
&&
∆∆B D
sequenceTime
«« 
<
«« 
m_Start
«« &
&&
««' )
sequenceTime
««* 6
>=
««7 9
m_Start
««: A
-
««B C$
m_PreExtrapolationTime
««D Z
;
««Z [
}
»» 	
public
œœ 
bool
œœ $
IsPostExtrapolatedTime
œœ *
(
œœ* +
double
œœ+ 1
sequenceTime
œœ2 >
)
œœ> ?
{
–– 	
return
—— #
postExtrapolationMode
—— (
!=
——) +
ClipExtrapolation
——, =
.
——= >
None
——> B
&&
——C E
(
““ 
sequenceTime
““ 
>
““ 
end
““  #
)
““# $
&&
““% '
(
““( )
sequenceTime
““) 5
-
““6 7
end
““8 ;
<
““< =%
m_PostExtrapolationTime
““> U
)
““U V
;
““V W
}
”” 	
public
ÿÿ 
double
ÿÿ 
extrapolatedStart
ÿÿ '
{
ŸŸ 	
get
⁄⁄ 
{
€€ 
if
‹‹ 
(
‹‹ $
m_PreExtrapolationMode
‹‹ *
!=
‹‹+ -
ClipExtrapolation
‹‹. ?
.
‹‹? @
None
‹‹@ D
)
‹‹D E
return
›› 
m_Start
›› "
-
››# $$
m_PreExtrapolationTime
››% ;
;
››; <
return
ﬂﬂ 
m_Start
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
}
·· 	
public
ÊÊ 
double
ÊÊ "
extrapolatedDuration
ÊÊ *
{
ÁÁ 	
get
ËË 
{
ÈÈ 
double
ÍÍ 
length
ÍÍ 
=
ÍÍ 

m_Duration
ÍÍ  *
;
ÍÍ* +
if
ÏÏ 
(
ÏÏ %
m_PostExtrapolationMode
ÏÏ +
!=
ÏÏ, .
ClipExtrapolation
ÏÏ/ @
.
ÏÏ@ A
None
ÏÏA E
)
ÏÏE F
length
ÌÌ 
+=
ÌÌ 
Math
ÌÌ "
.
ÌÌ" #
Min
ÌÌ# &
(
ÌÌ& '%
m_PostExtrapolationTime
ÌÌ' >
,
ÌÌ> ?
kMaxTimeValue
ÌÌ@ M
)
ÌÌM N
;
ÌÌN O
if
ÔÔ 
(
ÔÔ $
m_PreExtrapolationMode
ÔÔ *
!=
ÔÔ+ -
ClipExtrapolation
ÔÔ. ?
.
ÔÔ? @
None
ÔÔ@ D
)
ÔÔD E
length
 
+=
 $
m_PreExtrapolationTime
 4
;
4 5
return
ÚÚ 
length
ÚÚ 
;
ÚÚ 
}
ÛÛ 
}
ÙÙ 	
static
ˆˆ 
double
ˆˆ !
GetExtrapolatedTime
ˆˆ )
(
ˆˆ) *
double
ˆˆ* 0
time
ˆˆ1 5
,
ˆˆ5 6
ClipExtrapolation
ˆˆ7 H
mode
ˆˆI M
,
ˆˆM N
double
ˆˆO U
duration
ˆˆV ^
)
ˆˆ^ _
{
˜˜ 	
if
¯¯ 
(
¯¯ 
duration
¯¯ 
==
¯¯ 
$num
¯¯ 
)
¯¯ 
return
˘˘ 
$num
˘˘ 
;
˘˘ 
switch
˚˚ 
(
˚˚ 
mode
˚˚ 
)
˚˚ 
{
¸¸ 
case
˝˝ 
ClipExtrapolation
˝˝ &
.
˝˝& '
None
˝˝' +
:
˝˝+ ,
break
˛˛ 
;
˛˛ 
case
ÄÄ 
ClipExtrapolation
ÄÄ &
.
ÄÄ& '
Loop
ÄÄ' +
:
ÄÄ+ ,
if
ÅÅ 
(
ÅÅ 
time
ÅÅ 
<
ÅÅ 
$num
ÅÅ  
)
ÅÅ  !
time
ÇÇ 
=
ÇÇ 
duration
ÇÇ '
-
ÇÇ( )
(
ÇÇ* +
-
ÇÇ+ ,
time
ÇÇ, 0
%
ÇÇ1 2
duration
ÇÇ3 ;
)
ÇÇ; <
;
ÇÇ< =
else
ÉÉ 
if
ÉÉ 
(
ÉÉ 
time
ÉÉ !
>
ÉÉ" #
duration
ÉÉ$ ,
)
ÉÉ, -
time
ÑÑ 
%=
ÑÑ 
duration
ÑÑ  (
;
ÑÑ( )
break
ÖÖ 
;
ÖÖ 
case
áá 
ClipExtrapolation
áá &
.
áá& '
Hold
áá' +
:
áá+ ,
if
àà 
(
àà 
time
àà 
<
àà 
$num
àà  
)
àà  !
return
ââ 
$num
ââ  
;
ââ  !
if
ää 
(
ää 
time
ää 
>
ää 
duration
ää '
)
ää' (
return
ãã 
duration
ãã '
;
ãã' (
break
åå 
;
åå 
case
éé 
ClipExtrapolation
éé &
.
éé& '
PingPong
éé' /
:
éé/ 0
if
èè 
(
èè 
time
èè 
<
èè 
$num
èè  
)
èè  !
{
êê 
time
ëë 
=
ëë 
duration
ëë '
*
ëë( )
$num
ëë* +
-
ëë, -
(
ëë. /
-
ëë/ 0
time
ëë0 4
%
ëë5 6
(
ëë7 8
duration
ëë8 @
*
ëëA B
$num
ëëC D
)
ëëD E
)
ëëE F
;
ëëF G
time
íí 
=
íí 
duration
íí '
-
íí( )
Math
íí* .
.
íí. /
Abs
íí/ 2
(
íí2 3
time
íí3 7
-
íí8 9
duration
íí: B
)
ííB C
;
ííC D
}
ìì 
else
îî 
{
ïï 
time
ññ 
=
ññ 
time
ññ #
%
ññ$ %
(
ññ& '
duration
ññ' /
*
ññ0 1
$num
ññ2 5
)
ññ5 6
;
ññ6 7
time
óó 
=
óó 
duration
óó '
-
óó( )
Math
óó* .
.
óó. /
Abs
óó/ 2
(
óó2 3
time
óó3 7
-
óó8 9
duration
óó: B
)
óóB C
;
óóC D
}
òò 
break
ôô 
;
ôô 
case
õõ 
ClipExtrapolation
õõ &
.
õõ& '
Continue
õõ' /
:
õõ/ 0
break
úú 
;
úú 
}
ùù 
return
ûû 
time
ûû 
;
ûû 
}
üü 	
public
≤≤ 
void
≤≤ 
CreateCurves
≤≤  
(
≤≤  !
string
≤≤! '
curvesClipName
≤≤( 6
)
≤≤6 7
{
≥≥ 	
if
¥¥ 
(
¥¥ 
m_AnimationCurves
¥¥ !
!=
¥¥" $
null
¥¥% )
)
¥¥) *
return
µµ 
;
µµ 
m_AnimationCurves
∑∑ 
=
∑∑ %
TimelineCreateUtilities
∑∑  7
.
∑∑7 8)
CreateAnimationClipForTrack
∑∑8 S
(
∑∑S T
string
∑∑T Z
.
∑∑Z [
IsNullOrEmpty
∑∑[ h
(
∑∑h i
curvesClipName
∑∑i w
)
∑∑w x
?
∑∑y z!
kDefaultCurvesName∑∑{ ç
:∑∑é è
curvesClipName∑∑ê û
,∑∑û ü
GetParentTrack∑∑† Æ
(∑∑Æ Ø
)∑∑Ø ∞
,∑∑∞ ±
true∑∑≤ ∂
)∑∑∂ ∑
;∑∑∑ ∏
}
∏∏ 	
void
ΩΩ ,
ISerializationCallbackReceiver
ΩΩ +
.
ΩΩ+ ,
OnBeforeSerialize
ΩΩ, =
(
ΩΩ= >
)
ΩΩ> ?
{
ææ 	
	m_Version
øø 
=
øø 
k_LatestVersion
øø '
;
øø' (
}
¿¿ 	
void
≈≈ ,
ISerializationCallbackReceiver
≈≈ +
.
≈≈+ , 
OnAfterDeserialize
≈≈, >
(
≈≈> ?
)
≈≈? @
{
∆∆ 	
if
«« 
(
«« 
	m_Version
«« 
<
«« 
k_LatestVersion
«« +
)
««+ ,
{
»» $
UpgradeToLatestVersion
…… &
(
……& '
)
……' (
;
……( )
}
   
}
ÀÀ 	
public
—— 
override
—— 
string
—— 
ToString
—— '
(
——' (
)
——( )
{
““ 	
return
”” 
UnityString
”” 
.
”” 
Format
”” %
(
””% &
$str
””& I
,
””I J
displayName
””K V
,
””V W
start
””X ]
,
””] ^
end
””_ b
,
””b c
clipIn
””d j
,
””j k
GetParentTrack
””l z
(
””z {
)
””{ |
)
””| }
;
””} ~
}
‘‘ 	
public
‹‹ 
void
‹‹ 
ConformEaseValues
‹‹ %
(
‹‹% &
)
‹‹& '
{
›› 	
if
ﬁﬁ 
(
ﬁﬁ 
m_EaseInDuration
ﬁﬁ  
+
ﬁﬁ! "
m_EaseOutDuration
ﬁﬁ# 4
>
ﬁﬁ5 6
duration
ﬁﬁ7 ?
)
ﬁﬁ? @
{
ﬂﬂ 
var
‡‡ 
ratio
‡‡ 
=
‡‡ "
CalculateEasingRatio
‡‡ 0
(
‡‡0 1
m_EaseInDuration
‡‡1 A
,
‡‡A B
m_EaseOutDuration
‡‡C T
)
‡‡T U
;
‡‡U V
m_EaseInDuration
··  
=
··! "
duration
··# +
*
··, -
ratio
··. 3
;
··3 4
m_EaseOutDuration
‚‚ !
=
‚‚" #
duration
‚‚$ ,
*
‚‚- .
(
‚‚/ 0
$num
‚‚0 3
-
‚‚4 5
ratio
‚‚6 ;
)
‚‚; <
;
‚‚< =
}
„„ 
}
‰‰ 	
static
ÊÊ 
double
ÊÊ "
CalculateEasingRatio
ÊÊ *
(
ÊÊ* +
double
ÊÊ+ 1
easeIn
ÊÊ2 8
,
ÊÊ8 9
double
ÊÊ: @
easeOut
ÊÊA H
)
ÊÊH I
{
ÁÁ 	
if
ËË 
(
ËË 
Math
ËË 
.
ËË 
Abs
ËË 
(
ËË 
easeIn
ËË 
-
ËË  !
easeOut
ËË" )
)
ËË) *
<
ËË+ ,
TimeUtility
ËË- 8
.
ËË8 9
kTimeEpsilon
ËË9 E
)
ËËE F
return
ÈÈ 
$num
ÈÈ 
;
ÈÈ 
if
ÎÎ 
(
ÎÎ 
easeIn
ÎÎ 
==
ÎÎ 
$num
ÎÎ 
)
ÎÎ 
return
ÏÏ 
$num
ÏÏ 
;
ÏÏ 
if
ÓÓ 
(
ÓÓ 
easeOut
ÓÓ 
==
ÓÓ 
$num
ÓÓ 
)
ÓÓ 
return
ÔÔ 
$num
ÔÔ 
;
ÔÔ 
return
ÒÒ 
easeIn
ÒÒ 
/
ÒÒ 
(
ÒÒ 
easeIn
ÒÒ #
+
ÒÒ$ %
easeOut
ÒÒ& -
)
ÒÒ- .
;
ÒÒ. /
}
ÚÚ 	
internal
ıı 
int
ıı 

DirtyIndex
ıı 
{
ıı  !
get
ıı" %
;
ıı% &
private
ıı' .
set
ıı/ 2
;
ıı2 3
}
ıı4 5
internal
ˆˆ 
void
ˆˆ 
	MarkDirty
ˆˆ 
(
ˆˆ  
)
ˆˆ  !
{
˜˜ 	

DirtyIndex
¯¯ 
++
¯¯ 
;
¯¯ 
}
˘˘ 	
void
˚˚ 
UpdateDirty
˚˚ 
(
˚˚ 
double
˚˚ 
oldValue
˚˚  (
,
˚˚( )
double
˚˚* 0
newValue
˚˚1 9
)
˚˚9 :
{
¸¸ 	
if
˝˝ 
(
˝˝ 
oldValue
˝˝ 
!=
˝˝ 
newValue
˝˝ $
)
˝˝$ %

DirtyIndex
˛˛ 
++
˛˛ 
;
˛˛ 
}
ˇˇ 	
}
ÑÑ 
;
ÑÑ 
}ÖÖ 2
rC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Animation\AnimationOutputWeightProcessor.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class

 	*
AnimationOutputWeightProcessor


 (
:

) *%
ITimelineEvaluateCallback

+ D
{ 
struct 

WeightInfo 
{ 	
public 
Playable 
mixer !
;! "
public 
Playable 
parentMixer '
;' (
public 
int 
port 
; 
} 	#
AnimationPlayableOutput 
m_Output  (
;( )+
AnimationMotionXToDeltaPlayable '
m_MotionXPlayable( 9
;9 :
readonly 
List 
< 

WeightInfo  
>  !
m_Mixers" *
=+ ,
new- 0
List1 5
<5 6

WeightInfo6 @
>@ A
(A B
)B C
;C D
public *
AnimationOutputWeightProcessor -
(- .#
AnimationPlayableOutput. E
outputF L
)L M
{ 	
m_Output 
= 
output 
; 
output 
. 
	SetWeight 
( 
$num 
) 
;  

FindMixers 
( 
) 
; 
} 	
void 

FindMixers 
( 
) 
{ 	
var   
playable   
=   
m_Output   #
.  # $
GetSourcePlayable  $ 5
(  5 6
)  6 7
;  7 8
var!! 

outputPort!! 
=!! 
m_Output!! %
.!!% &
GetSourceOutputPort!!& 9
(!!9 :
)!!: ;
;!!; <
m_Mixers## 
.## 
Clear## 
(## 
)## 
;## 

FindMixers%% 
(%% 
playable%% 
,%%  

outputPort%%! +
,%%+ ,
playable%%- 5
.%%5 6
GetInput%%6 >
(%%> ?

outputPort%%? I
)%%I J
)%%J K
;%%K L
}&& 	
void)) 

FindMixers)) 
()) 
Playable))  
parent))! '
,))' (
int))) ,
port))- 1
,))1 2
Playable))3 ;
node))< @
)))@ A
{** 	
if++ 
(++ 
!++ 
node++ 
.++ 
IsValid++ 
(++ 
)++ 
)++  
return,, 
;,, 
var.. 
type.. 
=.. 
node.. 
... 
GetPlayableType.. +
(..+ ,
).., -
;..- .
if// 
(// 
type// 
==// 
typeof// 
(// "
AnimationMixerPlayable// 5
)//5 6
||//7 9
type//: >
==//? A
typeof//B H
(//H I'
AnimationLayerMixerPlayable//I d
)//d e
)//e f
{00 
int22 
subCount22 
=22 
node22 #
.22# $
GetInputCount22$ 1
(221 2
)222 3
;223 4
for33 
(33 
int33 
j33 
=33 
$num33 
;33 
j33  !
<33" #
subCount33$ ,
;33, -
j33. /
++33/ 1
)331 2
{44 

FindMixers55 
(55 
node55 #
,55# $
j55% &
,55& '
node55( ,
.55, -
GetInput55- 5
(555 6
j556 7
)557 8
)558 9
;559 :
}66 
var:: 

weightInfo:: 
=::  
new::! $

WeightInfo::% /
{;; 
parentMixer<< 
=<<  !
parent<<" (
,<<( )
mixer== 
=== 
node==  
,==  !
port>> 
=>> 
port>> 
,>>  
}?? 
;?? 
m_Mixers@@ 
.@@ 
Add@@ 
(@@ 

weightInfo@@ '
)@@' (
;@@( )
}AA 
elseBB 
{CC 
varDD 
countDD 
=DD 
nodeDD  
.DD  !
GetInputCountDD! .
(DD. /
)DD/ 0
;DD0 1
forEE 
(EE 
varEE 
iEE 
=EE 
$numEE 
;EE 
iEE  !
<EE" #
countEE$ )
;EE) *
iEE+ ,
++EE, .
)EE. /
{FF 

FindMixersGG 
(GG 
parentGG %
,GG% &
portGG' +
,GG+ ,
nodeGG- 1
.GG1 2
GetInputGG2 :
(GG: ;
iGG; <
)GG< =
)GG= >
;GG> ?
}HH 
}II 
}JJ 	
publicLL 
voidLL 
EvaluateLL 
(LL 
)LL 
{MM 	
floatNN 
weightNN 
=NN 
$numNN 
;NN 
m_OutputOO 
.OO 
	SetWeightOO 
(OO 
$numOO  
)OO  !
;OO! "
forPP 
(PP 
intPP 
iPP 
=PP 
$numPP 
;PP 
iPP 
<PP 
m_MixersPP  (
.PP( )
CountPP) .
;PP. /
iPP0 1
++PP1 3
)PP3 4
{QQ 
varRR 
mixInfoRR 
=RR 
m_MixersRR &
[RR& '
iRR' (
]RR( )
;RR) *
weightSS 
=SS 
WeightUtilitySS &
.SS& '
NormalizeMixerSS' 5
(SS5 6
mixInfoSS6 =
.SS= >
mixerSS> C
)SSC D
;SSD E
mixInfoTT 
.TT 
parentMixerTT #
.TT# $
SetInputWeightTT$ 2
(TT2 3
mixInfoTT3 :
.TT: ;
portTT; ?
,TT? @
weightTTA G
)TTG H
;TTH I
}UU 
ifYY 
(YY 
ApplicationYY 
.YY 
	isPlayingYY %
)YY% &
m_OutputZZ 
.ZZ 
	SetWeightZZ "
(ZZ" #
weightZZ# )
)ZZ) *
;ZZ* +
}[[ 	
}\\ 
}]] »
WC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Events\Marker.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

abstract 
class 
Marker  
:! "
ScriptableObject# 3
,3 4
IMarker5 <
{ 
[ 	
SerializeField	 
, 
	TimeField "
," #
Tooltip$ +
(+ ,
$str, A
)A B
]B C
doubleD J
m_TimeK Q
;Q R
public 

TrackAsset 
parent  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
double 
time 
{ 	
get 
{ 
return 
m_Time 
;  
}! "
set 
{ 
m_Time 
= 
Math 
.  
Max  #
(# $
value$ )
,) *
$num+ ,
), -
;- .
}/ 0
} 	
void 
IMarker 
. 

Initialize 
(  

TrackAsset  *
parentTrack+ 6
)6 7
{ 	
if!! 
(!! 
parent!! 
==!! 
null!! 
)!! 
{"" 
parent## 
=## 
parentTrack## $
;##$ %
try$$ 
{%% 
OnInitialize&&  
(&&  !
parentTrack&&! ,
)&&, -
;&&- .
}'' 
catch(( 
((( 
	Exception((  
e((! "
)((" #
{)) 
Debug** 
.** 
LogError** "
(**" #
e**# $
.**$ %
Message**% ,
,**, -
this**. 2
)**2 3
;**3 4
}++ 
},, 
}-- 	
public33 
virtual33 
void33 
OnInitialize33 (
(33( )

TrackAsset33) 3
aPent334 9
)339 :
{44 	
}55 	
}66 
}77 Ωá
VC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\DiscreteTime.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
struct 

DiscreteTime 
: 
IComparable %
{ 
const 
double 
k_Tick 
= 
$num #
;# $
public 
static 
readonly 
DiscreteTime +
kMaxTime, 4
=5 6
new7 :
DiscreteTime; G
(G H
Int64H M
.M N
MaxValueN V
)V W
;W X
readonly

 
Int64

 
m_DiscreteTime

 %
;

% &
public 
static 
double 
	tickValue &
{' (
get) ,
{- .
return/ 5
k_Tick6 <
;< =
}> ?
}@ A
public 
DiscreteTime 
( 
DiscreteTime (
time) -
)- .
{ 	
m_DiscreteTime 
= 
time !
.! "
m_DiscreteTime" 0
;0 1
} 	
DiscreteTime 
( 
Int64 
time 
)  
{ 	
m_DiscreteTime 
= 
time !
;! "
} 	
public 
DiscreteTime 
( 
double "
time# '
)' (
{ 	
m_DiscreteTime 
=  
DoubleToDiscreteTime 1
(1 2
time2 6
)6 7
;7 8
} 	
public 
DiscreteTime 
( 
float !
time" &
)& '
{ 	
m_DiscreteTime 
= 
FloatToDiscreteTime 0
(0 1
time1 5
)5 6
;6 7
}   	
public"" 
DiscreteTime"" 
("" 
int"" 
time""  $
)""$ %
{## 	
m_DiscreteTime$$ 
=$$ 
IntToDiscreteTime$$ .
($$. /
time$$/ 3
)$$3 4
;$$4 5
}%% 	
public'' 
DiscreteTime'' 
('' 
int'' 
frame''  %
,''% &
double''' -
fps''. 1
)''1 2
{(( 	
m_DiscreteTime)) 
=))  
DoubleToDiscreteTime)) 1
())1 2
frame))2 7
*))8 9
fps)): =
)))= >
;))> ?
}** 	
public,, 
DiscreteTime,, 
OneTickBefore,, )
(,,) *
),,* +
{-- 	
return.. 
new.. 
DiscreteTime.. #
(..# $
m_DiscreteTime..$ 2
-..3 4
$num..5 6
)..6 7
;..7 8
}// 	
public11 
DiscreteTime11 
OneTickAfter11 (
(11( )
)11) *
{22 	
return33 
new33 
DiscreteTime33 #
(33# $
m_DiscreteTime33$ 2
+333 4
$num335 6
)336 7
;337 8
}44 	
public66 
Int6466 
GetTick66 
(66 
)66 
{77 	
return88 
m_DiscreteTime88 !
;88! "
}99 	
public;; 
static;; 
DiscreteTime;; "
	FromTicks;;# ,
(;;, -
Int64;;- 2
ticks;;3 8
);;8 9
{<< 	
return== 
new== 
DiscreteTime== #
(==# $
ticks==$ )
)==) *
;==* +
}>> 	
public@@ 
int@@ 
	CompareTo@@ 
(@@ 
object@@ #
obj@@$ '
)@@' (
{AA 	
ifBB 
(BB 
objBB 
isBB 
DiscreteTimeBB #
)BB# $
returnCC 
m_DiscreteTimeCC %
.CC% &
	CompareToCC& /
(CC/ 0
(CC0 1
(CC1 2
DiscreteTimeCC2 >
)CC> ?
objCC? B
)CCB C
.CCC D
m_DiscreteTimeCCD R
)CCR S
;CCS T
returnDD 
$numDD 
;DD 
}EE 	
publicGG 
boolGG 
EqualsGG 
(GG 
DiscreteTimeGG '
otherGG( -
)GG- .
{HH 	
returnII 
m_DiscreteTimeII !
==II" $
otherII% *
.II* +
m_DiscreteTimeII+ 9
;II9 :
}JJ 	
publicLL 
overrideLL 
boolLL 
EqualsLL #
(LL# $
objectLL$ *
objLL+ .
)LL. /
{MM 	
ifNN 
(NN 
objNN 
isNN 
DiscreteTimeNN #
)NN# $
returnOO 
EqualsOO 
(OO 
(OO 
DiscreteTimeOO +
)OO+ ,
objOO, /
)OO/ 0
;OO0 1
returnPP 
falsePP 
;PP 
}QQ 	
staticSS 
Int64SS  
DoubleToDiscreteTimeSS )
(SS) *
doubleSS* 0
timeSS1 5
)SS5 6
{TT 	
doubleUU 
numberUU 
=UU 
(UU 
timeUU !
/UU" #
k_TickUU$ *
)UU* +
+UU, -
$numUU. 1
;UU1 2
ifVV 
(VV 
numberVV 
<VV 
Int64VV 
.VV 
MaxValueVV '
&&VV( *
numberVV+ 1
>VV2 3
Int64VV4 9
.VV9 :
MinValueVV: B
)VVB C
returnWW 
(WW 
Int64WW 
)WW 
numberWW $
;WW$ %
throwXX 
newXX '
ArgumentOutOfRangeExceptionXX 1
(XX1 2
$strXX2 T
)XXT U
;XXU V
}YY 	
static[[ 
Int64[[ 
FloatToDiscreteTime[[ (
([[( )
float[[) .
time[[/ 3
)[[3 4
{\\ 	
float]] 
number]] 
=]] 
(]] 
time]]  
/]]! "
(]]# $
float]]$ )
)]]) *
k_Tick]]* 0
)]]0 1
+]]2 3
$num]]4 8
;]]8 9
if^^ 
(^^ 
number^^ 
<^^ 
Int64^^ 
.^^ 
MaxValue^^ '
&&^^( *
number^^+ 1
>^^2 3
Int64^^4 9
.^^9 :
MinValue^^: B
)^^B C
return__ 
(__ 
Int64__ 
)__ 
number__ $
;__$ %
throw`` 
new`` '
ArgumentOutOfRangeException`` 1
(``1 2
$str``2 T
)``T U
;``U V
}aa 	
staticcc 
Int64cc 
IntToDiscreteTimecc &
(cc& '
intcc' *
timecc+ /
)cc/ 0
{dd 	
returnee  
DoubleToDiscreteTimeee '
(ee' (
timeee( ,
)ee, -
;ee- .
}ff 	
statichh 
doublehh 
ToDoublehh 
(hh 
Int64hh $
timehh% )
)hh) *
{ii 	
returnjj 
timejj 
*jj 
k_Tickjj  
;jj  !
}kk 	
staticmm 
floatmm 
ToFloatmm 
(mm 
Int64mm "
timemm# '
)mm' (
{nn 	
returnoo 
(oo 
floatoo 
)oo 
ToDoubleoo "
(oo" #
timeoo# '
)oo' (
;oo( )
}pp 	
publicrr 
staticrr 
explicitrr 
operatorrr '
doublerr( .
(rr. /
DiscreteTimerr/ ;
brr< =
)rr= >
{ss 	
returntt 
ToDoublett 
(tt 
btt 
.tt 
m_DiscreteTimett ,
)tt, -
;tt- .
}uu 	
publicww 
staticww 
explicitww 
operatorww '
floatww( -
(ww- .
DiscreteTimeww. :
bww; <
)ww< =
{xx 	
returnyy 
ToFloatyy 
(yy 
byy 
.yy 
m_DiscreteTimeyy +
)yy+ ,
;yy, -
}zz 	
public|| 
static|| 
explicit|| 
operator|| '
Int64||( -
(||- .
DiscreteTime||. :
b||; <
)||< =
{}} 	
return~~ 
b~~ 
.~~ 
m_DiscreteTime~~ #
;~~# $
} 	
public
ÅÅ 
static
ÅÅ 
explicit
ÅÅ 
operator
ÅÅ '
DiscreteTime
ÅÅ( 4
(
ÅÅ4 5
double
ÅÅ5 ;
time
ÅÅ< @
)
ÅÅ@ A
{
ÇÇ 	
return
ÉÉ 
new
ÉÉ 
DiscreteTime
ÉÉ #
(
ÉÉ# $
time
ÉÉ$ (
)
ÉÉ( )
;
ÉÉ) *
}
ÑÑ 	
public
ÜÜ 
static
ÜÜ 
explicit
ÜÜ 
operator
ÜÜ '
DiscreteTime
ÜÜ( 4
(
ÜÜ4 5
float
ÜÜ5 :
time
ÜÜ; ?
)
ÜÜ? @
{
áá 	
return
àà 
new
àà 
DiscreteTime
àà #
(
àà# $
time
àà$ (
)
àà( )
;
àà) *
}
ââ 	
public
ãã 
static
ãã 
implicit
ãã 
operator
ãã '
DiscreteTime
ãã( 4
(
ãã4 5
Int32
ãã5 :
time
ãã; ?
)
ãã? @
{
åå 	
return
çç 
new
çç 
DiscreteTime
çç #
(
çç# $
time
çç$ (
)
çç( )
;
çç) *
}
éé 	
public
êê 
static
êê 
explicit
êê 
operator
êê '
DiscreteTime
êê( 4
(
êê4 5
Int64
êê5 :
time
êê; ?
)
êê? @
{
ëë 	
return
íí 
new
íí 
DiscreteTime
íí #
(
íí# $
time
íí$ (
)
íí( )
;
íí) *
}
ìì 	
public
ïï 
static
ïï 
bool
ïï 
operator
ïï #
==
ïï$ &
(
ïï& '
DiscreteTime
ïï' 3
lhs
ïï4 7
,
ïï7 8
DiscreteTime
ïï9 E
rhs
ïïF I
)
ïïI J
{
ññ 	
return
óó 
lhs
óó 
.
óó 
m_DiscreteTime
óó %
==
óó& (
rhs
óó) ,
.
óó, -
m_DiscreteTime
óó- ;
;
óó; <
}
òò 	
public
öö 
static
öö 
bool
öö 
operator
öö #
!=
öö$ &
(
öö& '
DiscreteTime
öö' 3
lhs
öö4 7
,
öö7 8
DiscreteTime
öö9 E
rhs
ööF I
)
ööI J
{
õõ 	
return
úú 
!
úú 
(
úú 
lhs
úú 
==
úú 
rhs
úú 
)
úú  
;
úú  !
}
ùù 	
public
üü 
static
üü 
bool
üü 
operator
üü #
>
üü$ %
(
üü% &
DiscreteTime
üü& 2
lhs
üü3 6
,
üü6 7
DiscreteTime
üü8 D
rhs
üüE H
)
üüH I
{
†† 	
return
°° 
lhs
°° 
.
°° 
m_DiscreteTime
°° %
>
°°& '
rhs
°°( +
.
°°+ ,
m_DiscreteTime
°°, :
;
°°: ;
}
¢¢ 	
public
§§ 
static
§§ 
bool
§§ 
operator
§§ #
<
§§$ %
(
§§% &
DiscreteTime
§§& 2
lhs
§§3 6
,
§§6 7
DiscreteTime
§§8 D
rhs
§§E H
)
§§H I
{
•• 	
return
¶¶ 
lhs
¶¶ 
.
¶¶ 
m_DiscreteTime
¶¶ %
<
¶¶& '
rhs
¶¶( +
.
¶¶+ ,
m_DiscreteTime
¶¶, :
;
¶¶: ;
}
ßß 	
public
©© 
static
©© 
bool
©© 
operator
©© #
<=
©©$ &
(
©©& '
DiscreteTime
©©' 3
lhs
©©4 7
,
©©7 8
DiscreteTime
©©9 E
rhs
©©F I
)
©©I J
{
™™ 	
return
´´ 
lhs
´´ 
.
´´ 
m_DiscreteTime
´´ %
<=
´´& (
rhs
´´) ,
.
´´, -
m_DiscreteTime
´´- ;
;
´´; <
}
¨¨ 	
public
ÆÆ 
static
ÆÆ 
bool
ÆÆ 
operator
ÆÆ #
>=
ÆÆ$ &
(
ÆÆ& '
DiscreteTime
ÆÆ' 3
lhs
ÆÆ4 7
,
ÆÆ7 8
DiscreteTime
ÆÆ9 E
rhs
ÆÆF I
)
ÆÆI J
{
ØØ 	
return
∞∞ 
lhs
∞∞ 
.
∞∞ 
m_DiscreteTime
∞∞ %
>=
∞∞& (
rhs
∞∞) ,
.
∞∞, -
m_DiscreteTime
∞∞- ;
;
∞∞; <
}
±± 	
public
≥≥ 
static
≥≥ 
DiscreteTime
≥≥ "
operator
≥≥# +
+
≥≥, -
(
≥≥- .
DiscreteTime
≥≥. :
lhs
≥≥; >
,
≥≥> ?
DiscreteTime
≥≥@ L
rhs
≥≥M P
)
≥≥P Q
{
¥¥ 	
return
µµ 
new
µµ 
DiscreteTime
µµ #
(
µµ# $
lhs
µµ$ '
.
µµ' (
m_DiscreteTime
µµ( 6
+
µµ7 8
rhs
µµ9 <
.
µµ< =
m_DiscreteTime
µµ= K
)
µµK L
;
µµL M
}
∂∂ 	
public
∏∏ 
static
∏∏ 
DiscreteTime
∏∏ "
operator
∏∏# +
-
∏∏, -
(
∏∏- .
DiscreteTime
∏∏. :
lhs
∏∏; >
,
∏∏> ?
DiscreteTime
∏∏@ L
rhs
∏∏M P
)
∏∏P Q
{
ππ 	
return
∫∫ 
new
∫∫ 
DiscreteTime
∫∫ #
(
∫∫# $
lhs
∫∫$ '
.
∫∫' (
m_DiscreteTime
∫∫( 6
-
∫∫7 8
rhs
∫∫9 <
.
∫∫< =
m_DiscreteTime
∫∫= K
)
∫∫K L
;
∫∫L M
}
ªª 	
public
ΩΩ 
override
ΩΩ 
string
ΩΩ 
ToString
ΩΩ '
(
ΩΩ' (
)
ΩΩ( )
{
ææ 	
return
øø 
m_DiscreteTime
øø !
.
øø! "
ToString
øø" *
(
øø* +
)
øø+ ,
;
øø, -
}
¿¿ 	
public
¬¬ 
override
¬¬ 
int
¬¬ 
GetHashCode
¬¬ '
(
¬¬' (
)
¬¬( )
{
√√ 	
return
ƒƒ 
m_DiscreteTime
ƒƒ !
.
ƒƒ! "
GetHashCode
ƒƒ" -
(
ƒƒ- .
)
ƒƒ. /
;
ƒƒ/ 0
}
≈≈ 	
public
«« 
static
«« 
DiscreteTime
«« "
Min
««# &
(
««& '
DiscreteTime
««' 3
lhs
««4 7
,
««7 8
DiscreteTime
««9 E
rhs
««F I
)
««I J
{
»» 	
return
…… 
new
…… 
DiscreteTime
…… #
(
……# $
Math
……$ (
.
……( )
Min
……) ,
(
……, -
lhs
……- 0
.
……0 1
m_DiscreteTime
……1 ?
,
……? @
rhs
……A D
.
……D E
m_DiscreteTime
……E S
)
……S T
)
……T U
;
……U V
}
   	
public
ÃÃ 
static
ÃÃ 
DiscreteTime
ÃÃ "
Max
ÃÃ# &
(
ÃÃ& '
DiscreteTime
ÃÃ' 3
lhs
ÃÃ4 7
,
ÃÃ7 8
DiscreteTime
ÃÃ9 E
rhs
ÃÃF I
)
ÃÃI J
{
ÕÕ 	
return
ŒŒ 
new
ŒŒ 
DiscreteTime
ŒŒ #
(
ŒŒ# $
Math
ŒŒ$ (
.
ŒŒ( )
Max
ŒŒ) ,
(
ŒŒ, -
lhs
ŒŒ- 0
.
ŒŒ0 1
m_DiscreteTime
ŒŒ1 ?
,
ŒŒ? @
rhs
ŒŒA D
.
ŒŒD E
m_DiscreteTime
ŒŒE S
)
ŒŒS T
)
ŒŒT U
;
ŒŒU V
}
œœ 	
public
—— 
static
—— 
double
—— 
SnapToNearestTick
—— .
(
——. /
double
——/ 5
time
——6 :
)
——: ;
{
““ 	
Int64
”” 
discreteTime
”” 
=
””  "
DoubleToDiscreteTime
””! 5
(
””5 6
time
””6 :
)
””: ;
;
””; <
return
‘‘ 
ToDouble
‘‘ 
(
‘‘ 
discreteTime
‘‘ (
)
‘‘( )
;
‘‘) *
}
’’ 	
public
◊◊ 
static
◊◊ 
float
◊◊ 
SnapToNearestTick
◊◊ -
(
◊◊- .
float
◊◊. 3
time
◊◊4 8
)
◊◊8 9
{
ÿÿ 	
Int64
ŸŸ 
discreteTime
ŸŸ 
=
ŸŸ  !
FloatToDiscreteTime
ŸŸ! 4
(
ŸŸ4 5
time
ŸŸ5 9
)
ŸŸ9 :
;
ŸŸ: ;
return
⁄⁄ 
ToFloat
⁄⁄ 
(
⁄⁄ 
discreteTime
⁄⁄ '
)
⁄⁄' (
;
⁄⁄( )
}
€€ 	
public
›› 
static
›› 
Int64
›› 
GetNearestTick
›› *
(
››* +
double
››+ 1
time
››2 6
)
››6 7
{
ﬁﬁ 	
return
ﬂﬂ "
DoubleToDiscreteTime
ﬂﬂ '
(
ﬂﬂ' (
time
ﬂﬂ( ,
)
ﬂﬂ, -
;
ﬂﬂ- .
}
‡‡ 	
}
·· 
}‚‚ ëõ
mC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Playables\TimeNotificationBehaviour.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

class %
TimeNotificationBehaviour *
:+ ,
PlayableBehaviour- >
{ 
struct 
NotificationEntry  
{ 	
public 
double 
time 
; 
public 
INotification  
payload! (
;( )
public 
bool 
notificationFired )
;) *
public 
NotificationFlags $
flags% *
;* +
public 
bool 
triggerInEditor '
{ 
get 
{ 
return 
( 
flags #
&$ %
NotificationFlags& 7
.7 8
TriggerInEditMode8 I
)I J
!=K M
$numN O
;O P
}Q R
} 
public 
bool 
prewarm 
{ 
get 
{ 
return 
( 
flags #
&$ %
NotificationFlags& 7
.7 8
Retroactive8 C
)C D
!=E G
$numH I
;I J
}K L
} 
public 
bool 
triggerOnce #
{ 
get 
{ 
return 
( 
flags #
&$ %
NotificationFlags& 7
.7 8
TriggerOnce8 C
)C D
!=E G
$numH I
;I J
}K L
} 
}   	
readonly"" 
List"" 
<"" 
NotificationEntry"" '
>""' (
m_Notifications"") 8
=""9 :
new""; >
List""? C
<""C D
NotificationEntry""D U
>""U V
(""V W
)""W X
;""X Y
double## 
m_PreviousTime## 
;## 
bool$$ #
m_NeedSortNotifications$$ $
;$$$ %
Playable&& 
m_TimeSource&& 
;&& 
public.. 
Playable.. 

timeSource.. "
{// 	
set00 
{00 
m_TimeSource00 
=00  
value00! &
;00& '
}00( )
}11 	
public:: 
static:: 
ScriptPlayable:: $
<::$ %%
TimeNotificationBehaviour::% >
>::> ?
Create::@ F
(::F G
PlayableGraph::G T
graph::U Z
,::Z [
double::\ b
duration::c k
,::k l
DirectorWrapMode::m }
loopMode	::~ Ü
)
::Ü á
{;; 	
var<< !
notificationsPlayable<< %
=<<& '
ScriptPlayable<<( 6
<<<6 7%
TimeNotificationBehaviour<<7 P
><<P Q
.<<Q R
Create<<R X
(<<X Y
graph<<Y ^
)<<^ _
;<<_ `!
notificationsPlayable== !
.==! "
SetDuration==" -
(==- .
duration==. 6
)==6 7
;==7 8!
notificationsPlayable>> !
.>>! "
SetTimeWrapMode>>" 1
(>>1 2
loopMode>>2 :
)>>: ;
;>>; <!
notificationsPlayable?? !
.??! "
SetPropagateSetTime??" 5
(??5 6
true??6 :
)??: ;
;??; <
return@@ !
notificationsPlayable@@ (
;@@( )
}AA 	
publicJJ 
voidJJ 
AddNotificationJJ #
(JJ# $
doubleJJ$ *
timeJJ+ /
,JJ/ 0
INotificationJJ1 >
payloadJJ? F
,JJF G
NotificationFlagsJJH Y
flagsJJZ _
=JJ` a
NotificationFlagsJJb s
.JJs t
RetroactiveJJt 
)	JJ Ä
{KK 	
m_NotificationsLL 
.LL 
AddLL 
(LL  
newLL  #
NotificationEntryLL$ 5
{MM 
timeNN 
=NN 
timeNN 
,NN 
payloadOO 
=OO 
payloadOO !
,OO! "
flagsPP 
=PP 
flagsPP 
}QQ 
)QQ 
;QQ #
m_NeedSortNotificationsRR #
=RR$ %
trueRR& *
;RR* +
}SS 	
publicYY 
overrideYY 
voidYY 
OnGraphStartYY )
(YY) *
PlayableYY* 2
playableYY3 ;
)YY; <
{ZZ 	
SortNotifications[[ 
([[ 
)[[ 
;[[  
var\\ 
currentTime\\ 
=\\ 
playable\\ &
.\\& '
GetTime\\' .
(\\. /
)\\/ 0
;\\0 1
for]] 
(]] 
var]] 
i]] 
=]] 
$num]] 
;]] 
i]] 
<]] 
m_Notifications]]  /
.]]/ 0
Count]]0 5
;]]5 6
i]]7 8
++]]8 :
)]]: ;
{^^ 
if`` 
(`` 
m_Notifications`` #
[``# $
i``$ %
]``% &
.``& '
time``' +
>``, -
currentTime``. 9
&&``: <
!``= >
m_Notifications``> M
[``M N
i``N O
]``O P
.``P Q
triggerOnce``Q \
)``\ ]
{aa 
varbb 
notificationbb $
=bb% &
m_Notificationsbb' 6
[bb6 7
ibb7 8
]bb8 9
;bb9 :
notificationcc  
.cc  !
notificationFiredcc! 2
=cc3 4
falsecc5 :
;cc: ;
m_Notificationsdd #
[dd# $
idd$ %
]dd% &
=dd' (
notificationdd) 5
;dd5 6
}ee 
}ff 
m_PreviousTimegg 
=gg 
playablegg %
.gg% &
GetTimegg& -
(gg- .
)gg. /
;gg/ 0
}hh 	
publicoo 
overrideoo 
voidoo 
OnBehaviourPauseoo -
(oo- .
Playableoo. 6
playableoo7 ?
,oo? @
	FrameDataooA J
infoooK O
)ooO P
{pp 	
ifqq 
(qq 
playableqq 
.qq 
IsDoneqq 
(qq  
)qq  !
)qq! "
{rr 
SortNotificationsss !
(ss! "
)ss" #
;ss# $
fortt 
(tt 
vartt 
itt 
=tt 
$numtt 
;tt 
itt  !
<tt" #
m_Notificationstt$ 3
.tt3 4
Counttt4 9
;tt9 :
itt; <
++tt< >
)tt> ?
{uu 
varvv 
evv 
=vv 
m_Notificationsvv +
[vv+ ,
ivv, -
]vv- .
;vv. /
ifww 
(ww 
!ww 
eww 
.ww 
notificationFiredww ,
)ww, -
{xx 
varyy 
durationyy $
=yy% &
playableyy' /
.yy/ 0
GetDurationyy0 ;
(yy; <
)yy< =
;yy= >
varzz 

canTriggerzz &
=zz' (
m_PreviousTimezz) 7
<=zz8 :
ezz; <
.zz< =
timezz= A
&&zzB D
ezzE F
.zzF G
timezzG K
<=zzL N
durationzzO W
;zzW X
if{{ 
({{ 

canTrigger{{ &
){{& '
{|| 
Trigger_internal}} ,
(}}, -
playable}}- 5
,}}5 6
info}}7 ;
.}}; <
output}}< B
,}}B C
ref}}D G
e}}H I
)}}I J
;}}J K
m_Notifications~~ +
[~~+ ,
i~~, -
]~~- .
=~~/ 0
e~~1 2
;~~2 3
} 
}
ÄÄ 
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 	
public
çç 
override
çç 
void
çç 
PrepareFrame
çç )
(
çç) *
Playable
çç* 2
playable
çç3 ;
,
çç; <
	FrameData
çç= F
info
ççG K
)
ççK L
{
éé 	
if
êê 
(
êê 
info
êê 
.
êê 
evaluationType
êê #
==
êê$ &
	FrameData
êê' 0
.
êê0 1
EvaluationType
êê1 ?
.
êê? @
Evaluate
êê@ H
)
êêH I
{
ëë 
return
íí 
;
íí 
}
ìì ,
SyncDurationWithExternalSource
ïï *
(
ïï* +
playable
ïï+ 3
)
ïï3 4
;
ïï4 5
SortNotifications
ññ 
(
ññ 
)
ññ 
;
ññ  
var
óó 
currentTime
óó 
=
óó 
playable
óó &
.
óó& '
GetTime
óó' .
(
óó. /
)
óó/ 0
;
óó0 1
if
öö 
(
öö 
info
öö 
.
öö 

timeLooped
öö 
)
öö  
{
õõ 
var
úú 
duration
úú 
=
úú 
playable
úú '
.
úú' (
GetDuration
úú( 3
(
úú3 4
)
úú4 5
;
úú5 6)
TriggerNotificationsInRange
ùù +
(
ùù+ ,
m_PreviousTime
ùù, :
,
ùù: ;
duration
ùù< D
,
ùùD E
info
ùùF J
,
ùùJ K
playable
ùùL T
,
ùùT U
true
ùùV Z
)
ùùZ [
;
ùù[ \
var
ûû 
dx
ûû 
=
ûû 
playable
ûû !
.
ûû! "
GetDuration
ûû" -
(
ûû- .
)
ûû. /
-
ûû0 1
m_PreviousTime
ûû2 @
;
ûû@ A
var
üü 
nFullTimelines
üü "
=
üü# $
(
üü% &
int
üü& )
)
üü) *
(
üü* +
(
üü+ ,
info
üü, 0
.
üü0 1
	deltaTime
üü1 :
*
üü; <
info
üü= A
.
üüA B
effectiveSpeed
üüB P
-
üüQ R
dx
üüS U
)
üüU V
/
üüW X
playable
üüY a
.
üüa b
GetDuration
üüb m
(
üüm n
)
üün o
)
üüo p
;
üüp q
for
†† 
(
†† 
var
†† 
i
†† 
=
†† 
$num
†† 
;
†† 
i
††  !
<
††" #
nFullTimelines
††$ 2
;
††2 3
i
††4 5
++
††5 7
)
††7 8
{
°° )
TriggerNotificationsInRange
¢¢ /
(
¢¢/ 0
$num
¢¢0 1
,
¢¢1 2
duration
¢¢3 ;
,
¢¢; <
info
¢¢= A
,
¢¢A B
playable
¢¢C K
,
¢¢K L
false
¢¢M R
)
¢¢R S
;
¢¢S T
}
££ )
TriggerNotificationsInRange
§§ +
(
§§+ ,
$num
§§, -
,
§§- .
currentTime
§§/ :
,
§§: ;
info
§§< @
,
§§@ A
playable
§§B J
,
§§J K
false
§§L Q
)
§§Q R
;
§§R S
}
•• 
else
¶¶ 
{
ßß 
var
®® 
pt
®® 
=
®® 
playable
®® !
.
®®! "
GetTime
®®" )
(
®®) *
)
®®* +
;
®®+ ,)
TriggerNotificationsInRange
©© +
(
©©+ ,
m_PreviousTime
©©, :
,
©©: ;
pt
©©< >
,
©©> ?
info
©©@ D
,
©©D E
playable
™™ 
,
™™ 
true
™™ "
)
™™" #
;
™™# $
}
´´ 
for
≠≠ 
(
≠≠ 
var
≠≠ 
i
≠≠ 
=
≠≠ 
$num
≠≠ 
;
≠≠ 
i
≠≠ 
<
≠≠ 
m_Notifications
≠≠  /
.
≠≠/ 0
Count
≠≠0 5
;
≠≠5 6
++
≠≠7 9
i
≠≠9 :
)
≠≠: ;
{
ÆÆ 
var
ØØ 
e
ØØ 
=
ØØ 
m_Notifications
ØØ '
[
ØØ' (
i
ØØ( )
]
ØØ) *
;
ØØ* +
if
∞∞ 
(
∞∞ 
e
∞∞ 
.
∞∞ 
notificationFired
∞∞ '
&&
∞∞( *$
CanRestoreNotification
∞∞+ A
(
∞∞A B
e
∞∞B C
,
∞∞C D
info
∞∞E I
,
∞∞I J
currentTime
∞∞K V
,
∞∞V W
m_PreviousTime
∞∞X f
)
∞∞f g
)
∞∞g h
{
±± 
Restore_internal
≤≤ $
(
≤≤$ %
ref
≤≤% (
e
≤≤) *
)
≤≤* +
;
≤≤+ ,
m_Notifications
≥≥ #
[
≥≥# $
i
≥≥$ %
]
≥≥% &
=
≥≥' (
e
≥≥) *
;
≥≥* +
}
¥¥ 
}
µµ 
m_PreviousTime
∑∑ 
=
∑∑ 
playable
∑∑ %
.
∑∑% &
GetTime
∑∑& -
(
∑∑- .
)
∑∑. /
;
∑∑/ 0
}
∏∏ 	
void
∫∫ 
SortNotifications
∫∫ 
(
∫∫ 
)
∫∫  
{
ªª 	
if
ºº 
(
ºº %
m_NeedSortNotifications
ºº '
)
ºº' (
{
ΩΩ 
m_Notifications
ææ 
.
ææ  
Sort
ææ  $
(
ææ$ %
(
ææ% &
x
ææ& '
,
ææ' (
y
ææ) *
)
ææ* +
=>
ææ, .
x
ææ/ 0
.
ææ0 1
time
ææ1 5
.
ææ5 6
	CompareTo
ææ6 ?
(
ææ? @
y
ææ@ A
.
ææA B
time
ææB F
)
ææF G
)
ææG H
;
ææH I%
m_NeedSortNotifications
øø '
=
øø( )
false
øø* /
;
øø/ 0
}
¿¿ 
}
¡¡ 	
static
√√ 
bool
√√ $
CanRestoreNotification
√√ *
(
√√* +
NotificationEntry
√√+ <
e
√√= >
,
√√> ?
	FrameData
√√@ I
info
√√J N
,
√√N O
double
√√P V
currentTime
√√W b
,
√√b c
double
√√d j
previousTime
√√k w
)
√√w x
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
e
≈≈ 
.
≈≈ 
triggerOnce
≈≈ 
)
≈≈ 
return
∆∆ 
false
∆∆ 
;
∆∆ 
if
«« 
(
«« 
info
«« 
.
«« 

timeLooped
«« 
)
««  
return
»» 
true
»» 
;
»» 
return
ÀÀ 
previousTime
ÀÀ 
>
ÀÀ  !
currentTime
ÀÀ" -
&&
ÀÀ. 0
currentTime
ÀÀ1 <
<=
ÀÀ= ?
e
ÀÀ@ A
.
ÀÀA B
time
ÀÀB F
;
ÀÀF G
}
ÃÃ 	
void
ŒŒ )
TriggerNotificationsInRange
ŒŒ (
(
ŒŒ( )
double
ŒŒ) /
start
ŒŒ0 5
,
ŒŒ5 6
double
ŒŒ7 =
end
ŒŒ> A
,
ŒŒA B
	FrameData
ŒŒC L
info
ŒŒM Q
,
ŒŒQ R
Playable
ŒŒS [
playable
ŒŒ\ d
,
ŒŒd e
bool
ŒŒf j

checkState
ŒŒk u
)
ŒŒu v
{
œœ 	
if
–– 
(
–– 
start
–– 
<=
–– 
end
–– 
)
–– 
{
—— 
var
““ 
playMode
““ 
=
““ 
Application
““ *
.
““* +
	isPlaying
““+ 4
;
““4 5
for
”” 
(
”” 
var
”” 
i
”” 
=
”” 
$num
”” 
;
”” 
i
””  !
<
””" #
m_Notifications
””$ 3
.
””3 4
Count
””4 9
;
””9 :
i
””; <
++
””< >
)
””> ?
{
‘‘ 
var
’’ 
e
’’ 
=
’’ 
m_Notifications
’’ +
[
’’+ ,
i
’’, -
]
’’- .
;
’’. /
if
÷÷ 
(
÷÷ 
e
÷÷ 
.
÷÷ 
notificationFired
÷÷ +
&&
÷÷, .
(
÷÷/ 0

checkState
÷÷0 :
||
÷÷; =
e
÷÷> ?
.
÷÷? @
triggerOnce
÷÷@ K
)
÷÷K L
)
÷÷L M
continue
◊◊  
;
◊◊  !
var
ŸŸ 
notificationTime
ŸŸ (
=
ŸŸ) *
e
ŸŸ+ ,
.
ŸŸ, -
time
ŸŸ- 1
;
ŸŸ1 2
if
⁄⁄ 
(
⁄⁄ 
e
⁄⁄ 
.
⁄⁄ 
prewarm
⁄⁄ !
&&
⁄⁄" $
notificationTime
⁄⁄% 5
<
⁄⁄6 7
end
⁄⁄8 ;
&&
⁄⁄< >
(
⁄⁄? @
e
⁄⁄@ A
.
⁄⁄A B
triggerInEditor
⁄⁄B Q
||
⁄⁄R T
playMode
⁄⁄U ]
)
⁄⁄] ^
)
⁄⁄^ _
{
€€ 
Trigger_internal
‹‹ (
(
‹‹( )
playable
‹‹) 1
,
‹‹1 2
info
‹‹3 7
.
‹‹7 8
output
‹‹8 >
,
‹‹> ?
ref
‹‹@ C
e
‹‹D E
)
‹‹E F
;
‹‹F G
m_Notifications
›› '
[
››' (
i
››( )
]
››) *
=
››+ ,
e
››- .
;
››. /
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
if
·· 
(
·· 
notificationTime
·· ,
<
··- .
start
··/ 4
||
··5 7
notificationTime
··8 H
>
··I J
end
··K N
)
··N O
continue
‚‚ $
;
‚‚$ %
if
‰‰ 
(
‰‰ 
e
‰‰ 
.
‰‰ 
triggerInEditor
‰‰ -
||
‰‰. 0
playMode
‰‰1 9
)
‰‰9 :
{
ÂÂ 
Trigger_internal
ÊÊ ,
(
ÊÊ, -
playable
ÊÊ- 5
,
ÊÊ5 6
info
ÊÊ7 ;
.
ÊÊ; <
output
ÊÊ< B
,
ÊÊB C
ref
ÊÊD G
e
ÊÊH I
)
ÊÊI J
;
ÊÊJ K
m_Notifications
ÁÁ +
[
ÁÁ+ ,
i
ÁÁ, -
]
ÁÁ- .
=
ÁÁ/ 0
e
ÁÁ1 2
;
ÁÁ2 3
}
ËË 
}
ÈÈ 
}
ÍÍ 
}
ÎÎ 
}
ÏÏ 	
void
ÓÓ ,
SyncDurationWithExternalSource
ÓÓ +
(
ÓÓ+ ,
Playable
ÓÓ, 4
playable
ÓÓ5 =
)
ÓÓ= >
{
ÔÔ 	
if
 
(
 
m_TimeSource
 
.
 
IsValid
 $
(
$ %
)
% &
)
& '
{
ÒÒ 
playable
ÚÚ 
.
ÚÚ 
SetDuration
ÚÚ $
(
ÚÚ$ %
m_TimeSource
ÚÚ% 1
.
ÚÚ1 2
GetDuration
ÚÚ2 =
(
ÚÚ= >
)
ÚÚ> ?
)
ÚÚ? @
;
ÚÚ@ A
playable
ÛÛ 
.
ÛÛ 
SetTimeWrapMode
ÛÛ (
(
ÛÛ( )
m_TimeSource
ÛÛ) 5
.
ÛÛ5 6
GetTimeWrapMode
ÛÛ6 E
(
ÛÛE F
)
ÛÛF G
)
ÛÛG H
;
ÛÛH I
}
ÙÙ 
}
ıı 	
static
˜˜ 
void
˜˜ 
Trigger_internal
˜˜ $
(
˜˜$ %
Playable
˜˜% -
playable
˜˜. 6
,
˜˜6 7
PlayableOutput
˜˜8 F
output
˜˜G M
,
˜˜M N
ref
˜˜O R
NotificationEntry
˜˜S d
e
˜˜e f
)
˜˜f g
{
¯¯ 	
output
˘˘ 
.
˘˘ 
PushNotification
˘˘ #
(
˘˘# $
playable
˘˘$ ,
,
˘˘, -
e
˘˘. /
.
˘˘/ 0
payload
˘˘0 7
)
˘˘7 8
;
˘˘8 9
e
˙˙ 
.
˙˙ 
notificationFired
˙˙ 
=
˙˙  !
true
˙˙" &
;
˙˙& '
}
˚˚ 	
static
˝˝ 
void
˝˝ 
Restore_internal
˝˝ $
(
˝˝$ %
ref
˝˝% (
NotificationEntry
˝˝) :
e
˝˝; <
)
˝˝< =
{
˛˛ 	
e
ˇˇ 
.
ˇˇ 
notificationFired
ˇˇ 
=
ˇˇ  !
false
ˇˇ" '
;
ˇˇ' (
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ¶	
hC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Attributes\TrackColorAttribute.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[		 
AttributeUsage		 
(		 
AttributeTargets		 $
.		$ %
Class		% *
)		* +
]		+ ,
public

 

class

 
TrackColorAttribute

 $
:

% &
	Attribute

' 0
{ 
Color 
m_Color 
; 
public 
Color 
color 
{ 	
get 
{ 
return 
m_Color  
;  !
}" #
} 	
public 
TrackColorAttribute "
(" #
float# (
r) *
,* +
float, 1
g2 3
,3 4
float5 :
b; <
)< =
{ 	
m_Color 
= 
new 
Color 
(  
r  !
,! "
g# $
,$ %
b& '
)' (
;( )
} 	
}   
}!! 
fC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\AssetUpgrade\TimelineUpgrade.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
partial 
class 
TimelineAsset 
{ 
enum 
Versions 
{ 	
Initial 
= 
$num 
} 	
const		 
int		 
k_LatestVersion		 !
=		" #
(		$ %
int		% (
)		( )
Versions		) 1
.		1 2
Initial		2 9
;		9 :
[

 	
SerializeField

	 
,

 
HideInInspector

 (
]

( )
int

* -
	m_Version

. 7
;

7 8
void "
UpgradeToLatestVersion #
(# $
)$ %
{ 	
}
 
static 
class  
TimelineAssetUpgrade )
{ 	
}
 
} 
} …
bC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\AssetUpgrade\ClipUpgrade.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
partial 
class 
TimelineClip 
{ 
enum 
Versions 
{ 	
Initial 
= 
$num 
, #
ClipInFromGlobalToLocal #
=$ %
$num& '
}		 	
const

 
int

 
k_LatestVersion

 !
=

" #
(

$ %
int

% (
)

( )
Versions

) 1
.

1 2#
ClipInFromGlobalToLocal

2 I
;

I J
[ 	
SerializeField	 
, 
HideInInspector (
]( )
int* -
	m_Version. 7
;7 8
void "
UpgradeToLatestVersion #
(# $
)$ %
{ 	
if 
( 
	m_Version 
< 
( 
int  
)  !
Versions! )
.) *#
ClipInFromGlobalToLocal* A
)A B
{ 
TimelineClipUpgrade #
.# $*
UpgradeClipInFromGlobalToLocal$ B
(B C
thisC G
)G H
;H I
} 
} 	
static 
class 
TimelineClipUpgrade (
{ 	
public 
static 
void *
UpgradeClipInFromGlobalToLocal =
(= >
TimelineClip> J
clipK O
)O P
{ 
if 
( 
clip 
. 
m_ClipIn !
>" #
$num$ %
&&& (
clip) -
.- .
m_TimeScale. 9
>: ;
float< A
.A B
EpsilonB I
)I J
clip 
. 
m_ClipIn !
*=" $
clip% )
.) *
m_TimeScale* 5
;5 6
} 
}   	
}!! 
}"" ãH
hC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Evaluation\ScheduleRuntimeClip.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
internal

 
class

 
ScheduleRuntimeClip

 &
:

' (
RuntimeClipBase

) 8
{ 
private 
TimelineClip 
m_Clip #
;# $
private 
Playable 

m_Playable #
;# $
private 
Playable 
m_ParentMixer &
;& '
private 
double 
m_StartDelay #
;# $
private 
double 
m_FinishTail #
;# $
private 
bool 
	m_Started 
=  
false! &
;& '
public 
override 
double 
start $
{ 	
get 
{ 
return 
Math 
. 
Max !
(! "
$num" #
,# $
m_Clip% +
.+ ,
start, 1
-2 3
m_StartDelay4 @
)@ A
;A B
}C D
} 	
public 
override 
double 
duration '
{ 	
get 
{ 
return 
m_Clip 
.  
duration  (
+) *
m_FinishTail+ 7
+8 9
m_Clip: @
.@ A
startA F
-G H
startI N
;N O
}P Q
} 	
public 
void 
SetTime 
( 
double "
time# '
)' (
{ 	

m_Playable   
.   
SetTime   
(   
time   #
)  # $
;  $ %
}!! 	
public## 
TimelineClip## 
clip##  
{##! "
get### &
{##' (
return##) /
m_Clip##0 6
;##6 7
}##8 9
}##: ;
public$$ 
Playable$$ 
mixer$$ 
{$$ 
get$$  #
{$$$ %
return$$& ,
m_ParentMixer$$- :
;$$: ;
}$$< =
}$$> ?
public%% 
Playable%% 
playable%%  
{%%! "
get%%# &
{%%' (
return%%) /

m_Playable%%0 :
;%%: ;
}%%< =
}%%> ?
public'' 
ScheduleRuntimeClip'' "
(''" #
TimelineClip''# /
clip''0 4
,''4 5
Playable''6 >
clipPlayable''? K
,''K L
Playable((# +
parentMixer((, 7
,((7 8
double((9 ?

startDelay((@ J
=((K L
$num((M P
,((P Q
double((R X

finishTail((Y c
=((d e
$num((f i
)((i j
{)) 	
Create** 
(** 
clip** 
,** 
clipPlayable** %
,**% &
parentMixer**' 2
,**2 3

startDelay**4 >
,**> ?

finishTail**@ J
)**J K
;**K L
}++ 	
private-- 
void-- 
Create-- 
(-- 
TimelineClip-- (
clip--) -
,--- .
Playable--/ 7
clipPlayable--8 D
,--D E
Playable--F N
parentMixer--O Z
,--Z [
double.. 

startDelay.. 
,.. 
double.. %

finishTail..& 0
)..0 1
{// 	
m_Clip00 
=00 
clip00 
;00 

m_Playable11 
=11 
clipPlayable11 %
;11% &
m_ParentMixer22 
=22 
parentMixer22 '
;22' (
m_StartDelay33 
=33 

startDelay33 %
;33% &
m_FinishTail44 
=44 

finishTail44 %
;44% &
clipPlayable55 
.55 
Pause55 
(55 
)55  
;55  !
}66 	
public88 
override88 
bool88 
enable88 #
{99 	
set:: 
{;; 
if<< 
(<< 
value<< 
&&<< 

m_Playable<< '
.<<' (
GetPlayState<<( 4
(<<4 5
)<<5 6
!=<<7 9
	PlayState<<: C
.<<C D
Playing<<D K
)<<K L
{== 

m_Playable>> 
.>> 
Play>> #
(>># $
)>>$ %
;>>% &
}?? 
else@@ 
if@@ 
(@@ 
!@@ 
value@@ 
&&@@  "

m_Playable@@# -
.@@- .
GetPlayState@@. :
(@@: ;
)@@; <
!=@@= ?
	PlayState@@@ I
.@@I J
Paused@@J P
)@@P Q
{AA 

m_PlayableBB 
.BB 
PauseBB $
(BB$ %
)BB% &
;BB& '
ifCC 
(CC 
m_ParentMixerCC %
.CC% &
IsValidCC& -
(CC- .
)CC. /
)CC/ 0
m_ParentMixerDD %
.DD% &
SetInputWeightDD& 4
(DD4 5

m_PlayableDD5 ?
,DD? @
$numDDA E
)DDE F
;DDF G
}EE 
	m_StartedGG 
&=GG 
valueGG "
;GG" #
}HH 
}II 	
publicKK 
overrideKK 
voidKK 

EvaluateAtKK '
(KK' (
doubleKK( .
	localTimeKK/ 8
,KK8 9
	FrameDataKK: C
	frameDataKKD M
)KKM N
{LL 	
ifMM 
(MM 
	frameDataMM 
.MM 
timeHeldMM "
)MM" #
{NN 
enableOO 
=OO 
falseOO 
;OO 
returnPP 
;PP 
}QQ 
boolTT 
	forceSeekTT 
=TT 
	frameDataTT &
.TT& '
seekOccurredTT' 3
||TT4 6
	frameDataTT7 @
.TT@ A

timeLoopedTTA K
||TTL N
	frameDataTTO X
.TTX Y
evaluationTypeTTY g
==TTh j
	FrameDataTTk t
.TTt u
EvaluationType	TTu É
.
TTÉ Ñ
Evaluate
TTÑ å
;
TTå ç
ifWW 
(WW 
	localTimeWW 
>WW 
startWW !
+WW" #
durationWW$ ,
-WW- .
m_FinishTailWW/ ;
)WW; <
returnXX 
;XX 
float[[ 
weight[[ 
=[[ 
clip[[ 
.[[  
EvaluateMixIn[[  -
([[- .
	localTime[[. 7
)[[7 8
*[[9 :
clip[[; ?
.[[? @
EvaluateMixOut[[@ N
([[N O
	localTime[[O X
)[[X Y
;[[Y Z
if\\ 
(\\ 
mixer\\ 
.\\ 
IsValid\\ 
(\\ 
)\\ 
)\\  
mixer]] 
.]] 
SetInputWeight]] $
(]]$ %
playable]]% -
,]]- .
weight]]/ 5
)]]5 6
;]]6 7
if`` 
(`` 
!`` 
	m_Started`` 
||`` 
	forceSeek`` '
)``' (
{aa 
doublecc 
clipTimecc 
=cc  !
clipcc" &
.cc& '
ToLocalTimecc' 2
(cc2 3
Mathcc3 7
.cc7 8
Maxcc8 ;
(cc; <
	localTimecc< E
,ccE F
clipccG K
.ccK L
startccL Q
)ccQ R
)ccR S
;ccS T
doubleff 

startDelayff !
=ff" #
Mathff$ (
.ff( )
Maxff) ,
(ff, -
clipff- 1
.ff1 2
startff2 7
-ff8 9
	localTimeff: C
,ffC D
$numffE F
)ffF G
*ffH I
clipffJ N
.ffN O
	timeScaleffO X
;ffX Y
doublegg 
durationLocalgg $
=gg% &
m_Clipgg' -
.gg- .
durationgg. 6
*gg7 8
clipgg9 =
.gg= >
	timeScalegg> G
;ggG H
ifhh 
(hh 

m_Playablehh 
.hh 
IsPlayableOfTypehh /
<hh/ 0
AudioClipPlayablehh0 A
>hhA B
(hhB C
)hhC D
)hhD E
(ii 
(ii 
AudioClipPlayableii '
)ii' (

m_Playableii( 2
)ii2 3
.ii3 4
Seekii4 8
(ii8 9
clipTimeii9 A
,iiA B

startDelayiiC M
,iiM N
durationLocaliiO \
)ii\ ]
;ii] ^
	m_Startedkk 
=kk 
truekk  
;kk  !
}ll 
}mm 	
publicoo 
overrideoo 
voidoo 
	DisableAtoo &
(oo& '
doubleoo' -
	localTimeoo. 7
,oo7 8
doubleoo9 ?
rootDurationoo@ L
,ooL M
	FrameDataooN W
	frameDataooX a
)ooa b
{pp 	
enableqq 
=qq 
falseqq 
;qq 
}rr 	
}ss 
}tt ¥f
hC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\AnimatorBindingCache.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{		 
class 	 
AnimatorBindingCache
 
{ 
public 
const 
string 
TRPlaceHolder )
=* +
$str, 9
;9 :
public 
const 
string 
ScalePlaceholder ,
=- .
$str/ ?
;? @
struct 
AnimatorEntry 
{ 	
public 
int 

animatorID !
;! "
public 
bool 
applyRootMotion '
;' (
public 
bool 
humanoid  
;  !
} 	
class !
AnimatorEntryComparer #
:$ %
IEqualityComparer& 7
<7 8
AnimatorEntry8 E
>E F
{ 	
public 
bool 
Equals 
( 
AnimatorEntry ,
x- .
,. /
AnimatorEntry0 =
y> ?
)? @
{A B
returnC I
xJ K
.K L

animatorIDL V
==W Y
yZ [
.[ \

animatorID\ f
&&g i
xj k
.k l
applyRootMotionl {
==| ~
y	 Ä
.
Ä Å
applyRootMotion
Å ê
&&
ë ì
x
î ï
.
ï ñ
humanoid
ñ û
==
ü °
y
¢ £
.
£ §
humanoid
§ ¨
;
¨ ≠
}
Æ Ø
public 
int 
GetHashCode "
(" #
AnimatorEntry# 0
obj1 4
)4 5
{6 7
return8 >
HashUtility? J
.J K
CombineHashK V
(V W
objW Z
.Z [

animatorID[ e
,e f
objg j
.j k
applyRootMotionk z
.z {
GetHashCode	{ Ü
(
Ü á
)
á à
,
à â
obj
ä ç
.
ç é
humanoid
é ñ
.
ñ ó
GetHashCode
ó ¢
(
¢ £
)
£ §
)
§ •
;
• ¶
}
ß ®
public 
static 
readonly "!
AnimatorEntryComparer# 8
Instance9 A
=B C
newD G!
AnimatorEntryComparerH ]
(] ^
)^ _
;_ `
} 	
readonly   

Dictionary   
<   
AnimatorEntry   )
,  ) *
EditorCurveBinding  + =
[  = >
]  > ?
>  ? @
m_AnimatorCache  A P
=  Q R
new  S V

Dictionary  W a
<  a b
AnimatorEntry  b o
,  o p
EditorCurveBinding	  q É
[
  É Ñ
]
  Ñ Ö
>
  Ö Ü
(
  Ü á#
AnimatorEntryComparer
  á ú
.
  ú ù
Instance
  ù •
)
  • ¶
;
  ¶ ß
readonly!! 

Dictionary!! 
<!! 
AnimationClip!! )
,!!) *
EditorCurveBinding!!+ =
[!!= >
]!!> ?
>!!? @
m_ClipCache!!A L
=!!M N
new!!O R

Dictionary!!S ]
<!!] ^
AnimationClip!!^ k
,!!k l
EditorCurveBinding!!m 
[	!! Ä
]
!!Ä Å
>
!!Å Ç
(
!!Ç É
)
!!É Ñ
;
!!Ñ Ö
private## 
static## 
readonly## 
EditorCurveBinding##  2
[##2 3
]##3 4
kEmptyArray##5 @
=##A B
new##C F
EditorCurveBinding##G Y
[##Y Z
$num##Z [
]##[ \
;##\ ]
private$$ 
static$$ 
readonly$$ 
List$$  $
<$$$ %
EditorCurveBinding$$% 7
>$$7 8
s_BindingScratchPad$$9 L
=$$M N
new$$O R
List$$S W
<$$W X
EditorCurveBinding$$X j
>$$j k
($$k l
$num$$l p
)$$p q
;$$q r
public&&  
AnimatorBindingCache&& #
(&&# $
)&&$ %
{'' 	
AnimationUtility(( 
.(( 
onCurveWasModified(( /
+=((0 2
OnCurveWasModified((3 E
;((E F
})) 	
public++ 
EditorCurveBinding++ !
[++! "
]++" #
GetAnimatorBindings++$ 7
(++7 8

GameObject++8 B

gameObject++C M
)++M N
{,, 	
if-- 
(-- 

gameObject-- 
==-- 
null-- "
)--" #
return.. 
kEmptyArray.. "
;.." #
Animator00 
animator00 
=00 

gameObject00  *
.00* +
GetComponent00+ 7
<007 8
Animator008 @
>00@ A
(00A B
)00B C
;00C D
if11 
(11 
animator11 
==11 
null11  
)11  !
return22 
kEmptyArray22 "
;22" #
AnimatorEntry44 
entry44 
=44  !
new44" %
AnimatorEntry44& 3
(443 4
)444 5
{55 

animatorID66 
=66 
animator66 %
.66% &
GetInstanceID66& 3
(663 4
)664 5
,665 6
applyRootMotion77 
=77  !
animator77" *
.77* +
applyRootMotion77+ :
,77: ;
humanoid88 
=88 
animator88 #
.88# $
isHuman88$ +
}99 
;99 
EditorCurveBinding;; 
[;; 
];;  
result;;! '
=;;( )
null;;* .
;;;. /
if<< 
(<< 
m_AnimatorCache<< 
.<<  
TryGetValue<<  +
(<<+ ,
entry<<, 1
,<<1 2
out<<3 6
result<<7 =
)<<= >
)<<> ?
return== 
result== 
;== 
s_BindingScratchPad?? 
.??  
Clear??  %
(??% &
)??& '
;??' (
varBB 

transformsBB 
=BB 
animatorBB %
.BB% &#
GetComponentsInChildrenBB& =
<BB= >
	TransformBB> G
>BBG H
(BBH I
)BBI J
;BBJ K
foreachCC 
(CC 
varCC 
tCC 
inCC 

transformsCC (
)CC( )
{DD 
ifEE 
(EE 
animatorEE 
.EE 
IsBoneTransformEE ,
(EE, -
tEE- .
)EE. /
)EE/ 0
s_BindingScratchPadFF '
.FF' (
AddFF( +
(FF+ ,
EditorCurveBindingFF, >
.FF> ?

FloatCurveFF? I
(FFI J
AnimationUtilityFFJ Z
.FFZ ["
CalculateTransformPathFF[ q
(FFq r
tFFr s
,FFs t
animatorFFu }
.FF} ~
	transform	FF~ á
)
FFá à
,
FFà â
typeof
FFä ê
(
FFê ë
	Transform
FFë ö
)
FFö õ
,
FFõ ú
TRPlaceHolder
FFù ™
)
FF™ ´
)
FF´ ¨
;
FF¨ ≠
}GG 
varII 
streamBindingsII 
=II  
AnimationUtilityII! 1
.II1 2&
GetAnimationStreamBindingsII2 L
(IIL M
animatorIIM U
.IIU V

gameObjectIIV `
)II` a
;IIa b#
UpdateTransformBindingsJJ #
(JJ# $
streamBindingsJJ$ 2
)JJ2 3
;JJ3 4
s_BindingScratchPadKK 
.KK  
AddRangeKK  (
(KK( )
streamBindingsKK) 7
)KK7 8
;KK8 9
resultMM 
=MM 
newMM 
EditorCurveBindingMM +
[MM+ ,
s_BindingScratchPadMM, ?
.MM? @
CountMM@ E
]MME F
;MMF G
s_BindingScratchPadNN 
.NN  
CopyToNN  &
(NN& '
resultNN' -
)NN- .
;NN. /
m_AnimatorCacheOO 
[OO 
entryOO !
]OO! "
=OO# $
resultOO% +
;OO+ ,
returnPP 
resultPP 
;PP 
}QQ 	
publicSS 
EditorCurveBindingSS !
[SS! "
]SS" #
GetCurveBindingsSS$ 4
(SS4 5
AnimationClipSS5 B
clipSSC G
)SSG H
{TT 	
ifUU 
(UU 
clipUU 
==UU 
nullUU 
)UU 
returnVV 
kEmptyArrayVV "
;VV" #
EditorCurveBindingXX 
[XX 
]XX  
resultXX! '
;XX' (
ifYY 
(YY 
!YY 
m_ClipCacheYY 
.YY 
TryGetValueYY (
(YY( )
clipYY) -
,YY- .
outYY/ 2
resultYY3 9
)YY9 :
)YY: ;
{ZZ 
result[[ 
=[[ 
AnimationMode[[ &
.[[& '
GetCurveBindings[[' 7
([[7 8
clip[[8 <
)[[< =
;[[= >#
UpdateTransformBindings\\ '
(\\' (
result\\( .
)\\. /
;\\/ 0
m_ClipCache]] 
[]] 
clip]]  
]]]  !
=]]" #
result]]$ *
;]]* +
}^^ 
return`` 
result`` 
;`` 
}aa 	
privatecc 
staticcc 
voidcc #
UpdateTransformBindingscc 3
(cc3 4
EditorCurveBindingcc4 F
[ccF G
]ccG H
bindingsccI Q
)ccQ R
{dd 	
foree 
(ee 
intee 
iee 
=ee 
$numee 
;ee 
iee 
<ee 
bindingsee  (
.ee( )
Lengthee) /
;ee/ 0
iee1 2
++ee2 4
)ee4 5
{ff 
vargg 
bindinggg 
=gg 
bindingsgg &
[gg& '
igg' (
]gg( )
;gg) *
ifhh 
(hh %
AnimationPreviewUtilitieshh -
.hh- .
IsRootMotionhh. :
(hh: ;
bindinghh; B
)hhB C
)hhC D
{ii 
bindingjj 
.jj 
typejj  
=jj! "
typeofjj# )
(jj) *
	Transformjj* 3
)jj3 4
;jj4 5
bindingkk 
.kk 
propertyNamekk (
=kk) *
TRPlaceHolderkk+ 8
;kk8 9
}ll 
elsemm 
ifmm 
(mm 
typeofmm 
(mm  
	Transformmm  )
)mm) *
.mm* +
IsAssignableFrommm+ ;
(mm; <
bindingmm< C
.mmC D
typemmD H
)mmH I
&&mmJ L
(mmM N
bindingmmN U
.mmU V
propertyNamemmV b
.mmb c

StartsWithmmc m
(mmm n
$str	mmn Ä
)
mmÄ Å
||
mmÇ Ñ
binding
mmÖ å
.
mmå ç
propertyName
mmç ô
.
mmô ö

StartsWith
mmö §
(
mm§ •
$str
mm• ∑
)
mm∑ ∏
)
mm∏ π
)
mmπ ∫
{nn 
bindingoo 
.oo 
propertyNameoo (
=oo) *
TRPlaceHolderoo+ 8
;oo8 9
}pp 
elseqq 
ifqq 
(qq 
typeofqq 
(qq  
	Transformqq  )
)qq) *
.qq* +
IsAssignableFromqq+ ;
(qq; <
bindingqq< C
.qqC D
typeqqD H
)qqH I
&&qqJ L
bindingqqM T
.qqT U
propertyNameqqU a
.qqa b

StartsWithqqb l
(qql m
$strqqm |
)qq| }
)qq} ~
{rr 
bindingss 
.ss 
propertyNamess (
=ss) *
ScalePlaceholderss+ ;
;ss; <
}tt 
bindingsuu 
[uu 
iuu 
]uu 
=uu 
bindinguu %
;uu% &
}vv 
}ww 	
publicyy 
voidyy 
Clearyy 
(yy 
)yy 
{zz 	
m_AnimatorCache{{ 
.{{ 
Clear{{ !
({{! "
){{" #
;{{# $
m_ClipCache|| 
.|| 
Clear|| 
(|| 
)|| 
;||  
}}} 	
void 
OnCurveWasModified 
(  
AnimationClip  -
clip. 2
,2 3
EditorCurveBinding4 F
bindingG N
,N O
AnimationUtilityP `
.` a
CurveModifiedTypea r
modifications 
)	 Ä
{
ÄÄ 	
m_ClipCache
ÅÅ 
.
ÅÅ 
Remove
ÅÅ 
(
ÅÅ 
clip
ÅÅ #
)
ÅÅ# $
;
ÅÅ$ %
}
ÇÇ 	
}
ÉÉ 
}ÑÑ ‚
lC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Activation\ActivationPlayableAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
DisplayName 
( 
$str "
)" #
]# $
class 	#
ActivationPlayableAsset
 !
:" #
PlayableAsset$ 1
,1 2
ITimelineClipAsset3 E
{ 
public 
ClipCaps 
clipCaps  
{! "
get# &
{' (
return) /
ClipCaps0 8
.8 9
None9 =
;= >
}? @
}A B
public 
override 
Playable  
CreatePlayable! /
(/ 0
PlayableGraph0 =
graph> C
,C D

GameObjectE O
goP R
)R S
{ 	
return 
Playable 
. 
Create "
(" #
graph# (
)( )
;) *
} 	
} 
} ˘<
jC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\TimelineClipExtensions.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

static 
class "
TimelineClipExtensions .
{		 
static

 
readonly

 
string

 $
k_UndoSetParentTrackText

 7
=

8 9
$str

: E
;

E F
public 
static 
void 
MoveToTrack &
(& '
this' +
TimelineClip, 8
clip9 =
,= >

TrackAsset? I
destinationTrackJ Z
)Z [
{ 	
if 
( 
clip 
== 
null 
) 
{ 
throw 
new !
ArgumentNullException /
(/ 0
$"0 2
$str2 F
{F G
nameofG M
(M N
MoveToTrackN Y
)Y Z
}Z [
$str[ k
"k l
)l m
;m n
} 
if 
( 
destinationTrack  
==! #
null$ (
)( )
{ 
throw 
new !
ArgumentNullException /
(/ 0
$str0 [
)[ \
;\ ]
}   

TrackAsset"" 
parentTrack"" "
=""# $
clip""% )
."") *
GetParentTrack""* 8
(""8 9
)""9 :
;"": ;
Object## 
asset## 
=## 
clip## 
.##  
asset##  %
;##% &
if&& 
(&& 
asset&& 
==&& 
null&& 
)&& 
{'' 
throw(( 
new(( %
InvalidOperationException(( 3
(((3 4
$str	((4 í
)
((í ì
;
((ì î
})) 
if++ 
(++ 
parentTrack++ 
==++ 
destinationTrack++ /
)++/ 0
{,, 
throw-- 
new-- %
InvalidOperationException-- 3
(--3 4
$"--4 6
$str--6 Q
{--Q R
destinationTrack--R b
.--b c
name--c g
}--g h
$str--h i
"--i j
)--j k
;--k l
}.. 
if00 
(00 
!00 
destinationTrack00 !
.00! "
ValidateClipType00" 2
(002 3
asset003 8
.008 9
GetType009 @
(00@ A
)00A B
)00B C
)00C D
{11 
throw22 
new22 %
InvalidOperationException22 3
(223 4
$"224 6
$str226 <
{22< =
destinationTrack22= M
.22M N
name22N R
}22R S
$str22S q
{22q r
clip22r v
.22v w
GetType22w ~
(22~ 
)	22 Ä
.
22Ä Å
Name
22Å Ö
}
22Ö Ü
$str
22Ü á
"
22á à
)
22à â
;
22â ä
}33 
MoveToTrack_Impl55 
(55 
clip55 !
,55! "
destinationTrack55# 3
,553 4
asset555 :
,55: ;
parentTrack55< G
)55G H
;55H I
}66 	
public@@ 
static@@ 
bool@@ 
TryMoveToTrack@@ )
(@@) *
this@@* .
TimelineClip@@/ ;
clip@@< @
,@@@ A

TrackAsset@@B L
destinationTrack@@M ]
)@@] ^
{AA 	
ifBB 
(BB 
clipBB 
==BB 
nullBB 
)BB 
{CC 
throwDD 
newDD !
ArgumentNullExceptionDD /
(DD/ 0
$"DD0 2
$strDD2 F
{DDF G
nameofDDG M
(DDM N
TryMoveToTrackDDN \
)DD\ ]
}DD] ^
$strDD^ n
"DDn o
)DDo p
;DDp q
}EE 
ifGG 
(GG 
destinationTrackGG  
==GG! #
nullGG$ (
)GG( )
{HH 
throwII 
newII !
ArgumentNullExceptionII /
(II/ 0
$strII0 \
)II\ ]
;II] ^
}JJ 

TrackAssetLL 
parentTrackLL "
=LL# $
clipLL% )
.LL) *
GetParentTrackLL* 8
(LL8 9
)LL9 :
;LL: ;
ObjectMM 
assetMM 
=MM 
clipMM 
.MM  
assetMM  %
;MM% &
ifPP 
(PP 
assetPP 
==PP 
nullPP 
)PP 
{QQ 
returnRR 
falseRR 
;RR 
}SS 
ifUU 
(UU 
parentTrackUU 
!=UU 
destinationTrackUU /
)UU/ 0
{VV 
ifWW 
(WW 
!WW 
destinationTrackWW %
.WW% &
ValidateClipTypeWW& 6
(WW6 7
assetWW7 <
.WW< =
GetTypeWW= D
(WWD E
)WWE F
)WWF G
)WWG H
{XX 
returnYY 
falseYY  
;YY  !
}ZZ 
MoveToTrack_Impl\\  
(\\  !
clip\\! %
,\\% &
destinationTrack\\' 7
,\\7 8
asset\\9 >
,\\> ?
parentTrack\\@ K
)\\K L
;\\L M
return^^ 
true^^ 
;^^ 
}__ 
returnaa 
falseaa 
;aa 
}bb 	
staticdd 
voiddd 
MoveToTrack_Impldd $
(dd$ %
TimelineClipdd% 1
clipdd2 6
,dd6 7

TrackAssetdd8 B
destinationTrackddC S
,ddS T
ObjectddU [
assetdd\ a
,dda b

TrackAssetddc m
parentTrackddn y
)ddy z
{ee 	
TimelineUndoff 
.ff 
PushUndoff !
(ff! "
assetff" '
,ff' ($
k_UndoSetParentTrackTextff) A
)ffA B
;ffB C
ifgg 
(gg 
parentTrackgg 
!=gg 
nullgg #
)gg# $
{hh 
TimelineUndoii 
.ii 
PushUndoii %
(ii% &
parentTrackii& 1
,ii1 2$
k_UndoSetParentTrackTextii3 K
)iiK L
;iiL M
}jj 
TimelineUndoll 
.ll 
PushUndoll !
(ll! "
destinationTrackll" 2
,ll2 3$
k_UndoSetParentTrackTextll4 L
)llL M
;llM N
clipnn 
.nn #
SetParentTrack_Internalnn (
(nn( )
destinationTracknn) 9
)nn9 :
;nn: ;
ifpp 
(pp 
parentTrackpp 
==pp 
nullpp #
)pp# $
{qq #
TimelineCreateUtilitiesrr '
.rr' (
SaveAssetIntoObjectrr( ;
(rr; <
assetrr< A
,rrA B
destinationTrackrrC S
)rrS T
;rrT U
}ss 
elsett 
iftt 
(tt 
parentTracktt  
.tt  !
timelineAssettt! .
!=tt/ 1
destinationTracktt2 B
.ttB C
timelineAssetttC P
)ttP Q
{uu #
TimelineCreateUtilitiesvv '
.vv' (!
RemoveAssetFromObjectvv( =
(vv= >
assetvv> C
,vvC D
parentTrackvvE P
)vvP Q
;vvQ R#
TimelineCreateUtilitiesww '
.ww' (
SaveAssetIntoObjectww( ;
(ww; <
assetww< A
,wwA B
destinationTrackwwC S
)wwS T
;wwT U
}xx 
}yy 	
}zz 
}{{ ¨[
[C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Events\MarkerList.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
struct 


MarkerList 
: *
ISerializationCallbackReceiver 6
{		 
[

 	
SerializeField

	 
,

 
HideInInspector

 (
]

( )
List

* .
<

. /
ScriptableObject

/ ?
>

? @
	m_Objects

A J
;

J K
[ 	
HideInInspector	 
, 
NonSerialized '
]' (
List) -
<- .
IMarker. 5
>5 6
m_Cache7 >
;> ?
bool 
m_CacheDirty 
; 
bool 
m_HasNotifications 
;  
public 
List 
< 
IMarker 
> 
markers $
{ 	
get 
{ 

BuildCache 
( 
) 
; 
return 
m_Cache 
; 
} 
} 	
public 

MarkerList 
( 
int 
capacity &
)& '
{ 	
	m_Objects 
= 
new 
List  
<  !
ScriptableObject! 1
>1 2
(2 3
capacity3 ;
); <
;< =
m_Cache 
= 
new 
List 
< 
IMarker &
>& '
(' (
capacity( 0
)0 1
;1 2
m_CacheDirty 
= 
true 
;  
m_HasNotifications 
=  
false! &
;& '
} 	
public   
void   
Add   
(   
ScriptableObject   (
item  ) -
)  - .
{!! 	
if"" 
("" 
item"" 
=="" 
null"" 
)"" 
return## 
;## 
	m_Objects%% 
.%% 
Add%% 
(%% 
item%% 
)%% 
;%%  
m_CacheDirty&& 
=&& 
true&& 
;&&  
}'' 	
public)) 
bool)) 
Remove)) 
()) 
IMarker)) "
item))# '
)))' (
{** 	
if++ 
(++ 
!++ 
(++ 
item++ 
is++ 
ScriptableObject++ *
)++* +
)+++ ,
throw,, 
new,, %
InvalidOperationException,, 3
(,,3 4
$str,,4 ^
),,^ _
;,,_ `
return-- 
Remove-- 
(-- 
(-- 
ScriptableObject-- +
)--+ ,
item--, 0
,--0 1
item--2 6
.--6 7
parent--7 =
.--= >
timelineAsset--> K
,--K L
item--M Q
.--Q R
parent--R X
)--X Y
;--Y Z
}.. 	
public00 
bool00 
Remove00 
(00 
ScriptableObject00 +
item00, 0
,000 1
TimelineAsset002 ?
timelineAsset00@ M
,00M N
PlayableAsset00O \
thingToDirty00] i
)00i j
{11 	
if22 
(22 
!22 
	m_Objects22 
.22 
Contains22 #
(22# $
item22$ (
)22( )
)22) *
return22+ 1
false222 7
;227 8
TimelineUndo44 
.44 
PushUndo44 !
(44! "
thingToDirty44" .
,44. /
$str440 ?
)44? @
;44@ A
	m_Objects55 
.55 
Remove55 
(55 
item55 !
)55! "
;55" #
m_CacheDirty66 
=66 
true66 
;66  
TimelineUndo77 
.77 
PushDestroyUndo77 (
(77( )
timelineAsset77) 6
,776 7
thingToDirty778 D
,77D E
item77F J
)77J K
;77K L
return88 
true88 
;88 
}99 	
public;; 
void;; 
Clear;; 
(;; 
);; 
{<< 	
	m_Objects== 
.== 
Clear== 
(== 
)== 
;== 
m_CacheDirty>> 
=>> 
true>> 
;>>  
}?? 	
publicAA 
boolAA 
ContainsAA 
(AA 
ScriptableObjectAA -
itemAA. 2
)AA2 3
{BB 	
returnCC 
	m_ObjectsCC 
.CC 
ContainsCC %
(CC% &
itemCC& *
)CC* +
;CC+ ,
}DD 	
publicFF 
IEnumerableFF 
<FF 
IMarkerFF "
>FF" #

GetMarkersFF$ .
(FF. /
)FF/ 0
{GG 	
returnHH 
markersHH 
;HH 
}II 	
publicKK 
intKK 
CountKK 
{LL 	
getMM 
{MM 
returnMM 
markersMM  
.MM  !
CountMM! &
;MM& '
}MM( )
}NN 	
publicPP 
IMarkerPP 
thisPP 
[PP 
intPP 
idxPP  #
]PP# $
{QQ 	
getRR 
{SS 
returnTT 
markersTT 
[TT 
idxTT "
]TT" #
;TT# $
}UU 
}VV 	
publicXX 
ListXX 
<XX 
ScriptableObjectXX $
>XX$ %
GetRawMarkerListXX& 6
(XX6 7
)XX7 8
{YY 	
returnZZ 
	m_ObjectsZZ 
;ZZ 
}[[ 	
public]] 
IMarker]] 
CreateMarker]] #
(]]# $
Type]]$ (
type]]) -
,]]- .
double]]/ 5
time]]6 :
,]]: ;

TrackAsset]]< F
owner]]G L
)]]L M
{^^ 	
if__ 
(__ 
!__ 
typeof__ 
(__ 
ScriptableObject__ (
)__( )
.__) *
IsAssignableFrom__* :
(__: ;
type__; ?
)__? @
||__A C
!__D E
typeof__E K
(__K L
IMarker__L S
)__S T
.__T U
IsAssignableFrom__U e
(__e f
type__f j
)__j k
)__k l
{`` 
throwaa 
newaa %
InvalidOperationExceptionaa 3
(aa3 4
$strbb e
)bbe f
;bbf g
}cc 
ifdd 
(dd 
!dd 
ownerdd 
.dd !
supportsNotificationsdd ,
&&dd- /
typeofdd0 6
(dd6 7
INotificationdd7 D
)ddD E
.ddE F
IsAssignableFromddF V
(ddV W
typeddW [
)dd[ \
)dd\ ]
{ee 
throwff 
newff %
InvalidOperationExceptionff 3
(ff3 4
$str	gg Ç
)
ggÇ É
;
ggÉ Ñ
}hh 
varjj 
markerSOjj 
=jj 
ScriptableObjectjj +
.jj+ ,
CreateInstancejj, :
(jj: ;
typejj; ?
)jj? @
;jj@ A
varkk 
markerkk 
=kk 
(kk 
IMarkerkk !
)kk! "
markerSOkk" *
;kk* +
markerll 
.ll 
timell 
=ll 
timell 
;ll #
TimelineCreateUtilitiesnn #
.nn# $
SaveAssetIntoObjectnn$ 7
(nn7 8
markerSOnn8 @
,nn@ A
ownernnB G
)nnG H
;nnH I
TimelineUndooo 
.oo %
RegisterCreatedObjectUndooo 2
(oo2 3
markerSOoo3 ;
,oo; <
$stroo= F
+ooG H
typeooI M
.ooM N
NameooN R
)ooR S
;ooS T
TimelineUndopp 
.pp 
PushUndopp !
(pp! "
ownerpp" '
,pp' (
$strpp) 2
+pp3 4
typepp5 9
.pp9 :
Namepp: >
)pp> ?
;pp? @
Addrr 
(rr 
markerSOrr 
)rr 
;rr 
markerss 
.ss 

Initializess 
(ss 
ownerss #
)ss# $
;ss$ %
returnuu 
markeruu 
;uu 
}vv 	
publicxx 
boolxx 
HasNotificationsxx $
(xx$ %
)xx% &
{yy 	

BuildCachezz 
(zz 
)zz 
;zz 
return{{ 
m_HasNotifications{{ %
;{{% &
}|| 	
void~~ *
ISerializationCallbackReceiver~~ +
.~~+ ,
OnBeforeSerialize~~, =
(~~= >
)~~> ?
{ 	
}
ÄÄ 	
void
ÇÇ ,
ISerializationCallbackReceiver
ÇÇ +
.
ÇÇ+ , 
OnAfterDeserialize
ÇÇ, >
(
ÇÇ> ?
)
ÇÇ? @
{
ÉÉ 	
for
ÖÖ 
(
ÖÖ 
int
ÖÖ 
i
ÖÖ 
=
ÖÖ 
	m_Objects
ÖÖ "
.
ÖÖ" #
Count
ÖÖ# (
-
ÖÖ) *
$num
ÖÖ+ ,
;
ÖÖ, -
i
ÖÖ. /
>=
ÖÖ0 2
$num
ÖÖ3 4
;
ÖÖ4 5
i
ÖÖ6 7
--
ÖÖ7 9
)
ÖÖ9 :
{
ÜÜ 
object
áá 
o
áá 
=
áá 
	m_Objects
áá $
[
áá$ %
i
áá% &
]
áá& '
;
áá' (
if
àà 
(
àà 
o
àà 
==
àà 
null
àà 
)
àà 
{
ââ 
Debug
ää 
.
ää 

LogWarning
ää $
(
ää$ %
$str
ää% e
)
ääe f
;
ääf g
	m_Objects
ãã 
.
ãã 
RemoveAt
ãã &
(
ãã& '
i
ãã' (
)
ãã( )
;
ãã) *
}
åå 
}
çç 
m_CacheDirty
èè 
=
èè 
true
èè 
;
èè  
}
êê 	
void
íí 

BuildCache
íí 
(
íí 
)
íí 
{
ìì 	
if
îî 
(
îî 
m_CacheDirty
îî 
)
îî 
{
ïï 
m_Cache
ññ 
=
ññ 
new
ññ 
List
ññ "
<
ññ" #
IMarker
ññ# *
>
ññ* +
(
ññ+ ,
	m_Objects
ññ, 5
.
ññ5 6
Count
ññ6 ;
)
ññ; <
;
ññ< = 
m_HasNotifications
óó "
=
óó# $
false
óó% *
;
óó* +
foreach
òò 
(
òò 
var
òò 
o
òò 
in
òò !
	m_Objects
òò" +
)
òò+ ,
{
ôô 
if
öö 
(
öö 
o
öö 
!=
öö 
null
öö !
)
öö! "
{
õõ 
m_Cache
úú 
.
úú  
Add
úú  #
(
úú# $
o
úú$ %
as
úú& (
IMarker
úú) 0
)
úú0 1
;
úú1 2
if
ùù 
(
ùù 
o
ùù 
is
ùù  
INotification
ùù! .
)
ùù. /
{
ûû  
m_HasNotifications
üü .
=
üü/ 0
true
üü1 5
;
üü5 6
}
†† 
}
°° 
}
¢¢ 
m_CacheDirty
§§ 
=
§§ 
false
§§ $
;
§§$ %
}
•• 
}
¶¶ 	
}
ßß 
}®® —8
`C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\TimelineUndo.cs
	namespace

 	
UnityEngine


 
.

 
Timeline

 
{ 
static 

class 
TimelineUndo 
{ 
public 
static 
void 
PushDestroyUndo *
(* +
TimelineAsset+ 8
timeline9 A
,A B
ObjectC I
thingToDirtyJ V
,V W
ObjectX ^
objectToDestroy_ n
)n o
{ 	
if 
( 
objectToDestroy 
==  "
null# '
||( *
!+ ,
DisableUndoGuard, <
.< =

enableUndo= G
)G H
return 
; 
if 
( 
thingToDirty 
!= 
null  $
)$ %
EditorUtility 
. 
SetDirty &
(& '
thingToDirty' 3
)3 4
;4 5
if 
( 
timeline 
!= 
null  
)  !
EditorUtility 
. 
SetDirty &
(& '
timeline' /
)/ 0
;0 1
Undo 
. "
DestroyObjectImmediate '
(' (
objectToDestroy( 7
)7 8
;8 9
} 	
[!! 	
Conditional!!	 
(!! 
$str!! #
)!!# $
]!!$ %
public"" 
static"" 
void"" 
PushUndo"" #
(""# $
Object""$ *
[""* +
]""+ ,
thingsToDirty""- :
,"": ;
string""< B
	operation""C L
)""L M
{## 	
if%% 
(%% 
thingsToDirty%% 
==%%  
null%%! %
||%%& (
!%%) *
DisableUndoGuard%%* :
.%%: ;

enableUndo%%; E
)%%E F
return&& 
;&& 
for(( 
((( 
var(( 
i(( 
=(( 
$num(( 
;(( 
i(( 
<(( 
thingsToDirty((  -
.((- .
Length((. 4
;((4 5
i((6 7
++((7 9
)((9 :
{)) 
if** 
(** 
thingsToDirty** !
[**! "
i**" #
]**# $
is**% '

TrackAsset**( 2
track**3 8
)**8 9
track++ 
.++ 
	MarkDirty++ #
(++# $
)++$ %
;++% &
EditorUtility,, 
.,, 
SetDirty,, &
(,,& '
thingsToDirty,,' 4
[,,4 5
i,,5 6
],,6 7
),,7 8
;,,8 9
}-- 
Undo.. 
... &
RegisterCompleteObjectUndo.. +
(..+ ,
thingsToDirty.., 9
,..9 :
UndoName..; C
(..C D
	operation..D M
)..M N
)..N O
;..O P
}00 	
[22 	
Conditional22	 
(22 
$str22 #
)22# $
]22$ %
public33 
static33 
void33 
PushUndo33 #
(33# $
Object33$ *
thingToDirty33+ 7
,337 8
string339 ?
	operation33@ I
)33I J
{44 	
if66 
(66 
thingToDirty66 
!=66 
null66  $
&&66% '
DisableUndoGuard66( 8
.668 9

enableUndo669 C
)66C D
{77 
var88 
track88 
=88 
thingToDirty88 (
as88) +

TrackAsset88, 6
;886 7
if99 
(99 
track99 
!=99 
null99 !
)99! "
track:: 
.:: 
	MarkDirty:: #
(::# $
)::$ %
;::% &
EditorUtility<< 
.<< 
SetDirty<< &
(<<& '
thingToDirty<<' 3
)<<3 4
;<<4 5
Undo== 
.== &
RegisterCompleteObjectUndo== /
(==/ 0
thingToDirty==0 <
,==< =
UndoName==> F
(==F G
	operation==G P
)==P Q
)==Q R
;==R S
}>> 
}@@ 	
[BB 	
ConditionalBB	 
(BB 
$strBB #
)BB# $
]BB$ %
publicCC 
staticCC 
voidCC %
RegisterCreatedObjectUndoCC 4
(CC4 5
ObjectCC5 ;
thingCreatedCC< H
,CCH I
stringCCJ P
	operationCCQ Z
)CCZ [
{DD 	
ifFF 
(FF 
DisableUndoGuardFF  
.FF  !

enableUndoFF! +
)FF+ ,
{GG 
UndoHH 
.HH %
RegisterCreatedObjectUndoHH .
(HH. /
thingCreatedHH/ ;
,HH; <
UndoNameHH= E
(HHE F
	operationHHF O
)HHO P
)HHP Q
;HHQ R
}II 
}KK 	
privateMM 
staticMM 
stringMM 
UndoNameMM &
(MM& '
stringMM' -
nameMM. 2
)MM2 3
=>MM4 6
$strMM7 B
+MMC D
nameMME I
;MMI J
internalPP 
structPP 
DisableUndoGuardPP (
:PP) *
IDisposablePP+ 6
{QQ 	
internalRR 
staticRR 
boolRR  

enableUndoRR! +
=RR, -
trueRR. 2
;RR2 3
staticSS 
readonlySS 
StackSS !
<SS! "
boolSS" &
>SS& '
m_UndoStateStackSS( 8
=SS9 :
newSS; >
StackSS? D
<SSD E
boolSSE I
>SSI J
(SSJ K
)SSK L
;SSL M
boolTT 

m_DisposedTT 
;TT 
publicUU 
DisableUndoGuardUU #
(UU# $
boolUU$ (
disableUU) 0
)UU0 1
{VV 

m_DisposedWW 
=WW 
falseWW "
;WW" #
m_UndoStateStackXX  
.XX  !
PushXX! %
(XX% &

enableUndoXX& 0
)XX0 1
;XX1 2

enableUndoYY 
=YY 
!YY 
disableYY %
;YY% &
}ZZ 
public\\ 
void\\ 
Dispose\\ 
(\\  
)\\  !
{]] 
if^^ 
(^^ 
!^^ 

m_Disposed^^ 
)^^  
{__ 
if`` 
(`` 
m_UndoStateStack`` (
.``( )
Count``) .
==``/ 1
$num``2 3
)``3 4
{aa 
Debugbb 
.bb 
LogErrorbb &
(bb& '
$strbb' I
)bbI J
;bbJ K

enableUndocc "
=cc# $
truecc% )
;cc) *
returndd 
;dd 
}ee 

enableUndoff 
=ff  
m_UndoStateStackff! 1
.ff1 2
Popff2 5
(ff5 6
)ff6 7
;ff7 8

m_Disposedgg 
=gg  
truegg! %
;gg% &
}hh 
}ii 
}jj 	
}ll 
}mm ≠Q
kC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Playables\ParticleControlPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public		 

class		 #
ParticleControlPlayable		 (
:		) *
PlayableBehaviour		+ <
{

 
const 
float 

kUnsetTime 
=  
float! &
.& '
MaxValue' /
;/ 0
float 
m_LastPlayableTime  
=! "

kUnsetTime# -
;- .
float 
m_LastParticleTime  
=! "

kUnsetTime# -
;- .
uint 
m_RandomSeed 
= 
$num 
; 
public 
static 
ScriptPlayable $
<$ %#
ParticleControlPlayable% <
>< =
Create> D
(D E
PlayableGraphE R
graphS X
,X Y
ParticleSystemZ h
	componenti r
,r s
uintt x

randomSeed	y É
)
É Ñ
{ 	
if 
( 
	component 
== 
null !
)! "
return 
ScriptPlayable %
<% &#
ParticleControlPlayable& =
>= >
.> ?
Null? C
;C D
var 
handle 
= 
ScriptPlayable '
<' (#
ParticleControlPlayable( ?
>? @
.@ A
CreateA G
(G H
graphH M
)M N
;N O
handle 
. 
GetBehaviour 
(  
)  !
.! "

Initialize" ,
(, -
	component- 6
,6 7

randomSeed8 B
)B C
;C D
return 
handle 
; 
}   	
public%% 
ParticleSystem%% 
particleSystem%% ,
{%%- .
get%%/ 2
;%%2 3
private%%4 ;
set%%< ?
;%%? @
}%%A B
public,, 
void,, 

Initialize,, 
(,, 
ParticleSystem,, -
ps,,. 0
,,,0 1
uint,,2 6

randomSeed,,7 A
),,A B
{-- 	
m_RandomSeed.. 
=.. 
Math.. 
...  
Max..  #
(..# $
$num..$ %
,..% &

randomSeed..' 1
)..1 2
;..2 3
particleSystem// 
=// 
ps// 
;//  
SetRandomSeed00 
(00 
particleSystem00 (
,00( )
m_RandomSeed00* 6
)006 7
;007 8
if33 
(33 
!33 
Application33 
.33 
	isPlaying33 &
&&33' )
UnityEditor33* 5
.335 6
PrefabUtility336 C
.33C D"
IsPartOfPrefabInstance33D Z
(33Z [
ps33[ ]
)33] ^
)33^ _
UnityEditor44 
.44 
PrefabUtility44 )
.44) *!
prefabInstanceUpdated44* ?
+=44@ B
OnPrefabUpdated44C R
;44R S
}66 	
public== 
override== 
void== 
OnPlayableDestroy== .
(==. /
Playable==/ 7
playable==8 @
)==@ A
{>> 	
if?? 
(?? 
!?? 
Application?? 
.?? 
	isPlaying?? &
)??& '
UnityEditor@@ 
.@@ 
PrefabUtility@@ )
.@@) *!
prefabInstanceUpdated@@* ?
-=@@@ B
OnPrefabUpdated@@C R
;@@R S
}AA 	
voidCC 
OnPrefabUpdatedCC 
(CC 

GameObjectCC '
goCC( *
)CC* +
{DD 	
ifFF 
(FF 
UnityEditorFF 
.FF 
PrefabUtilityFF )
.FF) *
GetRootGameObjectFF* ;
(FF; <
particleSystemFF< J
)FFJ K
==FFL N
goFFO Q
)FFQ R
m_LastPlayableTimeGG "
=GG# $

kUnsetTimeGG% /
;GG/ 0
}HH 	
staticLL 
voidLL 
SetRandomSeedLL !
(LL! "
ParticleSystemLL" 0
particleSystemLL1 ?
,LL? @
uintLLA E

randomSeedLLF P
)LLP Q
{MM 	
ifNN 
(NN 
particleSystemNN 
==NN !
nullNN" &
)NN& '
returnOO 
;OO 
particleSystemQQ 
.QQ 
StopQQ 
(QQ  
trueQQ  $
,QQ$ %&
ParticleSystemStopBehaviorQQ& @
.QQ@ A 
StopEmittingAndClearQQA U
)QQU V
;QQV W
ifRR 
(RR 
particleSystemRR 
.RR 
useAutoRandomSeedRR 0
)RR0 1
{SS 
particleSystemTT 
.TT 
useAutoRandomSeedTT 0
=TT1 2
falseTT3 8
;TT8 9
particleSystemUU 
.UU 

randomSeedUU )
=UU* +

randomSeedUU, 6
;UU6 7
}VV 
forXX 
(XX 
intXX 
iXX 
=XX 
$numXX 
;XX 
iXX 
<XX 
particleSystemXX  .
.XX. /
subEmittersXX/ :
.XX: ;
subEmittersCountXX; K
;XXK L
iXXM N
++XXN P
)XXP Q
{YY 
SetRandomSeedZZ 
(ZZ 
particleSystemZZ ,
.ZZ, -
subEmittersZZ- 8
.ZZ8 9
GetSubEmitterSystemZZ9 L
(ZZL M
iZZM N
)ZZN O
,ZZO P
++ZZQ S

randomSeedZZS ]
)ZZ] ^
;ZZ^ _
}[[ 
}\\ 	
publiccc 
overridecc 
voidcc 
PrepareFramecc )
(cc) *
Playablecc* 2
playablecc3 ;
,cc; <
	FrameDatacc= F
dataccG K
)ccK L
{dd 	
ifee 
(ee 
particleSystemee 
==ee !
nullee" &
||ee' )
!ee* +
particleSystemee+ 9
.ee9 :

gameObjectee: D
.eeD E
activeInHierarchyeeE V
)eeV W
{ff 
m_LastPlayableTimehh "
=hh# $

kUnsetTimehh% /
;hh/ 0
returnii 
;ii 
}jj 
varll 
timell 
=ll 
(ll 
floatll 
)ll 
playablell &
.ll& '
GetTimell' .
(ll. /
)ll/ 0
;ll0 1
varmm 
particleTimemm 
=mm 
particleSystemmm -
.mm- .
timemm. 2
;mm2 3
ifpp 
(pp 
m_LastPlayableTimepp "
>pp# $
timepp% )
||pp* ,
!pp- .
Mathfpp. 3
.pp3 4
Approximatelypp4 A
(ppA B
particleTimeppB N
,ppN O
m_LastParticleTimeppP b
)ppb c
)ppc d
Simulateqq 
(qq 
timeqq 
,qq 
trueqq #
)qq# $
;qq$ %
elserr 
ifrr 
(rr 
m_LastPlayableTimerr '
<rr( )
timerr* .
)rr. /
Simulatess 
(ss 
timess 
-ss 
m_LastPlayableTimess  2
,ss2 3
falsess4 9
)ss9 :
;ss: ;
m_LastPlayableTimeuu 
=uu  
timeuu! %
;uu% &
m_LastParticleTimevv 
=vv  
particleSystemvv! /
.vv/ 0
timevv0 4
;vv4 5
}ww 	
public~~ 
override~~ 
void~~ 
OnBehaviourPlay~~ ,
(~~, -
Playable~~- 5
playable~~6 >
,~~> ?
	FrameData~~@ I
info~~J N
)~~N O
{ 	 
m_LastPlayableTime
ÄÄ 
=
ÄÄ  

kUnsetTime
ÄÄ! +
;
ÄÄ+ ,
}
ÅÅ 	
public
àà 
override
àà 
void
àà 
OnBehaviourPause
àà -
(
àà- .
Playable
àà. 6
playable
àà7 ?
,
àà? @
	FrameData
ààA J
info
ààK O
)
ààO P
{
ââ 	 
m_LastPlayableTime
ää 
=
ää  

kUnsetTime
ää! +
;
ää+ ,
}
ãã 	
private
çç 
void
çç 
Simulate
çç 
(
çç 
float
çç #
time
çç$ (
,
çç( )
bool
çç* .
restart
çç/ 6
)
çç6 7
{
éé 	
const
èè 
bool
èè 
withChildren
èè #
=
èè$ %
false
èè& +
;
èè+ ,
const
êê 
bool
êê 
fixedTimeStep
êê $
=
êê% &
false
êê' ,
;
êê, -
float
ëë 
maxTime
ëë 
=
ëë 
Time
ëë  
.
ëë  !
maximumDeltaTime
ëë! 1
;
ëë1 2
if
ìì 
(
ìì 
restart
ìì 
)
ìì 
particleSystem
îî 
.
îî 
Simulate
îî '
(
îî' (
$num
îî( )
,
îî) *
withChildren
îî+ 7
,
îî7 8
true
îî9 =
,
îî= >
fixedTimeStep
îî? L
)
îîL M
;
îîM N
while
òò 
(
òò 
time
òò 
>
òò 
maxTime
òò !
)
òò! "
{
ôô 
particleSystem
öö 
.
öö 
Simulate
öö '
(
öö' (
maxTime
öö( /
,
öö/ 0
withChildren
öö1 =
,
öö= >
false
öö? D
,
ööD E
fixedTimeStep
ööF S
)
ööS T
;
ööT U
time
õõ 
-=
õõ 
maxTime
õõ 
;
õõ  
}
úú 
if
ûû 
(
ûû 
time
ûû 
>
ûû 
$num
ûû 
)
ûû 
particleSystem
üü 
.
üü 
Simulate
üü '
(
üü' (
time
üü( ,
,
üü, -
withChildren
üü. :
,
üü: ;
false
üü< A
,
üüA B
fixedTimeStep
üüC P
)
üüP Q
;
üüQ R
}
†† 	
}
°° 
}¢¢ Üù
jC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Animation\AnimationPlayableAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[

 
System

 
.

 
Serializable

 
,

 

NotKeyable

 $
]

$ %
public 

partial 
class "
AnimationPlayableAsset /
:0 1
PlayableAsset2 ?
,? @
ITimelineClipAssetA S
,S T
IPropertyPreviewU e
{ 
public 
enum 
LoopMode 
{ 	
[ 
Tooltip 
( 
$str O
)O P
]P Q
UseSourceAsset 
= 
$num 
, 
[ 
Tooltip 
( 
$str F
)F G
]G H
On 
= 
$num 
, 
[!! 
Tooltip!! 
(!! 
$str!! N
)!!N O
]!!O P
Off"" 
="" 
$num"" 
}## 	
[&& 	
SerializeField&&	 
]&& 
private&&  
AnimationClip&&! .
m_Clip&&/ 5
;&&5 6
['' 	
SerializeField''	 
]'' 
private''  
Vector3''! (

m_Position'') 3
=''4 5
Vector3''6 =
.''= >
zero''> B
;''B C
[(( 	
SerializeField((	 
](( 
private((  
Vector3((! (
m_EulerAngles(() 6
=((7 8
Vector3((9 @
.((@ A
zero((A E
;((E F
[)) 	
SerializeField))	 
])) 
private))  
bool))! %!
m_UseTrackMatchFields))& ;
=))< =
true))> B
;))B C
[** 	
SerializeField**	 
]** 
private**  
MatchTargetFields**! 2
m_MatchTargetFields**3 F
=**G H%
MatchTargetFieldConstants**I b
.**b c
All**c f
;**f g
[++ 	
SerializeField++	 
]++ 
private++  
bool++! %
m_RemoveStartOffset++& 9
=++: ;
true++< @
;++@ A
[,, 	
SerializeField,,	 
],, 
private,,  
bool,,! %
m_ApplyFootIK,,& 3
=,,4 5
true,,6 :
;,,: ;
[-- 	
SerializeField--	 
]-- 
private--  
LoopMode--! )
m_Loop--* 0
=--1 2
LoopMode--3 ;
.--; <
UseSourceAsset--< J
;--J K
private11 #
AnimationOffsetPlayable11 '%
m_AnimationOffsetPlayable11( A
;11A B
public77 
Vector377 
position77 
{88 	
get99 
{:: 
return;; 

m_Position;; !
;;;! "
}<< 
set== 
{>> 

m_Position?? 
=?? 
value?? "
;??" #
ifAA 
(AA %
m_AnimationOffsetPlayableAA -
.AA- .
IsValidAA. 5
(AA5 6
)AA6 7
)AA7 8%
m_AnimationOffsetPlayableBB -
.BB- .
SetPositionBB. 9
(BB9 :
positionBB: B
)BBB C
;BBC D
}DD 
}EE 	
publicJJ 

QuaternionJJ 
rotationJJ "
{KK 	
getLL 
{MM 
returnNN 

QuaternionNN !
.NN! "
EulerNN" '
(NN' (
m_EulerAnglesNN( 5
)NN5 6
;NN6 7
}OO 
setQQ 
{RR 
m_EulerAnglesSS 
=SS 
valueSS  %
.SS% &
eulerAnglesSS& 1
;SS1 2
ifUU 
(UU %
m_AnimationOffsetPlayableUU -
.UU- .
IsValidUU. 5
(UU5 6
)UU6 7
)UU7 8%
m_AnimationOffsetPlayableVV -
.VV- .
SetRotationVV. 9
(VV9 :
valueVV: ?
)VV? @
;VV@ A
}XX 
}YY 	
public^^ 
Vector3^^ 
eulerAngles^^ "
{__ 	
get`` 
{`` 
return`` 
m_EulerAngles`` &
;``& '
}``( )
setaa 
{bb 
m_EulerAnglescc 
=cc 
valuecc  %
;cc% &
ifee 
(ee %
m_AnimationOffsetPlayableee -
.ee- .
IsValidee. 5
(ee5 6
)ee6 7
)ee7 8%
m_AnimationOffsetPlayableff -
.ff- .
SetRotationff. 9
(ff9 :
rotationff: B
)ffB C
;ffC D
}hh 
}ii 	
publicnn 
boolnn 
useTrackMatchFieldsnn '
{oo 	
getpp 
{pp 
returnpp !
m_UseTrackMatchFieldspp .
;pp. /
}pp0 1
setqq 
{qq !
m_UseTrackMatchFieldsqq '
=qq( )
valueqq* /
;qq/ 0
}qq1 2
}rr 	
publicww 
MatchTargetFieldsww  
matchTargetFieldsww! 2
{xx 	
getyy 
{yy 
returnyy 
m_MatchTargetFieldsyy ,
;yy, -
}yy. /
setzz 
{zz 
m_MatchTargetFieldszz %
=zz& '
valuezz( -
;zz- .
}zz/ 0
}{{ 	
public
ÉÉ 
bool
ÉÉ 
removeStartOffset
ÉÉ %
{
ÑÑ 	
get
ÖÖ 
{
ÖÖ 
return
ÖÖ !
m_RemoveStartOffset
ÖÖ ,
;
ÖÖ, -
}
ÖÖ. /
set
ÜÜ 
{
ÜÜ !
m_RemoveStartOffset
ÜÜ %
=
ÜÜ& '
value
ÜÜ( -
;
ÜÜ- .
}
ÜÜ/ 0
}
áá 	
public
çç 
bool
çç 
applyFootIK
çç 
{
éé 	
get
èè 
{
èè 
return
èè 
m_ApplyFootIK
èè &
;
èè& '
}
èè( )
set
êê 
{
êê 
m_ApplyFootIK
êê 
=
êê  !
value
êê" '
;
êê' (
}
êê) *
}
ëë 	
public
ññ 
LoopMode
ññ 
loop
ññ 
{
óó 	
get
òò 
{
òò 
return
òò 
m_Loop
òò 
;
òò  
}
òò! "
set
ôô 
{
ôô 
m_Loop
ôô 
=
ôô 
value
ôô  
;
ôô  !
}
ôô" #
}
öö 	
internal
ùù 
bool
ùù 
hasRootTransforms
ùù '
{
ûû 	
get
üü 
{
üü 
return
üü 
m_Clip
üü 
!=
üü  "
null
üü# '
&&
üü( *
HasRootTransforms
üü+ <
(
üü< =
m_Clip
üü= C
)
üüC D
;
üüD E
}
üüF G
}
†† 	
internal
££ 
AppliedOffsetMode
££ "
appliedOffsetMode
££# 4
{
££5 6
get
££7 :
;
££: ;
set
££< ?
;
££? @
}
££A B
public
©© 
AnimationClip
©© 
clip
©© !
{
™™ 	
get
´´ 
{
´´ 
return
´´ 
m_Clip
´´ 
;
´´  
}
´´! "
set
¨¨ 
{
≠≠ 
if
ÆÆ 
(
ÆÆ 
value
ÆÆ 
!=
ÆÆ 
null
ÆÆ !
)
ÆÆ! "
name
ØØ 
=
ØØ 
$str
ØØ 7
+
ØØ8 9
value
ØØ: ?
.
ØØ? @
name
ØØ@ D
;
ØØD E
m_Clip
∞∞ 
=
∞∞ 
value
∞∞ 
;
∞∞ 
}
±± 
}
≤≤ 	
public
∑∑ 
override
∑∑ 
double
∑∑ 
duration
∑∑ '
{
∏∏ 	
get
ππ 
{
∫∫ 
double
ªª 
length
ªª 
=
ªª 
TimeUtility
ªª  +
.
ªª+ ,$
GetAnimationClipLength
ªª, B
(
ªªB C
clip
ªªC G
)
ªªG H
;
ªªH I
if
ºº 
(
ºº 
length
ºº 
<
ºº 
float
ºº "
.
ºº" #
Epsilon
ºº# *
)
ºº* +
return
ΩΩ 
base
ΩΩ 
.
ΩΩ  
duration
ΩΩ  (
;
ΩΩ( )
return
ææ 
length
ææ 
;
ææ 
}
øø 
}
¿¿ 	
public
≈≈ 
override
≈≈ 
IEnumerable
≈≈ #
<
≈≈# $
PlayableBinding
≈≈$ 3
>
≈≈3 4
outputs
≈≈5 <
{
∆∆ 	
get
«« 
{
«« 
yield
«« 
return
«« &
AnimationPlayableBinding
«« 7
.
««7 8
Create
««8 >
(
««> ?
name
««? C
,
««C D
this
««E I
)
««I J
;
««J K
}
««L M
}
»» 	
public
–– 
override
–– 
Playable
––  
CreatePlayable
––! /
(
––/ 0
PlayableGraph
––0 =
graph
––> C
,
––C D

GameObject
––E O
go
––P R
)
––R S
{
—— 	
Playable
““ 
root
““ 
=
““ 
CreatePlayable
““ *
(
““* +
graph
““+ 0
,
““0 1
m_Clip
““2 8
,
““8 9
position
““: B
,
““B C
eulerAngles
““D O
,
““O P
removeStartOffset
““Q b
,
““b c
appliedOffsetMode
““d u
,
““u v
applyFootIK““w Ç
,““Ç É
m_Loop““Ñ ä
)““ä ã
;““ã å'
m_AnimationOffsetPlayable
’’ %
=
’’& '%
AnimationOffsetPlayable
’’( ?
.
’’? @
Null
’’@ D
;
’’D E
if
÷÷ 
(
÷÷ 
root
÷÷ 
.
÷÷ 
IsValid
÷÷ 
(
÷÷ 
)
÷÷ 
&&
÷÷ !
root
÷÷" &
.
÷÷& '
IsPlayableOfType
÷÷' 7
<
÷÷7 8%
AnimationOffsetPlayable
÷÷8 O
>
÷÷O P
(
÷÷P Q
)
÷÷Q R
)
÷÷R S
{
◊◊ '
m_AnimationOffsetPlayable
ÿÿ )
=
ÿÿ* +
(
ÿÿ, -%
AnimationOffsetPlayable
ÿÿ- D
)
ÿÿD E
root
ÿÿE I
;
ÿÿI J
}
ŸŸ 
LiveLink
€€ 
(
€€ 
)
€€ 
;
€€ 
return
ﬁﬁ 
root
ﬁﬁ 
;
ﬁﬁ 
}
ﬂﬂ 	
internal
·· 
static
·· 
Playable
··  
CreatePlayable
··! /
(
··/ 0
PlayableGraph
··0 =
graph
··> C
,
··C D
AnimationClip
··E R
clip
··S W
,
··W X
Vector3
··Y `
positionOffset
··a o
,
··o p
Vector3
··q x
eulerOffset··y Ñ
,··Ñ Ö
bool··Ü ä!
removeStartOffset··ã ú
,··ú ù!
AppliedOffsetMode··û Ø
mode··∞ ¥
,··¥ µ
bool··∂ ∫
applyFootIK··ª ∆
,··∆ «
LoopMode··» –
loop··— ’
)··’ ÷
{
‚‚ 	
if
„„ 
(
„„ 
clip
„„ 
==
„„ 
null
„„ 
||
„„ 
clip
„„  $
.
„„$ %
legacy
„„% +
)
„„+ ,
return
‰‰ 
Playable
‰‰ 
.
‰‰  
Null
‰‰  $
;
‰‰$ %
var
ÁÁ 
clipPlayable
ÁÁ 
=
ÁÁ #
AnimationClipPlayable
ÁÁ 4
.
ÁÁ4 5
Create
ÁÁ5 ;
(
ÁÁ; <
graph
ÁÁ< A
,
ÁÁA B
clip
ÁÁC G
)
ÁÁG H
;
ÁÁH I
clipPlayable
ËË 
.
ËË "
SetRemoveStartOffset
ËË -
(
ËË- .
removeStartOffset
ËË. ?
)
ËË? @
;
ËË@ A
clipPlayable
ÈÈ 
.
ÈÈ 
SetApplyFootIK
ÈÈ '
(
ÈÈ' (
applyFootIK
ÈÈ( 3
)
ÈÈ3 4
;
ÈÈ4 5
clipPlayable
ÍÍ 
.
ÍÍ !
SetOverrideLoopTime
ÍÍ ,
(
ÍÍ, -
loop
ÍÍ- 1
!=
ÍÍ2 4
LoopMode
ÍÍ5 =
.
ÍÍ= >
UseSourceAsset
ÍÍ> L
)
ÍÍL M
;
ÍÍM N
clipPlayable
ÎÎ 
.
ÎÎ 
SetLoopTime
ÎÎ $
(
ÎÎ$ %
loop
ÎÎ% )
==
ÎÎ* ,
LoopMode
ÎÎ- 5
.
ÎÎ5 6
On
ÎÎ6 8
)
ÎÎ8 9
;
ÎÎ9 :
Playable
ÌÌ 
root
ÌÌ 
=
ÌÌ 
clipPlayable
ÌÌ (
;
ÌÌ( )
if
ÔÔ 
(
ÔÔ $
ShouldApplyScaleRemove
ÔÔ &
(
ÔÔ& '
mode
ÔÔ' +
)
ÔÔ+ ,
)
ÔÔ, -
{
 
var
ÒÒ 
removeScale
ÒÒ 
=
ÒÒ  !*
AnimationRemoveScalePlayable
ÒÒ" >
.
ÒÒ> ?
Create
ÒÒ? E
(
ÒÒE F
graph
ÒÒF K
,
ÒÒK L
$num
ÒÒM N
)
ÒÒN O
;
ÒÒO P
graph
ÚÚ 
.
ÚÚ 
Connect
ÚÚ 
(
ÚÚ 
root
ÚÚ "
,
ÚÚ" #
$num
ÚÚ$ %
,
ÚÚ% &
removeScale
ÚÚ' 2
,
ÚÚ2 3
$num
ÚÚ4 5
)
ÚÚ5 6
;
ÚÚ6 7
removeScale
ÛÛ 
.
ÛÛ 
SetInputWeight
ÛÛ *
(
ÛÛ* +
$num
ÛÛ+ ,
,
ÛÛ, -
$num
ÛÛ. 2
)
ÛÛ2 3
;
ÛÛ3 4
root
ÙÙ 
=
ÙÙ 
removeScale
ÙÙ "
;
ÙÙ" #
}
ıı 
if
˜˜ 
(
˜˜ 
ShouldApplyOffset
˜˜ !
(
˜˜! "
mode
˜˜" &
,
˜˜& '
clip
˜˜( ,
)
˜˜, -
)
˜˜- .
{
¯¯ 
var
˘˘ 
offsetPlayable
˘˘ "
=
˘˘# $%
AnimationOffsetPlayable
˘˘% <
.
˘˘< =
Create
˘˘= C
(
˘˘C D
graph
˘˘D I
,
˘˘I J
positionOffset
˘˘K Y
,
˘˘Y Z

Quaternion
˘˘[ e
.
˘˘e f
Euler
˘˘f k
(
˘˘k l
eulerOffset
˘˘l w
)
˘˘w x
,
˘˘x y
$num
˘˘z {
)
˘˘{ |
;
˘˘| }
graph
˙˙ 
.
˙˙ 
Connect
˙˙ 
(
˙˙ 
root
˙˙ "
,
˙˙" #
$num
˙˙$ %
,
˙˙% &
offsetPlayable
˙˙' 5
,
˙˙5 6
$num
˙˙7 8
)
˙˙8 9
;
˙˙9 :
offsetPlayable
˚˚ 
.
˚˚ 
SetInputWeight
˚˚ -
(
˚˚- .
$num
˚˚. /
,
˚˚/ 0
$num
˚˚1 5
)
˚˚5 6
;
˚˚6 7
root
¸¸ 
=
¸¸ 
offsetPlayable
¸¸ %
;
¸¸% &
}
˝˝ 
return
ˇˇ 
root
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
private
ÇÇ 
static
ÇÇ 
bool
ÇÇ 
ShouldApplyOffset
ÇÇ -
(
ÇÇ- .
AppliedOffsetMode
ÇÇ. ?
mode
ÇÇ@ D
,
ÇÇD E
AnimationClip
ÇÇF S
clip
ÇÇT X
)
ÇÇX Y
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
mode
ÑÑ 
==
ÑÑ 
AppliedOffsetMode
ÑÑ )
.
ÑÑ) *
NoRootTransform
ÑÑ* 9
||
ÑÑ: <
mode
ÑÑ= A
==
ÑÑB D
AppliedOffsetMode
ÑÑE V
.
ÑÑV W
SceneOffsetLegacy
ÑÑW h
)
ÑÑh i
return
ÖÖ 
false
ÖÖ 
;
ÖÖ 
return
áá 
HasRootTransforms
áá $
(
áá$ %
clip
áá% )
)
áá) *
;
áá* +
}
àà 	
private
ää 
static
ää 
bool
ää $
ShouldApplyScaleRemove
ää 2
(
ää2 3
AppliedOffsetMode
ää3 D
mode
ääE I
)
ääI J
{
ãã 	
return
åå 
mode
åå 
==
åå 
AppliedOffsetMode
åå ,
.
åå, -%
SceneOffsetLegacyEditor
åå- D
||
ååE G
mode
ååH L
==
ååM O
AppliedOffsetMode
ååP a
.
ååa b
SceneOffsetLegacy
ååb s
||
ååt v
mode
ååw {
==
åå| ~ 
AppliedOffsetModeåå ê
.ååê ë%
TransformOffsetLegacyååë ¶
;åå¶ ß
}
çç 	
public
êê 
void
êê 
LiveLink
êê 
(
êê 
)
êê 
{
ëë 	
if
íí 
(
íí '
m_AnimationOffsetPlayable
íí )
.
íí) *
IsValid
íí* 1
(
íí1 2
)
íí2 3
)
íí3 4
{
ìì '
m_AnimationOffsetPlayable
îî )
.
îî) *
SetPosition
îî* 5
(
îî5 6
position
îî6 >
)
îî> ?
;
îî? @'
m_AnimationOffsetPlayable
ïï )
.
ïï) *
SetRotation
ïï* 5
(
ïï5 6
rotation
ïï6 >
)
ïï> ?
;
ïï? @
}
ññ 
}
óó 	
public
ûû 
ClipCaps
ûû 
clipCaps
ûû  
{
üü 	
get
†† 
{
°° 
var
¢¢ 
caps
¢¢ 
=
¢¢ 
ClipCaps
¢¢ #
.
¢¢# $
Extrapolation
¢¢$ 1
|
¢¢2 3
ClipCaps
¢¢4 <
.
¢¢< =
SpeedMultiplier
¢¢= L
|
¢¢M N
ClipCaps
¢¢O W
.
¢¢W X
Blending
¢¢X `
;
¢¢` a
if
££ 
(
££ 
m_Clip
££ 
!=
££ 
null
££ "
&&
££# %
(
££& '
m_Loop
££' -
!=
££. 0
LoopMode
££1 9
.
££9 :
Off
££: =
)
££= >
&&
££? A
(
££B C
m_Loop
££C I
!=
££J L
LoopMode
££M U
.
££U V
UseSourceAsset
££V d
||
££e g
m_Clip
££h n
.
££n o
	isLooping
££o x
)
££x y
)
££y z
caps
§§ 
|=
§§ 
ClipCaps
§§ $
.
§§$ %
Looping
§§% ,
;
§§, -
if
ßß 
(
ßß 
m_Clip
ßß 
!=
ßß 
null
ßß "
&&
ßß# %
!
ßß& '
m_Clip
ßß' -
.
ßß- .
empty
ßß. 3
)
ßß3 4
caps
®® 
|=
®® 
ClipCaps
®® $
.
®®$ %
ClipIn
®®% +
;
®®+ ,
return
™™ 
caps
™™ 
;
™™ 
}
´´ 
}
¨¨ 	
public
±± 
void
±± 
ResetOffsets
±±  
(
±±  !
)
±±! "
{
≤≤ 	
position
≥≥ 
=
≥≥ 
Vector3
≥≥ 
.
≥≥ 
zero
≥≥ #
;
≥≥# $
eulerAngles
¥¥ 
=
¥¥ 
Vector3
¥¥ !
.
¥¥! "
zero
¥¥" &
;
¥¥& '
}
µµ 	
public
∏∏ 
void
∏∏ 
GatherProperties
∏∏ $
(
∏∏$ %
PlayableDirector
∏∏% 5
director
∏∏6 >
,
∏∏> ? 
IPropertyCollector
∏∏@ R
driver
∏∏S Y
)
∏∏Y Z
{
ππ 	
driver
∫∫ 
.
∫∫ 
AddFromClip
∫∫ 
(
∫∫ 
m_Clip
∫∫ %
)
∫∫% &
;
∫∫& '
}
ªª 	
internal
ΩΩ 
static
ΩΩ 
bool
ΩΩ 
HasRootTransforms
ΩΩ .
(
ΩΩ. /
AnimationClip
ΩΩ/ <
clip
ΩΩ= A
)
ΩΩA B
{
ææ 	
if
øø 
(
øø 
clip
øø 
==
øø 
null
øø 
||
øø 
clip
øø  $
.
øø$ %
empty
øø% *
)
øø* +
return
¿¿ 
false
¿¿ 
;
¿¿ 
return
¬¬ 
clip
¬¬ 
.
¬¬ 
hasRootMotion
¬¬ %
||
¬¬& (
clip
¬¬) -
.
¬¬- .%
hasGenericRootTransform
¬¬. E
||
¬¬F H
clip
¬¬I M
.
¬¬M N
hasMotionCurves
¬¬N ]
||
¬¬^ `
clip
¬¬a e
.
¬¬e f
hasRootCurves
¬¬f s
;
¬¬s t
}
√√ 	
}
ƒƒ 
}≈≈ Ω
cC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Evaluation\RuntimeElement.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
abstract 
class 
RuntimeElement !
:" #
	IInterval$ -
{ 
public 
abstract 
Int64 
intervalStart +
{, -
get. 1
;1 2
}3 4
public		 
abstract		 
Int64		 
intervalEnd		 )
{		* +
get		, /
;		/ 0
}		1 2
public

 
int

 
intervalBit

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
abstract 
bool 
enable #
{$ %
set& )
;) *
}+ ,
public 
abstract 
void 

EvaluateAt '
(' (
double( .
	localTime/ 8
,8 9
	FrameData: C
	frameDataD M
)M N
;N O
public 
abstract 
void 
	DisableAt &
(& '
double' -
	localTime. 7
,7 8
double9 ?
rootDuration@ L
,L M
	FrameDataN W
	frameDataX a
)a b
;b c
} 
} Õ

TC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\GroupTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[

 
Serializable

 
]

 
[ 
TrackClipType 
( 
typeof 
( 

TrackAsset $
)$ %
)% &
]& '
[ 
SupportsChildTracks 
] 
[ 
ExcludeFromPreset 
] 
[ 
TimelineHelpURL 
( 
typeof 
( 

GroupTrack &
)& '
)' (
]( )
public 

class 

GroupTrack 
: 

TrackAsset (
{ 
internal 
override 
bool 
CanCompileClips .
(. /
)/ 0
{ 	
return 
false 
; 
} 	
public 
override 
IEnumerable #
<# $
PlayableBinding$ 3
>3 4
outputs5 <
{ 	
get 
{ 
return 
PlayableBinding (
.( )
None) -
;- .
}/ 0
} 	
} 
} î
aC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str /
)/ 0
]0 1
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str /
)/ 0
]0 1
[		 
assembly		 	
:			 

AssemblyProduct		 
(		 
$str		 1
)		1 2
]		2 3
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
AssemblyCopyright

 
(

 
$str

 /
)

/ 0
]

0 1
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 5
)5 6
]6 7
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[ 
assembly 	
:	 

AssemblyVersion 
( 
$str $
)$ %
]% &
[ 
assembly 	
:	 

AssemblyFileVersion 
( 
$str (
)( )
]) *
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str :
): ;
]; <
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 4
)4 5
]5 6
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ;
); <
]< =
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str @
)@ A
]A B
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str G
)G H
]H IÛ
tC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\AssetUpgrade\AnimationPlayableAssetUpgrade.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
partial 
class "
AnimationPlayableAsset (
:) **
ISerializationCallbackReceiver+ I
{ 
enum 
Versions 
{ 	
Initial		 
=		 
$num		 
,		 
RotationAsEuler

 
=

 
$num

 
,

  
} 	
static 
readonly 
int 
k_LatestVersion +
=, -
(. /
int/ 2
)2 3
Versions3 ;
.; <
RotationAsEuler< K
;K L
[ 	
SerializeField	 
, 
HideInInspector (
]( )
int* -
	m_Version. 7
;7 8
[ 	
SerializeField	 
, 
Obsolete !
(! "
$str" ?
,? @
falseA F
)F G
,G H
HideInInspectorI X
]X Y
private 

Quaternion 

m_Rotation %
=& '

Quaternion( 2
.2 3
identity3 ;
;; <
void *
ISerializationCallbackReceiver +
.+ ,
OnBeforeSerialize, =
(= >
)> ?
{ 	
	m_Version 
= 
k_LatestVersion '
;' (
} 	
void *
ISerializationCallbackReceiver +
.+ ,
OnAfterDeserialize, >
(> ?
)? @
{ 	
if 
( 
	m_Version 
< 
k_LatestVersion +
)+ ,
{    
OnUpgradeFromVersion!! $
(!!$ %
	m_Version!!% .
)!!. /
;!!/ 0
}"" 
}## 	
void%%  
OnUpgradeFromVersion%% !
(%%! "
int%%" %

oldVersion%%& 0
)%%0 1
{&& 	
if'' 
('' 

oldVersion'' 
<'' 
('' 
int'' !
)''! "
Versions''" *
.''* +
RotationAsEuler''+ :
)'': ;)
AnimationPlayableAssetUpgrade(( -
.((- ."
ConvertRotationToEuler((. D
(((D E
this((E I
)((I J
;((J K
})) 	
static++ 
class++ )
AnimationPlayableAssetUpgrade++ 2
{,, 	
public-- 
static-- 
void-- "
ConvertRotationToEuler-- 5
(--5 6"
AnimationPlayableAsset--6 L
asset--M R
)--R S
{.. 
asset00 
.00 
m_EulerAngles00 #
=00$ %
asset00& +
.00+ ,

m_Rotation00, 6
.006 7
eulerAngles007 B
;00B C
}22 
}33 	
}44 
}55 ñ
XC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Events\IMarker.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public

 

	interface

 
IMarker

 
{ 
double 
time 
{ 
get 
; 
set 
; 
}  !

TrackAsset 
parent 
{ 
get 
;  
}! "
void 

Initialize 
( 

TrackAsset "
parent# )
)) *
;* +
} 
} ∏

dC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Evaluation\RuntimeClipBase.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
internal 
abstract 
class 
RuntimeClipBase +
:, -
RuntimeElement. <
{ 
public 
abstract 
double 
start $
{% &
get' *
;* +
}, -
public		 
abstract		 
double		 
duration		 '
{		( )
get		* -
;		- .
}		/ 0
public 
override 
Int64 
intervalStart +
{ 	
get 
{ 
return 
DiscreteTime %
.% &
GetNearestTick& 4
(4 5
start5 :
): ;
;; <
}= >
} 	
public 
override 
Int64 
intervalEnd )
{ 	
get 
{ 
return 
DiscreteTime %
.% &
GetNearestTick& 4
(4 5
start5 :
+; <
duration= E
)E F
;F G
}H I
} 	
} 
} Î
\C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Events\MarkerTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[

 
Serializable

 
]

 
[ 
TrackBindingType 
( 
typeof 
( 

GameObject '
)' (
)( )
]) *
[ 

HideInMenu 
] 
[ 
ExcludeFromPreset 
] 
[ 
TimelineHelpURL 
( 
typeof 
( 
MarkerTrack '
)' (
)( )
]) *
public 

class 
MarkerTrack 
: 

TrackAsset )
{ 
public 
override 
IEnumerable #
<# $
PlayableBinding$ 3
>3 4
outputs5 <
{ 	
get 
{ 
return 
this 
== 
timelineAsset ,
., -
markerTrack- 8
?9 :
new 
List 
< 
PlayableBinding ,
>, -
{. /!
ScriptPlayableBinding0 E
.E F
CreateF L
(L M
nameM Q
,Q R
nullS W
,W X
typeofY _
(_ `

GameObject` j
)j k
)k l
}m n
:o p
base 
. 
outputs  
;  !
} 
} 	
} 
} ñ
]C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Timeline.deprecated.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

partial 
class 
TimelineAsset &
{ 
[ 	
Obsolete	 
( 
$str u
,u v
falsew |
)| }
]} ~
public 
enum 
	MediaType 
{ 	
	Animation 
, 
Audio 
, 
Texture 
= 
$num 
, 
[$$ 
Obsolete$$ 
($$ 
$str	$$ Ä
,
$$Ä Å
false
$$Ç á
)
$$á à
]
$$à â
Video%% 
=%% 
$num%% 
,%% 
Script++ 
,++ 
Hybrid11 
,11 
Group77 
}88 	
}99 
[?? 
AttributeUsage?? 
(?? 
AttributeTargets?? $
.??$ %
Class??% *
)??* +
]??+ ,
[@@ 
Obsolete@@ 
(@@ 
$str@@ v
,@@v w
false@@x }
)@@} ~
]@@~ 
publicAA 

classAA 
TrackMediaTypeAA 
:AA  !
	AttributeAA" +
{BB 
publicGG 
readonlyGG 
TimelineAssetGG %
.GG% &
	MediaTypeGG& /
m_MediaTypeGG0 ;
;GG; <
publicNN 
TrackMediaTypeNN 
(NN 
TimelineAssetNN +
.NN+ ,
	MediaTypeNN, 5
mtNN6 8
)NN8 9
{OO 	
m_MediaTypePP 
=PP 
mtPP 
;PP 
}QQ 	
}RR 
}SS ®
hC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Evaluation\InfiniteRuntimeClip.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
class

 	
InfiniteRuntimeClip


 
:

 
RuntimeElement

  .
{ 
private 
Playable 

m_Playable #
;# $
private 
static 
readonly 
Int64  %
kIntervalEnd& 2
=3 4
DiscreteTime5 A
.A B
GetNearestTickB P
(P Q
TimelineClipQ ]
.] ^
kMaxTimeValue^ k
)k l
;l m
public 
InfiniteRuntimeClip "
(" #
Playable# +
playable, 4
)4 5
{ 	

m_Playable 
= 
playable !
;! "
} 	
public 
override 
Int64 
intervalStart +
{ 	
get 
{ 
return 
$num 
; 
} 
} 	
public 
override 
Int64 
intervalEnd )
{ 	
get 
{ 
return 
kIntervalEnd %
;% &
}' (
} 	
public 
override 
bool 
enable #
{ 	
set   
{!! 
if"" 
("" 
value"" 
)"" 

m_Playable## 
.## 
Play## #
(### $
)##$ %
;##% &
else$$ 

m_Playable%% 
.%% 
Pause%% $
(%%$ %
)%%% &
;%%& '
}&& 
}'' 	
public)) 
override)) 
void)) 

EvaluateAt)) '
())' (
double))( .
	localTime))/ 8
,))8 9
	FrameData)): C
	frameData))D M
)))M N
{** 	

m_Playable++ 
.++ 
SetTime++ 
(++ 
	localTime++ (
)++( )
;++) *
},, 	
public.. 
override.. 
void.. 
	DisableAt.. &
(..& '
double..' -
	localTime... 7
,..7 8
double..9 ?
rootDuration..@ L
,..L M
	FrameData..N W
	frameData..X a
)..a b
{// 	

m_Playable00 
.00 
SetTime00 
(00 
	localTime00 (
)00( )
;00) *
enable11 
=11 
false11 
;11 
}22 	
}33 
}44 È
`C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Playables\ITimeControl.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public		 

	interface		 
ITimeControl		 !
{

 
void 
SetTime 
( 
double 
time  
)  !
;! "
void 
OnControlTimeStart 
(  
)  !
;! "
void 
OnControlTimeStop 
( 
)  
;  !
} 
} Ï'
iC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\NotificationUtilities.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static 

class !
NotificationUtilities &
{ 
public		 
static		 
ScriptPlayable		 $
<		$ %%
TimeNotificationBehaviour		% >
>		> ?'
CreateNotificationsPlayable		@ [
(		[ \
PlayableGraph		\ i
graph		j o
,		o p
IEnumerable		q |
<		| }
IMarker			} Ñ
>
		Ñ Ö
markers
		Ü ç
,
		ç é
double
		è ï
duration
		ñ û
,
		û ü
DirectorWrapMode
		† ∞
extrapolationMode
		± ¬
)
		¬ √
{

 	
var  
notificationPlayable $
=% &
ScriptPlayable' 5
<5 6%
TimeNotificationBehaviour6 O
>O P
.P Q
NullQ U
;U V
foreach 
( 
var 
e 
in 
markers %
)% &
{ 
var 
notif 
= 
e 
as  
INotification! .
;. /
if 
( 
notif 
== 
null !
)! "
continue 
; 
if 
(  
notificationPlayable (
.( )
Equals) /
(/ 0
ScriptPlayable0 >
<> ?%
TimeNotificationBehaviour? X
>X Y
.Y Z
NullZ ^
)^ _
)_ `
{  
notificationPlayable (
=) *%
TimeNotificationBehaviour+ D
.D E
CreateE K
(K L
graphL Q
,Q R
duration  
,  !
extrapolationMode" 3
)3 4
;4 5
} 
var 
time 
= 
( 
DiscreteTime (
)( )
e) *
.* +
time+ /
;/ 0
var 

tlDuration 
=  
(! "
DiscreteTime" .
). /
duration/ 7
;7 8
if 
( 
time 
>= 

tlDuration &
&&' )
time* .
<=/ 1

tlDuration2 <
.< =
OneTickAfter= I
(I J
)J K
&&L N

tlDurationO Y
!=Z \
$num] ^
)^ _
{ 
time 
= 

tlDuration %
.% &
OneTickBefore& 3
(3 4
)4 5
;5 6
} 
var &
notificationOptionProvider .
=/ 0
e1 2
as3 5'
INotificationOptionProvider6 Q
;Q R
if   
(   &
notificationOptionProvider   .
!=  / 1
null  2 6
)  6 7
{!!  
notificationPlayable"" (
.""( )
GetBehaviour"") 5
(""5 6
)""6 7
.""7 8
AddNotification""8 G
(""G H
(""H I
double""I O
)""O P
time""P T
,""T U
notif""V [
,""[ \&
notificationOptionProvider""] w
.""w x
flags""x }
)""} ~
;""~ 
}## 
else$$ 
{%%  
notificationPlayable&& (
.&&( )
GetBehaviour&&) 5
(&&5 6
)&&6 7
.&&7 8
AddNotification&&8 G
(&&G H
(&&H I
double&&I O
)&&O P
time&&P T
,&&T U
notif&&V [
)&&[ \
;&&\ ]
}'' 
}(( 
return**  
notificationPlayable** '
;**' (
}++ 	
public-- 
static-- 
bool-- *
TrackTypeSupportsNotifications-- 9
(--9 :
Type--: >
type--? C
)--C D
{.. 	
var// 
binding// 
=// 
(// %
TrackBindingTypeAttribute// 4
)//4 5
	Attribute//5 >
.//> ?
GetCustomAttribute//? Q
(//Q R
type//R V
,//V W
typeof//X ^
(//^ _%
TrackBindingTypeAttribute//_ x
)//x y
)//y z
;//z {
return00 
binding00 
!=00 
null00 "
&&00# %
(11 
typeof11 
(11 
	Component11 !
)11! "
.11" #
IsAssignableFrom11# 3
(113 4
binding114 ;
.11; <
type11< @
)11@ A
||11B D
typeof22 
(22 

GameObject22 %
)22% &
.22& '
IsAssignableFrom22' 7
(227 8
binding228 ?
.22? @
type22@ D
)22D E
)22E F
;22F G
}33 	
}44 
}55 À
aC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\WeightUtility.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static 

class 
WeightUtility 
{ 
public		 
static		 
float		 
NormalizeMixer		 *
(		* +
Playable		+ 3
mixer		4 9
)		9 :
{

 	
if 
( 
! 
mixer 
. 
IsValid 
( 
)  
)  !
return 
$num 
; 
int 
count 
= 
mixer 
. 
GetInputCount +
(+ ,
), -
;- .
float 
weight 
= 
$num 
;  
for 
( 
int 
c 
= 
$num 
; 
c 
< 
count  %
;% &
c' (
++( *
)* +
{ 
weight 
+= 
mixer 
.  
GetInputWeight  .
(. /
c/ 0
)0 1
;1 2
} 
if 
( 
weight 
> 
Mathf 
. 
Epsilon &
&&' )
weight* 0
<1 2
$num3 4
)4 5
{ 
for 
( 
int 
c 
= 
$num 
; 
c  !
<" #
count$ )
;) *
c+ ,
++, .
). /
{ 
mixer 
. 
SetInputWeight (
(( )
c) *
,* +
mixer, 1
.1 2
GetInputWeight2 @
(@ A
cA B
)B C
/D E
weightF L
)L M
;M N
} 
} 
return 
Mathf 
. 
Clamp01  
(  !
weight! '
)' (
;( )
} 	
} 
} Ö·
TC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\TrackAsset.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ !
IgnoreOnPlayableTrack 
] 
public 

abstract 
partial 
class !

TrackAsset" ,
:- .
PlayableAsset/ <
,< =
IPropertyPreview> N
,N O
ICurvesOwnerP \
{ 
private 
struct 
TransientBuildData )
{ 	
public 
List 
< 

TrackAsset "
>" #
	trackList$ -
;- .
public   
List   
<   
TimelineClip   $
>  $ %
clipList  & .
;  . /
public!! 
List!! 
<!! 
IMarker!! 
>!!  

markerList!!! +
;!!+ ,
public## 
static## 
TransientBuildData## ,
Create##- 3
(##3 4
)##4 5
{$$ 
return%% 
new%% 
TransientBuildData%% -
(%%- .
)%%. /
{&& 
	trackList'' 
='' 
new''  #
List''$ (
<''( )

TrackAsset'') 3
>''3 4
(''4 5
$num''5 7
)''7 8
,''8 9
clipList(( 
=(( 
new(( "
List((# '
<((' (
TimelineClip((( 4
>((4 5
(((5 6
$num((6 9
)((9 :
,((: ;

markerList)) 
=))  
new))! $
List))% )
<))) *
IMarker))* 1
>))1 2
())2 3
$num))3 6
)))6 7
,))7 8
}** 
;** 
}++ 
public-- 
void-- 
Clear-- 
(-- 
)-- 
{.. 
	trackList// 
.// 
Clear// 
(//  
)//  !
;//! "
clipList00 
.00 
Clear00 
(00 
)00  
;00  !

markerList11 
.11 
Clear11  
(11  !
)11! "
;11" #
}22 
}33 	
private55 
static55 
TransientBuildData55 )
s_BuildData55* 5
=556 7
TransientBuildData558 J
.55J K
Create55K Q
(55Q R
)55R S
;55S T
internal77 
const77 
string77 
kDefaultCurvesName77 0
=771 2
$str773 E
;77E F
internal99 
static99 
event99 
Action99 $
<99$ %
TimelineClip99% 1
,991 2

GameObject993 =
,99= >
Playable99? G
>99G H 
OnClipPlayableCreate99I ]
;99] ^
internal:: 
static:: 
event:: 
Action:: $
<::$ %

TrackAsset::% /
,::/ 0

GameObject::1 ;
,::; <
Playable::= E
>::E F*
OnTrackAnimationPlayableCreate::G e
;::e f
[<< 	
SerializeField<<	 
,<< 
HideInInspector<< (
]<<( )
bool<<* .
m_Locked<</ 7
;<<7 8
[== 	
SerializeField==	 
,== 
HideInInspector== (
]==( )
bool==* .
m_Muted==/ 6
;==6 7
[>> 	
SerializeField>>	 
,>> 
HideInInspector>> (
]>>( )
string>>* 0(
m_CustomPlayableFullTypename>>1 M
=>>N O
string>>P V
.>>V W
Empty>>W \
;>>\ ]
[?? 	
SerializeField??	 
,?? 
HideInInspector?? (
]??( )
AnimationClip??* 7
m_Curves??8 @
;??@ A
[@@ 	
SerializeField@@	 
,@@ 
HideInInspector@@ (
]@@( )
PlayableAsset@@* 7
m_Parent@@8 @
;@@@ A
[AA 	
SerializeFieldAA	 
,AA 
HideInInspectorAA (
]AA( )
ListAA* .
<AA. /
ScriptableObjectAA/ ?
>AA? @

m_ChildrenAAA K
;AAK L
[CC 	
NonSerializedCC	 
]CC 
intCC 
m_ItemsHashCC '
;CC' (
[DD 	
NonSerializedDD	 
]DD 
TimelineClipDD $
[DD$ %
]DD% &
m_ClipsCacheDD' 3
;DD3 4
DiscreteTimeFF 
m_StartFF 
;FF 
DiscreteTimeGG 
m_EndGG 
;GG 
boolHH 
m_CacheSortedHH 
;HH 
boolII 
?II #
m_SupportsNotificationsII %
;II% &
staticKK 

TrackAssetKK 
[KK 
]KK 
s_EmptyCacheKK (
=KK) *
newKK+ .

TrackAssetKK/ 9
[KK9 :
$numKK: ;
]KK; <
;KK< =
IEnumerableLL 
<LL 

TrackAssetLL 
>LL 
m_ChildTrackCacheLL  1
;LL1 2
staticNN 

DictionaryNN 
<NN 
TypeNN 
,NN %
TrackBindingTypeAttributeNN  9
>NN9 :,
 s_TrackBindingTypeAttributeCacheNN; [
=NN\ ]
newNN^ a

DictionaryNNb l
<NNl m
TypeNNm q
,NNq r&
TrackBindingTypeAttribute	NNs å
>
NNå ç
(
NNç é
)
NNé è
;
NNè ê
[PP 	
SerializeFieldPP	 
,PP 
HideInInspectorPP (
]PP( )
	protectedPP* 3
internalPP4 <
ListPP= A
<PPA B
TimelineClipPPB N
>PPN O
m_ClipsPPP W
=PPX Y
newPPZ ]
ListPP^ b
<PPb c
TimelineClipPPc o
>PPo p
(PPp q
)PPq r
;PPr s
[RR 	
SerializeFieldRR	 
,RR 
HideInInspectorRR (
]RR( )

MarkerListRR* 4
	m_MarkersRR5 >
=RR? @
newRRA D

MarkerListRRE O
(RRO P
$numRRP Q
)RRQ R
;RRR S
internalUU 
intUU 

DirtyIndexUU 
{UU  !
getUU" %
;UU% &
privateUU' .
setUU/ 2
;UU2 3
}UU4 5
internalVV 
voidVV 
	MarkDirtyVV 
(VV  
)VV  !
{WW 	

DirtyIndexXX 
++XX 
;XX 
foreachYY 
(YY 
varYY 
clipYY 
inYY  
GetClipsYY! )
(YY) *
)YY* +
)YY+ ,
{ZZ 
if[[ 
([[ 
clip[[ 
!=[[ 
null[[  
)[[  !
clip\\ 
.\\ 
	MarkDirty\\ "
(\\" #
)\\# $
;\\$ %
}]] 
}^^ 	
publicee 
doubleee 
startee 
{ff 	
getgg 
{hh 
UpdateDurationii 
(ii 
)ii  
;ii  !
returnjj 
(jj 
doublejj 
)jj 
m_Startjj &
;jj& '
}kk 
}ll 	
publicqq 
doubleqq 
endqq 
{rr 	
getss 
{tt 
UpdateDurationuu 
(uu 
)uu  
;uu  !
returnvv 
(vv 
doublevv 
)vv 
m_Endvv $
;vv$ %
}ww 
}xx 	
public}} 
sealed}} 
override}} 
double}} %
duration}}& .
{~~ 	
get 
{
ÄÄ 
UpdateDuration
ÅÅ 
(
ÅÅ 
)
ÅÅ  
;
ÅÅ  !
return
ÇÇ 
(
ÇÇ 
double
ÇÇ 
)
ÇÇ 
(
ÇÇ  
m_End
ÇÇ  %
-
ÇÇ& '
m_Start
ÇÇ( /
)
ÇÇ/ 0
;
ÇÇ0 1
}
ÉÉ 
}
ÑÑ 	
public
åå 
bool
åå 
muted
åå 
{
çç 	
get
éé 
{
éé 
return
éé 
m_Muted
éé  
;
éé  !
}
éé" #
set
èè 
{
èè 
m_Muted
èè 
=
èè 
value
èè !
;
èè! "
}
èè# $
}
êê 	
public
òò 
bool
òò 
mutedInHierarchy
òò $
{
ôô 	
get
öö 
{
õõ 
if
úú 
(
úú 
muted
úú 
)
úú 
return
ùù 
true
ùù 
;
ùù  

TrackAsset
üü 
p
üü 
=
üü 
this
üü #
;
üü# $
while
†† 
(
†† 
p
†† 
.
†† 
parent
†† 
as
††  "

TrackAsset
††# -
!=
††. 0
null
††1 5
)
††5 6
{
°° 
p
¢¢ 
=
¢¢ 
(
¢¢ 

TrackAsset
¢¢ #
)
¢¢# $
p
¢¢$ %
.
¢¢% &
parent
¢¢& ,
;
¢¢, -
if
££ 
(
££ 
p
££ 
as
££ 

GroupTrack
££ '
!=
££( *
null
££+ /
)
££/ 0
return
§§ 
p
§§  
.
§§  !
mutedInHierarchy
§§! 1
;
§§1 2
}
•• 
return
ßß 
false
ßß 
;
ßß 
}
®® 
}
©© 	
public
ÆÆ 
TimelineAsset
ÆÆ 
timelineAsset
ÆÆ *
{
ØØ 	
get
∞∞ 
{
±± 
var
≤≤ 
node
≤≤ 
=
≤≤ 
this
≤≤ 
;
≤≤  
while
≥≥ 
(
≥≥ 
node
≥≥ 
!=
≥≥ 
null
≥≥ #
)
≥≥# $
{
¥¥ 
if
µµ 
(
µµ 
node
µµ 
.
µµ 
parent
µµ #
==
µµ$ &
null
µµ' +
)
µµ+ ,
return
∂∂ 
null
∂∂ #
;
∂∂# $
var
∏∏ 
seq
∏∏ 
=
∏∏ 
node
∏∏ "
.
∏∏" #
parent
∏∏# )
as
∏∏* ,
TimelineAsset
∏∏- :
;
∏∏: ;
if
ππ 
(
ππ 
seq
ππ 
!=
ππ 
null
ππ #
)
ππ# $
return
∫∫ 
seq
∫∫ "
;
∫∫" #
node
ºº 
=
ºº 
node
ºº 
.
ºº  
parent
ºº  &
as
ºº' )

TrackAsset
ºº* 4
;
ºº4 5
}
ΩΩ 
return
ææ 
null
ææ 
;
ææ 
}
øø 
}
¿¿ 	
public
»» 
PlayableAsset
»» 
parent
»» #
{
…… 	
get
   
{
   
return
   
m_Parent
   !
;
  ! "
}
  # $
internal
ÀÀ 
set
ÀÀ 
{
ÀÀ 
m_Parent
ÀÀ #
=
ÀÀ$ %
value
ÀÀ& +
;
ÀÀ+ ,
}
ÀÀ- .
}
ÃÃ 	
public
““ 
IEnumerable
““ 
<
““ 
TimelineClip
““ '
>
““' (
GetClips
““) 1
(
““1 2
)
““2 3
{
”” 	
return
‘‘ 
clips
‘‘ 
;
‘‘ 
}
’’ 	
internal
◊◊ 
TimelineClip
◊◊ 
[
◊◊ 
]
◊◊ 
clips
◊◊  %
{
ÿÿ 	
get
ŸŸ 
{
⁄⁄ 
if
€€ 
(
€€ 
m_Clips
€€ 
==
€€ 
null
€€ #
)
€€# $
m_Clips
‹‹ 
=
‹‹ 
new
‹‹ !
List
‹‹" &
<
‹‹& '
TimelineClip
‹‹' 3
>
‹‹3 4
(
‹‹4 5
)
‹‹5 6
;
‹‹6 7
if
ﬁﬁ 
(
ﬁﬁ 
m_ClipsCache
ﬁﬁ  
==
ﬁﬁ! #
null
ﬁﬁ$ (
)
ﬁﬁ( )
{
ﬂﬂ 
m_CacheSorted
‡‡ !
=
‡‡" #
false
‡‡$ )
;
‡‡) *
m_ClipsCache
··  
=
··! "
m_Clips
··# *
.
··* +
ToArray
··+ 2
(
··2 3
)
··3 4
;
··4 5
}
‚‚ 
return
‰‰ 
m_ClipsCache
‰‰ #
;
‰‰# $
}
ÂÂ 
}
ÊÊ 	
public
ÓÓ 
virtual
ÓÓ 
bool
ÓÓ 
isEmpty
ÓÓ #
{
ÔÔ 	
get
 
{
 
return
 
!
 
hasClips
 "
&&
# %
!
& '
	hasCurves
' 0
&&
1 3
GetMarkerCount
4 B
(
B C
)
C D
==
E G
$num
H I
;
I J
}
K L
}
ÒÒ 	
public
ˆˆ 
bool
ˆˆ 
hasClips
ˆˆ 
{
˜˜ 	
get
¯¯ 
{
¯¯ 
return
¯¯ 
m_Clips
¯¯  
!=
¯¯! #
null
¯¯$ (
&&
¯¯) +
m_Clips
¯¯, 3
.
¯¯3 4
Count
¯¯4 9
!=
¯¯: <
$num
¯¯= >
;
¯¯> ?
}
¯¯@ A
}
˘˘ 	
public
ÅÅ 
bool
ÅÅ 
	hasCurves
ÅÅ 
{
ÇÇ 	
get
ÉÉ 
{
ÉÉ 
return
ÉÉ 
m_Curves
ÉÉ !
!=
ÉÉ" $
null
ÉÉ% )
&&
ÉÉ* ,
!
ÉÉ- .
m_Curves
ÉÉ. 6
.
ÉÉ6 7
empty
ÉÉ7 <
;
ÉÉ< =
}
ÉÉ> ?
}
ÑÑ 	
public
ââ 
bool
ââ 

isSubTrack
ââ 
{
ää 	
get
ãã 
{
åå 
var
çç 
owner
çç 
=
çç 
parent
çç "
as
çç# %

TrackAsset
çç& 0
;
çç0 1
return
éé 
owner
éé 
!=
éé 
null
éé  $
&&
éé% '
owner
éé( -
.
éé- .
GetType
éé. 5
(
éé5 6
)
éé6 7
==
éé8 :
GetType
éé; B
(
ééB C
)
ééC D
;
ééD E
}
èè 
}
êê 	
public
ññ 
override
ññ 
IEnumerable
ññ #
<
ññ# $
PlayableBinding
ññ$ 3
>
ññ3 4
outputs
ññ5 <
{
óó 	
get
òò 
{
ôô '
TrackBindingTypeAttribute
öö )
	attribute
öö* 3
;
öö3 4
if
õõ 
(
õõ 
!
õõ .
 s_TrackBindingTypeAttributeCache
õõ 5
.
õõ5 6
TryGetValue
õõ6 A
(
õõA B
GetType
õõB I
(
õõI J
)
õõJ K
,
õõK L
out
õõM P
	attribute
õõQ Z
)
õõZ [
)
õõ[ \
{
úú 
	attribute
ùù 
=
ùù 
(
ùù  !'
TrackBindingTypeAttribute
ùù! :
)
ùù: ;
	Attribute
ùù; D
.
ùùD E 
GetCustomAttribute
ùùE W
(
ùùW X
GetType
ùùX _
(
ùù_ `
)
ùù` a
,
ùùa b
typeof
ùùc i
(
ùùi j(
TrackBindingTypeAttributeùùj É
)ùùÉ Ñ
)ùùÑ Ö
;ùùÖ Ü.
 s_TrackBindingTypeAttributeCache
ûû 4
.
ûû4 5
Add
ûû5 8
(
ûû8 9
GetType
ûû9 @
(
ûû@ A
)
ûûA B
,
ûûB C
	attribute
ûûD M
)
ûûM N
;
ûûN O
}
üü 
var
°° 
trackBindingType
°° $
=
°°% &
	attribute
°°' 0
!=
°°1 3
null
°°4 8
?
°°9 :
	attribute
°°; D
.
°°D E
type
°°E I
:
°°J K
null
°°L P
;
°°P Q
yield
¢¢ 
return
¢¢ #
ScriptPlayableBinding
¢¢ 2
.
¢¢2 3
Create
¢¢3 9
(
¢¢9 :
name
¢¢: >
,
¢¢> ?
this
¢¢@ D
,
¢¢D E
trackBindingType
¢¢F V
)
¢¢V W
;
¢¢W X
}
££ 
}
§§ 	
public
≠≠ 
IEnumerable
≠≠ 
<
≠≠ 

TrackAsset
≠≠ %
>
≠≠% &
GetChildTracks
≠≠' 5
(
≠≠5 6
)
≠≠6 7
{
ÆÆ 	#
UpdateChildTrackCache
ØØ !
(
ØØ! "
)
ØØ" #
;
ØØ# $
return
∞∞ 
m_ChildTrackCache
∞∞ $
;
∞∞$ %
}
±± 	
internal
≥≥ 
string
≥≥ $
customPlayableTypename
≥≥ .
{
¥¥ 	
get
µµ 
{
µµ 
return
µµ *
m_CustomPlayableFullTypename
µµ 5
;
µµ5 6
}
µµ7 8
set
∂∂ 
{
∂∂ *
m_CustomPlayableFullTypename
∂∂ .
=
∂∂/ 0
value
∂∂1 6
;
∂∂6 7
}
∂∂8 9
}
∑∑ 	
public
ºº 
AnimationClip
ºº 
curves
ºº #
{
ΩΩ 	
get
ææ 
{
ææ 
return
ææ 
m_Curves
ææ !
;
ææ! "
}
ææ# $
internal
øø 
set
øø 
{
øø 
m_Curves
øø #
=
øø$ %
value
øø& +
;
øø+ ,
}
øø- .
}
¿¿ 	
string
¬¬ 
ICurvesOwner
¬¬ 
.
¬¬ 
defaultCurvesName
¬¬ -
{
√√ 	
get
ƒƒ 
{
ƒƒ 
return
ƒƒ  
kDefaultCurvesName
ƒƒ +
;
ƒƒ+ ,
}
ƒƒ- .
}
≈≈ 	
Object
«« 
ICurvesOwner
«« 
.
«« 
asset
«« !
{
»» 	
get
…… 
{
…… 
return
…… 
this
…… 
;
…… 
}
……  
}
   	
Object
ÃÃ 
ICurvesOwner
ÃÃ 
.
ÃÃ 

assetOwner
ÃÃ &
{
ÕÕ 	
get
ŒŒ 
{
ŒŒ 
return
ŒŒ 
timelineAsset
ŒŒ &
;
ŒŒ& '
}
ŒŒ( )
}
œœ 	

TrackAsset
—— 
ICurvesOwner
—— 
.
——  
targetTrack
——  +
{
““ 	
get
”” 
{
”” 
return
”” 
this
”” 
;
”” 
}
””  
}
‘‘ 	
internal
◊◊ 
List
◊◊ 
<
◊◊ 
ScriptableObject
◊◊ &
>
◊◊& '
subTracksObjects
◊◊( 8
{
ÿÿ 	
get
ŸŸ 
{
ŸŸ 
return
ŸŸ 

m_Children
ŸŸ #
;
ŸŸ# $
}
ŸŸ% &
}
⁄⁄ 	
public
‰‰ 
bool
‰‰ 
locked
‰‰ 
{
ÂÂ 	
get
ÊÊ 
{
ÊÊ 
return
ÊÊ 
m_Locked
ÊÊ !
;
ÊÊ! "
}
ÊÊ# $
set
ÁÁ 
{
ÁÁ 
m_Locked
ÁÁ 
=
ÁÁ 
value
ÁÁ "
;
ÁÁ" #
}
ÁÁ$ %
}
ËË 	
public
ÚÚ 
bool
ÚÚ 
lockedInHierarchy
ÚÚ %
{
ÛÛ 	
get
ÙÙ 
{
ıı 
if
ˆˆ 
(
ˆˆ 
locked
ˆˆ 
)
ˆˆ 
return
˜˜ 
true
˜˜ 
;
˜˜  

TrackAsset
˘˘ 
p
˘˘ 
=
˘˘ 
this
˘˘ #
;
˘˘# $
while
˙˙ 
(
˙˙ 
p
˙˙ 
.
˙˙ 
parent
˙˙ 
as
˙˙  "

TrackAsset
˙˙# -
!=
˙˙. 0
null
˙˙1 5
)
˙˙5 6
{
˚˚ 
p
¸¸ 
=
¸¸ 
(
¸¸ 

TrackAsset
¸¸ #
)
¸¸# $
p
¸¸$ %
.
¸¸% &
parent
¸¸& ,
;
¸¸, -
if
˝˝ 
(
˝˝ 
p
˝˝ 
as
˝˝ 

GroupTrack
˝˝ '
!=
˝˝( *
null
˝˝+ /
)
˝˝/ 0
return
˛˛ 
p
˛˛  
.
˛˛  !
lockedInHierarchy
˛˛! 2
;
˛˛2 3
}
ˇˇ 
return
ÅÅ 
false
ÅÅ 
;
ÅÅ 
}
ÇÇ 
}
ÉÉ 	
public
ãã 
bool
ãã #
supportsNotifications
ãã )
{
åå 	
get
çç 
{
éé 
if
èè 
(
èè 
!
èè %
m_SupportsNotifications
èè ,
.
èè, -
HasValue
èè- 5
)
èè5 6
{
êê %
m_SupportsNotifications
ëë +
=
ëë, -#
NotificationUtilities
ëë. C
.
ëëC D,
TrackTypeSupportsNotifications
ëëD b
(
ëëb c
GetType
ëëc j
(
ëëj k
)
ëëk l
)
ëël m
;
ëëm n
}
íí 
return
îî %
m_SupportsNotifications
îî .
.
îî. /
Value
îî/ 4
;
îî4 5
}
ïï 
}
ññ 	
void
òò 
__internalAwake
òò 
(
òò 
)
òò 
{
ôô 	
if
öö 
(
öö 
m_Clips
öö 
==
öö 
null
öö 
)
öö  
m_Clips
õõ 
=
õõ 
new
õõ 
List
õõ "
<
õõ" #
TimelineClip
õõ# /
>
õõ/ 0
(
õõ0 1
)
õõ1 2
;
õõ2 3
m_ChildTrackCache
ùù 
=
ùù 
null
ùù  $
;
ùù$ %
if
ûû 
(
ûû 

m_Children
ûû 
==
ûû 
null
ûû "
)
ûû" #

m_Children
üü 
=
üü 
new
üü  
List
üü! %
<
üü% &
ScriptableObject
üü& 6
>
üü6 7
(
üü7 8
)
üü8 9
;
üü9 :
for
¢¢ 
(
¢¢ 
int
¢¢ 
i
¢¢ 
=
¢¢ 

m_Children
¢¢ #
.
¢¢# $
Count
¢¢$ )
-
¢¢* +
$num
¢¢, -
;
¢¢- .
i
¢¢/ 0
>=
¢¢1 3
$num
¢¢4 5
;
¢¢5 6
i
¢¢7 8
--
¢¢8 :
)
¢¢: ;
{
££ 
object
§§ 
o
§§ 
=
§§ 

m_Children
§§ %
[
§§% &
i
§§& '
]
§§' (
;
§§( )
if
•• 
(
•• 
o
•• 
==
•• 
null
•• 
)
•• 
{
¶¶ 
Debug
ßß 
.
ßß 

LogWarning
ßß $
(
ßß$ %
$str
ßß% j
)
ßßj k
;
ßßk l

m_Children
®® 
.
®® 
RemoveAt
®® '
(
®®' (
i
®®( )
)
®®) *
;
®®* +
}
©© 
}
™™ 
}
¨¨ 	
public
øø 
void
øø 
CreateCurves
øø  
(
øø  !
string
øø! '
curvesClipName
øø( 6
)
øø6 7
{
¿¿ 	
if
¡¡ 
(
¡¡ 
m_Curves
¡¡ 
!=
¡¡ 
null
¡¡  
)
¡¡  !
return
¬¬ 
;
¬¬ 
m_Curves
ƒƒ 
=
ƒƒ %
TimelineCreateUtilities
ƒƒ .
.
ƒƒ. /)
CreateAnimationClipForTrack
ƒƒ/ J
(
ƒƒJ K
string
ƒƒK Q
.
ƒƒQ R
IsNullOrEmpty
ƒƒR _
(
ƒƒ_ `
curvesClipName
ƒƒ` n
)
ƒƒn o
?
ƒƒp q!
kDefaultCurvesNameƒƒr Ñ
:ƒƒÖ Ü
curvesClipNameƒƒá ï
,ƒƒï ñ
thisƒƒó õ
,ƒƒõ ú
trueƒƒù °
)ƒƒ° ¢
;ƒƒ¢ £
}
≈≈ 	
public
—— 
virtual
—— 
Playable
—— 
CreateTrackMixer
——  0
(
——0 1
PlayableGraph
——1 >
graph
——? D
,
——D E

GameObject
——F P
go
——Q S
,
——S T
int
——U X

inputCount
——Y c
)
——c d
{
““ 	
return
”” 
Playable
”” 
.
”” 
Create
”” "
(
””" #
graph
””# (
,
””( )

inputCount
””* 4
)
””4 5
;
””5 6
}
‘‘ 	
public
‹‹ 
sealed
‹‹ 
override
‹‹ 
Playable
‹‹ '
CreatePlayable
‹‹( 6
(
‹‹6 7
PlayableGraph
‹‹7 D
graph
‹‹E J
,
‹‹J K

GameObject
‹‹L V
go
‹‹W Y
)
‹‹Y Z
{
›› 	
return
ﬁﬁ 
Playable
ﬁﬁ 
.
ﬁﬁ 
Null
ﬁﬁ  
;
ﬁﬁ  !
}
ﬂﬂ 	
public
ËË 
TimelineClip
ËË 
CreateDefaultClip
ËË -
(
ËË- .
)
ËË. /
{
ÈÈ 	
var
ÍÍ %
trackClipTypeAttributes
ÍÍ '
=
ÍÍ( )
GetType
ÍÍ* 1
(
ÍÍ1 2
)
ÍÍ2 3
.
ÍÍ3 4!
GetCustomAttributes
ÍÍ4 G
(
ÍÍG H
typeof
ÍÍH N
(
ÍÍN O$
TrackClipTypeAttribute
ÍÍO e
)
ÍÍe f
,
ÍÍf g
true
ÍÍh l
)
ÍÍl m
;
ÍÍm n
Type
ÎÎ 
playableAssetType
ÎÎ "
=
ÎÎ# $
null
ÎÎ% )
;
ÎÎ) *
foreach
ÏÏ 
(
ÏÏ 
var
ÏÏ $
trackClipTypeAttribute
ÏÏ /
in
ÏÏ0 2%
trackClipTypeAttributes
ÏÏ3 J
)
ÏÏJ K
{
ÌÌ 
var
ÓÓ 
	attribute
ÓÓ 
=
ÓÓ $
trackClipTypeAttribute
ÓÓ  6
as
ÓÓ7 9$
TrackClipTypeAttribute
ÓÓ: P
;
ÓÓP Q
if
ÔÔ 
(
ÔÔ 
	attribute
ÔÔ 
!=
ÔÔ  
null
ÔÔ! %
&&
ÔÔ& (
typeof
ÔÔ) /
(
ÔÔ/ 0
IPlayableAsset
ÔÔ0 >
)
ÔÔ> ?
.
ÔÔ? @
IsAssignableFrom
ÔÔ@ P
(
ÔÔP Q
	attribute
ÔÔQ Z
.
ÔÔZ [
inspectedType
ÔÔ[ h
)
ÔÔh i
&&
ÔÔj l
typeof
ÔÔm s
(
ÔÔs t
ScriptableObjectÔÔt Ñ
)ÔÔÑ Ö
.ÔÔÖ Ü 
IsAssignableFromÔÔÜ ñ
(ÔÔñ ó
	attributeÔÔó †
.ÔÔ† °
inspectedTypeÔÔ° Æ
)ÔÔÆ Ø
)ÔÔØ ∞
{
 
playableAssetType
ÒÒ %
=
ÒÒ& '
	attribute
ÒÒ( 1
.
ÒÒ1 2
inspectedType
ÒÒ2 ?
;
ÒÒ? @
break
ÚÚ 
;
ÚÚ 
}
ÛÛ 
}
ÙÙ 
if
ˆˆ 
(
ˆˆ 
playableAssetType
ˆˆ !
==
ˆˆ" $
null
ˆˆ% )
)
ˆˆ) *
{
˜˜ 
Debug
¯¯ 
.
¯¯ 

LogWarning
¯¯  
(
¯¯  !
$str
¯¯! I
+
¯¯J K
GetType
¯¯L S
(
¯¯S T
)
¯¯T U
)
¯¯U V
;
¯¯V W
return
˘˘ 
null
˘˘ 
;
˘˘ 
}
˙˙ 
return
˚˚ '
CreateAndAddNewClipOfType
˚˚ ,
(
˚˚, -
playableAssetType
˚˚- >
)
˚˚> ?
;
˚˚? @
}
¸¸ 	
public
áá 
TimelineClip
áá 

CreateClip
áá &
<
áá& '
T
áá' (
>
áá( )
(
áá) *
)
áá* +
where
áá, 1
T
áá2 3
:
áá4 5
ScriptableObject
áá6 F
,
ááF G
IPlayableAsset
ááH V
{
àà 	
return
ââ 

CreateClip
ââ 
(
ââ 
typeof
ââ $
(
ââ$ %
T
ââ% &
)
ââ& '
)
ââ' (
;
ââ( )
}
ää 	
public
óó 
bool
óó 

DeleteClip
óó 
(
óó 
TimelineClip
óó +
clip
óó, 0
)
óó0 1
{
òò 	
if
ôô 
(
ôô 
!
ôô 
m_Clips
ôô 
.
ôô 
Contains
ôô !
(
ôô! "
clip
ôô" &
)
ôô& '
)
ôô' (
throw
öö 
new
öö '
InvalidOperationException
öö 3
(
öö3 4
$str
öö4 s
)
öös t
;
ööt u
return
úú 
timelineAsset
úú  
!=
úú! #
null
úú$ (
&&
úú) +
timelineAsset
úú, 9
.
úú9 :

DeleteClip
úú: D
(
úúD E
clip
úúE I
)
úúI J
;
úúJ K
}
ùù 	
public
¨¨ 
IMarker
¨¨ 
CreateMarker
¨¨ #
(
¨¨# $
Type
¨¨$ (
type
¨¨) -
,
¨¨- .
double
¨¨/ 5
time
¨¨6 :
)
¨¨: ;
{
≠≠ 	
return
ÆÆ 
	m_Markers
ÆÆ 
.
ÆÆ 
CreateMarker
ÆÆ )
(
ÆÆ) *
type
ÆÆ* .
,
ÆÆ. /
time
ÆÆ0 4
,
ÆÆ4 5
this
ÆÆ6 :
)
ÆÆ: ;
;
ÆÆ; <
}
ØØ 	
public
ΩΩ 
T
ΩΩ 
CreateMarker
ΩΩ 
<
ΩΩ 
T
ΩΩ 
>
ΩΩ  
(
ΩΩ  !
double
ΩΩ! '
time
ΩΩ( ,
)
ΩΩ, -
where
ΩΩ. 3
T
ΩΩ4 5
:
ΩΩ6 7
ScriptableObject
ΩΩ8 H
,
ΩΩH I
IMarker
ΩΩJ Q
{
ææ 	
return
øø 
(
øø 
T
øø 
)
øø 
CreateMarker
øø "
(
øø" #
typeof
øø# )
(
øø) *
T
øø* +
)
øø+ ,
,
øø, -
time
øø. 2
)
øø2 3
;
øø3 4
}
¿¿ 	
public
«« 
bool
«« 
DeleteMarker
««  
(
««  !
IMarker
««! (
marker
««) /
)
««/ 0
{
»» 	
return
…… 
	m_Markers
…… 
.
…… 
Remove
…… #
(
……# $
marker
……$ *
)
……* +
;
……+ ,
}
   	
public
—— 
IEnumerable
—— 
<
—— 
IMarker
—— "
>
——" #

GetMarkers
——$ .
(
——. /
)
——/ 0
{
““ 	
return
”” 
	m_Markers
”” 
.
”” 

GetMarkers
”” '
(
””' (
)
””( )
;
””) *
}
‘‘ 	
public
⁄⁄ 
int
⁄⁄ 
GetMarkerCount
⁄⁄ !
(
⁄⁄! "
)
⁄⁄" #
{
€€ 	
return
‹‹ 
	m_Markers
‹‹ 
.
‹‹ 
Count
‹‹ "
;
‹‹" #
}
›› 	
public
ÊÊ 
IMarker
ÊÊ 
	GetMarker
ÊÊ  
(
ÊÊ  !
int
ÊÊ! $
idx
ÊÊ% (
)
ÊÊ( )
{
ÁÁ 	
return
ËË 
	m_Markers
ËË 
[
ËË 
idx
ËË  
]
ËË  !
;
ËË! "
}
ÈÈ 	
internal
ÎÎ 
TimelineClip
ÎÎ 

CreateClip
ÎÎ (
(
ÎÎ( )
System
ÎÎ) /
.
ÎÎ/ 0
Type
ÎÎ0 4
requestedType
ÎÎ5 B
)
ÎÎB C
{
ÏÏ 	
if
ÌÌ 
(
ÌÌ 
ValidateClipType
ÌÌ  
(
ÌÌ  !
requestedType
ÌÌ! .
)
ÌÌ. /
)
ÌÌ/ 0
return
ÓÓ '
CreateAndAddNewClipOfType
ÓÓ 0
(
ÓÓ0 1
requestedType
ÓÓ1 >
)
ÓÓ> ?
;
ÓÓ? @
throw
 
new
 '
InvalidOperationException
 /
(
/ 0
$str
0 @
+
A B
requestedType
C P
+
Q R
$str
S z
+
{ |
GetType} Ñ
(Ñ Ö
)Ö Ü
)Ü á
;á à
}
ÒÒ 	
internal
ÛÛ 
TimelineClip
ÛÛ '
CreateAndAddNewClipOfType
ÛÛ 7
(
ÛÛ7 8
Type
ÛÛ8 <
requestedType
ÛÛ= J
)
ÛÛJ K
{
ÙÙ 	
var
ıı 
newClip
ıı 
=
ıı 
CreateClipOfType
ıı *
(
ıı* +
requestedType
ıı+ 8
)
ıı8 9
;
ıı9 :
AddClip
ˆˆ 
(
ˆˆ 
newClip
ˆˆ 
)
ˆˆ 
;
ˆˆ 
return
˜˜ 
newClip
˜˜ 
;
˜˜ 
}
¯¯ 	
internal
˙˙ 
TimelineClip
˙˙ 
CreateClipOfType
˙˙ .
(
˙˙. /
Type
˙˙/ 3
requestedType
˙˙4 A
)
˙˙A B
{
˚˚ 	
if
¸¸ 
(
¸¸ 
!
¸¸ 
ValidateClipType
¸¸ !
(
¸¸! "
requestedType
¸¸" /
)
¸¸/ 0
)
¸¸0 1
throw
˝˝ 
new
˝˝ 
System
˝˝  
.
˝˝  !'
InvalidOperationException
˝˝! :
(
˝˝: ;
$str
˝˝; K
+
˝˝L M
requestedType
˝˝N [
+
˝˝\ ]
$str˝˝^ Ö
+˝˝Ü á
GetType˝˝à è
(˝˝è ê
)˝˝ê ë
)˝˝ë í
;˝˝í ì
var
ˇˇ 
playableAsset
ˇˇ 
=
ˇˇ 
CreateInstance
ˇˇ  .
(
ˇˇ. /
requestedType
ˇˇ/ <
)
ˇˇ< =
;
ˇˇ= >
if
ÄÄ 
(
ÄÄ 
playableAsset
ÄÄ 
==
ÄÄ  
null
ÄÄ! %
)
ÄÄ% &
{
ÅÅ 
throw
ÇÇ 
new
ÇÇ 
System
ÇÇ  
.
ÇÇ  !'
InvalidOperationException
ÇÇ! :
(
ÇÇ: ;
$str
ÇÇ; w
+
ÇÇx y
requestedTypeÇÇz á
.ÇÇá à
NameÇÇà å
)ÇÇå ç
;ÇÇç é
}
ÉÉ 
playableAsset
ÑÑ 
.
ÑÑ 
name
ÑÑ 
=
ÑÑ  
requestedType
ÑÑ! .
.
ÑÑ. /
Name
ÑÑ/ 3
;
ÑÑ3 4%
TimelineCreateUtilities
ÖÖ #
.
ÖÖ# $!
SaveAssetIntoObject
ÖÖ$ 7
(
ÖÖ7 8
playableAsset
ÖÖ8 E
,
ÖÖE F
this
ÖÖG K
)
ÖÖK L
;
ÖÖL M
TimelineUndo
ÜÜ 
.
ÜÜ '
RegisterCreatedObjectUndo
ÜÜ 2
(
ÜÜ2 3
playableAsset
ÜÜ3 @
,
ÜÜ@ A
$str
ÜÜB O
)
ÜÜO P
;
ÜÜP Q
return
àà !
CreateClipFromAsset
àà &
(
àà& '
playableAsset
àà' 4
)
àà4 5
;
àà5 6
}
ââ 	
internal
êê 
TimelineClip
êê )
CreateClipFromPlayableAsset
êê 9
(
êê9 :
IPlayableAsset
êê: H
asset
êêI N
)
êêN O
{
ëë 	
if
íí 
(
íí 
asset
íí 
==
íí 
null
íí 
)
íí 
throw
ìì 
new
ìì #
ArgumentNullException
ìì /
(
ìì/ 0
$str
ìì0 7
)
ìì7 8
;
ìì8 9
if
ïï 
(
ïï 
(
ïï 
asset
ïï 
as
ïï 
ScriptableObject
ïï *
)
ïï* +
==
ïï, .
null
ïï/ 3
)
ïï3 4
throw
ññ 
new
ññ 
System
ññ  
.
ññ  !
ArgumentException
ññ! 2
(
ññ2 3
$str
ññ3 Q
+
ññR S
$strññT É
)ññÉ Ñ
;ññÑ Ö
if
òò 
(
òò 
!
òò 
ValidateClipType
òò !
(
òò! "
asset
òò" '
.
òò' (
GetType
òò( /
(
òò/ 0
)
òò0 1
)
òò1 2
)
òò2 3
throw
ôô 
new
ôô 
System
ôô  
.
ôô  !'
InvalidOperationException
ôô! :
(
ôô: ;
$str
ôô; K
+
ôôL M
asset
ôôN S
.
ôôS T
GetType
ôôT [
(
ôô[ \
)
ôô\ ]
+
ôô^ _
$strôô` á
+ôôà â
GetTypeôôä ë
(ôôë í
)ôôí ì
)ôôì î
;ôôî ï
return
õõ !
CreateClipFromAsset
õõ &
(
õõ& '
asset
õõ' ,
as
õõ- /
ScriptableObject
õõ0 @
)
õõ@ A
;
õõA B
}
úú 	
private
ûû 
TimelineClip
ûû !
CreateClipFromAsset
ûû 0
(
ûû0 1
ScriptableObject
ûû1 A
playableAsset
ûûB O
)
ûûO P
{
üü 	
TimelineUndo
†† 
.
†† 
PushUndo
†† !
(
††! "
this
††" &
,
††& '
$str
††( 5
)
††5 6
;
††6 7
var
¢¢ 
newClip
¢¢ 
=
¢¢ ,
CreateNewClipContainerInternal
¢¢ 8
(
¢¢8 9
)
¢¢9 :
;
¢¢: ;
newClip
££ 
.
££ 
displayName
££ 
=
££  !
playableAsset
££" /
.
££/ 0
name
££0 4
;
££4 5
newClip
§§ 
.
§§ 
asset
§§ 
=
§§ 
playableAsset
§§ )
;
§§) *
IPlayableAsset
¶¶ 
iPlayableAsset
¶¶ )
=
¶¶* +
playableAsset
¶¶, 9
as
¶¶: <
IPlayableAsset
¶¶= K
;
¶¶K L
if
ßß 
(
ßß 
iPlayableAsset
ßß 
!=
ßß !
null
ßß" &
)
ßß& '
{
®® 
var
©© 
candidateDuration
©© %
=
©©& '
iPlayableAsset
©©( 6
.
©©6 7
duration
©©7 ?
;
©©? @
if
´´ 
(
´´ 
!
´´ 
double
´´ 
.
´´ 

IsInfinity
´´ &
(
´´& '
candidateDuration
´´' 8
)
´´8 9
&&
´´: <
candidateDuration
´´= N
>
´´O P
$num
´´Q R
)
´´R S
newClip
¨¨ 
.
¨¨ 
duration
¨¨ $
=
¨¨% &
Math
¨¨' +
.
¨¨+ ,
Min
¨¨, /
(
¨¨/ 0
Math
¨¨0 4
.
¨¨4 5
Max
¨¨5 8
(
¨¨8 9
candidateDuration
¨¨9 J
,
¨¨J K
TimelineClip
¨¨L X
.
¨¨X Y
kMinDuration
¨¨Y e
)
¨¨e f
,
¨¨f g
TimelineClip
¨¨h t
.
¨¨t u
kMaxTimeValue¨¨u Ç
)¨¨Ç É
;¨¨É Ñ
}
≠≠ 
try
ØØ 
{
∞∞ 
OnCreateClip
±± 
(
±± 
newClip
±± $
)
±±$ %
;
±±% &
}
≤≤ 
catch
≥≥ 
(
≥≥ 
	Exception
≥≥ 
e
≥≥ 
)
≥≥ 
{
¥¥ 
Debug
µµ 
.
µµ 
LogError
µµ 
(
µµ 
e
µµ  
.
µµ  !
Message
µµ! (
,
µµ( )
playableAsset
µµ* 7
)
µµ7 8
;
µµ8 9
return
∂∂ 
null
∂∂ 
;
∂∂ 
}
∑∑ 
return
ππ 
newClip
ππ 
;
ππ 
}
∫∫ 	
internal
ºº 
IEnumerable
ºº 
<
ºº 
ScriptableObject
ºº -
>
ºº- .
GetMarkersRaw
ºº/ <
(
ºº< =
)
ºº= >
{
ΩΩ 	
return
ææ 
	m_Markers
ææ 
.
ææ 
GetRawMarkerList
ææ -
(
ææ- .
)
ææ. /
;
ææ/ 0
}
øø 	
internal
¡¡ 
void
¡¡ 
ClearMarkers
¡¡ "
(
¡¡" #
)
¡¡# $
{
¬¬ 	
	m_Markers
√√ 
.
√√ 
Clear
√√ 
(
√√ 
)
√√ 
;
√√ 
}
ƒƒ 	
internal
∆∆ 
void
∆∆ 
	AddMarker
∆∆ 
(
∆∆  
ScriptableObject
∆∆  0
e
∆∆1 2
)
∆∆2 3
{
«« 	
	m_Markers
»» 
.
»» 
Add
»» 
(
»» 
e
»» 
)
»» 
;
»» 
}
…… 	
internal
ÀÀ 
bool
ÀÀ 
DeleteMarkerRaw
ÀÀ %
(
ÀÀ% &
ScriptableObject
ÀÀ& 6
marker
ÀÀ7 =
)
ÀÀ= >
{
ÃÃ 	
return
ÕÕ 
	m_Markers
ÕÕ 
.
ÕÕ 
Remove
ÕÕ #
(
ÕÕ# $
marker
ÕÕ$ *
,
ÕÕ* +
timelineAsset
ÕÕ, 9
,
ÕÕ9 :
this
ÕÕ; ?
)
ÕÕ? @
;
ÕÕ@ A
}
ŒŒ 	
int
–– 
GetTimeRangeHash
–– 
(
–– 
)
–– 
{
—— 	
double
““ 
start
““ 
=
““ 
double
““ !
.
““! "
MaxValue
““" *
,
““* +
end
““, /
=
““0 1
double
““2 8
.
““8 9
MinValue
““9 A
;
““A B
int
”” 
count
”” 
=
”” 
	m_Markers
”” !
.
””! "
Count
””" '
;
””' (
for
‘‘ 
(
‘‘ 
int
‘‘ 
i
‘‘ 
=
‘‘ 
$num
‘‘ 
;
‘‘ 
i
‘‘ 
<
‘‘ 
	m_Markers
‘‘  )
.
‘‘) *
Count
‘‘* /
;
‘‘/ 0
i
‘‘1 2
++
‘‘2 4
)
‘‘4 5
{
’’ 
var
÷÷ 
marker
÷÷ 
=
÷÷ 
	m_Markers
÷÷ &
[
÷÷& '
i
÷÷' (
]
÷÷( )
;
÷÷) *
if
◊◊ 
(
◊◊ 
!
◊◊ 
(
◊◊ 
marker
◊◊ 
is
◊◊ 
INotification
◊◊  -
)
◊◊- .
)
◊◊. /
{
ÿÿ 
continue
ŸŸ 
;
ŸŸ 
}
⁄⁄ 
if
‹‹ 
(
‹‹ 
marker
‹‹ 
.
‹‹ 
time
‹‹ 
<
‹‹  !
start
‹‹" '
)
‹‹' (
start
›› 
=
›› 
marker
›› "
.
››" #
time
››# '
;
››' (
if
ﬁﬁ 
(
ﬁﬁ 
marker
ﬁﬁ 
.
ﬁﬁ 
time
ﬁﬁ 
>
ﬁﬁ  !
end
ﬁﬁ" %
)
ﬁﬁ% &
end
ﬂﬂ 
=
ﬂﬂ 
marker
ﬂﬂ  
.
ﬂﬂ  !
time
ﬂﬂ! %
;
ﬂﬂ% &
}
‡‡ 
return
‚‚ 
start
‚‚ 
.
‚‚ 
GetHashCode
‚‚ $
(
‚‚$ %
)
‚‚% &
.
‚‚& '
CombineHash
‚‚' 2
(
‚‚2 3
end
‚‚3 6
.
‚‚6 7
GetHashCode
‚‚7 B
(
‚‚B C
)
‚‚C D
)
‚‚D E
;
‚‚E F
}
„„ 	
internal
ÂÂ 
void
ÂÂ 
AddClip
ÂÂ 
(
ÂÂ 
TimelineClip
ÂÂ *
newClip
ÂÂ+ 2
)
ÂÂ2 3
{
ÊÊ 	
if
ÁÁ 
(
ÁÁ 
!
ÁÁ 
m_Clips
ÁÁ 
.
ÁÁ 
Contains
ÁÁ !
(
ÁÁ! "
newClip
ÁÁ" )
)
ÁÁ) *
)
ÁÁ* +
{
ËË 
m_Clips
ÈÈ 
.
ÈÈ 
Add
ÈÈ 
(
ÈÈ 
newClip
ÈÈ #
)
ÈÈ# $
;
ÈÈ$ %
m_ClipsCache
ÍÍ 
=
ÍÍ 
null
ÍÍ #
;
ÍÍ# $
}
ÎÎ 
}
ÏÏ 	
Playable
ÓÓ )
CreateNotificationsPlayable
ÓÓ ,
(
ÓÓ, -
PlayableGraph
ÓÓ- :
graph
ÓÓ; @
,
ÓÓ@ A
Playable
ÓÓB J
mixerPlayable
ÓÓK X
,
ÓÓX Y

GameObject
ÓÓZ d
go
ÓÓe g
,
ÓÓg h
Playable
ÓÓi q
timelinePlayableÓÓr Ç
)ÓÓÇ É
{
ÔÔ 	
s_BuildData
 
.
 

markerList
 "
.
" #
Clear
# (
(
( )
)
) *
;
* +!
GatherNotifications
ÒÒ 
(
ÒÒ  
s_BuildData
ÒÒ  +
.
ÒÒ+ ,

markerList
ÒÒ, 6
)
ÒÒ6 7
;
ÒÒ7 8
DirectorWrapMode
ÚÚ 
extrapolationMode
ÚÚ .
=
ÚÚ/ 0
DirectorWrapMode
ÚÚ1 A
.
ÚÚA B
None
ÚÚB F
;
ÚÚF G
if
ÛÛ 
(
ÛÛ 
go
ÛÛ 
.
ÛÛ 
TryGetComponent
ÛÛ "
(
ÛÛ" #
out
ÛÛ# &
PlayableDirector
ÛÛ' 7
director
ÛÛ8 @
)
ÛÛ@ A
)
ÛÛA B
{
ÙÙ 
extrapolationMode
ıı !
=
ıı" #
director
ıı$ ,
.
ıı, -
extrapolationMode
ıı- >
;
ıı> ?
}
ˆˆ 
var
¯¯ 
duration
¯¯ 
=
¯¯ 
timelineAsset
¯¯ (
.
¯¯( )
duration
¯¯) 1
;
¯¯1 2
var
˘˘ "
notificationPlayable
˘˘ $
=
˘˘% &#
NotificationUtilities
˘˘' <
.
˘˘< =)
CreateNotificationsPlayable
˘˘= X
(
˘˘X Y
graph
˘˘Y ^
,
˘˘^ _
s_BuildData
˘˘` k
.
˘˘k l

markerList
˘˘l v
,
˘˘v w
duration˘˘x Ä
,˘˘Ä Å!
extrapolationMode˘˘Ç ì
)˘˘ì î
;˘˘î ï
if
˙˙ 
(
˙˙ "
notificationPlayable
˙˙ $
.
˙˙$ %
IsValid
˙˙% ,
(
˙˙, -
)
˙˙- .
)
˙˙. /
{
˚˚ "
notificationPlayable
¸¸ $
.
¸¸$ %
GetBehaviour
¸¸% 1
(
¸¸1 2
)
¸¸2 3
.
¸¸3 4

timeSource
¸¸4 >
=
¸¸? @
timelinePlayable
¸¸A Q
;
¸¸Q R
if
˝˝ 
(
˝˝ 
mixerPlayable
˝˝ !
.
˝˝! "
IsValid
˝˝" )
(
˝˝) *
)
˝˝* +
)
˝˝+ ,
{
˛˛ "
notificationPlayable
ˇˇ (
.
ˇˇ( )
SetInputCount
ˇˇ) 6
(
ˇˇ6 7
$num
ˇˇ7 8
)
ˇˇ8 9
;
ˇˇ9 :
graph
ÄÄ 
.
ÄÄ 
Connect
ÄÄ !
(
ÄÄ! "
mixerPlayable
ÄÄ" /
,
ÄÄ/ 0
$num
ÄÄ1 2
,
ÄÄ2 3"
notificationPlayable
ÄÄ4 H
,
ÄÄH I
$num
ÄÄJ K
)
ÄÄK L
;
ÄÄL M"
notificationPlayable
ÅÅ (
.
ÅÅ( )
SetInputWeight
ÅÅ) 7
(
ÅÅ7 8
mixerPlayable
ÅÅ8 E
,
ÅÅE F
$num
ÅÅG H
)
ÅÅH I
;
ÅÅI J
}
ÇÇ 
}
ÉÉ 
return
ÖÖ "
notificationPlayable
ÖÖ '
;
ÖÖ' (
}
ÜÜ 	
internal
àà 
Playable
àà !
CreatePlayableGraph
àà -
(
àà- .
PlayableGraph
àà. ;
graph
àà< A
,
ààA B

GameObject
ààC M
go
ààN P
,
ààP Q
IntervalTree
ààR ^
<
àà^ _
RuntimeElement
àà_ m
>
ààm n
tree
àào s
,
ààs t
Playable
ààu }
timelinePlayableàà~ é
)ààé è
{
ââ 	
UpdateDuration
ää 
(
ää 
)
ää 
;
ää 
var
ãã 
mixerPlayable
ãã 
=
ãã 
Playable
ãã  (
.
ãã( )
Null
ãã) -
;
ãã- .
if
åå 
(
åå %
CanCreateMixerRecursive
åå '
(
åå' (
)
åå( )
)
åå) *
mixerPlayable
çç 
=
çç &
CreateMixerPlayableGraph
çç  8
(
çç8 9
graph
çç9 >
,
çç> ?
go
çç@ B
,
ççB C
tree
ççD H
)
ççH I
;
ççI J
Playable
èè #
notificationsPlayable
èè *
=
èè+ ,)
CreateNotificationsPlayable
èè- H
(
èèH I
graph
èèI N
,
èèN O
mixerPlayable
èèP ]
,
èè] ^
go
èè_ a
,
èèa b
timelinePlayable
èèc s
)
èès t
;
èèt u
s_BuildData
ìì 
.
ìì 
Clear
ìì 
(
ìì 
)
ìì 
;
ìì  
if
îî 
(
îî 
!
îî #
notificationsPlayable
îî &
.
îî& '
IsValid
îî' .
(
îî. /
)
îî/ 0
&&
îî1 3
!
îî4 5
mixerPlayable
îî5 B
.
îîB C
IsValid
îîC J
(
îîJ K
)
îîK L
)
îîL M
{
ïï 
Debug
ññ 
.
ññ 
LogErrorFormat
ññ $
(
ññ$ %
$str
ññ% w
,
ññw x
name
ññy }
,
ññ} ~
GetType
óó 
(
óó 
)
óó 
.
óó 
FullName
óó &
)
óó& '
;
óó' (
return
ôô 
Playable
ôô 
.
ôô  
Create
ôô  &
(
ôô& '
graph
ôô' ,
)
ôô, -
;
ôô- .
}
öö 
return
úú #
notificationsPlayable
úú (
.
úú( )
IsValid
úú) 0
(
úú0 1
)
úú1 2
?
úú3 4#
notificationsPlayable
úú5 J
:
úúK L
mixerPlayable
úúM Z
;
úúZ [
}
ùù 	
internal
üü 
virtual
üü 
Playable
üü !
CompileClips
üü" .
(
üü. /
PlayableGraph
üü/ <
graph
üü= B
,
üüB C

GameObject
üüD N
go
üüO Q
,
üüQ R
IList
üüS X
<
üüX Y
TimelineClip
üüY e
>
üüe f
timelineClips
üüg t
,
üüt u
IntervalTreeüüv Ç
<üüÇ É
RuntimeElementüüÉ ë
>üüë í
treeüüì ó
)üüó ò
{
†† 	
var
°° 
blend
°° 
=
°° 
CreateTrackMixer
°° (
(
°°( )
graph
°°) .
,
°°. /
go
°°0 2
,
°°2 3
timelineClips
°°4 A
.
°°A B
Count
°°B G
)
°°G H
;
°°H I
for
¢¢ 
(
¢¢ 
var
¢¢ 
c
¢¢ 
=
¢¢ 
$num
¢¢ 
;
¢¢ 
c
¢¢ 
<
¢¢ 
timelineClips
¢¢  -
.
¢¢- .
Count
¢¢. 3
;
¢¢3 4
c
¢¢5 6
++
¢¢6 8
)
¢¢8 9
{
££ 
var
§§ 
source
§§ 
=
§§ 
CreatePlayable
§§ +
(
§§+ ,
graph
§§, 1
,
§§1 2
go
§§3 5
,
§§5 6
timelineClips
§§7 D
[
§§D E
c
§§E F
]
§§F G
)
§§G H
;
§§H I
if
•• 
(
•• 
source
•• 
.
•• 
IsValid
•• "
(
••" #
)
••# $
)
••$ %
{
¶¶ 
source
ßß 
.
ßß 
SetDuration
ßß &
(
ßß& '
timelineClips
ßß' 4
[
ßß4 5
c
ßß5 6
]
ßß6 7
.
ßß7 8
duration
ßß8 @
)
ßß@ A
;
ßßA B
var
®® 
clip
®® 
=
®® 
new
®® "
RuntimeClip
®®# .
(
®®. /
timelineClips
®®/ <
[
®®< =
c
®®= >
]
®®> ?
,
®®? @
source
®®A G
,
®®G H
blend
®®I N
)
®®N O
;
®®O P
tree
©© 
.
©© 
Add
©© 
(
©© 
clip
©© !
)
©©! "
;
©©" #
graph
™™ 
.
™™ 
Connect
™™ !
(
™™! "
source
™™" (
,
™™( )
$num
™™* +
,
™™+ ,
blend
™™- 2
,
™™2 3
c
™™4 5
)
™™5 6
;
™™6 7
blend
´´ 
.
´´ 
SetInputWeight
´´ (
(
´´( )
c
´´) *
,
´´* +
$num
´´, 0
)
´´0 1
;
´´1 2
}
¨¨ 
}
≠≠ %
ConfigureTrackAnimation
ÆÆ #
(
ÆÆ# $
tree
ÆÆ$ (
,
ÆÆ( )
go
ÆÆ* ,
,
ÆÆ, -
blend
ÆÆ. 3
)
ÆÆ3 4
;
ÆÆ4 5
return
ØØ 
blend
ØØ 
;
ØØ 
}
∞∞ 	
void
≤≤ $
GatherCompilableTracks
≤≤ #
(
≤≤# $
IList
≤≤$ )
<
≤≤) *

TrackAsset
≤≤* 4
>
≤≤4 5
tracks
≤≤6 <
)
≤≤< =
{
≥≥ 	
if
¥¥ 
(
¥¥ 
!
¥¥ 
muted
¥¥ 
&&
¥¥ !
CanCreateTrackMixer
¥¥ -
(
¥¥- .
)
¥¥. /
)
¥¥/ 0
tracks
µµ 
.
µµ 
Add
µµ 
(
µµ 
this
µµ 
)
µµ  
;
µµ  !
foreach
∑∑ 
(
∑∑ 
var
∑∑ 
c
∑∑ 
in
∑∑ 
GetChildTracks
∑∑ ,
(
∑∑, -
)
∑∑- .
)
∑∑. /
{
∏∏ 
if
ππ 
(
ππ 
c
ππ 
!=
ππ 
null
ππ 
)
ππ 
c
∫∫ 
.
∫∫ $
GatherCompilableTracks
∫∫ ,
(
∫∫, -
tracks
∫∫- 3
)
∫∫3 4
;
∫∫4 5
}
ªª 
}
ºº 	
void
ææ !
GatherNotifications
ææ  
(
ææ  !
List
ææ! %
<
ææ% &
IMarker
ææ& -
>
ææ- .
markers
ææ/ 6
)
ææ6 7
{
øø 	
if
¿¿ 
(
¿¿ 
!
¿¿ 
muted
¿¿ 
&&
¿¿ %
CanCompileNotifications
¿¿ 1
(
¿¿1 2
)
¿¿2 3
)
¿¿3 4
markers
¡¡ 
.
¡¡ 
AddRange
¡¡  
(
¡¡  !

GetMarkers
¡¡! +
(
¡¡+ ,
)
¡¡, -
)
¡¡- .
;
¡¡. /
foreach
¬¬ 
(
¬¬ 
var
¬¬ 
c
¬¬ 
in
¬¬ 
GetChildTracks
¬¬ ,
(
¬¬, -
)
¬¬- .
)
¬¬. /
{
√√ 
if
ƒƒ 
(
ƒƒ 
c
ƒƒ 
!=
ƒƒ 
null
ƒƒ 
)
ƒƒ 
c
≈≈ 
.
≈≈ !
GatherNotifications
≈≈ )
(
≈≈) *
markers
≈≈* 1
)
≈≈1 2
;
≈≈2 3
}
∆∆ 
}
«« 	
internal
…… 
virtual
…… 
Playable
…… !&
CreateMixerPlayableGraph
……" :
(
……: ;
PlayableGraph
……; H
graph
……I N
,
……N O

GameObject
……P Z
go
……[ ]
,
……] ^
IntervalTree
……_ k
<
……k l
RuntimeElement
……l z
>
……z {
tree……| Ä
)……Ä Å
{
   	
if
ÀÀ 
(
ÀÀ 
tree
ÀÀ 
==
ÀÀ 
null
ÀÀ 
)
ÀÀ 
throw
ÃÃ 
new
ÃÃ 
ArgumentException
ÃÃ +
(
ÃÃ+ ,
$str
ÃÃ, R
,
ÃÃR S
$str
ÃÃT Z
)
ÃÃZ [
;
ÃÃ[ \
if
ŒŒ 
(
ŒŒ 
go
ŒŒ 
==
ŒŒ 
null
ŒŒ 
)
ŒŒ 
throw
œœ 
new
œœ 
ArgumentException
œœ +
(
œœ+ ,
$str
œœ, P
,
œœP Q
$str
œœR V
)
œœV W
;
œœW X
s_BuildData
—— 
.
—— 
Clear
—— 
(
—— 
)
—— 
;
——  $
GatherCompilableTracks
““ "
(
““" #
s_BuildData
““# .
.
““. /
	trackList
““/ 8
)
““8 9
;
““9 :
if
’’ 
(
’’ 
s_BuildData
’’ 
.
’’ 
	trackList
’’ %
.
’’% &
Count
’’& +
==
’’, .
$num
’’/ 0
)
’’0 1
return
÷÷ 
Playable
÷÷ 
.
÷÷  
Null
÷÷  $
;
÷÷$ %
Playable
ŸŸ 

layerMixer
ŸŸ 
=
ŸŸ  !
Playable
ŸŸ" *
.
ŸŸ* +
Null
ŸŸ+ /
;
ŸŸ/ 0

ILayerable
⁄⁄ 
	layerable
⁄⁄  
=
⁄⁄! "
this
⁄⁄# '
as
⁄⁄( *

ILayerable
⁄⁄+ 5
;
⁄⁄5 6
if
€€ 
(
€€ 
	layerable
€€ 
!=
€€ 
null
€€ !
)
€€! "

layerMixer
‹‹ 
=
‹‹ 
	layerable
‹‹ &
.
‹‹& '
CreateLayerMixer
‹‹' 7
(
‹‹7 8
graph
‹‹8 =
,
‹‹= >
go
‹‹? A
,
‹‹A B
s_BuildData
‹‹C N
.
‹‹N O
	trackList
‹‹O X
.
‹‹X Y
Count
‹‹Y ^
)
‹‹^ _
;
‹‹_ `
if
ﬁﬁ 
(
ﬁﬁ 

layerMixer
ﬁﬁ 
.
ﬁﬁ 
IsValid
ﬁﬁ "
(
ﬁﬁ" #
)
ﬁﬁ# $
)
ﬁﬁ$ %
{
ﬂﬂ 
for
‡‡ 
(
‡‡ 
int
‡‡ 
i
‡‡ 
=
‡‡ 
$num
‡‡ 
;
‡‡ 
i
‡‡  !
<
‡‡" #
s_BuildData
‡‡$ /
.
‡‡/ 0
	trackList
‡‡0 9
.
‡‡9 :
Count
‡‡: ?
;
‡‡? @
i
‡‡A B
++
‡‡B D
)
‡‡D E
{
·· 
var
‚‚ 
mixer
‚‚ 
=
‚‚ 
s_BuildData
‚‚  +
.
‚‚+ ,
	trackList
‚‚, 5
[
‚‚5 6
i
‚‚6 7
]
‚‚7 8
.
‚‚8 9
CompileClips
‚‚9 E
(
‚‚E F
graph
‚‚F K
,
‚‚K L
go
‚‚M O
,
‚‚O P
s_BuildData
‚‚Q \
.
‚‚\ ]
	trackList
‚‚] f
[
‚‚f g
i
‚‚g h
]
‚‚h i
.
‚‚i j
clips
‚‚j o
,
‚‚o p
tree
‚‚q u
)
‚‚u v
;
‚‚v w
if
„„ 
(
„„ 
mixer
„„ 
.
„„ 
IsValid
„„ %
(
„„% &
)
„„& '
)
„„' (
{
‰‰ 
graph
ÂÂ 
.
ÂÂ 
Connect
ÂÂ %
(
ÂÂ% &
mixer
ÂÂ& +
,
ÂÂ+ ,
$num
ÂÂ- .
,
ÂÂ. /

layerMixer
ÂÂ0 :
,
ÂÂ: ;
i
ÂÂ< =
)
ÂÂ= >
;
ÂÂ> ?

layerMixer
ÊÊ "
.
ÊÊ" #
SetInputWeight
ÊÊ# 1
(
ÊÊ1 2
i
ÊÊ2 3
,
ÊÊ3 4
$num
ÊÊ5 9
)
ÊÊ9 :
;
ÊÊ: ;
}
ÁÁ 
}
ËË 
return
ÈÈ 

layerMixer
ÈÈ !
;
ÈÈ! "
}
ÍÍ 
if
ÌÌ 
(
ÌÌ 
s_BuildData
ÌÌ 
.
ÌÌ 
	trackList
ÌÌ %
.
ÌÌ% &
Count
ÌÌ& +
==
ÌÌ, .
$num
ÌÌ/ 0
)
ÌÌ0 1
return
ÓÓ 
s_BuildData
ÓÓ "
.
ÓÓ" #
	trackList
ÓÓ# ,
[
ÓÓ, -
$num
ÓÓ- .
]
ÓÓ. /
.
ÓÓ/ 0
CompileClips
ÓÓ0 <
(
ÓÓ< =
graph
ÓÓ= B
,
ÓÓB C
go
ÓÓD F
,
ÓÓF G
s_BuildData
ÓÓH S
.
ÓÓS T
	trackList
ÓÓT ]
[
ÓÓ] ^
$num
ÓÓ^ _
]
ÓÓ_ `
.
ÓÓ` a
clips
ÓÓa f
,
ÓÓf g
tree
ÓÓh l
)
ÓÓl m
;
ÓÓm n
for
ÒÒ 
(
ÒÒ 
int
ÒÒ 
i
ÒÒ 
=
ÒÒ 
$num
ÒÒ 
;
ÒÒ 
i
ÒÒ 
<
ÒÒ 
s_BuildData
ÒÒ  +
.
ÒÒ+ ,
	trackList
ÒÒ, 5
.
ÒÒ5 6
Count
ÒÒ6 ;
;
ÒÒ; <
i
ÒÒ= >
++
ÒÒ> @
)
ÒÒ@ A
s_BuildData
ÚÚ 
.
ÚÚ 
clipList
ÚÚ $
.
ÚÚ$ %
AddRange
ÚÚ% -
(
ÚÚ- .
s_BuildData
ÚÚ. 9
.
ÚÚ9 :
	trackList
ÚÚ: C
[
ÚÚC D
i
ÚÚD E
]
ÚÚE F
.
ÚÚF G
clips
ÚÚG L
)
ÚÚL M
;
ÚÚM N
bool
ıı 
applyWarning
ıı 
=
ıı 
false
ıı  %
;
ıı% &
for
ˆˆ 
(
ˆˆ 
int
ˆˆ 
i
ˆˆ 
=
ˆˆ 
$num
ˆˆ 
;
ˆˆ 
i
ˆˆ 
<
ˆˆ 
s_BuildData
ˆˆ  +
.
ˆˆ+ ,
	trackList
ˆˆ, 5
.
ˆˆ5 6
Count
ˆˆ6 ;
;
ˆˆ; <
i
ˆˆ= >
++
ˆˆ> @
)
ˆˆ@ A
applyWarning
˜˜ 
|=
˜˜ 
i
˜˜  !
>
˜˜" #
$num
˜˜$ %
&&
˜˜& (
s_BuildData
˜˜) 4
.
˜˜4 5
	trackList
˜˜5 >
[
˜˜> ?
i
˜˜? @
]
˜˜@ A
.
˜˜A B
	hasCurves
˜˜B K
;
˜˜K L
if
˘˘ 
(
˘˘ 
applyWarning
˘˘ 
)
˘˘ 
Debug
˙˙ 
.
˙˙ 

LogWarning
˙˙  
(
˙˙  !
$str˙˙! ª
+˙˙º Ω
s_BuildData˙˙æ …
.˙˙…  
	trackList˙˙  ”
[˙˙” ‘
$num˙˙‘ ’
]˙˙’ ÷
.˙˙÷ ◊
GetType˙˙◊ ﬁ
(˙˙ﬁ ﬂ
)˙˙ﬂ ‡
.˙˙‡ ·
Name˙˙· Â
+˙˙Ê Á
$str˙˙Ë ¥
)˙˙¥ µ
;˙˙µ ∂
return
˝˝ 
CompileClips
˝˝ 
(
˝˝  
graph
˝˝  %
,
˝˝% &
go
˝˝' )
,
˝˝) *
s_BuildData
˝˝+ 6
.
˝˝6 7
clipList
˝˝7 ?
,
˝˝? @
tree
˝˝A E
)
˝˝E F
;
˝˝F G
}
˛˛ 	
internal
ÄÄ 
void
ÄÄ %
ConfigureTrackAnimation
ÄÄ -
(
ÄÄ- .
IntervalTree
ÄÄ. :
<
ÄÄ: ;
RuntimeElement
ÄÄ; I
>
ÄÄI J
tree
ÄÄK O
,
ÄÄO P

GameObject
ÄÄQ [
go
ÄÄ\ ^
,
ÄÄ^ _
Playable
ÄÄ` h
blend
ÄÄi n
)
ÄÄn o
{
ÅÅ 	
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
	hasCurves
ÇÇ 
)
ÇÇ 
return
ÉÉ 
;
ÉÉ 
blend
ÖÖ 
.
ÖÖ #
SetAnimatedProperties
ÖÖ '
(
ÖÖ' (
m_Curves
ÖÖ( 0
)
ÖÖ0 1
;
ÖÖ1 2
tree
ÜÜ 
.
ÜÜ 
Add
ÜÜ 
(
ÜÜ 
new
ÜÜ !
InfiniteRuntimeClip
ÜÜ ,
(
ÜÜ, -
blend
ÜÜ- 2
)
ÜÜ2 3
)
ÜÜ3 4
;
ÜÜ4 5
if
àà 
(
àà ,
OnTrackAnimationPlayableCreate
àà .
!=
àà/ 1
null
àà2 6
)
àà6 7,
OnTrackAnimationPlayableCreate
ââ .
.
ââ. /
Invoke
ââ/ 5
(
ââ5 6
this
ââ6 :
,
ââ: ;
go
ââ< >
,
ââ> ?
blend
ââ@ E
)
ââE F
;
ââF G
}
ää 	
internal
çç 
void
çç 
	SortClips
çç 
(
çç  
)
çç  !
{
éé 	
var
èè 
clipsAsArray
èè 
=
èè 
clips
èè $
;
èè$ %
if
êê 
(
êê 
!
êê 
m_CacheSorted
êê 
)
êê 
{
ëë 
Array
íí 
.
íí 
Sort
íí 
(
íí 
clips
íí  
,
íí  !
(
íí" #
clip1
íí# (
,
íí( )
clip2
íí* /
)
íí/ 0
=>
íí1 3
clip1
íí4 9
.
íí9 :
start
íí: ?
.
íí? @
	CompareTo
íí@ I
(
ííI J
clip2
ííJ O
.
ííO P
start
ííP U
)
ííU V
)
ííV W
;
ííW X
m_CacheSorted
ìì 
=
ìì 
true
ìì  $
;
ìì$ %
}
îî 
}
ïï 	
internal
òò 
void
òò  
ClearClipsInternal
òò (
(
òò( )
)
òò) *
{
ôô 	
m_Clips
öö 
=
öö 
new
öö 
List
öö 
<
öö 
TimelineClip
öö +
>
öö+ ,
(
öö, -
)
öö- .
;
öö. /
m_ClipsCache
õõ 
=
õõ 
null
õõ 
;
õõ  
}
úú 	
internal
ûû 
void
ûû $
ClearSubTracksInternal
ûû ,
(
ûû, -
)
ûû- .
{
üü 	

m_Children
†† 
=
†† 
new
†† 
List
†† !
<
††! "
ScriptableObject
††" 2
>
††2 3
(
††3 4
)
††4 5
;
††5 6

Invalidate
°° 
(
°° 
)
°° 
;
°° 
}
¢¢ 	
internal
•• 
void
•• 

OnClipMove
••  
(
••  !
)
••! "
{
¶¶ 	
m_CacheSorted
ßß 
=
ßß 
false
ßß !
;
ßß! "
}
®® 	
internal
™™ 
TimelineClip
™™ ,
CreateNewClipContainerInternal
™™ <
(
™™< =
)
™™= >
{
´´ 	
var
¨¨ 
clipContainer
¨¨ 
=
¨¨ 
new
¨¨  #
TimelineClip
¨¨$ 0
(
¨¨0 1
this
¨¨1 5
)
¨¨5 6
;
¨¨6 7
clipContainer
≠≠ 
.
≠≠ 
asset
≠≠ 
=
≠≠  !
null
≠≠" &
;
≠≠& '
var
∞∞ 
newClipStart
∞∞ 
=
∞∞ 
$num
∞∞ "
;
∞∞" #
for
±± 
(
±± 
var
±± 
a
±± 
=
±± 
$num
±± 
;
±± 
a
±± 
<
±± 
m_Clips
±±  '
.
±±' (
Count
±±( -
-
±±. /
$num
±±0 1
;
±±1 2
a
±±3 4
++
±±4 6
)
±±6 7
{
≤≤ 
var
≥≥ 
clipDuration
≥≥  
=
≥≥! "
m_Clips
≥≥# *
[
≥≥* +
a
≥≥+ ,
]
≥≥, -
.
≥≥- .
duration
≥≥. 6
;
≥≥6 7
if
¥¥ 
(
¥¥ 
double
¥¥ 
.
¥¥ 

IsInfinity
¥¥ %
(
¥¥% &
clipDuration
¥¥& 2
)
¥¥2 3
)
¥¥3 4
clipDuration
µµ  
=
µµ! "
TimelineClip
µµ# /
.
µµ/ 0+
kDefaultClipDurationInSeconds
µµ0 M
;
µµM N
newClipStart
∂∂ 
=
∂∂ 
Math
∂∂ #
.
∂∂# $
Max
∂∂$ '
(
∂∂' (
newClipStart
∂∂( 4
,
∂∂4 5
m_Clips
∂∂6 =
[
∂∂= >
a
∂∂> ?
]
∂∂? @
.
∂∂@ A
start
∂∂A F
+
∂∂G H
clipDuration
∂∂I U
)
∂∂U V
;
∂∂V W
}
∑∑ 
clipContainer
ππ 
.
ππ 

mixInCurve
ππ $
=
ππ% &
AnimationCurve
ππ' 5
.
ππ5 6
	EaseInOut
ππ6 ?
(
ππ? @
$num
ππ@ A
,
ππA B
$num
ππC D
,
ππD E
$num
ππF G
,
ππG H
$num
ππI J
)
ππJ K
;
ππK L
clipContainer
∫∫ 
.
∫∫ 
mixOutCurve
∫∫ %
=
∫∫& '
AnimationCurve
∫∫( 6
.
∫∫6 7
	EaseInOut
∫∫7 @
(
∫∫@ A
$num
∫∫A B
,
∫∫B C
$num
∫∫D E
,
∫∫E F
$num
∫∫G H
,
∫∫H I
$num
∫∫J K
)
∫∫K L
;
∫∫L M
clipContainer
ªª 
.
ªª 
start
ªª 
=
ªª  !
newClipStart
ªª" .
;
ªª. /
clipContainer
ºº 
.
ºº 
duration
ºº "
=
ºº# $
TimelineClip
ºº% 1
.
ºº1 2+
kDefaultClipDurationInSeconds
ºº2 O
;
ººO P
clipContainer
ΩΩ 
.
ΩΩ 
displayName
ΩΩ %
=
ΩΩ& '
$str
ΩΩ( 2
;
ΩΩ2 3
return
ææ 
clipContainer
ææ  
;
ææ  !
}
øø 	
internal
¡¡ 
void
¡¡ 
AddChild
¡¡ 
(
¡¡ 

TrackAsset
¡¡ )
child
¡¡* /
)
¡¡/ 0
{
¬¬ 	
if
√√ 
(
√√ 
child
√√ 
==
√√ 
null
√√ 
)
√√ 
return
ƒƒ 
;
ƒƒ 

m_Children
∆∆ 
.
∆∆ 
Add
∆∆ 
(
∆∆ 
child
∆∆  
)
∆∆  !
;
∆∆! "
child
«« 
.
«« 
parent
«« 
=
«« 
this
«« 
;
««  

Invalidate
»» 
(
»» 
)
»» 
;
»» 
}
…… 	
internal
ÀÀ 
void
ÀÀ !
MoveLastTrackBefore
ÀÀ )
(
ÀÀ) *

TrackAsset
ÀÀ* 4
asset
ÀÀ5 :
)
ÀÀ: ;
{
ÃÃ 	
if
ÕÕ 
(
ÕÕ 

m_Children
ÕÕ 
==
ÕÕ 
null
ÕÕ "
||
ÕÕ# %

m_Children
ÕÕ& 0
.
ÕÕ0 1
Count
ÕÕ1 6
<
ÕÕ7 8
$num
ÕÕ9 :
||
ÕÕ; =
asset
ÕÕ> C
==
ÕÕD F
null
ÕÕG K
)
ÕÕK L
return
ŒŒ 
;
ŒŒ 
var
–– 
	lastTrack
–– 
=
–– 

m_Children
–– &
[
––& '

m_Children
––' 1
.
––1 2
Count
––2 7
-
––8 9
$num
––: ;
]
––; <
;
––< =
if
—— 
(
—— 
	lastTrack
—— 
==
—— 
asset
—— "
)
——" #
return
““ 
;
““ 
for
‘‘ 
(
‘‘ 
int
‘‘ 
i
‘‘ 
=
‘‘ 
$num
‘‘ 
;
‘‘ 
i
‘‘ 
<
‘‘ 

m_Children
‘‘  *
.
‘‘* +
Count
‘‘+ 0
-
‘‘1 2
$num
‘‘3 4
;
‘‘4 5
i
‘‘6 7
++
‘‘7 9
)
‘‘9 :
{
’’ 
if
÷÷ 
(
÷÷ 

m_Children
÷÷ 
[
÷÷ 
i
÷÷  
]
÷÷  !
==
÷÷" $
asset
÷÷% *
)
÷÷* +
{
◊◊ 
for
ÿÿ 
(
ÿÿ 
int
ÿÿ 
j
ÿÿ 
=
ÿÿ  

m_Children
ÿÿ! +
.
ÿÿ+ ,
Count
ÿÿ, 1
-
ÿÿ2 3
$num
ÿÿ4 5
;
ÿÿ5 6
j
ÿÿ7 8
>
ÿÿ9 :
i
ÿÿ; <
;
ÿÿ< =
j
ÿÿ> ?
--
ÿÿ? A
)
ÿÿA B

m_Children
ŸŸ "
[
ŸŸ" #
j
ŸŸ# $
]
ŸŸ$ %
=
ŸŸ& '

m_Children
ŸŸ( 2
[
ŸŸ2 3
j
ŸŸ3 4
-
ŸŸ5 6
$num
ŸŸ7 8
]
ŸŸ8 9
;
ŸŸ9 :

m_Children
⁄⁄ 
[
⁄⁄ 
i
⁄⁄  
]
⁄⁄  !
=
⁄⁄" #
	lastTrack
⁄⁄$ -
;
⁄⁄- .

Invalidate
€€ 
(
€€ 
)
€€  
;
€€  !
break
‹‹ 
;
‹‹ 
}
›› 
}
ﬁﬁ 
}
ﬂﬂ 	
internal
·· 
bool
·· 
RemoveSubTrack
·· $
(
··$ %

TrackAsset
··% /
child
··0 5
)
··5 6
{
‚‚ 	
if
„„ 
(
„„ 

m_Children
„„ 
.
„„ 
Remove
„„ !
(
„„! "
child
„„" '
)
„„' (
)
„„( )
{
‰‰ 

Invalidate
ÂÂ 
(
ÂÂ 
)
ÂÂ 
;
ÂÂ 
child
ÊÊ 
.
ÊÊ 
parent
ÊÊ 
=
ÊÊ 
null
ÊÊ #
;
ÊÊ# $
return
ÁÁ 
true
ÁÁ 
;
ÁÁ 
}
ËË 
return
ÈÈ 
false
ÈÈ 
;
ÈÈ 
}
ÍÍ 	
internal
ÏÏ 
void
ÏÏ 

RemoveClip
ÏÏ  
(
ÏÏ  !
TimelineClip
ÏÏ! -
clip
ÏÏ. 2
)
ÏÏ2 3
{
ÌÌ 	
m_Clips
ÓÓ 
.
ÓÓ 
Remove
ÓÓ 
(
ÓÓ 
clip
ÓÓ 
)
ÓÓ  
;
ÓÓ  !
m_ClipsCache
ÔÔ 
=
ÔÔ 
null
ÔÔ 
;
ÔÔ  
}
 	
internal
ÙÙ 
virtual
ÙÙ 
void
ÙÙ 
GetEvaluationTime
ÙÙ /
(
ÙÙ/ 0
out
ÙÙ0 3
double
ÙÙ4 :
outStart
ÙÙ; C
,
ÙÙC D
out
ÙÙE H
double
ÙÙI O
outDuration
ÙÙP [
)
ÙÙ[ \
{
ıı 	
outStart
ˆˆ 
=
ˆˆ 
$num
ˆˆ 
;
ˆˆ 
outDuration
˜˜ 
=
˜˜ 
$num
˜˜ 
;
˜˜ 
outStart
˘˘ 
=
˘˘ 
double
˘˘ 
.
˘˘ 
PositiveInfinity
˘˘ .
;
˘˘. /
var
˙˙ 
outEnd
˙˙ 
=
˙˙ 
double
˙˙ 
.
˙˙  
NegativeInfinity
˙˙  0
;
˙˙0 1
if
¸¸ 
(
¸¸ 
	hasCurves
¸¸ 
)
¸¸ 
{
˝˝ 
outStart
˛˛ 
=
˛˛ 
$num
˛˛ 
;
˛˛ 
outEnd
ˇˇ 
=
ˇˇ 
TimeUtility
ˇˇ $
.
ˇˇ$ %$
GetAnimationClipLength
ˇˇ% ;
(
ˇˇ; <
curves
ˇˇ< B
)
ˇˇB C
;
ˇˇC D
}
ÄÄ 
foreach
ÇÇ 
(
ÇÇ 
var
ÇÇ 
clip
ÇÇ 
in
ÇÇ  
clips
ÇÇ! &
)
ÇÇ& '
{
ÉÉ 
outStart
ÑÑ 
=
ÑÑ 
Math
ÑÑ 
.
ÑÑ  
Min
ÑÑ  #
(
ÑÑ# $
clip
ÑÑ$ (
.
ÑÑ( )
start
ÑÑ) .
,
ÑÑ. /
outStart
ÑÑ0 8
)
ÑÑ8 9
;
ÑÑ9 :
outEnd
ÖÖ 
=
ÖÖ 
Math
ÖÖ 
.
ÖÖ 
Max
ÖÖ !
(
ÖÖ! "
clip
ÖÖ" &
.
ÖÖ& '
end
ÖÖ' *
,
ÖÖ* +
outEnd
ÖÖ, 2
)
ÖÖ2 3
;
ÖÖ3 4
}
ÜÜ 
if
àà 
(
àà 
HasNotifications
àà  
(
àà  !
)
àà! "
)
àà" #
{
ââ 
var
ää "
notificationDuration
ää (
=
ää) *%
GetNotificationDuration
ää+ B
(
ääB C
)
ääC D
;
ääD E
outStart
ãã 
=
ãã 
Math
ãã 
.
ãã  
Min
ãã  #
(
ãã# $"
notificationDuration
ãã$ 8
,
ãã8 9
outStart
ãã: B
)
ããB C
;
ããC D
outEnd
åå 
=
åå 
Math
åå 
.
åå 
Max
åå !
(
åå! ""
notificationDuration
åå" 6
,
åå6 7
outEnd
åå8 >
)
åå> ?
;
åå? @
}
çç 
if
èè 
(
èè 
double
èè 
.
èè 

IsInfinity
èè !
(
èè! "
outStart
èè" *
)
èè* +
||
èè, .
double
èè/ 5
.
èè5 6

IsInfinity
èè6 @
(
èè@ A
outEnd
èèA G
)
èèG H
)
èèH I
outStart
êê 
=
êê 
outDuration
êê &
=
êê' (
$num
êê) ,
;
êê, -
else
ëë 
outDuration
íí 
=
íí 
outEnd
íí $
-
íí% &
outStart
íí' /
;
íí/ 0
}
ìì 	
internal
òò 
virtual
òò 
void
òò 
GetSequenceTime
òò -
(
òò- .
out
òò. 1
double
òò2 8
outStart
òò9 A
,
òòA B
out
òòC F
double
òòG M
outDuration
òòN Y
)
òòY Z
{
ôô 	
GetEvaluationTime
öö 
(
öö 
out
öö !
outStart
öö" *
,
öö* +
out
öö, /
outDuration
öö0 ;
)
öö; <
;
öö< =
}
õõ 	
public
¢¢ 
virtual
¢¢ 
void
¢¢ 
GatherProperties
¢¢ ,
(
¢¢, -
PlayableDirector
¢¢- =
director
¢¢> F
,
¢¢F G 
IPropertyCollector
¢¢H Z
driver
¢¢[ a
)
¢¢a b
{
££ 	
var
¶¶ 

gameObject
¶¶ 
=
¶¶ "
GetGameObjectBinding
¶¶ 1
(
¶¶1 2
director
¶¶2 :
)
¶¶: ;
;
¶¶; <
if
ßß 
(
ßß 

gameObject
ßß 
!=
ßß 
null
ßß "
)
ßß" #
driver
®® 
.
®® "
PushActiveGameObject
®® +
(
®®+ ,

gameObject
®®, 6
)
®®6 7
;
®®7 8
if
™™ 
(
™™ 
	hasCurves
™™ 
)
™™ 
driver
´´ 
.
´´ !
AddObjectProperties
´´ *
(
´´* +
this
´´+ /
,
´´/ 0
m_Curves
´´1 9
)
´´9 :
;
´´: ;
foreach
≠≠ 
(
≠≠ 
var
≠≠ 
clip
≠≠ 
in
≠≠  
clips
≠≠! &
)
≠≠& '
{
ÆÆ 
if
ØØ 
(
ØØ 
clip
ØØ 
.
ØØ 
curves
ØØ 
!=
ØØ  "
null
ØØ# '
&&
ØØ( *
clip
ØØ+ /
.
ØØ/ 0
asset
ØØ0 5
!=
ØØ6 8
null
ØØ9 =
)
ØØ= >
driver
∞∞ 
.
∞∞ !
AddObjectProperties
∞∞ .
(
∞∞. /
clip
∞∞/ 3
.
∞∞3 4
asset
∞∞4 9
,
∞∞9 :
clip
∞∞; ?
.
∞∞? @
curves
∞∞@ F
)
∞∞F G
;
∞∞G H
IPropertyPreview
≤≤  
modifier
≤≤! )
=
≤≤* +
clip
≤≤, 0
.
≤≤0 1
asset
≤≤1 6
as
≤≤7 9
IPropertyPreview
≤≤: J
;
≤≤J K
if
≥≥ 
(
≥≥ 
modifier
≥≥ 
!=
≥≥ 
null
≥≥  $
)
≥≥$ %
modifier
¥¥ 
.
¥¥ 
GatherProperties
¥¥ -
(
¥¥- .
director
¥¥. 6
,
¥¥6 7
driver
¥¥8 >
)
¥¥> ?
;
¥¥? @
}
µµ 
foreach
∑∑ 
(
∑∑ 
var
∑∑ 
subtrack
∑∑ !
in
∑∑" $
GetChildTracks
∑∑% 3
(
∑∑3 4
)
∑∑4 5
)
∑∑5 6
{
∏∏ 
if
ππ 
(
ππ 
subtrack
ππ 
!=
ππ 
null
ππ  $
)
ππ$ %
subtrack
∫∫ 
.
∫∫ 
GatherProperties
∫∫ -
(
∫∫- .
director
∫∫. 6
,
∫∫6 7
driver
∫∫8 >
)
∫∫> ?
;
∫∫? @
}
ªª 
if
ΩΩ 
(
ΩΩ 

gameObject
ΩΩ 
!=
ΩΩ 
null
ΩΩ "
)
ΩΩ" #
driver
ææ 
.
ææ !
PopActiveGameObject
ææ *
(
ææ* +
)
ææ+ ,
;
ææ, -
}
øø 	
internal
¡¡ 

GameObject
¡¡ "
GetGameObjectBinding
¡¡ 0
(
¡¡0 1
PlayableDirector
¡¡1 A
director
¡¡B J
)
¡¡J K
{
¬¬ 	
if
√√ 
(
√√ 
director
√√ 
==
√√ 
null
√√  
)
√√  !
return
ƒƒ 
null
ƒƒ 
;
ƒƒ 
var
∆∆ 
binding
∆∆ 
=
∆∆ 
director
∆∆ "
.
∆∆" #
GetGenericBinding
∆∆# 4
(
∆∆4 5
this
∆∆5 9
)
∆∆9 :
;
∆∆: ;
var
»» 

gameObject
»» 
=
»» 
binding
»» $
as
»»% '

GameObject
»»( 2
;
»»2 3
if
…… 
(
…… 

gameObject
…… 
!=
…… 
null
…… "
)
……" #
return
   

gameObject
   !
;
  ! "
var
ÃÃ 
comp
ÃÃ 
=
ÃÃ 
binding
ÃÃ 
as
ÃÃ !
	Component
ÃÃ" +
;
ÃÃ+ ,
if
ÕÕ 
(
ÕÕ 
comp
ÕÕ 
!=
ÕÕ 
null
ÕÕ 
)
ÕÕ 
return
ŒŒ 
comp
ŒŒ 
.
ŒŒ 

gameObject
ŒŒ &
;
ŒŒ& '
return
–– 
null
–– 
;
–– 
}
—— 	
internal
”” 
bool
”” 
ValidateClipType
”” &
(
””& '
Type
””' +
clipType
””, 4
)
””4 5
{
‘‘ 	
var
’’ 
attrs
’’ 
=
’’ 
GetType
’’ 
(
’’  
)
’’  !
.
’’! "!
GetCustomAttributes
’’" 5
(
’’5 6
typeof
’’6 <
(
’’< =$
TrackClipTypeAttribute
’’= S
)
’’S T
,
’’T U
true
’’V Z
)
’’Z [
;
’’[ \
for
÷÷ 
(
÷÷ 
var
÷÷ 
c
÷÷ 
=
÷÷ 
$num
÷÷ 
;
÷÷ 
c
÷÷ 
<
÷÷ 
attrs
÷÷  %
.
÷÷% &
Length
÷÷& ,
;
÷÷, -
++
÷÷. 0
c
÷÷0 1
)
÷÷1 2
{
◊◊ 
var
ÿÿ 
attr
ÿÿ 
=
ÿÿ 
(
ÿÿ $
TrackClipTypeAttribute
ÿÿ 2
)
ÿÿ2 3
attrs
ÿÿ3 8
[
ÿÿ8 9
c
ÿÿ9 :
]
ÿÿ: ;
;
ÿÿ; <
if
ŸŸ 
(
ŸŸ 
attr
ŸŸ 
.
ŸŸ 
inspectedType
ŸŸ &
.
ŸŸ& '
IsAssignableFrom
ŸŸ' 7
(
ŸŸ7 8
clipType
ŸŸ8 @
)
ŸŸ@ A
)
ŸŸA B
return
⁄⁄ 
true
⁄⁄ 
;
⁄⁄  
}
€€ 
return
ﬁﬁ 
typeof
ﬁﬁ 
(
ﬁﬁ 
PlayableTrack
ﬁﬁ '
)
ﬁﬁ' (
.
ﬁﬁ( )
IsAssignableFrom
ﬁﬁ) 9
(
ﬁﬁ9 :
GetType
ﬁﬁ: A
(
ﬁﬁA B
)
ﬁﬁB C
)
ﬁﬁC D
&&
ﬁﬁE G
typeof
ﬂﬂ 
(
ﬂﬂ 
IPlayableAsset
ﬂﬂ %
)
ﬂﬂ% &
.
ﬂﬂ& '
IsAssignableFrom
ﬂﬂ' 7
(
ﬂﬂ7 8
clipType
ﬂﬂ8 @
)
ﬂﬂ@ A
&&
ﬂﬂB D
typeof
‡‡ 
(
‡‡ 
ScriptableObject
‡‡ '
)
‡‡' (
.
‡‡( )
IsAssignableFrom
‡‡) 9
(
‡‡9 :
clipType
‡‡: B
)
‡‡B C
;
‡‡C D
}
·· 	
	protected
ËË 
virtual
ËË 
void
ËË 
OnCreateClip
ËË +
(
ËË+ ,
TimelineClip
ËË, 8
clip
ËË9 =
)
ËË= >
{
ËË? @
}
ËËA B
void
ÍÍ 
UpdateDuration
ÍÍ 
(
ÍÍ 
)
ÍÍ 
{
ÎÎ 	
var
ÌÌ 
	itemsHash
ÌÌ 
=
ÌÌ  
CalculateItemsHash
ÌÌ .
(
ÌÌ. /
)
ÌÌ/ 0
;
ÌÌ0 1
if
ÓÓ 
(
ÓÓ 
	itemsHash
ÓÓ 
==
ÓÓ 
m_ItemsHash
ÓÓ (
)
ÓÓ( )
return
ÔÔ 
;
ÔÔ 
m_ItemsHash
 
=
 
	itemsHash
 #
;
# $
double
ÚÚ 

trackStart
ÚÚ 
,
ÚÚ 
trackDuration
ÚÚ ,
;
ÚÚ, -
GetSequenceTime
ÛÛ 
(
ÛÛ 
out
ÛÛ 

trackStart
ÛÛ  *
,
ÛÛ* +
out
ÛÛ, /
trackDuration
ÛÛ0 =
)
ÛÛ= >
;
ÛÛ> ?
m_Start
ıı 
=
ıı 
(
ıı 
DiscreteTime
ıı #
)
ıı# $

trackStart
ıı$ .
;
ıı. /
m_End
ˆˆ 
=
ˆˆ 
(
ˆˆ 
DiscreteTime
ˆˆ !
)
ˆˆ! "
(
ˆˆ" #

trackStart
ˆˆ# -
+
ˆˆ. /
trackDuration
ˆˆ0 =
)
ˆˆ= >
;
ˆˆ> ?
this
˙˙ 
.
˙˙ )
CalculateExtrapolationTimes
˙˙ ,
(
˙˙, -
)
˙˙- .
;
˙˙. /
}
˚˚ 	
	protected
˝˝ 
internal
˝˝ 
virtual
˝˝ "
int
˝˝# & 
CalculateItemsHash
˝˝' 9
(
˝˝9 :
)
˝˝: ;
{
˛˛ 	
return
ˇˇ 
HashUtility
ˇˇ 
.
ˇˇ 
CombineHash
ˇˇ *
(
ˇˇ* +
GetClipsHash
ˇˇ+ 7
(
ˇˇ7 8
)
ˇˇ8 9
,
ˇˇ9 :"
GetAnimationClipHash
ˇˇ; O
(
ˇˇO P
m_Curves
ˇˇP X
)
ˇˇX Y
,
ˇˇY Z
GetTimeRangeHash
ˇˇ[ k
(
ˇˇk l
)
ˇˇl m
)
ˇˇm n
;
ˇˇn o
}
Ä	Ä	 	
	protected
é	é	 
virtual
é	é	 
Playable
é	é	 "
CreatePlayable
é	é	# 1
(
é	é	1 2
PlayableGraph
é	é	2 ?
graph
é	é	@ E
,
é	é	E F

GameObject
é	é	G Q

gameObject
é	é	R \
,
é	é	\ ]
TimelineClip
é	é	^ j
clip
é	é	k o
)
é	é	o p
{
è	è	 	
if
ê	ê	 
(
ê	ê	 
!
ê	ê	 
graph
ê	ê	 
.
ê	ê	 
IsValid
ê	ê	 
(
ê	ê	 
)
ê	ê	  
)
ê	ê	  !
throw
ë	ë	 
new
ë	ë	 
ArgumentException
ë	ë	 +
(
ë	ë	+ ,
$str
ë	ë	, Q
)
ë	ë	Q R
;
ë	ë	R S
if
í	í	 
(
í	í	 
clip
í	í	 
==
í	í	 
null
í	í	 
)
í	í	 
throw
ì	ì	 
new
ì	ì	 #
ArgumentNullException
ì	ì	 /
(
ì	ì	/ 0
$str
ì	ì	0 6
)
ì	ì	6 7
;
ì	ì	7 8
var
ï	ï	 
asset
ï	ï	 
=
ï	ï	 
clip
ï	ï	 
.
ï	ï	 
asset
ï	ï	 "
as
ï	ï	# %
IPlayableAsset
ï	ï	& 4
;
ï	ï	4 5
if
ñ	ñ	 
(
ñ	ñ	 
asset
ñ	ñ	 
!=
ñ	ñ	 
null
ñ	ñ	 
)
ñ	ñ	 
{
ó	ó	 
var
ò	ò	 
handle
ò	ò	 
=
ò	ò	 
asset
ò	ò	 "
.
ò	ò	" #
CreatePlayable
ò	ò	# 1
(
ò	ò	1 2
graph
ò	ò	2 7
,
ò	ò	7 8

gameObject
ò	ò	9 C
)
ò	ò	C D
;
ò	ò	D E
if
ô	ô	 
(
ô	ô	 
handle
ô	ô	 
.
ô	ô	 
IsValid
ô	ô	 "
(
ô	ô	" #
)
ô	ô	# $
)
ô	ô	$ %
{
ö	ö	 
handle
õ	õ	 
.
õ	õ	 #
SetAnimatedProperties
õ	õ	 0
(
õ	õ	0 1
clip
õ	õ	1 5
.
õ	õ	5 6
curves
õ	õ	6 <
)
õ	õ	< =
;
õ	õ	= >
handle
ú	ú	 
.
ú	ú	 
SetSpeed
ú	ú	 #
(
ú	ú	# $
clip
ú	ú	$ (
.
ú	ú	( )
	timeScale
ú	ú	) 2
)
ú	ú	2 3
;
ú	ú	3 4
if
ù	ù	 
(
ù	ù	 "
OnClipPlayableCreate
ù	ù	 ,
!=
ù	ù	- /
null
ù	ù	0 4
)
ù	ù	4 5"
OnClipPlayableCreate
û	û	 ,
(
û	û	, -
clip
û	û	- 1
,
û	û	1 2

gameObject
û	û	3 =
,
û	û	= >
handle
û	û	? E
)
û	û	E F
;
û	û	F G
}
ü	ü	 
return
†	†	 
handle
†	†	 
;
†	†	 
}
°	°	 
return
¢	¢	 
Playable
¢	¢	 
.
¢	¢	 
Null
¢	¢	  
;
¢	¢	  !
}
£	£	 	
internal
•	•	 
void
•	•	 

Invalidate
•	•	  
(
•	•	  !
)
•	•	! "
{
¶	¶	 	
m_ChildTrackCache
ß	ß	 
=
ß	ß	 
null
ß	ß	  $
;
ß	ß	$ %
var
®	®	 
timeline
®	®	 
=
®	®	 
timelineAsset
®	®	 (
;
®	®	( )
if
©	©	 
(
©	©	 
timeline
©	©	 
!=
©	©	 
null
©	©	  
)
©	©	  !
{
™	™	 
timeline
´	´	 
.
´	´	 

Invalidate
´	´	 #
(
´	´	# $
)
´	´	$ %
;
´	´	% &
}
¨	¨	 
}
≠	≠	 	
internal
Ø	Ø	 
double
Ø	Ø	 %
GetNotificationDuration
Ø	Ø	 /
(
Ø	Ø	/ 0
)
Ø	Ø	0 1
{
∞	∞	 	
if
±	±	 
(
±	±	 
!
±	±	 #
supportsNotifications
±	±	 &
)
±	±	& '
{
≤	≤	 
return
≥	≥	 
$num
≥	≥	 
;
≥	≥	 
}
¥	¥	 
var
∂	∂	 
maxTime
∂	∂	 
=
∂	∂	 
$num
∂	∂	 
;
∂	∂	 
int
∑	∑	 
count
∑	∑	 
=
∑	∑	 
	m_Markers
∑	∑	 !
.
∑	∑	! "
Count
∑	∑	" '
;
∑	∑	' (
for
∏	∏	 
(
∏	∏	 
int
∏	∏	 
i
∏	∏	 
=
∏	∏	 
$num
∏	∏	 
;
∏	∏	 
i
∏	∏	 
<
∏	∏	 
count
∏	∏	  %
;
∏	∏	% &
i
∏	∏	' (
++
∏	∏	( *
)
∏	∏	* +
{
π	π	 
var
∫	∫	 
marker
∫	∫	 
=
∫	∫	 
	m_Markers
∫	∫	 &
[
∫	∫	& '
i
∫	∫	' (
]
∫	∫	( )
;
∫	∫	) *
if
ª	ª	 
(
ª	ª	 
!
ª	ª	 
(
ª	ª	 
marker
ª	ª	 
is
ª	ª	 
INotification
ª	ª	  -
)
ª	ª	- .
)
ª	ª	. /
{
º	º	 
continue
Ω	Ω	 
;
Ω	Ω	 
}
æ	æ	 
maxTime
ø	ø	 
=
ø	ø	 
Math
ø	ø	 
.
ø	ø	 
Max
ø	ø	 "
(
ø	ø	" #
maxTime
ø	ø	# *
,
ø	ø	* +
marker
ø	ø	, 2
.
ø	ø	2 3
time
ø	ø	3 7
)
ø	ø	7 8
;
ø	ø	8 9
}
¿	¿	 
return
¬	¬	 
maxTime
¬	¬	 
;
¬	¬	 
}
√	√	 	
internal
≈	≈	 
virtual
≈	≈	 
bool
≈	≈	 
CanCompileClips
≈	≈	 -
(
≈	≈	- .
)
≈	≈	. /
{
∆	∆	 	
return
«	«	 
hasClips
«	«	 
||
«	«	 
	hasCurves
«	«	 (
;
«	«	( )
}
»	»	 	
public
—	—	 
virtual
—	—	 
bool
—	—	 !
CanCreateTrackMixer
—	—	 /
(
—	—	/ 0
)
—	—	0 1
{
“	“	 	
return
”	”	 
CanCompileClips
”	”	 "
(
”	”	" #
)
”	”	# $
;
”	”	$ %
}
‘	‘	 	
internal
÷	÷	 
bool
÷	÷	 
IsCompilable
÷	÷	 "
(
÷	÷	" #
)
÷	÷	# $
{
◊	◊	 	
bool
ÿ	ÿ	 
isContainer
ÿ	ÿ	 
=
ÿ	ÿ	 
typeof
ÿ	ÿ	 %
(
ÿ	ÿ	% &

GroupTrack
ÿ	ÿ	& 0
)
ÿ	ÿ	0 1
.
ÿ	ÿ	1 2
IsAssignableFrom
ÿ	ÿ	2 B
(
ÿ	ÿ	B C
GetType
ÿ	ÿ	C J
(
ÿ	ÿ	J K
)
ÿ	ÿ	K L
)
ÿ	ÿ	L M
;
ÿ	ÿ	M N
if
⁄	⁄	 
(
⁄	⁄	 
isContainer
⁄	⁄	 
)
⁄	⁄	 
return
€	€	 
false
€	€	 
;
€	€	 
var
›	›	 
ret
›	›	 
=
›	›	 
!
›	›	 
mutedInHierarchy
›	›	 '
&&
›	›	( *
(
›	›	+ ,!
CanCreateTrackMixer
›	›	, ?
(
›	›	? @
)
›	›	@ A
||
›	›	B D%
CanCompileNotifications
›	›	E \
(
›	›	\ ]
)
›	›	] ^
)
›	›	^ _
;
›	›	_ `
if
ﬁ	ﬁ	 
(
ﬁ	ﬁ	 
!
ﬁ	ﬁ	 
ret
ﬁ	ﬁ	 
)
ﬁ	ﬁ	 
{
ﬂ	ﬂ	 
foreach
‡	‡	 
(
‡	‡	 
var
‡	‡	 
t
‡	‡	 
in
‡	‡	 !
GetChildTracks
‡	‡	" 0
(
‡	‡	0 1
)
‡	‡	1 2
)
‡	‡	2 3
{
·	·	 
if
‚	‚	 
(
‚	‚	 
t
‚	‚	 
.
‚	‚	 
IsCompilable
‚	‚	 &
(
‚	‚	& '
)
‚	‚	' (
)
‚	‚	( )
return
„	„	 
true
„	„	 #
;
„	„	# $
}
‰	‰	 
}
Â	Â	 
return
Á	Á	 
ret
Á	Á	 
;
Á	Á	 
}
Ë	Ë	 	
private
Í	Í	 
void
Í	Í	 #
UpdateChildTrackCache
Í	Í	 *
(
Í	Í	* +
)
Í	Í	+ ,
{
Î	Î	 	
if
Ï	Ï	 
(
Ï	Ï	 
m_ChildTrackCache
Ï	Ï	 !
==
Ï	Ï	" $
null
Ï	Ï	% )
)
Ï	Ï	) *
{
Ì	Ì	 
if
Ó	Ó	 
(
Ó	Ó	 

m_Children
Ó	Ó	 
==
Ó	Ó	 !
null
Ó	Ó	" &
||
Ó	Ó	' )

m_Children
Ó	Ó	* 4
.
Ó	Ó	4 5
Count
Ó	Ó	5 :
==
Ó	Ó	; =
$num
Ó	Ó	> ?
)
Ó	Ó	? @
m_ChildTrackCache
Ô	Ô	 %
=
Ô	Ô	& '
s_EmptyCache
Ô	Ô	( 4
;
Ô	Ô	4 5
else
		 
{
Ò	Ò	 
var
Ú	Ú	 
childTracks
Ú	Ú	 #
=
Ú	Ú	$ %
new
Ú	Ú	& )
List
Ú	Ú	* .
<
Ú	Ú	. /

TrackAsset
Ú	Ú	/ 9
>
Ú	Ú	9 :
(
Ú	Ú	: ;

m_Children
Ú	Ú	; E
.
Ú	Ú	E F
Count
Ú	Ú	F K
)
Ú	Ú	K L
;
Ú	Ú	L M
for
Û	Û	 
(
Û	Û	 
int
Û	Û	 
i
Û	Û	 
=
Û	Û	  
$num
Û	Û	! "
;
Û	Û	" #
i
Û	Û	$ %
<
Û	Û	& '

m_Children
Û	Û	( 2
.
Û	Û	2 3
Count
Û	Û	3 8
;
Û	Û	8 9
i
Û	Û	: ;
++
Û	Û	; =
)
Û	Û	= >
{
Ù	Ù	 
var
ı	ı	 
subTrack
ı	ı	 $
=
ı	ı	% &

m_Children
ı	ı	' 1
[
ı	ı	1 2
i
ı	ı	2 3
]
ı	ı	3 4
as
ı	ı	5 7

TrackAsset
ı	ı	8 B
;
ı	ı	B C
if
ˆ	ˆ	 
(
ˆ	ˆ	 
subTrack
ˆ	ˆ	 $
!=
ˆ	ˆ	% '
null
ˆ	ˆ	( ,
)
ˆ	ˆ	, -
childTracks
˜	˜	 '
.
˜	˜	' (
Add
˜	˜	( +
(
˜	˜	+ ,
subTrack
˜	˜	, 4
)
˜	˜	4 5
;
˜	˜	5 6
}
¯	¯	 
m_ChildTrackCache
˘	˘	 %
=
˘	˘	& '
childTracks
˘	˘	( 3
;
˘	˘	3 4
}
˙	˙	 
}
˚	˚	 
}
¸	¸	 	
internal
˛	˛	 
virtual
˛	˛	 
int
˛	˛	 
Hash
˛	˛	 !
(
˛	˛	! "
)
˛	˛	" #
{
ˇ	ˇ	 	
return
Ä
Ä
 
clips
Ä
Ä
 
.
Ä
Ä
 
Length
Ä
Ä
 
+
Ä
Ä
  !
(
Ä
Ä
" #
	m_Markers
Ä
Ä
# ,
.
Ä
Ä
, -
Count
Ä
Ä
- 2
<<
Ä
Ä
3 5
$num
Ä
Ä
6 8
)
Ä
Ä
8 9
;
Ä
Ä
9 :
}
Å
Å
 	
int
É
É
 
GetClipsHash
É
É
 
(
É
É
 
)
É
É
 
{
Ñ
Ñ
 	
var
Ö
Ö
 
hash
Ö
Ö
 
=
Ö
Ö
 
$num
Ö
Ö
 
;
Ö
Ö
 
foreach
Ü
Ü
 
(
Ü
Ü
 
var
Ü
Ü
 
clip
Ü
Ü
 
in
Ü
Ü
  
m_Clips
Ü
Ü
! (
)
Ü
Ü
( )
{
á
á
 
hash
à
à
 
=
à
à
 
hash
à
à
 
.
à
à
 
CombineHash
à
à
 '
(
à
à
' (
clip
à
à
( ,
.
à
à
, -
Hash
à
à
- 1
(
à
à
1 2
)
à
à
2 3
)
à
à
3 4
;
à
à
4 5
}
â
â
 
return
ä
ä
 
hash
ä
ä
 
;
ä
ä
 
}
ã
ã
 	
	protected
í
í
 
static
í
í
 
int
í
í
 "
GetAnimationClipHash
í
í
 1
(
í
í
1 2
AnimationClip
í
í
2 ?
clip
í
í
@ D
)
í
í
D E
{
ì
ì
 	
var
î
î
 
hash
î
î
 
=
î
î
 
$num
î
î
 
;
î
î
 
if
ï
ï
 
(
ï
ï
 
clip
ï
ï
 
!=
ï
ï
 
null
ï
ï
 
&&
ï
ï
 
!
ï
ï
  !
clip
ï
ï
! %
.
ï
ï
% &
empty
ï
ï
& +
)
ï
ï
+ ,
hash
ñ
ñ
 
=
ñ
ñ
 
hash
ñ
ñ
 
.
ñ
ñ
 
CombineHash
ñ
ñ
 '
(
ñ
ñ
' (
clip
ñ
ñ
( ,
.
ñ
ñ
, -
	frameRate
ñ
ñ
- 6
.
ñ
ñ
6 7
GetHashCode
ñ
ñ
7 B
(
ñ
ñ
B C
)
ñ
ñ
C D
)
ñ
ñ
D E
.
ó
ó
 
CombineHash
ó
ó
  
(
ó
ó
  !
clip
ó
ó
! %
.
ó
ó
% &
length
ó
ó
& ,
.
ó
ó
, -
GetHashCode
ó
ó
- 8
(
ó
ó
8 9
)
ó
ó
9 :
)
ó
ó
: ;
;
ó
ó
; <
return
ô
ô
 
hash
ô
ô
 
;
ô
ô
 
}
ö
ö
 	
bool
ú
ú
 
HasNotifications
ú
ú
 
(
ú
ú
 
)
ú
ú
 
{
ù
ù
 	
return
û
û
 
	m_Markers
û
û
 
.
û
û
 
HasNotifications
û
û
 -
(
û
û
- .
)
û
û
. /
;
û
û
/ 0
}
ü
ü
 	
bool
°
°
 %
CanCompileNotifications
°
°
 $
(
°
°
$ %
)
°
°
% &
{
¢
¢
 	
return
£
£
 #
supportsNotifications
£
£
 (
&&
£
£
) +
	m_Markers
£
£
, 5
.
£
£
5 6
HasNotifications
£
£
6 F
(
£
£
F G
)
£
£
G H
;
£
£
H I
}
§
§
 	
bool
¶
¶
 %
CanCreateMixerRecursive
¶
¶
 $
(
¶
¶
$ %
)
¶
¶
% &
{
ß
ß
 	
if
®
®
 
(
®
®
 !
CanCreateTrackMixer
®
®
 #
(
®
®
# $
)
®
®
$ %
)
®
®
% &
return
©
©
 
true
©
©
 
;
©
©
 
foreach
™
™
 
(
™
™
 
var
™
™
 
track
™
™
 
in
™
™
 !
GetChildTracks
™
™
" 0
(
™
™
0 1
)
™
™
1 2
)
™
™
2 3
{
´
´
 
if
¨
¨
 
(
¨
¨
 
track
¨
¨
 
.
¨
¨
 %
CanCreateMixerRecursive
¨
¨
 1
(
¨
¨
1 2
)
¨
¨
2 3
)
¨
¨
3 4
return
≠
≠
 
true
≠
≠
 
;
≠
≠
  
}
Æ
Æ
 
return
∞
∞
 
false
∞
∞
 
;
∞
∞
 
}
±
±
 	
}
≤
≤
 
}≥
≥
 Ãê
_C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\TimeUtility.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{		 
public 

enum 
StandardFrameRates "
{ 
Fps24 
, 
Fps23_97 
, 
Fps25 
, 
Fps30 
, 
Fps29_97## 
,## 
Fps50'' 
,'' 
Fps60++ 
,++ 
Fps59_94// 
}00 
static33 

class33 
TimeUtility33 
{44 
public66 
static66 
readonly66 
double66 %
kTimeEpsilon66& 2
=663 4
$num665 :
;66: ;
public77 
static77 
readonly77 
double77 %
kFrameRateEpsilon77& 7
=778 9
$num77: >
;77> ?
public88 
static88 
readonly88 
double88 %*
k_MaxTimelineDurationInSeconds88& D
=88E F
$num88G J
;88J K
public99 
static99 
readonly99 
double99 %
kFrameRateRounding99& 8
=999 :
$num99; ?
;99? @
static<< 
void<< 
ValidateFrameRate<< %
(<<% &
double<<& ,
	frameRate<<- 6
)<<6 7
{== 	
if>> 
(>> 
	frameRate>> 
<=>> 
kTimeEpsilon>> )
)>>) *
throw?? 
new?? 
ArgumentException?? +
(??+ ,
$str??, P
)??P Q
;??Q R
}@@ 	
publicBB 
staticBB 
intBB 
ToFramesBB "
(BB" #
doubleBB# )
timeBB* .
,BB. /
doubleBB0 6
	frameRateBB7 @
)BB@ A
{CC 	
ValidateFrameRateDD 
(DD 
	frameRateDD '
)DD' (
;DD( )
timeEE 
=EE 
MathEE 
.EE 
MinEE 
(EE 
MathEE  
.EE  !
MaxEE! $
(EE$ %
timeEE% )
,EE) *
-EE+ ,*
k_MaxTimelineDurationInSecondsEE, J
)EEJ K
,EEK L*
k_MaxTimelineDurationInSecondsEEM k
)EEk l
;EEl m
doubleGG 
	toleranceGG 
=GG 

GetEpsilonGG )
(GG) *
timeGG* .
,GG. /
	frameRateGG0 9
)GG9 :
;GG: ;
ifHH 
(HH 
timeHH 
<HH 
$numHH 
)HH 
{II 
returnJJ 
(JJ 
intJJ 
)JJ 
MathJJ  
.JJ  !
CeilingJJ! (
(JJ( )
timeJJ) -
*JJ. /
	frameRateJJ0 9
-JJ: ;
	toleranceJJ< E
)JJE F
;JJF G
}KK 
returnLL 
(LL 
intLL 
)LL 
MathLL 
.LL 
FloorLL "
(LL" #
timeLL# '
*LL( )
	frameRateLL* 3
+LL4 5
	toleranceLL6 ?
)LL? @
;LL@ A
}MM 	
publicOO 
staticOO 
doubleOO 
ToExactFramesOO *
(OO* +
doubleOO+ 1
timeOO2 6
,OO6 7
doubleOO8 >
	frameRateOO? H
)OOH I
{PP 	
ValidateFrameRateQQ 
(QQ 
	frameRateQQ '
)QQ' (
;QQ( )
returnRR 
timeRR 
*RR 
	frameRateRR #
;RR# $
}SS 	
publicUU 
staticUU 
doubleUU 

FromFramesUU '
(UU' (
intUU( +
framesUU, 2
,UU2 3
doubleUU4 :
	frameRateUU; D
)UUD E
{VV 	
ValidateFrameRateWW 
(WW 
	frameRateWW '
)WW' (
;WW( )
returnXX 
(XX 
framesXX 
/XX 
	frameRateXX &
)XX& '
;XX' (
}YY 	
public[[ 
static[[ 
double[[ 

FromFrames[[ '
([[' (
double[[( .
frames[[/ 5
,[[5 6
double[[7 =
	frameRate[[> G
)[[G H
{\\ 	
ValidateFrameRate]] 
(]] 
	frameRate]] '
)]]' (
;]]( )
return^^ 
frames^^ 
/^^ 
	frameRate^^ %
;^^% &
}__ 	
publicaa 
staticaa 
boolaa 
OnFrameBoundaryaa *
(aa* +
doubleaa+ 1
timeaa2 6
,aa6 7
doubleaa8 >
	frameRateaa? H
)aaH I
{bb 	
returncc 
OnFrameBoundarycc "
(cc" #
timecc# '
,cc' (
	frameRatecc) 2
,cc2 3

GetEpsiloncc4 >
(cc> ?
timecc? C
,ccC D
	frameRateccE N
)ccN O
)ccO P
;ccP Q
}dd 	
publicff 
staticff 
doubleff 

GetEpsilonff '
(ff' (
doubleff( .
timeff/ 3
,ff3 4
doubleff5 ;
	frameRateff< E
)ffE F
{gg 	
returnhh 
Mathhh 
.hh 
Maxhh 
(hh 
Mathhh  
.hh  !
Abshh! $
(hh$ %
timehh% )
)hh) *
,hh* +
$numhh, -
)hh- .
*hh/ 0
	frameRatehh1 :
*hh; <
kTimeEpsilonhh= I
;hhI J
}ii 	
publickk 
statickk 
boolkk 
OnFrameBoundarykk *
(kk* +
doublekk+ 1
timekk2 6
,kk6 7
doublekk8 >
	frameRatekk? H
,kkH I
doublekkJ P
epsilonkkQ X
)kkX Y
{ll 	
ValidateFrameRatemm 
(mm 
	frameRatemm '
)mm' (
;mm( )
doubleoo 
exactoo 
=oo 
ToExactFramesoo (
(oo( )
timeoo) -
,oo- .
	frameRateoo/ 8
)oo8 9
;oo9 :
doublepp 
roundedpp 
=pp 
Mathpp !
.pp! "
Roundpp" '
(pp' (
exactpp( -
)pp- .
;pp. /
returnrr 
Mathrr 
.rr 
Absrr 
(rr 
exactrr !
-rr" #
roundedrr$ +
)rr+ ,
<rr- .
epsilonrr/ 6
;rr6 7
}ss 	
publicuu 
staticuu 
doubleuu 
RoundToFrameuu )
(uu) *
doubleuu* 0
timeuu1 5
,uu5 6
doubleuu7 =
	frameRateuu> G
)uuG H
{vv 	
ValidateFrameRateww 
(ww 
	frameRateww '
)ww' (
;ww( )
varyy 
frameBeforeyy 
=yy 
(yy 
intyy "
)yy" #
Mathyy# '
.yy' (
Flooryy( -
(yy- .
timeyy. 2
*yy3 4
	frameRateyy5 >
)yy> ?
/yy@ A
	frameRateyyB K
;yyK L
varzz 

frameAfterzz 
=zz 
(zz 
intzz !
)zz! "
Mathzz" &
.zz& '
Ceilingzz' .
(zz. /
timezz/ 3
*zz4 5
	frameRatezz6 ?
)zz? @
/zzA B
	frameRatezzC L
;zzL M
return|| 
Math|| 
.|| 
Abs|| 
(|| 
time||  
-||! "
frameBefore||# .
)||. /
<||0 1
Math||2 6
.||6 7
Abs||7 :
(||: ;
time||; ?
-||@ A

frameAfter||B L
)||L M
?||N O
frameBefore||P [
:||\ ]

frameAfter||^ h
;||h i
}}} 	
public 
static 
string 
TimeAsFrames )
() *
double* 0
	timeValue1 :
,: ;
double< B
	frameRateC L
,L M
stringN T
formatU [
=\ ]
$str^ b
)b c
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
OnFrameBoundary
ÅÅ 
(
ÅÅ  
	timeValue
ÅÅ  )
,
ÅÅ) *
	frameRate
ÅÅ+ 4
)
ÅÅ4 5
)
ÅÅ5 6
return
ÇÇ 
ToFrames
ÇÇ 
(
ÇÇ  
	timeValue
ÇÇ  )
,
ÇÇ) *
	frameRate
ÇÇ+ 4
)
ÇÇ4 5
.
ÇÇ5 6
ToString
ÇÇ6 >
(
ÇÇ> ?
)
ÇÇ? @
;
ÇÇ@ A
return
ÉÉ 
ToExactFrames
ÉÉ  
(
ÉÉ  !
	timeValue
ÉÉ! *
,
ÉÉ* +
	frameRate
ÉÉ, 5
)
ÉÉ5 6
.
ÉÉ6 7
ToString
ÉÉ7 ?
(
ÉÉ? @
format
ÉÉ@ F
)
ÉÉF G
;
ÉÉG H
}
ÑÑ 	
public
ÜÜ 
static
ÜÜ 
string
ÜÜ 
TimeAsTimeCode
ÜÜ +
(
ÜÜ+ ,
double
ÜÜ, 2
	timeValue
ÜÜ3 <
,
ÜÜ< =
double
ÜÜ> D
	frameRate
ÜÜE N
,
ÜÜN O
string
ÜÜP V
format
ÜÜW ]
=
ÜÜ^ _
$str
ÜÜ` d
)
ÜÜd e
{
áá 	
ValidateFrameRate
àà 
(
àà 
	frameRate
àà '
)
àà' (
;
àà( )
int
ää 
intTime
ää 
=
ää 
(
ää 
int
ää 
)
ää 
Math
ää #
.
ää# $
Abs
ää$ '
(
ää' (
	timeValue
ää( 1
)
ää1 2
;
ää2 3
int
åå 
hours
åå 
=
åå 
intTime
åå 
/
åå  !
$num
åå" &
;
åå& '
int
çç 
minutes
çç 
=
çç 
(
çç 
intTime
çç "
%
çç# $
$num
çç% )
)
çç) *
/
çç+ ,
$num
çç- /
;
çç/ 0
int
éé 
seconds
éé 
=
éé 
intTime
éé !
%
éé" #
$num
éé$ &
;
éé& '
string
êê 
result
êê 
;
êê 
string
ëë 
sign
ëë 
=
ëë 
	timeValue
ëë #
<
ëë$ %
$num
ëë& '
?
ëë( )
$str
ëë* -
:
ëë. /
string
ëë0 6
.
ëë6 7
Empty
ëë7 <
;
ëë< =
if
íí 
(
íí 
hours
íí 
>
íí 
$num
íí 
)
íí 
result
ìì 
=
ìì 
hours
ìì 
+
ìì  
$str
ìì! $
+
ìì% &
minutes
ìì' .
.
ìì. /
ToString
ìì/ 7
(
ìì7 8
$str
ìì8 <
)
ìì< =
+
ìì> ?
$str
ìì@ C
+
ììD E
seconds
ììF M
.
ììM N
ToString
ììN V
(
ììV W
$str
ììW [
)
ìì[ \
;
ìì\ ]
else
îî 
if
îî 
(
îî 
minutes
îî 
>
îî 
$num
îî  
)
îî  !
result
ïï 
=
ïï 
minutes
ïï  
+
ïï! "
$str
ïï# &
+
ïï' (
seconds
ïï) 0
.
ïï0 1
ToString
ïï1 9
(
ïï9 :
$str
ïï: >
)
ïï> ?
;
ïï? @
else
ññ 
result
óó 
=
óó 
seconds
óó  
.
óó  !
ToString
óó! )
(
óó) *
)
óó* +
;
óó+ ,
int
ôô 
frameDigits
ôô 
=
ôô 
(
ôô 
int
ôô "
)
ôô" #
Math
ôô# '
.
ôô' (
Floor
ôô( -
(
ôô- .
Math
ôô. 2
.
ôô2 3
Log10
ôô3 8
(
ôô8 9
	frameRate
ôô9 B
)
ôôB C
+
ôôD E
$num
ôôF G
)
ôôG H
;
ôôH I
string
ûû 
frames
ûû 
=
ûû 
(
ûû 
ToFrames
ûû %
(
ûû% &
	timeValue
ûû& /
,
ûû/ 0
	frameRate
ûû1 :
)
ûû: ;
-
ûû< =
ToFrames
ûû> F
(
ûûF G
intTime
ûûG N
,
ûûN O
	frameRate
ûûP Y
)
ûûY Z
)
ûûZ [
.
ûû[ \
ToString
ûû\ d
(
ûûd e
)
ûûe f
.
ûûf g
PadLeft
ûûg n
(
ûûn o
frameDigits
ûûo z
,
ûûz {
$char
ûû| 
)ûû Ä
;ûûÄ Å
if
üü 
(
üü 
!
üü 
OnFrameBoundary
üü  
(
üü  !
	timeValue
üü! *
,
üü* +
	frameRate
üü, 5
)
üü5 6
)
üü6 7
{
†† 
string
°° 
decimals
°° 
=
°°  !
ToExactFrames
°°" /
(
°°/ 0
	timeValue
°°0 9
,
°°9 :
	frameRate
°°; D
)
°°D E
.
°°E F
ToString
°°F N
(
°°N O
format
°°O U
)
°°U V
;
°°V W
int
¢¢ 
decPlace
¢¢ 
=
¢¢ 
decimals
¢¢ '
.
¢¢' (
IndexOf
¢¢( /
(
¢¢/ 0
$char
¢¢0 3
)
¢¢3 4
;
¢¢4 5
if
££ 
(
££ 
decPlace
££ 
>=
££ 
$num
££  !
)
££! "
frames
§§ 
+=
§§ 
$str
§§ "
+
§§# $
decimals
§§% -
.
§§- .
	Substring
§§. 7
(
§§7 8
decPlace
§§8 @
)
§§@ A
+
§§B C
$str
§§D G
;
§§G H
}
•• 
return
ßß 
sign
ßß 
+
ßß 
result
ßß  
+
ßß! "
$str
ßß# &
+
ßß' (
frames
ßß) /
;
ßß/ 0
}
®® 	
public
∞∞ 
static
∞∞ 
double
∞∞ 
ParseTimeCode
∞∞ *
(
∞∞* +
string
∞∞+ 1
timeCode
∞∞2 :
,
∞∞: ;
double
∞∞< B
	frameRate
∞∞C L
,
∞∞L M
double
∞∞N T
defaultValue
∞∞U a
)
∞∞a b
{
±± 	
timeCode
≤≤ 
=
≤≤ 

RemoveChar
≤≤ !
(
≤≤! "
timeCode
≤≤" *
,
≤≤* +
c
≤≤, -
=>
≤≤. 0
char
≤≤1 5
.
≤≤5 6
IsWhiteSpace
≤≤6 B
(
≤≤B C
c
≤≤C D
)
≤≤D E
)
≤≤E F
;
≤≤F G
string
≥≥ 
[
≥≥ 
]
≥≥ 
sections
≥≥ 
=
≥≥ 
timeCode
≥≥  (
.
≥≥( )
Split
≥≥) .
(
≥≥. /
$char
≥≥/ 2
)
≥≥2 3
;
≥≥3 4
if
¥¥ 
(
¥¥ 
sections
¥¥ 
.
¥¥ 
Length
¥¥ 
==
¥¥  "
$num
¥¥# $
||
¥¥% '
sections
¥¥( 0
.
¥¥0 1
Length
¥¥1 7
>
¥¥8 9
$num
¥¥: ;
)
¥¥; <
return
µµ 
defaultValue
µµ #
;
µµ# $
int
∑∑ 
hours
∑∑ 
=
∑∑ 
$num
∑∑ 
;
∑∑ 
int
∏∏ 
minutes
∏∏ 
=
∏∏ 
$num
∏∏ 
;
∏∏ 
double
ππ 
seconds
ππ 
=
ππ 
$num
ππ 
;
ππ 
double
∫∫ 
frames
∫∫ 
=
∫∫ 
$num
∫∫ 
;
∫∫ 
try
ºº 
{
ΩΩ 
string
¿¿ 
lastSection
¿¿ "
=
¿¿# $
sections
¿¿% -
[
¿¿- .
sections
¿¿. 6
.
¿¿6 7
Length
¿¿7 =
-
¿¿> ?
$num
¿¿@ A
]
¿¿A B
;
¿¿B C
if
¡¡ 
(
¡¡ 
Regex
¡¡ 
.
¡¡ 
Match
¡¡ 
(
¡¡  
lastSection
¡¡  +
,
¡¡+ ,
$str
¡¡- :
)
¡¡: ;
.
¡¡; <
Success
¡¡< C
)
¡¡C D
{
¬¬ 
seconds
√√ 
=
√√ 
double
√√ $
.
√√$ %
Parse
√√% *
(
√√* +
lastSection
√√+ 6
)
√√6 7
;
√√7 8
if
ƒƒ 
(
ƒƒ 
sections
ƒƒ  
.
ƒƒ  !
Length
ƒƒ! '
>
ƒƒ( )
$num
ƒƒ* +
)
ƒƒ+ ,
return
ƒƒ- 3
defaultValue
ƒƒ4 @
;
ƒƒ@ A
if
≈≈ 
(
≈≈ 
sections
≈≈  
.
≈≈  !
Length
≈≈! '
>
≈≈( )
$num
≈≈* +
)
≈≈+ ,
minutes
≈≈- 4
=
≈≈5 6
int
≈≈7 :
.
≈≈: ;
Parse
≈≈; @
(
≈≈@ A
sections
≈≈A I
[
≈≈I J
sections
≈≈J R
.
≈≈R S
Length
≈≈S Y
-
≈≈Z [
$num
≈≈\ ]
]
≈≈] ^
)
≈≈^ _
;
≈≈_ `
if
∆∆ 
(
∆∆ 
sections
∆∆  
.
∆∆  !
Length
∆∆! '
>
∆∆( )
$num
∆∆* +
)
∆∆+ ,
hours
∆∆- 2
=
∆∆3 4
int
∆∆5 8
.
∆∆8 9
Parse
∆∆9 >
(
∆∆> ?
sections
∆∆? G
[
∆∆G H
sections
∆∆H P
.
∆∆P Q
Length
∆∆Q W
-
∆∆X Y
$num
∆∆Z [
]
∆∆[ \
)
∆∆\ ]
;
∆∆] ^
}
«« 
else
…… 
{
   
if
ÀÀ 
(
ÀÀ 
Regex
ÀÀ 
.
ÀÀ 
Match
ÀÀ #
(
ÀÀ# $
lastSection
ÀÀ$ /
,
ÀÀ/ 0
$str
ÀÀ1 B
)
ÀÀB C
.
ÀÀC D
Success
ÀÀD K
)
ÀÀK L
{
ÃÃ 
string
ÕÕ 
stripped
ÕÕ '
=
ÕÕ( )

RemoveChar
ÕÕ* 4
(
ÕÕ4 5
lastSection
ÕÕ5 @
,
ÕÕ@ A
c
ÕÕB C
=>
ÕÕD F
c
ÕÕG H
==
ÕÕI K
$char
ÕÕL O
||
ÕÕP R
c
ÕÕS T
==
ÕÕU W
$char
ÕÕX [
)
ÕÕ[ \
;
ÕÕ\ ]
frames
ŒŒ 
=
ŒŒ  
double
ŒŒ! '
.
ŒŒ' (
Parse
ŒŒ( -
(
ŒŒ- .
stripped
ŒŒ. 6
)
ŒŒ6 7
;
ŒŒ7 8
}
œœ 
else
–– 
if
–– 
(
–– 
Regex
–– "
.
––" #
Match
––# (
(
––( )
lastSection
––) 4
,
––4 5
$str
––6 >
)
––> ?
.
––? @
Success
––@ G
)
––G H
{
—— 
frames
““ 
=
““  
int
““! $
.
““$ %
Parse
““% *
(
““* +
lastSection
““+ 6
)
““6 7
;
““7 8
}
”” 
else
‘‘ 
{
’’ 
return
÷÷ 
defaultValue
÷÷ +
;
÷÷+ ,
}
◊◊ 
if
ŸŸ 
(
ŸŸ 
sections
ŸŸ  
.
ŸŸ  !
Length
ŸŸ! '
>
ŸŸ( )
$num
ŸŸ* +
)
ŸŸ+ ,
seconds
ŸŸ- 4
=
ŸŸ5 6
int
ŸŸ7 :
.
ŸŸ: ;
Parse
ŸŸ; @
(
ŸŸ@ A
sections
ŸŸA I
[
ŸŸI J
sections
ŸŸJ R
.
ŸŸR S
Length
ŸŸS Y
-
ŸŸZ [
$num
ŸŸ\ ]
]
ŸŸ] ^
)
ŸŸ^ _
;
ŸŸ_ `
if
⁄⁄ 
(
⁄⁄ 
sections
⁄⁄  
.
⁄⁄  !
Length
⁄⁄! '
>
⁄⁄( )
$num
⁄⁄* +
)
⁄⁄+ ,
minutes
⁄⁄- 4
=
⁄⁄5 6
int
⁄⁄7 :
.
⁄⁄: ;
Parse
⁄⁄; @
(
⁄⁄@ A
sections
⁄⁄A I
[
⁄⁄I J
sections
⁄⁄J R
.
⁄⁄R S
Length
⁄⁄S Y
-
⁄⁄Z [
$num
⁄⁄\ ]
]
⁄⁄] ^
)
⁄⁄^ _
;
⁄⁄_ `
if
€€ 
(
€€ 
sections
€€  
.
€€  !
Length
€€! '
>
€€( )
$num
€€* +
)
€€+ ,
hours
€€- 2
=
€€3 4
int
€€5 8
.
€€8 9
Parse
€€9 >
(
€€> ?
sections
€€? G
[
€€G H
sections
€€H P
.
€€P Q
Length
€€Q W
-
€€X Y
$num
€€Z [
]
€€[ \
)
€€\ ]
;
€€] ^
}
‹‹ 
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ 
FormatException
ﬁﬁ "
)
ﬁﬁ" #
{
ﬂﬂ 
return
‡‡ 
defaultValue
‡‡ #
;
‡‡# $
}
·· 
return
„„ 
frames
„„ 
/
„„ 
	frameRate
„„ %
+
„„& '
seconds
„„( /
+
„„0 1
minutes
„„2 9
*
„„: ;
$num
„„< >
+
„„? @
hours
„„A F
*
„„G H
$num
„„I M
;
„„M N
}
‰‰ 	
public
ÊÊ 
static
ÊÊ 
double
ÊÊ 
ParseTimeSeconds
ÊÊ -
(
ÊÊ- .
string
ÊÊ. 4
timeCode
ÊÊ5 =
,
ÊÊ= >
double
ÊÊ? E
	frameRate
ÊÊF O
,
ÊÊO P
double
ÊÊQ W
defaultValue
ÊÊX d
)
ÊÊd e
{
ÁÁ 	
timeCode
ËË 
=
ËË 

RemoveChar
ËË !
(
ËË! "
timeCode
ËË" *
,
ËË* +
c
ËË, -
=>
ËË. 0
char
ËË1 5
.
ËË5 6
IsWhiteSpace
ËË6 B
(
ËËB C
c
ËËC D
)
ËËD E
)
ËËE F
;
ËËF G
string
ÈÈ 
[
ÈÈ 
]
ÈÈ 
sections
ÈÈ 
=
ÈÈ 
timeCode
ÈÈ  (
.
ÈÈ( )
Split
ÈÈ) .
(
ÈÈ. /
$char
ÈÈ/ 2
)
ÈÈ2 3
;
ÈÈ3 4
if
ÍÍ 
(
ÍÍ 
sections
ÍÍ 
.
ÍÍ 
Length
ÍÍ 
==
ÍÍ  "
$num
ÍÍ# $
||
ÍÍ% '
sections
ÍÍ( 0
.
ÍÍ0 1
Length
ÍÍ1 7
>
ÍÍ8 9
$num
ÍÍ: ;
)
ÍÍ; <
return
ÎÎ 
defaultValue
ÎÎ #
;
ÎÎ# $
int
ÌÌ 
hours
ÌÌ 
=
ÌÌ 
$num
ÌÌ 
;
ÌÌ 
int
ÓÓ 
minutes
ÓÓ 
=
ÓÓ 
$num
ÓÓ 
;
ÓÓ 
double
ÔÔ 
seconds
ÔÔ 
=
ÔÔ 
$num
ÔÔ 
;
ÔÔ 
try
ÒÒ 
{
ÚÚ 
string
ıı 
lastSection
ıı "
=
ıı# $
sections
ıı% -
[
ıı- .
sections
ıı. 6
.
ıı6 7
Length
ıı7 =
-
ıı> ?
$num
ıı@ A
]
ııA B
;
ııB C
{
ˆˆ 
if
˜˜ 
(
˜˜ 
!
˜˜ 
double
˜˜ 
.
˜˜  
TryParse
˜˜  (
(
˜˜( )
lastSection
˜˜) 4
,
˜˜4 5
NumberStyles
˜˜6 B
.
˜˜B C
Integer
˜˜C J
,
˜˜J K
CultureInfo
˜˜L W
.
˜˜W X
InvariantCulture
˜˜X h
,
˜˜h i
out
˜˜j m
seconds
˜˜n u
)
˜˜u v
)
˜˜v w
if
¯¯ 
(
¯¯ 
Regex
¯¯ !
.
¯¯! "
Match
¯¯" '
(
¯¯' (
lastSection
¯¯( 3
,
¯¯3 4
$str
¯¯5 B
)
¯¯B C
.
¯¯C D
Success
¯¯D K
)
¯¯K L
seconds
˘˘ #
=
˘˘$ %
double
˘˘& ,
.
˘˘, -
Parse
˘˘- 2
(
˘˘2 3
lastSection
˘˘3 >
)
˘˘> ?
;
˘˘? @
else
˙˙ 
return
˚˚ "
defaultValue
˚˚# /
;
˚˚/ 0
if
˝˝ 
(
˝˝ 
!
˝˝ 
double
˝˝ 
.
˝˝  
TryParse
˝˝  (
(
˝˝( )
lastSection
˝˝) 4
,
˝˝4 5
NumberStyles
˝˝6 B
.
˝˝B C
Float
˝˝C H
,
˝˝H I
CultureInfo
˝˝J U
.
˝˝U V
InvariantCulture
˝˝V f
,
˝˝f g
out
˝˝h k
seconds
˝˝l s
)
˝˝s t
)
˝˝t u
return
˛˛ 
defaultValue
˛˛ +
;
˛˛+ ,
if
ÄÄ 
(
ÄÄ 
sections
ÄÄ  
.
ÄÄ  !
Length
ÄÄ! '
>
ÄÄ( )
$num
ÄÄ* +
)
ÄÄ+ ,
return
ÄÄ- 3
defaultValue
ÄÄ4 @
;
ÄÄ@ A
if
ÅÅ 
(
ÅÅ 
sections
ÅÅ  
.
ÅÅ  !
Length
ÅÅ! '
>
ÅÅ( )
$num
ÅÅ* +
)
ÅÅ+ ,
minutes
ÅÅ- 4
=
ÅÅ5 6
int
ÅÅ7 :
.
ÅÅ: ;
Parse
ÅÅ; @
(
ÅÅ@ A
sections
ÅÅA I
[
ÅÅI J
sections
ÅÅJ R
.
ÅÅR S
Length
ÅÅS Y
-
ÅÅZ [
$num
ÅÅ\ ]
]
ÅÅ] ^
)
ÅÅ^ _
;
ÅÅ_ `
if
ÇÇ 
(
ÇÇ 
sections
ÇÇ  
.
ÇÇ  !
Length
ÇÇ! '
>
ÇÇ( )
$num
ÇÇ* +
)
ÇÇ+ ,
hours
ÇÇ- 2
=
ÇÇ3 4
int
ÇÇ5 8
.
ÇÇ8 9
Parse
ÇÇ9 >
(
ÇÇ> ?
sections
ÇÇ? G
[
ÇÇG H
sections
ÇÇH P
.
ÇÇP Q
Length
ÇÇQ W
-
ÇÇX Y
$num
ÇÇZ [
]
ÇÇ[ \
)
ÇÇ\ ]
;
ÇÇ] ^
}
ÉÉ 
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
FormatException
ÖÖ "
)
ÖÖ" #
{
ÜÜ 
return
áá 
defaultValue
áá #
;
áá# $
}
àà 
return
ää 
seconds
ää 
+
ää 
minutes
ää $
*
ää% &
$num
ää' )
+
ää* +
hours
ää, 1
*
ää2 3
$num
ää4 8
;
ää8 9
}
ãã 	
public
éé 
static
éé 
double
éé $
GetAnimationClipLength
éé 3
(
éé3 4
AnimationClip
éé4 A
clip
ééB F
)
ééF G
{
èè 	
if
êê 
(
êê 
clip
êê 
==
êê 
null
êê 
||
êê 
clip
êê  $
.
êê$ %
empty
êê% *
)
êê* +
return
ëë 
$num
ëë 
;
ëë 
double
ìì 
length
ìì 
=
ìì 
clip
ìì  
.
ìì  !
length
ìì! '
;
ìì' (
if
îî 
(
îî 
clip
îî 
.
îî 
	frameRate
îî 
>
îî  
$num
îî! "
)
îî" #
{
ïï 
double
ññ 
frames
ññ 
=
ññ 
Mathf
ññ  %
.
ññ% &
Round
ññ& +
(
ññ+ ,
clip
ññ, 0
.
ññ0 1
length
ññ1 7
*
ññ8 9
clip
ññ: >
.
ññ> ?
	frameRate
ññ? H
)
ññH I
;
ññI J
length
óó 
=
óó 
frames
óó 
/
óó  !
clip
óó" &
.
óó& '
	frameRate
óó' 0
;
óó0 1
}
òò 
return
ôô 
length
ôô 
;
ôô 
}
öö 	
static
úú 
string
úú 

RemoveChar
úú  
(
úú  !
string
úú! '
str
úú( +
,
úú+ ,
Func
úú- 1
<
úú1 2
char
úú2 6
,
úú6 7
bool
úú8 <
>
úú< =
charToRemoveFunc
úú> N
)
úúN O
{
ùù 	
var
ûû 
len
ûû 
=
ûû 
str
ûû 
.
ûû 
Length
ûû  
;
ûû  !
var
üü 
src
üü 
=
üü 
str
üü 
.
üü 
ToCharArray
üü %
(
üü% &
)
üü& '
;
üü' (
var
†† 
dstIdx
†† 
=
†† 
$num
†† 
;
†† 
for
°° 
(
°° 
var
°° 
i
°° 
=
°° 
$num
°° 
;
°° 
i
°° 
<
°° 
len
°°  #
;
°°# $
i
°°% &
++
°°& (
)
°°( )
{
¢¢ 
if
££ 
(
££ 
!
££ 
charToRemoveFunc
££ %
(
££% &
src
££& )
[
££) *
i
££* +
]
££+ ,
)
££, -
)
££- .
src
§§ 
[
§§ 
dstIdx
§§ 
++
§§  
]
§§  !
=
§§" #
src
§§$ '
[
§§' (
i
§§( )
]
§§) *
;
§§* +
}
•• 
return
¶¶ 
new
¶¶ 
string
¶¶ 
(
¶¶ 
src
¶¶ !
,
¶¶! "
$num
¶¶# $
,
¶¶$ %
dstIdx
¶¶& ,
)
¶¶, -
;
¶¶- .
}
ßß 	
public
©© 
static
©© 
	FrameRate
©© !
GetClosestFrameRate
©©  3
(
©©3 4
double
©©4 :
	frameRate
©©; D
)
©©D E
{
™™ 	
ValidateFrameRate
´´ 
(
´´ 
	frameRate
´´ '
)
´´' (
;
´´( )
var
¨¨ 
actualFrameRate
¨¨ 
=
¨¨  !
	FrameRate
¨¨" +
.
¨¨+ ,
DoubleToFrameRate
¨¨, =
(
¨¨= >
	frameRate
¨¨> G
)
¨¨G H
;
¨¨H I
return
≠≠ 
Math
≠≠ 
.
≠≠ 
Abs
≠≠ 
(
≠≠ 
	frameRate
≠≠ %
-
≠≠& '
actualFrameRate
≠≠( 7
.
≠≠7 8
rate
≠≠8 <
)
≠≠< =
<
≠≠> ? 
kFrameRateRounding
≠≠@ R
?
≠≠S T
actualFrameRate
≠≠U d
:
≠≠e f
new
≠≠g j
	FrameRate
≠≠k t
(
≠≠t u
)
≠≠u v
;
≠≠v w
}
ÆÆ 	
public
∞∞ 
static
∞∞ 
	FrameRate
∞∞ 
ToFrameRate
∞∞  +
(
∞∞+ , 
StandardFrameRates
∞∞, >
	enumValue
∞∞? H
)
∞∞H I
{
±± 	
switch
≤≤ 
(
≤≤ 
	enumValue
≤≤ 
)
≤≤ 
{
≥≥ 
case
¥¥  
StandardFrameRates
¥¥ '
.
¥¥' (
Fps23_97
¥¥( 0
:
¥¥0 1
return
µµ 
	FrameRate
µµ $
.
µµ$ %
k_23_976Fps
µµ% 0
;
µµ0 1
case
∂∂  
StandardFrameRates
∂∂ '
.
∂∂' (
Fps24
∂∂( -
:
∂∂- .
return
∑∑ 
	FrameRate
∑∑ $
.
∑∑$ %
k_24Fps
∑∑% ,
;
∑∑, -
case
∏∏  
StandardFrameRates
∏∏ '
.
∏∏' (
Fps25
∏∏( -
:
∏∏- .
return
ππ 
	FrameRate
ππ $
.
ππ$ %
k_25Fps
ππ% ,
;
ππ, -
case
∫∫  
StandardFrameRates
∫∫ '
.
∫∫' (
Fps29_97
∫∫( 0
:
∫∫0 1
return
ªª 
	FrameRate
ªª $
.
ªª$ %

k_29_97Fps
ªª% /
;
ªª/ 0
case
ºº  
StandardFrameRates
ºº '
.
ºº' (
Fps30
ºº( -
:
ºº- .
return
ΩΩ 
	FrameRate
ΩΩ $
.
ΩΩ$ %
k_30Fps
ΩΩ% ,
;
ΩΩ, -
case
ææ  
StandardFrameRates
ææ '
.
ææ' (
Fps50
ææ( -
:
ææ- .
return
øø 
	FrameRate
øø $
.
øø$ %
k_50Fps
øø% ,
;
øø, -
case
¿¿  
StandardFrameRates
¿¿ '
.
¿¿' (
Fps59_94
¿¿( 0
:
¿¿0 1
return
¡¡ 
	FrameRate
¡¡ $
.
¡¡$ %

k_59_94Fps
¡¡% /
;
¡¡/ 0
case
¬¬  
StandardFrameRates
¬¬ '
.
¬¬' (
Fps60
¬¬( -
:
¬¬- .
return
√√ 
	FrameRate
√√ $
.
√√$ %
k_60Fps
√√% ,
;
√√, -
default
ƒƒ 
:
ƒƒ 
return
≈≈ 
new
≈≈ 
	FrameRate
≈≈ (
(
≈≈( )
)
≈≈) *
;
≈≈* +
}
∆∆ 
;
«« 
}
»» 	
internal
   
static
   
bool
   !
ToStandardFrameRate
   0
(
  0 1
	FrameRate
  1 :
rate
  ; ?
,
  ? @
out
  A D 
StandardFrameRates
  E W
standard
  X `
)
  ` a
{
ÀÀ 	
if
ÃÃ 
(
ÃÃ 
rate
ÃÃ 
==
ÃÃ 
	FrameRate
ÃÃ !
.
ÃÃ! "
k_23_976Fps
ÃÃ" -
)
ÃÃ- .
standard
ÕÕ 
=
ÕÕ  
StandardFrameRates
ÕÕ -
.
ÕÕ- .
Fps23_97
ÕÕ. 6
;
ÕÕ6 7
else
ŒŒ 
if
ŒŒ 
(
ŒŒ 
rate
ŒŒ 
==
ŒŒ 
	FrameRate
ŒŒ &
.
ŒŒ& '
k_24Fps
ŒŒ' .
)
ŒŒ. /
standard
œœ 
=
œœ  
StandardFrameRates
œœ -
.
œœ- .
Fps24
œœ. 3
;
œœ3 4
else
–– 
if
–– 
(
–– 
rate
–– 
==
–– 
	FrameRate
–– &
.
––& '
k_25Fps
––' .
)
––. /
standard
—— 
=
——  
StandardFrameRates
—— -
.
——- .
Fps25
——. 3
;
——3 4
else
““ 
if
““ 
(
““ 
rate
““ 
==
““ 
	FrameRate
““ &
.
““& '
k_30Fps
““' .
)
““. /
standard
”” 
=
””  
StandardFrameRates
”” -
.
””- .
Fps30
””. 3
;
””3 4
else
‘‘ 
if
‘‘ 
(
‘‘ 
rate
‘‘ 
==
‘‘ 
	FrameRate
‘‘ &
.
‘‘& '

k_29_97Fps
‘‘' 1
)
‘‘1 2
standard
’’ 
=
’’  
StandardFrameRates
’’ -
.
’’- .
Fps29_97
’’. 6
;
’’6 7
else
÷÷ 
if
÷÷ 
(
÷÷ 
rate
÷÷ 
==
÷÷ 
	FrameRate
÷÷ &
.
÷÷& '
k_50Fps
÷÷' .
)
÷÷. /
standard
◊◊ 
=
◊◊  
StandardFrameRates
◊◊ -
.
◊◊- .
Fps50
◊◊. 3
;
◊◊3 4
else
ÿÿ 
if
ÿÿ 
(
ÿÿ 
rate
ÿÿ 
==
ÿÿ 
	FrameRate
ÿÿ &
.
ÿÿ& '

k_59_94Fps
ÿÿ' 1
)
ÿÿ1 2
standard
ŸŸ 
=
ŸŸ  
StandardFrameRates
ŸŸ -
.
ŸŸ- .
Fps59_94
ŸŸ. 6
;
ŸŸ6 7
else
⁄⁄ 
if
⁄⁄ 
(
⁄⁄ 
rate
⁄⁄ 
==
⁄⁄ 
	FrameRate
⁄⁄ &
.
⁄⁄& '
k_60Fps
⁄⁄' .
)
⁄⁄. /
standard
€€ 
=
€€  
StandardFrameRates
€€ -
.
€€- .
Fps60
€€. 3
;
€€3 4
else
‹‹ 
{
›› 
standard
ﬁﬁ 
=
ﬁﬁ 
(
ﬁﬁ  
StandardFrameRates
ﬁﬁ .
)
ﬁﬁ. /
Enum
ﬁﬁ/ 3
.
ﬁﬁ3 4
	GetValues
ﬁﬁ4 =
(
ﬁﬁ= >
typeof
ﬁﬁ> D
(
ﬁﬁD E 
StandardFrameRates
ﬁﬁE W
)
ﬁﬁW X
)
ﬁﬁX Y
.
ﬁﬁY Z
Length
ﬁﬁZ `
;
ﬁﬁ` a
return
ﬂﬂ 
false
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
return
·· 
true
·· 
;
·· 
}
‚‚ 	
}
„„ 
}‰‰ È
aC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Scripting\PlayableTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 
TimelineHelpURL 
( 
typeof 
( 
PlayableTrack )
)) *
)* +
]+ ,
public 

class 
PlayableTrack 
:  

TrackAsset! +
{ 
	protected 
override 
void 
OnCreateClip  ,
(, -
TimelineClip- 9
clip: >
)> ?
{ 	
if 
( 
clip 
. 
asset 
!= 
null "
)" #
clip 
. 
displayName  
=! "
clip# '
.' (
asset( -
.- .
GetType. 5
(5 6
)6 7
.7 8
Name8 <
;< =
} 	
} 
} ≠
cC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Audio\AudioClipProperties.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 

NotKeyable 
] 
class 	
AudioClipProperties
 
: 
PlayableBehaviour  1
{		 
[

 	
Range

	 
(

 
$num

 
,

 
$num

 
)

 
]

 
public 
float 
volume 
= 
$num "
;" #
} 
} µ
gC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Playables\BasicScriptPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 
Obsolete 
( 
$str M
)M N
]N O
public 

class "
BasicPlayableBehaviour '
:( )
ScriptableObject* :
,: ;
IPlayableAsset< J
,J K
IPlayableBehaviourL ^
{ 
public 
virtual 
double 
duration &
{' (
get) ,
{- .
return/ 5
PlayableBinding6 E
.E F
DefaultDurationF U
;U V
}W X
}Y Z
public 
virtual 
IEnumerable "
<" #
PlayableBinding# 2
>2 3
outputs4 ;
{< =
get> A
{B C
returnD J
PlayableBindingK Z
.Z [
None[ _
;_ `
}a b
}c d
public 
virtual 
void 
OnGraphStart (
(( )
Playable) 1
playable2 :
): ;
{< =
}> ?
public## 
virtual## 
void## 
OnGraphStop## '
(##' (
Playable##( 0
playable##1 9
)##9 :
{##; <
}##= >
public)) 
virtual)) 
void)) 
OnPlayableCreate)) ,
()), -
Playable))- 5
playable))6 >
)))> ?
{))@ A
}))B C
public// 
virtual// 
void// 
OnPlayableDestroy// -
(//- .
Playable//. 6
playable//7 ?
)//? @
{//A B
}//C D
public66 
virtual66 
void66 
OnBehaviourPlay66 +
(66+ ,
Playable66, 4
playable665 =
,66= >
	FrameData66? H
info66I M
)66M N
{66O P
}66Q R
public== 
virtual== 
void== 
OnBehaviourPause== ,
(==, -
Playable==- 5
playable==6 >
,==> ?
	FrameData==@ I
info==J N
)==N O
{==P Q
}==R S
publicDD 
virtualDD 
voidDD 
PrepareFrameDD (
(DD( )
PlayableDD) 1
playableDD2 :
,DD: ;
	FrameDataDD< E
infoDDF J
)DDJ K
{DDL M
}DDN O
publicLL 
virtualLL 
voidLL 
ProcessFrameLL (
(LL( )
PlayableLL) 1
playableLL2 :
,LL: ;
	FrameDataLL< E
infoLLF J
,LLJ K
objectLLL R

playerDataLLS ]
)LL] ^
{LL_ `
}LLa b
publicTT 
virtualTT 
PlayableTT 
CreatePlayableTT  .
(TT. /
PlayableGraphTT/ <
graphTT= B
,TTB C

GameObjectTTD N
ownerTTO T
)TTT U
{UU 	
returnVV 
ScriptPlayableVV !
<VV! ""
BasicPlayableBehaviourVV" 8
>VV8 9
.VV9 :
CreateVV: @
(VV@ A
graphVVA F
,VVF G
thisVVH L
)VVL M
;VVM N
}WW 	
}XX 
}YY Ò.
bC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Audio\AudioPlayableAsset.cs
	namespace		 	
UnityEngine		
 
.		 
Timeline		 
{

 
[ 
Serializable 
] 
[ 
DisplayName 
( 
$str 
) 
] 
public 

class 
AudioPlayableAsset #
:$ %
PlayableAsset& 3
,3 4
ITimelineClipAsset5 G
{ 
[ 	
SerializeField	 
] 
	AudioClip "
m_Clip# )
;) *
[ 	
SerializeField	 
] 
bool 
m_Loop $
;$ %
[ 	
SerializeField	 
, 
HideInInspector (
]( )
float* /
m_bufferingTime0 ?
=@ A
$numB F
;F G
[ 	
SerializeField	 
] 
AudioClipProperties ,
m_ClipProperties- =
=> ?
new@ C
AudioClipPropertiesD W
(W X
)X Y
;Y Z
internal 
float 
bufferingTime $
{ 	
get 
{ 
return 
m_bufferingTime (
;( )
}* +
set 
{ 
m_bufferingTime !
=" #
value$ )
;) *
}+ ,
} 	
Playable"" 
m_LiveClipPlayable"" #
=""$ %
Playable""& .
."". /
Null""/ 3
;""3 4
public)) 
	AudioClip)) 
clip)) 
{** 	
get++ 
{++ 
return++ 
m_Clip++ 
;++  
}++! "
set,, 
{,, 
m_Clip,, 
=,, 
value,,  
;,,  !
},," #
}-- 	
public55 
bool55 
loop55 
{66 	
get77 
{77 
return77 
m_Loop77 
;77  
}77! "
set88 
{88 
m_Loop88 
=88 
value88  
;88  !
}88" #
}99 	
public>> 
override>> 
double>> 
duration>> '
{?? 	
get@@ 
{AA 
ifBB 
(BB 
m_ClipBB 
==BB 
nullBB "
)BB" #
returnCC 
baseCC 
.CC  
durationCC  (
;CC( )
returnFF 
(FF 
doubleFF 
)FF 
m_ClipFF %
.FF% &
samplesFF& -
/FF. /
m_ClipFF0 6
.FF6 7
	frequencyFF7 @
;FF@ A
}GG 
}HH 	
publicMM 
overrideMM 
IEnumerableMM #
<MM# $
PlayableBindingMM$ 3
>MM3 4
outputsMM5 <
{NN 	
getOO 
{OO 
yieldOO 
returnOO  
AudioPlayableBindingOO 3
.OO3 4
CreateOO4 :
(OO: ;
nameOO; ?
,OO? @
thisOOA E
)OOE F
;OOF G
}OOH I
}PP 	
publicXX 
overrideXX 
PlayableXX  
CreatePlayableXX! /
(XX/ 0
PlayableGraphXX0 =
graphXX> C
,XXC D

GameObjectXXE O
goXXP R
)XXR S
{YY 	
ifZZ 
(ZZ 
m_ClipZZ 
==ZZ 
nullZZ 
)ZZ 
return[[ 
Playable[[ 
.[[  
Null[[  $
;[[$ %
var]] 
audioClipPlayable]] !
=]]" #
AudioClipPlayable]]$ 5
.]]5 6
Create]]6 <
(]]< =
graph]]= B
,]]B C
m_Clip]]D J
,]]J K
m_Loop]]L R
)]]R S
;]]S T
audioClipPlayable^^ 
.^^ 
	GetHandle^^ '
(^^' (
)^^( )
.^^) *
SetScriptInstance^^* ;
(^^; <
m_ClipProperties^^< L
.^^L M
Clone^^M R
(^^R S
)^^S T
)^^T U
;^^U V
m_LiveClipPlayableaa 
=aa  
audioClipPlayableaa! 2
;aa2 3
returndd 
audioClipPlayabledd $
;dd$ %
}ee 	
publicjj 
ClipCapsjj 
clipCapsjj  
{kk 	
getll 
{mm 
returnnn 
ClipCapsnn 
.nn  
ClipInnn  &
|nn' (
ClipCapsoo 
.oo 
SpeedMultiplieroo ,
|oo- .
ClipCapspp 
.pp 
Blendingpp %
|pp& '
(qq 
m_Loopqq 
?qq 
ClipCapsqq &
.qq& '
Loopingqq' .
:qq/ 0
ClipCapsqq1 9
.qq9 :
Noneqq: >
)qq> ?
;qq? @
}rr 
}ss 	
internalvv 
voidvv 
LiveLinkvv 
(vv 
)vv  
{ww 	
ifxx 
(xx 
!xx 
m_LiveClipPlayablexx #
.xx# $
IsValidxx$ +
(xx+ ,
)xx, -
)xx- .
returnyy 
;yy 
var{{  
audioMixerProperties{{ $
={{% &
m_LiveClipPlayable{{' 9
.{{9 :
	GetHandle{{: C
({{C D
){{D E
.{{E F
	GetObject{{F O
<{{O P
AudioClipProperties{{P c
>{{c d
({{d e
){{e f
;{{f g
if}} 
(}}  
audioMixerProperties}} $
==}}% '
null}}( ,
)}}, -
return~~ 
;~~ "
audioMixerProperties
ÄÄ  
.
ÄÄ  !
volume
ÄÄ! '
=
ÄÄ( )
m_ClipProperties
ÄÄ* :
.
ÄÄ: ;
volume
ÄÄ; A
;
ÄÄA B
}
ÅÅ 	
}
ÑÑ 
}ÖÖ œ≠
aC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Evaluation\IntervalTree.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
	interface 
	IInterval 
{ 
Int64 
intervalStart 
{ 
get !
;! "
}# $
Int64		 
intervalEnd		 
{		 
get		 
;		  
}		! "
}

 
struct 

IntervalTreeNode 
{ 
public 
Int64 
center 
; 
public 
int 
first 
; 
public 
int 
last 
; 
public 
int 
left 
; 
public 
int 
right 
; 
} 
class 	
IntervalTree
 
< 
T 
> 
where 
T  !
:" #
	IInterval$ -
{ 
internal 
struct 
Entry 
{ 	
public 
Int64 
intervalStart &
;& '
public 
Int64 
intervalEnd $
;$ %
public 
T 
item 
; 
} 	
const 
int 
kMinNodeSize 
=  
$num! #
;# $
const 
int 
kInvalidNode 
=  
-! "
$num" #
;# $
const   
Int64   
kCenterUnknown   "
=  # $
Int64  % *
.  * +
MaxValue  + 3
;  3 4
readonly"" 
List"" 
<"" 
Entry"" 
>"" 
	m_Entries"" &
=""' (
new"") ,
List""- 1
<""1 2
Entry""2 7
>""7 8
(""8 9
)""9 :
;"": ;
readonly## 
List## 
<## 
IntervalTreeNode## &
>##& '
m_Nodes##( /
=##0 1
new##2 5
List##6 :
<##: ;
IntervalTreeNode##; K
>##K L
(##L M
)##M N
;##N O
public(( 
bool(( 
dirty(( 
{(( 
get(( 
;((  
internal((! )
set((* -
;((- .
}((/ 0
public-- 
void-- 
Add-- 
(-- 
T-- 
item-- 
)-- 
{.. 	
if// 
(// 
item// 
==// 
null// 
)// 
return00 
;00 
	m_Entries22 
.22 
Add22 
(22 
new33 
Entry33 
(33 
)33 
{44 
intervalStart55 !
=55" #
item55$ (
.55( )
intervalStart55) 6
,556 7
intervalEnd66 
=66  !
item66" &
.66& '
intervalEnd66' 2
,662 3
item77 
=77 
item77 
}88 
)99 
;99 
dirty:: 
=:: 
true:: 
;:: 
};; 	
publicBB 
voidBB 
IntersectsWithBB "
(BB" #
Int64BB# (
valueBB) .
,BB. /
ListBB0 4
<BB4 5
TBB5 6
>BB6 7
resultsBB8 ?
)BB? @
{CC 	
ifDD 
(DD 
	m_EntriesDD 
.DD 
CountDD 
==DD  "
$numDD# $
)DD$ %
returnEE 
;EE 
ifGG 
(GG 
dirtyGG 
)GG 
{HH 
RebuildII 
(II 
)II 
;II 
dirtyJJ 
=JJ 
falseJJ 
;JJ 
}KK 
ifMM 
(MM 
m_NodesMM 
.MM 
CountMM 
>MM 
$numMM  !
)MM! "
QueryNN 
(NN 
m_NodesNN 
[NN 
$numNN 
]NN  
,NN  !
valueNN" '
,NN' (
resultsNN) 0
)NN0 1
;NN1 2
}OO 	
publicWW 
voidWW 
IntersectsWithRangeWW '
(WW' (
Int64WW( -
startWW. 3
,WW3 4
Int64WW5 :
endWW; >
,WW> ?
ListWW@ D
<WWD E
TWWE F
>WWF G
resultsWWH O
)WWO P
{XX 	
ifYY 
(YY 
startYY 
>YY 
endYY 
)YY 
returnZZ 
;ZZ 
if\\ 
(\\ 
	m_Entries\\ 
.\\ 
Count\\ 
==\\  "
$num\\# $
)\\$ %
return]] 
;]] 
if__ 
(__ 
dirty__ 
)__ 
{`` 
Rebuildaa 
(aa 
)aa 
;aa 
dirtybb 
=bb 
falsebb 
;bb 
}cc 
ifee 
(ee 
m_Nodesee 
.ee 
Countee 
>ee 
$numee  !
)ee! "

QueryRangeff 
(ff 
m_Nodesff "
[ff" #
$numff# $
]ff$ %
,ff% &
startff' ,
,ff, -
endff. 1
,ff1 2
resultsff3 :
)ff: ;
;ff; <
}gg 	
publicmm 
voidmm 
UpdateIntervalsmm #
(mm# $
)mm$ %
{nn 	
booloo 
isDirtyoo 
=oo 
falseoo  
;oo  !
forpp 
(pp 
intpp 
ipp 
=pp 
$numpp 
;pp 
ipp 
<pp 
	m_Entriespp  )
.pp) *
Countpp* /
;pp/ 0
ipp1 2
++pp2 4
)pp4 5
{qq 
varrr 
nrr 
=rr 
	m_Entriesrr !
[rr! "
irr" #
]rr# $
;rr$ %
varss 
sss 
=ss 
nss 
.ss 
itemss 
.ss 
intervalStartss ,
;ss, -
vartt 
ett 
=tt 
ntt 
.tt 
itemtt 
.tt 
intervalEndtt *
;tt* +
isDirtyvv 
|=vv 
nvv 
.vv 
intervalStartvv *
!=vv+ -
svv. /
;vv/ 0
isDirtyww 
|=ww 
nww 
.ww 
intervalEndww (
!=ww) +
eww, -
;ww- .
	m_Entriesyy 
[yy 
iyy 
]yy 
=yy 
newyy "
Entryyy# (
(yy( )
)yy) *
{zz 
intervalStart{{ !
={{" #
s{{$ %
,{{% &
intervalEnd|| 
=||  !
e||" #
,||# $
item}} 
=}} 
n}} 
.}} 
item}} !
}~~ 
;~~ 
} 
dirty
ÅÅ 
|=
ÅÅ 
isDirty
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
private
ÑÑ 
void
ÑÑ 
Query
ÑÑ 
(
ÑÑ 
IntervalTreeNode
ÑÑ +
intervalTreeNode
ÑÑ, <
,
ÑÑ< =
Int64
ÑÑ> C
value
ÑÑD I
,
ÑÑI J
List
ÑÑK O
<
ÑÑO P
T
ÑÑP Q
>
ÑÑQ R
results
ÑÑS Z
)
ÑÑZ [
{
ÖÖ 	
for
ÜÜ 
(
ÜÜ 
int
ÜÜ 
i
ÜÜ 
=
ÜÜ 
intervalTreeNode
ÜÜ )
.
ÜÜ) *
first
ÜÜ* /
;
ÜÜ/ 0
i
ÜÜ1 2
<=
ÜÜ3 5
intervalTreeNode
ÜÜ6 F
.
ÜÜF G
last
ÜÜG K
;
ÜÜK L
i
ÜÜM N
++
ÜÜN P
)
ÜÜP Q
{
áá 
var
àà 
entry
àà 
=
àà 
	m_Entries
àà %
[
àà% &
i
àà& '
]
àà' (
;
àà( )
if
ââ 
(
ââ 
value
ââ 
>=
ââ 
entry
ââ "
.
ââ" #
intervalStart
ââ# 0
&&
ââ1 3
value
ââ4 9
<
ââ: ;
entry
ââ< A
.
ââA B
intervalEnd
ââB M
)
ââM N
{
ää 
results
ãã 
.
ãã 
Add
ãã 
(
ãã  
entry
ãã  %
.
ãã% &
item
ãã& *
)
ãã* +
;
ãã+ ,
}
åå 
}
çç 
if
èè 
(
èè 
intervalTreeNode
èè  
.
èè  !
center
èè! '
==
èè( *
kCenterUnknown
èè+ 9
)
èè9 :
return
êê 
;
êê 
if
ëë 
(
ëë 
intervalTreeNode
ëë  
.
ëë  !
left
ëë! %
!=
ëë& (
kInvalidNode
ëë) 5
&&
ëë6 8
value
ëë9 >
<
ëë? @
intervalTreeNode
ëëA Q
.
ëëQ R
center
ëëR X
)
ëëX Y
Query
íí 
(
íí 
m_Nodes
íí 
[
íí 
intervalTreeNode
íí .
.
íí. /
left
íí/ 3
]
íí3 4
,
íí4 5
value
íí6 ;
,
íí; <
results
íí= D
)
ííD E
;
ííE F
if
ìì 
(
ìì 
intervalTreeNode
ìì  
.
ìì  !
right
ìì! &
!=
ìì' )
kInvalidNode
ìì* 6
&&
ìì7 9
value
ìì: ?
>
ìì@ A
intervalTreeNode
ììB R
.
ììR S
center
ììS Y
)
ììY Z
Query
îî 
(
îî 
m_Nodes
îî 
[
îî 
intervalTreeNode
îî .
.
îî. /
right
îî/ 4
]
îî4 5
,
îî5 6
value
îî7 <
,
îî< =
results
îî> E
)
îîE F
;
îîF G
}
ïï 	
private
óó 
void
óó 

QueryRange
óó 
(
óó  
IntervalTreeNode
óó  0
intervalTreeNode
óó1 A
,
óóA B
Int64
óóC H
start
óóI N
,
óóN O
Int64
óóP U
end
óóV Y
,
óóY Z
List
óó[ _
<
óó_ `
T
óó` a
>
óóa b
results
óóc j
)
óój k
{
òò 	
for
ôô 
(
ôô 
int
ôô 
i
ôô 
=
ôô 
intervalTreeNode
ôô )
.
ôô) *
first
ôô* /
;
ôô/ 0
i
ôô1 2
<=
ôô3 5
intervalTreeNode
ôô6 F
.
ôôF G
last
ôôG K
;
ôôK L
i
ôôM N
++
ôôN P
)
ôôP Q
{
öö 
var
õõ 
entry
õõ 
=
õõ 
	m_Entries
õõ %
[
õõ% &
i
õõ& '
]
õõ' (
;
õõ( )
if
úú 
(
úú 
end
úú 
>=
úú 
entry
úú  
.
úú  !
intervalStart
úú! .
&&
úú/ 1
start
úú2 7
<
úú8 9
entry
úú: ?
.
úú? @
intervalEnd
úú@ K
)
úúK L
{
ùù 
results
ûû 
.
ûû 
Add
ûû 
(
ûû  
entry
ûû  %
.
ûû% &
item
ûû& *
)
ûû* +
;
ûû+ ,
}
üü 
}
†† 
if
¢¢ 
(
¢¢ 
intervalTreeNode
¢¢  
.
¢¢  !
center
¢¢! '
==
¢¢( *
kCenterUnknown
¢¢+ 9
)
¢¢9 :
return
££ 
;
££ 
if
§§ 
(
§§ 
intervalTreeNode
§§  
.
§§  !
left
§§! %
!=
§§& (
kInvalidNode
§§) 5
&&
§§6 8
start
§§9 >
<
§§? @
intervalTreeNode
§§A Q
.
§§Q R
center
§§R X
)
§§X Y

QueryRange
•• 
(
•• 
m_Nodes
•• "
[
••" #
intervalTreeNode
••# 3
.
••3 4
left
••4 8
]
••8 9
,
••9 :
start
••; @
,
••@ A
end
••B E
,
••E F
results
••G N
)
••N O
;
••O P
if
¶¶ 
(
¶¶ 
intervalTreeNode
¶¶  
.
¶¶  !
right
¶¶! &
!=
¶¶' )
kInvalidNode
¶¶* 6
&&
¶¶7 9
end
¶¶: =
>
¶¶> ?
intervalTreeNode
¶¶@ P
.
¶¶P Q
center
¶¶Q W
)
¶¶W X

QueryRange
ßß 
(
ßß 
m_Nodes
ßß "
[
ßß" #
intervalTreeNode
ßß# 3
.
ßß3 4
right
ßß4 9
]
ßß9 :
,
ßß: ;
start
ßß< A
,
ßßA B
end
ßßC F
,
ßßF G
results
ßßH O
)
ßßO P
;
ßßP Q
}
®® 	
private
™™ 
void
™™ 
Rebuild
™™ 
(
™™ 
)
™™ 
{
´´ 	
m_Nodes
¨¨ 
.
¨¨ 
Clear
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
m_Nodes
≠≠ 
.
≠≠ 
Capacity
≠≠ 
=
≠≠ 
	m_Entries
≠≠ (
.
≠≠( )
Capacity
≠≠) 1
;
≠≠1 2
Rebuild
ÆÆ 
(
ÆÆ 
$num
ÆÆ 
,
ÆÆ 
	m_Entries
ÆÆ  
.
ÆÆ  !
Count
ÆÆ! &
-
ÆÆ' (
$num
ÆÆ) *
)
ÆÆ* +
;
ÆÆ+ ,
}
ØØ 	
private
±± 
int
±± 
Rebuild
±± 
(
±± 
int
±± 
start
±±  %
,
±±% &
int
±±' *
end
±±+ .
)
±±. /
{
≤≤ 	
IntervalTreeNode
≥≥ 
intervalTreeNode
≥≥ -
=
≥≥. /
new
≥≥0 3
IntervalTreeNode
≥≥4 D
(
≥≥D E
)
≥≥E F
;
≥≥F G
int
∂∂ 
count
∂∂ 
=
∂∂ 
end
∂∂ 
-
∂∂ 
start
∂∂ #
+
∂∂$ %
$num
∂∂& '
;
∂∂' (
if
∑∑ 
(
∑∑ 
count
∑∑ 
<
∑∑ 
kMinNodeSize
∑∑ $
)
∑∑$ %
{
∏∏ 
intervalTreeNode
ππ  
=
ππ! "
new
ππ# &
IntervalTreeNode
ππ' 7
(
ππ7 8
)
ππ8 9
{
ππ: ;
center
ππ< B
=
ππC D
kCenterUnknown
ππE S
,
ππS T
first
ππU Z
=
ππ[ \
start
ππ] b
,
ππb c
last
ππd h
=
ππi j
end
ππk n
,
ππn o
left
ππp t
=
ππu v
kInvalidNodeππw É
,ππÉ Ñ
rightππÖ ä
=ππã å
kInvalidNodeππç ô
}ππö õ
;ππõ ú
m_Nodes
∫∫ 
.
∫∫ 
Add
∫∫ 
(
∫∫ 
intervalTreeNode
∫∫ ,
)
∫∫, -
;
∫∫- .
return
ªª 
m_Nodes
ªª 
.
ªª 
Count
ªª $
-
ªª% &
$num
ªª' (
;
ªª( )
}
ºº 
var
ææ 
min
ææ 
=
ææ 
Int64
ææ 
.
ææ 
MaxValue
ææ $
;
ææ$ %
var
øø 
max
øø 
=
øø 
Int64
øø 
.
øø 
MinValue
øø $
;
øø$ %
for
¡¡ 
(
¡¡ 
int
¡¡ 
i
¡¡ 
=
¡¡ 
start
¡¡ 
;
¡¡ 
i
¡¡  !
<=
¡¡" $
end
¡¡% (
;
¡¡( )
i
¡¡* +
++
¡¡+ -
)
¡¡- .
{
¬¬ 
var
√√ 
o
√√ 
=
√√ 
	m_Entries
√√ !
[
√√! "
i
√√" #
]
√√# $
;
√√$ %
min
ƒƒ 
=
ƒƒ 
Math
ƒƒ 
.
ƒƒ 
Min
ƒƒ 
(
ƒƒ 
min
ƒƒ "
,
ƒƒ" #
o
ƒƒ$ %
.
ƒƒ% &
intervalStart
ƒƒ& 3
)
ƒƒ3 4
;
ƒƒ4 5
max
≈≈ 
=
≈≈ 
Math
≈≈ 
.
≈≈ 
Max
≈≈ 
(
≈≈ 
max
≈≈ "
,
≈≈" #
o
≈≈$ %
.
≈≈% &
intervalEnd
≈≈& 1
)
≈≈1 2
;
≈≈2 3
}
∆∆ 
var
»» 
center
»» 
=
»» 
(
»» 
max
»» 
+
»» 
min
»»  #
)
»»# $
/
»»% &
$num
»»' (
;
»»( )
intervalTreeNode
…… 
.
…… 
center
…… #
=
……$ %
center
……& ,
;
……, -
int
ÃÃ 
x
ÃÃ 
=
ÃÃ 
start
ÃÃ 
;
ÃÃ 
int
ÕÕ 
y
ÕÕ 
=
ÕÕ 
end
ÕÕ 
;
ÕÕ 
while
ŒŒ 
(
ŒŒ 
true
ŒŒ 
)
ŒŒ 
{
œœ 
while
–– 
(
–– 
x
–– 
<=
–– 
end
–– 
&&
––  "
	m_Entries
––# ,
[
––, -
x
––- .
]
––. /
.
––/ 0
intervalEnd
––0 ;
<
––< =
center
––> D
)
––D E
x
—— 
++
—— 
;
—— 
while
”” 
(
”” 
y
”” 
>=
”” 
start
”” !
&&
””" $
	m_Entries
””% .
[
””. /
y
””/ 0
]
””0 1
.
””1 2
intervalEnd
””2 =
>=
””> @
center
””A G
)
””G H
y
‘‘ 
--
‘‘ 
;
‘‘ 
if
÷÷ 
(
÷÷ 
x
÷÷ 
>
÷÷ 
y
÷÷ 
)
÷÷ 
break
◊◊ 
;
◊◊ 
var
ŸŸ 
nodeX
ŸŸ 
=
ŸŸ 
	m_Entries
ŸŸ %
[
ŸŸ% &
x
ŸŸ& '
]
ŸŸ' (
;
ŸŸ( )
var
⁄⁄ 
nodeY
⁄⁄ 
=
⁄⁄ 
	m_Entries
⁄⁄ %
[
⁄⁄% &
y
⁄⁄& '
]
⁄⁄' (
;
⁄⁄( )
	m_Entries
‹‹ 
[
‹‹ 
y
‹‹ 
]
‹‹ 
=
‹‹ 
nodeX
‹‹ $
;
‹‹$ %
	m_Entries
›› 
[
›› 
x
›› 
]
›› 
=
›› 
nodeY
›› $
;
››$ %
}
ﬁﬁ 
intervalTreeNode
‡‡ 
.
‡‡ 
first
‡‡ "
=
‡‡# $
x
‡‡% &
;
‡‡& '
y
„„ 
=
„„ 
end
„„ 
;
„„ 
while
‰‰ 
(
‰‰ 
true
‰‰ 
)
‰‰ 
{
ÂÂ 
while
ÊÊ 
(
ÊÊ 
x
ÊÊ 
<=
ÊÊ 
end
ÊÊ 
&&
ÊÊ  "
	m_Entries
ÊÊ# ,
[
ÊÊ, -
x
ÊÊ- .
]
ÊÊ. /
.
ÊÊ/ 0
intervalStart
ÊÊ0 =
<=
ÊÊ> @
center
ÊÊA G
)
ÊÊG H
x
ÁÁ 
++
ÁÁ 
;
ÁÁ 
while
ÈÈ 
(
ÈÈ 
y
ÈÈ 
>=
ÈÈ 
start
ÈÈ !
&&
ÈÈ" $
	m_Entries
ÈÈ% .
[
ÈÈ. /
y
ÈÈ/ 0
]
ÈÈ0 1
.
ÈÈ1 2
intervalStart
ÈÈ2 ?
>
ÈÈ@ A
center
ÈÈB H
)
ÈÈH I
y
ÍÍ 
--
ÍÍ 
;
ÍÍ 
if
ÏÏ 
(
ÏÏ 
x
ÏÏ 
>
ÏÏ 
y
ÏÏ 
)
ÏÏ 
break
ÌÌ 
;
ÌÌ 
var
ÔÔ 
nodeX
ÔÔ 
=
ÔÔ 
	m_Entries
ÔÔ %
[
ÔÔ% &
x
ÔÔ& '
]
ÔÔ' (
;
ÔÔ( )
var
 
nodeY
 
=
 
	m_Entries
 %
[
% &
y
& '
]
' (
;
( )
	m_Entries
ÚÚ 
[
ÚÚ 
y
ÚÚ 
]
ÚÚ 
=
ÚÚ 
nodeX
ÚÚ $
;
ÚÚ$ %
	m_Entries
ÛÛ 
[
ÛÛ 
x
ÛÛ 
]
ÛÛ 
=
ÛÛ 
nodeY
ÛÛ $
;
ÛÛ$ %
}
ÙÙ 
intervalTreeNode
ˆˆ 
.
ˆˆ 
last
ˆˆ !
=
ˆˆ" #
y
ˆˆ$ %
;
ˆˆ% &
m_Nodes
˘˘ 
.
˘˘ 
Add
˘˘ 
(
˘˘ 
new
˘˘ 
IntervalTreeNode
˘˘ ,
(
˘˘, -
)
˘˘- .
)
˘˘. /
;
˘˘/ 0
int
˙˙ 
index
˙˙ 
=
˙˙ 
m_Nodes
˙˙ 
.
˙˙  
Count
˙˙  %
-
˙˙& '
$num
˙˙( )
;
˙˙) *
intervalTreeNode
¸¸ 
.
¸¸ 
left
¸¸ !
=
¸¸" #
kInvalidNode
¸¸$ 0
;
¸¸0 1
intervalTreeNode
˝˝ 
.
˝˝ 
right
˝˝ "
=
˝˝# $
kInvalidNode
˝˝% 1
;
˝˝1 2
if
ˇˇ 
(
ˇˇ 
start
ˇˇ 
<
ˇˇ 
intervalTreeNode
ˇˇ (
.
ˇˇ( )
first
ˇˇ) .
)
ˇˇ. /
intervalTreeNode
ÄÄ  
.
ÄÄ  !
left
ÄÄ! %
=
ÄÄ& '
Rebuild
ÄÄ( /
(
ÄÄ/ 0
start
ÄÄ0 5
,
ÄÄ5 6
intervalTreeNode
ÄÄ7 G
.
ÄÄG H
first
ÄÄH M
-
ÄÄN O
$num
ÄÄP Q
)
ÄÄQ R
;
ÄÄR S
if
ÇÇ 
(
ÇÇ 
end
ÇÇ 
>
ÇÇ 
intervalTreeNode
ÇÇ &
.
ÇÇ& '
last
ÇÇ' +
)
ÇÇ+ ,
intervalTreeNode
ÉÉ  
.
ÉÉ  !
right
ÉÉ! &
=
ÉÉ' (
Rebuild
ÉÉ) 0
(
ÉÉ0 1
intervalTreeNode
ÉÉ1 A
.
ÉÉA B
last
ÉÉB F
+
ÉÉG H
$num
ÉÉI J
,
ÉÉJ K
end
ÉÉL O
)
ÉÉO P
;
ÉÉP Q
m_Nodes
ÖÖ 
[
ÖÖ 
index
ÖÖ 
]
ÖÖ 
=
ÖÖ 
intervalTreeNode
ÖÖ -
;
ÖÖ- .
return
ÜÜ 
index
ÜÜ 
;
ÜÜ 
}
áá 	
public
ââ 
void
ââ 
Clear
ââ 
(
ââ 
)
ââ 
{
ää 	
	m_Entries
ãã 
.
ãã 
Clear
ãã 
(
ãã 
)
ãã 
;
ãã 
m_Nodes
åå 
.
åå 
Clear
åå 
(
åå 
)
åå 
;
åå 
}
çç 	
}
éé 
}èè â
eC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Playables\NotificationFlags.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[		 
Flags		 

]		
 
[

 
Serializable

 
]

 
public 

enum 
NotificationFlags !
:" #
short$ )
{ 
TriggerInEditMode 
= 
$num 
<<  
$num! "
," #
Retroactive 
= 
$num 
<< 
$num 
, 
TriggerOnce 
= 
$num 
<< 
$num 
, 
} 
} ∫
\C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Events\SignalTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 
TrackBindingType 
( 
typeof 
( 
SignalReceiver +
)+ ,
), -
]- .
[ 

TrackColor 
( 
$num 
, 
$num 
, 
$num #
)# $
]$ %
[ 
ExcludeFromPreset 
] 
[ 
TimelineHelpURL 
( 
typeof 
( 
SignalTrack '
)' (
)( )
]) *
public 

class 
SignalTrack 
: 
MarkerTrack *
{+ ,
}- .
} ¸>
\C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\TimelineAttributes.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[		 
AttributeUsage		 
(		 
AttributeTargets		 $
.		$ %
Class		% *
,		* +
AllowMultiple		, 9
=		: ;
true		< @
)		@ A
]		A B
public

 

class

 "
TrackClipTypeAttribute

 '
:

( )
	Attribute

* 3
{ 
public 
readonly 
Type 
inspectedType *
;* +
public 
readonly 
bool 
allowAutoCreate ,
;, -
public "
TrackClipTypeAttribute %
(% &
Type& *
	clipClass+ 4
)4 5
{ 	
inspectedType 
= 
	clipClass %
;% &
allowAutoCreate 
= 
true "
;" #
} 	
public$$ "
TrackClipTypeAttribute$$ %
($$% &
Type$$& *
	clipClass$$+ 4
,$$4 5
bool$$6 :
allowAutoCreate$$; J
)$$J K
{%% 	
inspectedType&& 
=&& 
	clipClass&& %
;&&% &
allowAutoCreate'' 
='' 
false'' #
;''# $
}(( 	
})) 
[.. 
AttributeUsage.. 
(.. 
AttributeTargets.. $
...$ %
Field..% *
|..+ ,
AttributeTargets..- =
...= >
Class..> C
)..C D
]..D E
public// 

class// 
NotKeyableAttribute// $
://% &
	Attribute//' 0
{00 
}11 
[77 
Flags77 

]77
 
public88 

enum88 
TrackBindingFlags88 !
{99 
None== 
=== 
$num== 
,==  
AllowCreateComponentBB 
=BB 
$numBB  
,BB  !
AllGG 
=GG  
AllowCreateComponentGG "
}HH 
[SS 
AttributeUsageSS 
(SS 
AttributeTargetsSS $
.SS$ %
ClassSS% *
)SS* +
]SS+ ,
publicTT 

classTT %
TrackBindingTypeAttributeTT *
:TT+ ,
	AttributeTT- 6
{UU 
publicYY 
readonlyYY 
TypeYY 
typeYY !
;YY! "
public^^ 
readonly^^ 
TrackBindingFlags^^ )
flags^^* /
;^^/ 0
publicdd %
TrackBindingTypeAttributedd (
(dd( )
Typedd) -
typedd. 2
)dd2 3
{ee 	
thisff 
.ff 
typeff 
=ff 
typeff 
;ff 
thisgg 
.gg 
flagsgg 
=gg 
TrackBindingFlagsgg *
.gg* +
Allgg+ .
;gg. /
}hh 	
publicoo %
TrackBindingTypeAttributeoo (
(oo( )
Typeoo) -
typeoo. 2
,oo2 3
TrackBindingFlagsoo4 E
flagsooF K
)ooK L
{pp 	
thisqq 
.qq 
typeqq 
=qq 
typeqq 
;qq 
thisrr 
.rr 
flagsrr 
=rr 
flagsrr 
;rr 
}ss 	
}tt 
[xx 
AttributeUsagexx 
(xx 
AttributeTargetsxx $
.xx$ %
Classxx% *
,xx* +
	Inheritedxx, 5
=xx6 7
falsexx8 =
)xx= >
]xx> ?
classyy 	(
SupportsChildTracksAttributeyy
 &
:yy' (
	Attributeyy) 2
{zz 
public{{ 
readonly{{ 
Type{{ 
	childType{{ &
;{{& '
public|| 
readonly|| 
int|| 
levels|| "
;||" #
public~~ (
SupportsChildTracksAttribute~~ +
(~~+ ,
Type~~, 0
	childType~~1 :
=~~; <
null~~= A
,~~A B
int~~C F
levels~~G M
=~~N O
Int32~~P U
.~~U V
MaxValue~~V ^
)~~^ _
{ 	
this
ÄÄ 
.
ÄÄ 
	childType
ÄÄ 
=
ÄÄ 
	childType
ÄÄ &
;
ÄÄ& '
this
ÅÅ 
.
ÅÅ 
levels
ÅÅ 
=
ÅÅ 
levels
ÅÅ  
;
ÅÅ  !
}
ÇÇ 	
}
ÉÉ 
[
ÜÜ 
AttributeUsage
ÜÜ 
(
ÜÜ 
AttributeTargets
ÜÜ $
.
ÜÜ$ %
Class
ÜÜ% *
,
ÜÜ* +
AllowMultiple
ÜÜ, 9
=
ÜÜ: ;
false
ÜÜ< A
,
ÜÜA B
	Inherited
ÜÜC L
=
ÜÜM N
true
ÜÜO S
)
ÜÜS T
]
ÜÜT U
class
áá 	,
IgnoreOnPlayableTrackAttribute
áá
 (
:
áá) *
System
áá+ 1
.
áá1 2
	Attribute
áá2 ;
{
áá< =
}
áá> ?
class
ää 	 
TimeFieldAttribute
ää
 
:
ää 
PropertyAttribute
ää 0
{
ãã 
public
åå 
enum
åå 
UseEditMode
åå 
{
çç 	
None
éé 
,
éé 
ApplyEditMode
èè 
}
êê 	
public
ëë 
UseEditMode
ëë 
useEditMode
ëë &
{
ëë' (
get
ëë) ,
;
ëë, -
}
ëë. /
public
ìì  
TimeFieldAttribute
ìì !
(
ìì! "
UseEditMode
ìì" -
useEditMode
ìì. 9
=
ìì: ;
UseEditMode
ìì< G
.
ììG H
ApplyEditMode
ììH U
)
ììU V
{
îî 	
this
ïï 
.
ïï 
useEditMode
ïï 
=
ïï 
useEditMode
ïï *
;
ïï* +
}
ññ 	
}
óó 
class
ôô 	%
FrameRateFieldAttribute
ôô
 !
:
ôô" #
PropertyAttribute
ôô$ 5
{
ôô6 7
}
ôô8 9
[
ûû 
AttributeUsage
ûû 
(
ûû 
AttributeTargets
ûû $
.
ûû$ %
Class
ûû% *
,
ûû* +
	Inherited
ûû, 5
=
ûû6 7
false
ûû8 =
)
ûû= >
]
ûû> ?
public
üü 

class
üü !
HideInMenuAttribute
üü $
:
üü% &
	Attribute
üü' 0
{
üü1 2
}
üü3 4
[
ƒƒ 
AttributeUsage
ƒƒ 
(
ƒƒ 
AttributeTargets
ƒƒ $
.
ƒƒ$ %
Class
ƒƒ% *
)
ƒƒ* +
]
ƒƒ+ ,
public
≈≈ 

class
≈≈ "
CustomStyleAttribute
≈≈ %
:
≈≈& '
	Attribute
≈≈( 1
{
∆∆ 
public
   
readonly
   
string
   
ussStyle
   '
;
  ' (
public
–– "
CustomStyleAttribute
–– #
(
––# $
string
––$ *
ussStyle
––+ 3
)
––3 4
{
—— 	
this
““ 
.
““ 
ussStyle
““ 
=
““ 
ussStyle
““ $
;
““$ %
}
”” 	
}
‘‘ 
[
ŸŸ 
AttributeUsage
ŸŸ 
(
ŸŸ 
AttributeTargets
ŸŸ $
.
ŸŸ$ %
Class
ŸŸ% *
)
ŸŸ* +
]
ŸŸ+ ,
internal
⁄⁄ 
class
⁄⁄ #
MenuCategoryAttribute
⁄⁄ (
:
⁄⁄) *
	Attribute
⁄⁄+ 4
{
€€ 
public
ﬂﬂ 
readonly
ﬂﬂ 
string
ﬂﬂ 
category
ﬂﬂ '
;
ﬂﬂ' (
public
·· #
MenuCategoryAttribute
·· $
(
··$ %
string
··% +
category
··, 4
)
··4 5
{
‚‚ 	
this
„„ 
.
„„ 
category
„„ 
=
„„ 
category
„„ $
??
„„% '
string
„„( .
.
„„. /
Empty
„„/ 4
;
„„4 5
}
‰‰ 	
}
ÂÂ 
}ÊÊ Æ2
^C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Control\ControlTrack.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[

 
TrackClipType

 
(

 
typeof

 
(

  
ControlPlayableAsset

 .
)

. /
,

/ 0
false

1 6
)

6 7
]

7 8
[ 
ExcludeFromPreset 
] 
[ 
TimelineHelpURL 
( 
typeof 
( 
ControlTrack (
)( )
)) *
]* +
public 

class 
ControlTrack 
: 

TrackAsset  *
{ 
private 
static 
readonly 
HashSet  '
<' (
PlayableDirector( 8
>8 9 
s_ProcessedDirectors: N
=O P
newQ T
HashSetU \
<\ ]
PlayableDirector] m
>m n
(n o
)o p
;p q
public 
override 
void 
GatherProperties -
(- .
PlayableDirector. >
director? G
,G H
IPropertyCollectorI [
driver\ b
)b c
{ 	
if 
( 
director 
== 
null  
)  !
return 
; 
if 
(  
s_ProcessedDirectors $
.$ %
Contains% -
(- .
director. 6
)6 7
)7 8
return 
;  
s_ProcessedDirectors  
.  !
Add! $
($ %
director% -
)- .
;. /
var 
particlesToPreview "
=# $
new% (
HashSet) 0
<0 1
ParticleSystem1 ?
>? @
(@ A
)A B
;B C
var 
activationToPreview #
=$ %
new& )
HashSet* 1
<1 2

GameObject2 <
>< =
(= >
)> ?
;? @
var    
timeControlToPreview   $
=  % &
new  ' *
HashSet  + 2
<  2 3
MonoBehaviour  3 @
>  @ A
(  A B
)  B C
;  C D
var!! !
subDirectorsToPreview!! %
=!!& '
new!!( +
HashSet!!, 3
<!!3 4
PlayableDirector!!4 D
>!!D E
(!!E F
)!!F G
;!!G H
foreach## 
(## 
var## 
clip## 
in##  
GetClips##! )
(##) *
)##* +
)##+ ,
{$$ 
var%%  
controlPlayableAsset%% (
=%%) *
clip%%+ /
.%%/ 0
asset%%0 5
as%%6 8 
ControlPlayableAsset%%9 M
;%%M N
if&& 
(&&  
controlPlayableAsset&& (
==&&) +
null&&, 0
)&&0 1
continue'' 
;'' 
var)) 

gameObject)) 
=))   
controlPlayableAsset))! 5
.))5 6
sourceGameObject))6 F
.))F G
Resolve))G N
())N O
director))O W
)))W X
;))X Y
if** 
(** 

gameObject** 
==** !
null**" &
)**& '
continue++ 
;++ 
if-- 
(--  
controlPlayableAsset-- (
.--( )
updateParticle--) 7
)--7 8
particlesToPreview.. &
...& '
	UnionWith..' 0
(..0 1

gameObject..1 ;
...; <#
GetComponentsInChildren..< S
<..S T
ParticleSystem..T b
>..b c
(..c d
true..d h
)..h i
)..i j
;..j k
if// 
(//  
controlPlayableAsset// (
.//( )
active//) /
)/// 0
activationToPreview00 '
.00' (
Add00( +
(00+ ,

gameObject00, 6
)006 7
;007 8
if11 
(11  
controlPlayableAsset11 (
.11( )
updateITimeControl11) ;
)11; < 
timeControlToPreview22 (
.22( )
	UnionWith22) 2
(222 3 
ControlPlayableAsset223 G
.22G H!
GetControlableScripts22H ]
(22] ^

gameObject22^ h
)22h i
)22i j
;22j k
if33 
(33  
controlPlayableAsset33 (
.33( )
updateDirector33) 7
)337 8!
subDirectorsToPreview44 )
.44) *
	UnionWith44* 3
(443 4 
controlPlayableAsset444 H
.44H I
GetComponent44I U
<44U V
PlayableDirector44V f
>44f g
(44g h

gameObject44h r
)44r s
)44s t
;44t u
}55  
ControlPlayableAsset77  
.77  !
PreviewParticles77! 1
(771 2
driver772 8
,778 9
particlesToPreview77: L
)77L M
;77M N 
ControlPlayableAsset88  
.88  !
PreviewActivation88! 2
(882 3
driver883 9
,889 :
activationToPreview88; N
)88N O
;88O P 
ControlPlayableAsset99  
.99  !
PreviewTimeControl99! 3
(993 4
driver994 :
,99: ;
director99< D
,99D E 
timeControlToPreview99F Z
)99Z [
;99[ \ 
ControlPlayableAsset::  
.::  !
PreviewDirectors::! 1
(::1 2
driver::2 8
,::8 9!
subDirectorsToPreview::: O
)::O P
;::P Q 
s_ProcessedDirectors<<  
.<<  !
Remove<<! '
(<<' (
director<<( 0
)<<0 1
;<<1 2
particlesToPreview>> 
.>> 
Clear>> $
(>>$ %
)>>% &
;>>& '
activationToPreview?? 
.??  
Clear??  %
(??% &
)??& '
;??' ( 
timeControlToPreview@@  
.@@  !
Clear@@! &
(@@& '
)@@' (
;@@( )!
subDirectorsToPreviewAA !
.AA! "
ClearAA" '
(AA' (
)AA( )
;AA) *
}BB 	
}EE 
}FF € 
dC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Audio\AudioMixerProperties.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
class 	 
AudioMixerProperties
 
:  
PlayableBehaviour! 2
{		 
[

 	
Range

	 
(

 
$num

 
,

 
$num

 
)

 
]

 
public 
float 
volume 
= 
$num "
;" #
[ 	
Range	 
( 
- 
$num 
, 
$num 
) 
] 
public 
float 
	stereoPan 
=  
$num! %
;% &
[ 	
Range	 
( 
$num 
, 
$num 
) 
] 
public 
float 
spatialBlend !
=" #
$num$ (
;( )
public 
override 
void 
PrepareFrame )
() *
Playable* 2
playable3 ;
,; <
	FrameData= F
infoG K
)K L
{ 	
if 
( 
! 
playable 
. 
IsValid !
(! "
)" #
||$ &
!' (
playable( 0
.0 1
IsPlayableOfType1 A
<A B
AudioMixerPlayableB T
>T U
(U V
)V W
)W X
return 
; 
var 

inputCount 
= 
playable %
.% &
GetInputCount& 3
(3 4
)4 5
;5 6
for 
( 
int 
i 
= 
$num 
; 
i 
< 

inputCount  *
;* +
++, .
i. /
)/ 0
{ 
if 
( 
playable 
. 
GetInputWeight +
(+ ,
i, -
)- .
>/ 0
$num1 5
)5 6
{ 
var 
input 
= 
playable  (
.( )
GetInput) 1
(1 2
i2 3
)3 4
;4 5
if   
(   
input   
.   
IsValid   %
(  % &
)  & '
&&  ( *
input  + 0
.  0 1
IsPlayableOfType  1 A
<  A B
AudioClipPlayable  B S
>  S T
(  T U
)  U V
)  V W
{!! 
var"" 
audioClipPlayable"" -
="". /
(""0 1
AudioClipPlayable""1 B
)""B C
input""C H
;""H I
var## 
audioClipProperties## /
=##0 1
input##2 7
.##7 8
	GetHandle##8 A
(##A B
)##B C
.##C D
	GetObject##D M
<##M N
AudioClipProperties##N a
>##a b
(##b c
)##c d
;##d e
audioClipPlayable%% )
.%%) *
	SetVolume%%* 3
(%%3 4
Mathf%%4 9
.%%9 :
Clamp01%%: A
(%%A B
volume%%B H
*%%I J
audioClipProperties%%K ^
.%%^ _
volume%%_ e
)%%e f
)%%f g
;%%g h
audioClipPlayable&& )
.&&) *
SetStereoPan&&* 6
(&&6 7
Mathf&&7 <
.&&< =
Clamp&&= B
(&&B C
	stereoPan&&C L
,&&L M
-&&N O
$num&&O S
,&&S T
$num&&U Y
)&&Y Z
)&&Z [
;&&[ \
audioClipPlayable'' )
.'') *
SetSpatialBlend''* 9
(''9 :
Mathf'': ?
.''? @
Clamp01''@ G
(''G H
spatialBlend''H T
)''T U
)''U V
;''V W
}(( 
})) 
}** 
}++ 	
},, 
}-- ¨>
lC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\AssetUpgrade\AnimationTrackUpgrade.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
partial 
class 
AnimationTrack  
{ 
[ 	
SerializeField	 
, 
Obsolete !
(! "
$str" O
,O P
falseQ V
)V W
,W X
HideInInspectorY h
]h i

Quaternion $
m_OpenClipOffsetRotation +
=, -

Quaternion. 8
.8 9
identity9 A
;A B
[ 	
SerializeField	 
, 
Obsolete !
(! "
$str" ?
,? @
falseA F
)F G
,G H
HideInInspectorI X
]X Y

Quaternion 

m_Rotation 
= 

Quaternion  *
.* +
identity+ 3
;3 4
[ 	
SerializeField	 
, 
Obsolete !
(! "
$str" A
,A B
falseC H
)H I
,I J
HideInInspectorK Z
]Z [
bool 
m_ApplyOffsets 
; 
[ 	
EditorBrowsable	 
(  
EditorBrowsableState -
.- .
Never. 3
)3 4
]4 5
[ 	
Obsolete	 
( 
$str	 ó
,
ó ò
true
ô ù
)
ù û
]
û ü
public 
Vector3 "
openClipOffsetPosition -
{ 	
get 
{ 
return &
infiniteClipOffsetPosition 3
;3 4
}5 6
set 
{ &
infiniteClipOffsetPosition ,
=- .
value/ 4
;4 5
}6 7
} 	
[%% 	
EditorBrowsable%%	 
(%%  
EditorBrowsableState%% -
.%%- .
Never%%. 3
)%%3 4
]%%4 5
[&& 	
Obsolete&&	 
(&& 
$str	&& ó
,
&&ó ò
true
&&ô ù
)
&&ù û
]
&&û ü
public'' 

Quaternion'' "
openClipOffsetRotation'' 0
{(( 	
get)) 
{)) 
return)) &
infiniteClipOffsetRotation)) 3
;))3 4
}))5 6
set** 
{** &
infiniteClipOffsetRotation** ,
=**- .
value**/ 4
;**4 5
}**6 7
}++ 	
[11 	
EditorBrowsable11	 
(11  
EditorBrowsableState11 -
.11- .
Never11. 3
)113 4
]114 5
[22 	
Obsolete22	 
(22 
$str	22 †
,
22† °
true
22¢ ¶
)
22¶ ß
]
22ß ®
public33 
Vector333 %
openClipOffsetEulerAngles33 0
{44 	
get55 
{55 
return55 )
infiniteClipOffsetEulerAngles55 6
;556 7
}558 9
set66 
{66 )
infiniteClipOffsetEulerAngles66 /
=660 1
value662 7
;667 8
}669 :
}77 	
[== 	
EditorBrowsable==	 
(==  
EditorBrowsableState== -
.==- .
Never==. 3
)==3 4
]==4 5
[>> 	
Obsolete>>	 
(>> 
$str	>> ù
,
>>ù û
true
>>ü £
)
>>£ §
]
>>§ •
public?? 
TimelineClip?? 
.?? 
ClipExtrapolation?? -$
openClipPreExtrapolation??. F
{@@ 	
getAA 
{AA 
returnAA (
infiniteClipPreExtrapolationAA 5
;AA5 6
}AA7 8
setBB 
{BB (
infiniteClipPreExtrapolationBB .
=BB/ 0
valueBB1 6
;BB6 7
}BB8 9
}CC 	
[II 	
EditorBrowsableII	 
(II  
EditorBrowsableStateII -
.II- .
NeverII. 3
)II3 4
]II4 5
[JJ 	
ObsoleteJJ	 
(JJ 
$str	JJ †
,
JJ† °
true
JJ¢ ¶
)
JJ¶ ß
]
JJß ®
publicKK 
TimelineClipKK 
.KK 
ClipExtrapolationKK -%
openClipPostExtrapolationKK. G
{LL 	
getMM 
{MM 
returnMM )
infiniteClipPostExtrapolationMM 6
;MM6 7
}MM8 9
setNN 
{NN )
infiniteClipPostExtrapolationNN /
=NN0 1
valueNN2 7
;NN7 8
}NN9 :
}OO 	
internalQQ 
overrideQQ 
voidQQ  
OnUpgradeFromVersionQQ 3
(QQ3 4
intQQ4 7

oldVersionQQ8 B
)QQB C
{RR 	
ifSS 
(SS 

oldVersionSS 
<SS 
(SS 
intSS !
)SS! "
VersionsSS" *
.SS* +
RotationAsEulerSS+ :
)SS: ;!
AnimationTrackUpgradeTT %
.TT% &#
ConvertRotationsToEulerTT& =
(TT= >
thisTT> B
)TTB C
;TTC D
ifUU 
(UU 

oldVersionUU 
<UU 
(UU 
intUU !
)UU! "
VersionsUU" *
.UU* +
RootMotionUpgradeUU+ <
)UU< =!
AnimationTrackUpgradeVV %
.VV% &
ConvertRootMotionVV& 7
(VV7 8
thisVV8 <
)VV< =
;VV= >
ifWW 
(WW 

oldVersionWW 
<WW 
(WW 
intWW !
)WW! "
VersionsWW" *
.WW* +#
AnimatedTrackPropertiesWW+ B
)WWB C!
AnimationTrackUpgradeXX %
.XX% & 
ConvertInfiniteTrackXX& :
(XX: ;
thisXX; ?
)XX? @
;XX@ A
}YY 	
static^^ 
class^^ !
AnimationTrackUpgrade^^ *
{__ 	
public`` 
static`` 
void`` #
ConvertRotationsToEuler`` 6
(``6 7
AnimationTrack``7 E
track``F K
)``K L
{aa 
trackbb 
.bb 
m_EulerAnglesbb #
=bb$ %
trackbb& +
.bb+ ,

m_Rotationbb, 6
.bb6 7
eulerAnglesbb7 B
;bbB C
trackcc 
.cc +
m_InfiniteClipOffsetEulerAnglescc 5
=cc6 7
trackcc8 =
.cc= >$
m_OpenClipOffsetRotationcc> V
.ccV W
eulerAnglesccW b
;ccb c
}dd 
publicff 
staticff 
voidff 
ConvertRootMotionff 0
(ff0 1
AnimationTrackff1 ?
trackff@ E
)ffE F
{gg 
trackhh 
.hh 
m_TrackOffsethh #
=hh$ %
TrackOffsethh& 1
.hh1 2
Autohh2 6
;hh6 7
ifkk 
(kk 
!kk 
trackkk 
.kk 
m_ApplyOffsetskk )
)kk) *
{ll 
trackmm 
.mm 

m_Positionmm $
=mm% &
Vector3mm' .
.mm. /
zeromm/ 3
;mm3 4
tracknn 
.nn 
m_EulerAnglesnn '
=nn( )
Vector3nn* 1
.nn1 2
zeronn2 6
;nn6 7
}oo 
}pp 
publicrr 
staticrr 
voidrr  
ConvertInfiniteTrackrr 3
(rr3 4
AnimationTrackrr4 B
trackrrC H
)rrH I
{ss 
tracktt 
.tt 
m_InfiniteCliptt $
=tt% &
tracktt' ,
.tt, -

m_AnimCliptt- 7
;tt7 8
trackuu 
.uu 

m_AnimClipuu  
=uu! "
nulluu# '
;uu' (
}vv 
}ww 	
}yy 
}zz ˆ2
mC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Playables\ActivationControlPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

class %
ActivationControlPlayable *
:+ ,
PlayableBehaviour- >
{		 
public 
enum 
PostPlaybackState %
{ 	
Active 
, 
Inactive 
, 
Revert 
} 	
enum 
InitialState 
{   	
Unset!! 
,!! 
Active"" 
,"" 
Inactive## 
}$$ 	
public)) 

GameObject)) 

gameObject)) $
=))% &
null))' +
;))+ ,
public,, 
PostPlaybackState,,  
postPlayback,,! -
=,,. /
PostPlaybackState,,0 A
.,,A B
Revert,,B H
;,,H I
InitialState-- 
m_InitialState-- #
;--# $
public66 
static66 
ScriptPlayable66 $
<66$ %%
ActivationControlPlayable66% >
>66> ?
Create66@ F
(66F G
PlayableGraph66G T
graph66U Z
,66Z [

GameObject66\ f

gameObject66g q
,66q r&
ActivationControlPlayable	66s å
.
66å ç
PostPlaybackState
66ç û
postPlaybackState
66ü ∞
)
66∞ ±
{77 	
if88 
(88 

gameObject88 
==88 
null88 "
)88" #
return99 
ScriptPlayable99 %
<99% &%
ActivationControlPlayable99& ?
>99? @
.99@ A
Null99A E
;99E F
var;; 
handle;; 
=;; 
ScriptPlayable;; '
<;;' (%
ActivationControlPlayable;;( A
>;;A B
.;;B C
Create;;C I
(;;I J
graph;;J O
);;O P
;;;P Q
var<< 
playable<< 
=<< 
handle<< !
.<<! "
GetBehaviour<<" .
(<<. /
)<</ 0
;<<0 1
playable== 
.== 

gameObject== 
===  !

gameObject==" ,
;==, -
playable>> 
.>> 
postPlayback>> !
=>>" #
postPlaybackState>>$ 5
;>>5 6
return@@ 
handle@@ 
;@@ 
}AA 	
publicHH 
overrideHH 
voidHH 
OnBehaviourPlayHH ,
(HH, -
PlayableHH- 5
playableHH6 >
,HH> ?
	FrameDataHH@ I
infoHHJ N
)HHN O
{II 	
ifJJ 
(JJ 

gameObjectJJ 
==JJ 
nullJJ "
)JJ" #
returnKK 
;KK 

gameObjectMM 
.MM 
	SetActiveMM  
(MM  !
trueMM! %
)MM% &
;MM& '
}NN 	
publicUU 
overrideUU 
voidUU 
OnBehaviourPauseUU -
(UU- .
PlayableUU. 6
playableUU7 ?
,UU? @
	FrameDataUUA J
infoUUK O
)UUO P
{VV 	
ifYY 
(YY 

gameObjectYY 
!=YY 
nullYY "
&&YY# %
infoYY& *
.YY* +
effectivePlayStateYY+ =
==YY> @
	PlayStateYYA J
.YYJ K
PausedYYK Q
)YYQ R
{ZZ 

gameObject[[ 
.[[ 
	SetActive[[ $
([[$ %
false[[% *
)[[* +
;[[+ ,
}\\ 
}]] 	
publicee 
overrideee 
voidee 
ProcessFrameee )
(ee) *
Playableee* 2
playableee3 ;
,ee; <
	FrameDataee= F
infoeeG K
,eeK L
objecteeM S
userDataeeT \
)ee\ ]
{ff 	
ifgg 
(gg 

gameObjectgg 
!=gg 
nullgg "
)gg" #

gameObjecthh 
.hh 
	SetActivehh $
(hh$ %
truehh% )
)hh) *
;hh* +
}ii 	
publicoo 
overrideoo 
voidoo 
OnGraphStartoo )
(oo) *
Playableoo* 2
playableoo3 ;
)oo; <
{pp 	
ifqq 
(qq 

gameObjectqq 
!=qq 
nullqq "
)qq" #
{rr 
ifss 
(ss 
m_InitialStatess "
==ss# %
InitialStatess& 2
.ss2 3
Unsetss3 8
)ss8 9
m_InitialStatett "
=tt# $

gameObjecttt% /
.tt/ 0

activeSelftt0 :
?tt; <
InitialStatett= I
.ttI J
ActivettJ P
:ttQ R
InitialStatettS _
.tt_ `
Inactivett` h
;tth i
}uu 
}vv 	
public|| 
override|| 
void|| 
OnPlayableDestroy|| .
(||. /
Playable||/ 7
playable||8 @
)||@ A
{}} 	
if~~ 
(~~ 

gameObject~~ 
==~~ 
null~~ "
||~~# %
m_InitialState~~& 4
==~~5 7
InitialState~~8 D
.~~D E
Unset~~E J
)~~J K
return 
; 
switch
ÅÅ 
(
ÅÅ 
postPlayback
ÅÅ  
)
ÅÅ  !
{
ÇÇ 
case
ÉÉ 
PostPlaybackState
ÉÉ &
.
ÉÉ& '
Active
ÉÉ' -
:
ÉÉ- .

gameObject
ÑÑ 
.
ÑÑ 
	SetActive
ÑÑ (
(
ÑÑ( )
true
ÑÑ) -
)
ÑÑ- .
;
ÑÑ. /
break
ÖÖ 
;
ÖÖ 
case
áá 
PostPlaybackState
áá &
.
áá& '
Inactive
áá' /
:
áá/ 0

gameObject
àà 
.
àà 
	SetActive
àà (
(
àà( )
false
àà) .
)
àà. /
;
àà/ 0
break
ââ 
;
ââ 
case
ãã 
PostPlaybackState
ãã &
.
ãã& '
Revert
ãã' -
:
ãã- .

gameObject
åå 
.
åå 
	SetActive
åå (
(
åå( )
m_InitialState
åå) 7
==
åå8 :
InitialState
åå; G
.
ååG H
Active
ååH N
)
ååN O
;
ååO P
break
çç 
;
çç 
}
éé 
}
èè 	
}
êê 
}ëë ›
fC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Events\Signals\SignalEmitter.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
[ 
Serializable 
] 
[ 
CustomStyle 
( 
$str  
)  !
]! "
[ 
ExcludeFromPreset 
] 
[ 
TimelineHelpURL 
( 
typeof 
( 
SignalEmitter )
)) *
)* +
]+ ,
public 

class 
SignalEmitter 
:  
Marker! '
,' (
INotification) 6
,6 7'
INotificationOptionProvider8 S
{ 
[ 	
SerializeField	 
] 
bool 
m_Retroactive +
;+ ,
[ 	
SerializeField	 
] 
bool 

m_EmitOnce (
;( )
[ 	
SerializeField	 
] 
SignalAsset $
m_Asset% ,
;, -
public 
bool 
retroactive 
{ 	
get 
{ 
return 
m_Retroactive &
;& '
}( )
set 
{ 
m_Retroactive 
=  !
value" '
;' (
}) *
} 	
public$$ 
bool$$ 
emitOnce$$ 
{%% 	
get&& 
{&& 
return&& 

m_EmitOnce&& #
;&&# $
}&&% &
set'' 
{'' 

m_EmitOnce'' 
='' 
value'' $
;''$ %
}''& '
}(( 	
public-- 
SignalAsset-- 
asset--  
{.. 	
get// 
{// 
return// 
m_Asset//  
;//  !
}//" #
set00 
{00 
m_Asset00 
=00 
value00 !
;00! "
}00# $
}11 	
PropertyName33 
INotification33 "
.33" #
id33# %
{44 	
get55 
{66 
if77 
(77 
m_Asset77 
!=77 
null77 #
)77# $
{88 
return99 
new99 
PropertyName99 +
(99+ ,
m_Asset99, 3
.993 4
name994 8
)998 9
;999 :
}:: 
return;; 
new;; 
PropertyName;; '
(;;' (
string;;( .
.;;. /
Empty;;/ 4
);;4 5
;;;5 6
}<< 
}== 	
NotificationFlags?? '
INotificationOptionProvider?? 5
.??5 6
flags??6 ;
{@@ 	
getAA 
{BB 
returnCC 
(CC 
retroactiveCC #
?CC$ %
NotificationFlagsCC& 7
.CC7 8
RetroactiveCC8 C
:CCD E
defaultCCF M
(CCM N
NotificationFlagsCCN _
)CC_ `
)CC` a
|CCb c
(DD 
emitOnceDD 
?DD 
NotificationFlagsDD  1
.DD1 2
TriggerOnceDD2 =
:DD> ?
defaultDD@ G
(DDG H
NotificationFlagsDDH Y
)DDY Z
)DDZ [
|DD\ ]
NotificationFlagsEE %
.EE% &
TriggerInEditModeEE& 7
;EE7 8
}FF 
}GG 	
}HH 
}II ¡
gC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Playables\TimeControlPlayable.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
public 

class 
TimeControlPlayable $
:% &
PlayableBehaviour' 8
{		 
ITimeControl

 
m_timeControl

 "
;

" #
bool 
	m_started 
; 
public 
static 
ScriptPlayable $
<$ %
TimeControlPlayable% 8
>8 9
Create: @
(@ A
PlayableGraphA N
graphO T
,T U
ITimeControlV b
timeControlc n
)n o
{ 	
if 
( 
timeControl 
== 
null #
)# $
return 
ScriptPlayable %
<% &
TimeControlPlayable& 9
>9 :
.: ;
Null; ?
;? @
var 
handle 
= 
ScriptPlayable '
<' (
TimeControlPlayable( ;
>; <
.< =
Create= C
(C D
graphD I
)I J
;J K
handle 
. 
GetBehaviour 
(  
)  !
.! "

Initialize" ,
(, -
timeControl- 8
)8 9
;9 :
return 
handle 
; 
} 	
public"" 
void"" 

Initialize"" 
("" 
ITimeControl"" +
timeControl"", 7
)""7 8
{## 	
m_timeControl$$ 
=$$ 
timeControl$$ '
;$$' (
}%% 	
public,, 
override,, 
void,, 
PrepareFrame,, )
(,,) *
Playable,,* 2
playable,,3 ;
,,,; <
	FrameData,,= F
info,,G K
),,K L
{-- 	
Debug.. 
... 
Assert.. 
(.. 
	m_started.. "
,.." #
$str..$ q
)..q r
;..r s
if// 
(// 
m_timeControl// 
!=//  
null//! %
)//% &
m_timeControl00 
.00 
SetTime00 %
(00% &
playable00& .
.00. /
GetTime00/ 6
(006 7
)007 8
)008 9
;009 :
}11 	
public88 
override88 
void88 
OnBehaviourPlay88 ,
(88, -
Playable88- 5
playable886 >
,88> ?
	FrameData88@ I
info88J N
)88N O
{99 	
if:: 
(:: 
m_timeControl:: 
==::  
null::! %
)::% &
return;; 
;;; 
if== 
(== 
!== 
	m_started== 
)== 
{>> 
m_timeControl?? 
.?? 
OnControlTimeStart?? 0
(??0 1
)??1 2
;??2 3
	m_started@@ 
=@@ 
true@@  
;@@  !
}AA 
}BB 	
publicII 
overrideII 
voidII 
OnBehaviourPauseII -
(II- .
PlayableII. 6
playableII7 ?
,II? @
	FrameDataIIA J
infoIIK O
)IIO P
{JJ 	
ifKK 
(KK 
m_timeControlKK 
==KK  
nullKK! %
)KK% &
returnLL 
;LL 
ifNN 
(NN 
	m_startedNN 
)NN 
{OO 
m_timeControlPP 
.PP 
OnControlTimeStopPP /
(PP/ 0
)PP0 1
;PP1 2
	m_startedQQ 
=QQ 
falseQQ !
;QQ! "
}RR 
}SS 	
}TT 
}UU ÊB
aC:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\Extrapolation.cs
	namespace 	
UnityEngine
 
. 
Timeline 
{ 
static 

class 
Extrapolation 
{ 
internal 
static 
readonly  
double! '!
kMinExtrapolationTime( =
=> ?
TimeUtility@ K
.K L
kTimeEpsilonL X
*Y Z
$num[ _
;_ `
internal 
static 
void '
CalculateExtrapolationTimes 8
(8 9
this9 =

TrackAsset> H
assetI N
)N O
{ 	
TimelineClip 
[ 
] 
clips  
=! "
asset# (
.( )
clips) .
;. /
if 
( 
clips 
== 
null 
||  
clips! &
.& '
Length' -
==. 0
$num1 2
)2 3
return 
; 
if 
( 
! 
clips 
[ 
$num 
] 
. !
SupportsExtrapolation /
(/ 0
)0 1
)1 2
return 
; 
var 
orderedClips 
=  
SortClipsByStartTime 3
(3 4
clips4 9
)9 :
;: ;
if 
( 
orderedClips 
. 
Length #
>$ %
$num& '
)' (
{ 
for 
( 
int 
i 
= 
$num 
; 
i  !
<" #
orderedClips$ 0
.0 1
Length1 7
;7 8
i9 :
++: <
)< =
{ 
double 
minTime "
=# $
double% +
.+ ,
PositiveInfinity, <
;< =
for   
(   
int   
j   
=    
$num  ! "
;  " #
j  $ %
<  & '
orderedClips  ( 4
.  4 5
Length  5 ;
;  ; <
j  = >
++  > @
)  @ A
{!! 
if"" 
("" 
i"" 
==""  
j""! "
)""" #
continue## $
;##$ %
double%% 
	deltaTime%% (
=%%) *
orderedClips%%+ 7
[%%7 8
j%%8 9
]%%9 :
.%%: ;
start%%; @
-%%A B
orderedClips%%C O
[%%O P
i%%P Q
]%%Q R
.%%R S
end%%S V
;%%V W
if&& 
(&& 
	deltaTime&& %
>=&&& (
-&&) *
TimeUtility&&* 5
.&&5 6
kTimeEpsilon&&6 B
&&&&C E
	deltaTime&&F O
<&&P Q
minTime&&R Y
)&&Y Z
minTime'' #
=''$ %
Math''& *
.''* +
Min''+ .
(''. /
minTime''/ 6
,''6 7
	deltaTime''8 A
)''A B
;''B C
if)) 
()) 
orderedClips)) (
[))( )
j))) *
]))* +
.))+ ,
start)), 1
<=))2 4
orderedClips))5 A
[))A B
i))B C
]))C D
.))D E
end))E H
&&))I K
orderedClips))L X
[))X Y
j))Y Z
]))Z [
.))[ \
end))\ _
>))` a
orderedClips))b n
[))n o
i))o p
]))p q
.))q r
end))r u
)))u v
minTime** #
=**$ %
$num**& '
;**' (
}++ 
minTime,, 
=,, 
minTime,, %
<=,,& (!
kMinExtrapolationTime,,) >
?,,? @
$num,,A B
:,,C D
minTime,,E L
;,,L M
orderedClips--  
[--  !
i--! "
]--" #
.--# $$
SetPostExtrapolationTime--$ <
(--< =
minTime--= D
)--D E
;--E F
}.. 
orderedClips11 
[11 
$num11 
]11 
.11  #
SetPreExtrapolationTime11  7
(117 8
Math118 <
.11< =
Max11= @
(11@ A
$num11A B
,11B C
orderedClips11D P
[11P Q
$num11Q R
]11R S
.11S T
start11T Y
)11Y Z
)11Z [
;11[ \
for22 
(22 
int22 
i22 
=22 
$num22 
;22 
i22  !
<22" #
orderedClips22$ 0
.220 1
Length221 7
;227 8
i229 :
++22: <
)22< =
{33 
double44 
preTime44 "
=44# $
$num44% &
;44& '
int55 
prevClip55  
=55! "
-55# $
$num55$ %
;55% &
for66 
(66 
int66 
j66 
=66  
$num66! "
;66" #
j66$ %
<66& '
i66( )
;66) *
j66+ ,
++66, .
)66. /
{77 
if99 
(99 
orderedClips99 (
[99( )
j99) *
]99* +
.99+ ,
end99, /
>990 1
orderedClips992 >
[99> ?
i99? @
]99@ A
.99A B
start99B G
)99G H
{:: 
prevClip;; $
=;;% &
-;;' (
$num;;( )
;;;) *
preTime<< #
=<<$ %
$num<<& '
;<<' (
break== !
;==! "
}>> 
double@@ 
gap@@ "
=@@# $
orderedClips@@% 1
[@@1 2
i@@2 3
]@@3 4
.@@4 5
start@@5 :
-@@; <
orderedClips@@= I
[@@I J
j@@J K
]@@K L
.@@L M
end@@M P
;@@P Q
ifAA 
(AA 
prevClipAA $
==AA% '
-AA( )
$numAA) *
||AA+ -
gapAA. 1
<AA2 3
preTimeAA4 ;
)AA; <
{BB 
preTimeCC #
=CC$ %
gapCC& )
;CC) *
prevClipDD $
=DD% &
jDD' (
;DD( )
}EE 
}FF 
ifHH 
(HH 
prevClipHH  
>=HH! #
$numHH$ %
)HH% &
{II 
ifJJ 
(JJ 
orderedClipsJJ (
[JJ( )
prevClipJJ) 1
]JJ1 2
.JJ2 3!
postExtrapolationModeJJ3 H
!=JJI K
TimelineClipJJL X
.JJX Y
ClipExtrapolationJJY j
.JJj k
NoneJJk o
)JJo p
preTimeKK #
=KK$ %
$numKK& '
;KK' (
}LL 
preTimeNN 
=NN 
preTimeNN %
<=NN& (!
kMinExtrapolationTimeNN) >
?NN? @
$numNNA B
:NNC D
preTimeNNE L
;NNL M
orderedClipsOO  
[OO  !
iOO! "
]OO" #
.OO# $#
SetPreExtrapolationTimeOO$ ;
(OO; <
preTimeOO< C
)OOC D
;OOD E
}PP 
}QQ 
}RR 	
staticTT 
TimelineClipTT 
[TT 
]TT  
SortClipsByStartTimeTT 2
(TT2 3
TimelineClipTT3 ?
[TT? @
]TT@ A
clipsTTB G
)TTG H
{UU 	
varVV 
orderedClipsVV 
=VV 
newVV "
TimelineClipVV# /
[VV/ 0
clipsVV0 5
.VV5 6
LengthVV6 <
]VV< =
;VV= >
ArrayWW 
.WW 
CopyWW 
(WW 
clipsWW 
,WW 
orderedClipsWW *
,WW* +
clipsWW, 1
.WW1 2
LengthWW2 8
)WW8 9
;WW9 :
ArrayXX 
.XX 
SortXX 
(XX 
orderedClipsXX #
,XX# $
(XX% &
clip1XX& +
,XX+ ,
clip2XX- 2
)XX2 3
=>XX4 6
clip1XX7 <
.XX< =
startXX= B
.XXB C
	CompareToXXC L
(XXL M
clip2XXM R
.XXR S
startXXS X
)XXX Y
)XXY Z
;XXZ [
returnYY 
orderedClipsYY 
;YY  
}ZZ 	
}[[ 
}\\ 