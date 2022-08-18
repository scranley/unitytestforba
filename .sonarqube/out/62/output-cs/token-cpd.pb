�
rC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Registration\CorePackageInitializer.cs
	namespace 	
Unity
 
. 
Services 
. 
Core 
. 
Registration *
{ 
[ 
SuppressMessage 
( 
$str  
,  !
$str" B
)B C
]C D
class 	"
CorePackageInitializer
  
:! "!
IInitializablePackage# 8
,8 9)
IDiagnosticsComponentProvider: W
{ 
internal 
const 
string 
CorePackageName -
=. /
$str0 I
;I J
internal 
ActionScheduler  
ActionScheduler! 0
{1 2
get3 6
;6 7
private8 ?
set@ C
;C D
}E F
internal 
InstallationId 
InstallationId  .
{/ 0
get1 4
;4 5
private6 =
set> A
;A B
}C D
internal  
ProjectConfiguration %
ProjectConfig& 3
{4 5
get6 9
;9 :
private; B
setC F
;F G
}H I
internal   
Environments   
.   
Internal   &
.  & '
Environments  ' 3
Environments  4 @
{  A B
get  C F
;  F G
private  H O
set  P S
;  S T
}  U V
internal"" 
CloudProjectId"" 
CloudProjectId""  .
{""/ 0
get""1 4
;""4 5
private""6 =
set""> A
;""A B
}""C D
internal$$ 
IDiagnosticsFactory$$ $
DiagnosticsFactory$$% 7
{$$8 9
get$$: =
;$$= >
private$$? F
set$$G J
;$$J K
}$$L M
internal&& 
IMetricsFactory&&  
MetricsFactory&&! /
{&&0 1
get&&2 5
;&&5 6
private&&7 >
set&&? B
;&&B C
}&&D E
internal(( $
UnityThreadUtilsInternal(( )
UnityThreadUtils((* :
{((; <
get((= @
;((@ A
private((B I
set((J M
;((M N
}((O P!
InitializationOptions** *
m_CurrentInitializationOptions** <
;**< =
[,, 	)
RuntimeInitializeOnLoadMethod,,	 &
(,,& '%
RuntimeInitializeLoadType,,' @
.,,@ A
BeforeSceneLoad,,A P
),,P Q
],,Q R
static-- 
void-- 
Register-- 
(-- 
)-- 
{.. 	
var// "
corePackageInitializer// &
=//' (
new//) ,"
CorePackageInitializer//- C
(//C D
)//D E
;//E F
CoreDiagnostics00 
.00 
Instance00 $
.00$ %(
DiagnosticsComponentProvider00% A
=00B C"
corePackageInitializer00D Z
;00Z [
CoreRegistry11 
.11 
Instance11 !
.11! "
RegisterPackage11" 1
(111 2"
corePackageInitializer112 H
)11H I
.22 
ProvidesComponent22 "
<22" #
IInstallationId22# 2
>222 3
(223 4
)224 5
.33 
ProvidesComponent33 "
<33" #
ICloudProjectId33# 2
>332 3
(333 4
)334 5
.44 
ProvidesComponent44 "
<44" #
IActionScheduler44# 3
>443 4
(444 5
)445 6
.55 
ProvidesComponent55 "
<55" #
IEnvironments55# 0
>550 1
(551 2
)552 3
.66 
ProvidesComponent66 "
<66" #!
IProjectConfiguration66# 8
>668 9
(669 :
)66: ;
.77 
ProvidesComponent77 "
<77" #
IMetricsFactory77# 2
>772 3
(773 4
)774 5
.88 
ProvidesComponent88 "
<88" #
IDiagnosticsFactory88# 6
>886 7
(887 8
)888 9
.99 
ProvidesComponent99 "
<99" #
IUnityThreadUtils99# 4
>994 5
(995 6
)996 7
;997 8
}:: 	
publicFF 
asyncFF 
TaskFF 

InitializeFF $
(FF$ %
CoreRegistryFF% 1
registryFF2 :
)FF: ;
{GG 	
varHH 
	stopwatchHH 
=HH 
newHH 
	StopwatchHH  )
(HH) *
)HH* +
;HH+ ,
	stopwatchII 
.II 
StartII 
(II 
)II 
;II 
tryKK 
{LL 
ifMM 
(MM "
HaveInitOptionsChangedMM *
(MM* +
)MM+ ,
)MM, -
{NN *
FreeOptionsDependantComponentsOO 2
(OO2 3
)OO3 4
;OO4 5
}PP $
InitializeInstallationIdTT (
(TT( )
)TT) *
;TT* +%
InitializeActionSchedulerVV )
(VV) *
)VV* +
;VV+ ,
awaitXX (
InitializeProjectConfigAsyncXX 2
(XX2 3
UnityServicesXX3 @
.XX@ A
InstanceXXA I
.XXI J
OptionsXXJ Q
)XXQ R
;XXR S"
InitializeEnvironmentsZZ &
(ZZ& '
ProjectConfigZZ' 4
)ZZ4 5
;ZZ5 6$
InitializeCloudProjectId[[ (
([[( )
)[[) *
;[[* +!
InitializeDiagnostics]] %
(]]% &
ActionScheduler]]& 5
,]]5 6
ProjectConfig]]7 D
,]]D E
CloudProjectId]]F T
,]]T U
Environments]]V b
)]]b c
;]]c d
CoreDiagnostics^^ 
.^^  
Instance^^  (
.^^( )
Diagnostics^^) 4
=^^5 6
DiagnosticsFactory^^7 I
.^^I J
Create^^J P
(^^P Q
CorePackageName^^Q `
)^^` a
;^^a b
CoreDiagnostics__ 
.__  
Instance__  (
.__( )#
SetProjectConfiguration__) @
(__@ A
ProjectConfig__A N
.__N O
ToJson__O U
(__U V
)__V W
)__W X
;__X Y
InitializeMetricsaa !
(aa! "
ActionScheduleraa" 1
,aa1 2
ProjectConfigaa3 @
,aa@ A
CloudProjectIdaaB P
,aaP Q
EnvironmentsaaR ^
)aa^ _
;aa_ `
CoreMetricsbb 
.bb 
Instancebb $
.bb$ %
Metricsbb% ,
=bb- .
MetricsFactorybb/ =
.bb= >
Createbb> D
(bbD E
CorePackageNamebbE T
)bbT U
;bbU V&
InitializeUnityThreadUtilsdd *
(dd* +
)dd+ ,
;dd, -&
RegisterProvidedComponentsgg *
(gg* +
)gg+ ,
;gg, -
}hh 
catchii 
(ii 
	Exceptionii 
reasonii #
)ii# $
{jj 
CoreDiagnosticskk 
.kk  
Instancekk  (
.kk( )*
SendCorePackageInitDiagnosticskk) G
(kkG H
reasonkkH N
)kkN O
;kkO P
throwll 
;ll 
}mm 
	stopwatchoo 
.oo 
Stopoo 
(oo 
)oo 
;oo 
CoreMetricspp 
.pp 
Instancepp  
.pp  !)
SendCorePackageInitTimeMetricpp! >
(pp> ?
	stopwatchpp? H
.ppH I
ElapsedppI P
.ppP Q
TotalSecondsppQ ]
)pp] ^
;pp^ _
voidrr &
RegisterProvidedComponentsrr +
(rr+ ,
)rr, -
{ss 
registrytt 
.tt $
RegisterServiceComponenttt 1
<tt1 2
IInstallationIdtt2 A
>ttA B
(ttB C
InstallationIdttC Q
)ttQ R
;ttR S
registryuu 
.uu $
RegisterServiceComponentuu 1
<uu1 2
IActionScheduleruu2 B
>uuB C
(uuC D
ActionScheduleruuD S
)uuS T
;uuT U
registryvv 
.vv $
RegisterServiceComponentvv 1
<vv1 2!
IProjectConfigurationvv2 G
>vvG H
(vvH I
ProjectConfigvvI V
)vvV W
;vvW X
registryww 
.ww $
RegisterServiceComponentww 1
<ww1 2
IEnvironmentsww2 ?
>ww? @
(ww@ A
EnvironmentswwA M
)wwM N
;wwN O
registryxx 
.xx $
RegisterServiceComponentxx 1
<xx1 2
ICloudProjectIdxx2 A
>xxA B
(xxB C
CloudProjectIdxxC Q
)xxQ R
;xxR S
registryyy 
.yy $
RegisterServiceComponentyy 1
<yy1 2
IDiagnosticsFactoryyy2 E
>yyE F
(yyF G
DiagnosticsFactoryyyG Y
)yyY Z
;yyZ [
registryzz 
.zz $
RegisterServiceComponentzz 1
<zz1 2
IMetricsFactoryzz2 A
>zzA B
(zzB C
MetricsFactoryzzC Q
)zzQ R
;zzR S
registry{{ 
.{{ $
RegisterServiceComponent{{ 1
<{{1 2
IUnityThreadUtils{{2 C
>{{C D
({{D E
UnityThreadUtils{{E U
){{U V
;{{V W
}|| 
}}} 	
bool "
HaveInitOptionsChanged #
(# $
)$ %
{
�� 	
return
�� 
!
�� 
(
�� ,
m_CurrentInitializationOptions
�� 3
is
��4 6
null
��7 ;
)
��; <
&&
�� 
!
�� ,
m_CurrentInitializationOptions
�� 2
.
��2 3
Values
��3 9
.
��9 :
ValueEquals
��: E
(
��E F
UnityServices
��F S
.
��S T
Instance
��T \
.
��\ ]
Options
��] d
.
��d e
Values
��e k
)
��k l
;
��l m
}
�� 	
void
�� ,
FreeOptionsDependantComponents
�� +
(
��+ ,
)
��, -
{
�� 	
ProjectConfig
�� 
=
�� 
null
��  
;
��  !
Environments
�� 
=
�� 
null
�� 
;
��   
DiagnosticsFactory
�� 
=
��  
null
��! %
;
��% &
MetricsFactory
�� 
=
�� 
null
�� !
;
��! "
}
�� 	
internal
�� 
void
�� &
InitializeInstallationId
�� .
(
��. /
)
��/ 0
{
�� 	
if
�� 
(
�� 
!
�� 
(
�� 
InstallationId
��  
is
��! #
null
��$ (
)
��( )
)
��) *
return
�� 
;
�� 
var
�� 
installationId
�� 
=
��  
new
��! $
InstallationId
��% 3
(
��3 4
)
��4 5
;
��5 6
installationId
�� 
.
�� 
CreateIdentifier
�� +
(
��+ ,
)
��, -
;
��- .
InstallationId
�� 
=
�� 
installationId
�� +
;
��+ ,
}
�� 	
internal
�� 
void
�� '
InitializeActionScheduler
�� /
(
��/ 0
)
��0 1
{
�� 	
if
�� 
(
�� 
!
�� 
(
�� 
ActionScheduler
�� !
is
��" $
null
��% )
)
��) *
)
��* +
return
�� 
;
�� 
var
�� 
actionScheduler
�� 
=
��  !
new
��" %
ActionScheduler
��& 5
(
��5 6
)
��6 7
;
��7 8
actionScheduler
�� 
.
�� "
JoinPlayerLoopSystem
�� 0
(
��0 1
)
��1 2
;
��2 3
ActionScheduler
�� 
=
�� 
actionScheduler
�� -
;
��- .
}
�� 	
internal
�� 
async
�� 
Task
�� *
InitializeProjectConfigAsync
�� 8
(
��8 9
[
��9 :
NotNull
��: A
]
��A B#
InitializationOptions
��C X
options
��Y `
)
��` a
{
�� 	
if
�� 
(
�� 
!
�� 
(
�� 
ProjectConfig
�� 
is
��  "
null
��# '
)
��' (
)
��( )
return
�� 
;
�� 
ProjectConfig
�� 
=
�� 
await
�� !/
!GenerateProjectConfigurationAsync
��" C
(
��C D
options
��D K
)
��K L
;
��L M,
m_CurrentInitializationOptions
�� *
=
��+ ,
new
��- 0#
InitializationOptions
��1 F
(
��F G
options
��G N
)
��N O
;
��O P
}
�� 	
internal
�� 
static
�� 
async
�� 
Task
�� "
<
��" #"
ProjectConfiguration
��# 7
>
��7 8/
!GenerateProjectConfigurationAsync
��9 Z
(
��Z [
[
�� 
NotNull
�� 
]
�� #
InitializationOptions
�� +
options
��, 3
)
��3 4
{
�� 	
var
�� 
serializedConfig
��  
=
��! "
await
��# (-
GetSerializedConfigOrEmptyAsync
��) H
(
��H I
)
��I J
;
��J K
if
�� 
(
�� 
serializedConfig
��  
.
��  !
Keys
��! %
is
��& (
null
��) -
||
�� 
serializedConfig
�� #
.
��# $
Values
��$ *
is
��+ -
null
��. 2
)
��2 3
{
�� 
serializedConfig
��  
=
��! ".
 SerializableProjectConfiguration
��# C
.
��C D
Empty
��D I
;
��I J
}
�� 
var
�� 
configValues
�� 
=
�� 
new
�� "

Dictionary
��# -
<
��- .
string
��. 4
,
��4 5 
ConfigurationEntry
��6 H
>
��H I
(
��I J
serializedConfig
��J Z
.
��Z [
Keys
��[ _
.
��_ `
Length
��` f
)
��f g
;
��g h
configValues
�� 
.
�� 
FillWith
�� !
(
��! "
serializedConfig
��" 2
)
��2 3
;
��3 4
configValues
�� 
.
�� 
FillWith
�� !
(
��! "
options
��" )
)
��) *
;
��* +
return
�� 
new
�� "
ProjectConfiguration
�� +
(
��+ ,
configValues
��, 8
)
��8 9
;
��9 :
}
�� 	
internal
�� 
static
�� 
async
�� 
Task
�� "
<
��" #.
 SerializableProjectConfiguration
��# C
>
��C D-
GetSerializedConfigOrEmptyAsync
��E d
(
��d e
)
��e f
{
�� 	
try
�� 
{
�� 
var
�� 
config
�� 
=
�� 
await
�� " 
ConfigurationUtils
��# 5
.
��5 6!
ConfigurationLoader
��6 I
.
��I J
GetConfigAsync
��J X
(
��X Y
)
��Y Z
;
��Z [
return
�� 
config
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
e
�� 
)
�� 
{
�� 

CoreLogger
�� 
.
�� 
LogError
�� #
(
��# $
$str
�� b
+
��c d
$"
�� 
$str
�� 
{
�� 
e
�� 
.
�� 
Message
�� "
}
��" #
"
��# $
+
��% &
$"
�� 
$str
�� 
{
�� 
e
�� 
.
�� 

StackTrace
�� %
}
��% &
"
��& '
)
��' (
;
��( )
return
�� .
 SerializableProjectConfiguration
�� 7
.
��7 8
Empty
��8 =
;
��= >
}
�� 
}
�� 	
internal
�� 
void
�� $
InitializeEnvironments
�� ,
(
��, -#
IProjectConfiguration
��- B"
projectConfiguration
��C W
)
��W X
{
�� 	
if
�� 
(
�� 
!
�� 
(
�� 
Environments
�� 
is
�� !
null
��" &
)
��& '
)
��' (
return
�� 
;
�� 
var
��  
currentEnvironment
�� "
=
��# $"
projectConfiguration
��% 9
.
��9 :
	GetString
��: C
(
��C D+
EnvironmentsOptionsExtensions
�� -
.
��- . 
EnvironmentNameKey
��. @
,
��@ A
$str
��B N
)
��N O
;
��O P
Environments
�� 
=
�� 
new
�� 
Environments
�� +
.
��+ ,
Internal
��, 4
.
��4 5
Environments
��5 A
{
�� 
Current
�� 
=
��  
currentEnvironment
�� ,
,
��, -
}
�� 
;
�� 
}
�� 	
internal
�� 
void
�� &
InitializeCloudProjectId
�� .
(
��. /
)
��/ 0
{
�� 	
if
�� 
(
�� 
!
�� 
(
�� 
CloudProjectId
��  
is
��! #
null
��$ (
)
��( )
)
��) *
return
�� 
;
�� 
CloudProjectId
�� 
=
�� 
new
��  
CloudProjectId
��! /
(
��/ 0
)
��0 1
;
��1 2
}
�� 	
internal
�� 
void
�� #
InitializeDiagnostics
�� +
(
��+ ,
IActionScheduler
�� 
	scheduler
�� &
,
��& '#
IProjectConfiguration
��( ="
projectConfiguration
��> R
,
��R S
ICloudProjectId
��T c
cloudProjectId
��d r
,
��r s
IEnvironments
�� 
environments
�� &
)
��& '
{
�� 	
if
�� 
(
�� 
!
�� 
(
��  
DiagnosticsFactory
�� $
is
��% '
null
��( ,
)
��, -
)
��- .
return
�� 
;
��  
DiagnosticsFactory
�� 
=
��  
TelemetryUtils
��! /
.
��/ 0&
CreateDiagnosticsFactory
��0 H
(
��H I
	scheduler
�� 
,
�� "
projectConfiguration
�� /
,
��/ 0
cloudProjectId
��1 ?
,
��? @
environments
��A M
)
��M N
;
��N O
}
�� 	
internal
�� 
void
�� 
InitializeMetrics
�� '
(
��' (
IActionScheduler
�� 
	scheduler
�� &
,
��& '#
IProjectConfiguration
��( ="
projectConfiguration
��> R
,
��R S
ICloudProjectId
��T c
cloudProjectId
��d r
,
��r s
IEnvironments
�� 
environments
�� &
)
��& '
{
�� 	
if
�� 
(
�� 
!
�� 
(
�� 
MetricsFactory
��  
is
��! #
null
��$ (
)
��( )
)
��) *
return
�� 
;
�� 
MetricsFactory
�� 
=
�� 
TelemetryUtils
�� +
.
��+ ,"
CreateMetricsFactory
��, @
(
��@ A
	scheduler
�� 
,
�� "
projectConfiguration
�� /
,
��/ 0
cloudProjectId
��1 ?
,
��? @
environments
��A M
)
��M N
;
��N O
}
�� 	
internal
�� 
void
�� (
InitializeUnityThreadUtils
�� 0
(
��0 1
)
��1 2
{
�� 	
if
�� 
(
�� 
!
�� 
(
�� 
UnityThreadUtils
�� "
is
��# %
null
��& *
)
��* +
)
��+ ,
return
�� 
;
�� 
UnityThreadUtils
�� 
=
�� 
new
�� "&
UnityThreadUtilsInternal
��# ;
(
��; <
)
��< =
;
��= >
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� !
IDiagnosticsFactory
�� -
>
��- .)
CreateDiagnosticsComponents
��/ J
(
��J K
)
��K L
{
�� 	
if
�� 
(
�� $
HaveInitOptionsChanged
�� &
(
��& '
)
��' (
)
��( )
{
�� ,
FreeOptionsDependantComponents
�� .
(
��. /
)
��/ 0
;
��0 1
}
�� '
InitializeActionScheduler
�� %
(
��% &
)
��& '
;
��' (
await
�� *
InitializeProjectConfigAsync
�� .
(
��. /
UnityServices
��/ <
.
��< =
Instance
��= E
.
��E F
Options
��F M
)
��M N
;
��N O$
InitializeEnvironments
�� "
(
��" #
ProjectConfig
��# 0
)
��0 1
;
��1 2&
InitializeCloudProjectId
�� $
(
��$ %
)
��% &
;
��& '#
InitializeDiagnostics
�� !
(
��! "
ActionScheduler
��" 1
,
��1 2
ProjectConfig
��3 @
,
��@ A
CloudProjectId
��B P
,
��P Q
Environments
��R ^
)
��^ _
;
��_ `
return
��  
DiagnosticsFactory
�� %
;
��% &
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
string
��  
>
��  !4
&GetSerializedProjectConfigurationAsync
��" H
(
��H I
)
��I J
{
�� 	
await
�� *
InitializeProjectConfigAsync
�� .
(
��. /
UnityServices
��/ <
.
��< =
Instance
��= E
.
��E F
Options
��F M
)
��M N
;
��N O
return
�� 
ProjectConfig
��  
.
��  !
ToJson
��! '
(
��' (
)
��( )
;
��) *
}
�� 	
}
�� 
}�� �
hC:\code\ispclone\Library\PackageCache\com.unity.services.core@1.4.0\Runtime\Registration\AssemblyInfo.cs
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
]9 :