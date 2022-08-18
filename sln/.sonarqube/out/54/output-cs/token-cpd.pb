¢7
íC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\StackedAreaGraphRenderer.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class $
StackedAreaGraphRenderer +
:, -
IGraphRenderer. <
{ 
float 
[ 
] 
m_SampleSums 
; 
public 
void 
UpdateConfiguration '
(' ('
DisplayElementConfiguration( C
configD J
)J K
{ 	
var   
sampleCount   
=   
config   $
.  $ %
GraphConfiguration  % 7
.  7 8
SampleCount  8 C
;  C D
if!! 
(!! 
(!! 
m_SampleSums!! 
?!! 
.!! 
Length!! %
??!!& (
$num!!) *
)!!* +
!=!!, .
sampleCount!!/ :
)!!: ;
{"" 
m_SampleSums## 
=## 
new## "
float### (
[##( )
sampleCount##) 4
]##4 5
;##5 6
}$$ 
}%% 	
public'' 
	MinAndMax'' 
UpdateVertices'' '
(''' (
MultiStatHistory(( 
history(( $
,(($ %
List)) 
<)) 
MetricId)) 
>)) 
stats))  
,))  !
float** 
yAxisMin** 
,** 
float++ 
yAxisMax++ 
,++ 
GraphParameters,, 
graphParams,, '
,,,' (
float-- 
renderBoundsXMin-- "
,--" #
float.. 
renderBoundsXMax.. "
,.." #
float// 
renderBoundsYMin// "
,//" #
float00 
renderBoundsYMax00 "
,00" #
Vertex11 
[11 
]11 
vertices11 
)11 
{22 	
var33 
xScale33 
=33 
(33 
renderBoundsXMax33 *
-33+ ,
renderBoundsXMin33- =
)33= >
/33? @
(33A B
graphParams33B M
.33M N
SamplesPerStat33N \
-33] ^
$num33_ `
)33` a
;33a b
var44 
yScale44 
=44 
(44 
renderBoundsYMax44 *
-44+ ,
renderBoundsYMin44- =
)44= >
/44? @
yAxisMax44A I
;44I J
var66 
verticesPerStat66 
=66  !
GraphBuffers66" .
.66. /
k_VerticesPerSample66/ B
*66C D
graphParams66E P
.66P Q
SamplesPerStat66Q _
;66_ `
Array99 
.99 
Clear99 
(99 
m_SampleSums99 $
,99$ %
$num99& '
,99' (
m_SampleSums99) 5
.995 6
Length996 <
)99< =
;99= >
var;; 
	yValueMax;; 
=;; 
$num;; 
;;; 
for== 
(== 
var== 
	statIndex== 
===  
$num==! "
;==" #
	statIndex==$ -
<==. /
graphParams==0 ;
.==; <
	StatCount==< E
;==E F
++==G I
	statIndex==I R
)==R S
{>> 
var?? 
statId?? 
=?? 
stats?? "
[??" #
	statIndex??# ,
]??, -
;??- .
var@@ 
statData@@ 
=@@ 
history@@ &
.@@& '
Data@@' +
[@@+ ,
statId@@, 2
]@@2 3
.@@3 4
RecentValues@@4 @
;@@@ A
varAA 
statVerticesBeginAA %
=AA& '
	statIndexAA( 1
*AA2 3
verticesPerStatAA4 C
;AAC D
forCC 
(CC 
varCC 
sampleIndexCC $
=CC% &
$numCC' (
;CC( )
sampleIndexCC* 5
<CC6 7
graphParamsCC8 C
.CCC D
SamplesPerStatCCD R
;CCR S
++CCT V
sampleIndexCCV a
)CCa b
{DD 
varEE 
sampleVerticesBeginEE +
=EE, -
statVerticesBeginEE. ?
+EE@ A
GraphBuffersEEB N
.EEN O
k_VerticesPerSampleEEO b
*EEc d
sampleIndexEEe p
;EEp q
varGG 
sampleValueGG #
=GG$ %
statDataGG& .
.GG. /
GetValueOrDefaultGG/ @
(GG@ A
sampleIndexGGA L
)GGL M
;GGM N
varII 
prevSumII 
=II  !
m_SampleSumsII" .
[II. /
sampleIndexII/ :
]II: ;
;II; <
varJJ 
nextSumUnclampedJJ (
=JJ) *
prevSumJJ+ 2
+JJ3 4
sampleValueJJ5 @
;JJ@ A
	yValueMaxLL 
=LL 
MathFLL  %
.LL% &
MaxLL& )
(LL) *
nextSumUnclampedLL* :
,LL: ;
	yValueMaxLL< E
)LLE F
;LLF G
varOO 
nextSumOO 
=OO  !
MathFOO" '
.OO' (
MinOO( +
(OO+ ,
nextSumUnclampedOO, <
,OO< =
yAxisMaxOO> F
)OOF G
;OOG H
m_SampleSumsQQ  
[QQ  !
sampleIndexQQ! ,
]QQ, -
=QQ. /
nextSumQQ0 7
;QQ7 8
varSS 
xValueSS 
=SS$ %
sampleIndexSS& 1
*SS2 3
xScaleSS4 :
+SS; <
renderBoundsXMinSS= M
;SSM N
varTT 
yValueBelowTT #
=TT$ %
prevSumTT& -
*TT2 3
yScaleTT4 :
+TT; <
renderBoundsYMinTT= M
;TTM N
varUU 
yValueAboveUU #
=UU$ %
nextSumUU& -
*UU2 3
yScaleUU4 :
+UU; <
renderBoundsYMinUU= M
;UUM N
verticesWW 
[WW 
sampleVerticesBeginWW 0
+WW1 2
$numWW3 4
]WW4 5
.WW5 6
positionWW6 >
=WW? @
newWWA D
Vector3WWE L
(WWL M
xValueWWM S
,WWS T
yValueAboveWWU `
)WW` a
;WWa b
verticesXX 
[XX 
sampleVerticesBeginXX 0
+XX1 2
$numXX3 4
]XX4 5
.XX5 6
positionXX6 >
=XX? @
newXXA D
Vector3XXE L
(XXL M
xValueXXM S
,XXS T
yValueBelowXXU `
)XX` a
;XXa b
}YY 
}ZZ 
return[[ 
new[[ 
	MinAndMax[[  
{[[! "
Min[[# &
=[[' (
$num[[) +
,[[+ ,
Max[[- 0
=[[1 2
	yValueMax[[3 <
}[[= >
;[[> ?
}\\ 	
}]] 
}^^ Ñ
çC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Stats\StatHistoryRequirements.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class #
StatHistoryRequirements *
{ 
public 
HashSet 
< 
double 
> 
DecayConstants -
{. /
get0 3
;3 4
}5 6
public 
int 
SampleCount 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$num/ 0
;0 1
public   #
StatHistoryRequirements   &
(  & '
)  ' (
{!! 	
DecayConstants"" 
="" 
new""  
HashSet""! (
<""( )
double"") /
>""/ 0
(""0 1
)""1 2
;""2 3
SampleCount## 
=## 
$num## 
;## 
}$$ 	
public&& #
StatHistoryRequirements&& &
(&&& '
HashSet'' 
<'' 
double'' 
>'' 
decayConstants'' *
,''* +
int(( 
sampleCount(( 
)(( 
{)) 	
DecayConstants** 
=** 
decayConstants** +
;**+ ,
SampleCount++ 
=++ 
sampleCount++ %
;++% &
},, 	
public.. #
StatHistoryRequirements.. &
(..& '
IEnumerable// 
<// 
double// 
>// 
decayConstants//  .
,//. /
int00 
sampleCount00 
)00 
{11 	
DecayConstants22 
=22 
decayConstants22 +
.22+ ,
	ToHashSet22, 5
(225 6
)226 7
;227 8
SampleCount33 
=33 
sampleCount33 %
;33% &
}44 	
}55 
}66 ó
ÉC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\GraphType.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
public 

enum 
	GraphType 
{ 
	LineGraph 
, 
StackedAreaGraph 
, 
} 
} ﬁ
äC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Graphing\GraphScalingUtils.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
static 
class 
GraphScalingUtils +
{ 
static 
readonly 
float 
[ 
] 
k_RoundNumbers  .
=/ 0
{1 2
$num3 4
,4 5
$num6 :
,: ;
$num< =
,= >
$num? @
,@ A
$numB C
,C D
$numE F
,F G
$numH I
,I J
$numK L
,L M
$numN P
}Q R
;R S
public 
static 
MantissaAndExponent )"
NextLargestRoundNumber* @
(@ A
floatA F
valueG L
)L M
{ 	
if 
( 
value 
== 
$num 
) 
{ 
return   
new   
MantissaAndExponent   .
(  . /
)  / 0
;  0 1
}!! 
var$$ 
sign$$ 
=$$ 
MathF$$ 
.$$ 
Sign$$ !
($$! "
value$$" '
)$$' (
;$$( )
value%% 
=%% 
MathF%% 
.%% 
Abs%% 
(%% 
value%% #
)%%# $
;%%$ %
var'' 
exponentOf10'' 
='' 
MathF'' $
.''$ %
Floor''% *
(''* +
MathF''+ 0
.''0 1
Log10''1 6
(''6 7
value''7 <
)''< =
)''= >
;''> ?
var)) 
	powerOf10)) 
=)) 
MathF)) !
.))! "
Pow))" %
())% &
$num))& (
,))( )
exponentOf10))* 6
)))6 7
;))7 8
var++ 
mantissa++ 
=++ 
value++  
/++! "
	powerOf10++# ,
;++, -
var-- 
nextRoundNumber-- 
=--  !
k_RoundNumbers--" 0
[--0 1
$num--1 2
]--2 3
;--3 4
for.. 
(.. 
int.. 
i.. 
=.. 
$num.. 
;.. 
i.. 
<.. 
k_RoundNumbers..  .
.... /
Length../ 5
;..5 6
++..7 9
i..9 :
)..: ;
{// 
var00 
roundNumber00 
=00  !
k_RoundNumbers00" 0
[000 1
i001 2
]002 3
;003 4
if11 
(11 
roundNumber11 
>=11  "
mantissa11# +
)11+ ,
{22 
nextRoundNumber33 #
=33$ %
roundNumber33& 1
;331 2
break44 
;44 
}55 
}66 
if88 
(88 
nextRoundNumber88 
==88  "
$num88# &
)88& '
{99 
nextRoundNumber:: 
=::  !
$num::" $
;::$ %
exponentOf10;; 
+=;; 
$num;;  !
;;;! "
}<< 
return== 
new== 
MantissaAndExponent== *
{>> 
Mantissa?? 
=?? 
sign?? 
*??  !
nextRoundNumber??" 1
,??1 2
Exponent@@ 
=@@ 
(@@ 
int@@ 
)@@  
exponentOf10@@  ,
,@@, -
}AA 
;AA 
}BB 	
}CC 
}DD ì
ÅC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Util\NumericUtils.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
struct 

MantissaAndExponent 
{ 
public 
float 
Mantissa 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
Exponent 
{ 
get !
;! "
set# &
;& '
}( )
public 
float 
GetValue 
( 
float #
exponentBase$ 0
)0 1
=>2 4
Mantissa5 =
*> ?
MathF@ E
.E F
PowF I
(I J
exponentBaseJ V
,V W
ExponentX `
)` a
;a b
} 
internal 
static 
class 
NumericUtils &
{ 
const 
char 
k_SmallSpace 
=  !
$char" *
;* +
const 
char 
k_DivisionSlash "
=# $
$char% (
;( )
public   
static   
MantissaAndExponent   )
ToBase10  * 2
(  2 3
float  3 8
value  9 >
)  > ?
{!! 	
if"" 
("" 
value"" 
=="" 
$num"" 
)"" 
{## 
return&& 
new&& 
MantissaAndExponent&& .
(&&. /
)&&/ 0
;&&0 1
}'' 
var** 
sign** 
=** 
MathF** 
.** 
Sign** !
(**! "
value**" '
)**' (
;**( )
value++ 
=++ 
MathF++ 
.++ 
Abs++ 
(++ 
value++ #
)++# $
;++$ %
var-- 
exponentOf10-- 
=-- 
MathF-- $
.--$ %
Floor--% *
(--* +
MathF--+ 0
.--0 1
Log10--1 6
(--6 7
value--7 <
)--< =
)--= >
;--> ?
var// 
	powerOf10// 
=// 
MathF// !
.//! "
Pow//" %
(//% &
$num//& (
,//( )
exponentOf10//* 6
)//6 7
;//7 8
var11 
mantissa11 
=11 
value11  
/11! "
	powerOf1011# ,
;11, -
return33 
new33 
MantissaAndExponent33 *
{44 
Mantissa55 
=55 
sign55 
*55  !
mantissa55" *
,55* +
Exponent66 
=66 
(66 
int66 
)66  
exponentOf1066  ,
,66, -
}77 
;77 
}88 	
public:: 
static:: 
MantissaAndExponent:: )
ToBase10::* 2
(::2 3
double::3 9
value::: ?
)::? @
{;; 	
if<< 
(<< 
value<< 
==<< 
$num<< 
)<< 
{== 
return@@ 
new@@ 
MantissaAndExponent@@ .
(@@. /
)@@/ 0
;@@0 1
}AA 
varDD 
signDD 
=DD 
MathDD 
.DD 
SignDD  
(DD  !
valueDD! &
)DD& '
;DD' (
valueEE 
=EE 
MathEE 
.EE 
AbsEE 
(EE 
valueEE "
)EE" #
;EE# $
varGG 
exponentOf10GG 
=GG 
MathGG #
.GG# $
FloorGG$ )
(GG) *
MathGG* .
.GG. /
Log10GG/ 4
(GG4 5
valueGG5 :
)GG: ;
)GG; <
;GG< =
varII 
	powerOf10II 
=II 
MathII  
.II  !
PowII! $
(II$ %
$numII% '
,II' (
exponentOf10II) 5
)II5 6
;II6 7
varKK 
mantissaKK 
=KK 
valueKK  
/KK! "
	powerOf10KK# ,
;KK, -
returnMM 
newMM 
MantissaAndExponentMM *
{NN 
MantissaOO 
=OO 
signOO 
*OO  !
(OO" #
floatOO# (
)OO( )
mantissaOO) 1
,OO1 2
ExponentPP 
=PP 
(PP 
intPP 
)PP  
exponentOf10PP  ,
,PP, -
}QQ 
;QQ 
}RR 	
publicVV 
staticVV 
MantissaAndExponentVV )
Base10ToBase1000VV* :
(VV: ;
MantissaAndExponentVV; N
inputBase10VVO Z
)VVZ [
{WW 	
varXX 
exponentBase1000XX  
=XX! "
(XX# $
intXX$ '
)XX' (
MathFXX( -
.XX- .
FloorXX. 3
(XX3 4
inputBase10XX4 ?
.XX? @
ExponentXX@ H
/XXI J
$numXXK M
)XXM N
;XXN O
varYY 
remainderExponentYY !
=YY" #
(YY$ %
inputBase10YY% 0
.YY0 1
ExponentYY1 9
%YY: ;
$numYY< =
+YY> ?
$numYY@ A
)YYA B
%YYC D
$numYYE F
;YYF G
varZZ 
remainderMultiplierZZ #
=ZZ$ %
remainderExponent[[ !
==[[" $
$num[[% &
?[[' (
$num[[) ,
:[[- .
remainderExponent\\ !
==\\" $
$num\\% &
?\\' (
$num\\) +
:\\, -
$num]] 
;]] 
return^^ 
new^^ 
MantissaAndExponent^^ *
{__ 
Mantissa`` 
=`` 
inputBase10`` &
.``& '
Mantissa``' /
*``0 1
remainderMultiplier``2 E
,``E F
Exponentaa 
=aa 
exponentBase1000aa +
,aa+ ,
}bb 
;bb 
}cc 	
publicee 
staticee 
floatee $
RoundToSignificantDigitsee 4
(ee4 5
floatff 
inputff 
,ff 
intgg 
significantDigitsgg !
,gg! "
inthh #
inputDigitsAboveDecimalhh '
)hh' (
{ii 	
varqq 
resultqq 
=qq 
inputqq 
;qq 
varrr 

multiplierrr 
=rr 
MathFrr "
.rr" #
Powrr# &
(rr& '
$numrr' )
,rr) *
significantDigitsrr+ <
-rr= >#
inputDigitsAboveDecimalrr? V
)rrV W
;rrW X
resultss 
*=ss 

multiplierss  
;ss  !
resulttt 
=tt 
MathFtt 
.tt 
Roundtt  
(tt  !
resulttt! '
)tt' (
;tt( )
resultuu 
/=uu 

multiplieruu  
;uu  !
returnvv 
resultvv 
;vv 
}ww 	
publicyy 
staticyy 
stringyy )
Base1000ToEngineeringNotationyy :
(yy: ;
MantissaAndExponentzz 
inputBase1000zz  -
,zz- .
int{{ 
significantDigits{{ !
,{{! "
	BaseUnits|| 
units|| 
)|| 
{}} 	
var 
digitsAboveDecimal "
=# $
inputBase1000
ÄÄ 
.
ÄÄ 
Mantissa
ÄÄ &
>=
ÄÄ' )
$num
ÄÄ* .
?
ÄÄ/ 0
$num
ÄÄ1 2
:
ÄÄ3 4
inputBase1000
ÅÅ 
.
ÅÅ 
Mantissa
ÅÅ &
>=
ÅÅ' )
$num
ÅÅ+ .
?
ÅÅ/ 0
$num
ÅÅ1 2
:
ÅÅ3 4
$num
ÇÇ 
;
ÇÇ 
var
ÑÑ 
roundedValue
ÑÑ 
=
ÑÑ &
RoundToSignificantDigits
ÑÑ 7
(
ÑÑ7 8
inputBase1000
ÖÖ 
.
ÖÖ 
Mantissa
ÖÖ &
,
ÖÖ& '
significantDigits
ÜÜ !
,
ÜÜ! " 
digitsAboveDecimal
áá "
)
áá" #
;
áá# $
var
ââ  
digitsBelowDecimal
ââ "
=
ââ# $
Math
ââ% )
.
ââ) *
Max
ââ* -
(
ââ- .
significantDigits
ââ. ?
-
ââ@ A 
digitsAboveDecimal
ââB T
,
ââT U
$num
ââV W
)
ââW X
;
ââX Y
var
ää 
leadingNumber
ää 
=
ää 
roundedValue
ää  ,
.
ää, -
ToString
ää- 5
(
ää5 6
$str
ää6 9
+
ää: ; 
digitsBelowDecimal
ää< N
,
ääN O
CultureInfo
ääP [
.
ää[ \
CurrentCulture
ää\ j
)
ääj k
;
ääk l
var
åå 
metricPrefix
åå 
=
åå 
(
åå  
MetricPrefix
åå  ,
)
åå, -
inputBase1000
åå- :
.
åå: ;
Exponent
åå; C
;
ååC D
var
çç 
prefixSymbol
çç 
=
çç 
metricPrefix
çç +
.
çç+ ,
	GetSymbol
çç, 5
(
çç5 6
)
çç6 7
;
çç7 8
var
èè 
(
èè 
unitsNumerator
èè 
,
èè  
unitsDenominator
èè! 1
)
èè1 2
=
èè3 4
units
èè5 :
.
èè: ;3
%NumeratorAndDenominatorDisplayStrings
èè; `
;
èè` a
return
ëë 
leadingNumber
ëë  
+
íí 
(
íí 
unitsNumerator
íí $
==
íí% '
$str
íí( *
?
íí+ ,
prefixSymbol
íí- 9
:
íí: ;
$"
íí< >
{
íí> ?
k_SmallSpace
íí? K
}
ííK L
{
ííL M
prefixSymbol
ííM Y
}
ííY Z
{
ííZ [
unitsNumerator
íí[ i
}
ííi j
"
ííj k
)
íík l
+
ìì 
(
ìì 
unitsDenominator
ìì &
==
ìì' )
$str
ìì* ,
?
ìì- .
$str
ìì/ 1
:
ìì2 3
$"
ìì4 6
{
ìì6 7
k_DivisionSlash
ìì7 F
}
ììF G
{
ììG H
unitsDenominator
ììH X
}
ììX Y
"
ììY Z
)
ììZ [
;
ìì[ \
}
îî 	
public
ññ 
static
ññ 
string
ññ (
Base10ToPercentageNotation
ññ 7
(
ññ7 8!
MantissaAndExponent
óó 
inputBase10
óó  +
,
óó+ ,
int
òò 
significantDigits
òò !
,
òò! "
	BaseUnits
ôô 
units
ôô 
)
ôô 
{
öö 	
var
õõ 
roundedValue
õõ 
=
õõ &
RoundToSignificantDigits
õõ 7
(
õõ7 8
inputBase10
úú 
.
úú 
Mantissa
úú $
,
úú$ %
significantDigits
ùù !
,
ùù! "%
inputDigitsAboveDecimal
ûû '
:
ûû' (
$num
ûû) *
)
ûû* +
;
ûû+ ,
var
†† 

percentage
†† 
=
†† 
$num
††  
*
††! "
roundedValue
††# /
*
††0 1
MathF
††2 7
.
††7 8
Pow
††8 ;
(
††; <
$num
††< >
,
††> ?
inputBase10
††@ K
.
††K L
Exponent
††L T
)
††T U
;
††U V
var
¢¢ +
significantDigitsAboveDecimal
¢¢ -
=
¢¢. /
Math
¢¢0 4
.
¢¢4 5
Max
¢¢5 8
(
¢¢8 9
inputBase10
¢¢9 D
.
¢¢D E
Exponent
¢¢E M
+
¢¢N O
$num
¢¢P Q
,
¢¢Q R
$num
¢¢S T
)
¢¢T U
;
¢¢U V
var
§§ +
significantDigitsBelowDecimal
§§ -
=
§§. /
Math
•• 
.
•• 
Max
•• 
(
•• 
$num
•• 
,
•• 
significantDigits
•• -
-
••. /+
significantDigitsAboveDecimal
••0 M
)
••M N
;
••N O
var
ßß 
leadingNumber
ßß 
=
ßß 

percentage
ßß  *
.
ßß* +
ToString
ßß+ 3
(
ßß3 4
$str
®® 
+
®® +
significantDigitsBelowDecimal
®® 3
,
®®3 4
CultureInfo
©© 
.
©© 
CurrentCulture
©© *
)
©©* +
;
©©+ ,
var
ÆÆ 
(
ÆÆ 
unitsNumerator
ÆÆ 
,
ÆÆ  
unitsDenominator
ÆÆ! 1
)
ÆÆ1 2
=
ÆÆ3 4
units
ÆÆ5 :
.
ÆÆ: ;3
%NumeratorAndDenominatorDisplayStrings
ÆÆ; `
;
ÆÆ` a
return
∞∞ 
$"
∞∞ 
{
∞∞ 
leadingNumber
∞∞ #
}
∞∞# $
$str
∞∞$ %
"
∞∞% &
+
±± 
(
±± 
unitsNumerator
±± $
==
±±' )
$str
±±* ,
?
±±- .
$str
±±/ 1
:
±±2 3
$"
±±4 6
{
±±6 7
k_SmallSpace
±±7 C
}
±±C D
{
±±D E
unitsNumerator
±±E S
}
±±S T
"
±±T U
)
±±U V
+
≤≤ 
(
≤≤ 
unitsDenominator
≤≤ &
==
≤≤' )
$str
≤≤* ,
?
≤≤- .
$str
≤≤/ 1
:
≤≤2 3
$"
≤≤4 6
{
≤≤6 7
k_DivisionSlash
≤≤7 F
}
≤≤F G
{
≤≤G H
unitsDenominator
≤≤H X
}
≤≤X Y
"
≤≤Y Z
)
≤≤Z [
;
≤≤[ \
}
≥≥ 	
public
µµ 
static
µµ 
string
µµ %
Base10ToDisplayNotation
µµ 4
(
µµ4 5!
MantissaAndExponent
∂∂ 
inputBase10
∂∂  +
,
∂∂+ ,
int
∑∑ 
significantDigits
∑∑ !
,
∑∑! "
	BaseUnits
∏∏ 
units
∏∏ 
,
∏∏ 
bool
ππ !
displayAsPercentage
ππ $
)
ππ$ %
{
∫∫ 	
return
ªª !
displayAsPercentage
ªª &
?
ºº (
Base10ToPercentageNotation
ºº ,
(
ºº, -
inputBase10
ΩΩ 
,
ΩΩ  
significantDigits
ææ %
,
ææ% &
units
øø 
)
øø 
:
¿¿ +
Base1000ToEngineeringNotation
¿¿ /
(
¿¿/ 0
Base10ToBase1000
¡¡ $
(
¡¡$ %
inputBase10
¡¡% 0
)
¡¡0 1
,
¡¡1 2
significantDigits
¬¬ %
,
¬¬% &
units
√√ 
)
√√ 
;
√√ 
}
ƒƒ 	
public
∆∆ 
static
∆∆ 
string
∆∆ 
ToDisplayNotation
∆∆ .
(
∆∆. /
float
«« 
input
«« 
,
«« 
int
»» 
significantDigits
»» !
,
»»! "
	BaseUnits
…… 
units
…… 
,
…… 
bool
   !
displayAsPercentage
   $
)
  $ %
{
ÀÀ 	
return
ÃÃ %
Base10ToDisplayNotation
ÃÃ *
(
ÃÃ* +
ToBase10
ÕÕ 
(
ÕÕ 
input
ÕÕ 
)
ÕÕ 
,
ÕÕ  
significantDigits
ŒŒ !
,
ŒŒ! "
units
œœ 
,
œœ !
displayAsPercentage
–– #
)
––# $
;
––$ %
}
—— 	
public
”” 
static
”” 
string
”” 
ToDisplayNotation
”” .
(
””. /
double
‘‘ 
input
‘‘ 
,
‘‘ 
int
’’ 
significantDigits
’’ !
,
’’! "
	BaseUnits
÷÷ 
units
÷÷ 
,
÷÷ 
bool
◊◊ !
displayAsPercentage
◊◊ $
)
◊◊$ %
{
ÿÿ 	
return
ŸŸ %
Base10ToDisplayNotation
ŸŸ *
(
ŸŸ* +
ToBase10
⁄⁄ 
(
⁄⁄ 
input
⁄⁄ 
)
⁄⁄ 
,
⁄⁄  
significantDigits
€€ !
,
€€! "
units
‹‹ 
,
‹‹ !
displayAsPercentage
›› #
)
››# $
;
››$ %
}
ﬁﬁ 	
}
ﬂﬂ 
}‡‡ ±
|C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str Q
)Q R
]R S
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str \
)\ ]
]] ^îg
áC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\CounterVisualElement.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class  
CounterVisualElement '
:( )
VisualElement* 7
{ 
readonly 
Label 
m_Label 
=  
new! $
($ %
)% &
;& '
readonly 
Label 
m_Value 
=  
new! $
($ %
)% &
;& '
List 
< 
MetricId 
> 
m_Stats 
; 
	BaseUnits 
m_Units 
; 
bool !
m_DisplayAsPercentage "
;" #
SmoothingMethod 
m_SmoothingMethod )
=* +
SmoothingMethod, ;
.; <$
ExponentialMovingAverage< T
;T U
AggregationMethod 
m_AggregationMethod -
=. /
AggregationMethod0 A
.A B
SumB E
;E F
double   
?   
m_DecayConstant   
;    
int!! 
m_SampleCount!! 
;!! 
int## 
m_SignificantDigits## 
;##  
float%% #
m_HighlightThresholdMin%% %
=%%& '
float%%( -
.%%- .
MinValue%%. 6
;%%6 7
float&& #
m_HighlightThresholdMax&& %
=&&& '
float&&( -
.&&- .
MaxValue&&. 6
;&&6 7
double(( 
m_DisplayValue(( 
;(( 
internal)) 
double)) 
DisplayValue)) $
{** 	
get++ 
=>++ 
m_DisplayValue++ !
;++! "
set,, 
{-- 
m_DisplayValue.. 
=..  
value..! &
;..& '
m_Value// 
.// 
text// 
=// 
NumericUtils// +
.//+ ,
ToDisplayNotation//, =
(//= >
m_DisplayValue00 "
,00" #
significantDigits11 %
:11% &
m_SignificantDigits11' :
,11: ;
units22 
:22 
m_Units22 "
,22" #
displayAsPercentage33 '
:33' (!
m_DisplayAsPercentage33) >
)33> ?
;33? @%
UpdateHighlightUssClasses44 )
(44) *
)44* +
;44+ ,
}55 
}66 	
internal88  
CounterVisualElement88 %
(88% &
)88& '
{99 	
AddToClassList:: 
(:: 
UssClassNames:: (
.::( )
k_DisplayElement::) 9
)::9 :
;::: ;
AddToClassList;; 
(;; 
UssClassNames;; (
.;;( )
	k_Counter;;) 2
);;2 3
;;;3 4
m_Label== 
.== 
AddToClassList== "
(==" #
UssClassNames==# 0
.==0 1!
k_DisplayElementLabel==1 F
)==F G
;==G H
Add>> 
(>> 
m_Label>> 
)>> 
;>> 
m_Value@@ 
.@@ 
AddToClassList@@ "
(@@" #
UssClassNames@@# 0
.@@0 1
k_CounterValue@@1 ?
)@@? @
;@@@ A
AddAA 
(AA 
m_ValueAA 
)AA 
;AA 
}BB 	
internalDD 
voidDD 
UpdateConfigurationDD )
(DD) *'
DisplayElementConfigurationDD* E
configDDF L
)DDL M
{EE 	
varFF 
detailsFF 
=FF 
configFF  
.FF  ! 
CounterConfigurationFF! 5
;FF5 6
m_LabelHH 
.HH 
textHH 
=HH 
StringUtilsHH &
.HH& '
LabelFormattingHH' 6
(HH6 7
configHH7 =
.HH= >
LabelHH> C
,HHC D
configHHE K
.HHK L
StatsHHL Q
)HHQ R
;HHR S
m_StatsII 
=II 
newII 
ListII 
<II 
MetricIdII '
>II' (
(II( )
configII) /
.II/ 0
StatsII0 5
)II5 6
;II6 7
m_UnitsJJ 
=JJ 
	UnitUtilsJJ 
.JJ  
GetUnitsJJ  (
(JJ( )
m_StatsJJ) 0
,JJ0 1
configJJ2 8
.JJ8 9
LabelJJ9 >
)JJ> ?
;JJ? @!
m_DisplayAsPercentageKK !
=KK" #
	UnitUtilsKK$ -
.KK- .%
ShouldDisplayAsPercentageKK. G
(KKG H
m_StatsKKH O
,KKO P
configKKQ W
.KKW X
LabelKKX ]
)KK] ^
;KK^ _
m_SmoothingMethodLL 
=LL 
detailsLL  '
.LL' (
SmoothingMethodLL( 7
;LL7 8
m_AggregationMethodMM 
=MM  !
detailsMM" )
.MM) *
AggregationMethodMM* ;
;MM; <
m_DecayConstantNN 
=NN 
configNN $
.NN$ %
DecayConstantNN% 2
;NN2 3
m_SampleCountOO 
=OO 
MathOO  
.OO  !
MaxOO! $
(OO$ %
configOO% +
.OO+ ,
SampleCountOO, 7
,OO7 8
$numOO9 :
)OO: ;
;OO; <
m_SignificantDigitsPP 
=PP  !
MathPP" &
.PP& '
MaxPP' *
(PP* +
detailsPP+ 2
.PP2 3
SignificantDigitsPP3 D
,PPD E
$numPPF G
)PPG H
;PPH I#
m_HighlightThresholdMinRR #
=RR$ %
detailsRR& -
.RR- .
HighlightLowerBoundRR. A
;RRA B#
m_HighlightThresholdMaxSS #
=SS$ %
detailsSS& -
.SS- .
HighlightUpperBoundSS. A
;SSA B%
UpdateHighlightUssClassesUU %
(UU% &
)UU& '
;UU' (
}VV 	
internalXX 
voidXX 
UpdateDisplayDataXX '
(XX' (
MultiStatHistoryXX( 8
historyXX9 @
,XX@ A
doubleXXB H
timeXXI M
)XXM N
{YY 	
varZZ 
isLinearCombinationZZ #
=ZZ$ %
m_AggregationMethod[[ #
==[[$ &
AggregationMethod[[' 8
.[[8 9
Average[[9 @
||[[A C
m_AggregationMethod\\ #
==\\$ &
AggregationMethod\\' 8
.\\8 9
Sum\\9 <
;\\< =
Assertff 
.ff 
IsTrueff 
(ff 
isLinearCombinationff -
)ff- .
;ff. /
varhh 
isEmahh 
=hh 
m_SmoothingMethodhh )
==hh* ,
SmoothingMethodhh- <
.hh< =$
ExponentialMovingAveragehh= U
;hhU V
varii 
hasDecayConstantii  
=ii! "
m_DecayConstantii# 2
!=ii3 5
nullii6 :
;ii: ;
Assertjj 
.jj 
IsTruejj 
(jj 
isEmajj 
==jj  "
hasDecayConstantjj# 3
)jj3 4
;jj4 5
varll 
displayValuell 
=ll 
$numll !
;ll! "
varmm 
statsFoundCountmm 
=mm  !
$nummm" #
;mm# $
switchnn 
(nn 
m_SmoothingMethodnn %
)nn% &
{oo 
casepp 
SmoothingMethodpp $
.pp$ %$
ExponentialMovingAveragepp% =
:pp= >
{qq 
ifrr 
(rr 
!rr 
hasDecayConstantrr )
)rr) *
{ss 
breaktt 
;tt 
}uu 
varvv 
decayConstantvv %
=vv& '
m_DecayConstantvv( 7
.vv7 8
Valuevv8 =
;vv= >
foreachww 
(ww 
varww  
statww! %
inww& (
m_Statsww) 0
)ww0 1
{xx 
ifyy 
(yy 
!yy 
historyyy $
.yy$ %
Datayy% )
.yy) *
TryGetValueyy* 5
(yy5 6
statyy6 :
,yy: ;
outyy< ?
StatHistoryyy@ K
statHistoryyyL W
)yyW X
)yyX Y
{zz 
continue{{ $
;{{$ %
}|| 
foreach}} 
(}}  !
var}}! $
cema}}% )
in}}* ,
statHistory}}- 8
.}}8 9/
#ContinuousExponentialMovingAverages}}9 \
)}}\ ]
{~~ 
if 
(  
cema  $
.$ %
DecayConstant% 2
==3 5
decayConstant6 C
)C D
{
ÄÄ 
var
ÅÅ  #

metricKind
ÅÅ$ .
=
ÅÅ/ 0
stat
ÅÅ1 5
.
ÅÅ5 6

MetricKind
ÅÅ6 @
;
ÅÅ@ A
switch
ÇÇ  &
(
ÇÇ' (

metricKind
ÇÇ( 2
)
ÇÇ2 3
{
ÉÉ  !
case
ÑÑ$ (

MetricKind
ÑÑ) 3
.
ÑÑ3 4
Counter
ÑÑ4 ;
:
ÑÑ; <
displayValue
ÖÖ( 4
+=
ÖÖ5 7
cema
ÖÖ8 <
.
ÖÖ< =
GetCounterValue
ÖÖ= L
(
ÖÖL M
time
ÖÖM Q
)
ÖÖQ R
;
ÖÖR S
break
ÜÜ( -
;
ÜÜ- .
case
áá$ (

MetricKind
áá) 3
.
áá3 4
Gauge
áá4 9
:
áá9 :
displayValue
àà( 4
+=
àà5 7
cema
àà8 <
.
àà< =
GetGaugeValue
àà= J
(
ààJ K
)
ààK L
;
ààL M
break
ââ( -
;
ââ- .
default
ää$ +
:
ää+ ,
throw
ãã( -
new
ãã. 1#
NotSupportedException
ãã2 G
(
ããG H
$"
ããH J
$str
ããJ T
{
ããT U
nameof
ããU [
(
ãã[ \

MetricKind
ãã\ f
)
ããf g
}
ããg h
$str
ããh i
{
ããi j

metricKind
ããj t
}
ããt u
"
ããu v
)
ããv w
;
ããw x
}
åå  !
statsFoundCount
çç  /
++
çç/ 1
;
çç1 2
break
éé  %
;
éé% &
}
èè 
}
êê 
}
ëë 
break
íí 
;
íí 
}
ìì 
case
îî 
SmoothingMethod
îî $
.
îî$ %!
SimpleMovingAverage
îî% 8
:
îî8 9
{
ïï 
foreach
ññ 
(
ññ 
var
ññ  
statName
ññ! )
in
ññ* ,
m_Stats
ññ- 4
)
ññ4 5
{
óó 
var
òò 
rate
òò  
=
òò! "
history
òò# *
.
òò* +(
GetSimpleMovingAverageRate
òò+ E
(
òòE F
statName
òòF N
,
òòN O
m_SampleCount
òòP ]
,
òò] ^
time
òò_ c
)
òòc d
;
òòd e
if
ôô 
(
ôô 
!
ôô 
rate
ôô !
.
ôô! "
HasValue
ôô" *
)
ôô* +
{
öö 
continue
õõ $
;
õõ$ %
}
úú 
displayValue
ùù $
+=
ùù% '
rate
ùù( ,
.
ùù, -
Value
ùù- 2
;
ùù2 3
statsFoundCount
ûû '
++
ûû' )
;
ûû) *
}
üü 
break
†† 
;
†† 
}
°° 
}
¢¢ 
if
££ 
(
££ !
m_AggregationMethod
££ #
==
££$ &
AggregationMethod
££' 8
.
££8 9
Average
££9 @
&&
££A C
statsFoundCount
££D S
>
££T U
$num
££V W
)
££W X
{
§§ 
displayValue
•• 
/=
•• 
statsFoundCount
••  /
;
••/ 0
}
¶¶ 
DisplayValue
®® 
=
®® 
displayValue
®® '
;
®®' (
}
©© 	
void
´´ '
UpdateHighlightUssClasses
´´ &
(
´´& '
)
´´' (
{
¨¨ 	
var
≠≠ 
belowMin
≠≠ 
=
≠≠ 
m_DisplayValue
≠≠ )
<
≠≠* +%
m_HighlightThresholdMin
≠≠, C
;
≠≠C D
var
ÆÆ 
aboveMax
ÆÆ 
=
ÆÆ 
m_DisplayValue
ÆÆ )
>
ÆÆ* +%
m_HighlightThresholdMax
ÆÆ, C
;
ÆÆC D
EnableInClassList
ØØ 
(
ØØ 
UssClassNames
ØØ +
.
ØØ+ ,%
k_CounterBelowThreshold
ØØ, C
,
ØØC D
belowMin
ØØE M
)
ØØM N
;
ØØN O
EnableInClassList
∞∞ 
(
∞∞ 
UssClassNames
∞∞ +
.
∞∞+ ,%
k_CounterAboveThreshold
∞∞, C
,
∞∞C D
aboveMax
∞∞E M
)
∞∞M N
;
∞∞N O
EnableInClassList
±± 
(
±± 
UssClassNames
±± +
.
±±+ ,"
k_CounterOutOfBounds
±±, @
,
±±@ A
belowMin
±±B J
||
±±K M
aboveMax
±±N V
)
±±V W
;
±±W X
}
≤≤ 	
}
≥≥ 
}¥¥ Ç
âC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\GraphAxisLabels.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class 
GraphAxisLabels "
:# $
VisualElement% 2
{ 
readonly 
Label 

m_MinLabel !
=" #
new$ '
(' (
)( )
;) *
readonly 
Label 

m_MaxLabel !
=" #
new$ '
(' (
)( )
;) *
public 
string 
MinLabel 
{ 	
get 
=> 

m_MinLabel 
. 
text "
;" #
set 
=> 

m_MinLabel 
. 
text "
=# $
value% *
;* +
} 	
public 
string 
MaxLabel 
{ 	
get 
=> 

m_MaxLabel 
. 
text "
;" #
set 
=> 

m_MaxLabel 
. 
text "
=# $
value% *
;* +
} 	
internal   
GraphAxisLabels    
(    !
)  ! "
{!! 	
AddToClassList"" 
("" 
UssClassNames"" (
.""( )
k_GraphAxis"") 4
)""4 5
;""5 6

m_MinLabel## 
.## 
AddToClassList## %
(##% &
UssClassNames##& 3
.##3 4$
k_GraphAxisMinValueLabel##4 L
)##L M
;##M N

m_MaxLabel$$ 
.$$ 
AddToClassList$$ %
($$% &
UssClassNames$$& 3
.$$3 4$
k_GraphAxisMaxValueLabel$$4 L
)$$L M
;$$M N
Add&& 
(&& 

m_MinLabel&& 
)&& 
;&& 
Add'' 
('' 

m_MaxLabel'' 
)'' 
;'' 
}(( 	
public** 
void** 
	SetLabels** 
(** 
string** $
minLabel**% -
,**- .
string**/ 5
maxLabel**6 >
)**> ?
{++ 	
MinLabel,, 
=,, 
minLabel,, 
;,,  
MaxLabel-- 
=-- 
maxLabel-- 
;--  
}.. 	
public00 
StyleLength00 
MaxLabelMarginRight00 .
{11 	
get22 
=>22 

m_MaxLabel22 
.22 
style22 #
.22# $
marginRight22$ /
;22/ 0
set33 
=>33 

m_MaxLabel33 
.33 
style33 #
.33# $
marginRight33$ /
=330 1
value332 7
;337 8
}44 	
}55 
}66 ç
âC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\GraphParameters.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
struct 
GraphParameters #
{ 
public 
int 
	StatCount 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
SamplesPerStat !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} À#
ÖC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\GraphLegend.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
public 

class 
GraphLegend 
: 
VisualElement ,
{ 
List 
< 
	LegendKey 
> 
m_LegendKeys $
=% &
new' *
List+ /
</ 0
	LegendKey0 9
>9 :
(: ;
); <
;< =
public 
GraphLegend 
( 
) 
{ 	
AddToClassList 
( 
UssClassNames (
.( )
k_GraphLegend) 6
)6 7
;7 8
} 	
public 
void 
UpdateConfiguration '
(' ('
DisplayElementConfiguration( C
configurationD Q
)Q R
{   	
var!! 
stats!! 
=!! 
configuration!! %
.!!% &
Stats!!& +
;!!+ ,
if## 
(## 
stats## 
.## 
Count## 
<## 
m_LegendKeys## *
.##* +
Count##+ 0
)##0 1
{$$ 
var&& 
diff&& 
=&& 
m_LegendKeys&& '
.&&' (
Count&&( -
-&&. /
stats&&0 5
.&&5 6
Count&&6 ;
;&&; <
for'' 
('' 
var'' 
i'' 
='' 
m_LegendKeys'' )
.'') *
Count''* /
-''/ 0
$num''0 1
;''1 2
m_LegendKeys''3 ?
.''? @
Count''@ E
!=''F H
stats''I N
.''N O
Count''O T
;''T U
--''V X
i''X Y
)''Y Z
{(( 
RemoveAt)) 
()) 
i)) 
))) 
;))  
m_LegendKeys**  
.**  !
RemoveAt**! )
(**) *
i*** +
)**+ ,
;**, -
}++ 
},, 
m_LegendKeys.. 
... 
Resize.. 
(..  
stats..  %
...% &
Count..& +
,..+ ,
(..- .
)... /
=>..0 2
new..3 6
	LegendKey..7 @
(..@ A
)..A B
)..B C
;..C D
var// 
childrenCount// 
=// 
Children//  (
(//( )
)//) *
.//* +
Count//+ 0
(//0 1
)//1 2
;//2 3
var00 
variableColors00 
=00  
configuration00! .
.00. /
GraphConfiguration00/ A
.00A B
VariableColors00B P
;00P Q
for11 
(11 
var11 
i11 
=11 
$num11 
;11 
i11 
<11 
stats11  %
.11% &
Count11& +
;11+ ,
++11- /
i11/ 0
)110 1
{22 
var33 
	legendKey33 
=33 
m_LegendKeys33  ,
[33, -
i33- .
]33. /
;33/ 0
var44 
stat44 
=44 
stats44  
[44  !
i44! "
]44" #
;44# $
Color3255 
color55 
=55 
(55  !
variableColors55! /
!=550 2
null553 7
&&558 :
i55; <
<55= >
variableColors55? M
.55M N
Count55N S
)55S T
?66 
variableColors66 $
[66$ %
i66% &
]66& '
:77 
GraphColorUtils77 %
.77% &
GetColorForIndex77& 6
(776 7
i777 8
,778 9
stats77: ?
.77? @
Count77@ E
)77E F
;77F G
	legendKey88 
.88 
Update88  
(88  !
stat88! %
.88% &
ToString88& .
(88. /
)88/ 0
,880 1
color882 7
)887 8
;888 9
if:: 
(:: 
i:: 
>=:: 
childrenCount:: &
)::& '
{;; 
Add<< 
(<< 
	legendKey<< !
)<<! "
;<<" #
}== 
}>> 
}?? 	
}@@ 
}AA ¢
ÉC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\LegendKey.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class 
	LegendKey 
: 
VisualElement ,
{ 
Label 

m_KeyLabel 
; 
VisualElement 
m_Swatch 
; 
internal 
	LegendKey 
( 
) 
{ 	
AddToClassList 
( 
UssClassNames (
.( )
k_GraphLegendKey) 9
)9 :
;: ;
AddToClassList 
( 
UssClassNames (
.( )
k_GraphLegendKey) 9
)9 :
;: ;
m_Swatch 
= 
new 
VisualElement (
(( )
)) *
;* +
m_Swatch 
. 
AddToClassList #
(# $
UssClassNames$ 1
.1 2"
k_GraphLegendKeySwatch2 H
)H I
;I J
Add 
( 
m_Swatch 
) 
; 

m_KeyLabel 
= 
new 
Label "
(" #
)# $
;$ %

m_KeyLabel   
.   
AddToClassList   %
(  % &
UssClassNames  & 3
.  3 4!
k_GraphLegendKeyLabel  4 I
)  I J
;  J K
Add!! 
(!! 

m_KeyLabel!! 
)!! 
;!! 
}"" 	
internal$$ 
	LegendKey$$ 
($$ 
string$$ !
name$$" &
,$$& '
Color32$$( /
color$$0 5
)$$5 6
:%% 
this%% 
(%% 
)%% 
{&& 	

UpdateName'' 
('' 
name'' 
)'' 
;'' 
UpdateColor(( 
((( 
color(( 
)(( 
;(( 
})) 	
internal++ 
void++ 
Update++ 
(++ 
string++ #
name++$ (
,++( )
Color32++* 1
color++2 7
)++7 8
{,, 	

UpdateName-- 
(-- 
name-- 
)-- 
;-- 
UpdateColor.. 
(.. 
color.. 
).. 
;.. 
}// 	
internal11 
void11 

UpdateName11  
(11  !
string11! '
name11( ,
)11, -
{22 	
this33 
.33 
name33 
=33 
name33 
;33 

m_KeyLabel44 
.44 
text44 
=44 
name44 "
;44" #
}55 	
internal77 
void77 
UpdateColor77 !
(77! "
Color3277" )
color77* /
)77/ 0
{88 	
m_Swatch99 
.99 
style99 
.99 
backgroundColor99 *
=99+ ,
(99- .
Color99. 3
)993 4
color994 9
;999 :
}:: 	
};; 
}<< Îe
ÑC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\RnsmVisualElement.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class 
RnsmVisualElement $
:% &
VisualElement' 4
{ 
readonly 
Label 
m_Title 
=  
new! $
Label% *
(* +
)+ ,
;, -
readonly 
VisualElement &
m_DisplayElementsContainer 9
=: ;
new< ?
(? @
)@ A
;A B
readonly 
List 
<  
CounterVisualElement *
>* +

m_Counters, 6
=7 8
new9 <
(< =
)= >
;> ?
readonly 
List 
< 
GraphVisualElement (
>( )
m_Graphs* 2
=3 4
new5 8
(8 9
)9 :
;: ;
readonly '
NoDataReceivedVisualElement ,#
m_NoDataReceivedMessage- D
=E F
newG J
(J K
)K L
;L M
internal 
RnsmVisualElement "
(" #
)# $
{ 	
pickingMode 
= 
PickingMode %
.% &
Ignore& ,
;, -
AddToClassList 
( 
UssClassNames (
.( )
	k_Monitor) 2
)2 3
;3 4
m_Title 
. 
AddToClassList "
(" #
UssClassNames# 0
.0 1
k_MonitorTitle1 ?
)? @
;@ A
m_Title   
.   
text   
=   
$str   2
;  2 3
Add!! 
(!! 
m_Title!! 
)!! 
;!! &
m_DisplayElementsContainer## &
.##& '
AddToClassList##' 5
(##5 6
UssClassNames##6 C
.##C D
k_DisplayElements##D U
)##U V
;##V W
Add$$ 
($$ &
m_DisplayElementsContainer$$ *
)$$* +
;$$+ ,
}%% 	
public'' 
void'' 
UpdateConfiguration'' '
(''' ((
NetStatsMonitorConfiguration''( D
configuration''E R
)''R S
{(( 	&
m_DisplayElementsContainer,, &
.,,& '
Clear,,' ,
(,,, -
),,- .
;,,. /
if.. 
(.. 
configuration.. 
==..  
null..! %
)..% &
{// 
return00 
;00 
}11 
var33 
countersUsed33 
=33 
$num33  
;33  !
var44 

graphsUsed44 
=44 
$num44 
;44 
foreach55 
(55 
var55  
displayElementConfig55 -
in55. 0
configuration551 >
.55> ?
DisplayElements55? N
)55N O
{66 
switch77 
(77  
displayElementConfig77 ,
.77, -
Type77- 1
)771 2
{88 
case99 
DisplayElementType99 +
.99+ ,
Counter99, 3
:993 4
{:: 
while;; 
(;; 
countersUsed;; +
>=;;, .

m_Counters;;/ 9
.;;9 :
Count;;: ?
);;? @
{<< 

m_Counters== &
.==& '
Add==' *
(==* +
new==+ . 
CounterVisualElement==/ C
(==C D
)==D E
)==E F
;==F G
}>> 
var?? 
counter?? #
=??$ %

m_Counters??& 0
[??0 1
countersUsed??1 =
]??= >
;??> ?
counter@@ 
.@@  
UpdateConfiguration@@  3
(@@3 4 
displayElementConfig@@4 H
)@@H I
;@@I J&
m_DisplayElementsContainerBB 2
.BB2 3
AddBB3 6
(BB6 7
counterBB7 >
)BB> ?
;BB? @
countersUsedCC $
++CC$ &
;CC& '
breakDD 
;DD 
}EE 
caseFF 
DisplayElementTypeFF +
.FF+ ,
	LineGraphFF, 5
:FF5 6
caseGG 
DisplayElementTypeGG +
.GG+ ,
StackedAreaGraphGG, <
:GG< =
{HH 
whileII 
(II 

graphsUsedII )
>=II* ,
m_GraphsII- 5
.II5 6
CountII6 ;
)II; <
{JJ 
m_GraphsKK $
.KK$ %
AddKK% (
(KK( )
newKK) ,
GraphVisualElementKK- ?
(KK? @
)KK@ A
)KKA B
;KKB C
}LL 
varMM 
graphMM !
=MM" #
m_GraphsMM$ ,
[MM, -

graphsUsedMM- 7
]MM7 8
;MM8 9
graphOO 
.OO 
UpdateConfigurationOO 1
(OO1 2 
displayElementConfigOO2 F
)OOF G
;OOG H&
m_DisplayElementsContainerQQ 2
.QQ2 3
AddQQ3 6
(QQ6 7
graphQQ7 <
)QQ< =
;QQ= >

graphsUsedRR "
++RR" $
;RR$ %
breakSS 
;SS 
}TT 
}UU 
}VV 
ifXX 
(XX 

m_CountersXX 
.XX 
CountXX  
>XX! "
countersUsedXX# /
)XX/ 0
{YY 

m_CountersZZ 
.ZZ 
RemoveRangeZZ &
(ZZ& '
countersUsedZZ' 3
,ZZ3 4

m_CountersZZ5 ?
.ZZ? @
CountZZ@ E
-ZZF G
countersUsedZZH T
)ZZT U
;ZZU V
}[[ 
if\\ 
(\\ 
m_Graphs\\ 
.\\ 
Count\\ 
>\\  

graphsUsed\\! +
)\\+ ,
{]] 
m_Graphs^^ 
.^^ 
RemoveRange^^ $
(^^$ %

graphsUsed^^% /
,^^/ 0
m_Graphs^^1 9
.^^9 :
Count^^: ?
-^^@ A

graphsUsed^^B L
)^^L M
;^^M N
}__ 
}`` 	
publiccc 
voidcc 
UpdateDisplayDatacc %
(cc% &
MultiStatHistorycc& 6
statscc7 <
,cc< =
doublecc> D
timeccE I
)ccI J
{dd 	
ifee 
(ee &
m_DisplayElementsContaineree *
.ee* +
Containsee+ 3
(ee3 4#
m_NoDataReceivedMessageee4 K
)eeK L
)eeL M
{ff &
m_DisplayElementsContainergg *
.gg* +
Removegg+ 1
(gg1 2#
m_NoDataReceivedMessagegg2 I
)ggI J
;ggJ K
}hh 
foreachii 
(ii 
varii 
counterii  
inii! #

m_Countersii$ .
)ii. /
{jj 
counterkk 
.kk 
UpdateDisplayDatakk )
(kk) *
statskk* /
,kk/ 0
timekk1 5
)kk5 6
;kk6 7
}ll 
foreachmm 
(mm 
varmm 
graphmm 
inmm !
m_Graphsmm" *
)mm* +
{nn 
graphoo 
.oo 
UpdateDisplayDataoo '
(oo' (
statsoo( -
)oo- .
;oo. /
}pp 
}qq 	
publicss 
voidss )
DisplayDataNotReceivedMessagess 1
(ss1 2
doubless2 8$
secondsSinceDataReceivedss9 Q
)ssQ R
{tt 	
ifuu 
(uu 
!uu 
Containsuu 
(uu #
m_NoDataReceivedMessageuu 1
)uu1 2
)uu2 3
{vv &
m_DisplayElementsContainerww *
.ww* +
Insertww+ 1
(ww1 2
$numww2 3
,ww3 4#
m_NoDataReceivedMessageww5 L
)wwL M
;wwM N
}xx #
m_NoDataReceivedMessageyy #
.yy# $
Updateyy$ *
(yy* +$
secondsSinceDataReceivedyy+ C
)yyC D
;yyD E
}zz 	
EventCallback|| 
<||  
GeometryChangedEvent|| *
>||* +
m_OnGeoChange||, 9
;||9 :
public~~ 
void~~ 
ApplyPosition~~ !
(~~! "!
PositionConfiguration~~" 7!
positionConfiguration~~8 M
)~~M N
{ 	
if
ÄÄ 
(
ÄÄ 
m_OnGeoChange
ÄÄ 
!=
ÄÄ  
null
ÄÄ! %
)
ÄÄ% &
{
ÅÅ 
parent
ÇÇ 
.
ÇÇ  
UnregisterCallback
ÇÇ )
(
ÇÇ) *
m_OnGeoChange
ÇÇ* 7
)
ÇÇ7 8
;
ÇÇ8 9 
UnregisterCallback
ÉÉ "
(
ÉÉ" #
m_OnGeoChange
ÉÉ# 0
)
ÉÉ0 1
;
ÉÉ1 2
m_OnGeoChange
ÑÑ 
=
ÑÑ 
null
ÑÑ  $
;
ÑÑ$ %
}
ÖÖ 
if
ÜÜ 
(
ÜÜ #
positionConfiguration
ÜÜ %
.
ÜÜ% &
OverridePosition
ÜÜ& 6
)
ÜÜ6 7
{
áá 
Action
àà 
onSizeChange
àà #
=
àà$ %
(
àà& '
)
àà' (
=>
àà) +
{
ââ 
var
ää 
parentWidth
ää #
=
ää$ %
parent
ää& ,
.
ää, -
contentRect
ää- 8
.
ää8 9
width
ää9 >
;
ää> ?
var
ãã 
parentHeight
ãã $
=
ãã% &
parent
ãã' -
.
ãã- .
contentRect
ãã. 9
.
ãã9 :
height
ãã: @
;
ãã@ A
var
çç 
left
çç 
=
çç #
positionConfiguration
çç 4
.
çç4 5!
PositionLeftToRight
çç5 H
*
ççI J
(
ççK L
parentWidth
ççL W
-
ççX Y
contentRect
ççZ e
.
ççe f
width
ççf k
)
ççk l
;
ççl m
var
éé 
top
éé 
=
éé #
positionConfiguration
éé 4
.
éé4 5!
PositionTopToBottom
éé5 H
*
ééI J
(
ééK L
parentHeight
ééL X
-
ééY Z
contentRect
éé[ f
.
ééf g
height
éég m
)
éém n
;
één o
style
êê 
.
êê 
left
êê 
=
êê  
new
êê! $
Length
êê% +
(
êê+ ,
left
êê, 0
,
êê0 1

LengthUnit
êê2 <
.
êê< =
Pixel
êê= B
)
êêB C
;
êêC D
style
ëë 
.
ëë 
top
ëë 
=
ëë 
new
ëë  #
Length
ëë$ *
(
ëë* +
top
ëë+ .
,
ëë. /

LengthUnit
ëë0 :
.
ëë: ;
Pixel
ëë; @
)
ëë@ A
;
ëëA B
}
íí 
;
íí 
onSizeChange
ìì 
(
ìì 
)
ìì 
;
ìì 
m_OnGeoChange
îî 
=
îî 
evt
îî  #
=>
îî$ &
{
ïï 
const
ññ 
float
ññ 
k_EpsilonPixels
ññ  /
=
ññ0 1
$num
ññ2 6
;
ññ6 7
if
óó 
(
óó 
(
óó 
MathF
óó 
.
óó 
Abs
óó "
(
óó" #
evt
óó# &
.
óó& '
newRect
óó' .
.
óó. /
width
óó/ 4
-
óó5 6
evt
óó7 :
.
óó: ;
oldRect
óó; B
.
óóB C
width
óóC H
)
óóH I
>
óóJ K
k_EpsilonPixels
óóL [
)
óó[ \
||
óó] _
(
òò 
MathF
òò 
.
òò 
Abs
òò "
(
òò" #
evt
òò# &
.
òò& '
newRect
òò' .
.
òò. /
height
òò/ 5
-
òò6 7
evt
òò8 ;
.
òò; <
oldRect
òò< C
.
òòC D
height
òòD J
)
òòJ K
>
òòL M
k_EpsilonPixels
òòN ]
)
òò] ^
)
òò^ _
{
ôô 
onSizeChange
öö $
(
öö$ %
)
öö% &
;
öö& '
}
õõ 
}
úú 
;
úú 
parent
ùù 
.
ùù 
RegisterCallback
ùù '
(
ùù' (
m_OnGeoChange
ùù( 5
)
ùù5 6
;
ùù6 7
RegisterCallback
ûû  
(
ûû  !
m_OnGeoChange
ûû! .
)
ûû. /
;
ûû/ 0
}
üü 
else
†† 
{
°° 
style
¢¢ 
.
¢¢ 
left
¢¢ 
=
¢¢ 
StyleKeyword
¢¢ )
.
¢¢) *
Null
¢¢* .
;
¢¢. /
style
££ 
.
££ 
top
££ 
=
££ 
StyleKeyword
££ (
.
££( )
Null
££) -
;
££- .
}
§§ 
}
•• 	
}
¶¶ 
}ßß ú
àC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\IGraphRenderer.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
	interface 
IGraphRenderer %
{ 
public00 
	MinAndMax00 
UpdateVertices00 '
(00' (
MultiStatHistory11 
history11 $
,11$ %
List22 
<22 
MetricId22 
>22 
stats22  
,22  !
float33 
yAxisMin33 
,33 
float44 
yAxisMax44 
,44 
GraphParameters55 
graphParams55 '
,55' (
float66 
renderBoundsXMin66 "
,66" #
float77 
renderBoundsXMax77 "
,77" #
float88 
renderBoundsYMin88 "
,88" #
float99 
renderBoundsYMax99 "
,99" #
Vertex:: 
[:: 
]:: 
vertices:: 
):: 
;:: 
void<< 
UpdateConfiguration<<  
(<<  !'
DisplayElementConfiguration<<! <
config<<= C
)<<C D
{<<D E
}<<E F
}== 
}>> ∏=
~C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Util\UnitUtils.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
static 
class 
	UnitUtils #
{ 
public 
static 
	BaseUnits 
GetUnits  (
(( )
List) -
<- .
MetricId. 6
>6 7
metrics8 ?
,? @
stringA G
displayElementLabelH [
)[ \
{ 	
if 
( 
metrics 
. 
Count 
<=  
$num! "
)" #
{ 
return 
new 
	BaseUnits $
($ %
)% &
;& '
} 
var 
firstMetricUnits  
=! "
metrics# *
[* +
$num+ ,
], -
.- .
Units. 3
;3 4
for 
( 
var 
i 
= 
$num 
; 
i 
< 
metrics  '
.' (
Count( -
;- .
++/ 1
i1 2
)2 3
{ 
if 
( 
! 
metrics 
[ 
i 
] 
.  
Units  %
.% &
Equals& ,
(, -
firstMetricUnits- =
)= >
)> ?
{   
return## $
HandleInconvertibleUnits## 3
(##3 4
metrics##4 ;
,##; <
displayElementLabel##= P
)##P Q
;##Q R
}$$ 
}%% 
return&& 
firstMetricUnits&& #
;&&# $
}'' 	
static** 
	BaseUnits** "
ChooseMostPopularUnits** /
(**/ 0
List**0 4
<**4 5
MetricId**5 =
>**= >
metrics**? F
)**F G
{++ 	

Dictionary,, 
<,, 
	BaseUnits,,  
,,,  !
int,," %
>,,% &

unitCounts,,' 1
=,,2 3
new,,4 7
(,,7 8
),,8 9
;,,9 :
foreach-- 
(-- 
var-- 
metric-- 
in--  "
metrics--# *
)--* +
{.. 
var// 
unit// 
=// 
metric// !
.//! "
Units//" '
;//' (
if00 
(00 

unitCounts00 
.00 
ContainsKey00 *
(00* +
unit00+ /
)00/ 0
)000 1
{11 

unitCounts22 
[22 
unit22 #
]22# $
++22$ &
;22& '
}33 
else44 
{55 

unitCounts66 
.66 
Add66 "
(66" #
unit66# '
,66' (
$num66) *
)66* +
;66+ ,
}77 
}88 
var99 
maxCount99 
=99 
$num99 
;99 
var:: 
maxCountUnit:: 
=:: 
new:: "
	BaseUnits::# ,
(::, -
)::- .
;::. /
foreach;; 
(;; 
var;; 
(;; 
unit;; 
,;; 
count;;  %
);;% &
in;;' )

unitCounts;;* 4
);;4 5
{<< 
if== 
(== 
count== 
>== 
maxCount== $
)==$ %
{>> 
maxCount?? 
=?? 
count?? $
;??$ %
maxCountUnit@@  
=@@! "
unit@@# '
;@@' (
}AA 
}BB 
returnCC 
maxCountUnitCC 
;CC  
}DD 	
staticHH 
	BaseUnitsHH $
HandleInconvertibleUnitsHH 1
(HH1 2
ListII 
<II 
MetricIdII 
>II 
metricsII "
,II" #
stringJJ 
displayElementLabelJJ &
)JJ& '
{KK 	
HashSetLL 
<LL 
	BaseUnitsLL 
>LL 
inconvertibleUnitsLL 1
=LL2 3
newLL4 7
(LL7 8
)LL8 9
;LL9 :
foreachMM 
(MM 
varMM 
metricMM 
inMM  "
metricsMM# *
)MM* +
{NN 
inconvertibleUnitsOO "
.OO" #
AddOO# &
(OO& '
metricOO' -
.OO- .
UnitsOO. 3
)OO3 4
;OO4 5
}PP 
varQQ $
inconvertibleUnitsStringQQ (
=QQ) *
StringQQ+ 1
.QQ1 2
JoinQQ2 6
(QQ6 7
$strQQ7 ;
,QQ; <
inconvertibleUnitsQQ= O
)QQO P
;QQP Q
DebugRR 
.RR 

LogWarningRR 
(RR 
$"RR 
$strRR /
{RR/ 0
displayElementLabelRR0 C
}RRC D
$strRRD X
"RRX Y
+RRZ [
$"SS 
$strSS 8
{SS8 9$
inconvertibleUnitsStringSS9 Q
}SSQ R
$strSSR T
"SST U
)SSU V
;SSV W
returnTT "
ChooseMostPopularUnitsTT )
(TT) *
metricsTT* 1
)TT1 2
;TT2 3
}UU 	
publicWW 
staticWW 
boolWW %
ShouldDisplayAsPercentageWW 4
(WW4 5
ListWW5 9
<WW9 :
MetricIdWW: B
>WWB C
metricsWWD K
,WWK L
stringWWM S
displayElementLabelWWT g
)WWg h
{XX 	
ifYY 
(YY 
metricsYY 
.YY 
CountYY 
<=YY  
$numYY! "
)YY" #
{ZZ 
return[[ 
false[[ 
;[[ 
}\\ 
var^^ 4
(firstMetricShouldBeDisplayedAsPercentage^^ 8
=^^9 :
metrics^^; B
[^^B C
$num^^C D
]^^D E
.^^E F
DisplayAsPercentage^^F Y
;^^Y Z
foraa 
(aa 
varaa 
iaa 
=aa 
$numaa 
;aa 
iaa 
<aa 
metricsaa  '
.aa' (
Countaa( -
;aa- .
++aa/ 1
iaa1 2
)aa2 3
{bb 
ifcc 
(cc 
!cc 
metricscc 
[cc 
icc 
]cc 
.cc  
DisplayAsPercentagecc  3
.cc3 4
Equalscc4 :
(cc: ;4
(firstMetricShouldBeDisplayedAsPercentagecc; c
)ccc d
)ccd e
{dd 
returngg 0
$HandleMismatchedDisplayAsPercentagesgg ?
(gg? @
metricsgg@ G
,ggG H
displayElementLabelggI \
)gg\ ]
;gg] ^
}hh 
}ii 
returnjj 4
(firstMetricShouldBeDisplayedAsPercentagejj ;
;jj; <
}kk 	
staticmm 
boolmm 0
$HandleMismatchedDisplayAsPercentagesmm 8
(mm8 9
Listnn 
<nn 
MetricIdnn 
>nn 
metricsnn "
,nn" #
stringoo 
displayElementLabeloo &
)oo& '
{pp 	
Debugqq 
.qq 

LogWarningqq 
(qq 
$"qq 
$strqq /
{qq/ 0
displayElementLabelqq0 C
}qqC D
$strqqD X
"qqX Y
+qqZ [
$strrr b
+rrc d
$strss `
)ss` a
;ssa b
returntt 
falsett 
;tt 
}uu 	
}vv 
}ww â
•C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Configuration\Extensions\NetStatsMonitorConfiguration.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
static 
class 2
&NetStatsMonitorConfigurationExtensions @
{ 
internal 
static 
int &
GetHistoryRequirementsHash 6
(6 7
this7 ;(
NetStatsMonitorConfiguration< X
configY _
)_ `
{ 	
int 
hashCode 
= 
$num 
; 
foreach 
( 
var 
displayElement '
in( *
config+ 1
.1 2
DisplayElements2 A
)A B
{ 
hashCode 
= 
HashCode #
.# $
Combine$ +
(+ ,
hashCode, 4
,4 5
displayElement6 D
.D E&
GetHistoryRequirementsHashE _
(_ `
)` a
)a b
;b c
} 
return 
hashCode 
; 
} 	
} 
} î
§C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Configuration\Extensions\DisplayElementConfiguration.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
public 

static 
class 1
%DisplayElementConfigurationExtensions =
{ 
internal 
static 
int &
GetHistoryRequirementsHash 6
(6 7
this7 ;'
DisplayElementConfiguration< W
configX ^
)^ _
{ 	
var 
hashCode 
= 
$num 
; 
foreach 
( 
var 
metricId !
in" $
config% +
.+ ,
Stats, 1
)1 2
{ 
hashCode 
= 
HashCode #
.# $
Combine$ +
(+ ,
hashCode, 4
,4 5
metricId6 >
.> ?
GetHashCode? J
(J K
)K L
)L M
;M N
} 
hashCode 
= 
HashCode 
.  
Combine  '
(' (
hashCode( 0
,0 1
config2 8
.8 9
SampleCount9 D
,D E
configF L
.L M
HalfLifeM U
)U V
;V W
return 
hashCode 
; 
} 	
} 
} ê
éC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\NoDataReceivedVisualElement.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class '
NoDataReceivedVisualElement .
:/ 0
VisualElement1 >
{ 
Label 
m_Label 
= 
new 
( 
) 
; 
internal '
NoDataReceivedVisualElement ,
(, -
)- .
{ 	
AddToClassList 
( 
UssClassNames (
.( )
k_DisplayElement) 9
)9 :
;: ;
AddToClassList 
( 
UssClassNames (
.( )
k_NoDataReceived) 9
)9 :
;: ;
Add 
( 
m_Label 
) 
; 
m_Label 
. 
AddToClassList "
(" #
UssClassNames# 0
.0 1!
k_NoDataReceivedLabel1 F
)F G
;G H
} 	
internal 
void 
Update 
( 
double #$
secondsSinceDataReceived$ <
)< =
{ 	
var '
wholeSecondsSinceLastUpdate +
=, -$
secondsSinceDataReceived. F
.F G
ToStringG O
(O P
$strP T
)T U
;U V
m_Label 
. 
text 
= 
$" 
$str 2
{2 3'
wholeSecondsSinceLastUpdate3 N
}N O
$strO W
"W X
;X Y
} 	
}   
}!! «/
ÜC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\GraphContent.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class 
GraphContent 
:  !
VisualElement" /
{ 
GraphBuffers 
	m_Buffers 
=  
new! $
($ %
)% &
;& '
GraphParameters 
m_Parameters $
;$ %
IGraphRenderer 

m_Renderer !
;! "
Rect 
m_GraphContentRect 
;  
public 
GraphContent 
( 
) 
{ 	
m_GraphContentRect 
=  
contentRect! ,
;, -!
generateVisualContent   !
+=  " $#
OnGenerateVisualContent  % <
;  < =
}!! 	
public## 
void## 
UpdateConfiguration## '
(##' ('
DisplayElementConfiguration##( C
config##D J
)##J K
{$$ 	
var%% 
newParameters%% 
=%% 
new%%  #
GraphParameters%%$ 3
{&& 
	StatCount'' 
='' 
config'' "
.''" #
Stats''# (
.''( )
Count'') .
,''. /
SamplesPerStat(( 
=((  
config((! '
.((' (
GraphConfiguration((( :
.((: ;
SampleCount((; F
,((F G
})) 
;)) 
	m_Buffers** 
.** 
UpdateConfiguration** )
(**) *
m_Parameters*** 6
,**6 7
newParameters**8 E
,**E F
config**G M
.**M N
GraphConfiguration**N `
.**` a
VariableColors**a o
)**o p
;**p q
m_Parameters++ 
=++ 
newParameters++ (
;++( )
switch,, 
(,, 
config,, 
.,, 
Type,, 
),,  
{-- 
case.. 
DisplayElementType.. '
...' (
	LineGraph..( 1
:..1 2
if// 
(// 

m_Renderer// "
is//# %
not//& )
LineGraphRenderer//* ;
)//; <
{00 

m_Renderer11 "
=11# $
new11% (
LineGraphRenderer11) :
(11: ;
)11; <
;11< =
}22 
break33 
;33 
case44 
DisplayElementType44 '
.44' (
StackedAreaGraph44( 8
:448 9
if55 
(55 

m_Renderer55 "
is55# %
not55& )$
StackedAreaGraphRenderer55* B
)55B C
{66 

m_Renderer77 "
=77# $
new77% ($
StackedAreaGraphRenderer77) A
(77A B
)77B C
;77C D
}88 
break99 
;99 
}:: 

m_Renderer;; 
.;; 
UpdateConfiguration;; *
(;;* +
config;;+ 1
);;1 2
;;;2 3
}<< 	
public>> 
	MinAndMax>> 
UpdateDisplayData>> *
(>>* +
MultiStatHistory?? 
history?? $
,??$ %
List@@ 
<@@ 
MetricId@@ 
>@@ 
stats@@  
,@@  !
floatAA 
minPlotValueAA 
,AA 
floatBB 
maxPlotValueBB 
)BB 
{CC 	
ifDD 
(DD 

m_RendererDD 
==DD 
nullDD "
)DD" #
{EE 
returnFF 
newFF 
(FF 
)FF 
;FF 
}GG 
m_GraphContentRectHH 
=HH  
contentRectHH! ,
;HH, -
varII 
minAndMaxPlotValueII "
=II# $

m_RendererII% /
.II/ 0
UpdateVerticesII0 >
(II> ?
historyJJ 
,JJ 
statsKK 
,KK 
minPlotValueLL 
,LL 
maxPlotValueMM 
,MM 
m_ParametersNN 
,NN 
renderBoundsXMinOO  
:OO  !
m_GraphContentRectOO" 4
.OO4 5
xMinOO5 9
,OO9 :
renderBoundsXMaxPP  
:PP  !
m_GraphContentRectPP" 4
.PP4 5
xMaxPP5 9
,PP9 :
renderBoundsYMinTT  
:TT  !
m_GraphContentRectTT" 4
.TT4 5
yMaxTT5 9
,TT9 :
renderBoundsYMaxUU  
:UU  !
m_GraphContentRectUU" 4
.UU4 5
yMinUU5 9
,UU9 :
	m_BuffersWW 
.WW 
VerticesWW "
)WW" #
;WW# $
MarkDirtyRepaintXX 
(XX 
)XX 
;XX 
returnYY 
minAndMaxPlotValueYY %
;YY% &
}ZZ 	
void\\ #
OnGenerateVisualContent\\ $
(\\$ %!
MeshGenerationContext\\% :
mgc\\; >
)\\> ?
{]] 	
if^^ 
(^^ 
mgc^^ 
==^^ 
null^^ 
)^^ 
{__ 
return`` 
;`` 
}aa 
varbb 
currenctRectbb 
=bb 
contentRectbb *
;bb* +
ifcc 
(cc 
m_GraphContentRectcc "
!=cc# %
currenctRectcc& 2
)cc2 3
{dd 
RescalePlotee 
(ee 
)ee 
;ee 
m_GraphContentRectff "
=ff# $
currenctRectff% 1
;ff1 2
}gg 
	m_Buffershh 
.hh (
WriteToMeshGenerationContexthh 2
(hh2 3
mgchh3 6
)hh6 7
;hh7 8
}ii 	
voidkk 
RescalePlotkk 
(kk 
)kk 
{ll 	
}nn 	
}oo 
}pp ¿Y
åC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\GraphVisualElement.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class 
GraphVisualElement %
:& '
VisualElement( 5
{ 
List 
< 
MetricId 
> 
m_Stats 
; 
int 
m_SampleCount 
; 
GraphXAxisType 
m_XAxisType "
=# $
GraphXAxisType% 3
.3 4
Samples4 ;
;; <
	BaseUnits 
m_YAxisUnits 
; 
bool &
m_YAxisDisplayAsPercentage '
;' (
	MinAndMax 
m_PlotRange 
; 
readonly   
Label   
m_Label   
=    
new  ! $
(  $ %
)  % &
;  & '
readonly"" 
VisualElement"" 
m_GraphAndYAxis"" .
=""/ 0
new""1 4
(""4 5
)""5 6
;""6 7
readonly## 
GraphContent## 
	m_Content## '
=##( )
new##* -
(##- .
)##. /
;##/ 0
readonly$$ 
GraphAxisLabels$$  
m_YAxisLabels$$! .
=$$/ 0
new$$1 4
($$4 5
)$$5 6
;$$6 7
readonly&& 
GraphAxisLabels&&  
m_XAxisLabels&&! .
=&&/ 0
new&&1 4
(&&4 5
)&&5 6
;&&6 7
readonly(( 
GraphLegend(( 
m_Legend(( %
=((& '
new((( +
(((+ ,
)((, -
;((- .
internal** 
GraphVisualElement** #
(**# $
)**$ %
{++ 	
AddToClassList,, 
(,, 
UssClassNames,, (
.,,( )
k_DisplayElement,,) 9
),,9 :
;,,: ;
AddToClassList-- 
(-- 
UssClassNames-- (
.--( )
k_Graph--) 0
)--0 1
;--1 2
m_Label// 
.// 
AddToClassList// "
(//" #
UssClassNames//# 0
.//0 1!
k_DisplayElementLabel//1 F
)//F G
;//G H
m_GraphAndYAxis11 
.11 
AddToClassList11 *
(11* +
UssClassNames11+ 8
.118 9
k_GraphAndYAxis119 H
)11H I
;11I J
	m_Content22 
.22 
AddToClassList22 $
(22$ %
UssClassNames22% 2
.222 3
k_GraphContents223 B
)22B C
;22C D
m_XAxisLabels33 
.33 
AddToClassList33 (
(33( )
UssClassNames33) 6
.336 7
k_GraphXAxis337 C
)33C D
;33D E
m_YAxisLabels44 
.44 
AddToClassList44 (
(44( )
UssClassNames44) 6
.446 7
k_GraphYAxis447 C
)44C D
;44D E
Add66 
(66 
m_Label66 
)66 
;66 
m_GraphAndYAxis88 
.88 
Add88 
(88  
	m_Content88  )
)88) *
;88* +
m_GraphAndYAxis99 
.99 
Add99 
(99  
m_YAxisLabels99  -
)99- .
;99. /
Add:: 
(:: 
m_GraphAndYAxis:: 
)::  
;::  !
Add<< 
(<< 
m_XAxisLabels<< 
)<< 
;<< 
Add== 
(== 
m_Legend== 
)== 
;== 
m_XAxisLabels?? 
.?? 
MaxLabelMarginRight?? -
=??. /
m_YAxisLabels??0 =
.??= >
contentRect??> I
.??I J
width??J O
;??O P
m_YAxisLabels@@ 
.@@ 
RegisterCallback@@ *
(@@* +
(@@+ , 
GeometryChangedEvent@@, @
geometryChangeEvent@@A T
)@@T U
=>@@V X
{AA 
varDD 
newWidthDD 
=DD 
geometryChangeEventDD 2
.DD2 3
newRectDD3 :
.DD: ;
widthDD; @
;DD@ A
m_XAxisLabelsEE 
.EE 
MaxLabelMarginRightEE 1
=EE2 3
newWidthEE4 <
;EE< =
}FF 
)FF 
;FF 
}GG 	
internalII 
voidII 
UpdateConfigurationII )
(II) *'
DisplayElementConfigurationII* E
configIIF L
)IIL M
{JJ 	
varKK 
detailsKK 
=KK 
configKK  
.KK  !
GraphConfigurationKK! 3
;KK3 4
m_StatsMM 
=MM 
newMM 
ListMM 
<MM 
MetricIdMM '
>MM' (
(MM( )
configMM) /
.MM/ 0
StatsMM0 5
)MM5 6
;MM6 7
m_SampleCountNN 
=NN 
detailsNN #
.NN# $
SampleCountNN$ /
;NN/ 0
m_XAxisTypeOO 
=OO 
detailsOO !
.OO! "
	XAxisTypeOO" +
;OO+ ,
m_LabelQQ 
.QQ 
textQQ 
=QQ 
configQQ !
.QQ! "
LabelQQ" '
;QQ' (
m_LabelUU 
.UU 
EnableInClassListUU %
(UU% &
UssClassNamesUU& 3
.UU3 4&
k_DisplayElementLabelEmptyUU4 N
,UUN O
StringUUP V
.UUV W
IsNullOrWhiteSpaceUUW i
(UUi j
configUUj p
.UUp q
LabelUUq v
)UUv w
)UUw x
;UUx y
	m_ContentWW 
.WW 
UpdateConfigurationWW )
(WW) *
configWW* 0
)WW0 1
;WW1 2
m_YAxisUnitsYY 
=YY 
	UnitUtilsYY $
.YY$ %
GetUnitsYY% -
(YY- .
m_StatsYY. 5
,YY5 6
m_LabelYY7 >
.YY> ?
textYY? C
)YYC D
;YYD E&
m_YAxisDisplayAsPercentageZZ &
=ZZ' (
	UnitUtils[[ 
.[[ %
ShouldDisplayAsPercentage[[ 3
([[3 4
m_Stats[[4 ;
,[[; <
m_Label[[= D
.[[D E
text[[E I
)[[I J
;[[J K
m_YAxisLabels]] 
.]] 
MinLabel]] "
=]]# $
$"]]% '
$str]]' )
{]]) *
m_YAxisUnits]]* 6
}]]6 7
"]]7 8
;]]8 9
switch__ 
(__ 
m_XAxisType__ 
)__  
{`` 
caseaa 
GraphXAxisTypeaa #
.aa# $
Samplesaa$ +
:aa+ ,
m_XAxisLabelsbb !
.bb! "
	SetLabelsbb" +
(bb+ ,
$"bb, .
$strbb. /
{bb/ 0
m_SampleCountbb0 =
}bb= >
"bb> ?
,bb? @
$strbbA D
)bbD E
;bbE F
breakcc 
;cc 
casedd 
GraphXAxisTypedd #
.dd# $
Timedd$ (
:dd( )
m_XAxisLabelsee !
.ee! "
MaxLabelee" *
=ee+ ,
$stree- 2
;ee2 3
breakff 
;ff 
defaultgg 
:gg 
throwhh 
newhh 
ArgumentExceptionhh /
(hh/ 0
$"hh0 2
$strhh2 <
{hh< =
nameofhh= C
(hhC D
GraphXAxisTypehhD R
)hhR S
}hhS T
$strhhT U
{hhU V
m_XAxisTypehhV a
}hha b
"hhb c
)hhc d
;hhd e
}ii 
m_Legendkk 
.kk 
UpdateConfigurationkk (
(kk( )
configkk) /
)kk/ 0
;kk0 1
}ll 	
(oo 	
stringoo	 
,oo 
floatoo 
)oo 
ComputeYAxisBoundoo )
(oo) *
floatoo* /
	plotBoundoo0 9
)oo9 :
{pp 	
varqq 
mantissaAndExponentqq #
=qq$ %
GraphScalingUtilsqq& 7
.qq7 8"
NextLargestRoundNumberqq8 N
(qqN O
	plotBoundqqO X
)qqX Y
;qqY Z
varrr 
mantissarr 
=rr 
mantissaAndExponentrr .
.rr. /
Mantissarr/ 7
;rr7 8
varss 
displayStringss 
=ss 
NumericUtilsss  ,
.ss, -#
Base10ToDisplayNotationss- D
(ssD E
mantissaAndExponenttt #
,tt# $
significantDigitsuu !
:uu! "
mantissauu# +
==uu, .
MathFuu/ 4
.uu4 5
Flooruu5 :
(uu: ;
mantissauu; C
)uuC D
?uuE F
$numuuG H
:uuI J
$numuuK L
,uuL M
m_YAxisUnitsvv 
,vv &
m_YAxisDisplayAsPercentageww *
)ww* +
;ww+ ,
varxx 
valuexx 
=xx 
mantissaAndExponentxx +
.xx+ ,
GetValuexx, 4
(xx4 5
exponentBasexx5 A
:xxA B
$numxxC E
)xxE F
;xxF G
returnyy 
(yy 
displayStringyy !
,yy! "
valueyy# (
)yy( )
;yy) *
}zz 	
internal|| 
void|| 
UpdateDisplayData|| '
(||' (
MultiStatHistory||( 8
history||9 @
)||@ A
{}} 	
var
ÅÅ 
(
ÅÅ 
yAxisMinLabel
ÅÅ 
,
ÅÅ 
minPlotValue
ÅÅ  ,
)
ÅÅ, -
=
ÅÅ. /
ComputeYAxisBound
ÅÅ0 A
(
ÅÅA B
m_PlotRange
ÅÅB M
.
ÅÅM N
Min
ÅÅN Q
)
ÅÅQ R
;
ÅÅR S
var
ÇÇ 
(
ÇÇ 
yAxisMaxLabel
ÇÇ 
,
ÇÇ 
maxPlotValue
ÇÇ  ,
)
ÇÇ, -
=
ÇÇ. /
ComputeYAxisBound
ÇÇ0 A
(
ÇÇA B
m_PlotRange
ÇÇB M
.
ÇÇM N
Max
ÇÇN Q
)
ÇÇQ R
;
ÇÇR S
m_PlotRange
ÑÑ 
=
ÑÑ 
	m_Content
ÑÑ #
.
ÑÑ# $
UpdateDisplayData
ÑÑ$ 5
(
ÑÑ5 6
history
ÑÑ6 =
,
ÑÑ= >
m_Stats
ÑÑ? F
,
ÑÑF G
minPlotValue
ÑÑH T
,
ÑÑT U
maxPlotValue
ÑÑV b
)
ÑÑb c
;
ÑÑc d
m_YAxisLabels
ÜÜ 
.
ÜÜ 
	SetLabels
ÜÜ #
(
ÜÜ# $
yAxisMinLabel
ÜÜ$ 1
,
ÜÜ1 2
yAxisMaxLabel
ÜÜ3 @
)
ÜÜ@ A
;
ÜÜA B
if
àà 
(
àà 
m_XAxisType
àà 
==
àà 
GraphXAxisType
àà -
.
àà- .
Time
àà. 2
)
àà2 3
{
ââ 
var
ää 
timeSpan
ää 
=
ää 
history
ää &
.
ää& '$
TimeSpanOfLastNSamples
ää' =
(
ää= >
m_SampleCount
ää> K
)
ääK L
;
ääL M
m_XAxisLabels
ãã 
.
ãã 
MinLabel
ãã &
=
ãã' (
$"
ãã) +
$str
ãã+ ,
{
ãã, -
timeSpan
ãã- 5
:
ãã5 6
$str
ãã6 :
}
ãã: ;
$str
ãã; =
"
ãã= >
;
ãã> ?
}
åå 
}
çç 	
}
éé 
}èè Ã~
ãC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\LineGraphRenderer.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class 
LineGraphRenderer $
:% &
IGraphRenderer' 5
{ 
internal 
float 
LineThickness $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
void 
UpdateConfiguration '
(' ('
DisplayElementConfiguration( C
configD J
)J K
{ 	
LineThickness 
= 
config "
?" #
.# $
GraphConfiguration$ 6
?6 7
.7 8"
LineGraphConfiguration8 N
?N O
.O P
LineThicknessP ]
??^ `
$numa b
;b c
} 	
public   
	MinAndMax   
UpdateVertices   '
(  ' (
MultiStatHistory!! 
history!! $
,!!$ %
List"" 
<"" 
MetricId"" 
>"" 
stats""  
,""  !
float## 
yAxisMin## 
,## 
float$$ 
yAxisMax$$ 
,$$ 
GraphParameters%% 
graphParams%% '
,%%' (
float&& 
renderBoundsXMin&& "
,&&" #
float'' 
renderBoundsXMax'' "
,''" #
float(( 
renderBoundsYMin(( "
,((" #
float)) 
renderBoundsYMax)) "
,))" #
Vertex** 
[** 
]** 
vertices** 
)** 
{++ 	
ifYY 
(YY 
graphParamsYY 
.YY 
SamplesPerStatYY *
<YY+ ,
$numYY- .
)YY. /
{ZZ 
return[[ 
new[[ 
	MinAndMax[[ $
([[$ %
)[[% &
;[[& '
}\\ 
if]] 
(]] 
LineThickness]] 
<=]]  
$num]]! #
)]]# $
{^^ 
return__ 
new__ 
	MinAndMax__ $
(__$ %
)__% &
;__& '
}`` 
varee "
renderBoundsYMinActualee &
=ee' (
Mathee) -
.ee- .
Minee. 1
(ee1 2
renderBoundsYMinee2 B
,eeB C
renderBoundsYMaxeeD T
)eeT U
;eeU V
varff "
renderBoundsYMaxActualff &
=ff' (
Mathff) -
.ff- .
Maxff. 1
(ff1 2
renderBoundsYMinff2 B
,ffB C
renderBoundsYMaxffD T
)ffT U
;ffU V
varhh 
halfLineThicknesshh !
=hh" #
$numhh$ (
*hh) *
LineThicknesshh+ 8
;hh8 9
varjj 
xScalejj 
=jj 
(jj 
renderBoundsXMaxjj *
-jj+ ,
renderBoundsXMinjj- =
)jj= >
/jj? @
(jjA B
graphParamsjjB M
.jjM N
SamplesPerStatjjN \
-jj] ^
$numjj_ `
)jj` a
;jja b
varkk 
yScalekk 
=kk 
(kk 
renderBoundsYMaxkk *
-kk+ ,
renderBoundsYMinkk- =
)kk= >
/kk? @
yAxisMaxkkA I
;kkI J
varmm 
sampleValueMinmm 
=mm  
$nummm! #
;mm# $
varnn 
sampleValueMaxnn 
=nn  
$numnn! #
;nn# $
floatoo 
	GetSampleoo 
(oo 

RingBufferoo &
<oo& '
floatoo' ,
>oo, -
valuesoo. 4
,oo4 5
intoo6 9
ioo: ;
)oo; <
{pp 
varqq 
sampleUnclampedqq #
=qq$ %
valuesqq& ,
.qq, -
GetValueOrDefaultqq- >
(qq> ?
iqq? @
)qq@ A
;qqA B
sampleValueMinrr 
=rr  
MathFrr! &
.rr& '
Minrr' *
(rr* +
sampleValueMinrr+ 9
,rr9 :
sampleUnclampedrr; J
)rrJ K
;rrK L
sampleValueMaxss 
=ss  
MathFss! &
.ss& '
Maxss' *
(ss* +
sampleValueMaxss+ 9
,ss9 :
sampleUnclampedss; J
)ssJ K
;ssK L
vartt 
sampleClampedtt !
=tt" #
MathFtt$ )
.tt) *
Mintt* -
(tt- .
sampleUnclampedtt. =
,tt= >
yAxisMaxtt? G
)ttG H
;ttH I
returnuu 
sampleClampeduu $
;uu$ %
}vv 
varxx 
xScaleInversexx 
=xx 
$numxx  "
/xx# $
xScalexx% +
;xx+ ,
varzz 
verticesPerStatzz 
=zz  !
GraphBufferszz" .
.zz. /
k_VerticesPerSamplezz/ B
*zzC D
graphParamszzE P
.zzP Q
SamplesPerStatzzQ _
;zz_ `
for{{ 
({{ 
var{{ 
	statIndex{{ 
={{  
$num{{! "
;{{" #
	statIndex{{$ -
<{{. /
graphParams{{0 ;
.{{; <
	StatCount{{< E
;{{E F
++{{G I
	statIndex{{I R
){{R S
{|| 
var}} 
statId}} 
=}} 
stats}} "
[}}" #
	statIndex}}# ,
]}}, -
;}}- .
var~~ 
statData~~ 
=~~ 
history~~ &
.~~& '
Data~~' +
[~~+ ,
statId~~, 2
]~~2 3
.~~3 4
RecentValues~~4 @
;~~@ A
var 
statVerticesBegin %
=& '
	statIndex( 1
*2 3
verticesPerStat4 C
;C D
int
ÉÉ 
i1
ÉÉ 
;
ÉÉ 
float
ÑÑ 
x1
ÑÑ 
;
ÑÑ 
float
ÖÖ 
y1
ÖÖ 
;
ÖÖ 
float
ÜÜ 
a01
ÜÜ 
;
ÜÜ 
float
áá 
b01a
áá 
;
áá 
float
àà 
	b01_delta
àà 
;
àà  
{
ää 
var
êê 
i0
êê 
=
êê 
$num
êê 
;
êê 
var
ëë 
sample0
ëë 
=
ëë  !
	GetSample
ëë" +
(
ëë+ ,
statData
ëë, 4
,
ëë4 5
i0
ëë6 8
)
ëë8 9
;
ëë9 :
var
íí 
x0
íí 
=
íí 
$num
íí 
;
íí  
var
ìì 
y0
ìì 
=
ìì 
sample0
ìì $
*
ìì% &
yScale
ìì' -
+
ìì. /
renderBoundsYMin
ìì0 @
;
ìì@ A
i1
ïï 
=
ïï 
$num
ïï 
;
ïï 
var
ññ 
sample1
ññ 
=
ññ  !
	GetSample
ññ" +
(
ññ+ ,
statData
ññ, 4
,
ññ4 5
i1
ññ6 8
)
ññ8 9
;
ññ9 :
x1
óó 
=
óó 
xScale
óó 
;
óó  
y1
òò 
=
òò 
sample1
òò  
*
òò! "
yScale
òò# )
+
òò* +
renderBoundsYMin
òò, <
;
òò< =
a01
°° 
=
°° 
(
°° 
y1
°° 
-
°° 
y0
°°  "
)
°°" #
*
°°$ %
xScaleInverse
°°& 3
;
°°3 4
var
¢¢ 
b01
¢¢ 
=
¢¢ 
y0
¢¢  
;
¢¢  !
	b01_delta
•• 
=
•• 
halfLineThickness
••  1
*
••2 3
MathF
••4 9
.
••9 :
Sqrt
••: >
(
••> ?
$num
••? @
+
••A B
a01
••C F
*
••G H
a01
••I L
)
••L M
;
••M N
b01a
ßß 
=
ßß 
b01
ßß 
+
ßß  
	b01_delta
ßß! *
;
ßß* +
var
©© 
p0VerticesBegin
©© '
=
©©( )
statVerticesBegin
©©* ;
;
©©; <
var
´´ 
y0a
´´ 
=
´´ 
Math
´´ "
.
´´" #
Clamp
´´# (
(
´´( )
y0
´´) +
+
´´, -
	b01_delta
´´. 7
,
´´7 8$
renderBoundsYMinActual
´´9 O
,
´´O P$
renderBoundsYMaxActual
´´Q g
)
´´g h
;
´´h i
var
¨¨ 
y0b
¨¨ 
=
¨¨ 
Math
¨¨ "
.
¨¨" #
Clamp
¨¨# (
(
¨¨( )
y0
¨¨) +
-
¨¨, -
	b01_delta
¨¨. 7
,
¨¨7 8$
renderBoundsYMinActual
¨¨9 O
,
¨¨O P$
renderBoundsYMaxActual
¨¨Q g
)
¨¨g h
;
¨¨h i
vertices
ÆÆ 
[
ÆÆ 
p0VerticesBegin
ÆÆ ,
+
ÆÆ- .
$num
ÆÆ/ 0
]
ÆÆ0 1
.
ÆÆ1 2
position
ÆÆ2 :
=
ÆÆ; <
new
ÆÆ= @
Vector3
ÆÆA H
(
ÆÆH I
x0
ÆÆI K
,
ÆÆK L
y0a
ÆÆM P
)
ÆÆP Q
;
ÆÆQ R
vertices
ØØ 
[
ØØ 
p0VerticesBegin
ØØ ,
+
ØØ- .
$num
ØØ/ 0
]
ØØ0 1
.
ØØ1 2
position
ØØ2 :
=
ØØ; <
new
ØØ= @
Vector3
ØØA H
(
ØØH I
x0
ØØI K
,
ØØK L
y0b
ØØM P
)
ØØP Q
;
ØØQ R
}
∞∞ 
for
≤≤ 
(
≤≤ 
;
≤≤ 
i1
≤≤ 
<
≤≤ 
graphParams
≤≤ '
.
≤≤' (
SamplesPerStat
≤≤( 6
-
≤≤7 8
$num
≤≤9 :
;
≤≤: ;
++
≤≤< >
i1
≤≤> @
)
≤≤@ A
{
≥≥ 
var
¥¥ 
i2
¥¥ 
=
¥¥ 
i1
¥¥ 
+
¥¥  !
$num
¥¥" #
;
¥¥# $
var
µµ 
sample2
µµ 
=
µµ  !
	GetSample
µµ" +
(
µµ+ ,
statData
µµ, 4
,
µµ4 5
i2
µµ6 8
)
µµ8 9
;
µµ9 :
var
∂∂ 
x2
∂∂ 
=
∂∂ 
i2
∂∂ 
*
∂∂  !
xScale
∂∂" (
;
∂∂( )
var
∑∑ 
y2
∑∑ 
=
∑∑ 
sample2
∑∑ $
*
∑∑% &
yScale
∑∑' -
+
∑∑. /
renderBoundsYMin
∑∑0 @
;
∑∑@ A
var
øø 
a12
øø 
=
øø 
(
øø 
y2
øø !
-
øø" #
y1
øø$ &
)
øø& '
*
øø( )
xScaleInverse
øø* 7
;
øø7 8
var
¿¿ 
b12
¿¿ 
=
¿¿ 
y2
¿¿  
-
¿¿! "
a12
¿¿# &
*
¿¿' (
x2
¿¿) +
;
¿¿+ ,
var
√√ 
	b12_delta
√√ !
=
√√" #
halfLineThickness
√√$ 5
*
√√6 7
MathF
√√8 =
.
√√= >
Sqrt
√√> B
(
√√B C
$num
√√C D
+
√√E F
a12
√√G J
*
√√K L
a12
√√M P
)
√√P Q
;
√√Q R
var
≈≈ 
b12a
≈≈ 
=
≈≈ 
b12
≈≈ "
+
≈≈# $
	b12_delta
≈≈% .
;
≈≈. /
var
»» 
x1a
»» 
=
»» 
MathF
»» #
.
»»# $
Abs
»»$ '
(
»»' (
a01
»»( +
-
»», -
a12
»». 1
)
»»1 2
<
»»3 4
$num
»»5 :
?
…… 
(
…… 
x1
…… 
-
…… 
a12
……  #
/
……$ %
	b12_delta
……& /
)
……/ 0
:
   
(
   
b12a
   
-
    !
b01a
  " &
)
  & '
/
  ( )
(
  * +
a01
  + .
-
  / 0
a12
  1 4
)
  4 5
;
  5 6
var
ÕÕ 
y1a
ÕÕ 
=
ÕÕ 
x1a
ÕÕ !
*
ÕÕ" #
a12
ÕÕ$ '
+
ÕÕ( )
b12a
ÕÕ* .
;
ÕÕ. /
var
““ 
x1b
““ 
=
““ 
$num
““ 
*
““  !
x1
““" $
-
““% &
x1a
““' *
;
““* +
var
”” 
y1b
”” 
=
”” 
$num
”” 
*
””  !
y1
””" $
-
””% &
y1a
””' *
;
””* +
y1a
÷÷ 
=
÷÷ 
Math
÷÷ 
.
÷÷ 
Clamp
÷÷ $
(
÷÷$ %
y1a
÷÷% (
,
÷÷( )$
renderBoundsYMinActual
÷÷* @
,
÷÷@ A$
renderBoundsYMaxActual
÷÷B X
)
÷÷X Y
;
÷÷Y Z
y1b
◊◊ 
=
◊◊ 
Math
◊◊ 
.
◊◊ 
Clamp
◊◊ $
(
◊◊$ %
y1b
◊◊% (
,
◊◊( )$
renderBoundsYMinActual
◊◊* @
,
◊◊@ A$
renderBoundsYMaxActual
◊◊B X
)
◊◊X Y
;
◊◊Y Z
var
ŸŸ 
p1VerticesBegin
ŸŸ '
=
ŸŸ( )
statVerticesBegin
ŸŸ* ;
+
ŸŸ< =
i1
ŸŸ> @
*
ŸŸA B
GraphBuffers
ŸŸC O
.
ŸŸO P!
k_VerticesPerSample
ŸŸP c
;
ŸŸc d
vertices
⁄⁄ 
[
⁄⁄ 
p1VerticesBegin
⁄⁄ ,
+
⁄⁄- .
$num
⁄⁄/ 0
]
⁄⁄0 1
.
⁄⁄1 2
position
⁄⁄2 :
=
⁄⁄; <
new
⁄⁄= @
Vector3
⁄⁄A H
(
⁄⁄H I
x1a
⁄⁄I L
,
⁄⁄L M
y1a
⁄⁄N Q
)
⁄⁄Q R
;
⁄⁄R S
vertices
€€ 
[
€€ 
p1VerticesBegin
€€ ,
+
€€- .
$num
€€/ 0
]
€€0 1
.
€€1 2
position
€€2 :
=
€€; <
new
€€= @
Vector3
€€A H
(
€€H I
x1b
€€I L
,
€€L M
y1b
€€N Q
)
€€Q R
;
€€R S
x1
›› 
=
›› 
x2
›› 
;
›› 
y1
ﬁﬁ 
=
ﬁﬁ 
y2
ﬁﬁ 
;
ﬁﬁ 
a01
ﬂﬂ 
=
ﬂﬂ 
a12
ﬂﬂ 
;
ﬂﬂ 
b01a
‡‡ 
=
‡‡ 
b12a
‡‡ 
;
‡‡  
	b01_delta
·· 
=
·· 
	b12_delta
··  )
;
··) *
}
‚‚ 
{
‰‰ 
var
ÈÈ 
y1a
ÈÈ 
=
ÈÈ 
Math
ÈÈ "
.
ÈÈ" #
Clamp
ÈÈ# (
(
ÈÈ( )
y1
ÈÈ) +
+
ÈÈ, -
	b01_delta
ÈÈ. 7
,
ÈÈ7 8$
renderBoundsYMinActual
ÈÈ9 O
,
ÈÈO P$
renderBoundsYMaxActual
ÈÈQ g
)
ÈÈg h
;
ÈÈh i
var
ÍÍ 
y1b
ÍÍ 
=
ÍÍ 
Math
ÍÍ "
.
ÍÍ" #
Clamp
ÍÍ# (
(
ÍÍ( )
y1
ÍÍ) +
-
ÍÍ, -
	b01_delta
ÍÍ. 7
,
ÍÍ7 8$
renderBoundsYMinActual
ÍÍ9 O
,
ÍÍO P$
renderBoundsYMaxActual
ÍÍQ g
)
ÍÍg h
;
ÍÍh i
var
ÏÏ 
p1VerticesBegin
ÏÏ '
=
ÏÏ( )
statVerticesBegin
ÏÏ* ;
+
ÏÏ< =
i1
ÏÏ> @
*
ÏÏA B
GraphBuffers
ÏÏC O
.
ÏÏO P!
k_VerticesPerSample
ÏÏP c
;
ÏÏc d
vertices
ÌÌ 
[
ÌÌ 
p1VerticesBegin
ÌÌ ,
+
ÌÌ- .
$num
ÌÌ/ 0
]
ÌÌ0 1
.
ÌÌ1 2
position
ÌÌ2 :
=
ÌÌ; <
new
ÌÌ= @
Vector3
ÌÌA H
(
ÌÌH I
x1
ÌÌI K
,
ÌÌK L
y1a
ÌÌM P
)
ÌÌP Q
;
ÌÌQ R
vertices
ÓÓ 
[
ÓÓ 
p1VerticesBegin
ÓÓ ,
+
ÓÓ- .
$num
ÓÓ/ 0
]
ÓÓ0 1
.
ÓÓ1 2
position
ÓÓ2 :
=
ÓÓ; <
new
ÓÓ= @
Vector3
ÓÓA H
(
ÓÓH I
x1
ÓÓI K
,
ÓÓK L
y1b
ÓÓM P
)
ÓÓP Q
;
ÓÓQ R
}
ÔÔ 
}
 
return
ÒÒ 
new
ÒÒ 
	MinAndMax
ÒÒ  
(
ÒÒ  !
sampleValueMin
ÒÒ! /
,
ÒÒ/ 0
sampleValueMax
ÒÒ1 ?
)
ÒÒ? @
;
ÒÒ@ A
}
ÚÚ 	
}
ÛÛ 
}ÙÙ ª

ÄC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Util\StringUtils.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
public 

static 
class 
StringUtils #
{ 
public 
static 
string 
LabelFormatting ,
(, -
string- 3
label4 9
,9 :
IReadOnlyCollection; N
<N O
MetricIdO W
>W X
statsY ^
)^ _
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
label* /
)/ 0
)0 1
{ 
return 
! 
stats 
. 
Any !
(! "
)" #
? 
$str ,
: 
string 
. 
Join !
(! "
$str" &
,& '
stats( -
)- .
;. /
} 
return 
label 
; 
} 	
} 
} ñ3
àC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Graphing\GraphColorUtils.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
.@ A
GraphingA I
{ 
internal 
static 
class 
GraphColorUtils )
{ 
static 
readonly 
Color32 
[  
]  !(
k_ColorSeries_ColorBlindSafe" >
=? @
newA D
[D E
]E F
{ 	
new 
Color32 
( 
$num 
, 
$num  
,  !
$num" %
,% &
$num' *
)* +
,+ ,
new 
Color32 
( 
$num 
, 
$num  
,  !
$num" %
,% &
$num' *
)* +
,+ ,
new 
Color32 
( 
$num 
, 
$num  
,  !
$num" %
,% &
$num' *
)* +
,+ ,
new 
Color32 
( 
$num 
, 
$num  
,  !
$num" %
,% &
$num' *
)* +
,+ ,
} 	
;	 

static   
readonly   
Color32   
[    
]    ! 
k_ColorSeries_Larger  " 6
=  7 8
new  9 <
[  < =
]  = >
{!! 	
new"" 
Color32"" 
("" 
$num"" 
,"" 
$num""  
,""  !
$num""" %
,""% &
$num""' *
)""* +
,""+ ,
new## 
Color32## 
(## 
$num## 
,## 
$num##  
,##  !
$num##" %
,##% &
$num##' *
)##* +
,##+ ,
new$$ 
Color32$$ 
($$ 
$num$$ 
,$$ 
$num$$  
,$$  !
$num$$" %
,$$% &
$num$$' *
)$$* +
,$$+ ,
new%% 
Color32%% 
(%% 
$num%% 
,%% 
$num%%  
,%%  !
$num%%" %
,%%% &
$num%%' *
)%%* +
,%%+ ,
new&& 
Color32&& 
(&& 
$num&& 
,&& 
$num&&  
,&&  !
$num&&" %
,&&% &
$num&&' *
)&&* +
,&&+ ,
new'' 
Color32'' 
('' 
$num'' 
,'' 
$num''  
,''  !
$num''" %
,''% &
$num''' *
)''* +
,''+ ,
new(( 
Color32(( 
((( 
$num(( 
,(( 
$num((  
,((  !
$num((" %
,((% &
$num((' *
)((* +
,((+ ,
new)) 
Color32)) 
()) 
$num)) 
,)) 
$num))  
,))  !
$num))" %
,))% &
$num))' *
)))* +
,))+ ,
new** 
Color32** 
(** 
$num** 
,** 
$num**  
,**  !
$num**" %
,**% &
$num**' *
)*** +
,**+ ,
new++ 
Color32++ 
(++ 
$num++ 
,++ 
$num++  
,++  !
$num++" %
,++% &
$num++' *
)++* +
,+++ ,
new,, 
Color32,, 
(,, 
$num,, 
,,, 
$num,,  
,,,  !
$num,," %
,,,% &
$num,,' *
),,* +
,,,+ ,
new-- 
Color32-- 
(-- 
$num-- 
,-- 
$num--  
,--  !
$num--" %
,--% &
$num--' *
)--* +
,--+ ,
}.. 	
;..	 

const00 
float00 $
k_ColorDefaultSaturation00 ,
=00- .
$num00/ 3
;003 4
const55 
float55 
k_ColorDefaultValue55 '
=55( )
$num55* /
;55/ 0
static77 
Color3277 "
GetRandomColorForIndex77 -
(77- .
int77. 1
	statIndex772 ;
)77; <
{88 	
const99 
int99 
k_randomPrime099 $
=99% &
$num99' )
;99) *
const:: 
int:: 
k_randomPrime1:: $
=::% &
$num::' )
;::) *
const;; 
int;; 
k_randomPrime2;; $
=;;% &
$num;;' *
;;;* +
var<< 
hue<< 
=<< 
(<< 
(<< 
(<< 
	statIndex<< "
+<<# $
k_randomPrime0<<% 3
)<<3 4
*<<5 6
k_randomPrime1<<7 E
)<<E F
%<<G H
k_randomPrime2<<I W
)<<W X
/<<Y Z
k_randomPrime2<<[ i
;<<i j
return== 
Color== 
.== 
HSVToRGB== !
(==! "
hue==" %
,==% &$
k_ColorDefaultSaturation==' ?
,==? @
k_ColorDefaultValue==A T
)==T U
;==U V
}>> 	
public@@ 
static@@ 
Color32@@ 
GetColorForIndex@@ .
(@@. /
int@@/ 2
	statIndex@@3 <
,@@< =
int@@> A
totalStatCount@@B P
)@@P Q
{AA 	
ifBB 
(BB 
totalStatCountBB 
<=BB !(
k_ColorSeries_ColorBlindSafeBB" >
.BB> ?
LengthBB? E
)BBE F
{CC 
returnDD (
k_ColorSeries_ColorBlindSafeDD 3
[DD3 4
	statIndexDD4 =
]DD= >
;DD> ?
}EE 
ifHH 
(HH 
	statIndexHH 
<HH  
k_ColorSeries_LargerHH 0
.HH0 1
LengthHH1 7
)HH7 8
{II 
returnJJ  
k_ColorSeries_LargerJJ +
[JJ+ ,
	statIndexJJ, 5
]JJ5 6
;JJ6 7
}KK 
returnNN "
GetRandomColorForIndexNN )
(NN) *
	statIndexNN* 3
)NN3 4
;NN4 5
}OO 	
}PP 
}QQ Ï6
ÜC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Stats\StatsAccumulator.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal"" 
class"" 
StatsAccumulator"" #
{## 
[$$ 	
NotNull$$	 
]$$ 
readonly%% 

Dictionary%% 
<%% 
MetricId%% $
,%%$ %
float%%& +
>%%+ ,
m_Sums%%- 3
=%%4 5
new%%6 9
(%%9 :
)%%: ;
;%%; <
['' 	
NotNull''	 
]'' 
readonly(( 

Dictionary(( 
<(( 
MetricId(( $
,(($ %
int((& )
>(() *
m_GaugeCounts((+ 8
=((9 :
new((; >
(((> ?
)((? @
;((@ A
internal** 
bool** 
HasAccumulatedStats** )
=>*** , 
LastAccumulationTime**- A
>**B C
LastCollectionTime**D V
;**V W
internal++ 
double++  
LastAccumulationTime++ ,
{++- .
get++/ 2
;++2 3
set++4 7
;++7 8
}++9 :
=++; <
double++= C
.++C D
MinValue++D L
;++L M
internal,, 
double,, 
LastCollectionTime,, *
{,,+ ,
get,,- 0
;,,0 1
set,,2 5
;,,5 6
},,7 8
=,,9 :
double,,; A
.,,A B
MinValue,,B J
;,,J K
internal.. 
bool.. 
Contains.. 
(.. 
MetricId.. '
metricId..( 0
)..0 1
{// 	
return00 
m_Sums00 
.00 
ContainsKey00 %
(00% &
metricId00& .
)00. /
;00/ 0
}11 	
internal33 
IEnumerable33 
<33 
MetricId33 %
>33% &
Metrics33' .
=>33/ 1
m_Sums332 8
.338 9
Keys339 =
;33= >
internal88 
void88 

Accumulate88  
(88  !
MetricId88! )
metricId88* 2
,882 3
float884 9
value88: ?
)88? @
{99 	
m_Sums:: 
[:: 
metricId:: 
]:: 
+=:: 
value::  %
;::% &
if;; 
(;; 
m_GaugeCounts;; 
.;; 
TryGetValue;; )
(;;) *
metricId;;* 2
,;;2 3
out;;4 7
var;;8 ;

gaugeCount;;< F
);;F G
);;G H
{<< 
m_GaugeCounts== 
[== 
metricId== &
]==& '
===( )

gaugeCount==* 4
+==5 6
$num==7 8
;==8 9
}>> 
}?? 	
internalAA 
floatAA 
CollectAA 
(AA 
MetricIdAA '
metricAA( .
)AA. /
{BB 	
ifCC 
(CC 
m_SumsCC 
.CC 
TryGetValueCC "
(CC" #
metricCC# )
,CC) *
outCC+ .
varCC/ 2
sumCC3 6
)CC6 7
)CC7 8
{DD 
m_SumsEE 
[EE 
metricEE 
]EE 
=EE  
$numEE! "
;EE" #
ifGG 
(GG 
m_GaugeCountsGG !
.GG! "
TryGetValueGG" -
(GG- .
metricGG. 4
,GG4 5
outGG6 9
varGG: =
countGG> C
)GGC D
)GGD E
{HH 
m_GaugeCountsII !
[II! "
metricII" (
]II( )
=II* +
$numII, -
;II- .
returnLL 
sumLL 
/LL  
MathLL! %
.LL% &
MaxLL& )
(LL) *
countLL* /
,LL/ 0
$numLL1 2
)LL2 3
;LL3 4
}MM 
returnNN 
sumNN 
;NN 
}OO 
returnPP 
$numPP 
;PP 
}QQ 	
internalSS 
voidSS 
UpdateRequirementsSS (
(SS( )(
MultiStatHistoryRequirementsSS) E
requirementsSSF R
)SSR S
{TT 	
varUU 
unrequiredSumsUU 
=UU  
m_SumsUU! '
.UU' (
KeysUU( ,
.VV 
WhereVV 
(VV 
keyVV 
=>VV 
!VV 
requirementsVV +
.VV+ ,
DataVV, 0
.VV0 1
ContainsKeyVV1 <
(VV< =
keyVV= @
)VV@ A
)VVA B
.WW 
ToListWW 
(WW 
)WW 
;WW 
foreachXX 
(XX 
varXX 
keyXX 
inXX 
unrequiredSumsXX  .
)XX. /
{YY 
m_SumsZZ 
.ZZ 
RemoveZZ 
(ZZ 
keyZZ !
)ZZ! "
;ZZ" #
}[[ 
var\\ 
unrequiredGauges\\  
=\\! "
m_GaugeCounts\\# 0
.\\0 1
Keys\\1 5
.]] 
Where]] 
(]] 
key]] 
=>]] 
!]] 
requirements]] +
.]]+ ,
Data]], 0
.]]0 1
ContainsKey]]1 <
(]]< =
key]]= @
)]]@ A
)]]A B
.^^ 
ToList^^ 
(^^ 
)^^ 
;^^ 
foreach__ 
(__ 
var__ 
key__ 
in__ 
unrequiredGauges__  0
)__0 1
{`` 
m_GaugeCountsaa 
.aa 
Removeaa $
(aa$ %
keyaa% (
)aa( )
;aa) *
}bb 
foreachcc 
(cc 
varcc 
metricIdcc !
incc" $
requirementscc% 1
.cc1 2
Datacc2 6
.cc6 7
Keyscc7 ;
)cc; <
{dd 
ifee 
(ee 
!ee 
m_Sumsee 
.ee 
ContainsKeyee '
(ee' (
metricIdee( 0
)ee0 1
)ee1 2
{ff 
m_Sumsgg 
.gg 
Addgg 
(gg 
metricIdgg '
,gg' (
$numgg) +
)gg+ ,
;gg, -
}hh 
ifii 
(ii 
metricIdii 
.ii 

MetricKindii '
==ii( *

MetricKindii+ 5
.ii5 6
Gaugeii6 ;
&&ii< >
!jj 
m_GaugeCountsjj "
.jj" #
ContainsKeyjj# .
(jj. /
metricIdjj/ 7
)jj7 8
)jj8 9
{kk 
m_GaugeCountsll !
.ll! "
Addll" %
(ll% &
metricIdll& .
,ll. /
$numll0 1
)ll1 2
;ll2 3
}mm 
}nn 
}oo 	
}pp 
}qq ±
íC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Stats\MultiStatHistoryRequirements.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class (
MultiStatHistoryRequirements /
{ 
[ 	
NotNull	 
] 
internal 

Dictionary 
< 
MetricId $
,$ %#
StatHistoryRequirements& =
>= >
Data? C
{D E
getF I
;I J
}K L
=M N
newO R
(R S
)S T
;T U
internal 
static (
MultiStatHistoryRequirements 4
FromConfiguration5 F
(F G(
NetStatsMonitorConfigurationG c
configurationd q
)q r
{ 	(
MultiStatHistoryRequirements ((
multiStatHistoryRequirements) E
=F G
newH K
(K L
)L M
;M N
if 
( 
configuration 
==  
null! %
)% &
{ 
return (
multiStatHistoryRequirements 3
;3 4
} 
var!! 
allStatRequirements!! #
=!!$ %(
multiStatHistoryRequirements!!& B
.!!B C
Data!!C G
;!!G H
foreach"" 
("" 
var"" 
displayElement"" '
in""( *
configuration""+ 8
.""8 9
DisplayElements""9 H
)""H I
{## 
var$$  
recentValuesCapacity$$ (
=$$) *
displayElement$$+ 9
.$$9 :
SampleCount$$: E
;$$E F
var%% 
decayConstant%% !
=%%" #
displayElement%%$ 2
.%%2 3
DecayConstant%%3 @
;%%@ A
foreach&& 
(&& 
var&& 
metricId&& %
in&&& (
displayElement&&) 7
.&&7 8
Stats&&8 =
)&&= >
{'' 
if(( 
((( 
!(( 
allStatRequirements(( ,
.((, -
ContainsKey((- 8
(((8 9
metricId((9 A
)((A B
)((B C
{)) 
allStatRequirements** +
[**+ ,
metricId**, 4
]**4 5
=**6 7
new**8 ;#
StatHistoryRequirements**< S
(**S T
decayConstants++ *
:++* +
new++, /
HashSet++0 7
<++7 8
double++8 >
>++> ?
(++? @
)++@ A
,++A B
sampleCount,, '
:,,' (
$num,,) *
),,* +
;,,+ ,
}-- 
var.. 
requirements.. $
=..% &(
multiStatHistoryRequirements..' C
...C D
Data..D H
[..H I
metricId..I Q
]..Q R
;..R S
requirements00  
.00  !
SampleCount00! ,
=00- .
Math00/ 3
.003 4
Max004 7
(007 8
requirements11 $
.11$ %
SampleCount11% 0
,110 1 
recentValuesCapacity22 ,
)22, -
;22- .
if44 
(44 
decayConstant44 %
.44% &
HasValue44& .
)44. /
{55 
requirements66 $
.66$ %
DecayConstants66% 3
.663 4
Add664 7
(667 8
decayConstant668 E
.66E F
Value66F K
)66K L
;66L M
}77 
}88 
}99 
return:: (
multiStatHistoryRequirements:: /
;::/ 0
};; 	
}<< 
}== ¨B
ÜC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Stats\MultiStatHistory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class 
MultiStatHistory #
{ 
[ 	
NotNull	 
] 
readonly 

Dictionary 
< 
MetricId $
,$ %
StatHistory& 1
>1 2
m_Data3 9
=: ;
new< ?
(? @
)@ A
;A B
[ 	
NotNull	 
] 
internal 
IReadOnlyDictionary $
<$ %
MetricId% -
,- .
StatHistory/ :
>: ;
Data< @
=>A C
m_DataD J
;J K
["" 	
NotNull""	 
]"" 
readonly## 

RingBuffer## 
<## 
double## "
>##" #
m_TimeStamps##$ 0
=##1 2
new##3 6
(##6 7
$num##7 8
)##8 9
;##9 :
internal%% 
MultiStatHistory%% !
(%%! "
)%%" #
{%%# $
}%%$ %
internal'' 
MultiStatHistory'' !
(''! "
MetricId''" *
metricId''+ 3
,''3 4
StatHistory''5 @
statHistory''A L
)''L M
{(( 	
m_Data)) 
[)) 
metricId)) 
])) 
=)) 
statHistory)) *
;))* +
}** 	
public,, 
void,, 
Clear,, 
(,, 
),, 
{-- 	
m_Data.. 
... 
Clear.. 
(.. 
).. 
;.. 
}// 	
public11 
void11 
Collect11 
(11 
StatsAccumulator11 ,
statsAccumulator11- =
,11= >
double11? E
time11F J
)11J K
{22 	
m_TimeStamps33 
.33 
PushBack33 !
(33! "
time33" &
)33& '
;33' (
foreach44 
(44 
var44 
(44 
metricId44 "
,44" #
history44$ +
)44+ ,
in44- /
m_Data440 6
)446 7
{55 
var66 
collectedValue66 "
=66# $
statsAccumulator66% 5
.665 6
Collect666 =
(66= >
metricId66> F
)66F G
;66G H
history77 
.77 
Update77 
(77 
metricId77 '
,77' (
collectedValue77) 7
,777 8
time779 =
)77= >
;77> ?
}88 
statsAccumulator99 
.99 
LastCollectionTime99 /
=990 1
time992 6
;996 7
}:: 	
internal== 
void== 
UpdateRequirements== (
(==( )(
MultiStatHistoryRequirements==) E
requirements==F R
)==R S
{>> 	
var?? 
allStatRequirements?? #
=??$ %
requirements??& 2
.??2 3
Data??3 7
;??7 8
varBB 
statsToRemoveBB 
=BB 
m_DataBB  &
.BB& '
KeysBB' +
.CC 
WhereCC 
(CC 
metricIdCC 
=>CC  "
!CC# $
allStatRequirementsCC$ 7
.CC7 8
ContainsKeyCC8 C
(CCC D
metricIdCCD L
)CCL M
)CCM N
.DD 
ToListDD 
(DD 
)DD 
;DD 
foreachEE 
(EE 
varEE 
statNameEE !
inEE" $
statsToRemoveEE% 2
)EE2 3
{FF 
m_DataGG 
.GG 
RemoveGG 
(GG 
statNameGG &
)GG& '
;GG' (
}HH 
varKK 
maxSampleCountKK 
=KK  
$numKK! "
;KK" #
foreachLL 
(LL 
varLL 
(LL 
statNameLL "
,LL" #
statRequirementsLL$ 4
)LL4 5
inLL6 8
allStatRequirementsLL9 L
)LLL M
{MM 
maxSampleCountNN 
=NN  
MathNN! %
.NN% &
MaxNN& )
(NN) *
maxSampleCountNN* 8
,NN8 9
statRequirementsNN: J
.NNJ K
SampleCountNNK V
)NNV W
;NNW X
ifOO 
(OO 
m_DataOO 
.OO 
ContainsKeyOO &
(OO& '
statNameOO' /
)OO/ 0
)OO0 1
{PP 
m_DataQQ 
[QQ 
statNameQQ #
]QQ# $
.QQ$ %
UpdateRequirementsQQ% 7
(QQ7 8
statRequirementsQQ8 H
)QQH I
;QQI J
}RR 
elseSS 
{TT 
m_DataUU 
[UU 
statNameUU #
]UU# $
=UU% &
newUU' *
StatHistoryUU+ 6
(UU6 7
statRequirementsUU7 G
)UUG H
;UUH I
}VV 
}WW 
m_TimeStampsXX 
.XX 
CapacityXX !
=XX" #
maxSampleCountXX$ 2
;XX2 3
}YY 	
internal[[ 
double[[ 
?[[ &
GetSimpleMovingAverageRate[[ 3
([[3 4
MetricId[[4 <
metricId[[= E
,[[E F
int[[G J
maxSampleCount[[K Y
,[[Y Z
double[[[ a
time[[b f
)[[f g
{\\ 	
if]] 
(]] 
!]] 
Data]] 
.]] 
TryGetValue]] !
(]]! "
metricId]]" *
,]]* +
out]], /
StatHistory]]0 ;
statHistory]]< G
)]]G H
)]]H I
{^^ 
return__ 
null__ 
;__ 
}`` 
varbb 
sampleCountbb 
=bb 
Mathbb "
.bb" #
Minbb# &
(bb& '
maxSampleCountbb' 5
,bb5 6
statHistorybb7 B
.bbB C
RecentValuesbbC O
.bbO P
LengthbbP V
)bbV W
;bbW X
ifcc 
(cc 
sampleCountcc 
<=cc 
$numcc  
)cc  !
{dd 
returnee 
nullee 
;ee 
}ff 
vargg 
	sampleSumgg 
=gg 
statHistorygg '
.gg' (
RecentValuesgg( 4
.gg4 5
SumLastNgg5 =
(gg= >
sampleCountgg> I
)ggI J
;ggJ K
varii 
	startTimeii 
=ii 
m_TimeStampsii (
[ii( )
^ii) *
(ii* +
sampleCountii+ 6
-ii7 8
$numii9 :
)ii: ;
]ii; <
;ii< =
varjj 
timeSpanjj 
=jj 
timejj 
-jj  !
	startTimejj" +
;jj+ ,
varll 
ratell 
=ll 
	sampleSumll  
/ll! "
timeSpanll# +
;ll+ ,
returnmm 
ratemm 
;mm 
}nn 	
internalqq 
doubleqq "
TimeSpanOfLastNSamplesqq .
(qq. /
intqq/ 2
sampleCountqq3 >
)qq> ?
{rr 	
varss 
validSampleCountss  
=ss! "
Mathss# '
.ss' (
Minss( +
(ss+ ,
sampleCountss, 7
,ss7 8
m_TimeStampsss9 E
.ssE F
LengthssF L
)ssL M
;ssM N
iftt 
(tt 
validSampleCounttt  
<=tt! #
$numtt$ %
)tt% &
{uu 
returnvv 
$numvv 
;vv 
}ww 
varxx 
firstTimeStampxx 
=xx  
m_TimeStampsxx! -
[xx- .
^xx. /
(xx/ 0
validSampleCountxx0 @
-xxA B
$numxxC D
)xxD E
]xxE F
;xxF G
varyy 
lastTimeStampyy 
=yy 
m_TimeStampsyy  ,
[yy, -
^yy- .
$numyy. /
]yy/ 0
;yy0 1
returnzz 
lastTimeStampzz  
-zz! "
firstTimeStampzz# 1
;zz1 2
}{{ 	
}|| 
}}} ”î
ïC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Component\RnsmComponentImplementation.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class '
RnsmComponentImplementation .
{ 
const 
double (
k_MinStatsCollectionInterval 1
=2 3
$num4 8
;8 9
const 
double /
#k_NoDataReceivedMessageDelaySeconds 8
=9 :
$num; <
;< =
static 
readonly 
PanelSettings %"
k_DefaultPanelSettings& <
;< =
static 
readonly 

StyleSheet "
k_DefaultStyleSheet# 6
;6 7
internal!! 
event!! 
Action!! 
OnDisplayUpdate!! -
;!!- .
double## #
m_LastDisplayUpdateTime## &
=##' (
double##) /
.##/ 0
MinValue##0 8
;##8 9
[&& 	
NotNull&&	 
]&& 
internal'' 
Func'' 
<'' 
double'' 
>'' 
GetCurrentTime'' ,
{''- .
get''/ 2
;''2 3
set''4 7
;''7 8
}''9 :
=''; <
(''= >
)''> ?
=>''@ B
Time''C G
.''G H
timeAsDouble''H T
;''T U
[)) 	
NotNull))	 
])) 
readonly** 
StatsAccumulator** !
m_StatsAccumulator**" 4
=**5 6
new**7 :
(**: ;
)**; <
;**< =
[,, 	
NotNull,,	 
],, 
readonly-- 
MultiStatHistory-- !
m_MultiStatHistory--" 4
=--5 6
new--7 :
(--: ;
)--; <
;--< =
[// 	
	CanBeNull//	 
]// 

StyleSheet00 
m_CustomStyleSheet00 %
;00% &
int33 
?33 '
m_PreviousConfigurationHash33 (
;33( )
int66 
?66 -
!m_PreviousHistoryRequirementsHash66 .
=66/ 0
$num661 2
;662 3
internal88 

UIDocument88 
UiDoc88 !
{88" #
get88$ '
;88' (
private88) 0
set881 4
;884 5
}886 7
[:: 	
NotNull::	 
]:: 
internal;; 
RnsmVisualElement;; "
RnsmVisualElement;;# 4
{;;5 6
get;;7 :
;;;: ;
};;< =
=;;> ?
new;;@ C
(;;C D
);;D E
;;;E F
static== '
RnsmComponentImplementation== *
(==* +
)==+ ,
{>> 	"
k_DefaultPanelSettings?? "
=??# $
	Resources@@ 
.@@ 
Load@@ 
<@@ 
PanelSettings@@ ,
>@@, -
(@@- .
StringConstants@@. =
.@@= >'
k_ResourcePrefixRnsmDefault@@> Y
+@@Z [
$str@@\ k
)@@k l
;@@l m
k_DefaultStyleSheetAA 
=AA  !
	ResourcesBB 
.BB 
LoadBB 
<BB 

StyleSheetBB )
>BB) *
(BB* +
StringConstantsBB+ :
.BB: ;'
k_ResourcePrefixRnsmDefaultBB; V
+BBW X
$strBBY e
)BBe f
;BBf g
}CC 	
internalEE 
voidEE 
UpdateUiVisibilityEE (
(EE( )
boolEE) -
enabledEE. 5
,EE5 6
boolEE7 ;
visibleEE< C
)EEC D
{FF 	
RnsmVisualElementGG 
.GG 
visibleGG %
=GG& '
enabledGG( /
&&GG0 2
visibleGG3 :
;GG: ;
}HH 	
internalJJ '
RnsmComponentImplementationJJ ,
(JJ, -
)JJ- .
{KK 	
RnsmMetricObserverLL 
.LL 
InstanceLL '
.LL' (
OnMetricsReceivedLL( 9
+=LL: <
OnMetricsReceivedLL= N
;LLN O
}MM 	
voidOO 

SetupUiDocOO 
(OO 
)OO 
{PP 	
ifQQ 
(QQ 
UiDocQQ 
==QQ 
nullQQ 
)QQ 
{RR 
varSS 
uiDocGameObjectSS #
=SS$ %
newSS& )

GameObjectSS* 4
(SS4 5
)SS5 6
;SS6 7
uiDocGameObjectTT 
.TT  
nameTT  $
=TT% &
$strTT' E
;TTE F
uiDocGameObjectUU 
.UU  
	hideFlagsUU  )
|=UU* ,
	HideFlagsUU- 6
.UU6 7
HideInHierarchyUU7 F
|UUG H
	HideFlagsUUI R
.UUR S
HideInInspectorUUS b
|UUc d
	HideFlagsUUe n
.UUn o
DontSaveUUo w
;UUw x
UiDocWW 
=WW 
uiDocGameObjectWW '
.WW' (
AddComponentWW( 4
<WW4 5

UIDocumentWW5 ?
>WW? @
(WW@ A
)WWA B
;WWB C
}XX 
varZZ 
rootVisualElementZZ !
=ZZ" #
UiDocZZ$ )
.ZZ) *
rootVisualElementZZ* ;
;ZZ; <
if[[ 
([[ 
RnsmVisualElement[[ !
.[[! "
parent[[" (
!=[[) +
rootVisualElement[[, =
)[[= >
{\\ 
rootVisualElement]] !
?]]! "
.]]" #
Add]]# &
(]]& '
RnsmVisualElement]]' 8
)]]8 9
;]]9 :
}^^ 
RnsmVisualElement`` 
.`` 
styleSheets`` )
.``) *
Add``* -
(``- .
k_DefaultStyleSheet``. A
)``A B
;``B C
}aa 	
internalcc 
voidcc 
SetupAndConfigurecc '
(cc' ((
NetStatsMonitorConfigurationdd (
configurationdd) 6
,dd6 7!
PositionConfigurationee !
positionee" *
,ee* +

StyleSheetff 

styleSheetff !
,ff! "
PanelSettingsgg !
panelSettingsOverridegg /
,gg/ 0
doublehh 
maxRefreshRatehh !
)hh! "
{ii 	

SetupUiDocjj 
(jj 
)jj 
;jj 
ifkk 
(kk 
configurationkk 
!=kk  
nullkk! %
)kk% &
{ll 
configurationmm 
.mm &
RecomputeConfigurationHashmm 8
(mm8 9
)mm9 :
;mm: ;
}nn 
	Configureoo 
(oo 
configurationoo #
,oo# $
positionoo% -
,oo- .

styleSheetoo/ 9
,oo9 :!
panelSettingsOverrideoo; P
)ooP Q
;ooQ R
var}} 
curFrameTime}} 
=}} 
GetCurrentTime}} -
(}}- .
)}}. /
;}}/ 0
var~~ 
prevFrameTime~~ 
=~~ 
curFrameTime~~  ,
-~~- .
(~~/ 0
$num~~0 1
/~~2 3
maxRefreshRate~~4 B
)~~B C
-~~D E
Double~~F L
.~~L M
Epsilon~~M T
;~~T U#
m_LastDisplayUpdateTime #
=$ %
prevFrameTime& 3
;3 4 
m_StatsAccumulator
ÄÄ 
.
ÄÄ "
LastAccumulationTime
ÄÄ 3
=
ÄÄ4 5
prevFrameTime
ÄÄ6 C
;
ÄÄC D 
m_StatsAccumulator
ÅÅ 
.
ÅÅ  
LastCollectionTime
ÅÅ 1
=
ÅÅ2 3
prevFrameTime
ÅÅ4 A
;
ÅÅA B
}
ÇÇ 	
internal
ÑÑ 
void
ÑÑ 
Teardown
ÑÑ 
(
ÑÑ 
)
ÑÑ  
{
ÖÖ 	 
RnsmMetricObserver
ÜÜ 
.
ÜÜ 
Instance
ÜÜ '
.
ÜÜ' (
OnMetricsReceived
ÜÜ( 9
-=
ÜÜ: <
OnMetricsReceived
ÜÜ= N
;
ÜÜN O 
m_MultiStatHistory
àà 
.
àà 
Clear
àà $
(
àà$ %
)
àà% &
;
àà& '
if
ää 
(
ää 
UiDoc
ää 
!=
ää 
null
ää 
&&
ää  
UiDoc
ää! &
.
ää& '

gameObject
ää' 1
!=
ää2 4
null
ää5 9
)
ää9 :
{
ãã 
if
åå 
(
åå 
Application
åå 
.
åå  
	isPlaying
åå  )
)
åå) *
{
çç 
Object
éé 
.
éé 
Destroy
éé "
(
éé" #
UiDoc
éé# (
.
éé( )

gameObject
éé) 3
)
éé3 4
;
éé4 5
}
èè 
else
êê 
{
ëë 
Object
íí 
.
íí 
DestroyImmediate
íí +
(
íí+ ,
UiDoc
íí, 1
.
íí1 2

gameObject
íí2 <
)
íí< =
;
íí= >
}
ìì 
}
îî 
}
ïï 	
internal
óó 
void
óó 
	Configure
óó 
(
óó  *
NetStatsMonitorConfiguration
òò (
configuration
òò) 6
,
òò6 7#
PositionConfiguration
ôô !#
positionConfiguration
ôô" 7
,
ôô7 8

StyleSheet
öö 
customStyleSheet
öö '
,
öö' (
PanelSettings
õõ #
panelSettingsOverride
õõ /
)
õõ/ 0
{
úú 	
if
ùù 
(
ùù 
customStyleSheet
ùù  
!=
ùù! # 
m_CustomStyleSheet
ùù$ 6
)
ùù6 7
{
ûû 
if
üü 
(
üü  
m_CustomStyleSheet
üü &
!=
üü' )
null
üü* .
)
üü. /
{
†† 
RnsmVisualElement
°° %
.
°°% &
styleSheets
°°& 1
.
°°1 2
Remove
°°2 8
(
°°8 9 
m_CustomStyleSheet
°°9 K
)
°°K L
;
°°L M
}
¢¢ 
if
££ 
(
££ 
customStyleSheet
££ $
!=
££% '
null
££( ,
)
££, -
{
§§ 
RnsmVisualElement
•• %
.
••% &
styleSheets
••& 1
.
••1 2
Add
••2 5
(
••5 6
customStyleSheet
••6 F
)
••F G
;
••G H
}
¶¶  
m_CustomStyleSheet
ßß "
=
ßß# $
customStyleSheet
ßß% 5
;
ßß5 6
}
®® 
UiDoc
™™ 
.
™™ 
panelSettings
™™ 
=
™™  !#
panelSettingsOverride
™™" 7
!=
™™8 :
null
™™; ?
?
´´ #
panelSettingsOverride
´´ '
:
¨¨ $
k_DefaultPanelSettings
¨¨ (
;
¨¨( )
RnsmVisualElement
ÆÆ 
.
ÆÆ 
ApplyPosition
ÆÆ +
(
ÆÆ+ ,#
positionConfiguration
ÆÆ, A
)
ÆÆA B
;
ÆÆB C7
)ApplyConfigurationChangesIfHashHasChanged
∞∞ 5
(
∞∞5 6
configuration
∞∞6 C
)
∞∞C D
;
∞∞D E
}
±± 	
void
≥≥ 7
)ApplyConfigurationChangesIfHashHasChanged
≥≥ 6
(
≥≥6 7*
NetStatsMonitorConfiguration
≥≥7 S
configuration
≥≥T a
)
≥≥a b
{
¥¥ 	
int
∂∂ 
?
∂∂ "
newConfigurationHash
∂∂ %
=
∂∂& '
configuration
∂∂( 5
!=
∂∂6 8
null
∂∂9 =
?
∂∂> ?
configuration
∂∂@ M
.
∂∂M N
ConfigurationHash
∂∂N _
:
∂∂` a
null
∂∂b f
;
∂∂f g
if
∑∑ 
(
∑∑ "
newConfigurationHash
∑∑ $
!=
∑∑% ')
m_PreviousConfigurationHash
∑∑( C
)
∑∑C D
{
∏∏ 
RnsmVisualElement
ππ !
.
ππ! "!
UpdateConfiguration
ππ" 5
(
ππ5 6
configuration
ππ6 C
)
ππC D
;
ππD E
int
ºº 
?
ºº (
newHistoryRequirementsHash
ºº /
=
ºº0 1
configuration
ºº2 ?
!=
ºº@ B
null
ººC G
?
ººH I
configuration
ººJ W
.
ººW X(
GetHistoryRequirementsHash
ººX r
(
ººr s
)
ººs t
:
ººu v
null
ººw {
;
ºº{ |
if
ææ 
(
ææ (
newHistoryRequirementsHash
ææ .
!=
ææ/ 1/
!m_PreviousHistoryRequirementsHash
ææ2 S
)
ææS T
{
øø /
!m_PreviousHistoryRequirementsHash
¿¿ 5
=
¿¿6 7(
newHistoryRequirementsHash
¿¿8 R
;
¿¿R S
var
¡¡ 
requirements
¡¡ $
=
¡¡% &*
MultiStatHistoryRequirements
¡¡' C
.
¡¡C D
FromConfiguration
¡¡D U
(
¡¡U V
configuration
¡¡V c
)
¡¡c d
;
¡¡d e 
m_StatsAccumulator
¬¬ &
.
¬¬& ' 
UpdateRequirements
¬¬' 9
(
¬¬9 :
requirements
¬¬: F
)
¬¬F G
;
¬¬G H 
m_MultiStatHistory
√√ &
.
√√& ' 
UpdateRequirements
√√' 9
(
√√9 :
requirements
√√: F
)
√√F G
;
√√G H
}
ƒƒ )
m_PreviousConfigurationHash
∆∆ +
=
∆∆, -"
newConfigurationHash
∆∆. B
;
∆∆B C
}
«« 
}
…… 	
void
ÀÀ 0
"CollectStatsIfEnoughTimeHasElapsed
ÀÀ /
(
ÀÀ/ 0
double
ÀÀ0 6
time
ÀÀ7 ;
)
ÀÀ; <
{
ÃÃ 	
var
ÕÕ %
timeSinceLastCollection
ÕÕ '
=
ÕÕ( )
time
ÕÕ* .
-
ÕÕ/ 0 
m_StatsAccumulator
ÕÕ1 C
.
ÕÕC D 
LastCollectionTime
ÕÕD V
;
ÕÕV W
var
ŒŒ $
statsCollectionPending
ŒŒ &
=
ŒŒ' (%
timeSinceLastCollection
ŒŒ) @
>
ŒŒA B*
k_MinStatsCollectionInterval
ŒŒC _
;
ŒŒ_ `
if
œœ 
(
œœ 
!
œœ $
statsCollectionPending
œœ '
)
œœ' (
{
–– 
return
—— 
;
—— 
}
““  
m_MultiStatHistory
”” 
.
”” 
Collect
”” &
(
””& ' 
m_StatsAccumulator
””' 9
,
””9 :
time
””; ?
)
””? @
;
””@ A
}
‘‘ 	
void
÷÷ 
OnMetricsReceived
÷÷ 
(
÷÷ 
MetricCollection
÷÷ /
metrics
÷÷0 7
)
÷÷7 8
{
◊◊ 	
var
ÿÿ 
time
ÿÿ 
=
ÿÿ 
GetCurrentTime
ÿÿ %
(
ÿÿ% &
)
ÿÿ& '
;
ÿÿ' (0
"CollectStatsIfEnoughTimeHasElapsed
·· .
(
··. /
time
··/ 3
)
··3 4
;
··4 5
StatsAggregator
„„ 
.
„„ 3
%UpdateAccumulatorWithStatsFromMetrics
„„ A
(
„„A B
metrics
„„B I
,
„„I J 
m_StatsAccumulator
„„K ]
,
„„] ^
time
„„_ c
)
„„c d
;
„„d e
}
‰‰ 	
internal
ÊÊ 
void
ÊÊ 
Update
ÊÊ 
(
ÊÊ *
NetStatsMonitorConfiguration
ÊÊ 9
configuration
ÊÊ: G
,
ÊÊG H
double
ÊÊI O
maxRefreshRate
ÊÊP ^
)
ÊÊ^ _
{
ÁÁ 	7
)ApplyConfigurationChangesIfHashHasChanged
ËË 5
(
ËË5 6
configuration
ËË6 C
)
ËËC D
;
ËËD E
var
ÍÍ 
time
ÍÍ 
=
ÍÍ 
GetCurrentTime
ÍÍ %
(
ÍÍ% &
)
ÍÍ& '
;
ÍÍ' (
if
ÎÎ 
(
ÎÎ  
m_StatsAccumulator
ÎÎ "
.
ÎÎ" #!
HasAccumulatedStats
ÎÎ# 6
)
ÎÎ6 7
{
ÏÏ 0
"CollectStatsIfEnoughTimeHasElapsed
ÌÌ 2
(
ÌÌ2 3
time
ÌÌ3 7
)
ÌÌ7 8
;
ÌÌ8 9
}
ÓÓ 
var
ÔÔ (
timeSinceLastDisplayUpdate
ÔÔ *
=
ÔÔ+ ,
time
ÔÔ- 1
-
ÔÔ2 3%
m_LastDisplayUpdateTime
ÔÔ4 K
;
ÔÔK L
var
 "
displayUpdatePending
 $
=
% &
maxRefreshRate
' 5
*
6 7(
timeSinceLastDisplayUpdate
8 R
>=
S U
$num
V W
;
W X
if
ÒÒ 
(
ÒÒ 
!
ÒÒ "
displayUpdatePending
ÒÒ %
)
ÒÒ% &
{
ÚÚ 
return
ÛÛ 
;
ÛÛ 
}
ÙÙ 
var
ˆˆ 2
$statsCollectedSinceLastDisplayUpdate
ˆˆ 4
=
ˆˆ5 6 
m_StatsAccumulator
˜˜ "
.
˜˜" # 
LastCollectionTime
˜˜# 5
>
˜˜6 7%
m_LastDisplayUpdateTime
˜˜8 O
;
˜˜O P
if
¯¯ 
(
¯¯ 
!
¯¯ 2
$statsCollectedSinceLastDisplayUpdate
¯¯ 5
)
¯¯5 6
{
˘˘ 
var
˙˙ &
secondsSinceDataReceived
˙˙ ,
=
˙˙- .
time
˙˙/ 3
-
˙˙4 5 
m_StatsAccumulator
˙˙6 H
.
˙˙H I"
LastAccumulationTime
˙˙I ]
;
˙˙] ^
if
˚˚ 
(
˚˚ &
secondsSinceDataReceived
˚˚ ,
>
˚˚- .1
#k_NoDataReceivedMessageDelaySeconds
˚˚/ R
)
˚˚R S
{
¸¸ 
RnsmVisualElement
˝˝ %
.
˝˝% &+
DisplayDataNotReceivedMessage
˝˝& C
(
˝˝C D&
secondsSinceDataReceived
˝˝D \
)
˝˝\ ]
;
˝˝] ^
}
˛˛ 
}
ˇˇ 
else
ÄÄ 
{
ÅÅ 
RnsmVisualElement
ÇÇ !
.
ÇÇ! "
UpdateDisplayData
ÇÇ" 3
(
ÇÇ3 4 
m_MultiStatHistory
ÇÇ4 F
,
ÇÇF G
time
ÇÇH L
)
ÇÇL M
;
ÇÇM N
OnDisplayUpdate
ÉÉ 
?
ÉÉ  
.
ÉÉ  !
Invoke
ÉÉ! '
(
ÉÉ' (
)
ÉÉ( )
;
ÉÉ) *%
m_LastDisplayUpdateTime
ÑÑ '
=
ÑÑ( )
time
ÑÑ* .
;
ÑÑ. /
}
ÖÖ 
}
ÜÜ 	
public
àà 
void
àà 
AddCustomValue
àà "
(
àà" #
MetricId
àà# +
metricId
àà, 4
,
àà4 5
float
àà6 ;
value
àà< A
)
ààA B
{
ââ 	
if
ää 
(
ää 
!
ää  
m_StatsAccumulator
ää #
.
ää# $
Contains
ää$ ,
(
ää, -
metricId
ää- 5
)
ää5 6
)
ää6 7
{
ãã 
return
éé 
;
éé 
}
èè 
var
êê 
time
êê 
=
êê 
GetCurrentTime
êê %
(
êê% &
)
êê& '
;
êê' (0
"CollectStatsIfEnoughTimeHasElapsed
ôô .
(
ôô. /
time
ôô/ 3
)
ôô3 4
;
ôô4 5 
m_StatsAccumulator
õõ 
.
õõ 

Accumulate
õõ )
(
õõ) *
metricId
õõ* 2
,
õõ2 3
value
õõ4 9
)
õõ9 :
;
õõ: ; 
m_StatsAccumulator
úú 
.
úú "
LastAccumulationTime
úú 3
=
úú4 5
time
úú6 :
;
úú: ;
}
ùù 	
}
ûû 
}üü „
ÖC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Stats\StatsAggregator.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
static 
class 
StatsAggregator )
{ 
internal 
static 
void 1
%UpdateAccumulatorWithStatsFromMetrics B
(B C
MetricCollection 
metrics $
,$ %
StatsAccumulator 
statsAccumulator -
,- .
double 
time 
) 
{ 	
var 
	metricIds 
= 
new 
List  $
<$ %
MetricId% -
>- .
(. /
statsAccumulator/ ?
.? @
Metrics@ G
)G H
;H I
foreach   
(   
var   
metricId   !
in  " $
	metricIds  % .
)  . /
{!! 
var"" 

metricKind"" 
=""  
metricId""! )
."") *

MetricKind""* 4
;""4 5
switch## 
(## 

metricKind## "
)##" #
{$$ 
case%% 

MetricKind%% #
.%%# $
Counter%%$ +
:%%+ ,
{&& 
if'' 
('' 
metrics'' #
.''# $
TryGetCounter''$ 1
(''1 2
metricId''2 :
,'': ;
out''< ?
var''@ C
counter''D K
)''K L
)''L M
{(( 
statsAccumulator)) ,
.)), -

Accumulate))- 7
())7 8
metricId))8 @
,))@ A
counter))B I
.))I J
Value))J O
)))O P
;))P Q
}** 
else++ 
{,, 
var-- 

eventCount--  *
=--+ ,
metrics--- 4
.--4 5
GetEventCount--5 B
(--B C
metricId--C K
)--K L
;--L M
statsAccumulator.. ,
..., -

Accumulate..- 7
(..7 8
metricId..8 @
,..@ A

eventCount..B L
)..L M
;..M N
}// 
break00 
;00 
}11 
case22 

MetricKind22 #
.22# $
Gauge22$ )
:22) *
{33 
if44 
(44 
metrics44 #
.44# $
TryGetGauge44$ /
(44/ 0
metricId440 8
,448 9
out44: =
var44> A
gauge44B G
)44G H
)44H I
{55 
statsAccumulator66 ,
.66, -

Accumulate66- 7
(667 8
metricId668 @
,66@ A
(66B C
float66C H
)66H I
gauge66I N
.66N O
Value66O T
)66T U
;66U V
}77 
break88 
;88 
}99 
default:: 
::: 
throw;; 
new;; !!
NotSupportedException;;" 7
(;;7 8
$";;8 :
$str;;: D
{;;D E
nameof;;E K
(;;K L

MetricKind;;L V
);;V W
};;W X
$str;;X Y
{;;Y Z

metricKind;;Z d
};;d e
";;e f
);;f g
;;;g h
}<< 
}== 
statsAccumulator>> 
.>>  
LastAccumulationTime>> 1
=>>2 3
time>>4 8
;>>8 9
}?? 	
}@@ 
}AA œ2
ÅC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Stats\StatHistory.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class 
StatHistory 
{ 
public .
"ContinuousExponentialMovingAverage 1
[1 2
]2 3/
#ContinuousExponentialMovingAverages4 W
{X Y
getZ ]
;] ^
private_ f
setg j
;j k
}l m
public 

RingBuffer 
< 
float 
>  
RecentValues! -
{. /
get0 3
;3 4
}5 6
public"" 
float"" 
MostRecentValue"" $
=>""% '
RecentValues""( 4
.""4 5

MostRecent""5 ?
;""? @
public$$ 
StatHistory$$ 
($$ #
StatHistoryRequirements%% #
requirements%%$ 0
,%%0 1
float&& 0
$exponentialMovingAverageInitialValue&& 7
=&&8 9
$num&&: ;
)&&; <
{'' 	/
#ContinuousExponentialMovingAverages(( /
=((0 1
requirements((2 >
.)) 
DecayConstants)) 
.** 
Select** 
(** 
decayConstant** %
=>**& (
new**) ,.
"ContinuousExponentialMovingAverage**- O
(**O P
decayConstant**P ]
)**] ^
)**^ _
.++ 
ToArray++ 
(++ 
)++ 
;++ 
RecentValues,, 
=,, 
new,, 

RingBuffer,, )
<,,) *
float,,* /
>,,/ 0
(,,0 1
requirements,,1 =
.,,= >
SampleCount,,> I
),,I J
;,,J K
}-- 	
public// 
StatHistory// 
(// 

RingBuffer00 
<00 
float00 
>00 
recentValues00 *
,00* +.
"ContinuousExponentialMovingAverage11 .
[11. /
]11/ 0/
#continuousExponentialMovingAverages111 T
=11U V
null11W [
)11[ \
{22 	
RecentValues33 
=33 
recentValues33 '
;33' (/
#ContinuousExponentialMovingAverages44 /
=440 1/
#continuousExponentialMovingAverages442 U
;44U V
}55 	#
StatHistoryRequirements77 
GetRequirements77  /
(77/ 0
)770 1
{88 	
return:: 
new:: #
StatHistoryRequirements:: .
(::. //
#ContinuousExponentialMovingAverages;; 3
.;;3 4
Select;;4 :
(;;: ;
cema;;; ?
=>;;@ B
cema;;C G
.;;G H
DecayConstant;;H U
);;U V
,;;V W
RecentValues<< 
.<< 
Capacity<< %
)<<% &
;<<& '
}== 	
internalBB 
voidBB 
UpdateRequirementsBB (
(BB( )#
StatHistoryRequirementsBB) @
requirementsBBA M
)BBM N
{CC 	
RecentValuesFF 
.FF 
CapacityFF !
=FF" #
requirementsFF$ 0
.FF0 1
SampleCountFF1 <
;FF< =
varHH 
existingAveragesHH  
=HH! "/
#ContinuousExponentialMovingAveragesHH# F
;HHF G/
#ContinuousExponentialMovingAveragesII /
=II0 1
requirementsII2 >
.JJ 
DecayConstantsJJ 
.KK 
SelectKK 
(KK 
decayConstantKK %
=>KK& (
{LL 
varMM 
existingCemaMM $
=MM% &
existingAveragesMM' 7
.NN 
FirstOrDefaultNN '
(NN' (
existingCemaNN( 4
=>NN5 7
existingCemaNN8 D
.NND E
DecayConstantNNE R
==NNS U
decayConstantNNV c
)NNc d
;NNd e
returnOO 
existingCemaOO '
!=OO( *
nullOO+ /
?PP 
newPP .
"ContinuousExponentialMovingAveragePP @
(PP@ A
decayConstantQQ )
:QQ) *
decayConstantQQ+ 8
,QQ8 9
valueRR !
:RR! "
existingCemaRR# /
.RR/ 0
	LastValueRR0 9
,RR9 :
timeSS  
:SS  !
existingCemaSS" .
.SS. /
LastTimeSS/ 7
)SS7 8
:TT 
newTT .
"ContinuousExponentialMovingAverageTT @
(TT@ A
decayConstantTTA N
)TTN O
;TTO P
}UU 
)UU 
.VV 
ToArrayVV 
(VV 
)VV 
;VV 
}WW 	
publicYY 
voidYY 
UpdateYY 
(YY 
MetricIdYY #
metricYY$ *
,YY* +
floatYY, 1
valueYY2 7
,YY7 8
doubleYY9 ?
timeYY@ D
)YYD E
{ZZ 	
switch[[ 
([[ 
metric[[ 
.[[ 

MetricKind[[ %
)[[% &
{\\ 
case]] 

MetricKind]] 
.]]  
Counter]]  '
:]]' (
{^^ 
foreach__ 
(__ 
var__  
cema__! %
in__& (/
#ContinuousExponentialMovingAverages__) L
)__L M
{`` 
cemaaa 
.aa 
AddSampleForCounteraa 0
(aa0 1
valueaa1 6
,aa6 7
timeaa8 <
)aa< =
;aa= >
}bb 
breakcc 
;cc 
}dd 
caseee 

MetricKindee 
.ee  
Gaugeee  %
:ee% &
{ff 
foreachgg 
(gg 
vargg  
cemagg! %
ingg& (/
#ContinuousExponentialMovingAveragesgg) L
)ggL M
{hh 
cemaii 
.ii 
AddSampleForGaugeii .
(ii. /
valueii/ 4
,ii4 5
timeii6 :
)ii: ;
;ii; <
}jj 
breakkk 
;kk 
}ll 
}mm 
RecentValuesnn 
.nn 
PushBacknn !
(nn! "
valuenn" '
)nn' (
;nn( )
}oo 	
}pp 
}qq Â

äC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\Metrics\RnsmMetricObserver.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class 
RnsmMetricObserver %
:& '
IMetricObserver( 7
{ 
private 
RnsmMetricObserver "
(" #
)# $
{$ %
}% &
public 
static 
RnsmMetricObserver (
Instance) 1
{2 3
get4 7
;7 8
}9 :
=; <
new= @
RnsmMetricObserverA S
(S T
)T U
;U V
public 
event 
Action 
< 
MetricCollection ,
>, -
OnMetricsReceived. ?
;? @
public 
void 
Observe 
( 
MetricCollection ,

collection- 7
)7 8
{ 	
OnMetricsReceived 
? 
. 
Invoke %
(% &

collection& 0
)0 1
;1 2
} 	
} 
} ‰Y
ÜC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetStatsMonitor\Implementation\UI\Graphs\GraphBuffers.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
.! "
NetStatsMonitor" 1
.1 2
Implementation2 @
{ 
internal 
class 
GraphBuffers 
{ 
public 
const 
int 
k_VerticesPerSample ,
=- .
$num/ 0
;0 1
const 
int 
k_TrisPerLine 
=  !
$num" #
;# $
const 
int 
k_IndicesPerTri !
=" #
$num$ %
;% &
const 
int #
k_IndicesPerLineSegment )
=* +
k_TrisPerLine, 9
*: ;
k_IndicesPerTri< K
;K L
public 
Vertex 
[ 
] 
Vertices  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
ushort 
[ 
] 
Indices 
{ 
get 
; 
set  #
;# $
}% &
public 
void 
UpdateConfiguration '
(' (
GraphParameters 
	oldParams %
,% &
GraphParameters   
	newParams   %
,  % &
List!! 
<!! 
Color!! 
>!! 
variableColors!! &
)!!& '
{"" 	
var## 
sampleCount## 
=## 
	newParams## '
.##' (
	StatCount##( 1
*##2 3
	newParams##4 =
.##= >
SamplesPerStat##> L
;##L M
var$$ 
vertexCount$$ 
=$$ 
k_VerticesPerSample$$ 1
*$$2 3
sampleCount$$4 ?
;$$? @
var&&  
linesSegmentsPerStat&& $
=&&% &
Math&&' +
.&&+ ,
Max&&, /
(&&/ 0
$num&&0 1
,&&1 2
	newParams&&3 <
.&&< =
SamplesPerStat&&= K
-&&L M
$num&&N O
)&&O P
;&&P Q
var'' 
lineSegmentCount''  
=''! " 
linesSegmentsPerStat''# 7
*''8 9
	newParams'': C
.''C D
	StatCount''D M
;''M N
var(( 

indexCount(( 
=(( #
k_IndicesPerLineSegment(( 4
*((5 6
lineSegmentCount((7 G
;((G H
if** 
(** 
(** 
Vertices** 
?** 
.** 
Length** !
??**" $
$num**% &
)**& '
!=**( *
vertexCount**+ 6
)**6 7
{++ 
Vertices,, 
=,, 
new,, 
Vertex,, %
[,,% &
vertexCount,,& 1
],,1 2
;,,2 3
}-- 
if.. 
(.. 
(.. 
Indices.. 
?.. 
... 
Length..  
??..! #
$num..$ %
)..% &
!=..' )

indexCount..* 4
)..4 5
{// 
Indices00 
=00 
new00 
ushort00 $
[00$ %

indexCount00% /
]00/ 0
;000 1
}11 
if22 
(22 
	newParams22 
.22 
	StatCount22 #
!=22$ &
	oldParams22' 0
.220 1
	StatCount221 :
||22; =
	newParams22> G
.22G H
SamplesPerStat22H V
!=22W Y
	oldParams22Z c
.22c d
SamplesPerStat22d r
)22r s
{33 
ComputeIndices44 
(44 
	newParams44 (
.44( )
	StatCount44) 2
,442 3
	newParams444 =
.44= >
SamplesPerStat44> L
)44L M
;44M N
}55 
SetVertexColors88 
(88 
	newParams88 %
.88% &
	StatCount88& /
,88/ 0
	newParams881 :
.88: ;
SamplesPerStat88; I
,88I J
variableColors88K Y
)88Y Z
;88Z [
}99 	
void;; 
ComputeIndices;; 
(;; 
int;; 
	statCount;;  )
,;;) *
int;;+ .
samplesPerStat;;/ =
);;= >
{<< 	
var== 
lineSegmentsPerStat== #
===$ %
Math==& *
.==* +
Max==+ .
(==. /
$num==/ 0
,==0 1
samplesPerStat==2 @
-==A B
$num==C D
)==D E
;==E F
var>> 
indicesPerStat>> 
=>>  #
k_IndicesPerLineSegment>>! 8
*>>9 :
lineSegmentsPerStat>>; N
;>>N O
var@@ 
verticesPerStat@@ 
=@@  !
k_VerticesPerSample@@" 5
*@@6 7
samplesPerStat@@8 F
;@@F G
forBB 
(BB 
varBB 
	statIndexBB 
=BB  
$numBB! "
;BB" #
	statIndexBB$ -
<BB. /
	statCountBB0 9
;BB9 :
++BB; =
	statIndexBB= F
)BBF G
{CC 
varDD 
statIndicesBeginDD $
=DD% &
	statIndexDD' 0
*DD1 2
indicesPerStatDD3 A
;DDA B
varEE 
statVerticesBeginEE %
=EE& '
	statIndexEE( 1
*EE2 3
verticesPerStatEE4 C
;EEC D
forFF 
(FF 
varFF 
lineSegmentIndexFF )
=FF* +
$numFF, -
;FF- .
lineSegmentIndexFF/ ?
<FF@ A
lineSegmentsPerStatFFB U
;FFU V
++FFW Y
lineSegmentIndexFFY i
)FFi j
{GG 
varHH #
lineSegmentIndicesBeginHH /
=HH0 1
statIndicesBeginHH2 B
+HHC D#
k_IndicesPerLineSegmentHHE \
*HH] ^
lineSegmentIndexHH_ o
;HHo p
varII $
lineSegmentVerticesBeginII 0
=II1 2
statVerticesBeginII3 D
+IIE F
k_VerticesPerSampleIIG Z
*II[ \
lineSegmentIndexII] m
;IIm n
IndicesOO 
[OO #
lineSegmentIndicesBeginOO 3
+OO4 5
$numOO6 7
]OO7 8
=OO9 :
(OO; <
ushortOO< B
)OOB C
(OOC D$
lineSegmentVerticesBeginOOD \
+OO] ^
$numOO_ `
)OO` a
;OOa b
IndicesPP 
[PP #
lineSegmentIndicesBeginPP 3
+PP4 5
$numPP6 7
]PP7 8
=PP9 :
(PP; <
ushortPP< B
)PPB C
(PPC D$
lineSegmentVerticesBeginPPD \
+PP] ^
$numPP_ `
)PP` a
;PPa b
IndicesQQ 
[QQ #
lineSegmentIndicesBeginQQ 3
+QQ4 5
$numQQ6 7
]QQ7 8
=QQ9 :
(QQ; <
ushortQQ< B
)QQB C
(QQC D$
lineSegmentVerticesBeginQQD \
+QQ] ^
$numQQ_ `
)QQ` a
;QQa b
IndicesWW 
[WW #
lineSegmentIndicesBeginWW 3
+WW4 5
$numWW6 7
]WW7 8
=WW9 :
(WW; <
ushortWW< B
)WWB C
(WWC D$
lineSegmentVerticesBeginWWD \
+WW] ^
$numWW_ `
)WW` a
;WWa b
IndicesXX 
[XX #
lineSegmentIndicesBeginXX 3
+XX4 5
$numXX6 7
]XX7 8
=XX9 :
(XX; <
ushortXX< B
)XXB C
(XXC D$
lineSegmentVerticesBeginXXD \
+XX] ^
$numXX_ `
)XX` a
;XXa b
IndicesYY 
[YY #
lineSegmentIndicesBeginYY 3
+YY4 5
$numYY6 7
]YY7 8
=YY9 :
(YY; <
ushortYY< B
)YYB C
(YYC D$
lineSegmentVerticesBeginYYD \
+YY] ^
$numYY_ `
)YY` a
;YYa b
}ZZ 
}[[ 
}\\ 	
void^^ 
SetVertexColors^^ 
(^^ 
int^^  
	statCount^^! *
,^^* +
int^^, /
samplesPerStat^^0 >
,^^> ?
List^^@ D
<^^D E
Color^^E J
>^^J K
variableColors^^L Z
)^^Z [
{__ 	
var`` 
verticesPerStat`` 
=``  !
k_VerticesPerSample``" 5
*``6 7
samplesPerStat``8 F
;``F G
foraa 
(aa 
varaa 
	statIndexaa 
=aa  
$numaa! "
;aa" #
	statIndexaa$ -
<aa. /
	statCountaa0 9
;aa9 :
++aa; =
	statIndexaa= F
)aaF G
{bb 
varcc 
statVerticesBegincc %
=cc& '
	statIndexcc( 1
*cc2 3
verticesPerStatcc4 C
;ccC D
Color32dd 
	statColordd !
=dd" #
(dd$ %
variableColorsdd% 3
!=dd4 6
nulldd7 ;
&&dd< >
	statIndexdd? H
<ddI J
variableColorsddK Y
.ddY Z
CountddZ _
)dd_ `
?ee 
variableColorsee $
[ee$ %
	statIndexee% .
]ee. /
:ff 
GraphColorUtilsff %
.ff% &
GetColorForIndexff& 6
(ff6 7
	statIndexff7 @
,ff@ A
	statCountffB K
)ffK L
;ffL M
forgg 
(gg 
vargg 
vertexIndexgg $
=gg% &
$numgg' (
;gg( )
vertexIndexgg* 5
<gg6 7
verticesPerStatgg8 G
;ggG H
++ggI K
vertexIndexggK V
)ggV W
{hh 
varii 
vertexIndexAbsoluteii +
=ii, -
statVerticesBeginii. ?
+ii@ A
vertexIndexiiB M
;iiM N
Verticesjj 
[jj 
vertexIndexAbsolutejj 0
]jj0 1
.jj1 2
tintjj2 6
=jj7 8
	statColorjj9 B
;jjB C
}kk 
}ll 
}mm 	
publicoo 
voidoo (
WriteToMeshGenerationContextoo 0
(oo0 1!
MeshGenerationContextoo1 F
mgcooG J
)ooJ K
{pp 	
ifqq 
(qq 
Verticesqq 
==qq 
nullqq  
||qq! #
Indicesrr 
==rr 
nullrr 
||rr  "
Verticesss 
.ss 
Lengthss 
==ss  "
$numss# $
||ss% '
Indicestt 
.tt 
Lengthtt 
==tt !
$numtt" #
)tt# $
{uu 
returnxx 
;xx 
}yy 
MeshWriteDatazz 
mwdzz 
=zz 
mgczz  #
.zz# $
Allocatezz$ ,
(zz, -
Verticeszz- 5
.zz5 6
Lengthzz6 <
,zz< =
Indiceszz> E
.zzE F
LengthzzF L
)zzL M
;zzM N
mwd{{ 
.{{ 
SetAllVertices{{ 
({{ 
Vertices{{ '
){{' (
;{{( )
mwd|| 
.|| 
SetAllIndices|| 
(|| 
Indices|| %
)||% &
;||& '
}}} 	
}~~ 
} 