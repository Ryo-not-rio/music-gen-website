??;
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements#
handle??element_dtype"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?"serve*2.6.02v2.6.0-0-g919f693420e8??9
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
??*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:?*
dtype0
u
notes/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?_*
shared_namenotes/kernel
n
 notes/kernel/Read/ReadVariableOpReadVariableOpnotes/kernel*
_output_shapes
:	?_*
dtype0
l

notes/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:_*
shared_name
notes/bias
e
notes/bias/Read/ReadVariableOpReadVariableOp
notes/bias*
_output_shapes
:_*
dtype0
v
times/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_nametimes/kernel
o
 times/kernel/Read/ReadVariableOpReadVariableOptimes/kernel* 
_output_shapes
:
??*
dtype0
m

times/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
times/bias
f
times/bias/Read/ReadVariableOpReadVariableOp
times/bias*
_output_shapes	
:?*
dtype0
z
lengths/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namelengths/kernel
s
"lengths/kernel/Read/ReadVariableOpReadVariableOplengths/kernel* 
_output_shapes
:
??*
dtype0
q
lengths/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namelengths/bias
j
 lengths/bias/Read/ReadVariableOpReadVariableOplengths/bias*
_output_shapes	
:?*
dtype0
?
gru_2/gru_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_namegru_2/gru_cell_2/kernel
?
+gru_2/gru_cell_2/kernel/Read/ReadVariableOpReadVariableOpgru_2/gru_cell_2/kernel* 
_output_shapes
:
??*
dtype0
?
!gru_2/gru_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*2
shared_name#!gru_2/gru_cell_2/recurrent_kernel
?
5gru_2/gru_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_2/gru_cell_2/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
gru_2/gru_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_namegru_2/gru_cell_2/bias
|
)gru_2/gru_cell_2/bias/Read/ReadVariableOpReadVariableOpgru_2/gru_cell_2/bias*
_output_shapes	
:?*
dtype0
?
gru_3/gru_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_namegru_3/gru_cell_3/kernel
?
+gru_3/gru_cell_3/kernel/Read/ReadVariableOpReadVariableOpgru_3/gru_cell_3/kernel* 
_output_shapes
:
??*
dtype0
?
!gru_3/gru_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*2
shared_name#!gru_3/gru_cell_3/recurrent_kernel
?
5gru_3/gru_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_3/gru_cell_3/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
gru_3/gru_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_namegru_3/gru_cell_3/bias
|
)gru_3/gru_cell_3/bias/Read/ReadVariableOpReadVariableOpgru_3/gru_cell_3/bias*
_output_shapes	
:?*
dtype0
y
gru_2/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namegru_2/Variable
r
"gru_2/Variable/Read/ReadVariableOpReadVariableOpgru_2/Variable*
_output_shapes
:	?*
dtype0
y
gru_3/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namegru_3/Variable
r
"gru_3/Variable/Read/ReadVariableOpReadVariableOpgru_3/Variable*
_output_shapes
:	?*
dtype0

NoOpNoOp
?*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?)
value?)B?) B?)
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
		variables

trainable_variables
regularization_losses
	keras_api

signatures
 
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
h

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
f
0
1
62
73
84
95
:6
;7
$8
%9
*10
+11
012
113
f
0
1
62
73
84
95
:6
;7
$8
%9
*10
+11
012
113
 
?
<layer_regularization_losses
		variables
=non_trainable_variables

>layers
?layer_metrics

trainable_variables
regularization_losses
@metrics
 
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Alayer_regularization_losses
Bnon_trainable_variables

Clayers
	variables
Dlayer_metrics
trainable_variables
regularization_losses
Emetrics
~

6kernel
7recurrent_kernel
8bias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
 

60
71
82

60
71
82
 
?
Jlayer_regularization_losses
	variables
Knon_trainable_variables

Llayers
Mlayer_metrics
trainable_variables

Nstates
regularization_losses
Ometrics
~

9kernel
:recurrent_kernel
;bias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
 

90
:1
;2

90
:1
;2
 
?
Tlayer_regularization_losses
	variables
Unon_trainable_variables

Vlayers
Wlayer_metrics
trainable_variables

Xstates
regularization_losses
Ymetrics
 
 
 
?
Zlayer_regularization_losses
[non_trainable_variables

\layers
 	variables
]layer_metrics
!trainable_variables
"regularization_losses
^metrics
XV
VARIABLE_VALUEnotes/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
notes/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
?
_layer_regularization_losses
`non_trainable_variables

alayers
&	variables
blayer_metrics
'trainable_variables
(regularization_losses
cmetrics
XV
VARIABLE_VALUEtimes/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
times/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
?
dlayer_regularization_losses
enon_trainable_variables

flayers
,	variables
glayer_metrics
-trainable_variables
.regularization_losses
hmetrics
ZX
VARIABLE_VALUElengths/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElengths/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
?
ilayer_regularization_losses
jnon_trainable_variables

klayers
2	variables
llayer_metrics
3trainable_variables
4regularization_losses
mmetrics
SQ
VARIABLE_VALUEgru_2/gru_cell_2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!gru_2/gru_cell_2/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEgru_2/gru_cell_2/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEgru_3/gru_cell_3/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!gru_3/gru_cell_3/recurrent_kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEgru_3/gru_cell_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
 
 
8
0
1
2
3
4
5
6
7
 
 
 
 
 
 
 

60
71
82

60
71
82
 
?
nlayer_regularization_losses
onon_trainable_variables

players
F	variables
qlayer_metrics
Gtrainable_variables
Hregularization_losses
rmetrics
 
 

0
 

s0
 

90
:1
;2

90
:1
;2
 
?
tlayer_regularization_losses
unon_trainable_variables

vlayers
P	variables
wlayer_metrics
Qtrainable_variables
Rregularization_losses
xmetrics
 
 

0
 

y0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
fd
VARIABLE_VALUEgru_2/VariableBlayer_with_weights-1/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
 
 
fd
VARIABLE_VALUEgru_3/VariableBlayer_with_weights-2/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_2Placeholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2dense_1/kerneldense_1/biasgru_2/gru_cell_2/kernelgru_2/gru_cell_2/bias!gru_2/gru_cell_2/recurrent_kernelgru_2/Variablegru_3/gru_cell_3/kernelgru_3/gru_cell_3/bias!gru_3/gru_cell_3/recurrent_kernelgru_3/Variablelengths/kernellengths/biastimes/kernel
times/biasnotes/kernel
notes/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *[
_output_shapesI
G:??????????:?????????_:??????????*0
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8? *+
f&R$
"__inference_signature_wrapper_9111
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp notes/kernel/Read/ReadVariableOpnotes/bias/Read/ReadVariableOp times/kernel/Read/ReadVariableOptimes/bias/Read/ReadVariableOp"lengths/kernel/Read/ReadVariableOp lengths/bias/Read/ReadVariableOp+gru_2/gru_cell_2/kernel/Read/ReadVariableOp5gru_2/gru_cell_2/recurrent_kernel/Read/ReadVariableOp)gru_2/gru_cell_2/bias/Read/ReadVariableOp+gru_3/gru_cell_3/kernel/Read/ReadVariableOp5gru_3/gru_cell_3/recurrent_kernel/Read/ReadVariableOp)gru_3/gru_cell_3/bias/Read/ReadVariableOp"gru_2/Variable/Read/ReadVariableOp"gru_3/Variable/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *'
f"R 
__inference__traced_save_12997
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasnotes/kernel
notes/biastimes/kernel
times/biaslengths/kernellengths/biasgru_2/gru_cell_2/kernel!gru_2/gru_cell_2/recurrent_kernelgru_2/gru_cell_2/biasgru_3/gru_cell_3/kernel!gru_3/gru_cell_3/recurrent_kernelgru_3/gru_cell_3/biasgru_2/Variablegru_3/Variable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? **
f%R#
!__inference__traced_restore_13055އ9
?J
?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12213

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Constw
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*
_output_shapes
:	?2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	?2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/Const}
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
dropout_1/Muls
dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2ͦS2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_1/GreaterEqual}
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_1/Castz
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/Const}
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
dropout_2/Muls
dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_2/GreaterEqual}
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_2/Castz
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_2/Mul_1V
mulMulinputsdropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slices
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0* 
_output_shapes
:::*
	num_split2	
split_1X
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:2
addI
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:2	
Sigmoid\
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:2
add_1O
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:2
	Sigmoid_1m
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpe
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2BatchMatMulV2	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:2

MatMul_2]
add_2AddV2split:output:2MatMul_2:output:0*
T0*
_output_shapes
:2
add_2B
TanhTanh	add_2:z:0*
T0*
_output_shapes
:2
Tanhm
mul_2/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpc
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_3P
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:2
add_3U
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

IdentityY

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
?
?
while_cond_11377
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_11377___redundant_placeholder03
/while_while_cond_11377___redundant_placeholder13
/while_while_cond_11377___redundant_placeholder23
/while_while_cond_11377___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
߈
?	
gru_3_while_body_9976(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2%
!gru_3_while_gru_3_strided_slice_0c
_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0K
7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0:
??G
8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0:	?D
0gru_3_while_gru_cell_3_readvariableop_resource_0:
??
gru_3_while_identity
gru_3_while_identity_1
gru_3_while_identity_2
gru_3_while_identity_3
gru_3_while_identity_4#
gru_3_while_gru_3_strided_slicea
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensorI
5gru_3_while_gru_cell_3_matmul_readvariableop_resource:
??E
6gru_3_while_gru_cell_3_biasadd_readvariableop_resource:	?B
.gru_3_while_gru_cell_3_readvariableop_resource:
????-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp?,gru_3/while/gru_cell_3/MatMul/ReadVariableOp?%gru_3/while/gru_cell_3/ReadVariableOp?'gru_3/while/gru_cell_3/ReadVariableOp_1?
=gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
/gru_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0gru_3_while_placeholderFgru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype021
/gru_3/while/TensorArrayV2Read/TensorListGetItem?
&gru_3/while/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_3/while/gru_cell_3/ones_like/Shape?
&gru_3/while/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&gru_3/while/gru_cell_3/ones_like/Const?
 gru_3/while/gru_cell_3/ones_likeFill/gru_3/while/gru_cell_3/ones_like/Shape:output:0/gru_3/while/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2"
 gru_3/while/gru_cell_3/ones_like?
$gru_3/while/gru_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$gru_3/while/gru_cell_3/dropout/Const?
"gru_3/while/gru_cell_3/dropout/MulMul)gru_3/while/gru_cell_3/ones_like:output:0-gru_3/while/gru_cell_3/dropout/Const:output:0*
T0*
_output_shapes
:	?2$
"gru_3/while/gru_cell_3/dropout/Mul?
$gru_3/while/gru_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_3/while/gru_cell_3/dropout/Shape?
;gru_3/while/gru_cell_3/dropout/random_uniform/RandomUniformRandomUniform-gru_3/while/gru_cell_3/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2=
;gru_3/while/gru_cell_3/dropout/random_uniform/RandomUniform?
-gru_3/while/gru_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2/
-gru_3/while/gru_cell_3/dropout/GreaterEqual/y?
+gru_3/while/gru_cell_3/dropout/GreaterEqualGreaterEqualDgru_3/while/gru_cell_3/dropout/random_uniform/RandomUniform:output:06gru_3/while/gru_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2-
+gru_3/while/gru_cell_3/dropout/GreaterEqual?
#gru_3/while/gru_cell_3/dropout/CastCast/gru_3/while/gru_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2%
#gru_3/while/gru_cell_3/dropout/Cast?
$gru_3/while/gru_cell_3/dropout/Mul_1Mul&gru_3/while/gru_cell_3/dropout/Mul:z:0'gru_3/while/gru_cell_3/dropout/Cast:y:0*
T0*
_output_shapes
:	?2&
$gru_3/while/gru_cell_3/dropout/Mul_1?
&gru_3/while/gru_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2(
&gru_3/while/gru_cell_3/dropout_1/Const?
$gru_3/while/gru_cell_3/dropout_1/MulMul)gru_3/while/gru_cell_3/ones_like:output:0/gru_3/while/gru_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2&
$gru_3/while/gru_cell_3/dropout_1/Mul?
&gru_3/while/gru_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_3/while/gru_cell_3/dropout_1/Shape?
=gru_3/while/gru_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform/gru_3/while/gru_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2?
=gru_3/while/gru_cell_3/dropout_1/random_uniform/RandomUniform?
/gru_3/while/gru_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=21
/gru_3/while/gru_cell_3/dropout_1/GreaterEqual/y?
-gru_3/while/gru_cell_3/dropout_1/GreaterEqualGreaterEqualFgru_3/while/gru_cell_3/dropout_1/random_uniform/RandomUniform:output:08gru_3/while/gru_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2/
-gru_3/while/gru_cell_3/dropout_1/GreaterEqual?
%gru_3/while/gru_cell_3/dropout_1/CastCast1gru_3/while/gru_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2'
%gru_3/while/gru_cell_3/dropout_1/Cast?
&gru_3/while/gru_cell_3/dropout_1/Mul_1Mul(gru_3/while/gru_cell_3/dropout_1/Mul:z:0)gru_3/while/gru_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2(
&gru_3/while/gru_cell_3/dropout_1/Mul_1?
&gru_3/while/gru_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2(
&gru_3/while/gru_cell_3/dropout_2/Const?
$gru_3/while/gru_cell_3/dropout_2/MulMul)gru_3/while/gru_cell_3/ones_like:output:0/gru_3/while/gru_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2&
$gru_3/while/gru_cell_3/dropout_2/Mul?
&gru_3/while/gru_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_3/while/gru_cell_3/dropout_2/Shape?
=gru_3/while/gru_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform/gru_3/while/gru_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2?
=gru_3/while/gru_cell_3/dropout_2/random_uniform/RandomUniform?
/gru_3/while/gru_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=21
/gru_3/while/gru_cell_3/dropout_2/GreaterEqual/y?
-gru_3/while/gru_cell_3/dropout_2/GreaterEqualGreaterEqualFgru_3/while/gru_cell_3/dropout_2/random_uniform/RandomUniform:output:08gru_3/while/gru_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2/
-gru_3/while/gru_cell_3/dropout_2/GreaterEqual?
%gru_3/while/gru_cell_3/dropout_2/CastCast1gru_3/while/gru_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2'
%gru_3/while/gru_cell_3/dropout_2/Cast?
&gru_3/while/gru_cell_3/dropout_2/Mul_1Mul(gru_3/while/gru_cell_3/dropout_2/Mul:z:0)gru_3/while/gru_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2(
&gru_3/while/gru_cell_3/dropout_2/Mul_1?
gru_3/while/gru_cell_3/mulMul6gru_3/while/TensorArrayV2Read/TensorListGetItem:item:0(gru_3/while/gru_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/mul?
,gru_3/while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,gru_3/while/gru_cell_3/MatMul/ReadVariableOp?
gru_3/while/gru_cell_3/MatMulMatMulgru_3/while/gru_cell_3/mul:z:04gru_3/while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/MatMul?
-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02/
-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp?
gru_3/while/gru_cell_3/BiasAddBiasAdd'gru_3/while/gru_cell_3/MatMul:product:05gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2 
gru_3/while/gru_cell_3/BiasAdd?
&gru_3/while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_3/while/gru_cell_3/split/split_dim?
gru_3/while/gru_cell_3/splitSplit/gru_3/while/gru_cell_3/split/split_dim:output:0'gru_3/while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_3/while/gru_cell_3/split?
%gru_3/while/gru_cell_3/ReadVariableOpReadVariableOp0gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02'
%gru_3/while/gru_cell_3/ReadVariableOp?
*gru_3/while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_3/while/gru_cell_3/strided_slice/stack?
,gru_3/while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_3/while/gru_cell_3/strided_slice/stack_1?
,gru_3/while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_3/while/gru_cell_3/strided_slice/stack_2?
$gru_3/while/gru_cell_3/strided_sliceStridedSlice-gru_3/while/gru_cell_3/ReadVariableOp:value:03gru_3/while/gru_cell_3/strided_slice/stack:output:05gru_3/while/gru_cell_3/strided_slice/stack_1:output:05gru_3/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$gru_3/while/gru_cell_3/strided_slice?
gru_3/while/gru_cell_3/MatMul_1MatMulgru_3_while_placeholder_2-gru_3/while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2!
gru_3/while/gru_cell_3/MatMul_1?
gru_3/while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_3/while/gru_cell_3/Const?
(gru_3/while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_3/while/gru_cell_3/split_1/split_dim?
gru_3/while/gru_cell_3/split_1SplitV)gru_3/while/gru_cell_3/MatMul_1:product:0%gru_3/while/gru_cell_3/Const:output:01gru_3/while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2 
gru_3/while/gru_cell_3/split_1?
gru_3/while/gru_cell_3/addAddV2%gru_3/while/gru_cell_3/split:output:0'gru_3/while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/add?
gru_3/while/gru_cell_3/SigmoidSigmoidgru_3/while/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2 
gru_3/while/gru_cell_3/Sigmoid?
gru_3/while/gru_cell_3/add_1AddV2%gru_3/while/gru_cell_3/split:output:1'gru_3/while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/add_1?
 gru_3/while/gru_cell_3/Sigmoid_1Sigmoid gru_3/while/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2"
 gru_3/while/gru_cell_3/Sigmoid_1?
gru_3/while/gru_cell_3/mul_1Mul$gru_3/while/gru_cell_3/Sigmoid_1:y:0gru_3_while_placeholder_2*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/mul_1?
'gru_3/while/gru_cell_3/ReadVariableOp_1ReadVariableOp0gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'gru_3/while/gru_cell_3/ReadVariableOp_1?
,gru_3/while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_3/while/gru_cell_3/strided_slice_1/stack?
.gru_3/while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_3/while/gru_cell_3/strided_slice_1/stack_1?
.gru_3/while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_3/while/gru_cell_3/strided_slice_1/stack_2?
&gru_3/while/gru_cell_3/strided_slice_1StridedSlice/gru_3/while/gru_cell_3/ReadVariableOp_1:value:05gru_3/while/gru_cell_3/strided_slice_1/stack:output:07gru_3/while/gru_cell_3/strided_slice_1/stack_1:output:07gru_3/while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2(
&gru_3/while/gru_cell_3/strided_slice_1?
gru_3/while/gru_cell_3/MatMul_2MatMul gru_3/while/gru_cell_3/mul_1:z:0/gru_3/while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2!
gru_3/while/gru_cell_3/MatMul_2?
gru_3/while/gru_cell_3/add_2AddV2%gru_3/while/gru_cell_3/split:output:2)gru_3/while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/add_2?
gru_3/while/gru_cell_3/TanhTanh gru_3/while/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/Tanh?
gru_3/while/gru_cell_3/mul_2Mul"gru_3/while/gru_cell_3/Sigmoid:y:0gru_3_while_placeholder_2*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/mul_2?
gru_3/while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_3/while/gru_cell_3/sub/x?
gru_3/while/gru_cell_3/subSub%gru_3/while/gru_cell_3/sub/x:output:0"gru_3/while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/sub?
gru_3/while/gru_cell_3/mul_3Mulgru_3/while/gru_cell_3/sub:z:0gru_3/while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/mul_3?
gru_3/while/gru_cell_3/add_3AddV2 gru_3/while/gru_cell_3/mul_2:z:0 gru_3/while/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/add_3?
0gru_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_3_while_placeholder_1gru_3_while_placeholder gru_3/while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_3/while/TensorArrayV2Write/TensorListSetItemh
gru_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_3/while/add/y?
gru_3/while/addAddV2gru_3_while_placeholdergru_3/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_3/while/addl
gru_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_3/while/add_1/y?
gru_3/while/add_1AddV2$gru_3_while_gru_3_while_loop_countergru_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_3/while/add_1?
gru_3/while/IdentityIdentitygru_3/while/add_1:z:0^gru_3/while/NoOp*
T0*
_output_shapes
: 2
gru_3/while/Identity?
gru_3/while/Identity_1Identity*gru_3_while_gru_3_while_maximum_iterations^gru_3/while/NoOp*
T0*
_output_shapes
: 2
gru_3/while/Identity_1?
gru_3/while/Identity_2Identitygru_3/while/add:z:0^gru_3/while/NoOp*
T0*
_output_shapes
: 2
gru_3/while/Identity_2?
gru_3/while/Identity_3Identity@gru_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_3/while/NoOp*
T0*
_output_shapes
: 2
gru_3/while/Identity_3?
gru_3/while/Identity_4Identity gru_3/while/gru_cell_3/add_3:z:0^gru_3/while/NoOp*
T0*
_output_shapes
:	?2
gru_3/while/Identity_4?
gru_3/while/NoOpNoOp.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
gru_3/while/NoOp"D
gru_3_while_gru_3_strided_slice!gru_3_while_gru_3_strided_slice_0"r
6gru_3_while_gru_cell_3_biasadd_readvariableop_resource8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0"p
5gru_3_while_gru_cell_3_matmul_readvariableop_resource7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0"b
.gru_3_while_gru_cell_3_readvariableop_resource0gru_3_while_gru_cell_3_readvariableop_resource_0"5
gru_3_while_identitygru_3/while/Identity:output:0"9
gru_3_while_identity_1gru_3/while/Identity_1:output:0"9
gru_3_while_identity_2gru_3/while/Identity_2:output:0"9
gru_3_while_identity_3gru_3/while/Identity_3:output:0"9
gru_3_while_identity_4gru_3/while/Identity_4:output:0"?
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2^
-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp2\
,gru_3/while/gru_cell_3/MatMul/ReadVariableOp,gru_3/while/gru_cell_3/MatMul/ReadVariableOp2N
%gru_3/while/gru_cell_3/ReadVariableOp%gru_3/while/gru_cell_3/ReadVariableOp2R
'gru_3/while/gru_cell_3/ReadVariableOp_1'gru_3/while/gru_cell_3/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_8307

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
*__inference_gru_cell_3_layer_call_fn_12508

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_72482
StatefulPartitionedCalls
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	?2

Identityw

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:	?2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	?
 
_user_specified_nameinputs:IE

_output_shapes
:	?
"
_user_specified_name
states/0
?V
?
while_body_10741
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_2_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
???
0while_gru_cell_2_biasadd_readvariableop_resource:	?<
(while_gru_cell_2_readvariableop_resource:
????'while/gru_cell_2/BiasAdd/ReadVariableOp?&while/gru_cell_2/MatMul/ReadVariableOp?while/gru_cell_2/ReadVariableOp?!while/gru_cell_2/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/ones_like/Shape?
 while/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_2/ones_like/Const?
while/gru_cell_2/ones_likeFill)while/gru_cell_2/ones_like/Shape:output:0)while/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/ones_like?
while/gru_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_2/ones_like:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOp?
while/gru_cell_2/MatMulMatMulwhile/gru_cell_2/mul:z:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul?
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp?
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/BiasAdd?
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_2/split/split_dim?
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_2/split?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_2/ReadVariableOp?
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack?
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1?
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2?
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_1?
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_2/Const?
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_2/split_1/split_dim?
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_2/split_1?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add?
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid?
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_1?
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid_1?
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_1?
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_2/ReadVariableOp_1?
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack?
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1?
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2?
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1?
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul_1:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_2?
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Tanh?
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_2u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_2/sub/x?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/sub?
while/gru_cell_2/mul_3Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_3?
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_2:z:0while/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_2/BiasAdd/ReadVariableOp'while/gru_cell_2/BiasAdd/ReadVariableOp2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp2F
!while/gru_cell_2/ReadVariableOp_1!while/gru_cell_2/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?0
?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12278

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likeW
mulMulinputsones_like:output:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_sliceu
MatMul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0* 
_output_shapes
:::*
	num_split2	
split_1X
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:2
addI
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:2	
Sigmoid\
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:2
add_1O
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:2
	Sigmoid_1o
mul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpe
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2BatchMatMulV2	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:2

MatMul_2]
add_2AddV2split:output:2MatMul_2:output:0*
T0*
_output_shapes
:2
add_2B
TanhTanh	add_2:z:0*
T0*
_output_shapes
:2
Tanho
mul_2/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpc
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_3P
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:2
add_3U
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

IdentityY

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
?(
?
A__inference_model_1_layer_call_and_return_conditional_losses_9023
input_2 
dense_1_8981:
??
dense_1_8983:	?

gru_2_8986:
??

gru_2_8988:	?

gru_2_8990:
??

gru_2_8992:	?

gru_3_8995:
??

gru_3_8997:	?

gru_3_8999:
??

gru_3_9001:	? 
lengths_9005:
??
lengths_9007:	?

times_9010:
??

times_9012:	?

notes_9015:	?_

notes_9017:_
identity

identity_1

identity_2??dense_1/StatefulPartitionedCall?gru_2/StatefulPartitionedCall?gru_3/StatefulPartitionedCall?lengths/StatefulPartitionedCall?notes/StatefulPartitionedCall?times/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_1_8981dense_1_8983*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_77342!
dense_1/StatefulPartitionedCall?
gru_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0
gru_2_8986
gru_2_8988
gru_2_8990
gru_2_8992*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_2_layer_call_and_return_conditional_losses_79102
gru_2/StatefulPartitionedCall?
gru_3/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0
gru_3_8995
gru_3_8997
gru_3_8999
gru_3_9001*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_3_layer_call_and_return_conditional_losses_80902
gru_3/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall&gru_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_81052
dropout_1/PartitionedCall?
lengths/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0lengths_9005lengths_9007*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_lengths_layer_call_and_return_conditional_losses_81372!
lengths/StatefulPartitionedCall?
times/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0
times_9010
times_9012*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_times_layer_call_and_return_conditional_losses_81732
times/StatefulPartitionedCall?
notes/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0
notes_9015
notes_9017*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????_*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_notes_layer_call_and_return_conditional_losses_82092
notes/StatefulPartitionedCall?
IdentityIdentity&notes/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity?

Identity_1Identity&times/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1?

Identity_2Identity(lengths/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2?
NoOpNoOp ^dense_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall2B
lengths/StatefulPartitionedCalllengths/StatefulPartitionedCall2>
notes/StatefulPartitionedCallnotes/StatefulPartitionedCall2>
times/StatefulPartitionedCalltimes/StatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_2
??
?
A__inference_model_1_layer_call_and_return_conditional_losses_9639

inputs=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?C
/gru_2_gru_cell_2_matmul_readvariableop_resource:
???
0gru_2_gru_cell_2_biasadd_readvariableop_resource:	?<
(gru_2_gru_cell_2_readvariableop_resource:
??D
1gru_2_gru_cell_2_matmul_1_readvariableop_resource:	?C
/gru_3_gru_cell_3_matmul_readvariableop_resource:
???
0gru_3_gru_cell_3_biasadd_readvariableop_resource:	?<
(gru_3_gru_cell_3_readvariableop_resource:
??D
1gru_3_gru_cell_3_matmul_1_readvariableop_resource:	?=
)lengths_tensordot_readvariableop_resource:
??6
'lengths_biasadd_readvariableop_resource:	?;
'times_tensordot_readvariableop_resource:
??4
%times_biasadd_readvariableop_resource:	?:
'notes_tensordot_readvariableop_resource:	?_3
%notes_biasadd_readvariableop_resource:_
identity

identity_1

identity_2??dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?gru_2/AssignVariableOp?gru_2/ReadVariableOp?'gru_2/gru_cell_2/BiasAdd/ReadVariableOp?&gru_2/gru_cell_2/MatMul/ReadVariableOp?(gru_2/gru_cell_2/MatMul_1/ReadVariableOp?gru_2/gru_cell_2/ReadVariableOp?!gru_2/gru_cell_2/ReadVariableOp_1?%gru_2/gru_cell_2/mul_1/ReadVariableOp?%gru_2/gru_cell_2/mul_2/ReadVariableOp?gru_2/while?gru_3/AssignVariableOp?gru_3/ReadVariableOp?'gru_3/gru_cell_3/BiasAdd/ReadVariableOp?&gru_3/gru_cell_3/MatMul/ReadVariableOp?(gru_3/gru_cell_3/MatMul_1/ReadVariableOp?gru_3/gru_cell_3/ReadVariableOp?!gru_3/gru_cell_3/ReadVariableOp_1?%gru_3/gru_cell_3/mul_1/ReadVariableOp?%gru_3/gru_cell_3/mul_2/ReadVariableOp?gru_3/while?lengths/BiasAdd/ReadVariableOp? lengths/Tensordot/ReadVariableOp?notes/BiasAdd/ReadVariableOp?notes/Tensordot/ReadVariableOp?times/BiasAdd/ReadVariableOp?times/Tensordot/ReadVariableOp?
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes?
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freeh
dense_1/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape?
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2?
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod?
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1?
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack?
dense_1/Tensordot/transpose	Transposeinputs!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense_1/Tensordot/transpose?
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_1/Tensordot/Reshape?
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/Tensordot/MatMul?
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_1/Tensordot/Const_2?
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense_1/Tensordot?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense_1/BiasAddu
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
dense_1/Tanh?
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose/perm?
gru_2/transpose	Transposedense_1/Tanh:y:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_2/transpose]
gru_2/ShapeShapegru_2/transpose:y:0*
T0*
_output_shapes
:2
gru_2/Shape?
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice/stack?
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_1?
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_2?
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slice?
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!gru_2/TensorArrayV2/element_shape?
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2?
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2=
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_2/TensorArrayUnstack/TensorListFromTensor?
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_1/stack?
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_1?
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_2?
gru_2/strided_slice_1StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
gru_2/strided_slice_1?
 gru_2/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_2/gru_cell_2/ones_like/Shape?
 gru_2/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 gru_2/gru_cell_2/ones_like/Const?
gru_2/gru_cell_2/ones_likeFill)gru_2/gru_cell_2/ones_like/Shape:output:0)gru_2/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/ones_like?
gru_2/gru_cell_2/mulMulgru_2/strided_slice_1:output:0#gru_2/gru_cell_2/ones_like:output:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/mul?
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&gru_2/gru_cell_2/MatMul/ReadVariableOp?
gru_2/gru_cell_2/MatMulMatMulgru_2/gru_cell_2/mul:z:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/MatMul?
'gru_2/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp0gru_2_gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'gru_2/gru_cell_2/BiasAdd/ReadVariableOp?
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0/gru_2/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/BiasAdd?
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_2/gru_cell_2/split/split_dim?
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_2/gru_cell_2/split?
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
gru_2/gru_cell_2/ReadVariableOp?
$gru_2/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_2/gru_cell_2/strided_slice/stack?
&gru_2/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_2/gru_cell_2/strided_slice/stack_1?
&gru_2/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_2/gru_cell_2/strided_slice/stack_2?
gru_2/gru_cell_2/strided_sliceStridedSlice'gru_2/gru_cell_2/ReadVariableOp:value:0-gru_2/gru_cell_2/strided_slice/stack:output:0/gru_2/gru_cell_2/strided_slice/stack_1:output:0/gru_2/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
gru_2/gru_cell_2/strided_slice?
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp?
gru_2/gru_cell_2/MatMul_1MatMul0gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0'gru_2/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/MatMul_1?
gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_2/gru_cell_2/Const?
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_2/gru_cell_2/split_1/split_dim?
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/MatMul_1:product:0gru_2/gru_cell_2/Const:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_2/gru_cell_2/split_1?
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/add?
gru_2/gru_cell_2/SigmoidSigmoidgru_2/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/Sigmoid?
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/add_1?
gru_2/gru_cell_2/Sigmoid_1Sigmoidgru_2/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/Sigmoid_1?
%gru_2/gru_cell_2/mul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02'
%gru_2/gru_cell_2/mul_1/ReadVariableOp?
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Sigmoid_1:y:0-gru_2/gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/mul_1?
!gru_2/gru_cell_2/ReadVariableOp_1ReadVariableOp(gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!gru_2/gru_cell_2/ReadVariableOp_1?
&gru_2/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_2/gru_cell_2/strided_slice_1/stack?
(gru_2/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_2/gru_cell_2/strided_slice_1/stack_1?
(gru_2/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_2/gru_cell_2/strided_slice_1/stack_2?
 gru_2/gru_cell_2/strided_slice_1StridedSlice)gru_2/gru_cell_2/ReadVariableOp_1:value:0/gru_2/gru_cell_2/strided_slice_1/stack:output:01gru_2/gru_cell_2/strided_slice_1/stack_1:output:01gru_2/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 gru_2/gru_cell_2/strided_slice_1?
gru_2/gru_cell_2/MatMul_2MatMulgru_2/gru_cell_2/mul_1:z:0)gru_2/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/MatMul_2?
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2#gru_2/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/add_2|
gru_2/gru_cell_2/TanhTanhgru_2/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/Tanh?
%gru_2/gru_cell_2/mul_2/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02'
%gru_2/gru_cell_2/mul_2/ReadVariableOp?
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/Sigmoid:y:0-gru_2/gru_cell_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/mul_2u
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_2/gru_cell_2/sub/x?
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/sub?
gru_2/gru_cell_2/mul_3Mulgru_2/gru_cell_2/sub:z:0gru_2/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/mul_3?
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_2:z:0gru_2/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/add_3?
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_2/TensorArrayV2_1/element_shape?
gru_2/TensorArrayV2_1TensorListReserve,gru_2/TensorArrayV2_1/element_shape:output:0gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2_1Z

gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_2/time?
gru_2/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_2/ReadVariableOp?
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_2/while/maximum_iterationsv
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_2/while/loop_counter?
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0gru_2/ReadVariableOp:value:0gru_2/strided_slice:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0/gru_2_gru_cell_2_matmul_readvariableop_resource0gru_2_gru_cell_2_biasadd_readvariableop_resource(gru_2_gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *!
bodyR
gru_2_while_body_9291*!
condR
gru_2_while_cond_9290*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
gru_2/while?
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      28
6gru_2/TensorArrayV2Stack/TensorListStack/element_shape?
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02*
(gru_2/TensorArrayV2Stack/TensorListStack?
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_2/strided_slice_2/stack?
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_2/stack_1?
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_2?
gru_2/strided_slice_2StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
gru_2/strided_slice_2?
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose_1/perm?
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_2/transpose_1r
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/runtime?
gru_2/AssignVariableOpAssignVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resourcegru_2/while:output:4^gru_2/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp&^gru_2/gru_cell_2/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
gru_2/AssignVariableOp?
gru_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_3/transpose/perm?
gru_3/transpose	Transposegru_2/transpose_1:y:0gru_3/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_3/transpose]
gru_3/ShapeShapegru_3/transpose:y:0*
T0*
_output_shapes
:2
gru_3/Shape?
gru_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice/stack?
gru_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice/stack_1?
gru_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice/stack_2?
gru_3/strided_sliceStridedSlicegru_3/Shape:output:0"gru_3/strided_slice/stack:output:0$gru_3/strided_slice/stack_1:output:0$gru_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_3/strided_slice?
!gru_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!gru_3/TensorArrayV2/element_shape?
gru_3/TensorArrayV2TensorListReserve*gru_3/TensorArrayV2/element_shape:output:0gru_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_3/TensorArrayV2?
;gru_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2=
;gru_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
-gru_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_3/transpose:y:0Dgru_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_3/TensorArrayUnstack/TensorListFromTensor?
gru_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice_1/stack?
gru_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_1/stack_1?
gru_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_1/stack_2?
gru_3/strided_slice_1StridedSlicegru_3/transpose:y:0$gru_3/strided_slice_1/stack:output:0&gru_3/strided_slice_1/stack_1:output:0&gru_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
gru_3/strided_slice_1?
 gru_3/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_3/gru_cell_3/ones_like/Shape?
 gru_3/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 gru_3/gru_cell_3/ones_like/Const?
gru_3/gru_cell_3/ones_likeFill)gru_3/gru_cell_3/ones_like/Shape:output:0)gru_3/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/ones_like?
gru_3/gru_cell_3/mulMulgru_3/strided_slice_1:output:0#gru_3/gru_cell_3/ones_like:output:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/mul?
&gru_3/gru_cell_3/MatMul/ReadVariableOpReadVariableOp/gru_3_gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&gru_3/gru_cell_3/MatMul/ReadVariableOp?
gru_3/gru_cell_3/MatMulMatMulgru_3/gru_cell_3/mul:z:0.gru_3/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/MatMul?
'gru_3/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp0gru_3_gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'gru_3/gru_cell_3/BiasAdd/ReadVariableOp?
gru_3/gru_cell_3/BiasAddBiasAdd!gru_3/gru_cell_3/MatMul:product:0/gru_3/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/BiasAdd?
 gru_3/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_3/gru_cell_3/split/split_dim?
gru_3/gru_cell_3/splitSplit)gru_3/gru_cell_3/split/split_dim:output:0!gru_3/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_3/gru_cell_3/split?
gru_3/gru_cell_3/ReadVariableOpReadVariableOp(gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
gru_3/gru_cell_3/ReadVariableOp?
$gru_3/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_3/gru_cell_3/strided_slice/stack?
&gru_3/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_3/gru_cell_3/strided_slice/stack_1?
&gru_3/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_3/gru_cell_3/strided_slice/stack_2?
gru_3/gru_cell_3/strided_sliceStridedSlice'gru_3/gru_cell_3/ReadVariableOp:value:0-gru_3/gru_cell_3/strided_slice/stack:output:0/gru_3/gru_cell_3/strided_slice/stack_1:output:0/gru_3/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
gru_3/gru_cell_3/strided_slice?
(gru_3/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(gru_3/gru_cell_3/MatMul_1/ReadVariableOp?
gru_3/gru_cell_3/MatMul_1MatMul0gru_3/gru_cell_3/MatMul_1/ReadVariableOp:value:0'gru_3/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/MatMul_1?
gru_3/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_3/gru_cell_3/Const?
"gru_3/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_3/gru_cell_3/split_1/split_dim?
gru_3/gru_cell_3/split_1SplitV#gru_3/gru_cell_3/MatMul_1:product:0gru_3/gru_cell_3/Const:output:0+gru_3/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_3/gru_cell_3/split_1?
gru_3/gru_cell_3/addAddV2gru_3/gru_cell_3/split:output:0!gru_3/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/add?
gru_3/gru_cell_3/SigmoidSigmoidgru_3/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/Sigmoid?
gru_3/gru_cell_3/add_1AddV2gru_3/gru_cell_3/split:output:1!gru_3/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/add_1?
gru_3/gru_cell_3/Sigmoid_1Sigmoidgru_3/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/Sigmoid_1?
%gru_3/gru_cell_3/mul_1/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02'
%gru_3/gru_cell_3/mul_1/ReadVariableOp?
gru_3/gru_cell_3/mul_1Mulgru_3/gru_cell_3/Sigmoid_1:y:0-gru_3/gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/mul_1?
!gru_3/gru_cell_3/ReadVariableOp_1ReadVariableOp(gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!gru_3/gru_cell_3/ReadVariableOp_1?
&gru_3/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_3/gru_cell_3/strided_slice_1/stack?
(gru_3/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_3/gru_cell_3/strided_slice_1/stack_1?
(gru_3/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_3/gru_cell_3/strided_slice_1/stack_2?
 gru_3/gru_cell_3/strided_slice_1StridedSlice)gru_3/gru_cell_3/ReadVariableOp_1:value:0/gru_3/gru_cell_3/strided_slice_1/stack:output:01gru_3/gru_cell_3/strided_slice_1/stack_1:output:01gru_3/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 gru_3/gru_cell_3/strided_slice_1?
gru_3/gru_cell_3/MatMul_2MatMulgru_3/gru_cell_3/mul_1:z:0)gru_3/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/MatMul_2?
gru_3/gru_cell_3/add_2AddV2gru_3/gru_cell_3/split:output:2#gru_3/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/add_2|
gru_3/gru_cell_3/TanhTanhgru_3/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/Tanh?
%gru_3/gru_cell_3/mul_2/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02'
%gru_3/gru_cell_3/mul_2/ReadVariableOp?
gru_3/gru_cell_3/mul_2Mulgru_3/gru_cell_3/Sigmoid:y:0-gru_3/gru_cell_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/mul_2u
gru_3/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_3/gru_cell_3/sub/x?
gru_3/gru_cell_3/subSubgru_3/gru_cell_3/sub/x:output:0gru_3/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/sub?
gru_3/gru_cell_3/mul_3Mulgru_3/gru_cell_3/sub:z:0gru_3/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/mul_3?
gru_3/gru_cell_3/add_3AddV2gru_3/gru_cell_3/mul_2:z:0gru_3/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/add_3?
#gru_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_3/TensorArrayV2_1/element_shape?
gru_3/TensorArrayV2_1TensorListReserve,gru_3/TensorArrayV2_1/element_shape:output:0gru_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_3/TensorArrayV2_1Z

gru_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_3/time?
gru_3/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_3/ReadVariableOp?
gru_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_3/while/maximum_iterationsv
gru_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_3/while/loop_counter?
gru_3/whileWhile!gru_3/while/loop_counter:output:0'gru_3/while/maximum_iterations:output:0gru_3/time:output:0gru_3/TensorArrayV2_1:handle:0gru_3/ReadVariableOp:value:0gru_3/strided_slice:output:0=gru_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0/gru_3_gru_cell_3_matmul_readvariableop_resource0gru_3_gru_cell_3_biasadd_readvariableop_resource(gru_3_gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *!
bodyR
gru_3_while_body_9458*!
condR
gru_3_while_cond_9457*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
gru_3/while?
6gru_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      28
6gru_3/TensorArrayV2Stack/TensorListStack/element_shape?
(gru_3/TensorArrayV2Stack/TensorListStackTensorListStackgru_3/while:output:3?gru_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02*
(gru_3/TensorArrayV2Stack/TensorListStack?
gru_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_3/strided_slice_2/stack?
gru_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice_2/stack_1?
gru_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_2/stack_2?
gru_3/strided_slice_2StridedSlice1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0$gru_3/strided_slice_2/stack:output:0&gru_3/strided_slice_2/stack_1:output:0&gru_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
gru_3/strided_slice_2?
gru_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_3/transpose_1/perm?
gru_3/transpose_1	Transpose1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0gru_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_3/transpose_1r
gru_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_3/runtime?
gru_3/AssignVariableOpAssignVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resourcegru_3/while:output:4^gru_3/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp&^gru_3/gru_cell_3/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
gru_3/AssignVariableOp?
dropout_1/IdentityIdentitygru_3/transpose_1:y:0*
T0*,
_output_shapes
:??????????2
dropout_1/Identity?
 lengths/Tensordot/ReadVariableOpReadVariableOp)lengths_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 lengths/Tensordot/ReadVariableOpz
lengths/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
lengths/Tensordot/axes?
lengths/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
lengths/Tensordot/free}
lengths/Tensordot/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:2
lengths/Tensordot/Shape?
lengths/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
lengths/Tensordot/GatherV2/axis?
lengths/Tensordot/GatherV2GatherV2 lengths/Tensordot/Shape:output:0lengths/Tensordot/free:output:0(lengths/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
lengths/Tensordot/GatherV2?
!lengths/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!lengths/Tensordot/GatherV2_1/axis?
lengths/Tensordot/GatherV2_1GatherV2 lengths/Tensordot/Shape:output:0lengths/Tensordot/axes:output:0*lengths/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
lengths/Tensordot/GatherV2_1|
lengths/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
lengths/Tensordot/Const?
lengths/Tensordot/ProdProd#lengths/Tensordot/GatherV2:output:0 lengths/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
lengths/Tensordot/Prod?
lengths/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lengths/Tensordot/Const_1?
lengths/Tensordot/Prod_1Prod%lengths/Tensordot/GatherV2_1:output:0"lengths/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
lengths/Tensordot/Prod_1?
lengths/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
lengths/Tensordot/concat/axis?
lengths/Tensordot/concatConcatV2lengths/Tensordot/free:output:0lengths/Tensordot/axes:output:0&lengths/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/concat?
lengths/Tensordot/stackPacklengths/Tensordot/Prod:output:0!lengths/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/stack?
lengths/Tensordot/transpose	Transposedropout_1/Identity:output:0!lengths/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
lengths/Tensordot/transpose?
lengths/Tensordot/ReshapeReshapelengths/Tensordot/transpose:y:0 lengths/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
lengths/Tensordot/Reshape?
lengths/Tensordot/MatMulMatMul"lengths/Tensordot/Reshape:output:0(lengths/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lengths/Tensordot/MatMul?
lengths/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
lengths/Tensordot/Const_2?
lengths/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
lengths/Tensordot/concat_1/axis?
lengths/Tensordot/concat_1ConcatV2#lengths/Tensordot/GatherV2:output:0"lengths/Tensordot/Const_2:output:0(lengths/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/concat_1?
lengths/TensordotReshape"lengths/Tensordot/MatMul:product:0#lengths/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
lengths/Tensordot?
lengths/BiasAdd/ReadVariableOpReadVariableOp'lengths_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
lengths/BiasAdd/ReadVariableOp?
lengths/BiasAddBiasAddlengths/Tensordot:output:0&lengths/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
lengths/BiasAdd?
times/Tensordot/ReadVariableOpReadVariableOp'times_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
times/Tensordot/ReadVariableOpv
times/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
times/Tensordot/axes}
times/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
times/Tensordot/freey
times/Tensordot/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:2
times/Tensordot/Shape?
times/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
times/Tensordot/GatherV2/axis?
times/Tensordot/GatherV2GatherV2times/Tensordot/Shape:output:0times/Tensordot/free:output:0&times/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
times/Tensordot/GatherV2?
times/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
times/Tensordot/GatherV2_1/axis?
times/Tensordot/GatherV2_1GatherV2times/Tensordot/Shape:output:0times/Tensordot/axes:output:0(times/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
times/Tensordot/GatherV2_1x
times/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
times/Tensordot/Const?
times/Tensordot/ProdProd!times/Tensordot/GatherV2:output:0times/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
times/Tensordot/Prod|
times/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
times/Tensordot/Const_1?
times/Tensordot/Prod_1Prod#times/Tensordot/GatherV2_1:output:0 times/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
times/Tensordot/Prod_1|
times/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
times/Tensordot/concat/axis?
times/Tensordot/concatConcatV2times/Tensordot/free:output:0times/Tensordot/axes:output:0$times/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/concat?
times/Tensordot/stackPacktimes/Tensordot/Prod:output:0times/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/stack?
times/Tensordot/transpose	Transposedropout_1/Identity:output:0times/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
times/Tensordot/transpose?
times/Tensordot/ReshapeReshapetimes/Tensordot/transpose:y:0times/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
times/Tensordot/Reshape?
times/Tensordot/MatMulMatMul times/Tensordot/Reshape:output:0&times/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
times/Tensordot/MatMul}
times/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
times/Tensordot/Const_2?
times/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
times/Tensordot/concat_1/axis?
times/Tensordot/concat_1ConcatV2!times/Tensordot/GatherV2:output:0 times/Tensordot/Const_2:output:0&times/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/concat_1?
times/TensordotReshape times/Tensordot/MatMul:product:0!times/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
times/Tensordot?
times/BiasAdd/ReadVariableOpReadVariableOp%times_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
times/BiasAdd/ReadVariableOp?
times/BiasAddBiasAddtimes/Tensordot:output:0$times/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
times/BiasAdd?
notes/Tensordot/ReadVariableOpReadVariableOp'notes_tensordot_readvariableop_resource*
_output_shapes
:	?_*
dtype02 
notes/Tensordot/ReadVariableOpv
notes/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
notes/Tensordot/axes}
notes/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
notes/Tensordot/freey
notes/Tensordot/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:2
notes/Tensordot/Shape?
notes/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
notes/Tensordot/GatherV2/axis?
notes/Tensordot/GatherV2GatherV2notes/Tensordot/Shape:output:0notes/Tensordot/free:output:0&notes/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
notes/Tensordot/GatherV2?
notes/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
notes/Tensordot/GatherV2_1/axis?
notes/Tensordot/GatherV2_1GatherV2notes/Tensordot/Shape:output:0notes/Tensordot/axes:output:0(notes/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
notes/Tensordot/GatherV2_1x
notes/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
notes/Tensordot/Const?
notes/Tensordot/ProdProd!notes/Tensordot/GatherV2:output:0notes/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
notes/Tensordot/Prod|
notes/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
notes/Tensordot/Const_1?
notes/Tensordot/Prod_1Prod#notes/Tensordot/GatherV2_1:output:0 notes/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
notes/Tensordot/Prod_1|
notes/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
notes/Tensordot/concat/axis?
notes/Tensordot/concatConcatV2notes/Tensordot/free:output:0notes/Tensordot/axes:output:0$notes/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/concat?
notes/Tensordot/stackPacknotes/Tensordot/Prod:output:0notes/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/stack?
notes/Tensordot/transpose	Transposedropout_1/Identity:output:0notes/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
notes/Tensordot/transpose?
notes/Tensordot/ReshapeReshapenotes/Tensordot/transpose:y:0notes/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
notes/Tensordot/Reshape?
notes/Tensordot/MatMulMatMul notes/Tensordot/Reshape:output:0&notes/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_2
notes/Tensordot/MatMul|
notes/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_2
notes/Tensordot/Const_2?
notes/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
notes/Tensordot/concat_1/axis?
notes/Tensordot/concat_1ConcatV2!notes/Tensordot/GatherV2:output:0 notes/Tensordot/Const_2:output:0&notes/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/concat_1?
notes/TensordotReshape notes/Tensordot/MatMul:product:0!notes/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????_2
notes/Tensordot?
notes/BiasAdd/ReadVariableOpReadVariableOp%notes_biasadd_readvariableop_resource*
_output_shapes
:_*
dtype02
notes/BiasAdd/ReadVariableOp?
notes/BiasAddBiasAddnotes/Tensordot:output:0$notes/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????_2
notes/BiasAddu
IdentityIdentitynotes/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identityz

Identity_1Identitytimes/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1|

Identity_2Identitylengths/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^gru_2/AssignVariableOp^gru_2/ReadVariableOp(^gru_2/gru_cell_2/BiasAdd/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp"^gru_2/gru_cell_2/ReadVariableOp_1&^gru_2/gru_cell_2/mul_1/ReadVariableOp&^gru_2/gru_cell_2/mul_2/ReadVariableOp^gru_2/while^gru_3/AssignVariableOp^gru_3/ReadVariableOp(^gru_3/gru_cell_3/BiasAdd/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp"^gru_3/gru_cell_3/ReadVariableOp_1&^gru_3/gru_cell_3/mul_1/ReadVariableOp&^gru_3/gru_cell_3/mul_2/ReadVariableOp^gru_3/while^lengths/BiasAdd/ReadVariableOp!^lengths/Tensordot/ReadVariableOp^notes/BiasAdd/ReadVariableOp^notes/Tensordot/ReadVariableOp^times/BiasAdd/ReadVariableOp^times/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp20
gru_2/AssignVariableOpgru_2/AssignVariableOp2,
gru_2/ReadVariableOpgru_2/ReadVariableOp2R
'gru_2/gru_cell_2/BiasAdd/ReadVariableOp'gru_2/gru_cell_2/BiasAdd/ReadVariableOp2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2F
!gru_2/gru_cell_2/ReadVariableOp_1!gru_2/gru_cell_2/ReadVariableOp_12N
%gru_2/gru_cell_2/mul_1/ReadVariableOp%gru_2/gru_cell_2/mul_1/ReadVariableOp2N
%gru_2/gru_cell_2/mul_2/ReadVariableOp%gru_2/gru_cell_2/mul_2/ReadVariableOp2
gru_2/whilegru_2/while20
gru_3/AssignVariableOpgru_3/AssignVariableOp2,
gru_3/ReadVariableOpgru_3/ReadVariableOp2R
'gru_3/gru_cell_3/BiasAdd/ReadVariableOp'gru_3/gru_cell_3/BiasAdd/ReadVariableOp2P
&gru_3/gru_cell_3/MatMul/ReadVariableOp&gru_3/gru_cell_3/MatMul/ReadVariableOp2T
(gru_3/gru_cell_3/MatMul_1/ReadVariableOp(gru_3/gru_cell_3/MatMul_1/ReadVariableOp2B
gru_3/gru_cell_3/ReadVariableOpgru_3/gru_cell_3/ReadVariableOp2F
!gru_3/gru_cell_3/ReadVariableOp_1!gru_3/gru_cell_3/ReadVariableOp_12N
%gru_3/gru_cell_3/mul_1/ReadVariableOp%gru_3/gru_cell_3/mul_1/ReadVariableOp2N
%gru_3/gru_cell_3/mul_2/ReadVariableOp%gru_3/gru_cell_3/mul_2/ReadVariableOp2
gru_3/whilegru_3/while2@
lengths/BiasAdd/ReadVariableOplengths/BiasAdd/ReadVariableOp2D
 lengths/Tensordot/ReadVariableOp lengths/Tensordot/ReadVariableOp2<
notes/BiasAdd/ReadVariableOpnotes/BiasAdd/ReadVariableOp2@
notes/Tensordot/ReadVariableOpnotes/Tensordot/ReadVariableOp2<
times/BiasAdd/ReadVariableOptimes/BiasAdd/ReadVariableOp2@
times/Tensordot/ReadVariableOptimes/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?4
?
?__inference_gru_2_layer_call_and_return_conditional_losses_6389

inputs"
gru_cell_2_6260:	?#
gru_cell_2_6262:
??
gru_cell_2_6264:	?#
gru_cell_2_6266:
??
identity??AssignVariableOp?ReadVariableOp?"gru_cell_2/StatefulPartitionedCall?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
"gru_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0gru_cell_2_6260gru_cell_2_6262gru_cell_2_6264gru_cell_2_6266*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_62592$
"gru_cell_2/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
timeq
ReadVariableOpReadVariableOpgru_cell_2_6260*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2_6262gru_cell_2_6264gru_cell_2_6266*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_6275*
condR
while_cond_6274*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOpgru_cell_2_6260while:output:4^ReadVariableOp#^gru_cell_2/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp#^gru_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2H
"gru_cell_2/StatefulPartitionedCall"gru_cell_2/StatefulPartitionedCall2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_7030
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_7030___redundant_placeholder02
.while_while_cond_7030___redundant_placeholder12
.while_while_cond_7030___redundant_placeholder22
.while_while_cond_7030___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_10935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_10935___redundant_placeholder03
/while_while_cond_10935___redundant_placeholder13
/while_while_cond_10935___redundant_placeholder23
/while_while_cond_10935___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?l
?
?__inference_gru_2_layer_call_and_return_conditional_losses_7910

inputs=
)gru_cell_2_matmul_readvariableop_resource:
??9
*gru_cell_2_biasadd_readvariableop_resource:	?6
"gru_cell_2_readvariableop_resource:
??>
+gru_cell_2_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_2/BiasAdd/ReadVariableOp? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?gru_cell_2/ReadVariableOp_1?gru_cell_2/mul_1/ReadVariableOp?gru_cell_2/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/ones_like/Shape}
gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/ones_like/Const?
gru_cell_2/ones_likeFill#gru_cell_2/ones_like/Shape:output:0#gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/ones_like?
gru_cell_2/mulMulstrided_slice_1:output:0gru_cell_2/ones_like:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp?
gru_cell_2/MatMulMatMulgru_cell_2/mul:z:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul?
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp?
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/BiasAdd?
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split/split_dim?
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_2/split?
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp?
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack?
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1?
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2?
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp?
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_2/Const?
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split_1/split_dim?
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_2/split_1?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid?
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid_1?
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_1/ReadVariableOp?
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid_1:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_1?
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp_1?
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack?
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1?
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2?
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1?
gru_cell_2/MatMul_2MatMulgru_cell_2/mul_1:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_2?
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Tanh?
gru_cell_2/mul_2/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_2/ReadVariableOp?
gru_cell_2/mul_2Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_2i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/sub/x?
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/sub~
gru_cell_2/mul_3Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_3?
gru_cell_2/add_3AddV2gru_cell_2/mul_2:z:0gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_7810*
condR
while_cond_7809*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1 ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2B
gru_cell_2/mul_2/ReadVariableOpgru_cell_2/mul_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
gru_2_while_cond_9290(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2(
$gru_2_while_less_gru_2_strided_slice>
:gru_2_while_gru_2_while_cond_9290___redundant_placeholder0>
:gru_2_while_gru_2_while_cond_9290___redundant_placeholder1>
:gru_2_while_gru_2_while_cond_9290___redundant_placeholder2>
:gru_2_while_gru_2_while_cond_9290___redundant_placeholder3
gru_2_while_identity
?
gru_2/while/LessLessgru_2_while_placeholder$gru_2_while_less_gru_2_strided_slice*
T0*
_output_shapes
: 2
gru_2/while/Lesso
gru_2/while/IdentityIdentitygru_2/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_2/while/Identity"5
gru_2_while_identitygru_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?F
?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12402

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1s
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Constw
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*
_output_shapes
:	?2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2ǌi2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	?2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/Const}
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
dropout_1/Muls
dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??A2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_1/GreaterEqual}
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_1/Castz
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/Const}
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
dropout_2/Muls
dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_2/GreaterEqual}
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_2/Castz
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_2/Mul_1V
mulMulinputsdropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicej
MatMul_1MatMulstates_0strided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1X
mul_1MulSigmoid_1:y:0states_0*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
TanhV
mul_2MulSigmoid:y:0states_0*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	?
 
_user_specified_nameinputs:IE

_output_shapes
:	?
"
_user_specified_name
states/0
?z
?
while_body_10936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_2_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
???
0while_gru_cell_2_biasadd_readvariableop_resource:	?<
(while_gru_cell_2_readvariableop_resource:
????'while/gru_cell_2/BiasAdd/ReadVariableOp?&while/gru_cell_2/MatMul/ReadVariableOp?while/gru_cell_2/ReadVariableOp?!while/gru_cell_2/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/ones_like/Shape?
 while/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_2/ones_like/Const?
while/gru_cell_2/ones_likeFill)while/gru_cell_2/ones_like/Shape:output:0)while/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/ones_like?
while/gru_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2 
while/gru_cell_2/dropout/Const?
while/gru_cell_2/dropout/MulMul#while/gru_cell_2/ones_like:output:0'while/gru_cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/dropout/Mul?
while/gru_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
while/gru_cell_2/dropout/Shape?
5while/gru_cell_2/dropout/random_uniform/RandomUniformRandomUniform'while/gru_cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???27
5while/gru_cell_2/dropout/random_uniform/RandomUniform?
'while/gru_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2)
'while/gru_cell_2/dropout/GreaterEqual/y?
%while/gru_cell_2/dropout/GreaterEqualGreaterEqual>while/gru_cell_2/dropout/random_uniform/RandomUniform:output:00while/gru_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2'
%while/gru_cell_2/dropout/GreaterEqual?
while/gru_cell_2/dropout/CastCast)while/gru_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
while/gru_cell_2/dropout/Cast?
while/gru_cell_2/dropout/Mul_1Mul while/gru_cell_2/dropout/Mul:z:0!while/gru_cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	?2 
while/gru_cell_2/dropout/Mul_1?
 while/gru_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_2/dropout_1/Const?
while/gru_cell_2/dropout_1/MulMul#while/gru_cell_2/ones_like:output:0)while/gru_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_2/dropout_1/Mul?
 while/gru_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/dropout_1/Shape?
7while/gru_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform)while/gru_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???29
7while/gru_cell_2/dropout_1/random_uniform/RandomUniform?
)while/gru_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_2/dropout_1/GreaterEqual/y?
'while/gru_cell_2/dropout_1/GreaterEqualGreaterEqual@while/gru_cell_2/dropout_1/random_uniform/RandomUniform:output:02while/gru_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_2/dropout_1/GreaterEqual?
while/gru_cell_2/dropout_1/CastCast+while/gru_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_2/dropout_1/Cast?
 while/gru_cell_2/dropout_1/Mul_1Mul"while/gru_cell_2/dropout_1/Mul:z:0#while/gru_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_2/dropout_1/Mul_1?
 while/gru_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_2/dropout_2/Const?
while/gru_cell_2/dropout_2/MulMul#while/gru_cell_2/ones_like:output:0)while/gru_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_2/dropout_2/Mul?
 while/gru_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/dropout_2/Shape?
7while/gru_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform)while/gru_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2?м29
7while/gru_cell_2/dropout_2/random_uniform/RandomUniform?
)while/gru_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_2/dropout_2/GreaterEqual/y?
'while/gru_cell_2/dropout_2/GreaterEqualGreaterEqual@while/gru_cell_2/dropout_2/random_uniform/RandomUniform:output:02while/gru_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_2/dropout_2/GreaterEqual?
while/gru_cell_2/dropout_2/CastCast+while/gru_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_2/dropout_2/Cast?
 while/gru_cell_2/dropout_2/Mul_1Mul"while/gru_cell_2/dropout_2/Mul:z:0#while/gru_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_2/dropout_2/Mul_1?
while/gru_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOp?
while/gru_cell_2/MatMulMatMulwhile/gru_cell_2/mul:z:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul?
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp?
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/BiasAdd?
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_2/split/split_dim?
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_2/split?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_2/ReadVariableOp?
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack?
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1?
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2?
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_1?
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_2/Const?
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_2/split_1/split_dim?
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_2/split_1?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add?
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid?
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_1?
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid_1?
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_1?
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_2/ReadVariableOp_1?
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack?
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1?
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2?
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1?
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul_1:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_2?
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Tanh?
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_2u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_2/sub/x?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/sub?
while/gru_cell_2/mul_3Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_3?
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_2:z:0while/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_2/BiasAdd/ReadVariableOp'while/gru_cell_2/BiasAdd/ReadVariableOp2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp2F
!while/gru_cell_2/ReadVariableOp_1!while/gru_cell_2/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?F
?
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_7248

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1s
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Constw
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*
_output_shapes
:	?2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	?2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/Const}
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
dropout_1/Muls
dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_1/GreaterEqual}
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_1/Castz
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/Const}
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
dropout_2/Muls
dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_2/GreaterEqual}
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_2/Castz
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_2/Mul_1V
mulMulinputsdropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_sliceh
MatMul_1MatMulstatesstrided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1V
mul_1MulSigmoid_1:y:0states*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
TanhT
mul_2MulSigmoid:y:0states*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	?
 
_user_specified_nameinputs:GC

_output_shapes
:	?
 
_user_specified_namestates
?
?
while_cond_11572
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_11572___redundant_placeholder03
/while_while_cond_11572___redundant_placeholder13
/while_while_cond_11572___redundant_placeholder23
/while_while_cond_11572___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?
?
&__inference_model_1_layer_call_fn_8257
input_2
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?_

unknown_14:_
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *[
_output_shapesI
G:?????????_:??????????:??????????*0
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_82182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_2
?	
?
gru_2_while_cond_9760(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2(
$gru_2_while_less_gru_2_strided_slice>
:gru_2_while_gru_2_while_cond_9760___redundant_placeholder0>
:gru_2_while_gru_2_while_cond_9760___redundant_placeholder1>
:gru_2_while_gru_2_while_cond_9760___redundant_placeholder2>
:gru_2_while_gru_2_while_cond_9760___redundant_placeholder3
gru_2_while_identity
?
gru_2/while/LessLessgru_2_while_placeholder$gru_2_while_less_gru_2_strided_slice*
T0*
_output_shapes
: 2
gru_2/while/Lesso
gru_2/while/IdentityIdentitygru_2/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_2/while/Identity"5
gru_2_while_identitygru_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_7809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_7809___redundant_placeholder02
.while_while_cond_7809___redundant_placeholder12
.while_while_cond_7809___redundant_placeholder22
.while_while_cond_7809___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
??
?
?__inference_gru_2_layer_call_and_return_conditional_losses_8789

inputs=
)gru_cell_2_matmul_readvariableop_resource:
??9
*gru_cell_2_biasadd_readvariableop_resource:	?6
"gru_cell_2_readvariableop_resource:
??>
+gru_cell_2_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_2/BiasAdd/ReadVariableOp? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?gru_cell_2/ReadVariableOp_1?gru_cell_2/mul_1/ReadVariableOp?gru_cell_2/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/ones_like/Shape}
gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/ones_like/Const?
gru_cell_2/ones_likeFill#gru_cell_2/ones_like/Shape:output:0#gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/ones_likey
gru_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_2/dropout/Const?
gru_cell_2/dropout/MulMulgru_cell_2/ones_like:output:0!gru_cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout/Mul?
gru_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/dropout/Shape?
/gru_cell_2/dropout/random_uniform/RandomUniformRandomUniform!gru_cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2?Ϭ21
/gru_cell_2/dropout/random_uniform/RandomUniform?
!gru_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!gru_cell_2/dropout/GreaterEqual/y?
gru_cell_2/dropout/GreaterEqualGreaterEqual8gru_cell_2/dropout/random_uniform/RandomUniform:output:0*gru_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2!
gru_cell_2/dropout/GreaterEqual?
gru_cell_2/dropout/CastCast#gru_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_2/dropout/Cast?
gru_cell_2/dropout/Mul_1Mulgru_cell_2/dropout/Mul:z:0gru_cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout/Mul_1}
gru_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_2/dropout_1/Const?
gru_cell_2/dropout_1/MulMulgru_cell_2/ones_like:output:0#gru_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_1/Mul?
gru_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/dropout_1/Shape?
1gru_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform#gru_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2޹?23
1gru_cell_2/dropout_1/random_uniform/RandomUniform?
#gru_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_2/dropout_1/GreaterEqual/y?
!gru_cell_2/dropout_1/GreaterEqualGreaterEqual:gru_cell_2/dropout_1/random_uniform/RandomUniform:output:0,gru_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_2/dropout_1/GreaterEqual?
gru_cell_2/dropout_1/CastCast%gru_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_2/dropout_1/Cast?
gru_cell_2/dropout_1/Mul_1Mulgru_cell_2/dropout_1/Mul:z:0gru_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_1/Mul_1}
gru_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_2/dropout_2/Const?
gru_cell_2/dropout_2/MulMulgru_cell_2/ones_like:output:0#gru_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_2/Mul?
gru_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/dropout_2/Shape?
1gru_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform#gru_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2ˁ?23
1gru_cell_2/dropout_2/random_uniform/RandomUniform?
#gru_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_2/dropout_2/GreaterEqual/y?
!gru_cell_2/dropout_2/GreaterEqualGreaterEqual:gru_cell_2/dropout_2/random_uniform/RandomUniform:output:0,gru_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_2/dropout_2/GreaterEqual?
gru_cell_2/dropout_2/CastCast%gru_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_2/dropout_2/Cast?
gru_cell_2/dropout_2/Mul_1Mulgru_cell_2/dropout_2/Mul:z:0gru_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_2/Mul_1?
gru_cell_2/mulMulstrided_slice_1:output:0gru_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp?
gru_cell_2/MatMulMatMulgru_cell_2/mul:z:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul?
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp?
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/BiasAdd?
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split/split_dim?
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_2/split?
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp?
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack?
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1?
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2?
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp?
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_2/Const?
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split_1/split_dim?
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_2/split_1?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid?
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid_1?
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_1/ReadVariableOp?
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid_1:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_1?
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp_1?
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack?
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1?
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2?
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1?
gru_cell_2/MatMul_2MatMulgru_cell_2/mul_1:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_2?
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Tanh?
gru_cell_2/mul_2/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_2/ReadVariableOp?
gru_cell_2/mul_2Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_2i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/sub/x?
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/sub~
gru_cell_2/mul_3Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_3?
gru_cell_2/add_3AddV2gru_cell_2/mul_2:z:0gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_8665*
condR
while_cond_8664*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1 ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2B
gru_cell_2/mul_2/ReadVariableOpgru_cell_2/mul_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
? 
?
?__inference_notes_layer_call_and_return_conditional_losses_8209

inputs4
!tensordot_readvariableop_resource:	?_-
biasadd_readvariableop_resource:_
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?_*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????_2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:_*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????_2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?z
?
while_body_8665
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_2_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
???
0while_gru_cell_2_biasadd_readvariableop_resource:	?<
(while_gru_cell_2_readvariableop_resource:
????'while/gru_cell_2/BiasAdd/ReadVariableOp?&while/gru_cell_2/MatMul/ReadVariableOp?while/gru_cell_2/ReadVariableOp?!while/gru_cell_2/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/ones_like/Shape?
 while/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_2/ones_like/Const?
while/gru_cell_2/ones_likeFill)while/gru_cell_2/ones_like/Shape:output:0)while/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/ones_like?
while/gru_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2 
while/gru_cell_2/dropout/Const?
while/gru_cell_2/dropout/MulMul#while/gru_cell_2/ones_like:output:0'while/gru_cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/dropout/Mul?
while/gru_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
while/gru_cell_2/dropout/Shape?
5while/gru_cell_2/dropout/random_uniform/RandomUniformRandomUniform'while/gru_cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???27
5while/gru_cell_2/dropout/random_uniform/RandomUniform?
'while/gru_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2)
'while/gru_cell_2/dropout/GreaterEqual/y?
%while/gru_cell_2/dropout/GreaterEqualGreaterEqual>while/gru_cell_2/dropout/random_uniform/RandomUniform:output:00while/gru_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2'
%while/gru_cell_2/dropout/GreaterEqual?
while/gru_cell_2/dropout/CastCast)while/gru_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
while/gru_cell_2/dropout/Cast?
while/gru_cell_2/dropout/Mul_1Mul while/gru_cell_2/dropout/Mul:z:0!while/gru_cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	?2 
while/gru_cell_2/dropout/Mul_1?
 while/gru_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_2/dropout_1/Const?
while/gru_cell_2/dropout_1/MulMul#while/gru_cell_2/ones_like:output:0)while/gru_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_2/dropout_1/Mul?
 while/gru_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/dropout_1/Shape?
7while/gru_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform)while/gru_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??e29
7while/gru_cell_2/dropout_1/random_uniform/RandomUniform?
)while/gru_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_2/dropout_1/GreaterEqual/y?
'while/gru_cell_2/dropout_1/GreaterEqualGreaterEqual@while/gru_cell_2/dropout_1/random_uniform/RandomUniform:output:02while/gru_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_2/dropout_1/GreaterEqual?
while/gru_cell_2/dropout_1/CastCast+while/gru_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_2/dropout_1/Cast?
 while/gru_cell_2/dropout_1/Mul_1Mul"while/gru_cell_2/dropout_1/Mul:z:0#while/gru_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_2/dropout_1/Mul_1?
 while/gru_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_2/dropout_2/Const?
while/gru_cell_2/dropout_2/MulMul#while/gru_cell_2/ones_like:output:0)while/gru_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_2/dropout_2/Mul?
 while/gru_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/dropout_2/Shape?
7while/gru_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform)while/gru_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???29
7while/gru_cell_2/dropout_2/random_uniform/RandomUniform?
)while/gru_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_2/dropout_2/GreaterEqual/y?
'while/gru_cell_2/dropout_2/GreaterEqualGreaterEqual@while/gru_cell_2/dropout_2/random_uniform/RandomUniform:output:02while/gru_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_2/dropout_2/GreaterEqual?
while/gru_cell_2/dropout_2/CastCast+while/gru_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_2/dropout_2/Cast?
 while/gru_cell_2/dropout_2/Mul_1Mul"while/gru_cell_2/dropout_2/Mul:z:0#while/gru_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_2/dropout_2/Mul_1?
while/gru_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOp?
while/gru_cell_2/MatMulMatMulwhile/gru_cell_2/mul:z:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul?
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp?
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/BiasAdd?
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_2/split/split_dim?
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_2/split?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_2/ReadVariableOp?
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack?
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1?
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2?
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_1?
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_2/Const?
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_2/split_1/split_dim?
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_2/split_1?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add?
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid?
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_1?
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid_1?
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_1?
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_2/ReadVariableOp_1?
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack?
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1?
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2?
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1?
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul_1:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_2?
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Tanh?
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_2u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_2/sub/x?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/sub?
while/gru_cell_2/mul_3Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_3?
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_2:z:0while/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_2/BiasAdd/ReadVariableOp'while/gru_cell_2/BiasAdd/ReadVariableOp2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp2F
!while/gru_cell_2/ReadVariableOp_1!while/gru_cell_2/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?!
?
A__inference_dense_1_layer_call_and_return_conditional_losses_7734

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Tanhh
IdentityIdentityTanh:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
gru_3_while_cond_9457(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2(
$gru_3_while_less_gru_3_strided_slice>
:gru_3_while_gru_3_while_cond_9457___redundant_placeholder0>
:gru_3_while_gru_3_while_cond_9457___redundant_placeholder1>
:gru_3_while_gru_3_while_cond_9457___redundant_placeholder2>
:gru_3_while_gru_3_while_cond_9457___redundant_placeholder3
gru_3_while_identity
?
gru_3/while/LessLessgru_3_while_placeholder$gru_3_while_less_gru_3_strided_slice*
T0*
_output_shapes
: 2
gru_3/while/Lesso
gru_3/while/IdentityIdentitygru_3/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_3/while/Identity"5
gru_3_while_identitygru_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
??
?
B__inference_model_1_layer_call_and_return_conditional_losses_10188

inputs=
)dense_1_tensordot_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?C
/gru_2_gru_cell_2_matmul_readvariableop_resource:
???
0gru_2_gru_cell_2_biasadd_readvariableop_resource:	?<
(gru_2_gru_cell_2_readvariableop_resource:
??D
1gru_2_gru_cell_2_matmul_1_readvariableop_resource:	?C
/gru_3_gru_cell_3_matmul_readvariableop_resource:
???
0gru_3_gru_cell_3_biasadd_readvariableop_resource:	?<
(gru_3_gru_cell_3_readvariableop_resource:
??D
1gru_3_gru_cell_3_matmul_1_readvariableop_resource:	?=
)lengths_tensordot_readvariableop_resource:
??6
'lengths_biasadd_readvariableop_resource:	?;
'times_tensordot_readvariableop_resource:
??4
%times_biasadd_readvariableop_resource:	?:
'notes_tensordot_readvariableop_resource:	?_3
%notes_biasadd_readvariableop_resource:_
identity

identity_1

identity_2??dense_1/BiasAdd/ReadVariableOp? dense_1/Tensordot/ReadVariableOp?gru_2/AssignVariableOp?gru_2/ReadVariableOp?'gru_2/gru_cell_2/BiasAdd/ReadVariableOp?&gru_2/gru_cell_2/MatMul/ReadVariableOp?(gru_2/gru_cell_2/MatMul_1/ReadVariableOp?gru_2/gru_cell_2/ReadVariableOp?!gru_2/gru_cell_2/ReadVariableOp_1?%gru_2/gru_cell_2/mul_1/ReadVariableOp?%gru_2/gru_cell_2/mul_2/ReadVariableOp?gru_2/while?gru_3/AssignVariableOp?gru_3/ReadVariableOp?'gru_3/gru_cell_3/BiasAdd/ReadVariableOp?&gru_3/gru_cell_3/MatMul/ReadVariableOp?(gru_3/gru_cell_3/MatMul_1/ReadVariableOp?gru_3/gru_cell_3/ReadVariableOp?!gru_3/gru_cell_3/ReadVariableOp_1?%gru_3/gru_cell_3/mul_1/ReadVariableOp?%gru_3/gru_cell_3/mul_2/ReadVariableOp?gru_3/while?lengths/BiasAdd/ReadVariableOp? lengths/Tensordot/ReadVariableOp?notes/BiasAdd/ReadVariableOp?notes/Tensordot/ReadVariableOp?times/BiasAdd/ReadVariableOp?times/Tensordot/ReadVariableOp?
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes?
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_1/Tensordot/freeh
dense_1/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_1/Tensordot/Shape?
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axis?
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2?
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axis?
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2_1|
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const?
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod?
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1?
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1?
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axis?
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat?
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack?
dense_1/Tensordot/transpose	Transposeinputs!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense_1/Tensordot/transpose?
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense_1/Tensordot/Reshape?
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/Tensordot/MatMul?
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense_1/Tensordot/Const_2?
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axis?
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1?
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense_1/Tensordot?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense_1/BiasAddu
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
dense_1/Tanh?
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose/perm?
gru_2/transpose	Transposedense_1/Tanh:y:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_2/transpose]
gru_2/ShapeShapegru_2/transpose:y:0*
T0*
_output_shapes
:2
gru_2/Shape?
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice/stack?
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_1?
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_2?
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slice?
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!gru_2/TensorArrayV2/element_shape?
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2?
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2=
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_2/TensorArrayUnstack/TensorListFromTensor?
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_1/stack?
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_1?
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_2?
gru_2/strided_slice_1StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
gru_2/strided_slice_1?
 gru_2/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_2/gru_cell_2/ones_like/Shape?
 gru_2/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 gru_2/gru_cell_2/ones_like/Const?
gru_2/gru_cell_2/ones_likeFill)gru_2/gru_cell_2/ones_like/Shape:output:0)gru_2/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/ones_like?
gru_2/gru_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2 
gru_2/gru_cell_2/dropout/Const?
gru_2/gru_cell_2/dropout/MulMul#gru_2/gru_cell_2/ones_like:output:0'gru_2/gru_cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/dropout/Mul?
gru_2/gru_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gru_2/gru_cell_2/dropout/Shape?
5gru_2/gru_cell_2/dropout/random_uniform/RandomUniformRandomUniform'gru_2/gru_cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???27
5gru_2/gru_cell_2/dropout/random_uniform/RandomUniform?
'gru_2/gru_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2)
'gru_2/gru_cell_2/dropout/GreaterEqual/y?
%gru_2/gru_cell_2/dropout/GreaterEqualGreaterEqual>gru_2/gru_cell_2/dropout/random_uniform/RandomUniform:output:00gru_2/gru_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2'
%gru_2/gru_cell_2/dropout/GreaterEqual?
gru_2/gru_cell_2/dropout/CastCast)gru_2/gru_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_2/gru_cell_2/dropout/Cast?
gru_2/gru_cell_2/dropout/Mul_1Mul gru_2/gru_cell_2/dropout/Mul:z:0!gru_2/gru_cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	?2 
gru_2/gru_cell_2/dropout/Mul_1?
 gru_2/gru_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 gru_2/gru_cell_2/dropout_1/Const?
gru_2/gru_cell_2/dropout_1/MulMul#gru_2/gru_cell_2/ones_like:output:0)gru_2/gru_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2 
gru_2/gru_cell_2/dropout_1/Mul?
 gru_2/gru_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_2/gru_cell_2/dropout_1/Shape?
7gru_2/gru_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform)gru_2/gru_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??]29
7gru_2/gru_cell_2/dropout_1/random_uniform/RandomUniform?
)gru_2/gru_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)gru_2/gru_cell_2/dropout_1/GreaterEqual/y?
'gru_2/gru_cell_2/dropout_1/GreaterEqualGreaterEqual@gru_2/gru_cell_2/dropout_1/random_uniform/RandomUniform:output:02gru_2/gru_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'gru_2/gru_cell_2/dropout_1/GreaterEqual?
gru_2/gru_cell_2/dropout_1/CastCast+gru_2/gru_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
gru_2/gru_cell_2/dropout_1/Cast?
 gru_2/gru_cell_2/dropout_1/Mul_1Mul"gru_2/gru_cell_2/dropout_1/Mul:z:0#gru_2/gru_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2"
 gru_2/gru_cell_2/dropout_1/Mul_1?
 gru_2/gru_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 gru_2/gru_cell_2/dropout_2/Const?
gru_2/gru_cell_2/dropout_2/MulMul#gru_2/gru_cell_2/ones_like:output:0)gru_2/gru_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2 
gru_2/gru_cell_2/dropout_2/Mul?
 gru_2/gru_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_2/gru_cell_2/dropout_2/Shape?
7gru_2/gru_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform)gru_2/gru_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2݋29
7gru_2/gru_cell_2/dropout_2/random_uniform/RandomUniform?
)gru_2/gru_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)gru_2/gru_cell_2/dropout_2/GreaterEqual/y?
'gru_2/gru_cell_2/dropout_2/GreaterEqualGreaterEqual@gru_2/gru_cell_2/dropout_2/random_uniform/RandomUniform:output:02gru_2/gru_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'gru_2/gru_cell_2/dropout_2/GreaterEqual?
gru_2/gru_cell_2/dropout_2/CastCast+gru_2/gru_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
gru_2/gru_cell_2/dropout_2/Cast?
 gru_2/gru_cell_2/dropout_2/Mul_1Mul"gru_2/gru_cell_2/dropout_2/Mul:z:0#gru_2/gru_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2"
 gru_2/gru_cell_2/dropout_2/Mul_1?
gru_2/gru_cell_2/mulMulgru_2/strided_slice_1:output:0"gru_2/gru_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/mul?
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&gru_2/gru_cell_2/MatMul/ReadVariableOp?
gru_2/gru_cell_2/MatMulMatMulgru_2/gru_cell_2/mul:z:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/MatMul?
'gru_2/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp0gru_2_gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'gru_2/gru_cell_2/BiasAdd/ReadVariableOp?
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0/gru_2/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/BiasAdd?
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_2/gru_cell_2/split/split_dim?
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_2/gru_cell_2/split?
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
gru_2/gru_cell_2/ReadVariableOp?
$gru_2/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_2/gru_cell_2/strided_slice/stack?
&gru_2/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_2/gru_cell_2/strided_slice/stack_1?
&gru_2/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_2/gru_cell_2/strided_slice/stack_2?
gru_2/gru_cell_2/strided_sliceStridedSlice'gru_2/gru_cell_2/ReadVariableOp:value:0-gru_2/gru_cell_2/strided_slice/stack:output:0/gru_2/gru_cell_2/strided_slice/stack_1:output:0/gru_2/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
gru_2/gru_cell_2/strided_slice?
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp?
gru_2/gru_cell_2/MatMul_1MatMul0gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0'gru_2/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/MatMul_1?
gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_2/gru_cell_2/Const?
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_2/gru_cell_2/split_1/split_dim?
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/MatMul_1:product:0gru_2/gru_cell_2/Const:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_2/gru_cell_2/split_1?
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/add?
gru_2/gru_cell_2/SigmoidSigmoidgru_2/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/Sigmoid?
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/add_1?
gru_2/gru_cell_2/Sigmoid_1Sigmoidgru_2/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/Sigmoid_1?
%gru_2/gru_cell_2/mul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02'
%gru_2/gru_cell_2/mul_1/ReadVariableOp?
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Sigmoid_1:y:0-gru_2/gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/mul_1?
!gru_2/gru_cell_2/ReadVariableOp_1ReadVariableOp(gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!gru_2/gru_cell_2/ReadVariableOp_1?
&gru_2/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_2/gru_cell_2/strided_slice_1/stack?
(gru_2/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_2/gru_cell_2/strided_slice_1/stack_1?
(gru_2/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_2/gru_cell_2/strided_slice_1/stack_2?
 gru_2/gru_cell_2/strided_slice_1StridedSlice)gru_2/gru_cell_2/ReadVariableOp_1:value:0/gru_2/gru_cell_2/strided_slice_1/stack:output:01gru_2/gru_cell_2/strided_slice_1/stack_1:output:01gru_2/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 gru_2/gru_cell_2/strided_slice_1?
gru_2/gru_cell_2/MatMul_2MatMulgru_2/gru_cell_2/mul_1:z:0)gru_2/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/MatMul_2?
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2#gru_2/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/add_2|
gru_2/gru_cell_2/TanhTanhgru_2/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/Tanh?
%gru_2/gru_cell_2/mul_2/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02'
%gru_2/gru_cell_2/mul_2/ReadVariableOp?
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/Sigmoid:y:0-gru_2/gru_cell_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/mul_2u
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_2/gru_cell_2/sub/x?
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/sub?
gru_2/gru_cell_2/mul_3Mulgru_2/gru_cell_2/sub:z:0gru_2/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/mul_3?
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_2:z:0gru_2/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_2/gru_cell_2/add_3?
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_2/TensorArrayV2_1/element_shape?
gru_2/TensorArrayV2_1TensorListReserve,gru_2/TensorArrayV2_1/element_shape:output:0gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2_1Z

gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_2/time?
gru_2/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_2/ReadVariableOp?
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_2/while/maximum_iterationsv
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_2/while/loop_counter?
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0gru_2/ReadVariableOp:value:0gru_2/strided_slice:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0/gru_2_gru_cell_2_matmul_readvariableop_resource0gru_2_gru_cell_2_biasadd_readvariableop_resource(gru_2_gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *!
bodyR
gru_2_while_body_9761*!
condR
gru_2_while_cond_9760*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
gru_2/while?
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      28
6gru_2/TensorArrayV2Stack/TensorListStack/element_shape?
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02*
(gru_2/TensorArrayV2Stack/TensorListStack?
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_2/strided_slice_2/stack?
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_2/stack_1?
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_2?
gru_2/strided_slice_2StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
gru_2/strided_slice_2?
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose_1/perm?
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_2/transpose_1r
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/runtime?
gru_2/AssignVariableOpAssignVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resourcegru_2/while:output:4^gru_2/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp&^gru_2/gru_cell_2/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
gru_2/AssignVariableOp?
gru_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_3/transpose/perm?
gru_3/transpose	Transposegru_2/transpose_1:y:0gru_3/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_3/transpose]
gru_3/ShapeShapegru_3/transpose:y:0*
T0*
_output_shapes
:2
gru_3/Shape?
gru_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice/stack?
gru_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice/stack_1?
gru_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice/stack_2?
gru_3/strided_sliceStridedSlicegru_3/Shape:output:0"gru_3/strided_slice/stack:output:0$gru_3/strided_slice/stack_1:output:0$gru_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_3/strided_slice?
!gru_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!gru_3/TensorArrayV2/element_shape?
gru_3/TensorArrayV2TensorListReserve*gru_3/TensorArrayV2/element_shape:output:0gru_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_3/TensorArrayV2?
;gru_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2=
;gru_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
-gru_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_3/transpose:y:0Dgru_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_3/TensorArrayUnstack/TensorListFromTensor?
gru_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice_1/stack?
gru_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_1/stack_1?
gru_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_1/stack_2?
gru_3/strided_slice_1StridedSlicegru_3/transpose:y:0$gru_3/strided_slice_1/stack:output:0&gru_3/strided_slice_1/stack_1:output:0&gru_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
gru_3/strided_slice_1?
 gru_3/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_3/gru_cell_3/ones_like/Shape?
 gru_3/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 gru_3/gru_cell_3/ones_like/Const?
gru_3/gru_cell_3/ones_likeFill)gru_3/gru_cell_3/ones_like/Shape:output:0)gru_3/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/ones_like?
gru_3/gru_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2 
gru_3/gru_cell_3/dropout/Const?
gru_3/gru_cell_3/dropout/MulMul#gru_3/gru_cell_3/ones_like:output:0'gru_3/gru_cell_3/dropout/Const:output:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/dropout/Mul?
gru_3/gru_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gru_3/gru_cell_3/dropout/Shape?
5gru_3/gru_cell_3/dropout/random_uniform/RandomUniformRandomUniform'gru_3/gru_cell_3/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???27
5gru_3/gru_cell_3/dropout/random_uniform/RandomUniform?
'gru_3/gru_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2)
'gru_3/gru_cell_3/dropout/GreaterEqual/y?
%gru_3/gru_cell_3/dropout/GreaterEqualGreaterEqual>gru_3/gru_cell_3/dropout/random_uniform/RandomUniform:output:00gru_3/gru_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2'
%gru_3/gru_cell_3/dropout/GreaterEqual?
gru_3/gru_cell_3/dropout/CastCast)gru_3/gru_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_3/gru_cell_3/dropout/Cast?
gru_3/gru_cell_3/dropout/Mul_1Mul gru_3/gru_cell_3/dropout/Mul:z:0!gru_3/gru_cell_3/dropout/Cast:y:0*
T0*
_output_shapes
:	?2 
gru_3/gru_cell_3/dropout/Mul_1?
 gru_3/gru_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 gru_3/gru_cell_3/dropout_1/Const?
gru_3/gru_cell_3/dropout_1/MulMul#gru_3/gru_cell_3/ones_like:output:0)gru_3/gru_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2 
gru_3/gru_cell_3/dropout_1/Mul?
 gru_3/gru_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_3/gru_cell_3/dropout_1/Shape?
7gru_3/gru_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform)gru_3/gru_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???29
7gru_3/gru_cell_3/dropout_1/random_uniform/RandomUniform?
)gru_3/gru_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)gru_3/gru_cell_3/dropout_1/GreaterEqual/y?
'gru_3/gru_cell_3/dropout_1/GreaterEqualGreaterEqual@gru_3/gru_cell_3/dropout_1/random_uniform/RandomUniform:output:02gru_3/gru_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'gru_3/gru_cell_3/dropout_1/GreaterEqual?
gru_3/gru_cell_3/dropout_1/CastCast+gru_3/gru_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
gru_3/gru_cell_3/dropout_1/Cast?
 gru_3/gru_cell_3/dropout_1/Mul_1Mul"gru_3/gru_cell_3/dropout_1/Mul:z:0#gru_3/gru_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2"
 gru_3/gru_cell_3/dropout_1/Mul_1?
 gru_3/gru_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 gru_3/gru_cell_3/dropout_2/Const?
gru_3/gru_cell_3/dropout_2/MulMul#gru_3/gru_cell_3/ones_like:output:0)gru_3/gru_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2 
gru_3/gru_cell_3/dropout_2/Mul?
 gru_3/gru_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_3/gru_cell_3/dropout_2/Shape?
7gru_3/gru_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform)gru_3/gru_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2΅29
7gru_3/gru_cell_3/dropout_2/random_uniform/RandomUniform?
)gru_3/gru_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)gru_3/gru_cell_3/dropout_2/GreaterEqual/y?
'gru_3/gru_cell_3/dropout_2/GreaterEqualGreaterEqual@gru_3/gru_cell_3/dropout_2/random_uniform/RandomUniform:output:02gru_3/gru_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'gru_3/gru_cell_3/dropout_2/GreaterEqual?
gru_3/gru_cell_3/dropout_2/CastCast+gru_3/gru_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
gru_3/gru_cell_3/dropout_2/Cast?
 gru_3/gru_cell_3/dropout_2/Mul_1Mul"gru_3/gru_cell_3/dropout_2/Mul:z:0#gru_3/gru_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2"
 gru_3/gru_cell_3/dropout_2/Mul_1?
gru_3/gru_cell_3/mulMulgru_3/strided_slice_1:output:0"gru_3/gru_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/mul?
&gru_3/gru_cell_3/MatMul/ReadVariableOpReadVariableOp/gru_3_gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&gru_3/gru_cell_3/MatMul/ReadVariableOp?
gru_3/gru_cell_3/MatMulMatMulgru_3/gru_cell_3/mul:z:0.gru_3/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/MatMul?
'gru_3/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp0gru_3_gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02)
'gru_3/gru_cell_3/BiasAdd/ReadVariableOp?
gru_3/gru_cell_3/BiasAddBiasAdd!gru_3/gru_cell_3/MatMul:product:0/gru_3/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/BiasAdd?
 gru_3/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_3/gru_cell_3/split/split_dim?
gru_3/gru_cell_3/splitSplit)gru_3/gru_cell_3/split/split_dim:output:0!gru_3/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_3/gru_cell_3/split?
gru_3/gru_cell_3/ReadVariableOpReadVariableOp(gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
gru_3/gru_cell_3/ReadVariableOp?
$gru_3/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_3/gru_cell_3/strided_slice/stack?
&gru_3/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_3/gru_cell_3/strided_slice/stack_1?
&gru_3/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_3/gru_cell_3/strided_slice/stack_2?
gru_3/gru_cell_3/strided_sliceStridedSlice'gru_3/gru_cell_3/ReadVariableOp:value:0-gru_3/gru_cell_3/strided_slice/stack:output:0/gru_3/gru_cell_3/strided_slice/stack_1:output:0/gru_3/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
gru_3/gru_cell_3/strided_slice?
(gru_3/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(gru_3/gru_cell_3/MatMul_1/ReadVariableOp?
gru_3/gru_cell_3/MatMul_1MatMul0gru_3/gru_cell_3/MatMul_1/ReadVariableOp:value:0'gru_3/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/MatMul_1?
gru_3/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_3/gru_cell_3/Const?
"gru_3/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_3/gru_cell_3/split_1/split_dim?
gru_3/gru_cell_3/split_1SplitV#gru_3/gru_cell_3/MatMul_1:product:0gru_3/gru_cell_3/Const:output:0+gru_3/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_3/gru_cell_3/split_1?
gru_3/gru_cell_3/addAddV2gru_3/gru_cell_3/split:output:0!gru_3/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/add?
gru_3/gru_cell_3/SigmoidSigmoidgru_3/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/Sigmoid?
gru_3/gru_cell_3/add_1AddV2gru_3/gru_cell_3/split:output:1!gru_3/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/add_1?
gru_3/gru_cell_3/Sigmoid_1Sigmoidgru_3/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/Sigmoid_1?
%gru_3/gru_cell_3/mul_1/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02'
%gru_3/gru_cell_3/mul_1/ReadVariableOp?
gru_3/gru_cell_3/mul_1Mulgru_3/gru_cell_3/Sigmoid_1:y:0-gru_3/gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/mul_1?
!gru_3/gru_cell_3/ReadVariableOp_1ReadVariableOp(gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!gru_3/gru_cell_3/ReadVariableOp_1?
&gru_3/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_3/gru_cell_3/strided_slice_1/stack?
(gru_3/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_3/gru_cell_3/strided_slice_1/stack_1?
(gru_3/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_3/gru_cell_3/strided_slice_1/stack_2?
 gru_3/gru_cell_3/strided_slice_1StridedSlice)gru_3/gru_cell_3/ReadVariableOp_1:value:0/gru_3/gru_cell_3/strided_slice_1/stack:output:01gru_3/gru_cell_3/strided_slice_1/stack_1:output:01gru_3/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 gru_3/gru_cell_3/strided_slice_1?
gru_3/gru_cell_3/MatMul_2MatMulgru_3/gru_cell_3/mul_1:z:0)gru_3/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/MatMul_2?
gru_3/gru_cell_3/add_2AddV2gru_3/gru_cell_3/split:output:2#gru_3/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/add_2|
gru_3/gru_cell_3/TanhTanhgru_3/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/Tanh?
%gru_3/gru_cell_3/mul_2/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02'
%gru_3/gru_cell_3/mul_2/ReadVariableOp?
gru_3/gru_cell_3/mul_2Mulgru_3/gru_cell_3/Sigmoid:y:0-gru_3/gru_cell_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/mul_2u
gru_3/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_3/gru_cell_3/sub/x?
gru_3/gru_cell_3/subSubgru_3/gru_cell_3/sub/x:output:0gru_3/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/sub?
gru_3/gru_cell_3/mul_3Mulgru_3/gru_cell_3/sub:z:0gru_3/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/mul_3?
gru_3/gru_cell_3/add_3AddV2gru_3/gru_cell_3/mul_2:z:0gru_3/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_3/gru_cell_3/add_3?
#gru_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_3/TensorArrayV2_1/element_shape?
gru_3/TensorArrayV2_1TensorListReserve,gru_3/TensorArrayV2_1/element_shape:output:0gru_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_3/TensorArrayV2_1Z

gru_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_3/time?
gru_3/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru_3/ReadVariableOp?
gru_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_3/while/maximum_iterationsv
gru_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_3/while/loop_counter?
gru_3/whileWhile!gru_3/while/loop_counter:output:0'gru_3/while/maximum_iterations:output:0gru_3/time:output:0gru_3/TensorArrayV2_1:handle:0gru_3/ReadVariableOp:value:0gru_3/strided_slice:output:0=gru_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0/gru_3_gru_cell_3_matmul_readvariableop_resource0gru_3_gru_cell_3_biasadd_readvariableop_resource(gru_3_gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *!
bodyR
gru_3_while_body_9976*!
condR
gru_3_while_cond_9975*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
gru_3/while?
6gru_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      28
6gru_3/TensorArrayV2Stack/TensorListStack/element_shape?
(gru_3/TensorArrayV2Stack/TensorListStackTensorListStackgru_3/while:output:3?gru_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02*
(gru_3/TensorArrayV2Stack/TensorListStack?
gru_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_3/strided_slice_2/stack?
gru_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice_2/stack_1?
gru_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_2/stack_2?
gru_3/strided_slice_2StridedSlice1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0$gru_3/strided_slice_2/stack:output:0&gru_3/strided_slice_2/stack_1:output:0&gru_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
gru_3/strided_slice_2?
gru_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_3/transpose_1/perm?
gru_3/transpose_1	Transpose1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0gru_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_3/transpose_1r
gru_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_3/runtime?
gru_3/AssignVariableOpAssignVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resourcegru_3/while:output:4^gru_3/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp&^gru_3/gru_cell_3/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
gru_3/AssignVariableOpw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulgru_3/transpose_1:y:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout_1/dropout/Mulw
dropout_1/dropout/ShapeShapegru_3/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout_1/dropout/Mul_1?
 lengths/Tensordot/ReadVariableOpReadVariableOp)lengths_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 lengths/Tensordot/ReadVariableOpz
lengths/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
lengths/Tensordot/axes?
lengths/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
lengths/Tensordot/free}
lengths/Tensordot/ShapeShapedropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lengths/Tensordot/Shape?
lengths/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
lengths/Tensordot/GatherV2/axis?
lengths/Tensordot/GatherV2GatherV2 lengths/Tensordot/Shape:output:0lengths/Tensordot/free:output:0(lengths/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
lengths/Tensordot/GatherV2?
!lengths/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!lengths/Tensordot/GatherV2_1/axis?
lengths/Tensordot/GatherV2_1GatherV2 lengths/Tensordot/Shape:output:0lengths/Tensordot/axes:output:0*lengths/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
lengths/Tensordot/GatherV2_1|
lengths/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
lengths/Tensordot/Const?
lengths/Tensordot/ProdProd#lengths/Tensordot/GatherV2:output:0 lengths/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
lengths/Tensordot/Prod?
lengths/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lengths/Tensordot/Const_1?
lengths/Tensordot/Prod_1Prod%lengths/Tensordot/GatherV2_1:output:0"lengths/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
lengths/Tensordot/Prod_1?
lengths/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
lengths/Tensordot/concat/axis?
lengths/Tensordot/concatConcatV2lengths/Tensordot/free:output:0lengths/Tensordot/axes:output:0&lengths/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/concat?
lengths/Tensordot/stackPacklengths/Tensordot/Prod:output:0!lengths/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/stack?
lengths/Tensordot/transpose	Transposedropout_1/dropout/Mul_1:z:0!lengths/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
lengths/Tensordot/transpose?
lengths/Tensordot/ReshapeReshapelengths/Tensordot/transpose:y:0 lengths/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
lengths/Tensordot/Reshape?
lengths/Tensordot/MatMulMatMul"lengths/Tensordot/Reshape:output:0(lengths/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lengths/Tensordot/MatMul?
lengths/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
lengths/Tensordot/Const_2?
lengths/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
lengths/Tensordot/concat_1/axis?
lengths/Tensordot/concat_1ConcatV2#lengths/Tensordot/GatherV2:output:0"lengths/Tensordot/Const_2:output:0(lengths/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/concat_1?
lengths/TensordotReshape"lengths/Tensordot/MatMul:product:0#lengths/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
lengths/Tensordot?
lengths/BiasAdd/ReadVariableOpReadVariableOp'lengths_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
lengths/BiasAdd/ReadVariableOp?
lengths/BiasAddBiasAddlengths/Tensordot:output:0&lengths/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
lengths/BiasAdd?
times/Tensordot/ReadVariableOpReadVariableOp'times_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
times/Tensordot/ReadVariableOpv
times/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
times/Tensordot/axes}
times/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
times/Tensordot/freey
times/Tensordot/ShapeShapedropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
times/Tensordot/Shape?
times/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
times/Tensordot/GatherV2/axis?
times/Tensordot/GatherV2GatherV2times/Tensordot/Shape:output:0times/Tensordot/free:output:0&times/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
times/Tensordot/GatherV2?
times/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
times/Tensordot/GatherV2_1/axis?
times/Tensordot/GatherV2_1GatherV2times/Tensordot/Shape:output:0times/Tensordot/axes:output:0(times/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
times/Tensordot/GatherV2_1x
times/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
times/Tensordot/Const?
times/Tensordot/ProdProd!times/Tensordot/GatherV2:output:0times/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
times/Tensordot/Prod|
times/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
times/Tensordot/Const_1?
times/Tensordot/Prod_1Prod#times/Tensordot/GatherV2_1:output:0 times/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
times/Tensordot/Prod_1|
times/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
times/Tensordot/concat/axis?
times/Tensordot/concatConcatV2times/Tensordot/free:output:0times/Tensordot/axes:output:0$times/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/concat?
times/Tensordot/stackPacktimes/Tensordot/Prod:output:0times/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/stack?
times/Tensordot/transpose	Transposedropout_1/dropout/Mul_1:z:0times/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
times/Tensordot/transpose?
times/Tensordot/ReshapeReshapetimes/Tensordot/transpose:y:0times/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
times/Tensordot/Reshape?
times/Tensordot/MatMulMatMul times/Tensordot/Reshape:output:0&times/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
times/Tensordot/MatMul}
times/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
times/Tensordot/Const_2?
times/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
times/Tensordot/concat_1/axis?
times/Tensordot/concat_1ConcatV2!times/Tensordot/GatherV2:output:0 times/Tensordot/Const_2:output:0&times/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/concat_1?
times/TensordotReshape times/Tensordot/MatMul:product:0!times/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
times/Tensordot?
times/BiasAdd/ReadVariableOpReadVariableOp%times_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
times/BiasAdd/ReadVariableOp?
times/BiasAddBiasAddtimes/Tensordot:output:0$times/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
times/BiasAdd?
notes/Tensordot/ReadVariableOpReadVariableOp'notes_tensordot_readvariableop_resource*
_output_shapes
:	?_*
dtype02 
notes/Tensordot/ReadVariableOpv
notes/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
notes/Tensordot/axes}
notes/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
notes/Tensordot/freey
notes/Tensordot/ShapeShapedropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
notes/Tensordot/Shape?
notes/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
notes/Tensordot/GatherV2/axis?
notes/Tensordot/GatherV2GatherV2notes/Tensordot/Shape:output:0notes/Tensordot/free:output:0&notes/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
notes/Tensordot/GatherV2?
notes/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
notes/Tensordot/GatherV2_1/axis?
notes/Tensordot/GatherV2_1GatherV2notes/Tensordot/Shape:output:0notes/Tensordot/axes:output:0(notes/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
notes/Tensordot/GatherV2_1x
notes/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
notes/Tensordot/Const?
notes/Tensordot/ProdProd!notes/Tensordot/GatherV2:output:0notes/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
notes/Tensordot/Prod|
notes/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
notes/Tensordot/Const_1?
notes/Tensordot/Prod_1Prod#notes/Tensordot/GatherV2_1:output:0 notes/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
notes/Tensordot/Prod_1|
notes/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
notes/Tensordot/concat/axis?
notes/Tensordot/concatConcatV2notes/Tensordot/free:output:0notes/Tensordot/axes:output:0$notes/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/concat?
notes/Tensordot/stackPacknotes/Tensordot/Prod:output:0notes/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/stack?
notes/Tensordot/transpose	Transposedropout_1/dropout/Mul_1:z:0notes/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
notes/Tensordot/transpose?
notes/Tensordot/ReshapeReshapenotes/Tensordot/transpose:y:0notes/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
notes/Tensordot/Reshape?
notes/Tensordot/MatMulMatMul notes/Tensordot/Reshape:output:0&notes/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_2
notes/Tensordot/MatMul|
notes/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_2
notes/Tensordot/Const_2?
notes/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
notes/Tensordot/concat_1/axis?
notes/Tensordot/concat_1ConcatV2!notes/Tensordot/GatherV2:output:0 notes/Tensordot/Const_2:output:0&notes/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/concat_1?
notes/TensordotReshape notes/Tensordot/MatMul:product:0!notes/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????_2
notes/Tensordot?
notes/BiasAdd/ReadVariableOpReadVariableOp%notes_biasadd_readvariableop_resource*
_output_shapes
:_*
dtype02
notes/BiasAdd/ReadVariableOp?
notes/BiasAddBiasAddnotes/Tensordot:output:0$notes/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????_2
notes/BiasAddu
IdentityIdentitynotes/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identityz

Identity_1Identitytimes/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1|

Identity_2Identitylengths/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2?
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^gru_2/AssignVariableOp^gru_2/ReadVariableOp(^gru_2/gru_cell_2/BiasAdd/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp"^gru_2/gru_cell_2/ReadVariableOp_1&^gru_2/gru_cell_2/mul_1/ReadVariableOp&^gru_2/gru_cell_2/mul_2/ReadVariableOp^gru_2/while^gru_3/AssignVariableOp^gru_3/ReadVariableOp(^gru_3/gru_cell_3/BiasAdd/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp"^gru_3/gru_cell_3/ReadVariableOp_1&^gru_3/gru_cell_3/mul_1/ReadVariableOp&^gru_3/gru_cell_3/mul_2/ReadVariableOp^gru_3/while^lengths/BiasAdd/ReadVariableOp!^lengths/Tensordot/ReadVariableOp^notes/BiasAdd/ReadVariableOp^notes/Tensordot/ReadVariableOp^times/BiasAdd/ReadVariableOp^times/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp20
gru_2/AssignVariableOpgru_2/AssignVariableOp2,
gru_2/ReadVariableOpgru_2/ReadVariableOp2R
'gru_2/gru_cell_2/BiasAdd/ReadVariableOp'gru_2/gru_cell_2/BiasAdd/ReadVariableOp2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2F
!gru_2/gru_cell_2/ReadVariableOp_1!gru_2/gru_cell_2/ReadVariableOp_12N
%gru_2/gru_cell_2/mul_1/ReadVariableOp%gru_2/gru_cell_2/mul_1/ReadVariableOp2N
%gru_2/gru_cell_2/mul_2/ReadVariableOp%gru_2/gru_cell_2/mul_2/ReadVariableOp2
gru_2/whilegru_2/while20
gru_3/AssignVariableOpgru_3/AssignVariableOp2,
gru_3/ReadVariableOpgru_3/ReadVariableOp2R
'gru_3/gru_cell_3/BiasAdd/ReadVariableOp'gru_3/gru_cell_3/BiasAdd/ReadVariableOp2P
&gru_3/gru_cell_3/MatMul/ReadVariableOp&gru_3/gru_cell_3/MatMul/ReadVariableOp2T
(gru_3/gru_cell_3/MatMul_1/ReadVariableOp(gru_3/gru_cell_3/MatMul_1/ReadVariableOp2B
gru_3/gru_cell_3/ReadVariableOpgru_3/gru_cell_3/ReadVariableOp2F
!gru_3/gru_cell_3/ReadVariableOp_1!gru_3/gru_cell_3/ReadVariableOp_12N
%gru_3/gru_cell_3/mul_1/ReadVariableOp%gru_3/gru_cell_3/mul_1/ReadVariableOp2N
%gru_3/gru_cell_3/mul_2/ReadVariableOp%gru_3/gru_cell_3/mul_2/ReadVariableOp2
gru_3/whilegru_3/while2@
lengths/BiasAdd/ReadVariableOplengths/BiasAdd/ReadVariableOp2D
 lengths/Tensordot/ReadVariableOp lengths/Tensordot/ReadVariableOp2<
notes/BiasAdd/ReadVariableOpnotes/BiasAdd/ReadVariableOp2@
notes/Tensordot/ReadVariableOpnotes/Tensordot/ReadVariableOp2<
times/BiasAdd/ReadVariableOptimes/BiasAdd/ReadVariableOp2@
times/Tensordot/ReadVariableOptimes/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_gru_2_layer_call_fn_10267

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_2_layer_call_and_return_conditional_losses_79102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
߈
?	
gru_2_while_body_9761(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2%
!gru_2_while_gru_2_strided_slice_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0K
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
??G
8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0:	?D
0gru_2_while_gru_cell_2_readvariableop_resource_0:
??
gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4#
gru_2_while_gru_2_strided_slicea
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensorI
5gru_2_while_gru_cell_2_matmul_readvariableop_resource:
??E
6gru_2_while_gru_cell_2_biasadd_readvariableop_resource:	?B
.gru_2_while_gru_cell_2_readvariableop_resource:
????-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp?,gru_2/while/gru_cell_2/MatMul/ReadVariableOp?%gru_2/while/gru_cell_2/ReadVariableOp?'gru_2/while/gru_cell_2/ReadVariableOp_1?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype021
/gru_2/while/TensorArrayV2Read/TensorListGetItem?
&gru_2/while/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_2/while/gru_cell_2/ones_like/Shape?
&gru_2/while/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&gru_2/while/gru_cell_2/ones_like/Const?
 gru_2/while/gru_cell_2/ones_likeFill/gru_2/while/gru_cell_2/ones_like/Shape:output:0/gru_2/while/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2"
 gru_2/while/gru_cell_2/ones_like?
$gru_2/while/gru_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2&
$gru_2/while/gru_cell_2/dropout/Const?
"gru_2/while/gru_cell_2/dropout/MulMul)gru_2/while/gru_cell_2/ones_like:output:0-gru_2/while/gru_cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	?2$
"gru_2/while/gru_cell_2/dropout/Mul?
$gru_2/while/gru_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_2/while/gru_cell_2/dropout/Shape?
;gru_2/while/gru_cell_2/dropout/random_uniform/RandomUniformRandomUniform-gru_2/while/gru_cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2=
;gru_2/while/gru_cell_2/dropout/random_uniform/RandomUniform?
-gru_2/while/gru_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2/
-gru_2/while/gru_cell_2/dropout/GreaterEqual/y?
+gru_2/while/gru_cell_2/dropout/GreaterEqualGreaterEqualDgru_2/while/gru_cell_2/dropout/random_uniform/RandomUniform:output:06gru_2/while/gru_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2-
+gru_2/while/gru_cell_2/dropout/GreaterEqual?
#gru_2/while/gru_cell_2/dropout/CastCast/gru_2/while/gru_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2%
#gru_2/while/gru_cell_2/dropout/Cast?
$gru_2/while/gru_cell_2/dropout/Mul_1Mul&gru_2/while/gru_cell_2/dropout/Mul:z:0'gru_2/while/gru_cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	?2&
$gru_2/while/gru_cell_2/dropout/Mul_1?
&gru_2/while/gru_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2(
&gru_2/while/gru_cell_2/dropout_1/Const?
$gru_2/while/gru_cell_2/dropout_1/MulMul)gru_2/while/gru_cell_2/ones_like:output:0/gru_2/while/gru_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2&
$gru_2/while/gru_cell_2/dropout_1/Mul?
&gru_2/while/gru_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_2/while/gru_cell_2/dropout_1/Shape?
=gru_2/while/gru_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform/gru_2/while/gru_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2?
=gru_2/while/gru_cell_2/dropout_1/random_uniform/RandomUniform?
/gru_2/while/gru_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=21
/gru_2/while/gru_cell_2/dropout_1/GreaterEqual/y?
-gru_2/while/gru_cell_2/dropout_1/GreaterEqualGreaterEqualFgru_2/while/gru_cell_2/dropout_1/random_uniform/RandomUniform:output:08gru_2/while/gru_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2/
-gru_2/while/gru_cell_2/dropout_1/GreaterEqual?
%gru_2/while/gru_cell_2/dropout_1/CastCast1gru_2/while/gru_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2'
%gru_2/while/gru_cell_2/dropout_1/Cast?
&gru_2/while/gru_cell_2/dropout_1/Mul_1Mul(gru_2/while/gru_cell_2/dropout_1/Mul:z:0)gru_2/while/gru_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2(
&gru_2/while/gru_cell_2/dropout_1/Mul_1?
&gru_2/while/gru_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2(
&gru_2/while/gru_cell_2/dropout_2/Const?
$gru_2/while/gru_cell_2/dropout_2/MulMul)gru_2/while/gru_cell_2/ones_like:output:0/gru_2/while/gru_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2&
$gru_2/while/gru_cell_2/dropout_2/Mul?
&gru_2/while/gru_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_2/while/gru_cell_2/dropout_2/Shape?
=gru_2/while/gru_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform/gru_2/while/gru_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2?
=gru_2/while/gru_cell_2/dropout_2/random_uniform/RandomUniform?
/gru_2/while/gru_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=21
/gru_2/while/gru_cell_2/dropout_2/GreaterEqual/y?
-gru_2/while/gru_cell_2/dropout_2/GreaterEqualGreaterEqualFgru_2/while/gru_cell_2/dropout_2/random_uniform/RandomUniform:output:08gru_2/while/gru_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2/
-gru_2/while/gru_cell_2/dropout_2/GreaterEqual?
%gru_2/while/gru_cell_2/dropout_2/CastCast1gru_2/while/gru_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2'
%gru_2/while/gru_cell_2/dropout_2/Cast?
&gru_2/while/gru_cell_2/dropout_2/Mul_1Mul(gru_2/while/gru_cell_2/dropout_2/Mul:z:0)gru_2/while/gru_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2(
&gru_2/while/gru_cell_2/dropout_2/Mul_1?
gru_2/while/gru_cell_2/mulMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:0(gru_2/while/gru_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/mul?
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp?
gru_2/while/gru_cell_2/MatMulMatMulgru_2/while/gru_cell_2/mul:z:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/MatMul?
-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02/
-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp?
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:05gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2 
gru_2/while/gru_cell_2/BiasAdd?
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_2/while/gru_cell_2/split/split_dim?
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_2/while/gru_cell_2/split?
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02'
%gru_2/while/gru_cell_2/ReadVariableOp?
*gru_2/while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_2/while/gru_cell_2/strided_slice/stack?
,gru_2/while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_2/while/gru_cell_2/strided_slice/stack_1?
,gru_2/while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_2/while/gru_cell_2/strided_slice/stack_2?
$gru_2/while/gru_cell_2/strided_sliceStridedSlice-gru_2/while/gru_cell_2/ReadVariableOp:value:03gru_2/while/gru_cell_2/strided_slice/stack:output:05gru_2/while/gru_cell_2/strided_slice/stack_1:output:05gru_2/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$gru_2/while/gru_cell_2/strided_slice?
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_2-gru_2/while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2!
gru_2/while/gru_cell_2/MatMul_1?
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_2/while/gru_cell_2/Const?
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_2/while/gru_cell_2/split_1/split_dim?
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/MatMul_1:product:0%gru_2/while/gru_cell_2/Const:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2 
gru_2/while/gru_cell_2/split_1?
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/add?
gru_2/while/gru_cell_2/SigmoidSigmoidgru_2/while/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2 
gru_2/while/gru_cell_2/Sigmoid?
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/add_1?
 gru_2/while/gru_cell_2/Sigmoid_1Sigmoid gru_2/while/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2"
 gru_2/while/gru_cell_2/Sigmoid_1?
gru_2/while/gru_cell_2/mul_1Mul$gru_2/while/gru_cell_2/Sigmoid_1:y:0gru_2_while_placeholder_2*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/mul_1?
'gru_2/while/gru_cell_2/ReadVariableOp_1ReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'gru_2/while/gru_cell_2/ReadVariableOp_1?
,gru_2/while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_2/while/gru_cell_2/strided_slice_1/stack?
.gru_2/while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_2/while/gru_cell_2/strided_slice_1/stack_1?
.gru_2/while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_2/while/gru_cell_2/strided_slice_1/stack_2?
&gru_2/while/gru_cell_2/strided_slice_1StridedSlice/gru_2/while/gru_cell_2/ReadVariableOp_1:value:05gru_2/while/gru_cell_2/strided_slice_1/stack:output:07gru_2/while/gru_cell_2/strided_slice_1/stack_1:output:07gru_2/while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2(
&gru_2/while/gru_cell_2/strided_slice_1?
gru_2/while/gru_cell_2/MatMul_2MatMul gru_2/while/gru_cell_2/mul_1:z:0/gru_2/while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2!
gru_2/while/gru_cell_2/MatMul_2?
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2)gru_2/while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/add_2?
gru_2/while/gru_cell_2/TanhTanh gru_2/while/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/Tanh?
gru_2/while/gru_cell_2/mul_2Mul"gru_2/while/gru_cell_2/Sigmoid:y:0gru_2_while_placeholder_2*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/mul_2?
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_2/while/gru_cell_2/sub/x?
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0"gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/sub?
gru_2/while/gru_cell_2/mul_3Mulgru_2/while/gru_cell_2/sub:z:0gru_2/while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/mul_3?
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_2:z:0 gru_2/while/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/add_3?
0gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_2_while_placeholder_1gru_2_while_placeholder gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_2/while/TensorArrayV2Write/TensorListSetItemh
gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add/y?
gru_2/while/addAddV2gru_2_while_placeholdergru_2/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/addl
gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add_1/y?
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/add_1?
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: 2
gru_2/while/Identity?
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations^gru_2/while/NoOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_1?
gru_2/while/Identity_2Identitygru_2/while/add:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_2?
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_2/while/NoOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_3?
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0^gru_2/while/NoOp*
T0*
_output_shapes
:	?2
gru_2/while/Identity_4?
gru_2/while/NoOpNoOp.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
gru_2/while/NoOp"D
gru_2_while_gru_2_strided_slice!gru_2_while_gru_2_strided_slice_0"r
6gru_2_while_gru_cell_2_biasadd_readvariableop_resource8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"?
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2^
-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp2\
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp,gru_2/while/gru_cell_2/MatMul/ReadVariableOp2N
%gru_2/while/gru_cell_2/ReadVariableOp%gru_2/while/gru_cell_2/ReadVariableOp2R
'gru_2/while/gru_cell_2/ReadVariableOp_1'gru_2/while/gru_cell_2/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_model_1_layer_call_fn_8978
input_2
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?_

unknown_14:_
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *[
_output_shapesI
G:?????????_:??????????:??????????*0
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_88982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_2
?

?
*__inference_gru_cell_2_layer_call_fn_12064

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_64922
StatefulPartitionedCalls
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	?2

Identityw

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:	?2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	?
 
_user_specified_nameinputs:IE

_output_shapes
:	?
"
_user_specified_name
states/0
?
E
)__inference_dropout_1_layer_call_fn_11897

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_81052
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?l
?
@__inference_gru_3_layer_call_and_return_conditional_losses_11283
inputs_0=
)gru_cell_3_matmul_readvariableop_resource:
??9
*gru_cell_3_biasadd_readvariableop_resource:	?6
"gru_cell_3_readvariableop_resource:
??>
+gru_cell_3_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_3/BiasAdd/ReadVariableOp? gru_cell_3/MatMul/ReadVariableOp?"gru_cell_3/MatMul_1/ReadVariableOp?gru_cell_3/ReadVariableOp?gru_cell_3/ReadVariableOp_1?gru_cell_3/mul_1/ReadVariableOp?gru_cell_3/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm}
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/ones_like/Shape}
gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/ones_like/Const?
gru_cell_3/ones_likeFill#gru_cell_3/ones_like/Shape:output:0#gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/ones_like?
gru_cell_3/mulMulstrided_slice_1:output:0gru_cell_3/ones_like:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul?
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp?
gru_cell_3/MatMulMatMulgru_cell_3/mul:z:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul?
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp?
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/BiasAdd?
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split/split_dim?
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_3/split?
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp?
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack?
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1?
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2?
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice?
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp?
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_3/Const?
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split_1/split_dim?
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_3/split_1?
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid?
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid_1?
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_1/ReadVariableOp?
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid_1:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_1?
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp_1?
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack?
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1?
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2?
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1?
gru_cell_3/MatMul_2MatMulgru_cell_3/mul_1:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_2?
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Tanh?
gru_cell_3/mul_2/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_2/ReadVariableOp?
gru_cell_3/mul_2Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_2i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/sub/x?
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/sub~
gru_cell_3/mul_3Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_3?
gru_cell_3/add_3AddV2gru_cell_3/mul_2:z:0gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11183*
condR
while_cond_11182*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1 ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2B
gru_cell_3/mul_2/ReadVariableOpgru_cell_3/mul_2/ReadVariableOp2
whilewhile:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_11907

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_6346

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1s
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likeW
mulMulinputsones_like:output:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_sliceh
MatMul_1MatMulstatesstrided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1V
mul_1MulSigmoid_1:y:0states*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
TanhT
mul_2MulSigmoid:y:0states*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	?
 
_user_specified_nameinputs:GC

_output_shapes
:	?
 
_user_specified_namestates
?
?
while_cond_10740
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_10740___redundant_placeholder03
/while_while_cond_10740___redundant_placeholder13
/while_while_cond_10740___redundant_placeholder23
/while_while_cond_10740___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?	
?
*__inference_gru_cell_2_layer_call_fn_12132

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

::*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_121212
StatefulPartitionedCalll
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:2

Identityp

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	?
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
?l
?
@__inference_gru_2_layer_call_and_return_conditional_losses_10451
inputs_0=
)gru_cell_2_matmul_readvariableop_resource:
??9
*gru_cell_2_biasadd_readvariableop_resource:	?6
"gru_cell_2_readvariableop_resource:
??>
+gru_cell_2_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_2/BiasAdd/ReadVariableOp? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?gru_cell_2/ReadVariableOp_1?gru_cell_2/mul_1/ReadVariableOp?gru_cell_2/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm}
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/ones_like/Shape}
gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/ones_like/Const?
gru_cell_2/ones_likeFill#gru_cell_2/ones_like/Shape:output:0#gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/ones_like?
gru_cell_2/mulMulstrided_slice_1:output:0gru_cell_2/ones_like:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp?
gru_cell_2/MatMulMatMulgru_cell_2/mul:z:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul?
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp?
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/BiasAdd?
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split/split_dim?
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_2/split?
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp?
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack?
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1?
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2?
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp?
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_2/Const?
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split_1/split_dim?
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_2/split_1?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid?
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid_1?
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_1/ReadVariableOp?
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid_1:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_1?
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp_1?
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack?
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1?
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2?
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1?
gru_cell_2/MatMul_2MatMulgru_cell_2/mul_1:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_2?
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Tanh?
gru_cell_2/mul_2/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_2/ReadVariableOp?
gru_cell_2/mul_2Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_2i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/sub/x?
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/sub~
gru_cell_2/mul_3Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_3?
gru_cell_2/add_3AddV2gru_cell_2/mul_2:z:0gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_10351*
condR
while_cond_10350*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1 ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2B
gru_cell_2/mul_2/ReadVariableOpgru_cell_2/mul_2/ReadVariableOp2
whilewhile:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0
ǌ
?
@__inference_gru_3_layer_call_and_return_conditional_losses_11502
inputs_0=
)gru_cell_3_matmul_readvariableop_resource:
??9
*gru_cell_3_biasadd_readvariableop_resource:	?6
"gru_cell_3_readvariableop_resource:
??>
+gru_cell_3_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_3/BiasAdd/ReadVariableOp? gru_cell_3/MatMul/ReadVariableOp?"gru_cell_3/MatMul_1/ReadVariableOp?gru_cell_3/ReadVariableOp?gru_cell_3/ReadVariableOp_1?gru_cell_3/mul_1/ReadVariableOp?gru_cell_3/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm}
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/ones_like/Shape}
gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/ones_like/Const?
gru_cell_3/ones_likeFill#gru_cell_3/ones_like/Shape:output:0#gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/ones_likey
gru_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_3/dropout/Const?
gru_cell_3/dropout/MulMulgru_cell_3/ones_like:output:0!gru_cell_3/dropout/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout/Mul?
gru_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/dropout/Shape?
/gru_cell_3/dropout/random_uniform/RandomUniformRandomUniform!gru_cell_3/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???21
/gru_cell_3/dropout/random_uniform/RandomUniform?
!gru_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!gru_cell_3/dropout/GreaterEqual/y?
gru_cell_3/dropout/GreaterEqualGreaterEqual8gru_cell_3/dropout/random_uniform/RandomUniform:output:0*gru_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2!
gru_cell_3/dropout/GreaterEqual?
gru_cell_3/dropout/CastCast#gru_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_3/dropout/Cast?
gru_cell_3/dropout/Mul_1Mulgru_cell_3/dropout/Mul:z:0gru_cell_3/dropout/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout/Mul_1}
gru_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_3/dropout_1/Const?
gru_cell_3/dropout_1/MulMulgru_cell_3/ones_like:output:0#gru_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_1/Mul?
gru_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/dropout_1/Shape?
1gru_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform#gru_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???23
1gru_cell_3/dropout_1/random_uniform/RandomUniform?
#gru_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_3/dropout_1/GreaterEqual/y?
!gru_cell_3/dropout_1/GreaterEqualGreaterEqual:gru_cell_3/dropout_1/random_uniform/RandomUniform:output:0,gru_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_3/dropout_1/GreaterEqual?
gru_cell_3/dropout_1/CastCast%gru_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_3/dropout_1/Cast?
gru_cell_3/dropout_1/Mul_1Mulgru_cell_3/dropout_1/Mul:z:0gru_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_1/Mul_1}
gru_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_3/dropout_2/Const?
gru_cell_3/dropout_2/MulMulgru_cell_3/ones_like:output:0#gru_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_2/Mul?
gru_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/dropout_2/Shape?
1gru_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform#gru_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2Ը?23
1gru_cell_3/dropout_2/random_uniform/RandomUniform?
#gru_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_3/dropout_2/GreaterEqual/y?
!gru_cell_3/dropout_2/GreaterEqualGreaterEqual:gru_cell_3/dropout_2/random_uniform/RandomUniform:output:0,gru_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_3/dropout_2/GreaterEqual?
gru_cell_3/dropout_2/CastCast%gru_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_3/dropout_2/Cast?
gru_cell_3/dropout_2/Mul_1Mulgru_cell_3/dropout_2/Mul:z:0gru_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_2/Mul_1?
gru_cell_3/mulMulstrided_slice_1:output:0gru_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul?
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp?
gru_cell_3/MatMulMatMulgru_cell_3/mul:z:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul?
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp?
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/BiasAdd?
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split/split_dim?
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_3/split?
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp?
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack?
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1?
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2?
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice?
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp?
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_3/Const?
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split_1/split_dim?
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_3/split_1?
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid?
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid_1?
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_1/ReadVariableOp?
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid_1:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_1?
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp_1?
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack?
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1?
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2?
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1?
gru_cell_3/MatMul_2MatMulgru_cell_3/mul_1:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_2?
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Tanh?
gru_cell_3/mul_2/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_2/ReadVariableOp?
gru_cell_3/mul_2Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_2i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/sub/x?
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/sub~
gru_cell_3/mul_3Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_3?
gru_cell_3/add_3AddV2gru_cell_3/mul_2:z:0gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11378*
condR
while_cond_11377*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1 ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2B
gru_cell_3/mul_2/ReadVariableOpgru_cell_3/mul_2/ReadVariableOp2
whilewhile:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0
?
b
)__inference_dropout_1_layer_call_fn_11902

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_83072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_7989
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_7989___redundant_placeholder02
.while_while_cond_7989___redundant_placeholder12
.while_while_cond_7989___redundant_placeholder22
.while_while_cond_7989___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?	
?
*__inference_gru_cell_3_layer_call_fn_12576

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

::*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_125652
StatefulPartitionedCalll
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:2

Identityp

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	?
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
?1
?
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_6259

inputs
states:	?2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likeW
mulMulinputsones_like:output:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicez
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1t
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
mul_1/ReadVariableOpl
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
Tanht
mul_2/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
mul_2/ReadVariableOpj
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:	?: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
? 
?
@__inference_times_layer_call_and_return_conditional_losses_11997

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAddp
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_notes_layer_call_fn_11928

inputs
unknown:	?_
	unknown_0:_
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????_*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_notes_layer_call_and_return_conditional_losses_82092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?F
?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12846

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1s
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Constw
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*
_output_shapes
:	?2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	?2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/Const}
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
dropout_1/Muls
dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??p2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_1/GreaterEqual}
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_1/Castz
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/Const}
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
dropout_2/Muls
dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2㰘2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_2/GreaterEqual}
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_2/Castz
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_2/Mul_1V
mulMulinputsdropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicej
MatMul_1MatMulstates_0strided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1X
mul_1MulSigmoid_1:y:0states_0*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
TanhV
mul_2MulSigmoid:y:0states_0*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	?
 
_user_specified_nameinputs:IE

_output_shapes
:	?
"
_user_specified_name
states/0
?
?
while_cond_6274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_6274___redundant_placeholder02
.while_while_cond_6274___redundant_placeholder12
.while_while_cond_6274___redundant_placeholder22
.while_while_cond_6274___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?
?
%__inference_gru_2_layer_call_fn_10241
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_2_layer_call_and_return_conditional_losses_63892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0
?1
?
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_7015

inputs
states:	?2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likeW
mulMulinputsones_like:output:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicez
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1t
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
mul_1/ReadVariableOpl
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
Tanht
mul_2/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
mul_2/ReadVariableOpj
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:	?: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
?l
?
?__inference_gru_3_layer_call_and_return_conditional_losses_8090

inputs=
)gru_cell_3_matmul_readvariableop_resource:
??9
*gru_cell_3_biasadd_readvariableop_resource:	?6
"gru_cell_3_readvariableop_resource:
??>
+gru_cell_3_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_3/BiasAdd/ReadVariableOp? gru_cell_3/MatMul/ReadVariableOp?"gru_cell_3/MatMul_1/ReadVariableOp?gru_cell_3/ReadVariableOp?gru_cell_3/ReadVariableOp_1?gru_cell_3/mul_1/ReadVariableOp?gru_cell_3/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/ones_like/Shape}
gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/ones_like/Const?
gru_cell_3/ones_likeFill#gru_cell_3/ones_like/Shape:output:0#gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/ones_like?
gru_cell_3/mulMulstrided_slice_1:output:0gru_cell_3/ones_like:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul?
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp?
gru_cell_3/MatMulMatMulgru_cell_3/mul:z:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul?
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp?
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/BiasAdd?
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split/split_dim?
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_3/split?
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp?
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack?
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1?
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2?
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice?
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp?
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_3/Const?
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split_1/split_dim?
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_3/split_1?
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid?
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid_1?
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_1/ReadVariableOp?
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid_1:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_1?
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp_1?
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack?
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1?
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2?
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1?
gru_cell_3/MatMul_2MatMulgru_cell_3/mul_1:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_2?
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Tanh?
gru_cell_3/mul_2/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_2/ReadVariableOp?
gru_cell_3/mul_2Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_2i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/sub/x?
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/sub~
gru_cell_3/mul_3Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_3?
gru_cell_3/add_3AddV2gru_cell_3/mul_2:z:0gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_7990*
condR
while_cond_7989*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1 ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2B
gru_cell_3/mul_2/ReadVariableOpgru_cell_3/mul_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
A__inference_model_1_layer_call_and_return_conditional_losses_9068
input_2 
dense_1_9026:
??
dense_1_9028:	?

gru_2_9031:
??

gru_2_9033:	?

gru_2_9035:
??

gru_2_9037:	?

gru_3_9040:
??

gru_3_9042:	?

gru_3_9044:
??

gru_3_9046:	? 
lengths_9050:
??
lengths_9052:	?

times_9055:
??

times_9057:	?

notes_9060:	?_

notes_9062:_
identity

identity_1

identity_2??dense_1/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?gru_2/StatefulPartitionedCall?gru_3/StatefulPartitionedCall?lengths/StatefulPartitionedCall?notes/StatefulPartitionedCall?times/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_1_9026dense_1_9028*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_77342!
dense_1/StatefulPartitionedCall?
gru_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0
gru_2_9031
gru_2_9033
gru_2_9035
gru_2_9037*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_2_layer_call_and_return_conditional_losses_87892
gru_2/StatefulPartitionedCall?
gru_3/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0
gru_3_9040
gru_3_9042
gru_3_9044
gru_3_9046*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_3_layer_call_and_return_conditional_losses_85442
gru_3/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&gru_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_83072#
!dropout_1/StatefulPartitionedCall?
lengths/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0lengths_9050lengths_9052*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_lengths_layer_call_and_return_conditional_losses_81372!
lengths/StatefulPartitionedCall?
times/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0
times_9055
times_9057*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_times_layer_call_and_return_conditional_losses_81732
times/StatefulPartitionedCall?
notes/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0
notes_9060
notes_9062*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????_*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_notes_layer_call_and_return_conditional_losses_82092
notes/StatefulPartitionedCall?
IdentityIdentity&notes/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity?

Identity_1Identity&times/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1?

Identity_2Identity(lengths/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2?
NoOpNoOp ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall2B
lengths/StatefulPartitionedCalllengths/StatefulPartitionedCall2>
notes/StatefulPartitionedCallnotes/StatefulPartitionedCall2>
times/StatefulPartitionedCalltimes/StatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_2
ǌ
?
@__inference_gru_2_layer_call_and_return_conditional_losses_10670
inputs_0=
)gru_cell_2_matmul_readvariableop_resource:
??9
*gru_cell_2_biasadd_readvariableop_resource:	?6
"gru_cell_2_readvariableop_resource:
??>
+gru_cell_2_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_2/BiasAdd/ReadVariableOp? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?gru_cell_2/ReadVariableOp_1?gru_cell_2/mul_1/ReadVariableOp?gru_cell_2/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm}
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/ones_like/Shape}
gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/ones_like/Const?
gru_cell_2/ones_likeFill#gru_cell_2/ones_like/Shape:output:0#gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/ones_likey
gru_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_2/dropout/Const?
gru_cell_2/dropout/MulMulgru_cell_2/ones_like:output:0!gru_cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout/Mul?
gru_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/dropout/Shape?
/gru_cell_2/dropout/random_uniform/RandomUniformRandomUniform!gru_cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???21
/gru_cell_2/dropout/random_uniform/RandomUniform?
!gru_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!gru_cell_2/dropout/GreaterEqual/y?
gru_cell_2/dropout/GreaterEqualGreaterEqual8gru_cell_2/dropout/random_uniform/RandomUniform:output:0*gru_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2!
gru_cell_2/dropout/GreaterEqual?
gru_cell_2/dropout/CastCast#gru_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_2/dropout/Cast?
gru_cell_2/dropout/Mul_1Mulgru_cell_2/dropout/Mul:z:0gru_cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout/Mul_1}
gru_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_2/dropout_1/Const?
gru_cell_2/dropout_1/MulMulgru_cell_2/ones_like:output:0#gru_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_1/Mul?
gru_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/dropout_1/Shape?
1gru_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform#gru_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???23
1gru_cell_2/dropout_1/random_uniform/RandomUniform?
#gru_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_2/dropout_1/GreaterEqual/y?
!gru_cell_2/dropout_1/GreaterEqualGreaterEqual:gru_cell_2/dropout_1/random_uniform/RandomUniform:output:0,gru_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_2/dropout_1/GreaterEqual?
gru_cell_2/dropout_1/CastCast%gru_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_2/dropout_1/Cast?
gru_cell_2/dropout_1/Mul_1Mulgru_cell_2/dropout_1/Mul:z:0gru_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_1/Mul_1}
gru_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_2/dropout_2/Const?
gru_cell_2/dropout_2/MulMulgru_cell_2/ones_like:output:0#gru_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_2/Mul?
gru_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/dropout_2/Shape?
1gru_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform#gru_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???23
1gru_cell_2/dropout_2/random_uniform/RandomUniform?
#gru_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_2/dropout_2/GreaterEqual/y?
!gru_cell_2/dropout_2/GreaterEqualGreaterEqual:gru_cell_2/dropout_2/random_uniform/RandomUniform:output:0,gru_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_2/dropout_2/GreaterEqual?
gru_cell_2/dropout_2/CastCast%gru_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_2/dropout_2/Cast?
gru_cell_2/dropout_2/Mul_1Mulgru_cell_2/dropout_2/Mul:z:0gru_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_2/Mul_1?
gru_cell_2/mulMulstrided_slice_1:output:0gru_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp?
gru_cell_2/MatMulMatMulgru_cell_2/mul:z:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul?
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp?
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/BiasAdd?
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split/split_dim?
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_2/split?
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp?
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack?
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1?
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2?
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp?
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_2/Const?
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split_1/split_dim?
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_2/split_1?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid?
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid_1?
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_1/ReadVariableOp?
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid_1:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_1?
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp_1?
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack?
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1?
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2?
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1?
gru_cell_2/MatMul_2MatMulgru_cell_2/mul_1:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_2?
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Tanh?
gru_cell_2/mul_2/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_2/ReadVariableOp?
gru_cell_2/mul_2Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_2i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/sub/x?
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/sub~
gru_cell_2/mul_3Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_3?
gru_cell_2/add_3AddV2gru_cell_2/mul_2:z:0gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_10546*
condR
while_cond_10545*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1 ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2B
gru_cell_2/mul_2/ReadVariableOpgru_cell_2/mul_2/ReadVariableOp2
whilewhile:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0
?G
?

!__inference__traced_restore_13055
file_prefix3
assignvariableop_dense_1_kernel:
??.
assignvariableop_1_dense_1_bias:	?2
assignvariableop_2_notes_kernel:	?_+
assignvariableop_3_notes_bias:_3
assignvariableop_4_times_kernel:
??,
assignvariableop_5_times_bias:	?5
!assignvariableop_6_lengths_kernel:
??.
assignvariableop_7_lengths_bias:	?>
*assignvariableop_8_gru_2_gru_cell_2_kernel:
??H
4assignvariableop_9_gru_2_gru_cell_2_recurrent_kernel:
??8
)assignvariableop_10_gru_2_gru_cell_2_bias:	??
+assignvariableop_11_gru_3_gru_cell_3_kernel:
??I
5assignvariableop_12_gru_3_gru_cell_3_recurrent_kernel:
??8
)assignvariableop_13_gru_3_gru_cell_3_bias:	?5
"assignvariableop_14_gru_2_variable:	?5
"assignvariableop_15_gru_3_variable:	?
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_notes_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_notes_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_times_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_times_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_lengths_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_lengths_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp*assignvariableop_8_gru_2_gru_cell_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp4assignvariableop_9_gru_2_gru_cell_2_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp)assignvariableop_10_gru_2_gru_cell_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp+assignvariableop_11_gru_3_gru_cell_3_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp5assignvariableop_12_gru_3_gru_cell_3_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp)assignvariableop_13_gru_3_gru_cell_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp"assignvariableop_14_gru_2_variableIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp"assignvariableop_15_gru_3_variableIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16f
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_17?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?K
?
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_6598

inputs
states:	?2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Constw
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*
_output_shapes
:	?2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	?2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/Const}
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
dropout_1/Muls
dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2˰ 2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_1/GreaterEqual}
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_1/Castz
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/Const}
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
dropout_2/Muls
dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_2/GreaterEqual}
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_2/Castz
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_2/Mul_1V
mulMulinputsdropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicez
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1t
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
mul_1/ReadVariableOpl
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
Tanht
mul_2/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
mul_2/ReadVariableOpj
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:	?: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
?
?
&__inference_model_1_layer_call_fn_9193

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?_

unknown_14:_
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *[
_output_shapesI
G:?????????_:??????????:??????????*0
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_88982
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_gru_2_layer_call_fn_10254
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_2_layer_call_and_return_conditional_losses_67222
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0
?
?
&__inference_model_1_layer_call_fn_9152

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?_

unknown_14:_
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *[
_output_shapesI
G:?????????_:??????????:??????????*0
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_model_1_layer_call_and_return_conditional_losses_82182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_times_layer_call_fn_11967

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_times_layer_call_and_return_conditional_losses_81732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
'__inference_lengths_layer_call_fn_12006

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_lengths_layer_call_and_return_conditional_losses_81372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_11767
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_11767___redundant_placeholder03
/while_while_cond_11767___redundant_placeholder13
/while_while_cond_11767___redundant_placeholder23
/while_while_cond_11767___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?J
?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12657

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Constw
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*
_output_shapes
:	?2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	?2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/Const}
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
dropout_1/Muls
dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_1/GreaterEqual}
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_1/Castz
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/Const}
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
dropout_2/Muls
dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2ۃE2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_2/GreaterEqual}
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_2/Castz
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_2/Mul_1V
mulMulinputsdropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slices
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0* 
_output_shapes
:::*
	num_split2	
split_1X
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:2
addI
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:2	
Sigmoid\
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:2
add_1O
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:2
	Sigmoid_1m
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpe
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2BatchMatMulV2	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:2

MatMul_2]
add_2AddV2split:output:2MatMul_2:output:0*
T0*
_output_shapes
:2
add_2B
TanhTanh	add_2:z:0*
T0*
_output_shapes
:2
Tanhm
mul_2/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpc
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_3P
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:2
add_3U
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

IdentityY

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
?
?
"__inference_signature_wrapper_9111
input_2
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:
??
	unknown_8:	?
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?_

unknown_14:_
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *[
_output_shapesI
G:??????????:?????????_:??????????*0
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8? *(
f#R!
__inference__wrapped_model_61842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*+
_output_shapes
:?????????_2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_2
?K
?
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_7354

inputs
states:	?2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Constw
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*
_output_shapes
:	?2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	?2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/Const}
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
dropout_1/Muls
dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??o2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_1/GreaterEqual}
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_1/Castz
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/Const}
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
dropout_2/Muls
dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??U2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_2/GreaterEqual}
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_2/Castz
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_2/Mul_1V
mulMulinputsdropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicez
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1t
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
mul_1/ReadVariableOpl
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
Tanht
mul_2/ReadVariableOpReadVariableOpstates*
_output_shapes
:	?*
dtype02
mul_2/ReadVariableOpj
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:	?: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
?
?
while_cond_6657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_6657___redundant_placeholder02
.while_while_cond_6657___redundant_placeholder12
.while_while_cond_6657___redundant_placeholder22
.while_while_cond_6657___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?
?
while_cond_8419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_8419___redundant_placeholder02
.while_while_cond_8419___redundant_placeholder12
.while_while_cond_8419___redundant_placeholder22
.while_while_cond_8419___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?!
?
while_body_6275
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_2_6347_0:
??&
while_gru_cell_2_6349_0:	?+
while_gru_cell_2_6351_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_2_6347:
??$
while_gru_cell_2_6349:	?)
while_gru_cell_2_6351:
????(while/gru_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/gru_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2_6347_0while_gru_cell_2_6349_0while_gru_cell_2_6351_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_63462*
(while/gru_cell_2/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity1while/gru_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp)^while/gru_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"0
while_gru_cell_2_6347while_gru_cell_2_6347_0"0
while_gru_cell_2_6349while_gru_cell_2_6349_0"0
while_gru_cell_2_6351while_gru_cell_2_6351_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2T
(while/gru_cell_2/StatefulPartitionedCall(while/gru_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_7413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_7413___redundant_placeholder02
.while_while_cond_7413___redundant_placeholder12
.while_while_cond_7413___redundant_placeholder22
.while_while_cond_7413___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?z
?
while_body_8420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
??A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_3_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
???
0while_gru_cell_3_biasadd_readvariableop_resource:	?<
(while_gru_cell_3_readvariableop_resource:
????'while/gru_cell_3/BiasAdd/ReadVariableOp?&while/gru_cell_3/MatMul/ReadVariableOp?while/gru_cell_3/ReadVariableOp?!while/gru_cell_3/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/ones_like/Shape?
 while/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_3/ones_like/Const?
while/gru_cell_3/ones_likeFill)while/gru_cell_3/ones_like/Shape:output:0)while/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/ones_like?
while/gru_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2 
while/gru_cell_3/dropout/Const?
while/gru_cell_3/dropout/MulMul#while/gru_cell_3/ones_like:output:0'while/gru_cell_3/dropout/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/dropout/Mul?
while/gru_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
while/gru_cell_3/dropout/Shape?
5while/gru_cell_3/dropout/random_uniform/RandomUniformRandomUniform'while/gru_cell_3/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2˞?27
5while/gru_cell_3/dropout/random_uniform/RandomUniform?
'while/gru_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2)
'while/gru_cell_3/dropout/GreaterEqual/y?
%while/gru_cell_3/dropout/GreaterEqualGreaterEqual>while/gru_cell_3/dropout/random_uniform/RandomUniform:output:00while/gru_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2'
%while/gru_cell_3/dropout/GreaterEqual?
while/gru_cell_3/dropout/CastCast)while/gru_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
while/gru_cell_3/dropout/Cast?
while/gru_cell_3/dropout/Mul_1Mul while/gru_cell_3/dropout/Mul:z:0!while/gru_cell_3/dropout/Cast:y:0*
T0*
_output_shapes
:	?2 
while/gru_cell_3/dropout/Mul_1?
 while/gru_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_3/dropout_1/Const?
while/gru_cell_3/dropout_1/MulMul#while/gru_cell_3/ones_like:output:0)while/gru_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_3/dropout_1/Mul?
 while/gru_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/dropout_1/Shape?
7while/gru_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform)while/gru_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???29
7while/gru_cell_3/dropout_1/random_uniform/RandomUniform?
)while/gru_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_3/dropout_1/GreaterEqual/y?
'while/gru_cell_3/dropout_1/GreaterEqualGreaterEqual@while/gru_cell_3/dropout_1/random_uniform/RandomUniform:output:02while/gru_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_3/dropout_1/GreaterEqual?
while/gru_cell_3/dropout_1/CastCast+while/gru_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_3/dropout_1/Cast?
 while/gru_cell_3/dropout_1/Mul_1Mul"while/gru_cell_3/dropout_1/Mul:z:0#while/gru_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_3/dropout_1/Mul_1?
 while/gru_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_3/dropout_2/Const?
while/gru_cell_3/dropout_2/MulMul#while/gru_cell_3/ones_like:output:0)while/gru_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_3/dropout_2/Mul?
 while/gru_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/dropout_2/Shape?
7while/gru_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform)while/gru_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???29
7while/gru_cell_3/dropout_2/random_uniform/RandomUniform?
)while/gru_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_3/dropout_2/GreaterEqual/y?
'while/gru_cell_3/dropout_2/GreaterEqualGreaterEqual@while/gru_cell_3/dropout_2/random_uniform/RandomUniform:output:02while/gru_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_3/dropout_2/GreaterEqual?
while/gru_cell_3/dropout_2/CastCast+while/gru_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_3/dropout_2/Cast?
 while/gru_cell_3/dropout_2/Mul_1Mul"while/gru_cell_3/dropout_2/Mul:z:0#while/gru_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_3/dropout_2/Mul_1?
while/gru_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul?
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOp?
while/gru_cell_3/MatMulMatMulwhile/gru_cell_3/mul:z:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul?
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp?
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/BiasAdd?
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_3/split/split_dim?
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_3/split?
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_3/ReadVariableOp?
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack?
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1?
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2?
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice?
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_1?
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_3/Const?
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_3/split_1/split_dim?
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_3/split_1?
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add?
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid?
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_1?
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid_1?
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_1?
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_3/ReadVariableOp_1?
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack?
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1?
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2?
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1?
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul_1:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_2?
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Tanh?
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_2u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_3/sub/x?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/sub?
while/gru_cell_3/mul_3Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_3?
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_2:z:0while/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_3/BiasAdd/ReadVariableOp'while/gru_cell_3/BiasAdd/ReadVariableOp2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp2F
!while/gru_cell_3/ReadVariableOp_1!while/gru_cell_3/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_dense_1_layer_call_fn_10197

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_77342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_gru_3_layer_call_fn_11099

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_3_layer_call_and_return_conditional_losses_80902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
gru_3_while_cond_9975(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2(
$gru_3_while_less_gru_3_strided_slice>
:gru_3_while_gru_3_while_cond_9975___redundant_placeholder0>
:gru_3_while_gru_3_while_cond_9975___redundant_placeholder1>
:gru_3_while_gru_3_while_cond_9975___redundant_placeholder2>
:gru_3_while_gru_3_while_cond_9975___redundant_placeholder3
gru_3_while_identity
?
gru_3/while/LessLessgru_3_while_placeholder$gru_3_while_less_gru_3_strided_slice*
T0*
_output_shapes
: 2
gru_3/while/Lesso
gru_3/while/IdentityIdentitygru_3/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_3/while/Identity"5
gru_3_while_identitygru_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?0
?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12121

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likeW
mulMulinputsones_like:output:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slices
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0* 
_output_shapes
:::*
	num_split2	
split_1X
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:2
addI
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:2	
Sigmoid\
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:2
add_1O
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:2
	Sigmoid_1m
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpe
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2BatchMatMulV2	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:2

MatMul_2]
add_2AddV2split:output:2MatMul_2:output:0*
T0*
_output_shapes
:2
add_2B
TanhTanh	add_2:z:0*
T0*
_output_shapes
:2
Tanhm
mul_2/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpc
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_3P
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:2
add_3U
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

IdentityY

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
?
?
while_cond_8664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_8664___redundant_placeholder02
.while_while_cond_8664___redundant_placeholder12
.while_while_cond_8664___redundant_placeholder22
.while_while_cond_8664___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?J
?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12924

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Constw
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*
_output_shapes
:	?2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	?2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/Const}
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
dropout_1/Muls
dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_1/GreaterEqual}
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_1/Castz
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/Const}
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
dropout_2/Muls
dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_2/GreaterEqual}
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_2/Castz
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_2/Mul_1V
mulMulinputsdropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_sliceu
MatMul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0* 
_output_shapes
:::*
	num_split2	
split_1X
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:2
addI
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:2	
Sigmoid\
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:2
add_1O
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:2
	Sigmoid_1o
mul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpe
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2BatchMatMulV2	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:2

MatMul_2]
add_2AddV2split:output:2MatMul_2:output:0*
T0*
_output_shapes
:2
add_2B
TanhTanh	add_2:z:0*
T0*
_output_shapes
:2
Tanho
mul_2/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpc
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_3P
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:2
add_3U
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

IdentityY

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
?
?
while_cond_10545
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_10545___redundant_placeholder03
/while_while_cond_10545___redundant_placeholder13
/while_while_cond_10545___redundant_placeholder23
/while_while_cond_10545___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
??
?
?__inference_gru_3_layer_call_and_return_conditional_losses_8544

inputs=
)gru_cell_3_matmul_readvariableop_resource:
??9
*gru_cell_3_biasadd_readvariableop_resource:	?6
"gru_cell_3_readvariableop_resource:
??>
+gru_cell_3_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_3/BiasAdd/ReadVariableOp? gru_cell_3/MatMul/ReadVariableOp?"gru_cell_3/MatMul_1/ReadVariableOp?gru_cell_3/ReadVariableOp?gru_cell_3/ReadVariableOp_1?gru_cell_3/mul_1/ReadVariableOp?gru_cell_3/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/ones_like/Shape}
gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/ones_like/Const?
gru_cell_3/ones_likeFill#gru_cell_3/ones_like/Shape:output:0#gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/ones_likey
gru_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_3/dropout/Const?
gru_cell_3/dropout/MulMulgru_cell_3/ones_like:output:0!gru_cell_3/dropout/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout/Mul?
gru_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/dropout/Shape?
/gru_cell_3/dropout/random_uniform/RandomUniformRandomUniform!gru_cell_3/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??Q21
/gru_cell_3/dropout/random_uniform/RandomUniform?
!gru_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!gru_cell_3/dropout/GreaterEqual/y?
gru_cell_3/dropout/GreaterEqualGreaterEqual8gru_cell_3/dropout/random_uniform/RandomUniform:output:0*gru_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2!
gru_cell_3/dropout/GreaterEqual?
gru_cell_3/dropout/CastCast#gru_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_3/dropout/Cast?
gru_cell_3/dropout/Mul_1Mulgru_cell_3/dropout/Mul:z:0gru_cell_3/dropout/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout/Mul_1}
gru_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_3/dropout_1/Const?
gru_cell_3/dropout_1/MulMulgru_cell_3/ones_like:output:0#gru_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_1/Mul?
gru_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/dropout_1/Shape?
1gru_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform#gru_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???23
1gru_cell_3/dropout_1/random_uniform/RandomUniform?
#gru_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_3/dropout_1/GreaterEqual/y?
!gru_cell_3/dropout_1/GreaterEqualGreaterEqual:gru_cell_3/dropout_1/random_uniform/RandomUniform:output:0,gru_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_3/dropout_1/GreaterEqual?
gru_cell_3/dropout_1/CastCast%gru_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_3/dropout_1/Cast?
gru_cell_3/dropout_1/Mul_1Mulgru_cell_3/dropout_1/Mul:z:0gru_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_1/Mul_1}
gru_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_3/dropout_2/Const?
gru_cell_3/dropout_2/MulMulgru_cell_3/ones_like:output:0#gru_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_2/Mul?
gru_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/dropout_2/Shape?
1gru_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform#gru_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???23
1gru_cell_3/dropout_2/random_uniform/RandomUniform?
#gru_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_3/dropout_2/GreaterEqual/y?
!gru_cell_3/dropout_2/GreaterEqualGreaterEqual:gru_cell_3/dropout_2/random_uniform/RandomUniform:output:0,gru_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_3/dropout_2/GreaterEqual?
gru_cell_3/dropout_2/CastCast%gru_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_3/dropout_2/Cast?
gru_cell_3/dropout_2/Mul_1Mulgru_cell_3/dropout_2/Mul:z:0gru_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_2/Mul_1?
gru_cell_3/mulMulstrided_slice_1:output:0gru_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul?
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp?
gru_cell_3/MatMulMatMulgru_cell_3/mul:z:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul?
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp?
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/BiasAdd?
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split/split_dim?
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_3/split?
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp?
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack?
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1?
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2?
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice?
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp?
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_3/Const?
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split_1/split_dim?
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_3/split_1?
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid?
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid_1?
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_1/ReadVariableOp?
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid_1:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_1?
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp_1?
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack?
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1?
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2?
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1?
gru_cell_3/MatMul_2MatMulgru_cell_3/mul_1:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_2?
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Tanh?
gru_cell_3/mul_2/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_2/ReadVariableOp?
gru_cell_3/mul_2Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_2i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/sub/x?
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/sub~
gru_cell_3/mul_3Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_3?
gru_cell_3/add_3AddV2gru_cell_3/mul_2:z:0gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_8420*
condR
while_cond_8419*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1 ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2B
gru_cell_3/mul_2/ReadVariableOpgru_cell_3/mul_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
model_1_gru_3_while_cond_60028
4model_1_gru_3_while_model_1_gru_3_while_loop_counter>
:model_1_gru_3_while_model_1_gru_3_while_maximum_iterations#
model_1_gru_3_while_placeholder%
!model_1_gru_3_while_placeholder_1%
!model_1_gru_3_while_placeholder_28
4model_1_gru_3_while_less_model_1_gru_3_strided_sliceN
Jmodel_1_gru_3_while_model_1_gru_3_while_cond_6002___redundant_placeholder0N
Jmodel_1_gru_3_while_model_1_gru_3_while_cond_6002___redundant_placeholder1N
Jmodel_1_gru_3_while_model_1_gru_3_while_cond_6002___redundant_placeholder2N
Jmodel_1_gru_3_while_model_1_gru_3_while_cond_6002___redundant_placeholder3 
model_1_gru_3_while_identity
?
model_1/gru_3/while/LessLessmodel_1_gru_3_while_placeholder4model_1_gru_3_while_less_model_1_gru_3_strided_slice*
T0*
_output_shapes
: 2
model_1/gru_3/while/Less?
model_1/gru_3/while/IdentityIdentitymodel_1/gru_3/while/Less:z:0*
T0
*
_output_shapes
: 2
model_1/gru_3/while/Identity"E
model_1_gru_3_while_identity%model_1/gru_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?V
?
while_body_10351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_2_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
???
0while_gru_cell_2_biasadd_readvariableop_resource:	?<
(while_gru_cell_2_readvariableop_resource:
????'while/gru_cell_2/BiasAdd/ReadVariableOp?&while/gru_cell_2/MatMul/ReadVariableOp?while/gru_cell_2/ReadVariableOp?!while/gru_cell_2/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/ones_like/Shape?
 while/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_2/ones_like/Const?
while/gru_cell_2/ones_likeFill)while/gru_cell_2/ones_like/Shape:output:0)while/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/ones_like?
while/gru_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_2/ones_like:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOp?
while/gru_cell_2/MatMulMatMulwhile/gru_cell_2/mul:z:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul?
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp?
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/BiasAdd?
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_2/split/split_dim?
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_2/split?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_2/ReadVariableOp?
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack?
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1?
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2?
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_1?
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_2/Const?
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_2/split_1/split_dim?
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_2/split_1?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add?
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid?
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_1?
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid_1?
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_1?
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_2/ReadVariableOp_1?
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack?
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1?
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2?
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1?
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul_1:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_2?
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Tanh?
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_2u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_2/sub/x?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/sub?
while/gru_cell_2/mul_3Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_3?
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_2:z:0while/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_2/BiasAdd/ReadVariableOp'while/gru_cell_2/BiasAdd/ReadVariableOp2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp2F
!while/gru_cell_2/ReadVariableOp_1!while/gru_cell_2/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?!
?
while_body_7414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_3_7436_0:
??&
while_gru_cell_3_7438_0:	?+
while_gru_cell_3_7440_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_3_7436:
??$
while_gru_cell_3_7438:	?)
while_gru_cell_3_7440:
????(while/gru_cell_3/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/gru_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_3_7436_0while_gru_cell_3_7438_0while_gru_cell_3_7440_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_72482*
(while/gru_cell_3/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity1while/gru_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp)^while/gru_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"0
while_gru_cell_3_7436while_gru_cell_3_7436_0"0
while_gru_cell_3_7438while_gru_cell_3_7438_0"0
while_gru_cell_3_7440while_gru_cell_3_7440_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2T
(while/gru_cell_3/StatefulPartitionedCall(while/gru_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?V
?
while_body_7990
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
??A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_3_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
???
0while_gru_cell_3_biasadd_readvariableop_resource:	?<
(while_gru_cell_3_readvariableop_resource:
????'while/gru_cell_3/BiasAdd/ReadVariableOp?&while/gru_cell_3/MatMul/ReadVariableOp?while/gru_cell_3/ReadVariableOp?!while/gru_cell_3/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/ones_like/Shape?
 while/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_3/ones_like/Const?
while/gru_cell_3/ones_likeFill)while/gru_cell_3/ones_like/Shape:output:0)while/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/ones_like?
while/gru_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_3/ones_like:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul?
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOp?
while/gru_cell_3/MatMulMatMulwhile/gru_cell_3/mul:z:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul?
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp?
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/BiasAdd?
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_3/split/split_dim?
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_3/split?
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_3/ReadVariableOp?
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack?
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1?
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2?
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice?
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_1?
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_3/Const?
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_3/split_1/split_dim?
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_3/split_1?
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add?
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid?
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_1?
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid_1?
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_1?
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_3/ReadVariableOp_1?
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack?
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1?
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2?
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1?
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul_1:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_2?
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Tanh?
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_2u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_3/sub/x?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/sub?
while/gru_cell_3/mul_3Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_3?
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_2:z:0while/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_3/BiasAdd/ReadVariableOp'while/gru_cell_3/BiasAdd/ReadVariableOp2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp2F
!while/gru_cell_3/ReadVariableOp_1!while/gru_cell_3/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?4
?
?__inference_gru_3_layer_call_and_return_conditional_losses_7145

inputs"
gru_cell_3_7016:	?#
gru_cell_3_7018:
??
gru_cell_3_7020:	?#
gru_cell_3_7022:
??
identity??AssignVariableOp?ReadVariableOp?"gru_cell_3/StatefulPartitionedCall?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
"gru_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0gru_cell_3_7016gru_cell_3_7018gru_cell_3_7020gru_cell_3_7022*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_70152$
"gru_cell_3/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
timeq
ReadVariableOpReadVariableOpgru_cell_3_7016*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_3_7018gru_cell_3_7020gru_cell_3_7022*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_7031*
condR
while_cond_7030*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOpgru_cell_3_7016while:output:4^ReadVariableOp#^gru_cell_3/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp#^gru_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2H
"gru_cell_3/StatefulPartitionedCall"gru_cell_3/StatefulPartitionedCall2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
__inference__traced_save_12997
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop+
'savev2_notes_kernel_read_readvariableop)
%savev2_notes_bias_read_readvariableop+
'savev2_times_kernel_read_readvariableop)
%savev2_times_bias_read_readvariableop-
)savev2_lengths_kernel_read_readvariableop+
'savev2_lengths_bias_read_readvariableop6
2savev2_gru_2_gru_cell_2_kernel_read_readvariableop@
<savev2_gru_2_gru_cell_2_recurrent_kernel_read_readvariableop4
0savev2_gru_2_gru_cell_2_bias_read_readvariableop6
2savev2_gru_3_gru_cell_3_kernel_read_readvariableop@
<savev2_gru_3_gru_cell_3_recurrent_kernel_read_readvariableop4
0savev2_gru_3_gru_cell_3_bias_read_readvariableop-
)savev2_gru_2_variable_read_readvariableop-
)savev2_gru_3_variable_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop'savev2_notes_kernel_read_readvariableop%savev2_notes_bias_read_readvariableop'savev2_times_kernel_read_readvariableop%savev2_times_bias_read_readvariableop)savev2_lengths_kernel_read_readvariableop'savev2_lengths_bias_read_readvariableop2savev2_gru_2_gru_cell_2_kernel_read_readvariableop<savev2_gru_2_gru_cell_2_recurrent_kernel_read_readvariableop0savev2_gru_2_gru_cell_2_bias_read_readvariableop2savev2_gru_3_gru_cell_3_kernel_read_readvariableop<savev2_gru_3_gru_cell_3_recurrent_kernel_read_readvariableop0savev2_gru_3_gru_cell_3_bias_read_readvariableop)savev2_gru_2_variable_read_readvariableop)savev2_gru_3_variable_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:?:	?_:_:
??:?:
??:?:
??:
??:?:
??:
??:?:	?:	?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?_: 

_output_shapes
:_:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:&
"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?:%!

_output_shapes
:	?:

_output_shapes
: 
?z
?
while_body_11768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
??A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_3_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
???
0while_gru_cell_3_biasadd_readvariableop_resource:	?<
(while_gru_cell_3_readvariableop_resource:
????'while/gru_cell_3/BiasAdd/ReadVariableOp?&while/gru_cell_3/MatMul/ReadVariableOp?while/gru_cell_3/ReadVariableOp?!while/gru_cell_3/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/ones_like/Shape?
 while/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_3/ones_like/Const?
while/gru_cell_3/ones_likeFill)while/gru_cell_3/ones_like/Shape:output:0)while/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/ones_like?
while/gru_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2 
while/gru_cell_3/dropout/Const?
while/gru_cell_3/dropout/MulMul#while/gru_cell_3/ones_like:output:0'while/gru_cell_3/dropout/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/dropout/Mul?
while/gru_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
while/gru_cell_3/dropout/Shape?
5while/gru_cell_3/dropout/random_uniform/RandomUniformRandomUniform'while/gru_cell_3/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???27
5while/gru_cell_3/dropout/random_uniform/RandomUniform?
'while/gru_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2)
'while/gru_cell_3/dropout/GreaterEqual/y?
%while/gru_cell_3/dropout/GreaterEqualGreaterEqual>while/gru_cell_3/dropout/random_uniform/RandomUniform:output:00while/gru_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2'
%while/gru_cell_3/dropout/GreaterEqual?
while/gru_cell_3/dropout/CastCast)while/gru_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
while/gru_cell_3/dropout/Cast?
while/gru_cell_3/dropout/Mul_1Mul while/gru_cell_3/dropout/Mul:z:0!while/gru_cell_3/dropout/Cast:y:0*
T0*
_output_shapes
:	?2 
while/gru_cell_3/dropout/Mul_1?
 while/gru_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_3/dropout_1/Const?
while/gru_cell_3/dropout_1/MulMul#while/gru_cell_3/ones_like:output:0)while/gru_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_3/dropout_1/Mul?
 while/gru_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/dropout_1/Shape?
7while/gru_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform)while/gru_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???29
7while/gru_cell_3/dropout_1/random_uniform/RandomUniform?
)while/gru_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_3/dropout_1/GreaterEqual/y?
'while/gru_cell_3/dropout_1/GreaterEqualGreaterEqual@while/gru_cell_3/dropout_1/random_uniform/RandomUniform:output:02while/gru_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_3/dropout_1/GreaterEqual?
while/gru_cell_3/dropout_1/CastCast+while/gru_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_3/dropout_1/Cast?
 while/gru_cell_3/dropout_1/Mul_1Mul"while/gru_cell_3/dropout_1/Mul:z:0#while/gru_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_3/dropout_1/Mul_1?
 while/gru_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_3/dropout_2/Const?
while/gru_cell_3/dropout_2/MulMul#while/gru_cell_3/ones_like:output:0)while/gru_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_3/dropout_2/Mul?
 while/gru_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/dropout_2/Shape?
7while/gru_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform)while/gru_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???29
7while/gru_cell_3/dropout_2/random_uniform/RandomUniform?
)while/gru_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_3/dropout_2/GreaterEqual/y?
'while/gru_cell_3/dropout_2/GreaterEqualGreaterEqual@while/gru_cell_3/dropout_2/random_uniform/RandomUniform:output:02while/gru_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_3/dropout_2/GreaterEqual?
while/gru_cell_3/dropout_2/CastCast+while/gru_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_3/dropout_2/Cast?
 while/gru_cell_3/dropout_2/Mul_1Mul"while/gru_cell_3/dropout_2/Mul:z:0#while/gru_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_3/dropout_2/Mul_1?
while/gru_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul?
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOp?
while/gru_cell_3/MatMulMatMulwhile/gru_cell_3/mul:z:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul?
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp?
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/BiasAdd?
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_3/split/split_dim?
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_3/split?
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_3/ReadVariableOp?
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack?
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1?
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2?
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice?
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_1?
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_3/Const?
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_3/split_1/split_dim?
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_3/split_1?
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add?
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid?
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_1?
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid_1?
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_1?
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_3/ReadVariableOp_1?
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack?
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1?
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2?
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1?
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul_1:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_2?
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Tanh?
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_2u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_3/sub/x?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/sub?
while/gru_cell_3/mul_3Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_3?
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_2:z:0while/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_3/BiasAdd/ReadVariableOp'while/gru_cell_3/BiasAdd/ReadVariableOp2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp2F
!while/gru_cell_3/ReadVariableOp_1!while/gru_cell_3/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_8105

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_10350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_10350___redundant_placeholder03
/while_while_cond_10350___redundant_placeholder13
/while_while_cond_10350___redundant_placeholder23
/while_while_cond_10350___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?a
?	
gru_2_while_body_9291(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2%
!gru_2_while_gru_2_strided_slice_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0K
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
??G
8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0:	?D
0gru_2_while_gru_cell_2_readvariableop_resource_0:
??
gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4#
gru_2_while_gru_2_strided_slicea
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensorI
5gru_2_while_gru_cell_2_matmul_readvariableop_resource:
??E
6gru_2_while_gru_cell_2_biasadd_readvariableop_resource:	?B
.gru_2_while_gru_cell_2_readvariableop_resource:
????-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp?,gru_2/while/gru_cell_2/MatMul/ReadVariableOp?%gru_2/while/gru_cell_2/ReadVariableOp?'gru_2/while/gru_cell_2/ReadVariableOp_1?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype021
/gru_2/while/TensorArrayV2Read/TensorListGetItem?
&gru_2/while/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_2/while/gru_cell_2/ones_like/Shape?
&gru_2/while/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&gru_2/while/gru_cell_2/ones_like/Const?
 gru_2/while/gru_cell_2/ones_likeFill/gru_2/while/gru_cell_2/ones_like/Shape:output:0/gru_2/while/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2"
 gru_2/while/gru_cell_2/ones_like?
gru_2/while/gru_cell_2/mulMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:0)gru_2/while/gru_cell_2/ones_like:output:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/mul?
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp?
gru_2/while/gru_cell_2/MatMulMatMulgru_2/while/gru_cell_2/mul:z:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/MatMul?
-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02/
-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp?
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:05gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2 
gru_2/while/gru_cell_2/BiasAdd?
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_2/while/gru_cell_2/split/split_dim?
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_2/while/gru_cell_2/split?
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02'
%gru_2/while/gru_cell_2/ReadVariableOp?
*gru_2/while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_2/while/gru_cell_2/strided_slice/stack?
,gru_2/while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_2/while/gru_cell_2/strided_slice/stack_1?
,gru_2/while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_2/while/gru_cell_2/strided_slice/stack_2?
$gru_2/while/gru_cell_2/strided_sliceStridedSlice-gru_2/while/gru_cell_2/ReadVariableOp:value:03gru_2/while/gru_cell_2/strided_slice/stack:output:05gru_2/while/gru_cell_2/strided_slice/stack_1:output:05gru_2/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$gru_2/while/gru_cell_2/strided_slice?
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_2-gru_2/while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2!
gru_2/while/gru_cell_2/MatMul_1?
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_2/while/gru_cell_2/Const?
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_2/while/gru_cell_2/split_1/split_dim?
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/MatMul_1:product:0%gru_2/while/gru_cell_2/Const:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2 
gru_2/while/gru_cell_2/split_1?
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/add?
gru_2/while/gru_cell_2/SigmoidSigmoidgru_2/while/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2 
gru_2/while/gru_cell_2/Sigmoid?
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/add_1?
 gru_2/while/gru_cell_2/Sigmoid_1Sigmoid gru_2/while/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2"
 gru_2/while/gru_cell_2/Sigmoid_1?
gru_2/while/gru_cell_2/mul_1Mul$gru_2/while/gru_cell_2/Sigmoid_1:y:0gru_2_while_placeholder_2*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/mul_1?
'gru_2/while/gru_cell_2/ReadVariableOp_1ReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'gru_2/while/gru_cell_2/ReadVariableOp_1?
,gru_2/while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_2/while/gru_cell_2/strided_slice_1/stack?
.gru_2/while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_2/while/gru_cell_2/strided_slice_1/stack_1?
.gru_2/while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_2/while/gru_cell_2/strided_slice_1/stack_2?
&gru_2/while/gru_cell_2/strided_slice_1StridedSlice/gru_2/while/gru_cell_2/ReadVariableOp_1:value:05gru_2/while/gru_cell_2/strided_slice_1/stack:output:07gru_2/while/gru_cell_2/strided_slice_1/stack_1:output:07gru_2/while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2(
&gru_2/while/gru_cell_2/strided_slice_1?
gru_2/while/gru_cell_2/MatMul_2MatMul gru_2/while/gru_cell_2/mul_1:z:0/gru_2/while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2!
gru_2/while/gru_cell_2/MatMul_2?
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2)gru_2/while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/add_2?
gru_2/while/gru_cell_2/TanhTanh gru_2/while/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/Tanh?
gru_2/while/gru_cell_2/mul_2Mul"gru_2/while/gru_cell_2/Sigmoid:y:0gru_2_while_placeholder_2*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/mul_2?
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_2/while/gru_cell_2/sub/x?
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0"gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/sub?
gru_2/while/gru_cell_2/mul_3Mulgru_2/while/gru_cell_2/sub:z:0gru_2/while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/mul_3?
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_2:z:0 gru_2/while/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_2/while/gru_cell_2/add_3?
0gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_2_while_placeholder_1gru_2_while_placeholder gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_2/while/TensorArrayV2Write/TensorListSetItemh
gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add/y?
gru_2/while/addAddV2gru_2_while_placeholdergru_2/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/addl
gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_2/while/add_1/y?
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/add_1?
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: 2
gru_2/while/Identity?
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations^gru_2/while/NoOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_1?
gru_2/while/Identity_2Identitygru_2/while/add:z:0^gru_2/while/NoOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_2?
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_2/while/NoOp*
T0*
_output_shapes
: 2
gru_2/while/Identity_3?
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0^gru_2/while/NoOp*
T0*
_output_shapes
:	?2
gru_2/while/Identity_4?
gru_2/while/NoOpNoOp.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
gru_2/while/NoOp"D
gru_2_while_gru_2_strided_slice!gru_2_while_gru_2_strided_slice_0"r
6gru_2_while_gru_cell_2_biasadd_readvariableop_resource8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"?
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2^
-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp2\
,gru_2/while/gru_cell_2/MatMul/ReadVariableOp,gru_2/while/gru_cell_2/MatMul/ReadVariableOp2N
%gru_2/while/gru_cell_2/ReadVariableOp%gru_2/while/gru_cell_2/ReadVariableOp2R
'gru_2/while/gru_cell_2/ReadVariableOp_1'gru_2/while/gru_cell_2/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
??
?
@__inference_gru_3_layer_call_and_return_conditional_losses_11892

inputs=
)gru_cell_3_matmul_readvariableop_resource:
??9
*gru_cell_3_biasadd_readvariableop_resource:	?6
"gru_cell_3_readvariableop_resource:
??>
+gru_cell_3_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_3/BiasAdd/ReadVariableOp? gru_cell_3/MatMul/ReadVariableOp?"gru_cell_3/MatMul_1/ReadVariableOp?gru_cell_3/ReadVariableOp?gru_cell_3/ReadVariableOp_1?gru_cell_3/mul_1/ReadVariableOp?gru_cell_3/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/ones_like/Shape}
gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/ones_like/Const?
gru_cell_3/ones_likeFill#gru_cell_3/ones_like/Shape:output:0#gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/ones_likey
gru_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_3/dropout/Const?
gru_cell_3/dropout/MulMulgru_cell_3/ones_like:output:0!gru_cell_3/dropout/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout/Mul?
gru_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/dropout/Shape?
/gru_cell_3/dropout/random_uniform/RandomUniformRandomUniform!gru_cell_3/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???21
/gru_cell_3/dropout/random_uniform/RandomUniform?
!gru_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!gru_cell_3/dropout/GreaterEqual/y?
gru_cell_3/dropout/GreaterEqualGreaterEqual8gru_cell_3/dropout/random_uniform/RandomUniform:output:0*gru_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2!
gru_cell_3/dropout/GreaterEqual?
gru_cell_3/dropout/CastCast#gru_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_3/dropout/Cast?
gru_cell_3/dropout/Mul_1Mulgru_cell_3/dropout/Mul:z:0gru_cell_3/dropout/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout/Mul_1}
gru_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_3/dropout_1/Const?
gru_cell_3/dropout_1/MulMulgru_cell_3/ones_like:output:0#gru_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_1/Mul?
gru_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/dropout_1/Shape?
1gru_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform#gru_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??-23
1gru_cell_3/dropout_1/random_uniform/RandomUniform?
#gru_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_3/dropout_1/GreaterEqual/y?
!gru_cell_3/dropout_1/GreaterEqualGreaterEqual:gru_cell_3/dropout_1/random_uniform/RandomUniform:output:0,gru_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_3/dropout_1/GreaterEqual?
gru_cell_3/dropout_1/CastCast%gru_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_3/dropout_1/Cast?
gru_cell_3/dropout_1/Mul_1Mulgru_cell_3/dropout_1/Mul:z:0gru_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_1/Mul_1}
gru_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_3/dropout_2/Const?
gru_cell_3/dropout_2/MulMulgru_cell_3/ones_like:output:0#gru_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_2/Mul?
gru_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/dropout_2/Shape?
1gru_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform#gru_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??>23
1gru_cell_3/dropout_2/random_uniform/RandomUniform?
#gru_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_3/dropout_2/GreaterEqual/y?
!gru_cell_3/dropout_2/GreaterEqualGreaterEqual:gru_cell_3/dropout_2/random_uniform/RandomUniform:output:0,gru_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_3/dropout_2/GreaterEqual?
gru_cell_3/dropout_2/CastCast%gru_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_3/dropout_2/Cast?
gru_cell_3/dropout_2/Mul_1Mulgru_cell_3/dropout_2/Mul:z:0gru_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/dropout_2/Mul_1?
gru_cell_3/mulMulstrided_slice_1:output:0gru_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul?
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp?
gru_cell_3/MatMulMatMulgru_cell_3/mul:z:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul?
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp?
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/BiasAdd?
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split/split_dim?
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_3/split?
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp?
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack?
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1?
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2?
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice?
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp?
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_3/Const?
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split_1/split_dim?
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_3/split_1?
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid?
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid_1?
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_1/ReadVariableOp?
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid_1:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_1?
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp_1?
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack?
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1?
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2?
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1?
gru_cell_3/MatMul_2MatMulgru_cell_3/mul_1:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_2?
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Tanh?
gru_cell_3/mul_2/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_2/ReadVariableOp?
gru_cell_3/mul_2Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_2i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/sub/x?
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/sub~
gru_cell_3/mul_3Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_3?
gru_cell_3/add_3AddV2gru_cell_3/mul_2:z:0gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11768*
condR
while_cond_11767*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1 ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2B
gru_cell_3/mul_2/ReadVariableOpgru_cell_3/mul_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?!
?
while_body_6658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_2_6680_0:
??&
while_gru_cell_2_6682_0:	?+
while_gru_cell_2_6684_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_2_6680:
??$
while_gru_cell_2_6682:	?)
while_gru_cell_2_6684:
????(while/gru_cell_2/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/gru_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2_6680_0while_gru_cell_2_6682_0while_gru_cell_2_6684_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_64922*
(while/gru_cell_2/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity1while/gru_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp)^while/gru_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"0
while_gru_cell_2_6680while_gru_cell_2_6680_0"0
while_gru_cell_2_6682while_gru_cell_2_6682_0"0
while_gru_cell_2_6684while_gru_cell_2_6684_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2T
(while/gru_cell_2/StatefulPartitionedCall(while/gru_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?l
?
@__inference_gru_2_layer_call_and_return_conditional_losses_10841

inputs=
)gru_cell_2_matmul_readvariableop_resource:
??9
*gru_cell_2_biasadd_readvariableop_resource:	?6
"gru_cell_2_readvariableop_resource:
??>
+gru_cell_2_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_2/BiasAdd/ReadVariableOp? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?gru_cell_2/ReadVariableOp_1?gru_cell_2/mul_1/ReadVariableOp?gru_cell_2/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/ones_like/Shape}
gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/ones_like/Const?
gru_cell_2/ones_likeFill#gru_cell_2/ones_like/Shape:output:0#gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/ones_like?
gru_cell_2/mulMulstrided_slice_1:output:0gru_cell_2/ones_like:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp?
gru_cell_2/MatMulMatMulgru_cell_2/mul:z:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul?
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp?
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/BiasAdd?
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split/split_dim?
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_2/split?
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp?
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack?
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1?
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2?
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp?
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_2/Const?
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split_1/split_dim?
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_2/split_1?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid?
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid_1?
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_1/ReadVariableOp?
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid_1:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_1?
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp_1?
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack?
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1?
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2?
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1?
gru_cell_2/MatMul_2MatMulgru_cell_2/mul_1:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_2?
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Tanh?
gru_cell_2/mul_2/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_2/ReadVariableOp?
gru_cell_2/mul_2Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_2i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/sub/x?
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/sub~
gru_cell_2/mul_3Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_3?
gru_cell_2/add_3AddV2gru_cell_2/mul_2:z:0gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_10741*
condR
while_cond_10740*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1 ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2B
gru_cell_2/mul_2/ReadVariableOpgru_cell_2/mul_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?(
?
A__inference_model_1_layer_call_and_return_conditional_losses_8218

inputs 
dense_1_7735:
??
dense_1_7737:	?

gru_2_7911:
??

gru_2_7913:	?

gru_2_7915:
??

gru_2_7917:	?

gru_3_8091:
??

gru_3_8093:	?

gru_3_8095:
??

gru_3_8097:	? 
lengths_8138:
??
lengths_8140:	?

times_8174:
??

times_8176:	?

notes_8210:	?_

notes_8212:_
identity

identity_1

identity_2??dense_1/StatefulPartitionedCall?gru_2/StatefulPartitionedCall?gru_3/StatefulPartitionedCall?lengths/StatefulPartitionedCall?notes/StatefulPartitionedCall?times/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_7735dense_1_7737*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_77342!
dense_1/StatefulPartitionedCall?
gru_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0
gru_2_7911
gru_2_7913
gru_2_7915
gru_2_7917*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_2_layer_call_and_return_conditional_losses_79102
gru_2/StatefulPartitionedCall?
gru_3/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0
gru_3_8091
gru_3_8093
gru_3_8095
gru_3_8097*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_3_layer_call_and_return_conditional_losses_80902
gru_3/StatefulPartitionedCall?
dropout_1/PartitionedCallPartitionedCall&gru_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_81052
dropout_1/PartitionedCall?
lengths/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0lengths_8138lengths_8140*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_lengths_layer_call_and_return_conditional_losses_81372!
lengths/StatefulPartitionedCall?
times/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0
times_8174
times_8176*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_times_layer_call_and_return_conditional_losses_81732
times/StatefulPartitionedCall?
notes/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0
notes_8210
notes_8212*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????_*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_notes_layer_call_and_return_conditional_losses_82092
notes/StatefulPartitionedCall?
IdentityIdentity&notes/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity?

Identity_1Identity&times/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1?

Identity_2Identity(lengths/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2?
NoOpNoOp ^dense_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall2B
lengths/StatefulPartitionedCalllengths/StatefulPartitionedCall2>
notes/StatefulPartitionedCallnotes/StatefulPartitionedCall2>
times/StatefulPartitionedCalltimes/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_gru_3_layer_call_fn_11073
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_3_layer_call_and_return_conditional_losses_71452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0
? 
?
A__inference_lengths_layer_call_and_return_conditional_losses_8137

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAddp
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
while_cond_11182
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_11182___redundant_placeholder03
/while_while_cond_11182___redundant_placeholder13
/while_while_cond_11182___redundant_placeholder23
/while_while_cond_11182___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?0
?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12565

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likeW
mulMulinputsones_like:output:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slices
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0* 
_output_shapes
:::*
	num_split2	
split_1X
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:2
addI
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:2	
Sigmoid\
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:2
add_1O
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:2
	Sigmoid_1m
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpe
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2BatchMatMulV2	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:2

MatMul_2]
add_2AddV2split:output:2MatMul_2:output:0*
T0*
_output_shapes
:2
add_2B
TanhTanh	add_2:z:0*
T0*
_output_shapes
:2
Tanhm
mul_2/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpc
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_3P
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:2
add_3U
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

IdentityY

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
?a
?	
gru_3_while_body_9458(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2%
!gru_3_while_gru_3_strided_slice_0c
_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0K
7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0:
??G
8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0:	?D
0gru_3_while_gru_cell_3_readvariableop_resource_0:
??
gru_3_while_identity
gru_3_while_identity_1
gru_3_while_identity_2
gru_3_while_identity_3
gru_3_while_identity_4#
gru_3_while_gru_3_strided_slicea
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensorI
5gru_3_while_gru_cell_3_matmul_readvariableop_resource:
??E
6gru_3_while_gru_cell_3_biasadd_readvariableop_resource:	?B
.gru_3_while_gru_cell_3_readvariableop_resource:
????-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp?,gru_3/while/gru_cell_3/MatMul/ReadVariableOp?%gru_3/while/gru_cell_3/ReadVariableOp?'gru_3/while/gru_cell_3/ReadVariableOp_1?
=gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
/gru_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0gru_3_while_placeholderFgru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype021
/gru_3/while/TensorArrayV2Read/TensorListGetItem?
&gru_3/while/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_3/while/gru_cell_3/ones_like/Shape?
&gru_3/while/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&gru_3/while/gru_cell_3/ones_like/Const?
 gru_3/while/gru_cell_3/ones_likeFill/gru_3/while/gru_cell_3/ones_like/Shape:output:0/gru_3/while/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2"
 gru_3/while/gru_cell_3/ones_like?
gru_3/while/gru_cell_3/mulMul6gru_3/while/TensorArrayV2Read/TensorListGetItem:item:0)gru_3/while/gru_cell_3/ones_like:output:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/mul?
,gru_3/while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02.
,gru_3/while/gru_cell_3/MatMul/ReadVariableOp?
gru_3/while/gru_cell_3/MatMulMatMulgru_3/while/gru_cell_3/mul:z:04gru_3/while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/MatMul?
-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02/
-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp?
gru_3/while/gru_cell_3/BiasAddBiasAdd'gru_3/while/gru_cell_3/MatMul:product:05gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2 
gru_3/while/gru_cell_3/BiasAdd?
&gru_3/while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_3/while/gru_cell_3/split/split_dim?
gru_3/while/gru_cell_3/splitSplit/gru_3/while/gru_cell_3/split/split_dim:output:0'gru_3/while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_3/while/gru_cell_3/split?
%gru_3/while/gru_cell_3/ReadVariableOpReadVariableOp0gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02'
%gru_3/while/gru_cell_3/ReadVariableOp?
*gru_3/while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_3/while/gru_cell_3/strided_slice/stack?
,gru_3/while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_3/while/gru_cell_3/strided_slice/stack_1?
,gru_3/while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_3/while/gru_cell_3/strided_slice/stack_2?
$gru_3/while/gru_cell_3/strided_sliceStridedSlice-gru_3/while/gru_cell_3/ReadVariableOp:value:03gru_3/while/gru_cell_3/strided_slice/stack:output:05gru_3/while/gru_cell_3/strided_slice/stack_1:output:05gru_3/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$gru_3/while/gru_cell_3/strided_slice?
gru_3/while/gru_cell_3/MatMul_1MatMulgru_3_while_placeholder_2-gru_3/while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2!
gru_3/while/gru_cell_3/MatMul_1?
gru_3/while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_3/while/gru_cell_3/Const?
(gru_3/while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_3/while/gru_cell_3/split_1/split_dim?
gru_3/while/gru_cell_3/split_1SplitV)gru_3/while/gru_cell_3/MatMul_1:product:0%gru_3/while/gru_cell_3/Const:output:01gru_3/while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2 
gru_3/while/gru_cell_3/split_1?
gru_3/while/gru_cell_3/addAddV2%gru_3/while/gru_cell_3/split:output:0'gru_3/while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/add?
gru_3/while/gru_cell_3/SigmoidSigmoidgru_3/while/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2 
gru_3/while/gru_cell_3/Sigmoid?
gru_3/while/gru_cell_3/add_1AddV2%gru_3/while/gru_cell_3/split:output:1'gru_3/while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/add_1?
 gru_3/while/gru_cell_3/Sigmoid_1Sigmoid gru_3/while/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2"
 gru_3/while/gru_cell_3/Sigmoid_1?
gru_3/while/gru_cell_3/mul_1Mul$gru_3/while/gru_cell_3/Sigmoid_1:y:0gru_3_while_placeholder_2*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/mul_1?
'gru_3/while/gru_cell_3/ReadVariableOp_1ReadVariableOp0gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'gru_3/while/gru_cell_3/ReadVariableOp_1?
,gru_3/while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_3/while/gru_cell_3/strided_slice_1/stack?
.gru_3/while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_3/while/gru_cell_3/strided_slice_1/stack_1?
.gru_3/while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_3/while/gru_cell_3/strided_slice_1/stack_2?
&gru_3/while/gru_cell_3/strided_slice_1StridedSlice/gru_3/while/gru_cell_3/ReadVariableOp_1:value:05gru_3/while/gru_cell_3/strided_slice_1/stack:output:07gru_3/while/gru_cell_3/strided_slice_1/stack_1:output:07gru_3/while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2(
&gru_3/while/gru_cell_3/strided_slice_1?
gru_3/while/gru_cell_3/MatMul_2MatMul gru_3/while/gru_cell_3/mul_1:z:0/gru_3/while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2!
gru_3/while/gru_cell_3/MatMul_2?
gru_3/while/gru_cell_3/add_2AddV2%gru_3/while/gru_cell_3/split:output:2)gru_3/while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/add_2?
gru_3/while/gru_cell_3/TanhTanh gru_3/while/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/Tanh?
gru_3/while/gru_cell_3/mul_2Mul"gru_3/while/gru_cell_3/Sigmoid:y:0gru_3_while_placeholder_2*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/mul_2?
gru_3/while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_3/while/gru_cell_3/sub/x?
gru_3/while/gru_cell_3/subSub%gru_3/while/gru_cell_3/sub/x:output:0"gru_3/while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/sub?
gru_3/while/gru_cell_3/mul_3Mulgru_3/while/gru_cell_3/sub:z:0gru_3/while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/mul_3?
gru_3/while/gru_cell_3/add_3AddV2 gru_3/while/gru_cell_3/mul_2:z:0 gru_3/while/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_3/while/gru_cell_3/add_3?
0gru_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_3_while_placeholder_1gru_3_while_placeholder gru_3/while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_3/while/TensorArrayV2Write/TensorListSetItemh
gru_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_3/while/add/y?
gru_3/while/addAddV2gru_3_while_placeholdergru_3/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_3/while/addl
gru_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_3/while/add_1/y?
gru_3/while/add_1AddV2$gru_3_while_gru_3_while_loop_countergru_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_3/while/add_1?
gru_3/while/IdentityIdentitygru_3/while/add_1:z:0^gru_3/while/NoOp*
T0*
_output_shapes
: 2
gru_3/while/Identity?
gru_3/while/Identity_1Identity*gru_3_while_gru_3_while_maximum_iterations^gru_3/while/NoOp*
T0*
_output_shapes
: 2
gru_3/while/Identity_1?
gru_3/while/Identity_2Identitygru_3/while/add:z:0^gru_3/while/NoOp*
T0*
_output_shapes
: 2
gru_3/while/Identity_2?
gru_3/while/Identity_3Identity@gru_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^gru_3/while/NoOp*
T0*
_output_shapes
: 2
gru_3/while/Identity_3?
gru_3/while/Identity_4Identity gru_3/while/gru_cell_3/add_3:z:0^gru_3/while/NoOp*
T0*
_output_shapes
:	?2
gru_3/while/Identity_4?
gru_3/while/NoOpNoOp.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
gru_3/while/NoOp"D
gru_3_while_gru_3_strided_slice!gru_3_while_gru_3_strided_slice_0"r
6gru_3_while_gru_cell_3_biasadd_readvariableop_resource8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0"p
5gru_3_while_gru_cell_3_matmul_readvariableop_resource7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0"b
.gru_3_while_gru_cell_3_readvariableop_resource0gru_3_while_gru_cell_3_readvariableop_resource_0"5
gru_3_while_identitygru_3/while/Identity:output:0"9
gru_3_while_identity_1gru_3/while/Identity_1:output:0"9
gru_3_while_identity_2gru_3/while/Identity_2:output:0"9
gru_3_while_identity_3gru_3/while/Identity_3:output:0"9
gru_3_while_identity_4gru_3/while/Identity_4:output:0"?
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2^
-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp2\
,gru_3/while/gru_cell_3/MatMul/ReadVariableOp,gru_3/while/gru_cell_3/MatMul/ReadVariableOp2N
%gru_3/while/gru_cell_3/ReadVariableOp%gru_3/while/gru_cell_3/ReadVariableOp2R
'gru_3/while/gru_cell_3/ReadVariableOp_1'gru_3/while/gru_cell_3/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
? 
?
@__inference_notes_layer_call_and_return_conditional_losses_11958

inputs4
!tensordot_readvariableop_resource:	?_-
biasadd_readvariableop_resource:_
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?_*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????_2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:_*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????_2	
BiasAddo
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?4
?
?__inference_gru_3_layer_call_and_return_conditional_losses_7478

inputs"
gru_cell_3_7399:	?#
gru_cell_3_7401:
??
gru_cell_3_7403:	?#
gru_cell_3_7405:
??
identity??AssignVariableOp?ReadVariableOp?"gru_cell_3/StatefulPartitionedCall?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
"gru_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0gru_cell_3_7399gru_cell_3_7401gru_cell_3_7403gru_cell_3_7405*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_73542$
"gru_cell_3/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
timeq
ReadVariableOpReadVariableOpgru_cell_3_7399*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_3_7401gru_cell_3_7403gru_cell_3_7405*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_7414*
condR
while_cond_7413*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOpgru_cell_3_7399while:output:4^ReadVariableOp#^gru_cell_3/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp#^gru_cell_3/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2H
"gru_cell_3/StatefulPartitionedCall"gru_cell_3/StatefulPartitionedCall2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
model_1_gru_2_while_cond_58358
4model_1_gru_2_while_model_1_gru_2_while_loop_counter>
:model_1_gru_2_while_model_1_gru_2_while_maximum_iterations#
model_1_gru_2_while_placeholder%
!model_1_gru_2_while_placeholder_1%
!model_1_gru_2_while_placeholder_28
4model_1_gru_2_while_less_model_1_gru_2_strided_sliceN
Jmodel_1_gru_2_while_model_1_gru_2_while_cond_5835___redundant_placeholder0N
Jmodel_1_gru_2_while_model_1_gru_2_while_cond_5835___redundant_placeholder1N
Jmodel_1_gru_2_while_model_1_gru_2_while_cond_5835___redundant_placeholder2N
Jmodel_1_gru_2_while_model_1_gru_2_while_cond_5835___redundant_placeholder3 
model_1_gru_2_while_identity
?
model_1/gru_2/while/LessLessmodel_1_gru_2_while_placeholder4model_1_gru_2_while_less_model_1_gru_2_strided_slice*
T0*
_output_shapes
: 2
model_1/gru_2/while/Less?
model_1/gru_2/while/IdentityIdentitymodel_1/gru_2/while/Less:z:0*
T0
*
_output_shapes
: 2
model_1/gru_2/while/Identity"E
model_1_gru_2_while_identity%model_1/gru_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	?: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
:
?	
?
*__inference_gru_cell_3_layer_call_fn_12668

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

::*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_126572
StatefulPartitionedCalll
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:2

Identityp

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	?
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
?z
?
while_body_10546
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_2_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
???
0while_gru_cell_2_biasadd_readvariableop_resource:	?<
(while_gru_cell_2_readvariableop_resource:
????'while/gru_cell_2/BiasAdd/ReadVariableOp?&while/gru_cell_2/MatMul/ReadVariableOp?while/gru_cell_2/ReadVariableOp?!while/gru_cell_2/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/ones_like/Shape?
 while/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_2/ones_like/Const?
while/gru_cell_2/ones_likeFill)while/gru_cell_2/ones_like/Shape:output:0)while/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/ones_like?
while/gru_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2 
while/gru_cell_2/dropout/Const?
while/gru_cell_2/dropout/MulMul#while/gru_cell_2/ones_like:output:0'while/gru_cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/dropout/Mul?
while/gru_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
while/gru_cell_2/dropout/Shape?
5while/gru_cell_2/dropout/random_uniform/RandomUniformRandomUniform'while/gru_cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??I27
5while/gru_cell_2/dropout/random_uniform/RandomUniform?
'while/gru_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2)
'while/gru_cell_2/dropout/GreaterEqual/y?
%while/gru_cell_2/dropout/GreaterEqualGreaterEqual>while/gru_cell_2/dropout/random_uniform/RandomUniform:output:00while/gru_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2'
%while/gru_cell_2/dropout/GreaterEqual?
while/gru_cell_2/dropout/CastCast)while/gru_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
while/gru_cell_2/dropout/Cast?
while/gru_cell_2/dropout/Mul_1Mul while/gru_cell_2/dropout/Mul:z:0!while/gru_cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	?2 
while/gru_cell_2/dropout/Mul_1?
 while/gru_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_2/dropout_1/Const?
while/gru_cell_2/dropout_1/MulMul#while/gru_cell_2/ones_like:output:0)while/gru_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_2/dropout_1/Mul?
 while/gru_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/dropout_1/Shape?
7while/gru_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform)while/gru_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???29
7while/gru_cell_2/dropout_1/random_uniform/RandomUniform?
)while/gru_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_2/dropout_1/GreaterEqual/y?
'while/gru_cell_2/dropout_1/GreaterEqualGreaterEqual@while/gru_cell_2/dropout_1/random_uniform/RandomUniform:output:02while/gru_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_2/dropout_1/GreaterEqual?
while/gru_cell_2/dropout_1/CastCast+while/gru_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_2/dropout_1/Cast?
 while/gru_cell_2/dropout_1/Mul_1Mul"while/gru_cell_2/dropout_1/Mul:z:0#while/gru_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_2/dropout_1/Mul_1?
 while/gru_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_2/dropout_2/Const?
while/gru_cell_2/dropout_2/MulMul#while/gru_cell_2/ones_like:output:0)while/gru_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_2/dropout_2/Mul?
 while/gru_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/dropout_2/Shape?
7while/gru_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform)while/gru_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2?֓29
7while/gru_cell_2/dropout_2/random_uniform/RandomUniform?
)while/gru_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_2/dropout_2/GreaterEqual/y?
'while/gru_cell_2/dropout_2/GreaterEqualGreaterEqual@while/gru_cell_2/dropout_2/random_uniform/RandomUniform:output:02while/gru_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_2/dropout_2/GreaterEqual?
while/gru_cell_2/dropout_2/CastCast+while/gru_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_2/dropout_2/Cast?
 while/gru_cell_2/dropout_2/Mul_1Mul"while/gru_cell_2/dropout_2/Mul:z:0#while/gru_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_2/dropout_2/Mul_1?
while/gru_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOp?
while/gru_cell_2/MatMulMatMulwhile/gru_cell_2/mul:z:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul?
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp?
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/BiasAdd?
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_2/split/split_dim?
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_2/split?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_2/ReadVariableOp?
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack?
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1?
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2?
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_1?
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_2/Const?
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_2/split_1/split_dim?
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_2/split_1?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add?
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid?
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_1?
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid_1?
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_1?
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_2/ReadVariableOp_1?
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack?
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1?
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2?
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1?
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul_1:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_2?
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Tanh?
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_2u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_2/sub/x?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/sub?
while/gru_cell_2/mul_3Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_3?
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_2:z:0while/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_2/BiasAdd/ReadVariableOp'while/gru_cell_2/BiasAdd/ReadVariableOp2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp2F
!while/gru_cell_2/ReadVariableOp_1!while/gru_cell_2/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?V
?
while_body_11183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
??A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_3_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
???
0while_gru_cell_3_biasadd_readvariableop_resource:	?<
(while_gru_cell_3_readvariableop_resource:
????'while/gru_cell_3/BiasAdd/ReadVariableOp?&while/gru_cell_3/MatMul/ReadVariableOp?while/gru_cell_3/ReadVariableOp?!while/gru_cell_3/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/ones_like/Shape?
 while/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_3/ones_like/Const?
while/gru_cell_3/ones_likeFill)while/gru_cell_3/ones_like/Shape:output:0)while/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/ones_like?
while/gru_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_3/ones_like:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul?
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOp?
while/gru_cell_3/MatMulMatMulwhile/gru_cell_3/mul:z:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul?
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp?
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/BiasAdd?
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_3/split/split_dim?
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_3/split?
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_3/ReadVariableOp?
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack?
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1?
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2?
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice?
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_1?
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_3/Const?
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_3/split_1/split_dim?
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_3/split_1?
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add?
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid?
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_1?
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid_1?
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_1?
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_3/ReadVariableOp_1?
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack?
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1?
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2?
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1?
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul_1:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_2?
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Tanh?
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_2u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_3/sub/x?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/sub?
while/gru_cell_3/mul_3Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_3?
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_2:z:0while/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_3/BiasAdd/ReadVariableOp'while/gru_cell_3/BiasAdd/ReadVariableOp2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp2F
!while/gru_cell_3/ReadVariableOp_1!while/gru_cell_3/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?,
?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12328

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1s
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likeW
mulMulinputsones_like:output:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicej
MatMul_1MatMulstates_0strided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1X
mul_1MulSigmoid_1:y:0states_0*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
TanhV
mul_2MulSigmoid:y:0states_0*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	?
 
_user_specified_nameinputs:IE

_output_shapes
:	?
"
_user_specified_name
states/0
? 
?
?__inference_times_layer_call_and_return_conditional_losses_8173

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAddp
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_7102

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1s
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likeW
mulMulinputsones_like:output:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_sliceh
MatMul_1MatMulstatesstrided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1V
mul_1MulSigmoid_1:y:0states*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
TanhT
mul_2MulSigmoid:y:0states*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	?
 
_user_specified_nameinputs:GC

_output_shapes
:	?
 
_user_specified_namestates
?!
?
while_body_7031
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_3_7103_0:
??&
while_gru_cell_3_7105_0:	?+
while_gru_cell_3_7107_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_3_7103:
??$
while_gru_cell_3_7105:	?)
while_gru_cell_3_7107:
????(while/gru_cell_3/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/gru_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_3_7103_0while_gru_cell_3_7105_0while_gru_cell_3_7107_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_71022*
(while/gru_cell_3/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_3/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity1while/gru_cell_3/StatefulPartitionedCall:output:1^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp)^while/gru_cell_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"0
while_gru_cell_3_7103while_gru_cell_3_7103_0"0
while_gru_cell_3_7105while_gru_cell_3_7105_0"0
while_gru_cell_3_7107while_gru_cell_3_7107_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2T
(while/gru_cell_3/StatefulPartitionedCall(while/gru_cell_3/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?	
?
*__inference_gru_cell_2_layer_call_fn_12224

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

::*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_122132
StatefulPartitionedCalll
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:2

Identityp

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	?
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
?
?
%__inference_gru_2_layer_call_fn_10280

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_2_layer_call_and_return_conditional_losses_87892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
*__inference_gru_cell_2_layer_call_fn_12050

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_63462
StatefulPartitionedCalls
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	?2

Identityw

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:	?2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	?
 
_user_specified_nameinputs:IE

_output_shapes
:	?
"
_user_specified_name
states/0
?*
?
A__inference_model_1_layer_call_and_return_conditional_losses_8898

inputs 
dense_1_8856:
??
dense_1_8858:	?

gru_2_8861:
??

gru_2_8863:	?

gru_2_8865:
??

gru_2_8867:	?

gru_3_8870:
??

gru_3_8872:	?

gru_3_8874:
??

gru_3_8876:	? 
lengths_8880:
??
lengths_8882:	?

times_8885:
??

times_8887:	?

notes_8890:	?_

notes_8892:_
identity

identity_1

identity_2??dense_1/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?gru_2/StatefulPartitionedCall?gru_3/StatefulPartitionedCall?lengths/StatefulPartitionedCall?notes/StatefulPartitionedCall?times/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_8856dense_1_8858*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_77342!
dense_1/StatefulPartitionedCall?
gru_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0
gru_2_8861
gru_2_8863
gru_2_8865
gru_2_8867*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_2_layer_call_and_return_conditional_losses_87892
gru_2/StatefulPartitionedCall?
gru_3/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0
gru_3_8870
gru_3_8872
gru_3_8874
gru_3_8876*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_3_layer_call_and_return_conditional_losses_85442
gru_3/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&gru_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_83072#
!dropout_1/StatefulPartitionedCall?
lengths/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0lengths_8880lengths_8882*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *J
fERC
A__inference_lengths_layer_call_and_return_conditional_losses_81372!
lengths/StatefulPartitionedCall?
times/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0
times_8885
times_8887*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_times_layer_call_and_return_conditional_losses_81732
times/StatefulPartitionedCall?
notes/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0
notes_8890
notes_8892*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????_*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_notes_layer_call_and_return_conditional_losses_82092
notes/StatefulPartitionedCall?
IdentityIdentity&notes/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity?

Identity_1Identity&times/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_1?

Identity_2Identity(lengths/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2?
NoOpNoOp ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall2B
lengths/StatefulPartitionedCalllengths/StatefulPartitionedCall2>
notes/StatefulPartitionedCallnotes/StatefulPartitionedCall2>
times/StatefulPartitionedCalltimes/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?!
?
B__inference_dense_1_layer_call_and_return_conditional_losses_10228

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd]
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:??????????2
Tanhh
IdentityIdentityTanh:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_gru_3_layer_call_fn_11086
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:
??
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_3_layer_call_and_return_conditional_losses_74782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:??????????
"
_user_specified_name
inputs/0
?p
?
model_1_gru_2_while_body_58368
4model_1_gru_2_while_model_1_gru_2_while_loop_counter>
:model_1_gru_2_while_model_1_gru_2_while_maximum_iterations#
model_1_gru_2_while_placeholder%
!model_1_gru_2_while_placeholder_1%
!model_1_gru_2_while_placeholder_25
1model_1_gru_2_while_model_1_gru_2_strided_slice_0s
omodel_1_gru_2_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_2_tensorarrayunstack_tensorlistfromtensor_0S
?model_1_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
??O
@model_1_gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0:	?L
8model_1_gru_2_while_gru_cell_2_readvariableop_resource_0:
?? 
model_1_gru_2_while_identity"
model_1_gru_2_while_identity_1"
model_1_gru_2_while_identity_2"
model_1_gru_2_while_identity_3"
model_1_gru_2_while_identity_43
/model_1_gru_2_while_model_1_gru_2_strided_sliceq
mmodel_1_gru_2_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_2_tensorarrayunstack_tensorlistfromtensorQ
=model_1_gru_2_while_gru_cell_2_matmul_readvariableop_resource:
??M
>model_1_gru_2_while_gru_cell_2_biasadd_readvariableop_resource:	?J
6model_1_gru_2_while_gru_cell_2_readvariableop_resource:
????5model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp?4model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp?-model_1/gru_2/while/gru_cell_2/ReadVariableOp?/model_1/gru_2/while/gru_cell_2/ReadVariableOp_1?
Emodel_1/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2G
Emodel_1/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
7model_1/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemomodel_1_gru_2_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_2_tensorarrayunstack_tensorlistfromtensor_0model_1_gru_2_while_placeholderNmodel_1/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype029
7model_1/gru_2/while/TensorArrayV2Read/TensorListGetItem?
.model_1/gru_2/while/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      20
.model_1/gru_2/while/gru_cell_2/ones_like/Shape?
.model_1/gru_2/while/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.model_1/gru_2/while/gru_cell_2/ones_like/Const?
(model_1/gru_2/while/gru_cell_2/ones_likeFill7model_1/gru_2/while/gru_cell_2/ones_like/Shape:output:07model_1/gru_2/while/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2*
(model_1/gru_2/while/gru_cell_2/ones_like?
"model_1/gru_2/while/gru_cell_2/mulMul>model_1/gru_2/while/TensorArrayV2Read/TensorListGetItem:item:01model_1/gru_2/while/gru_cell_2/ones_like:output:0*
T0*
_output_shapes
:	?2$
"model_1/gru_2/while/gru_cell_2/mul?
4model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp?model_1_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype026
4model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp?
%model_1/gru_2/while/gru_cell_2/MatMulMatMul&model_1/gru_2/while/gru_cell_2/mul:z:0<model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2'
%model_1/gru_2/while/gru_cell_2/MatMul?
5model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp@model_1_gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype027
5model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp?
&model_1/gru_2/while/gru_cell_2/BiasAddBiasAdd/model_1/gru_2/while/gru_cell_2/MatMul:product:0=model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2(
&model_1/gru_2/while/gru_cell_2/BiasAdd?
.model_1/gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.model_1/gru_2/while/gru_cell_2/split/split_dim?
$model_1/gru_2/while/gru_cell_2/splitSplit7model_1/gru_2/while/gru_cell_2/split/split_dim:output:0/model_1/gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2&
$model_1/gru_2/while/gru_cell_2/split?
-model_1/gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp8model_1_gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02/
-model_1/gru_2/while/gru_cell_2/ReadVariableOp?
2model_1/gru_2/while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2model_1/gru_2/while/gru_cell_2/strided_slice/stack?
4model_1/gru_2/while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4model_1/gru_2/while/gru_cell_2/strided_slice/stack_1?
4model_1/gru_2/while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4model_1/gru_2/while/gru_cell_2/strided_slice/stack_2?
,model_1/gru_2/while/gru_cell_2/strided_sliceStridedSlice5model_1/gru_2/while/gru_cell_2/ReadVariableOp:value:0;model_1/gru_2/while/gru_cell_2/strided_slice/stack:output:0=model_1/gru_2/while/gru_cell_2/strided_slice/stack_1:output:0=model_1/gru_2/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2.
,model_1/gru_2/while/gru_cell_2/strided_slice?
'model_1/gru_2/while/gru_cell_2/MatMul_1MatMul!model_1_gru_2_while_placeholder_25model_1/gru_2/while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2)
'model_1/gru_2/while/gru_cell_2/MatMul_1?
$model_1/gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2&
$model_1/gru_2/while/gru_cell_2/Const?
0model_1/gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0model_1/gru_2/while/gru_cell_2/split_1/split_dim?
&model_1/gru_2/while/gru_cell_2/split_1SplitV1model_1/gru_2/while/gru_cell_2/MatMul_1:product:0-model_1/gru_2/while/gru_cell_2/Const:output:09model_1/gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2(
&model_1/gru_2/while/gru_cell_2/split_1?
"model_1/gru_2/while/gru_cell_2/addAddV2-model_1/gru_2/while/gru_cell_2/split:output:0/model_1/gru_2/while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2$
"model_1/gru_2/while/gru_cell_2/add?
&model_1/gru_2/while/gru_cell_2/SigmoidSigmoid&model_1/gru_2/while/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2(
&model_1/gru_2/while/gru_cell_2/Sigmoid?
$model_1/gru_2/while/gru_cell_2/add_1AddV2-model_1/gru_2/while/gru_cell_2/split:output:1/model_1/gru_2/while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2&
$model_1/gru_2/while/gru_cell_2/add_1?
(model_1/gru_2/while/gru_cell_2/Sigmoid_1Sigmoid(model_1/gru_2/while/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2*
(model_1/gru_2/while/gru_cell_2/Sigmoid_1?
$model_1/gru_2/while/gru_cell_2/mul_1Mul,model_1/gru_2/while/gru_cell_2/Sigmoid_1:y:0!model_1_gru_2_while_placeholder_2*
T0*
_output_shapes
:	?2&
$model_1/gru_2/while/gru_cell_2/mul_1?
/model_1/gru_2/while/gru_cell_2/ReadVariableOp_1ReadVariableOp8model_1_gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype021
/model_1/gru_2/while/gru_cell_2/ReadVariableOp_1?
4model_1/gru_2/while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       26
4model_1/gru_2/while/gru_cell_2/strided_slice_1/stack?
6model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        28
6model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_1?
6model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_2?
.model_1/gru_2/while/gru_cell_2/strided_slice_1StridedSlice7model_1/gru_2/while/gru_cell_2/ReadVariableOp_1:value:0=model_1/gru_2/while/gru_cell_2/strided_slice_1/stack:output:0?model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_1:output:0?model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask20
.model_1/gru_2/while/gru_cell_2/strided_slice_1?
'model_1/gru_2/while/gru_cell_2/MatMul_2MatMul(model_1/gru_2/while/gru_cell_2/mul_1:z:07model_1/gru_2/while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2)
'model_1/gru_2/while/gru_cell_2/MatMul_2?
$model_1/gru_2/while/gru_cell_2/add_2AddV2-model_1/gru_2/while/gru_cell_2/split:output:21model_1/gru_2/while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2&
$model_1/gru_2/while/gru_cell_2/add_2?
#model_1/gru_2/while/gru_cell_2/TanhTanh(model_1/gru_2/while/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2%
#model_1/gru_2/while/gru_cell_2/Tanh?
$model_1/gru_2/while/gru_cell_2/mul_2Mul*model_1/gru_2/while/gru_cell_2/Sigmoid:y:0!model_1_gru_2_while_placeholder_2*
T0*
_output_shapes
:	?2&
$model_1/gru_2/while/gru_cell_2/mul_2?
$model_1/gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$model_1/gru_2/while/gru_cell_2/sub/x?
"model_1/gru_2/while/gru_cell_2/subSub-model_1/gru_2/while/gru_cell_2/sub/x:output:0*model_1/gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2$
"model_1/gru_2/while/gru_cell_2/sub?
$model_1/gru_2/while/gru_cell_2/mul_3Mul&model_1/gru_2/while/gru_cell_2/sub:z:0'model_1/gru_2/while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2&
$model_1/gru_2/while/gru_cell_2/mul_3?
$model_1/gru_2/while/gru_cell_2/add_3AddV2(model_1/gru_2/while/gru_cell_2/mul_2:z:0(model_1/gru_2/while/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2&
$model_1/gru_2/while/gru_cell_2/add_3?
8model_1/gru_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!model_1_gru_2_while_placeholder_1model_1_gru_2_while_placeholder(model_1/gru_2/while/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02:
8model_1/gru_2/while/TensorArrayV2Write/TensorListSetItemx
model_1/gru_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
model_1/gru_2/while/add/y?
model_1/gru_2/while/addAddV2model_1_gru_2_while_placeholder"model_1/gru_2/while/add/y:output:0*
T0*
_output_shapes
: 2
model_1/gru_2/while/add|
model_1/gru_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
model_1/gru_2/while/add_1/y?
model_1/gru_2/while/add_1AddV24model_1_gru_2_while_model_1_gru_2_while_loop_counter$model_1/gru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
model_1/gru_2/while/add_1?
model_1/gru_2/while/IdentityIdentitymodel_1/gru_2/while/add_1:z:0^model_1/gru_2/while/NoOp*
T0*
_output_shapes
: 2
model_1/gru_2/while/Identity?
model_1/gru_2/while/Identity_1Identity:model_1_gru_2_while_model_1_gru_2_while_maximum_iterations^model_1/gru_2/while/NoOp*
T0*
_output_shapes
: 2 
model_1/gru_2/while/Identity_1?
model_1/gru_2/while/Identity_2Identitymodel_1/gru_2/while/add:z:0^model_1/gru_2/while/NoOp*
T0*
_output_shapes
: 2 
model_1/gru_2/while/Identity_2?
model_1/gru_2/while/Identity_3IdentityHmodel_1/gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_1/gru_2/while/NoOp*
T0*
_output_shapes
: 2 
model_1/gru_2/while/Identity_3?
model_1/gru_2/while/Identity_4Identity(model_1/gru_2/while/gru_cell_2/add_3:z:0^model_1/gru_2/while/NoOp*
T0*
_output_shapes
:	?2 
model_1/gru_2/while/Identity_4?
model_1/gru_2/while/NoOpNoOp6^model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp5^model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp.^model_1/gru_2/while/gru_cell_2/ReadVariableOp0^model_1/gru_2/while/gru_cell_2/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
model_1/gru_2/while/NoOp"?
>model_1_gru_2_while_gru_cell_2_biasadd_readvariableop_resource@model_1_gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0"?
=model_1_gru_2_while_gru_cell_2_matmul_readvariableop_resource?model_1_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"r
6model_1_gru_2_while_gru_cell_2_readvariableop_resource8model_1_gru_2_while_gru_cell_2_readvariableop_resource_0"E
model_1_gru_2_while_identity%model_1/gru_2/while/Identity:output:0"I
model_1_gru_2_while_identity_1'model_1/gru_2/while/Identity_1:output:0"I
model_1_gru_2_while_identity_2'model_1/gru_2/while/Identity_2:output:0"I
model_1_gru_2_while_identity_3'model_1/gru_2/while/Identity_3:output:0"I
model_1_gru_2_while_identity_4'model_1/gru_2/while/Identity_4:output:0"d
/model_1_gru_2_while_model_1_gru_2_strided_slice1model_1_gru_2_while_model_1_gru_2_strided_slice_0"?
mmodel_1_gru_2_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_2_tensorarrayunstack_tensorlistfromtensoromodel_1_gru_2_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2n
5model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp5model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp2l
4model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp4model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp2^
-model_1/gru_2/while/gru_cell_2/ReadVariableOp-model_1/gru_2/while/gru_cell_2/ReadVariableOp2b
/model_1/gru_2/while/gru_cell_2/ReadVariableOp_1/model_1/gru_2/while/gru_cell_2/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?F
?
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_6492

inputs

states2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1s
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Constw
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*
_output_shapes
:	?2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	?2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/Const}
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
dropout_1/Muls
dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2ߕ?2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_1/GreaterEqual}
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_1/Castz
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/Const}
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
dropout_2/Muls
dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??.2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_2/GreaterEqual}
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_2/Castz
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_2/Mul_1V
mulMulinputsdropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_sliceh
MatMul_1MatMulstatesstrided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1V
mul_1MulSigmoid_1:y:0states*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
TanhT
mul_2MulSigmoid:y:0states*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	?
 
_user_specified_nameinputs:GC

_output_shapes
:	?
 
_user_specified_namestates
?0
?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12722

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likeW
mulMulinputsones_like:output:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_sliceu
MatMul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0* 
_output_shapes
:::*
	num_split2	
split_1X
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:2
addI
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:2	
Sigmoid\
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:2
add_1O
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:2
	Sigmoid_1o
mul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpe
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2BatchMatMulV2	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:2

MatMul_2]
add_2AddV2split:output:2MatMul_2:output:0*
T0*
_output_shapes
:2
add_2B
TanhTanh	add_2:z:0*
T0*
_output_shapes
:2
Tanho
mul_2/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpc
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_3P
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:2
add_3U
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

IdentityY

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
?
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_11919

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
__inference__wrapped_model_6184
input_2E
1model_1_dense_1_tensordot_readvariableop_resource:
??>
/model_1_dense_1_biasadd_readvariableop_resource:	?K
7model_1_gru_2_gru_cell_2_matmul_readvariableop_resource:
??G
8model_1_gru_2_gru_cell_2_biasadd_readvariableop_resource:	?D
0model_1_gru_2_gru_cell_2_readvariableop_resource:
??L
9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resource:	?K
7model_1_gru_3_gru_cell_3_matmul_readvariableop_resource:
??G
8model_1_gru_3_gru_cell_3_biasadd_readvariableop_resource:	?D
0model_1_gru_3_gru_cell_3_readvariableop_resource:
??L
9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resource:	?E
1model_1_lengths_tensordot_readvariableop_resource:
??>
/model_1_lengths_biasadd_readvariableop_resource:	?C
/model_1_times_tensordot_readvariableop_resource:
??<
-model_1_times_biasadd_readvariableop_resource:	?B
/model_1_notes_tensordot_readvariableop_resource:	?_;
-model_1_notes_biasadd_readvariableop_resource:_
identity

identity_1

identity_2??&model_1/dense_1/BiasAdd/ReadVariableOp?(model_1/dense_1/Tensordot/ReadVariableOp?model_1/gru_2/AssignVariableOp?model_1/gru_2/ReadVariableOp?/model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp?.model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp?0model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp?'model_1/gru_2/gru_cell_2/ReadVariableOp?)model_1/gru_2/gru_cell_2/ReadVariableOp_1?-model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp?-model_1/gru_2/gru_cell_2/mul_2/ReadVariableOp?model_1/gru_2/while?model_1/gru_3/AssignVariableOp?model_1/gru_3/ReadVariableOp?/model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp?.model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp?0model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp?'model_1/gru_3/gru_cell_3/ReadVariableOp?)model_1/gru_3/gru_cell_3/ReadVariableOp_1?-model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp?-model_1/gru_3/gru_cell_3/mul_2/ReadVariableOp?model_1/gru_3/while?&model_1/lengths/BiasAdd/ReadVariableOp?(model_1/lengths/Tensordot/ReadVariableOp?$model_1/notes/BiasAdd/ReadVariableOp?&model_1/notes/Tensordot/ReadVariableOp?$model_1/times/BiasAdd/ReadVariableOp?&model_1/times/Tensordot/ReadVariableOp?
(model_1/dense_1/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(model_1/dense_1/Tensordot/ReadVariableOp?
model_1/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2 
model_1/dense_1/Tensordot/axes?
model_1/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2 
model_1/dense_1/Tensordot/freey
model_1/dense_1/Tensordot/ShapeShapeinput_2*
T0*
_output_shapes
:2!
model_1/dense_1/Tensordot/Shape?
'model_1/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/dense_1/Tensordot/GatherV2/axis?
"model_1/dense_1/Tensordot/GatherV2GatherV2(model_1/dense_1/Tensordot/Shape:output:0'model_1/dense_1/Tensordot/free:output:00model_1/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/dense_1/Tensordot/GatherV2?
)model_1/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_1/dense_1/Tensordot/GatherV2_1/axis?
$model_1/dense_1/Tensordot/GatherV2_1GatherV2(model_1/dense_1/Tensordot/Shape:output:0'model_1/dense_1/Tensordot/axes:output:02model_1/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_1/dense_1/Tensordot/GatherV2_1?
model_1/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/dense_1/Tensordot/Const?
model_1/dense_1/Tensordot/ProdProd+model_1/dense_1/Tensordot/GatherV2:output:0(model_1/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2 
model_1/dense_1/Tensordot/Prod?
!model_1/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/dense_1/Tensordot/Const_1?
 model_1/dense_1/Tensordot/Prod_1Prod-model_1/dense_1/Tensordot/GatherV2_1:output:0*model_1/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2"
 model_1/dense_1/Tensordot/Prod_1?
%model_1/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/dense_1/Tensordot/concat/axis?
 model_1/dense_1/Tensordot/concatConcatV2'model_1/dense_1/Tensordot/free:output:0'model_1/dense_1/Tensordot/axes:output:0.model_1/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/dense_1/Tensordot/concat?
model_1/dense_1/Tensordot/stackPack'model_1/dense_1/Tensordot/Prod:output:0)model_1/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2!
model_1/dense_1/Tensordot/stack?
#model_1/dense_1/Tensordot/transpose	Transposeinput_2)model_1/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2%
#model_1/dense_1/Tensordot/transpose?
!model_1/dense_1/Tensordot/ReshapeReshape'model_1/dense_1/Tensordot/transpose:y:0(model_1/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2#
!model_1/dense_1/Tensordot/Reshape?
 model_1/dense_1/Tensordot/MatMulMatMul*model_1/dense_1/Tensordot/Reshape:output:00model_1/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 model_1/dense_1/Tensordot/MatMul?
!model_1/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2#
!model_1/dense_1/Tensordot/Const_2?
'model_1/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/dense_1/Tensordot/concat_1/axis?
"model_1/dense_1/Tensordot/concat_1ConcatV2+model_1/dense_1/Tensordot/GatherV2:output:0*model_1/dense_1/Tensordot/Const_2:output:00model_1/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_1/dense_1/Tensordot/concat_1?
model_1/dense_1/TensordotReshape*model_1/dense_1/Tensordot/MatMul:product:0+model_1/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
model_1/dense_1/Tensordot?
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&model_1/dense_1/BiasAdd/ReadVariableOp?
model_1/dense_1/BiasAddBiasAdd"model_1/dense_1/Tensordot:output:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
model_1/dense_1/BiasAdd?
model_1/dense_1/TanhTanh model_1/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:??????????2
model_1/dense_1/Tanh?
model_1/gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
model_1/gru_2/transpose/perm?
model_1/gru_2/transpose	Transposemodel_1/dense_1/Tanh:y:0%model_1/gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
model_1/gru_2/transposeu
model_1/gru_2/ShapeShapemodel_1/gru_2/transpose:y:0*
T0*
_output_shapes
:2
model_1/gru_2/Shape?
!model_1/gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/gru_2/strided_slice/stack?
#model_1/gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_1/gru_2/strided_slice/stack_1?
#model_1/gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_1/gru_2/strided_slice/stack_2?
model_1/gru_2/strided_sliceStridedSlicemodel_1/gru_2/Shape:output:0*model_1/gru_2/strided_slice/stack:output:0,model_1/gru_2/strided_slice/stack_1:output:0,model_1/gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_1/gru_2/strided_slice?
)model_1/gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2+
)model_1/gru_2/TensorArrayV2/element_shape?
model_1/gru_2/TensorArrayV2TensorListReserve2model_1/gru_2/TensorArrayV2/element_shape:output:0$model_1/gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model_1/gru_2/TensorArrayV2?
Cmodel_1/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cmodel_1/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
5model_1/gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_1/gru_2/transpose:y:0Lmodel_1/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5model_1/gru_2/TensorArrayUnstack/TensorListFromTensor?
#model_1/gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#model_1/gru_2/strided_slice_1/stack?
%model_1/gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_2/strided_slice_1/stack_1?
%model_1/gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_2/strided_slice_1/stack_2?
model_1/gru_2/strided_slice_1StridedSlicemodel_1/gru_2/transpose:y:0,model_1/gru_2/strided_slice_1/stack:output:0.model_1/gru_2/strided_slice_1/stack_1:output:0.model_1/gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
model_1/gru_2/strided_slice_1?
(model_1/gru_2/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2*
(model_1/gru_2/gru_cell_2/ones_like/Shape?
(model_1/gru_2/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(model_1/gru_2/gru_cell_2/ones_like/Const?
"model_1/gru_2/gru_cell_2/ones_likeFill1model_1/gru_2/gru_cell_2/ones_like/Shape:output:01model_1/gru_2/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2$
"model_1/gru_2/gru_cell_2/ones_like?
model_1/gru_2/gru_cell_2/mulMul&model_1/gru_2/strided_slice_1:output:0+model_1/gru_2/gru_cell_2/ones_like:output:0*
T0*
_output_shapes
:	?2
model_1/gru_2/gru_cell_2/mul?
.model_1/gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7model_1_gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp?
model_1/gru_2/gru_cell_2/MatMulMatMul model_1/gru_2/gru_cell_2/mul:z:06model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2!
model_1/gru_2/gru_cell_2/MatMul?
/model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp8model_1_gru_2_gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp?
 model_1/gru_2/gru_cell_2/BiasAddBiasAdd)model_1/gru_2/gru_cell_2/MatMul:product:07model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2"
 model_1/gru_2/gru_cell_2/BiasAdd?
(model_1/gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(model_1/gru_2/gru_cell_2/split/split_dim?
model_1/gru_2/gru_cell_2/splitSplit1model_1/gru_2/gru_cell_2/split/split_dim:output:0)model_1/gru_2/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2 
model_1/gru_2/gru_cell_2/split?
'model_1/gru_2/gru_cell_2/ReadVariableOpReadVariableOp0model_1_gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02)
'model_1/gru_2/gru_cell_2/ReadVariableOp?
,model_1/gru_2/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,model_1/gru_2/gru_cell_2/strided_slice/stack?
.model_1/gru_2/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       20
.model_1/gru_2/gru_cell_2/strided_slice/stack_1?
.model_1/gru_2/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.model_1/gru_2/gru_cell_2/strided_slice/stack_2?
&model_1/gru_2/gru_cell_2/strided_sliceStridedSlice/model_1/gru_2/gru_cell_2/ReadVariableOp:value:05model_1/gru_2/gru_cell_2/strided_slice/stack:output:07model_1/gru_2/gru_cell_2/strided_slice/stack_1:output:07model_1/gru_2/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2(
&model_1/gru_2/gru_cell_2/strided_slice?
0model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype022
0model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp?
!model_1/gru_2/gru_cell_2/MatMul_1MatMul8model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0/model_1/gru_2/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2#
!model_1/gru_2/gru_cell_2/MatMul_1?
model_1/gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2 
model_1/gru_2/gru_cell_2/Const?
*model_1/gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2,
*model_1/gru_2/gru_cell_2/split_1/split_dim?
 model_1/gru_2/gru_cell_2/split_1SplitV+model_1/gru_2/gru_cell_2/MatMul_1:product:0'model_1/gru_2/gru_cell_2/Const:output:03model_1/gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2"
 model_1/gru_2/gru_cell_2/split_1?
model_1/gru_2/gru_cell_2/addAddV2'model_1/gru_2/gru_cell_2/split:output:0)model_1/gru_2/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
model_1/gru_2/gru_cell_2/add?
 model_1/gru_2/gru_cell_2/SigmoidSigmoid model_1/gru_2/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2"
 model_1/gru_2/gru_cell_2/Sigmoid?
model_1/gru_2/gru_cell_2/add_1AddV2'model_1/gru_2/gru_cell_2/split:output:1)model_1/gru_2/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2 
model_1/gru_2/gru_cell_2/add_1?
"model_1/gru_2/gru_cell_2/Sigmoid_1Sigmoid"model_1/gru_2/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2$
"model_1/gru_2/gru_cell_2/Sigmoid_1?
-model_1/gru_2/gru_cell_2/mul_1/ReadVariableOpReadVariableOp9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp?
model_1/gru_2/gru_cell_2/mul_1Mul&model_1/gru_2/gru_cell_2/Sigmoid_1:y:05model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2 
model_1/gru_2/gru_cell_2/mul_1?
)model_1/gru_2/gru_cell_2/ReadVariableOp_1ReadVariableOp0model_1_gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02+
)model_1/gru_2/gru_cell_2/ReadVariableOp_1?
.model_1/gru_2/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.model_1/gru_2/gru_cell_2/strided_slice_1/stack?
0model_1/gru_2/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0model_1/gru_2/gru_cell_2/strided_slice_1/stack_1?
0model_1/gru_2/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0model_1/gru_2/gru_cell_2/strided_slice_1/stack_2?
(model_1/gru_2/gru_cell_2/strided_slice_1StridedSlice1model_1/gru_2/gru_cell_2/ReadVariableOp_1:value:07model_1/gru_2/gru_cell_2/strided_slice_1/stack:output:09model_1/gru_2/gru_cell_2/strided_slice_1/stack_1:output:09model_1/gru_2/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2*
(model_1/gru_2/gru_cell_2/strided_slice_1?
!model_1/gru_2/gru_cell_2/MatMul_2MatMul"model_1/gru_2/gru_cell_2/mul_1:z:01model_1/gru_2/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2#
!model_1/gru_2/gru_cell_2/MatMul_2?
model_1/gru_2/gru_cell_2/add_2AddV2'model_1/gru_2/gru_cell_2/split:output:2+model_1/gru_2/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2 
model_1/gru_2/gru_cell_2/add_2?
model_1/gru_2/gru_cell_2/TanhTanh"model_1/gru_2/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
model_1/gru_2/gru_cell_2/Tanh?
-model_1/gru_2/gru_cell_2/mul_2/ReadVariableOpReadVariableOp9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-model_1/gru_2/gru_cell_2/mul_2/ReadVariableOp?
model_1/gru_2/gru_cell_2/mul_2Mul$model_1/gru_2/gru_cell_2/Sigmoid:y:05model_1/gru_2/gru_cell_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2 
model_1/gru_2/gru_cell_2/mul_2?
model_1/gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
model_1/gru_2/gru_cell_2/sub/x?
model_1/gru_2/gru_cell_2/subSub'model_1/gru_2/gru_cell_2/sub/x:output:0$model_1/gru_2/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
model_1/gru_2/gru_cell_2/sub?
model_1/gru_2/gru_cell_2/mul_3Mul model_1/gru_2/gru_cell_2/sub:z:0!model_1/gru_2/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2 
model_1/gru_2/gru_cell_2/mul_3?
model_1/gru_2/gru_cell_2/add_3AddV2"model_1/gru_2/gru_cell_2/mul_2:z:0"model_1/gru_2/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2 
model_1/gru_2/gru_cell_2/add_3?
+model_1/gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2-
+model_1/gru_2/TensorArrayV2_1/element_shape?
model_1/gru_2/TensorArrayV2_1TensorListReserve4model_1/gru_2/TensorArrayV2_1/element_shape:output:0$model_1/gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model_1/gru_2/TensorArrayV2_1j
model_1/gru_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_1/gru_2/time?
model_1/gru_2/ReadVariableOpReadVariableOp9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
model_1/gru_2/ReadVariableOp?
&model_1/gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model_1/gru_2/while/maximum_iterations?
 model_1/gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 model_1/gru_2/while/loop_counter?
model_1/gru_2/whileWhile)model_1/gru_2/while/loop_counter:output:0/model_1/gru_2/while/maximum_iterations:output:0model_1/gru_2/time:output:0&model_1/gru_2/TensorArrayV2_1:handle:0$model_1/gru_2/ReadVariableOp:value:0$model_1/gru_2/strided_slice:output:0Emodel_1/gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:07model_1_gru_2_gru_cell_2_matmul_readvariableop_resource8model_1_gru_2_gru_cell_2_biasadd_readvariableop_resource0model_1_gru_2_gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
model_1_gru_2_while_body_5836*)
cond!R
model_1_gru_2_while_cond_5835*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
model_1/gru_2/while?
>model_1/gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2@
>model_1/gru_2/TensorArrayV2Stack/TensorListStack/element_shape?
0model_1/gru_2/TensorArrayV2Stack/TensorListStackTensorListStackmodel_1/gru_2/while:output:3Gmodel_1/gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype022
0model_1/gru_2/TensorArrayV2Stack/TensorListStack?
#model_1/gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2%
#model_1/gru_2/strided_slice_2/stack?
%model_1/gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%model_1/gru_2/strided_slice_2/stack_1?
%model_1/gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_2/strided_slice_2/stack_2?
model_1/gru_2/strided_slice_2StridedSlice9model_1/gru_2/TensorArrayV2Stack/TensorListStack:tensor:0,model_1/gru_2/strided_slice_2/stack:output:0.model_1/gru_2/strided_slice_2/stack_1:output:0.model_1/gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
model_1/gru_2/strided_slice_2?
model_1/gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
model_1/gru_2/transpose_1/perm?
model_1/gru_2/transpose_1	Transpose9model_1/gru_2/TensorArrayV2Stack/TensorListStack:tensor:0'model_1/gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
model_1/gru_2/transpose_1?
model_1/gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_1/gru_2/runtime?
model_1/gru_2/AssignVariableOpAssignVariableOp9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resourcemodel_1/gru_2/while:output:4^model_1/gru_2/ReadVariableOp1^model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp.^model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp.^model_1/gru_2/gru_cell_2/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02 
model_1/gru_2/AssignVariableOp?
model_1/gru_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
model_1/gru_3/transpose/perm?
model_1/gru_3/transpose	Transposemodel_1/gru_2/transpose_1:y:0%model_1/gru_3/transpose/perm:output:0*
T0*,
_output_shapes
:??????????2
model_1/gru_3/transposeu
model_1/gru_3/ShapeShapemodel_1/gru_3/transpose:y:0*
T0*
_output_shapes
:2
model_1/gru_3/Shape?
!model_1/gru_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/gru_3/strided_slice/stack?
#model_1/gru_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_1/gru_3/strided_slice/stack_1?
#model_1/gru_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_1/gru_3/strided_slice/stack_2?
model_1/gru_3/strided_sliceStridedSlicemodel_1/gru_3/Shape:output:0*model_1/gru_3/strided_slice/stack:output:0,model_1/gru_3/strided_slice/stack_1:output:0,model_1/gru_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_1/gru_3/strided_slice?
)model_1/gru_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2+
)model_1/gru_3/TensorArrayV2/element_shape?
model_1/gru_3/TensorArrayV2TensorListReserve2model_1/gru_3/TensorArrayV2/element_shape:output:0$model_1/gru_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model_1/gru_3/TensorArrayV2?
Cmodel_1/gru_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cmodel_1/gru_3/TensorArrayUnstack/TensorListFromTensor/element_shape?
5model_1/gru_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_1/gru_3/transpose:y:0Lmodel_1/gru_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5model_1/gru_3/TensorArrayUnstack/TensorListFromTensor?
#model_1/gru_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#model_1/gru_3/strided_slice_1/stack?
%model_1/gru_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_3/strided_slice_1/stack_1?
%model_1/gru_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_3/strided_slice_1/stack_2?
model_1/gru_3/strided_slice_1StridedSlicemodel_1/gru_3/transpose:y:0,model_1/gru_3/strided_slice_1/stack:output:0.model_1/gru_3/strided_slice_1/stack_1:output:0.model_1/gru_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
model_1/gru_3/strided_slice_1?
(model_1/gru_3/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2*
(model_1/gru_3/gru_cell_3/ones_like/Shape?
(model_1/gru_3/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2*
(model_1/gru_3/gru_cell_3/ones_like/Const?
"model_1/gru_3/gru_cell_3/ones_likeFill1model_1/gru_3/gru_cell_3/ones_like/Shape:output:01model_1/gru_3/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2$
"model_1/gru_3/gru_cell_3/ones_like?
model_1/gru_3/gru_cell_3/mulMul&model_1/gru_3/strided_slice_1:output:0+model_1/gru_3/gru_cell_3/ones_like:output:0*
T0*
_output_shapes
:	?2
model_1/gru_3/gru_cell_3/mul?
.model_1/gru_3/gru_cell_3/MatMul/ReadVariableOpReadVariableOp7model_1_gru_3_gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp?
model_1/gru_3/gru_cell_3/MatMulMatMul model_1/gru_3/gru_cell_3/mul:z:06model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2!
model_1/gru_3/gru_cell_3/MatMul?
/model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp8model_1_gru_3_gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp?
 model_1/gru_3/gru_cell_3/BiasAddBiasAdd)model_1/gru_3/gru_cell_3/MatMul:product:07model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2"
 model_1/gru_3/gru_cell_3/BiasAdd?
(model_1/gru_3/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(model_1/gru_3/gru_cell_3/split/split_dim?
model_1/gru_3/gru_cell_3/splitSplit1model_1/gru_3/gru_cell_3/split/split_dim:output:0)model_1/gru_3/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2 
model_1/gru_3/gru_cell_3/split?
'model_1/gru_3/gru_cell_3/ReadVariableOpReadVariableOp0model_1_gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02)
'model_1/gru_3/gru_cell_3/ReadVariableOp?
,model_1/gru_3/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,model_1/gru_3/gru_cell_3/strided_slice/stack?
.model_1/gru_3/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       20
.model_1/gru_3/gru_cell_3/strided_slice/stack_1?
.model_1/gru_3/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.model_1/gru_3/gru_cell_3/strided_slice/stack_2?
&model_1/gru_3/gru_cell_3/strided_sliceStridedSlice/model_1/gru_3/gru_cell_3/ReadVariableOp:value:05model_1/gru_3/gru_cell_3/strided_slice/stack:output:07model_1/gru_3/gru_cell_3/strided_slice/stack_1:output:07model_1/gru_3/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2(
&model_1/gru_3/gru_cell_3/strided_slice?
0model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype022
0model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp?
!model_1/gru_3/gru_cell_3/MatMul_1MatMul8model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp:value:0/model_1/gru_3/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2#
!model_1/gru_3/gru_cell_3/MatMul_1?
model_1/gru_3/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2 
model_1/gru_3/gru_cell_3/Const?
*model_1/gru_3/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2,
*model_1/gru_3/gru_cell_3/split_1/split_dim?
 model_1/gru_3/gru_cell_3/split_1SplitV+model_1/gru_3/gru_cell_3/MatMul_1:product:0'model_1/gru_3/gru_cell_3/Const:output:03model_1/gru_3/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2"
 model_1/gru_3/gru_cell_3/split_1?
model_1/gru_3/gru_cell_3/addAddV2'model_1/gru_3/gru_cell_3/split:output:0)model_1/gru_3/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
model_1/gru_3/gru_cell_3/add?
 model_1/gru_3/gru_cell_3/SigmoidSigmoid model_1/gru_3/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2"
 model_1/gru_3/gru_cell_3/Sigmoid?
model_1/gru_3/gru_cell_3/add_1AddV2'model_1/gru_3/gru_cell_3/split:output:1)model_1/gru_3/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2 
model_1/gru_3/gru_cell_3/add_1?
"model_1/gru_3/gru_cell_3/Sigmoid_1Sigmoid"model_1/gru_3/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2$
"model_1/gru_3/gru_cell_3/Sigmoid_1?
-model_1/gru_3/gru_cell_3/mul_1/ReadVariableOpReadVariableOp9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp?
model_1/gru_3/gru_cell_3/mul_1Mul&model_1/gru_3/gru_cell_3/Sigmoid_1:y:05model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2 
model_1/gru_3/gru_cell_3/mul_1?
)model_1/gru_3/gru_cell_3/ReadVariableOp_1ReadVariableOp0model_1_gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02+
)model_1/gru_3/gru_cell_3/ReadVariableOp_1?
.model_1/gru_3/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.model_1/gru_3/gru_cell_3/strided_slice_1/stack?
0model_1/gru_3/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0model_1/gru_3/gru_cell_3/strided_slice_1/stack_1?
0model_1/gru_3/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0model_1/gru_3/gru_cell_3/strided_slice_1/stack_2?
(model_1/gru_3/gru_cell_3/strided_slice_1StridedSlice1model_1/gru_3/gru_cell_3/ReadVariableOp_1:value:07model_1/gru_3/gru_cell_3/strided_slice_1/stack:output:09model_1/gru_3/gru_cell_3/strided_slice_1/stack_1:output:09model_1/gru_3/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2*
(model_1/gru_3/gru_cell_3/strided_slice_1?
!model_1/gru_3/gru_cell_3/MatMul_2MatMul"model_1/gru_3/gru_cell_3/mul_1:z:01model_1/gru_3/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2#
!model_1/gru_3/gru_cell_3/MatMul_2?
model_1/gru_3/gru_cell_3/add_2AddV2'model_1/gru_3/gru_cell_3/split:output:2+model_1/gru_3/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2 
model_1/gru_3/gru_cell_3/add_2?
model_1/gru_3/gru_cell_3/TanhTanh"model_1/gru_3/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
model_1/gru_3/gru_cell_3/Tanh?
-model_1/gru_3/gru_cell_3/mul_2/ReadVariableOpReadVariableOp9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02/
-model_1/gru_3/gru_cell_3/mul_2/ReadVariableOp?
model_1/gru_3/gru_cell_3/mul_2Mul$model_1/gru_3/gru_cell_3/Sigmoid:y:05model_1/gru_3/gru_cell_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2 
model_1/gru_3/gru_cell_3/mul_2?
model_1/gru_3/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
model_1/gru_3/gru_cell_3/sub/x?
model_1/gru_3/gru_cell_3/subSub'model_1/gru_3/gru_cell_3/sub/x:output:0$model_1/gru_3/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
model_1/gru_3/gru_cell_3/sub?
model_1/gru_3/gru_cell_3/mul_3Mul model_1/gru_3/gru_cell_3/sub:z:0!model_1/gru_3/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2 
model_1/gru_3/gru_cell_3/mul_3?
model_1/gru_3/gru_cell_3/add_3AddV2"model_1/gru_3/gru_cell_3/mul_2:z:0"model_1/gru_3/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2 
model_1/gru_3/gru_cell_3/add_3?
+model_1/gru_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2-
+model_1/gru_3/TensorArrayV2_1/element_shape?
model_1/gru_3/TensorArrayV2_1TensorListReserve4model_1/gru_3/TensorArrayV2_1/element_shape:output:0$model_1/gru_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model_1/gru_3/TensorArrayV2_1j
model_1/gru_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model_1/gru_3/time?
model_1/gru_3/ReadVariableOpReadVariableOp9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
model_1/gru_3/ReadVariableOp?
&model_1/gru_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model_1/gru_3/while/maximum_iterations?
 model_1/gru_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 model_1/gru_3/while/loop_counter?
model_1/gru_3/whileWhile)model_1/gru_3/while/loop_counter:output:0/model_1/gru_3/while/maximum_iterations:output:0model_1/gru_3/time:output:0&model_1/gru_3/TensorArrayV2_1:handle:0$model_1/gru_3/ReadVariableOp:value:0$model_1/gru_3/strided_slice:output:0Emodel_1/gru_3/TensorArrayUnstack/TensorListFromTensor:output_handle:07model_1_gru_3_gru_cell_3_matmul_readvariableop_resource8model_1_gru_3_gru_cell_3_biasadd_readvariableop_resource0model_1_gru_3_gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *)
body!R
model_1_gru_3_while_body_6003*)
cond!R
model_1_gru_3_while_cond_6002*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
model_1/gru_3/while?
>model_1/gru_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2@
>model_1/gru_3/TensorArrayV2Stack/TensorListStack/element_shape?
0model_1/gru_3/TensorArrayV2Stack/TensorListStackTensorListStackmodel_1/gru_3/while:output:3Gmodel_1/gru_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype022
0model_1/gru_3/TensorArrayV2Stack/TensorListStack?
#model_1/gru_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2%
#model_1/gru_3/strided_slice_2/stack?
%model_1/gru_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%model_1/gru_3/strided_slice_2/stack_1?
%model_1/gru_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_3/strided_slice_2/stack_2?
model_1/gru_3/strided_slice_2StridedSlice9model_1/gru_3/TensorArrayV2Stack/TensorListStack:tensor:0,model_1/gru_3/strided_slice_2/stack:output:0.model_1/gru_3/strided_slice_2/stack_1:output:0.model_1/gru_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
model_1/gru_3/strided_slice_2?
model_1/gru_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
model_1/gru_3/transpose_1/perm?
model_1/gru_3/transpose_1	Transpose9model_1/gru_3/TensorArrayV2Stack/TensorListStack:tensor:0'model_1/gru_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
model_1/gru_3/transpose_1?
model_1/gru_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_1/gru_3/runtime?
model_1/gru_3/AssignVariableOpAssignVariableOp9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resourcemodel_1/gru_3/while:output:4^model_1/gru_3/ReadVariableOp1^model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp.^model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp.^model_1/gru_3/gru_cell_3/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02 
model_1/gru_3/AssignVariableOp?
model_1/dropout_1/IdentityIdentitymodel_1/gru_3/transpose_1:y:0*
T0*,
_output_shapes
:??????????2
model_1/dropout_1/Identity?
(model_1/lengths/Tensordot/ReadVariableOpReadVariableOp1model_1_lengths_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(model_1/lengths/Tensordot/ReadVariableOp?
model_1/lengths/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2 
model_1/lengths/Tensordot/axes?
model_1/lengths/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2 
model_1/lengths/Tensordot/free?
model_1/lengths/Tensordot/ShapeShape#model_1/dropout_1/Identity:output:0*
T0*
_output_shapes
:2!
model_1/lengths/Tensordot/Shape?
'model_1/lengths/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/lengths/Tensordot/GatherV2/axis?
"model_1/lengths/Tensordot/GatherV2GatherV2(model_1/lengths/Tensordot/Shape:output:0'model_1/lengths/Tensordot/free:output:00model_1/lengths/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/lengths/Tensordot/GatherV2?
)model_1/lengths/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_1/lengths/Tensordot/GatherV2_1/axis?
$model_1/lengths/Tensordot/GatherV2_1GatherV2(model_1/lengths/Tensordot/Shape:output:0'model_1/lengths/Tensordot/axes:output:02model_1/lengths/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_1/lengths/Tensordot/GatherV2_1?
model_1/lengths/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/lengths/Tensordot/Const?
model_1/lengths/Tensordot/ProdProd+model_1/lengths/Tensordot/GatherV2:output:0(model_1/lengths/Tensordot/Const:output:0*
T0*
_output_shapes
: 2 
model_1/lengths/Tensordot/Prod?
!model_1/lengths/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/lengths/Tensordot/Const_1?
 model_1/lengths/Tensordot/Prod_1Prod-model_1/lengths/Tensordot/GatherV2_1:output:0*model_1/lengths/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2"
 model_1/lengths/Tensordot/Prod_1?
%model_1/lengths/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/lengths/Tensordot/concat/axis?
 model_1/lengths/Tensordot/concatConcatV2'model_1/lengths/Tensordot/free:output:0'model_1/lengths/Tensordot/axes:output:0.model_1/lengths/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/lengths/Tensordot/concat?
model_1/lengths/Tensordot/stackPack'model_1/lengths/Tensordot/Prod:output:0)model_1/lengths/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2!
model_1/lengths/Tensordot/stack?
#model_1/lengths/Tensordot/transpose	Transpose#model_1/dropout_1/Identity:output:0)model_1/lengths/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2%
#model_1/lengths/Tensordot/transpose?
!model_1/lengths/Tensordot/ReshapeReshape'model_1/lengths/Tensordot/transpose:y:0(model_1/lengths/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2#
!model_1/lengths/Tensordot/Reshape?
 model_1/lengths/Tensordot/MatMulMatMul*model_1/lengths/Tensordot/Reshape:output:00model_1/lengths/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 model_1/lengths/Tensordot/MatMul?
!model_1/lengths/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2#
!model_1/lengths/Tensordot/Const_2?
'model_1/lengths/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/lengths/Tensordot/concat_1/axis?
"model_1/lengths/Tensordot/concat_1ConcatV2+model_1/lengths/Tensordot/GatherV2:output:0*model_1/lengths/Tensordot/Const_2:output:00model_1/lengths/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_1/lengths/Tensordot/concat_1?
model_1/lengths/TensordotReshape*model_1/lengths/Tensordot/MatMul:product:0+model_1/lengths/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
model_1/lengths/Tensordot?
&model_1/lengths/BiasAdd/ReadVariableOpReadVariableOp/model_1_lengths_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&model_1/lengths/BiasAdd/ReadVariableOp?
model_1/lengths/BiasAddBiasAdd"model_1/lengths/Tensordot:output:0.model_1/lengths/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
model_1/lengths/BiasAdd?
&model_1/times/Tensordot/ReadVariableOpReadVariableOp/model_1_times_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02(
&model_1/times/Tensordot/ReadVariableOp?
model_1/times/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
model_1/times/Tensordot/axes?
model_1/times/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
model_1/times/Tensordot/free?
model_1/times/Tensordot/ShapeShape#model_1/dropout_1/Identity:output:0*
T0*
_output_shapes
:2
model_1/times/Tensordot/Shape?
%model_1/times/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/times/Tensordot/GatherV2/axis?
 model_1/times/Tensordot/GatherV2GatherV2&model_1/times/Tensordot/Shape:output:0%model_1/times/Tensordot/free:output:0.model_1/times/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2"
 model_1/times/Tensordot/GatherV2?
'model_1/times/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/times/Tensordot/GatherV2_1/axis?
"model_1/times/Tensordot/GatherV2_1GatherV2&model_1/times/Tensordot/Shape:output:0%model_1/times/Tensordot/axes:output:00model_1/times/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/times/Tensordot/GatherV2_1?
model_1/times/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
model_1/times/Tensordot/Const?
model_1/times/Tensordot/ProdProd)model_1/times/Tensordot/GatherV2:output:0&model_1/times/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
model_1/times/Tensordot/Prod?
model_1/times/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/times/Tensordot/Const_1?
model_1/times/Tensordot/Prod_1Prod+model_1/times/Tensordot/GatherV2_1:output:0(model_1/times/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2 
model_1/times/Tensordot/Prod_1?
#model_1/times/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#model_1/times/Tensordot/concat/axis?
model_1/times/Tensordot/concatConcatV2%model_1/times/Tensordot/free:output:0%model_1/times/Tensordot/axes:output:0,model_1/times/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
model_1/times/Tensordot/concat?
model_1/times/Tensordot/stackPack%model_1/times/Tensordot/Prod:output:0'model_1/times/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
model_1/times/Tensordot/stack?
!model_1/times/Tensordot/transpose	Transpose#model_1/dropout_1/Identity:output:0'model_1/times/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2#
!model_1/times/Tensordot/transpose?
model_1/times/Tensordot/ReshapeReshape%model_1/times/Tensordot/transpose:y:0&model_1/times/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2!
model_1/times/Tensordot/Reshape?
model_1/times/Tensordot/MatMulMatMul(model_1/times/Tensordot/Reshape:output:0.model_1/times/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
model_1/times/Tensordot/MatMul?
model_1/times/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
model_1/times/Tensordot/Const_2?
%model_1/times/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/times/Tensordot/concat_1/axis?
 model_1/times/Tensordot/concat_1ConcatV2)model_1/times/Tensordot/GatherV2:output:0(model_1/times/Tensordot/Const_2:output:0.model_1/times/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/times/Tensordot/concat_1?
model_1/times/TensordotReshape(model_1/times/Tensordot/MatMul:product:0)model_1/times/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
model_1/times/Tensordot?
$model_1/times/BiasAdd/ReadVariableOpReadVariableOp-model_1_times_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$model_1/times/BiasAdd/ReadVariableOp?
model_1/times/BiasAddBiasAdd model_1/times/Tensordot:output:0,model_1/times/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
model_1/times/BiasAdd?
&model_1/notes/Tensordot/ReadVariableOpReadVariableOp/model_1_notes_tensordot_readvariableop_resource*
_output_shapes
:	?_*
dtype02(
&model_1/notes/Tensordot/ReadVariableOp?
model_1/notes/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
model_1/notes/Tensordot/axes?
model_1/notes/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
model_1/notes/Tensordot/free?
model_1/notes/Tensordot/ShapeShape#model_1/dropout_1/Identity:output:0*
T0*
_output_shapes
:2
model_1/notes/Tensordot/Shape?
%model_1/notes/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/notes/Tensordot/GatherV2/axis?
 model_1/notes/Tensordot/GatherV2GatherV2&model_1/notes/Tensordot/Shape:output:0%model_1/notes/Tensordot/free:output:0.model_1/notes/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2"
 model_1/notes/Tensordot/GatherV2?
'model_1/notes/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/notes/Tensordot/GatherV2_1/axis?
"model_1/notes/Tensordot/GatherV2_1GatherV2&model_1/notes/Tensordot/Shape:output:0%model_1/notes/Tensordot/axes:output:00model_1/notes/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/notes/Tensordot/GatherV2_1?
model_1/notes/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
model_1/notes/Tensordot/Const?
model_1/notes/Tensordot/ProdProd)model_1/notes/Tensordot/GatherV2:output:0&model_1/notes/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
model_1/notes/Tensordot/Prod?
model_1/notes/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/notes/Tensordot/Const_1?
model_1/notes/Tensordot/Prod_1Prod+model_1/notes/Tensordot/GatherV2_1:output:0(model_1/notes/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2 
model_1/notes/Tensordot/Prod_1?
#model_1/notes/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#model_1/notes/Tensordot/concat/axis?
model_1/notes/Tensordot/concatConcatV2%model_1/notes/Tensordot/free:output:0%model_1/notes/Tensordot/axes:output:0,model_1/notes/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
model_1/notes/Tensordot/concat?
model_1/notes/Tensordot/stackPack%model_1/notes/Tensordot/Prod:output:0'model_1/notes/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
model_1/notes/Tensordot/stack?
!model_1/notes/Tensordot/transpose	Transpose#model_1/dropout_1/Identity:output:0'model_1/notes/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2#
!model_1/notes/Tensordot/transpose?
model_1/notes/Tensordot/ReshapeReshape%model_1/notes/Tensordot/transpose:y:0&model_1/notes/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2!
model_1/notes/Tensordot/Reshape?
model_1/notes/Tensordot/MatMulMatMul(model_1/notes/Tensordot/Reshape:output:0.model_1/notes/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_2 
model_1/notes/Tensordot/MatMul?
model_1/notes/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_2!
model_1/notes/Tensordot/Const_2?
%model_1/notes/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/notes/Tensordot/concat_1/axis?
 model_1/notes/Tensordot/concat_1ConcatV2)model_1/notes/Tensordot/GatherV2:output:0(model_1/notes/Tensordot/Const_2:output:0.model_1/notes/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/notes/Tensordot/concat_1?
model_1/notes/TensordotReshape(model_1/notes/Tensordot/MatMul:product:0)model_1/notes/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????_2
model_1/notes/Tensordot?
$model_1/notes/BiasAdd/ReadVariableOpReadVariableOp-model_1_notes_biasadd_readvariableop_resource*
_output_shapes
:_*
dtype02&
$model_1/notes/BiasAdd/ReadVariableOp?
model_1/notes/BiasAddBiasAdd model_1/notes/Tensordot:output:0,model_1/notes/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????_2
model_1/notes/BiasAdd?
IdentityIdentity model_1/lengths/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?

Identity_1Identitymodel_1/notes/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:?????????_2

Identity_1?

Identity_2Identitymodel_1/times/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity_2?	
NoOpNoOp'^model_1/dense_1/BiasAdd/ReadVariableOp)^model_1/dense_1/Tensordot/ReadVariableOp^model_1/gru_2/AssignVariableOp^model_1/gru_2/ReadVariableOp0^model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp/^model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp1^model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp(^model_1/gru_2/gru_cell_2/ReadVariableOp*^model_1/gru_2/gru_cell_2/ReadVariableOp_1.^model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp.^model_1/gru_2/gru_cell_2/mul_2/ReadVariableOp^model_1/gru_2/while^model_1/gru_3/AssignVariableOp^model_1/gru_3/ReadVariableOp0^model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp/^model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp1^model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp(^model_1/gru_3/gru_cell_3/ReadVariableOp*^model_1/gru_3/gru_cell_3/ReadVariableOp_1.^model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp.^model_1/gru_3/gru_cell_3/mul_2/ReadVariableOp^model_1/gru_3/while'^model_1/lengths/BiasAdd/ReadVariableOp)^model_1/lengths/Tensordot/ReadVariableOp%^model_1/notes/BiasAdd/ReadVariableOp'^model_1/notes/Tensordot/ReadVariableOp%^model_1/times/BiasAdd/ReadVariableOp'^model_1/times/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:??????????: : : : : : : : : : : : : : : : 2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2T
(model_1/dense_1/Tensordot/ReadVariableOp(model_1/dense_1/Tensordot/ReadVariableOp2@
model_1/gru_2/AssignVariableOpmodel_1/gru_2/AssignVariableOp2<
model_1/gru_2/ReadVariableOpmodel_1/gru_2/ReadVariableOp2b
/model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp/model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp2`
.model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp.model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp2d
0model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp0model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp2R
'model_1/gru_2/gru_cell_2/ReadVariableOp'model_1/gru_2/gru_cell_2/ReadVariableOp2V
)model_1/gru_2/gru_cell_2/ReadVariableOp_1)model_1/gru_2/gru_cell_2/ReadVariableOp_12^
-model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp-model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp2^
-model_1/gru_2/gru_cell_2/mul_2/ReadVariableOp-model_1/gru_2/gru_cell_2/mul_2/ReadVariableOp2*
model_1/gru_2/whilemodel_1/gru_2/while2@
model_1/gru_3/AssignVariableOpmodel_1/gru_3/AssignVariableOp2<
model_1/gru_3/ReadVariableOpmodel_1/gru_3/ReadVariableOp2b
/model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp/model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp2`
.model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp.model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp2d
0model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp0model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp2R
'model_1/gru_3/gru_cell_3/ReadVariableOp'model_1/gru_3/gru_cell_3/ReadVariableOp2V
)model_1/gru_3/gru_cell_3/ReadVariableOp_1)model_1/gru_3/gru_cell_3/ReadVariableOp_12^
-model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp-model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp2^
-model_1/gru_3/gru_cell_3/mul_2/ReadVariableOp-model_1/gru_3/gru_cell_3/mul_2/ReadVariableOp2*
model_1/gru_3/whilemodel_1/gru_3/while2P
&model_1/lengths/BiasAdd/ReadVariableOp&model_1/lengths/BiasAdd/ReadVariableOp2T
(model_1/lengths/Tensordot/ReadVariableOp(model_1/lengths/Tensordot/ReadVariableOp2L
$model_1/notes/BiasAdd/ReadVariableOp$model_1/notes/BiasAdd/ReadVariableOp2P
&model_1/notes/Tensordot/ReadVariableOp&model_1/notes/Tensordot/ReadVariableOp2L
$model_1/times/BiasAdd/ReadVariableOp$model_1/times/BiasAdd/ReadVariableOp2P
&model_1/times/Tensordot/ReadVariableOp&model_1/times/Tensordot/ReadVariableOp:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_2
??
?
@__inference_gru_2_layer_call_and_return_conditional_losses_11060

inputs=
)gru_cell_2_matmul_readvariableop_resource:
??9
*gru_cell_2_biasadd_readvariableop_resource:	?6
"gru_cell_2_readvariableop_resource:
??>
+gru_cell_2_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_2/BiasAdd/ReadVariableOp? gru_cell_2/MatMul/ReadVariableOp?"gru_cell_2/MatMul_1/ReadVariableOp?gru_cell_2/ReadVariableOp?gru_cell_2/ReadVariableOp_1?gru_cell_2/mul_1/ReadVariableOp?gru_cell_2/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/ones_like/Shape}
gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/ones_like/Const?
gru_cell_2/ones_likeFill#gru_cell_2/ones_like/Shape:output:0#gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/ones_likey
gru_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_2/dropout/Const?
gru_cell_2/dropout/MulMulgru_cell_2/ones_like:output:0!gru_cell_2/dropout/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout/Mul?
gru_cell_2/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/dropout/Shape?
/gru_cell_2/dropout/random_uniform/RandomUniformRandomUniform!gru_cell_2/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???21
/gru_cell_2/dropout/random_uniform/RandomUniform?
!gru_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2#
!gru_cell_2/dropout/GreaterEqual/y?
gru_cell_2/dropout/GreaterEqualGreaterEqual8gru_cell_2/dropout/random_uniform/RandomUniform:output:0*gru_cell_2/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2!
gru_cell_2/dropout/GreaterEqual?
gru_cell_2/dropout/CastCast#gru_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_2/dropout/Cast?
gru_cell_2/dropout/Mul_1Mulgru_cell_2/dropout/Mul:z:0gru_cell_2/dropout/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout/Mul_1}
gru_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_2/dropout_1/Const?
gru_cell_2/dropout_1/MulMulgru_cell_2/ones_like:output:0#gru_cell_2/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_1/Mul?
gru_cell_2/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/dropout_1/Shape?
1gru_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform#gru_cell_2/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2?ɾ23
1gru_cell_2/dropout_1/random_uniform/RandomUniform?
#gru_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_2/dropout_1/GreaterEqual/y?
!gru_cell_2/dropout_1/GreaterEqualGreaterEqual:gru_cell_2/dropout_1/random_uniform/RandomUniform:output:0,gru_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_2/dropout_1/GreaterEqual?
gru_cell_2/dropout_1/CastCast%gru_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_2/dropout_1/Cast?
gru_cell_2/dropout_1/Mul_1Mulgru_cell_2/dropout_1/Mul:z:0gru_cell_2/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_1/Mul_1}
gru_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
gru_cell_2/dropout_2/Const?
gru_cell_2/dropout_2/MulMulgru_cell_2/ones_like:output:0#gru_cell_2/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_2/Mul?
gru_cell_2/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_2/dropout_2/Shape?
1gru_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform#gru_cell_2/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???23
1gru_cell_2/dropout_2/random_uniform/RandomUniform?
#gru_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2%
#gru_cell_2/dropout_2/GreaterEqual/y?
!gru_cell_2/dropout_2/GreaterEqualGreaterEqual:gru_cell_2/dropout_2/random_uniform/RandomUniform:output:0,gru_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2#
!gru_cell_2/dropout_2/GreaterEqual?
gru_cell_2/dropout_2/CastCast%gru_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
gru_cell_2/dropout_2/Cast?
gru_cell_2/dropout_2/Mul_1Mulgru_cell_2/dropout_2/Mul:z:0gru_cell_2/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/dropout_2/Mul_1?
gru_cell_2/mulMulstrided_slice_1:output:0gru_cell_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul?
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp?
gru_cell_2/MatMulMatMulgru_cell_2/mul:z:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul?
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp?
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/BiasAdd?
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split/split_dim?
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_2/split?
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp?
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack?
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1?
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2?
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice?
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp?
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_2/Const?
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_2/split_1/split_dim?
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_2/split_1?
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid?
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Sigmoid_1?
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_1/ReadVariableOp?
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid_1:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_1?
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_2/ReadVariableOp_1?
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack?
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1?
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2?
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1?
gru_cell_2/MatMul_2MatMulgru_cell_2/mul_1:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_2/MatMul_2?
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/Tanh?
gru_cell_2/mul_2/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_2/mul_2/ReadVariableOp?
gru_cell_2/mul_2Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_2i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_2/sub/x?
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/sub~
gru_cell_2/mul_3Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_2/mul_3?
gru_cell_2/add_3AddV2gru_cell_2/mul_2:z:0gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_2/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_10936*
condR
while_cond_10935*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1 ^gru_cell_2/mul_1/ReadVariableOp ^gru_cell_2/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2B
gru_cell_2/mul_2/ReadVariableOpgru_cell_2/mul_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?V
?
while_body_7810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
??A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_2_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
???
0while_gru_cell_2_biasadd_readvariableop_resource:	?<
(while_gru_cell_2_readvariableop_resource:
????'while/gru_cell_2/BiasAdd/ReadVariableOp?&while/gru_cell_2/MatMul/ReadVariableOp?while/gru_cell_2/ReadVariableOp?!while/gru_cell_2/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_2/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_2/ones_like/Shape?
 while/gru_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_2/ones_like/Const?
while/gru_cell_2/ones_likeFill)while/gru_cell_2/ones_like/Shape:output:0)while/gru_cell_2/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/ones_like?
while/gru_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_2/ones_like:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul?
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOp?
while/gru_cell_2/MatMulMatMulwhile/gru_cell_2/mul:z:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul?
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp?
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/BiasAdd?
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_2/split/split_dim?
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_2/split?
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_2/ReadVariableOp?
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack?
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1?
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2?
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice?
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_1?
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_2/Const?
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_2/split_1/split_dim?
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_2/split_1?
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add?
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid?
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_1?
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Sigmoid_1?
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_1?
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_2/ReadVariableOp_1?
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack?
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1?
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2?
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1?
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul_1:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/MatMul_2?
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/Tanh?
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_2u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_2/sub/x?
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/sub?
while/gru_cell_2/mul_3Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/mul_3?
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_2:z:0while/gru_cell_2/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_2/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_2/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_2/BiasAdd/ReadVariableOp'while/gru_cell_2/BiasAdd/ReadVariableOp2P
&while/gru_cell_2/MatMul/ReadVariableOp&while/gru_cell_2/MatMul/ReadVariableOp2B
while/gru_cell_2/ReadVariableOpwhile/gru_cell_2/ReadVariableOp2F
!while/gru_cell_2/ReadVariableOp_1!while/gru_cell_2/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?p
?
model_1_gru_3_while_body_60038
4model_1_gru_3_while_model_1_gru_3_while_loop_counter>
:model_1_gru_3_while_model_1_gru_3_while_maximum_iterations#
model_1_gru_3_while_placeholder%
!model_1_gru_3_while_placeholder_1%
!model_1_gru_3_while_placeholder_25
1model_1_gru_3_while_model_1_gru_3_strided_slice_0s
omodel_1_gru_3_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_3_tensorarrayunstack_tensorlistfromtensor_0S
?model_1_gru_3_while_gru_cell_3_matmul_readvariableop_resource_0:
??O
@model_1_gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0:	?L
8model_1_gru_3_while_gru_cell_3_readvariableop_resource_0:
?? 
model_1_gru_3_while_identity"
model_1_gru_3_while_identity_1"
model_1_gru_3_while_identity_2"
model_1_gru_3_while_identity_3"
model_1_gru_3_while_identity_43
/model_1_gru_3_while_model_1_gru_3_strided_sliceq
mmodel_1_gru_3_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_3_tensorarrayunstack_tensorlistfromtensorQ
=model_1_gru_3_while_gru_cell_3_matmul_readvariableop_resource:
??M
>model_1_gru_3_while_gru_cell_3_biasadd_readvariableop_resource:	?J
6model_1_gru_3_while_gru_cell_3_readvariableop_resource:
????5model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp?4model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp?-model_1/gru_3/while/gru_cell_3/ReadVariableOp?/model_1/gru_3/while/gru_cell_3/ReadVariableOp_1?
Emodel_1/gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2G
Emodel_1/gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape?
7model_1/gru_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemomodel_1_gru_3_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_3_tensorarrayunstack_tensorlistfromtensor_0model_1_gru_3_while_placeholderNmodel_1/gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype029
7model_1/gru_3/while/TensorArrayV2Read/TensorListGetItem?
.model_1/gru_3/while/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      20
.model_1/gru_3/while/gru_cell_3/ones_like/Shape?
.model_1/gru_3/while/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??20
.model_1/gru_3/while/gru_cell_3/ones_like/Const?
(model_1/gru_3/while/gru_cell_3/ones_likeFill7model_1/gru_3/while/gru_cell_3/ones_like/Shape:output:07model_1/gru_3/while/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2*
(model_1/gru_3/while/gru_cell_3/ones_like?
"model_1/gru_3/while/gru_cell_3/mulMul>model_1/gru_3/while/TensorArrayV2Read/TensorListGetItem:item:01model_1/gru_3/while/gru_cell_3/ones_like:output:0*
T0*
_output_shapes
:	?2$
"model_1/gru_3/while/gru_cell_3/mul?
4model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp?model_1_gru_3_while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype026
4model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp?
%model_1/gru_3/while/gru_cell_3/MatMulMatMul&model_1/gru_3/while/gru_cell_3/mul:z:0<model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2'
%model_1/gru_3/while/gru_cell_3/MatMul?
5model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp@model_1_gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype027
5model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp?
&model_1/gru_3/while/gru_cell_3/BiasAddBiasAdd/model_1/gru_3/while/gru_cell_3/MatMul:product:0=model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2(
&model_1/gru_3/while/gru_cell_3/BiasAdd?
.model_1/gru_3/while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.model_1/gru_3/while/gru_cell_3/split/split_dim?
$model_1/gru_3/while/gru_cell_3/splitSplit7model_1/gru_3/while/gru_cell_3/split/split_dim:output:0/model_1/gru_3/while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2&
$model_1/gru_3/while/gru_cell_3/split?
-model_1/gru_3/while/gru_cell_3/ReadVariableOpReadVariableOp8model_1_gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02/
-model_1/gru_3/while/gru_cell_3/ReadVariableOp?
2model_1/gru_3/while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2model_1/gru_3/while/gru_cell_3/strided_slice/stack?
4model_1/gru_3/while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4model_1/gru_3/while/gru_cell_3/strided_slice/stack_1?
4model_1/gru_3/while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4model_1/gru_3/while/gru_cell_3/strided_slice/stack_2?
,model_1/gru_3/while/gru_cell_3/strided_sliceStridedSlice5model_1/gru_3/while/gru_cell_3/ReadVariableOp:value:0;model_1/gru_3/while/gru_cell_3/strided_slice/stack:output:0=model_1/gru_3/while/gru_cell_3/strided_slice/stack_1:output:0=model_1/gru_3/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2.
,model_1/gru_3/while/gru_cell_3/strided_slice?
'model_1/gru_3/while/gru_cell_3/MatMul_1MatMul!model_1_gru_3_while_placeholder_25model_1/gru_3/while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2)
'model_1/gru_3/while/gru_cell_3/MatMul_1?
$model_1/gru_3/while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2&
$model_1/gru_3/while/gru_cell_3/Const?
0model_1/gru_3/while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0model_1/gru_3/while/gru_cell_3/split_1/split_dim?
&model_1/gru_3/while/gru_cell_3/split_1SplitV1model_1/gru_3/while/gru_cell_3/MatMul_1:product:0-model_1/gru_3/while/gru_cell_3/Const:output:09model_1/gru_3/while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2(
&model_1/gru_3/while/gru_cell_3/split_1?
"model_1/gru_3/while/gru_cell_3/addAddV2-model_1/gru_3/while/gru_cell_3/split:output:0/model_1/gru_3/while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2$
"model_1/gru_3/while/gru_cell_3/add?
&model_1/gru_3/while/gru_cell_3/SigmoidSigmoid&model_1/gru_3/while/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2(
&model_1/gru_3/while/gru_cell_3/Sigmoid?
$model_1/gru_3/while/gru_cell_3/add_1AddV2-model_1/gru_3/while/gru_cell_3/split:output:1/model_1/gru_3/while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2&
$model_1/gru_3/while/gru_cell_3/add_1?
(model_1/gru_3/while/gru_cell_3/Sigmoid_1Sigmoid(model_1/gru_3/while/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2*
(model_1/gru_3/while/gru_cell_3/Sigmoid_1?
$model_1/gru_3/while/gru_cell_3/mul_1Mul,model_1/gru_3/while/gru_cell_3/Sigmoid_1:y:0!model_1_gru_3_while_placeholder_2*
T0*
_output_shapes
:	?2&
$model_1/gru_3/while/gru_cell_3/mul_1?
/model_1/gru_3/while/gru_cell_3/ReadVariableOp_1ReadVariableOp8model_1_gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype021
/model_1/gru_3/while/gru_cell_3/ReadVariableOp_1?
4model_1/gru_3/while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       26
4model_1/gru_3/while/gru_cell_3/strided_slice_1/stack?
6model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        28
6model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_1?
6model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_2?
.model_1/gru_3/while/gru_cell_3/strided_slice_1StridedSlice7model_1/gru_3/while/gru_cell_3/ReadVariableOp_1:value:0=model_1/gru_3/while/gru_cell_3/strided_slice_1/stack:output:0?model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_1:output:0?model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask20
.model_1/gru_3/while/gru_cell_3/strided_slice_1?
'model_1/gru_3/while/gru_cell_3/MatMul_2MatMul(model_1/gru_3/while/gru_cell_3/mul_1:z:07model_1/gru_3/while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2)
'model_1/gru_3/while/gru_cell_3/MatMul_2?
$model_1/gru_3/while/gru_cell_3/add_2AddV2-model_1/gru_3/while/gru_cell_3/split:output:21model_1/gru_3/while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2&
$model_1/gru_3/while/gru_cell_3/add_2?
#model_1/gru_3/while/gru_cell_3/TanhTanh(model_1/gru_3/while/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2%
#model_1/gru_3/while/gru_cell_3/Tanh?
$model_1/gru_3/while/gru_cell_3/mul_2Mul*model_1/gru_3/while/gru_cell_3/Sigmoid:y:0!model_1_gru_3_while_placeholder_2*
T0*
_output_shapes
:	?2&
$model_1/gru_3/while/gru_cell_3/mul_2?
$model_1/gru_3/while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$model_1/gru_3/while/gru_cell_3/sub/x?
"model_1/gru_3/while/gru_cell_3/subSub-model_1/gru_3/while/gru_cell_3/sub/x:output:0*model_1/gru_3/while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2$
"model_1/gru_3/while/gru_cell_3/sub?
$model_1/gru_3/while/gru_cell_3/mul_3Mul&model_1/gru_3/while/gru_cell_3/sub:z:0'model_1/gru_3/while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2&
$model_1/gru_3/while/gru_cell_3/mul_3?
$model_1/gru_3/while/gru_cell_3/add_3AddV2(model_1/gru_3/while/gru_cell_3/mul_2:z:0(model_1/gru_3/while/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2&
$model_1/gru_3/while/gru_cell_3/add_3?
8model_1/gru_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!model_1_gru_3_while_placeholder_1model_1_gru_3_while_placeholder(model_1/gru_3/while/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype02:
8model_1/gru_3/while/TensorArrayV2Write/TensorListSetItemx
model_1/gru_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
model_1/gru_3/while/add/y?
model_1/gru_3/while/addAddV2model_1_gru_3_while_placeholder"model_1/gru_3/while/add/y:output:0*
T0*
_output_shapes
: 2
model_1/gru_3/while/add|
model_1/gru_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
model_1/gru_3/while/add_1/y?
model_1/gru_3/while/add_1AddV24model_1_gru_3_while_model_1_gru_3_while_loop_counter$model_1/gru_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
model_1/gru_3/while/add_1?
model_1/gru_3/while/IdentityIdentitymodel_1/gru_3/while/add_1:z:0^model_1/gru_3/while/NoOp*
T0*
_output_shapes
: 2
model_1/gru_3/while/Identity?
model_1/gru_3/while/Identity_1Identity:model_1_gru_3_while_model_1_gru_3_while_maximum_iterations^model_1/gru_3/while/NoOp*
T0*
_output_shapes
: 2 
model_1/gru_3/while/Identity_1?
model_1/gru_3/while/Identity_2Identitymodel_1/gru_3/while/add:z:0^model_1/gru_3/while/NoOp*
T0*
_output_shapes
: 2 
model_1/gru_3/while/Identity_2?
model_1/gru_3/while/Identity_3IdentityHmodel_1/gru_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^model_1/gru_3/while/NoOp*
T0*
_output_shapes
: 2 
model_1/gru_3/while/Identity_3?
model_1/gru_3/while/Identity_4Identity(model_1/gru_3/while/gru_cell_3/add_3:z:0^model_1/gru_3/while/NoOp*
T0*
_output_shapes
:	?2 
model_1/gru_3/while/Identity_4?
model_1/gru_3/while/NoOpNoOp6^model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp5^model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp.^model_1/gru_3/while/gru_cell_3/ReadVariableOp0^model_1/gru_3/while/gru_cell_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
model_1/gru_3/while/NoOp"?
>model_1_gru_3_while_gru_cell_3_biasadd_readvariableop_resource@model_1_gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0"?
=model_1_gru_3_while_gru_cell_3_matmul_readvariableop_resource?model_1_gru_3_while_gru_cell_3_matmul_readvariableop_resource_0"r
6model_1_gru_3_while_gru_cell_3_readvariableop_resource8model_1_gru_3_while_gru_cell_3_readvariableop_resource_0"E
model_1_gru_3_while_identity%model_1/gru_3/while/Identity:output:0"I
model_1_gru_3_while_identity_1'model_1/gru_3/while/Identity_1:output:0"I
model_1_gru_3_while_identity_2'model_1/gru_3/while/Identity_2:output:0"I
model_1_gru_3_while_identity_3'model_1/gru_3/while/Identity_3:output:0"I
model_1_gru_3_while_identity_4'model_1/gru_3/while/Identity_4:output:0"d
/model_1_gru_3_while_model_1_gru_3_strided_slice1model_1_gru_3_while_model_1_gru_3_strided_slice_0"?
mmodel_1_gru_3_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_3_tensorarrayunstack_tensorlistfromtensoromodel_1_gru_3_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2n
5model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp5model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp2l
4model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp4model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp2^
-model_1/gru_3/while/gru_cell_3/ReadVariableOp-model_1/gru_3/while/gru_cell_3/ReadVariableOp2b
/model_1/gru_3/while/gru_cell_3/ReadVariableOp_1/model_1/gru_3/while/gru_cell_3/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?l
?
@__inference_gru_3_layer_call_and_return_conditional_losses_11673

inputs=
)gru_cell_3_matmul_readvariableop_resource:
??9
*gru_cell_3_biasadd_readvariableop_resource:	?6
"gru_cell_3_readvariableop_resource:
??>
+gru_cell_3_matmul_1_readvariableop_resource:	?
identity??AssignVariableOp?ReadVariableOp?!gru_cell_3/BiasAdd/ReadVariableOp? gru_cell_3/MatMul/ReadVariableOp?"gru_cell_3/MatMul_1/ReadVariableOp?gru_cell_3/ReadVariableOp?gru_cell_3/ReadVariableOp_1?gru_cell_3/mul_1/ReadVariableOp?gru_cell_3/mul_2/ReadVariableOp?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gru_cell_3/ones_like/Shape}
gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/ones_like/Const?
gru_cell_3/ones_likeFill#gru_cell_3/ones_like/Shape:output:0#gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/ones_like?
gru_cell_3/mulMulstrided_slice_1:output:0gru_cell_3/ones_like:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul?
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp?
gru_cell_3/MatMulMatMulgru_cell_3/mul:z:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul?
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp?
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/BiasAdd?
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split/split_dim?
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
gru_cell_3/split?
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp?
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack?
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1?
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2?
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice?
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp?
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
gru_cell_3/Const?
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_3/split_1/split_dim?
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
gru_cell_3/split_1?
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid?
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Sigmoid_1?
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_1/ReadVariableOp?
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid_1:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_1?
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_3/ReadVariableOp_1?
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack?
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1?
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2?
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1?
gru_cell_3/MatMul_2MatMulgru_cell_3/mul_1:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
gru_cell_3/MatMul_2?
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/Tanh?
gru_cell_3/mul_2/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02!
gru_cell_3/mul_2/ReadVariableOp?
gru_cell_3/mul_2Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_2i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_3/sub/x?
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/sub~
gru_cell_3/mul_3Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
gru_cell_3/mul_3?
gru_cell_3/add_3AddV2gru_cell_3/mul_2:z:0gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
gru_cell_3/add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time?
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_11573*
condR
while_cond_11572*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1 ^gru_cell_3/mul_1/ReadVariableOp ^gru_cell_3/mul_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2B
gru_cell_3/mul_2/ReadVariableOpgru_cell_3/mul_2/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?4
?
?__inference_gru_2_layer_call_and_return_conditional_losses_6722

inputs"
gru_cell_2_6643:	?#
gru_cell_2_6645:
??
gru_cell_2_6647:	?#
gru_cell_2_6649:
??
identity??AssignVariableOp?ReadVariableOp?"gru_cell_2/StatefulPartitionedCall?whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_1?
"gru_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0gru_cell_2_6643gru_cell_2_6645gru_cell_2_6647gru_cell_2_6649*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_65982$
"gru_cell_2/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
timeq
ReadVariableOpReadVariableOpgru_cell_2_6643*
_output_shapes
:	?*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2_6645gru_cell_2_6647gru_cell_2_6649*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	?: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_6658*
condR
while_cond_6657*0
output_shapes
: : : : :	?: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	?*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
AssignVariableOpAssignVariableOpgru_cell_2_6643while:output:4^ReadVariableOp#^gru_cell_2/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOpo
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^AssignVariableOp^ReadVariableOp#^gru_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2H
"gru_cell_2/StatefulPartitionedCall"gru_cell_2/StatefulPartitionedCall2
whilewhile:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
*__inference_gru_cell_3_layer_call_fn_12494

inputs
states_0
unknown:
??
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	?:	?*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_71022
StatefulPartitionedCalls
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	?2

Identityw

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*
_output_shapes
:	?2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	?
 
_user_specified_nameinputs:IE

_output_shapes
:	?
"
_user_specified_name
states/0
?,
?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12772

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1s
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likeW
mulMulinputsones_like:output:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slicej
MatMul_1MatMulstates_0strided_slice:output:0*
T0*
_output_shapes
:	?2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	?2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	?2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	?2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	?2
	Sigmoid_1X
mul_1MulSigmoid_1:y:0states_0*
T0*
_output_shapes
:	?2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2MatMul	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	?2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	?2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	?2
TanhV
mul_2MulSigmoid:y:0states_0*
T0*
_output_shapes
:	?2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	?2
subR
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	?2
mul_3W
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:	?2
add_3\
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity`

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:	?2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	?
 
_user_specified_nameinputs:IE

_output_shapes
:	?
"
_user_specified_name
states/0
?
?
%__inference_gru_3_layer_call_fn_11112

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *H
fCRA
?__inference_gru_3_layer_call_and_return_conditional_losses_85442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?V
?
while_body_11573
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
??A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_3_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
???
0while_gru_cell_3_biasadd_readvariableop_resource:	?<
(while_gru_cell_3_readvariableop_resource:
????'while/gru_cell_3/BiasAdd/ReadVariableOp?&while/gru_cell_3/MatMul/ReadVariableOp?while/gru_cell_3/ReadVariableOp?!while/gru_cell_3/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/ones_like/Shape?
 while/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_3/ones_like/Const?
while/gru_cell_3/ones_likeFill)while/gru_cell_3/ones_like/Shape:output:0)while/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/ones_like?
while/gru_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/gru_cell_3/ones_like:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul?
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOp?
while/gru_cell_3/MatMulMatMulwhile/gru_cell_3/mul:z:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul?
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp?
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/BiasAdd?
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_3/split/split_dim?
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_3/split?
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_3/ReadVariableOp?
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack?
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1?
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2?
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice?
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_1?
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_3/Const?
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_3/split_1/split_dim?
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_3/split_1?
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add?
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid?
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_1?
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid_1?
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_1?
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_3/ReadVariableOp_1?
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack?
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1?
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2?
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1?
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul_1:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_2?
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Tanh?
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_2u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_3/sub/x?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/sub?
while/gru_cell_3/mul_3Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_3?
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_2:z:0while/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_3/BiasAdd/ReadVariableOp'while/gru_cell_3/BiasAdd/ReadVariableOp2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp2F
!while/gru_cell_3/ReadVariableOp_1!while/gru_cell_3/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?z
?
while_body_11378
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
??A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	?>
*while_gru_cell_3_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
???
0while_gru_cell_3_biasadd_readvariableop_resource:	?<
(while_gru_cell_3_readvariableop_resource:
????'while/gru_cell_3/BiasAdd/ReadVariableOp?&while/gru_cell_3/MatMul/ReadVariableOp?while/gru_cell_3/ReadVariableOp?!while/gru_cell_3/ReadVariableOp_1?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	?*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
 while/gru_cell_3/ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/ones_like/Shape?
 while/gru_cell_3/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 while/gru_cell_3/ones_like/Const?
while/gru_cell_3/ones_likeFill)while/gru_cell_3/ones_like/Shape:output:0)while/gru_cell_3/ones_like/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/ones_like?
while/gru_cell_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2 
while/gru_cell_3/dropout/Const?
while/gru_cell_3/dropout/MulMul#while/gru_cell_3/ones_like:output:0'while/gru_cell_3/dropout/Const:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/dropout/Mul?
while/gru_cell_3/dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
while/gru_cell_3/dropout/Shape?
5while/gru_cell_3/dropout/random_uniform/RandomUniformRandomUniform'while/gru_cell_3/dropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???27
5while/gru_cell_3/dropout/random_uniform/RandomUniform?
'while/gru_cell_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2)
'while/gru_cell_3/dropout/GreaterEqual/y?
%while/gru_cell_3/dropout/GreaterEqualGreaterEqual>while/gru_cell_3/dropout/random_uniform/RandomUniform:output:00while/gru_cell_3/dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2'
%while/gru_cell_3/dropout/GreaterEqual?
while/gru_cell_3/dropout/CastCast)while/gru_cell_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
while/gru_cell_3/dropout/Cast?
while/gru_cell_3/dropout/Mul_1Mul while/gru_cell_3/dropout/Mul:z:0!while/gru_cell_3/dropout/Cast:y:0*
T0*
_output_shapes
:	?2 
while/gru_cell_3/dropout/Mul_1?
 while/gru_cell_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_3/dropout_1/Const?
while/gru_cell_3/dropout_1/MulMul#while/gru_cell_3/ones_like:output:0)while/gru_cell_3/dropout_1/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_3/dropout_1/Mul?
 while/gru_cell_3/dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/dropout_1/Shape?
7while/gru_cell_3/dropout_1/random_uniform/RandomUniformRandomUniform)while/gru_cell_3/dropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???29
7while/gru_cell_3/dropout_1/random_uniform/RandomUniform?
)while/gru_cell_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_3/dropout_1/GreaterEqual/y?
'while/gru_cell_3/dropout_1/GreaterEqualGreaterEqual@while/gru_cell_3/dropout_1/random_uniform/RandomUniform:output:02while/gru_cell_3/dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_3/dropout_1/GreaterEqual?
while/gru_cell_3/dropout_1/CastCast+while/gru_cell_3/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_3/dropout_1/Cast?
 while/gru_cell_3/dropout_1/Mul_1Mul"while/gru_cell_3/dropout_1/Mul:z:0#while/gru_cell_3/dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_3/dropout_1/Mul_1?
 while/gru_cell_3/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2"
 while/gru_cell_3/dropout_2/Const?
while/gru_cell_3/dropout_2/MulMul#while/gru_cell_3/ones_like:output:0)while/gru_cell_3/dropout_2/Const:output:0*
T0*
_output_shapes
:	?2 
while/gru_cell_3/dropout_2/Mul?
 while/gru_cell_3/dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2"
 while/gru_cell_3/dropout_2/Shape?
7while/gru_cell_3/dropout_2/random_uniform/RandomUniformRandomUniform)while/gru_cell_3/dropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2??b29
7while/gru_cell_3/dropout_2/random_uniform/RandomUniform?
)while/gru_cell_3/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2+
)while/gru_cell_3/dropout_2/GreaterEqual/y?
'while/gru_cell_3/dropout_2/GreaterEqualGreaterEqual@while/gru_cell_3/dropout_2/random_uniform/RandomUniform:output:02while/gru_cell_3/dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2)
'while/gru_cell_3/dropout_2/GreaterEqual?
while/gru_cell_3/dropout_2/CastCast+while/gru_cell_3/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2!
while/gru_cell_3/dropout_2/Cast?
 while/gru_cell_3/dropout_2/Mul_1Mul"while/gru_cell_3/dropout_2/Mul:z:0#while/gru_cell_3/dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2"
 while/gru_cell_3/dropout_2/Mul_1?
while/gru_cell_3/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/gru_cell_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul?
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOp?
while/gru_cell_3/MatMulMatMulwhile/gru_cell_3/mul:z:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul?
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp?
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/BiasAdd?
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 while/gru_cell_3/split/split_dim?
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
while/gru_cell_3/split?
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02!
while/gru_cell_3/ReadVariableOp?
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack?
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1?
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2?
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice?
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_1?
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
while/gru_cell_3/Const?
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_3/split_1/split_dim?
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	?:	?: *
	num_split2
while/gru_cell_3/split_1?
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add?
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid?
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_1?
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Sigmoid_1?
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_1?
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_3/ReadVariableOp_1?
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack?
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1?
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2?
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1?
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul_1:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/MatMul_2?
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/Tanh?
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_2u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_3/sub/x?
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/sub?
while/gru_cell_3/mul_3Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/mul_3?
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_2:z:0while/gru_cell_3/mul_3:z:0*
T0*
_output_shapes
:	?2
while/gru_cell_3/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_3/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1k
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity~
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_1m
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0^while/NoOp*
T0*
_output_shapes
:	?2
while/Identity_4?

while/NoOpNoOp(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2

while/NoOp"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	?: : : : : 2R
'while/gru_cell_3/BiasAdd/ReadVariableOp'while/gru_cell_3/BiasAdd/ReadVariableOp2P
&while/gru_cell_3/MatMul/ReadVariableOp&while/gru_cell_3/MatMul/ReadVariableOp2B
while/gru_cell_3/ReadVariableOpwhile/gru_cell_3/ReadVariableOp2F
!while/gru_cell_3/ReadVariableOp_1!while/gru_cell_3/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:

_output_shapes
: :

_output_shapes
: 
?J
?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12480

inputs
states_02
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?mul_1/ReadVariableOp?mul_2/ReadVariableOps
ones_like/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ones_like/Const|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*
_output_shapes
:	?2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Constw
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*
_output_shapes
:	?2
dropout/Mulo
dropout/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2?ۤ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout/GreaterEqualw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout/Castr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*
_output_shapes
:	?2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_1/Const}
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*
_output_shapes
:	?2
dropout_1/Muls
dropout_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_1/Shape?
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2Ͻ?2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_1/GreaterEqual/y?
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_1/GreaterEqual}
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_1/Castz
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_2/Const}
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*
_output_shapes
:	?2
dropout_2/Muls
dropout_2/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
dropout_2/Shape?
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*
_output_shapes
:	?*
dtype0*
seed???)*
seed2???2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L=2
dropout_2/GreaterEqual/y?
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*
_output_shapes
:	?2
dropout_2/GreaterEqual}
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
:	?2
dropout_2/Castz
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*
_output_shapes
:	?2
dropout_2/Mul_1V
mulMulinputsdropout/Mul_1:z:0*
T0*
_output_shapes
:	?2
mul?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpl
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	?:	?:	?*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_sliceu
MatMul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp?
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:output:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0* 
_output_shapes
:::*
	num_split2	
split_1X
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:2
addI
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:2	
Sigmoid\
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:2
add_1O
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:2
	Sigmoid_1o
mul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpe
mul_1MulSigmoid_1:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1m
MatMul_2BatchMatMulV2	mul_1:z:0strided_slice_1:output:0*
T0*
_output_shapes
:2

MatMul_2]
add_2AddV2split:output:2MatMul_2:output:0*
T0*
_output_shapes
:2
add_2B
TanhTanh	add_2:z:0*
T0*
_output_shapes
:2
Tanho
mul_2/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_2/ReadVariableOpc
mul_2MulSigmoid:y:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_2S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_3Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_3P
add_3AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
:2
add_3U
IdentityIdentity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

IdentityY

Identity_1Identity	add_3:z:0^NoOp*
T0*
_output_shapes
:2

Identity_1?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul_1/ReadVariableOp^mul_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	?:	?: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp:G C

_output_shapes
:	?
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
? 
?
B__inference_lengths_layer_call_and_return_conditional_losses_12036

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAddp
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????2

Identity?
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
@
input_25
serving_default_input_2:0??????????@
lengths5
StatefulPartitionedCall:0??????????=
notes4
StatefulPartitionedCall:1?????????_>
times5
StatefulPartitionedCall:2??????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
		variables

trainable_variables
regularization_losses
	keras_api

signatures
z__call__
*{&call_and_return_all_conditional_losses
|_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
?
 	variables
!trainable_variables
"regularization_losses
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
0
1
62
73
84
95
:6
;7
$8
%9
*10
+11
012
113"
trackable_list_wrapper
?
0
1
62
73
84
95
:6
;7
$8
%9
*10
+11
012
113"
trackable_list_wrapper
 "
trackable_list_wrapper
?
<layer_regularization_losses
		variables
=non_trainable_variables

>layers
?layer_metrics

trainable_variables
regularization_losses
@metrics
z__call__
|_default_save_signature
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
": 
??2dense_1/kernel
:?2dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Alayer_regularization_losses
Bnon_trainable_variables

Clayers
	variables
Dlayer_metrics
trainable_variables
regularization_losses
Emetrics
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
?

6kernel
7recurrent_kernel
8bias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Jlayer_regularization_losses
	variables
Knon_trainable_variables

Llayers
Mlayer_metrics
trainable_variables

Nstates
regularization_losses
Ometrics
__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

9kernel
:recurrent_kernel
;bias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Tlayer_regularization_losses
	variables
Unon_trainable_variables

Vlayers
Wlayer_metrics
trainable_variables

Xstates
regularization_losses
Ymetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Zlayer_regularization_losses
[non_trainable_variables

\layers
 	variables
]layer_metrics
!trainable_variables
"regularization_losses
^metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	?_2notes/kernel
:_2
notes/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_layer_regularization_losses
`non_trainable_variables

alayers
&	variables
blayer_metrics
'trainable_variables
(regularization_losses
cmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :
??2times/kernel
:?2
times/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
dlayer_regularization_losses
enon_trainable_variables

flayers
,	variables
glayer_metrics
-trainable_variables
.regularization_losses
hmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??2lengths/kernel
:?2lengths/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
ilayer_regularization_losses
jnon_trainable_variables

klayers
2	variables
llayer_metrics
3trainable_variables
4regularization_losses
mmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)
??2gru_2/gru_cell_2/kernel
5:3
??2!gru_2/gru_cell_2/recurrent_kernel
$:"?2gru_2/gru_cell_2/bias
+:)
??2gru_3/gru_cell_3/kernel
5:3
??2!gru_3/gru_cell_3/recurrent_kernel
$:"?2gru_3/gru_cell_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
5
60
71
82"
trackable_list_wrapper
 "
trackable_list_wrapper
?
nlayer_regularization_losses
onon_trainable_variables

players
F	variables
qlayer_metrics
Gtrainable_variables
Hregularization_losses
rmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
'
s0"
trackable_list_wrapper
 "
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
5
90
:1
;2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
tlayer_regularization_losses
unon_trainable_variables

vlayers
P	variables
wlayer_metrics
Qtrainable_variables
Rregularization_losses
xmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
'
y0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
!:	?2gru_2/Variable
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
!:	?2gru_3/Variable
?2?
&__inference_model_1_layer_call_fn_8257
&__inference_model_1_layer_call_fn_9152
&__inference_model_1_layer_call_fn_9193
&__inference_model_1_layer_call_fn_8978?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_model_1_layer_call_and_return_conditional_losses_9639
B__inference_model_1_layer_call_and_return_conditional_losses_10188
A__inference_model_1_layer_call_and_return_conditional_losses_9023
A__inference_model_1_layer_call_and_return_conditional_losses_9068?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
__inference__wrapped_model_6184input_2"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_10197?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_10228?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_gru_2_layer_call_fn_10241
%__inference_gru_2_layer_call_fn_10254
%__inference_gru_2_layer_call_fn_10267
%__inference_gru_2_layer_call_fn_10280?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_gru_2_layer_call_and_return_conditional_losses_10451
@__inference_gru_2_layer_call_and_return_conditional_losses_10670
@__inference_gru_2_layer_call_and_return_conditional_losses_10841
@__inference_gru_2_layer_call_and_return_conditional_losses_11060?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_gru_3_layer_call_fn_11073
%__inference_gru_3_layer_call_fn_11086
%__inference_gru_3_layer_call_fn_11099
%__inference_gru_3_layer_call_fn_11112?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
@__inference_gru_3_layer_call_and_return_conditional_losses_11283
@__inference_gru_3_layer_call_and_return_conditional_losses_11502
@__inference_gru_3_layer_call_and_return_conditional_losses_11673
@__inference_gru_3_layer_call_and_return_conditional_losses_11892?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_1_layer_call_fn_11897
)__inference_dropout_1_layer_call_fn_11902?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_1_layer_call_and_return_conditional_losses_11907
D__inference_dropout_1_layer_call_and_return_conditional_losses_11919?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_notes_layer_call_fn_11928?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_notes_layer_call_and_return_conditional_losses_11958?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_times_layer_call_fn_11967?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_times_layer_call_and_return_conditional_losses_11997?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_lengths_layer_call_fn_12006?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_lengths_layer_call_and_return_conditional_losses_12036?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_9111input_2"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_gru_cell_2_layer_call_fn_12050
*__inference_gru_cell_2_layer_call_fn_12064
*__inference_gru_cell_2_layer_call_fn_12132
*__inference_gru_cell_2_layer_call_fn_12224?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12278
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12328
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12402
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12480?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_gru_cell_3_layer_call_fn_12494
*__inference_gru_cell_3_layer_call_fn_12508
*__inference_gru_cell_3_layer_call_fn_12576
*__inference_gru_cell_3_layer_call_fn_12668?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12722
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12772
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12846
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12924?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
__inference__wrapped_model_6184?687s9;:y01*+$%5?2
+?(
&?#
input_2??????????
? "???
1
lengths&?#
lengths??????????
,
notes#? 
notes?????????_
-
times$?!
times???????????
B__inference_dense_1_layer_call_and_return_conditional_losses_10228f4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
'__inference_dense_1_layer_call_fn_10197Y4?1
*?'
%?"
inputs??????????
? "????????????
D__inference_dropout_1_layer_call_and_return_conditional_losses_11907f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
D__inference_dropout_1_layer_call_and_return_conditional_losses_11919f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
)__inference_dropout_1_layer_call_fn_11897Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
)__inference_dropout_1_layer_call_fn_11902Y8?5
.?+
%?"
inputs??????????
p
? "????????????
@__inference_gru_2_layer_call_and_return_conditional_losses_10451{687sG?D
=?:
,?)
'?$
inputs/0??????????

 
p 

 
? "*?'
 ?
0??????????
? ?
@__inference_gru_2_layer_call_and_return_conditional_losses_10670{687sG?D
=?:
,?)
'?$
inputs/0??????????

 
p

 
? "*?'
 ?
0??????????
? ?
@__inference_gru_2_layer_call_and_return_conditional_losses_10841t687s@?=
6?3
%?"
inputs??????????

 
p 

 
? "*?'
 ?
0??????????
? ?
@__inference_gru_2_layer_call_and_return_conditional_losses_11060t687s@?=
6?3
%?"
inputs??????????

 
p

 
? "*?'
 ?
0??????????
? ?
%__inference_gru_2_layer_call_fn_10241ns687G?D
=?:
,?)
'?$
inputs/0??????????

 
p 

 
? "????????????
%__inference_gru_2_layer_call_fn_10254ns687G?D
=?:
,?)
'?$
inputs/0??????????

 
p

 
? "????????????
%__inference_gru_2_layer_call_fn_10267g687s@?=
6?3
%?"
inputs??????????

 
p 

 
? "????????????
%__inference_gru_2_layer_call_fn_10280g687s@?=
6?3
%?"
inputs??????????

 
p

 
? "????????????
@__inference_gru_3_layer_call_and_return_conditional_losses_11283{9;:yG?D
=?:
,?)
'?$
inputs/0??????????

 
p 

 
? "*?'
 ?
0??????????
? ?
@__inference_gru_3_layer_call_and_return_conditional_losses_11502{9;:yG?D
=?:
,?)
'?$
inputs/0??????????

 
p

 
? "*?'
 ?
0??????????
? ?
@__inference_gru_3_layer_call_and_return_conditional_losses_11673t9;:y@?=
6?3
%?"
inputs??????????

 
p 

 
? "*?'
 ?
0??????????
? ?
@__inference_gru_3_layer_call_and_return_conditional_losses_11892t9;:y@?=
6?3
%?"
inputs??????????

 
p

 
? "*?'
 ?
0??????????
? ?
%__inference_gru_3_layer_call_fn_11073ny9;:G?D
=?:
,?)
'?$
inputs/0??????????

 
p 

 
? "????????????
%__inference_gru_3_layer_call_fn_11086ny9;:G?D
=?:
,?)
'?$
inputs/0??????????

 
p

 
? "????????????
%__inference_gru_3_layer_call_fn_11099g9;:y@?=
6?3
%?"
inputs??????????

 
p 

 
? "????????????
%__inference_gru_3_layer_call_fn_11112g9;:y@?=
6?3
%?"
inputs??????????

 
p

 
? "????????????
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12278?687i?f
_?\
?
inputs	?
<?9
7?4	"?
?	?
?

jstates/0VariableSpec
p 
? "4?1
*?'
?
0/0
?
?
0/1/0
? ?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12328?687L?I
B??
?
inputs	?
?
?
states/0	?
p 
? "B??
8?5
?
0/0	?
?
?
0/1/0	?
? ?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12402?687L?I
B??
?
inputs	?
?
?
states/0	?
p
? "B??
8?5
?
0/0	?
?
?
0/1/0	?
? ?
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_12480?687i?f
_?\
?
inputs	?
<?9
7?4	"?
?	?
?

jstates/0VariableSpec
p
? "4?1
*?'
?
0/0
?
?
0/1/0
? ?
*__inference_gru_cell_2_layer_call_fn_12050?687L?I
B??
?
inputs	?
?
?
states/0	?
p 
? "4?1
?
0	?
?
?
1/0	??
*__inference_gru_cell_2_layer_call_fn_12064?687L?I
B??
?
inputs	?
?
?
states/0	?
p
? "4?1
?
0	?
?
?
1/0	??
*__inference_gru_cell_2_layer_call_fn_12132?687i?f
_?\
?
inputs	?
<?9
7?4	"?
?	?
?

jstates/0VariableSpec
p 
? "&?#
?	
0
?
?
1/0?
*__inference_gru_cell_2_layer_call_fn_12224?687i?f
_?\
?
inputs	?
<?9
7?4	"?
?	?
?

jstates/0VariableSpec
p
? "&?#
?	
0
?
?
1/0?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12722?9;:i?f
_?\
?
inputs	?
<?9
7?4	"?
?	?
?

jstates/0VariableSpec
p 
? "4?1
*?'
?
0/0
?
?
0/1/0
? ?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12772?9;:L?I
B??
?
inputs	?
?
?
states/0	?
p 
? "B??
8?5
?
0/0	?
?
?
0/1/0	?
? ?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12846?9;:L?I
B??
?
inputs	?
?
?
states/0	?
p
? "B??
8?5
?
0/0	?
?
?
0/1/0	?
? ?
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_12924?9;:i?f
_?\
?
inputs	?
<?9
7?4	"?
?	?
?

jstates/0VariableSpec
p
? "4?1
*?'
?
0/0
?
?
0/1/0
? ?
*__inference_gru_cell_3_layer_call_fn_12494?9;:L?I
B??
?
inputs	?
?
?
states/0	?
p 
? "4?1
?
0	?
?
?
1/0	??
*__inference_gru_cell_3_layer_call_fn_12508?9;:L?I
B??
?
inputs	?
?
?
states/0	?
p
? "4?1
?
0	?
?
?
1/0	??
*__inference_gru_cell_3_layer_call_fn_12576?9;:i?f
_?\
?
inputs	?
<?9
7?4	"?
?	?
?

jstates/0VariableSpec
p 
? "&?#
?	
0
?
?
1/0?
*__inference_gru_cell_3_layer_call_fn_12668?9;:i?f
_?\
?
inputs	?
<?9
7?4	"?
?	?
?

jstates/0VariableSpec
p
? "&?#
?	
0
?
?
1/0?
B__inference_lengths_layer_call_and_return_conditional_losses_12036f014?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
'__inference_lengths_layer_call_fn_12006Y014?1
*?'
%?"
inputs??????????
? "????????????
B__inference_model_1_layer_call_and_return_conditional_losses_10188?687s9;:y01*+$%<?9
2?/
%?"
inputs??????????
p

 
? "x?u
n?k
!?
0/0?????????_
"?
0/1??????????
"?
0/2??????????
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_9023?687s9;:y01*+$%=?:
3?0
&?#
input_2??????????
p 

 
? "x?u
n?k
!?
0/0?????????_
"?
0/1??????????
"?
0/2??????????
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_9068?687s9;:y01*+$%=?:
3?0
&?#
input_2??????????
p

 
? "x?u
n?k
!?
0/0?????????_
"?
0/1??????????
"?
0/2??????????
? ?
A__inference_model_1_layer_call_and_return_conditional_losses_9639?687s9;:y01*+$%<?9
2?/
%?"
inputs??????????
p 

 
? "x?u
n?k
!?
0/0?????????_
"?
0/1??????????
"?
0/2??????????
? ?
&__inference_model_1_layer_call_fn_8257?687s9;:y01*+$%=?:
3?0
&?#
input_2??????????
p 

 
? "h?e
?
0?????????_
 ?
1??????????
 ?
2???????????
&__inference_model_1_layer_call_fn_8978?687s9;:y01*+$%=?:
3?0
&?#
input_2??????????
p

 
? "h?e
?
0?????????_
 ?
1??????????
 ?
2???????????
&__inference_model_1_layer_call_fn_9152?687s9;:y01*+$%<?9
2?/
%?"
inputs??????????
p 

 
? "h?e
?
0?????????_
 ?
1??????????
 ?
2???????????
&__inference_model_1_layer_call_fn_9193?687s9;:y01*+$%<?9
2?/
%?"
inputs??????????
p

 
? "h?e
?
0?????????_
 ?
1??????????
 ?
2???????????
@__inference_notes_layer_call_and_return_conditional_losses_11958e$%4?1
*?'
%?"
inputs??????????
? ")?&
?
0?????????_
? ?
%__inference_notes_layer_call_fn_11928X$%4?1
*?'
%?"
inputs??????????
? "??????????_?
"__inference_signature_wrapper_9111?687s9;:y01*+$%@?=
? 
6?3
1
input_2&?#
input_2??????????"???
1
lengths&?#
lengths??????????
,
notes#? 
notes?????????_
-
times$?!
times???????????
@__inference_times_layer_call_and_return_conditional_losses_11997f*+4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
%__inference_times_layer_call_fn_11967Y*+4?1
*?'
%?"
inputs??????????
? "???????????