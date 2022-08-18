�
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
} �
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
]C:\code\ispclone\Library\PackageCache\com.unity.timeline@1.6.4\Runtime\Utilities\FrameRate.cs�
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
}99 ��
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
go	KK~ �
,
KK� �
bool
KK� �
autoRebalance
KK� �
,
KK� �
bool
KK� �
createOutputs
KK� �
)
KK� �
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
cc� �
,
cc� �
bool
cc� �
createOutputs
cc� �
)
cc� �
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

GameObject	}}v �
go
}}� �
,
}}� �
bool
}}� �
createOutputs
}}� �
)
}}� �
{~~ 	
foreach 
( 
var 
track 
in !
tracks" (
)( )
{
�� 
if
�� 
(
�� 
!
�� 
track
�� 
.
�� 
IsCompilable
�� '
(
��' (
)
��( )
)
��) *
continue
�� 
;
�� 
if
�� 
(
�� 
!
�� 
m_PlayableCache
�� $
.
��$ %
ContainsKey
��% 0
(
��0 1
track
��1 6
)
��6 7
)
��7 8
{
�� 
track
�� 
.
�� 
	SortClips
�� #
(
��# $
)
��$ %
;
��% &!
CreateTrackPlayable
�� '
(
��' (
graph
��( -
,
��- .
timelinePlayable
��/ ?
,
��? @
track
��A F
,
��F G
go
��H J
,
��J K
createOutputs
��L Y
)
��Y Z
;
��Z [
}
�� 
}
�� 
}
�� 	
void
�� 
CreateTrackOutput
�� 
(
�� 
PlayableGraph
�� ,
graph
��- 2
,
��2 3

TrackAsset
��4 >
track
��? D
,
��D E

GameObject
��F P
go
��Q S
,
��S T
Playable
��U ]
playable
��^ f
,
��f g
int
��h k
port
��l p
)
��p q
{
�� 	
if
�� 
(
�� 
track
�� 
.
�� 

isSubTrack
��  
)
��  !
return
�� 
;
�� 
var
�� 
bindings
�� 
=
�� 
track
��  
.
��  !
outputs
��! (
;
��( )
foreach
�� 
(
�� 
var
�� 
binding
��  
in
��! #
bindings
��$ ,
)
��, -
{
�� 
var
�� 
playableOutput
�� "
=
��# $
binding
��% ,
.
��, -
CreateOutput
��- 9
(
��9 :
graph
��: ?
)
��? @
;
��@ A
playableOutput
�� 
.
��  
SetReferenceObject
�� 1
(
��1 2
binding
��2 9
.
��9 :
sourceObject
��: F
)
��F G
;
��G H
playableOutput
�� 
.
�� 
SetSourcePlayable
�� 0
(
��0 1
playable
��1 9
,
��9 :
port
��; ?
)
��? @
;
��@ A
playableOutput
�� 
.
�� 
	SetWeight
�� (
(
��( )
$num
��) -
)
��- .
;
��. /
if
�� 
(
�� 
track
�� 
as
�� 
AnimationTrack
�� +
!=
��, .
null
��/ 3
)
��3 4
{
�� 7
)EvaluateWeightsForAnimationPlayableOutput
�� =
(
��= >
track
��> C
,
��C D
(
��E F%
AnimationPlayableOutput
��F ]
)
��] ^
playableOutput
��^ l
)
��l m
;
��m n
if
�� 
(
�� 
!
�� 
Application
�� $
.
��$ %
	isPlaying
��% .
)
��. /4
&EvaluateAnimationPreviewUpdateCallback
�� >
(
��> ?
track
��? D
,
��D E
(
��F G%
AnimationPlayableOutput
��G ^
)
��^ _
playableOutput
��_ m
)
��m n
;
��n o
}
�� 
if
�� 
(
�� 
playableOutput
�� "
.
��" #$
IsPlayableOutputOfType
��# 9
<
��9 :!
AudioPlayableOutput
��: M
>
��M N
(
��N O
)
��O P
)
��P Q
(
�� 
(
�� !
AudioPlayableOutput
�� )
)
��) *
playableOutput
��* 8
)
��8 9
.
��9 :
SetEvaluateOnSeek
��: K
(
��K L
!
��L M 
muteAudioScrubbing
��M _
)
��_ `
;
��` a
if
�� 
(
�� 
track
�� 
.
�� 
timelineAsset
�� '
.
��' (
markerTrack
��( 3
==
��4 6
track
��7 <
)
��< =
{
�� 
var
�� 
director
��  
=
��! "
go
��# %
.
��% &
GetComponent
��& 2
<
��2 3
PlayableDirector
��3 C
>
��C D
(
��D E
)
��E F
;
��F G
playableOutput
�� "
.
��" #
SetUserData
��# .
(
��. /
director
��/ 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
��  
c
��! "
in
��# %
go
��& (
.
��( )
GetComponents
��) 6
<
��6 7#
INotificationReceiver
��7 L
>
��L M
(
��M N
)
��N O
)
��O P
{
�� 
playableOutput
�� &
.
��& '%
AddNotificationReceiver
��' >
(
��> ?
c
��? @
)
��@ A
;
��A B
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� 7
)EvaluateWeightsForAnimationPlayableOutput
�� 6
(
��6 7

TrackAsset
��7 A
track
��B G
,
��G H%
AnimationPlayableOutput
��I `

animOutput
��a k
)
��k l
{
�� 	!
m_EvaluateCallbacks
�� 
.
��  
Add
��  #
(
��# $
new
��$ ',
AnimationOutputWeightProcessor
��( F
(
��F G

animOutput
��G Q
)
��Q R
)
��R S
;
��S T
}
�� 	
void
�� 4
&EvaluateAnimationPreviewUpdateCallback
�� 3
(
��3 4

TrackAsset
��4 >
track
��? D
,
��D E%
AnimationPlayableOutput
��F ]

animOutput
��^ h
)
��h i
{
�� 	!
m_EvaluateCallbacks
�� 
.
��  
Add
��  #
(
��# $
new
��$ ',
AnimationPreviewUpdateCallback
��( F
(
��F G

animOutput
��G Q
)
��Q R
)
��R S
;
��S T
}
�� 	
Playable
�� !
CreateTrackPlayable
�� $
(
��$ %
PlayableGraph
��% 2
graph
��3 8
,
��8 9
Playable
��: B
timelinePlayable
��C S
,
��S T

TrackAsset
��U _
track
��` e
,
��e f

GameObject
��g q
go
��r t
,
��t u
bool
��v z
createOutputs��{ �
)��� �
{
�� 	
if
�� 
(
�� 
!
�� 
track
�� 
.
�� 
IsCompilable
�� #
(
��# $
)
��$ %
)
��% &
return
�� 
timelinePlayable
�� '
;
��' (
Playable
�� 
playable
�� 
;
�� 
if
�� 
(
�� 
m_PlayableCache
�� 
.
��  
TryGetValue
��  +
(
��+ ,
track
��, 1
,
��1 2
out
��3 6
playable
��7 ?
)
��? @
)
��@ A
return
�� 
playable
�� 
;
��  
if
�� 
(
�� 
track
�� 
.
�� 
name
�� 
==
�� 
$str
�� $
)
��$ %
return
�� 
timelinePlayable
�� '
;
��' (

TrackAsset
�� 
parentActor
�� "
=
��# $
track
��% *
.
��* +
parent
��+ 1
as
��2 4

TrackAsset
��5 ?
;
��? @
var
�� 
parentPlayable
�� 
=
��  
parentActor
��! ,
!=
��- /
null
��0 4
?
��5 6!
CreateTrackPlayable
��7 J
(
��J K
graph
��K P
,
��P Q
timelinePlayable
��R b
,
��b c
parentActor
��d o
,
��o p
go
��q s
,
��s t
createOutputs��u �
)��� �
:��� � 
timelinePlayable��� �
;��� �
var
�� 
actorPlayable
�� 
=
�� 
track
��  %
.
��% &!
CreatePlayableGraph
��& 9
(
��9 :
graph
��: ?
,
��? @
go
��A C
,
��C D
m_IntervalTree
��E S
,
��S T
timelinePlayable
��U e
)
��e f
;
��f g
bool
�� 
	connected
�� 
=
�� 
false
�� "
;
��" #
if
�� 
(
�� 
!
�� 
actorPlayable
�� 
.
�� 
IsValid
�� &
(
��& '
)
��' (
)
��( )
{
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
track
��4 9
.
��9 :
name
��: >
+
��? @
$str
��A D
+
��E F
track
��G L
.
��L M
GetType
��M T
(
��T U
)
��U V
+
��W X
$str
��Y ~
)
��~ 
;�� �
}
�� 
if
�� 
(
�� 
parentPlayable
�� 
.
�� 
IsValid
�� &
(
��& '
)
��' (
&&
��) +
actorPlayable
��, 9
.
��9 :
IsValid
��: A
(
��A B
)
��B C
)
��C D
{
�� 
int
�� 
port
�� 
=
�� 
parentPlayable
�� )
.
��) *
GetInputCount
��* 7
(
��7 8
)
��8 9
;
��9 :
parentPlayable
�� 
.
�� 
SetInputCount
�� ,
(
��, -
port
��- 1
+
��2 3
$num
��4 5
)
��5 6
;
��6 7
	connected
�� 
=
�� 
graph
�� !
.
��! "
Connect
��" )
(
��) *
actorPlayable
��* 7
,
��7 8
$num
��9 :
,
��: ;
parentPlayable
��< J
,
��J K
port
��L P
)
��P Q
;
��Q R
parentPlayable
�� 
.
�� 
SetInputWeight
�� -
(
��- .
port
��. 2
,
��2 3
$num
��4 8
)
��8 9
;
��9 :
}
�� 
if
�� 
(
�� 
createOutputs
�� 
&&
��  
	connected
��! *
)
��* +
{
�� 
CreateTrackOutput
�� !
(
��! "
graph
��" '
,
��' (
track
��) .
,
��. /
go
��0 2
,
��2 3
parentPlayable
��4 B
,
��B C
parentPlayable
��D R
.
��R S
GetInputCount
��S `
(
��` a
)
��a b
-
��c d
$num
��e f
)
��f g
;
��g h
}
�� 

CacheTrack
�� 
(
�� 
track
�� 
,
�� 
actorPlayable
�� +
,
��+ ,
	connected
��- 6
?
��7 8
(
��9 :
parentPlayable
��: H
.
��H I
GetInputCount
��I V
(
��V W
)
��W X
-
��Y Z
$num
��[ \
)
��\ ]
:
��^ _
-
��` a
$num
��a b
,
��b c
parentPlayable
��d r
)
��r s
;
��s t
return
�� 
actorPlayable
��  
;
��  !
}
�� 	
public
�� 
override
�� 
void
�� 
PrepareFrame
�� )
(
��) *
Playable
��* 2
playable
��3 ;
,
��; <
	FrameData
��= F
info
��G K
)
��K L
{
�� 	
if
�� 
(
�� 
m_Rebalancer
�� 
!=
�� 
null
��  $
)
��$ %
m_Rebalancer
�� 
.
�� 
	Rebalance
�� &
(
��& '
)
��' (
;
��( )
if
�� 
(
�� 
playableLooped
�� 
!=
�� !
null
��" &
&&
��' )
info
��* .
.
��. /

timeLooped
��/ 9
)
��9 :
playableLooped
�� 
.
�� 
Invoke
�� %
(
��% &
playable
��& .
)
��. /
;
��/ 0
Evaluate
�� 
(
�� 
playable
�� 
,
�� 
info
�� #
)
��# $
;
��$ %
}
�� 	
private
�� 
void
�� 
Evaluate
�� 
(
�� 
Playable
�� &
playable
��' /
,
��/ 0
	FrameData
��1 :
	frameData
��; D
)
��D E
{
�� 	
if
�� 
(
�� 
m_IntervalTree
�� 
==
�� !
null
��" &
)
��& '
return
�� 
;
�� 
double
�� 
	localTime
�� 
=
�� 
playable
�� '
.
��' (
GetTime
��( /
(
��/ 0
)
��0 1
;
��1 2
m_ActiveBit
�� 
=
�� 
m_ActiveBit
�� %
==
��& (
$num
��) *
?
��+ ,
$num
��- .
:
��/ 0
$num
��1 2
;
��2 3(
m_CurrentListOfActiveClips
�� &
.
��& '
Clear
��' ,
(
��, -
)
��- .
;
��. /
m_IntervalTree
�� 
.
�� 
IntersectsWith
�� )
(
��) *
DiscreteTime
��* 6
.
��6 7
GetNearestTick
��7 E
(
��E F
	localTime
��F O
)
��O P
,
��P Q(
m_CurrentListOfActiveClips
��R l
)
��l m
;
��m n
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� (
m_CurrentListOfActiveClips
�� 8
)
��8 9
{
�� 
c
�� 
.
�� 
intervalBit
�� 
=
�� 
m_ActiveBit
��  +
;
��+ ,
}
�� 
var
�� 
timelineEnd
�� 
=
�� 
(
�� 
double
�� %
)
��% &
new
��& )
DiscreteTime
��* 6
(
��6 7
playable
��7 ?
.
��? @
GetDuration
��@ K
(
��K L
)
��L M
)
��M N
;
��N O
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� 
m_ActiveClips
�� +
)
��+ ,
{
�� 
if
�� 
(
�� 
c
�� 
.
�� 
intervalBit
�� !
!=
��" $
m_ActiveBit
��% 0
)
��0 1
c
�� 
.
�� 
	DisableAt
�� 
(
��  
	localTime
��  )
,
��) *
timelineEnd
��+ 6
,
��6 7
	frameData
��8 A
)
��A B
;
��B C
}
�� 
m_ActiveClips
�� 
.
�� 
Clear
�� 
(
��  
)
��  !
;
��! "
for
�� 
(
�� 
var
�� 
a
�� 
=
�� 
$num
�� 
;
�� 
a
�� 
<
�� (
m_CurrentListOfActiveClips
��  :
.
��: ;
Count
��; @
;
��@ A
a
��B C
++
��C E
)
��E F
{
�� (
m_CurrentListOfActiveClips
�� *
[
��* +
a
��+ ,
]
��, -
.
��- .

EvaluateAt
��. 8
(
��8 9
	localTime
��9 B
,
��B C
	frameData
��D M
)
��M N
;
��N O
m_ActiveClips
�� 
.
�� 
Add
�� !
(
��! "(
m_CurrentListOfActiveClips
��" <
[
��< =
a
��= >
]
��> ?
)
��? @
;
��@ A
}
�� 
int
�� 
count
�� 
=
�� !
m_EvaluateCallbacks
�� +
.
��+ ,
Count
��, 1
;
��1 2
for
�� 
(
�� 
int
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
�� 
count
��  %
;
��% &
i
��' (
++
��( *
)
��* +
{
�� !
m_EvaluateCallbacks
�� #
[
��# $
i
��$ %
]
��% &
.
��& '
Evaluate
��' /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
private
�� 
void
�� 

CacheTrack
�� 
(
��  

TrackAsset
��  *
track
��+ 0
,
��0 1
Playable
��2 :
playable
��; C
,
��C D
int
��E H
port
��I M
,
��M N
Playable
��O W
parent
��X ^
)
��^ _
{
�� 	
m_PlayableCache
�� 
[
�� 
track
�� !
]
��! "
=
��# $
playable
��% -
;
��- .
}
�� 	
static
�� 
void
�� #
ForAOTCompilationOnly
�� )
(
��) *
)
��* +
{
�� 	
new
�� 
List
�� 
<
�� 
IntervalTree
�� !
<
��! "
RuntimeElement
��" 0
>
��0 1
.
��1 2
Entry
��2 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
}
�� 	
}
�� 
}�� �
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
} �%
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
}ZZ ��
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
+	!! �
parent
!!� �
.
!!� �
GetType
!!� �
(
!!� �
)
!!� �
.
!!� �
Name
!!� �
)
!!� �
;
!!� �
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
�� 
TimelineUndo
��  
.
��  !
PushDestroyUndo
��! 0
(
��0 1
this
��1 5
,
��5 6
clip
��7 ;
.
��; <
GetParentTrack
��< J
(
��J K
)
��K L
,
��L M
clip
��N R
.
��R S
asset
��S X
)
��X Y
;
��Y Z
}
�� 
}
�� 
var
�� 
clipParentTrack
�� 
=
��  !
clip
��" &
.
��& '
GetParentTrack
��' 5
(
��5 6
)
��6 7
;
��7 8
clipParentTrack
�� 
.
�� 

RemoveClip
�� &
(
��& '
clip
��' +
)
��+ ,
;
��, -
clipParentTrack
�� 
.
�� )
CalculateExtrapolationTimes
�� 7
(
��7 8
)
��8 9
;
��9 :
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
DeleteTrack
�� 
(
��  

TrackAsset
��  *
track
��+ 0
)
��0 1
{
�� 	
if
�� 
(
�� 
track
�� 
.
�� 
timelineAsset
�� #
!=
��$ &
this
��' +
)
��+ ,
return
�� 
false
�� 
;
�� 
TimelineUndo
�� 
.
�� 
PushUndo
�� !
(
��! "
track
��" '
,
��' (
$str
��) 7
)
��7 8
;
��8 9
TimelineUndo
�� 
.
�� 
PushUndo
�� !
(
��! "
this
��" &
,
��& '
$str
��( 6
)
��6 7
;
��7 8

TrackAsset
�� 
parent
�� 
=
�� 
track
��  %
.
��% &
parent
��& ,
as
��- /

TrackAsset
��0 :
;
��: ;
if
�� 
(
�� 
parent
�� 
!=
�� 
null
�� 
)
�� 
TimelineUndo
�� 
.
�� 
PushUndo
�� %
(
��% &
parent
��& ,
,
��, -
$str
��. <
)
��< =
;
��= >
var
�� 
children
�� 
=
�� 
track
��  
.
��  !
GetChildTracks
��! /
(
��/ 0
)
��0 1
;
��1 2
foreach
�� 
(
�� 
var
�� 
child
�� 
in
�� !
children
��" *
)
��* +
{
�� 
DeleteTrack
�� 
(
�� 
child
�� !
)
��! "
;
��" #
}
�� %
DeleteRecordedAnimation
�� #
(
��# $
track
��$ )
)
��) *
;
��* +
var
�� 
clipsToDelete
�� 
=
�� 
new
��  #
List
��$ (
<
��( )
TimelineClip
��) 5
>
��5 6
(
��6 7
track
��7 <
.
��< =
clips
��= B
)
��B C
;
��C D
foreach
�� 
(
�� 
var
�� 
clip
�� 
in
��  
clipsToDelete
��! .
)
��. /
{
�� 

DeleteClip
�� 
(
�� 
clip
�� 
)
��  
;
��  !
}
�� 
RemoveTrack
�� 
(
�� 
track
�� 
)
�� 
;
�� 
TimelineUndo
�� 
.
�� 
PushDestroyUndo
�� (
(
��( )
this
��) -
,
��- .
this
��/ 3
,
��3 4
track
��5 :
)
��: ;
;
��; <
return
�� 
true
�� 
;
�� 
}
�� 	
internal
�� 
void
�� !
MoveLastTrackBefore
�� )
(
��) *

TrackAsset
��* 4
asset
��5 :
)
��: ;
{
�� 	
if
�� 
(
�� 
m_Tracks
�� 
==
�� 
null
��  
||
��! #
m_Tracks
��$ ,
.
��, -
Count
��- 2
<
��3 4
$num
��5 6
||
��7 9
asset
��: ?
==
��@ B
null
��C G
)
��G H
return
�� 
;
�� 
var
�� 
	lastTrack
�� 
=
�� 
m_Tracks
�� $
[
��$ %
m_Tracks
��% -
.
��- .
Count
��. 3
-
��4 5
$num
��6 7
]
��7 8
;
��8 9
if
�� 
(
�� 
	lastTrack
�� 
==
�� 
asset
�� "
)
��" #
return
�� 
;
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
m_Tracks
��  (
.
��( )
Count
��) .
-
��/ 0
$num
��1 2
;
��2 3
i
��4 5
++
��5 7
)
��7 8
{
�� 
if
�� 
(
�� 
m_Tracks
�� 
[
�� 
i
�� 
]
�� 
==
��  "
asset
��# (
)
��( )
{
�� 
for
�� 
(
�� 
int
�� 
j
�� 
=
��  
m_Tracks
��! )
.
��) *
Count
��* /
-
��0 1
$num
��2 3
;
��3 4
j
��5 6
>
��7 8
i
��9 :
;
��: ;
j
��< =
--
��= ?
)
��? @
m_Tracks
��  
[
��  !
j
��! "
]
��" #
=
��$ %
m_Tracks
��& .
[
��. /
j
��/ 0
-
��1 2
$num
��3 4
]
��4 5
;
��5 6
m_Tracks
�� 
[
�� 
i
�� 
]
�� 
=
��  !
	lastTrack
��" +
;
��+ ,

Invalidate
�� 
(
�� 
)
��  
;
��  !
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	

TrackAsset
�� 
AllocateTrack
��  
(
��  !

TrackAsset
��! +
trackAssetParent
��, <
,
��< =
string
��> D
	trackName
��E N
,
��N O
Type
��P T
	trackType
��U ^
)
��^ _
{
�� 	
if
�� 
(
�� 
trackAssetParent
��  
!=
��! #
null
��$ (
&&
��) +
trackAssetParent
��, <
.
��< =
timelineAsset
��= J
!=
��K M
this
��N R
)
��R S
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 k
)
��k l
;
��l m
if
�� 
(
�� 
!
�� 
typeof
�� 
(
�� 

TrackAsset
�� "
)
��" #
.
��# $
IsAssignableFrom
��$ 4
(
��4 5
	trackType
��5 >
)
��> ?
)
��? @
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 Y
)
��Y Z
;
��Z [
var
�� 
asset
�� 
=
�� 
(
�� 

TrackAsset
�� #
)
��# $
CreateInstance
��$ 2
(
��2 3
	trackType
��3 <
)
��< =
;
��= >
asset
�� 
.
�� 
name
�� 
=
�� 
	trackName
�� "
;
��" #
const
�� 
string
�� !
createTrackUndoName
�� ,
=
��- .
$str
��/ =
;
��= >
PlayableAsset
�� 
parent
��  
=
��! "
trackAssetParent
��# 3
!=
��4 6
null
��7 ;
?
��< =
trackAssetParent
��> N
as
��O Q
PlayableAsset
��R _
:
��` a
this
��b f
;
��f g%
TimelineCreateUtilities
�� #
.
��# $!
SaveAssetIntoObject
��$ 7
(
��7 8
asset
��8 =
,
��= >
parent
��? E
)
��E F
;
��F G
TimelineUndo
�� 
.
�� '
RegisterCreatedObjectUndo
�� 2
(
��2 3
asset
��3 8
,
��8 9!
createTrackUndoName
��: M
)
��M N
;
��N O
TimelineUndo
�� 
.
�� 
PushUndo
�� !
(
��! "
parent
��" (
,
��( )!
createTrackUndoName
��* =
)
��= >
;
��> ?
if
�� 
(
�� 
trackAssetParent
��  
!=
��! #
null
��$ (
)
��( )
trackAssetParent
��  
.
��  !
AddChild
��! )
(
��) *
asset
��* /
)
��/ 0
;
��0 1
else
�� 
AddTrackInternal
��  
(
��  !
asset
��! &
)
��& '
;
��' (
return
�� 
asset
�� 
;
�� 
}
�� 	
void
�� %
DeleteRecordedAnimation
�� $
(
��$ %

TrackAsset
��% /
track
��0 5
)
��5 6
{
�� 	
var
�� 
	animTrack
�� 
=
�� 
track
�� !
as
��" $
AnimationTrack
��% 3
;
��3 4
if
�� 
(
�� 
	animTrack
�� 
!=
�� 
null
�� !
&&
��" $
	animTrack
��% .
.
��. /
infiniteClip
��/ ;
!=
��< >
null
��? C
)
��C D
TimelineUndo
�� 
.
�� 
PushDestroyUndo
�� ,
(
��, -
this
��- 1
,
��1 2
track
��3 8
,
��8 9
	animTrack
��: C
.
��C D
infiniteClip
��D P
)
��P Q
;
��Q R
if
�� 
(
�� 
track
�� 
.
�� 
curves
�� 
!=
�� 
null
��  $
)
��$ %
TimelineUndo
�� 
.
�� 
PushDestroyUndo
�� ,
(
��, -
this
��- 1
,
��1 2
track
��3 8
,
��8 9
track
��: ?
.
��? @
curves
��@ F
)
��F G
;
��G H
}
�� 	
void
�� %
DeleteRecordedAnimation
�� $
(
��$ %
TimelineClip
��% 1
clip
��2 6
)
��6 7
{
�� 	
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
)
�� 
return
�� 
;
�� 
if
�� 
(
�� 
clip
�� 
.
�� 
curves
�� 
!=
�� 
null
�� #
)
��# $
TimelineUndo
�� 
.
�� 
PushDestroyUndo
�� ,
(
��, -
this
��- 1
,
��1 2
clip
��3 7
.
��7 8
GetParentTrack
��8 F
(
��F G
)
��G H
,
��H I
clip
��J N
.
��N O
curves
��O U
)
��U V
;
��V W
if
�� 
(
�� 
!
�� 
clip
�� 
.
�� 

recordable
��  
)
��  !
return
�� 
;
�� $
AnimationPlayableAsset
�� "
asset
��# (
=
��) *
clip
��+ /
.
��/ 0
asset
��0 5
as
��6 8$
AnimationPlayableAsset
��9 O
;
��O P
if
�� 
(
�� 
asset
�� 
==
�� 
null
�� 
||
��  
asset
��! &
.
��& '
clip
��' +
==
��, .
null
��/ 3
)
��3 4
return
�� 
;
�� 
TimelineUndo
�� 
.
�� 
PushDestroyUndo
�� (
(
��( )
this
��) -
,
��- .
asset
��/ 4
,
��4 5
asset
��6 ;
.
��; <
clip
��< @
)
��@ A
;
��A B
}
�� 	
}
�� 
}�� �
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
}ff �
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
}.. �T
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
IntervalTree	00w �
<
00� �
RuntimeElement
00� �
>
00� �
tree
00� �
)
00� �
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
�� 	
}
�� 
}�� ��
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
�� 	
public
�� 
override
�� 
double
�� 
duration
�� '
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
m_DurationMode
�� "
==
��# %
DurationMode
��& 2
.
��2 3
BasedOnClips
��3 ?
)
��? @
{
�� 
var
�� 
discreteDuration
�� (
=
��) *$
CalculateItemsDuration
��+ A
(
��A B
)
��B C
;
��C D
if
�� 
(
�� 
discreteDuration
�� (
<=
��) +
$num
��, -
)
��- .
return
�� 
$num
�� "
;
��" #
return
�� 
(
�� 
double
�� "
)
��" #
discreteDuration
��# 3
.
��3 4
OneTickBefore
��4 A
(
��A B
)
��B C
;
��C D
}
�� 
return
�� 
m_FixedDuration
�� &
;
��& '
}
�� 
}
�� 	
public
�� 
double
�� 
fixedDuration
�� #
{
�� 	
get
�� 
{
�� 
DiscreteTime
�� 
discreteDuration
�� -
=
��. /
(
��0 1
DiscreteTime
��1 =
)
��= >
m_FixedDuration
��> M
;
��M N
if
�� 
(
�� 
discreteDuration
�� $
<=
��% '
$num
��( )
)
��) *
return
�� 
$num
�� 
;
�� 
return
�� 
(
�� 
double
�� 
)
�� 
discreteDuration
�� /
.
��/ 0
OneTickBefore
��0 =
(
��= >
)
��> ?
;
��? @
}
�� 
set
�� 
{
�� 
m_FixedDuration
�� !
=
��" #
Math
��$ (
.
��( )
Max
��) ,
(
��, -
$num
��- 0
,
��0 1
value
��2 7
)
��7 8
;
��8 9
}
��: ;
}
�� 	
public
�� 
DurationMode
�� 
durationMode
�� (
{
�� 	
get
�� 
{
�� 
return
�� 
m_DurationMode
�� '
;
��' (
}
��) *
set
�� 
{
�� 
m_DurationMode
��  
=
��! "
value
��# (
;
��( )
}
��* +
}
�� 	
public
�� 
override
�� 
IEnumerable
�� #
<
��# $
PlayableBinding
��$ 3
>
��3 4
outputs
��5 <
{
�� 	
get
�� 
{
�� 
foreach
�� 
(
�� 
var
�� 
outputTracks
�� )
in
��* ,
GetOutputTracks
��- <
(
��< =
)
��= >
)
��> ?
foreach
�� 
(
�� 
var
��  
output
��! '
in
��( *
outputTracks
��+ 7
.
��7 8
outputs
��8 ?
)
��? @
yield
�� 
return
�� $
output
��% +
;
��+ ,
}
�� 
}
�� 	
public
�� 
ClipCaps
�� 
clipCaps
��  
{
�� 	
get
�� 
{
�� 
var
�� 
caps
�� 
=
�� 
ClipCaps
�� #
.
��# $
All
��$ '
;
��' (
foreach
�� 
(
�� 
var
�� 
track
�� "
in
��# %
GetRootTracks
��& 3
(
��3 4
)
��4 5
)
��5 6
{
�� 
foreach
�� 
(
�� 
var
��  
clip
��! %
in
��& (
track
��) .
.
��. /
clips
��/ 4
)
��4 5
caps
�� 
&=
�� 
clip
��  $
.
��$ %
clipCaps
��% -
;
��- .
}
�� 
return
�� 
caps
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
int
�� 
outputTrackCount
�� #
{
�� 	
get
�� 
{
�� $
UpdateOutputTrackCache
�� &
(
��& '
)
��' (
;
��( )
return
�� !
m_CacheOutputTracks
�� *
.
��* +
Length
��+ 1
;
��1 2
}
�� 
}
�� 	
public
�� 
int
�� 
rootTrackCount
�� !
{
�� 	
get
�� 
{
�� "
UpdateRootTrackCache
�� $
(
��$ %
)
��% &
;
��& '
return
�� 
m_CacheRootTracks
�� (
.
��( )
Count
��) .
;
��. /
}
�� 
}
�� 	
void
�� 

OnValidate
�� 
(
�� 
)
�� 
{
�� 	
editorSettings
�� 
.
�� 
	frameRate
�� $
=
��% &
GetValidFrameRate
��' 8
(
��8 9
editorSettings
��9 G
.
��G H
	frameRate
��H Q
)
��Q R
;
��R S
}
�� 	
public
�� 

TrackAsset
�� 
GetRootTrack
�� &
(
��& '
int
��' *
index
��+ 0
)
��0 1
{
�� 	"
UpdateRootTrackCache
��  
(
��  !
)
��! "
;
��" #
return
�� 
m_CacheRootTracks
�� $
[
��$ %
index
��% *
]
��* +
;
��+ ,
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 

TrackAsset
�� %
>
��% &
GetRootTracks
��' 4
(
��4 5
)
��5 6
{
�� 	"
UpdateRootTrackCache
��  
(
��  !
)
��! "
;
��" #
return
�� 
m_CacheRootTracks
�� $
;
��$ %
}
�� 	
public
�� 

TrackAsset
�� 
GetOutputTrack
�� (
(
��( )
int
��) ,
index
��- 2
)
��2 3
{
�� 	$
UpdateOutputTrackCache
�� "
(
��" #
)
��# $
;
��$ %
return
�� !
m_CacheOutputTracks
�� &
[
��& '
index
��' ,
]
��, -
;
��- .
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 

TrackAsset
�� %
>
��% &
GetOutputTracks
��' 6
(
��6 7
)
��7 8
{
�� 	$
UpdateOutputTrackCache
�� "
(
��" #
)
��# $
;
��$ %
return
�� !
m_CacheOutputTracks
�� &
;
��& '
}
�� 	
static
�� 
double
�� 
GetValidFrameRate
�� '
(
��' (
double
��( .
	frameRate
��/ 8
)
��8 9
{
�� 	
return
�� 
Math
�� 
.
�� 
Min
�� 
(
�� 
Math
��  
.
��  !
Max
��! $
(
��$ %
	frameRate
��% .
,
��. /
EditorSettings
��0 >
.
��> ?
kMinFrameRate
��? L
)
��L M
,
��M N
EditorSettings
��O ]
.
��] ^
kMaxFrameRate
��^ k
)
��k l
;
��l m
}
�� 	
void
�� "
UpdateRootTrackCache
�� !
(
��! "
)
��" #
{
�� 	
if
�� 
(
�� 
m_CacheRootTracks
�� !
==
��" $
null
��% )
)
��) *
{
�� 
if
�� 
(
�� 
m_Tracks
�� 
==
�� 
null
��  $
)
��$ %
m_CacheRootTracks
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1

TrackAsset
��1 ;
>
��; <
(
��< =
)
��= >
;
��> ?
else
�� 
{
�� 
m_CacheRootTracks
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1

TrackAsset
��1 ;
>
��; <
(
��< =
m_Tracks
��= E
.
��E F
Count
��F K
)
��K L
;
��L M
if
�� 
(
�� 
markerTrack
�� #
!=
��$ &
null
��' +
)
��+ ,
{
�� 
m_CacheRootTracks
�� )
.
��) *
Add
��* -
(
��- .
markerTrack
��. 9
)
��9 :
;
��: ;
}
�� 
foreach
�� 
(
�� 
var
��  
t
��! "
in
��# %
m_Tracks
��& .
)
��. /
{
�� 
var
�� 

trackAsset
�� &
=
��' (
t
��) *
as
��+ -

TrackAsset
��. 8
;
��8 9
if
�� 
(
�� 

trackAsset
�� &
!=
��' )
null
��* .
)
��. /
m_CacheRootTracks
�� -
.
��- .
Add
��. 1
(
��1 2

trackAsset
��2 <
)
��< =
;
��= >
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� $
UpdateOutputTrackCache
�� #
(
��# $
)
��$ %
{
�� 	
if
�� 
(
�� !
m_CacheOutputTracks
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
var
�� 
outputTracks
��  
=
��! "
new
��# &
List
��' +
<
��+ ,

TrackAsset
��, 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
foreach
�� 
(
�� 
var
�� 
flattenedTrack
�� +
in
��, .
flattenedTracks
��/ >
)
��> ?
{
�� 
if
�� 
(
�� 
flattenedTrack
�� &
!=
��' )
null
��* .
&&
��/ 1
flattenedTrack
��2 @
.
��@ A
GetType
��A H
(
��H I
)
��I J
!=
��K M
typeof
��N T
(
��T U

GroupTrack
��U _
)
��_ `
&&
��a c
!
��d e
flattenedTrack
��e s
.
��s t

isSubTrack
��t ~
)
��~ 
outputTracks
�� $
.
��$ %
Add
��% (
(
��( )
flattenedTrack
��) 7
)
��7 8
;
��8 9
}
�� !
m_CacheOutputTracks
�� #
=
��$ %
outputTracks
��& 2
.
��2 3
ToArray
��3 :
(
��: ;
)
��; <
;
��< =
}
�� 
}
�� 	
internal
�� 

TrackAsset
�� 
[
�� 
]
�� 
flattenedTracks
�� -
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� $
m_CacheFlattenedTracks
�� *
==
��+ -
null
��. 2
)
��2 3
{
�� 
var
�� 
list
�� 
=
�� 
new
�� "
List
��# '
<
��' (

TrackAsset
��( 2
>
��2 3
(
��3 4
m_Tracks
��4 <
.
��< =
Count
��= B
*
��C D
$num
��E F
)
��F G
;
��G H"
UpdateRootTrackCache
�� (
(
��( )
)
��) *
;
��* +
list
�� 
.
�� 
AddRange
�� !
(
��! "
m_CacheRootTracks
��" 3
)
��3 4
;
��4 5
for
�� 
(
�� 
int
�� 
i
�� 
=
��  
$num
��! "
;
��" #
i
��$ %
<
��& '
m_CacheRootTracks
��( 9
.
��9 :
Count
��: ?
;
��? @
i
��A B
++
��B D
)
��D E
{
�� #
AddSubTracksRecursive
�� -
(
��- .
m_CacheRootTracks
��. ?
[
��? @
i
��@ A
]
��A B
,
��B C
ref
��D G
list
��H L
)
��L M
;
��M N
}
�� $
m_CacheFlattenedTracks
�� *
=
��+ ,
list
��- 1
.
��1 2
ToArray
��2 9
(
��9 :
)
��: ;
;
��; <
}
�� 
return
�� $
m_CacheFlattenedTracks
�� -
;
��- .
}
�� 
}
�� 	
public
�� 
MarkerTrack
�� 
markerTrack
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
m_MarkerTrack
�� &
;
��& '
}
��( )
}
�� 	
internal
�� 
List
�� 
<
�� 
ScriptableObject
�� &
>
��& '
trackObjects
��( 4
{
�� 	
get
�� 
{
�� 
return
�� 
m_Tracks
�� !
;
��! "
}
��# $
}
�� 	
internal
�� 
void
�� 
AddTrackInternal
�� &
(
��& '

TrackAsset
��' 1
track
��2 7
)
��7 8
{
�� 	
m_Tracks
�� 
.
�� 
Add
�� 
(
�� 
track
�� 
)
�� 
;
��  
track
�� 
.
�� 
parent
�� 
=
�� 
this
�� 
;
��  

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 
RemoveTrack
�� !
(
��! "

TrackAsset
��" ,
track
��- 2
)
��2 3
{
�� 	
m_Tracks
�� 
.
�� 
Remove
�� 
(
�� 
track
�� !
)
��! "
;
��" #

Invalidate
�� 
(
�� 
)
�� 
;
�� 
var
�� 
parentTrack
�� 
=
�� 
track
�� #
.
��# $
parent
��$ *
as
��+ -

TrackAsset
��. 8
;
��8 9
if
�� 
(
�� 
parentTrack
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
parentTrack
�� 
.
�� 
RemoveSubTrack
�� *
(
��* +
track
��+ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
public
�� 
override
�� 
Playable
��  
CreatePlayable
��! /
(
��/ 0
PlayableGraph
��0 =
graph
��> C
,
��C D

GameObject
��E O
go
��P R
)
��R S
{
�� 	
bool
�� 
autoRebalanceTree
�� "
=
��# $
false
��% *
;
��* +
autoRebalanceTree
�� 
=
�� 
true
��  $
;
��$ %
bool
�� 
createOutputs
�� 
=
��  
graph
��! &
.
��& '
GetPlayableCount
��' 7
(
��7 8
)
��8 9
==
��: <
$num
��= >
;
��> ?
var
�� 
timeline
�� 
=
�� 
TimelinePlayable
�� +
.
��+ ,
Create
��, 2
(
��2 3
graph
��3 8
,
��8 9
GetOutputTracks
��: I
(
��I J
)
��J K
,
��K L
go
��M O
,
��O P
autoRebalanceTree
��Q b
,
��b c
createOutputs
��d q
)
��q r
;
��r s
timeline
�� 
.
�� 
SetDuration
��  
(
��  !
this
��! %
.
��% &
duration
��& .
)
��. /
;
��/ 0
timeline
�� 
.
�� !
SetPropagateSetTime
�� (
(
��( )
true
��) -
)
��- .
;
��. /
return
�� 
timeline
�� 
.
�� 
IsValid
�� #
(
��# $
)
��$ %
?
��& '
timeline
��( 0
:
��1 2
Playable
��3 ;
.
��; <
Null
��< @
;
��@ A
}
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ ,
OnBeforeSerialize
��, =
(
��= >
)
��> ?
{
�� 	
	m_Version
�� 
=
�� 
k_LatestVersion
�� '
;
��' (
}
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ , 
OnAfterDeserialize
��, >
(
��> ?
)
��? @
{
�� 	

Invalidate
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
�� 
	m_Version
�� 
<
�� 
k_LatestVersion
�� +
)
��+ ,
{
�� $
UpgradeToLatestVersion
�� &
(
��& '
)
��' (
;
��( )
}
�� 
}
�� 	
internal
�� 
event
�� 
Action
�� !
AssetModifiedOnDisk
�� 1
;
��1 2
void
�� 
__internalAwake
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
m_Tracks
�� 
==
�� 
null
��  
)
��  !
m_Tracks
�� 
=
�� 
new
�� 
List
�� #
<
��# $
ScriptableObject
��$ 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
if
�� 
(
�� 
!
�� 
UnityEditor
�� 
.
�� 
EditorUtility
�� *
.
��* +
IsPersistent
��+ 7
(
��7 8
this
��8 <
)
��< =
)
��= >
return
�� 
;
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
m_Tracks
�� !
.
��! "
Count
��" '
-
��( )
$num
��* +
;
��+ ,
i
��- .
>=
��/ 1
$num
��2 3
;
��3 4
i
��5 6
--
��6 8
)
��8 9
{
�� 

TrackAsset
�� 
asset
��  
=
��! "
m_Tracks
��# +
[
��+ ,
i
��, -
]
��- .
as
��/ 1

TrackAsset
��2 <
;
��< =
if
�� 
(
�� 
asset
�� 
!=
�� 
null
�� !
)
��! "
asset
�� 
.
�� 
parent
��  
=
��! "
this
��# '
;
��' (
object
�� 
o
�� 
=
�� 
m_Tracks
�� #
[
��# $
i
��$ %
]
��% &
;
��& '
if
�� 
(
�� 
o
�� 
==
�� 
null
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
$str
��% d
)
��d e
;
��e f
m_Tracks
�� 
.
�� 
RemoveAt
�� %
(
��% &
i
��& '
)
��' (
;
��( )
}
�� 
}
�� !
AssetModifiedOnDisk
�� 
?
��  
.
��  !
Invoke
��! '
(
��' (
)
��( )
;
��) *
}
�� 	
public
�� 
void
�� 
GatherProperties
�� $
(
��$ %
PlayableDirector
��% 5
director
��6 >
,
��> ? 
IPropertyCollector
��@ R
driver
��S Y
)
��Y Z
{
�� 	
var
�� 
outputTracks
�� 
=
�� 
GetOutputTracks
�� .
(
��. /
)
��/ 0
;
��0 1
foreach
�� 
(
�� 
var
�� 
track
�� 
in
�� !
outputTracks
��" .
)
��. /
{
�� 
if
�� 
(
�� 
!
�� 
track
�� 
.
�� 
mutedInHierarchy
�� +
)
��+ ,
track
�� 
.
�� 
GatherProperties
�� *
(
��* +
director
��+ 3
,
��3 4
driver
��5 ;
)
��; <
;
��< =
}
�� 
}
�� 	
public
�� 
void
�� 
CreateMarkerTrack
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
m_MarkerTrack
�� 
==
��  
null
��! %
)
��% &
{
�� 
m_MarkerTrack
�� 
=
�� 
CreateInstance
��  .
<
��. /
MarkerTrack
��/ :
>
��: ;
(
��; <
)
��< =
;
��= >%
TimelineCreateUtilities
�� '
.
��' (!
SaveAssetIntoObject
��( ;
(
��; <
m_MarkerTrack
��< I
,
��I J
this
��K O
)
��O P
;
��P Q
m_MarkerTrack
�� 
.
�� 
parent
�� $
=
��% &
this
��' +
;
��+ ,
m_MarkerTrack
�� 
.
�� 
name
�� "
=
��# $
$str
��% .
;
��. /

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
internal
�� 
void
�� 

Invalidate
��  
(
��  !
)
��! "
{
�� 	
m_CacheRootTracks
�� 
=
�� 
null
��  $
;
��$ %!
m_CacheOutputTracks
�� 
=
��  !
null
��" &
;
��& '$
m_CacheFlattenedTracks
�� "
=
��# $
null
��% )
;
��) *
}
�� 	
internal
�� 
void
�� 2
$UpdateFixedDurationWithItemsDuration
�� :
(
��: ;
)
��; <
{
�� 	
m_FixedDuration
�� 
=
�� 
(
�� 
double
�� %
)
��% &$
CalculateItemsDuration
��& <
(
��< =
)
��= >
;
��> ?
}
�� 	
DiscreteTime
�� $
CalculateItemsDuration
�� +
(
��+ ,
)
��, -
{
�� 	
var
�� 
discreteDuration
��  
=
��! "
new
��# &
DiscreteTime
��' 3
(
��3 4
$num
��4 5
)
��5 6
;
��6 7
foreach
�� 
(
�� 
var
�� 
track
�� 
in
�� !
flattenedTracks
��" 1
)
��1 2
{
�� 
if
�� 
(
�� 
track
�� 
.
�� 
muted
�� 
)
��  
continue
�� 
;
�� 
discreteDuration
��  
=
��! "
DiscreteTime
��# /
.
��/ 0
Max
��0 3
(
��3 4
discreteDuration
��4 D
,
��D E
(
��F G
DiscreteTime
��G S
)
��S T
track
��T Y
.
��Y Z
end
��Z ]
)
��] ^
;
��^ _
}
�� 
if
�� 
(
�� 
discreteDuration
��  
<=
��! #
$num
��$ %
)
��% &
return
�� 
new
�� 
DiscreteTime
�� '
(
��' (
$num
��( )
)
��) *
;
��* +
return
�� 
discreteDuration
�� #
;
��# $
}
�� 	
static
�� 
void
�� #
AddSubTracksRecursive
�� )
(
��) *

TrackAsset
��* 4
track
��5 :
,
��: ;
ref
��< ?
List
��@ D
<
��D E

TrackAsset
��E O
>
��O P
	allTracks
��Q Z
)
��Z [
{
�� 	
if
�� 
(
�� 
track
�� 
==
�� 
null
�� 
)
�� 
return
�� 
;
�� 
	allTracks
�� 
.
�� 
AddRange
�� 
(
�� 
track
�� $
.
��$ %
GetChildTracks
��% 3
(
��3 4
)
��4 5
)
��5 6
;
��6 7
foreach
�� 
(
�� 

TrackAsset
�� 
subTrack
��  (
in
��) +
track
��, 1
.
��1 2
GetChildTracks
��2 @
(
��@ A
)
��A B
)
��B C
{
�� #
AddSubTracksRecursive
�� %
(
��% &
subTrack
��& .
,
��. /
ref
��0 3
	allTracks
��4 =
)
��= >
;
��> ?
}
�� 
}
�� 	
}
�� 
}�� ٔ
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
�� 
.
�� 
playableGraph
�� *
.
��* +#
SynchronizeEvaluation
��+ @
(
��@ A
playable
��A I
.
��I J
GetGraph
��J R
(
��R S
)
��S T
)
��T U
;
��U V
}
�� 
else
�� 
{
�� 
director
�� 
.
�� 
Evaluate
�� %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 

m_SyncTime
�� 
=
�� 
false
�� 
;
�� 
SyncStop
�� 
(
�� 
playable
�� 
.
�� 
GetGraph
�� &
(
��& '
)
��' (
,
��( )
playable
��* 2
.
��2 3
GetTime
��3 :
(
��: ;
)
��; <
)
��< =
;
��= >
}
�� 	
void
�� 
OnPrefabUpdated
�� 
(
�� 

GameObject
�� '
go
��( *
)
��* +
{
�� 	
if
�� 
(
�� 
UnityEditor
�� 
.
�� 
PrefabUtility
�� )
.
��) *
GetRootGameObject
��* ;
(
��; <
director
��< D
)
��D E
==
��F H
go
��I K
)
��K L
director
�� 
.
�� 
RebuildGraph
�� %
(
��% &
)
��& '
;
��' (
}
�� 	
void
�� 
	SyncSpeed
�� 
(
�� 
double
�� 
speed
�� #
)
��# $
{
�� 	
if
�� 
(
�� 
director
�� 
.
�� 
playableGraph
�� &
.
��& '
IsValid
��' .
(
��. /
)
��/ 0
)
��0 1
{
�� 
int
�� 
roots
�� 
=
�� 
director
�� $
.
��$ %
playableGraph
��% 2
.
��2 3"
GetRootPlayableCount
��3 G
(
��G H
)
��H I
;
��I J
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
roots
��$ )
;
��) *
i
��+ ,
++
��, .
)
��. /
{
�� 
var
�� 
rootPlayable
�� $
=
��% &
director
��' /
.
��/ 0
playableGraph
��0 =
.
��= >
GetRootPlayable
��> M
(
��M N
i
��N O
)
��O P
;
��P Q
if
�� 
(
�� 
rootPlayable
�� $
.
��$ %
IsValid
��% ,
(
��, -
)
��- .
)
��. /
{
�� 
rootPlayable
�� $
.
��$ %
SetSpeed
��% -
(
��- .
speed
��. 3
)
��3 4
;
��4 5
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� 
	SyncStart
�� 
(
�� 
PlayableGraph
�� $
graph
��% *
,
��* +
double
��, 2
time
��3 7
)
��7 8
{
�� 	
if
�� 
(
�� 
director
�� 
.
�� 
state
�� 
==
�� !
	PlayState
��" +
.
��+ ,
Playing
��, 3
||
�� 
!
�� 
graph
�� 
.
�� 
	IsPlaying
�� #
(
��# $
)
��$ %
||
�� 
(
�� 
director
�� 
.
�� 
extrapolationMode
�� .
==
��/ 1
DirectorWrapMode
��2 B
.
��B C
None
��C G
&&
��H J
time
��K O
>
��P Q
m_AssetDuration
��R a
)
��a b
)
��b c
return
�� 
;
�� 
if
�� 
(
�� 
graph
�� 
.
�� %
IsMatchFrameRateEnabled
�� -
(
��- .
)
��. /
)
��/ 0
director
�� 
.
�� 
Play
�� 
(
�� 
graph
�� #
.
��# $
GetFrameRate
��$ 0
(
��0 1
)
��1 2
)
��2 3
;
��3 4
else
�� 
director
�� 
.
�� 
Play
�� 
(
�� 
)
�� 
;
��  
}
�� 	
void
�� 
SyncStop
�� 
(
�� 
PlayableGraph
�� #
graph
��$ )
,
��) *
double
��+ 1
time
��2 6
)
��6 7
{
�� 	
if
�� 
(
�� 
director
�� 
.
�� 
state
�� 
==
�� !
	PlayState
��" +
.
��+ ,
Paused
��, 2
)
��2 3
return
�� 
;
�� 
bool
�� 
expectedFinished
�� !
=
��" #
director
��$ ,
.
��, -
extrapolationMode
��- >
==
��? A
DirectorWrapMode
��B R
.
��R S
None
��S W
&&
��X Z
time
��[ _
>
��` a
m_AssetDuration
��b q
;
��q r
if
�� 
(
�� 
expectedFinished
��  
||
��! #
!
��$ %
graph
��% *
.
��* +
	IsPlaying
��+ 4
(
��4 5
)
��5 6
)
��6 7
director
�� 
.
�� 
Pause
�� 
(
�� 
)
��  
;
��  !
}
�� 	
bool
�� !
DetectDiscontinuity
��  
(
��  !
Playable
��! )
playable
��* 2
,
��2 3
	FrameData
��4 =
info
��> B
)
��B C
{
�� 	
return
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 
playable
�� $
.
��$ %
GetTime
��% ,
(
��, -
)
��- .
-
��/ 0
playable
��1 9
.
��9 :
GetPreviousTime
��: I
(
��I J
)
��J K
-
��L M
info
��N R
.
��R S
m_DeltaTime
��S ^
*
��_ `
info
��a e
.
��e f
m_EffectiveSpeed
��f v
)
��v w
>
��x y
DiscreteTime��z �
.��� �
	tickValue��� �
;��� �
}
�� 	
bool
�� 
DetectOutOfSync
�� 
(
�� 
Playable
�� %
playable
��& .
)
��. /
{
�� 	
double
�� 
expectedTime
�� 
=
��  !
playable
��" *
.
��* +
GetTime
��+ 2
(
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� 
playable
�� 
.
�� 
GetTime
��  
(
��  !
)
��! "
>=
��# %
m_AssetDuration
��& 5
)
��5 6
{
�� 
switch
�� 
(
�� 
director
��  
.
��  !
extrapolationMode
��! 2
)
��2 3
{
�� 
case
�� 
DirectorWrapMode
�� )
.
��) *
None
��* .
:
��. /
expectedTime
�� $
=
��% &
m_AssetDuration
��' 6
;
��6 7
break
�� 
;
�� 
case
�� 
DirectorWrapMode
�� )
.
��) *
Hold
��* .
:
��. /
expectedTime
�� $
=
��% &
m_AssetDuration
��' 6
;
��6 7
break
�� 
;
�� 
case
�� 
DirectorWrapMode
�� )
.
��) *
Loop
��* .
:
��. /
expectedTime
�� $
%=
��% '
m_AssetDuration
��( 7
;
��7 8
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 
Mathf
�� 
.
�� 
Approximately
�� $
(
��$ %
(
��% &
float
��& +
)
��+ ,
expectedTime
��, 8
,
��8 9
(
��: ;
float
��; @
)
��@ A
director
��A I
.
��I J
time
��J N
)
��N O
)
��O P
{
�� 
double
�� 
	lastDelta
��  
=
��! "
playable
��# +
.
��+ ,
GetTime
��, 3
(
��3 4
)
��4 5
-
��6 7
playable
��8 @
.
��@ A
GetPreviousTime
��A P
(
��P Q
)
��Q R
;
��R S
if
�� 
(
�� 
UnityEditor
�� 
.
��  
Unsupported
��  +
.
��+ ,
IsDeveloperBuild
��, <
(
��< =
)
��= >
)
��> ?
Debug
�� 
.
�� 
LogWarningFormat
�� *
(
��* +
$str��+ �
,��� �
playable��� �
.��� �
GetTime��� �
(��� �
)��� �
,��� �
director��� �
.��� �
time��� �
,��� �
director��� �
.��� �
name��� �
,��� �
	lastDelta��� �
)��� �
;��� �
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
void
�� 

UpdateTime
�� 
(
�� 
Playable
��  
playable
��! )
)
��) *
{
�� 	
double
�� 
duration
�� 
=
�� 
Math
�� "
.
��" #
Max
��# &
(
��& '
$num
��' *
,
��* +
director
��, 4
.
��4 5
playableAsset
��5 B
.
��B C
duration
��C K
)
��K L
;
��L M
switch
�� 
(
�� 
director
�� 
.
�� 
extrapolationMode
�� .
)
��. /
{
�� 
case
�� 
DirectorWrapMode
�� %
.
��% &
Hold
��& *
:
��* +
director
�� 
.
�� 
time
�� !
=
��" #
Math
��$ (
.
��( )
Min
��) ,
(
��, -
duration
��- 5
,
��5 6
Math
��7 ;
.
��; <
Max
��< ?
(
��? @
$num
��@ A
,
��A B
playable
��C K
.
��K L
GetTime
��L S
(
��S T
)
��T U
)
��U V
)
��V W
;
��W X
break
�� 
;
�� 
case
�� 
DirectorWrapMode
�� %
.
��% &
Loop
��& *
:
��* +
director
�� 
.
�� 
time
�� !
=
��" #
Math
��$ (
.
��( )
Max
��) ,
(
��, -
$num
��- .
,
��. /
playable
��0 8
.
��8 9
GetTime
��9 @
(
��@ A
)
��A B
%
��C D
duration
��E M
)
��M N
;
��N O
break
�� 
;
�� 
case
�� 
DirectorWrapMode
�� %
.
��% &
None
��& *
:
��* +
director
�� 
.
�� 
time
�� !
=
��" #
Math
��$ (
.
��( )
Min
��) ,
(
��, -
duration
��- 5
,
��5 6
Math
��7 ;
.
��; <
Max
��< ?
(
��? @
$num
��@ A
,
��A B
playable
��C K
.
��K L
GetTime
��L S
(
��S T
)
��T U
)
��U V
)
��V W
;
��W X
break
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� ��
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
&&	$$~ �
x
$$� �
.
$$� �
propertyName
$$� �
==
$$� �
y
$$� �
.
$$� �
propertyName
$$� �
;
$$� �
}
$$� �
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
..� �
.
..� �
Instance
..� �
)
..� �
;
..� �
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
�� 
curve
�� 
=
�� 
new
�� 
AnimationCurve
�� *
(
��* +
	keyFrames
��+ 4
)
��4 5
;
��5 6
bool
�� 

rootMotion
�� 
=
�� 
false
�� #
;
��# $
var
�� 

avatarRoot
�� 
=
�� 
GetAvatarRoot
�� *
(
��* +
animatorRoot
��+ 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
�� 
binding
��  
in
��! #
keys
��$ (
)
��( )
{
�� 
if
�� 
(
�� 
IsRootMotion
��  
(
��  !
binding
��! (
)
��( )
)
��) *
{
�� 

rootMotion
�� 
=
��  
true
��! %
;
��% &
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
typeof
�� 
(
�� 
	Transform
�� $
)
��$ %
.
��% &
IsAssignableFrom
��& 6
(
��6 7
binding
��7 >
.
��> ?
type
��? C
)
��C D
&&
��E G
binding
��H O
.
��O P
propertyName
��P \
.
��\ ]
Equals
��] c
(
��c d"
AnimatorBindingCache
��d x
.
��x y
TRPlaceHolder��y �
)��� �
)��� �
{
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� ,
(
��, -
binding
��- 4
.
��4 5
path
��5 9
)
��9 :
)
��: ;

rootMotion
�� "
=
��# $
true
��% )
;
��) *
else
�� 
{
�� 
var
�� 
	transform
�� %
=
��& '
animatorRoot
��( 4
.
��4 5
	transform
��5 >
.
��> ?
Find
��? C
(
��C D
binding
��D K
.
��K L
path
��L P
)
��P Q
;
��Q R
if
�� 
(
�� 
	transform
�� %
!=
��& (
null
��) -
)
��- .
{
�� 
var
�� 
pos
��  #
=
��$ %
	transform
��& /
.
��/ 0
localPosition
��0 =
;
��= >
var
�� 
rot
��  #
=
��$ %
	transform
��& /
.
��/ 0
localRotation
��0 =
;
��= >
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_PosX
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
pos
��t w
.
��w x
x
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_PosY
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
pos
��t w
.
��w x
y
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_PosZ
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
pos
��t w
.
��w x
z
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_RotX
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
rot
��t w
.
��w x
x
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_RotY
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
rot
��t w
.
��w x
y
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_RotZ
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
rot
��t w
.
��w x
z
��x y
)
��y z
)
��z {
;
��{ |
animClip
�� $
.
��$ %
SetCurve
��% -
(
��- .
binding
��. 5
.
��5 6
path
��6 :
,
��: ;
typeof
��< B
(
��B C
	Transform
��C L
)
��L M
,
��M N
k_RotW
��O U
,
��U V

SetZeroKey
��W a
(
��a b
curve
��b g
,
��g h
	keyFrames
��i r
,
��r s
rot
��t w
.
��w x
w
��x y
)
��y z
)
��z {
;
��{ |
}
�� 
}
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
typeof
�� 
(
�� 
	Transform
�� $
)
��$ %
.
��% &
IsAssignableFrom
��& 6
(
��6 7
binding
��7 >
.
��> ?
type
��? C
)
��C D
&&
��E G
binding
��H O
.
��O P
propertyName
��P \
==
��] _"
AnimatorBindingCache
��` t
.
��t u
ScalePlaceholder��u �
)��� �
{
�� 
var
�� 
	transform
�� !
=
��" #
animatorRoot
��$ 0
.
��0 1
	transform
��1 :
.
��: ;
Find
��; ?
(
��? @
binding
��@ G
.
��G H
path
��H L
)
��L M
;
��M N
if
�� 
(
�� 
	transform
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
var
�� 
scale
�� !
=
��" #
	transform
��$ -
.
��- .

localScale
��. 8
;
��8 9
animClip
��  
.
��  !
SetCurve
��! )
(
��) *
binding
��* 1
.
��1 2
path
��2 6
,
��6 7
typeof
��8 >
(
��> ?
	Transform
��? H
)
��H I
,
��I J
k_ScaleX
��K S
,
��S T

SetZeroKey
��U _
(
��_ `
curve
��` e
,
��e f
	keyFrames
��g p
,
��p q
scale
��r w
.
��w x
x
��x y
)
��y z
)
��z {
;
��{ |
animClip
��  
.
��  !
SetCurve
��! )
(
��) *
binding
��* 1
.
��1 2
path
��2 6
,
��6 7
typeof
��8 >
(
��> ?
	Transform
��? H
)
��H I
,
��I J
k_ScaleY
��K S
,
��S T

SetZeroKey
��U _
(
��_ `
curve
��` e
,
��e f
	keyFrames
��g p
,
��p q
scale
��r w
.
��w x
y
��x y
)
��y z
)
��z {
;
��{ |
animClip
��  
.
��  !
SetCurve
��! )
(
��) *
binding
��* 1
.
��1 2
path
��2 6
,
��6 7
typeof
��8 >
(
��> ?
	Transform
��? H
)
��H I
,
��I J
k_ScaleZ
��K S
,
��S T

SetZeroKey
��U _
(
��_ `
curve
��` e
,
��e f
	keyFrames
��g p
,
��p q
scale
��r w
.
��w x
z
��x y
)
��y z
)
��z {
;
��{ |
}
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
IsAvatarBinding
�� #
(
��# $
binding
��$ +
)
��+ ,
||
��- /
IsEulerHint
��0 ;
(
��; <
binding
��< C
)
��C D
||
��E G
binding
��H O
.
��O P
isPPtrCurve
��P [
)
��[ \
continue
�� 
;
�� 
float
�� 

floatValue
��  
;
��  !
AnimationUtility
��  
.
��  !
GetFloatValue
��! .
(
��. /

avatarRoot
��/ 9
,
��9 :
binding
��; B
,
��B C
out
��D G

floatValue
��H R
)
��R S
;
��S T
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
binding
��" )
.
��) *
path
��* .
,
��. /
binding
��0 7
.
��7 8
type
��8 <
,
��< =
binding
��> E
.
��E F
propertyName
��F R
,
��R S

SetZeroKey
��T ^
(
��^ _
curve
��_ d
,
��d e
	keyFrames
��f o
,
��o p

floatValue
��q {
)
��{ |
)
��| }
;
��} ~
}
�� 
if
�� 
(
�� 

rootMotion
�� 
)
�� 
{
�� 
var
�� 
pos
�� 
=
�� 
Vector3
�� !
.
��! "
zero
��" &
;
��& '
var
�� 
rot
�� 
=
�� 

Quaternion
�� $
.
��$ %
identity
��% -
;
��- .
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_PosX
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
pos
��h k
.
��k l
x
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_PosY
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
pos
��h k
.
��k l
y
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_PosZ
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
pos
��h k
.
��k l
z
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_RotX
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
rot
��h k
.
��k l
x
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_RotY
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
rot
��h k
.
��k l
y
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_RotZ
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
rot
��h k
.
��k l
z
��l m
)
��m n
)
��n o
;
��o p
animClip
�� 
.
�� 
SetCurve
�� !
(
��! "
string
��" (
.
��( )
Empty
��) .
,
��. /
typeof
��0 6
(
��6 7
	Transform
��7 @
)
��@ A
,
��A B
k_RotW
��C I
,
��I J

SetZeroKey
��K U
(
��U V
curve
��V [
,
��[ \
	keyFrames
��] f
,
��f g
rot
��h k
.
��k l
w
��l m
)
��m n
)
��n o
;
��o p
}
�� 
return
�� 
animClip
�� 
;
�� 
}
�� 	
public
�� 
static
�� 
bool
�� 
IsRootMotion
�� '
(
��' ( 
EditorCurveBinding
��( :
binding
��; B
)
��B C
{
�� 	
if
�� 
(
�� 
typeof
�� 
(
�� 
	Transform
��  
)
��  !
.
��! "
IsAssignableFrom
��" 2
(
��2 3
binding
��3 :
.
��: ;
type
��; ?
)
��? @
&&
��A C
string
��D J
.
��J K
IsNullOrEmpty
��K X
(
��X Y
binding
��Y `
.
��` a
path
��a e
)
��e f
)
��f g
{
�� 
return
�� 
FastStartsWith
�� %
(
��% &
binding
��& -
.
��- .
propertyName
��. :
,
��: ;
k_Pos
��< A
)
��A B
||
��D F
FastStartsWith
��G U
(
��U V
binding
��V ]
.
��] ^
propertyName
��^ j
,
��j k
k_Rot
��l q
)
��q r
;
��r s
}
�� 
if
�� 
(
�� 
binding
�� 
.
�� 
type
�� 
==
�� 
typeof
��  &
(
��& '
Animator
��' /
)
��/ 0
)
��0 1
{
�� 
return
�� 
FastStartsWith
�� %
(
��% &
binding
��& -
.
��- .
propertyName
��. :
,
��: ;
	k_MotionT
��< E
)
��E F
||
��G I
FastStartsWith
�� "
(
��" #
binding
��# *
.
��* +
propertyName
��+ 7
,
��7 8
	k_MotionQ
��9 B
)
��B C
||
��D F
FastStartsWith
�� "
(
��" #
binding
��# *
.
��* +
propertyName
��+ 7
,
��7 8
k_RootT
��9 @
)
��@ A
||
��B D
FastStartsWith
�� "
(
��" #
binding
��# *
.
��* +
propertyName
��+ 7
,
��7 8
k_RootQ
��9 @
)
��@ A
;
��A B
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� #
NeedsSkeletonBindings
�� 1
(
��1 2
IEnumerable
��2 =
<
��= > 
EditorCurveBinding
��> P
>
��P Q
bindings
��R Z
)
��Z [
{
�� 	
foreach
�� 
(
�� 
var
�� 
b
�� 
in
�� 
bindings
�� &
)
��& '
{
�� 
if
�� 
(
�� 
IsSkeletalBinding
�� %
(
��% &
b
��& '
)
��' (
)
��( )
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
AddBindings
�� '
(
��' (
IEnumerable
��( 3
<
��3 4 
EditorCurveBinding
��4 F
>
��F G
bindings
��H P
)
��P Q
{
�� 	
foreach
�� 
(
�� 
var
�� 
b
�� 
in
�� 
bindings
�� &
)
��& '
{
�� 
if
�� 
(
�� 
!
�� 

s_CurveSet
�� 
.
��  
ContainsKey
��  +
(
��+ ,
b
��, -
)
��- .
)
��. /

s_CurveSet
�� 
[
�� 
b
��  
]
��  !
=
��" #
$num
��$ %
;
��% &
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
AddTRBinding
�� (
(
��( )

GameObject
��) 3
root
��4 8
,
��8 9 
EditorCurveBinding
��: L
binding
��M T
)
��T U
{
�� 	
var
�� 
t
�� 
=
�� 
root
�� 
.
�� 
	transform
�� "
.
��" #
Find
��# '
(
��' (
binding
��( /
.
��/ 0
path
��0 4
)
��4 5
;
��5 6
if
�� 
(
�� 
t
�� 
!=
�� 
null
�� 
)
�� 
{
�� #
DrivenPropertyManager
�� %
.
��% &
RegisterProperty
��& 6
(
��6 7
s_PreviewDriver
��7 F
,
��F G
t
��H I
,
��I J
$str
��K \
)
��\ ]
;
��] ^#
DrivenPropertyManager
�� %
.
��% &
RegisterProperty
��& 6
(
��6 7
s_PreviewDriver
��7 F
,
��F G
t
��H I
,
��I J
$str
��K \
)
��\ ]
;
��] ^
}
�� 
}
�� 	
private
�� 
static
�� 
void
�� 
AddScaleBinding
�� +
(
��+ ,

GameObject
��, 6
root
��7 ;
,
��; < 
EditorCurveBinding
��= O
binding
��P W
)
��W X
{
�� 	
var
�� 
t
�� 
=
�� 
root
�� 
.
�� 
	transform
�� "
.
��" #
Find
��# '
(
��' (
binding
��( /
.
��/ 0
path
��0 4
)
��4 5
;
��5 6
if
�� 
(
�� 
t
�� 
!=
�� 
null
�� 
)
�� #
DrivenPropertyManager
�� %
.
��% &
RegisterProperty
��& 6
(
��6 7
s_PreviewDriver
��7 F
,
��F G
t
��H I
,
��I J
$str
��K Y
)
��Y Z
;
��Z [
}
�� 	
private
�� 
static
�� 
bool
�� 
IsEuler
�� #
(
��# $ 
EditorCurveBinding
��$ 6
binding
��7 >
)
��> ?
{
�� 	
return
�� 
FastStartsWith
�� !
(
��! "
binding
��" )
.
��) *
propertyName
��* 6
,
��6 7
k_EulerAnglesRaw
��8 H
)
��H I
&&
��J L
typeof
�� 
(
�� 
	Transform
��  
)
��  !
.
��! "
IsAssignableFrom
��" 2
(
��2 3
binding
��3 :
.
��: ;
type
��; ?
)
��? @
;
��@ A
}
�� 	
private
�� 
static
�� 
bool
�� 
IsAvatarBinding
�� +
(
��+ , 
EditorCurveBinding
��, >
binding
��? F
)
��F G
{
�� 	
return
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� '
(
��' (
binding
��( /
.
��/ 0
path
��0 4
)
��4 5
&&
��6 8
typeof
��9 ?
(
��? @
Animator
��@ H
)
��H I
==
��J L
binding
��M T
.
��T U
type
��U Y
;
��Y Z
}
�� 	
private
�� 
static
�� 
bool
�� 
IsSkeletalBinding
�� -
(
��- . 
EditorCurveBinding
��. @
binding
��A H
)
��H I
{
�� 	
return
�� 
typeof
�� 
(
�� 
	Transform
�� #
)
��# $
.
��$ %
IsAssignableFrom
��% 5
(
��5 6
binding
��6 =
.
��= >
type
��> B
)
��B C
||
��D F
typeof
��G M
(
��M N!
SkinnedMeshRenderer
��N a
)
��a b
.
��b c
IsAssignableFrom
��c s
(
��s t
binding
��t {
.
��{ |
type��| �
)��� �
;��� �
}
�� 	
private
�� 
static
�� 
AnimationCurve
�� %

SetZeroKey
��& 0
(
��0 1
AnimationCurve
��1 ?
curve
��@ E
,
��E F
Keyframe
��G O
[
��O P
]
��P Q
keys
��R V
,
��V W
float
��X ]
val
��^ a
)
��a b
{
�� 	
keys
�� 
[
�� 
$num
�� 
]
�� 
.
�� 
value
�� 
=
�� 
val
�� 
;
��  
curve
�� 
.
�� 
keys
�� 
=
�� 
keys
�� 
;
�� 
return
�� 
curve
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
IsEulerHint
�� '
(
��' ( 
EditorCurveBinding
��( :
binding
��; B
)
��B C
{
�� 	
return
�� 
typeof
�� 
(
�� 
	Transform
�� #
)
��# $
.
��$ %
IsAssignableFrom
��% 5
(
��5 6
binding
��6 =
.
��= >
type
��> B
)
��B C
&&
��D F
binding
��G N
.
��N O
propertyName
��O [
.
��[ \

StartsWith
��\ f
(
��f g
k_EulerHint
��g r
)
��r s
;
��s t
}
�� 	
private
�� 
static
�� 

GameObject
�� !
GetAvatarRoot
��" /
(
��/ 0

GameObject
��0 :
animatorRoot
��; G
)
��G H
{
�� 	
var
�� 
animator
�� 
=
�� 
animatorRoot
�� '
.
��' (
GetComponent
��( 4
<
��4 5
Animator
��5 =
>
��= >
(
��> ?
)
��? @
;
��@ A
if
�� 
(
�� 
animator
�� 
!=
�� 
null
��  
&&
��! #
animator
��$ ,
.
��, -

avatarRoot
��- 7
!=
��8 :
animatorRoot
��; G
.
��G H
	transform
��H Q
)
��Q R
return
�� 
animator
�� 
.
��  

avatarRoot
��  *
.
��* +

gameObject
��+ 5
;
��5 6
return
�� 
animatorRoot
�� 
;
��  
}
�� 	
}
�� 
}�� �
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
} �[
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
SupportsChildTracksAttribute	vvo �
;
vv� �
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
�� 
int
�� 
	nestCount
�� 
=
�� 
$num
��  !
;
��! "
var
�� 
p
�� 
=
�� 
parent
�� 
;
�� 
while
�� 
(
�� 
p
�� 
!=
�� 
null
��  
&&
��! #
p
��$ %
.
��% &

isSubTrack
��& 0
)
��0 1
{
�� 
	nestCount
�� 
++
�� 
;
��  
p
�� 
=
�� 
p
�� 
.
�� 
parent
��  
as
��! #

TrackAsset
��$ .
;
��. /
}
�� 
return
�� 
	nestCount
��  
<
��! "
attr
��# '
.
��' (
levels
��( .
;
��. /
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� �)
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
}33 �F
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
} �	
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
} �#
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
}YY ��
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
�� 
string
�� )
k_DefaultRecordableClipName
�� 0
=
��1 2
$str
��3 =
;
��= >
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. J
)
��J K
]
��K L
TimelineClip
�� 
.
�� 
ClipExtrapolation
�� &,
m_InfiniteClipPreExtrapolation
��' E
=
��F G
TimelineClip
��H T
.
��T U
ClipExtrapolation
��U f
.
��f g
None
��g k
;
��k l
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. K
)
��K L
]
��L M
TimelineClip
�� 
.
�� 
ClipExtrapolation
�� &-
m_InfiniteClipPostExtrapolation
��' F
=
��G H
TimelineClip
��I U
.
��U V
ClipExtrapolation
��V g
.
��g h
None
��h l
;
��l m
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. H
)
��H I
]
��I J
Vector3
�� *
m_InfiniteClipOffsetPosition
�� ,
=
��- .
Vector3
��/ 6
.
��6 7
zero
��7 ;
;
��; <
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. K
)
��K L
]
��L M
Vector3
�� -
m_InfiniteClipOffsetEulerAngles
�� /
=
��0 1
Vector3
��2 9
.
��9 :
zero
��: >
;
��> ?
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. D
)
��D E
]
��E F
double
�� &
m_InfiniteClipTimeOffset
�� '
;
��' (
[
�� 	
SerializeField
��	 
,
�� "
FormerlySerializedAs
�� -
(
��- .
$str
��. F
)
��F G
]
��G H
bool
�� (
m_InfiniteClipRemoveOffset
�� '
;
��' (
[
�� 	
SerializeField
��	 
]
�� 
bool
�� '
m_InfiniteClipApplyFootIK
�� &
=
��' (
true
��) -
;
��- .
[
�� 	
SerializeField
��	 
,
�� 
HideInInspector
�� (
]
��( )$
AnimationPlayableAsset
�� 
.
�� 
LoopMode
�� '
mInfiniteClipLoop
��( 9
=
��: ;$
AnimationPlayableAsset
��< R
.
��R S
LoopMode
��S [
.
��[ \
UseSourceAsset
��\ j
;
��j k
[
�� 	
SerializeField
��	 
]
�� 
MatchTargetFields
�� !
m_MatchTargetFields
�� -
=
��. /'
MatchTargetFieldConstants
��0 I
.
��I J
All
��J M
;
��M N
[
�� 	
SerializeField
��	 
]
�� 
Vector3
�� 

m_Position
�� 
=
�� 
Vector3
�� $
.
��$ %
zero
��% )
;
��) *
[
�� 	
SerializeField
��	 
]
�� 
Vector3
�� 
m_EulerAngles
�� 
=
�� 
Vector3
��  '
.
��' (
zero
��( ,
;
��, -
[
�� 	
SerializeField
��	 
]
�� 

AvatarMask
�� #
m_AvatarMask
��$ 0
;
��0 1
[
�� 	
SerializeField
��	 
]
�� 
bool
�� 
m_ApplyAvatarMask
�� /
=
��0 1
true
��2 6
;
��6 7
[
�� 	
SerializeField
��	 
]
�� 
TrackOffset
�� $
m_TrackOffset
��% 2
=
��3 4
TrackOffset
��5 @
.
��@ A#
ApplyTransformOffsets
��A V
;
��V W
[
�� 	
SerializeField
��	 
,
�� 
HideInInspector
�� (
]
��( )
AnimationClip
��* 7
m_InfiniteClip
��8 F
;
��F G
private
�� 
AnimationClip
�� 
m_DefaultPoseClip
�� /
;
��/ 0
private
�� 
AnimationClip
�� $
m_CachedPropertiesClip
�� 4
;
��4 5
private
�� 
int
�� 
m_CachedHash
�� *
;
��* +
private
��  
EditorCurveBinding
�� "
[
��" #
]
��# $
m_CachedBindings
��% 5
;
��5 6%
AnimationOffsetPlayable
�� 
m_ClipOffset
��  ,
;
��, -
private
�� 
Vector3
�� #
m_SceneOffsetPosition
�� -
=
��. /
Vector3
��0 7
.
��7 8
zero
��8 <
;
��< =
private
�� 
Vector3
�� #
m_SceneOffsetRotation
�� -
=
��. /
Vector3
��0 7
.
��7 8
zero
��8 <
;
��< =
private
�� 
bool
�� $
m_HasPreviewComponents
�� +
=
��, -
false
��. 3
;
��3 4
public
�� 
Vector3
�� 
position
�� 
{
�� 	
get
�� 
{
�� 
return
�� 

m_Position
�� #
;
��# $
}
��% &
set
�� 
{
�� 

m_Position
�� 
=
�� 
value
�� $
;
��$ %
}
��& '
}
�� 	
public
�� 

Quaternion
�� 
rotation
�� "
{
�� 	
get
�� 
{
�� 
return
�� 

Quaternion
�� #
.
��# $
Euler
��$ )
(
��) *
m_EulerAngles
��* 7
)
��7 8
;
��8 9
}
��: ;
set
�� 
{
�� 
m_EulerAngles
�� 
=
��  !
value
��" '
.
��' (
eulerAngles
��( 3
;
��3 4
}
��5 6
}
�� 	
public
�� 
Vector3
�� 
eulerAngles
�� "
{
�� 	
get
�� 
{
�� 
return
�� 
m_EulerAngles
�� &
;
��& '
}
��( )
set
�� 
{
�� 
m_EulerAngles
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
[
�� 	
Obsolete
��	 
(
�� 
$str
�� F
,
��F G
true
��H L
)
��L M
]
��M N
public
�� 
bool
�� 
applyOffsets
��  
{
�� 	
get
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
��  !
set
�� 
{
�� 
}
�� 
}
�� 	
public
�� 
TrackOffset
�� 
trackOffset
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
m_TrackOffset
�� &
;
��& '
}
��( )
set
�� 
{
�� 
m_TrackOffset
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
public
�� 
MatchTargetFields
��  
matchTargetFields
��! 2
{
�� 	
get
�� 
{
�� 
return
�� !
m_MatchTargetFields
�� ,
;
��, -
}
��. /
set
�� 
{
�� !
m_MatchTargetFields
�� %
=
��& '
value
��( -
&
��. /'
MatchTargetFieldConstants
��0 I
.
��I J
All
��J M
;
��M N
}
��O P
}
�� 	
public
�� 
AnimationClip
�� 
infiniteClip
�� )
{
�� 	
get
�� 
{
�� 
return
�� 
m_InfiniteClip
�� '
;
��' (
}
��) *
internal
�� 
set
�� 
{
�� 
m_InfiniteClip
�� )
=
��* +
value
��, 1
;
��1 2
}
��3 4
}
�� 	
internal
�� 
bool
�� &
infiniteClipRemoveOffset
�� .
{
�� 	
get
�� 
{
�� 
return
�� (
m_InfiniteClipRemoveOffset
�� 3
;
��3 4
}
��5 6
set
�� 
{
�� (
m_InfiniteClipRemoveOffset
�� ,
=
��- .
value
��/ 4
;
��4 5
}
��6 7
}
�� 	
public
�� 

AvatarMask
�� 

avatarMask
�� $
{
�� 	
get
�� 
{
�� 
return
�� 
m_AvatarMask
�� %
;
��% &
}
��' (
set
�� 
{
�� 
m_AvatarMask
�� 
=
��  
value
��! &
;
��& '
}
��( )
}
�� 	
public
�� 
bool
�� 
applyAvatarMask
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
m_ApplyAvatarMask
�� *
;
��* +
}
��, -
set
�� 
{
�� 
m_ApplyAvatarMask
�� #
=
��$ %
value
��& +
;
��+ ,
}
��- .
}
�� 	
internal
�� 
override
�� 
bool
�� 
CanCompileClips
�� .
(
��. /
)
��/ 0
{
�� 	
return
�� 
!
�� 
muted
�� 
&&
�� 
(
�� 
m_Clips
�� %
.
��% &
Count
��& +
>
��, -
$num
��. /
||
��0 2
(
��3 4
m_InfiniteClip
��4 B
!=
��C E
null
��F J
&&
��K M
!
��N O
m_InfiniteClip
��O ]
.
��] ^
empty
��^ c
)
��c d
)
��d e
;
��e f
}
�� 	
public
�� 
override
�� 
IEnumerable
�� #
<
��# $
PlayableBinding
��$ 3
>
��3 4
outputs
��5 <
{
�� 	
get
�� 
{
�� 
yield
�� 
return
�� &
AnimationPlayableBinding
�� 7
.
��7 8
Create
��8 >
(
��> ?
name
��? C
,
��C D
this
��E I
)
��I J
;
��J K
}
��L M
}
�� 	
public
�� 
bool
�� 

inClipMode
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
clips
�� 
!=
�� !
null
��" &
&&
��' )
clips
��* /
.
��/ 0
Length
��0 6
!=
��7 9
$num
��: ;
;
��; <
}
��= >
}
�� 	
public
�� 
Vector3
�� (
infiniteClipOffsetPosition
�� 1
{
�� 	
get
�� 
{
�� 
return
�� *
m_InfiniteClipOffsetPosition
�� 5
;
��5 6
}
��7 8
set
�� 
{
�� *
m_InfiniteClipOffsetPosition
�� .
=
��/ 0
value
��1 6
;
��6 7
}
��8 9
}
�� 	
public
�� 

Quaternion
�� (
infiniteClipOffsetRotation
�� 4
{
�� 	
get
�� 
{
�� 
return
�� 

Quaternion
�� #
.
��# $
Euler
��$ )
(
��) *-
m_InfiniteClipOffsetEulerAngles
��* I
)
��I J
;
��J K
}
��L M
set
�� 
{
�� -
m_InfiniteClipOffsetEulerAngles
�� 1
=
��2 3
value
��4 9
.
��9 :
eulerAngles
��: E
;
��E F
}
��G H
}
�� 	
public
�� 
Vector3
�� +
infiniteClipOffsetEulerAngles
�� 4
{
�� 	
get
�� 
{
�� 
return
�� -
m_InfiniteClipOffsetEulerAngles
�� 8
;
��8 9
}
��: ;
set
�� 
{
�� -
m_InfiniteClipOffsetEulerAngles
�� 1
=
��2 3
value
��4 9
;
��9 :
}
��; <
}
�� 	
internal
�� 
bool
�� %
infiniteClipApplyFootIK
�� -
{
�� 	
get
�� 
{
�� 
return
�� '
m_InfiniteClipApplyFootIK
�� 2
;
��2 3
}
��4 5
set
�� 
{
�� '
m_InfiniteClipApplyFootIK
�� +
=
��, -
value
��. 3
;
��3 4
}
��5 6
}
�� 	
internal
�� 
double
�� $
infiniteClipTimeOffset
�� .
{
�� 	
get
�� 
{
�� 
return
�� &
m_InfiniteClipTimeOffset
�� 1
;
��1 2
}
��3 4
set
�� 
{
�� &
m_InfiniteClipTimeOffset
�� *
=
��+ ,
value
��- 2
;
��2 3
}
��4 5
}
�� 	
public
�� 
TimelineClip
�� 
.
�� 
ClipExtrapolation
�� -*
infiniteClipPreExtrapolation
��. J
{
�� 	
get
�� 
{
�� 
return
�� ,
m_InfiniteClipPreExtrapolation
�� 7
;
��7 8
}
��9 :
set
�� 
{
�� ,
m_InfiniteClipPreExtrapolation
�� 0
=
��1 2
value
��3 8
;
��8 9
}
��: ;
}
�� 	
public
�� 
TimelineClip
�� 
.
�� 
ClipExtrapolation
�� -+
infiniteClipPostExtrapolation
��. K
{
�� 	
get
�� 
{
�� 
return
�� -
m_InfiniteClipPostExtrapolation
�� 8
;
��8 9
}
��: ;
set
�� 
{
�� -
m_InfiniteClipPostExtrapolation
�� 1
=
��2 3
value
��4 9
;
��9 :
}
��; <
}
�� 	
internal
�� $
AnimationPlayableAsset
�� '
.
��' (
LoopMode
��( 0
infiniteClipLoop
��1 A
{
�� 	
get
�� 
{
�� 
return
�� 
mInfiniteClipLoop
�� *
;
��* +
}
��, -
set
�� 
{
�� 
mInfiniteClipLoop
�� #
=
��$ %
value
��& +
;
��+ ,
}
��- .
}
�� 	
[
�� 	
ContextMenu
��	 
(
�� 
$str
�� $
)
��$ %
]
��% &
void
�� 
ResetOffsets
�� 
(
�� 
)
�� 
{
�� 	

m_Position
�� 
=
�� 
Vector3
��  
.
��  !
zero
��! %
;
��% &
m_EulerAngles
�� 
=
�� 
Vector3
�� #
.
��# $
zero
��$ (
;
��( )
UpdateClipOffsets
�� 
(
�� 
)
�� 
;
��  
}
�� 	
public
�� 
TimelineClip
�� 

CreateClip
�� &
(
��& '
AnimationClip
��' 4
clip
��5 9
)
��9 :
{
�� 	
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
)
�� 
return
�� 
null
�� 
;
�� 
var
�� 
newClip
�� 
=
�� 

CreateClip
�� $
<
��$ %$
AnimationPlayableAsset
��% ;
>
��; <
(
��< =
)
��= >
;
��> ?!
AssignAnimationClip
�� 
(
��  
newClip
��  '
,
��' (
clip
��) -
)
��- .
;
��. /
return
�� 
newClip
�� 
;
�� 
}
�� 	
public
�� 
void
��  
CreateInfiniteClip
�� &
(
��& '
string
��' -
infiniteClipName
��. >
)
��> ?
{
�� 	
if
�� 
(
�� 

inClipMode
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$str��! �
)��� �
;��� �
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
m_InfiniteClip
�� 
!=
�� !
null
��" &
)
��& '
return
�� 
;
�� 
m_InfiniteClip
�� 
=
�� %
TimelineCreateUtilities
�� 4
.
��4 5)
CreateAnimationClipForTrack
��5 P
(
��P Q
string
��Q W
.
��W X
IsNullOrEmpty
��X e
(
��e f
infiniteClipName
��f v
)
��v w
?
��x y(
k_DefaultInfiniteClipName��z �
:��� � 
infiniteClipName��� �
,��� �
this��� �
,��� �
false��� �
)��� �
;��� �
}
�� 	
public
�� 
TimelineClip
�� "
CreateRecordableClip
�� 0
(
��0 1
string
��1 7
animClipName
��8 D
)
��D E
{
�� 	
var
�� 
clip
�� 
=
�� %
TimelineCreateUtilities
�� .
.
��. /)
CreateAnimationClipForTrack
��/ J
(
��J K
string
��K Q
.
��Q R
IsNullOrEmpty
��R _
(
��_ `
animClipName
��` l
)
��l m
?
��n o*
k_DefaultRecordableClipName��p �
:��� �
animClipName��� �
,��� �
this��� �
,��� �
false��� �
)��� �
;��� �
var
�� 
timelineClip
�� 
=
�� 

CreateClip
�� )
(
��) *
clip
��* .
)
��. /
;
��/ 0
timelineClip
�� 
.
�� 
displayName
�� $
=
��% &
animClipName
��' 3
;
��3 4
timelineClip
�� 
.
�� 

recordable
�� #
=
��$ %
true
��& *
;
��* +
timelineClip
�� 
.
�� 
start
�� 
=
��  
$num
��! "
;
��" #
timelineClip
�� 
.
�� 
duration
�� !
=
��" #
$num
��$ %
;
��% &
var
�� 
apa
�� 
=
�� 
timelineClip
�� "
.
��" #
asset
��# (
as
��) +$
AnimationPlayableAsset
��, B
;
��B C
if
�� 
(
�� 
apa
�� 
!=
�� 
null
�� 
)
�� 
apa
�� 
.
�� 
removeStartOffset
�� %
=
��& '
false
��( -
;
��- .
return
�� 
timelineClip
�� 
;
��  
}
�� 	
internal
�� 
Vector3
�� !
sceneOffsetPosition
�� ,
{
�� 	
get
�� 
{
�� 
return
�� #
m_SceneOffsetPosition
�� .
;
��. /
}
��0 1
set
�� 
{
�� #
m_SceneOffsetPosition
�� '
=
��( )
value
��* /
;
��/ 0
}
��1 2
}
�� 	
internal
�� 
Vector3
�� !
sceneOffsetRotation
�� ,
{
�� 	
get
�� 
{
�� 
return
�� #
m_SceneOffsetRotation
�� .
;
��. /
}
��0 1
set
�� 
{
�� #
m_SceneOffsetRotation
�� '
=
��( )
value
��* /
;
��/ 0
}
��1 2
}
�� 	
internal
�� 
bool
�� "
hasPreviewComponents
�� *
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� $
m_HasPreviewComponents
�� *
)
��* +
return
�� 
true
�� 
;
��  
var
�� 
parentTrack
�� 
=
��  !
parent
��" (
as
��) +
AnimationTrack
��, :
;
��: ;
if
�� 
(
�� 
parentTrack
�� 
!=
��  "
null
��# '
)
��' (
{
�� 
return
�� 
parentTrack
�� &
.
��& '"
hasPreviewComponents
��' ;
;
��; <
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
	protected
�� 
override
�� 
void
�� 
OnCreateClip
��  ,
(
��, -
TimelineClip
��- 9
clip
��: >
)
��> ?
{
�� 	
var
�� 
extrapolation
�� 
=
�� 
TimelineClip
��  ,
.
��, -
ClipExtrapolation
��- >
.
��> ?
None
��? C
;
��C D
if
�� 
(
�� 
!
�� 

isSubTrack
�� 
)
�� 
extrapolation
�� 
=
�� 
TimelineClip
��  ,
.
��, -
ClipExtrapolation
��- >
.
��> ?
Hold
��? C
;
��C D
clip
�� 
.
�� "
preExtrapolationMode
�� %
=
��& '
extrapolation
��( 5
;
��5 6
clip
�� 
.
�� #
postExtrapolationMode
�� &
=
��' (
extrapolation
��) 6
;
��6 7
}
�� 	
	protected
�� 
internal
�� 
override
�� #
int
��$ ' 
CalculateItemsHash
��( :
(
��: ;
)
��; <
{
�� 	
return
�� "
GetAnimationClipHash
�� '
(
��' (
m_InfiniteClip
��( 6
)
��6 7
.
��7 8
CombineHash
��8 C
(
��C D
base
��D H
.
��H I 
CalculateItemsHash
��I [
(
��[ \
)
��\ ]
)
��] ^
;
��^ _
}
�� 	
internal
�� 
void
�� 
UpdateClipOffsets
�� '
(
��' (
)
��( )
{
�� 	
if
�� 
(
�� 
m_ClipOffset
�� 
.
�� 
IsValid
�� $
(
��$ %
)
��% &
)
��& '
{
�� 
m_ClipOffset
�� 
.
�� 
SetPosition
�� (
(
��( )
position
��) 1
)
��1 2
;
��2 3
m_ClipOffset
�� 
.
�� 
SetRotation
�� (
(
��( )
rotation
��) 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
Playable
�� "
CompileTrackPlayable
�� %
(
��% &
PlayableGraph
��& 3
graph
��4 9
,
��9 :
AnimationTrack
��; I
track
��J O
,
��O P

GameObject
��Q [
go
��\ ^
,
��^ _
IntervalTree
��` l
<
��l m
RuntimeElement
��m {
>
��{ |
tree��} �
,��� �!
AppliedOffsetMode��� �
mode��� �
)��� �
{
�� 	
var
�� 
mixer
�� 
=
�� $
AnimationMixerPlayable
�� .
.
��. /
Create
��/ 5
(
��5 6
graph
��6 ;
,
��; <
track
��= B
.
��B C
clips
��C H
.
��H I
Length
��I O
)
��O P
;
��P Q
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
�� 
track
��  %
.
��% &
clips
��& +
.
��+ ,
Length
��, 2
;
��2 3
i
��4 5
++
��5 7
)
��7 8
{
�� 
var
�� 
c
�� 
=
�� 
track
�� 
.
�� 
clips
�� #
[
��# $
i
��$ %
]
��% &
;
��& '
var
�� 
asset
�� 
=
�� 
c
�� 
.
�� 
asset
�� #
as
��$ &
PlayableAsset
��' 4
;
��4 5
if
�� 
(
�� 
asset
�� 
==
�� 
null
�� !
)
��! "
continue
�� 
;
�� 
var
�� 
animationAsset
�� "
=
��# $
asset
��% *
as
��+ -$
AnimationPlayableAsset
��. D
;
��D E
if
�� 
(
�� 
animationAsset
�� "
!=
��# %
null
��& *
)
��* +
animationAsset
�� "
.
��" #
appliedOffsetMode
��# 4
=
��5 6
mode
��7 ;
;
��; <
var
�� 
source
�� 
=
�� 
asset
�� "
.
��" #
CreatePlayable
��# 1
(
��1 2
graph
��2 7
,
��7 8
go
��9 ;
)
��; <
;
��< =
if
�� 
(
�� 
source
�� 
.
�� 
IsValid
�� "
(
��" #
)
��# $
)
��$ %
{
�� 
var
�� 
clip
�� 
=
�� 
new
�� "
RuntimeClip
��# .
(
��. /
c
��/ 0
,
��0 1
source
��2 8
,
��8 9
mixer
��: ?
)
��? @
;
��@ A
tree
�� 
.
�� 
Add
�� 
(
�� 
clip
�� !
)
��! "
;
��" #
graph
�� 
.
�� 
Connect
�� !
(
��! "
source
��" (
,
��( )
$num
��* +
,
��+ ,
mixer
��- 2
,
��2 3
i
��4 5
)
��5 6
;
��6 7
mixer
�� 
.
�� 
SetInputWeight
�� (
(
��( )
i
��) *
,
��* +
$num
��, 0
)
��0 1
;
��1 2
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 
track
�� 
.
�� #
AnimatesRootTransform
�� ,
(
��, -
)
��- .
)
��. /
return
�� 
mixer
�� 
;
�� 
return
�� 
ApplyTrackOffset
�� #
(
��# $
graph
��$ )
,
��) *
mixer
��+ 0
,
��0 1
go
��2 4
,
��4 5
mode
��6 :
)
��: ;
;
��; <
}
�� 	
Playable
�� 

ILayerable
�� 
.
�� 
CreateLayerMixer
�� ,
(
��, -
PlayableGraph
��- :
graph
��; @
,
��@ A

GameObject
��B L
go
��M O
,
��O P
int
��Q T

inputCount
��U _
)
��_ `
{
�� 	
return
�� 
Playable
�� 
.
�� 
Null
��  
;
��  !
}
�� 	
internal
�� 
override
�� 
Playable
�� "&
CreateMixerPlayableGraph
��# ;
(
��; <
PlayableGraph
��< I
graph
��J O
,
��O P

GameObject
��Q [
go
��\ ^
,
��^ _
IntervalTree
��` l
<
��l m
RuntimeElement
��m {
>
��{ |
tree��} �
)��� �
{
�� 	
if
�� 
(
�� 

isSubTrack
�� 
)
�� 
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 ~
)
��~ 
;�� �
List
�� 
<
�� 
AnimationTrack
�� 
>
��  
flattenTracks
��! .
=
��/ 0
new
��1 4
List
��5 9
<
��9 :
AnimationTrack
��: H
>
��H I
(
��I J
)
��J K
;
��K L
if
�� 
(
�� 
CanCompileClips
�� 
(
��  
)
��  !
)
��! "
flattenTracks
�� 
.
�� 
Add
�� !
(
��! "
this
��" &
)
��& '
;
��' (
var
�� 
genericRoot
�� 
=
��  
GetGenericRootNode
�� 0
(
��0 1
go
��1 3
)
��3 4
;
��4 5
var
�� )
animatesRootTransformNoMask
�� +
=
��, -#
AnimatesRootTransform
��. C
(
��C D
)
��D E
;
��E F
var
�� #
animatesRootTransform
�� %
=
��& ')
animatesRootTransformNoMask
��( C
&&
��D F
!
��G H+
IsRootTransformDisabledByMask
��H e
(
��e f
go
��f h
,
��h i
genericRoot
��j u
)
��u v
;
��v w
foreach
�� 
(
�� 
var
�� 
subTrack
�� !
in
��" $
GetChildTracks
��% 3
(
��3 4
)
��4 5
)
��5 6
{
�� 
var
�� 
child
�� 
=
�� 
subTrack
�� $
as
��% '
AnimationTrack
��( 6
;
��6 7
if
�� 
(
�� 
child
�� 
!=
�� 
null
�� !
&&
��" $
child
��% *
.
��* +
CanCompileClips
��+ :
(
��: ;
)
��; <
)
��< =
{
�� 
var
�� 
childAnimatesRoot
�� )
=
��* +
child
��, 1
.
��1 2#
AnimatesRootTransform
��2 G
(
��G H
)
��H I
;
��I J)
animatesRootTransformNoMask
�� /
|=
��0 2
child
��3 8
.
��8 9#
AnimatesRootTransform
��9 N
(
��N O
)
��O P
;
��P Q#
animatesRootTransform
�� )
|=
��* ,
(
��- .
childAnimatesRoot
��. ?
&&
��@ B
!
��C D
child
��D I
.
��I J+
IsRootTransformDisabledByMask
��J g
(
��g h
go
��h j
,
��j k
genericRoot
��l w
)
��w x
)
��x y
;
��y z
flattenTracks
�� !
.
��! "
Add
��" %
(
��% &
child
��& +
)
��+ ,
;
��, -
}
�� 
}
�� 
AppliedOffsetMode
�� 
mode
�� "
=
��# $
GetOffsetMode
��% 2
(
��2 3
go
��3 5
,
��5 6#
animatesRootTransform
��7 L
)
��L M
;
��M N
int
�� 
defaultBlendCount
�� !
=
��" #"
GetDefaultBlendCount
��$ 8
(
��8 9
)
��9 :
;
��: ;
var
�� 

layerMixer
�� 
=
�� 
CreateGroupMixer
�� -
(
��- .
graph
��. 3
,
��3 4
go
��5 7
,
��7 8
flattenTracks
��9 F
.
��F G
Count
��G L
+
��M N
defaultBlendCount
��O `
)
��` a
;
��a b
for
�� 
(
�� 
int
�� 
c
�� 
=
�� 
$num
�� 
;
�� 
c
�� 
<
�� 
flattenTracks
��  -
.
��- .
Count
��. 3
;
��3 4
c
��5 6
++
��6 8
)
��8 9
{
�� 
int
�� 

blendIndex
�� 
=
��  
c
��! "
+
��# $
defaultBlendCount
��% 6
;
��6 7
var
�� 
	childMode
�� 
=
�� 
mode
��  $
;
��$ %
if
�� 
(
�� 
mode
�� 
!=
�� 
AppliedOffsetMode
�� -
.
��- .
NoRootTransform
��. =
&&
��> @
flattenTracks
��A N
[
��N O
c
��O P
]
��P Q
.
��Q R+
IsRootTransformDisabledByMask
��R o
(
��o p
go
��p r
,
��r s
genericRoot
��t 
)�� �
)��� �
	childMode
�� 
=
�� 
AppliedOffsetMode
��  1
.
��1 2
NoRootTransform
��2 A
;
��A B
var
�� #
compiledTrackPlayable
�� )
=
��* +
flattenTracks
��, 9
[
��9 :
c
��: ;
]
��; <
.
��< =

inClipMode
��= G
?
��H I"
CompileTrackPlayable
�� (
(
��( )
graph
��) .
,
��. /
flattenTracks
��0 =
[
��= >
c
��> ?
]
��? @
,
��@ A
go
��B D
,
��D E
tree
��F J
,
��J K
	childMode
��L U
)
��U V
:
��W X
flattenTracks
�� !
[
��! "
c
��" #
]
��# $
.
��$ %)
CreateInfiniteTrackPlayable
��% @
(
��@ A
graph
��A F
,
��F G
go
��H J
,
��J K
tree
��L P
,
��P Q
	childMode
��R [
)
��[ \
;
��\ ]
graph
�� 
.
�� 
Connect
�� 
(
�� #
compiledTrackPlayable
�� 3
,
��3 4
$num
��5 6
,
��6 7

layerMixer
��8 B
,
��B C

blendIndex
��D N
)
��N O
;
��O P

layerMixer
�� 
.
�� 
SetInputWeight
�� )
(
��) *

blendIndex
��* 4
,
��4 5
flattenTracks
��6 C
[
��C D
c
��D E
]
��E F
.
��F G

inClipMode
��G Q
?
��R S
$num
��T U
:
��V W
$num
��X Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
flattenTracks
�� !
[
��! "
c
��" #
]
��# $
.
��$ %
applyAvatarMask
��% 4
&&
��5 7
flattenTracks
��8 E
[
��E F
c
��F G
]
��G H
.
��H I

avatarMask
��I S
!=
��T V
null
��W [
)
��[ \
{
�� 

layerMixer
�� 
.
�� (
SetLayerMaskFromAvatarMask
�� 9
(
��9 :
(
��: ;
uint
��; ?
)
��? @

blendIndex
��@ J
,
��J K
flattenTracks
��L Y
[
��Y Z
c
��Z [
]
��[ \
.
��\ ]

avatarMask
��] g
)
��g h
;
��h i
}
�� 
}
�� 
var
�� %
requiresMotionXPlayable
�� '
=
��( )%
RequiresMotionXPlayable
��* A
(
��A B
mode
��B F
,
��F G
go
��H J
)
��J K
;
��K L%
requiresMotionXPlayable
�� #
|=
��$ &
(
��' (
defaultBlendCount
��( 9
>
��: ;
$num
��< =
&&
��> @%
RequiresMotionXPlayable
��A X
(
��X Y
GetOffsetMode
��Y f
(
��f g
go
��g i
,
��i j*
animatesRootTransformNoMask��k �
)��� �
,��� �
go��� �
)��� �
)��� �
;��� � 
AttachDefaultBlend
�� 
(
�� 
graph
�� $
,
��$ %

layerMixer
��& 0
,
��0 1%
requiresMotionXPlayable
��2 I
)
��I J
;
��J K
Playable
�� 
mixer
�� 
=
�� 

layerMixer
�� '
;
��' (
if
�� 
(
�� %
requiresMotionXPlayable
�� '
)
��' (
{
�� 
var
�� 
motionXToDelta
�� "
=
��# $-
AnimationMotionXToDeltaPlayable
��% D
.
��D E
Create
��E K
(
��K L
graph
��L Q
)
��Q R
;
��R S
graph
�� 
.
�� 
Connect
�� 
(
�� 
mixer
�� #
,
��# $
$num
��% &
,
��& '
motionXToDelta
��( 6
,
��6 7
$num
��8 9
)
��9 :
;
��: ;
motionXToDelta
�� 
.
�� 
SetInputWeight
�� -
(
��- .
$num
��. /
,
��/ 0
$num
��1 5
)
��5 6
;
��6 7
motionXToDelta
�� 
.
�� 
SetAbsoluteMotion
�� 0
(
��0 1 
UsesAbsoluteMotion
��1 C
(
��C D
mode
��D H
)
��H I
)
��I J
;
��J K
mixer
�� 
=
�� 
(
�� 
Playable
�� !
)
��! "
motionXToDelta
��" 0
;
��0 1
}
�� 
if
�� 
(
�� 
!
�� 
Application
�� 
.
�� 
	isPlaying
�� &
)
��& '
{
�� 
var
�� 
animator
�� 
=
�� 

GetBinding
�� )
(
��) *
go
��* ,
!=
��- /
null
��0 4
?
��5 6
go
��7 9
.
��9 :
GetComponent
��: F
<
��F G
PlayableDirector
��G W
>
��W X
(
��X Y
)
��Y Z
:
��[ \
null
��] a
)
��a b
;
��b c
if
�� 
(
�� 
animator
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 

GameObject
�� 
targetGO
�� '
=
��( )
animator
��* 2
.
��2 3

gameObject
��3 =
;
��= >%
IAnimationWindowPreview
�� +
[
��+ ,
]
��, -
previewComponents
��. ?
=
��@ A
targetGO
��B J
.
��J K
GetComponents
��K X
<
��X Y%
IAnimationWindowPreview
��Y p
>
��p q
(
��q r
)
��r s
;
��s t$
m_HasPreviewComponents
�� *
=
��+ ,
previewComponents
��- >
.
��> ?
Length
��? E
>
��F G
$num
��H I
;
��I J
if
�� 
(
�� $
m_HasPreviewComponents
�� .
)
��. /
{
�� 
foreach
�� 
(
��  !
var
��! $
	component
��% .
in
��/ 1
previewComponents
��2 C
)
��C D
{
�� 
mixer
�� !
=
��" #
	component
��$ -
.
��- .
BuildPreviewGraph
��. ?
(
��? @
graph
��@ E
,
��E F
mixer
��G L
)
��L M
;
��M N
}
�� 
}
�� 
}
�� 
}
�� 
return
�� 
mixer
�� 
;
�� 
}
�� 	
private
�� 
int
�� "
GetDefaultBlendCount
�� (
(
��( )
)
��) *
{
�� 	
if
�� 
(
�� 
Application
�� 
.
�� 
	isPlaying
�� %
)
��% &
return
�� 
$num
�� 
;
�� 
return
�� 
(
�� 
(
�� $
m_CachedPropertiesClip
�� +
!=
��, .
null
��/ 3
)
��3 4
?
��5 6
$num
��7 8
:
��9 :
$num
��; <
)
��< =
+
��> ?
(
��@ A
(
��A B
m_DefaultPoseClip
��B S
!=
��T V
null
��W [
)
��[ \
?
��] ^
$num
��_ `
:
��a b
$num
��c d
)
��d e
;
��e f
}
�� 	
private
�� 
void
��  
AttachDefaultBlend
�� '
(
��' (
PlayableGraph
��( 5
graph
��6 ;
,
��; <)
AnimationLayerMixerPlayable
��= X
mixer
��Y ^
,
��^ _
bool
��` d
requireOffset
��e r
)
��r s
{
�� 	
if
�� 
(
�� 
Application
�� 
.
�� 
	isPlaying
�� %
)
��% &
return
�� 
;
�� 
int
�� 

mixerInput
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� $
m_CachedPropertiesClip
�� &
)
��& '
{
�� 
var
�� "
cachedPropertiesClip
�� (
=
��) *#
AnimationClipPlayable
��+ @
.
��@ A
Create
��A G
(
��G H
graph
��H M
,
��M N$
m_CachedPropertiesClip
��O e
)
��e f
;
��f g"
cachedPropertiesClip
�� $
.
��$ %
SetApplyFootIK
��% 3
(
��3 4
false
��4 9
)
��9 :
;
��: ;
var
�� 
defaults
�� 
=
�� 
(
��  
Playable
��  (
)
��( )"
cachedPropertiesClip
��) =
;
��= >
if
�� 
(
�� 
requireOffset
�� !
)
��! "
defaults
�� 
=
�� "
AttachOffsetPlayable
�� 3
(
��3 4
graph
��4 9
,
��9 :
defaults
��; C
,
��C D#
m_SceneOffsetPosition
��E Z
,
��Z [

Quaternion
��\ f
.
��f g
Euler
��g l
(
��l m$
m_SceneOffsetRotation��m �
)��� �
)��� �
;��� �
graph
�� 
.
�� 
Connect
�� 
(
�� 
defaults
�� &
,
��& '
$num
��( )
,
��) *
mixer
��+ 0
,
��0 1

mixerInput
��2 <
)
��< =
;
��= >
mixer
�� 
.
�� 
SetInputWeight
�� $
(
��$ %

mixerInput
��% /
,
��/ 0
$num
��1 5
)
��5 6
;
��6 7

mixerInput
�� 
++
�� 
;
�� 
}
�� 
if
�� 
(
�� 
m_DefaultPoseClip
�� !
)
��! "
{
�� 
var
�� 
defaultPose
�� 
=
��  !#
AnimationClipPlayable
��" 7
.
��7 8
Create
��8 >
(
��> ?
graph
��? D
,
��D E
m_DefaultPoseClip
��F W
)
��W X
;
��X Y
defaultPose
�� 
.
�� 
SetApplyFootIK
�� *
(
��* +
false
��+ 0
)
��0 1
;
��1 2
var
�� 
blendDefault
��  
=
��! "
(
��# $
Playable
��$ ,
)
��, -
defaultPose
��- 8
;
��8 9
if
�� 
(
�� 
requireOffset
�� !
)
��! "
blendDefault
��  
=
��! ""
AttachOffsetPlayable
��# 7
(
��7 8
graph
��8 =
,
��= >
blendDefault
��? K
,
��K L#
m_SceneOffsetPosition
��M b
,
��b c

Quaternion
��d n
.
��n o
Euler
��o t
(
��t u$
m_SceneOffsetRotation��u �
)��� �
)��� �
;��� �
graph
�� 
.
�� 
Connect
�� 
(
�� 
blendDefault
�� *
,
��* +
$num
��, -
,
��- .
mixer
��/ 4
,
��4 5

mixerInput
��6 @
)
��@ A
;
��A B
mixer
�� 
.
�� 
SetInputWeight
�� $
(
��$ %

mixerInput
��% /
,
��/ 0
$num
��1 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
private
�� 
Playable
�� "
AttachOffsetPlayable
�� -
(
��- .
PlayableGraph
��. ;
graph
��< A
,
��A B
Playable
��C K
playable
��L T
,
��T U
Vector3
��V ]
pos
��^ a
,
��a b

Quaternion
��c m
rot
��n q
)
��q r
{
�� 	
var
�� 
offsetPlayable
�� 
=
��  %
AnimationOffsetPlayable
��! 8
.
��8 9
Create
��9 ?
(
��? @
graph
��@ E
,
��E F
pos
��G J
,
��J K
rot
��L O
,
��O P
$num
��Q R
)
��R S
;
��S T
offsetPlayable
�� 
.
�� 
SetInputWeight
�� )
(
��) *
$num
��* +
,
��+ ,
$num
��- 1
)
��1 2
;
��2 3
graph
�� 
.
�� 
Connect
�� 
(
�� 
playable
�� "
,
��" #
$num
��$ %
,
��% &
offsetPlayable
��' 5
,
��5 6
$num
��7 8
)
��8 9
;
��9 :
return
�� 
offsetPlayable
�� !
;
��! "
}
�� 	
private
�� 
static
�� 
string
�� '
k_DefaultHumanoidClipPath
�� 7
=
��8 9
$str��: �
;��� �
private
�� 
static
�� 
AnimationClip
�� $#
s_DefaultHumanoidClip
��% :
=
��; <
null
��= A
;
��A B
AnimationClip
�� $
GetDefaultHumanoidClip
�� ,
(
��, -
)
��- .
{
�� 	
if
�� 
(
�� #
s_DefaultHumanoidClip
�� %
==
��& (
null
��) -
)
��- .
{
�� #
s_DefaultHumanoidClip
�� %
=
��& '
AssetDatabase
��( 5
.
��5 6
LoadAssetAtPath
��6 E
<
��E F
AnimationClip
��F S
>
��S T
(
��T U'
k_DefaultHumanoidClipPath
��U n
)
��n o
;
��o p
if
�� 
(
�� #
s_DefaultHumanoidClip
�� )
==
��* ,
null
��- 1
)
��1 2
Debug
�� 
.
�� 
LogError
�� "
(
��" #
$str
��# `
)
��` a
;
��a b
}
�� 
return
�� #
s_DefaultHumanoidClip
�� (
;
��( )
}
�� 	
bool
�� %
RequiresMotionXPlayable
�� $
(
��$ %
AppliedOffsetMode
��% 6
mode
��7 ;
,
��; <

GameObject
��= G

gameObject
��H R
)
��R S
{
�� 	
if
�� 
(
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
NoRootTransform
��* 9
)
��9 :
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
SceneOffsetLegacy
��* ;
)
��; <
{
�� 
var
�� 
animator
�� 
=
�� 

GetBinding
�� )
(
��) *

gameObject
��* 4
!=
��5 7
null
��8 <
?
��= >

gameObject
��? I
.
��I J
GetComponent
��J V
<
��V W
PlayableDirector
��W g
>
��g h
(
��h i
)
��i j
:
��k l
null
��m q
)
��q r
;
��r s
return
�� 
animator
�� 
!=
��  "
null
��# '
&&
��( *
animator
��+ 3
.
��3 4
hasRootMotion
��4 A
;
��A B
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
static
�� 
bool
��  
UsesAbsoluteMotion
�� &
(
��& '
AppliedOffsetMode
��' 8
mode
��9 =
)
��= >
{
�� 	
if
�� 
(
�� 
!
�� 
Application
�� 
.
�� 
	isPlaying
�� &
)
��& '
return
�� 
true
�� 
;
�� 
return
�� 
mode
�� 
!=
�� 
AppliedOffsetMode
�� ,
.
��, -
SceneOffset
��- 8
&&
��9 ;
mode
�� 
!=
�� 
AppliedOffsetMode
�� )
.
��) *
SceneOffsetLegacy
��* ;
;
��; <
}
�� 	
bool
�� 
HasController
�� 
(
�� 

GameObject
�� %

gameObject
��& 0
)
��0 1
{
�� 	
var
�� 
animator
�� 
=
�� 

GetBinding
�� %
(
��% &

gameObject
��& 0
!=
��1 3
null
��4 8
?
��9 :

gameObject
��; E
.
��E F
GetComponent
��F R
<
��R S
PlayableDirector
��S c
>
��c d
(
��d e
)
��e f
:
��g h
null
��i m
)
��m n
;
��n o
return
�� 
animator
�� 
!=
�� 
null
�� #
&&
��$ &
animator
��' /
.
��/ 0'
runtimeAnimatorController
��0 I
!=
��J L
null
��M Q
;
��Q R
}
�� 	
internal
�� 
Animator
�� 

GetBinding
�� $
(
��$ %
PlayableDirector
��% 5
director
��6 >
)
��> ?
{
�� 	
if
�� 
(
�� 
director
�� 
==
�� 
null
��  
)
��  !
return
�� 
null
�� 
;
�� 
UnityEngine
�� 
.
�� 
Object
�� 
key
�� "
=
��# $
this
��% )
;
��) *
if
�� 
(
�� 

isSubTrack
�� 
)
�� 
key
�� 
=
�� 
parent
�� 
;
�� 
UnityEngine
�� 
.
�� 
Object
�� 
binding
�� &
=
��' (
null
��) -
;
��- .
if
�� 
(
�� 
director
�� 
!=
�� 
null
��  
)
��  !
binding
�� 
=
�� 
director
�� "
.
��" #
GetGenericBinding
��# 4
(
��4 5
key
��5 8
)
��8 9
;
��9 :
Animator
�� 
animator
�� 
=
�� 
null
��  $
;
��$ %
if
�� 
(
�� 
binding
�� 
!=
�� 
null
�� 
)
��  
{
�� 
animator
�� 
=
�� 
binding
�� "
as
��# %
Animator
��& .
;
��. /
var
�� 

gameObject
�� 
=
��  
binding
��! (
as
��) +

GameObject
��, 6
;
��6 7
if
�� 
(
�� 
animator
�� 
==
�� 
null
��  $
&&
��% '

gameObject
��( 2
!=
��3 5
null
��6 :
)
��: ;
animator
�� 
=
�� 

gameObject
�� )
.
��) *
GetComponent
��* 6
<
��6 7
Animator
��7 ?
>
��? @
(
��@ A
)
��A B
;
��B C
}
�� 
return
�� 
animator
�� 
;
�� 
}
�� 	
static
�� )
AnimationLayerMixerPlayable
�� *
CreateGroupMixer
��+ ;
(
��; <
PlayableGraph
��< I
graph
��J O
,
��O P

GameObject
��Q [
go
��\ ^
,
��^ _
int
��` c

inputCount
��d n
)
��n o
{
�� 	
return
�� )
AnimationLayerMixerPlayable
�� .
.
��. /
Create
��/ 5
(
��5 6
graph
��6 ;
,
��; <

inputCount
��= G
)
��G H
;
��H I
}
�� 	
Playable
�� )
CreateInfiniteTrackPlayable
�� ,
(
��, -
PlayableGraph
��- :
graph
��; @
,
��@ A

GameObject
��B L
go
��M O
,
��O P
IntervalTree
��Q ]
<
��] ^
RuntimeElement
��^ l
>
��l m
tree
��n r
,
��r s 
AppliedOffsetMode��t �
mode��� �
)��� �
{
�� 	
if
�� 
(
�� 
m_InfiniteClip
�� 
==
�� !
null
��" &
)
��& '
return
�� 
Playable
�� 
.
��  
Null
��  $
;
��$ %
var
�� 
mixer
�� 
=
�� $
AnimationMixerPlayable
�� .
.
��. /
Create
��/ 5
(
��5 6
graph
��6 ;
,
��; <
$num
��= >
)
��> ?
;
��? @
var
�� 
playable
�� 
=
�� $
AnimationPlayableAsset
�� 1
.
��1 2
CreatePlayable
��2 @
(
��@ A
graph
��A F
,
��F G
m_InfiniteClip
��H V
,
��V W*
m_InfiniteClipOffsetPosition
��X t
,
��t u.
m_InfiniteClipOffsetEulerAngles��v �
,��� �
false��� �
,��� �
mode��� �
,��� �'
infiniteClipApplyFootIK��� �
,��� �&
AnimationPlayableAsset��� �
.��� �
LoopMode��� �
.��� �
Off��� �
)��� �
;��� �
if
�� 
(
�� 
playable
�� 
.
�� 
IsValid
��  
(
��  !
)
��! "
)
��" #
{
�� 
tree
�� 
.
�� 
Add
�� 
(
�� 
new
�� !
InfiniteRuntimeClip
�� 0
(
��0 1
playable
��1 9
)
��9 :
)
��: ;
;
��; <
graph
�� 
.
�� 
Connect
�� 
(
�� 
playable
�� &
,
��& '
$num
��( )
,
��) *
mixer
��+ 0
,
��0 1
$num
��2 3
)
��3 4
;
��4 5
mixer
�� 
.
�� 
SetInputWeight
�� $
(
��$ %
$num
��% &
,
��& '
$num
��( ,
)
��, -
;
��- .
}
�� 
if
�� 
(
�� 
!
�� #
AnimatesRootTransform
�� &
(
��& '
)
��' (
)
��( )
return
�� 
mixer
�� 
;
�� 
var
�� 
	rootTrack
�� 
=
�� 

isSubTrack
�� &
?
��' (
(
��) *
AnimationTrack
��* 8
)
��8 9
parent
��9 ?
:
��@ A
this
��B F
;
��F G
return
�� 
	rootTrack
�� 
.
�� 
ApplyTrackOffset
�� -
(
��- .
graph
��. 3
,
��3 4
mixer
��5 :
,
��: ;
go
��< >
,
��> ?
mode
��@ D
)
��D E
;
��E F
}
�� 	
Playable
�� 
ApplyTrackOffset
�� !
(
��! "
PlayableGraph
��" /
graph
��0 5
,
��5 6
Playable
��7 ?
root
��@ D
,
��D E

GameObject
��F P
go
��Q S
,
��S T
AppliedOffsetMode
��U f
mode
��g k
)
��k l
{
�� 	
m_ClipOffset
�� 
=
�� %
AnimationOffsetPlayable
�� 2
.
��2 3
Null
��3 7
;
��7 8
if
�� 
(
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
SceneOffsetLegacy
��* ;
||
��< >
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
SceneOffset
��* 5
||
��6 8
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
NoRootTransform
��* 9
)
�� 
return
�� 
root
�� 
;
�� 
var
�� 
pos
�� 
=
�� 
position
�� 
;
�� 
var
�� 
rot
�� 
=
�� 
rotation
�� 
;
�� 
if
�� 
(
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
SceneOffsetEditor
��* ;
)
��; <
{
�� 
pos
�� 
=
�� #
m_SceneOffsetPosition
�� +
;
��+ ,
rot
�� 
=
�� 

Quaternion
��  
.
��  !
Euler
��! &
(
��& '#
m_SceneOffsetRotation
��' <
)
��< =
;
��= >
}
�� 
var
�� 
offsetPlayable
�� 
=
��  %
AnimationOffsetPlayable
��! 8
.
��8 9
Create
��9 ?
(
��? @
graph
��@ E
,
��E F
pos
��G J
,
��J K
rot
��L O
,
��O P
$num
��Q R
)
��R S
;
��S T
m_ClipOffset
�� 
=
�� 
offsetPlayable
�� )
;
��) *
graph
�� 
.
�� 
Connect
�� 
(
�� 
root
�� 
,
�� 
$num
��  !
,
��! "
offsetPlayable
��# 1
,
��1 2
$num
��3 4
)
��4 5
;
��5 6
offsetPlayable
�� 
.
�� 
SetInputWeight
�� )
(
��) *
$num
��* +
,
��+ ,
$num
��- .
)
��. /
;
��/ 0
return
�� 
offsetPlayable
�� !
;
��! "
}
�� 	
internal
�� 
override
�� 
void
�� 
GetEvaluationTime
�� 0
(
��0 1
out
��1 4
double
��5 ;
outStart
��< D
,
��D E
out
��F I
double
��J P
outDuration
��Q \
)
��\ ]
{
�� 	
if
�� 
(
�� 

inClipMode
�� 
)
�� 
{
�� 
base
�� 
.
�� 
GetEvaluationTime
�� &
(
��& '
out
��' *
outStart
��+ 3
,
��3 4
out
��5 8
outDuration
��9 D
)
��D E
;
��E F
}
�� 
else
�� 
{
�� 
outStart
�� 
=
�� 
$num
�� 
;
�� 
outDuration
�� 
=
�� 
TimelineClip
�� *
.
��* +
kMaxTimeValue
��+ 8
;
��8 9
}
�� 
}
�� 	
internal
�� 
override
�� 
void
�� 
GetSequenceTime
�� .
(
��. /
out
��/ 2
double
��3 9
outStart
��: B
,
��B C
out
��D G
double
��H N
outDuration
��O Z
)
��Z [
{
�� 	
if
�� 
(
�� 

inClipMode
�� 
)
�� 
{
�� 
base
�� 
.
�� 
GetSequenceTime
�� $
(
��$ %
out
��% (
outStart
��) 1
,
��1 2
out
��3 6
outDuration
��7 B
)
��B C
;
��C D
}
�� 
else
�� 
{
�� 
outStart
�� 
=
�� 
$num
�� 
;
�� 
outDuration
�� 
=
�� 
Math
�� "
.
��" #
Max
��# &
(
��& '%
GetNotificationDuration
��' >
(
��> ?
)
��? @
,
��@ A
TimeUtility
��B M
.
��M N$
GetAnimationClipLength
��N d
(
��d e
m_InfiniteClip
��e s
)
��s t
)
��t u
;
��u v
}
�� 
}
�� 	
void
�� !
AssignAnimationClip
��  
(
��  !
TimelineClip
��! -
clip
��. 2
,
��2 3
AnimationClip
��4 A
animClip
��B J
)
��J K
{
�� 	
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
||
�� 
animClip
��  (
==
��) +
null
��, 0
)
��0 1
return
�� 
;
�� 
if
�� 
(
�� 
animClip
�� 
.
�� 
legacy
�� 
)
��  
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 ^
)
��^ _
;
��_ `$
AnimationPlayableAsset
�� "
asset
��# (
=
��) *
clip
��+ /
.
��/ 0
asset
��0 5
as
��6 8$
AnimationPlayableAsset
��9 O
;
��O P
if
�� 
(
�� 
asset
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
asset
�� 
.
�� 
clip
�� 
=
�� 
animClip
�� %
;
��% &
asset
�� 
.
�� 
name
�� 
=
�� 
animClip
�� %
.
��% &
name
��& *
;
��* +
var
�� 
duration
�� 
=
�� 
asset
�� $
.
��$ %
duration
��% -
;
��- .
if
�� 
(
�� 
!
�� 
double
�� 
.
�� 

IsInfinity
�� &
(
��& '
duration
��' /
)
��/ 0
&&
��1 3
duration
��4 <
>=
��= ?
TimelineClip
��@ L
.
��L M
kMinDuration
��M Y
&&
��Z \
duration
��] e
<
��f g
TimelineClip
��h t
.
��t u
kMaxTimeValue��u �
)��� �
clip
�� 
.
�� 
duration
�� !
=
��" #
duration
��$ ,
;
��, -
}
�� 
clip
�� 
.
�� 
displayName
�� 
=
�� 
animClip
�� '
.
��' (
name
��( ,
;
��, -
}
�� 	
public
�� 
override
�� 
void
�� 
GatherProperties
�� -
(
��- .
PlayableDirector
��. >
director
��? G
,
��G H 
IPropertyCollector
��I [
driver
��\ b
)
��b c
{
�� 	#
m_SceneOffsetPosition
�� !
=
��" #
Vector3
��$ +
.
��+ ,
zero
��, 0
;
��0 1#
m_SceneOffsetRotation
�� !
=
��" #
Vector3
��$ +
.
��+ ,
zero
��, 0
;
��0 1
var
�� 
animator
�� 
=
�� 

GetBinding
�� %
(
��% &
director
��& .
)
��. /
;
��/ 0
if
�� 
(
�� 
animator
�� 
==
�� 
null
��  
)
��  !
return
�� 
;
�� 
var
�� 
	animClips
�� 
=
�� 
new
�� 
List
��  $
<
��$ %
AnimationClip
��% 2
>
��2 3
(
��3 4
this
��4 8
.
��8 9
clips
��9 >
.
��> ?
Length
��? E
+
��F G
$num
��H I
)
��I J
;
��J K
GetAnimationClips
�� 
(
�� 
	animClips
�� '
)
��' (
;
��( )
var
�� 
hasHumanMotion
�� 
=
��  
	animClips
��! *
.
��* +
Exists
��+ 1
(
��1 2
clip
��2 6
=>
��7 9
clip
��: >
.
��> ?
humanMotion
��? J
)
��J K
;
��K L
if
�� 
(
�� 
!
�� 
hasHumanMotion
�� 
&&
��  "
animator
��# +
.
��+ ,
isHuman
��, 3
&&
��4 6#
AnimatesRootTransform
��7 L
(
��L M
)
��M N
&&
��O Q
!
�� +
DrivenPropertyManagerInternal
�� .
.
��. /
IsDriven
��/ 7
(
��7 8
animator
��8 @
.
��@ A
	transform
��A J
,
��J K
$str
��L _
)
��_ `
&&
��a c
!
�� +
DrivenPropertyManagerInternal
�� .
.
��. /
IsDriven
��/ 7
(
��7 8
animator
��8 @
.
��@ A
	transform
��A J
,
��J K
$str
��L _
)
��_ `
)
��` a
hasHumanMotion
�� 
=
��  
true
��! %
;
��% &#
m_SceneOffsetPosition
�� !
=
��" #
animator
��$ ,
.
��, -
	transform
��- 6
.
��6 7
localPosition
��7 D
;
��D E#
m_SceneOffsetRotation
�� !
=
��" #
animator
��$ ,
.
��, -
	transform
��- 6
.
��6 7
localEulerAngles
��7 G
;
��G H
if
�� 
(
�� 
hasHumanMotion
�� 
)
�� 
	animClips
�� 
.
�� 
Add
�� 
(
�� $
GetDefaultHumanoidClip
�� 4
(
��4 5
)
��5 6
)
��6 7
;
��7 8
m_DefaultPoseClip
�� 
=
�� 
hasHumanMotion
��  .
?
��/ 0$
GetDefaultHumanoidClip
��1 G
(
��G H
)
��H I
:
��J K
null
��L P
;
��P Q
var
�� 
hash
�� 
=
�� '
AnimationPreviewUtilities
�� 0
.
��0 1
GetClipHash
��1 <
(
��< =
	animClips
��= F
)
��F G
;
��G H
if
�� 
(
�� 
m_CachedBindings
��  
==
��! #
null
��$ (
||
��) +
m_CachedHash
��, 8
!=
��9 ;
hash
��< @
)
��@ A
{
�� 
m_CachedBindings
��  
=
��! "'
AnimationPreviewUtilities
��# <
.
��< =
GetBindings
��= H
(
��H I
animator
��I Q
.
��Q R

gameObject
��R \
,
��\ ]
	animClips
��^ g
)
��g h
;
��h i$
m_CachedPropertiesClip
�� &
=
��' ('
AnimationPreviewUtilities
��) B
.
��B C
CreateDefaultClip
��C T
(
��T U
animator
��U ]
.
��] ^

gameObject
��^ h
,
��h i
m_CachedBindings
��j z
)
��z {
;
��{ |
m_CachedHash
�� 
=
�� 
hash
�� #
;
��# $
}
�� '
AnimationPreviewUtilities
�� %
.
��% &
PreviewFromCurves
��& 7
(
��7 8
animator
��8 @
.
��@ A

gameObject
��A K
,
��K L
m_CachedBindings
��M ]
)
��] ^
;
��^ _
}
�� 	
private
�� 
void
�� 
GetAnimationClips
�� &
(
��& '
List
��' +
<
��+ ,
AnimationClip
��, 9
>
��9 :
	animClips
��; D
)
��D E
{
�� 	
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� 
clips
�� #
)
��# $
{
�� 
var
�� 
a
�� 
=
�� 
c
�� 
.
�� 
asset
�� 
as
��  "$
AnimationPlayableAsset
��# 9
;
��9 :
if
�� 
(
�� 
a
�� 
!=
�� 
null
�� 
&&
��  
a
��! "
.
��" #
clip
��# '
!=
��( *
null
��+ /
)
��/ 0
	animClips
�� 
.
�� 
Add
�� !
(
��! "
a
��" #
.
��# $
clip
��$ (
)
��( )
;
��) *
}
�� 
if
�� 
(
�� 
m_InfiniteClip
�� 
!=
�� !
null
��" &
)
��& '
	animClips
�� 
.
�� 
Add
�� 
(
�� 
m_InfiniteClip
�� ,
)
��, -
;
��- .
foreach
�� 
(
�� 
var
�� 

childTrack
�� #
in
��$ &
GetChildTracks
��' 5
(
��5 6
)
��6 7
)
��7 8
{
�� 
var
�� 
animChildTrack
�� "
=
��# $

childTrack
��% /
as
��0 2
AnimationTrack
��3 A
;
��A B
if
�� 
(
�� 
animChildTrack
�� "
!=
��# %
null
��& *
)
��* +
animChildTrack
�� "
.
��" #
GetAnimationClips
��# 4
(
��4 5
	animClips
��5 >
)
��> ?
;
��? @
}
�� 
}
�� 	
AppliedOffsetMode
�� 
GetOffsetMode
�� '
(
��' (

GameObject
��( 2
go
��3 5
,
��5 6
bool
��7 ;#
animatesRootTransform
��< Q
)
��Q R
{
�� 	
if
�� 
(
�� 
!
�� #
animatesRootTransform
�� &
)
��& '
return
�� 
AppliedOffsetMode
�� (
.
��( )
NoRootTransform
��) 8
;
��8 9
if
�� 
(
�� 
m_TrackOffset
�� 
==
��  
TrackOffset
��! ,
.
��, -#
ApplyTransformOffsets
��- B
)
��B C
return
�� 
AppliedOffsetMode
�� (
.
��( )
TransformOffset
��) 8
;
��8 9
if
�� 
(
�� 
m_TrackOffset
�� 
==
��  
TrackOffset
��! ,
.
��, -
ApplySceneOffsets
��- >
)
��> ?
return
�� 
(
�� 
Application
�� #
.
��# $
	isPlaying
��$ -
)
��- .
?
��/ 0
AppliedOffsetMode
��1 B
.
��B C
SceneOffset
��C N
:
��O P
AppliedOffsetMode
��Q b
.
��b c
SceneOffsetEditor
��c t
;
��t u
if
�� 
(
�� 
HasController
�� 
(
�� 
go
��  
)
��  !
)
��! "
{
�� 
if
�� 
(
�� 
!
�� 
Application
��  
.
��  !
	isPlaying
��! *
)
��* +
return
�� 
AppliedOffsetMode
�� ,
.
��, -%
SceneOffsetLegacyEditor
��- D
;
��D E
return
�� 
AppliedOffsetMode
�� (
.
��( )
SceneOffsetLegacy
��) :
;
��: ;
}
�� 
return
�� 
AppliedOffsetMode
�� $
.
��$ %#
TransformOffsetLegacy
��% :
;
��: ;
}
�� 	
private
�� 
bool
�� +
IsRootTransformDisabledByMask
�� 2
(
��2 3

GameObject
��3 =

gameObject
��> H
,
��H I
	Transform
��J S
genericRootNode
��T c
)
��c d
{
�� 	
if
�� 
(
�� 

avatarMask
�� 
==
�� 
null
�� "
||
��# %
!
��& '
applyAvatarMask
��' 6
)
��6 7
return
�� 
false
�� 
;
�� 
var
�� 
animator
�� 
=
�� 

GetBinding
�� %
(
��% &

gameObject
��& 0
!=
��1 3
null
��4 8
?
��9 :

gameObject
��; E
.
��E F
GetComponent
��F R
<
��R S
PlayableDirector
��S c
>
��c d
(
��d e
)
��e f
:
��g h
null
��i m
)
��m n
;
��n o
if
�� 
(
�� 
animator
�� 
==
�� 
null
��  
)
��  !
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
animator
�� 
.
�� 
isHuman
��  
)
��  !
return
�� 
!
�� 

avatarMask
�� "
.
��" #'
GetHumanoidBodyPartActive
��# <
(
��< = 
AvatarMaskBodyPart
��= O
.
��O P
Root
��P T
)
��T U
;
��U V
if
�� 
(
�� 

avatarMask
�� 
.
�� 
transformCount
�� )
==
��* ,
$num
��- .
)
��. /
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
genericRootNode
�� 
==
��  "
null
��# '
)
��' (
return
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� +
(
��+ ,

avatarMask
��, 6
.
��6 7
GetTransformPath
��7 G
(
��G H
$num
��H I
)
��I J
)
��J K
&&
��L N
!
��O P

avatarMask
��P Z
.
��Z [ 
GetTransformActive
��[ m
(
��m n
$num
��n o
)
��o p
;
��p q
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 

avatarMask
��  *
.
��* +
transformCount
��+ 9
;
��9 :
i
��; <
++
��< >
)
��> ?
{
�� 
if
�� 
(
�� 
genericRootNode
�� #
==
��$ &
animator
��' /
.
��/ 0
	transform
��0 9
.
��9 :
Find
��: >
(
��> ?

avatarMask
��? I
.
��I J
GetTransformPath
��J Z
(
��Z [
i
��[ \
)
��\ ]
)
��] ^
)
��^ _
return
�� 
!
�� 

avatarMask
�� &
.
��& ' 
GetTransformActive
��' 9
(
��9 :
i
��: ;
)
��; <
;
��< =
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
	Transform
��  
GetGenericRootNode
�� ,
(
��, -

GameObject
��- 7

gameObject
��8 B
)
��B C
{
�� 	
var
�� 
animator
�� 
=
�� 

GetBinding
�� %
(
��% &

gameObject
��& 0
!=
��1 3
null
��4 8
?
��9 :

gameObject
��; E
.
��E F
GetComponent
��F R
<
��R S
PlayableDirector
��S c
>
��c d
(
��d e
)
��e f
:
��g h
null
��i m
)
��m n
;
��n o
if
�� 
(
�� 
animator
�� 
==
�� 
null
��  
)
��  !
return
�� 
null
�� 
;
�� 
if
�� 
(
�� 
animator
�� 
.
�� 
isHuman
��  
)
��  !
return
�� 
null
�� 
;
�� 
if
�� 
(
�� 
animator
�� 
.
�� 
avatar
�� 
==
��  "
null
��# '
)
��' (
return
�� 
null
�� 
;
�� 
var
�� 
rootName
�� 
=
�� 
animator
�� #
.
��# $
avatar
��$ *
.
��* +
humanDescription
��+ ;
.
��; <"
m_RootMotionBoneName
��< P
;
��P Q
if
�� 
(
�� 
rootName
�� 
==
�� 
animator
�� $
.
��$ %
name
��% )
||
��* ,
string
��- 3
.
��3 4
IsNullOrEmpty
��4 A
(
��A B
rootName
��B J
)
��J K
)
��K L
return
�� 
null
�� 
;
�� 
return
�� )
FindInHierarchyBreadthFirst
�� .
(
��. /
animator
��/ 7
.
��7 8
	transform
��8 A
,
��A B
rootName
��C K
)
��K L
;
��L M
}
�� 	
internal
�� 
bool
�� #
AnimatesRootTransform
�� +
(
��+ ,
)
��, -
{
�� 	
if
�� 
(
�� $
AnimationPlayableAsset
�� &
.
��& '
HasRootTransforms
��' 8
(
��8 9
m_InfiniteClip
��9 G
)
��G H
)
��H I
return
�� 
true
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� 
GetClips
�� &
(
��& '
)
��' (
)
��( )
{
�� 
var
�� 
apa
�� 
=
�� 
c
�� 
.
�� 
asset
�� !
as
��" $$
AnimationPlayableAsset
��% ;
;
��; <
if
�� 
(
�� 
apa
�� 
!=
�� 
null
�� 
&&
��  "
apa
��# &
.
��& '
hasRootTransforms
��' 8
)
��8 9
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
readonly
�� 
Queue
��  %
<
��% &
	Transform
��& /
>
��/ 0
s_CachedQueue
��1 >
=
��? @
new
��A D
Queue
��E J
<
��J K
	Transform
��K T
>
��T U
(
��U V
$num
��V Y
)
��Y Z
;
��Z [
private
�� 
static
�� 
	Transform
��  )
FindInHierarchyBreadthFirst
��! <
(
��< =
	Transform
��= F
t
��G H
,
��H I
string
��J P
name
��Q U
)
��U V
{
�� 	
s_CachedQueue
�� 
.
�� 
Clear
�� 
(
��  
)
��  !
;
��! "
s_CachedQueue
�� 
.
�� 
Enqueue
�� !
(
��! "
t
��" #
)
��# $
;
��$ %
while
�� 
(
�� 
s_CachedQueue
��  
.
��  !
Count
��! &
>
��' (
$num
��) *
)
��* +
{
�� 
var
�� 
r
�� 
=
�� 
s_CachedQueue
�� %
.
��% &
Dequeue
��& -
(
��- .
)
��. /
;
��/ 0
if
�� 
(
�� 
r
�� 
.
�� 
name
�� 
==
�� 
name
�� "
)
��" #
return
�� 
r
�� 
;
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
r
��$ %
.
��% &

childCount
��& 0
;
��0 1
i
��2 3
++
��3 5
)
��5 6
s_CachedQueue
�� !
.
��! "
Enqueue
��" )
(
��) *
r
��* +
.
��+ ,
GetChild
��, 4
(
��4 5
i
��5 6
)
��6 7
)
��7 8
;
��8 9
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 	
}
�� 
}�� �!
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
}LL �#
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
}^^ �(
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
}GG �A
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
parentTransform	 �
)
� �
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
prefabGameObject	88z �
.
88� �
name
88� �
,
88� �

m_Instance
88� �
.
88� �
name
88� �
)
88� �
;
88� �
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
�� 
}
�� 	
void
�� 
OnPrefabUpdated
�� 
(
�� 

GameObject
�� '
go
��( *
)
��* +
{
�� 	
if
�� 
(
�� 
go
�� 
==
�� 

m_Instance
��  
)
��  !
{
�� #
SetHideFlagsRecursive
�� %
(
��% &
go
��& (
)
��( )
;
��) *
go
�� 
.
�� 
	SetActive
�� 
(
�� 
m_IsActiveCached
�� -
)
��- .
;
��. /
}
�� 
}
�� 	
static
�� 
void
�� #
SetHideFlagsRecursive
�� )
(
��) *

GameObject
��* 4

gameObject
��5 ?
)
��? @
{
�� 	
if
�� 
(
�� 

gameObject
�� 
==
�� 
null
�� "
)
��" #
return
�� 
;
�� 

gameObject
�� 
.
�� 
	hideFlags
��  
=
��! "
	HideFlags
��# ,
.
��, -
DontSaveInBuild
��- <
|
��= >
	HideFlags
��? H
.
��H I
DontSaveInEditor
��I Y
;
��Y Z
if
�� 
(
�� 
!
�� 
Application
�� 
.
�� 
	isPlaying
�� &
)
��& '

gameObject
�� 
.
�� 
	hideFlags
�� $
|=
��% '
	HideFlags
��( 1
.
��1 2
HideInHierarchy
��2 A
;
��A B
foreach
�� 
(
�� 
	Transform
�� 
child
�� $
in
��% '

gameObject
��( 2
.
��2 3
	transform
��3 <
)
��< =
{
�� #
SetHideFlagsRecursive
�� %
(
��% &
child
��& +
.
��+ ,

gameObject
��, 6
)
��6 7
;
��7 8
}
�� 
}
�� 	
}
�� 
}�� �r
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
�� 
new
�� &
IndexOutOfRangeException
�� 2
(
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� 
m_Events
�� 
.
�� 
signals
��  
[
��  !
idx
��! $
]
��$ %
==
��& (
newKey
��) /
)
��/ 0
return
�� 
;
�� 
var
�� 
alreadyUsed
�� 
=
�� 
m_Events
�� &
.
��& '
signals
��' .
.
��. /
Contains
��/ 7
(
��7 8
newKey
��8 >
)
��> ?
;
��? @
if
�� 
(
�� 
newKey
�� 
==
�� 
null
�� 
||
�� !
m_Events
��" *
.
��* +
signals
��+ 2
[
��2 3
idx
��3 6
]
��6 7
==
��8 :
null
��; ?
||
��@ B
!
��C D
alreadyUsed
��D O
)
��O P
m_Events
�� 
.
�� 
signals
��  
[
��  !
idx
��! $
]
��$ %
=
��& '
newKey
��( .
;
��. /
if
�� 
(
�� 
newKey
�� 
!=
�� 
null
�� 
&&
�� !
alreadyUsed
��" -
)
��- .
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, G
)
��G H
;
��H I
}
�� 	
public
�� 
void
�� 
RemoveAtIndex
�� !
(
��! "
int
��" %
idx
��& )
)
��) *
{
�� 	
if
�� 
(
�� 
idx
�� 
<
�� 
$num
�� 
||
�� 
idx
�� 
>
��  
m_Events
��! )
.
��) *
signals
��* 1
.
��1 2
Count
��2 7
-
��8 9
$num
��: ;
)
��; <
throw
�� 
new
�� &
IndexOutOfRangeException
�� 2
(
��2 3
)
��3 4
;
��4 5
m_Events
�� 
.
�� 
Remove
�� 
(
�� 
idx
�� 
)
��  
;
��  !
}
�� 	
public
�� 
void
�� #
ChangeReactionAtIndex
�� )
(
��) *
int
��* -
idx
��. 1
,
��1 2

UnityEvent
��3 =
reaction
��> F
)
��F G
{
�� 	
if
�� 
(
�� 
idx
�� 
<
�� 
$num
�� 
||
�� 
idx
�� 
>
��  
m_Events
��! )
.
��) *
events
��* 0
.
��0 1
Count
��1 6
-
��7 8
$num
��9 :
)
��: ;
throw
�� 
new
�� &
IndexOutOfRangeException
�� 2
(
��2 3
)
��3 4
;
��4 5
m_Events
�� 
.
�� 
events
�� 
[
�� 
idx
�� 
]
��  
=
��! "
reaction
��# +
;
��+ ,
}
�� 	
public
�� 

UnityEvent
��  
GetReactionAtIndex
�� ,
(
��, -
int
��- 0
idx
��1 4
)
��4 5
{
�� 	
if
�� 
(
�� 
idx
�� 
<
�� 
$num
�� 
||
�� 
idx
�� 
>
��  
m_Events
��! )
.
��) *
events
��* 0
.
��0 1
Count
��1 6
-
��7 8
$num
��9 :
)
��: ;
throw
�� 
new
�� &
IndexOutOfRangeException
�� 2
(
��2 3
)
��3 4
;
��4 5
return
�� 
m_Events
�� 
.
�� 
events
�� "
[
��" #
idx
��# &
]
��& '
;
��' (
}
�� 	
public
�� 
SignalAsset
�� #
GetSignalAssetAtIndex
�� 0
(
��0 1
int
��1 4
idx
��5 8
)
��8 9
{
�� 	
if
�� 
(
�� 
idx
�� 
<
�� 
$num
�� 
||
�� 
idx
�� 
>
��  
m_Events
��! )
.
��) *
signals
��* 1
.
��1 2
Count
��2 7
-
��8 9
$num
��: ;
)
��; <
throw
�� 
new
�� &
IndexOutOfRangeException
�� 2
(
��2 3
)
��3 4
;
��4 5
return
�� 
m_Events
�� 
.
�� 
signals
�� #
[
��# $
idx
��$ '
]
��' (
;
��( )
}
�� 	
private
�� 
void
�� 
OnEnable
�� 
(
�� 
)
�� 
{
�� 	
}
�� 	
[
�� 	
Serializable
��	 
]
�� 
class
�� 
EventKeyValue
�� 
{
�� 	
[
�� 
SerializeField
�� 
]
�� 
List
�� 
<
�� 
SignalAsset
�� 
>
�� 
	m_Signals
�� '
=
��( )
new
��* -
List
��. 2
<
��2 3
SignalAsset
��3 >
>
��> ?
(
��? @
)
��@ A
;
��A B
[
�� 
SerializeField
�� 
,
�� %
CustomSignalEventDrawer
�� 4
]
��4 5
List
�� 
<
�� 

UnityEvent
�� 
>
�� 
m_Events
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1

UnityEvent
��1 ;
>
��; <
(
��< =
)
��= >
;
��> ?
public
�� 
bool
�� 
TryGetValue
�� #
(
��# $
SignalAsset
��$ /
key
��0 3
,
��3 4
out
��5 8

UnityEvent
��9 C
value
��D I
)
��I J
{
�� 
var
�� 
index
�� 
=
�� 
	m_Signals
�� %
.
��% &
IndexOf
��& -
(
��- .
key
��. 1
)
��1 2
;
��2 3
if
�� 
(
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
�� 
value
�� 
=
�� 
m_Events
�� $
[
��$ %
index
��% *
]
��* +
;
��+ ,
return
�� 
true
�� 
;
��  
}
�� 
value
�� 
=
�� 
null
�� 
;
�� 
return
�� 
false
�� 
;
�� 
}
�� 
public
�� 
void
�� 
Append
�� 
(
�� 
SignalAsset
�� *
key
��+ .
,
��. /

UnityEvent
��0 :
value
��; @
)
��@ A
{
�� 
	m_Signals
�� 
.
�� 
Add
�� 
(
�� 
key
�� !
)
��! "
;
��" #
m_Events
�� 
.
�� 
Add
�� 
(
�� 
value
�� "
)
��" #
;
��# $
}
�� 
public
�� 
void
�� 
Remove
�� 
(
�� 
int
�� "
idx
��# &
)
��& '
{
�� 
if
�� 
(
�� 
idx
�� 
!=
�� 
-
�� 
$num
�� 
)
�� 
{
�� 
	m_Signals
�� 
.
�� 
RemoveAt
�� &
(
��& '
idx
��' *
)
��* +
;
��+ ,
m_Events
�� 
.
�� 
RemoveAt
�� %
(
��% &
idx
��& )
)
��) *
;
��* +
}
�� 
}
�� 
public
�� 
void
�� 
Remove
�� 
(
�� 
SignalAsset
�� *
key
��+ .
)
��. /
{
�� 
var
�� 
idx
�� 
=
�� 
	m_Signals
�� #
.
��# $
IndexOf
��$ +
(
��+ ,
key
��, /
)
��/ 0
;
��0 1
if
�� 
(
�� 
idx
�� 
!=
�� 
-
�� 
$num
�� 
)
�� 
{
�� 
	m_Signals
�� 
.
�� 
RemoveAt
�� &
(
��& '
idx
��' *
)
��* +
;
��+ ,
m_Events
�� 
.
�� 
RemoveAt
�� %
(
��% &
idx
��& )
)
��) *
;
��* +
}
�� 
}
�� 
public
�� 
List
�� 
<
�� 
SignalAsset
�� #
>
��# $
signals
��% ,
{
�� 
get
�� 
{
�� 
return
�� 
	m_Signals
�� &
;
��& '
}
��( )
}
�� 
public
�� 
List
�� 
<
�� 

UnityEvent
�� "
>
��" #
events
��$ *
{
�� 
get
�� 
{
�� 
return
�� 
m_Events
�� %
;
��% &
}
��' (
}
�� 
}
�� 	
}
�� 
}�� ��
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
PostPlaybackState	BBu �
.
BB� �
Revert
BB� �
;
BB� �
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
$str	ss+ �
,
ss� �
name
ss� �
)
ss� �
;
ss� �
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
�� 
controlPlayable
�� #
=
��$ %#
PrefabControlPlayable
��& ;
.
��; <
Create
��< B
(
��B C
graph
��C H
,
��H I
prefabGameObject
��J Z
,
��Z [
parenTransform
��\ j
)
��j k
;
��k l
sourceObject
�� 
=
�� 
controlPlayable
�� .
.
��. /
GetBehaviour
��/ ;
(
��; <
)
��< =
.
��= >
prefabInstance
��> L
;
��L M
	playables
�� 
.
�� 
Add
�� 
(
�� 
controlPlayable
�� -
)
��- .
;
��. /
}
�� 

m_Duration
�� 
=
�� 
PlayableBinding
�� (
.
��( )
DefaultDuration
��) 8
;
��8 9
m_SupportLoop
�� 
=
�� 
false
�� !
;
��! ""
controllingParticles
��  
=
��! "
false
��# (
;
��( )"
controllingDirectors
��  
=
��! "
false
��# (
;
��( )
if
�� 
(
�� 
sourceObject
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
var
�� 
	directors
�� 
=
�� 
updateDirector
��  .
?
��/ 0
GetComponent
��1 =
<
��= >
PlayableDirector
��> N
>
��N O
(
��O P
sourceObject
��P \
)
��\ ]
:
��^ _"
k_EmptyDirectorsList
��` t
;
��t u
var
�� 
particleSystems
�� #
=
��$ %
updateParticle
��& 4
?
��5 6,
GetControllableParticleSystems
��7 U
(
��U V
sourceObject
��V b
)
��b c
:
��d e"
k_EmptyParticlesList
��f z
;
��z {'
UpdateDurationAndLoopFlag
�� )
(
��) *
	directors
��* 3
,
��3 4
particleSystems
��5 D
)
��D E
;
��E F
var
�� 
director
�� 
=
�� 
go
�� !
.
��! "
GetComponent
��" .
<
��. /
PlayableDirector
��/ ?
>
��? @
(
��@ A
)
��A B
;
��B C
if
�� 
(
�� 
director
�� 
!=
�� 
null
��  $
)
��$ %$
m_ControlDirectorAsset
�� *
=
��+ ,
director
��- 5
.
��5 6
playableAsset
��6 C
;
��C D
if
�� 
(
�� 
go
�� 
==
�� 
sourceObject
�� &
&&
��' )
prefabGameObject
��* :
==
��; =
null
��> B
)
��B C
{
�� 
Debug
�� 
.
�� 
LogWarningFormat
�� *
(
��* +
$str��+ �
,��� �
name��� �
)��� �
;��� �
active
�� 
=
�� 
false
�� "
;
��" #
if
�� 
(
�� 
!
�� 
searchHierarchy
�� (
)
��( )
updateDirector
�� &
=
��' (
false
��) .
;
��. /
}
�� 
if
�� 
(
�� 
active
�� 
)
�� &
CreateActivationPlayable
�� ,
(
��, -
sourceObject
��- 9
,
��9 :
graph
��; @
,
��@ A
	playables
��B K
)
��K L
;
��L M
if
�� 
(
�� 
updateDirector
�� "
)
��" #/
!SearchHierarchyAndConnectDirector
�� 5
(
��5 6
	directors
��6 ?
,
��? @
graph
��A F
,
��F G
	playables
��H Q
,
��Q R
prefabGameObject
��S c
!=
��d f
null
��g k
)
��k l
;
��l m
if
�� 
(
�� 
updateParticle
�� "
)
��" #5
'SearchHierarchyAndConnectParticleSystem
�� ;
(
��; <
particleSystems
��< K
,
��K L
graph
��M R
,
��R S
	playables
��T ]
)
��] ^
;
��^ _
if
�� 
(
��  
updateITimeControl
�� &
)
��& '9
+SearchHierarchyAndConnectControlableScripts
�� ?
(
��? @#
GetControlableScripts
��@ U
(
��U V
sourceObject
��V b
)
��b c
,
��c d
graph
��e j
,
��j k
	playables
��l u
)
��u v
;
��v w
root
�� 
=
�� %
ConnectPlayablesToMixer
�� .
(
��. /
graph
��/ 4
,
��4 5
	playables
��6 ?
)
��? @
;
��@ A
}
�� 
if
�� 
(
�� 
prefabGameObject
��  
!=
��! #
null
��$ (
)
��( )
s_CreatedPrefabs
��  
.
��  !
Remove
��! '
(
��' (
prefabGameObject
��( 8
)
��8 9
;
��9 :
if
�� 
(
�� 
!
�� 
root
�� 
.
�� 
IsValid
�� 
(
�� 
)
�� 
)
��  
root
�� 
=
�� 
Playable
�� 
.
��  
Create
��  &
(
��& '
graph
��' ,
)
��, -
;
��- .
return
�� 
root
�� 
;
�� 
}
�� 	
static
�� 
Playable
�� %
ConnectPlayablesToMixer
�� /
(
��/ 0
PlayableGraph
��0 =
graph
��> C
,
��C D
List
��E I
<
��I J
Playable
��J R
>
��R S
	playables
��T ]
)
��] ^
{
�� 	
var
�� 
mixer
�� 
=
�� 
Playable
��  
.
��  !
Create
��! '
(
��' (
graph
��( -
,
��- .
	playables
��/ 8
.
��8 9
Count
��9 >
)
��> ?
;
��? @
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
!=
��  
	playables
��! *
.
��* +
Count
��+ 0
;
��0 1
++
��2 4
i
��4 5
)
��5 6
{
�� %
ConnectMixerAndPlayable
�� '
(
��' (
graph
��( -
,
��- .
mixer
��/ 4
,
��4 5
	playables
��6 ?
[
��? @
i
��@ A
]
��A B
,
��B C
i
��D E
)
��E F
;
��F G
}
�� 
mixer
�� 
.
�� !
SetPropagateSetTime
�� %
(
��% &
true
��& *
)
��* +
;
��+ ,
return
�� 
mixer
�� 
;
�� 
}
�� 	
void
�� &
CreateActivationPlayable
�� %
(
��% &

GameObject
��& 0
root
��1 5
,
��5 6
PlayableGraph
��7 D
graph
��E J
,
��J K
List
�� 
<
�� 
Playable
�� 
>
�� 
outplayables
�� '
)
��' (
{
�� 	
var
�� 

activation
�� 
=
�� '
ActivationControlPlayable
�� 6
.
��6 7
Create
��7 =
(
��= >
graph
��> C
,
��C D
root
��E I
,
��I J
postPlayback
��K W
)
��W X
;
��X Y
if
�� 
(
�� 

activation
�� 
.
�� 
IsValid
�� "
(
��" #
)
��# $
)
��$ %
outplayables
�� 
.
�� 
Add
��  
(
��  !

activation
��! +
)
��+ ,
;
��, -
}
�� 	
void
�� 5
'SearchHierarchyAndConnectParticleSystem
�� 4
(
��4 5
IEnumerable
��5 @
<
��@ A
ParticleSystem
��A O
>
��O P
particleSystems
��Q `
,
��` a
PlayableGraph
��b o
graph
��p u
,
��u v
List
�� 
<
�� 
Playable
�� 
>
�� 
outplayables
�� '
)
��' (
{
�� 	
foreach
�� 
(
�� 
var
�� 
particleSystem
�� '
in
��( *
particleSystems
��+ :
)
��: ;
{
�� 
if
�� 
(
�� 
particleSystem
�� "
!=
��# %
null
��& *
)
��* +
{
�� "
controllingParticles
�� (
=
��) *
true
��+ /
;
��/ 0
outplayables
��  
.
��  !
Add
��! $
(
��$ %%
ParticleControlPlayable
��% <
.
��< =
Create
��= C
(
��C D
graph
��D I
,
��I J
particleSystem
��K Y
,
��Y Z 
particleRandomSeed
��[ m
)
��m n
)
��n o
;
��o p
}
�� 
}
�� 
}
�� 	
void
�� /
!SearchHierarchyAndConnectDirector
�� .
(
��. /
IEnumerable
��/ :
<
��: ;
PlayableDirector
��; K
>
��K L
	directors
��M V
,
��V W
PlayableGraph
��X e
graph
��f k
,
��k l
List
�� 
<
�� 
Playable
�� 
>
�� 
outplayables
�� '
,
��' (
bool
��) -#
disableSelfReferences
��. C
)
��C D
{
�� 	
foreach
�� 
(
�� 
var
�� 
director
�� !
in
��" $
	directors
��% .
)
��. /
{
�� 
if
�� 
(
�� 
director
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
if
�� 
(
�� 
director
��  
.
��  !
playableAsset
��! .
!=
��/ 1$
m_ControlDirectorAsset
��2 H
)
��H I
{
�� 
outplayables
�� $
.
��$ %
Add
��% (
(
��( )%
DirectorControlPlayable
��) @
.
��@ A
Create
��A G
(
��G H
graph
��H M
,
��M N
director
��O W
)
��W X
)
��X Y
;
��Y Z"
controllingDirectors
�� ,
=
��- .
true
��/ 3
;
��3 4
}
�� 
else
�� 
if
�� 
(
�� #
disableSelfReferences
�� 2
)
��2 3
{
�� 
director
��  
.
��  !
enabled
��! (
=
��) *
false
��+ 0
;
��0 1
}
�� 
}
�� 
}
�� 
}
�� 	
static
�� 
void
�� 9
+SearchHierarchyAndConnectControlableScripts
�� ?
(
��? @
IEnumerable
��@ K
<
��K L
MonoBehaviour
��L Y
>
��Y Z 
controlableScripts
��[ m
,
��m n
PlayableGraph
��o |
graph��} �
,��� �
List��� �
<��� �
Playable��� �
>��� �
outplayables��� �
)��� �
{
�� 	
foreach
�� 
(
�� 
var
�� 
script
�� 
in
��  " 
controlableScripts
��# 5
)
��5 6
{
�� 
outplayables
�� 
.
�� 
Add
��  
(
��  !!
TimeControlPlayable
��! 4
.
��4 5
Create
��5 ;
(
��; <
graph
��< A
,
��A B
(
��C D
ITimeControl
��D P
)
��P Q
script
��Q W
)
��W X
)
��X Y
;
��Y Z
}
�� 
}
�� 	
static
�� 
void
�� %
ConnectMixerAndPlayable
�� +
(
��+ ,
PlayableGraph
��, 9
graph
��: ?
,
��? @
Playable
��A I
mixer
��J O
,
��O P
Playable
��Q Y
playable
��Z b
,
��b c
int
�� 
	portIndex
�� 
)
�� 
{
�� 	
graph
�� 
.
�� 
Connect
�� 
(
�� 
playable
�� "
,
��" #
$num
��$ %
,
��% &
mixer
��' ,
,
��, -
	portIndex
��. 7
)
��7 8
;
��8 9
mixer
�� 
.
�� 
SetInputWeight
��  
(
��  !
playable
��! )
,
��) *
$num
��+ /
)
��/ 0
;
��0 1
}
�� 	
internal
�� 
IList
�� 
<
�� 
T
�� 
>
�� 
GetComponent
�� &
<
��& '
T
��' (
>
��( )
(
��) *

GameObject
��* 4

gameObject
��5 ?
)
��? @
{
�� 	
var
�� 

components
�� 
=
�� 
new
��  
List
��! %
<
��% &
T
��& '
>
��' (
(
��( )
)
��) *
;
��* +
if
�� 
(
�� 

gameObject
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
if
�� 
(
�� 
searchHierarchy
�� #
)
��# $
{
�� 

gameObject
�� 
.
�� %
GetComponentsInChildren
�� 6
<
��6 7
T
��7 8
>
��8 9
(
��9 :
true
��: >
,
��> ?

components
��@ J
)
��J K
;
��K L
}
�� 
else
�� 
{
�� 

gameObject
�� 
.
�� 
GetComponents
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0

components
��0 :
)
��: ;
;
��; <
}
�� 
}
�� 
return
�� 

components
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
IEnumerable
�� #
<
��# $
MonoBehaviour
��$ 1
>
��1 2#
GetControlableScripts
��3 H
(
��H I

GameObject
��I S
root
��T X
)
��X Y
{
�� 	
if
�� 
(
�� 
root
�� 
==
�� 
null
�� 
)
�� 
yield
�� 
break
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
script
�� 
in
��  "
root
��# '
.
��' (%
GetComponentsInChildren
��( ?
<
��? @
MonoBehaviour
��@ M
>
��M N
(
��N O
)
��O P
)
��P Q
{
�� 
if
�� 
(
�� 
script
�� 
is
�� 
ITimeControl
�� *
)
��* +
yield
�� 
return
��  
script
��! '
;
��' (
}
�� 
}
�� 	
internal
�� 
void
�� '
UpdateDurationAndLoopFlag
�� /
(
��/ 0
IList
��0 5
<
��5 6
PlayableDirector
��6 F
>
��F G
	directors
��H Q
,
��Q R
IList
��S X
<
��X Y
ParticleSystem
��Y g
>
��g h
particleSystems
��i x
)
��x y
{
�� 	
if
�� 
(
�� 
	directors
�� 
.
�� 
Count
�� 
==
��  "
$num
��# $
&&
��% '
particleSystems
��( 7
.
��7 8
Count
��8 =
==
��> @
$num
��A B
)
��B C
return
�� 
;
�� 
const
�� 
double
�� 
invalidDuration
�� (
=
��) *
double
��+ 1
.
��1 2
NegativeInfinity
��2 B
;
��B C
var
�� 
maxDuration
�� 
=
�� 
invalidDuration
�� -
;
��- .
var
�� 
supportsLoop
�� 
=
�� 
false
�� $
;
��$ %
foreach
�� 
(
�� 
var
�� 
director
�� !
in
��" $
	directors
��% .
)
��. /
{
�� 
if
�� 
(
�� 
director
�� 
.
�� 
playableAsset
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� 
var
�� 
assetDuration
�� %
=
��& '
director
��( 0
.
��0 1
playableAsset
��1 >
.
��> ?
duration
��? G
;
��G H
if
�� 
(
�� 
director
��  
.
��  !
playableAsset
��! .
is
��/ 1
TimelineAsset
��2 ?
&&
��@ B
assetDuration
��C P
>
��Q R
$num
��S V
)
��V W
assetDuration
�� %
=
��& '
(
��( )
double
��) /
)
��/ 0
(
��0 1
(
��1 2
DiscreteTime
��2 >
)
��> ?
assetDuration
��? L
)
��L M
.
��M N
OneTickAfter
��N Z
(
��Z [
)
��[ \
;
��\ ]
maxDuration
�� 
=
��  !
Math
��" &
.
��& '
Max
��' *
(
��* +
maxDuration
��+ 6
,
��6 7
assetDuration
��8 E
)
��E F
;
��F G
supportsLoop
��  
=
��! "
supportsLoop
��# /
||
��0 2
director
��3 ;
.
��; <
extrapolationMode
��< M
==
��N P
DirectorWrapMode
��Q a
.
��a b
Loop
��b f
;
��f g
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
particleSystem
�� '
in
��( *
particleSystems
��+ :
)
��: ;
{
�� 
maxDuration
�� 
=
�� 
Math
�� "
.
��" #
Max
��# &
(
��& '
maxDuration
��' 2
,
��2 3
particleSystem
��4 B
.
��B C
main
��C G
.
��G H
duration
��H P
)
��P Q
;
��Q R
supportsLoop
�� 
=
�� 
supportsLoop
�� +
||
��, .
particleSystem
��/ =
.
��= >
main
��> B
.
��B C
loop
��C G
;
��G H
}
�� 

m_Duration
�� 
=
�� 
double
�� 
.
��   
IsNegativeInfinity
��  2
(
��2 3
maxDuration
��3 >
)
��> ?
?
��@ A
PlayableBinding
��B Q
.
��Q R
DefaultDuration
��R a
:
��b c
maxDuration
��d o
;
��o p
m_SupportLoop
�� 
=
�� 
supportsLoop
�� (
;
��( )
}
�� 	
IList
�� 
<
�� 
ParticleSystem
�� 
>
�� ,
GetControllableParticleSystems
�� <
(
��< =

GameObject
��= G
go
��H J
)
��J K
{
�� 	
var
�� 
roots
�� 
=
�� 
new
�� 
List
��  
<
��  !
ParticleSystem
��! /
>
��/ 0
(
��0 1
)
��1 2
;
��2 3
if
�� 
(
�� 
searchHierarchy
�� 
||
��  "
go
��# %
.
��% &
GetComponent
��& 2
<
��2 3
ParticleSystem
��3 A
>
��A B
(
��B C
)
��C D
!=
��E G
null
��H L
)
��L M
{
�� ,
GetControllableParticleSystems
�� .
(
��. /
go
��/ 1
.
��1 2
	transform
��2 ;
,
��; <
roots
��= B
,
��B C#
s_SubEmitterCollector
��D Y
)
��Y Z
;
��Z [#
s_SubEmitterCollector
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
�� 
return
�� 
roots
�� 
;
�� 
}
�� 	
static
�� 
void
�� ,
GetControllableParticleSystems
�� 2
(
��2 3
	Transform
��3 <
t
��= >
,
��> ?
ICollection
��@ K
<
��K L
ParticleSystem
��L Z
>
��Z [
roots
��\ a
,
��a b
HashSet
��c j
<
��j k
ParticleSystem
��k y
>
��y z
subEmitters��{ �
)��� �
{
�� 	
var
�� 
ps
�� 
=
�� 
t
�� 
.
�� 
GetComponent
�� #
<
��# $
ParticleSystem
��$ 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6
if
�� 
(
�� 
ps
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
if
�� 
(
�� 
!
�� 
subEmitters
��  
.
��  !
Contains
��! )
(
��) *
ps
��* ,
)
��, -
)
��- .
{
�� 
roots
�� 
.
�� 
Add
�� 
(
�� 
ps
��  
)
��  !
;
��! "
CacheSubEmitters
�� $
(
��$ %
ps
��% '
,
��' (
subEmitters
��) 4
)
��4 5
;
��5 6
}
�� 
}
�� 
for
�� 
(
�� 
int
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
�� 
t
��  !
.
��! "

childCount
��" ,
;
��, -
++
��. 0
i
��0 1
)
��1 2
{
�� ,
GetControllableParticleSystems
�� .
(
��. /
t
��/ 0
.
��0 1
GetChild
��1 9
(
��9 :
i
��: ;
)
��; <
,
��< =
roots
��> C
,
��C D
subEmitters
��E P
)
��P Q
;
��Q R
}
�� 
}
�� 	
static
�� 
void
�� 
CacheSubEmitters
�� $
(
��$ %
ParticleSystem
��% 3
ps
��4 6
,
��6 7
HashSet
��8 ?
<
��? @
ParticleSystem
��@ N
>
��N O
subEmitters
��P [
)
��[ \
{
�� 	
if
�� 
(
�� 
ps
�� 
==
�� 
null
�� 
)
�� 
return
�� 
;
�� 
for
�� 
(
�� 
int
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
�� 
ps
��  "
.
��" #
subEmitters
��# .
.
��. /
subEmittersCount
��/ ?
;
��? @
i
��A B
++
��B D
)
��D E
{
�� 
subEmitters
�� 
.
�� 
Add
�� 
(
��  
ps
��  "
.
��" #
subEmitters
��# .
.
��. /!
GetSubEmitterSystem
��/ B
(
��B C
i
��C D
)
��D E
)
��E F
;
��F G
}
�� 
}
�� 	
public
�� 
void
�� 
GatherProperties
�� $
(
��$ %
PlayableDirector
��% 5
director
��6 >
,
��> ? 
IPropertyCollector
��@ R
driver
��S Y
)
��Y Z
{
�� 	
if
�� 
(
�� 
director
�� 
==
�� 
null
��  
)
��  !
return
�� 
;
�� 
if
�� 
(
�� "
s_ProcessedDirectors
�� $
.
��$ %
Contains
��% -
(
��- .
director
��. 6
)
��6 7
)
��7 8
return
�� 
;
�� "
s_ProcessedDirectors
��  
.
��  !
Add
��! $
(
��$ %
director
��% -
)
��- .
;
��. /
var
�� 

gameObject
�� 
=
�� 
sourceGameObject
�� -
.
��- .
Resolve
��. 5
(
��5 6
director
��6 >
)
��> ?
;
��? @
if
�� 
(
�� 

gameObject
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
if
�� 
(
�� 
updateParticle
�� "
)
��" #
PreviewParticles
�� $
(
��$ %
driver
��% +
,
��+ ,

gameObject
��- 7
.
��7 8%
GetComponentsInChildren
��8 O
<
��O P
ParticleSystem
��P ^
>
��^ _
(
��_ `
true
��` d
)
��d e
)
��e f
;
��f g
if
�� 
(
�� 
active
�� 
)
�� 
PreviewActivation
�� %
(
��% &
driver
��& ,
,
��, -
new
��. 1
[
��1 2
]
��2 3
{
��4 5

gameObject
��6 @
}
��A B
)
��B C
;
��C D
if
�� 
(
��  
updateITimeControl
�� &
)
��& ' 
PreviewTimeControl
�� &
(
��& '
driver
��' -
,
��- .
director
��/ 7
,
��7 8#
GetControlableScripts
��9 N
(
��N O

gameObject
��O Y
)
��Y Z
)
��Z [
;
��[ \
if
�� 
(
�� 
updateDirector
�� "
)
��" #
PreviewDirectors
�� $
(
��$ %
driver
��% +
,
��+ ,
GetComponent
��- 9
<
��9 :
PlayableDirector
��: J
>
��J K
(
��K L

gameObject
��L V
)
��V W
)
��W X
;
��X Y
}
�� "
s_ProcessedDirectors
��  
.
��  !
Remove
��! '
(
��' (
director
��( 0
)
��0 1
;
��1 2
}
�� 	
internal
�� 
static
�� 
void
�� 
PreviewParticles
�� -
(
��- . 
IPropertyCollector
��. @
driver
��A G
,
��G H
IEnumerable
��I T
<
��T U
ParticleSystem
��U c
>
��c d
	particles
��e n
)
��n o
{
�� 	
foreach
�� 
(
�� 
var
�� 
ps
�� 
in
�� 
	particles
�� (
)
��( )
{
�� 
driver
�� 
.
�� 
AddFromName
�� "
<
��" #
ParticleSystem
��# 1
>
��1 2
(
��2 3
ps
��3 5
.
��5 6

gameObject
��6 @
,
��@ A
$str
��B N
)
��N O
;
��O P
driver
�� 
.
�� 
AddFromName
�� "
<
��" #
ParticleSystem
��# 1
>
��1 2
(
��2 3
ps
��3 5
.
��5 6

gameObject
��6 @
,
��@ A
$str
��B R
)
��R S
;
��S T
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� 
PreviewActivation
�� .
(
��. / 
IPropertyCollector
��/ A
driver
��B H
,
��H I
IEnumerable
��J U
<
��U V

GameObject
��V `
>
��` a
objects
��b i
)
��i j
{
�� 	
foreach
�� 
(
�� 
var
�� 

gameObject
�� #
in
��$ &
objects
��' .
)
��. /
driver
�� 
.
�� 
AddFromName
�� "
(
��" #

gameObject
��# -
,
��- .
$str
��/ ;
)
��; <
;
��< =
}
�� 	
internal
�� 
static
�� 
void
��  
PreviewTimeControl
�� /
(
��/ 0 
IPropertyCollector
��0 B
driver
��C I
,
��I J
PlayableDirector
��K [
director
��\ d
,
��d e
IEnumerable
��f q
<
��q r
MonoBehaviour
��r 
>�� �
scripts��� �
)��� �
{
�� 	
foreach
�� 
(
�� 
var
�� 
script
�� 
in
��  "
scripts
��# *
)
��* +
{
�� 
var
�� 
propertyPreview
�� #
=
��$ %
script
��& ,
as
��- /
IPropertyPreview
��0 @
;
��@ A
if
�� 
(
�� 
propertyPreview
�� #
!=
��$ &
null
��' +
)
��+ ,
propertyPreview
�� #
.
��# $
GatherProperties
��$ 4
(
��4 5
director
��5 =
,
��= >
driver
��? E
)
��E F
;
��F G
else
�� 
driver
�� 
.
�� 
AddFromComponent
�� +
(
��+ ,
script
��, 2
.
��2 3

gameObject
��3 =
,
��= >
script
��? E
)
��E F
;
��F G
}
�� 
}
�� 	
internal
�� 
static
�� 
void
�� 
PreviewDirectors
�� -
(
��- . 
IPropertyCollector
��. @
driver
��A G
,
��G H
IEnumerable
��I T
<
��T U
PlayableDirector
��U e
>
��e f
	directors
��g p
)
��p q
{
�� 	
foreach
�� 
(
�� 
var
�� 
childDirector
�� &
in
��' )
	directors
��* 3
)
��3 4
{
�� 
if
�� 
(
�� 
childDirector
�� !
==
��" $
null
��% )
)
��) *
continue
�� 
;
�� 
var
�� 
timeline
�� 
=
�� 
childDirector
�� ,
.
��, -
playableAsset
��- :
as
��; =
TimelineAsset
��> K
;
��K L
if
�� 
(
�� 
timeline
�� 
==
�� 
null
��  $
)
��$ %
continue
�� 
;
�� 
timeline
�� 
.
�� 
GatherProperties
�� )
(
��) *
childDirector
��* 7
,
��7 8
driver
��9 ?
)
��? @
;
��@ A
}
�� 
}
�� 	
}
�� 
}�� �
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
} ѥ
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
�� 	
SerializeField
��	 
]
�� 
AnimationClip
�� &
m_AnimationCurves
��' 8
;
��8 9
[
�� 	
SerializeField
��	 
]
�� 
bool
�� 
m_Recordable
�� *
;
��* +
[
�� 	
SerializeField
��	 
]
�� 
ClipExtrapolation
�� *%
m_PostExtrapolationMode
��+ B
;
��B C
[
�� 	
SerializeField
��	 
]
�� 
ClipExtrapolation
�� *$
m_PreExtrapolationMode
��+ A
;
��A B
[
�� 	
SerializeField
��	 
]
�� 
double
�� %
m_PostExtrapolationTime
��  7
;
��7 8
[
�� 	
SerializeField
��	 
]
�� 
double
�� $
m_PreExtrapolationTime
��  6
;
��6 7
[
�� 	
SerializeField
��	 
]
�� 
string
�� 
m_DisplayName
��  -
;
��- .
public
�� 
bool
�� !
hasPreExtrapolation
�� '
{
�� 	
get
�� 
{
�� 
return
�� $
m_PreExtrapolationMode
�� /
!=
��0 2
ClipExtrapolation
��3 D
.
��D E
None
��E I
&&
��J L$
m_PreExtrapolationTime
��M c
>
��d e
$num
��f g
;
��g h
}
��i j
}
�� 	
public
�� 
bool
�� "
hasPostExtrapolation
�� (
{
�� 	
get
�� 
{
�� 
return
�� %
m_PostExtrapolationMode
�� 0
!=
��1 3
ClipExtrapolation
��4 E
.
��E F
None
��F J
&&
��K M%
m_PostExtrapolationTime
��N e
>
��f g
$num
��h i
;
��i j
}
��k l
}
�� 	
public
�� 
double
�� 
	timeScale
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
SpeedMultiplier
��2 A
)
��A B
?
��C D
Math
��E I
.
��I J
Max
��J M
(
��M N
kTimeScaleMin
��N [
,
��[ \
Math
��] a
.
��a b
Min
��b e
(
��e f
m_TimeScale
��f q
,
��q r
kTimeScaleMax��s �
)��� �
)��� �
:��� �
$num��� �
;��� �
}��� �
set
�� 
{
�� 
UpdateDirty
�� 
(
�� 
m_TimeScale
�� '
,
��' (
value
��) .
)
��. /
;
��/ 0
m_TimeScale
�� 
=
�� 
clipCaps
�� &
.
��& '
HasAny
��' -
(
��- .
ClipCaps
��. 6
.
��6 7
SpeedMultiplier
��7 F
)
��F G
?
��H I
Math
��J N
.
��N O
Max
��O R
(
��R S
kTimeScaleMin
��S `
,
��` a
Math
��b f
.
��f g
Min
��g j
(
��j k
value
��k p
,
��p q
kTimeScaleMax
��r 
)�� �
)��� �
:��� �
$num��� �
;��� �
}
�� 
}
�� 	
public
�� 
double
�� 
start
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Start
��  
;
��  !
}
��" #
set
�� 
{
�� 
UpdateDirty
�� 
(
�� 
value
�� !
,
��! "
m_Start
��# *
)
��* +
;
��+ ,
var
�� 
newValue
�� 
=
�� 
Math
�� #
.
��# $
Max
��$ '
(
��' (
SanitizeTimeValue
��( 9
(
��9 :
value
��: ?
,
��? @
m_Start
��A H
)
��H I
,
��I J
$num
��K L
)
��L M
;
��M N
if
�� 
(
�� 
m_ParentTrack
�� !
!=
��" $
null
��% )
&&
��* ,
m_Start
��- 4
!=
��5 7
newValue
��8 @
)
��@ A
{
�� 
m_ParentTrack
�� !
.
��! "

OnClipMove
��" ,
(
��, -
)
��- .
;
��. /
}
�� 
m_Start
�� 
=
�� 
newValue
�� "
;
��" #
}
�� 
}
�� 	
public
�� 
double
�� 
duration
�� 
{
�� 	
get
�� 
{
�� 
return
�� 

m_Duration
�� #
;
��# $
}
��% &
set
�� 
{
�� 
UpdateDirty
�� 
(
�� 

m_Duration
�� &
,
��& '
value
��( -
)
��- .
;
��. /

m_Duration
�� 
=
�� 
Math
�� !
.
��! "
Max
��" %
(
��% &
SanitizeTimeValue
��& 7
(
��7 8
value
��8 =
,
��= >

m_Duration
��? I
)
��I J
,
��J K
double
��L R
.
��R S
Epsilon
��S Z
)
��Z [
;
��[ \
}
�� 
}
�� 	
public
�� 
double
�� 
end
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Start
��  
+
��! "

m_Duration
��# -
;
��- .
}
��/ 0
}
�� 	
public
�� 
double
�� 
clipIn
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
ClipIn
��2 8
)
��8 9
?
��: ;
m_ClipIn
��< D
:
��E F
$num
��G H
;
��H I
}
��J K
set
�� 
{
�� 
UpdateDirty
�� 
(
�� 
m_ClipIn
�� $
,
��$ %
value
��& +
)
��+ ,
;
��, -
m_ClipIn
�� 
=
�� 
clipCaps
�� #
.
��# $
HasAny
��$ *
(
��* +
ClipCaps
��+ 3
.
��3 4
ClipIn
��4 :
)
��: ;
?
��< =
Math
��> B
.
��B C
Max
��C F
(
��F G
Math
��G K
.
��K L
Min
��L O
(
��O P
SanitizeTimeValue
��P a
(
��a b
value
��b g
,
��g h
m_ClipIn
��i q
)
��q r
,
��r s
kMaxTimeValue��t �
)��� �
,��� �
$num��� �
)��� �
:��� �
$num��� �
;��� �
}
�� 
}
�� 	
public
�� 
string
�� 
displayName
�� !
{
�� 	
get
�� 
{
�� 
return
�� 
m_DisplayName
�� &
;
��& '
}
��( )
set
�� 
{
�� 
m_DisplayName
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
public
�� 
double
�� 
clipAssetDuration
�� '
{
�� 	
get
�� 
{
�� 
var
�� 
playableAsset
�� !
=
��" #
m_Asset
��$ +
as
��, .
IPlayableAsset
��/ =
;
��= >
return
�� 
playableAsset
�� $
!=
��% '
null
��( ,
?
��- .
playableAsset
��/ <
.
��< =
duration
��= E
:
��F G
double
��H N
.
��N O
MaxValue
��O W
;
��W X
}
�� 
}
�� 	
public
�� 
AnimationClip
�� 
curves
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
m_AnimationCurves
�� *
;
��* +
}
��, -
internal
�� 
set
�� 
{
�� 
m_AnimationCurves
�� ,
=
��- .
value
��/ 4
;
��4 5
}
��6 7
}
�� 	
string
�� 
ICurvesOwner
�� 
.
�� 
defaultCurvesName
�� -
{
�� 	
get
�� 
{
�� 
return
��  
kDefaultCurvesName
�� +
;
��+ ,
}
��- .
}
�� 	
public
�� 
bool
�� 
	hasCurves
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_AnimationCurves
�� *
!=
��+ -
null
��. 2
&&
��3 5
!
��6 7
m_AnimationCurves
��7 H
.
��H I
empty
��I N
;
��N O
}
��P Q
}
�� 	
public
�� 
Object
�� 
asset
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Asset
��  
;
��  !
}
��" #
set
�� 
{
�� 
m_Asset
�� 
=
�� 
value
�� !
;
��! "
}
��# $
}
�� 	
Object
�� 
ICurvesOwner
�� 
.
�� 

assetOwner
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
GetParentTrack
�� '
(
��' (
)
��( )
;
��) *
}
��+ ,
}
�� 	

TrackAsset
�� 
ICurvesOwner
�� 
.
��  
targetTrack
��  +
{
�� 	
get
�� 
{
�� 
return
�� 
GetParentTrack
�� '
(
��' (
)
��( )
;
��) *
}
��+ ,
}
�� 	
[
�� 	
Obsolete
��	 
(
�� 
$str
�� T
,
��T U
true
��V Z
)
��Z [
]
��[ \
public
�� 
Object
�� 
underlyingAsset
�� %
{
�� 	
get
�� 
{
�� 
return
�� 
null
�� 
;
�� 
}
��  
set
�� 
{
�� 
}
�� 
}
�� 	
[
�� 	
Obsolete
��	 
(
�� 
$str
�� [
+
��\ ]
nameof
��^ d
(
��d e
GetParentTrack
��e s
)
��s t
+
��u v
$str��w �
+��� �
nameof��� �
(��� �&
TimelineClipExtensions��� �
)��� �
+��� �
$str��� �
+��� �
nameof��� �
(��� �&
TimelineClipExtensions��� �
.��� �
MoveToTrack��� �
)��� �
+��� �
$str��� �
+��� �
nameof��� �
(��� �&
TimelineClipExtensions��� �
)��� �
+��� �
$str��� �
+��� �
nameof��� �
(��� �&
TimelineClipExtensions��� �
.��� �
TryMoveToTrack��� �
)��� �
+��� �
$str��� �
,��� �
false��� �
)��� �
]��� �
public
�� 

TrackAsset
�� 
parentTrack
�� %
{
�� 	
get
�� 
{
�� 
return
�� 
m_ParentTrack
�� &
;
��& '
}
��( )
set
�� 
{
�� %
SetParentTrack_Internal
�� )
(
��) *
value
��* /
)
��/ 0
;
��0 1
}
��2 3
}
�� 	
public
�� 

TrackAsset
�� 
GetParentTrack
�� (
(
��( )
)
��) *
{
�� 	
return
�� 
m_ParentTrack
��  
;
��  !
}
�� 	
internal
�� 
void
�� %
SetParentTrack_Internal
�� -
(
��- .

TrackAsset
��. 8
newParentTrack
��9 G
)
��G H
{
�� 	
if
�� 
(
�� 
m_ParentTrack
�� 
==
��  
newParentTrack
��! /
)
��/ 0
return
�� 
;
�� 
if
�� 
(
�� 
m_ParentTrack
�� 
!=
��  
null
��! %
)
��% &
m_ParentTrack
�� 
.
�� 

RemoveClip
�� (
(
��( )
this
��) -
)
��- .
;
��. /
m_ParentTrack
�� 
=
�� 
newParentTrack
�� *
;
��* +
if
�� 
(
�� 
m_ParentTrack
�� 
!=
��  
null
��! %
)
��% &
m_ParentTrack
�� 
.
�� 
AddClip
�� %
(
��% &
this
��& *
)
��* +
;
��+ ,
}
�� 	
public
�� 
double
�� 
easeInDuration
�� $
{
�� 	
get
�� 
{
�� 
var
�� 
availableDuration
�� %
=
��& '
hasBlendOut
��( 3
?
��4 5
duration
��6 >
-
��? @ 
m_BlendOutDuration
��A S
:
��T U
duration
��V ^
;
��^ _
return
�� 
clipCaps
�� 
.
��  
HasAny
��  &
(
��& '
ClipCaps
��' /
.
��/ 0
Blending
��0 8
)
��8 9
?
��: ;
Math
��< @
.
��@ A
Min
��A D
(
��D E
Math
��E I
.
��I J
Max
��J M
(
��M N
m_EaseInDuration
��N ^
,
��^ _
$num
��` a
)
��a b
,
��b c
availableDuration
��d u
)
��u v
:
��w x
$num
��y z
;
��z {
}
�� 
set
�� 
{
�� 
var
�� 
availableDuration
�� %
=
��& '
hasBlendOut
��( 3
?
��4 5
duration
��6 >
-
��? @ 
m_BlendOutDuration
��A S
:
��T U
duration
��V ^
;
��^ _
m_EaseInDuration
��  
=
��! "
clipCaps
��# +
.
��+ ,
HasAny
��, 2
(
��2 3
ClipCaps
��3 ;
.
��; <
Blending
��< D
)
��D E
?
��F G
Math
��H L
.
��L M
Max
��M P
(
��P Q
$num
��Q R
,
��R S
Math
��T X
.
��X Y
Min
��Y \
(
��\ ]
SanitizeTimeValue
��] n
(
��n o
value
��o t
,
��t u
m_EaseInDuration��v �
)��� �
,��� �!
availableDuration��� �
)��� �
)��� �
:��� �
$num��� �
;��� �
}
�� 
}
�� 	
public
�� 
double
�� 
easeOutDuration
�� %
{
�� 	
get
�� 
{
�� 
var
�� 
availableDuration
�� %
=
��& '

hasBlendIn
��( 2
?
��3 4
duration
��5 =
-
��> ?
m_BlendInDuration
��@ Q
:
��R S
duration
��T \
;
��\ ]
return
�� 
clipCaps
�� 
.
��  
HasAny
��  &
(
��& '
ClipCaps
��' /
.
��/ 0
Blending
��0 8
)
��8 9
?
��: ;
Math
��< @
.
��@ A
Min
��A D
(
��D E
Math
��E I
.
��I J
Max
��J M
(
��M N
m_EaseOutDuration
��N _
,
��_ `
$num
��a b
)
��b c
,
��c d
availableDuration
��e v
)
��v w
:
��x y
$num
��z {
;
��{ |
}
�� 
set
�� 
{
�� 
var
�� 
availableDuration
�� %
=
��& '

hasBlendIn
��( 2
?
��3 4
duration
��5 =
-
��> ?
m_BlendInDuration
��@ Q
:
��R S
duration
��T \
;
��\ ]
m_EaseOutDuration
�� !
=
��" #
clipCaps
��$ ,
.
��, -
HasAny
��- 3
(
��3 4
ClipCaps
��4 <
.
��< =
Blending
��= E
)
��E F
?
��G H
Math
��I M
.
��M N
Max
��N Q
(
��Q R
$num
��R S
,
��S T
Math
��U Y
.
��Y Z
Min
��Z ]
(
��] ^
SanitizeTimeValue
��^ o
(
��o p
value
��p u
,
��u v 
m_EaseOutDuration��w �
)��� �
,��� �!
availableDuration��� �
)��� �
)��� �
:��� �
$num��� �
;��� �
}
�� 
}
�� 	
[
�� 	
Obsolete
��	 
(
�� 
$str
�� L
,
��L M
true
��N R
)
��R S
]
��S T
public
�� 
double
�� 
eastOutTime
�� !
{
�� 	
get
�� 
{
�� 
return
�� 
duration
�� !
-
��" #
easeOutDuration
��$ 3
+
��4 5
m_Start
��6 =
;
��= >
}
��? @
}
�� 	
public
�� 
double
�� 
easeOutTime
�� !
{
�� 	
get
�� 
{
�� 
return
�� 
duration
�� !
-
��" #
easeOutDuration
��$ 3
+
��4 5
m_Start
��6 =
;
��= >
}
��? @
}
�� 	
public
�� 
double
�� 
blendInDuration
�� %
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
Blending
��2 :
)
��: ;
?
��< =
m_BlendInDuration
��> O
:
��P Q
$num
��R S
;
��S T
}
��U V
set
�� 
{
�� 
m_BlendInDuration
�� #
=
��$ %
clipCaps
��& .
.
��. /
HasAny
��/ 5
(
��5 6
ClipCaps
��6 >
.
��> ?
Blending
��? G
)
��G H
?
��I J
SanitizeTimeValue
��K \
(
��\ ]
value
��] b
,
��b c
m_BlendInDuration
��d u
)
��u v
:
��w x
$num
��y z
;
��z {
}
��| }
}
�� 	
public
�� 
double
�� 
blendOutDuration
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
Blending
��2 :
)
��: ;
?
��< = 
m_BlendOutDuration
��> P
:
��Q R
$num
��S T
;
��T U
}
��V W
set
�� 
{
��  
m_BlendOutDuration
�� $
=
��% &
clipCaps
��' /
.
��/ 0
HasAny
��0 6
(
��6 7
ClipCaps
��7 ?
.
��? @
Blending
��@ H
)
��H I
?
��J K
SanitizeTimeValue
��L ]
(
��] ^
value
��^ c
,
��c d 
m_BlendOutDuration
��e w
)
��w x
:
��y z
$num
��{ |
;
��| }
}
��~ 
}
�� 	
public
�� 
BlendCurveMode
�� 
blendInCurveMode
�� .
{
�� 	
get
�� 
{
�� 
return
��  
m_BlendInCurveMode
�� +
;
��+ ,
}
��- .
set
�� 
{
��  
m_BlendInCurveMode
�� $
=
��% &
value
��' ,
;
��, -
}
��. /
}
�� 	
public
�� 
BlendCurveMode
�� 
blendOutCurveMode
�� /
{
�� 	
get
�� 
{
�� 
return
�� !
m_BlendOutCurveMode
�� ,
;
��, -
}
��. /
set
�� 
{
�� !
m_BlendOutCurveMode
�� %
=
��& '
value
��( -
;
��- .
}
��/ 0
}
�� 	
public
�� 
bool
�� 

hasBlendIn
�� 
{
��  
get
��! $
{
��% &
return
��' -
clipCaps
��. 6
.
��6 7
HasAny
��7 =
(
��= >
ClipCaps
��> F
.
��F G
Blending
��G O
)
��O P
&&
��Q S
m_BlendInDuration
��T e
>
��f g
$num
��h i
;
��i j
}
��k l
}
��m n
public
�� 
bool
�� 
hasBlendOut
�� 
{
��  !
get
��" %
{
��& '
return
��( .
clipCaps
��/ 7
.
��7 8
HasAny
��8 >
(
��> ?
ClipCaps
��? G
.
��G H
Blending
��H P
)
��P Q
&&
��R T 
m_BlendOutDuration
��U g
>
��h i
$num
��j k
;
��k l
}
��m n
}
��o p
public
�� 
AnimationCurve
�� 

mixInCurve
�� (
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
m_MixInCurve
��  
==
��! #
null
��$ (
||
��) +
m_MixInCurve
��, 8
.
��8 9
length
��9 ?
<
��@ A
$num
��B C
)
��C D
m_MixInCurve
��  
=
��! ""
GetDefaultMixInCurve
��# 7
(
��7 8
)
��8 9
;
��9 :
return
�� 
m_MixInCurve
�� #
;
��# $
}
�� 
set
�� 
{
�� 
m_MixInCurve
�� 
=
��  
value
��! &
;
��& '
}
��( )
}
�� 	
public
�� 
float
�� 
mixInPercentage
�� $
{
�� 	
get
�� 
{
�� 
return
�� 
(
�� 
float
�� 
)
��  
(
��  !
mixInDuration
��! .
/
��/ 0
duration
��1 9
)
��9 :
;
��: ;
}
��< =
}
�� 	
public
�� 
double
�� 
mixInDuration
�� #
{
�� 	
get
�� 
{
�� 
return
�� 

hasBlendIn
�� #
?
��$ %
blendInDuration
��& 5
:
��6 7
easeInDuration
��8 F
;
��F G
}
��H I
}
�� 	
public
�� 
AnimationCurve
�� 
mixOutCurve
�� )
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
m_MixOutCurve
�� !
==
��" $
null
��% )
||
��* ,
m_MixOutCurve
��- :
.
��: ;
length
��; A
<
��B C
$num
��D E
)
��E F
m_MixOutCurve
�� !
=
��" ##
GetDefaultMixOutCurve
��$ 9
(
��9 :
)
��: ;
;
��; <
return
�� 
m_MixOutCurve
�� $
;
��$ %
}
�� 
set
�� 
{
�� 
m_MixOutCurve
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
public
�� 
double
�� 

mixOutTime
��  
{
�� 	
get
�� 
{
�� 
return
�� 
duration
�� !
-
��" #
mixOutDuration
��$ 2
+
��3 4
m_Start
��5 <
;
��< =
}
��> ?
}
�� 	
public
�� 
double
�� 
mixOutDuration
�� $
{
�� 	
get
�� 
{
�� 
return
�� 
hasBlendOut
�� $
?
��% &
blendOutDuration
��' 7
:
��8 9
easeOutDuration
��: I
;
��I J
}
��K L
}
�� 	
public
�� 
float
�� 
mixOutPercentage
�� %
{
�� 	
get
�� 
{
�� 
return
�� 
(
�� 
float
�� 
)
��  
(
��  !
mixOutDuration
��! /
/
��0 1
duration
��2 :
)
��: ;
;
��; <
}
��= >
}
�� 	
public
�� 
bool
�� 

recordable
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Recordable
�� %
;
��% &
}
��' (
internal
�� 
set
�� 
{
�� 
m_Recordable
�� '
=
��( )
value
��* /
;
��/ 0
}
��1 2
}
�� 	
[
�� 	
Obsolete
��	 
(
�� 
$str
�� Z
,
��Z [
true
��\ `
)
��` a
]
��a b
public
�� 
List
�� 
<
�� 
string
�� 
>
�� 
exposedParameters
�� -
{
�� 	
get
�� 
{
�� 
return
�� %
m_ExposedParameterNames
�� 0
??
��1 3
(
��4 5%
m_ExposedParameterNames
��5 L
=
��M N
new
��O R
List
��S W
<
��W X
string
��X ^
>
��^ _
(
��_ `
)
��` a
)
��a b
;
��b c
}
��d e
}
�� 	
public
�� 
ClipCaps
�� 
clipCaps
��  
{
�� 	
get
�� 
{
�� 
var
�� 
	clipAsset
�� 
=
�� 
asset
��  %
as
��& ( 
ITimelineClipAsset
��) ;
;
��; <
return
�� 
(
�� 
	clipAsset
�� !
!=
��" $
null
��% )
)
��) *
?
��+ ,
	clipAsset
��- 6
.
��6 7
clipCaps
��7 ?
:
��@ A
kDefaultClipCaps
��B R
;
��R S
}
�� 
}
�� 	
internal
�� 
int
�� 
Hash
�� 
(
�� 
)
�� 
{
�� 	
return
�� 
HashUtility
�� 
.
�� 
CombineHash
�� *
(
��* +
m_Start
��+ 2
.
��2 3
GetHashCode
��3 >
(
��> ?
)
��? @
,
��@ A

m_Duration
�� 
.
�� 
GetHashCode
�� &
(
��& '
)
��' (
,
��( )
m_TimeScale
�� 
.
�� 
GetHashCode
�� '
(
��' (
)
��( )
,
��) *
m_ClipIn
�� 
.
�� 
GetHashCode
�� $
(
��$ %
)
��% &
,
��& '
(
�� 
(
�� 
int
�� 
)
�� $
m_PreExtrapolationMode
�� ,
)
��, -
.
��- .
GetHashCode
��. 9
(
��9 :
)
��: ;
,
��; <
(
�� 
(
�� 
int
�� 
)
�� %
m_PostExtrapolationMode
�� -
)
��- .
.
��. /
GetHashCode
��/ :
(
��: ;
)
��; <
)
��< =
;
��= >
}
�� 	
public
�� 
float
�� 
EvaluateMixOut
�� #
(
��# $
double
��$ *
time
��+ /
)
��/ 0
{
�� 	
if
�� 
(
�� 
!
�� 
clipCaps
�� 
.
�� 
HasAny
��  
(
��  !
ClipCaps
��! )
.
��) *
Blending
��* 2
)
��2 3
)
��3 4
return
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
mixOutDuration
�� 
>
��  
Mathf
��! &
.
��& '
Epsilon
��' .
)
��. /
{
�� 
var
�� 
perc
�� 
=
�� 
(
�� 
float
�� !
)
��! "
(
��" #
time
��# '
-
��( )

mixOutTime
��* 4
)
��4 5
/
��6 7
(
��8 9
float
��9 >
)
��> ?
mixOutDuration
��? M
;
��M N
perc
�� 
=
�� 
Mathf
�� 
.
�� 
Clamp01
�� $
(
��$ %
mixOutCurve
��% 0
.
��0 1
Evaluate
��1 9
(
��9 :
perc
��: >
)
��> ?
)
��? @
;
��@ A
return
�� 
perc
�� 
;
�� 
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
public
�� 
float
�� 
EvaluateMixIn
�� "
(
��" #
double
��# )
time
��* .
)
��. /
{
�� 	
if
�� 
(
�� 
!
�� 
clipCaps
�� 
.
�� 
HasAny
��  
(
��  !
ClipCaps
��! )
.
��) *
Blending
��* 2
)
��2 3
)
��3 4
return
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
mixInDuration
�� 
>
�� 
Mathf
��  %
.
��% &
Epsilon
��& -
)
��- .
{
�� 
var
�� 
perc
�� 
=
�� 
(
�� 
float
�� !
)
��! "
(
��" #
time
��# '
-
��( )
m_Start
��* 1
)
��1 2
/
��3 4
(
��5 6
float
��6 ;
)
��; <
mixInDuration
��< I
;
��I J
perc
�� 
=
�� 
Mathf
�� 
.
�� 
Clamp01
�� $
(
��$ %

mixInCurve
��% /
.
��/ 0
Evaluate
��0 8
(
��8 9
perc
��9 =
)
��= >
)
��> ?
;
��? @
return
�� 
perc
�� 
;
�� 
}
�� 
return
�� 
$num
�� 
;
�� 
}
�� 	
static
�� 
AnimationCurve
�� "
GetDefaultMixInCurve
�� 2
(
��2 3
)
��3 4
{
�� 	
return
�� 
AnimationCurve
�� !
.
��! "
	EaseInOut
��" +
(
��+ ,
$num
��, -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
;
��7 8
}
�� 	
static
�� 
AnimationCurve
�� #
GetDefaultMixOutCurve
�� 3
(
��3 4
)
��4 5
{
�� 	
return
�� 
AnimationCurve
�� !
.
��! "
	EaseInOut
��" +
(
��+ ,
$num
��, -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
;
��7 8
}
�� 	
public
�� 
double
�� 
ToLocalTime
�� !
(
��! "
double
��" (
time
��) -
)
��- .
{
�� 	
if
�� 
(
�� 
time
�� 
<
�� 
$num
�� 
)
�� 
return
�� 
time
�� 
;
�� 
if
�� 
(
�� #
IsPreExtrapolatedTime
�� %
(
��% &
time
��& *
)
��* +
)
��+ ,
time
�� 
=
�� !
GetExtrapolatedTime
�� *
(
��* +
time
��+ /
-
��0 1
m_Start
��2 9
,
��9 :$
m_PreExtrapolationMode
��; Q
,
��Q R

m_Duration
��S ]
)
��] ^
;
��^ _
else
�� 
if
�� 
(
�� $
IsPostExtrapolatedTime
�� +
(
��+ ,
time
��, 0
)
��0 1
)
��1 2
time
�� 
=
�� !
GetExtrapolatedTime
�� *
(
��* +
time
��+ /
-
��0 1
m_Start
��2 9
,
��9 :%
m_PostExtrapolationMode
��; R
,
��R S

m_Duration
��T ^
)
��^ _
;
��_ `
else
�� 
time
�� 
-=
�� 
m_Start
�� 
;
��  
time
�� 
*=
�� 
	timeScale
�� 
;
�� 
time
�� 
+=
�� 
clipIn
�� 
;
�� 
return
�� 
time
�� 
;
�� 
}
�� 	
public
�� 
double
��  
ToLocalTimeUnbound
�� (
(
��( )
double
��) /
time
��0 4
)
��4 5
{
�� 	
return
�� 
(
�� 
time
�� 
-
�� 
m_Start
�� "
)
��" #
*
��$ %
	timeScale
��& /
+
��0 1
clipIn
��2 8
;
��8 9
}
�� 	
internal
�� 
double
�� "
FromLocalTimeUnbound
�� ,
(
��, -
double
��- 3
time
��4 8
)
��8 9
{
�� 	
return
�� 
(
�� 
time
�� 
-
�� 
clipIn
�� !
)
��! "
/
��# $
	timeScale
��% .
+
��/ 0
m_Start
��1 8
;
��8 9
}
�� 	
public
�� 
AnimationClip
�� 
animationClip
�� *
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
m_Asset
�� 
==
�� 
null
�� #
)
��# $
return
�� 
null
�� 
;
��  
var
�� 
playableAsset
�� !
=
��" #
m_Asset
��$ +
as
��, .$
AnimationPlayableAsset
��/ E
;
��E F
return
�� 
playableAsset
�� $
!=
��% '
null
��( ,
?
��- .
playableAsset
��/ <
.
��< =
clip
��= A
:
��B C
null
��D H
;
��H I
}
�� 
}
�� 	
static
�� 
double
�� 
SanitizeTimeValue
�� '
(
��' (
double
��( .
value
��/ 4
,
��4 5
double
��6 <
defaultValue
��= I
)
��I J
{
�� 	
if
�� 
(
�� 
double
�� 
.
�� 

IsInfinity
�� !
(
��! "
value
��" '
)
��' (
||
��) +
double
��, 2
.
��2 3
IsNaN
��3 8
(
��8 9
value
��9 >
)
��> ?
)
��? @
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
$str
�� <
)
��< =
;
��= >
return
�� 
defaultValue
�� #
;
��# $
}
�� 
return
�� 
Math
�� 
.
�� 
Max
�� 
(
�� 
-
�� 
kMaxTimeValue
�� *
,
��* +
Math
��, 0
.
��0 1
Min
��1 4
(
��4 5
kMaxTimeValue
��5 B
,
��B C
value
��D I
)
��I J
)
��J K
;
��K L
}
�� 	
public
�� 
ClipExtrapolation
��  #
postExtrapolationMode
��! 6
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
Extrapolation
��2 ?
)
��? @
?
��A B%
m_PostExtrapolationMode
��C Z
:
��[ \
ClipExtrapolation
��] n
.
��n o
None
��o s
;
��s t
}
��u v
internal
�� 
set
�� 
{
�� %
m_PostExtrapolationMode
�� 2
=
��3 4
clipCaps
��5 =
.
��= >
HasAny
��> D
(
��D E
ClipCaps
��E M
.
��M N
Extrapolation
��N [
)
��[ \
?
��] ^
value
��_ d
:
��e f
ClipExtrapolation
��g x
.
��x y
None
��y }
;
��} ~
}�� �
}
�� 	
public
�� 
ClipExtrapolation
��  "
preExtrapolationMode
��! 5
{
�� 	
get
�� 
{
�� 
return
�� 
clipCaps
�� !
.
��! "
HasAny
��" (
(
��( )
ClipCaps
��) 1
.
��1 2
Extrapolation
��2 ?
)
��? @
?
��A B$
m_PreExtrapolationMode
��C Y
:
��Z [
ClipExtrapolation
��\ m
.
��m n
None
��n r
;
��r s
}
��t u
internal
�� 
set
�� 
{
�� $
m_PreExtrapolationMode
�� 1
=
��2 3
clipCaps
��4 <
.
��< =
HasAny
��= C
(
��C D
ClipCaps
��D L
.
��L M
Extrapolation
��M Z
)
��Z [
?
��\ ]
value
��^ c
:
��d e
ClipExtrapolation
��f w
.
��w x
None
��x |
;
��| }
}
��~ 
}
�� 	
internal
�� 
void
�� &
SetPostExtrapolationTime
�� .
(
��. /
double
��/ 5
time
��6 :
)
��: ;
{
�� 	%
m_PostExtrapolationTime
�� #
=
��$ %
time
��& *
;
��* +
}
�� 	
internal
�� 
void
�� %
SetPreExtrapolationTime
�� -
(
��- .
double
��. 4
time
��5 9
)
��9 :
{
�� 	$
m_PreExtrapolationTime
�� "
=
��# $
time
��% )
;
��) *
}
�� 	
public
�� 
bool
��  
IsExtrapolatedTime
�� &
(
��& '
double
��' -
sequenceTime
��. :
)
��: ;
{
�� 	
return
�� #
IsPreExtrapolatedTime
�� (
(
��( )
sequenceTime
��) 5
)
��5 6
||
��7 9$
IsPostExtrapolatedTime
��: P
(
��P Q
sequenceTime
��Q ]
)
��] ^
;
��^ _
}
�� 	
public
�� 
bool
�� #
IsPreExtrapolatedTime
�� )
(
��) *
double
��* 0
sequenceTime
��1 =
)
��= >
{
�� 	
return
�� "
preExtrapolationMode
�� '
!=
��( *
ClipExtrapolation
��+ <
.
��< =
None
��= A
&&
��B D
sequenceTime
�� 
<
�� 
m_Start
�� &
&&
��' )
sequenceTime
��* 6
>=
��7 9
m_Start
��: A
-
��B C$
m_PreExtrapolationTime
��D Z
;
��Z [
}
�� 	
public
�� 
bool
�� $
IsPostExtrapolatedTime
�� *
(
��* +
double
��+ 1
sequenceTime
��2 >
)
��> ?
{
�� 	
return
�� #
postExtrapolationMode
�� (
!=
��) +
ClipExtrapolation
��, =
.
��= >
None
��> B
&&
��C E
(
�� 
sequenceTime
�� 
>
�� 
end
��  #
)
��# $
&&
��% '
(
��( )
sequenceTime
��) 5
-
��6 7
end
��8 ;
<
��< =%
m_PostExtrapolationTime
��> U
)
��U V
;
��V W
}
�� 	
public
�� 
double
�� 
extrapolatedStart
�� '
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� $
m_PreExtrapolationMode
�� *
!=
��+ -
ClipExtrapolation
��. ?
.
��? @
None
��@ D
)
��D E
return
�� 
m_Start
�� "
-
��# $$
m_PreExtrapolationTime
��% ;
;
��; <
return
�� 
m_Start
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
double
�� "
extrapolatedDuration
�� *
{
�� 	
get
�� 
{
�� 
double
�� 
length
�� 
=
�� 

m_Duration
��  *
;
��* +
if
�� 
(
�� %
m_PostExtrapolationMode
�� +
!=
��, .
ClipExtrapolation
��/ @
.
��@ A
None
��A E
)
��E F
length
�� 
+=
�� 
Math
�� "
.
��" #
Min
��# &
(
��& '%
m_PostExtrapolationTime
��' >
,
��> ?
kMaxTimeValue
��@ M
)
��M N
;
��N O
if
�� 
(
�� $
m_PreExtrapolationMode
�� *
!=
��+ -
ClipExtrapolation
��. ?
.
��? @
None
��@ D
)
��D E
length
�� 
+=
�� $
m_PreExtrapolationTime
�� 4
;
��4 5
return
�� 
length
�� 
;
�� 
}
�� 
}
�� 	
static
�� 
double
�� !
GetExtrapolatedTime
�� )
(
��) *
double
��* 0
time
��1 5
,
��5 6
ClipExtrapolation
��7 H
mode
��I M
,
��M N
double
��O U
duration
��V ^
)
��^ _
{
�� 	
if
�� 
(
�� 
duration
�� 
==
�� 
$num
�� 
)
�� 
return
�� 
$num
�� 
;
�� 
switch
�� 
(
�� 
mode
�� 
)
�� 
{
�� 
case
�� 
ClipExtrapolation
�� &
.
��& '
None
��' +
:
��+ ,
break
�� 
;
�� 
case
�� 
ClipExtrapolation
�� &
.
��& '
Loop
��' +
:
��+ ,
if
�� 
(
�� 
time
�� 
<
�� 
$num
��  
)
��  !
time
�� 
=
�� 
duration
�� '
-
��( )
(
��* +
-
��+ ,
time
��, 0
%
��1 2
duration
��3 ;
)
��; <
;
��< =
else
�� 
if
�� 
(
�� 
time
�� !
>
��" #
duration
��$ ,
)
��, -
time
�� 
%=
�� 
duration
��  (
;
��( )
break
�� 
;
�� 
case
�� 
ClipExtrapolation
�� &
.
��& '
Hold
��' +
:
��+ ,
if
�� 
(
�� 
time
�� 
<
�� 
$num
��  
)
��  !
return
�� 
$num
��  
;
��  !
if
�� 
(
�� 
time
�� 
>
�� 
duration
�� '
)
��' (
return
�� 
duration
�� '
;
��' (
break
�� 
;
�� 
case
�� 
ClipExtrapolation
�� &
.
��& '
PingPong
��' /
:
��/ 0
if
�� 
(
�� 
time
�� 
<
�� 
$num
��  
)
��  !
{
�� 
time
�� 
=
�� 
duration
�� '
*
��( )
$num
��* +
-
��, -
(
��. /
-
��/ 0
time
��0 4
%
��5 6
(
��7 8
duration
��8 @
*
��A B
$num
��C D
)
��D E
)
��E F
;
��F G
time
�� 
=
�� 
duration
�� '
-
��( )
Math
��* .
.
��. /
Abs
��/ 2
(
��2 3
time
��3 7
-
��8 9
duration
��: B
)
��B C
;
��C D
}
�� 
else
�� 
{
�� 
time
�� 
=
�� 
time
�� #
%
��$ %
(
��& '
duration
��' /
*
��0 1
$num
��2 5
)
��5 6
;
��6 7
time
�� 
=
�� 
duration
�� '
-
��( )
Math
��* .
.
��. /
Abs
��/ 2
(
��2 3
time
��3 7
-
��8 9
duration
��: B
)
��B C
;
��C D
}
�� 
break
�� 
;
�� 
case
�� 
ClipExtrapolation
�� &
.
��& '
Continue
��' /
:
��/ 0
break
�� 
;
�� 
}
�� 
return
�� 
time
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
CreateCurves
��  
(
��  !
string
��! '
curvesClipName
��( 6
)
��6 7
{
�� 	
if
�� 
(
�� 
m_AnimationCurves
�� !
!=
��" $
null
��% )
)
��) *
return
�� 
;
�� 
m_AnimationCurves
�� 
=
�� %
TimelineCreateUtilities
��  7
.
��7 8)
CreateAnimationClipForTrack
��8 S
(
��S T
string
��T Z
.
��Z [
IsNullOrEmpty
��[ h
(
��h i
curvesClipName
��i w
)
��w x
?
��y z!
kDefaultCurvesName��{ �
:��� �
curvesClipName��� �
,��� �
GetParentTrack��� �
(��� �
)��� �
,��� �
true��� �
)��� �
;��� �
}
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ ,
OnBeforeSerialize
��, =
(
��= >
)
��> ?
{
�� 	
	m_Version
�� 
=
�� 
k_LatestVersion
�� '
;
��' (
}
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ , 
OnAfterDeserialize
��, >
(
��> ?
)
��? @
{
�� 	
if
�� 
(
�� 
	m_Version
�� 
<
�� 
k_LatestVersion
�� +
)
��+ ,
{
�� $
UpgradeToLatestVersion
�� &
(
��& '
)
��' (
;
��( )
}
�� 
}
�� 	
public
�� 
override
�� 
string
�� 
ToString
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
UnityString
�� 
.
�� 
Format
�� %
(
��% &
$str
��& I
,
��I J
displayName
��K V
,
��V W
start
��X ]
,
��] ^
end
��_ b
,
��b c
clipIn
��d j
,
��j k
GetParentTrack
��l z
(
��z {
)
��{ |
)
��| }
;
��} ~
}
�� 	
public
�� 
void
�� 
ConformEaseValues
�� %
(
��% &
)
��& '
{
�� 	
if
�� 
(
�� 
m_EaseInDuration
��  
+
��! "
m_EaseOutDuration
��# 4
>
��5 6
duration
��7 ?
)
��? @
{
�� 
var
�� 
ratio
�� 
=
�� "
CalculateEasingRatio
�� 0
(
��0 1
m_EaseInDuration
��1 A
,
��A B
m_EaseOutDuration
��C T
)
��T U
;
��U V
m_EaseInDuration
��  
=
��! "
duration
��# +
*
��, -
ratio
��. 3
;
��3 4
m_EaseOutDuration
�� !
=
��" #
duration
��$ ,
*
��- .
(
��/ 0
$num
��0 3
-
��4 5
ratio
��6 ;
)
��; <
;
��< =
}
�� 
}
�� 	
static
�� 
double
�� "
CalculateEasingRatio
�� *
(
��* +
double
��+ 1
easeIn
��2 8
,
��8 9
double
��: @
easeOut
��A H
)
��H I
{
�� 	
if
�� 
(
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 
easeIn
�� 
-
��  !
easeOut
��" )
)
��) *
<
��+ ,
TimeUtility
��- 8
.
��8 9
kTimeEpsilon
��9 E
)
��E F
return
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
easeIn
�� 
==
�� 
$num
�� 
)
�� 
return
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
easeOut
�� 
==
�� 
$num
�� 
)
�� 
return
�� 
$num
�� 
;
�� 
return
�� 
easeIn
�� 
/
�� 
(
�� 
easeIn
�� #
+
��$ %
easeOut
��& -
)
��- .
;
��. /
}
�� 	
internal
�� 
int
�� 

DirtyIndex
�� 
{
��  !
get
��" %
;
��% &
private
��' .
set
��/ 2
;
��2 3
}
��4 5
internal
�� 
void
�� 
	MarkDirty
�� 
(
��  
)
��  !
{
�� 	

DirtyIndex
�� 
++
�� 
;
�� 
}
�� 	
void
�� 
UpdateDirty
�� 
(
�� 
double
�� 
oldValue
��  (
,
��( )
double
��* 0
newValue
��1 9
)
��9 :
{
�� 	
if
�� 
(
�� 
oldValue
�� 
!=
�� 
newValue
�� $
)
��$ %

DirtyIndex
�� 
++
�� 
;
�� 
}
�� 	
}
�� 
;
�� 
}�� �2
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
}]] �
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
}77 ��
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
�� 
static
�� 
explicit
�� 
operator
�� '
DiscreteTime
��( 4
(
��4 5
double
��5 ;
time
��< @
)
��@ A
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
time
��$ (
)
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
explicit
�� 
operator
�� '
DiscreteTime
��( 4
(
��4 5
float
��5 :
time
��; ?
)
��? @
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
time
��$ (
)
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
implicit
�� 
operator
�� '
DiscreteTime
��( 4
(
��4 5
Int32
��5 :
time
��; ?
)
��? @
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
time
��$ (
)
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
explicit
�� 
operator
�� '
DiscreteTime
��( 4
(
��4 5
Int64
��5 :
time
��; ?
)
��? @
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
time
��$ (
)
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
==
��$ &
(
��& '
DiscreteTime
��' 3
lhs
��4 7
,
��7 8
DiscreteTime
��9 E
rhs
��F I
)
��I J
{
�� 	
return
�� 
lhs
�� 
.
�� 
m_DiscreteTime
�� %
==
��& (
rhs
��) ,
.
��, -
m_DiscreteTime
��- ;
;
��; <
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
!=
��$ &
(
��& '
DiscreteTime
��' 3
lhs
��4 7
,
��7 8
DiscreteTime
��9 E
rhs
��F I
)
��I J
{
�� 	
return
�� 
!
�� 
(
�� 
lhs
�� 
==
�� 
rhs
�� 
)
��  
;
��  !
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
>
��$ %
(
��% &
DiscreteTime
��& 2
lhs
��3 6
,
��6 7
DiscreteTime
��8 D
rhs
��E H
)
��H I
{
�� 	
return
�� 
lhs
�� 
.
�� 
m_DiscreteTime
�� %
>
��& '
rhs
��( +
.
��+ ,
m_DiscreteTime
��, :
;
��: ;
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
<
��$ %
(
��% &
DiscreteTime
��& 2
lhs
��3 6
,
��6 7
DiscreteTime
��8 D
rhs
��E H
)
��H I
{
�� 	
return
�� 
lhs
�� 
.
�� 
m_DiscreteTime
�� %
<
��& '
rhs
��( +
.
��+ ,
m_DiscreteTime
��, :
;
��: ;
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
<=
��$ &
(
��& '
DiscreteTime
��' 3
lhs
��4 7
,
��7 8
DiscreteTime
��9 E
rhs
��F I
)
��I J
{
�� 	
return
�� 
lhs
�� 
.
�� 
m_DiscreteTime
�� %
<=
��& (
rhs
��) ,
.
��, -
m_DiscreteTime
��- ;
;
��; <
}
�� 	
public
�� 
static
�� 
bool
�� 
operator
�� #
>=
��$ &
(
��& '
DiscreteTime
��' 3
lhs
��4 7
,
��7 8
DiscreteTime
��9 E
rhs
��F I
)
��I J
{
�� 	
return
�� 
lhs
�� 
.
�� 
m_DiscreteTime
�� %
>=
��& (
rhs
��) ,
.
��, -
m_DiscreteTime
��- ;
;
��; <
}
�� 	
public
�� 
static
�� 
DiscreteTime
�� "
operator
��# +
+
��, -
(
��- .
DiscreteTime
��. :
lhs
��; >
,
��> ?
DiscreteTime
��@ L
rhs
��M P
)
��P Q
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
lhs
��$ '
.
��' (
m_DiscreteTime
��( 6
+
��7 8
rhs
��9 <
.
��< =
m_DiscreteTime
��= K
)
��K L
;
��L M
}
�� 	
public
�� 
static
�� 
DiscreteTime
�� "
operator
��# +
-
��, -
(
��- .
DiscreteTime
��. :
lhs
��; >
,
��> ?
DiscreteTime
��@ L
rhs
��M P
)
��P Q
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
lhs
��$ '
.
��' (
m_DiscreteTime
��( 6
-
��7 8
rhs
��9 <
.
��< =
m_DiscreteTime
��= K
)
��K L
;
��L M
}
�� 	
public
�� 
override
�� 
string
�� 
ToString
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
m_DiscreteTime
�� !
.
��! "
ToString
��" *
(
��* +
)
��+ ,
;
��, -
}
�� 	
public
�� 
override
�� 
int
�� 
GetHashCode
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
m_DiscreteTime
�� !
.
��! "
GetHashCode
��" -
(
��- .
)
��. /
;
��/ 0
}
�� 	
public
�� 
static
�� 
DiscreteTime
�� "
Min
��# &
(
��& '
DiscreteTime
��' 3
lhs
��4 7
,
��7 8
DiscreteTime
��9 E
rhs
��F I
)
��I J
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
Math
��$ (
.
��( )
Min
��) ,
(
��, -
lhs
��- 0
.
��0 1
m_DiscreteTime
��1 ?
,
��? @
rhs
��A D
.
��D E
m_DiscreteTime
��E S
)
��S T
)
��T U
;
��U V
}
�� 	
public
�� 
static
�� 
DiscreteTime
�� "
Max
��# &
(
��& '
DiscreteTime
��' 3
lhs
��4 7
,
��7 8
DiscreteTime
��9 E
rhs
��F I
)
��I J
{
�� 	
return
�� 
new
�� 
DiscreteTime
�� #
(
��# $
Math
��$ (
.
��( )
Max
��) ,
(
��, -
lhs
��- 0
.
��0 1
m_DiscreteTime
��1 ?
,
��? @
rhs
��A D
.
��D E
m_DiscreteTime
��E S
)
��S T
)
��T U
;
��U V
}
�� 	
public
�� 
static
�� 
double
�� 
SnapToNearestTick
�� .
(
��. /
double
��/ 5
time
��6 :
)
��: ;
{
�� 	
Int64
�� 
discreteTime
�� 
=
��  "
DoubleToDiscreteTime
��! 5
(
��5 6
time
��6 :
)
��: ;
;
��; <
return
�� 
ToDouble
�� 
(
�� 
discreteTime
�� (
)
��( )
;
��) *
}
�� 	
public
�� 
static
�� 
float
�� 
SnapToNearestTick
�� -
(
��- .
float
��. 3
time
��4 8
)
��8 9
{
�� 	
Int64
�� 
discreteTime
�� 
=
��  !
FloatToDiscreteTime
��! 4
(
��4 5
time
��5 9
)
��9 :
;
��: ;
return
�� 
ToFloat
�� 
(
�� 
discreteTime
�� '
)
��' (
;
��( )
}
�� 	
public
�� 
static
�� 
Int64
�� 
GetNearestTick
�� *
(
��* +
double
��+ 1
time
��2 6
)
��6 7
{
�� 	
return
�� "
DoubleToDiscreteTime
�� '
(
��' (
time
��( ,
)
��, -
;
��- .
}
�� 	
}
�� 
}�� ��
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
loopMode	::~ �
)
::� �
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
)	JJ �
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
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
void
�� 
PrepareFrame
�� )
(
��) *
Playable
��* 2
playable
��3 ;
,
��; <
	FrameData
��= F
info
��G K
)
��K L
{
�� 	
if
�� 
(
�� 
info
�� 
.
�� 
evaluationType
�� #
==
��$ &
	FrameData
��' 0
.
��0 1
EvaluationType
��1 ?
.
��? @
Evaluate
��@ H
)
��H I
{
�� 
return
�� 
;
�� 
}
�� ,
SyncDurationWithExternalSource
�� *
(
��* +
playable
��+ 3
)
��3 4
;
��4 5
SortNotifications
�� 
(
�� 
)
�� 
;
��  
var
�� 
currentTime
�� 
=
�� 
playable
�� &
.
��& '
GetTime
��' .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
info
�� 
.
�� 

timeLooped
�� 
)
��  
{
�� 
var
�� 
duration
�� 
=
�� 
playable
�� '
.
��' (
GetDuration
��( 3
(
��3 4
)
��4 5
;
��5 6)
TriggerNotificationsInRange
�� +
(
��+ ,
m_PreviousTime
��, :
,
��: ;
duration
��< D
,
��D E
info
��F J
,
��J K
playable
��L T
,
��T U
true
��V Z
)
��Z [
;
��[ \
var
�� 
dx
�� 
=
�� 
playable
�� !
.
��! "
GetDuration
��" -
(
��- .
)
��. /
-
��0 1
m_PreviousTime
��2 @
;
��@ A
var
�� 
nFullTimelines
�� "
=
��# $
(
��% &
int
��& )
)
��) *
(
��* +
(
��+ ,
info
��, 0
.
��0 1
	deltaTime
��1 :
*
��; <
info
��= A
.
��A B
effectiveSpeed
��B P
-
��Q R
dx
��S U
)
��U V
/
��W X
playable
��Y a
.
��a b
GetDuration
��b m
(
��m n
)
��n o
)
��o p
;
��p q
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
nFullTimelines
��$ 2
;
��2 3
i
��4 5
++
��5 7
)
��7 8
{
�� )
TriggerNotificationsInRange
�� /
(
��/ 0
$num
��0 1
,
��1 2
duration
��3 ;
,
��; <
info
��= A
,
��A B
playable
��C K
,
��K L
false
��M R
)
��R S
;
��S T
}
�� )
TriggerNotificationsInRange
�� +
(
��+ ,
$num
��, -
,
��- .
currentTime
��/ :
,
��: ;
info
��< @
,
��@ A
playable
��B J
,
��J K
false
��L Q
)
��Q R
;
��R S
}
�� 
else
�� 
{
�� 
var
�� 
pt
�� 
=
�� 
playable
�� !
.
��! "
GetTime
��" )
(
��) *
)
��* +
;
��+ ,)
TriggerNotificationsInRange
�� +
(
��+ ,
m_PreviousTime
��, :
,
��: ;
pt
��< >
,
��> ?
info
��@ D
,
��D E
playable
�� 
,
�� 
true
�� "
)
��" #
;
��# $
}
�� 
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
m_Notifications
��  /
.
��/ 0
Count
��0 5
;
��5 6
++
��7 9
i
��9 :
)
��: ;
{
�� 
var
�� 
e
�� 
=
�� 
m_Notifications
�� '
[
��' (
i
��( )
]
��) *
;
��* +
if
�� 
(
�� 
e
�� 
.
�� 
notificationFired
�� '
&&
��( *$
CanRestoreNotification
��+ A
(
��A B
e
��B C
,
��C D
info
��E I
,
��I J
currentTime
��K V
,
��V W
m_PreviousTime
��X f
)
��f g
)
��g h
{
�� 
Restore_internal
�� $
(
��$ %
ref
��% (
e
��) *
)
��* +
;
��+ ,
m_Notifications
�� #
[
��# $
i
��$ %
]
��% &
=
��' (
e
��) *
;
��* +
}
�� 
}
�� 
m_PreviousTime
�� 
=
�� 
playable
�� %
.
��% &
GetTime
��& -
(
��- .
)
��. /
;
��/ 0
}
�� 	
void
�� 
SortNotifications
�� 
(
�� 
)
��  
{
�� 	
if
�� 
(
�� %
m_NeedSortNotifications
�� '
)
��' (
{
�� 
m_Notifications
�� 
.
��  
Sort
��  $
(
��$ %
(
��% &
x
��& '
,
��' (
y
��) *
)
��* +
=>
��, .
x
��/ 0
.
��0 1
time
��1 5
.
��5 6
	CompareTo
��6 ?
(
��? @
y
��@ A
.
��A B
time
��B F
)
��F G
)
��G H
;
��H I%
m_NeedSortNotifications
�� '
=
��( )
false
��* /
;
��/ 0
}
�� 
}
�� 	
static
�� 
bool
�� $
CanRestoreNotification
�� *
(
��* +
NotificationEntry
��+ <
e
��= >
,
��> ?
	FrameData
��@ I
info
��J N
,
��N O
double
��P V
currentTime
��W b
,
��b c
double
��d j
previousTime
��k w
)
��w x
{
�� 	
if
�� 
(
�� 
e
�� 
.
�� 
triggerOnce
�� 
)
�� 
return
�� 
false
�� 
;
�� 
if
�� 
(
�� 
info
�� 
.
�� 

timeLooped
�� 
)
��  
return
�� 
true
�� 
;
�� 
return
�� 
previousTime
�� 
>
��  !
currentTime
��" -
&&
��. 0
currentTime
��1 <
<=
��= ?
e
��@ A
.
��A B
time
��B F
;
��F G
}
�� 	
void
�� )
TriggerNotificationsInRange
�� (
(
��( )
double
��) /
start
��0 5
,
��5 6
double
��7 =
end
��> A
,
��A B
	FrameData
��C L
info
��M Q
,
��Q R
Playable
��S [
playable
��\ d
,
��d e
bool
��f j

checkState
��k u
)
��u v
{
�� 	
if
�� 
(
�� 
start
�� 
<=
�� 
end
�� 
)
�� 
{
�� 
var
�� 
playMode
�� 
=
�� 
Application
�� *
.
��* +
	isPlaying
��+ 4
;
��4 5
for
�� 
(
�� 
var
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
m_Notifications
��$ 3
.
��3 4
Count
��4 9
;
��9 :
i
��; <
++
��< >
)
��> ?
{
�� 
var
�� 
e
�� 
=
�� 
m_Notifications
�� +
[
��+ ,
i
��, -
]
��- .
;
��. /
if
�� 
(
�� 
e
�� 
.
�� 
notificationFired
�� +
&&
��, .
(
��/ 0

checkState
��0 :
||
��; =
e
��> ?
.
��? @
triggerOnce
��@ K
)
��K L
)
��L M
continue
��  
;
��  !
var
�� 
notificationTime
�� (
=
��) *
e
��+ ,
.
��, -
time
��- 1
;
��1 2
if
�� 
(
�� 
e
�� 
.
�� 
prewarm
�� !
&&
��" $
notificationTime
��% 5
<
��6 7
end
��8 ;
&&
��< >
(
��? @
e
��@ A
.
��A B
triggerInEditor
��B Q
||
��R T
playMode
��U ]
)
��] ^
)
��^ _
{
�� 
Trigger_internal
�� (
(
��( )
playable
��) 1
,
��1 2
info
��3 7
.
��7 8
output
��8 >
,
��> ?
ref
��@ C
e
��D E
)
��E F
;
��F G
m_Notifications
�� '
[
��' (
i
��( )
]
��) *
=
��+ ,
e
��- .
;
��. /
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
notificationTime
�� ,
<
��- .
start
��/ 4
||
��5 7
notificationTime
��8 H
>
��I J
end
��K N
)
��N O
continue
�� $
;
��$ %
if
�� 
(
�� 
e
�� 
.
�� 
triggerInEditor
�� -
||
��. 0
playMode
��1 9
)
��9 :
{
�� 
Trigger_internal
�� ,
(
��, -
playable
��- 5
,
��5 6
info
��7 ;
.
��; <
output
��< B
,
��B C
ref
��D G
e
��H I
)
��I J
;
��J K
m_Notifications
�� +
[
��+ ,
i
��, -
]
��- .
=
��/ 0
e
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
void
�� ,
SyncDurationWithExternalSource
�� +
(
��+ ,
Playable
��, 4
playable
��5 =
)
��= >
{
�� 	
if
�� 
(
�� 
m_TimeSource
�� 
.
�� 
IsValid
�� $
(
��$ %
)
��% &
)
��& '
{
�� 
playable
�� 
.
�� 
SetDuration
�� $
(
��$ %
m_TimeSource
��% 1
.
��1 2
GetDuration
��2 =
(
��= >
)
��> ?
)
��? @
;
��@ A
playable
�� 
.
�� 
SetTimeWrapMode
�� (
(
��( )
m_TimeSource
��) 5
.
��5 6
GetTimeWrapMode
��6 E
(
��E F
)
��F G
)
��G H
;
��H I
}
�� 
}
�� 	
static
�� 
void
�� 
Trigger_internal
�� $
(
��$ %
Playable
��% -
playable
��. 6
,
��6 7
PlayableOutput
��8 F
output
��G M
,
��M N
ref
��O R
NotificationEntry
��S d
e
��e f
)
��f g
{
�� 	
output
�� 
.
�� 
PushNotification
�� #
(
��# $
playable
��$ ,
,
��, -
e
��. /
.
��/ 0
payload
��0 7
)
��7 8
;
��8 9
e
�� 
.
�� 
notificationFired
�� 
=
��  !
true
��" &
;
��& '
}
�� 	
static
�� 
void
�� 
Restore_internal
�� $
(
��$ %
ref
��% (
NotificationEntry
��) :
e
��; <
)
��< =
{
�� 	
e
�� 
.
�� 
notificationFired
�� 
=
��  !
false
��" '
;
��' (
}
�� 	
}
�� 
}�� �	
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
}!! �
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
} �
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
}"" �H
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
EvaluationType	TTu �
.
TT� �
Evaluate
TT� �
;
TT� �
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
}tt �f
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
y	 �
.
� �
applyRootMotion
� �
&&
� �
x
� �
.
� �
humanoid
� �
==
� �
y
� �
.
� �
humanoid
� �
;
� �
}
� �
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
GetHashCode	{ �
(
� �
)
� �
,
� �
obj
� �
.
� �
humanoid
� �
.
� �
GetHashCode
� �
(
� �
)
� �
)
� �
;
� �
}
� �
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
EditorCurveBinding	  q �
[
  � �
]
  � �
>
  � �
(
  � �#
AnimatorEntryComparer
  � �
.
  � �
Instance
  � �
)
  � �
;
  � �
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
[	!! �
]
!!� �
>
!!� �
(
!!� �
)
!!� �
;
!!� �
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
	transform	FF~ �
)
FF� �
,
FF� �
typeof
FF� �
(
FF� �
	Transform
FF� �
)
FF� �
,
FF� �
TRPlaceHolder
FF� �
)
FF� �
)
FF� �
;
FF� �
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
$str	mmn �
)
mm� �
||
mm� �
binding
mm� �
.
mm� �
propertyName
mm� �
.
mm� �

StartsWith
mm� �
(
mm� �
$str
mm� �
)
mm� �
)
mm� �
)
mm� �
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
)	 �
{
�� 	
m_ClipCache
�� 
.
�� 
Remove
�� 
(
�� 
clip
�� #
)
��# $
;
��$ %
}
�� 	
}
�� 
}�� �
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
} �<
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
$str	((4 �
)
((� �
;
((� �
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
)	22 �
.
22� �
Name
22� �
}
22� �
$str
22� �
"
22� �
)
22� �
;
22� �
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
}{{ �[
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
$str	gg �
)
gg� �
;
gg� �
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
�� 	
void
�� ,
ISerializationCallbackReceiver
�� +
.
��+ , 
OnAfterDeserialize
��, >
(
��> ?
)
��? @
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
	m_Objects
�� "
.
��" #
Count
��# (
-
��) *
$num
��+ ,
;
��, -
i
��. /
>=
��0 2
$num
��3 4
;
��4 5
i
��6 7
--
��7 9
)
��9 :
{
�� 
object
�� 
o
�� 
=
�� 
	m_Objects
�� $
[
��$ %
i
��% &
]
��& '
;
��' (
if
�� 
(
�� 
o
�� 
==
�� 
null
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
$str
��% e
)
��e f
;
��f g
	m_Objects
�� 
.
�� 
RemoveAt
�� &
(
��& '
i
��' (
)
��( )
;
��) *
}
�� 
}
�� 
m_CacheDirty
�� 
=
�� 
true
�� 
;
��  
}
�� 	
void
�� 

BuildCache
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
m_CacheDirty
�� 
)
�� 
{
�� 
m_Cache
�� 
=
�� 
new
�� 
List
�� "
<
��" #
IMarker
��# *
>
��* +
(
��+ ,
	m_Objects
��, 5
.
��5 6
Count
��6 ;
)
��; <
;
��< = 
m_HasNotifications
�� "
=
��# $
false
��% *
;
��* +
foreach
�� 
(
�� 
var
�� 
o
�� 
in
�� !
	m_Objects
��" +
)
��+ ,
{
�� 
if
�� 
(
�� 
o
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
m_Cache
�� 
.
��  
Add
��  #
(
��# $
o
��$ %
as
��& (
IMarker
��) 0
)
��0 1
;
��1 2
if
�� 
(
�� 
o
�� 
is
��  
INotification
��! .
)
��. /
{
��  
m_HasNotifications
�� .
=
��/ 0
true
��1 5
;
��5 6
}
�� 
}
�� 
}
�� 
m_CacheDirty
�� 
=
�� 
false
�� $
;
��$ %
}
�� 
}
�� 	
}
�� 
}�� �8
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
}mm �Q
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

randomSeed	y �
)
� �
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
�� 
=
��  

kUnsetTime
��! +
;
��+ ,
}
�� 	
public
�� 
override
�� 
void
�� 
OnBehaviourPause
�� -
(
��- .
Playable
��. 6
playable
��7 ?
,
��? @
	FrameData
��A J
info
��K O
)
��O P
{
�� 	 
m_LastPlayableTime
�� 
=
��  

kUnsetTime
��! +
;
��+ ,
}
�� 	
private
�� 
void
�� 
Simulate
�� 
(
�� 
float
�� #
time
��$ (
,
��( )
bool
��* .
restart
��/ 6
)
��6 7
{
�� 	
const
�� 
bool
�� 
withChildren
�� #
=
��$ %
false
��& +
;
��+ ,
const
�� 
bool
�� 
fixedTimeStep
�� $
=
��% &
false
��' ,
;
��, -
float
�� 
maxTime
�� 
=
�� 
Time
��  
.
��  !
maximumDeltaTime
��! 1
;
��1 2
if
�� 
(
�� 
restart
�� 
)
�� 
particleSystem
�� 
.
�� 
Simulate
�� '
(
��' (
$num
��( )
,
��) *
withChildren
��+ 7
,
��7 8
true
��9 =
,
��= >
fixedTimeStep
��? L
)
��L M
;
��M N
while
�� 
(
�� 
time
�� 
>
�� 
maxTime
�� !
)
��! "
{
�� 
particleSystem
�� 
.
�� 
Simulate
�� '
(
��' (
maxTime
��( /
,
��/ 0
withChildren
��1 =
,
��= >
false
��? D
,
��D E
fixedTimeStep
��F S
)
��S T
;
��T U
time
�� 
-=
�� 
maxTime
�� 
;
��  
}
�� 
if
�� 
(
�� 
time
�� 
>
�� 
$num
�� 
)
�� 
particleSystem
�� 
.
�� 
Simulate
�� '
(
��' (
time
��( ,
,
��, -
withChildren
��. :
,
��: ;
false
��< A
,
��A B
fixedTimeStep
��C P
)
��P Q
;
��Q R
}
�� 	
}
�� 
}�� ��
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
�� 
bool
�� 
removeStartOffset
�� %
{
�� 	
get
�� 
{
�� 
return
�� !
m_RemoveStartOffset
�� ,
;
��, -
}
��. /
set
�� 
{
�� !
m_RemoveStartOffset
�� %
=
��& '
value
��( -
;
��- .
}
��/ 0
}
�� 	
public
�� 
bool
�� 
applyFootIK
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_ApplyFootIK
�� &
;
��& '
}
��( )
set
�� 
{
�� 
m_ApplyFootIK
�� 
=
��  !
value
��" '
;
��' (
}
��) *
}
�� 	
public
�� 
LoopMode
�� 
loop
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Loop
�� 
;
��  
}
��! "
set
�� 
{
�� 
m_Loop
�� 
=
�� 
value
��  
;
��  !
}
��" #
}
�� 	
internal
�� 
bool
�� 
hasRootTransforms
�� '
{
�� 	
get
�� 
{
�� 
return
�� 
m_Clip
�� 
!=
��  "
null
��# '
&&
��( *
HasRootTransforms
��+ <
(
��< =
m_Clip
��= C
)
��C D
;
��D E
}
��F G
}
�� 	
internal
�� 
AppliedOffsetMode
�� "
appliedOffsetMode
��# 4
{
��5 6
get
��7 :
;
��: ;
set
��< ?
;
��? @
}
��A B
public
�� 
AnimationClip
�� 
clip
�� !
{
�� 	
get
�� 
{
�� 
return
�� 
m_Clip
�� 
;
��  
}
��! "
set
�� 
{
�� 
if
�� 
(
�� 
value
�� 
!=
�� 
null
�� !
)
��! "
name
�� 
=
�� 
$str
�� 7
+
��8 9
value
��: ?
.
��? @
name
��@ D
;
��D E
m_Clip
�� 
=
�� 
value
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
double
�� 
duration
�� '
{
�� 	
get
�� 
{
�� 
double
�� 
length
�� 
=
�� 
TimeUtility
��  +
.
��+ ,$
GetAnimationClipLength
��, B
(
��B C
clip
��C G
)
��G H
;
��H I
if
�� 
(
�� 
length
�� 
<
�� 
float
�� "
.
��" #
Epsilon
��# *
)
��* +
return
�� 
base
�� 
.
��  
duration
��  (
;
��( )
return
�� 
length
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
override
�� 
IEnumerable
�� #
<
��# $
PlayableBinding
��$ 3
>
��3 4
outputs
��5 <
{
�� 	
get
�� 
{
�� 
yield
�� 
return
�� &
AnimationPlayableBinding
�� 7
.
��7 8
Create
��8 >
(
��> ?
name
��? C
,
��C D
this
��E I
)
��I J
;
��J K
}
��L M
}
�� 	
public
�� 
override
�� 
Playable
��  
CreatePlayable
��! /
(
��/ 0
PlayableGraph
��0 =
graph
��> C
,
��C D

GameObject
��E O
go
��P R
)
��R S
{
�� 	
Playable
�� 
root
�� 
=
�� 
CreatePlayable
�� *
(
��* +
graph
��+ 0
,
��0 1
m_Clip
��2 8
,
��8 9
position
��: B
,
��B C
eulerAngles
��D O
,
��O P
removeStartOffset
��Q b
,
��b c
appliedOffsetMode
��d u
,
��u v
applyFootIK��w �
,��� �
m_Loop��� �
)��� �
;��� �'
m_AnimationOffsetPlayable
�� %
=
��& '%
AnimationOffsetPlayable
��( ?
.
��? @
Null
��@ D
;
��D E
if
�� 
(
�� 
root
�� 
.
�� 
IsValid
�� 
(
�� 
)
�� 
&&
�� !
root
��" &
.
��& '
IsPlayableOfType
��' 7
<
��7 8%
AnimationOffsetPlayable
��8 O
>
��O P
(
��P Q
)
��Q R
)
��R S
{
�� '
m_AnimationOffsetPlayable
�� )
=
��* +
(
��, -%
AnimationOffsetPlayable
��- D
)
��D E
root
��E I
;
��I J
}
�� 
LiveLink
�� 
(
�� 
)
�� 
;
�� 
return
�� 
root
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
Playable
��  
CreatePlayable
��! /
(
��/ 0
PlayableGraph
��0 =
graph
��> C
,
��C D
AnimationClip
��E R
clip
��S W
,
��W X
Vector3
��Y `
positionOffset
��a o
,
��o p
Vector3
��q x
eulerOffset��y �
,��� �
bool��� �!
removeStartOffset��� �
,��� �!
AppliedOffsetMode��� �
mode��� �
,��� �
bool��� �
applyFootIK��� �
,��� �
LoopMode��� �
loop��� �
)��� �
{
�� 	
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
||
�� 
clip
��  $
.
��$ %
legacy
��% +
)
��+ ,
return
�� 
Playable
�� 
.
��  
Null
��  $
;
��$ %
var
�� 
clipPlayable
�� 
=
�� #
AnimationClipPlayable
�� 4
.
��4 5
Create
��5 ;
(
��; <
graph
��< A
,
��A B
clip
��C G
)
��G H
;
��H I
clipPlayable
�� 
.
�� "
SetRemoveStartOffset
�� -
(
��- .
removeStartOffset
��. ?
)
��? @
;
��@ A
clipPlayable
�� 
.
�� 
SetApplyFootIK
�� '
(
��' (
applyFootIK
��( 3
)
��3 4
;
��4 5
clipPlayable
�� 
.
�� !
SetOverrideLoopTime
�� ,
(
��, -
loop
��- 1
!=
��2 4
LoopMode
��5 =
.
��= >
UseSourceAsset
��> L
)
��L M
;
��M N
clipPlayable
�� 
.
�� 
SetLoopTime
�� $
(
��$ %
loop
��% )
==
��* ,
LoopMode
��- 5
.
��5 6
On
��6 8
)
��8 9
;
��9 :
Playable
�� 
root
�� 
=
�� 
clipPlayable
�� (
;
��( )
if
�� 
(
�� $
ShouldApplyScaleRemove
�� &
(
��& '
mode
��' +
)
��+ ,
)
��, -
{
�� 
var
�� 
removeScale
�� 
=
��  !*
AnimationRemoveScalePlayable
��" >
.
��> ?
Create
��? E
(
��E F
graph
��F K
,
��K L
$num
��M N
)
��N O
;
��O P
graph
�� 
.
�� 
Connect
�� 
(
�� 
root
�� "
,
��" #
$num
��$ %
,
��% &
removeScale
��' 2
,
��2 3
$num
��4 5
)
��5 6
;
��6 7
removeScale
�� 
.
�� 
SetInputWeight
�� *
(
��* +
$num
��+ ,
,
��, -
$num
��. 2
)
��2 3
;
��3 4
root
�� 
=
�� 
removeScale
�� "
;
��" #
}
�� 
if
�� 
(
�� 
ShouldApplyOffset
�� !
(
��! "
mode
��" &
,
��& '
clip
��( ,
)
��, -
)
��- .
{
�� 
var
�� 
offsetPlayable
�� "
=
��# $%
AnimationOffsetPlayable
��% <
.
��< =
Create
��= C
(
��C D
graph
��D I
,
��I J
positionOffset
��K Y
,
��Y Z

Quaternion
��[ e
.
��e f
Euler
��f k
(
��k l
eulerOffset
��l w
)
��w x
,
��x y
$num
��z {
)
��{ |
;
��| }
graph
�� 
.
�� 
Connect
�� 
(
�� 
root
�� "
,
��" #
$num
��$ %
,
��% &
offsetPlayable
��' 5
,
��5 6
$num
��7 8
)
��8 9
;
��9 :
offsetPlayable
�� 
.
�� 
SetInputWeight
�� -
(
��- .
$num
��. /
,
��/ 0
$num
��1 5
)
��5 6
;
��6 7
root
�� 
=
�� 
offsetPlayable
�� %
;
��% &
}
�� 
return
�� 
root
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
ShouldApplyOffset
�� -
(
��- .
AppliedOffsetMode
��. ?
mode
��@ D
,
��D E
AnimationClip
��F S
clip
��T X
)
��X Y
{
�� 	
if
�� 
(
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� )
.
��) *
NoRootTransform
��* 9
||
��: <
mode
��= A
==
��B D
AppliedOffsetMode
��E V
.
��V W
SceneOffsetLegacy
��W h
)
��h i
return
�� 
false
�� 
;
�� 
return
�� 
HasRootTransforms
�� $
(
��$ %
clip
��% )
)
��) *
;
��* +
}
�� 	
private
�� 
static
�� 
bool
�� $
ShouldApplyScaleRemove
�� 2
(
��2 3
AppliedOffsetMode
��3 D
mode
��E I
)
��I J
{
�� 	
return
�� 
mode
�� 
==
�� 
AppliedOffsetMode
�� ,
.
��, -%
SceneOffsetLegacyEditor
��- D
||
��E G
mode
��H L
==
��M O
AppliedOffsetMode
��P a
.
��a b
SceneOffsetLegacy
��b s
||
��t v
mode
��w {
==
��| ~ 
AppliedOffsetMode�� �
.��� �%
TransformOffsetLegacy��� �
;��� �
}
�� 	
public
�� 
void
�� 
LiveLink
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� '
m_AnimationOffsetPlayable
�� )
.
��) *
IsValid
��* 1
(
��1 2
)
��2 3
)
��3 4
{
�� '
m_AnimationOffsetPlayable
�� )
.
��) *
SetPosition
��* 5
(
��5 6
position
��6 >
)
��> ?
;
��? @'
m_AnimationOffsetPlayable
�� )
.
��) *
SetRotation
��* 5
(
��5 6
rotation
��6 >
)
��> ?
;
��? @
}
�� 
}
�� 	
public
�� 
ClipCaps
�� 
clipCaps
��  
{
�� 	
get
�� 
{
�� 
var
�� 
caps
�� 
=
�� 
ClipCaps
�� #
.
��# $
Extrapolation
��$ 1
|
��2 3
ClipCaps
��4 <
.
��< =
SpeedMultiplier
��= L
|
��M N
ClipCaps
��O W
.
��W X
Blending
��X `
;
��` a
if
�� 
(
�� 
m_Clip
�� 
!=
�� 
null
�� "
&&
��# %
(
��& '
m_Loop
��' -
!=
��. 0
LoopMode
��1 9
.
��9 :
Off
��: =
)
��= >
&&
��? A
(
��B C
m_Loop
��C I
!=
��J L
LoopMode
��M U
.
��U V
UseSourceAsset
��V d
||
��e g
m_Clip
��h n
.
��n o
	isLooping
��o x
)
��x y
)
��y z
caps
�� 
|=
�� 
ClipCaps
�� $
.
��$ %
Looping
��% ,
;
��, -
if
�� 
(
�� 
m_Clip
�� 
!=
�� 
null
�� "
&&
��# %
!
��& '
m_Clip
��' -
.
��- .
empty
��. 3
)
��3 4
caps
�� 
|=
�� 
ClipCaps
�� $
.
��$ %
ClipIn
��% +
;
��+ ,
return
�� 
caps
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
ResetOffsets
��  
(
��  !
)
��! "
{
�� 	
position
�� 
=
�� 
Vector3
�� 
.
�� 
zero
�� #
;
��# $
eulerAngles
�� 
=
�� 
Vector3
�� !
.
��! "
zero
��" &
;
��& '
}
�� 	
public
�� 
void
�� 
GatherProperties
�� $
(
��$ %
PlayableDirector
��% 5
director
��6 >
,
��> ? 
IPropertyCollector
��@ R
driver
��S Y
)
��Y Z
{
�� 	
driver
�� 
.
�� 
AddFromClip
�� 
(
�� 
m_Clip
�� %
)
��% &
;
��& '
}
�� 	
internal
�� 
static
�� 
bool
�� 
HasRootTransforms
�� .
(
��. /
AnimationClip
��/ <
clip
��= A
)
��A B
{
�� 	
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
||
�� 
clip
��  $
.
��$ %
empty
��% *
)
��* +
return
�� 
false
�� 
;
�� 
return
�� 
clip
�� 
.
�� 
hasRootMotion
�� %
||
��& (
clip
��) -
.
��- .%
hasGenericRootTransform
��. E
||
��F H
clip
��I M
.
��M N
hasMotionCurves
��N ]
||
��^ `
clip
��a e
.
��e f
hasRootCurves
��f s
;
��s t
}
�� 	
}
�� 
}�� �
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
} �

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
} �
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
]H I�
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
}55 �
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
} �

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
} �
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
} �
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
$str	$$ �
,
$$� �
false
$$� �
)
$$� �
]
$$� �
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
}SS �
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
}44 �
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
} �'
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
IMarker			} �
>
		� �
markers
		� �
,
		� �
double
		� �
duration
		� �
,
		� �
DirectorWrapMode
		� �
extrapolationMode
		� �
)
		� �
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
}55 �
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
} ��
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
TrackBindingTypeAttribute	NNs �
>
NN� �
(
NN� �
)
NN� �
;
NN� �
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
�� 
UpdateDuration
�� 
(
�� 
)
��  
;
��  !
return
�� 
(
�� 
double
�� 
)
�� 
(
��  
m_End
��  %
-
��& '
m_Start
��( /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
bool
�� 
muted
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Muted
��  
;
��  !
}
��" #
set
�� 
{
�� 
m_Muted
�� 
=
�� 
value
�� !
;
��! "
}
��# $
}
�� 	
public
�� 
bool
�� 
mutedInHierarchy
�� $
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
muted
�� 
)
�� 
return
�� 
true
�� 
;
��  

TrackAsset
�� 
p
�� 
=
�� 
this
�� #
;
��# $
while
�� 
(
�� 
p
�� 
.
�� 
parent
�� 
as
��  "

TrackAsset
��# -
!=
��. 0
null
��1 5
)
��5 6
{
�� 
p
�� 
=
�� 
(
�� 

TrackAsset
�� #
)
��# $
p
��$ %
.
��% &
parent
��& ,
;
��, -
if
�� 
(
�� 
p
�� 
as
�� 

GroupTrack
�� '
!=
��( *
null
��+ /
)
��/ 0
return
�� 
p
��  
.
��  !
mutedInHierarchy
��! 1
;
��1 2
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
TimelineAsset
�� 
timelineAsset
�� *
{
�� 	
get
�� 
{
�� 
var
�� 
node
�� 
=
�� 
this
�� 
;
��  
while
�� 
(
�� 
node
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
if
�� 
(
�� 
node
�� 
.
�� 
parent
�� #
==
��$ &
null
��' +
)
��+ ,
return
�� 
null
�� #
;
��# $
var
�� 
seq
�� 
=
�� 
node
�� "
.
��" #
parent
��# )
as
��* ,
TimelineAsset
��- :
;
��: ;
if
�� 
(
�� 
seq
�� 
!=
�� 
null
�� #
)
��# $
return
�� 
seq
�� "
;
��" #
node
�� 
=
�� 
node
�� 
.
��  
parent
��  &
as
��' )

TrackAsset
��* 4
;
��4 5
}
�� 
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
PlayableAsset
�� 
parent
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
m_Parent
�� !
;
��! "
}
��# $
internal
�� 
set
�� 
{
�� 
m_Parent
�� #
=
��$ %
value
��& +
;
��+ ,
}
��- .
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
TimelineClip
�� '
>
��' (
GetClips
��) 1
(
��1 2
)
��2 3
{
�� 	
return
�� 
clips
�� 
;
�� 
}
�� 	
internal
�� 
TimelineClip
�� 
[
�� 
]
�� 
clips
��  %
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
m_Clips
�� 
==
�� 
null
�� #
)
��# $
m_Clips
�� 
=
�� 
new
�� !
List
��" &
<
��& '
TimelineClip
��' 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
m_ClipsCache
��  
==
��! #
null
��$ (
)
��( )
{
�� 
m_CacheSorted
�� !
=
��" #
false
��$ )
;
��) *
m_ClipsCache
��  
=
��! "
m_Clips
��# *
.
��* +
ToArray
��+ 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
return
�� 
m_ClipsCache
�� #
;
��# $
}
�� 
}
�� 	
public
�� 
virtual
�� 
bool
�� 
isEmpty
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
!
�� 
hasClips
�� "
&&
��# %
!
��& '
	hasCurves
��' 0
&&
��1 3
GetMarkerCount
��4 B
(
��B C
)
��C D
==
��E G
$num
��H I
;
��I J
}
��K L
}
�� 	
public
�� 
bool
�� 
hasClips
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Clips
��  
!=
��! #
null
��$ (
&&
��) +
m_Clips
��, 3
.
��3 4
Count
��4 9
!=
��: <
$num
��= >
;
��> ?
}
��@ A
}
�� 	
public
�� 
bool
�� 
	hasCurves
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Curves
�� !
!=
��" $
null
��% )
&&
��* ,
!
��- .
m_Curves
��. 6
.
��6 7
empty
��7 <
;
��< =
}
��> ?
}
�� 	
public
�� 
bool
�� 

isSubTrack
�� 
{
�� 	
get
�� 
{
�� 
var
�� 
owner
�� 
=
�� 
parent
�� "
as
��# %

TrackAsset
��& 0
;
��0 1
return
�� 
owner
�� 
!=
�� 
null
��  $
&&
��% '
owner
��( -
.
��- .
GetType
��. 5
(
��5 6
)
��6 7
==
��8 :
GetType
��; B
(
��B C
)
��C D
;
��D E
}
�� 
}
�� 	
public
�� 
override
�� 
IEnumerable
�� #
<
��# $
PlayableBinding
��$ 3
>
��3 4
outputs
��5 <
{
�� 	
get
�� 
{
�� '
TrackBindingTypeAttribute
�� )
	attribute
��* 3
;
��3 4
if
�� 
(
�� 
!
�� .
 s_TrackBindingTypeAttributeCache
�� 5
.
��5 6
TryGetValue
��6 A
(
��A B
GetType
��B I
(
��I J
)
��J K
,
��K L
out
��M P
	attribute
��Q Z
)
��Z [
)
��[ \
{
�� 
	attribute
�� 
=
�� 
(
��  !'
TrackBindingTypeAttribute
��! :
)
��: ;
	Attribute
��; D
.
��D E 
GetCustomAttribute
��E W
(
��W X
GetType
��X _
(
��_ `
)
��` a
,
��a b
typeof
��c i
(
��i j(
TrackBindingTypeAttribute��j �
)��� �
)��� �
;��� �.
 s_TrackBindingTypeAttributeCache
�� 4
.
��4 5
Add
��5 8
(
��8 9
GetType
��9 @
(
��@ A
)
��A B
,
��B C
	attribute
��D M
)
��M N
;
��N O
}
�� 
var
�� 
trackBindingType
�� $
=
��% &
	attribute
��' 0
!=
��1 3
null
��4 8
?
��9 :
	attribute
��; D
.
��D E
type
��E I
:
��J K
null
��L P
;
��P Q
yield
�� 
return
�� #
ScriptPlayableBinding
�� 2
.
��2 3
Create
��3 9
(
��9 :
name
��: >
,
��> ?
this
��@ D
,
��D E
trackBindingType
��F V
)
��V W
;
��W X
}
�� 
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 

TrackAsset
�� %
>
��% &
GetChildTracks
��' 5
(
��5 6
)
��6 7
{
�� 	#
UpdateChildTrackCache
�� !
(
��! "
)
��" #
;
��# $
return
�� 
m_ChildTrackCache
�� $
;
��$ %
}
�� 	
internal
�� 
string
�� $
customPlayableTypename
�� .
{
�� 	
get
�� 
{
�� 
return
�� *
m_CustomPlayableFullTypename
�� 5
;
��5 6
}
��7 8
set
�� 
{
�� *
m_CustomPlayableFullTypename
�� .
=
��/ 0
value
��1 6
;
��6 7
}
��8 9
}
�� 	
public
�� 
AnimationClip
�� 
curves
�� #
{
�� 	
get
�� 
{
�� 
return
�� 
m_Curves
�� !
;
��! "
}
��# $
internal
�� 
set
�� 
{
�� 
m_Curves
�� #
=
��$ %
value
��& +
;
��+ ,
}
��- .
}
�� 	
string
�� 
ICurvesOwner
�� 
.
�� 
defaultCurvesName
�� -
{
�� 	
get
�� 
{
�� 
return
��  
kDefaultCurvesName
�� +
;
��+ ,
}
��- .
}
�� 	
Object
�� 
ICurvesOwner
�� 
.
�� 
asset
�� !
{
�� 	
get
�� 
{
�� 
return
�� 
this
�� 
;
�� 
}
��  
}
�� 	
Object
�� 
ICurvesOwner
�� 
.
�� 

assetOwner
�� &
{
�� 	
get
�� 
{
�� 
return
�� 
timelineAsset
�� &
;
��& '
}
��( )
}
�� 	

TrackAsset
�� 
ICurvesOwner
�� 
.
��  
targetTrack
��  +
{
�� 	
get
�� 
{
�� 
return
�� 
this
�� 
;
�� 
}
��  
}
�� 	
internal
�� 
List
�� 
<
�� 
ScriptableObject
�� &
>
��& '
subTracksObjects
��( 8
{
�� 	
get
�� 
{
�� 
return
�� 

m_Children
�� #
;
��# $
}
��% &
}
�� 	
public
�� 
bool
�� 
locked
�� 
{
�� 	
get
�� 
{
�� 
return
�� 
m_Locked
�� !
;
��! "
}
��# $
set
�� 
{
�� 
m_Locked
�� 
=
�� 
value
�� "
;
��" #
}
��$ %
}
�� 	
public
�� 
bool
�� 
lockedInHierarchy
�� %
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
locked
�� 
)
�� 
return
�� 
true
�� 
;
��  

TrackAsset
�� 
p
�� 
=
�� 
this
�� #
;
��# $
while
�� 
(
�� 
p
�� 
.
�� 
parent
�� 
as
��  "

TrackAsset
��# -
!=
��. 0
null
��1 5
)
��5 6
{
�� 
p
�� 
=
�� 
(
�� 

TrackAsset
�� #
)
��# $
p
��$ %
.
��% &
parent
��& ,
;
��, -
if
�� 
(
�� 
p
�� 
as
�� 

GroupTrack
�� '
!=
��( *
null
��+ /
)
��/ 0
return
�� 
p
��  
.
��  !
lockedInHierarchy
��! 2
;
��2 3
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
bool
�� #
supportsNotifications
�� )
{
�� 	
get
�� 
{
�� 
if
�� 
(
�� 
!
�� %
m_SupportsNotifications
�� ,
.
��, -
HasValue
��- 5
)
��5 6
{
�� %
m_SupportsNotifications
�� +
=
��, -#
NotificationUtilities
��. C
.
��C D,
TrackTypeSupportsNotifications
��D b
(
��b c
GetType
��c j
(
��j k
)
��k l
)
��l m
;
��m n
}
�� 
return
�� %
m_SupportsNotifications
�� .
.
��. /
Value
��/ 4
;
��4 5
}
�� 
}
�� 	
void
�� 
__internalAwake
�� 
(
�� 
)
�� 
{
�� 	
if
�� 
(
�� 
m_Clips
�� 
==
�� 
null
�� 
)
��  
m_Clips
�� 
=
�� 
new
�� 
List
�� "
<
��" #
TimelineClip
��# /
>
��/ 0
(
��0 1
)
��1 2
;
��2 3
m_ChildTrackCache
�� 
=
�� 
null
��  $
;
��$ %
if
�� 
(
�� 

m_Children
�� 
==
�� 
null
�� "
)
��" #

m_Children
�� 
=
�� 
new
��  
List
��! %
<
��% &
ScriptableObject
��& 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 

m_Children
�� #
.
��# $
Count
��$ )
-
��* +
$num
��, -
;
��- .
i
��/ 0
>=
��1 3
$num
��4 5
;
��5 6
i
��7 8
--
��8 :
)
��: ;
{
�� 
object
�� 
o
�� 
=
�� 

m_Children
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
o
�� 
==
�� 
null
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 

LogWarning
�� $
(
��$ %
$str
��% j
)
��j k
;
��k l

m_Children
�� 
.
�� 
RemoveAt
�� '
(
��' (
i
��( )
)
��) *
;
��* +
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
CreateCurves
��  
(
��  !
string
��! '
curvesClipName
��( 6
)
��6 7
{
�� 	
if
�� 
(
�� 
m_Curves
�� 
!=
�� 
null
��  
)
��  !
return
�� 
;
�� 
m_Curves
�� 
=
�� %
TimelineCreateUtilities
�� .
.
��. /)
CreateAnimationClipForTrack
��/ J
(
��J K
string
��K Q
.
��Q R
IsNullOrEmpty
��R _
(
��_ `
curvesClipName
��` n
)
��n o
?
��p q!
kDefaultCurvesName��r �
:��� �
curvesClipName��� �
,��� �
this��� �
,��� �
true��� �
)��� �
;��� �
}
�� 	
public
�� 
virtual
�� 
Playable
�� 
CreateTrackMixer
��  0
(
��0 1
PlayableGraph
��1 >
graph
��? D
,
��D E

GameObject
��F P
go
��Q S
,
��S T
int
��U X

inputCount
��Y c
)
��c d
{
�� 	
return
�� 
Playable
�� 
.
�� 
Create
�� "
(
��" #
graph
��# (
,
��( )

inputCount
��* 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
sealed
�� 
override
�� 
Playable
�� '
CreatePlayable
��( 6
(
��6 7
PlayableGraph
��7 D
graph
��E J
,
��J K

GameObject
��L V
go
��W Y
)
��Y Z
{
�� 	
return
�� 
Playable
�� 
.
�� 
Null
��  
;
��  !
}
�� 	
public
�� 
TimelineClip
�� 
CreateDefaultClip
�� -
(
��- .
)
��. /
{
�� 	
var
�� %
trackClipTypeAttributes
�� '
=
��( )
GetType
��* 1
(
��1 2
)
��2 3
.
��3 4!
GetCustomAttributes
��4 G
(
��G H
typeof
��H N
(
��N O$
TrackClipTypeAttribute
��O e
)
��e f
,
��f g
true
��h l
)
��l m
;
��m n
Type
�� 
playableAssetType
�� "
=
��# $
null
��% )
;
��) *
foreach
�� 
(
�� 
var
�� $
trackClipTypeAttribute
�� /
in
��0 2%
trackClipTypeAttributes
��3 J
)
��J K
{
�� 
var
�� 
	attribute
�� 
=
�� $
trackClipTypeAttribute
��  6
as
��7 9$
TrackClipTypeAttribute
��: P
;
��P Q
if
�� 
(
�� 
	attribute
�� 
!=
��  
null
��! %
&&
��& (
typeof
��) /
(
��/ 0
IPlayableAsset
��0 >
)
��> ?
.
��? @
IsAssignableFrom
��@ P
(
��P Q
	attribute
��Q Z
.
��Z [
inspectedType
��[ h
)
��h i
&&
��j l
typeof
��m s
(
��s t
ScriptableObject��t �
)��� �
.��� � 
IsAssignableFrom��� �
(��� �
	attribute��� �
.��� �
inspectedType��� �
)��� �
)��� �
{
�� 
playableAssetType
�� %
=
��& '
	attribute
��( 1
.
��1 2
inspectedType
��2 ?
;
��? @
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
playableAssetType
�� !
==
��" $
null
��% )
)
��) *
{
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$str
��! I
+
��J K
GetType
��L S
(
��S T
)
��T U
)
��U V
;
��V W
return
�� 
null
�� 
;
�� 
}
�� 
return
�� '
CreateAndAddNewClipOfType
�� ,
(
��, -
playableAssetType
��- >
)
��> ?
;
��? @
}
�� 	
public
�� 
TimelineClip
�� 

CreateClip
�� &
<
��& '
T
��' (
>
��( )
(
��) *
)
��* +
where
��, 1
T
��2 3
:
��4 5
ScriptableObject
��6 F
,
��F G
IPlayableAsset
��H V
{
�� 	
return
�� 

CreateClip
�� 
(
�� 
typeof
�� $
(
��$ %
T
��% &
)
��& '
)
��' (
;
��( )
}
�� 	
public
�� 
bool
�� 

DeleteClip
�� 
(
�� 
TimelineClip
�� +
clip
��, 0
)
��0 1
{
�� 	
if
�� 
(
�� 
!
�� 
m_Clips
�� 
.
�� 
Contains
�� !
(
��! "
clip
��" &
)
��& '
)
��' (
throw
�� 
new
�� '
InvalidOperationException
�� 3
(
��3 4
$str
��4 s
)
��s t
;
��t u
return
�� 
timelineAsset
��  
!=
��! #
null
��$ (
&&
��) +
timelineAsset
��, 9
.
��9 :

DeleteClip
��: D
(
��D E
clip
��E I
)
��I J
;
��J K
}
�� 	
public
�� 
IMarker
�� 
CreateMarker
�� #
(
��# $
Type
��$ (
type
��) -
,
��- .
double
��/ 5
time
��6 :
)
��: ;
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 
CreateMarker
�� )
(
��) *
type
��* .
,
��. /
time
��0 4
,
��4 5
this
��6 :
)
��: ;
;
��; <
}
�� 	
public
�� 
T
�� 
CreateMarker
�� 
<
�� 
T
�� 
>
��  
(
��  !
double
��! '
time
��( ,
)
��, -
where
��. 3
T
��4 5
:
��6 7
ScriptableObject
��8 H
,
��H I
IMarker
��J Q
{
�� 	
return
�� 
(
�� 
T
�� 
)
�� 
CreateMarker
�� "
(
��" #
typeof
��# )
(
��) *
T
��* +
)
��+ ,
,
��, -
time
��. 2
)
��2 3
;
��3 4
}
�� 	
public
�� 
bool
�� 
DeleteMarker
��  
(
��  !
IMarker
��! (
marker
��) /
)
��/ 0
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 
Remove
�� #
(
��# $
marker
��$ *
)
��* +
;
��+ ,
}
�� 	
public
�� 
IEnumerable
�� 
<
�� 
IMarker
�� "
>
��" #

GetMarkers
��$ .
(
��. /
)
��/ 0
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 

GetMarkers
�� '
(
��' (
)
��( )
;
��) *
}
�� 	
public
�� 
int
�� 
GetMarkerCount
�� !
(
��! "
)
��" #
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 
Count
�� "
;
��" #
}
�� 	
public
�� 
IMarker
�� 
	GetMarker
��  
(
��  !
int
��! $
idx
��% (
)
��( )
{
�� 	
return
�� 
	m_Markers
�� 
[
�� 
idx
��  
]
��  !
;
��! "
}
�� 	
internal
�� 
TimelineClip
�� 

CreateClip
�� (
(
��( )
System
��) /
.
��/ 0
Type
��0 4
requestedType
��5 B
)
��B C
{
�� 	
if
�� 
(
�� 
ValidateClipType
��  
(
��  !
requestedType
��! .
)
��. /
)
��/ 0
return
�� '
CreateAndAddNewClipOfType
�� 0
(
��0 1
requestedType
��1 >
)
��> ?
;
��? @
throw
�� 
new
�� '
InvalidOperationException
�� /
(
��/ 0
$str
��0 @
+
��A B
requestedType
��C P
+
��Q R
$str
��S z
+
��{ |
GetType��} �
(��� �
)��� �
)��� �
;��� �
}
�� 	
internal
�� 
TimelineClip
�� '
CreateAndAddNewClipOfType
�� 7
(
��7 8
Type
��8 <
requestedType
��= J
)
��J K
{
�� 	
var
�� 
newClip
�� 
=
�� 
CreateClipOfType
�� *
(
��* +
requestedType
��+ 8
)
��8 9
;
��9 :
AddClip
�� 
(
�� 
newClip
�� 
)
�� 
;
�� 
return
�� 
newClip
�� 
;
�� 
}
�� 	
internal
�� 
TimelineClip
�� 
CreateClipOfType
�� .
(
��. /
Type
��/ 3
requestedType
��4 A
)
��A B
{
�� 	
if
�� 
(
�� 
!
�� 
ValidateClipType
�� !
(
��! "
requestedType
��" /
)
��/ 0
)
��0 1
throw
�� 
new
�� 
System
��  
.
��  !'
InvalidOperationException
��! :
(
��: ;
$str
��; K
+
��L M
requestedType
��N [
+
��\ ]
$str��^ �
+��� �
GetType��� �
(��� �
)��� �
)��� �
;��� �
var
�� 
playableAsset
�� 
=
�� 
CreateInstance
��  .
(
��. /
requestedType
��/ <
)
��< =
;
��= >
if
�� 
(
�� 
playableAsset
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� 
System
��  
.
��  !'
InvalidOperationException
��! :
(
��: ;
$str
��; w
+
��x y
requestedType��z �
.��� �
Name��� �
)��� �
;��� �
}
�� 
playableAsset
�� 
.
�� 
name
�� 
=
��  
requestedType
��! .
.
��. /
Name
��/ 3
;
��3 4%
TimelineCreateUtilities
�� #
.
��# $!
SaveAssetIntoObject
��$ 7
(
��7 8
playableAsset
��8 E
,
��E F
this
��G K
)
��K L
;
��L M
TimelineUndo
�� 
.
�� '
RegisterCreatedObjectUndo
�� 2
(
��2 3
playableAsset
��3 @
,
��@ A
$str
��B O
)
��O P
;
��P Q
return
�� !
CreateClipFromAsset
�� &
(
��& '
playableAsset
��' 4
)
��4 5
;
��5 6
}
�� 	
internal
�� 
TimelineClip
�� )
CreateClipFromPlayableAsset
�� 9
(
��9 :
IPlayableAsset
��: H
asset
��I N
)
��N O
{
�� 	
if
�� 
(
�� 
asset
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� #
ArgumentNullException
�� /
(
��/ 0
$str
��0 7
)
��7 8
;
��8 9
if
�� 
(
�� 
(
�� 
asset
�� 
as
�� 
ScriptableObject
�� *
)
��* +
==
��, .
null
��/ 3
)
��3 4
throw
�� 
new
�� 
System
��  
.
��  !
ArgumentException
��! 2
(
��2 3
$str
��3 Q
+
��R S
$str��T �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
ValidateClipType
�� !
(
��! "
asset
��" '
.
��' (
GetType
��( /
(
��/ 0
)
��0 1
)
��1 2
)
��2 3
throw
�� 
new
�� 
System
��  
.
��  !'
InvalidOperationException
��! :
(
��: ;
$str
��; K
+
��L M
asset
��N S
.
��S T
GetType
��T [
(
��[ \
)
��\ ]
+
��^ _
$str��` �
+��� �
GetType��� �
(��� �
)��� �
)��� �
;��� �
return
�� !
CreateClipFromAsset
�� &
(
��& '
asset
��' ,
as
��- /
ScriptableObject
��0 @
)
��@ A
;
��A B
}
�� 	
private
�� 
TimelineClip
�� !
CreateClipFromAsset
�� 0
(
��0 1
ScriptableObject
��1 A
playableAsset
��B O
)
��O P
{
�� 	
TimelineUndo
�� 
.
�� 
PushUndo
�� !
(
��! "
this
��" &
,
��& '
$str
��( 5
)
��5 6
;
��6 7
var
�� 
newClip
�� 
=
�� ,
CreateNewClipContainerInternal
�� 8
(
��8 9
)
��9 :
;
��: ;
newClip
�� 
.
�� 
displayName
�� 
=
��  !
playableAsset
��" /
.
��/ 0
name
��0 4
;
��4 5
newClip
�� 
.
�� 
asset
�� 
=
�� 
playableAsset
�� )
;
��) *
IPlayableAsset
�� 
iPlayableAsset
�� )
=
��* +
playableAsset
��, 9
as
��: <
IPlayableAsset
��= K
;
��K L
if
�� 
(
�� 
iPlayableAsset
�� 
!=
�� !
null
��" &
)
��& '
{
�� 
var
�� 
candidateDuration
�� %
=
��& '
iPlayableAsset
��( 6
.
��6 7
duration
��7 ?
;
��? @
if
�� 
(
�� 
!
�� 
double
�� 
.
�� 

IsInfinity
�� &
(
��& '
candidateDuration
��' 8
)
��8 9
&&
��: <
candidateDuration
��= N
>
��O P
$num
��Q R
)
��R S
newClip
�� 
.
�� 
duration
�� $
=
��% &
Math
��' +
.
��+ ,
Min
��, /
(
��/ 0
Math
��0 4
.
��4 5
Max
��5 8
(
��8 9
candidateDuration
��9 J
,
��J K
TimelineClip
��L X
.
��X Y
kMinDuration
��Y e
)
��e f
,
��f g
TimelineClip
��h t
.
��t u
kMaxTimeValue��u �
)��� �
;��� �
}
�� 
try
�� 
{
�� 
OnCreateClip
�� 
(
�� 
newClip
�� $
)
��$ %
;
��% &
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
LogError
�� 
(
�� 
e
��  
.
��  !
Message
��! (
,
��( )
playableAsset
��* 7
)
��7 8
;
��8 9
return
�� 
null
�� 
;
�� 
}
�� 
return
�� 
newClip
�� 
;
�� 
}
�� 	
internal
�� 
IEnumerable
�� 
<
�� 
ScriptableObject
�� -
>
��- .
GetMarkersRaw
��/ <
(
��< =
)
��= >
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 
GetRawMarkerList
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 	
internal
�� 
void
�� 
ClearMarkers
�� "
(
��" #
)
��# $
{
�� 	
	m_Markers
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 
	AddMarker
�� 
(
��  
ScriptableObject
��  0
e
��1 2
)
��2 3
{
�� 	
	m_Markers
�� 
.
�� 
Add
�� 
(
�� 
e
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
bool
�� 
DeleteMarkerRaw
�� %
(
��% &
ScriptableObject
��& 6
marker
��7 =
)
��= >
{
�� 	
return
�� 
	m_Markers
�� 
.
�� 
Remove
�� #
(
��# $
marker
��$ *
,
��* +
timelineAsset
��, 9
,
��9 :
this
��; ?
)
��? @
;
��@ A
}
�� 	
int
�� 
GetTimeRangeHash
�� 
(
�� 
)
�� 
{
�� 	
double
�� 
start
�� 
=
�� 
double
�� !
.
��! "
MaxValue
��" *
,
��* +
end
��, /
=
��0 1
double
��2 8
.
��8 9
MinValue
��9 A
;
��A B
int
�� 
count
�� 
=
�� 
	m_Markers
�� !
.
��! "
Count
��" '
;
��' (
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
	m_Markers
��  )
.
��) *
Count
��* /
;
��/ 0
i
��1 2
++
��2 4
)
��4 5
{
�� 
var
�� 
marker
�� 
=
�� 
	m_Markers
�� &
[
��& '
i
��' (
]
��( )
;
��) *
if
�� 
(
�� 
!
�� 
(
�� 
marker
�� 
is
�� 
INotification
��  -
)
��- .
)
��. /
{
�� 
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
marker
�� 
.
�� 
time
�� 
<
��  !
start
��" '
)
��' (
start
�� 
=
�� 
marker
�� "
.
��" #
time
��# '
;
��' (
if
�� 
(
�� 
marker
�� 
.
�� 
time
�� 
>
��  !
end
��" %
)
��% &
end
�� 
=
�� 
marker
��  
.
��  !
time
��! %
;
��% &
}
�� 
return
�� 
start
�� 
.
�� 
GetHashCode
�� $
(
��$ %
)
��% &
.
��& '
CombineHash
��' 2
(
��2 3
end
��3 6
.
��6 7
GetHashCode
��7 B
(
��B C
)
��C D
)
��D E
;
��E F
}
�� 	
internal
�� 
void
�� 
AddClip
�� 
(
�� 
TimelineClip
�� *
newClip
��+ 2
)
��2 3
{
�� 	
if
�� 
(
�� 
!
�� 
m_Clips
�� 
.
�� 
Contains
�� !
(
��! "
newClip
��" )
)
��) *
)
��* +
{
�� 
m_Clips
�� 
.
�� 
Add
�� 
(
�� 
newClip
�� #
)
��# $
;
��$ %
m_ClipsCache
�� 
=
�� 
null
�� #
;
��# $
}
�� 
}
�� 	
Playable
�� )
CreateNotificationsPlayable
�� ,
(
��, -
PlayableGraph
��- :
graph
��; @
,
��@ A
Playable
��B J
mixerPlayable
��K X
,
��X Y

GameObject
��Z d
go
��e g
,
��g h
Playable
��i q
timelinePlayable��r �
)��� �
{
�� 	
s_BuildData
�� 
.
�� 

markerList
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +!
GatherNotifications
�� 
(
��  
s_BuildData
��  +
.
��+ ,

markerList
��, 6
)
��6 7
;
��7 8
DirectorWrapMode
�� 
extrapolationMode
�� .
=
��/ 0
DirectorWrapMode
��1 A
.
��A B
None
��B F
;
��F G
if
�� 
(
�� 
go
�� 
.
�� 
TryGetComponent
�� "
(
��" #
out
��# &
PlayableDirector
��' 7
director
��8 @
)
��@ A
)
��A B
{
�� 
extrapolationMode
�� !
=
��" #
director
��$ ,
.
��, -
extrapolationMode
��- >
;
��> ?
}
�� 
var
�� 
duration
�� 
=
�� 
timelineAsset
�� (
.
��( )
duration
��) 1
;
��1 2
var
�� "
notificationPlayable
�� $
=
��% &#
NotificationUtilities
��' <
.
��< =)
CreateNotificationsPlayable
��= X
(
��X Y
graph
��Y ^
,
��^ _
s_BuildData
��` k
.
��k l

markerList
��l v
,
��v w
duration��x �
,��� �!
extrapolationMode��� �
)��� �
;��� �
if
�� 
(
�� "
notificationPlayable
�� $
.
��$ %
IsValid
��% ,
(
��, -
)
��- .
)
��. /
{
�� "
notificationPlayable
�� $
.
��$ %
GetBehaviour
��% 1
(
��1 2
)
��2 3
.
��3 4

timeSource
��4 >
=
��? @
timelinePlayable
��A Q
;
��Q R
if
�� 
(
�� 
mixerPlayable
�� !
.
��! "
IsValid
��" )
(
��) *
)
��* +
)
��+ ,
{
�� "
notificationPlayable
�� (
.
��( )
SetInputCount
��) 6
(
��6 7
$num
��7 8
)
��8 9
;
��9 :
graph
�� 
.
�� 
Connect
�� !
(
��! "
mixerPlayable
��" /
,
��/ 0
$num
��1 2
,
��2 3"
notificationPlayable
��4 H
,
��H I
$num
��J K
)
��K L
;
��L M"
notificationPlayable
�� (
.
��( )
SetInputWeight
��) 7
(
��7 8
mixerPlayable
��8 E
,
��E F
$num
��G H
)
��H I
;
��I J
}
�� 
}
�� 
return
�� "
notificationPlayable
�� '
;
��' (
}
�� 	
internal
�� 
Playable
�� !
CreatePlayableGraph
�� -
(
��- .
PlayableGraph
��. ;
graph
��< A
,
��A B

GameObject
��C M
go
��N P
,
��P Q
IntervalTree
��R ^
<
��^ _
RuntimeElement
��_ m
>
��m n
tree
��o s
,
��s t
Playable
��u }
timelinePlayable��~ �
)��� �
{
�� 	
UpdateDuration
�� 
(
�� 
)
�� 
;
�� 
var
�� 
mixerPlayable
�� 
=
�� 
Playable
��  (
.
��( )
Null
��) -
;
��- .
if
�� 
(
�� %
CanCreateMixerRecursive
�� '
(
��' (
)
��( )
)
��) *
mixerPlayable
�� 
=
�� &
CreateMixerPlayableGraph
��  8
(
��8 9
graph
��9 >
,
��> ?
go
��@ B
,
��B C
tree
��D H
)
��H I
;
��I J
Playable
�� #
notificationsPlayable
�� *
=
��+ ,)
CreateNotificationsPlayable
��- H
(
��H I
graph
��I N
,
��N O
mixerPlayable
��P ]
,
��] ^
go
��_ a
,
��a b
timelinePlayable
��c s
)
��s t
;
��t u
s_BuildData
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��  
if
�� 
(
�� 
!
�� #
notificationsPlayable
�� &
.
��& '
IsValid
��' .
(
��. /
)
��/ 0
&&
��1 3
!
��4 5
mixerPlayable
��5 B
.
��B C
IsValid
��C J
(
��J K
)
��K L
)
��L M
{
�� 
Debug
�� 
.
�� 
LogErrorFormat
�� $
(
��$ %
$str
��% w
,
��w x
name
��y }
,
��} ~
GetType
�� 
(
�� 
)
�� 
.
�� 
FullName
�� &
)
��& '
;
��' (
return
�� 
Playable
�� 
.
��  
Create
��  &
(
��& '
graph
��' ,
)
��, -
;
��- .
}
�� 
return
�� #
notificationsPlayable
�� (
.
��( )
IsValid
��) 0
(
��0 1
)
��1 2
?
��3 4#
notificationsPlayable
��5 J
:
��K L
mixerPlayable
��M Z
;
��Z [
}
�� 	
internal
�� 
virtual
�� 
Playable
�� !
CompileClips
��" .
(
��. /
PlayableGraph
��/ <
graph
��= B
,
��B C

GameObject
��D N
go
��O Q
,
��Q R
IList
��S X
<
��X Y
TimelineClip
��Y e
>
��e f
timelineClips
��g t
,
��t u
IntervalTree��v �
<��� �
RuntimeElement��� �
>��� �
tree��� �
)��� �
{
�� 	
var
�� 
blend
�� 
=
�� 
CreateTrackMixer
�� (
(
��( )
graph
��) .
,
��. /
go
��0 2
,
��2 3
timelineClips
��4 A
.
��A B
Count
��B G
)
��G H
;
��H I
for
�� 
(
�� 
var
�� 
c
�� 
=
�� 
$num
�� 
;
�� 
c
�� 
<
�� 
timelineClips
��  -
.
��- .
Count
��. 3
;
��3 4
c
��5 6
++
��6 8
)
��8 9
{
�� 
var
�� 
source
�� 
=
�� 
CreatePlayable
�� +
(
��+ ,
graph
��, 1
,
��1 2
go
��3 5
,
��5 6
timelineClips
��7 D
[
��D E
c
��E F
]
��F G
)
��G H
;
��H I
if
�� 
(
�� 
source
�� 
.
�� 
IsValid
�� "
(
��" #
)
��# $
)
��$ %
{
�� 
source
�� 
.
�� 
SetDuration
�� &
(
��& '
timelineClips
��' 4
[
��4 5
c
��5 6
]
��6 7
.
��7 8
duration
��8 @
)
��@ A
;
��A B
var
�� 
clip
�� 
=
�� 
new
�� "
RuntimeClip
��# .
(
��. /
timelineClips
��/ <
[
��< =
c
��= >
]
��> ?
,
��? @
source
��A G
,
��G H
blend
��I N
)
��N O
;
��O P
tree
�� 
.
�� 
Add
�� 
(
�� 
clip
�� !
)
��! "
;
��" #
graph
�� 
.
�� 
Connect
�� !
(
��! "
source
��" (
,
��( )
$num
��* +
,
��+ ,
blend
��- 2
,
��2 3
c
��4 5
)
��5 6
;
��6 7
blend
�� 
.
�� 
SetInputWeight
�� (
(
��( )
c
��) *
,
��* +
$num
��, 0
)
��0 1
;
��1 2
}
�� 
}
�� %
ConfigureTrackAnimation
�� #
(
��# $
tree
��$ (
,
��( )
go
��* ,
,
��, -
blend
��. 3
)
��3 4
;
��4 5
return
�� 
blend
�� 
;
�� 
}
�� 	
void
�� $
GatherCompilableTracks
�� #
(
��# $
IList
��$ )
<
��) *

TrackAsset
��* 4
>
��4 5
tracks
��6 <
)
��< =
{
�� 	
if
�� 
(
�� 
!
�� 
muted
�� 
&&
�� !
CanCreateTrackMixer
�� -
(
��- .
)
��. /
)
��/ 0
tracks
�� 
.
�� 
Add
�� 
(
�� 
this
�� 
)
��  
;
��  !
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� 
GetChildTracks
�� ,
(
��, -
)
��- .
)
��. /
{
�� 
if
�� 
(
�� 
c
�� 
!=
�� 
null
�� 
)
�� 
c
�� 
.
�� $
GatherCompilableTracks
�� ,
(
��, -
tracks
��- 3
)
��3 4
;
��4 5
}
�� 
}
�� 	
void
�� !
GatherNotifications
��  
(
��  !
List
��! %
<
��% &
IMarker
��& -
>
��- .
markers
��/ 6
)
��6 7
{
�� 	
if
�� 
(
�� 
!
�� 
muted
�� 
&&
�� %
CanCompileNotifications
�� 1
(
��1 2
)
��2 3
)
��3 4
markers
�� 
.
�� 
AddRange
��  
(
��  !

GetMarkers
��! +
(
��+ ,
)
��, -
)
��- .
;
��. /
foreach
�� 
(
�� 
var
�� 
c
�� 
in
�� 
GetChildTracks
�� ,
(
��, -
)
��- .
)
��. /
{
�� 
if
�� 
(
�� 
c
�� 
!=
�� 
null
�� 
)
�� 
c
�� 
.
�� !
GatherNotifications
�� )
(
��) *
markers
��* 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
internal
�� 
virtual
�� 
Playable
�� !&
CreateMixerPlayableGraph
��" :
(
��: ;
PlayableGraph
��; H
graph
��I N
,
��N O

GameObject
��P Z
go
��[ ]
,
��] ^
IntervalTree
��_ k
<
��k l
RuntimeElement
��l z
>
��z {
tree��| �
)��� �
{
�� 	
if
�� 
(
�� 
tree
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, R
,
��R S
$str
��T Z
)
��Z [
;
��[ \
if
�� 
(
�� 
go
�� 
==
�� 
null
�� 
)
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, P
,
��P Q
$str
��R V
)
��V W
;
��W X
s_BuildData
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
��  $
GatherCompilableTracks
�� "
(
��" #
s_BuildData
��# .
.
��. /
	trackList
��/ 8
)
��8 9
;
��9 :
if
�� 
(
�� 
s_BuildData
�� 
.
�� 
	trackList
�� %
.
��% &
Count
��& +
==
��, .
$num
��/ 0
)
��0 1
return
�� 
Playable
�� 
.
��  
Null
��  $
;
��$ %
Playable
�� 

layerMixer
�� 
=
��  !
Playable
��" *
.
��* +
Null
��+ /
;
��/ 0

ILayerable
�� 
	layerable
��  
=
��! "
this
��# '
as
��( *

ILayerable
��+ 5
;
��5 6
if
�� 
(
�� 
	layerable
�� 
!=
�� 
null
�� !
)
��! "

layerMixer
�� 
=
�� 
	layerable
�� &
.
��& '
CreateLayerMixer
��' 7
(
��7 8
graph
��8 =
,
��= >
go
��? A
,
��A B
s_BuildData
��C N
.
��N O
	trackList
��O X
.
��X Y
Count
��Y ^
)
��^ _
;
��_ `
if
�� 
(
�� 

layerMixer
�� 
.
�� 
IsValid
�� "
(
��" #
)
��# $
)
��$ %
{
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
��  !
<
��" #
s_BuildData
��$ /
.
��/ 0
	trackList
��0 9
.
��9 :
Count
��: ?
;
��? @
i
��A B
++
��B D
)
��D E
{
�� 
var
�� 
mixer
�� 
=
�� 
s_BuildData
��  +
.
��+ ,
	trackList
��, 5
[
��5 6
i
��6 7
]
��7 8
.
��8 9
CompileClips
��9 E
(
��E F
graph
��F K
,
��K L
go
��M O
,
��O P
s_BuildData
��Q \
.
��\ ]
	trackList
��] f
[
��f g
i
��g h
]
��h i
.
��i j
clips
��j o
,
��o p
tree
��q u
)
��u v
;
��v w
if
�� 
(
�� 
mixer
�� 
.
�� 
IsValid
�� %
(
��% &
)
��& '
)
��' (
{
�� 
graph
�� 
.
�� 
Connect
�� %
(
��% &
mixer
��& +
,
��+ ,
$num
��- .
,
��. /

layerMixer
��0 :
,
��: ;
i
��< =
)
��= >
;
��> ?

layerMixer
�� "
.
��" #
SetInputWeight
��# 1
(
��1 2
i
��2 3
,
��3 4
$num
��5 9
)
��9 :
;
��: ;
}
�� 
}
�� 
return
�� 

layerMixer
�� !
;
��! "
}
�� 
if
�� 
(
�� 
s_BuildData
�� 
.
�� 
	trackList
�� %
.
��% &
Count
��& +
==
��, .
$num
��/ 0
)
��0 1
return
�� 
s_BuildData
�� "
.
��" #
	trackList
��# ,
[
��, -
$num
��- .
]
��. /
.
��/ 0
CompileClips
��0 <
(
��< =
graph
��= B
,
��B C
go
��D F
,
��F G
s_BuildData
��H S
.
��S T
	trackList
��T ]
[
��] ^
$num
��^ _
]
��_ `
.
��` a
clips
��a f
,
��f g
tree
��h l
)
��l m
;
��m n
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
s_BuildData
��  +
.
��+ ,
	trackList
��, 5
.
��5 6
Count
��6 ;
;
��; <
i
��= >
++
��> @
)
��@ A
s_BuildData
�� 
.
�� 
clipList
�� $
.
��$ %
AddRange
��% -
(
��- .
s_BuildData
��. 9
.
��9 :
	trackList
��: C
[
��C D
i
��D E
]
��E F
.
��F G
clips
��G L
)
��L M
;
��M N
bool
�� 
applyWarning
�� 
=
�� 
false
��  %
;
��% &
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
s_BuildData
��  +
.
��+ ,
	trackList
��, 5
.
��5 6
Count
��6 ;
;
��; <
i
��= >
++
��> @
)
��@ A
applyWarning
�� 
|=
�� 
i
��  !
>
��" #
$num
��$ %
&&
��& (
s_BuildData
��) 4
.
��4 5
	trackList
��5 >
[
��> ?
i
��? @
]
��@ A
.
��A B
	hasCurves
��B K
;
��K L
if
�� 
(
�� 
applyWarning
�� 
)
�� 
Debug
�� 
.
�� 

LogWarning
��  
(
��  !
$str��! �
+��� �
s_BuildData��� �
.��� �
	trackList��� �
[��� �
$num��� �
]��� �
.��� �
GetType��� �
(��� �
)��� �
.��� �
Name��� �
+��� �
$str��� �
)��� �
;��� �
return
�� 
CompileClips
�� 
(
��  
graph
��  %
,
��% &
go
��' )
,
��) *
s_BuildData
��+ 6
.
��6 7
clipList
��7 ?
,
��? @
tree
��A E
)
��E F
;
��F G
}
�� 	
internal
�� 
void
�� %
ConfigureTrackAnimation
�� -
(
��- .
IntervalTree
��. :
<
��: ;
RuntimeElement
��; I
>
��I J
tree
��K O
,
��O P

GameObject
��Q [
go
��\ ^
,
��^ _
Playable
��` h
blend
��i n
)
��n o
{
�� 	
if
�� 
(
�� 
!
�� 
	hasCurves
�� 
)
�� 
return
�� 
;
�� 
blend
�� 
.
�� #
SetAnimatedProperties
�� '
(
��' (
m_Curves
��( 0
)
��0 1
;
��1 2
tree
�� 
.
�� 
Add
�� 
(
�� 
new
�� !
InfiniteRuntimeClip
�� ,
(
��, -
blend
��- 2
)
��2 3
)
��3 4
;
��4 5
if
�� 
(
�� ,
OnTrackAnimationPlayableCreate
�� .
!=
��/ 1
null
��2 6
)
��6 7,
OnTrackAnimationPlayableCreate
�� .
.
��. /
Invoke
��/ 5
(
��5 6
this
��6 :
,
��: ;
go
��< >
,
��> ?
blend
��@ E
)
��E F
;
��F G
}
�� 	
internal
�� 
void
�� 
	SortClips
�� 
(
��  
)
��  !
{
�� 	
var
�� 
clipsAsArray
�� 
=
�� 
clips
�� $
;
��$ %
if
�� 
(
�� 
!
�� 
m_CacheSorted
�� 
)
�� 
{
�� 
Array
�� 
.
�� 
Sort
�� 
(
�� 
clips
��  
,
��  !
(
��" #
clip1
��# (
,
��( )
clip2
��* /
)
��/ 0
=>
��1 3
clip1
��4 9
.
��9 :
start
��: ?
.
��? @
	CompareTo
��@ I
(
��I J
clip2
��J O
.
��O P
start
��P U
)
��U V
)
��V W
;
��W X
m_CacheSorted
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
}
�� 	
internal
�� 
void
��  
ClearClipsInternal
�� (
(
��( )
)
��) *
{
�� 	
m_Clips
�� 
=
�� 
new
�� 
List
�� 
<
�� 
TimelineClip
�� +
>
��+ ,
(
��, -
)
��- .
;
��. /
m_ClipsCache
�� 
=
�� 
null
�� 
;
��  
}
�� 	
internal
�� 
void
�� $
ClearSubTracksInternal
�� ,
(
��, -
)
��- .
{
�� 	

m_Children
�� 
=
�� 
new
�� 
List
�� !
<
��! "
ScriptableObject
��" 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 

OnClipMove
��  
(
��  !
)
��! "
{
�� 	
m_CacheSorted
�� 
=
�� 
false
�� !
;
��! "
}
�� 	
internal
�� 
TimelineClip
�� ,
CreateNewClipContainerInternal
�� <
(
��< =
)
��= >
{
�� 	
var
�� 
clipContainer
�� 
=
�� 
new
��  #
TimelineClip
��$ 0
(
��0 1
this
��1 5
)
��5 6
;
��6 7
clipContainer
�� 
.
�� 
asset
�� 
=
��  !
null
��" &
;
��& '
var
�� 
newClipStart
�� 
=
�� 
$num
�� "
;
��" #
for
�� 
(
�� 
var
�� 
a
�� 
=
�� 
$num
�� 
;
�� 
a
�� 
<
�� 
m_Clips
��  '
.
��' (
Count
��( -
-
��. /
$num
��0 1
;
��1 2
a
��3 4
++
��4 6
)
��6 7
{
�� 
var
�� 
clipDuration
��  
=
��! "
m_Clips
��# *
[
��* +
a
��+ ,
]
��, -
.
��- .
duration
��. 6
;
��6 7
if
�� 
(
�� 
double
�� 
.
�� 

IsInfinity
�� %
(
��% &
clipDuration
��& 2
)
��2 3
)
��3 4
clipDuration
��  
=
��! "
TimelineClip
��# /
.
��/ 0+
kDefaultClipDurationInSeconds
��0 M
;
��M N
newClipStart
�� 
=
�� 
Math
�� #
.
��# $
Max
��$ '
(
��' (
newClipStart
��( 4
,
��4 5
m_Clips
��6 =
[
��= >
a
��> ?
]
��? @
.
��@ A
start
��A F
+
��G H
clipDuration
��I U
)
��U V
;
��V W
}
�� 
clipContainer
�� 
.
�� 

mixInCurve
�� $
=
��% &
AnimationCurve
��' 5
.
��5 6
	EaseInOut
��6 ?
(
��? @
$num
��@ A
,
��A B
$num
��C D
,
��D E
$num
��F G
,
��G H
$num
��I J
)
��J K
;
��K L
clipContainer
�� 
.
�� 
mixOutCurve
�� %
=
��& '
AnimationCurve
��( 6
.
��6 7
	EaseInOut
��7 @
(
��@ A
$num
��A B
,
��B C
$num
��D E
,
��E F
$num
��G H
,
��H I
$num
��J K
)
��K L
;
��L M
clipContainer
�� 
.
�� 
start
�� 
=
��  !
newClipStart
��" .
;
��. /
clipContainer
�� 
.
�� 
duration
�� "
=
��# $
TimelineClip
��% 1
.
��1 2+
kDefaultClipDurationInSeconds
��2 O
;
��O P
clipContainer
�� 
.
�� 
displayName
�� %
=
��& '
$str
��( 2
;
��2 3
return
�� 
clipContainer
��  
;
��  !
}
�� 	
internal
�� 
void
�� 
AddChild
�� 
(
�� 

TrackAsset
�� )
child
��* /
)
��/ 0
{
�� 	
if
�� 
(
�� 
child
�� 
==
�� 
null
�� 
)
�� 
return
�� 
;
�� 

m_Children
�� 
.
�� 
Add
�� 
(
�� 
child
��  
)
��  !
;
��! "
child
�� 
.
�� 
parent
�� 
=
�� 
this
�� 
;
��  

Invalidate
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
internal
�� 
void
�� !
MoveLastTrackBefore
�� )
(
��) *

TrackAsset
��* 4
asset
��5 :
)
��: ;
{
�� 	
if
�� 
(
�� 

m_Children
�� 
==
�� 
null
�� "
||
��# %

m_Children
��& 0
.
��0 1
Count
��1 6
<
��7 8
$num
��9 :
||
��; =
asset
��> C
==
��D F
null
��G K
)
��K L
return
�� 
;
�� 
var
�� 
	lastTrack
�� 
=
�� 

m_Children
�� &
[
��& '

m_Children
��' 1
.
��1 2
Count
��2 7
-
��8 9
$num
��: ;
]
��; <
;
��< =
if
�� 
(
�� 
	lastTrack
�� 
==
�� 
asset
�� "
)
��" #
return
�� 
;
�� 
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 

m_Children
��  *
.
��* +
Count
��+ 0
-
��1 2
$num
��3 4
;
��4 5
i
��6 7
++
��7 9
)
��9 :
{
�� 
if
�� 
(
�� 

m_Children
�� 
[
�� 
i
��  
]
��  !
==
��" $
asset
��% *
)
��* +
{
�� 
for
�� 
(
�� 
int
�� 
j
�� 
=
��  

m_Children
��! +
.
��+ ,
Count
��, 1
-
��2 3
$num
��4 5
;
��5 6
j
��7 8
>
��9 :
i
��; <
;
��< =
j
��> ?
--
��? A
)
��A B

m_Children
�� "
[
��" #
j
��# $
]
��$ %
=
��& '

m_Children
��( 2
[
��2 3
j
��3 4
-
��5 6
$num
��7 8
]
��8 9
;
��9 :

m_Children
�� 
[
�� 
i
��  
]
��  !
=
��" #
	lastTrack
��$ -
;
��- .

Invalidate
�� 
(
�� 
)
��  
;
��  !
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
internal
�� 
bool
�� 
RemoveSubTrack
�� $
(
��$ %

TrackAsset
��% /
child
��0 5
)
��5 6
{
�� 	
if
�� 
(
�� 

m_Children
�� 
.
�� 
Remove
�� !
(
��! "
child
��" '
)
��' (
)
��( )
{
�� 

Invalidate
�� 
(
�� 
)
�� 
;
�� 
child
�� 
.
�� 
parent
�� 
=
�� 
null
�� #
;
��# $
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
internal
�� 
void
�� 

RemoveClip
��  
(
��  !
TimelineClip
��! -
clip
��. 2
)
��2 3
{
�� 	
m_Clips
�� 
.
�� 
Remove
�� 
(
�� 
clip
�� 
)
��  
;
��  !
m_ClipsCache
�� 
=
�� 
null
�� 
;
��  
}
�� 	
internal
�� 
virtual
�� 
void
�� 
GetEvaluationTime
�� /
(
��/ 0
out
��0 3
double
��4 :
outStart
��; C
,
��C D
out
��E H
double
��I O
outDuration
��P [
)
��[ \
{
�� 	
outStart
�� 
=
�� 
$num
�� 
;
�� 
outDuration
�� 
=
�� 
$num
�� 
;
�� 
outStart
�� 
=
�� 
double
�� 
.
�� 
PositiveInfinity
�� .
;
��. /
var
�� 
outEnd
�� 
=
�� 
double
�� 
.
��  
NegativeInfinity
��  0
;
��0 1
if
�� 
(
�� 
	hasCurves
�� 
)
�� 
{
�� 
outStart
�� 
=
�� 
$num
�� 
;
�� 
outEnd
�� 
=
�� 
TimeUtility
�� $
.
��$ %$
GetAnimationClipLength
��% ;
(
��; <
curves
��< B
)
��B C
;
��C D
}
�� 
foreach
�� 
(
�� 
var
�� 
clip
�� 
in
��  
clips
��! &
)
��& '
{
�� 
outStart
�� 
=
�� 
Math
�� 
.
��  
Min
��  #
(
��# $
clip
��$ (
.
��( )
start
��) .
,
��. /
outStart
��0 8
)
��8 9
;
��9 :
outEnd
�� 
=
�� 
Math
�� 
.
�� 
Max
�� !
(
��! "
clip
��" &
.
��& '
end
��' *
,
��* +
outEnd
��, 2
)
��2 3
;
��3 4
}
�� 
if
�� 
(
�� 
HasNotifications
��  
(
��  !
)
��! "
)
��" #
{
�� 
var
�� "
notificationDuration
�� (
=
��) *%
GetNotificationDuration
��+ B
(
��B C
)
��C D
;
��D E
outStart
�� 
=
�� 
Math
�� 
.
��  
Min
��  #
(
��# $"
notificationDuration
��$ 8
,
��8 9
outStart
��: B
)
��B C
;
��C D
outEnd
�� 
=
�� 
Math
�� 
.
�� 
Max
�� !
(
��! ""
notificationDuration
��" 6
,
��6 7
outEnd
��8 >
)
��> ?
;
��? @
}
�� 
if
�� 
(
�� 
double
�� 
.
�� 

IsInfinity
�� !
(
��! "
outStart
��" *
)
��* +
||
��, .
double
��/ 5
.
��5 6

IsInfinity
��6 @
(
��@ A
outEnd
��A G
)
��G H
)
��H I
outStart
�� 
=
�� 
outDuration
�� &
=
��' (
$num
��) ,
;
��, -
else
�� 
outDuration
�� 
=
�� 
outEnd
�� $
-
��% &
outStart
��' /
;
��/ 0
}
�� 	
internal
�� 
virtual
�� 
void
�� 
GetSequenceTime
�� -
(
��- .
out
��. 1
double
��2 8
outStart
��9 A
,
��A B
out
��C F
double
��G M
outDuration
��N Y
)
��Y Z
{
�� 	
GetEvaluationTime
�� 
(
�� 
out
�� !
outStart
��" *
,
��* +
out
��, /
outDuration
��0 ;
)
��; <
;
��< =
}
�� 	
public
�� 
virtual
�� 
void
�� 
GatherProperties
�� ,
(
��, -
PlayableDirector
��- =
director
��> F
,
��F G 
IPropertyCollector
��H Z
driver
��[ a
)
��a b
{
�� 	
var
�� 

gameObject
�� 
=
�� "
GetGameObjectBinding
�� 1
(
��1 2
director
��2 :
)
��: ;
;
��; <
if
�� 
(
�� 

gameObject
�� 
!=
�� 
null
�� "
)
��" #
driver
�� 
.
�� "
PushActiveGameObject
�� +
(
��+ ,

gameObject
��, 6
)
��6 7
;
��7 8
if
�� 
(
�� 
	hasCurves
�� 
)
�� 
driver
�� 
.
�� !
AddObjectProperties
�� *
(
��* +
this
��+ /
,
��/ 0
m_Curves
��1 9
)
��9 :
;
��: ;
foreach
�� 
(
�� 
var
�� 
clip
�� 
in
��  
clips
��! &
)
��& '
{
�� 
if
�� 
(
�� 
clip
�� 
.
�� 
curves
�� 
!=
��  "
null
��# '
&&
��( *
clip
��+ /
.
��/ 0
asset
��0 5
!=
��6 8
null
��9 =
)
��= >
driver
�� 
.
�� !
AddObjectProperties
�� .
(
��. /
clip
��/ 3
.
��3 4
asset
��4 9
,
��9 :
clip
��; ?
.
��? @
curves
��@ F
)
��F G
;
��G H
IPropertyPreview
��  
modifier
��! )
=
��* +
clip
��, 0
.
��0 1
asset
��1 6
as
��7 9
IPropertyPreview
��: J
;
��J K
if
�� 
(
�� 
modifier
�� 
!=
�� 
null
��  $
)
��$ %
modifier
�� 
.
�� 
GatherProperties
�� -
(
��- .
director
��. 6
,
��6 7
driver
��8 >
)
��> ?
;
��? @
}
�� 
foreach
�� 
(
�� 
var
�� 
subtrack
�� !
in
��" $
GetChildTracks
��% 3
(
��3 4
)
��4 5
)
��5 6
{
�� 
if
�� 
(
�� 
subtrack
�� 
!=
�� 
null
��  $
)
��$ %
subtrack
�� 
.
�� 
GatherProperties
�� -
(
��- .
director
��. 6
,
��6 7
driver
��8 >
)
��> ?
;
��? @
}
�� 
if
�� 
(
�� 

gameObject
�� 
!=
�� 
null
�� "
)
��" #
driver
�� 
.
�� !
PopActiveGameObject
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 	
internal
�� 

GameObject
�� "
GetGameObjectBinding
�� 0
(
��0 1
PlayableDirector
��1 A
director
��B J
)
��J K
{
�� 	
if
�� 
(
�� 
director
�� 
==
�� 
null
��  
)
��  !
return
�� 
null
�� 
;
�� 
var
�� 
binding
�� 
=
�� 
director
�� "
.
��" #
GetGenericBinding
��# 4
(
��4 5
this
��5 9
)
��9 :
;
��: ;
var
�� 

gameObject
�� 
=
�� 
binding
�� $
as
��% '

GameObject
��( 2
;
��2 3
if
�� 
(
�� 

gameObject
�� 
!=
�� 
null
�� "
)
��" #
return
�� 

gameObject
�� !
;
��! "
var
�� 
comp
�� 
=
�� 
binding
�� 
as
�� !
	Component
��" +
;
��+ ,
if
�� 
(
�� 
comp
�� 
!=
�� 
null
�� 
)
�� 
return
�� 
comp
�� 
.
�� 

gameObject
�� &
;
��& '
return
�� 
null
�� 
;
�� 
}
�� 	
internal
�� 
bool
�� 
ValidateClipType
�� &
(
��& '
Type
��' +
clipType
��, 4
)
��4 5
{
�� 	
var
�� 
attrs
�� 
=
�� 
GetType
�� 
(
��  
)
��  !
.
��! "!
GetCustomAttributes
��" 5
(
��5 6
typeof
��6 <
(
��< =$
TrackClipTypeAttribute
��= S
)
��S T
,
��T U
true
��V Z
)
��Z [
;
��[ \
for
�� 
(
�� 
var
�� 
c
�� 
=
�� 
$num
�� 
;
�� 
c
�� 
<
�� 
attrs
��  %
.
��% &
Length
��& ,
;
��, -
++
��. 0
c
��0 1
)
��1 2
{
�� 
var
�� 
attr
�� 
=
�� 
(
�� $
TrackClipTypeAttribute
�� 2
)
��2 3
attrs
��3 8
[
��8 9
c
��9 :
]
��: ;
;
��; <
if
�� 
(
�� 
attr
�� 
.
�� 
inspectedType
�� &
.
��& '
IsAssignableFrom
��' 7
(
��7 8
clipType
��8 @
)
��@ A
)
��A B
return
�� 
true
�� 
;
��  
}
�� 
return
�� 
typeof
�� 
(
�� 
PlayableTrack
�� '
)
��' (
.
��( )
IsAssignableFrom
��) 9
(
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
&&
��E G
typeof
�� 
(
�� 
IPlayableAsset
�� %
)
��% &
.
��& '
IsAssignableFrom
��' 7
(
��7 8
clipType
��8 @
)
��@ A
&&
��B D
typeof
�� 
(
�� 
ScriptableObject
�� '
)
��' (
.
��( )
IsAssignableFrom
��) 9
(
��9 :
clipType
��: B
)
��B C
;
��C D
}
�� 	
	protected
�� 
virtual
�� 
void
�� 
OnCreateClip
�� +
(
��+ ,
TimelineClip
��, 8
clip
��9 =
)
��= >
{
��? @
}
��A B
void
�� 
UpdateDuration
�� 
(
�� 
)
�� 
{
�� 	
var
�� 
	itemsHash
�� 
=
��  
CalculateItemsHash
�� .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
	itemsHash
�� 
==
�� 
m_ItemsHash
�� (
)
��( )
return
�� 
;
�� 
m_ItemsHash
�� 
=
�� 
	itemsHash
�� #
;
��# $
double
�� 

trackStart
�� 
,
�� 
trackDuration
�� ,
;
��, -
GetSequenceTime
�� 
(
�� 
out
�� 

trackStart
��  *
,
��* +
out
��, /
trackDuration
��0 =
)
��= >
;
��> ?
m_Start
�� 
=
�� 
(
�� 
DiscreteTime
�� #
)
��# $

trackStart
��$ .
;
��. /
m_End
�� 
=
�� 
(
�� 
DiscreteTime
�� !
)
��! "
(
��" #

trackStart
��# -
+
��. /
trackDuration
��0 =
)
��= >
;
��> ?
this
�� 
.
�� )
CalculateExtrapolationTimes
�� ,
(
��, -
)
��- .
;
��. /
}
�� 	
	protected
�� 
internal
�� 
virtual
�� "
int
��# & 
CalculateItemsHash
��' 9
(
��9 :
)
��: ;
{
�� 	
return
�� 
HashUtility
�� 
.
�� 
CombineHash
�� *
(
��* +
GetClipsHash
��+ 7
(
��7 8
)
��8 9
,
��9 :"
GetAnimationClipHash
��; O
(
��O P
m_Curves
��P X
)
��X Y
,
��Y Z
GetTimeRangeHash
��[ k
(
��k l
)
��l m
)
��m n
;
��n o
}
�	�	 	
	protected
�	�	 
virtual
�	�	 
Playable
�	�	 "
CreatePlayable
�	�	# 1
(
�	�	1 2
PlayableGraph
�	�	2 ?
graph
�	�	@ E
,
�	�	E F

GameObject
�	�	G Q

gameObject
�	�	R \
,
�	�	\ ]
TimelineClip
�	�	^ j
clip
�	�	k o
)
�	�	o p
{
�	�	 	
if
�	�	 
(
�	�	 
!
�	�	 
graph
�	�	 
.
�	�	 
IsValid
�	�	 
(
�	�	 
)
�	�	  
)
�	�	  !
throw
�	�	 
new
�	�	 
ArgumentException
�	�	 +
(
�	�	+ ,
$str
�	�	, Q
)
�	�	Q R
;
�	�	R S
if
�	�	 
(
�	�	 
clip
�	�	 
==
�	�	 
null
�	�	 
)
�	�	 
throw
�	�	 
new
�	�	 #
ArgumentNullException
�	�	 /
(
�	�	/ 0
$str
�	�	0 6
)
�	�	6 7
;
�	�	7 8
var
�	�	 
asset
�	�	 
=
�	�	 
clip
�	�	 
.
�	�	 
asset
�	�	 "
as
�	�	# %
IPlayableAsset
�	�	& 4
;
�	�	4 5
if
�	�	 
(
�	�	 
asset
�	�	 
!=
�	�	 
null
�	�	 
)
�	�	 
{
�	�	 
var
�	�	 
handle
�	�	 
=
�	�	 
asset
�	�	 "
.
�	�	" #
CreatePlayable
�	�	# 1
(
�	�	1 2
graph
�	�	2 7
,
�	�	7 8

gameObject
�	�	9 C
)
�	�	C D
;
�	�	D E
if
�	�	 
(
�	�	 
handle
�	�	 
.
�	�	 
IsValid
�	�	 "
(
�	�	" #
)
�	�	# $
)
�	�	$ %
{
�	�	 
handle
�	�	 
.
�	�	 #
SetAnimatedProperties
�	�	 0
(
�	�	0 1
clip
�	�	1 5
.
�	�	5 6
curves
�	�	6 <
)
�	�	< =
;
�	�	= >
handle
�	�	 
.
�	�	 
SetSpeed
�	�	 #
(
�	�	# $
clip
�	�	$ (
.
�	�	( )
	timeScale
�	�	) 2
)
�	�	2 3
;
�	�	3 4
if
�	�	 
(
�	�	 "
OnClipPlayableCreate
�	�	 ,
!=
�	�	- /
null
�	�	0 4
)
�	�	4 5"
OnClipPlayableCreate
�	�	 ,
(
�	�	, -
clip
�	�	- 1
,
�	�	1 2

gameObject
�	�	3 =
,
�	�	= >
handle
�	�	? E
)
�	�	E F
;
�	�	F G
}
�	�	 
return
�	�	 
handle
�	�	 
;
�	�	 
}
�	�	 
return
�	�	 
Playable
�	�	 
.
�	�	 
Null
�	�	  
;
�	�	  !
}
�	�	 	
internal
�	�	 
void
�	�	 

Invalidate
�	�	  
(
�	�	  !
)
�	�	! "
{
�	�	 	
m_ChildTrackCache
�	�	 
=
�	�	 
null
�	�	  $
;
�	�	$ %
var
�	�	 
timeline
�	�	 
=
�	�	 
timelineAsset
�	�	 (
;
�	�	( )
if
�	�	 
(
�	�	 
timeline
�	�	 
!=
�	�	 
null
�	�	  
)
�	�	  !
{
�	�	 
timeline
�	�	 
.
�	�	 

Invalidate
�	�	 #
(
�	�	# $
)
�	�	$ %
;
�	�	% &
}
�	�	 
}
�	�	 	
internal
�	�	 
double
�	�	 %
GetNotificationDuration
�	�	 /
(
�	�	/ 0
)
�	�	0 1
{
�	�	 	
if
�	�	 
(
�	�	 
!
�	�	 #
supportsNotifications
�	�	 &
)
�	�	& '
{
�	�	 
return
�	�	 
$num
�	�	 
;
�	�	 
}
�	�	 
var
�	�	 
maxTime
�	�	 
=
�	�	 
$num
�	�	 
;
�	�	 
int
�	�	 
count
�	�	 
=
�	�	 
	m_Markers
�	�	 !
.
�	�	! "
Count
�	�	" '
;
�	�	' (
for
�	�	 
(
�	�	 
int
�	�	 
i
�	�	 
=
�	�	 
$num
�	�	 
;
�	�	 
i
�	�	 
<
�	�	 
count
�	�	  %
;
�	�	% &
i
�	�	' (
++
�	�	( *
)
�	�	* +
{
�	�	 
var
�	�	 
marker
�	�	 
=
�	�	 
	m_Markers
�	�	 &
[
�	�	& '
i
�	�	' (
]
�	�	( )
;
�	�	) *
if
�	�	 
(
�	�	 
!
�	�	 
(
�	�	 
marker
�	�	 
is
�	�	 
INotification
�	�	  -
)
�	�	- .
)
�	�	. /
{
�	�	 
continue
�	�	 
;
�	�	 
}
�	�	 
maxTime
�	�	 
=
�	�	 
Math
�	�	 
.
�	�	 
Max
�	�	 "
(
�	�	" #
maxTime
�	�	# *
,
�	�	* +
marker
�	�	, 2
.
�	�	2 3
time
�	�	3 7
)
�	�	7 8
;
�	�	8 9
}
�	�	 
return
�	�	 
maxTime
�	�	 
;
�	�	 
}
�	�	 	
internal
�	�	 
virtual
�	�	 
bool
�	�	 
CanCompileClips
�	�	 -
(
�	�	- .
)
�	�	. /
{
�	�	 	
return
�	�	 
hasClips
�	�	 
||
�	�	 
	hasCurves
�	�	 (
;
�	�	( )
}
�	�	 	
public
�	�	 
virtual
�	�	 
bool
�	�	 !
CanCreateTrackMixer
�	�	 /
(
�	�	/ 0
)
�	�	0 1
{
�	�	 	
return
�	�	 
CanCompileClips
�	�	 "
(
�	�	" #
)
�	�	# $
;
�	�	$ %
}
�	�	 	
internal
�	�	 
bool
�	�	 
IsCompilable
�	�	 "
(
�	�	" #
)
�	�	# $
{
�	�	 	
bool
�	�	 
isContainer
�	�	 
=
�	�	 
typeof
�	�	 %
(
�	�	% &

GroupTrack
�	�	& 0
)
�	�	0 1
.
�	�	1 2
IsAssignableFrom
�	�	2 B
(
�	�	B C
GetType
�	�	C J
(
�	�	J K
)
�	�	K L
)
�	�	L M
;
�	�	M N
if
�	�	 
(
�	�	 
isContainer
�	�	 
)
�	�	 
return
�	�	 
false
�	�	 
;
�	�	 
var
�	�	 
ret
�	�	 
=
�	�	 
!
�	�	 
mutedInHierarchy
�	�	 '
&&
�	�	( *
(
�	�	+ ,!
CanCreateTrackMixer
�	�	, ?
(
�	�	? @
)
�	�	@ A
||
�	�	B D%
CanCompileNotifications
�	�	E \
(
�	�	\ ]
)
�	�	] ^
)
�	�	^ _
;
�	�	_ `
if
�	�	 
(
�	�	 
!
�	�	 
ret
�	�	 
)
�	�	 
{
�	�	 
foreach
�	�	 
(
�	�	 
var
�	�	 
t
�	�	 
in
�	�	 !
GetChildTracks
�	�	" 0
(
�	�	0 1
)
�	�	1 2
)
�	�	2 3
{
�	�	 
if
�	�	 
(
�	�	 
t
�	�	 
.
�	�	 
IsCompilable
�	�	 &
(
�	�	& '
)
�	�	' (
)
�	�	( )
return
�	�	 
true
�	�	 #
;
�	�	# $
}
�	�	 
}
�	�	 
return
�	�	 
ret
�	�	 
;
�	�	 
}
�	�	 	
private
�	�	 
void
�	�	 #
UpdateChildTrackCache
�	�	 *
(
�	�	* +
)
�	�	+ ,
{
�	�	 	
if
�	�	 
(
�	�	 
m_ChildTrackCache
�	�	 !
==
�	�	" $
null
�	�	% )
)
�	�	) *
{
�	�	 
if
�	�	 
(
�	�	 

m_Children
�	�	 
==
�	�	 !
null
�	�	" &
||
�	�	' )

m_Children
�	�	* 4
.
�	�	4 5
Count
�	�	5 :
==
�	�	; =
$num
�	�	> ?
)
�	�	? @
m_ChildTrackCache
�	�	 %
=
�	�	& '
s_EmptyCache
�	�	( 4
;
�	�	4 5
else
�	�	 
{
�	�	 
var
�	�	 
childTracks
�	�	 #
=
�	�	$ %
new
�	�	& )
List
�	�	* .
<
�	�	. /

TrackAsset
�	�	/ 9
>
�	�	9 :
(
�	�	: ;

m_Children
�	�	; E
.
�	�	E F
Count
�	�	F K
)
�	�	K L
;
�	�	L M
for
�	�	 
(
�	�	 
int
�	�	 
i
�	�	 
=
�	�	  
$num
�	�	! "
;
�	�	" #
i
�	�	$ %
<
�	�	& '

m_Children
�	�	( 2
.
�	�	2 3
Count
�	�	3 8
;
�	�	8 9
i
�	�	: ;
++
�	�	; =
)
�	�	= >
{
�	�	 
var
�	�	 
subTrack
�	�	 $
=
�	�	% &

m_Children
�	�	' 1
[
�	�	1 2
i
�	�	2 3
]
�	�	3 4
as
�	�	5 7

TrackAsset
�	�	8 B
;
�	�	B C
if
�	�	 
(
�	�	 
subTrack
�	�	 $
!=
�	�	% '
null
�	�	( ,
)
�	�	, -
childTracks
�	�	 '
.
�	�	' (
Add
�	�	( +
(
�	�	+ ,
subTrack
�	�	, 4
)
�	�	4 5
;
�	�	5 6
}
�	�	 
m_ChildTrackCache
�	�	 %
=
�	�	& '
childTracks
�	�	( 3
;
�	�	3 4
}
�	�	 
}
�	�	 
}
�	�	 	
internal
�	�	 
virtual
�	�	 
int
�	�	 
Hash
�	�	 !
(
�	�	! "
)
�	�	" #
{
�	�	 	
return
�
�
 
clips
�
�
 
.
�
�
 
Length
�
�
 
+
�
�
  !
(
�
�
" #
	m_Markers
�
�
# ,
.
�
�
, -
Count
�
�
- 2
<<
�
�
3 5
$num
�
�
6 8
)
�
�
8 9
;
�
�
9 :
}
�
�
 	
int
�
�
 
GetClipsHash
�
�
 
(
�
�
 
)
�
�
 
{
�
�
 	
var
�
�
 
hash
�
�
 
=
�
�
 
$num
�
�
 
;
�
�
 
foreach
�
�
 
(
�
�
 
var
�
�
 
clip
�
�
 
in
�
�
  
m_Clips
�
�
! (
)
�
�
( )
{
�
�
 
hash
�
�
 
=
�
�
 
hash
�
�
 
.
�
�
 
CombineHash
�
�
 '
(
�
�
' (
clip
�
�
( ,
.
�
�
, -
Hash
�
�
- 1
(
�
�
1 2
)
�
�
2 3
)
�
�
3 4
;
�
�
4 5
}
�
�
 
return
�
�
 
hash
�
�
 
;
�
�
 
}
�
�
 	
	protected
�
�
 
static
�
�
 
int
�
�
 "
GetAnimationClipHash
�
�
 1
(
�
�
1 2
AnimationClip
�
�
2 ?
clip
�
�
@ D
)
�
�
D E
{
�
�
 	
var
�
�
 
hash
�
�
 
=
�
�
 
$num
�
�
 
;
�
�
 
if
�
�
 
(
�
�
 
clip
�
�
 
!=
�
�
 
null
�
�
 
&&
�
�
 
!
�
�
  !
clip
�
�
! %
.
�
�
% &
empty
�
�
& +
)
�
�
+ ,
hash
�
�
 
=
�
�
 
hash
�
�
 
.
�
�
 
CombineHash
�
�
 '
(
�
�
' (
clip
�
�
( ,
.
�
�
, -
	frameRate
�
�
- 6
.
�
�
6 7
GetHashCode
�
�
7 B
(
�
�
B C
)
�
�
C D
)
�
�
D E
.
�
�
 
CombineHash
�
�
  
(
�
�
  !
clip
�
�
! %
.
�
�
% &
length
�
�
& ,
.
�
�
, -
GetHashCode
�
�
- 8
(
�
�
8 9
)
�
�
9 :
)
�
�
: ;
;
�
�
; <
return
�
�
 
hash
�
�
 
;
�
�
 
}
�
�
 	
bool
�
�
 
HasNotifications
�
�
 
(
�
�
 
)
�
�
 
{
�
�
 	
return
�
�
 
	m_Markers
�
�
 
.
�
�
 
HasNotifications
�
�
 -
(
�
�
- .
)
�
�
. /
;
�
�
/ 0
}
�
�
 	
bool
�
�
 %
CanCompileNotifications
�
�
 $
(
�
�
$ %
)
�
�
% &
{
�
�
 	
return
�
�
 #
supportsNotifications
�
�
 (
&&
�
�
) +
	m_Markers
�
�
, 5
.
�
�
5 6
HasNotifications
�
�
6 F
(
�
�
F G
)
�
�
G H
;
�
�
H I
}
�
�
 	
bool
�
�
 %
CanCreateMixerRecursive
�
�
 $
(
�
�
$ %
)
�
�
% &
{
�
�
 	
if
�
�
 
(
�
�
 !
CanCreateTrackMixer
�
�
 #
(
�
�
# $
)
�
�
$ %
)
�
�
% &
return
�
�
 
true
�
�
 
;
�
�
 
foreach
�
�
 
(
�
�
 
var
�
�
 
track
�
�
 
in
�
�
 !
GetChildTracks
�
�
" 0
(
�
�
0 1
)
�
�
1 2
)
�
�
2 3
{
�
�
 
if
�
�
 
(
�
�
 
track
�
�
 
.
�
�
 %
CanCreateMixerRecursive
�
�
 1
(
�
�
1 2
)
�
�
2 3
)
�
�
3 4
return
�
�
 
true
�
�
 
;
�
�
  
}
�
�
 
return
�
�
 
false
�
�
 
;
�
�
 
}
�
�
 	
}
�
�
 
}�
�
 ̐
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
�� 	
if
�� 
(
�� 
OnFrameBoundary
�� 
(
��  
	timeValue
��  )
,
��) *
	frameRate
��+ 4
)
��4 5
)
��5 6
return
�� 
ToFrames
�� 
(
��  
	timeValue
��  )
,
��) *
	frameRate
��+ 4
)
��4 5
.
��5 6
ToString
��6 >
(
��> ?
)
��? @
;
��@ A
return
�� 
ToExactFrames
��  
(
��  !
	timeValue
��! *
,
��* +
	frameRate
��, 5
)
��5 6
.
��6 7
ToString
��7 ?
(
��? @
format
��@ F
)
��F G
;
��G H
}
�� 	
public
�� 
static
�� 
string
�� 
TimeAsTimeCode
�� +
(
��+ ,
double
��, 2
	timeValue
��3 <
,
��< =
double
��> D
	frameRate
��E N
,
��N O
string
��P V
format
��W ]
=
��^ _
$str
��` d
)
��d e
{
�� 	
ValidateFrameRate
�� 
(
�� 
	frameRate
�� '
)
��' (
;
��( )
int
�� 
intTime
�� 
=
�� 
(
�� 
int
�� 
)
�� 
Math
�� #
.
��# $
Abs
��$ '
(
��' (
	timeValue
��( 1
)
��1 2
;
��2 3
int
�� 
hours
�� 
=
�� 
intTime
�� 
/
��  !
$num
��" &
;
��& '
int
�� 
minutes
�� 
=
�� 
(
�� 
intTime
�� "
%
��# $
$num
��% )
)
��) *
/
��+ ,
$num
��- /
;
��/ 0
int
�� 
seconds
�� 
=
�� 
intTime
�� !
%
��" #
$num
��$ &
;
��& '
string
�� 
result
�� 
;
�� 
string
�� 
sign
�� 
=
�� 
	timeValue
�� #
<
��$ %
$num
��& '
?
��( )
$str
��* -
:
��. /
string
��0 6
.
��6 7
Empty
��7 <
;
��< =
if
�� 
(
�� 
hours
�� 
>
�� 
$num
�� 
)
�� 
result
�� 
=
�� 
hours
�� 
+
��  
$str
��! $
+
��% &
minutes
��' .
.
��. /
ToString
��/ 7
(
��7 8
$str
��8 <
)
��< =
+
��> ?
$str
��@ C
+
��D E
seconds
��F M
.
��M N
ToString
��N V
(
��V W
$str
��W [
)
��[ \
;
��\ ]
else
�� 
if
�� 
(
�� 
minutes
�� 
>
�� 
$num
��  
)
��  !
result
�� 
=
�� 
minutes
��  
+
��! "
$str
��# &
+
��' (
seconds
��) 0
.
��0 1
ToString
��1 9
(
��9 :
$str
��: >
)
��> ?
;
��? @
else
�� 
result
�� 
=
�� 
seconds
��  
.
��  !
ToString
��! )
(
��) *
)
��* +
;
��+ ,
int
�� 
frameDigits
�� 
=
�� 
(
�� 
int
�� "
)
��" #
Math
��# '
.
��' (
Floor
��( -
(
��- .
Math
��. 2
.
��2 3
Log10
��3 8
(
��8 9
	frameRate
��9 B
)
��B C
+
��D E
$num
��F G
)
��G H
;
��H I
string
�� 
frames
�� 
=
�� 
(
�� 
ToFrames
�� %
(
��% &
	timeValue
��& /
,
��/ 0
	frameRate
��1 :
)
��: ;
-
��< =
ToFrames
��> F
(
��F G
intTime
��G N
,
��N O
	frameRate
��P Y
)
��Y Z
)
��Z [
.
��[ \
ToString
��\ d
(
��d e
)
��e f
.
��f g
PadLeft
��g n
(
��n o
frameDigits
��o z
,
��z {
$char
��| 
)�� �
;��� �
if
�� 
(
�� 
!
�� 
OnFrameBoundary
��  
(
��  !
	timeValue
��! *
,
��* +
	frameRate
��, 5
)
��5 6
)
��6 7
{
�� 
string
�� 
decimals
�� 
=
��  !
ToExactFrames
��" /
(
��/ 0
	timeValue
��0 9
,
��9 :
	frameRate
��; D
)
��D E
.
��E F
ToString
��F N
(
��N O
format
��O U
)
��U V
;
��V W
int
�� 
decPlace
�� 
=
�� 
decimals
�� '
.
��' (
IndexOf
��( /
(
��/ 0
$char
��0 3
)
��3 4
;
��4 5
if
�� 
(
�� 
decPlace
�� 
>=
�� 
$num
��  !
)
��! "
frames
�� 
+=
�� 
$str
�� "
+
��# $
decimals
��% -
.
��- .
	Substring
��. 7
(
��7 8
decPlace
��8 @
)
��@ A
+
��B C
$str
��D G
;
��G H
}
�� 
return
�� 
sign
�� 
+
�� 
result
��  
+
��! "
$str
��# &
+
��' (
frames
��) /
;
��/ 0
}
�� 	
public
�� 
static
�� 
double
�� 
ParseTimeCode
�� *
(
��* +
string
��+ 1
timeCode
��2 :
,
��: ;
double
��< B
	frameRate
��C L
,
��L M
double
��N T
defaultValue
��U a
)
��a b
{
�� 	
timeCode
�� 
=
�� 

RemoveChar
�� !
(
��! "
timeCode
��" *
,
��* +
c
��, -
=>
��. 0
char
��1 5
.
��5 6
IsWhiteSpace
��6 B
(
��B C
c
��C D
)
��D E
)
��E F
;
��F G
string
�� 
[
�� 
]
�� 
sections
�� 
=
�� 
timeCode
��  (
.
��( )
Split
��) .
(
��. /
$char
��/ 2
)
��2 3
;
��3 4
if
�� 
(
�� 
sections
�� 
.
�� 
Length
�� 
==
��  "
$num
��# $
||
��% '
sections
��( 0
.
��0 1
Length
��1 7
>
��8 9
$num
��: ;
)
��; <
return
�� 
defaultValue
�� #
;
��# $
int
�� 
hours
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
minutes
�� 
=
�� 
$num
�� 
;
�� 
double
�� 
seconds
�� 
=
�� 
$num
�� 
;
�� 
double
�� 
frames
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
string
�� 
lastSection
�� "
=
��# $
sections
��% -
[
��- .
sections
��. 6
.
��6 7
Length
��7 =
-
��> ?
$num
��@ A
]
��A B
;
��B C
if
�� 
(
�� 
Regex
�� 
.
�� 
Match
�� 
(
��  
lastSection
��  +
,
��+ ,
$str
��- :
)
��: ;
.
��; <
Success
��< C
)
��C D
{
�� 
seconds
�� 
=
�� 
double
�� $
.
��$ %
Parse
��% *
(
��* +
lastSection
��+ 6
)
��6 7
;
��7 8
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
return
��- 3
defaultValue
��4 @
;
��@ A
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
minutes
��- 4
=
��5 6
int
��7 :
.
��: ;
Parse
��; @
(
��@ A
sections
��A I
[
��I J
sections
��J R
.
��R S
Length
��S Y
-
��Z [
$num
��\ ]
]
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
hours
��- 2
=
��3 4
int
��5 8
.
��8 9
Parse
��9 >
(
��> ?
sections
��? G
[
��G H
sections
��H P
.
��P Q
Length
��Q W
-
��X Y
$num
��Z [
]
��[ \
)
��\ ]
;
��] ^
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
Regex
�� 
.
�� 
Match
�� #
(
��# $
lastSection
��$ /
,
��/ 0
$str
��1 B
)
��B C
.
��C D
Success
��D K
)
��K L
{
�� 
string
�� 
stripped
�� '
=
��( )

RemoveChar
��* 4
(
��4 5
lastSection
��5 @
,
��@ A
c
��B C
=>
��D F
c
��G H
==
��I K
$char
��L O
||
��P R
c
��S T
==
��U W
$char
��X [
)
��[ \
;
��\ ]
frames
�� 
=
��  
double
��! '
.
��' (
Parse
��( -
(
��- .
stripped
��. 6
)
��6 7
;
��7 8
}
�� 
else
�� 
if
�� 
(
�� 
Regex
�� "
.
��" #
Match
��# (
(
��( )
lastSection
��) 4
,
��4 5
$str
��6 >
)
��> ?
.
��? @
Success
��@ G
)
��G H
{
�� 
frames
�� 
=
��  
int
��! $
.
��$ %
Parse
��% *
(
��* +
lastSection
��+ 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 
return
�� 
defaultValue
�� +
;
��+ ,
}
�� 
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
seconds
��- 4
=
��5 6
int
��7 :
.
��: ;
Parse
��; @
(
��@ A
sections
��A I
[
��I J
sections
��J R
.
��R S
Length
��S Y
-
��Z [
$num
��\ ]
]
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
minutes
��- 4
=
��5 6
int
��7 :
.
��: ;
Parse
��; @
(
��@ A
sections
��A I
[
��I J
sections
��J R
.
��R S
Length
��S Y
-
��Z [
$num
��\ ]
]
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
hours
��- 2
=
��3 4
int
��5 8
.
��8 9
Parse
��9 >
(
��> ?
sections
��? G
[
��G H
sections
��H P
.
��P Q
Length
��Q W
-
��X Y
$num
��Z [
]
��[ \
)
��\ ]
;
��] ^
}
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
return
�� 
defaultValue
�� #
;
��# $
}
�� 
return
�� 
frames
�� 
/
�� 
	frameRate
�� %
+
��& '
seconds
��( /
+
��0 1
minutes
��2 9
*
��: ;
$num
��< >
+
��? @
hours
��A F
*
��G H
$num
��I M
;
��M N
}
�� 	
public
�� 
static
�� 
double
�� 
ParseTimeSeconds
�� -
(
��- .
string
��. 4
timeCode
��5 =
,
��= >
double
��? E
	frameRate
��F O
,
��O P
double
��Q W
defaultValue
��X d
)
��d e
{
�� 	
timeCode
�� 
=
�� 

RemoveChar
�� !
(
��! "
timeCode
��" *
,
��* +
c
��, -
=>
��. 0
char
��1 5
.
��5 6
IsWhiteSpace
��6 B
(
��B C
c
��C D
)
��D E
)
��E F
;
��F G
string
�� 
[
�� 
]
�� 
sections
�� 
=
�� 
timeCode
��  (
.
��( )
Split
��) .
(
��. /
$char
��/ 2
)
��2 3
;
��3 4
if
�� 
(
�� 
sections
�� 
.
�� 
Length
�� 
==
��  "
$num
��# $
||
��% '
sections
��( 0
.
��0 1
Length
��1 7
>
��8 9
$num
��: ;
)
��; <
return
�� 
defaultValue
�� #
;
��# $
int
�� 
hours
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
minutes
�� 
=
�� 
$num
�� 
;
�� 
double
�� 
seconds
�� 
=
�� 
$num
�� 
;
�� 
try
�� 
{
�� 
string
�� 
lastSection
�� "
=
��# $
sections
��% -
[
��- .
sections
��. 6
.
��6 7
Length
��7 =
-
��> ?
$num
��@ A
]
��A B
;
��B C
{
�� 
if
�� 
(
�� 
!
�� 
double
�� 
.
��  
TryParse
��  (
(
��( )
lastSection
��) 4
,
��4 5
NumberStyles
��6 B
.
��B C
Integer
��C J
,
��J K
CultureInfo
��L W
.
��W X
InvariantCulture
��X h
,
��h i
out
��j m
seconds
��n u
)
��u v
)
��v w
if
�� 
(
�� 
Regex
�� !
.
��! "
Match
��" '
(
��' (
lastSection
��( 3
,
��3 4
$str
��5 B
)
��B C
.
��C D
Success
��D K
)
��K L
seconds
�� #
=
��$ %
double
��& ,
.
��, -
Parse
��- 2
(
��2 3
lastSection
��3 >
)
��> ?
;
��? @
else
�� 
return
�� "
defaultValue
��# /
;
��/ 0
if
�� 
(
�� 
!
�� 
double
�� 
.
��  
TryParse
��  (
(
��( )
lastSection
��) 4
,
��4 5
NumberStyles
��6 B
.
��B C
Float
��C H
,
��H I
CultureInfo
��J U
.
��U V
InvariantCulture
��V f
,
��f g
out
��h k
seconds
��l s
)
��s t
)
��t u
return
�� 
defaultValue
�� +
;
��+ ,
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
return
��- 3
defaultValue
��4 @
;
��@ A
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
minutes
��- 4
=
��5 6
int
��7 :
.
��: ;
Parse
��; @
(
��@ A
sections
��A I
[
��I J
sections
��J R
.
��R S
Length
��S Y
-
��Z [
$num
��\ ]
]
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
sections
��  
.
��  !
Length
��! '
>
��( )
$num
��* +
)
��+ ,
hours
��- 2
=
��3 4
int
��5 8
.
��8 9
Parse
��9 >
(
��> ?
sections
��? G
[
��G H
sections
��H P
.
��P Q
Length
��Q W
-
��X Y
$num
��Z [
]
��[ \
)
��\ ]
;
��] ^
}
�� 
}
�� 
catch
�� 
(
�� 
FormatException
�� "
)
��" #
{
�� 
return
�� 
defaultValue
�� #
;
��# $
}
�� 
return
�� 
seconds
�� 
+
�� 
minutes
�� $
*
��% &
$num
��' )
+
��* +
hours
��, 1
*
��2 3
$num
��4 8
;
��8 9
}
�� 	
public
�� 
static
�� 
double
�� $
GetAnimationClipLength
�� 3
(
��3 4
AnimationClip
��4 A
clip
��B F
)
��F G
{
�� 	
if
�� 
(
�� 
clip
�� 
==
�� 
null
�� 
||
�� 
clip
��  $
.
��$ %
empty
��% *
)
��* +
return
�� 
$num
�� 
;
�� 
double
�� 
length
�� 
=
�� 
clip
��  
.
��  !
length
��! '
;
��' (
if
�� 
(
�� 
clip
�� 
.
�� 
	frameRate
�� 
>
��  
$num
��! "
)
��" #
{
�� 
double
�� 
frames
�� 
=
�� 
Mathf
��  %
.
��% &
Round
��& +
(
��+ ,
clip
��, 0
.
��0 1
length
��1 7
*
��8 9
clip
��: >
.
��> ?
	frameRate
��? H
)
��H I
;
��I J
length
�� 
=
�� 
frames
�� 
/
��  !
clip
��" &
.
��& '
	frameRate
��' 0
;
��0 1
}
�� 
return
�� 
length
�� 
;
�� 
}
�� 	
static
�� 
string
�� 

RemoveChar
��  
(
��  !
string
��! '
str
��( +
,
��+ ,
Func
��- 1
<
��1 2
char
��2 6
,
��6 7
bool
��8 <
>
��< =
charToRemoveFunc
��> N
)
��N O
{
�� 	
var
�� 
len
�� 
=
�� 
str
�� 
.
�� 
Length
��  
;
��  !
var
�� 
src
�� 
=
�� 
str
�� 
.
�� 
ToCharArray
�� %
(
��% &
)
��& '
;
��' (
var
�� 
dstIdx
�� 
=
�� 
$num
�� 
;
�� 
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
�� 
len
��  #
;
��# $
i
��% &
++
��& (
)
��( )
{
�� 
if
�� 
(
�� 
!
�� 
charToRemoveFunc
�� %
(
��% &
src
��& )
[
��) *
i
��* +
]
��+ ,
)
��, -
)
��- .
src
�� 
[
�� 
dstIdx
�� 
++
��  
]
��  !
=
��" #
src
��$ '
[
��' (
i
��( )
]
��) *
;
��* +
}
�� 
return
�� 
new
�� 
string
�� 
(
�� 
src
�� !
,
��! "
$num
��# $
,
��$ %
dstIdx
��& ,
)
��, -
;
��- .
}
�� 	
public
�� 
static
�� 
	FrameRate
�� !
GetClosestFrameRate
��  3
(
��3 4
double
��4 :
	frameRate
��; D
)
��D E
{
�� 	
ValidateFrameRate
�� 
(
�� 
	frameRate
�� '
)
��' (
;
��( )
var
�� 
actualFrameRate
�� 
=
��  !
	FrameRate
��" +
.
��+ ,
DoubleToFrameRate
��, =
(
��= >
	frameRate
��> G
)
��G H
;
��H I
return
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 
	frameRate
�� %
-
��& '
actualFrameRate
��( 7
.
��7 8
rate
��8 <
)
��< =
<
��> ? 
kFrameRateRounding
��@ R
?
��S T
actualFrameRate
��U d
:
��e f
new
��g j
	FrameRate
��k t
(
��t u
)
��u v
;
��v w
}
�� 	
public
�� 
static
�� 
	FrameRate
�� 
ToFrameRate
��  +
(
��+ , 
StandardFrameRates
��, >
	enumValue
��? H
)
��H I
{
�� 	
switch
�� 
(
�� 
	enumValue
�� 
)
�� 
{
�� 
case
��  
StandardFrameRates
�� '
.
��' (
Fps23_97
��( 0
:
��0 1
return
�� 
	FrameRate
�� $
.
��$ %
k_23_976Fps
��% 0
;
��0 1
case
��  
StandardFrameRates
�� '
.
��' (
Fps24
��( -
:
��- .
return
�� 
	FrameRate
�� $
.
��$ %
k_24Fps
��% ,
;
��, -
case
��  
StandardFrameRates
�� '
.
��' (
Fps25
��( -
:
��- .
return
�� 
	FrameRate
�� $
.
��$ %
k_25Fps
��% ,
;
��, -
case
��  
StandardFrameRates
�� '
.
��' (
Fps29_97
��( 0
:
��0 1
return
�� 
	FrameRate
�� $
.
��$ %

k_29_97Fps
��% /
;
��/ 0
case
��  
StandardFrameRates
�� '
.
��' (
Fps30
��( -
:
��- .
return
�� 
	FrameRate
�� $
.
��$ %
k_30Fps
��% ,
;
��, -
case
��  
StandardFrameRates
�� '
.
��' (
Fps50
��( -
:
��- .
return
�� 
	FrameRate
�� $
.
��$ %
k_50Fps
��% ,
;
��, -
case
��  
StandardFrameRates
�� '
.
��' (
Fps59_94
��( 0
:
��0 1
return
�� 
	FrameRate
�� $
.
��$ %

k_59_94Fps
��% /
;
��/ 0
case
��  
StandardFrameRates
�� '
.
��' (
Fps60
��( -
:
��- .
return
�� 
	FrameRate
�� $
.
��$ %
k_60Fps
��% ,
;
��, -
default
�� 
:
�� 
return
�� 
new
�� 
	FrameRate
�� (
(
��( )
)
��) *
;
��* +
}
�� 
;
�� 
}
�� 	
internal
�� 
static
�� 
bool
�� !
ToStandardFrameRate
�� 0
(
��0 1
	FrameRate
��1 :
rate
��; ?
,
��? @
out
��A D 
StandardFrameRates
��E W
standard
��X `
)
��` a
{
�� 	
if
�� 
(
�� 
rate
�� 
==
�� 
	FrameRate
�� !
.
��! "
k_23_976Fps
��" -
)
��- .
standard
�� 
=
��  
StandardFrameRates
�� -
.
��- .
Fps23_97
��. 6
;
��6 7
else
�� 
if
�� 
(
�� 
rate
�� 
==
�� 
	FrameRate
�� &
.
��& '
k_24Fps
��' .
)
��. /
standard
�� 
=
��  
StandardFrameRates
�� -
.
��- .
Fps24
��. 3
;
��3 4
else
�� 
if
�� 
(
�� 
rate
�� 
==
�� 
	FrameRate
�� &
.
��& '
k_25Fps
��' .
)
��. /
standard
�� 
=
��  
StandardFrameRates
�� -
.
��- .
Fps25
��. 3
;
��3 4
else
�� 
if
�� 
(
�� 
rate
�� 
==
�� 
	FrameRate
�� &
.
��& '
k_30Fps
��' .
)
��. /
standard
�� 
=
��  
StandardFrameRates
�� -
.
��- .
Fps30
��. 3
;
��3 4
else
�� 
if
�� 
(
�� 
rate
�� 
==
�� 
	FrameRate
�� &
.
��& '

k_29_97Fps
��' 1
)
��1 2
standard
�� 
=
��  
StandardFrameRates
�� -
.
��- .
Fps29_97
��. 6
;
��6 7
else
�� 
if
�� 
(
�� 
rate
�� 
==
�� 
	FrameRate
�� &
.
��& '
k_50Fps
��' .
)
��. /
standard
�� 
=
��  
StandardFrameRates
�� -
.
��- .
Fps50
��. 3
;
��3 4
else
�� 
if
�� 
(
�� 
rate
�� 
==
�� 
	FrameRate
�� &
.
��& '

k_59_94Fps
��' 1
)
��1 2
standard
�� 
=
��  
StandardFrameRates
�� -
.
��- .
Fps59_94
��. 6
;
��6 7
else
�� 
if
�� 
(
�� 
rate
�� 
==
�� 
	FrameRate
�� &
.
��& '
k_60Fps
��' .
)
��. /
standard
�� 
=
��  
StandardFrameRates
�� -
.
��- .
Fps60
��. 3
;
��3 4
else
�� 
{
�� 
standard
�� 
=
�� 
(
��  
StandardFrameRates
�� .
)
��. /
Enum
��/ 3
.
��3 4
	GetValues
��4 =
(
��= >
typeof
��> D
(
��D E 
StandardFrameRates
��E W
)
��W X
)
��X Y
.
��Y Z
Length
��Z `
;
��` a
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
} �
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
} �
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
}YY �.
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
��  
.
��  !
volume
��! '
=
��( )
m_ClipProperties
��* :
.
��: ;
volume
��; A
;
��A B
}
�� 	
}
�� 
}�� ϭ
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
�� 
|=
�� 
isDirty
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
Query
�� 
(
�� 
IntervalTreeNode
�� +
intervalTreeNode
��, <
,
��< =
Int64
��> C
value
��D I
,
��I J
List
��K O
<
��O P
T
��P Q
>
��Q R
results
��S Z
)
��Z [
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
intervalTreeNode
�� )
.
��) *
first
��* /
;
��/ 0
i
��1 2
<=
��3 5
intervalTreeNode
��6 F
.
��F G
last
��G K
;
��K L
i
��M N
++
��N P
)
��P Q
{
�� 
var
�� 
entry
�� 
=
�� 
	m_Entries
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
value
�� 
>=
�� 
entry
�� "
.
��" #
intervalStart
��# 0
&&
��1 3
value
��4 9
<
��: ;
entry
��< A
.
��A B
intervalEnd
��B M
)
��M N
{
�� 
results
�� 
.
�� 
Add
�� 
(
��  
entry
��  %
.
��% &
item
��& *
)
��* +
;
��+ ,
}
�� 
}
�� 
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
center
��! '
==
��( *
kCenterUnknown
��+ 9
)
��9 :
return
�� 
;
�� 
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
left
��! %
!=
��& (
kInvalidNode
��) 5
&&
��6 8
value
��9 >
<
��? @
intervalTreeNode
��A Q
.
��Q R
center
��R X
)
��X Y
Query
�� 
(
�� 
m_Nodes
�� 
[
�� 
intervalTreeNode
�� .
.
��. /
left
��/ 3
]
��3 4
,
��4 5
value
��6 ;
,
��; <
results
��= D
)
��D E
;
��E F
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
right
��! &
!=
��' )
kInvalidNode
��* 6
&&
��7 9
value
��: ?
>
��@ A
intervalTreeNode
��B R
.
��R S
center
��S Y
)
��Y Z
Query
�� 
(
�� 
m_Nodes
�� 
[
�� 
intervalTreeNode
�� .
.
��. /
right
��/ 4
]
��4 5
,
��5 6
value
��7 <
,
��< =
results
��> E
)
��E F
;
��F G
}
�� 	
private
�� 
void
�� 

QueryRange
�� 
(
��  
IntervalTreeNode
��  0
intervalTreeNode
��1 A
,
��A B
Int64
��C H
start
��I N
,
��N O
Int64
��P U
end
��V Y
,
��Y Z
List
��[ _
<
��_ `
T
��` a
>
��a b
results
��c j
)
��j k
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
intervalTreeNode
�� )
.
��) *
first
��* /
;
��/ 0
i
��1 2
<=
��3 5
intervalTreeNode
��6 F
.
��F G
last
��G K
;
��K L
i
��M N
++
��N P
)
��P Q
{
�� 
var
�� 
entry
�� 
=
�� 
	m_Entries
�� %
[
��% &
i
��& '
]
��' (
;
��( )
if
�� 
(
�� 
end
�� 
>=
�� 
entry
��  
.
��  !
intervalStart
��! .
&&
��/ 1
start
��2 7
<
��8 9
entry
��: ?
.
��? @
intervalEnd
��@ K
)
��K L
{
�� 
results
�� 
.
�� 
Add
�� 
(
��  
entry
��  %
.
��% &
item
��& *
)
��* +
;
��+ ,
}
�� 
}
�� 
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
center
��! '
==
��( *
kCenterUnknown
��+ 9
)
��9 :
return
�� 
;
�� 
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
left
��! %
!=
��& (
kInvalidNode
��) 5
&&
��6 8
start
��9 >
<
��? @
intervalTreeNode
��A Q
.
��Q R
center
��R X
)
��X Y

QueryRange
�� 
(
�� 
m_Nodes
�� "
[
��" #
intervalTreeNode
��# 3
.
��3 4
left
��4 8
]
��8 9
,
��9 :
start
��; @
,
��@ A
end
��B E
,
��E F
results
��G N
)
��N O
;
��O P
if
�� 
(
�� 
intervalTreeNode
��  
.
��  !
right
��! &
!=
��' )
kInvalidNode
��* 6
&&
��7 9
end
��: =
>
��> ?
intervalTreeNode
��@ P
.
��P Q
center
��Q W
)
��W X

QueryRange
�� 
(
�� 
m_Nodes
�� "
[
��" #
intervalTreeNode
��# 3
.
��3 4
right
��4 9
]
��9 :
,
��: ;
start
��< A
,
��A B
end
��C F
,
��F G
results
��H O
)
��O P
;
��P Q
}
�� 	
private
�� 
void
�� 
Rebuild
�� 
(
�� 
)
�� 
{
�� 	
m_Nodes
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
m_Nodes
�� 
.
�� 
Capacity
�� 
=
�� 
	m_Entries
�� (
.
��( )
Capacity
��) 1
;
��1 2
Rebuild
�� 
(
�� 
$num
�� 
,
�� 
	m_Entries
��  
.
��  !
Count
��! &
-
��' (
$num
��) *
)
��* +
;
��+ ,
}
�� 	
private
�� 
int
�� 
Rebuild
�� 
(
�� 
int
�� 
start
��  %
,
��% &
int
��' *
end
��+ .
)
��. /
{
�� 	
IntervalTreeNode
�� 
intervalTreeNode
�� -
=
��. /
new
��0 3
IntervalTreeNode
��4 D
(
��D E
)
��E F
;
��F G
int
�� 
count
�� 
=
�� 
end
�� 
-
�� 
start
�� #
+
��$ %
$num
��& '
;
��' (
if
�� 
(
�� 
count
�� 
<
�� 
kMinNodeSize
�� $
)
��$ %
{
�� 
intervalTreeNode
��  
=
��! "
new
��# &
IntervalTreeNode
��' 7
(
��7 8
)
��8 9
{
��: ;
center
��< B
=
��C D
kCenterUnknown
��E S
,
��S T
first
��U Z
=
��[ \
start
��] b
,
��b c
last
��d h
=
��i j
end
��k n
,
��n o
left
��p t
=
��u v
kInvalidNode��w �
,��� �
right��� �
=��� �
kInvalidNode��� �
}��� �
;��� �
m_Nodes
�� 
.
�� 
Add
�� 
(
�� 
intervalTreeNode
�� ,
)
��, -
;
��- .
return
�� 
m_Nodes
�� 
.
�� 
Count
�� $
-
��% &
$num
��' (
;
��( )
}
�� 
var
�� 
min
�� 
=
�� 
Int64
�� 
.
�� 
MaxValue
�� $
;
��$ %
var
�� 
max
�� 
=
�� 
Int64
�� 
.
�� 
MinValue
�� $
;
��$ %
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
start
�� 
;
�� 
i
��  !
<=
��" $
end
��% (
;
��( )
i
��* +
++
��+ -
)
��- .
{
�� 
var
�� 
o
�� 
=
�� 
	m_Entries
�� !
[
��! "
i
��" #
]
��# $
;
��$ %
min
�� 
=
�� 
Math
�� 
.
�� 
Min
�� 
(
�� 
min
�� "
,
��" #
o
��$ %
.
��% &
intervalStart
��& 3
)
��3 4
;
��4 5
max
�� 
=
�� 
Math
�� 
.
�� 
Max
�� 
(
�� 
max
�� "
,
��" #
o
��$ %
.
��% &
intervalEnd
��& 1
)
��1 2
;
��2 3
}
�� 
var
�� 
center
�� 
=
�� 
(
�� 
max
�� 
+
�� 
min
��  #
)
��# $
/
��% &
$num
��' (
;
��( )
intervalTreeNode
�� 
.
�� 
center
�� #
=
��$ %
center
��& ,
;
��, -
int
�� 
x
�� 
=
�� 
start
�� 
;
�� 
int
�� 
y
�� 
=
�� 
end
�� 
;
�� 
while
�� 
(
�� 
true
�� 
)
�� 
{
�� 
while
�� 
(
�� 
x
�� 
<=
�� 
end
�� 
&&
��  "
	m_Entries
��# ,
[
��, -
x
��- .
]
��. /
.
��/ 0
intervalEnd
��0 ;
<
��< =
center
��> D
)
��D E
x
�� 
++
�� 
;
�� 
while
�� 
(
�� 
y
�� 
>=
�� 
start
�� !
&&
��" $
	m_Entries
��% .
[
��. /
y
��/ 0
]
��0 1
.
��1 2
intervalEnd
��2 =
>=
��> @
center
��A G
)
��G H
y
�� 
--
�� 
;
�� 
if
�� 
(
�� 
x
�� 
>
�� 
y
�� 
)
�� 
break
�� 
;
�� 
var
�� 
nodeX
�� 
=
�� 
	m_Entries
�� %
[
��% &
x
��& '
]
��' (
;
��( )
var
�� 
nodeY
�� 
=
�� 
	m_Entries
�� %
[
��% &
y
��& '
]
��' (
;
��( )
	m_Entries
�� 
[
�� 
y
�� 
]
�� 
=
�� 
nodeX
�� $
;
��$ %
	m_Entries
�� 
[
�� 
x
�� 
]
�� 
=
�� 
nodeY
�� $
;
��$ %
}
�� 
intervalTreeNode
�� 
.
�� 
first
�� "
=
��# $
x
��% &
;
��& '
y
�� 
=
�� 
end
�� 
;
�� 
while
�� 
(
�� 
true
�� 
)
�� 
{
�� 
while
�� 
(
�� 
x
�� 
<=
�� 
end
�� 
&&
��  "
	m_Entries
��# ,
[
��, -
x
��- .
]
��. /
.
��/ 0
intervalStart
��0 =
<=
��> @
center
��A G
)
��G H
x
�� 
++
�� 
;
�� 
while
�� 
(
�� 
y
�� 
>=
�� 
start
�� !
&&
��" $
	m_Entries
��% .
[
��. /
y
��/ 0
]
��0 1
.
��1 2
intervalStart
��2 ?
>
��@ A
center
��B H
)
��H I
y
�� 
--
�� 
;
�� 
if
�� 
(
�� 
x
�� 
>
�� 
y
�� 
)
�� 
break
�� 
;
�� 
var
�� 
nodeX
�� 
=
�� 
	m_Entries
�� %
[
��% &
x
��& '
]
��' (
;
��( )
var
�� 
nodeY
�� 
=
�� 
	m_Entries
�� %
[
��% &
y
��& '
]
��' (
;
��( )
	m_Entries
�� 
[
�� 
y
�� 
]
�� 
=
�� 
nodeX
�� $
;
��$ %
	m_Entries
�� 
[
�� 
x
�� 
]
�� 
=
�� 
nodeY
�� $
;
��$ %
}
�� 
intervalTreeNode
�� 
.
�� 
last
�� !
=
��" #
y
��$ %
;
��% &
m_Nodes
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
IntervalTreeNode
�� ,
(
��, -
)
��- .
)
��. /
;
��/ 0
int
�� 
index
�� 
=
�� 
m_Nodes
�� 
.
��  
Count
��  %
-
��& '
$num
��( )
;
��) *
intervalTreeNode
�� 
.
�� 
left
�� !
=
��" #
kInvalidNode
��$ 0
;
��0 1
intervalTreeNode
�� 
.
�� 
right
�� "
=
��# $
kInvalidNode
��% 1
;
��1 2
if
�� 
(
�� 
start
�� 
<
�� 
intervalTreeNode
�� (
.
��( )
first
��) .
)
��. /
intervalTreeNode
��  
.
��  !
left
��! %
=
��& '
Rebuild
��( /
(
��/ 0
start
��0 5
,
��5 6
intervalTreeNode
��7 G
.
��G H
first
��H M
-
��N O
$num
��P Q
)
��Q R
;
��R S
if
�� 
(
�� 
end
�� 
>
�� 
intervalTreeNode
�� &
.
��& '
last
��' +
)
��+ ,
intervalTreeNode
��  
.
��  !
right
��! &
=
��' (
Rebuild
��) 0
(
��0 1
intervalTreeNode
��1 A
.
��A B
last
��B F
+
��G H
$num
��I J
,
��J K
end
��L O
)
��O P
;
��P Q
m_Nodes
�� 
[
�� 
index
�� 
]
�� 
=
�� 
intervalTreeNode
�� -
;
��- .
return
�� 
index
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
Clear
�� 
(
�� 
)
�� 
{
�� 	
	m_Entries
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
m_Nodes
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
} �
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
} �>
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
�� 
.
�� 
	childType
�� 
=
�� 
	childType
�� &
;
��& '
this
�� 
.
�� 
levels
�� 
=
�� 
levels
��  
;
��  !
}
�� 	
}
�� 
[
�� 
AttributeUsage
�� 
(
�� 
AttributeTargets
�� $
.
��$ %
Class
��% *
,
��* +
AllowMultiple
��, 9
=
��: ;
false
��< A
,
��A B
	Inherited
��C L
=
��M N
true
��O S
)
��S T
]
��T U
class
�� 	,
IgnoreOnPlayableTrackAttribute
��
 (
:
��) *
System
��+ 1
.
��1 2
	Attribute
��2 ;
{
��< =
}
��> ?
class
�� 	 
TimeFieldAttribute
��
 
:
�� 
PropertyAttribute
�� 0
{
�� 
public
�� 
enum
�� 
UseEditMode
�� 
{
�� 	
None
�� 
,
�� 
ApplyEditMode
�� 
}
�� 	
public
�� 
UseEditMode
�� 
useEditMode
�� &
{
��' (
get
��) ,
;
��, -
}
��. /
public
��  
TimeFieldAttribute
�� !
(
��! "
UseEditMode
��" -
useEditMode
��. 9
=
��: ;
UseEditMode
��< G
.
��G H
ApplyEditMode
��H U
)
��U V
{
�� 	
this
�� 
.
�� 
useEditMode
�� 
=
�� 
useEditMode
�� *
;
��* +
}
�� 	
}
�� 
class
�� 	%
FrameRateFieldAttribute
��
 !
:
��" #
PropertyAttribute
��$ 5
{
��6 7
}
��8 9
[
�� 
AttributeUsage
�� 
(
�� 
AttributeTargets
�� $
.
��$ %
Class
��% *
,
��* +
	Inherited
��, 5
=
��6 7
false
��8 =
)
��= >
]
��> ?
public
�� 

class
�� !
HideInMenuAttribute
�� $
:
��% &
	Attribute
��' 0
{
��1 2
}
��3 4
[
�� 
AttributeUsage
�� 
(
�� 
AttributeTargets
�� $
.
��$ %
Class
��% *
)
��* +
]
��+ ,
public
�� 

class
�� "
CustomStyleAttribute
�� %
:
��& '
	Attribute
��( 1
{
�� 
public
�� 
readonly
�� 
string
�� 
ussStyle
�� '
;
��' (
public
�� "
CustomStyleAttribute
�� #
(
��# $
string
��$ *
ussStyle
��+ 3
)
��3 4
{
�� 	
this
�� 
.
�� 
ussStyle
�� 
=
�� 
ussStyle
�� $
;
��$ %
}
�� 	
}
�� 
[
�� 
AttributeUsage
�� 
(
�� 
AttributeTargets
�� $
.
��$ %
Class
��% *
)
��* +
]
��+ ,
internal
�� 
class
�� #
MenuCategoryAttribute
�� (
:
��) *
	Attribute
��+ 4
{
�� 
public
�� 
readonly
�� 
string
�� 
category
�� '
;
��' (
public
�� #
MenuCategoryAttribute
�� $
(
��$ %
string
��% +
category
��, 4
)
��4 5
{
�� 	
this
�� 
.
�� 
category
�� 
=
�� 
category
�� $
??
��% '
string
��( .
.
��. /
Empty
��/ 4
;
��4 5
}
�� 	
}
�� 
}�� �2
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
}FF � 
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
}-- �>
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
$str	 �
,
� �
true
� �
)
� �
]
� �
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
$str	&& �
,
&&� �
true
&&� �
)
&&� �
]
&&� �
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
$str	22 �
,
22� �
true
22� �
)
22� �
]
22� �
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
$str	>> �
,
>>� �
true
>>� �
)
>>� �
]
>>� �
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
$str	JJ �
,
JJ� �
true
JJ� �
)
JJ� �
]
JJ� �
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
}zz �2
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
ActivationControlPlayable	66s �
.
66� �
PostPlaybackState
66� �
postPlaybackState
66� �
)
66� �
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
�� 
(
�� 
postPlayback
��  
)
��  !
{
�� 
case
�� 
PostPlaybackState
�� &
.
��& '
Active
��' -
:
��- .

gameObject
�� 
.
�� 
	SetActive
�� (
(
��( )
true
��) -
)
��- .
;
��. /
break
�� 
;
�� 
case
�� 
PostPlaybackState
�� &
.
��& '
Inactive
��' /
:
��/ 0

gameObject
�� 
.
�� 
	SetActive
�� (
(
��( )
false
��) .
)
��. /
;
��/ 0
break
�� 
;
�� 
case
�� 
PostPlaybackState
�� &
.
��& '
Revert
��' -
:
��- .

gameObject
�� 
.
�� 
	SetActive
�� (
(
��( )
m_InitialState
��) 7
==
��8 :
InitialState
��; G
.
��G H
Active
��H N
)
��N O
;
��O P
break
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �
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
}II �
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
}UU �B
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