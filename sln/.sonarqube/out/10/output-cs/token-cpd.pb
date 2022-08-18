í&
}C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\CoreRegistryInitializer.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class 	#
CoreRegistryInitializer
 !
{ 
[ 	
NotNull	 
] 
readonly 
CoreRegistry 

m_Registry (
;( )
[ 	
NotNull	 
] 
readonly 
List 
< 
int 
> %
m_SortedPackageTypeHashes 4
;4 5
public #
CoreRegistryInitializer &
(& '
[' (
NotNull( /
]/ 0
CoreRegistry1 =
registry> F
,F G
[H I
NotNullI P
]P Q
ListR V
<V W
intW Z
>Z [#
sortedPackageTypeHashes\ s
)s t
{ 	

m_Registry 
= 
registry !
;! "%
m_SortedPackageTypeHashes %
=& '#
sortedPackageTypeHashes( ?
;? @
} 	
public 
async 
Task #
InitializeRegistryAsync 1
(1 2
)2 3
{ 	
if 
( %
m_SortedPackageTypeHashes )
.) *
Count* /
<=0 2
$num3 4
)4 5
{ 
return 
; 
} 
var   
dependencyTree   
=    

m_Registry  ! +
.  + ,
PackageRegistry  , ;
.  ; <
Tree  < @
;  @ A
if!! 
(!! 
dependencyTree!! 
is!! !
null!!" &
)!!& '
{"" 
throw## 
new## "
NullReferenceException## 0
(##0 1
$str##1 o
)##o p
;##p q
}$$ 

m_Registry&& 
.&& 
ComponentRegistry&& (
.&&( )#
ResetProvidedComponents&&) @
(&&@ A
dependencyTree&&A O
.&&O P'
ComponentTypeHashToInstance&&P k
)&&k l
;&&l m
var'' 
failureReasons'' 
=''  
new''! $
List''% )
<'') *
	Exception''* 3
>''3 4
(''4 5%
m_SortedPackageTypeHashes''5 N
.''N O
Count''O T
)''T U
;''U V
for(( 
((( 
var(( 
i(( 
=(( 
$num(( 
;(( 
i(( 
<(( %
m_SortedPackageTypeHashes((  9
.((9 :
Count((: ?
;((? @
i((A B
++((B D
)((D E
{)) 
try** 
{++ 
await,, )
InitializePackageAtIndexAsync,, 7
(,,7 8
i,,8 9
),,9 :
;,,: ;
}-- 
catch.. 
(.. 
	Exception..  
e..! "
).." #
{// 
failureReasons00 "
.00" #
Add00# &
(00& '
e00' (
)00( )
;00) *
}11 
}22 
if44 
(44 
failureReasons44 
.44 
Count44 $
>44% &
$num44' (
)44( )
{55 
Fail66 
(66 
)66 
;66 
}77 
async99 
Task99 )
InitializePackageAtIndexAsync99 4
(994 5
int995 8
index999 >
)99> ?
{:: 
var;; 
packageTypeHash;; #
=;;$ %%
m_SortedPackageTypeHashes;;& ?
[;;? @
index;;@ E
];;E F
;;;F G
var<< 
package<< 
=<< 
dependencyTree<< ,
.<<, -%
PackageTypeHashToInstance<<- F
[<<F G
packageTypeHash<<G V
]<<V W
;<<W X
await== 
package== 
.== 

Initialize== (
(==( )

m_Registry==) 3
)==3 4
;==4 5
}>> 
void@@ 
Fail@@ 
(@@ 
)@@ 
{AA 
constBB 
stringBB 
errorMessageBB )
=BB* +
$strBB, T
+CC 
$strCC J
;CCJ K
varDD 
innerExceptionDD "
=DD# $
newDD% (
AggregateExceptionDD) ;
(DD; <
failureReasonsDD< J
)DDJ K
;DDK L
throwEE 
newEE +
ServicesInitializationExceptionEE 9
(EE9 :
errorMessageEE: F
,EEF G
innerExceptionEEH V
)EEV W
;EEW X
}FF 
}GG 	
}HH 
}II ’)
âC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\ComponentRegistry\ComponentRegistry.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class 	
ComponentRegistry
 
: 
IComponentRegistry 0
{ 
[ 	
NotNull	 
] 
internal 

Dictionary 
< 
int 
,  
IServiceComponent! 2
>2 3'
ComponentTypeHashToInstance4 O
{P Q
getR U
;U V
}W X
public 
ComponentRegistry  
(  !
[ 
NotNull 
] 

Dictionary  
<  !
int! $
,$ %
IServiceComponent& 7
>7 8'
componentTypeHashToInstance9 T
)T U
{ 	'
ComponentTypeHashToInstance '
=( )'
componentTypeHashToInstance* E
;E F
} 	
public 
void $
RegisterServiceComponent ,
<, -

TComponent- 7
>7 8
(8 9

TComponent9 C
	componentD M
)M N
where 

TComponent 
: 
IServiceComponent 0
{ 	
var 
componentType 
= 
typeof  &
(& '

TComponent' 1
)1 2
;2 3
if 
( 
	component 
. 
GetType !
(! "
)" #
==$ &
componentType' 4
)4 5
{ 
throw 
new 
ArgumentException +
(+ ,
$str, X
)X Y
;Y Z
} 
var!! 
componentTypeHash!! !
=!!" #
componentType!!$ 1
.!!1 2
GetHashCode!!2 =
(!!= >
)!!> ?
;!!? @
if"" 
("" %
IsComponentTypeRegistered"" )
("") *
componentTypeHash""* ;
)""; <
)""< =
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 3
($$3 4
$"%% 
$str%% 0
{%%0 1
componentType%%1 >
.%%> ?
FullName%%? G
}%%G H
$str%%H e
"%%e f
)%%f g
;%%g h
}&& '
ComponentTypeHashToInstance(( '
[((' (
componentTypeHash((( 9
]((9 :
=((; <
	component((= F
;((F G
})) 	
public++ 

TComponent++ 
GetServiceComponent++ -
<++- .

TComponent++. 8
>++8 9
(++9 :
)++: ;
where,, 

TComponent,, 
:,, 
IServiceComponent,, 0
{-- 	
var.. 
componentType.. 
=.. 
typeof..  &
(..& '

TComponent..' 1
)..1 2
;..2 3
if// 
(// 
!// '
ComponentTypeHashToInstance// ,
.//, -
TryGetValue//- 8
(//8 9
componentType//9 F
.//F G
GetHashCode//G R
(//R S
)//S T
,//T U
out//V Y
var//Z ]
	component//^ g
)//g h
||00 
	component00 
is00 
MissingComponent00  0
)000 1
{22 
throw33 
new33  
KeyNotFoundException33 .
(33. /
$"33/ 1
$str331 H
{33H I
componentType33I V
.33V W
Name33W [
}33[ \
$str33\ j
"33j k
+33l m
$str44 0
)440 1
;441 2
}55 
return77 
(77 

TComponent77 
)77 
	component77 (
;77( )
}88 	
bool:: %
IsComponentTypeRegistered:: &
(::& '
int::' *
componentTypeHash::+ <
)::< =
{;; 	
return<< '
ComponentTypeHashToInstance<< .
.<<. /
TryGetValue<</ :
(<<: ;
componentTypeHash<<; L
,<<L M
out<<N Q
var<<R U
storedComponent<<V e
)<<e f
&&== 
!== 
(== 
storedComponent== $
is==% '
null==( ,
)==, -
&&>> 
!>> 
(>> 
storedComponent>> $
is>>% '
MissingComponent>>( 8
)>>8 9
;>>9 :
}?? 	
publicAA 
voidAA #
ResetProvidedComponentsAA +
(AA+ ,
IDictionaryAA, 7
<AA7 8
intAA8 ;
,AA; <
IServiceComponentAA= N
>AAN O'
componentTypeHashToInstanceAAP k
)AAk l
{BB 	'
ComponentTypeHashToInstanceCC '
.CC' (
ClearCC( -
(CC- .
)CC. /
;CC/ 0'
ComponentTypeHashToInstanceDD '
.DD' (
MergeAllowOverrideDD( :
(DD: ;'
componentTypeHashToInstanceDD; V
)DDV W
;DDW X
}EE 	
}FF 
}GG ù
iC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str D
)D E
]E F
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str C
)C D
]D E
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str :
): ;
]; <
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str >
)> ?
]? @
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str A
)A B
]B C
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str H
)H I
]I J
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str @
)@ A
]A B
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str C
)C D
]D E
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :ÖO
rC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\UnityServicesInternal.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class 	!
UnityServicesInternal
 
:  !
IUnityServices" 0
{ 
public '
ServicesInitializationState *
State+ 0
{1 2
get3 6
;6 7
private8 ?
set@ C
;C D
}E F
public !
InitializationOptions $
Options% ,
{- .
get/ 2
;2 3
internal4 <
set= @
;@ A
}B C
internal 
bool 
CanInitialize #
;# $ 
TaskCompletionSource 
< 
object #
># $
m_Initialization% 5
;5 6
[ 	
NotNull	 
] 
CoreRegistry 
Registry 
{ 
get  #
;# $
}% &
[ 	
NotNull	 
] 
CoreMetrics 
Metrics 
{ 
get !
;! "
}# $
[ 	
NotNull	 
] 
CoreDiagnostics   
Diagnostics   #
{  $ %
get  & )
;  ) *
}  + ,
public"" !
UnityServicesInternal"" $
(""$ %
[""% &
NotNull""& -
]""- .
CoreRegistry""/ ;
registry""< D
,""D E
[""F G
NotNull""G N
]""N O
CoreMetrics""P [
metrics""\ c
,""c d
[""e f
NotNull""f m
]""m n
CoreDiagnostics""o ~
diagnostics	"" ä
)
""ä ã
{## 	
Registry$$ 
=$$ 
registry$$ 
;$$  
Metrics%% 
=%% 
metrics%% 
;%% 
Diagnostics&& 
=&& 
diagnostics&& %
;&&% &
}'' 	
public22 
async22 
Task22 
InitializeAsync22 )
(22) *!
InitializationOptions22* ?
options22@ G
)22G H
{33 	
if44 
(44 
!44 &
HasRequestedInitialization44 +
(44+ ,
)44, -
||55 #
HasInitializationFailed55 *
(55* +
)55+ ,
)55, -
{66 
Options77 
=77 
options77 !
;77! "
m_Initialization88  
=88! "
new88# & 
TaskCompletionSource88' ;
<88; <
object88< B
>88B C
(88C D
)88D E
;88E F
}99 
if;; 
(;; 
!;; 
CanInitialize;; 
||<< 
State<< 
!=<< '
ServicesInitializationState<< 7
.<<7 8
Uninitialized<<8 E
)<<E F
{== 
await>> 
m_Initialization>> &
.>>& '
Task>>' +
;>>+ ,
}?? 
else@@ 
{AA 
awaitBB #
InitializeServicesAsyncBB -
(BB- .
)BB. /
;BB/ 0
}CC 
boolEE #
HasInitializationFailedEE (
(EE( )
)EE) *
{FF 
returnGG 
m_InitializationGG '
.GG' (
TaskGG( ,
.GG, -
IsCompletedGG- 8
&&HH 
m_InitializationHH '
.HH' (
TaskHH( ,
.HH, -
StatusHH- 3
!=HH4 6

TaskStatusHH7 A
.HHA B
RanToCompletionHHB Q
;HHQ R
}II 
}JJ 	
boolLL &
HasRequestedInitializationLL '
(LL' (
)LL( )
{MM 	
returnNN 
!NN 
(NN 
m_InitializationNN %
isNN& (
nullNN) -
)NN- .
;NN. /
}OO 	
asyncQQ 
TaskQQ #
InitializeServicesAsyncQQ *
(QQ* +
)QQ+ ,
{RR 	
StateSS 
=SS '
ServicesInitializationStateSS /
.SS/ 0
InitializingSS0 <
;SS< =
varTT 
initStopwatchTT 
=TT 
newTT  #
	StopwatchTT$ -
(TT- .
)TT. /
;TT/ 0
initStopwatchUU 
.UU 
StartUU 
(UU  
)UU  !
;UU! "
varWW 
dependencyTreeWW 
=WW  
RegistryWW! )
.WW) *
PackageRegistryWW* 9
.WW9 :
TreeWW: >
;WW> ?
ifXX 
(XX 
dependencyTreeXX 
isXX !
nullXX" &
)XX& '
{YY 
varZZ 
reasonZZ 
=ZZ 
newZZ  "
NullReferenceExceptionZZ! 7
(ZZ7 8
$strZZ8 u
)ZZu v
;ZZv w&
FailServicesInitialization[[ *
([[* +
reason[[+ 1
)[[1 2
;[[2 3
throw\\ 
reason\\ 
;\\ 
}]] 
var__ #
sortedPackageTypeHashes__ '
=__( )
new__* -
List__. 2
<__2 3
int__3 6
>__6 7
(__7 8
dependencyTree__8 F
.__F G%
PackageTypeHashToInstance__G `
.__` a
Count__a f
)__f g
;__g h
tryaa 
{bb 
SortPackagescc 
(cc 
)cc 
;cc 
awaitdd #
InitializePackagesAsyncdd -
(dd- .
)dd. /
;dd/ 0
}ee 
catchff 
(ff 
	Exceptionff 
reasonff #
)ff# $
{gg &
FailServicesInitializationhh *
(hh* +
reasonhh+ 1
)hh1 2
;hh2 3
throwii 
;ii 
}jj )
SucceedServicesInitializationll )
(ll) *
)ll* +
;ll+ ,
voidnn 
SortPackagesnn 
(nn 
)nn 
{oo 
varpp 
sorterpp 
=pp 
newpp  /
#DependencyTreeInitializeOrderSorterpp! D
(ppD E
dependencyTreeppE S
,ppS T#
sortedPackageTypeHashesppU l
)ppl m
;ppm n
sorterqq 
.qq ,
 SortRegisteredPackagesIntoTargetqq 7
(qq7 8
)qq8 9
;qq9 :
}rr 
asynctt 
Tasktt #
InitializePackagesAsynctt .
(tt. /
)tt/ 0
{uu 
varvv 
initializervv 
=vv  !
newvv" %#
CoreRegistryInitializervv& =
(vv= >
Registryvv> F
,vvF G#
sortedPackageTypeHashesvvH _
)vv_ `
;vv` a
awaitww 
initializerww !
.ww! "#
InitializeRegistryAsyncww" 9
(ww9 :
)ww: ;
;ww; <
}xx 
voidzz &
FailServicesInitializationzz +
(zz+ ,
	Exceptionzz, 5
reasonzz6 <
)zz< =
{{{ 
State|| 
=|| '
ServicesInitializationState|| 3
.||3 4
Uninitialized||4 A
;||A B
initStopwatch}} 
.}} 
Stop}} "
(}}" #
)}}# $
;}}$ %
m_Initialization~~  
.~~  !
TrySetException~~! 0
(~~0 1
reason~~1 7
)~~7 8
;~~8 9
if
ÄÄ 
(
ÄÄ 
reason
ÄÄ 
is
ÄÄ )
CircularDependencyException
ÄÄ 9
)
ÄÄ9 :
{
ÅÅ 
Diagnostics
ÇÇ 
.
ÇÇ  /
!SendCircularDependencyDiagnostics
ÇÇ  A
(
ÇÇA B
reason
ÇÇB H
)
ÇÇH I
;
ÇÇI J
}
ÉÉ 
else
ÑÑ 
{
ÖÖ 
Diagnostics
ÜÜ 
.
ÜÜ  0
"SendOperateServicesInitDiagnostics
ÜÜ  B
(
ÜÜB C
reason
ÜÜC I
)
ÜÜI J
;
ÜÜJ K
}
áá 
}
àà 
void
ää +
SucceedServicesInitialization
ää .
(
ää. /
)
ää/ 0
{
ãã 
State
åå 
=
åå )
ServicesInitializationState
åå 3
.
åå3 4
Initialized
åå4 ?
;
åå? @
Registry
çç 
.
çç 
PackageRegistry
çç (
.
çç( )
Tree
çç) -
=
çç. /
null
çç0 4
;
çç4 5
Registry
éé 
.
éé '
LockComponentRegistration
éé 2
(
éé2 3
)
éé3 4
;
éé4 5
initStopwatch
èè 
.
èè 
Stop
èè "
(
èè" #
)
èè# $
;
èè$ %
m_Initialization
êê  
.
êê  !
TrySetResult
êê! -
(
êê- .
null
êê. 2
)
êê2 3
;
êê3 4
Metrics
íí 
.
íí .
 SendAllPackagesInitSuccessMetric
íí 8
(
íí8 9
)
íí9 :
;
íí: ;
Metrics
ìì 
.
ìì +
SendAllPackagesInitTimeMetric
ìì 5
(
ìì5 6
initStopwatch
ìì6 C
.
ììC D
Elapsed
ììD K
.
ììK L
TotalSeconds
ììL X
)
ììX Y
;
ììY Z
}
îî 
}
ïï 	
internal
óó 
async
óó 
Task
óó '
EnableInitializationAsync
óó 5
(
óó5 6
)
óó6 7
{
òò 	
CanInitialize
ôô 
=
ôô 
true
ôô  
;
ôô  !
Registry
õõ 
.
õõ %
LockPackageRegistration
õõ ,
(
õõ, -
)
õõ- .
;
õõ. /
if
ùù 
(
ùù 
!
ùù (
HasRequestedInitialization
ùù +
(
ùù+ ,
)
ùù, -
)
ùù- .
return
ûû 
;
ûû 
await
†† %
InitializeServicesAsync
†† )
(
††) *
)
††* +
;
††+ ,
}
°° 	
}
¢¢ 
}££ €"
ÅC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\AsyncOperation\AsyncOperationAwaiter.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
struct 
!
AsyncOperationAwaiter  
:! ""
IAsyncOperationAwaiter# 9
{		 
IAsyncOperation

 
m_Operation

 #
;

# $
public !
AsyncOperationAwaiter $
($ %
IAsyncOperation% 4
asyncOperation5 C
)C D
{ 	
m_Operation 
= 
asyncOperation (
;( )
} 	
public   
void   
OnCompleted   
(    
Action    &
continuation  ' 3
)  3 4
{!! 	
m_Operation"" 
."" 
	Completed"" !
+=""" $
	operation""% .
=>""/ 1
continuation""2 >
(""> ?
)""? @
;""@ A
}## 	
public&& 
void&& 
UnsafeOnCompleted&& %
(&&% &
Action&&& ,
continuation&&- 9
)&&9 :
{'' 	
m_Operation(( 
.(( 
	Completed(( !
+=((" $
	operation((% .
=>((/ 1
continuation((2 >
(((> ?
)((? @
;((@ A
})) 	
public,, 
bool,, 
IsCompleted,, 
=>,,  "
m_Operation,,# .
.,,. /
IsDone,,/ 5
;,,5 6
public// 
void// 
	GetResult// 
(// 
)// 
{00 	
if11 
(11 
m_Operation11 
.11 
Status11 "
==11# % 
AsyncOperationStatus11& :
.11: ;
Failed11; A
||22 
m_Operation22 
.22 
Status22 %
==22& ( 
AsyncOperationStatus22) =
.22= >
	Cancelled22> G
)22G H
{33 
throw44 
m_Operation44 !
.44! "
	Exception44" +
;44+ ,
}55 
}66 	
}77 
struct?? 
!
AsyncOperationAwaiter??  
<??  !
T??! "
>??" #
:??$ %"
IAsyncOperationAwaiter??& <
<??< =
T??= >
>??> ?
{@@ 
IAsyncOperationAA 
<AA 
TAA 
>AA 
m_OperationAA &
;AA& '
publicII !
AsyncOperationAwaiterII $
(II$ %
IAsyncOperationII% 4
<II4 5
TII5 6
>II6 7
asyncOperationII8 F
)IIF G
{JJ 	
m_OperationKK 
=KK 
asyncOperationKK (
;KK( )
}LL 	
publicOO 
voidOO 
OnCompletedOO 
(OO  
ActionOO  &
continuationOO' 3
)OO3 4
{PP 	
m_OperationQQ 
.QQ 
	CompletedQQ !
+=QQ" $
objQQ% (
=>QQ) +
continuationQQ, 8
(QQ8 9
)QQ9 :
;QQ: ;
}RR 	
publicUU 
voidUU 
UnsafeOnCompletedUU %
(UU% &
ActionUU& ,
continuationUU- 9
)UU9 :
{VV 	
m_OperationWW 
.WW 
	CompletedWW !
+=WW" $
objWW% (
=>WW) +
continuationWW, 8
(WW8 9
)WW9 :
;WW: ;
}XX 	
public[[ 
bool[[ 
IsCompleted[[ 
=>[[  "
m_Operation[[# .
.[[. /
IsDone[[/ 5
;[[5 6
public^^ 
T^^ 
	GetResult^^ 
(^^ 
)^^ 
{__ 	
if`` 
(`` 
m_Operation`` 
.`` 
Status`` "
==``# % 
AsyncOperationStatus``& :
.``: ;
Failed``; A
||aa 
m_Operationaa 
.aa 
Statusaa %
==aa& ( 
AsyncOperationStatusaa) =
.aa= >
	Cancelledaa> G
)aaG H
{bb 
throwcc 
m_Operationcc !
.cc! "
	Exceptioncc" +
;cc+ ,
}dd 
returnff 
m_Operationff 
.ff 
Resultff %
;ff% &
}gg 	
}hh 
}ii é
wC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\IServiceComponent.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
public 

	interface 
IServiceComponent &
{' (
}( )
} ·
wC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Qos\IQosResults.cs
	namespace 	
Unity
 
. 
Services 
. 
Qos 
. 
Internal %
{ 
public 

	interface 
IQosResults  
:! "
IServiceComponent# 4
{ 
Task 
< 
IList 
< 
	QosResult 
> 
> $
GetSortedQosResultsAsync 7
(7 8
string8 >
service? F
,F G
IListH M
<M N
stringN T
>T U
regionsV ]
)] ^
;^ _
} 
public   

struct   
	QosResult   
{!! 
public'' 
string'' 
Region'' 
;'' 
public11 
int11 
AverageLatencyMs11 #
;11# $
public:: 
float:: 
PacketLossPercent:: &
;::& '
};; 
}<< ¿1
ÑC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\AsyncOperation\AsyncOperationExtensions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
static

 

class

 $
AsyncOperationExtensions

 )
{ 
public 
static !
AsyncOperationAwaiter +

GetAwaiter, 6
(6 7
this7 ;
IAsyncOperation< K
selfL P
)P Q
{ 	
return 
new !
AsyncOperationAwaiter ,
(, -
self- 1
)1 2
;2 3
} 	
public'' 
static'' 
Task'' 
AsTask'' !
(''! "
this''" &
IAsyncOperation''' 6
self''7 ;
)''; <
{(( 	
if)) 
()) 
self)) 
.)) 
Status)) 
==))  
AsyncOperationStatus)) 3
.))3 4
	Succeeded))4 =
)))= >
{** 
return++ 
Task++ 
.++ 
CompletedTask++ )
;++) *
},, 
var..  
taskCompletionSource.. $
=..% &
new..' * 
TaskCompletionSource..+ ?
<..? @
object..@ F
>..F G
(..G H
)..H I
;..I J
void00 
CompleteTask00 
(00 
IAsyncOperation00 -
	operation00. 7
)007 8
{11 
switch22 
(22 
	operation22 !
.22! "
Status22" (
)22( )
{33 
case44  
AsyncOperationStatus44 -
.44- .
Failed44. 4
:444 5 
taskCompletionSource55 ,
.55, -
TrySetException55- <
(55< =
	operation55= F
.55F G
	Exception55G P
)55P Q
;55Q R
break66 
;66 
case77  
AsyncOperationStatus77 -
.77- .
	Cancelled77. 7
:777 8 
taskCompletionSource88 ,
.88, -
TrySetCanceled88- ;
(88; <
)88< =
;88= >
break99 
;99 
case::  
AsyncOperationStatus:: -
.::- .
	Succeeded::. 7
:::7 8 
taskCompletionSource;; ,
.;;, -
TrySetResult;;- 9
(;;9 :
null;;: >
);;> ?
;;;? @
break<< 
;<< 
default>> 
:>> 
throw?? 
new?? !'
ArgumentOutOfRangeException??" =
(??= >
)??> ?
;??? @
}@@ 
}AA 
ifCC 
(CC 
selfCC 
.CC 
IsDoneCC 
)CC 
{DD 
CompleteTaskEE 
(EE 
selfEE !
)EE! "
;EE" #
}FF 
elseGG 
{HH 
selfII 
.II 
	CompletedII 
+=II !
CompleteTaskII" .
;II. /
}JJ 
returnLL  
taskCompletionSourceLL '
.LL' (
TaskLL( ,
;LL, -
}MM 	
public__ 
static__ !
AsyncOperationAwaiter__ +
<__+ ,
T__, -
>__- .

GetAwaiter__/ 9
<__9 :
T__: ;
>__; <
(__< =
this__= A
IAsyncOperation__B Q
<__Q R
T__R S
>__S T
self__U Y
)__Y Z
{`` 	
returnaa 
newaa !
AsyncOperationAwaiteraa ,
<aa, -
Taa- .
>aa. /
(aa/ 0
selfaa0 4
)aa4 5
;aa5 6
}bb 	
publicpp 
staticpp 
Taskpp 
<pp 
Tpp 
>pp 
AsTaskpp $
<pp$ %
Tpp% &
>pp& '
(pp' (
thispp( ,
IAsyncOperationpp- <
<pp< =
Tpp= >
>pp> ?
selfpp@ D
)ppD E
{qq 	
varrr  
taskCompletionSourcerr $
=rr% &
newrr' * 
TaskCompletionSourcerr+ ?
<rr? @
Trr@ A
>rrA B
(rrB C
)rrC D
;rrD E
voidtt 
CompleteTasktt 
(tt 
IAsyncOperationtt -
<tt- .
Ttt. /
>tt/ 0
	operationtt1 :
)tt: ;
{uu 
switchvv 
(vv 
	operationvv !
.vv! "
Statusvv" (
)vv( )
{ww 
casexx  
AsyncOperationStatusxx -
.xx- .
	Succeededxx. 7
:xx7 8 
taskCompletionSourceyy ,
.yy, -
TrySetResultyy- 9
(yy9 :
	operationyy: C
.yyC D
ResultyyD J
)yyJ K
;yyK L
breakzz 
;zz 
case{{  
AsyncOperationStatus{{ -
.{{- .
Failed{{. 4
:{{4 5 
taskCompletionSource|| ,
.||, -
TrySetException||- <
(||< =
	operation||= F
.||F G
	Exception||G P
)||P Q
;||Q R
break}} 
;}} 
case~~  
AsyncOperationStatus~~ -
.~~- .
	Cancelled~~. 7
:~~7 8 
taskCompletionSource ,
., -
TrySetCanceled- ;
(; <
)< =
;= >
break
ÄÄ 
;
ÄÄ 
default
ÇÇ 
:
ÇÇ 
throw
ÉÉ 
new
ÉÉ !)
ArgumentOutOfRangeException
ÉÉ" =
(
ÉÉ= >
)
ÉÉ> ?
;
ÉÉ? @
}
ÑÑ 
}
ÖÖ 
if
áá 
(
áá 
self
áá 
.
áá 
IsDone
áá 
)
áá 
{
àà 
CompleteTask
ââ 
(
ââ 
self
ââ !
)
ââ! "
;
ââ" #
}
ää 
else
ãã 
{
åå 
self
çç 
.
çç 
	Completed
çç 
+=
çç !
CompleteTask
çç" .
;
çç. /
}
éé 
return
êê "
taskCompletionSource
êê '
.
êê' (
Task
êê( ,
;
êê, -
}
ëë 	
}
íí 
}ìì ¢
ÜC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Networking\ReadOnlyHttpRequest.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 

Networking (
.( )
Internal) 1
{ 
struct 

ReadOnlyHttpRequest 
{		 
HttpRequest

 
	m_Request

 
;

 
public 
ReadOnlyHttpRequest "
(" #
HttpRequest# .
request/ 6
)6 7
{ 	
	m_Request 
= 
request 
;  
} 	
public 
string 
Method 
=> 
	m_Request  )
.) *
Method* 0
;0 1
public 
string 
Url 
=> 
	m_Request &
.& '
Url' *
;* +
public 
IReadOnlyDictionary "
<" #
string# )
,) *
string+ 1
>1 2
Headers3 :
=>; =
	m_Request> G
.G H
HeadersH O
;O P
public!! 
byte!! 
[!! 
]!! 
Body!! 
=>!! 
	m_Request!! '
.!!' (
Body!!( ,
;!!, -
}"" 
}## Á-
ÖC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\PackageRegistry\PackageRegistry.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class 	
PackageRegistry
 
: 
IPackageRegistry ,
{ 
public 
DependencyTree 
Tree "
{# $
get% (
;( )
set* -
;- .
}/ 0
public

 
PackageRegistry

 
(

 
[ 
	CanBeNull 
] 
DependencyTree &
tree' +
)+ ,
{ 	
Tree 
= 
tree 
; 
} 	
public 
CoreRegistration 
RegisterPackage  /
</ 0
TPackage0 8
>8 9
(9 :
TPackage: B
packageC J
)J K
where 
TPackage 
: !
IInitializablePackage 2
{ 	
var 
packageTypeHash 
=  !
typeof" (
(( )
TPackage) 1
)1 2
.2 3
GetHashCode3 >
(> ?
)? @
;@ A
Tree 
. %
PackageTypeHashToInstance *
[* +
packageTypeHash+ :
]: ;
=< =
package> E
;E F
Tree 
. :
.PackageTypeHashToComponentTypeHashDependencies ?
[? @
packageTypeHash@ O
]O P
=Q R
newS V
ListW [
<[ \
int\ _
>_ `
(` a
)a b
;b c
return 
new 
CoreRegistration '
(' (
this( ,
,, -
packageTypeHash. =
)= >
;> ?
} 	
public 
void 
RegisterDependency &
<& '

TComponent' 1
>1 2
(2 3
int3 6
packageTypeHash7 F
)F G
where 

TComponent 
: 
IServiceComponent 0
{ 	
var 
intendedType 
= 
typeof %
(% &

TComponent& 0
)0 1
;1 2
var 
componentTypeHash !
=" #
intendedType$ 0
.0 1
GetHashCode1 <
(< =
)= >
;> ?
Tree 
. '
ComponentTypeHashToInstance ,
[, -
componentTypeHash- >
]> ?
=@ A
newB E
MissingComponentF V
(V W
intendedTypeW c
)c d
;d e+
AddComponentDependencyToPackage!! +
(!!+ ,
componentTypeHash!!, =
,!!= >
packageTypeHash!!? N
)!!N O
;!!O P
}"" 	
public$$ 
void$$ &
RegisterOptionalDependency$$ .
<$$. /

TComponent$$/ 9
>$$9 :
($$: ;
int$$; >
packageTypeHash$$? N
)$$N O
where%% 

TComponent%% 
:%% 
IServiceComponent%% 0
{&& 	
var'' 
componentTypeHash'' !
=''" #
typeof''$ *
(''* +

TComponent''+ 5
)''5 6
.''6 7
GetHashCode''7 B
(''B C
)''C D
;''D E
if(( 
((( 
!(( 
Tree(( 
.(( '
ComponentTypeHashToInstance(( 1
.((1 2
ContainsKey((2 =
(((= >
componentTypeHash((> O
)((O P
)((P Q
{)) 
Tree** 
.** '
ComponentTypeHashToInstance** 0
[**0 1
componentTypeHash**1 B
]**B C
=**D E
null**F J
;**J K
}++ +
AddComponentDependencyToPackage-- +
(--+ ,
componentTypeHash--, =
,--= >
packageTypeHash--? N
)--N O
;--O P
}.. 	
public00 
void00 
RegisterProvision00 %
<00% &

TComponent00& 0
>000 1
(001 2
int002 5
packageTypeHash006 E
)00E F
where11 

TComponent11 
:11 
IServiceComponent11 0
{22 	
var33 
componentTypeHash33 !
=33" #
typeof33$ *
(33* +

TComponent33+ 5
)335 6
.336 7
GetHashCode337 B
(33B C
)33C D
;33D E
Tree44 
.44 .
"ComponentTypeHashToPackageTypeHash44 3
[443 4
componentTypeHash444 E
]44E F
=44G H
packageTypeHash44I X
;44X Y
}55 	
void77 +
AddComponentDependencyToPackage77 ,
(77, -
int77- 0
componentTypeHash771 B
,77B C
int77D G
packageTypeHash77H W
)77W X
{88 	
var99 
dependencyTypeHashs99 #
=99$ %
Tree99& *
.99* +:
.PackageTypeHashToComponentTypeHashDependencies99+ Y
[99Y Z
packageTypeHash99Z i
]99i j
;99j k
if:: 
(:: 
!:: 
dependencyTypeHashs:: $
.::$ %
Contains::% -
(::- .
componentTypeHash::. ?
)::? @
)::@ A
{;; 
dependencyTypeHashs<< #
.<<# $
Add<<$ '
(<<' (
componentTypeHash<<( 9
)<<9 :
;<<: ;
}== 
}>> 	
}?? 
}@@ ≠
èC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\ComponentRegistry\LockedComponentRegistry.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class 	#
LockedComponentRegistry
 !
:" #
IComponentRegistry$ 6
{ 
const		 
string		 
k_ErrorMessage		 #
=		$ %
$str		& P
+		Q R
$str

 f
;

f g
[ 	
NotNull	 
] 
internal 
IComponentRegistry #
Registry$ ,
{- .
get/ 2
;2 3
}4 5
public #
LockedComponentRegistry &
(& '
[ 
NotNull 
] 
IComponentRegistry (
registryToLock) 7
)7 8
{ 	
Registry 
= 
registryToLock %
;% &
} 	
public 
void $
RegisterServiceComponent ,
<, -

TComponent- 7
>7 8
(8 9

TComponent9 C
	componentD M
)M N
where 

TComponent 
: 
IServiceComponent 0
{ 	
throw 
new %
InvalidOperationException /
(/ 0
k_ErrorMessage0 >
)> ?
;? @
} 	
public 

TComponent 
GetServiceComponent -
<- .

TComponent. 8
>8 9
(9 :
): ;
where 

TComponent 
: 
IServiceComponent 0
{ 	
return 
Registry 
. 
GetServiceComponent /
</ 0

TComponent0 :
>: ;
(; <
)< =
;= >
} 	
public!! 
void!! #
ResetProvidedComponents!! +
(!!+ ,
IDictionary!!, 7
<!!7 8
int!!8 ;
,!!; <
IServiceComponent!!= N
>!!N O'
componentTypeHashToInstance!!P k
)!!k l
=>!!m o
throw!!p u
new!!v y&
InvalidOperationException	!!z ì
(
!!ì î
k_ErrorMessage
!!î ¢
)
!!¢ £
;
!!£ §
}"" 
}## ›	
äC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\ComponentRegistry\IComponentRegistry.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
	interface 
IComponentRegistry  
{ 
void $
RegisterServiceComponent %
<% &

TComponent& 0
>0 1
(1 2
[		 
NotNull		 
]		 

TComponent		  
	component		! *
)		* +
where

 

TComponent

 
:

 
IServiceComponent

 0
;

0 1

TComponent 
GetServiceComponent &
<& '

TComponent' 1
>1 2
(2 3
)3 4
where 

TComponent 
: 
IServiceComponent 0
;0 1
void #
ResetProvidedComponents $
($ %
IDictionary% 0
<0 1
int1 4
,4 5
IServiceComponent6 G
>G H'
componentTypeHashToInstanceI d
)d e
;e f
} 
} õ!
C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Networking\HttpResponse.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 

Networking (
.( )
Internal) 1
{ 
class 	
HttpResponse
 
{		 
public 
ReadOnlyHttpRequest "
Request# *
;* +
public 

Dictionary 
< 
string  
,  !
string" (
>( )
Headers* 1
;1 2
public 
byte 
[ 
] 
Data 
; 
public 
long 

StatusCode 
; 
public!! 
string!! 
ErrorMessage!! "
;!!" #
public&& 
bool&& 
IsHttpError&& 
;&&  
public++ 
bool++ 
IsNetworkError++ "
;++" #
public66 
HttpResponse66 

SetRequest66 &
(66& '
HttpRequest66' 2
request663 :
)66: ;
{77 	
Request88 
=88 
new88 
ReadOnlyHttpRequest88 -
(88- .
request88. 5
)885 6
;886 7
return:: 
this:: 
;:: 
};; 	
publicFF 
HttpResponseFF 

SetRequestFF &
(FF& '
ReadOnlyHttpRequestFF' :
requestFF; B
)FFB C
{GG 	
RequestHH 
=HH 
requestHH 
;HH 
returnJJ 
thisJJ 
;JJ 
}KK 	
publicZZ 
HttpResponseZZ 
	SetHeaderZZ %
(ZZ% &
stringZZ& ,
keyZZ- 0
,ZZ0 1
stringZZ2 8
valueZZ9 >
)ZZ> ?
{[[ 	
Headers\\ 
[\\ 
key\\ 
]\\ 
=\\ 
value\\  
;\\  !
return^^ 
this^^ 
;^^ 
}__ 	
publicjj 
HttpResponsejj 

SetHeadersjj &
(jj& '

Dictionaryjj' 1
<jj1 2
stringjj2 8
,jj8 9
stringjj: @
>jj@ A
headersjjB I
)jjI J
{kk 	
Headersll 
=ll 
headersll 
;ll 
returnnn 
thisnn 
;nn 
}oo 	
publiczz 
HttpResponsezz 
SetDatazz #
(zz# $
bytezz$ (
[zz( )
]zz) *
datazz+ /
)zz/ 0
{{{ 	
Data|| 
=|| 
data|| 
;|| 
return~~ 
this~~ 
;~~ 
} 	
public
ää 
HttpResponse
ää 
SetStatusCode
ää )
(
ää) *
long
ää* .

statusCode
ää/ 9
)
ää9 :
{
ãã 	

StatusCode
åå 
=
åå 

statusCode
åå #
;
åå# $
return
éé 
this
éé 
;
éé 
}
èè 	
public
öö 
HttpResponse
öö 
SetErrorMessage
öö +
(
öö+ ,
string
öö, 2
errorMessage
öö3 ?
)
öö? @
{
õõ 	
ErrorMessage
úú 
=
úú 
errorMessage
úú '
;
úú' (
return
ûû 
this
ûû 
;
ûû 
}
üü 	
public
™™ 
HttpResponse
™™ 
SetIsHttpError
™™ *
(
™™* +
bool
™™+ /
isHttpError
™™0 ;
)
™™; <
{
´´ 	
IsHttpError
¨¨ 
=
¨¨ 
isHttpError
¨¨ %
;
¨¨% &
return
ÆÆ 
this
ÆÆ 
;
ÆÆ 
}
ØØ 	
public
∫∫ 
HttpResponse
∫∫ 
SetIsNetworkError
∫∫ -
(
∫∫- .
bool
∫∫. 2
isNetworkError
∫∫3 A
)
∫∫A B
{
ªª 	
IsNetworkError
ºº 
=
ºº 
isNetworkError
ºº +
;
ºº+ ,
return
ææ 
this
ææ 
;
ææ 
}
øø 	
}
¿¿ 
}¡¡ ˙
ÜC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\PackageRegistry\IPackageRegistry.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
	interface 
IPackageRegistry 
{ 
[ 	
	CanBeNull	 
] 
DependencyTree		 
Tree		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
CoreRegistration 
RegisterPackage (
<( )
TPackage) 1
>1 2
(2 3
[ 
NotNull 
] 
TPackage 
package &
)& '
where 
TPackage 
: !
IInitializablePackage 2
;2 3
void 
RegisterDependency 
<  

TComponent  *
>* +
(+ ,
int, /
packageTypeHash0 ?
)? @
where 

TComponent 
: 
IServiceComponent 0
;0 1
void &
RegisterOptionalDependency '
<' (

TComponent( 2
>2 3
(3 4
int4 7
packageTypeHash8 G
)G H
where 

TComponent 
: 
IServiceComponent 0
;0 1
void 
RegisterProvision 
< 

TComponent )
>) *
(* +
int+ .
packageTypeHash/ >
)> ?
where 

TComponent 
: 
IServiceComponent 0
;0 1
} 
} –
uC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\UnityServicesInitializer.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
static 

class $
UnityServicesInitializer )
{ 
[ 	)
RuntimeInitializeOnLoadMethod	 &
(& '%
RuntimeInitializeLoadType' @
.@ A!
AfterAssembliesLoadedA V
)V W
]W X
static 
void  
CreateStaticInstance (
(( )
)) *
{		 	
CoreRegistry

 
.

 
Instance

 !
=

" #
new

$ '
CoreRegistry

( 4
(

4 5
)

5 6
;

6 7
CoreMetrics 
. 
Instance  
=! "
new# &
CoreMetrics' 2
(2 3
)3 4
;4 5
CoreDiagnostics 
. 
Instance $
=% &
new' *
CoreDiagnostics+ :
(: ;
); <
;< =
UnityServices 
. 
Instance "
=# $
new% (!
UnityServicesInternal) >
(> ?
CoreRegistry? K
.K L
InstanceL T
,T U
CoreMetricsV a
.a b
Instanceb j
,j k
CoreDiagnosticsl {
.{ |
Instance	| Ñ
)
Ñ Ö
;
Ö Ü
UnityServices 
. #
InstantiationCompletion 1
?1 2
.2 3
TrySetResult3 ?
(? @
null@ D
)D E
;E F
} 	
[ 	)
RuntimeInitializeOnLoadMethod	 &
(& '%
RuntimeInitializeLoadType' @
.@ A
AfterSceneLoadA O
)O P
]P Q
static 
async 
void -
!EnableServicesInitializationAsync ;
(; <
)< =
{ 	
var 
instance 
= 
( !
UnityServicesInternal 1
)1 2
UnityServices2 ?
.? @
Instance@ H
;H I
await 
instance 
. %
EnableInitializationAsync 4
(4 5
)5 6
;6 7
} 	
} 
} Ç
{C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\AsyncOperation\IAsyncOperation.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
	interface		 
IAsyncOperation		 
:		 
IEnumerator		  +
{

 
bool 
IsDone 
{ 
get 
; 
}  
AsyncOperationStatus 
Status #
{$ %
get& )
;) *
}+ ,
event 
Action 
< 
IAsyncOperation $
>$ %
	Completed& /
;/ 0
	Exception 
	Exception 
{ 
get !
;! "
}# $
} 
	interface'' 
IAsyncOperation'' 
<'' 
out'' !
T''" #
>''# $
:''% &
IEnumerator''' 2
{(( 
bool** 
IsDone** 
{** 
get** 
;** 
}**  
AsyncOperationStatus-- 
Status-- #
{--$ %
get--& )
;--) *
}--+ ,
event33 
Action33 
<33 
IAsyncOperation33 $
<33$ %
T33% &
>33& '
>33' (
	Completed33) 2
;332 3
	Exception66 
	Exception66 
{66 
get66 !
;66! "
}66# $
T;; 	
Result;;
 
{;; 
get;; 
;;; 
};; 
}<< 
}== «
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Networking\HttpOptions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 

Networking (
.( )
Internal) 1
{ 
struct		 

HttpOptions		 
{

 
public 
int #
RequestTimeoutInSeconds *
;* +
public 
int 
RedirectLimit  
;  !
} 
} ø
ÖC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Authentication\IEnvironmentId.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
.' (
Internal( 0
{ 
public 

	interface 
IEnvironmentId #
:$ %
IServiceComponent& 7
{		 
string 
EnvironmentId 
{ 
get "
;" #
}$ %
} 
} ™
ÄC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\AsyncOperation\AsyncOperationStatus.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
enum  
AsyncOperationStatus	 
{ 
None 
, 

InProgress 
, 
	Succeeded 
, 
Failed 
, 
	Cancelled 
} 
} »
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Device\IInstallationId.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Device $
.$ %
Internal% -
{ 
public 

	interface 
IInstallationId $
:% &
IServiceComponent' 8
{		 
string !
GetOrCreateIdentifier $
($ %
)% &
;& '
} 
} ë
èC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Telemetry\IDiagnosticsComponentProvider.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
	interface )
IDiagnosticsComponentProvider +
{ 
Task 
< 
IDiagnosticsFactory  
>  !'
CreateDiagnosticsComponents" =
(= >
)> ?
;? @
Task

 
<

 
string

 
>

 2
&GetSerializedProjectConfigurationAsync

 ;
(

; <
)

< =
;

= >
} 
} ≥P
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\AsyncOperation\TaskAsyncOperation.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class 	
TaskAsyncOperation
 
: 
AsyncOperationBase 1
,1 2
INotifyCompletion3 D
{ 
internal 
static 
TaskScheduler %
	Scheduler& /
;/ 0
Task 
m_Task 
; 
public 
override 
bool 
IsCompleted (
=>) +
m_Task, 2
.2 3
IsCompleted3 >
;> ?
public 
override  
AsyncOperationStatus ,
Status- 3
{ 	
get 
{   
if!! 
(!! 
m_Task!! 
==!! 
null!! "
)!!" #
{"" 
return##  
AsyncOperationStatus## /
.##/ 0
None##0 4
;##4 5
}$$ 
if&& 
(&& 
!&& 
m_Task&& 
.&& 
IsCompleted&& '
)&&' (
{'' 
return((  
AsyncOperationStatus(( /
.((/ 0

InProgress((0 :
;((: ;
})) 
if++ 
(++ 
m_Task++ 
.++ 

IsCanceled++ %
)++% &
{,, 
return--  
AsyncOperationStatus-- /
.--/ 0
	Cancelled--0 9
;--9 :
}.. 
if00 
(00 
m_Task00 
.00 
	IsFaulted00 $
)00$ %
{11 
return22  
AsyncOperationStatus22 /
.22/ 0
Failed220 6
;226 7
}33 
return55  
AsyncOperationStatus55 +
.55+ ,
	Succeeded55, 5
;555 6
}66 
}77 	
public:: 
override:: 
	Exception:: !
	Exception::" +
=>::, .
m_Task::/ 5
?::5 6
.::6 7
	Exception::7 @
;::@ A
public== 
override== 
void== 
	GetResult== &
(==& '
)==' (
{==) *
}==* +
public@@ 
override@@ 
AsyncOperationBase@@ *

GetAwaiter@@+ 5
(@@5 6
)@@6 7
{AA 	
returnBB 
thisBB 
;BB 
}CC 	
publicLL 
TaskAsyncOperationLL !
(LL! "
TaskLL" &
taskLL' +
)LL+ ,
{MM 	
ifOO 
(OO 
	SchedulerOO 
==OO 
nullOO !
)OO! "
{PP 
SetSchedulerQQ 
(QQ 
)QQ 
;QQ 
}RR 
m_TaskTT 
=TT 
taskTT 
;TT 
taskVV 
.VV 
ContinueWithVV 
(VV 
(VV 
tVV  
,VV  !
stateVV" '
)VV' (
=>VV) +
{WW 
varXX 
selfXX 
=XX 
(XX 
TaskAsyncOperationXX .
)XX. /
stateXX/ 4
;XX4 5
selfYY 
.YY 
DidCompleteYY  
(YY  !
)YY! "
;YY" #
}ZZ 
,ZZ 
thisZZ 
,ZZ 
CancellationTokenZZ &
.ZZ& '
NoneZZ' +
,ZZ+ ,#
TaskContinuationOptionsZZ- D
.ZZD E
NoneZZE I
,ZZI J
	SchedulerZZK T
)ZZT U
;ZZU V
}[[ 	
publicgg 
staticgg 
TaskAsyncOperationgg (
Rungg) ,
(gg, -
Actiongg- 3
actiongg4 :
)gg: ;
{hh 	
varii 
taskii 
=ii 
newii 
Taskii 
(ii  
actionii  &
)ii& '
;ii' (
varjj 
retjj 
=jj 
newjj 
TaskAsyncOperationjj ,
(jj, -
taskjj- 1
)jj1 2
;jj2 3
taskkk 
.kk 
Startkk 
(kk 
)kk 
;kk 
returnll 
retll 
;ll 
}mm 	
[oo 	)
RuntimeInitializeOnLoadMethodoo	 &
(oo& '%
RuntimeInitializeLoadTypeoo' @
.oo@ A
BeforeSceneLoadooA P
)ooP Q
]ooQ R
internalpp 
staticpp 
voidpp 
SetSchedulerpp )
(pp) *
)pp* +
{qq 	
	Schedulerrr 
=rr 
TaskSchedulerrr %
.rr% &-
!FromCurrentSynchronizationContextrr& G
(rrG H
)rrH I
;rrI J
}ss 	
}tt 
class 	
TaskAsyncOperation
 
< 
T 
> 
:  !
AsyncOperationBase" 4
<4 5
T5 6
>6 7
{
ÄÄ 
Task
ÅÅ 
<
ÅÅ 
T
ÅÅ 
>
ÅÅ 
m_Task
ÅÅ 
;
ÅÅ 
public
ÑÑ 
override
ÑÑ 
bool
ÑÑ 
IsCompleted
ÑÑ (
=>
ÑÑ) +
m_Task
ÑÑ, 2
.
ÑÑ2 3
IsCompleted
ÑÑ3 >
;
ÑÑ> ?
public
áá 
override
áá 
T
áá 
Result
áá  
=>
áá! #
m_Task
áá$ *
.
áá* +
Result
áá+ 1
;
áá1 2
public
ää 
override
ää 
T
ää 
	GetResult
ää #
(
ää# $
)
ää$ %
{
ãã 	
return
åå 
m_Task
åå 
.
åå 

GetAwaiter
åå $
(
åå$ %
)
åå% &
.
åå& '
	GetResult
åå' 0
(
åå0 1
)
åå1 2
;
åå2 3
}
çç 	
public
êê 
override
êê  
AsyncOperationBase
êê *
<
êê* +
T
êê+ ,
>
êê, -

GetAwaiter
êê. 8
(
êê8 9
)
êê9 :
{
ëë 	
return
íí 
this
íí 
;
íí 
}
ìì 	
public
ññ 
override
ññ "
AsyncOperationStatus
ññ ,
Status
ññ- 3
{
óó 	
get
òò 
{
ôô 
if
öö 
(
öö 
m_Task
öö 
==
öö 
null
öö "
)
öö" #
{
õõ 
return
úú "
AsyncOperationStatus
úú /
.
úú/ 0
None
úú0 4
;
úú4 5
}
ùù 
if
üü 
(
üü 
!
üü 
m_Task
üü 
.
üü 
IsCompleted
üü '
)
üü' (
{
†† 
return
°° "
AsyncOperationStatus
°° /
.
°°/ 0

InProgress
°°0 :
;
°°: ;
}
¢¢ 
if
§§ 
(
§§ 
m_Task
§§ 
.
§§ 

IsCanceled
§§ %
)
§§% &
{
•• 
return
¶¶ "
AsyncOperationStatus
¶¶ /
.
¶¶/ 0
	Cancelled
¶¶0 9
;
¶¶9 :
}
ßß 
if
©© 
(
©© 
m_Task
©© 
.
©© 
	IsFaulted
©© $
)
©©$ %
{
™™ 
return
´´ "
AsyncOperationStatus
´´ /
.
´´/ 0
Failed
´´0 6
;
´´6 7
}
¨¨ 
return
ÆÆ "
AsyncOperationStatus
ÆÆ +
.
ÆÆ+ ,
	Succeeded
ÆÆ, 5
;
ÆÆ5 6
}
ØØ 
}
∞∞ 	
public
≥≥ 
override
≥≥ 
	Exception
≥≥ !
	Exception
≥≥" +
=>
≥≥, .
m_Task
≥≥/ 5
?
≥≥5 6
.
≥≥6 7
	Exception
≥≥7 @
;
≥≥@ A
public
ºº  
TaskAsyncOperation
ºº !
(
ºº! "
Task
ºº" &
<
ºº& '
T
ºº' (
>
ºº( )
task
ºº* .
)
ºº. /
{
ΩΩ 	
if
øø 
(
øø  
TaskAsyncOperation
øø "
.
øø" #
	Scheduler
øø# ,
==
øø- /
null
øø0 4
)
øø4 5
{
¿¿  
TaskAsyncOperation
¡¡ "
.
¡¡" #
SetScheduler
¡¡# /
(
¡¡/ 0
)
¡¡0 1
;
¡¡1 2
}
¬¬ 
m_Task
ƒƒ 
=
ƒƒ 
task
ƒƒ 
;
ƒƒ 
task
∆∆ 
.
∆∆ 
ContinueWith
∆∆ 
(
∆∆ 
(
∆∆ 
t
∆∆  
,
∆∆  !
state
∆∆" '
)
∆∆' (
=>
∆∆) +
{
«« 
var
»» 
self
»» 
=
»» 
(
»»  
TaskAsyncOperation
»» .
<
»». /
T
»»/ 0
>
»»0 1
)
»»1 2
state
»»2 7
;
»»7 8
self
…… 
.
…… 
DidComplete
……  
(
……  !
)
……! "
;
……" #
}
   
,
   
this
   
,
   
CancellationToken
   &
.
  & '
None
  ' +
,
  + ,%
TaskContinuationOptions
  - D
.
  D E
None
  E I
,
  I J 
TaskAsyncOperation
  K ]
.
  ] ^
	Scheduler
  ^ g
)
  g h
;
  h i
}
ÀÀ 	
public
◊◊ 
static
◊◊  
TaskAsyncOperation
◊◊ (
<
◊◊( )
T
◊◊) *
>
◊◊* +
Run
◊◊, /
(
◊◊/ 0
Func
◊◊0 4
<
◊◊4 5
T
◊◊5 6
>
◊◊6 7
func
◊◊8 <
)
◊◊< =
{
ÿÿ 	
var
ŸŸ 
task
ŸŸ 
=
ŸŸ 
new
ŸŸ 
Task
ŸŸ 
<
ŸŸ  
T
ŸŸ  !
>
ŸŸ! "
(
ŸŸ" #
func
ŸŸ# '
)
ŸŸ' (
;
ŸŸ( )
var
⁄⁄ 
ret
⁄⁄ 
=
⁄⁄ 
new
⁄⁄  
TaskAsyncOperation
⁄⁄ ,
<
⁄⁄, -
T
⁄⁄- .
>
⁄⁄. /
(
⁄⁄/ 0
task
⁄⁄0 4
)
⁄⁄4 5
;
⁄⁄5 6
task
€€ 
.
€€ 
Start
€€ 
(
€€ 
)
€€ 
;
€€ 
return
‹‹ 
ret
‹‹ 
;
‹‹ 
}
›› 	
}
ﬁﬁ 
}ﬂﬂ ‰R
âC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\DependencyTreeInitializeOrderSorter.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
struct 
/
#DependencyTreeInitializeOrderSorter .
{ 
enum 
ExplorationMark 
{ 	
None 
, 
Viewed 
, 
Sorted 
} 	
public 
readonly 
DependencyTree &
Tree' +
;+ ,
public 
readonly 
ICollection #
<# $
int$ '
>' (
Target) /
;/ 0

Dictionary## 
<## 
int## 
,## 
ExplorationMark## '
>##' (/
#m_PackageTypeHashExplorationHistory##) L
;##L M
public%% /
#DependencyTreeInitializeOrderSorter%% 2
(%%2 3
DependencyTree%%3 A
tree%%B F
,%%F G
ICollection%%H S
<%%S T
int%%T W
>%%W X
target%%Y _
)%%_ `
{&& 	
Tree'' 
='' 
tree'' 
;'' 
Target(( 
=(( 
target(( 
;(( /
#m_PackageTypeHashExplorationHistory)) /
=))0 1
null))2 6
;))6 7
}** 	
public,, 
void,, ,
 SortRegisteredPackagesIntoTarget,, 4
(,,4 5
),,5 6
{-- 	
Target.. 
... 
Clear.. 
(.. 
).. 
;.. 8
,RemoveUnprovidedOptionalDependenciesFromTree00 8
(008 9
)009 :
;00: ;
var22 '
registeredPackageTypeHashes22 +
=22, - 
GetPackageTypeHashes22. B
(22B C
)22C D
;22D E/
#m_PackageTypeHashExplorationHistory33 /
=330 1
new332 5

Dictionary336 @
<33@ A
int33A D
,33D E
ExplorationMark33F U
>33U V
(33V W'
registeredPackageTypeHashes33W r
.33r s
Count33s x
)33x y
;33y z
try55 
{66 
foreach77 
(77 
var77 
packageTypeHash77 ,
in77- /'
registeredPackageTypeHashes770 K
)77K L
{88 
SortTreeThrough99 #
(99# $
packageTypeHash99$ 3
)993 4
;994 5
}:: 
};; 
catch<< 
(<< 
HashException<<  
ex<<! #
)<<# $
{== 
throw>> 
new>> -
!DependencyTreeSortFailedException>> ;
(>>; <
Tree>>< @
,>>@ A
Target>>B H
,>>H I
ex>>J L
)>>L M
;>>M N
}?? /
#m_PackageTypeHashExplorationHistoryAA /
=AA0 1
nullAA2 6
;AA6 7
}BB 	
voidDD 8
,RemoveUnprovidedOptionalDependenciesFromTreeDD 9
(DD9 :
)DD: ;
{EE 	
foreachFF 
(FF 
varFF  
dependencyTypeHashesFF -
inFF. 0
TreeFF1 5
.FF5 6:
.PackageTypeHashToComponentTypeHashDependenciesFF6 d
.FFd e
ValuesFFe k
)FFk l
{GG 0
$RemoveUnprovidedOptionalDependenciesHH 4
(HH4 5 
dependencyTypeHashesHH5 I
)HHI J
;HHJ K
}II 
}JJ 	
voidLL 0
$RemoveUnprovidedOptionalDependenciesLL 1
(LL1 2
IListLL2 7
<LL7 8
intLL8 ;
>LL; < 
dependencyTypeHashesLL= Q
)LLQ R
{MM 	
forNN 
(NN 
varNN 
iNN 
=NN  
dependencyTypeHashesNN -
.NN- .
CountNN. 3
-NN4 5
$numNN6 7
;NN7 8
iNN9 :
>=NN; =
$numNN> ?
;NN? @
iNNA B
--NNB D
)NND E
{OO 
varPP 
dependencyTypeHashPP &
=PP' ( 
dependencyTypeHashesPP) =
[PP= >
iPP> ?
]PP? @
;PP@ A
ifQQ 
(QQ 
TreeQQ 
.QQ 

IsOptionalQQ #
(QQ# $
dependencyTypeHashQQ$ 6
)QQ6 7
&&RR 
!RR 
TreeRR 
.RR 

IsProvidedRR '
(RR' (
dependencyTypeHashRR( :
)RR: ;
)RR; <
{SS  
dependencyTypeHashesTT (
.TT( )
RemoveAtTT) 1
(TT1 2
iTT2 3
)TT3 4
;TT4 5
}UU 
}VV 
}WW 	
voidYY 
SortTreeThroughYY 
(YY 
intYY  
packageTypeHashYY! 0
)YY0 1
{ZZ 	/
#m_PackageTypeHashExplorationHistory[[ /
.[[/ 0
TryGetValue[[0 ;
([[; <
packageTypeHash[[< K
,[[K L
out[[M P
var[[Q T
explorationMark[[U d
)[[d e
;[[e f
switch\\ 
(\\ 
explorationMark\\ #
)\\# $
{]] 
case^^ 
ExplorationMark^^ $
.^^$ %
Viewed^^% +
:^^+ ,
throw__ 
new__ '
CircularDependencyException__ 9
(__9 :
)__: ;
;__; <
caseaa 
ExplorationMarkaa $
.aa$ %
Sortedaa% +
:aa+ ,
returnbb 
;bb 
}cc 
MarkPackageee 
(ee 
packageTypeHashee '
,ee' (
ExplorationMarkee) 8
.ee8 9
Viewedee9 ?
)ee? @
;ee@ A
vargg  
dependencyTypeHashesgg $
=gg% &&
GetDependencyTypeHashesForgg' A
(ggA B
packageTypeHashggB Q
)ggQ R
;ggR S
tryhh 
{ii 
SortTreeThroughjj 
(jj   
dependencyTypeHashesjj  4
)jj4 5
;jj5 6
}kk 
catchll 
(ll 0
$DependencyTreeComponentHashExceptionll 7
exll8 :
)ll: ;
{mm 
thrownn 
newnn .
"DependencyTreePackageHashExceptionnn <
(nn< =
packageTypeHashnn= L
,nnL M
$"nnN P
$strnnP d
{nnd e
exnne g
.nng h
Hashnnh l
}nnl m
$str	nnm î
{
nnî ï
packageTypeHash
nnï §
}
nn§ •
$str
nn• ß
{
nnß ®
Tree
nn® ¨
.
nn¨ ≠'
PackageTypeHashToInstance
nn≠ ∆
[
nn∆ «
packageTypeHash
nn« ÷
]
nn÷ ◊
.
nn◊ ÿ
GetType
nnÿ ﬂ
(
nnﬂ ‡
)
nn‡ ·
.
nn· ‚
FullName
nn‚ Í
}
nnÍ Î
$str
nnÎ Ï
"
nnÏ Ì
,
nnÌ Ó
ex
nnÔ Ò
)
nnÒ Ú
;
nnÚ Û
}oo 
Targetqq 
.qq 
Addqq 
(qq 
packageTypeHashqq &
)qq& '
;qq' (
MarkPackagess 
(ss 
packageTypeHashss '
,ss' (
ExplorationMarkss) 8
.ss8 9
Sortedss9 ?
)ss? @
;ss@ A
}tt 	
voidvv 
SortTreeThroughvv 
(vv 
IEnumerablevv (
<vv( )
intvv) ,
>vv, - 
dependencyTypeHashesvv. B
)vvB C
{ww 	
foreachxx 
(xx 
varxx 

dependencyxx #
inxx$ & 
dependencyTypeHashesxx' ;
)xx; <
{yy 
varzz %
dependencyPackageTypeHashzz -
=zz. /!
GetPackageTypeHashForzz0 E
(zzE F

dependencyzzF P
)zzP Q
;zzQ R
SortTreeThrough{{ 
({{  %
dependencyPackageTypeHash{{  9
){{9 :
;{{: ;
}|| 
}}} 	
void 
MarkPackage 
( 
int 
packageTypeHash ,
,, -
ExplorationMark. =
mark> B
)B C
{
ÄÄ 	1
#m_PackageTypeHashExplorationHistory
ÅÅ /
[
ÅÅ/ 0
packageTypeHash
ÅÅ0 ?
]
ÅÅ? @
=
ÅÅA B
mark
ÅÅC G
;
ÅÅG H
}
ÇÇ 	!
IReadOnlyCollection
ÑÑ 
<
ÑÑ 
int
ÑÑ 
>
ÑÑ  "
GetPackageTypeHashes
ÑÑ! 5
(
ÑÑ5 6
)
ÑÑ6 7
=>
ÖÖ 
Tree
ÖÖ 
.
ÖÖ '
PackageTypeHashToInstance
ÖÖ -
.
ÖÖ- .
Keys
ÖÖ. 2
;
ÖÖ2 3
int
áá #
GetPackageTypeHashFor
áá !
(
áá! "
int
áá" %
componentTypeHash
áá& 7
)
áá7 8
=>
àà 
Tree
àà 
.
àà 0
"ComponentTypeHashToPackageTypeHash
àà 6
.
àà6 7
TryGetValue
àà7 B
(
ààB C
componentTypeHash
ààC T
,
ààT U
out
ààV Y
var
ààZ ]
packageHash
àà^ i
)
àài j
?
ààk l
packageHash
ààm x
:
àày z
throwàà{ Ä
newààÅ Ñ4
$DependencyTreeComponentHashExceptionààÖ ©
(àà© ™!
componentTypeHashàà™ ª
,ààª º
$"ààΩ ø
$strààø ”
{àà” ‘!
componentTypeHashàà‘ Â
}ààÂ Ê
$strààÊ ˜
"àà˜ ¯
)àà¯ ˘
;àà˘ ˙
IEnumerable
ää 
<
ää 
int
ää 
>
ää (
GetDependencyTypeHashesFor
ää 3
(
ää3 4
int
ää4 7
packageTypeHash
ää8 G
)
ääG H
=>
ãã 
Tree
ãã 
.
ãã <
.PackageTypeHashToComponentTypeHashDependencies
ãã B
.
ããB C
TryGetValue
ããC N
(
ããN O
packageTypeHash
ããO ^
,
ãã^ _
out
ãã` c
var
ããd g
dependencyHashes
ããh x
)
ããx y
?
ããz {
dependencyHashesãã| å
:ããç é
throwããè î
newããï ò2
"DependencyTreePackageHashExceptionããô ª
(ããª º
packageTypeHashããº À
,ããÀ Ã
$"ããÕ œ
$strããœ ·
{ãã· ‚
packageTypeHashãã‚ Ò
}ããÒ Ú
$strããÚ É
"ããÉ Ñ
)ããÑ Ö
;ããÖ Ü
}
åå 
}çç Æ
áC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Networking\ReadOnlyHttpResponse.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 

Networking (
.( )
Internal) 1
{ 
struct 
 
ReadOnlyHttpResponse 
{		 
HttpResponse

 

m_Response

 
;

  
public  
ReadOnlyHttpResponse #
(# $
HttpResponse$ 0
response1 9
)9 :
{ 	

m_Response 
= 
response !
;! "
} 	
public 
ReadOnlyHttpRequest "
Request# *
=>+ -

m_Response. 8
.8 9
Request9 @
;@ A
public 
IReadOnlyDictionary "
<" #
string# )
,) *
string+ 1
>1 2
Headers3 :
=>; =

m_Response> H
.H I
HeadersI P
;P Q
public 
byte 
[ 
] 
Data 
=> 

m_Response (
.( )
Data) -
;- .
public!! 
long!! 

StatusCode!! 
=>!! !

m_Response!!" ,
.!!, -

StatusCode!!- 7
;!!7 8
public'' 
string'' 
ErrorMessage'' "
=>''# %

m_Response''& 0
.''0 1
ErrorMessage''1 =
;''= >
public** 
bool** 
IsHttpError** 
=>**  "

m_Response**# -
.**- .
IsHttpError**. 9
;**9 :
public-- 
bool-- 
IsNetworkError-- "
=>--# %

m_Response--& 0
.--0 1
IsNetworkError--1 ?
;--? @
}.. 
}// ¶M
zC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\AsyncOperation\AsyncOperation.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class		 	
AsyncOperation		
 
:		 
IAsyncOperation		 *
{

 
public 
bool 
IsDone 
{ 
get  
;  !
	protected" +
set, /
;/ 0
}1 2
public  
AsyncOperationStatus #
Status$ *
{+ ,
get- 0
;0 1
	protected2 ;
set< ?
;? @
}A B
public 
event 
Action 
< 
IAsyncOperation +
>+ ,
	Completed- 6
{ 	
add 
{ 
if 
( 
IsDone 
) 
value 
( 
this 
) 
;  
else 
m_CompletedCallback '
+=( *
value+ 0
;0 1
} 
remove 
=> 
m_CompletedCallback )
-=* ,
value- 2
;2 3
} 	
public 
	Exception 
	Exception "
{# $
get% (
;( )
	protected* 3
set4 7
;7 8
}9 :
	protected"" 
Action"" 
<"" 
IAsyncOperation"" (
>""( )
m_CompletedCallback""* =
;""= >
public'' 
void'' 
SetInProgress'' !
(''! "
)''" #
{(( 	
Status)) 
=))  
AsyncOperationStatus)) )
.))) *

InProgress))* 4
;))4 5
}** 	
public// 
void// 
Succeed// 
(// 
)// 
{00 	
if11 
(11 
IsDone11 
)11 
{22 
return33 
;33 
}44 
IsDone66 
=66 
true66 
;66 
Status77 
=77  
AsyncOperationStatus77 )
.77) *
	Succeeded77* 3
;773 4
m_CompletedCallback88 
?88  
.88  !
Invoke88! '
(88' (
this88( ,
)88, -
;88- .
m_CompletedCallback99 
=99  !
null99" &
;99& '
}:: 	
publicBB 
voidBB 
FailBB 
(BB 
	ExceptionBB "
reasonBB# )
)BB) *
{CC 	
ifDD 
(DD 
IsDoneDD 
)DD 
{EE 
returnFF 
;FF 
}GG 
	ExceptionII 
=II 
reasonII 
;II 
IsDoneJJ 
=JJ 
trueJJ 
;JJ 
StatusKK 
=KK  
AsyncOperationStatusKK )
.KK) *
FailedKK* 0
;KK0 1
m_CompletedCallbackLL 
?LL  
.LL  !
InvokeLL! '
(LL' (
thisLL( ,
)LL, -
;LL- .
m_CompletedCallbackMM 
=MM  !
nullMM" &
;MM& '
}NN 	
publicSS 
voidSS 
CancelSS 
(SS 
)SS 
{TT 	
ifUU 
(UU 
IsDoneUU 
)UU 
{VV 
returnWW 
;WW 
}XX 
	ExceptionZZ 
=ZZ 
newZZ &
OperationCanceledExceptionZZ 6
(ZZ6 7
)ZZ7 8
;ZZ8 9
IsDone[[ 
=[[ 
true[[ 
;[[ 
Status\\ 
=\\  
AsyncOperationStatus\\ )
.\\) *
	Cancelled\\* 3
;\\3 4
m_CompletedCallback]] 
?]]  
.]]  !
Invoke]]! '
(]]' (
this]]( ,
)]], -
;]]- .
m_CompletedCallback^^ 
=^^  !
null^^" &
;^^& '
}__ 	
boolbb 
IEnumeratorbb 
.bb 
MoveNextbb !
(bb! "
)bb" #
=>bb$ &
!bb' (
IsDonebb( .
;bb. /
voidhh 
IEnumeratorhh 
.hh 
Resethh 
(hh 
)hh  
{hh! "
}hh" #
objectkk 
IEnumeratorkk 
.kk 
Currentkk "
=>kk# %
nullkk& *
;kk* +
}ll 
classtt 	
AsyncOperationtt
 
<tt 
Ttt 
>tt 
:tt 
IAsyncOperationtt -
<tt- .
Ttt. /
>tt/ 0
{uu 
publicww 
boolww 
IsDoneww 
{ww 
getww  
;ww  !
	protectedww" +
setww, /
;ww/ 0
}ww1 2
publiczz  
AsyncOperationStatuszz #
Statuszz$ *
{zz+ ,
getzz- 0
;zz0 1
	protectedzz2 ;
setzz< ?
;zz? @
}zzA B
public}} 
event}} 
Action}} 
<}} 
IAsyncOperation}} +
<}}+ ,
T}}, -
>}}- .
>}}. /
	Completed}}0 9
{~~ 	
add 
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 
IsDone
ÅÅ 
)
ÅÅ 
value
ÇÇ 
(
ÇÇ 
this
ÇÇ 
)
ÇÇ 
;
ÇÇ  
else
ÉÉ !
m_CompletedCallback
ÑÑ '
+=
ÑÑ( *
value
ÑÑ+ 0
;
ÑÑ0 1
}
ÖÖ 
remove
ÜÜ 
=>
ÜÜ !
m_CompletedCallback
ÜÜ )
-=
ÜÜ* ,
value
ÜÜ- 2
;
ÜÜ2 3
}
áá 	
public
ää 
	Exception
ää 
	Exception
ää "
{
ää# $
get
ää% (
;
ää( )
	protected
ää* 3
set
ää4 7
;
ää7 8
}
ää9 :
public
çç 
T
çç 
Result
çç 
{
çç 
get
çç 
;
çç 
	protected
çç (
set
çç) ,
;
çç, -
}
çç. /
	protected
êê 
Action
êê 
<
êê 
IAsyncOperation
êê (
<
êê( )
T
êê) *
>
êê* +
>
êê+ ,!
m_CompletedCallback
êê- @
;
êê@ A
public
ïï 
void
ïï 
SetInProgress
ïï !
(
ïï! "
)
ïï" #
{
ññ 	
Status
óó 
=
óó "
AsyncOperationStatus
óó )
.
óó) *

InProgress
óó* 4
;
óó4 5
}
òò 	
public
†† 
void
†† 
Succeed
†† 
(
†† 
T
†† 
result
†† $
)
††$ %
{
°° 	
if
¢¢ 
(
¢¢ 
IsDone
¢¢ 
)
¢¢ 
{
££ 
return
§§ 
;
§§ 
}
•• 
Result
ßß 
=
ßß 
result
ßß 
;
ßß 
IsDone
®® 
=
®® 
true
®® 
;
®® 
Status
©© 
=
©© "
AsyncOperationStatus
©© )
.
©©) *
	Succeeded
©©* 3
;
©©3 4!
m_CompletedCallback
™™ 
?
™™  
.
™™  !
Invoke
™™! '
(
™™' (
this
™™( ,
)
™™, -
;
™™- .!
m_CompletedCallback
´´ 
=
´´  !
null
´´" &
;
´´& '
}
¨¨ 	
public
¥¥ 
void
¥¥ 
Fail
¥¥ 
(
¥¥ 
	Exception
¥¥ "
reason
¥¥# )
)
¥¥) *
{
µµ 	
if
∂∂ 
(
∂∂ 
IsDone
∂∂ 
)
∂∂ 
{
∑∑ 
return
∏∏ 
;
∏∏ 
}
ππ 
	Exception
ªª 
=
ªª 
reason
ªª 
;
ªª 
IsDone
ºº 
=
ºº 
true
ºº 
;
ºº 
Status
ΩΩ 
=
ΩΩ "
AsyncOperationStatus
ΩΩ )
.
ΩΩ) *
Failed
ΩΩ* 0
;
ΩΩ0 1!
m_CompletedCallback
ææ 
?
ææ  
.
ææ  !
Invoke
ææ! '
(
ææ' (
this
ææ( ,
)
ææ, -
;
ææ- .!
m_CompletedCallback
øø 
=
øø  !
null
øø" &
;
øø& '
}
¿¿ 	
public
≈≈ 
void
≈≈ 
Cancel
≈≈ 
(
≈≈ 
)
≈≈ 
{
∆∆ 	
if
«« 
(
«« 
IsDone
«« 
)
«« 
{
»» 
return
…… 
;
…… 
}
   
	Exception
ÃÃ 
=
ÃÃ 
new
ÃÃ (
OperationCanceledException
ÃÃ 6
(
ÃÃ6 7
)
ÃÃ7 8
;
ÃÃ8 9
IsDone
ÕÕ 
=
ÕÕ 
true
ÕÕ 
;
ÕÕ 
Status
ŒŒ 
=
ŒŒ "
AsyncOperationStatus
ŒŒ )
.
ŒŒ) *
	Cancelled
ŒŒ* 3
;
ŒŒ3 4!
m_CompletedCallback
œœ 
?
œœ  
.
œœ  !
Invoke
œœ! '
(
œœ' (
this
œœ( ,
)
œœ, -
;
œœ- .!
m_CompletedCallback
–– 
=
––  !
null
––" &
;
––& '
}
—— 	
bool
‘‘ 
IEnumerator
‘‘ 
.
‘‘ 
MoveNext
‘‘ !
(
‘‘! "
)
‘‘" #
=>
‘‘$ &
!
‘‘' (
IsDone
‘‘( .
;
‘‘. /
void
⁄⁄ 
IEnumerator
⁄⁄ 
.
⁄⁄ 
Reset
⁄⁄ 
(
⁄⁄ 
)
⁄⁄  
{
⁄⁄! "
}
⁄⁄" #
object
›› 
IEnumerator
›› 
.
›› 
Current
›› "
=>
››# %
null
››& *
;
››* +
}
ﬁﬁ 
}ﬂﬂ ‰)
rC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\CoreRegistry.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
public 

sealed 
class 
CoreRegistry $
{ 
public 
static 
CoreRegistry "
Instance# +
{, -
get. 1
;1 2
internal3 ;
set< ?
;? @
}A B
[ 	
NotNull	 
] 
internal 
IPackageRegistry !
PackageRegistry" 1
{2 3
get4 7
;7 8
private9 @
setA D
;D E
}F G
[ 	
NotNull	 
] 
internal 
IComponentRegistry #
ComponentRegistry$ 5
{6 7
get8 ;
;; <
private= D
setE H
;H I
}J K
internal 
CoreRegistry 
( 
) 
{ 	
var 
dependencyTree 
=  
new! $
DependencyTree% 3
(3 4
)4 5
;5 6
PackageRegistry 
= 
new !
PackageRegistry" 1
(1 2
dependencyTree2 @
)@ A
;A B
var '
componentTypeHashToInstance +
=, -
new. 1

Dictionary2 <
<< =
int= @
,@ A
IServiceComponentB S
>S T
(T U
dependencyTree 
. '
ComponentTypeHashToInstance :
.: ;
Count; @
)@ A
;A B
ComponentRegistry 
= 
new  #
ComponentRegistry$ 5
(5 6'
componentTypeHashToInstance6 Q
)Q R
;R S
} 	
internal!! 
CoreRegistry!! 
(!! 
["" 
NotNull"" 
]"" 
IPackageRegistry"" &
packageRegistry""' 6
,""6 7
[## 
NotNull## 
]## 
IComponentRegistry## (
componentRegistry##) :
)##: ;
{$$ 	
PackageRegistry%% 
=%% 
packageRegistry%% -
;%%- .
ComponentRegistry&& 
=&& 
componentRegistry&&  1
;&&1 2
}'' 	
public66 
CoreRegistration66 
RegisterPackage66  /
<66/ 0
TPackage660 8
>668 9
(669 :
[77 
NotNull77 
]77 
TPackage77 
package77 &
)77& '
where88 
TPackage88 
:88 !
IInitializablePackage88 2
{99 	
return:: 
PackageRegistry:: "
.::" #
RegisterPackage::# 2
(::2 3
package::3 :
)::: ;
;::; <
};; 	
[FF 	
SuppressMessageFF	 
(FF 
$strFF $
,FF$ %
$strFF& F
)FFF G
]FFG H
publicGG 
voidGG $
RegisterServiceComponentGG ,
<GG, -

TComponentGG- 7
>GG7 8
(GG8 9
[HH 
NotNullHH 
]HH 

TComponentHH  
	componentHH! *
)HH* +
whereII 

TComponentII 
:II 
IServiceComponentII 0
{JJ 	
ComponentRegistryKK 
.KK $
RegisterServiceComponentKK 6
<KK6 7

TComponentKK7 A
>KKA B
(KKB C
	componentKKC L
)KKL M
;KKM N
}LL 	
public[[ 

TComponent[[ 
GetServiceComponent[[ -
<[[- .

TComponent[[. 8
>[[8 9
([[9 :
)[[: ;
where\\ 

TComponent\\ 
:\\ 
IServiceComponent\\ 0
{]] 	
return^^ 
ComponentRegistry^^ $
.^^$ %
GetServiceComponent^^% 8
<^^8 9

TComponent^^9 C
>^^C D
(^^D E
)^^E F
;^^F G
}__ 	
internalaa 
voidaa #
LockPackageRegistrationaa -
(aa- .
)aa. /
{bb 	
ifcc 
(cc 
PackageRegistrycc 
iscc  "!
LockedPackageRegistrycc# 8
)cc8 9
{dd 
returnee 
;ee 
}ff 
PackageRegistryhh 
=hh 
newhh !!
LockedPackageRegistryhh" 7
(hh7 8
PackageRegistryhh8 G
)hhG H
;hhH I
}ii 	
internalkk 
voidkk %
LockComponentRegistrationkk /
(kk/ 0
)kk0 1
{ll 	
ifmm 
(mm 
ComponentRegistrymm !
ismm" $#
LockedComponentRegistrymm% <
)mm< =
{nn 
returnoo 
;oo 
}pp 
ComponentRegistryrr 
=rr 
newrr  ##
LockedComponentRegistryrr$ ;
(rr; <
ComponentRegistryrr< M
)rrM N
;rrN O
}ss 	
}tt 
}uu «
ÖC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Telemetry\IDiagnosticsFactory.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
public		 

	interface		 
IDiagnosticsFactory		 (
:		) *
IServiceComponent		+ <
{

 
IReadOnlyDictionary 
< 
string "
," #
string$ *
>* +

CommonTags, 6
{7 8
get9 <
;< =
}> ?
IDiagnostics 
Create 
( 
string "
packageName# .
). /
;/ 0
} 
} •
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\DependencyTreeExceptions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
internal 
class -
!DependencyTreeSortFailedException 4
:5 6
	Exception7 @
{ 
public		 -
!DependencyTreeSortFailedException		 0
(		0 1
DependencyTree		1 ?
tree		@ D
,		D E
ICollection		F Q
<		Q R
int		R U
>		U V
target		W ]
)		] ^
:

 
base

 
(

 "
CreateExceptionMessage

 )
(

) *
tree

* .
,

. /
target

0 6
)

6 7
)

7 8
{ 	
} 	
public -
!DependencyTreeSortFailedException 0
(0 1
DependencyTree1 ?
tree@ D
,D E
ICollectionF Q
<Q R
intR U
>U V
targetW ]
,] ^
	Exception_ h
inneri n
)n o
: 
base 
( "
CreateExceptionMessage )
() *
tree* .
,. /
target0 6
,6 7
inner8 =
)= >
,> ?
inner@ E
)E F
{ 	
} 	
private 
static 
string "
CreateExceptionMessage 4
(4 5
DependencyTree5 C
treeD H
,H I
ICollectionJ U
<U V
intV Y
>Y Z
target[ a
,a b
	Exceptionc l
innerm r
=s t
nullu y
)y z
{ 	
var 
orderedTreeJson 
=  !
tree" &
.& '
ToJson' -
(- .
target. 4
)4 5
;5 6
var 
errorMessage 
= 
$" !
$str! l
{l m
orderedTreeJsonm |
}| }
"} ~
;~ 
errorMessage 
= 
errorMessage '
+( )
(* +
inner+ 0
!=1 3
null4 8
?9 :
$"; =
$str= G
{G H
innerH M
.M N
MessageN U
}U V
"V W
:X Y
stringZ `
.` a
Emptya f
)f g
;g h
return 
errorMessage 
;  
} 	
} 
} µ
ÄC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Authentication\IPlayerId.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
.' (
Internal( 0
{ 
public		 

	interface		 
	IPlayerId		 
:		  
IServiceComponent		! 2
{

 
string 
PlayerId 
{ 
get 
; 
}  
event 
Action 
< 
string 
> 
PlayerIdChanged ,
;, -
} 
} Â

ãC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Configuration\IProjectConfiguration.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
.+ ,
Internal, 4
{ 
public 

	interface !
IProjectConfiguration *
:+ ,
IServiceComponent- >
{ 
bool 
GetBool 
( 
string 
key 
,  
bool! %
defaultValue& 2
=3 4
default5 <
)< =
;= >
int)) 
GetInt)) 
()) 
string)) 
key)) 
,)) 
int)) "
defaultValue))# /
=))0 1
default))2 9
)))9 :
;)): ;
float88 
GetFloat88 
(88 
string88 
key88 !
,88! "
float88# (
defaultValue88) 5
=886 7
default888 ?
)88? @
;88@ A
stringGG 
	GetStringGG 
(GG 
stringGG 
keyGG  #
,GG# $
stringGG% +
defaultValueGG, 8
=GG9 :
defaultGG; B
)GGB C
;GGC D
}HH 
}II ∏
vC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\CoreRegistration.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
public 

readonly 
struct 
CoreRegistration +
{ 
readonly 
IPackageRegistry !

m_Registry" ,
;, -
readonly 
int 
m_PackageHash "
;" #
internal 
CoreRegistration !
(! "
IPackageRegistry" 2
registry3 ;
,; <
int= @
packageHashA L
)L M
{ 	

m_Registry 
= 
registry !
;! "
m_PackageHash 
= 
packageHash '
;' (
} 	
public"" 
CoreRegistration"" 
	DependsOn""  )
<"") *
T""* +
>""+ ,
("", -
)""- .
where## 
T## 
:## 
IServiceComponent## '
{$$ 	

m_Registry%% 
.%% 
RegisterDependency%% )
<%%) *
T%%* +
>%%+ ,
(%%, -
m_PackageHash%%- :
)%%: ;
;%%; <
return&& 
this&& 
;&& 
}'' 	
public22 
CoreRegistration22 
OptionallyDependsOn22  3
<223 4
T224 5
>225 6
(226 7
)227 8
where33 
T33 
:33 
IServiceComponent33 '
{44 	

m_Registry55 
.55 &
RegisterOptionalDependency55 1
<551 2
T552 3
>553 4
(554 5
m_PackageHash555 B
)55B C
;55C D
return66 
this66 
;66 
}77 	
publicBB 
CoreRegistrationBB 
ProvidesComponentBB  1
<BB1 2
TBB2 3
>BB3 4
(BB4 5
)BB5 6
whereCC 
TCC 
:CC 
IServiceComponentCC '
{DD 	

m_RegistryEE 
.EE 
RegisterProvisionEE (
<EE( )
TEE) *
>EE* +
(EE+ ,
m_PackageHashEE, 9
)EE9 :
;EE: ;
returnFF 
thisFF 
;FF 
}GG 	
}HH 
}II ù
{C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\IInitializablePackage.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
public		 

	interface		 !
IInitializablePackage		 *
{

 
Task 

Initialize 
( 
CoreRegistry $
registry% -
)- .
;. /
} 
} ¬2
vC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Telemetry\CoreDiagnostics.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class 	
CoreDiagnostics
 
{		 
internal

 
const

 
string

 
CorePackageName

 -
=

. /
$str

0 I
;

I J
internal 
const 
string ,
 CircularDependencyDiagnosticName >
=? @
$strA V
;V W
internal 
const 
string )
CorePackageInitDiagnosticName ;
=< =
$str> Q
;Q R
internal 
const 
string -
!OperateServicesInitDiagnosticName ?
=@ A
$strB Y
;Y Z
internal 
const 
string  
ProjectConfigTagName 2
=3 4
$str5 E
;E F
public 
IDictionary 
< 
string !
,! "
string# )
>) *
CoreTags+ 3
{4 5
get6 9
;9 :
internal; C
setD G
;G H
}I J
public 
static 
CoreDiagnostics %
Instance& .
{/ 0
get1 4
;4 5
internal6 >
set? B
;B C
}D E
internal )
IDiagnosticsComponentProvider .(
DiagnosticsComponentProvider/ K
{L M
getN Q
;Q R
setS V
;V W
}X Y
internal 
IDiagnostics 
Diagnostics )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
async 
Task 
< 
IDiagnostics 
>  "
GetOrCreateDiagnostics! 7
(7 8
)8 9
{ 	
if 
( 
Diagnostics 
is 
null #
)# $
{ 
var   
diagnosticFactory   %
=  & '
await  ( -(
DiagnosticsComponentProvider  . J
.  J K'
CreateDiagnosticsComponents  K f
(  f g
)  g h
;  h i
Diagnostics!! 
=!! 
diagnosticFactory!! /
.!!/ 0
Create!!0 6
(!!6 7
CorePackageName!!7 F
)!!F G
;!!G H#
SetProjectConfiguration"" '
(""' (
await""( -(
DiagnosticsComponentProvider"". J
.""J K2
&GetSerializedProjectConfigurationAsync""K q
(""q r
)""r s
)""s t
;""t u
}## 
return$$ 
Diagnostics$$ 
;$$ 
}%% 	
public'' 
void'' #
SetProjectConfiguration'' +
(''+ ,
string'', 2#
serializedProjectConfig''3 J
)''J K
{(( 	
CoreTags)) 
=)) 
new)) 

Dictionary)) %
<))% &
string))& ,
,)), -
string)). 4
>))4 5
())5 6
)))6 7
;))7 8
CoreTags** 
[**  
ProjectConfigTagName** )
]**) *
=**+ ,#
serializedProjectConfig**- D
;**D E
}++ 	
public-- 
void-- -
!SendCircularDependencyDiagnostics-- 5
(--5 6
	Exception--6 ?
	exception--@ I
)--I J
{.. 	
var// 
sendTask// 
=// 
SendCoreDiagnostics// .
(//. /,
 CircularDependencyDiagnosticName/// O
,//O P
	exception//Q Z
)//Z [
;//[ \
sendTask00 
.00 
ContinueWith00 !
(00! "
OnSendFailed00" .
,00. /#
TaskContinuationOptions000 G
.00G H
OnlyOnFaulted00H U
)00U V
;00V W
}11 	
public33 
void33 *
SendCorePackageInitDiagnostics33 2
(332 3
	Exception333 <
	exception33= F
)33F G
{44 	
var55 
sendTask55 
=55 
SendCoreDiagnostics55 .
(55. /)
CorePackageInitDiagnosticName55/ L
,55L M
	exception55N W
)55W X
;55X Y
sendTask66 
.66 
ContinueWith66 !
(66! "
OnSendFailed66" .
,66. /#
TaskContinuationOptions660 G
.66G H
OnlyOnFaulted66H U
)66U V
;66V W
}77 	
public99 
void99 .
"SendOperateServicesInitDiagnostics99 6
(996 7
	Exception997 @
	exception99A J
)99J K
{:: 	
var;; 
sendTask;; 
=;; 
SendCoreDiagnostics;; .
(;;. /-
!OperateServicesInitDiagnosticName;;/ P
,;;P Q
	exception;;R [
);;[ \
;;;\ ]
sendTask<< 
.<< 
ContinueWith<< !
(<<! "
OnSendFailed<<" .
,<<. /#
TaskContinuationOptions<<0 G
.<<G H
OnlyOnFaulted<<H U
)<<U V
;<<V W
}== 	
static?? 
void?? 
OnSendFailed??  
(??  !
Task??! %
failedSendTask??& 4
)??4 5
{@@ 	

CoreLoggerAA 
.AA 
LogExceptionAA #
(AA# $
failedSendTaskAA$ 2
.AA2 3
	ExceptionAA3 <
)AA< =
;AA= >
}BB 	
asyncDD 
TaskDD 
SendCoreDiagnosticsDD &
(DD& '
stringDD' -
diagnosticNameDD. <
,DD< =
	ExceptionDD> G
	exceptionDDH Q
)DDQ R
{EE 	
varFF 
diagnosticsFF 
=FF 
awaitFF #"
GetOrCreateDiagnosticsFF$ :
(FF: ;
)FF; <
;FF< =
diagnosticsGG 
.GG 
SendDiagnosticGG &
(GG& '
diagnosticNameGG' 5
,GG5 6
	exceptionGG7 @
.GG@ A
ToStringGGA I
(GGI J
)GGJ K
,GGK L
CoreTagsGGM U
)GGU V
;GGV W
}HH 	
}II 
}JJ Û	
uC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Wire\IChannel.cs
	namespace 	
Unity
 
. 
Services 
. 
Wire 
. 
Internal &
{ 
public

 

	interface

 
IChannel

 
:

 
IDisposable

  +
{ 
event 
Action 
< 
string 
> 
MessageReceived ,
;, -
event 
Action 
< 
byte 
[ 
] 
> !
BinaryMessageReceived 2
;2 3
event 
Action 
KickReceived !
;! "
event 
Action 
< 
SubscriptionState &
>& '
NewStateReceived( 8
;8 9
event$$ 
Action$$ 
<$$ 
string$$ 
>$$ 
ErrorReceived$$ *
;$$* +
Task33 
SubscribeAsync33 
(33 
)33 
;33 
Task== 
UnsubscribeAsync== 
(== 
)== 
;==  
}>> 
}?? â
ÇC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\AsyncOperation\IAsyncOperationAwaiter.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
	interface "
IAsyncOperationAwaiter $
:% &%
ICriticalNotifyCompletion' @
{ 
bool 
IsCompleted 
{ 
get 
; 
}  !
void 
	GetResult 
( 
) 
; 
} 
	interface## "
IAsyncOperationAwaiter## $
<##$ %
out##% (
T##) *
>##* +
:##, -%
ICriticalNotifyCompletion##. G
{$$ 
bool&& 
IsCompleted&& 
{&& 
get&& 
;&& 
}&&  !
T11 	
	GetResult11
 
(11 
)11 
;11 
}22 
}33 ü
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Telemetry\IDiagnostics.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
public 

	interface 
IDiagnostics !
{		 
void 
SendDiagnostic 
( 
string "
name# '
,' (
string) /
message0 7
,7 8
IDictionary9 D
<D E
stringE K
,K L
stringM S
>S T
tagsU Y
=Z [
null\ `
)` a
;a b
} 
} ˆ
wC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Utils\UnityWebRequestUtils.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
static 

class  
UnityWebRequestUtils %
{ 
public		 
const		 
string		 
JsonContentType		 +
=		, -
$str		. @
;		@ A
public 
static 
bool 
HasSucceeded '
(' (
this( ,
UnityWebRequest- <
self= A
)A B
{ 	
return 
self 
. 
result 
== !
UnityWebRequest" 1
.1 2
Result2 8
.8 9
Success9 @
;@ A
} 	
public 
static 
Task 
< 
string !
>! "
GetTextAsync# /
(/ 0
string0 6
uri7 :
): ;
{ 	
var 
completionSource  
=! "
new# & 
TaskCompletionSource' ;
<; <
string< B
>B C
(C D
)D E
;E F
var 
request 
= 
UnityWebRequest )
.) *
Get* -
(- .
uri. 1
)1 2
;2 3
request 
. 
SendWebRequest "
(" #
)# $
. 
	completed 
+= /
#CompleteFetchTaskOnRequestCompleted A
;A B
return 
completionSource #
.# $
Task$ (
;( )
void /
#CompleteFetchTaskOnRequestCompleted 4
(4 5
UnityEngine5 @
.@ A
AsyncOperationA O
rawOperationP \
)\ ]
{ 
try 
{   
var!! 
	operation!! !
=!!" #
(!!$ %)
UnityWebRequestAsyncOperation!!% B
)!!B C
rawOperation!!C O
;!!O P
using"" 
("" 
var"" 
operationRequest"" /
=""0 1
	operation""2 ;
.""; <

webRequest""< F
)""F G
{## 
if$$ 
($$ 
operationRequest$$ ,
.$$, -
HasSucceeded$$- 9
($$9 :
)$$: ;
)$$; <
{%% 
completionSource&& ,
.&&, -
TrySetResult&&- 9
(&&9 :
operationRequest&&: J
.&&J K
downloadHandler&&K Z
.&&Z [
text&&[ _
)&&_ `
;&&` a
}'' 
else(( 
{)) 
var** 
errorMessage**  ,
=**- .
$str**/ L
+**M N
$"++  "
$str++" )
{++) *
operationRequest++* :
.++: ;
url++; >
}++> ?
"++? @
+++A B
$",,  "
$str,," ,
{,,, -
operationRequest,,- =
.,,= >
error,,> C
},,C D
",,D E
;,,E F
completionSource-- ,
.--, -
TrySetException--- <
(--< =
new--= @
	Exception--A J
(--J K
errorMessage--K W
)--W X
)--X Y
;--Y Z
}.. 
}// 
}00 
catch11 
(11 
	Exception11  
e11! "
)11" #
{22 
completionSource33 $
.33$ %
TrySetException33% 4
(334 5
e335 6
)336 7
;337 8
}44 
}55 
}66 	
}77 
}88 ∞
ÇC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Wire\IChannelTokenProvider.cs
	namespace 	
Unity
 
. 
Services 
. 
Wire 
. 
Internal &
{ 
public		 

	interface		 !
IChannelTokenProvider		 *
{

 
Task 
< 
ChannelToken 
> 
GetTokenAsync (
(( )
)) *
;* +
} 
} é-
wC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Utils\DictionaryExtensions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
static 

class  
DictionaryExtensions %
{ 
public 
static 
TDictionary !
MergeNoOverride" 1
<1 2
TDictionary2 =
,= >
TKey? C
,C D
TValueE K
>K L
(L M
this		 
TDictionary		 
self		 !
,		! "
[		# $
NotNull		$ +
]		+ ,
IDictionary		- 8
<		8 9
TKey		9 =
,		= >
TValue		? E
>		E F

dictionary		G Q
)		Q R
where

 
TDictionary

 
:

 
IDictionary

  +
<

+ ,
TKey

, 0
,

0 1
TValue

2 8
>

8 9
{ 	
foreach 
( 
var 
entry 
in !

dictionary" ,
), -
{ 
if 
( 
self 
. 
ContainsKey $
($ %
entry% *
.* +
Key+ .
). /
)/ 0
continue 
; 
self 
[ 
entry 
. 
Key 
] 
=  !
entry" '
.' (
Value( -
;- .
} 
return 
self 
; 
} 	
public 
static 
TDictionary !
MergeAllowOverride" 4
<4 5
TDictionary5 @
,@ A
TKeyB F
,F G
TValueH N
>N O
(O P
this 
TDictionary 
self !
,! "
[# $
NotNull$ +
]+ ,
IDictionary- 8
<8 9
TKey9 =
,= >
TValue? E
>E F

dictionaryG Q
)Q R
where 
TDictionary 
: 
IDictionary  +
<+ ,
TKey, 0
,0 1
TValue2 8
>8 9
{ 	
foreach 
( 
var 
entry 
in !

dictionary" ,
), -
{ 
self 
[ 
entry 
. 
Key 
] 
=  !
entry" '
.' (
Value( -
;- .
} 
return   
self   
;   
}!! 	
public## 
static## 
bool## 
ValueEquals## &
<##& '
TKey##' +
,##+ ,
TValue##- 3
>##3 4
(##4 5
this##5 9
IDictionary##: E
<##E F
TKey##F J
,##J K
TValue##L R
>##R S
x##T U
,##U V
IDictionary##W b
<##b c
TKey##c g
,##g h
TValue##i o
>##o p
y##q r
)##r s
=>$$ 
ValueEquals$$ 
($$ 
x$$ 
,$$ 
y$$ 
,$$  
EqualityComparer$$! 1
<$$1 2
TValue$$2 8
>$$8 9
.$$9 :
Default$$: A
)$$A B
;$$B C
public&& 
static&& 
bool&& 
ValueEquals&& &
<&&& '
TKey&&' +
,&&+ ,
TValue&&- 3
,&&3 4
	TComparer&&5 >
>&&> ?
(&&? @
this'' 
IDictionary'' 
<'' 
TKey'' !
,''! "
TValue''# )
>'') *
x''+ ,
,'', -
IDictionary''. 9
<''9 :
TKey'': >
,''> ?
TValue''@ F
>''F G
y''H I
,''I J
	TComparer''K T
valueComparer''U b
)''b c
where(( 
	TComparer(( 
:(( 
IEqualityComparer(( /
<((/ 0
TValue((0 6
>((6 7
{)) 	
if** 
(** 
ReferenceEquals** 
(**  
x**  !
,**! "
y**# $
)**$ %
)**% &
{++ 
return,, 
true,, 
;,, 
}-- 
if// 
(// 
ReferenceEquals// 
(//  
x//  !
,//! "
null//# '
)//' (
||00 
ReferenceEquals00 "
(00" #
y00# $
,00$ %
null00& *
)00* +
||11 
x11 
.11 
Count11 
!=11 
y11 
.11  
Count11  %
)11% &
{22 
return33 
false33 
;33 
}44 
foreach66 
(66 
var66 
kvp66 
in66 
x66  !
)66! "
{77 
if88 
(88 
!88 
y88 
.88 
TryGetValue88 "
(88" #
kvp88# &
.88& '
Key88' *
,88* +
out88, /
var880 3
value2884 :
)88: ;
||99 
!99 
valueComparer99 %
.99% &
Equals99& ,
(99, -
kvp99- 0
.990 1
Value991 6
,996 7
value2998 >
)99> ?
)99? @
{:: 
return;; 
false;;  
;;;  !
}<< 
}== 
return?? 
true?? 
;?? 
}@@ 	
}AA 
}BB ÿ
rC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Telemetry\CoreMetrics.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class 	
CoreMetrics
 
{		 
internal

 
const

 
string

 )
CorePackageInitTimeMetricName

 ;
=

< =
$str

> Q
;

Q R
internal 
const 
string ,
 AllPackagesInitSuccessMetricName >
=? @
$strA \
;\ ]
internal 
const 
string )
AllPackagesInitTimeMetricName ;
=< =
$str> V
;V W
public 
static 
CoreMetrics !
Instance" *
{+ ,
get- 0
;0 1
internal2 :
set; >
;> ?
}@ A
internal 
IMetrics 
Metrics !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
void ,
 SendAllPackagesInitSuccessMetric 4
(4 5
)5 6
{ 	
Metrics 
. 
SendSumMetric !
(! ",
 AllPackagesInitSuccessMetricName" B
)B C
;C D
} 	
public 
void )
SendAllPackagesInitTimeMetric 1
(1 2
double2 8
initTimeSeconds9 H
)H I
{ 	
Metrics 
. 
SendHistogramMetric '
(' ()
AllPackagesInitTimeMetricName( E
,E F
initTimeSecondsG V
)V W
;W X
} 	
public 
void )
SendCorePackageInitTimeMetric 1
(1 2
double2 8
initTimeSeconds9 H
)H I
{ 	
Metrics   
.   
SendHistogramMetric   '
(  ' ()
CorePackageInitTimeMetricName  ( E
,  E F
initTimeSeconds  G V
)  V W
;  W X
}!! 	
}"" 
}## ˆ0
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\AsyncOperation\AsyncOperationBase.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
abstract 
class 
AsyncOperationBase %
:& '"
CustomYieldInstruction( >
,> ?
IAsyncOperation@ O
,O P
INotifyCompletionQ b
{ 
public 
override 
bool 
keepWaiting (
=>) +
!, -
IsCompleted- 8
;8 9
public 
abstract 
bool 
IsCompleted (
{) *
get+ .
;. /
}0 1
public!! 
bool!! 
IsDone!! 
=>!! 
IsCompleted!! )
;!!) *
public(( 
abstract((  
AsyncOperationStatus(( ,
Status((- 3
{((4 5
get((6 9
;((9 :
}((; <
public// 
abstract// 
	Exception// !
	Exception//" +
{//, -
get//. 1
;//1 2
}//3 4
public66 
abstract66 
void66 
	GetResult66 &
(66& '
)66' (
;66( )
public== 
abstract== 
AsyncOperationBase== *

GetAwaiter==+ 5
(==5 6
)==6 7
;==7 8
Action?? 
<?? 
IAsyncOperation?? 
>?? 
m_CompletedCallback??  3
;??3 4
publicGG 
eventGG 
ActionGG 
<GG 
IAsyncOperationGG +
>GG+ ,
	CompletedGG- 6
{HH 	
addII 
{JJ 
ifKK 
(KK 
IsDoneKK 
)KK 
{LL 
valueMM 
(MM 
thisMM 
)MM 
;MM  
}NN 
elseOO 
{PP 
m_CompletedCallbackQQ '
+=QQ( *
valueQQ+ 0
;QQ0 1
}RR 
}SS 
removeTT 
=>TT 
m_CompletedCallbackTT )
-=TT* ,
valueTT- 2
;TT2 3
}UU 	
	protectedWW 
voidWW 
DidCompleteWW "
(WW" #
)WW# $
{XX 	
m_CompletedCallbackYY 
?YY  
.YY  !
InvokeYY! '
(YY' (
thisYY( ,
)YY, -
;YY- .
}ZZ 	
public`` 
virtual`` 
void`` 
OnCompleted`` '
(``' (
Action``( .
continuation``/ ;
)``; <
{aa 	
	Completedbb 
+=bb 
opbb 
=>bb 
continuationbb +
?bb+ ,
.bb, -
Invokebb- 3
(bb3 4
)bb4 5
;bb5 6
}cc 	
}dd 
abstractnn 
classnn 
AsyncOperationBasenn %
<nn% &
Tnn& '
>nn' (
:nn) *"
CustomYieldInstructionnn+ A
,nnA B
IAsyncOperationnnC R
<nnR S
TnnS T
>nnT U
,nnU V
INotifyCompletionnnW h
{oo 
publicuu 
overrideuu 
booluu 
keepWaitinguu (
=>uu) +
!uu, -
IsCompleteduu- 8
;uu8 9
public|| 
abstract|| 
bool|| 
IsCompleted|| (
{||) *
get||+ .
;||. /
}||0 1
public
ÉÉ 
bool
ÉÉ 
IsDone
ÉÉ 
=>
ÉÉ 
IsCompleted
ÉÉ )
;
ÉÉ) *
public
ää 
abstract
ää "
AsyncOperationStatus
ää ,
Status
ää- 3
{
ää4 5
get
ää6 9
;
ää9 :
}
ää; <
public
ëë 
abstract
ëë 
	Exception
ëë !
	Exception
ëë" +
{
ëë, -
get
ëë. 1
;
ëë1 2
}
ëë3 4
public
òò 
abstract
òò 
T
òò 
Result
òò  
{
òò! "
get
òò# &
;
òò& '
}
òò( )
public
üü 
abstract
üü 
T
üü 
	GetResult
üü #
(
üü# $
)
üü$ %
;
üü% &
public
¶¶ 
abstract
¶¶  
AsyncOperationBase
¶¶ *
<
¶¶* +
T
¶¶+ ,
>
¶¶, -

GetAwaiter
¶¶. 8
(
¶¶8 9
)
¶¶9 :
;
¶¶: ;
Action
®® 
<
®® 
IAsyncOperation
®® 
<
®® 
T
®®  
>
®®  !
>
®®! "!
m_CompletedCallback
®®# 6
;
®®6 7
public
∞∞ 
event
∞∞ 
Action
∞∞ 
<
∞∞ 
IAsyncOperation
∞∞ +
<
∞∞+ ,
T
∞∞, -
>
∞∞- .
>
∞∞. /
	Completed
∞∞0 9
{
±± 	
add
≤≤ 
{
≥≥ 
if
¥¥ 
(
¥¥ 
IsDone
¥¥ 
)
¥¥ 
{
µµ 
value
∂∂ 
(
∂∂ 
this
∂∂ 
)
∂∂ 
;
∂∂  
}
∑∑ 
else
∏∏ 
{
ππ !
m_CompletedCallback
∫∫ '
+=
∫∫( *
value
∫∫+ 0
;
∫∫0 1
}
ªª 
}
ºº 
remove
ΩΩ 
=>
ΩΩ !
m_CompletedCallback
ΩΩ )
-=
ΩΩ* ,
value
ΩΩ- 2
;
ΩΩ2 3
}
ææ 	
	protected
¿¿ 
void
¿¿ 
DidComplete
¿¿ "
(
¿¿" #
)
¿¿# $
{
¡¡ 	!
m_CompletedCallback
¬¬ 
?
¬¬  
.
¬¬  !
Invoke
¬¬! '
(
¬¬' (
this
¬¬( ,
)
¬¬, -
;
¬¬- .
}
√√ 	
public
…… 
virtual
…… 
void
…… 
OnCompleted
…… '
(
……' (
Action
……( .
continuation
……/ ;
)
……; <
{
   	
	Completed
ÀÀ 
+=
ÀÀ 
op
ÀÀ 
=>
ÀÀ 
continuation
ÀÀ +
?
ÀÀ+ ,
.
ÀÀ, -
Invoke
ÀÀ- 3
(
ÀÀ3 4
)
ÀÀ4 5
;
ÀÀ5 6
}
ÃÃ 	
}
ÕÕ 
}ŒŒ ª
ÉC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Threading\IUnityThreadUtils.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Threading '
.' (
Internal( 0
{ 
public 

	interface 
IUnityThreadUtils &
:' (
IServiceComponent) :
{ 
bool "
IsRunningOnUnityThread #
{$ %
get& )
;) *
}+ ,
Task 
	PostAsync 
( 
[ 
NotNull 
]  
Action! '
action( .
). /
;/ 0
Task** 
	PostAsync** 
(** 
[** 
NotNull** 
]**  
Action**! '
<**' (
object**( .
>**. /
action**0 6
,**6 7
object**8 >
state**? D
)**D E
;**E F
Task99 
<99 
T99 
>99 
	PostAsync99 
<99 
T99 
>99 
(99 
[99 
NotNull99 %
]99% &
Func99' +
<99+ ,
T99, -
>99- .
action99/ 5
)995 6
;996 7
TaskLL 
<LL 
TLL 
>LL 
	PostAsyncLL 
<LL 
TLL 
>LL 
(LL 
[LL 
NotNullLL %
]LL% &
FuncLL' +
<LL+ ,
objectLL, 2
,LL2 3
TLL4 5
>LL5 6
actionLL7 =
,LL= >
objectLL? E
stateLLF K
)LLK L
;LLL M
voidUU 
SendUU 
(UU 
[UU 
NotNullUU 
]UU 
ActionUU "
actionUU# )
)UU) *
;UU* +
voidbb 
Sendbb 
(bb 
[bb 
NotNullbb 
]bb 
Actionbb "
<bb" #
objectbb# )
>bb) *
actionbb+ 1
,bb1 2
objectbb3 9
statebb: ?
)bb? @
;bb@ A
Trr 	
Sendrr
 
<rr 
Trr 
>rr 
(rr 
[rr 
NotNullrr 
]rr 
Funcrr  
<rr  !
Trr! "
>rr" #
actionrr$ *
)rr* +
;rr+ ,
T
ÜÜ 	
Send
ÜÜ
 
<
ÜÜ 
T
ÜÜ 
>
ÜÜ 
(
ÜÜ 
[
ÜÜ 
NotNull
ÜÜ 
]
ÜÜ 
Func
ÜÜ  
<
ÜÜ  !
object
ÜÜ! '
,
ÜÜ' (
T
ÜÜ) *
>
ÜÜ* +
action
ÜÜ, 2
,
ÜÜ2 3
object
ÜÜ4 :
state
ÜÜ; @
)
ÜÜ@ A
;
ÜÜA B
}
áá 
}àà ≠&
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Networking\HttpRequest.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 

Networking (
.( )
Internal) 1
{ 
class 	
HttpRequest
 
{		 
public 
string 
Method 
; 
public 
string 
Url 
; 
public 

Dictionary 
< 
string  
,  !
string" (
>( )
Headers* 1
;1 2
public 
byte 
[ 
] 
Body 
; 
public$$ 
HttpOptions$$ 
Options$$ "
;$$" #
public)) 
HttpRequest)) 
()) 
))) 
{)) 
})) 
public;; 
HttpRequest;; 
(;; 
string;; !
method;;" (
,;;( )
string;;* 0
url;;1 4
,;;4 5

Dictionary;;6 @
<;;@ A
string;;A G
,;;G H
string;;I O
>;;O P
headers;;Q X
,;;X Y
byte;;Z ^
[;;^ _
];;_ `
body;;a e
);;e f
{<< 	
Method== 
=== 
method== 
;== 
Url>> 
=>> 
url>> 
;>> 
Headers?? 
=?? 
headers?? 
;?? 
Body@@ 
=@@ 
body@@ 
;@@ 
}AA 	
publicMM 
HttpRequestMM 
	SetMethodMM $
(MM$ %
stringMM% +
methodMM, 2
)MM2 3
{NN 	
MethodOO 
=OO 
methodOO 
;OO 
returnQQ 
thisQQ 
;QQ 
}RR 	
public]] 
HttpRequest]] 
SetUrl]] !
(]]! "
string]]" (
url]]) ,
)]], -
{^^ 	
Url__ 
=__ 
url__ 
;__ 
returnaa 
thisaa 
;aa 
}bb 	
publicqq 
HttpRequestqq 
	SetHeaderqq $
(qq$ %
stringqq% +
keyqq, /
,qq/ 0
stringqq1 7
valueqq8 =
)qq= >
{rr 	
ifss 
(ss 
Headersss 
isss 
nullss 
)ss  
{tt 
Headersuu 
=uu 
newuu 

Dictionaryuu (
<uu( )
stringuu) /
,uu/ 0
stringuu1 7
>uu7 8
(uu8 9
$numuu9 :
)uu: ;
;uu; <
}vv 
Headersxx 
[xx 
keyxx 
]xx 
=xx 
valuexx  
;xx  !
returnzz 
thiszz 
;zz 
}{{ 	
public
ÜÜ 
HttpRequest
ÜÜ 

SetHeaders
ÜÜ %
(
ÜÜ% &

Dictionary
ÜÜ& 0
<
ÜÜ0 1
string
ÜÜ1 7
,
ÜÜ7 8
string
ÜÜ9 ?
>
ÜÜ? @
headers
ÜÜA H
)
ÜÜH I
{
áá 	
Headers
àà 
=
àà 
headers
àà 
;
àà 
return
ää 
this
ää 
;
ää 
}
ãã 	
public
ññ 
HttpRequest
ññ 
SetBody
ññ "
(
ññ" #
byte
ññ# '
[
ññ' (
]
ññ( )
body
ññ* .
)
ññ. /
{
óó 	
Body
òò 
=
òò 
body
òò 
;
òò 
return
öö 
this
öö 
;
öö 
}
õõ 	
public
¶¶ 
HttpRequest
¶¶ 

SetOptions
¶¶ %
(
¶¶% &
HttpOptions
¶¶& 1
options
¶¶2 9
)
¶¶9 :
{
ßß 	
Options
®® 
=
®® 
options
®® 
;
®® 
return
™™ 
this
™™ 
;
™™ 
}
´´ 	
public
∂∂ 
HttpRequest
∂∂ 
SetRedirectLimit
∂∂ +
(
∂∂+ ,
int
∂∂, /
redirectLimit
∂∂0 =
)
∂∂= >
{
∑∑ 	
Options
∏∏ 
.
∏∏ 
RedirectLimit
∏∏ !
=
∏∏" #
redirectLimit
∏∏$ 1
;
∏∏1 2
return
∫∫ 
this
∫∫ 
;
∫∫ 
}
ªª 	
public
«« 
HttpRequest
«« !
SetTimeOutInSeconds
«« .
(
««. /
int
««/ 2
timeout
««3 :
)
««: ;
{
»» 	
Options
…… 
.
…… %
RequestTimeoutInSeconds
…… +
=
……, -
timeout
……. 5
;
……5 6
return
ÀÀ 
this
ÀÀ 
;
ÀÀ 
}
ÃÃ 	
}
ÕÕ 
}ŒŒ —
tC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\DependencyTree.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class		 	
DependencyTree		
 
{

 
public 
readonly 

Dictionary "
<" #
int# &
,& '!
IInitializablePackage( =
>= >%
PackageTypeHashToInstance? X
;X Y
public 
readonly 

Dictionary "
<" #
int# &
,& '
int( +
>+ ,.
"ComponentTypeHashToPackageTypeHash- O
;O P
public 
readonly 

Dictionary "
<" #
int# &
,& '
List( ,
<, -
int- 0
>0 1
>1 2:
.PackageTypeHashToComponentTypeHashDependencies3 a
;a b
public"" 
readonly"" 

Dictionary"" "
<""" #
int""# &
,""& '
IServiceComponent""( 9
>""9 :'
ComponentTypeHashToInstance""; V
;""V W
internal$$ 
DependencyTree$$ 
($$  
)$$  !
:%% 
this%% 
(%% 
new&& 

Dictionary&& 
<&& 
int&& "
,&&" #!
IInitializablePackage&&$ 9
>&&9 :
(&&: ;
)&&; <
,&&< =
new'' 

Dictionary'' 
<'' 
int'' "
,''" #
int''$ '
>''' (
(''( )
)'') *
,''* +
new(( 

Dictionary(( 
<(( 
int(( "
,((" #
List(($ (
<((( )
int(() ,
>((, -
>((- .
(((. /
)((/ 0
,((0 1
new)) 

Dictionary)) 
<)) 
int)) "
,))" #
IServiceComponent))$ 5
>))5 6
())6 7
)))7 8
)))8 9
{)): ;
})); <
internal++ 
DependencyTree++ 
(++  

Dictionary,, 
<,, 
int,, 
,,, !
IInitializablePackage,, 1
>,,1 2
packageToInstance,,3 D
,,,D E

Dictionary-- 
<-- 
int-- 
,-- 
int-- 
>--  
componentToPackage--! 3
,--3 4

Dictionary.. 
<.. 
int.. 
,.. 
List..  
<..  !
int..! $
>..$ %
>..% &*
packageToComponentDependencies..' E
,..E F

Dictionary// 
<// 
int// 
,// 
IServiceComponent// -
>//- .
componentToInstance/// B
)//B C
{00 	%
PackageTypeHashToInstance11 %
=11& '
packageToInstance11( 9
;119 :.
"ComponentTypeHashToPackageTypeHash22 .
=22/ 0
componentToPackage221 C
;22C D:
.PackageTypeHashToComponentTypeHashDependencies33 :
=33; <*
packageToComponentDependencies33= [
;33[ \'
ComponentTypeHashToInstance44 '
=44( )
componentToInstance44* =
;44= >
}55 	
}66 
}77 é
vC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\MissingComponent.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class 	
MissingComponent
 
: 
IServiceComponent .
{		 
public

 
Type

 
IntendedType

  
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
( )
internal 
MissingComponent !
(! "
Type" &
intendedType' 3
)3 4
{ 	
IntendedType 
= 
intendedType '
;' (
} 	
} 
} Ö
ãC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\PackageRegistry\LockedPackageRegistry.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
class 	!
LockedPackageRegistry
 
:  !
IPackageRegistry" 2
{ 
const 
string 
k_ErrorMessage #
=$ %
$str& N
+O P
$str		 7
+		8 9
$str

 Y
;

Y Z
[ 	
NotNull	 
] 
internal 
IPackageRegistry !
Registry" *
{+ ,
get- 0
;0 1
}2 3
public !
LockedPackageRegistry $
($ %
[ 
NotNull 
] 
IPackageRegistry &
registryToLock' 5
)5 6
{ 	
Registry 
= 
registryToLock %
;% &
} 	
public 
DependencyTree 
Tree "
{ 	
get 
=> 
Registry 
. 
Tree  
;  !
set 
=> 
Registry 
. 
Tree  
=! "
value# (
;( )
} 	
public 
CoreRegistration 
RegisterPackage  /
</ 0
TPackage0 8
>8 9
(9 :
TPackage: B
packageC J
)J K
where 
TPackage 
: !
IInitializablePackage 2
{ 	
throw 
new %
InvalidOperationException /
(/ 0
k_ErrorMessage0 >
)> ?
;? @
} 	
public!! 
void!! 
RegisterDependency!! &
<!!& '

TComponent!!' 1
>!!1 2
(!!2 3
int!!3 6
packageTypeHash!!7 F
)!!F G
where"" 

TComponent"" 
:"" 
IServiceComponent"" 0
{## 	
throw$$ 
new$$ %
InvalidOperationException$$ /
($$/ 0
k_ErrorMessage$$0 >
)$$> ?
;$$? @
}%% 	
public'' 
void'' &
RegisterOptionalDependency'' .
<''. /

TComponent''/ 9
>''9 :
('': ;
int''; >
packageTypeHash''? N
)''N O
where(( 

TComponent(( 
:(( 
IServiceComponent(( 0
{)) 	
throw** 
new** %
InvalidOperationException** /
(**/ 0
k_ErrorMessage**0 >
)**> ?
;**? @
}++ 	
public-- 
void-- 
RegisterProvision-- %
<--% &

TComponent--& 0
>--0 1
(--1 2
int--2 5
packageTypeHash--6 E
)--E F
where.. 

TComponent.. 
:.. 
IServiceComponent.. 0
{// 	
throw00 
new00 %
InvalidOperationException00 /
(00/ 0
k_ErrorMessage000 >
)00> ?
;00? @
}11 	
}22 
}33 ”
ÖC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Configuration\ICloudProjectId.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
.+ ,
Internal, 4
{ 
public 

	interface 
ICloudProjectId $
:% &
IServiceComponent' 8
{		 
string 
GetCloudProjectId  
(  !
)! "
;" #
} 
} ’	
âC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Vivox\IVivoxTokenProviderInternal.cs
	namespace 	
Unity
 
. 
Services 
. 
Vivox 
. 
Internal '
{ 
public

 

	interface

 '
IVivoxTokenProviderInternal

 0
{ 
Task 
< 
string 
> 
GetTokenAsync "
(" #
string# )
issuer* 0
=1 2
null3 7
,7 8
TimeSpan9 A
?A B

expirationC M
=N O
nullP T
,T U
stringV \
userUri] d
=e f
nullg k
,k l
stringm s
actiont z
={ |
null	} Å
,
Å Ç
string
É â
conferenceUri
ä ó
=
ò ô
null
ö û
,
û ü
string
† ¶
fromUserUri
ß ≤
=
≥ ¥
null
µ π
,
π ∫
string
ª ¡
realm
¬ «
=
» …
null
  Œ
)
Œ œ
;
œ –
} 
} ¢
yC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Wire\ChannelToken.cs
	namespace 	
Unity
 
. 
Services 
. 
Wire 
. 
Internal &
{ 
public 

struct 
ChannelToken 
{ 
public 
string 
ChannelName !
;! "
public 
string 
Token 
; 
} 
} π
ÉC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Authentication\IAccessToken.cs
	namespace 	
Unity
 
. 
Services 
. 
Authentication '
.' (
Internal( 0
{ 
public 

	interface 
IAccessToken !
:" #
IServiceComponent$ 5
{		 
string 
AccessToken 
{ 
get  
;  !
}" #
} 
} À
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Wire\SubscriptionState.cs
	namespace 	
Unity
 
. 
Services 
. 
Wire 
. 
Internal &
{ 
public 

enum 
SubscriptionState !
{		 
Unsubscribed 
, 
Synced 
, 
Unsynced 
, 
Error 
, 
Subscribing 
, 
}   
}!! «
rC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Wire\IWire.cs
	namespace 	
Unity
 
. 
Services 
. 
Wire 
. 
Internal &
{ 
public

 

	interface

 
IWire

 
:

 
IServiceComponent

 .
{ 
IChannel 
CreateChannel 
( !
IChannelTokenProvider 4
tokenProvider5 B
)B C
;C D
} 
} ö
àC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Networking\HttpRequestExtensions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 

Networking (
.( )
Internal) 1
{ 
static 

class !
HttpRequestExtensions &
{ 
public 
static 
HttpRequest !
AsGet" '
(' (
this( ,
HttpRequest- 8
self9 =
)= >
{ 	
return 
self 
. 
	SetMethod !
(! "
$str" '
)' (
;( )
} 	
public 
static 
HttpRequest !
AsPost" (
(( )
this) -
HttpRequest. 9
self: >
)> ?
{   	
return!! 
self!! 
.!! 
	SetMethod!! !
(!!! "
$str!!" (
)!!( )
;!!) *
}"" 	
public-- 
static-- 
HttpRequest-- !
AsPut--" '
(--' (
this--( ,
HttpRequest--- 8
self--9 =
)--= >
{.. 	
return// 
self// 
.// 
	SetMethod// !
(//! "
$str//" '
)//' (
;//( )
}00 	
public;; 
static;; 
HttpRequest;; !
AsDelete;;" *
(;;* +
this;;+ /
HttpRequest;;0 ;
self;;< @
);;@ A
{<< 	
return== 
self== 
.== 
	SetMethod== !
(==! "
$str==" *
)==* +
;==+ ,
}>> 	
publicII 
staticII 
HttpRequestII !
AsPatchII" )
(II) *
thisII* .
HttpRequestII/ :
selfII; ?
)II? @
{JJ 	
returnKK 
selfKK 
.KK 
	SetMethodKK !
(KK! "
$strKK" )
)KK) *
;KK* +
}LL 	
publicWW 
staticWW 
HttpRequestWW !
AsHeadWW" (
(WW( )
thisWW) -
HttpRequestWW. 9
selfWW: >
)WW> ?
{XX 	
returnYY 
selfYY 
.YY 
	SetMethodYY !
(YY! "
$strYY" (
)YY( )
;YY) *
}ZZ 	
publicee 
staticee 
HttpRequestee !
	AsConnectee" +
(ee+ ,
thisee, 0
HttpRequestee1 <
selfee= A
)eeA B
{ff 	
returngg 
selfgg 
.gg 
	SetMethodgg !
(gg! "
$strgg" +
)gg+ ,
;gg, -
}hh 	
publicss 
staticss 
HttpRequestss !
	AsOptionsss" +
(ss+ ,
thisss, 0
HttpRequestss1 <
selfss= A
)ssA B
{tt 	
returnuu 
selfuu 
.uu 
	SetMethoduu !
(uu! "
$struu" +
)uu+ ,
;uu, -
}vv 	
public
ÅÅ 
static
ÅÅ 
HttpRequest
ÅÅ !
AsTrace
ÅÅ" )
(
ÅÅ) *
this
ÅÅ* .
HttpRequest
ÅÅ/ :
self
ÅÅ; ?
)
ÅÅ? @
{
ÇÇ 	
return
ÉÉ 
self
ÉÉ 
.
ÉÉ 
	SetMethod
ÉÉ !
(
ÉÉ! "
$str
ÉÉ" )
)
ÉÉ) *
;
ÉÉ* +
}
ÑÑ 	
}
ÖÖ 
}ÜÜ òc
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\DependencyTreeExtensions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
internal 
static 
class $
DependencyTreeExtensions 2
{		 
internal

 
static

 
string

 
ToJson

 %
(

% &
this

& *
DependencyTree

+ 9
tree

: >
,

> ?
ICollection

@ K
<

K L
int

L O
>

O P
order

Q V
=

W X
null

Y ]
)

] ^
{ 	
var 

orderArray 
= 
new  
JArray! '
(' (
)( )
;) *
var 
orderProperty 
= 
new  #
	JProperty$ -
(- .
$str. 7
,7 8

orderArray9 C
)C D
;D E
if 
( 
order 
!= 
null 
) 
{ 
foreach 
( 
var 
packageHash (
in) +
order, 1
)1 2
{ 
var 
packageJObject &
=' (
GetPackageJObject) :
(: ;
tree; ?
,? @
packageHashA L
)L M
;M N

orderArray 
. 
Add "
(" #
new# &
JObject' .
(. /
packageJObject/ =
)= >
)> ?
;? @
} 
} 
var 
packageTree 
= 
new !
JArray" (
(( )
)) *
;* +
var 
packagesProperty  
=! "
new# &
	JProperty' 0
(0 1
$str1 ;
,; <
packageTree= H
)H I
;I J
foreach 
( 
var 
packageHash $
in% '
tree( ,
., -%
PackageTypeHashToInstance- F
.F G
KeysG K
)K L
{ 
var 
package 
= 
GetPackageJObject /
(/ 0
tree0 4
,4 5
packageHash6 A
)A B
;B C
packageTree 
. 
Add 
(  
package  '
)' (
;( )
} 
var 

components 
= 
new  
JArray! '
(' (
)( )
;) *
var 
componentsProperty "
=# $
new% (
	JProperty) 2
(2 3
$str3 ?
,? @

componentsA K
)K L
;L M
foreach 
( 
var 
componentHash &
in' )
tree* .
.. /'
ComponentTypeHashToInstance/ J
.J K
KeysK O
)O P
{   
var!! 
componentJObject!! $
=!!% &
GetComponentJObject!!' :
(!!: ;
tree!!; ?
,!!? @
componentHash!!A N
)!!N O
;!!O P

components"" 
."" 
Add"" 
("" 
componentJObject"" /
)""/ 0
;""0 1
}## 
var$$ 
json$$ 
=$$ 
new$$ 
JObject$$ "
($$" #
orderProperty$$# 0
,$$0 1
packagesProperty$$2 B
,$$B C
componentsProperty$$D V
)$$V W
;$$W X
return%% 
json%% 
.%% 
ToString%%  
(%%  !
)%%! "
;%%" #
}&& 	
internal(( 
static(( 
bool(( 

IsOptional(( '
(((' (
this((( ,
DependencyTree((- ;
tree((< @
,((@ A
int((B E
componentTypeHash((F W
)((W X
{)) 	
return** 
tree** 
.** '
ComponentTypeHashToInstance** 3
.**3 4
TryGetValue**4 ?
(**? @
componentTypeHash**@ Q
,**Q R
out**S V
var**W Z
	component**[ d
)**d e
&&++ 
	component++ 
is++ 
null++  $
;++$ %
},, 	
internal.. 
static.. 
bool.. 

IsProvided.. '
(..' (
this..( ,
DependencyTree..- ;
tree..< @
,..@ A
int..B E
componentTypeHash..F W
)..W X
{// 	
return00 
tree00 
.00 .
"ComponentTypeHashToPackageTypeHash00 :
.00: ;
ContainsKey00; F
(00F G
componentTypeHash00G X
)00X Y
;00Y Z
}11 	
private33 
static33 
JObject33 
GetPackageJObject33 0
(330 1
DependencyTree331 ?
tree33@ D
,33D E
int33F I
packageHash33J U
)33U V
{44 	
var55 
packageHashProperty55 #
=55$ %
new55& )
	JProperty55* 3
(553 4
$str554 A
,55A B
packageHash55C N
)55N O
;55O P
tree66 
.66 %
PackageTypeHashToInstance66 *
.66* +
TryGetValue66+ 6
(666 7
packageHash667 B
,66B C
out66D G
var66H K
packageProvider66L [
)66[ \
;66\ ]
var77 #
packageProviderProperty77 '
=77( )
new77* -
	JProperty77. 7
(777 8
$str778 I
,77I J
packageProvider77K Z
!=77[ ]
null77^ b
?77c d
packageProvider77e t
.77t u
GetType77u |
(77| }
)77} ~
.77~ 
Name	77 É
:
77Ñ Ö
$str
77Ü å
)
77å ç
;
77ç é
var88 
packageDependencies88 #
=88$ %
new88& )
JArray88* 0
(880 1
)881 2
;882 3
var99 '
packageDependenciesProperty99 +
=99, -
new99. 1
	JProperty992 ;
(99; <
$str99< Q
,99Q R
packageDependencies99S f
)99f g
;99g h
if:: 
(:: 
tree:: 
.:: :
.PackageTypeHashToComponentTypeHashDependencies:: C
.::C D
TryGetValue::D O
(::O P
packageHash::P [
,::[ \
out::] `
var::a d!
componentDependencies::e z
)::z {
)::{ |
{;; 
foreach<< 
(<< 
var<< 
componentDependency<< 0
in<<1 3!
componentDependencies<<4 I
)<<I J
{== 
var>> 
dependencyHash>> &
=>>' (
new>>) ,
	JProperty>>- 6
(>>6 7
$str>>7 G
,>>G H
componentDependency>>I \
)>>\ ]
;>>] ^
tree?? 
.?? '
ComponentTypeHashToInstance?? 4
.??4 5
TryGetValue??5 @
(??@ A
componentDependency??A T
,??T U
out??V Y
var??Z ]
componentInstance??^ o
)??o p
;??p q
var@@ 
dependencyComponent@@ +
=@@, -
new@@. 1
	JProperty@@2 ;
(@@; <
$str@@< Q
,@@Q R"
GetComponentIdentifier@@S i
(@@i j
componentInstance@@j {
)@@{ |
)@@| }
;@@} ~
varAA 
dependencyProvidedAA *
=AA+ ,
newAA- 0
	JPropertyAA1 :
(AA: ;
$strAA; O
,AAO P
treeAAQ U
.AAU V

IsProvidedAAV `
(AA` a
componentDependencyAAa t
)AAt u
?AAv w
$strAAx ~
:	AA Ä
$str
AAÅ à
)
AAà â
;
AAâ ä
varBB 
dependencyOptionalBB *
=BB+ ,
newBB- 0
	JPropertyBB1 :
(BB: ;
$strBB; O
,BBO P
treeBBQ U
.BBU V

IsOptionalBBV `
(BB` a
componentDependencyBBa t
)BBt u
?BBv w
$strBBx ~
:	BB Ä
$str
BBÅ à
)
BBà â
;
BBâ ä
varCC 
dependencyJObjectCC )
=CC* +
newCC, /
JObjectCC0 7
(CC7 8
dependencyHashCC8 F
,CCF G
dependencyComponentCCH [
,CC[ \
dependencyProvidedCC] o
,CCo p
dependencyOptional	CCq É
)
CCÉ Ñ
;
CCÑ Ö
packageDependenciesDD '
.DD' (
AddDD( +
(DD+ ,
dependencyJObjectDD, =
)DD= >
;DD> ?
}EE 
}FF 
returnGG 
newGG 
JObjectGG 
(GG 
packageHashPropertyGG 2
,GG2 3#
packageProviderPropertyGG4 K
,GGK L'
packageDependenciesPropertyGGM h
)GGh i
;GGi j
}HH 	
privateJJ 
staticJJ 
JObjectJJ 
GetComponentJObjectJJ 2
(JJ2 3
DependencyTreeJJ3 A
treeJJB F
,JJF G
intJJH K
componentHashJJL Y
)JJY Z
{KK 	
varLL !
componentHashPropertyLL %
=LL& '
newLL( +
	JPropertyLL, 5
(LL5 6
$strLL6 E
,LLE F
componentHashLLG T
)LLT U
;LLU V
treeMM 
.MM '
ComponentTypeHashToInstanceMM ,
.MM, -
TryGetValueMM- 8
(MM8 9
componentHashMM9 F
,MMF G
outMMH K
varMML O
	componentMMP Y
)MMY Z
;MMZ [
varNN 
componentPropertyNN !
=NN" #
newNN$ '
	JPropertyNN( 1
(NN1 2
$strNN2 =
,NN= >"
GetComponentIdentifierNN? U
(NNU V
	componentNNV _
)NN_ `
)NN` a
;NNa b
treeOO 
.OO .
"ComponentTypeHashToPackageTypeHashOO 3
.OO3 4
TryGetValueOO4 ?
(OO? @
componentHashOO@ M
,OOM N
outOOO R
varOOS V
packageHashOOW b
)OOb c
;OOc d
varPP  
componentPackageHashPP $
=PP% &
newPP' *
	JPropertyPP+ 4
(PP4 5
$strPP5 K
,PPK L
packageHashPPM X
)PPX Y
;PPY Z
varQQ 

hasPackageQQ 
=QQ 
treeQQ !
.QQ! "%
PackageTypeHashToInstanceQQ" ;
.QQ; <
TryGetValueQQ< G
(QQG H
packageHashQQH S
,QQS T
outQQU X
varQQY \
packageInstanceQQ] l
)QQl m
;QQm n
varRR 
componentPackageRR  
=RR! "
newRR# &
	JPropertyRR' 0
(RR0 1
$strRR1 C
,RRC D

hasPackageRRE O
?RRP Q
packageInstanceRRR a
.RRa b
GetTypeRRb i
(RRi j
)RRj k
.RRk l
NameRRl p
:RRq r
$strRRs y
)RRy z
;RRz {
returnSS 
newSS 
JObjectSS 
(SS !
componentHashPropertySS 4
,SS4 5
componentPropertySS6 G
,SSG H 
componentPackageHashSSI ]
,SS] ^
componentPackageSS_ o
)SSo p
;SSp q
}TT 	
privateVV 
staticVV 
stringVV "
GetComponentIdentifierVV 4
(VV4 5
IServiceComponentVV5 F
	componentVVG P
)VVP Q
{WW 	
ifXX 
(XX 
	componentXX 
==XX 
nullXX !
)XX! "
{YY 
returnZZ 
$strZZ 
;ZZ 
}[[ 
if\\ 
(\\ 
	component\\ 
is\\ 
MissingComponent\\ -
missingComponent\\. >
)\\> ?
{]] 
return^^ 
missingComponent^^ '
.^^' (
IntendedType^^( 4
.^^4 5
Name^^5 9
;^^9 :
}__ 
return`` 
	component`` 
.`` 
GetType`` $
(``$ %
)``% &
.``& '
Name``' +
;``+ ,
}aa 	
}bb 
}cc á	
~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Networking\IHttpClient.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 

Networking (
.( )
Internal) 1
{ 
	interface 
IHttpClient 
: 
IServiceComponent -
{		 
string 
GetBaseUrlFor 
( 
string #
	serviceId$ -
)- .
;. /
HttpOptions!!  
GetDefaultOptionsFor!! (
(!!( )
string!!) /
	serviceId!!0 9
)!!9 :
;!!: ;
HttpRequest11 #
CreateRequestForService11 +
(11+ ,
string11, 2
	serviceId113 <
,11< =
string11> D
resourcePath11E Q
)11Q R
;11R S
IAsyncOperation?? 
<??  
ReadOnlyHttpResponse?? ,
>??, -
Send??. 2
(??2 3
HttpRequest??3 >
request??? F
)??F G
;??G H
}@@ 
}AA ’
tC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Vivox\IVivox.cs
	namespace 	
Unity
 
. 
Services 
. 
Vivox 
. 
Internal '
{ 
public		 

	interface		 
IVivox		 
:		 
IServiceComponent		 /
{

 
void !
RegisterTokenProvider "
(" #'
IVivoxTokenProviderInternal# >
tokenProvider? L
)L M
;M N
} 
} ©
zC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Telemetry\IMetrics.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
public 

	interface 
IMetrics 
{		 
void 
SendGaugeMetric 
( 
string #
name$ (
,( )
double* 0
value1 6
=7 8
$num9 :
,: ;
IDictionary< G
<G H
stringH N
,N O
stringP V
>V W
tagsX \
=] ^
null_ c
)c d
;d e
void$$ 
SendHistogramMetric$$  
($$  !
string$$! '
name$$( ,
,$$, -
double$$. 4
time$$5 9
,$$9 :
IDictionary$$; F
<$$F G
string$$G M
,$$M N
string$$O U
>$$U V
tags$$W [
=$$\ ]
null$$^ b
)$$b c
;$$c d
void22 
SendSumMetric22 
(22 
string22 !
name22" &
,22& '
double22( .
value22/ 4
=225 6
$num227 8
,228 9
IDictionary22: E
<22E F
string22F L
,22L M
string22N T
>22T U
tags22V Z
=22[ \
null22] a
)22a b
;22b c
}33 
}44 ◊
tC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\HashExceptions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
internal 
class 
HashException  
:! "
	Exception# ,
{ 
public 
int 
Hash 
{ 
get 
; 
}  
public		 
HashException		 
(		 
int		  
hash		! %
)		% &
{

 	
Hash 
= 
hash 
; 
} 	
public 
HashException 
( 
int  
hash! %
,% &
string' -
message. 5
)5 6
{ 	
Hash 
= 
hash 
; 
} 	
public 
HashException 
( 
int  
hash! %
,% &
string' -
message. 5
,5 6
	Exception7 @
innerA F
)F G
: 
base 
( 
message 
, 
inner !
)! "
{ 	
Hash 
= 
hash 
; 
} 	
} 
internal 
class .
"DependencyTreePackageHashException 5
:6 7
HashException8 E
{ 
public .
"DependencyTreePackageHashException 1
(1 2
int2 5
hash6 :
): ;
: 
base 
( 
hash 
) 
{ 	
} 	
public!! .
"DependencyTreePackageHashException!! 1
(!!1 2
int!!2 5
hash!!6 :
,!!: ;
string!!< B
message!!C J
)!!J K
:"" 
base"" 
("" 
hash"" 
,"" 
message""  
)""  !
{## 	
}$$ 	
public&& .
"DependencyTreePackageHashException&& 1
(&&1 2
int&&2 5
hash&&6 :
,&&: ;
string&&< B
message&&C J
,&&J K
	Exception&&L U
inner&&V [
)&&[ \
:'' 
base'' 
('' 
hash'' 
,'' 
message''  
,''  !
inner''" '
)''' (
{(( 	
})) 	
}** 
internal,, 
class,, 0
$DependencyTreeComponentHashException,, 7
:,,8 9
HashException,,: G
{-- 
public.. 0
$DependencyTreeComponentHashException.. 3
(..3 4
int..4 7
hash..8 <
)..< =
:// 
base// 
(// 
hash// 
)// 
{00 	
}11 	
public33 0
$DependencyTreeComponentHashException33 3
(333 4
int334 7
hash338 <
,33< =
string33> D
message33E L
)33L M
:44 
base44 
(44 
hash44 
,44 
message44  
)44  !
{55 	
}66 	
public88 0
$DependencyTreeComponentHashException88 3
(883 4
int884 7
hash888 <
,88< =
string88> D
message88E L
,88L M
	Exception88N W
inner88X ]
)88] ^
:99 
base99 
(99 
hash99 
,99 
message99  
,99  !
inner99" '
)99' (
{:: 	
};; 	
}<< 
}== œ
oC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Logging\CoreLogger.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
static 

class 

CoreLogger 
{		 
const

 
string

 
k_Tag

 
=

 
$str

 -
;

- .
const 
string "
k_VerboseLoggingDefine +
=, -
$str. Z
;Z [
public 
static 
void 
Log 
( 
object %
message& -
)- .
=>/ 1
Debug2 7
.7 8
unityLogger8 C
.C D
LogD G
(G H
k_TagH M
,M N
messageO V
)V W
;W X
public 
static 
void 

LogWarning %
(% &
object& ,
message- 4
)4 5
=>6 8
Debug9 >
.> ?
unityLogger? J
.J K

LogWarningK U
(U V
k_TagV [
,[ \
message] d
)d e
;e f
public 
static 
void 
LogError #
(# $
object$ *
message+ 2
)2 3
=>4 6
Debug7 <
.< =
unityLogger= H
.H I
LogErrorI Q
(Q R
k_TagR W
,W X
messageY `
)` a
;a b
public 
static 
void 
LogException '
(' (
	Exception( 1
	exception2 ;
); <
=>= ?
Debug 
. 
unityLogger 
. 
Log !
(! "
LogType" )
.) *
	Exception* 3
,3 4
k_Tag5 :
,: ;
	exception< E
)E F
;F G
[ 	
Conditional	 
( 
$str '
)' (
]( )
public 
static 
void 
LogAssertion '
(' (
object( .
message/ 6
)6 7
=>8 :
Debug; @
.@ A
unityLoggerA L
.L M
LogM P
(P Q
LogTypeQ X
.X Y
AssertY _
,_ `
k_Taga f
,f g
messageh o
)o p
;p q
[ 	
Conditional	 
( "
k_VerboseLoggingDefine +
)+ ,
], -
public 
static 
void 

LogVerbose %
(% &
object& ,
message- 4
)4 5
=>6 8
Debug9 >
.> ?
unityLogger? J
.J K
LogK N
(N O
k_TagO T
,T U
messageV ]
)] ^
;^ _
} 
} ª
ÅC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Telemetry\IMetricsFactory.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Telemetry '
.' (
Internal( 0
{ 
public		 

	interface		 
IMetricsFactory		 $
:		% &
IServiceComponent		' 8
{

 
IReadOnlyDictionary 
< 
string "
," #
string$ *
>* +

CommonTags, 6
{7 8
get9 <
;< =
}> ?
IMetrics 
Create 
( 
string 
packageName *
)* +
;+ ,
} 
}  
ÅC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Registry\CircularDependencyException.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Internal &
{ 
public 

class '
CircularDependencyException ,
:- .+
ServicesInitializationException/ N
{ 
public '
CircularDependencyException *
(* +
)+ ,
{- .
}. /
public '
CircularDependencyException *
(* +
string+ 1
message2 9
)9 :
: 
base 
( 
message 
) 
{ 
} 
} 
} ‘
ÇC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Environments\IEnvironments.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Environments *
.* +
Internal+ 3
{ 
public 

	interface 
IEnvironments "
:# $
IServiceComponent% 6
{		 
string 
Current 
{ 
get 
; 
} 
} 
} œ
ÇC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Core.Internal\Components\Scheduler\IActionScheduler.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Scheduler '
.' (
Internal( 0
{ 
public		 

	interface		 
IActionScheduler		 %
:		& '
IServiceComponent		( 9
{

 
long 
ScheduleAction 
( 
Action "
action# )
,) *
double+ 1
delaySeconds2 >
=? @
$numA B
)B C
;C D
void 
CancelAction 
( 
long 
actionId '
)' (
;( )
} 
} 