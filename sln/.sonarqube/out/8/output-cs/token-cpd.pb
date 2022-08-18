¼
eC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Analytics\AssemblyInfo.cs
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
$str ?
)? @
]@ A
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str C
)C D
]D E
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str I
)I J
]J K
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 8
)8 9
]9 :÷

sC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Analytics\AnalyticsOptionsExtensions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
	Analytics '
{ 
public 

static 
class &
AnalyticsOptionsExtensions 2
{		 
internal

 
const

 
string

 
AnalyticsUserIdKey

 0
=

1 2
$str

3 ^
;

^ _
public 
static !
InitializationOptions +
SetAnalyticsUserId, >
(> ?
this? C!
InitializationOptionsD Y
selfZ ^
,^ _
string` f
idg i
)i j
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
id% '
)' (
)( )
throw 
new 
ArgumentException +
(+ ,
$str, X
,X Y
nameofZ `
(` a
ida c
)c d
)d e
;e f
return 
self 
. 
	SetOption !
(! "
AnalyticsUserIdKey" 4
,4 5
id6 8
)8 9
;9 :
} 	
} 
} 