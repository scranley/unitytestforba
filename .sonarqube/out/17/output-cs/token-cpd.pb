t
rC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Device\UserIdProviders\AndroidUtils.csv
tC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Device\UserIdProviders\NSUserDefaults.csÛ
bC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Device\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str @
)@ A
]A B
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ?
)? @
]@ A
[		 
assembly		 	
:			 

InternalsVisibleTo		 
(		 
$str		 C
)		C D
]		D E
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
 I
)

I J
]

J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str H
)H I
]I Jÿ
xC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Device\UserIdProviders\UnityAdsIdentifier.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Device $
{ 
class 	
UnityAdsIdentifier
 
: #
IUserIdentifierProvider 6
{ 
const 
string !
k_AndroidSettingsFile *
=+ ,
$str- C
;C D
const 
string 
	k_IdfiKey 
=  
$str! 0
;0 1
public 
string 
UserId 
{		 	
get

 
{ 
return 
null 
; 
} 
set 
{ 
} 
} 	
},, 
}-- Š
}C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Device\UserIdProviders\IUserIdentifierProvider.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Device $
{ 
	interface #
IUserIdentifierProvider %
{ 
string 
UserId 
{ 
get 
; 
set  
;  !
}" #
} 
} Š'
dC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Device\InstallationId.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Device $
{ 
class 	
InstallationId
 
: 
IInstallationId *
{ 
const		 
string		 $
k_UnityInstallationIdKey		 -
=		. /
$str		0 E
;		E F
internal 
string 

Identifier "
;" #
internal #
IUserIdentifierProvider (&
UnityAdsIdentifierProvider) C
;C D
internal #
IUserIdentifierProvider (,
 UnityAnalyticsIdentifierProvider) I
;I J
public 
InstallationId 
( 
) 
{ 	&
UnityAdsIdentifierProvider &
=' (
new) ,
UnityAdsIdentifier- ?
(? @
)@ A
;A B,
 UnityAnalyticsIdentifierProvider ,
=- .
new/ 2$
UnityAnalyticsIdentifier3 K
(K L
)L M
;M N
} 	
public 
string !
GetOrCreateIdentifier +
(+ ,
), -
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %

Identifier% /
)/ 0
)0 1
CreateIdentifier  
(  !
)! "
;" #
return 

Identifier 
; 
} 	
public 
void 
CreateIdentifier $
($ %
)% &
{ 	

Identifier   
=   "
ReadIdentifierFromFile   /
(  / 0
)  0 1
;  1 2
if!! 
(!! 
!!! 
string!! 
.!! 
IsNullOrEmpty!! %
(!!% &

Identifier!!& 0
)!!0 1
)!!1 2
return"" 
;"" 
var$$ 
analyticsId$$ 
=$$ ,
 UnityAnalyticsIdentifierProvider$$ >
.$$> ?
UserId$$? E
;$$E F
var%% 
adsId%% 
=%% &
UnityAdsIdentifierProvider%% 2
.%%2 3
UserId%%3 9
;%%9 :
if'' 
('' 
!'' 
string'' 
.'' 
IsNullOrEmpty'' %
(''% &
analyticsId''& 1
)''1 2
)''2 3
{(( 

Identifier)) 
=)) 
analyticsId)) (
;))( )
}** 
else++ 
if++ 
(++ 
!++ 
string++ 
.++ 
IsNullOrEmpty++ *
(++* +
adsId+++ 0
)++0 1
)++1 2
{,, 

Identifier-- 
=-- 
adsId-- "
;--" #
}.. 
else// 
{00 

Identifier11 
=11 
GenerateGuid11 )
(11) *
)11* +
;11+ ,
}22 !
WriteIdentifierToFile44 !
(44! "

Identifier44" ,
)44, -
;44- .
if66 
(66 
string66 
.66 
IsNullOrEmpty66 $
(66$ %
analyticsId66% 0
)660 1
)661 2
{77 ,
 UnityAnalyticsIdentifierProvider88 0
.880 1
UserId881 7
=888 9

Identifier88: D
;88D E
}99 
if;; 
(;; 
string;; 
.;; 
IsNullOrEmpty;; $
(;;$ %
adsId;;% *
);;* +
);;+ ,
{<< &
UnityAdsIdentifierProvider== *
.==* +
UserId==+ 1
===2 3

Identifier==4 >
;==> ?
}>> 
}?? 	
staticAA 
stringAA "
ReadIdentifierFromFileAA ,
(AA, -
)AA- .
{BB 	
returnCC 
PlayerPrefsCC 
.CC 
	GetStringCC (
(CC( )$
k_UnityInstallationIdKeyCC) A
)CCA B
;CCB C
}DD 	
staticFF 
voidFF !
WriteIdentifierToFileFF )
(FF) *
stringFF* 0

identifierFF1 ;
)FF; <
{GG 	
PlayerPrefsHH 
.HH 
	SetStringHH !
(HH! "$
k_UnityInstallationIdKeyHH" :
,HH: ;

identifierHH< F
)HHF G
;HHG H
PlayerPrefsII 
.II 
SaveII 
(II 
)II 
;II 
}JJ 	
staticLL 
stringLL 
GenerateGuidLL "
(LL" #
)LL# $
{MM 	
returnNN 
GuidNN 
.NN 
NewGuidNN 
(NN  
)NN  !
.NN! "
ToStringNN" *
(NN* +
)NN+ ,
;NN, -
}OO 	
}PP 
}QQ Š

~C:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Device\UserIdProviders\UnityAnalyticsIdentifier.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Device $
{ 
class 	$
UnityAnalyticsIdentifier
 "
:# $#
IUserIdentifierProvider% <
{ 
const 
string 
k_PlayerUserIdKey &
=' (
$str) =
;= >
public

 
string

 
UserId

 
{ 	
get 
=> 
PlayerPrefs 
. 
	GetString (
(( )
k_PlayerUserIdKey) :
): ;
;; <
set 
{ 
try 
{ 
PlayerPrefs 
.  
	SetString  )
() *
k_PlayerUserIdKey* ;
,; <
value= B
)B C
;C D
PlayerPrefs 
.  
Save  $
($ %
)% &
;& '
} 
catch 
( 
	Exception  
)  !
{ 
} 
} 
} 	
} 
} 