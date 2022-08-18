¡
{C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str Q
)Q R
]R S
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str N
)N O
]O P
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str V
)V W
]W X
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str \
)\ ]
]] ^µv
äC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\DisplayElementConfiguration.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{		 
[ 
Serializable 
] 
public 

sealed 
class '
DisplayElementConfiguration 3
:4 5*
ISerializationCallbackReceiver6 T
{ 
[ 	
field	 
: 
HideInInspector 
]  
[ 	
field	 
: 
SerializeField 
] 
internal 
bool 
FieldsInitialized '
{( )
get* -
;- .
private/ 6
set7 :
;: ;
}< =
=> ?
true@ D
;D E
[!! 	
Tooltip!!	 
(!! 
$str"" U
+""V W
$str## S
+##T U
$str$$ S
+$$T U
$str%% A
)&& 	
]&&	 

['' 	
field''	 
:'' 
SerializeField'' 
]'' 
public(( 
DisplayElementType(( !
Type((" &
{((' (
get(() ,
;((, -
set((. 1
;((1 2
}((3 4
[-- 	
field--	 
:-- 
SerializeField-- 
]-- 
public.. 
string.. 
Label.. 
{.. 
get.. !
;..! "
set..# &
;..& '
}..( )
=..* +
$str.., .
;... /
[33 	
field33	 
:33 
SerializeField33 
]33 
public44 
List44 
<44 
MetricId44 
>44 
Stats44 #
{44$ %
get44& )
;44) *
set44+ .
;44. /
}440 1
=442 3
new444 7
(447 8
)448 9
;449 :
[99 	
field99	 
:99 
SerializeField99 
]99 
public::  
CounterConfiguration:: # 
CounterConfiguration::$ 8
{::9 :
get::; >
;::> ?
set::@ C
;::C D
}::E F
=::G H
new::I L
(::L M
)::M N
;::N O
[?? 	
field??	 
:?? 
SerializeField?? 
]?? 
public@@ 
GraphConfiguration@@ !
GraphConfiguration@@" 4
{@@5 6
get@@7 :
;@@: ;
set@@< ?
;@@? @
}@@A B
=@@C D
new@@E H
(@@H I
)@@I J
;@@J K
internalCC 
intCC 
SampleCountCC  
{DD 	
getEE 
{FF 
switchGG 
(GG 
TypeGG 
)GG 
{HH 
caseII 
DisplayElementTypeII +
.II+ ,
CounterII, 3
:II3 4
{JJ 
returnKK  
CounterConfigurationKK 3
.KK3 4
SampleCountKK4 ?
;KK? @
}LL 
caseMM 
DisplayElementTypeMM +
.MM+ ,
	LineGraphMM, 5
:MM5 6
caseNN 
DisplayElementTypeNN +
.NN+ ,
StackedAreaGraphNN, <
:NN< =
{OO 
returnPP 
GraphConfigurationPP 1
.PP1 2
SampleCountPP2 =
;PP= >
}QQ 
defaultRR 
:RR 
throwSS 
newSS !!
NotSupportedExceptionSS" 7
(SS7 8
$"TT 
$strTT (
{TT( )
nameofTT) /
(TT/ 0
DisplayElementTypeTT0 B
)TTB C
}TTC D
$strTTD E
{TTE F
TypeTTF J
}TTJ K
"TTK L
)TTL M
;TTM N
}UU 
}VV 
}WW 	
internal[[ 
double[[ 
?[[ 
HalfLife[[ !
{\\ 	
get]] 
{^^ 
switch__ 
(__ 
Type__ 
)__ 
{`` 
caseaa 
DisplayElementTypeaa +
.aa+ ,
Counteraa, 3
:aa3 4
{bb 
varcc 
smoothingMethodcc +
=cc, - 
CounterConfigurationcc. B
.ccB C
SmoothingMethodccC R
;ccR S
switchdd 
(dd  
smoothingMethoddd  /
)dd/ 0
{ee 
caseff  
SmoothingMethodff! 0
.ff0 1$
ExponentialMovingAverageff1 I
:ffI J
returngg  & 
CounterConfigurationgg' ;
.gg; <*
ExponentialMovingAverageParamsgg< Z
.ggZ [
HalfLifegg[ c
;ggc d
casehh  
SmoothingMethodhh! 0
.hh0 1
SimpleMovingAveragehh1 D
:hhD E
returnii  &
nullii' +
;ii+ ,
defaultjj #
:jj# $
throwkk  %
newkk& )!
NotSupportedExceptionkk* ?
(kk? @
$"ll$ &
$strll& 0
{ll0 1
nameofll1 7
(ll7 8
SmoothingMethodll8 G
)llG H
}llH I
$strllI J
{llJ K
smoothingMethodllK Z
}llZ [
"ll[ \
)ll\ ]
;ll] ^
}mm 
}nn 
caseoo 
DisplayElementTypeoo +
.oo+ ,
	LineGraphoo, 5
:oo5 6
casepp 
DisplayElementTypepp +
.pp+ ,
StackedAreaGraphpp, <
:pp< =
returnqq 
nullqq #
;qq# $
defaultrr 
:rr 
throwss 
newss !!
NotSupportedExceptionss" 7
(ss7 8
$"tt 
$strtt (
{tt( )
nameoftt) /
(tt/ 0
DisplayElementTypett0 B
)ttB C
}ttC D
$strttD E
{ttE F
TypettF J
}ttJ K
"ttK L
)ttL M
;ttM N
}uu 
}vv 
}ww 	
internal{{ 
double{{ 
?{{ 
DecayConstant{{ &
=>{{' )
HalfLife{{* 2
.{{2 3
HasValue{{3 ;
?|| .
"ContinuousExponentialMovingAverage|| 0
.||0 1'
GetDecayConstantForHalfLife||1 L
(||L M
HalfLife||M U
.||U V
Value||V [
)||[ \
:}} 
null}} 
;}} 
[
ÅÅ 	
Serializable
ÅÅ	 
]
ÅÅ 
struct
ÇÇ 
SerializedStat
ÇÇ 
{
ÉÉ 	
[
ÑÑ 
field
ÑÑ 
:
ÑÑ 
HideInInspector
ÑÑ #
]
ÑÑ# $
[
ÖÖ 
field
ÖÖ 
:
ÖÖ 
SerializeField
ÖÖ "
]
ÖÖ" #
public
ÜÜ 
string
ÜÜ 
TypeName
ÜÜ "
{
ÜÜ# $
get
ÜÜ% (
;
ÜÜ( )
set
ÜÜ* -
;
ÜÜ- .
}
ÜÜ/ 0
[
àà 
field
àà 
:
àà 
HideInInspector
àà #
]
àà# $
[
ââ 
field
ââ 
:
ââ 
SerializeField
ââ "
]
ââ" #
public
ää 
string
ää 
	ValueName
ää #
{
ää$ %
get
ää& )
;
ää) *
set
ää+ .
;
ää. /
}
ää0 1
}
ãã 	
[
çç 	
field
çç	 
:
çç 
HideInInspector
çç 
]
çç  
[
éé 	
field
éé	 
:
éé 
SerializeField
éé 
]
éé 
List
èè 
<
èè 
SerializedStat
èè 
>
èè 
SerializedStats
èè ,
{
èè- .
get
èè/ 2
;
èè2 3
set
èè4 7
;
èè7 8
}
èè9 :
=
èè; <
new
èè= @
(
èè@ A
)
èèA B
;
èèB C
bool
ëë %
m_SerializedStatsLoaded
ëë $
=
ëë% &
false
ëë' ,
;
ëë, -
public
öö 
void
öö 
OnBeforeSerialize
öö %
(
öö% &
)
öö& '
{
õõ 	
var
úú 
	statCount
úú 
=
úú 
Stats
úú !
.
úú! "
Count
úú" '
;
úú' (
SerializedStats
ùù 
.
ùù 
Resize
ùù "
(
ùù" #
	statCount
ùù# ,
)
ùù, -
;
ùù- .
for
ûû 
(
ûû 
var
ûû 
i
ûû 
=
ûû 
$num
ûû 
;
ûû 
i
ûû 
<
ûû 
	statCount
ûû  )
;
ûû) *
++
ûû+ -
i
ûû- .
)
ûû. /
{
üü 
var
†† 
stat
†† 
=
†† 
Stats
††  
[
††  !
i
††! "
]
††" #
;
††# $
SerializedStats
°° 
[
°°  
i
°°  !
]
°°! "
=
°°# $
new
°°% (
SerializedStat
°°) 7
{
¢¢ 
TypeName
££ 
=
££ 
stat
££ #
.
££# $
EnumType
££$ ,
.
££, -#
AssemblyQualifiedName
££- B
,
££B C
	ValueName
§§ 
=
§§ 
stat
§§  $
.
§§$ %
Name
§§% )
,
§§) *
}
•• 
;
•• 
}
¶¶ 
}
ßß 	
public
∞∞ 
void
∞∞  
OnAfterDeserialize
∞∞ &
(
∞∞& '
)
∞∞' (
{
±± 	
if
≤≤ 
(
≤≤ %
m_SerializedStatsLoaded
≤≤ '
)
≤≤' (
{
≥≥ 
return
ƒƒ 
;
ƒƒ 
}
≈≈ %
m_SerializedStatsLoaded
∆∆ #
=
∆∆$ %
true
∆∆& *
;
∆∆* +
var
»» 
	statCount
»» 
=
»» 
SerializedStats
»» +
.
»»+ ,
Count
»», 1
;
»»1 2
Stats
…… 
.
…… 
Resize
…… 
(
…… 
	statCount
…… "
)
……" #
;
……# $
for
ÀÀ 
(
ÀÀ 
int
ÀÀ 
i
ÀÀ 
=
ÀÀ 
$num
ÀÀ 
;
ÀÀ 
i
ÀÀ 
<
ÀÀ 
	statCount
ÀÀ  )
;
ÀÀ) *
++
ÀÀ+ -
i
ÀÀ- .
)
ÀÀ. /
{
ÃÃ 
var
ÕÕ 
serializedStat
ÕÕ "
=
ÕÕ# $
SerializedStats
ÕÕ% 4
[
ÕÕ4 5
i
ÕÕ5 6
]
ÕÕ6 7
;
ÕÕ7 8
var
ŒŒ 
serializedType
ŒŒ "
=
ŒŒ# $
System
ŒŒ% +
.
ŒŒ+ ,
Type
ŒŒ, 0
.
ŒŒ0 1
GetType
ŒŒ1 8
(
ŒŒ8 9
serializedStat
ŒŒ9 G
.
ŒŒG H
TypeName
ŒŒH P
)
ŒŒP Q
;
ŒŒQ R
if
œœ 
(
œœ 
serializedType
œœ "
==
œœ# %
null
œœ& *
)
œœ* +
{
–– 
continue
—— 
;
—— 
}
““ 
var
”” 
	typeIndex
”” 
=
”” !
MetricIdTypeLibrary
””  3
.
””3 4
GetTypeIndex
””4 @
(
””@ A
serializedType
””A O
)
””O P
;
””P Q
var
‘‘ 
	enumNames
‘‘ 
=
‘‘ !
MetricIdTypeLibrary
‘‘  3
.
‘‘3 4
GetEnumNames
‘‘4 @
(
‘‘@ A
	typeIndex
‘‘A J
)
‘‘J K
;
‘‘K L
var
’’ 
serializedName
’’ "
=
’’# $
serializedStat
’’% 3
.
’’3 4
	ValueName
’’4 =
;
’’= >
var
÷÷ 

valueIndex
÷÷ 
=
÷÷  
	enumNames
÷÷! *
.
÷÷* +
IndexOf
÷÷+ 2
(
÷÷2 3
serializedName
÷÷3 A
)
÷÷A B
;
÷÷B C
if
◊◊ 
(
◊◊ 

valueIndex
◊◊ 
==
◊◊ !
-
◊◊" #
$num
◊◊# $
)
◊◊$ %
{
ÿÿ 
continue
ŸŸ 
;
ŸŸ 
}
⁄⁄ 
var
€€ 

enumValues
€€ 
=
€€  !
MetricIdTypeLibrary
€€! 4
.
€€4 5
GetEnumValues
€€5 B
(
€€B C
	typeIndex
€€C L
)
€€L M
;
€€M N
var
‹‹ 
	enumValue
‹‹ 
=
‹‹ 

enumValues
‹‹  *
[
‹‹* +

valueIndex
‹‹+ 5
]
‹‹5 6
;
‹‹6 7
Stats
›› 
[
›› 
i
›› 
]
›› 
=
›› 
new
›› 
MetricId
›› '
(
››' (
	typeIndex
››( 1
:
››1 2
	typeIndex
››3 <
,
››< =
	enumValue
››> G
:
››G H
	enumValue
››I R
)
››R S
;
››S T
}
ﬁﬁ 
}
ﬂﬂ 	
internal
‚‚ 
int
‚‚ 
ComputeHashCode
‚‚ $
(
‚‚$ %
)
‚‚% &
{
„„ 	
int
‰‰ 
hash
‰‰ 
=
‰‰ 
HashCode
‰‰ 
.
‰‰  
Combine
‰‰  '
(
‰‰' (
Type
‰‰( ,
,
‰‰, -
Label
‰‰. 3
)
‰‰3 4
;
‰‰4 5
foreach
ÊÊ 
(
ÊÊ 
var
ÊÊ 
stat
ÊÊ 
in
ÊÊ  
Stats
ÊÊ! &
)
ÊÊ& '
{
ÁÁ 
hash
ËË 
=
ËË 
HashCode
ËË 
.
ËË  
Combine
ËË  '
(
ËË' (
hash
ËË( ,
,
ËË, -
stat
ËË. 2
)
ËË2 3
;
ËË3 4
}
ÈÈ 
switch
ÎÎ 
(
ÎÎ 
Type
ÎÎ 
)
ÎÎ 
{
ÏÏ 
case
ÌÌ  
DisplayElementType
ÌÌ '
.
ÌÌ' (
Counter
ÌÌ( /
:
ÌÌ/ 0
hash
ÓÓ 
=
ÓÓ 
HashCode
ÓÓ #
.
ÓÓ# $
Combine
ÓÓ$ +
(
ÓÓ+ ,
hash
ÓÓ, 0
,
ÓÓ0 1"
CounterConfiguration
ÓÓ2 F
.
ÓÓF G
ComputeHashCode
ÓÓG V
(
ÓÓV W
)
ÓÓW X
)
ÓÓX Y
;
ÓÓY Z
break
ÔÔ 
;
ÔÔ 
case
  
DisplayElementType
 '
.
' (
	LineGraph
( 1
:
1 2
case
ÒÒ  
DisplayElementType
ÒÒ '
.
ÒÒ' (
StackedAreaGraph
ÒÒ( 8
:
ÒÒ8 9
hash
ÚÚ 
=
ÚÚ 
HashCode
ÚÚ #
.
ÚÚ# $
Combine
ÚÚ$ +
(
ÚÚ+ ,
hash
ÚÚ, 0
,
ÚÚ0 1 
GraphConfiguration
ÚÚ2 D
.
ÚÚD E
ComputeHashCode
ÚÚE T
(
ÚÚT U
)
ÚÚU V
)
ÚÚV W
;
ÚÚW X
break
ÛÛ 
;
ÛÛ 
default
ÙÙ 
:
ÙÙ 
throw
ıı 
new
ıı )
ArgumentOutOfRangeException
ıı 9
(
ıı9 :
$"
ıı: <
$str
ıı< C
{
ııC D
nameof
ııD J
(
ııJ K 
DisplayElementType
ııK ]
)
ıı] ^
}
ıı^ _
$str
ıı_ `
{
ıı` a
Type
ııa e
}
ııe f
"
ııf g
)
ııg h
;
ııh i
}
ˆˆ 
return
˜˜ 
hash
˜˜ 
;
˜˜ 
}
¯¯ 	
}
˙˙ 
}˚˚ ï0
ãC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\NetStatsMonitorConfiguration.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
[ 
CreateAssetMenu 
( 
fileName 
= 
$str 1
,1 2
menuName 
= 
$str =
,= >
order 
= 
$num 
) 
] 
public 

class (
NetStatsMonitorConfiguration -
:. /
ScriptableObject0 @
{ 
[ 	
field	 
: 
SerializeField 
] 
public 
List 
< '
DisplayElementConfiguration /
>/ 0
DisplayElements1 @
{A B
getC F
;F G
setH K
;K L
}M N
=O P
newQ T
(T U
)U V
;V W
[ 	
field	 
: 
SerializeField 
] 
internal 
int 
? 
ConfigurationHash '
{( )
get* -
;- .
private/ 6
set7 :
;: ;
}< =
=> ?
null@ D
;D E
public!! 
void!! #
OnConfigurationModified!! +
(!!+ ,
)!!, -
{"" 	&
RecomputeConfigurationHash## &
(##& '
)##' (
;##( )
}$$ 	
internal&& 
void&& 

OnValidate&&  
(&&  !
)&&! "
{'' 	
for(( 
((( 
var(( 
i(( 
=(( 
$num(( 
;(( 
i(( 
<(( 
DisplayElements((  /
.((/ 0
Count((0 5
;((5 6
++((7 9
i((9 :
)((: ;
{)) 
if** 
(** 
!** 
DisplayElements** $
[**$ %
i**% &
]**& '
.**' (
FieldsInitialized**( 9
)**9 :
{++ 
DisplayElements,, #
[,,# $
i,,$ %
],,% &
=,,' (
new,,) ,'
DisplayElementConfiguration,,- H
(,,H I
),,I J
;,,J K
}-- 
else.. 
{// 
var44 
element44 
=44  !
DisplayElements44" 1
[441 2
i442 3
]443 4
;444 5
if66 
(66 
element66 
.66  
GraphConfiguration66  2
?662 3
.663 4
VariableColors664 B
==66C E
null66F J
)66J K
{77 
continue88  
;88  !
}99 
var;; 
variableColors;; &
=;;' (
element;;) 0
.;;0 1
GraphConfiguration;;1 C
.;;C D
VariableColors;;D R
;;;R S
var<< '
areAllColorsZeroInitialized<< 3
=<<4 5
true<<6 :
;<<: ;
for== 
(== 
int== 
j== 
===  
$num==! "
;==" #
j==$ %
<==& '
variableColors==( 6
.==6 7
Count==7 <
;==< =
++==> @
j==@ A
)==A B
{>> 
var?? +
graphConfigurationVariableColor?? ;
=??< =
variableColors??> L
[??L M
j??M N
]??N O
;??O P
if@@ 
(@@ +
graphConfigurationVariableColor@@ ;
.@@; <
a@@< =
!=@@> @
$num@@A C
||@@D F+
graphConfigurationVariableColorAA ;
.AA; <
rAA< =
!=AA> @
$numAAA C
||AAD F+
graphConfigurationVariableColorBB ;
.BB; <
gBB< =
!=BB> @
$numBBA C
||BBD F+
graphConfigurationVariableColorCC ;
.CC; <
bCC< =
!=CC> @
$numCCA C
)CCC D
{DD '
areAllColorsZeroInitializedEE 7
=EE8 9
falseEE: ?
;EE? @
breakFF !
;FF! "
}GG 
}HH 
ifJJ 
(JJ '
areAllColorsZeroInitializedJJ 3
)JJ3 4
{KK 
forLL 
(LL 
intLL  
jLL! "
=LL# $
$numLL% &
;LL& '
jLL( )
<LL* +
variableColorsLL, :
.LL: ;
CountLL; @
;LL@ A
++LLB D
jLLD E
)LLE F
{MM 
varNN +
graphConfigurationVariableColorNN  ?
=NN@ A
variableColorsNNB P
[NNP Q
jNNQ R
]NNR S
;NNS T+
graphConfigurationVariableColorOO ;
.OO; <
aOO< =
=OO> ?
$numOO@ B
;OOB C
variableColorsPP *
[PP* +
jPP+ ,
]PP, -
=PP. /+
graphConfigurationVariableColorPP0 O
;PPO P
}QQ 
}RR 
}SS 
}TT &
RecomputeConfigurationHashUU &
(UU& '
)UU' (
;UU( )
}VV 	
internalZZ 
voidZZ &
RecomputeConfigurationHashZZ 0
(ZZ0 1
)ZZ1 2
{[[ 	
int\\ 
hashCode\\ 
=\\ 
$num\\ 
;\\ 
foreach]] 
(]] 
var]] '
displayElementConfiguration]] 4
in]]5 7
DisplayElements]]8 G
)]]G H
{^^ 
hashCode__ 
=__ 
HashCode__ #
.__# $
Combine__$ +
(__+ ,
hashCode__, 4
,__4 5'
displayElementConfiguration__6 Q
.__Q R
ComputeHashCode__R a
(__a b
)__b c
)__c d
;__d e
}`` 
ConfigurationHashaa 
=aa 
hashCodeaa  (
;aa( )
}bb 	
}dd 
}ee ∑
ñC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\Counters\ExponentialMovingAverageParams.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
[		 
Serializable		 
]		 
public

 

sealed

 
class

 *
ExponentialMovingAverageParams

 6
{ 
[ 	
field	 
: 
SerializeField 
] 
[ 	
field	 
: 
Min 
( 
$num 
) 
] 
public 
double 
HalfLife 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 0
;0 1
} 
} ˝(
åC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\Counters\CounterConfiguration.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
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

sealed 
class  
CounterConfiguration ,
{ 
[ 	
field	 
: 
SerializeField 
] 
public 
SmoothingMethod 
SmoothingMethod .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
SmoothingMethod? N
.N O$
ExponentialMovingAverageO g
;g h
[ 	
field	 
: 
SerializeField 
] 
public 
AggregationMethod  
AggregationMethod! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
AggregationMethodC T
.T U
SumU X
;X Y
[ 	
field	 
: 
SerializeField 
] 
[   	
field  	 
:   
Range   
(   
$num   
,   
$num   
)   
]   
[!! 	
field!!	 
:!! 
Tooltip!! 
(!! 
$str!! W
)!!W X
]!!X Y
public"" 
int"" 
SignificantDigits"" $
{""% &
get""' *
;""* +
set"", /
;""/ 0
}""1 2
=""3 4
$num""5 6
;""6 7
[** 	
field**	 
:** 
SerializeField** 
]** 
[++ 	
field++	 
:++ 
Tooltip++ 
(++ 
$str++ b
+++c d
$str,, d
+,,e f
$str-- 
+-- 
UssClassNames-- ,
.--, - 
k_CounterOutOfBounds--- A
+--B C
$str--D M
+--N O
$str.. 
+.. 
UssClassNames.. ,
..., -#
k_CounterBelowThreshold..- D
+..E F
$str..G K
)..K L
]..L M
public// 
float// 
HighlightLowerBound// (
{//) *
get//+ .
;//. /
set//0 3
;//3 4
}//5 6
=//7 8
float//9 >
.//> ?
MinValue//? G
;//G H
[77 	
field77	 
:77 
SerializeField77 
]77 
[88 	
field88	 
:88 
Tooltip88 
(88 
$str88 b
+88c d
$str99 d
+99e f
$str:: 
+:: 
UssClassNames:: ,
.::, - 
k_CounterOutOfBounds::- A
+::B C
$str::D M
+::N O
$str;; 
+;; 
UssClassNames;; ,
.;;, -#
k_CounterAboveThreshold;;- D
+;;E F
$str;;G K
);;K L
];;L M
public<< 
float<< 
HighlightUpperBound<< (
{<<) *
get<<+ .
;<<. /
set<<0 3
;<<3 4
}<<5 6
=<<7 8
float<<9 >
.<<> ?
MaxValue<<? G
;<<G H
[AA 	
fieldAA	 
:AA 
SerializeFieldAA 
]AA 
publicBB *
ExponentialMovingAverageParamsBB -*
ExponentialMovingAverageParamsBB. L
{BBM N
getBBO R
;BBR S
setBBT W
;BBW X
}BBY Z
=BB[ \
newBB] `
(BB` a
)BBa b
;BBb c
[GG 	
fieldGG	 
:GG 
SerializeFieldGG 
]GG 
publicHH %
SimpleMovingAverageParamsHH (%
SimpleMovingAverageParamsHH) B
{HHC D
getHHE H
;HHH I
setHHJ M
;HHM N
}HHO P
=HHQ R
newHHS V
(HHV W
)HHW X
;HHX Y
publicOO 
intOO 
SampleCountOO 
=>OO !
SmoothingMethodOO" 1
==OO2 4
SmoothingMethodOO5 D
.OOD E
SimpleMovingAverageOOE X
?PP %
SimpleMovingAverageParamsPP '
.PP' (
SampleCountPP( 3
:QQ 
$numQQ 
;QQ 
internalTT 
intTT 
ComputeHashCodeTT $
(TT$ %
)TT% &
{UU 	
returnVV 
HashCodeVV 
.VV 
CombineVV #
(VV# $
(WW 
intWW 
)WW 
SmoothingMethodWW $
,WW$ %
(XX 
intXX 
)XX 
AggregationMethodXX &
,XX& '
SignificantDigitsYY !
,YY! "
HighlightLowerBoundZZ #
,ZZ# $
HighlightUpperBound[[ #
,[[# $*
ExponentialMovingAverageParams\\ .
,\\. /%
SimpleMovingAverageParams]] )
)]]) *
;]]* +
}^^ 	
}`` 
}aa ¯
àC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\Graphs\GraphConfiguration.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
[ 
Serializable 
] 
public 

sealed 
class 
GraphConfiguration *
{ 
[ 	
field	 
: 
SerializeField 
] 
public 
int 
SampleCount 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 2
;2 3
[ 	
field	 
: 
SerializeField 
] 
public 
List 
< 
Color 
> 
VariableColors )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
=8 9
new: =
(= >
)> ?
;? @
[   	
field  	 
:   
SerializeField   
]   
public!! 
GraphXAxisType!! 
	XAxisType!! '
{!!( )
get!!* -
;!!- .
set!!/ 2
;!!2 3
}!!4 5
=!!6 7
GraphXAxisType!!8 F
.!!F G
Samples!!G N
;!!N O
[&& 	
field&&	 
:&& 
SerializeField&& 
]&& 
public'' "
LineGraphConfiguration'' %"
LineGraphConfiguration''& <
{''= >
get''? B
;''B C
set''D G
;''G H
}''I J
=''K L
new''M P
(''P Q
)''Q R
;''R S
internal** 
int** 
ComputeHashCode** $
(**$ %
)**% &
{++ 	
var,, 
hash,, 
=,, 
HashCode,, 
.,,  
Combine,,  '
(,,' (
SampleCount,,( 3
,,,3 4
(,,5 6
int,,6 9
),,9 :
	XAxisType,,: C
,,,C D"
LineGraphConfiguration,,E [
.,,[ \
ComputeHashCode,,\ k
(,,k l
),,l m
),,m n
;,,n o
if-- 
(-- 
VariableColors-- 
!=-- !
null--" &
)--& '
{.. 
foreach// 
(// 
var// 
color// "
in//# %
VariableColors//& 4
)//4 5
{00 
hash11 
=11 
HashCode11 #
.11# $
Combine11$ +
(11+ ,
hash11, 0
,110 1
color112 7
)117 8
;118 9
}22 
}33 
return44 
hash44 
;44 
}55 	
}77 
}88 ‰
ÑC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\Graphs\GraphXAxisType.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
public 

enum 
GraphXAxisType 
{ 
Samples 
, 
Time 
, 
} 
} ¨
åC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\Graphs\LineGraphConfiguration.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
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

sealed 
class "
LineGraphConfiguration .
{ 
[ 	
field	 
: 
SerializeField 
] 
public 
float 
LineThickness "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
$num3 4
;4 5
internal 
int 
ComputeHashCode $
($ %
)% &
{ 	
return 
LineThickness  
.  !
GetHashCode! ,
(, -
)- .
;. /
} 	
} 
} Ã
ÑC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\PositionConfiguration.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
[		 
Serializable		 
]		 
public

 

class

 !
PositionConfiguration

 &
{ 
[ 	
field	 
: 
Tooltip 
( 
$str [
+\ ]
$str Z
+[ \
$str 
) 
] 
[ 	
field	 
: 
SerializeField 
] 
public 
bool 
OverridePosition $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
true5 9
;9 :
[ 	
field	 
: 
Tooltip 
( 
$str a
+b c
$str E
)E F
]F G
[ 	
field	 
: 
Range 
( 
$num 
, 
$num 
) 
] 
[   	
field  	 
:   
SerializeField   
]   
public!! 
float!! 
PositionLeftToRight!! (
{!!) *
get!!+ .
;!!. /
set!!0 3
;!!3 4
}!!5 6
=!!7 8
$num!!9 :
;!!: ;
['' 	
field''	 
:'' 
Tooltip'' 
('' 
$str(( `
+((a b
$str)) S
)))S T
]))T U
[** 	
field**	 
:** 
Range** 
(** 
$num** 
,** 
$num** 
)** 
]** 
[++ 	
field++	 
:++ 
SerializeField++ 
]++ 
public,, 
float,, 
PositionTopToBottom,, (
{,,) *
get,,+ .
;,,. /
set,,0 3
;,,3 4
},,5 6
=,,7 8
$num,,9 :
;,,: ;
}-- 
}.. ‘
|C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\UssClassNames.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
internal 
static 
class 
UssClassNames '
{ 
internal 
const 
string 
	k_Monitor '
=< =
$str> L
;L M
internal 
const 
string 
k_MonitorTitle ,
=< =
$str> J
;J K
internal 
const 
string 
k_DisplayElements /
=< =
$str> U
;U V
internal		 
const		 
string		 
k_DisplayElement		 .
=		< =
$str		> T
;		T U
internal 
const 
string !
k_DisplayElementLabel 3
=< =
$str> Z
;Z [
internal 
const 
string &
k_DisplayElementLabelEmpty 8
=< =
$str> `
;` a
internal 
const 
string 
	k_Counter '
=< =
$str> L
;L M
internal 
const 
string 
k_CounterValue ,
=< =
$str> R
;R S
internal 
const 
string #
k_CounterBelowThreshold 5
=< =
$str> \
;\ ]
internal 
const 
string #
k_CounterAboveThreshold 5
=< =
$str> \
;\ ]
internal 
const 
string  
k_CounterOutOfBounds 2
=< =
$str> Z
;Z [
internal 
const 
string 
k_Graph %
=< =
$str> J
;J K
internal 
const 
string 
k_GraphContents -
=< =
$str> S
;S T
internal 
const 
string 
k_GraphAxis )
=< =
$str> O
;O P
internal 
const 
string 
k_GraphXAxis *
=< =
$str> Q
;Q R
internal 
const 
string 
k_GraphYAxis *
=< =
$str> Q
;Q R
internal 
const 
string 
k_GraphAndYAxis -
=< =
$str> U
;U V
internal 
const 
string $
k_GraphAxisMinValueLabel 6
=< =
$str> Y
;Y Z
internal 
const 
string $
k_GraphAxisMaxValueLabel 6
=< =
$str> Y
;Y Z
internal 
const 
string 
k_GraphLegend +
=< =
$str> Q
;Q R
internal 
const 
string 
k_GraphLegendKey .
=< =
$str> T
;T U
internal   
const   
string   "
k_GraphLegendKeySwatch   4
=  < =
$str  > [
;  [ \
internal!! 
const!! 
string!! !
k_GraphLegendKeyLabel!! 3
=!!< =
$str!!> Z
;!!Z [
internal## 
const## 
string## 
k_NoDataReceived## .
=##< =
$str##> U
;##U V
internal$$ 
const$$ 
string$$ !
k_NoDataReceivedLabel$$ 3
=$$< =
$str$$> [
;$$[ \
}%% 
}&& ≠
ëC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\Counters\SimpleMovingAverageParams.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
[		 
Serializable		 
]		 
public

 

sealed

 
class

 %
SimpleMovingAverageParams

 1
{ 
[ 	
field	 
: 
SerializeField 
] 
[ 	
field	 
: 
Min 
( 
$num 
) 
] 
public 
int 
SampleCount 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 1
;1 2
} 
} Î
âC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\Counters\AggregationMethod.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
public 

enum 
AggregationMethod !
{ 
Sum 
, 
Average 
, 
} 
} ó
ÅC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\DisplayElementType.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
public 

enum 
DisplayElementType "
{ 
Counter 
, 
	LineGraph 
, 
StackedAreaGraph 
, 
} 
} à
áC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Configuration\Counters\SmoothingMethod.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
{ 
public 

enum 
SmoothingMethod 
{		 $
ExponentialMovingAverage  
,  !
SimpleMovingAverage 
, 
} 
} 