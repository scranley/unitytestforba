Ğ
hC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Environments\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str @
)@ A
]A B
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 9
)9 :
]: ;
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str C
)C D
]D E
[		 
assembly		 	
:			 

InternalsVisibleTo		 
(		 
$str		 I
)		I J
]		J K
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
 8
)

8 9
]

9 :Ø
yC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Environments\EnvironmentsOptionsExtensions.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Environments *
{ 
public 

static 
class )
EnvironmentsOptionsExtensions 5
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
EnvironmentNameKey

 0
=

1 2
$str

3 ]
;

] ^
public 
static !
InitializationOptions +
SetEnvironmentName, >
(> ?
this? C!
InitializationOptionsD Y
selfZ ^
,^ _
string` f
environmentNameg v
)v w
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
environmentName% 4
)4 5
)5 6
throw 
new 
ArgumentException +
(+ ,
$str, W
,W X
nameofY _
(_ `
environmentName` o
)o p
)p q
;q r
self 
. 
	SetOption 
( 
EnvironmentNameKey -
,- .
environmentName/ >
)> ?
;? @
return 
self 
; 
} 	
} 
} 