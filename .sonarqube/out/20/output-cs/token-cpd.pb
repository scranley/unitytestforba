ó	
iC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\AssemblyInfo.cs
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
$str H
)H I
]I J
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str =
)= >
]> ?
[		 
assembly		 	
:			 

InternalsVisibleTo		 
(		 
$str		 ?
)		? @
]		@ A
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
 9
)

9 :
]

: ;
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str C
)C D
]D E
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :Š

C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\StreamingAssetsConfigurationLoader.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
{ 
class 	.
"StreamingAssetsConfigurationLoader
 ,
:- . 
IConfigurationLoader/ C
{ 
public 
async 
Task 
< ,
 SerializableProjectConfiguration :
>: ;
GetConfigAsync< J
(J K
)K L
{		 	
var

 

jsonConfig

 
=

 
await

 " 
StreamingAssetsUtils

# 7
.

7 8/
#GetFileTextFromStreamingAssetsAsync

8 [
(

[ \
ConfigurationUtils "
." #
ConfigFileName# 1
)1 2
;2 3
var 
config 
= 
JsonConvert $
.$ %
DeserializeObject% 6
<6 7,
 SerializableProjectConfiguration7 W
>W X
(X Y

jsonConfigY c
)c d
;d e
return 
config 
; 
} 	
} 
} §
wC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\Utils\StreamingAssetsUtils.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
{ 
static 

class  
StreamingAssetsUtils %
{ 
public 
static 
Task 
< 
string !
>! "/
#GetFileTextFromStreamingAssetsAsync# F
(F G
stringG M
pathN R
)R S
{ 	
var 
fullPath 
= 
Path 
.  
Combine  '
(' (
Application( 3
.3 4
streamingAssetsPath4 G
,G H
pathI M
)M N
;N O
var 
completionSource  
=! "
new# & 
TaskCompletionSource' ;
<; <
string< B
>B C
(C D
)D E
;E F
try 
{ 
var 
fileText 
= 
File #
.# $
ReadAllText$ /
(/ 0
fullPath0 8
)8 9
;9 :
completionSource  
.  !
	SetResult! *
(* +
fileText+ 3
)3 4
;4 5
} 
catch 
( 
	Exception 
e 
) 
{ 
completionSource  
.  !
SetException! -
(- .
e. /
)/ 0
;0 1
}   
return"" 
completionSource"" #
.""# $
Task""$ (
;""( )
}$$ 	
}%% 
}&& »
}C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\SerializableProjectConfiguration.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
{ 
[ 
Serializable 
] 
struct		 
,
 SerializableProjectConfiguration		 +
{

 
public 
static ,
 SerializableProjectConfiguration 6
Empty7 <
=> 
new ,
 SerializableProjectConfiguration 3
{ 	
Keys 
= 
Array 
. 
Empty 
< 
string %
>% &
(& '
)' (
,( )
Values 
= 
Array 
. 
Empty  
<  !
ConfigurationEntry! 3
>3 4
(4 5
)5 6
,6 7
} 	
;	 

[ 	
JsonRequired	 
] 
[ 	
SerializeField	 
] 
internal 
string 
[ 
] 
Keys 
; 
[ 	
JsonRequired	 
] 
[ 	
SerializeField	 
] 
internal 
ConfigurationEntry #
[# $
]$ %
Values& ,
;, -
public ,
 SerializableProjectConfiguration /
(/ 0
IDictionary0 ;
<; <
string< B
,B C
ConfigurationEntryD V
>V W
configValuesX d
)d e
{ 	
Keys 
= 
new 
string 
[ 
configValues *
.* +
Count+ 0
]0 1
;1 2
Values 
= 
new 
ConfigurationEntry +
[+ ,
configValues, 8
.8 9
Count9 >
]> ?
;? @
var 
i 
= 
$num 
; 
foreach   
(   
var   
configValue   $
in  % '
configValues  ( 4
)  4 5
{!! 
Keys"" 
["" 
i"" 
]"" 
="" 
configValue"" %
.""% &
Key""& )
;"") *
Values## 
[## 
i## 
]## 
=## 
configValue## '
.##' (
Value##( -
;##- .
++$$ 
i$$ 
;$$ 
}%% 
}&& 	
}'' 
}(( â 
zC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\ConfigurationCollectionHelper.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
{ 
static		 

class		 )
ConfigurationCollectionHelper		 .
{

 
public 
static 
void 
FillWith #
(# $
this 
IDictionary 
< 
string #
,# $
ConfigurationEntry% 7
>7 8
self9 =
,= >,
 SerializableProjectConfiguration? _
config` f
)f g
{ 	
for 
( 
var 
i 
= 
$num 
; 
i 
< 
config  &
.& '
Keys' +
.+ ,
Length, 2
;2 3
i4 5
++5 7
)7 8
{ 
var 
entryKey 
= 
config %
.% &
Keys& *
[* +
i+ ,
], -
;- .
var 

entryValue 
=  
config! '
.' (
Values( .
[. /
i/ 0
]0 1
;1 2
self 
. 
SetOrCreateEntry %
(% &
entryKey& .
,. /

entryValue0 :
): ;
;; <
} 
} 	
public 
static 
void 
FillWith #
(# $
this 
IDictionary 
< 
string #
,# $
ConfigurationEntry% 7
>7 8
self9 =
,= >!
InitializationOptions? T
optionsU \
)\ ]
{ 	
foreach 
( 
var 
option 
in  "
options# *
.* +
Values+ 1
)1 2
{ 
var 
optionValue 
=  !
Convert" )
.) *
ToString* 2
(2 3
option3 9
.9 :
Value: ?
,? @
CultureInfoA L
.L M
InvariantCultureM ]
)] ^
;^ _
self 
. 
SetOrCreateEntry %
(% &
option& ,
., -
Key- 0
,0 1
optionValue2 =
)= >
;> ?
} 
} 	
static!! 
void!! 
SetOrCreateEntry!! $
(!!$ %
this"" 
IDictionary"" 
<"" 
string"" #
,""# $
ConfigurationEntry""% 7
>""7 8
self""9 =
,""= >
string""? E
key""F I
,""I J
ConfigurationEntry""K ]
entry""^ c
)""c d
{## 	
if$$ 
($$ 
self$$ 
.$$ 
TryGetValue$$  
($$  !
key$$! $
,$$$ %
out$$& )
var$$* -
existingEntry$$. ;
)$$; <
)$$< =
{%% 
if&& 
(&& 
!&& 
existingEntry&& "
.&&" #
TrySetValue&&# .
(&&. /
entry&&/ 4
)&&4 5
)&&5 6
{'' 

CoreLogger(( 
.(( 

LogWarning(( )
((() *
$")) 
$str)) a
{))a b
key))b e
}))e f
$str))f h
"))h i
+))j k
$str** j
+**k l
$str++ W
+++X Y
$",, 
$str,, )
{,,) *
nameof,,* 0
(,,0 1!
InitializationOptions,,1 F
),,F G
},,G H
$str,,H i
",,i j
),,j k
;,,k l
}-- 
}.. 
else// 
{00 
self11 
[11 
key11 
]11 
=11 
entry11 !
;11! "
}22 
}33 	
}44 
}55 £
qC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\IConfigurationLoader.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
{ 
	interface  
IConfigurationLoader "
{ 
Task 
< ,
 SerializableProjectConfiguration -
>- .
GetConfigAsync/ =
(= >
)> ?
;? @
} 
}		 Ÿ

vC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\MemoryConfigurationLoader.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
{ 
class 	%
MemoryConfigurationLoader
 #
:$ % 
IConfigurationLoader& :
{ 
public ,
 SerializableProjectConfiguration /
Config0 6
{7 8
get9 <
;< =
set> A
;A B
}C D
Task		 
<		 ,
 SerializableProjectConfiguration		 -
>		- . 
IConfigurationLoader		/ C
.		C D
GetConfigAsync		D R
(		R S
)		S T
{

 	
var 
completionSource  
=! "
new# & 
TaskCompletionSource' ;
<; <,
 SerializableProjectConfiguration< \
>\ ]
(] ^
)^ _
;_ `
completionSource 
. 
	SetResult &
(& '
Config' -
)- .
;. /
return 
completionSource #
.# $
Task$ (
;( )
} 	
} 
} Î'
qC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\ProjectConfiguration.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
{ 
class		 	 
ProjectConfiguration		
 
:		  !
IProjectConfiguration		! 6
{

 
string 
m_JsonCache 
; 
readonly 
IReadOnlyDictionary $
<$ %
string% +
,+ ,
ConfigurationEntry- ?
>? @
m_ConfigValuesA O
;O P
public  
ProjectConfiguration #
(# $
IReadOnlyDictionary$ 7
<7 8
string8 >
,> ?
ConfigurationEntry@ R
>R S
configValuesT `
)` a
{ 	
m_ConfigValues 
= 
configValues )
;) *
} 	
public 
bool 
GetBool 
( 
string "
key# &
,& '
bool( ,
defaultValue- 9
=: ;
default< C
)C D
{ 	
var 
stringConfig 
= 
	GetString (
(( )
key) ,
), -
;- .
if 
( 
bool 
. 
TryParse 
( 
stringConfig *
,* +
out, /
var0 3
parsedValue4 ?
)? @
)@ A
{ 
return 
parsedValue "
;" #
} 
return 
defaultValue 
;  
} 	
public 
int 
GetInt 
( 
string  
key! $
,$ %
int& )
defaultValue* 6
=7 8
default9 @
)@ A
{ 	
var   
stringConfig   
=   
	GetString   (
(  ( )
key  ) ,
)  , -
;  - .
if!! 
(!! 
int!! 
.!! 
TryParse!! 
(!! 
stringConfig!! )
,!!) *
out!!+ .
var!!/ 2
parsedValue!!3 >
)!!> ?
)!!? @
{"" 
return## 
parsedValue## "
;##" #
}$$ 
return&& 
defaultValue&& 
;&&  
}'' 	
public)) 
float)) 
GetFloat)) 
()) 
string)) $
key))% (
,))( )
float))* /
defaultValue))0 <
=))= >
default))? F
)))F G
{** 	
var++ 
stringConfig++ 
=++ 
	GetString++ (
(++( )
key++) ,
)++, -
;++- .
if,, 
(,, 
float,, 
.,, 
TryParse,, 
(,, 
stringConfig,, +
,,,+ ,
NumberStyles,,- 9
.,,9 :
Float,,: ?
,,,? @
CultureInfo,,A L
.,,L M
InvariantCulture,,M ]
,,,] ^
out,,_ b
var,,c f
parsedValue,,g r
),,r s
),,s t
{-- 
return.. 
parsedValue.. "
;.." #
}// 
return11 
defaultValue11 
;11  
}22 	
public44 
string44 
	GetString44 
(44  
string44  &
key44' *
,44* +
string44, 2
defaultValue443 ?
=44@ A
default44B I
)44I J
{55 	
if66 
(66 
m_ConfigValues66 
.66 
TryGetValue66 *
(66* +
key66+ .
,66. /
out660 3
var664 7
configValue668 C
)66C D
)66D E
{77 
return88 
configValue88 "
.88" #
Value88# (
;88( )
}99 
return;; 
defaultValue;; 
;;;  
}<< 	
public>> 
string>> 
ToJson>> 
(>> 
)>> 
{?? 	
if@@ 
(@@ 
m_JsonCache@@ 
==@@ 
null@@ #
)@@# $
{AA 
varBB 
dictBB 
=BB 
m_ConfigValuesBB )
.BB) *
ToDictionaryBB* 6
(BB6 7
pairBB7 ;
=>BB< >
pairBB? C
.BBC D
KeyBBD G
,BBG H
pairBBI M
=>BBN P
pairBBQ U
.BBU V
ValueBBV [
.BB[ \
ValueBB\ a
)BBa b
;BBb c
m_JsonCacheCC 
=CC 
JsonConvertCC )
.CC) *
SerializeObjectCC* 9
(CC9 :
dictCC: >
)CC> ?
;CC? @
}DD 
returnEE 
m_JsonCacheEE 
;EE 
}FF 	
}GG 
}HH ‚
kC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\CloudProjectId.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
{ 
class 	
CloudProjectId
 
: 
ICloudProjectId *
{ 
public 
string 
GetCloudProjectId '
(' (
)( )
{		 	
return

 
Application

 
.

 
cloudProjectId

 -
;

- .
} 	
} 
} ü
oC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\ConfigurationEntry.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
{ 
[

 
Serializable

 
]

 
class 	
ConfigurationEntry
 
{ 
[ 	
JsonRequired	 
] 
[ 	
SerializeField	 
] 
string 
m_Value 
; 
[ 	

JsonIgnore	 
] 
public 
string 
Value 
=> 
m_Value &
;& '
[ 	
JsonRequired	 
] 
[ 	
SerializeField	 
] 
bool 
m_IsReadOnly 
; 
[ 	

JsonIgnore	 
] 
public 
bool 

IsReadOnly 
{   	
get!! 
=>!! 
m_IsReadOnly!! 
;!!  
internal"" 
set"" 
=>"" 
m_IsReadOnly"" (
="") *
value""+ 0
;""0 1
}## 	
public++ 
ConfigurationEntry++ !
(++! "
)++" #
{++$ %
}++% &
public66 
ConfigurationEntry66 !
(66! "
string66" (
value66) .
,66. /
bool660 4

isReadOnly665 ?
=66@ A
false66B G
)66G H
{77 	
m_Value88 
=88 
value88 
;88 
m_IsReadOnly99 
=99 

isReadOnly99 %
;99% &
}:: 	
publicGG 
boolGG 
TrySetValueGG 
(GG  
stringGG  &
valueGG' ,
)GG, -
{HH 	
ifII 
(II 

IsReadOnlyII 
)II 
{JJ 
returnKK 
falseKK 
;KK 
}LL 
m_ValueNN 
=NN 
valueNN 
;NN 
returnOO 
trueOO 
;OO 
}PP 	
publicRR 
staticRR 
implicitRR 
operatorRR '
stringRR( .
(RR. /
ConfigurationEntryRR/ A
entryRRB G
)RRG H
=>RRI K
entryRRL Q
.RRQ R
ValueRRR W
;RRW X
publicTT 
staticTT 
implicitTT 
operatorTT '
ConfigurationEntryTT( :
(TT: ;
stringTT; A
valueTTB G
)TTG H
=>TTI K
newTTL O
ConfigurationEntryTTP b
(TTb c
valueTTc h
)TTh i
;TTi j
}UU 
}VV º
oC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Configuration\ConfigurationUtils.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Configuration +
{ 
static 

class 
ConfigurationUtils #
{ 
public 
const 
string !
StreamingAssetsFolder 1
=2 3
$str4 E
;E F
public		 
const		 
string		 
StreamingAssetsPath		 /
=		0 1
$str		2 ;
+		< =!
StreamingAssetsFolder		> S
;		S T
public

 
const

 
string

 
ConfigFileName

 *
=

+ ,
$str

- U
;

U V
public 
static 
string !
RuntimeConfigFullPath 2
{3 4
get5 8
;8 9
}: ;
= 
Path 
. 
Combine 
( 
Application &
.& '
streamingAssetsPath' :
,: ;
ConfigFileName< J
)J K
;K L
public 
static  
IConfigurationLoader *
ConfigurationLoader+ >
{? @
getA D
;D E
internalF N
setO R
;R S
}T U
= 
new .
"StreamingAssetsConfigurationLoader 4
(4 5
)5 6
;6 7
} 
} 