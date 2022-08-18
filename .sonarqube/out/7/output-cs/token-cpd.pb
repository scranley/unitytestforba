ˇ
àC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkSolutionInterface\Runtime\INetworkObjectProvider.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
{ 
	interface "
INetworkObjectProvider $
{ 
Object 
GetNetworkObject 
(  
ulong  %
networkObjectId& 5
)5 6
;6 7
} 
}		 Å
äC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkSolutionInterface\Runtime\NetworkSolutionInterface.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
{ 
struct 
.
"NetworkSolutionInterfaceParameters -
{ 
public "
INetworkObjectProvider %!
NetworkObjectProvider& ;
;; <
} 
static 

class $
NetworkSolutionInterface )
{		 
static

 .
"NetworkSolutionInterfaceParameters

 1
s_Parameters

2 >
;

> ?
public 
static 
void 
SetInterface '
(' (.
"NetworkSolutionInterfaceParameters( J

parametersK U
)U V
{ 	

parameters 
. !
NetworkObjectProvider ,
??=- 0
new1 4%
NullNetworkObjectProvider5 N
(N O
)O P
;P Q
s_Parameters 
= 

parameters %
;% &
} 	
internal 
static "
INetworkObjectProvider .!
NetworkObjectProvider/ D
=>E G
s_ParametersH T
.T U!
NetworkObjectProviderU j
;j k
} 
} ≥
~C:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkSolutionInterface\Runtime\AssemblyInfo.cs
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str 5
)5 6
]6 7
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
$str ]
)] ^
]^ _â
ãC:\code\ispclone\Library\PackageCache\com.unity.multiplayer.tools@1.0.0-pre.7\NetworkSolutionInterface\Runtime\NullNetworkObjectProvider.cs
	namespace 	
Unity
 
. 
Multiplayer 
. 
Tools !
{ 
class 	%
NullNetworkObjectProvider
 #
:$ %"
INetworkObjectProvider& <
{ 
Object "
INetworkObjectProvider %
.% &
GetNetworkObject& 6
(6 7
ulong7 <
networkObjectId= L
)L M
=>N P
nullQ U
;U V
} 
}		 