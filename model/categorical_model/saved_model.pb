±8
Ö¬
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
­
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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

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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.5.02v2.5.0-0-ga4dfb8d1a718¥í4
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:*
dtype0
u
notes/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	_*
shared_namenotes/kernel
n
 notes/kernel/Read/ReadVariableOpReadVariableOpnotes/kernel*
_output_shapes
:	_*
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
s
vels/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	}*
shared_namevels/kernel
l
vels/kernel/Read/ReadVariableOpReadVariableOpvels/kernel*
_output_shapes
:	}*
dtype0
j
	vels/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:}*
shared_name	vels/bias
c
vels/bias/Read/ReadVariableOpReadVariableOp	vels/bias*
_output_shapes
:}*
dtype0
v
times/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
æ*
shared_nametimes/kernel
o
 times/kernel/Read/ReadVariableOpReadVariableOptimes/kernel* 
_output_shapes
:
æ*
dtype0
m

times/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:æ*
shared_name
times/bias
f
times/bias/Read/ReadVariableOpReadVariableOp
times/bias*
_output_shapes	
:æ*
dtype0
z
lengths/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬*
shared_namelengths/kernel
s
"lengths/kernel/Read/ReadVariableOpReadVariableOplengths/kernel* 
_output_shapes
:
¬*
dtype0
q
lengths/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬*
shared_namelengths/bias
j
 lengths/bias/Read/ReadVariableOpReadVariableOplengths/bias*
_output_shapes	
:¬*
dtype0

gru_2/gru_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_namegru_2/gru_cell_2/kernel

+gru_2/gru_cell_2/kernel/Read/ReadVariableOpReadVariableOpgru_2/gru_cell_2/kernel* 
_output_shapes
:
*
dtype0
 
!gru_2/gru_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!gru_2/gru_cell_2/recurrent_kernel

5gru_2/gru_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_2/gru_cell_2/recurrent_kernel* 
_output_shapes
:
*
dtype0

gru_2/gru_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namegru_2/gru_cell_2/bias
|
)gru_2/gru_cell_2/bias/Read/ReadVariableOpReadVariableOpgru_2/gru_cell_2/bias*
_output_shapes	
:*
dtype0

gru_3/gru_cell_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_namegru_3/gru_cell_3/kernel

+gru_3/gru_cell_3/kernel/Read/ReadVariableOpReadVariableOpgru_3/gru_cell_3/kernel* 
_output_shapes
:
*
dtype0
 
!gru_3/gru_cell_3/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!gru_3/gru_cell_3/recurrent_kernel

5gru_3/gru_cell_3/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_3/gru_cell_3/recurrent_kernel* 
_output_shapes
:
*
dtype0

gru_3/gru_cell_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namegru_3/gru_cell_3/bias
|
)gru_3/gru_cell_3/bias/Read/ReadVariableOpReadVariableOpgru_3/gru_cell_3/bias*
_output_shapes	
:*
dtype0
y
gru_2/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namegru_2/Variable
r
"gru_2/Variable/Read/ReadVariableOpReadVariableOpgru_2/Variable*
_output_shapes
:	*
dtype0
y
gru_3/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namegru_3/Variable
r
"gru_3/Variable/Read/ReadVariableOpReadVariableOpgru_3/Variable*
_output_shapes
:	*
dtype0

NoOpNoOp
1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ñ0
valueÇ0BÄ0 B½0

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
l
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
l
 cell
!
state_spec
"regularization_losses
#	variables
$trainable_variables
%	keras_api
R
&regularization_losses
'	variables
(trainable_variables
)	keras_api
h

*kernel
+bias
,regularization_losses
-	variables
.trainable_variables
/	keras_api
h

0kernel
1bias
2regularization_losses
3	variables
4trainable_variables
5	keras_api
h

6kernel
7bias
8regularization_losses
9	variables
:trainable_variables
;	keras_api
h

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
 
v
0
1
B2
C3
D4
E5
F6
G7
*8
+9
010
111
612
713
<14
=15
v
0
1
B2
C3
D4
E5
F6
G7
*8
+9
010
111
612
713
<14
=15
­
Hmetrics
regularization_losses

Ilayers
	variables
Jnon_trainable_variables
trainable_variables
Klayer_metrics
Llayer_regularization_losses
 
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
Mmetrics
regularization_losses

Nlayers
	variables
Onon_trainable_variables
trainable_variables
Player_metrics
Qlayer_regularization_losses
 
 
 
­
Rmetrics
regularization_losses

Slayers
	variables
Tnon_trainable_variables
trainable_variables
Ulayer_metrics
Vlayer_regularization_losses
~

Bkernel
Crecurrent_kernel
Dbias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
 
 

B0
C1
D2

B0
C1
D2
¹
regularization_losses
[metrics

\layers
	variables
]non_trainable_variables
trainable_variables

^states
_layer_metrics
`layer_regularization_losses
~

Ekernel
Frecurrent_kernel
Gbias
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
 
 

E0
F1
G2

E0
F1
G2
¹
"regularization_losses
emetrics

flayers
#	variables
gnon_trainable_variables
$trainable_variables

hstates
ilayer_metrics
jlayer_regularization_losses
 
 
 
­
kmetrics
&regularization_losses

llayers
'	variables
mnon_trainable_variables
(trainable_variables
nlayer_metrics
olayer_regularization_losses
XV
VARIABLE_VALUEnotes/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
notes/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

*0
+1

*0
+1
­
pmetrics
,regularization_losses

qlayers
-	variables
rnon_trainable_variables
.trainable_variables
slayer_metrics
tlayer_regularization_losses
WU
VARIABLE_VALUEvels/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	vels/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

00
11
­
umetrics
2regularization_losses

vlayers
3	variables
wnon_trainable_variables
4trainable_variables
xlayer_metrics
ylayer_regularization_losses
XV
VARIABLE_VALUEtimes/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
times/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

60
71

60
71
­
zmetrics
8regularization_losses

{layers
9	variables
|non_trainable_variables
:trainable_variables
}layer_metrics
~layer_regularization_losses
ZX
VARIABLE_VALUElengths/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUElengths/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
±
metrics
>regularization_losses
layers
?	variables
non_trainable_variables
@trainable_variables
layer_metrics
 layer_regularization_losses
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
F
0
1
2
3
4
5
6
7
	8

9
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

B0
C1
D2

B0
C1
D2
²
metrics
Wregularization_losses
layers
X	variables
non_trainable_variables
Ytrainable_variables
layer_metrics
 layer_regularization_losses
 

0
 

0
 
 
 

E0
F1
G2

E0
F1
G2
²
metrics
aregularization_losses
layers
b	variables
non_trainable_variables
ctrainable_variables
layer_metrics
 layer_regularization_losses
 

 0
 

0
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

serving_default_input_2Placeholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿ
ô
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2dense_1/kerneldense_1/biasgru_2/gru_cell_2/kernelgru_2/gru_cell_2/bias!gru_2/gru_cell_2/recurrent_kernelgru_2/Variablegru_3/gru_cell_3/kernelgru_3/gru_cell_3/bias!gru_3/gru_cell_3/recurrent_kernelgru_3/Variablelengths/kernellengths/biastimes/kernel
times/biasvels/kernel	vels/biasnotes/kernel
notes/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *r
_output_shapes`
^:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ_:ÿÿÿÿÿÿÿÿÿæ:ÿÿÿÿÿÿÿÿÿ}*2
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8 *,
f'R%
#__inference_signature_wrapper_11449
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ç
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp notes/kernel/Read/ReadVariableOpnotes/bias/Read/ReadVariableOpvels/kernel/Read/ReadVariableOpvels/bias/Read/ReadVariableOp times/kernel/Read/ReadVariableOptimes/bias/Read/ReadVariableOp"lengths/kernel/Read/ReadVariableOp lengths/bias/Read/ReadVariableOp+gru_2/gru_cell_2/kernel/Read/ReadVariableOp5gru_2/gru_cell_2/recurrent_kernel/Read/ReadVariableOp)gru_2/gru_cell_2/bias/Read/ReadVariableOp+gru_3/gru_cell_3/kernel/Read/ReadVariableOp5gru_3/gru_cell_3/recurrent_kernel/Read/ReadVariableOp)gru_3/gru_cell_3/bias/Read/ReadVariableOp"gru_2/Variable/Read/ReadVariableOp"gru_3/Variable/Read/ReadVariableOpConst*
Tin
2*
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
GPU2 *0J 8 *'
f"R 
__inference__traced_save_14907
ú
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biasnotes/kernel
notes/biasvels/kernel	vels/biastimes/kernel
times/biaslengths/kernellengths/biasgru_2/gru_cell_2/kernel!gru_2/gru_cell_2/recurrent_kernelgru_2/gru_cell_2/biasgru_3/gru_cell_3/kernel!gru_3/gru_cell_3/recurrent_kernelgru_3/gru_cell_3/biasgru_2/Variablegru_3/Variable*
Tin
2*
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
GPU2 *0J 8 **
f%R#
!__inference__traced_restore_14971Û4
Ó
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_12540

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¹
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yÃ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Êf
å
@__inference_gru_2_layer_call_and_return_conditional_losses_13081

inputs=
)gru_cell_2_matmul_readvariableop_resource:
9
*gru_cell_2_biasadd_readvariableop_resource:	6
"gru_cell_2_readvariableop_resource:
>
+gru_cell_2_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_2/BiasAdd/ReadVariableOp¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢gru_cell_2/ReadVariableOp_1¢gru_cell_2/mul/ReadVariableOp¢gru_cell_2/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp
gru_cell_2/MatMulMatMulstrided_slice_1:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul®
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp¥
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/BiasAdd
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split/split_dimÀ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_2/split
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2À
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_sliceµ
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp­
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_2/Const
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split_1/split_dimí
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid_1«
gru_cell_2/mul/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/mul/ReadVariableOp
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0%gru_cell_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp_1
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2Ì
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1
gru_cell_2/MatMul_2MatMulgru_cell_2/mul:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_2
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Tanh¯
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_2/mul_1/ReadVariableOp
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_2/sub~
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12985*
condR
while_cond_12984*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12>
gru_cell_2/mul/ReadVariableOpgru_cell_2/mul/ReadVariableOp2B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ô
%__inference_gru_2_layer_call_fn_12553
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *H
fCRA
?__inference_gru_2_layer_call_and_return_conditional_losses_88472
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
À.
º
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_9000

inputs
states:	2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slicez
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
MatMul_1/ReadVariableOp
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1p
mul/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
mul/ReadVariableOpf
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
Tanht
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
mul_1/ReadVariableOpj
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ð
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:	2

Identityô

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:	: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
ô

¨
model_1_gru_3_while_cond_84458
4model_1_gru_3_while_model_1_gru_3_while_loop_counter>
:model_1_gru_3_while_model_1_gru_3_while_maximum_iterations#
model_1_gru_3_while_placeholder%
!model_1_gru_3_while_placeholder_1%
!model_1_gru_3_while_placeholder_28
4model_1_gru_3_while_less_model_1_gru_3_strided_sliceN
Jmodel_1_gru_3_while_model_1_gru_3_while_cond_8445___redundant_placeholder0N
Jmodel_1_gru_3_while_model_1_gru_3_while_cond_8445___redundant_placeholder1N
Jmodel_1_gru_3_while_model_1_gru_3_while_cond_8445___redundant_placeholder2N
Jmodel_1_gru_3_while_model_1_gru_3_while_cond_8445___redundant_placeholder3 
model_1_gru_3_while_identity
´
model_1/gru_3/while/LessLessmodel_1_gru_3_while_placeholder4model_1_gru_3_while_less_model_1_gru_3_strided_slice*
T0*
_output_shapes
: 2
model_1/gru_3/while/Less
model_1/gru_3/while/IdentityIdentitymodel_1/gru_3/while/Less:z:0*
T0
*
_output_shapes
: 2
model_1/gru_3/while/Identity"E
model_1_gru_3_while_identity%model_1/gru_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
Õ(
å
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_9614

inputs

states2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_sliceh
MatMul_1MatMulstatesstrided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1R
mulMulSigmoid_1:y:0states*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
TanhT
mul_1MulSigmoid:y:0states*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ª
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity®

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_namestates
á
£
while_cond_10773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_10773___redundant_placeholder03
/while_while_cond_10773___redundant_placeholder13
/while_while_cond_10773___redundant_placeholder23
/while_while_cond_10773___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
 
÷
?__inference_vels_layer_call_and_return_conditional_losses_14053

inputs4
!tensordot_readvariableop_resource:	}-
biasadd_readvariableop_resource:}
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	}*
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
Tensordot/GatherV2/axisÑ
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
Tensordot/GatherV2_1/axis×
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:}2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:}*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü

while_cond_8736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_8736___redundant_placeholder02
.while_while_cond_8736___redundant_placeholder12
.while_while_cond_8736___redundant_placeholder22
.while_while_cond_8736___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
µ.
ç
__inference__traced_save_14907
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop+
'savev2_notes_kernel_read_readvariableop)
%savev2_notes_bias_read_readvariableop*
&savev2_vels_kernel_read_readvariableop(
$savev2_vels_bias_read_readvariableop+
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

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¿
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ñ
valueÇBÄB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names®
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop'savev2_notes_kernel_read_readvariableop%savev2_notes_bias_read_readvariableop&savev2_vels_kernel_read_readvariableop$savev2_vels_bias_read_readvariableop'savev2_times_kernel_read_readvariableop%savev2_times_bias_read_readvariableop)savev2_lengths_kernel_read_readvariableop'savev2_lengths_bias_read_readvariableop2savev2_gru_2_gru_cell_2_kernel_read_readvariableop<savev2_gru_2_gru_cell_2_recurrent_kernel_read_readvariableop0savev2_gru_2_gru_cell_2_bias_read_readvariableop2savev2_gru_3_gru_cell_3_kernel_read_readvariableop<savev2_gru_3_gru_cell_3_recurrent_kernel_read_readvariableop0savev2_gru_3_gru_cell_3_bias_read_readvariableop)savev2_gru_2_variable_read_readvariableop)savev2_gru_3_variable_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *!
dtypes
22
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*È
_input_shapes¶
³: :
::	_:_:	}:}:
æ:æ:
¬:¬:
:
::
:
::	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	_: 

_output_shapes
:_:%!

_output_shapes
:	}: 

_output_shapes
:}:&"
 
_output_shapes
:
æ:!

_output_shapes	
:æ:&	"
 
_output_shapes
:
¬:!


_output_shapes	
:¬:&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	:%!

_output_shapes
:	:

_output_shapes
: 
±	
×
*__inference_gru_cell_3_layer_call_fn_14571

inputs
states_0
unknown:

	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
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
GPU2 *0J 8 *N
fIRG
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_145602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
ïT

while_body_10963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	>
*while_gru_cell_2_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
?
0while_gru_cell_2_biasadd_readvariableop_resource:	<
(while_gru_cell_2_readvariableop_resource:
¢'while/gru_cell_2/BiasAdd/ReadVariableOp¢&while/gru_cell_2/MatMul/ReadVariableOp¢while/gru_cell_2/ReadVariableOp¢!while/gru_cell_2/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpÈ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMulÂ
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp½
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/BiasAdd
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_2/split/split_dimØ
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_2/split¯
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_2/ReadVariableOp
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack¡
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1¡
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2ä
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice¨
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_1
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_2/Const
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_2/split_1/split_dim
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_2/split_1£
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid§
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid_1
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul³
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_2/ReadVariableOp_1¡
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack¥
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1¥
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2ð
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1¯
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_2©
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_2
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
În
È
model_1_gru_2_while_body_82878
4model_1_gru_2_while_model_1_gru_2_while_loop_counter>
:model_1_gru_2_while_model_1_gru_2_while_maximum_iterations#
model_1_gru_2_while_placeholder%
!model_1_gru_2_while_placeholder_1%
!model_1_gru_2_while_placeholder_25
1model_1_gru_2_while_model_1_gru_2_strided_slice_0s
omodel_1_gru_2_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_2_tensorarrayunstack_tensorlistfromtensor_0S
?model_1_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
O
@model_1_gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0:	L
8model_1_gru_2_while_gru_cell_2_readvariableop_resource_0:
 
model_1_gru_2_while_identity"
model_1_gru_2_while_identity_1"
model_1_gru_2_while_identity_2"
model_1_gru_2_while_identity_3"
model_1_gru_2_while_identity_43
/model_1_gru_2_while_model_1_gru_2_strided_sliceq
mmodel_1_gru_2_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_2_tensorarrayunstack_tensorlistfromtensorQ
=model_1_gru_2_while_gru_cell_2_matmul_readvariableop_resource:
M
>model_1_gru_2_while_gru_cell_2_biasadd_readvariableop_resource:	J
6model_1_gru_2_while_gru_cell_2_readvariableop_resource:
¢5model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp¢4model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp¢-model_1/gru_2/while/gru_cell_2/ReadVariableOp¢/model_1/gru_2/while/gru_cell_2/ReadVariableOp_1ß
Emodel_1/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2G
Emodel_1/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape
7model_1/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemomodel_1_gru_2_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_2_tensorarrayunstack_tensorlistfromtensor_0model_1_gru_2_while_placeholderNmodel_1/gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype029
7model_1/gru_2/while/TensorArrayV2Read/TensorListGetItemî
4model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp?model_1_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype026
4model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp
%model_1/gru_2/while/gru_cell_2/MatMulMatMul>model_1/gru_2/while/TensorArrayV2Read/TensorListGetItem:item:0<model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%model_1/gru_2/while/gru_cell_2/MatMulì
5model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp@model_1_gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype027
5model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOpõ
&model_1/gru_2/while/gru_cell_2/BiasAddBiasAdd/model_1/gru_2/while/gru_cell_2/MatMul:product:0=model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2(
&model_1/gru_2/while/gru_cell_2/BiasAdd«
.model_1/gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.model_1/gru_2/while/gru_cell_2/split/split_dim
$model_1/gru_2/while/gru_cell_2/splitSplit7model_1/gru_2/while/gru_cell_2/split/split_dim:output:0/model_1/gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2&
$model_1/gru_2/while/gru_cell_2/splitÙ
-model_1/gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp8model_1_gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02/
-model_1/gru_2/while/gru_cell_2/ReadVariableOp¹
2model_1/gru_2/while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2model_1/gru_2/while/gru_cell_2/strided_slice/stack½
4model_1/gru_2/while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4model_1/gru_2/while/gru_cell_2/strided_slice/stack_1½
4model_1/gru_2/while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4model_1/gru_2/while/gru_cell_2/strided_slice/stack_2¸
,model_1/gru_2/while/gru_cell_2/strided_sliceStridedSlice5model_1/gru_2/while/gru_cell_2/ReadVariableOp:value:0;model_1/gru_2/while/gru_cell_2/strided_slice/stack:output:0=model_1/gru_2/while/gru_cell_2/strided_slice/stack_1:output:0=model_1/gru_2/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2.
,model_1/gru_2/while/gru_cell_2/strided_sliceà
'model_1/gru_2/while/gru_cell_2/MatMul_1MatMul!model_1_gru_2_while_placeholder_25model_1/gru_2/while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2)
'model_1/gru_2/while/gru_cell_2/MatMul_1¡
$model_1/gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2&
$model_1/gru_2/while/gru_cell_2/Const¯
0model_1/gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0model_1/gru_2/while/gru_cell_2/split_1/split_dimÑ
&model_1/gru_2/while/gru_cell_2/split_1SplitV1model_1/gru_2/while/gru_cell_2/MatMul_1:product:0-model_1/gru_2/while/gru_cell_2/Const:output:09model_1/gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2(
&model_1/gru_2/while/gru_cell_2/split_1Û
"model_1/gru_2/while/gru_cell_2/addAddV2-model_1/gru_2/while/gru_cell_2/split:output:0/model_1/gru_2/while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2$
"model_1/gru_2/while/gru_cell_2/add­
&model_1/gru_2/while/gru_cell_2/SigmoidSigmoid&model_1/gru_2/while/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2(
&model_1/gru_2/while/gru_cell_2/Sigmoidß
$model_1/gru_2/while/gru_cell_2/add_1AddV2-model_1/gru_2/while/gru_cell_2/split:output:1/model_1/gru_2/while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2&
$model_1/gru_2/while/gru_cell_2/add_1³
(model_1/gru_2/while/gru_cell_2/Sigmoid_1Sigmoid(model_1/gru_2/while/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2*
(model_1/gru_2/while/gru_cell_2/Sigmoid_1Ê
"model_1/gru_2/while/gru_cell_2/mulMul,model_1/gru_2/while/gru_cell_2/Sigmoid_1:y:0!model_1_gru_2_while_placeholder_2*
T0*
_output_shapes
:	2$
"model_1/gru_2/while/gru_cell_2/mulÝ
/model_1/gru_2/while/gru_cell_2/ReadVariableOp_1ReadVariableOp8model_1_gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype021
/model_1/gru_2/while/gru_cell_2/ReadVariableOp_1½
4model_1/gru_2/while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       26
4model_1/gru_2/while/gru_cell_2/strided_slice_1/stackÁ
6model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        28
6model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_1Á
6model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_2Ä
.model_1/gru_2/while/gru_cell_2/strided_slice_1StridedSlice7model_1/gru_2/while/gru_cell_2/ReadVariableOp_1:value:0=model_1/gru_2/while/gru_cell_2/strided_slice_1/stack:output:0?model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_1:output:0?model_1/gru_2/while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask20
.model_1/gru_2/while/gru_cell_2/strided_slice_1ç
'model_1/gru_2/while/gru_cell_2/MatMul_2MatMul&model_1/gru_2/while/gru_cell_2/mul:z:07model_1/gru_2/while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2)
'model_1/gru_2/while/gru_cell_2/MatMul_2á
$model_1/gru_2/while/gru_cell_2/add_2AddV2-model_1/gru_2/while/gru_cell_2/split:output:21model_1/gru_2/while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2&
$model_1/gru_2/while/gru_cell_2/add_2¦
#model_1/gru_2/while/gru_cell_2/TanhTanh(model_1/gru_2/while/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2%
#model_1/gru_2/while/gru_cell_2/TanhÌ
$model_1/gru_2/while/gru_cell_2/mul_1Mul*model_1/gru_2/while/gru_cell_2/Sigmoid:y:0!model_1_gru_2_while_placeholder_2*
T0*
_output_shapes
:	2&
$model_1/gru_2/while/gru_cell_2/mul_1
$model_1/gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$model_1/gru_2/while/gru_cell_2/sub/xÔ
"model_1/gru_2/while/gru_cell_2/subSub-model_1/gru_2/while/gru_cell_2/sub/x:output:0*model_1/gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2$
"model_1/gru_2/while/gru_cell_2/subÎ
$model_1/gru_2/while/gru_cell_2/mul_2Mul&model_1/gru_2/while/gru_cell_2/sub:z:0'model_1/gru_2/while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2&
$model_1/gru_2/while/gru_cell_2/mul_2Ó
$model_1/gru_2/while/gru_cell_2/add_3AddV2(model_1/gru_2/while/gru_cell_2/mul_1:z:0(model_1/gru_2/while/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2&
$model_1/gru_2/while/gru_cell_2/add_3¤
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
model_1/gru_2/while/add/y¡
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
model_1/gru_2/while/add_1/y¼
model_1/gru_2/while/add_1AddV24model_1_gru_2_while_model_1_gru_2_while_loop_counter$model_1/gru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
model_1/gru_2/while/add_1Ù
model_1/gru_2/while/IdentityIdentitymodel_1/gru_2/while/add_1:z:06^model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp5^model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp.^model_1/gru_2/while/gru_cell_2/ReadVariableOp0^model_1/gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
model_1/gru_2/while/Identityú
model_1/gru_2/while/Identity_1Identity:model_1_gru_2_while_model_1_gru_2_while_maximum_iterations6^model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp5^model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp.^model_1/gru_2/while/gru_cell_2/ReadVariableOp0^model_1/gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2 
model_1/gru_2/while/Identity_1Û
model_1/gru_2/while/Identity_2Identitymodel_1/gru_2/while/add:z:06^model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp5^model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp.^model_1/gru_2/while/gru_cell_2/ReadVariableOp0^model_1/gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2 
model_1/gru_2/while/Identity_2
model_1/gru_2/while/Identity_3IdentityHmodel_1/gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:06^model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp5^model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp.^model_1/gru_2/while/gru_cell_2/ReadVariableOp0^model_1/gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2 
model_1/gru_2/while/Identity_3ñ
model_1/gru_2/while/Identity_4Identity(model_1/gru_2/while/gru_cell_2/add_3:z:06^model_1/gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp5^model_1/gru_2/while/gru_cell_2/MatMul/ReadVariableOp.^model_1/gru_2/while/gru_cell_2/ReadVariableOp0^model_1/gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
:	2 
model_1/gru_2/while/Identity_4"
>model_1_gru_2_while_gru_cell_2_biasadd_readvariableop_resource@model_1_gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0"
=model_1_gru_2_while_gru_cell_2_matmul_readvariableop_resource?model_1_gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"r
6model_1_gru_2_while_gru_cell_2_readvariableop_resource8model_1_gru_2_while_gru_cell_2_readvariableop_resource_0"E
model_1_gru_2_while_identity%model_1/gru_2/while/Identity:output:0"I
model_1_gru_2_while_identity_1'model_1/gru_2/while/Identity_1:output:0"I
model_1_gru_2_while_identity_2'model_1/gru_2/while/Identity_2:output:0"I
model_1_gru_2_while_identity_3'model_1/gru_2/while/Identity_3:output:0"I
model_1_gru_2_while_identity_4'model_1/gru_2/while/Identity_4:output:0"d
/model_1_gru_2_while_model_1_gru_2_strided_slice1model_1_gru_2_while_model_1_gru_2_strided_slice_0"à
mmodel_1_gru_2_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_2_tensorarrayunstack_tensorlistfromtensoromodel_1_gru_2_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2n
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
:	:

_output_shapes
: :

_output_shapes
: 
í	
×
*__inference_gru_cell_2_layer_call_fn_14159

inputs
states_0
unknown:

	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_89222
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs:IE

_output_shapes
:	
"
_user_specified_name
states/0
÷!

while_body_8737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_2_8805_0:
&
while_gru_cell_2_8807_0:	+
while_gru_cell_2_8809_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_2_8805:
$
while_gru_cell_2_8807:	)
while_gru_cell_2_8809:
¢(while/gru_cell_2/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
(while/gru_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2_8805_0while_gru_cell_2_8807_0while_gru_cell_2_8809_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_88042*
(while/gru_cell_2/StatefulPartitionedCallõ
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¸
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3¸
while/Identity_4Identity1while/gru_cell_2/StatefulPartitionedCall:output:1)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
:	2
while/Identity_4"0
while_gru_cell_2_8805while_gru_cell_2_8805_0"0
while_gru_cell_2_8807while_gru_cell_2_8807_0"0
while_gru_cell_2_8809while_gru_cell_2_8809_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2T
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
:	:

_output_shapes
: :

_output_shapes
: 

b
D__inference_dropout_3_layer_call_and_return_conditional_losses_13963

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
£
while_cond_10962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_10962___redundant_placeholder03
/while_while_cond_10962___redundant_placeholder13
/while_while_cond_10962___redundant_placeholder23
/while_while_cond_10962___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
õ_
Ñ	
gru_3_while_body_11797(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2%
!gru_3_while_gru_3_strided_slice_0c
_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0K
7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0:
G
8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0:	D
0gru_3_while_gru_cell_3_readvariableop_resource_0:

gru_3_while_identity
gru_3_while_identity_1
gru_3_while_identity_2
gru_3_while_identity_3
gru_3_while_identity_4#
gru_3_while_gru_3_strided_slicea
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensorI
5gru_3_while_gru_cell_3_matmul_readvariableop_resource:
E
6gru_3_while_gru_cell_3_biasadd_readvariableop_resource:	B
.gru_3_while_gru_cell_3_readvariableop_resource:
¢-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp¢,gru_3/while/gru_cell_3/MatMul/ReadVariableOp¢%gru_3/while/gru_cell_3/ReadVariableOp¢'gru_3/while/gru_cell_3/ReadVariableOp_1Ï
=gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeï
/gru_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0gru_3_while_placeholderFgru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype021
/gru_3/while/TensorArrayV2Read/TensorListGetItemÖ
,gru_3/while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02.
,gru_3/while/gru_cell_3/MatMul/ReadVariableOpà
gru_3/while/gru_cell_3/MatMulMatMul6gru_3/while/TensorArrayV2Read/TensorListGetItem:item:04gru_3/while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/MatMulÔ
-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02/
-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOpÕ
gru_3/while/gru_cell_3/BiasAddBiasAdd'gru_3/while/gru_cell_3/MatMul:product:05gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2 
gru_3/while/gru_cell_3/BiasAdd
&gru_3/while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&gru_3/while/gru_cell_3/split/split_dimð
gru_3/while/gru_cell_3/splitSplit/gru_3/while/gru_cell_3/split/split_dim:output:0'gru_3/while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_3/while/gru_cell_3/splitÁ
%gru_3/while/gru_cell_3/ReadVariableOpReadVariableOp0gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02'
%gru_3/while/gru_cell_3/ReadVariableOp©
*gru_3/while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_3/while/gru_cell_3/strided_slice/stack­
,gru_3/while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_3/while/gru_cell_3/strided_slice/stack_1­
,gru_3/while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_3/while/gru_cell_3/strided_slice/stack_2
$gru_3/while/gru_cell_3/strided_sliceStridedSlice-gru_3/while/gru_cell_3/ReadVariableOp:value:03gru_3/while/gru_cell_3/strided_slice/stack:output:05gru_3/while/gru_cell_3/strided_slice/stack_1:output:05gru_3/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2&
$gru_3/while/gru_cell_3/strided_sliceÀ
gru_3/while/gru_cell_3/MatMul_1MatMulgru_3_while_placeholder_2-gru_3/while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2!
gru_3/while/gru_cell_3/MatMul_1
gru_3/while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_3/while/gru_cell_3/Const
(gru_3/while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(gru_3/while/gru_cell_3/split_1/split_dim©
gru_3/while/gru_cell_3/split_1SplitV)gru_3/while/gru_cell_3/MatMul_1:product:0%gru_3/while/gru_cell_3/Const:output:01gru_3/while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2 
gru_3/while/gru_cell_3/split_1»
gru_3/while/gru_cell_3/addAddV2%gru_3/while/gru_cell_3/split:output:0'gru_3/while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/add
gru_3/while/gru_cell_3/SigmoidSigmoidgru_3/while/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2 
gru_3/while/gru_cell_3/Sigmoid¿
gru_3/while/gru_cell_3/add_1AddV2%gru_3/while/gru_cell_3/split:output:1'gru_3/while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/add_1
 gru_3/while/gru_cell_3/Sigmoid_1Sigmoid gru_3/while/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2"
 gru_3/while/gru_cell_3/Sigmoid_1ª
gru_3/while/gru_cell_3/mulMul$gru_3/while/gru_cell_3/Sigmoid_1:y:0gru_3_while_placeholder_2*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/mulÅ
'gru_3/while/gru_cell_3/ReadVariableOp_1ReadVariableOp0gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'gru_3/while/gru_cell_3/ReadVariableOp_1­
,gru_3/while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_3/while/gru_cell_3/strided_slice_1/stack±
.gru_3/while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_3/while/gru_cell_3/strided_slice_1/stack_1±
.gru_3/while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_3/while/gru_cell_3/strided_slice_1/stack_2
&gru_3/while/gru_cell_3/strided_slice_1StridedSlice/gru_3/while/gru_cell_3/ReadVariableOp_1:value:05gru_3/while/gru_cell_3/strided_slice_1/stack:output:07gru_3/while/gru_cell_3/strided_slice_1/stack_1:output:07gru_3/while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2(
&gru_3/while/gru_cell_3/strided_slice_1Ç
gru_3/while/gru_cell_3/MatMul_2MatMulgru_3/while/gru_cell_3/mul:z:0/gru_3/while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2!
gru_3/while/gru_cell_3/MatMul_2Á
gru_3/while/gru_cell_3/add_2AddV2%gru_3/while/gru_cell_3/split:output:2)gru_3/while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/add_2
gru_3/while/gru_cell_3/TanhTanh gru_3/while/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/Tanh¬
gru_3/while/gru_cell_3/mul_1Mul"gru_3/while/gru_cell_3/Sigmoid:y:0gru_3_while_placeholder_2*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/mul_1
gru_3/while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_3/while/gru_cell_3/sub/x´
gru_3/while/gru_cell_3/subSub%gru_3/while/gru_cell_3/sub/x:output:0"gru_3/while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/sub®
gru_3/while/gru_cell_3/mul_2Mulgru_3/while/gru_cell_3/sub:z:0gru_3/while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/mul_2³
gru_3/while/gru_cell_3/add_3AddV2 gru_3/while/gru_cell_3/mul_1:z:0 gru_3/while/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/add_3ü
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
gru_3/while/add/y
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
gru_3/while/add_1/y
gru_3/while/add_1AddV2$gru_3_while_gru_3_while_loop_countergru_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_3/while/add_1¡
gru_3/while/IdentityIdentitygru_3/while/add_1:z:0.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_3/while/Identityº
gru_3/while/Identity_1Identity*gru_3_while_gru_3_while_maximum_iterations.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_3/while/Identity_1£
gru_3/while/Identity_2Identitygru_3/while/add:z:0.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_3/while/Identity_2Ð
gru_3/while/Identity_3Identity@gru_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_3/while/Identity_3¹
gru_3/while/Identity_4Identity gru_3/while/gru_cell_3/add_3:z:0.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
:	2
gru_3/while/Identity_4"D
gru_3_while_gru_3_strided_slice!gru_3_while_gru_3_strided_slice_0"r
6gru_3_while_gru_cell_3_biasadd_readvariableop_resource8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0"p
5gru_3_while_gru_cell_3_matmul_readvariableop_resource7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0"b
.gru_3_while_gru_cell_3_readvariableop_resource0gru_3_while_gru_cell_3_readvariableop_resource_0"5
gru_3_while_identitygru_3/while/Identity:output:0"9
gru_3_while_identity_1gru_3/while/Identity_1:output:0"9
gru_3_while_identity_2gru_3/while/Identity_2:output:0"9
gru_3_while_identity_3gru_3/while/Identity_3:output:0"9
gru_3_while_identity_4gru_3/while/Identity_4:output:0"À
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2^
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
:	:

_output_shapes
: :

_output_shapes
: 
ïT

while_body_12822
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	>
*while_gru_cell_2_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
?
0while_gru_cell_2_biasadd_readvariableop_resource:	<
(while_gru_cell_2_readvariableop_resource:
¢'while/gru_cell_2/BiasAdd/ReadVariableOp¢&while/gru_cell_2/MatMul/ReadVariableOp¢while/gru_cell_2/ReadVariableOp¢!while/gru_cell_2/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpÈ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMulÂ
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp½
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/BiasAdd
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_2/split/split_dimØ
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_2/split¯
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_2/ReadVariableOp
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack¡
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1¡
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2ä
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice¨
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_1
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_2/Const
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_2/split_1/split_dim
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_2/split_1£
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid§
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid_1
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul³
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_2/ReadVariableOp_1¡
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack¥
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1¥
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2ð
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1¯
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_2©
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_2
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
 
ø
@__inference_notes_layer_call_and_return_conditional_losses_14014

inputs4
!tensordot_readvariableop_resource:	_-
biasadd_readvariableop_resource:_
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	_*
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
Tensordot/GatherV2/axisÑ
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
Tensordot/GatherV2_1/axis×
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
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
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:_*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
öª
Ì
B__inference_model_1_layer_call_and_return_conditional_losses_12001

inputs=
)dense_1_tensordot_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	C
/gru_2_gru_cell_2_matmul_readvariableop_resource:
?
0gru_2_gru_cell_2_biasadd_readvariableop_resource:	<
(gru_2_gru_cell_2_readvariableop_resource:
D
1gru_2_gru_cell_2_matmul_1_readvariableop_resource:	C
/gru_3_gru_cell_3_matmul_readvariableop_resource:
?
0gru_3_gru_cell_3_biasadd_readvariableop_resource:	<
(gru_3_gru_cell_3_readvariableop_resource:
D
1gru_3_gru_cell_3_matmul_1_readvariableop_resource:	=
)lengths_tensordot_readvariableop_resource:
¬6
'lengths_biasadd_readvariableop_resource:	¬;
'times_tensordot_readvariableop_resource:
æ4
%times_biasadd_readvariableop_resource:	æ9
&vels_tensordot_readvariableop_resource:	}2
$vels_biasadd_readvariableop_resource:}:
'notes_tensordot_readvariableop_resource:	_3
%notes_biasadd_readvariableop_resource:_
identity

identity_1

identity_2

identity_3¢dense_1/BiasAdd/ReadVariableOp¢ dense_1/Tensordot/ReadVariableOp¢gru_2/AssignVariableOp¢gru_2/ReadVariableOp¢'gru_2/gru_cell_2/BiasAdd/ReadVariableOp¢&gru_2/gru_cell_2/MatMul/ReadVariableOp¢(gru_2/gru_cell_2/MatMul_1/ReadVariableOp¢gru_2/gru_cell_2/ReadVariableOp¢!gru_2/gru_cell_2/ReadVariableOp_1¢#gru_2/gru_cell_2/mul/ReadVariableOp¢%gru_2/gru_cell_2/mul_1/ReadVariableOp¢gru_2/while¢gru_3/AssignVariableOp¢gru_3/ReadVariableOp¢'gru_3/gru_cell_3/BiasAdd/ReadVariableOp¢&gru_3/gru_cell_3/MatMul/ReadVariableOp¢(gru_3/gru_cell_3/MatMul_1/ReadVariableOp¢gru_3/gru_cell_3/ReadVariableOp¢!gru_3/gru_cell_3/ReadVariableOp_1¢#gru_3/gru_cell_3/mul/ReadVariableOp¢%gru_3/gru_cell_3/mul_1/ReadVariableOp¢gru_3/while¢lengths/BiasAdd/ReadVariableOp¢ lengths/Tensordot/ReadVariableOp¢notes/BiasAdd/ReadVariableOp¢notes/Tensordot/ReadVariableOp¢times/BiasAdd/ReadVariableOp¢times/Tensordot/ReadVariableOp¢vels/BiasAdd/ReadVariableOp¢vels/Tensordot/ReadVariableOp°
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes
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
dense_1/Tensordot/Shape
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axisù
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axisÿ
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
dense_1/Tensordot/Const 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1¨
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axisØ
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat¬
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack©
dense_1/Tensordot/transpose	Transposeinputs!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot/transpose¿
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot/Reshape¿
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot/MatMul
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/Const_2
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axiså
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1±
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot¥
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp¨
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAddu
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tanh}
dropout_2/IdentityIdentitydense_1/Tanh:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/Identity
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose/perm¢
gru_2/transpose	Transposedropout_2/Identity:output:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_2/transpose]
gru_2/ShapeShapegru_2/transpose:y:0*
T0*
_output_shapes
:2
gru_2/Shape
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice/stack
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_1
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_2
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slice
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!gru_2/TensorArrayV2/element_shapeÈ
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2Ë
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2=
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_2/TensorArrayUnstack/TensorListFromTensor
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_1/stack
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_1
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_2
gru_2/strided_slice_1StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
gru_2/strided_slice_1Â
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&gru_2/gru_cell_2/MatMul/ReadVariableOp¶
gru_2/gru_cell_2/MatMulMatMulgru_2/strided_slice_1:output:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/MatMulÀ
'gru_2/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp0gru_2_gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'gru_2/gru_cell_2/BiasAdd/ReadVariableOp½
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0/gru_2/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/BiasAdd
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 gru_2/gru_cell_2/split/split_dimØ
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_2/gru_cell_2/split­
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02!
gru_2/gru_cell_2/ReadVariableOp
$gru_2/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_2/gru_cell_2/strided_slice/stack¡
&gru_2/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_2/gru_cell_2/strided_slice/stack_1¡
&gru_2/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_2/gru_cell_2/strided_slice/stack_2ä
gru_2/gru_cell_2/strided_sliceStridedSlice'gru_2/gru_cell_2/ReadVariableOp:value:0-gru_2/gru_cell_2/strided_slice/stack:output:0/gru_2/gru_cell_2/strided_slice/stack_1:output:0/gru_2/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
gru_2/gru_cell_2/strided_sliceÇ
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02*
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpÅ
gru_2/gru_cell_2/MatMul_1MatMul0gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0'gru_2/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/MatMul_1
gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_2/gru_cell_2/Const
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_2/gru_cell_2/split_1/split_dim
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/MatMul_1:product:0gru_2/gru_cell_2/Const:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_2/gru_cell_2/split_1£
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/add
gru_2/gru_cell_2/SigmoidSigmoidgru_2/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/Sigmoid§
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/add_1
gru_2/gru_cell_2/Sigmoid_1Sigmoidgru_2/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/Sigmoid_1½
#gru_2/gru_cell_2/mul/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02%
#gru_2/gru_cell_2/mul/ReadVariableOpª
gru_2/gru_cell_2/mulMulgru_2/gru_cell_2/Sigmoid_1:y:0+gru_2/gru_cell_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/mul±
!gru_2/gru_cell_2/ReadVariableOp_1ReadVariableOp(gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!gru_2/gru_cell_2/ReadVariableOp_1¡
&gru_2/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_2/gru_cell_2/strided_slice_1/stack¥
(gru_2/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_2/gru_cell_2/strided_slice_1/stack_1¥
(gru_2/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_2/gru_cell_2/strided_slice_1/stack_2ð
 gru_2/gru_cell_2/strided_slice_1StridedSlice)gru_2/gru_cell_2/ReadVariableOp_1:value:0/gru_2/gru_cell_2/strided_slice_1/stack:output:01gru_2/gru_cell_2/strided_slice_1/stack_1:output:01gru_2/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 gru_2/gru_cell_2/strided_slice_1¯
gru_2/gru_cell_2/MatMul_2MatMulgru_2/gru_cell_2/mul:z:0)gru_2/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/MatMul_2©
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2#gru_2/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/add_2|
gru_2/gru_cell_2/TanhTanhgru_2/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/TanhÁ
%gru_2/gru_cell_2/mul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02'
%gru_2/gru_cell_2/mul_1/ReadVariableOp®
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Sigmoid:y:0-gru_2/gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/mul_1u
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/gru_cell_2/sub/x
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/sub
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/sub:z:0gru_2/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/mul_2
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_1:z:0gru_2/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/add_3
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_2/TensorArrayV2_1/element_shapeÎ
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

gru_2/time
gru_2/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_2/ReadVariableOp
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_2/while/maximum_iterationsv
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_2/while/loop_counterî
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0gru_2/ReadVariableOp:value:0gru_2/strided_slice:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0/gru_2_gru_cell_2_matmul_readvariableop_resource0gru_2_gru_cell_2_biasadd_readvariableop_resource(gru_2_gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*"
bodyR
gru_2_while_body_11638*"
condR
gru_2_while_cond_11637*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
gru_2/whileÁ
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      28
6gru_2/TensorArrayV2Stack/TensorListStack/element_shape
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02*
(gru_2/TensorArrayV2Stack/TensorListStack
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_2/strided_slice_2/stack
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_2/stack_1
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_2¶
gru_2/strided_slice_2StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
gru_2/strided_slice_2
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose_1/perm¾
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_2/transpose_1r
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/runtimeÀ
gru_2/AssignVariableOpAssignVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resourcegru_2/while:output:4^gru_2/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp$^gru_2/gru_cell_2/mul/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
gru_2/AssignVariableOp
gru_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_3/transpose/perm
gru_3/transpose	Transposegru_2/transpose_1:y:0gru_3/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_3/transpose]
gru_3/ShapeShapegru_3/transpose:y:0*
T0*
_output_shapes
:2
gru_3/Shape
gru_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice/stack
gru_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice/stack_1
gru_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice/stack_2
gru_3/strided_sliceStridedSlicegru_3/Shape:output:0"gru_3/strided_slice/stack:output:0$gru_3/strided_slice/stack_1:output:0$gru_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_3/strided_slice
!gru_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!gru_3/TensorArrayV2/element_shapeÈ
gru_3/TensorArrayV2TensorListReserve*gru_3/TensorArrayV2/element_shape:output:0gru_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_3/TensorArrayV2Ë
;gru_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2=
;gru_3/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_3/transpose:y:0Dgru_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_3/TensorArrayUnstack/TensorListFromTensor
gru_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice_1/stack
gru_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_1/stack_1
gru_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_1/stack_2
gru_3/strided_slice_1StridedSlicegru_3/transpose:y:0$gru_3/strided_slice_1/stack:output:0&gru_3/strided_slice_1/stack_1:output:0&gru_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
gru_3/strided_slice_1Â
&gru_3/gru_cell_3/MatMul/ReadVariableOpReadVariableOp/gru_3_gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&gru_3/gru_cell_3/MatMul/ReadVariableOp¶
gru_3/gru_cell_3/MatMulMatMulgru_3/strided_slice_1:output:0.gru_3/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/MatMulÀ
'gru_3/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp0gru_3_gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'gru_3/gru_cell_3/BiasAdd/ReadVariableOp½
gru_3/gru_cell_3/BiasAddBiasAdd!gru_3/gru_cell_3/MatMul:product:0/gru_3/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/BiasAdd
 gru_3/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 gru_3/gru_cell_3/split/split_dimØ
gru_3/gru_cell_3/splitSplit)gru_3/gru_cell_3/split/split_dim:output:0!gru_3/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_3/gru_cell_3/split­
gru_3/gru_cell_3/ReadVariableOpReadVariableOp(gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02!
gru_3/gru_cell_3/ReadVariableOp
$gru_3/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_3/gru_cell_3/strided_slice/stack¡
&gru_3/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_3/gru_cell_3/strided_slice/stack_1¡
&gru_3/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_3/gru_cell_3/strided_slice/stack_2ä
gru_3/gru_cell_3/strided_sliceStridedSlice'gru_3/gru_cell_3/ReadVariableOp:value:0-gru_3/gru_cell_3/strided_slice/stack:output:0/gru_3/gru_cell_3/strided_slice/stack_1:output:0/gru_3/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
gru_3/gru_cell_3/strided_sliceÇ
(gru_3/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02*
(gru_3/gru_cell_3/MatMul_1/ReadVariableOpÅ
gru_3/gru_cell_3/MatMul_1MatMul0gru_3/gru_cell_3/MatMul_1/ReadVariableOp:value:0'gru_3/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/MatMul_1
gru_3/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_3/gru_cell_3/Const
"gru_3/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_3/gru_cell_3/split_1/split_dim
gru_3/gru_cell_3/split_1SplitV#gru_3/gru_cell_3/MatMul_1:product:0gru_3/gru_cell_3/Const:output:0+gru_3/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_3/gru_cell_3/split_1£
gru_3/gru_cell_3/addAddV2gru_3/gru_cell_3/split:output:0!gru_3/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/add
gru_3/gru_cell_3/SigmoidSigmoidgru_3/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/Sigmoid§
gru_3/gru_cell_3/add_1AddV2gru_3/gru_cell_3/split:output:1!gru_3/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/add_1
gru_3/gru_cell_3/Sigmoid_1Sigmoidgru_3/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/Sigmoid_1½
#gru_3/gru_cell_3/mul/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02%
#gru_3/gru_cell_3/mul/ReadVariableOpª
gru_3/gru_cell_3/mulMulgru_3/gru_cell_3/Sigmoid_1:y:0+gru_3/gru_cell_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/mul±
!gru_3/gru_cell_3/ReadVariableOp_1ReadVariableOp(gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!gru_3/gru_cell_3/ReadVariableOp_1¡
&gru_3/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_3/gru_cell_3/strided_slice_1/stack¥
(gru_3/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_3/gru_cell_3/strided_slice_1/stack_1¥
(gru_3/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_3/gru_cell_3/strided_slice_1/stack_2ð
 gru_3/gru_cell_3/strided_slice_1StridedSlice)gru_3/gru_cell_3/ReadVariableOp_1:value:0/gru_3/gru_cell_3/strided_slice_1/stack:output:01gru_3/gru_cell_3/strided_slice_1/stack_1:output:01gru_3/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 gru_3/gru_cell_3/strided_slice_1¯
gru_3/gru_cell_3/MatMul_2MatMulgru_3/gru_cell_3/mul:z:0)gru_3/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/MatMul_2©
gru_3/gru_cell_3/add_2AddV2gru_3/gru_cell_3/split:output:2#gru_3/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/add_2|
gru_3/gru_cell_3/TanhTanhgru_3/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/TanhÁ
%gru_3/gru_cell_3/mul_1/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02'
%gru_3/gru_cell_3/mul_1/ReadVariableOp®
gru_3/gru_cell_3/mul_1Mulgru_3/gru_cell_3/Sigmoid:y:0-gru_3/gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/mul_1u
gru_3/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_3/gru_cell_3/sub/x
gru_3/gru_cell_3/subSubgru_3/gru_cell_3/sub/x:output:0gru_3/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/sub
gru_3/gru_cell_3/mul_2Mulgru_3/gru_cell_3/sub:z:0gru_3/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/mul_2
gru_3/gru_cell_3/add_3AddV2gru_3/gru_cell_3/mul_1:z:0gru_3/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/add_3
#gru_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_3/TensorArrayV2_1/element_shapeÎ
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

gru_3/time
gru_3/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_3/ReadVariableOp
gru_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_3/while/maximum_iterationsv
gru_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_3/while/loop_counterî
gru_3/whileWhile!gru_3/while/loop_counter:output:0'gru_3/while/maximum_iterations:output:0gru_3/time:output:0gru_3/TensorArrayV2_1:handle:0gru_3/ReadVariableOp:value:0gru_3/strided_slice:output:0=gru_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0/gru_3_gru_cell_3_matmul_readvariableop_resource0gru_3_gru_cell_3_biasadd_readvariableop_resource(gru_3_gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*"
bodyR
gru_3_while_body_11797*"
condR
gru_3_while_cond_11796*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
gru_3/whileÁ
6gru_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      28
6gru_3/TensorArrayV2Stack/TensorListStack/element_shape
(gru_3/TensorArrayV2Stack/TensorListStackTensorListStackgru_3/while:output:3?gru_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02*
(gru_3/TensorArrayV2Stack/TensorListStack
gru_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_3/strided_slice_2/stack
gru_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice_2/stack_1
gru_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_2/stack_2¶
gru_3/strided_slice_2StridedSlice1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0$gru_3/strided_slice_2/stack:output:0&gru_3/strided_slice_2/stack_1:output:0&gru_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
gru_3/strided_slice_2
gru_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_3/transpose_1/perm¾
gru_3/transpose_1	Transpose1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0gru_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_3/transpose_1r
gru_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_3/runtimeÀ
gru_3/AssignVariableOpAssignVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resourcegru_3/while:output:4^gru_3/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp$^gru_3/gru_cell_3/mul/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
gru_3/AssignVariableOp
dropout_3/IdentityIdentitygru_3/transpose_1:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Identity°
 lengths/Tensordot/ReadVariableOpReadVariableOp)lengths_tensordot_readvariableop_resource* 
_output_shapes
:
¬*
dtype02"
 lengths/Tensordot/ReadVariableOpz
lengths/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
lengths/Tensordot/axes
lengths/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
lengths/Tensordot/free}
lengths/Tensordot/ShapeShapedropout_3/Identity:output:0*
T0*
_output_shapes
:2
lengths/Tensordot/Shape
lengths/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
lengths/Tensordot/GatherV2/axisù
lengths/Tensordot/GatherV2GatherV2 lengths/Tensordot/Shape:output:0lengths/Tensordot/free:output:0(lengths/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
lengths/Tensordot/GatherV2
!lengths/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!lengths/Tensordot/GatherV2_1/axisÿ
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
lengths/Tensordot/Const 
lengths/Tensordot/ProdProd#lengths/Tensordot/GatherV2:output:0 lengths/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
lengths/Tensordot/Prod
lengths/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lengths/Tensordot/Const_1¨
lengths/Tensordot/Prod_1Prod%lengths/Tensordot/GatherV2_1:output:0"lengths/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
lengths/Tensordot/Prod_1
lengths/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
lengths/Tensordot/concat/axisØ
lengths/Tensordot/concatConcatV2lengths/Tensordot/free:output:0lengths/Tensordot/axes:output:0&lengths/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/concat¬
lengths/Tensordot/stackPacklengths/Tensordot/Prod:output:0!lengths/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/stack¾
lengths/Tensordot/transpose	Transposedropout_3/Identity:output:0!lengths/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lengths/Tensordot/transpose¿
lengths/Tensordot/ReshapeReshapelengths/Tensordot/transpose:y:0 lengths/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
lengths/Tensordot/Reshape¿
lengths/Tensordot/MatMulMatMul"lengths/Tensordot/Reshape:output:0(lengths/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lengths/Tensordot/MatMul
lengths/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:¬2
lengths/Tensordot/Const_2
lengths/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
lengths/Tensordot/concat_1/axiså
lengths/Tensordot/concat_1ConcatV2#lengths/Tensordot/GatherV2:output:0"lengths/Tensordot/Const_2:output:0(lengths/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/concat_1±
lengths/TensordotReshape"lengths/Tensordot/MatMul:product:0#lengths/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lengths/Tensordot¥
lengths/BiasAdd/ReadVariableOpReadVariableOp'lengths_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02 
lengths/BiasAdd/ReadVariableOp¨
lengths/BiasAddBiasAddlengths/Tensordot:output:0&lengths/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lengths/BiasAddª
times/Tensordot/ReadVariableOpReadVariableOp'times_tensordot_readvariableop_resource* 
_output_shapes
:
æ*
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
times/Tensordot/ShapeShapedropout_3/Identity:output:0*
T0*
_output_shapes
:2
times/Tensordot/Shape
times/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
times/Tensordot/GatherV2/axisï
times/Tensordot/GatherV2GatherV2times/Tensordot/Shape:output:0times/Tensordot/free:output:0&times/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
times/Tensordot/GatherV2
times/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
times/Tensordot/GatherV2_1/axisõ
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
times/Tensordot/Const
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
times/Tensordot/Const_1 
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
times/Tensordot/concat/axisÎ
times/Tensordot/concatConcatV2times/Tensordot/free:output:0times/Tensordot/axes:output:0$times/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/concat¤
times/Tensordot/stackPacktimes/Tensordot/Prod:output:0times/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/stack¸
times/Tensordot/transpose	Transposedropout_3/Identity:output:0times/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
times/Tensordot/transpose·
times/Tensordot/ReshapeReshapetimes/Tensordot/transpose:y:0times/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
times/Tensordot/Reshape·
times/Tensordot/MatMulMatMul times/Tensordot/Reshape:output:0&times/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
times/Tensordot/MatMul}
times/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:æ2
times/Tensordot/Const_2
times/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
times/Tensordot/concat_1/axisÛ
times/Tensordot/concat_1ConcatV2!times/Tensordot/GatherV2:output:0 times/Tensordot/Const_2:output:0&times/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/concat_1©
times/TensordotReshape times/Tensordot/MatMul:product:0!times/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
times/Tensordot
times/BiasAdd/ReadVariableOpReadVariableOp%times_biasadd_readvariableop_resource*
_output_shapes	
:æ*
dtype02
times/BiasAdd/ReadVariableOp 
times/BiasAddBiasAddtimes/Tensordot:output:0$times/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
times/BiasAdd¦
vels/Tensordot/ReadVariableOpReadVariableOp&vels_tensordot_readvariableop_resource*
_output_shapes
:	}*
dtype02
vels/Tensordot/ReadVariableOpt
vels/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
vels/Tensordot/axes{
vels/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
vels/Tensordot/freew
vels/Tensordot/ShapeShapedropout_3/Identity:output:0*
T0*
_output_shapes
:2
vels/Tensordot/Shape~
vels/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
vels/Tensordot/GatherV2/axisê
vels/Tensordot/GatherV2GatherV2vels/Tensordot/Shape:output:0vels/Tensordot/free:output:0%vels/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
vels/Tensordot/GatherV2
vels/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
vels/Tensordot/GatherV2_1/axisð
vels/Tensordot/GatherV2_1GatherV2vels/Tensordot/Shape:output:0vels/Tensordot/axes:output:0'vels/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
vels/Tensordot/GatherV2_1v
vels/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
vels/Tensordot/Const
vels/Tensordot/ProdProd vels/Tensordot/GatherV2:output:0vels/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
vels/Tensordot/Prodz
vels/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
vels/Tensordot/Const_1
vels/Tensordot/Prod_1Prod"vels/Tensordot/GatherV2_1:output:0vels/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
vels/Tensordot/Prod_1z
vels/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
vels/Tensordot/concat/axisÉ
vels/Tensordot/concatConcatV2vels/Tensordot/free:output:0vels/Tensordot/axes:output:0#vels/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
vels/Tensordot/concat 
vels/Tensordot/stackPackvels/Tensordot/Prod:output:0vels/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
vels/Tensordot/stackµ
vels/Tensordot/transpose	Transposedropout_3/Identity:output:0vels/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
vels/Tensordot/transpose³
vels/Tensordot/ReshapeReshapevels/Tensordot/transpose:y:0vels/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
vels/Tensordot/Reshape²
vels/Tensordot/MatMulMatMulvels/Tensordot/Reshape:output:0%vels/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
vels/Tensordot/MatMulz
vels/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:}2
vels/Tensordot/Const_2~
vels/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
vels/Tensordot/concat_1/axisÖ
vels/Tensordot/concat_1ConcatV2 vels/Tensordot/GatherV2:output:0vels/Tensordot/Const_2:output:0%vels/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
vels/Tensordot/concat_1¤
vels/TensordotReshapevels/Tensordot/MatMul:product:0 vels/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
vels/Tensordot
vels/BiasAdd/ReadVariableOpReadVariableOp$vels_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype02
vels/BiasAdd/ReadVariableOp
vels/BiasAddBiasAddvels/Tensordot:output:0#vels/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
vels/BiasAdd©
notes/Tensordot/ReadVariableOpReadVariableOp'notes_tensordot_readvariableop_resource*
_output_shapes
:	_*
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
notes/Tensordot/ShapeShapedropout_3/Identity:output:0*
T0*
_output_shapes
:2
notes/Tensordot/Shape
notes/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
notes/Tensordot/GatherV2/axisï
notes/Tensordot/GatherV2GatherV2notes/Tensordot/Shape:output:0notes/Tensordot/free:output:0&notes/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
notes/Tensordot/GatherV2
notes/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
notes/Tensordot/GatherV2_1/axisõ
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
notes/Tensordot/Const
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
notes/Tensordot/Const_1 
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
notes/Tensordot/concat/axisÎ
notes/Tensordot/concatConcatV2notes/Tensordot/free:output:0notes/Tensordot/axes:output:0$notes/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/concat¤
notes/Tensordot/stackPacknotes/Tensordot/Prod:output:0notes/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/stack¸
notes/Tensordot/transpose	Transposedropout_3/Identity:output:0notes/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
notes/Tensordot/transpose·
notes/Tensordot/ReshapeReshapenotes/Tensordot/transpose:y:0notes/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
notes/Tensordot/Reshape¶
notes/Tensordot/MatMulMatMul notes/Tensordot/Reshape:output:0&notes/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
notes/Tensordot/MatMul|
notes/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_2
notes/Tensordot/Const_2
notes/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
notes/Tensordot/concat_1/axisÛ
notes/Tensordot/concat_1ConcatV2!notes/Tensordot/GatherV2:output:0 notes/Tensordot/Const_2:output:0&notes/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/concat_1¨
notes/TensordotReshape notes/Tensordot/MatMul:product:0!notes/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
notes/Tensordot
notes/BiasAdd/ReadVariableOpReadVariableOp%notes_biasadd_readvariableop_resource*
_output_shapes
:_*
dtype02
notes/BiasAdd/ReadVariableOp
notes/BiasAddBiasAddnotes/Tensordot:output:0$notes/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
notes/BiasAddÔ
IdentityIdentitynotes/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^gru_2/AssignVariableOp^gru_2/ReadVariableOp(^gru_2/gru_cell_2/BiasAdd/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp"^gru_2/gru_cell_2/ReadVariableOp_1$^gru_2/gru_cell_2/mul/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp^gru_2/while^gru_3/AssignVariableOp^gru_3/ReadVariableOp(^gru_3/gru_cell_3/BiasAdd/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp"^gru_3/gru_cell_3/ReadVariableOp_1$^gru_3/gru_cell_3/mul/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp^gru_3/while^lengths/BiasAdd/ReadVariableOp!^lengths/Tensordot/ReadVariableOp^notes/BiasAdd/ReadVariableOp^notes/Tensordot/ReadVariableOp^times/BiasAdd/ReadVariableOp^times/Tensordot/ReadVariableOp^vels/BiasAdd/ReadVariableOp^vels/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity×

Identity_1Identityvels/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^gru_2/AssignVariableOp^gru_2/ReadVariableOp(^gru_2/gru_cell_2/BiasAdd/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp"^gru_2/gru_cell_2/ReadVariableOp_1$^gru_2/gru_cell_2/mul/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp^gru_2/while^gru_3/AssignVariableOp^gru_3/ReadVariableOp(^gru_3/gru_cell_3/BiasAdd/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp"^gru_3/gru_cell_3/ReadVariableOp_1$^gru_3/gru_cell_3/mul/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp^gru_3/while^lengths/BiasAdd/ReadVariableOp!^lengths/Tensordot/ReadVariableOp^notes/BiasAdd/ReadVariableOp^notes/Tensordot/ReadVariableOp^times/BiasAdd/ReadVariableOp^times/Tensordot/ReadVariableOp^vels/BiasAdd/ReadVariableOp^vels/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_1Ù

Identity_2Identitytimes/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^gru_2/AssignVariableOp^gru_2/ReadVariableOp(^gru_2/gru_cell_2/BiasAdd/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp"^gru_2/gru_cell_2/ReadVariableOp_1$^gru_2/gru_cell_2/mul/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp^gru_2/while^gru_3/AssignVariableOp^gru_3/ReadVariableOp(^gru_3/gru_cell_3/BiasAdd/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp"^gru_3/gru_cell_3/ReadVariableOp_1$^gru_3/gru_cell_3/mul/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp^gru_3/while^lengths/BiasAdd/ReadVariableOp!^lengths/Tensordot/ReadVariableOp^notes/BiasAdd/ReadVariableOp^notes/Tensordot/ReadVariableOp^times/BiasAdd/ReadVariableOp^times/Tensordot/ReadVariableOp^vels/BiasAdd/ReadVariableOp^vels/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2Û

Identity_3Identitylengths/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^gru_2/AssignVariableOp^gru_2/ReadVariableOp(^gru_2/gru_cell_2/BiasAdd/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp"^gru_2/gru_cell_2/ReadVariableOp_1$^gru_2/gru_cell_2/mul/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp^gru_2/while^gru_3/AssignVariableOp^gru_3/ReadVariableOp(^gru_3/gru_cell_3/BiasAdd/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp"^gru_3/gru_cell_3/ReadVariableOp_1$^gru_3/gru_cell_3/mul/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp^gru_3/while^lengths/BiasAdd/ReadVariableOp!^lengths/Tensordot/ReadVariableOp^notes/BiasAdd/ReadVariableOp^notes/Tensordot/ReadVariableOp^times/BiasAdd/ReadVariableOp^times/Tensordot/ReadVariableOp^vels/BiasAdd/ReadVariableOp^vels/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp20
gru_2/AssignVariableOpgru_2/AssignVariableOp2,
gru_2/ReadVariableOpgru_2/ReadVariableOp2R
'gru_2/gru_cell_2/BiasAdd/ReadVariableOp'gru_2/gru_cell_2/BiasAdd/ReadVariableOp2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2F
!gru_2/gru_cell_2/ReadVariableOp_1!gru_2/gru_cell_2/ReadVariableOp_12J
#gru_2/gru_cell_2/mul/ReadVariableOp#gru_2/gru_cell_2/mul/ReadVariableOp2N
%gru_2/gru_cell_2/mul_1/ReadVariableOp%gru_2/gru_cell_2/mul_1/ReadVariableOp2
gru_2/whilegru_2/while20
gru_3/AssignVariableOpgru_3/AssignVariableOp2,
gru_3/ReadVariableOpgru_3/ReadVariableOp2R
'gru_3/gru_cell_3/BiasAdd/ReadVariableOp'gru_3/gru_cell_3/BiasAdd/ReadVariableOp2P
&gru_3/gru_cell_3/MatMul/ReadVariableOp&gru_3/gru_cell_3/MatMul/ReadVariableOp2T
(gru_3/gru_cell_3/MatMul_1/ReadVariableOp(gru_3/gru_cell_3/MatMul_1/ReadVariableOp2B
gru_3/gru_cell_3/ReadVariableOpgru_3/gru_cell_3/ReadVariableOp2F
!gru_3/gru_cell_3/ReadVariableOp_1!gru_3/gru_cell_3/ReadVariableOp_12J
#gru_3/gru_cell_3/mul/ReadVariableOp#gru_3/gru_cell_3/mul/ReadVariableOp2N
%gru_3/gru_cell_3/mul_1/ReadVariableOp%gru_3/gru_cell_3/mul_1/ReadVariableOp2
gru_3/whilegru_3/while2@
lengths/BiasAdd/ReadVariableOplengths/BiasAdd/ReadVariableOp2D
 lengths/Tensordot/ReadVariableOp lengths/Tensordot/ReadVariableOp2<
notes/BiasAdd/ReadVariableOpnotes/BiasAdd/ReadVariableOp2@
notes/Tensordot/ReadVariableOpnotes/Tensordot/ReadVariableOp2<
times/BiasAdd/ReadVariableOptimes/BiasAdd/ReadVariableOp2@
times/Tensordot/ReadVariableOptimes/Tensordot/ReadVariableOp2:
vels/BiasAdd/ReadVariableOpvels/BiasAdd/ReadVariableOp2>
vels/Tensordot/ReadVariableOpvels/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ïT

while_body_10151
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	>
*while_gru_cell_2_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
?
0while_gru_cell_2_biasadd_readvariableop_resource:	<
(while_gru_cell_2_readvariableop_resource:
¢'while/gru_cell_2/BiasAdd/ReadVariableOp¢&while/gru_cell_2/MatMul/ReadVariableOp¢while/gru_cell_2/ReadVariableOp¢!while/gru_cell_2/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpÈ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMulÂ
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp½
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/BiasAdd
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_2/split/split_dimØ
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_2/split¯
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_2/ReadVariableOp
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack¡
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1¡
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2ä
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice¨
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_1
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_2/Const
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_2/split_1/split_dim
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_2/split_1£
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid§
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid_1
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul³
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_2/ReadVariableOp_1¡
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack¥
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1¥
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2ð
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1¯
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_2©
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_2
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
Õ(
å
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_9496

inputs

states2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_sliceh
MatMul_1MatMulstatesstrided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1R
mulMulSigmoid_1:y:0states*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
TanhT
mul_1MulSigmoid:y:0states*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ª
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity®

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_namestates
©

'__inference_model_1_layer_call_fn_11543

inputs
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:
¬

unknown_10:	¬

unknown_11:
æ

unknown_12:	æ

unknown_13:	}

unknown_14:}

unknown_15:	_

unknown_16:_
identity

identity_1

identity_2

identity_3¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *r
_output_shapes`
^:ÿÿÿÿÿÿÿÿÿ_:ÿÿÿÿÿÿÿÿÿ}:ÿÿÿÿÿÿÿÿÿæ:ÿÿÿÿÿÿÿÿÿ¬*2
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_112042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ïT

while_body_13363
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	>
*while_gru_cell_3_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
?
0while_gru_cell_3_biasadd_readvariableop_resource:	<
(while_gru_cell_3_readvariableop_resource:
¢'while/gru_cell_3/BiasAdd/ReadVariableOp¢&while/gru_cell_3/MatMul/ReadVariableOp¢while/gru_cell_3/ReadVariableOp¢!while/gru_cell_3/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOpÈ
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMulÂ
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp½
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/BiasAdd
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_3/split/split_dimØ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_3/split¯
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_3/ReadVariableOp
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack¡
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1¡
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2ä
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice¨
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_1
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_3/Const
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_3/split_1/split_dim
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_3/split_1£
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid§
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_3/add_1
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid_1
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul³
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_3/ReadVariableOp_1¡
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack¥
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1¥
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2ð
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1¯
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_2©
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Tanh
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_1u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_3/sub/x
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/sub
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_2
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
Õ(
å
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_8922

inputs

states2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_sliceh
MatMul_1MatMulstatesstrided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1R
mulMulSigmoid_1:y:0states*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
TanhT
mul_1MulSigmoid:y:0states*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ª
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity®

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_namestates
 
ü
B__inference_lengths_layer_call_and_return_conditional_losses_14131

inputs5
!tensordot_readvariableop_resource:
¬.
biasadd_readvariableop_resource:	¬
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
¬*
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
Tensordot/GatherV2/axisÑ
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
Tensordot/GatherV2_1/axis×
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:¬2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ò
%__inference_gru_3_layer_call_fn_13283

inputs
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_3_layer_call_and_return_conditional_losses_104192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯

%__inference_times_layer_call_fn_14062

inputs
unknown:
æ
	unknown_0:	æ
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_times_layer_call_and_return_conditional_losses_105022
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
4
½
?__inference_gru_2_layer_call_and_return_conditional_losses_9124

inputs"
gru_cell_2_9045:	#
gru_cell_2_9047:

gru_cell_2_9049:	#
gru_cell_2_9051:

identity¢AssignVariableOp¢ReadVariableOp¢"gru_cell_2/StatefulPartitionedCall¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1Ù
"gru_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0gru_cell_2_9045gru_cell_2_9047gru_cell_2_9049gru_cell_2_9051*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_90002$
"gru_cell_2/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
ReadVariableOpReadVariableOpgru_cell_2_9045*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÐ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2_9047gru_cell_2_9049gru_cell_2_9051*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_9060*
condR
while_cond_9059*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime²
AssignVariableOpAssignVariableOpgru_cell_2_9045while:output:4^ReadVariableOp#^gru_cell_2/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOp¹
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp#^gru_cell_2/StatefulPartitionedCall^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2H
"gru_cell_2/StatefulPartitionedCall"gru_cell_2/StatefulPartitionedCall2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
£
while_cond_13525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_13525___redundant_placeholder03
/while_while_cond_13525___redundant_placeholder13
/while_while_cond_13525___redundant_placeholder23
/while_while_cond_13525___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
¼;
ë
B__inference_model_1_layer_call_and_return_conditional_losses_11204

inputs!
dense_1_11155:

dense_1_11157:	
gru_2_11161:

gru_2_11163:	
gru_2_11165:

gru_2_11167:	
gru_3_11170:

gru_3_11172:	
gru_3_11174:

gru_3_11176:	!
lengths_11180:
¬
lengths_11182:	¬
times_11185:
æ
times_11187:	æ

vels_11190:	}

vels_11192:}
notes_11195:	_
notes_11197:_
identity

identity_1

identity_2

identity_3¢dense_1/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¢!dropout_3/StatefulPartitionedCall¢gru_2/StatefulPartitionedCall¢gru_3/StatefulPartitionedCall¢lengths/StatefulPartitionedCall¢notes/StatefulPartitionedCall¢times/StatefulPartitionedCall¢vels/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_11155dense_1_11157*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_100722!
dense_1/StatefulPartitionedCall
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_110902#
!dropout_2/StatefulPartitionedCallÍ
gru_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0gru_2_11161gru_2_11163gru_2_11165gru_2_11167*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_110592
gru_2/StatefulPartitionedCallÉ
gru_3/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0gru_3_11170gru_3_11172gru_3_11174gru_3_11176*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_3_layer_call_and_return_conditional_losses_108702
gru_3/StatefulPartitionedCall¼
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&gru_3/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_106892#
!dropout_3/StatefulPartitionedCallº
lengths/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0lengths_11180lengths_11182*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_lengths_layer_call_and_return_conditional_losses_104662!
lengths/StatefulPartitionedCall°
times/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0times_11185times_11187*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_times_layer_call_and_return_conditional_losses_105022
times/StatefulPartitionedCallª
vels/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0
vels_11190
vels_11192*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *H
fCRA
?__inference_vels_layer_call_and_return_conditional_losses_105382
vels/StatefulPartitionedCall¯
notes/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0notes_11195notes_11197*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_notes_layer_call_and_return_conditional_losses_105742
notes/StatefulPartitionedCall©
IdentityIdentity&notes/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity¬

Identity_1Identity%vels/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_1®

Identity_2Identity&times/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2°

Identity_3Identity(lengths/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall2B
lengths/StatefulPartitionedCalllengths/StatefulPartitionedCall2>
notes/StatefulPartitionedCallnotes/StatefulPartitionedCall2>
times/StatefulPartitionedCalltimes/StatefulPartitionedCall2<
vels/StatefulPartitionedCallvels/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

gru_3_while_cond_11796(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2(
$gru_3_while_less_gru_3_strided_slice?
;gru_3_while_gru_3_while_cond_11796___redundant_placeholder0?
;gru_3_while_gru_3_while_cond_11796___redundant_placeholder1?
;gru_3_while_gru_3_while_cond_11796___redundant_placeholder2?
;gru_3_while_gru_3_while_cond_11796___redundant_placeholder3
gru_3_while_identity

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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
÷!

while_body_9429
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_3_9497_0:
&
while_gru_cell_3_9499_0:	+
while_gru_cell_3_9501_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_3_9497:
$
while_gru_cell_3_9499:	)
while_gru_cell_3_9501:
¢(while/gru_cell_3/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
(while/gru_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_3_9497_0while_gru_cell_3_9499_0while_gru_cell_3_9501_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_94962*
(while/gru_cell_3/StatefulPartitionedCallõ
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¸
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3¸
while/Identity_4Identity1while/gru_cell_3/StatefulPartitionedCall:output:1)^while/gru_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
:	2
while/Identity_4"0
while_gru_cell_3_9497while_gru_cell_3_9497_0"0
while_gru_cell_3_9499while_gru_cell_3_9499_0"0
while_gru_cell_3_9501while_gru_cell_3_9501_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2T
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
:	:

_output_shapes
: :

_output_shapes
: 
Ðf
ç
@__inference_gru_2_layer_call_and_return_conditional_losses_12918
inputs_0=
)gru_cell_2_matmul_readvariableop_resource:
9
*gru_cell_2_biasadd_readvariableop_resource:	6
"gru_cell_2_readvariableop_resource:
>
+gru_cell_2_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_2/BiasAdd/ReadVariableOp¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢gru_cell_2/ReadVariableOp_1¢gru_cell_2/mul/ReadVariableOp¢gru_cell_2/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm}
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp
gru_cell_2/MatMulMatMulstrided_slice_1:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul®
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp¥
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/BiasAdd
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split/split_dimÀ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_2/split
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2À
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_sliceµ
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp­
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_2/Const
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split_1/split_dimí
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid_1«
gru_cell_2/mul/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/mul/ReadVariableOp
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0%gru_cell_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp_1
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2Ì
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1
gru_cell_2/MatMul_2MatMulgru_cell_2/mul:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_2
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Tanh¯
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_2/mul_1/ReadVariableOp
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_2/sub~
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12822*
condR
while_cond_12821*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12>
gru_cell_2/mul/ReadVariableOpgru_cell_2/mul/ReadVariableOp2B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2
whilewhile:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¬

'__inference_model_1_layer_call_fn_10629
input_2
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:
¬

unknown_10:	¬

unknown_11:
æ

unknown_12:	æ

unknown_13:	}

unknown_14:}

unknown_15:	_

unknown_16:_
identity

identity_1

identity_2

identity_3¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *r
_output_shapes`
^:ÿÿÿÿÿÿÿÿÿ_:ÿÿÿÿÿÿÿÿÿ}:ÿÿÿÿÿÿÿÿÿæ:ÿÿÿÿÿÿÿÿÿ¬*2
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_105842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
Ó
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_10689

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¹
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yÃ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Á-
®
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14685

inputs
states_02
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_sliceu
MatMul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim£
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
	Sigmoid_1k
mul/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2BatchMatMulV2mul:z:0strided_slice_1:output:0*
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
mul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpc
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_2P
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:2
add_3é
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identityí

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
 
ü
B__inference_lengths_layer_call_and_return_conditional_losses_10466

inputs5
!tensordot_readvariableop_resource:
¬.
biasadd_readvariableop_resource:	¬
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
¬*
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
Tensordot/GatherV2/axisÑ
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
Tensordot/GatherV2_1/axis×
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:¬2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ïT

while_body_10323
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	>
*while_gru_cell_3_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
?
0while_gru_cell_3_biasadd_readvariableop_resource:	<
(while_gru_cell_3_readvariableop_resource:
¢'while/gru_cell_3/BiasAdd/ReadVariableOp¢&while/gru_cell_3/MatMul/ReadVariableOp¢while/gru_cell_3/ReadVariableOp¢!while/gru_cell_3/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOpÈ
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMulÂ
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp½
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/BiasAdd
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_3/split/split_dimØ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_3/split¯
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_3/ReadVariableOp
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack¡
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1¡
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2ä
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice¨
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_1
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_3/Const
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_3/split_1/split_dim
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_3/split_1£
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid§
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_3/add_1
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid_1
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul³
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_3/ReadVariableOp_1¡
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack¥
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1¥
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2ð
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1¯
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_2©
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Tanh
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_1u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_3/sub/x
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/sub
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_2
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
õ_
Ñ	
gru_2_while_body_11638(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2%
!gru_2_while_gru_2_strided_slice_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0K
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
G
8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0:	D
0gru_2_while_gru_cell_2_readvariableop_resource_0:

gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4#
gru_2_while_gru_2_strided_slicea
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensorI
5gru_2_while_gru_cell_2_matmul_readvariableop_resource:
E
6gru_2_while_gru_cell_2_biasadd_readvariableop_resource:	B
.gru_2_while_gru_cell_2_readvariableop_resource:
¢-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp¢,gru_2/while/gru_cell_2/MatMul/ReadVariableOp¢%gru_2/while/gru_cell_2/ReadVariableOp¢'gru_2/while/gru_cell_2/ReadVariableOp_1Ï
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeï
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype021
/gru_2/while/TensorArrayV2Read/TensorListGetItemÖ
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02.
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpà
gru_2/while/gru_cell_2/MatMulMatMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/MatMulÔ
-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02/
-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOpÕ
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:05gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2 
gru_2/while/gru_cell_2/BiasAdd
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&gru_2/while/gru_cell_2/split/split_dimð
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_2/while/gru_cell_2/splitÁ
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02'
%gru_2/while/gru_cell_2/ReadVariableOp©
*gru_2/while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_2/while/gru_cell_2/strided_slice/stack­
,gru_2/while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_2/while/gru_cell_2/strided_slice/stack_1­
,gru_2/while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_2/while/gru_cell_2/strided_slice/stack_2
$gru_2/while/gru_cell_2/strided_sliceStridedSlice-gru_2/while/gru_cell_2/ReadVariableOp:value:03gru_2/while/gru_cell_2/strided_slice/stack:output:05gru_2/while/gru_cell_2/strided_slice/stack_1:output:05gru_2/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2&
$gru_2/while/gru_cell_2/strided_sliceÀ
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_2-gru_2/while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2!
gru_2/while/gru_cell_2/MatMul_1
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_2/while/gru_cell_2/Const
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(gru_2/while/gru_cell_2/split_1/split_dim©
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/MatMul_1:product:0%gru_2/while/gru_cell_2/Const:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2 
gru_2/while/gru_cell_2/split_1»
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/add
gru_2/while/gru_cell_2/SigmoidSigmoidgru_2/while/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2 
gru_2/while/gru_cell_2/Sigmoid¿
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/add_1
 gru_2/while/gru_cell_2/Sigmoid_1Sigmoid gru_2/while/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2"
 gru_2/while/gru_cell_2/Sigmoid_1ª
gru_2/while/gru_cell_2/mulMul$gru_2/while/gru_cell_2/Sigmoid_1:y:0gru_2_while_placeholder_2*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/mulÅ
'gru_2/while/gru_cell_2/ReadVariableOp_1ReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'gru_2/while/gru_cell_2/ReadVariableOp_1­
,gru_2/while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_2/while/gru_cell_2/strided_slice_1/stack±
.gru_2/while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_2/while/gru_cell_2/strided_slice_1/stack_1±
.gru_2/while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_2/while/gru_cell_2/strided_slice_1/stack_2
&gru_2/while/gru_cell_2/strided_slice_1StridedSlice/gru_2/while/gru_cell_2/ReadVariableOp_1:value:05gru_2/while/gru_cell_2/strided_slice_1/stack:output:07gru_2/while/gru_cell_2/strided_slice_1/stack_1:output:07gru_2/while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2(
&gru_2/while/gru_cell_2/strided_slice_1Ç
gru_2/while/gru_cell_2/MatMul_2MatMulgru_2/while/gru_cell_2/mul:z:0/gru_2/while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2!
gru_2/while/gru_cell_2/MatMul_2Á
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2)gru_2/while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/add_2
gru_2/while/gru_cell_2/TanhTanh gru_2/while/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/Tanh¬
gru_2/while/gru_cell_2/mul_1Mul"gru_2/while/gru_cell_2/Sigmoid:y:0gru_2_while_placeholder_2*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/mul_1
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/while/gru_cell_2/sub/x´
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0"gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/sub®
gru_2/while/gru_cell_2/mul_2Mulgru_2/while/gru_cell_2/sub:z:0gru_2/while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/mul_2³
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_1:z:0 gru_2/while/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/add_3ü
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
gru_2/while/add/y
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
gru_2/while/add_1/y
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/add_1¡
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_2/while/Identityº
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_2/while/Identity_1£
gru_2/while/Identity_2Identitygru_2/while/add:z:0.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_2/while/Identity_2Ð
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_2/while/Identity_3¹
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
:	2
gru_2/while/Identity_4"D
gru_2_while_gru_2_strided_slice!gru_2_while_gru_2_strided_slice_0"r
6gru_2_while_gru_cell_2_biasadd_readvariableop_resource8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"À
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2^
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
:	:

_output_shapes
: :

_output_shapes
: 
À.
º
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_8721

inputs
states:	2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slicez
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
MatMul_1/ReadVariableOp
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1p
mul/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
mul/ReadVariableOpf
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
Tanht
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
mul_1/ReadVariableOpj
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ð
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:	2

Identityô

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:	: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
á
£
while_cond_13851
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_13851___redundant_placeholder03
/while_while_cond_13851___redundant_placeholder13
/while_while_cond_13851___redundant_placeholder23
/while_while_cond_13851___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:

Ò
%__inference_gru_2_layer_call_fn_12579

inputs
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_102472
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í	
×
*__inference_gru_cell_3_layer_call_fn_14507

inputs
states_0
unknown:

	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_96142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs:IE

_output_shapes
:	
"
_user_specified_name
states/0
Êf
å
@__inference_gru_3_layer_call_and_return_conditional_losses_13948

inputs=
)gru_cell_3_matmul_readvariableop_resource:
9
*gru_cell_3_biasadd_readvariableop_resource:	6
"gru_cell_3_readvariableop_resource:
>
+gru_cell_3_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_3/BiasAdd/ReadVariableOp¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢gru_cell_3/ReadVariableOp_1¢gru_cell_3/mul/ReadVariableOp¢gru_cell_3/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp
gru_cell_3/MatMulMatMulstrided_slice_1:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul®
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp¥
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/BiasAdd
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split/split_dimÀ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_3/split
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2À
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_sliceµ
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp­
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_3/Const
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split_1/split_dimí
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_3/split_1
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid_1«
gru_cell_3/mul/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_3/mul/ReadVariableOp
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0%gru_cell_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp_1
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2Ì
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1
gru_cell_3/MatMul_2MatMulgru_cell_3/mul:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_2
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Tanh¯
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_3/mul_1/ReadVariableOp
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_1i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_3/sub/x
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_3/sub~
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_2
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13852*
condR
while_cond_13851*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12>
gru_cell_3/mul/ReadVariableOpgru_cell_3/mul/ReadVariableOp2B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿;
ì
B__inference_model_1_layer_call_and_return_conditional_losses_11400
input_2!
dense_1_11351:

dense_1_11353:	
gru_2_11357:

gru_2_11359:	
gru_2_11361:

gru_2_11363:	
gru_3_11366:

gru_3_11368:	
gru_3_11370:

gru_3_11372:	!
lengths_11376:
¬
lengths_11378:	¬
times_11381:
æ
times_11383:	æ

vels_11386:	}

vels_11388:}
notes_11391:	_
notes_11393:_
identity

identity_1

identity_2

identity_3¢dense_1/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¢!dropout_3/StatefulPartitionedCall¢gru_2/StatefulPartitionedCall¢gru_3/StatefulPartitionedCall¢lengths/StatefulPartitionedCall¢notes/StatefulPartitionedCall¢times/StatefulPartitionedCall¢vels/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_1_11351dense_1_11353*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_100722!
dense_1/StatefulPartitionedCall
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_110902#
!dropout_2/StatefulPartitionedCallÍ
gru_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0gru_2_11357gru_2_11359gru_2_11361gru_2_11363*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_110592
gru_2/StatefulPartitionedCallÉ
gru_3/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0gru_3_11366gru_3_11368gru_3_11370gru_3_11372*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_3_layer_call_and_return_conditional_losses_108702
gru_3/StatefulPartitionedCall¼
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&gru_3/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_106892#
!dropout_3/StatefulPartitionedCallº
lengths/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0lengths_11376lengths_11378*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_lengths_layer_call_and_return_conditional_losses_104662!
lengths/StatefulPartitionedCall°
times/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0times_11381times_11383*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_times_layer_call_and_return_conditional_losses_105022
times/StatefulPartitionedCallª
vels/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0
vels_11386
vels_11388*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *H
fCRA
?__inference_vels_layer_call_and_return_conditional_losses_105382
vels/StatefulPartitionedCall¯
notes/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0notes_11391notes_11393*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_notes_layer_call_and_return_conditional_losses_105742
notes/StatefulPartitionedCall©
IdentityIdentity&notes/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity¬

Identity_1Identity%vels/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_1®

Identity_2Identity&times/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2°

Identity_3Identity(lengths/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall2B
lengths/StatefulPartitionedCalllengths/StatefulPartitionedCall2>
notes/StatefulPartitionedCallnotes/StatefulPartitionedCall2>
times/StatefulPartitionedCalltimes/StatefulPartitionedCall2<
vels/StatefulPartitionedCallvels/StatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
á
£
while_cond_12821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_12821___redundant_placeholder03
/while_while_cond_12821___redundant_placeholder13
/while_while_cond_12821___redundant_placeholder23
/while_while_cond_12821___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
Á-
®
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14827

inputs
states_02
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_sliceu
MatMul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim£
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
	Sigmoid_1k
mul/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2BatchMatMulV2mul:z:0strided_slice_1:output:0*
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
mul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpc
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_2P
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:2
add_3é
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identityí

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0

Ò
%__inference_gru_3_layer_call_fn_13296

inputs
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_3_layer_call_and_return_conditional_losses_108702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©

'__inference_model_1_layer_call_fn_11496

inputs
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:
¬

unknown_10:	¬

unknown_11:
æ

unknown_12:	æ

unknown_13:	}

unknown_14:}

unknown_15:	_

unknown_16:_
identity

identity_1

identity_2

identity_3¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *r
_output_shapes`
^:ÿÿÿÿÿÿÿÿÿ_:ÿÿÿÿÿÿÿÿÿ}:ÿÿÿÿÿÿÿÿÿæ:ÿÿÿÿÿÿÿÿÿ¬*2
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_105842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ïT

while_body_12659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	>
*while_gru_cell_2_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
?
0while_gru_cell_2_biasadd_readvariableop_resource:	<
(while_gru_cell_2_readvariableop_resource:
¢'while/gru_cell_2/BiasAdd/ReadVariableOp¢&while/gru_cell_2/MatMul/ReadVariableOp¢while/gru_cell_2/ReadVariableOp¢!while/gru_cell_2/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpÈ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMulÂ
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp½
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/BiasAdd
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_2/split/split_dimØ
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_2/split¯
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_2/ReadVariableOp
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack¡
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1¡
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2ä
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice¨
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_1
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_2/Const
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_2/split_1/split_dim
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_2/split_1£
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid§
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid_1
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul³
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_2/ReadVariableOp_1¡
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack¥
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1¥
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2ð
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1¯
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_2©
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_2
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
·-
¬
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14212

inputs

states2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slices
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim£
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
	Sigmoid_1i
mul/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2BatchMatMulV2mul:z:0strided_slice_1:output:0*
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
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpc
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_2P
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:2
add_3é
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identityí

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
á
£
while_cond_12984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_12984___redundant_placeholder03
/while_while_cond_12984___redundant_placeholder13
/while_while_cond_12984___redundant_placeholder23
/while_while_cond_12984___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:

Ô
%__inference_gru_2_layer_call_fn_12566
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *H
fCRA
?__inference_gru_2_layer_call_and_return_conditional_losses_91242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0


#__inference_signature_wrapper_11449
input_2
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:
¬

unknown_10:	¬

unknown_11:
æ

unknown_12:	æ

unknown_13:	}

unknown_14:}

unknown_15:	_

unknown_16:_
identity

identity_1

identity_2

identity_3¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *r
_output_shapes`
^:ÿÿÿÿÿÿÿÿÿ¬:ÿÿÿÿÿÿÿÿÿ_:ÿÿÿÿÿÿÿÿÿæ:ÿÿÿÿÿÿÿÿÿ}*2
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8 *(
f#R!
__inference__wrapped_model_86502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
Ó
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_13975

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¹
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yÃ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í	
×
*__inference_gru_cell_2_layer_call_fn_14145

inputs
states_0
unknown:

	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_88042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs:IE

_output_shapes
:	
"
_user_specified_name
states/0
Ü

while_cond_9428
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_9428___redundant_placeholder02
.while_while_cond_9428___redundant_placeholder12
.while_while_cond_9428___redundant_placeholder22
.while_while_cond_9428___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
á
b
)__inference_dropout_3_layer_call_fn_13958

inputs
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_106892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
÷
?__inference_vels_layer_call_and_return_conditional_losses_10538

inputs4
!tensordot_readvariableop_resource:	}-
biasadd_readvariableop_resource:}
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	}*
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
Tensordot/GatherV2/axisÑ
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
Tensordot/GatherV2_1/axis×
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:}2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:}*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â½
Ì
B__inference_model_1_layer_call_and_return_conditional_losses_12473

inputs=
)dense_1_tensordot_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	C
/gru_2_gru_cell_2_matmul_readvariableop_resource:
?
0gru_2_gru_cell_2_biasadd_readvariableop_resource:	<
(gru_2_gru_cell_2_readvariableop_resource:
D
1gru_2_gru_cell_2_matmul_1_readvariableop_resource:	C
/gru_3_gru_cell_3_matmul_readvariableop_resource:
?
0gru_3_gru_cell_3_biasadd_readvariableop_resource:	<
(gru_3_gru_cell_3_readvariableop_resource:
D
1gru_3_gru_cell_3_matmul_1_readvariableop_resource:	=
)lengths_tensordot_readvariableop_resource:
¬6
'lengths_biasadd_readvariableop_resource:	¬;
'times_tensordot_readvariableop_resource:
æ4
%times_biasadd_readvariableop_resource:	æ9
&vels_tensordot_readvariableop_resource:	}2
$vels_biasadd_readvariableop_resource:}:
'notes_tensordot_readvariableop_resource:	_3
%notes_biasadd_readvariableop_resource:_
identity

identity_1

identity_2

identity_3¢dense_1/BiasAdd/ReadVariableOp¢ dense_1/Tensordot/ReadVariableOp¢gru_2/AssignVariableOp¢gru_2/ReadVariableOp¢'gru_2/gru_cell_2/BiasAdd/ReadVariableOp¢&gru_2/gru_cell_2/MatMul/ReadVariableOp¢(gru_2/gru_cell_2/MatMul_1/ReadVariableOp¢gru_2/gru_cell_2/ReadVariableOp¢!gru_2/gru_cell_2/ReadVariableOp_1¢#gru_2/gru_cell_2/mul/ReadVariableOp¢%gru_2/gru_cell_2/mul_1/ReadVariableOp¢gru_2/while¢gru_3/AssignVariableOp¢gru_3/ReadVariableOp¢'gru_3/gru_cell_3/BiasAdd/ReadVariableOp¢&gru_3/gru_cell_3/MatMul/ReadVariableOp¢(gru_3/gru_cell_3/MatMul_1/ReadVariableOp¢gru_3/gru_cell_3/ReadVariableOp¢!gru_3/gru_cell_3/ReadVariableOp_1¢#gru_3/gru_cell_3/mul/ReadVariableOp¢%gru_3/gru_cell_3/mul_1/ReadVariableOp¢gru_3/while¢lengths/BiasAdd/ReadVariableOp¢ lengths/Tensordot/ReadVariableOp¢notes/BiasAdd/ReadVariableOp¢notes/Tensordot/ReadVariableOp¢times/BiasAdd/ReadVariableOp¢times/Tensordot/ReadVariableOp¢vels/BiasAdd/ReadVariableOp¢vels/Tensordot/ReadVariableOp°
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 dense_1/Tensordot/ReadVariableOpz
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/axes
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
dense_1/Tensordot/Shape
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/GatherV2/axisù
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_1/Tensordot/GatherV2
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_1/Tensordot/GatherV2_1/axisÿ
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
dense_1/Tensordot/Const 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_1/Tensordot/Const_1¨
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_1/Tensordot/Prod_1
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_1/Tensordot/concat/axisØ
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat¬
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/stack©
dense_1/Tensordot/transpose	Transposeinputs!dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot/transpose¿
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot/Reshape¿
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot/MatMul
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
dense_1/Tensordot/Const_2
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_1/Tensordot/concat_1/axiså
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_1/Tensordot/concat_1±
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tensordot¥
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp¨
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAddu
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Tanhw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/dropout/Const 
dropout_2/dropout/MulMuldense_1/Tanh:y:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/dropout/Mulr
dropout_2/dropout/ShapeShapedense_1/Tanh:y:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape×
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype020
.dropout_2/dropout/random_uniform/RandomUniform
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2"
 dropout_2/dropout/GreaterEqual/yë
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
dropout_2/dropout/GreaterEqual¢
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/dropout/Cast§
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/dropout/Mul_1
gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose/perm¢
gru_2/transpose	Transposedropout_2/dropout/Mul_1:z:0gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_2/transpose]
gru_2/ShapeShapegru_2/transpose:y:0*
T0*
_output_shapes
:2
gru_2/Shape
gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice/stack
gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_1
gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice/stack_2
gru_2/strided_sliceStridedSlicegru_2/Shape:output:0"gru_2/strided_slice/stack:output:0$gru_2/strided_slice/stack_1:output:0$gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_2/strided_slice
!gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!gru_2/TensorArrayV2/element_shapeÈ
gru_2/TensorArrayV2TensorListReserve*gru_2/TensorArrayV2/element_shape:output:0gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_2/TensorArrayV2Ë
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2=
;gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_2/transpose:y:0Dgru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_2/TensorArrayUnstack/TensorListFromTensor
gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_1/stack
gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_1
gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_1/stack_2
gru_2/strided_slice_1StridedSlicegru_2/transpose:y:0$gru_2/strided_slice_1/stack:output:0&gru_2/strided_slice_1/stack_1:output:0&gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
gru_2/strided_slice_1Â
&gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp/gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&gru_2/gru_cell_2/MatMul/ReadVariableOp¶
gru_2/gru_cell_2/MatMulMatMulgru_2/strided_slice_1:output:0.gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/MatMulÀ
'gru_2/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp0gru_2_gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'gru_2/gru_cell_2/BiasAdd/ReadVariableOp½
gru_2/gru_cell_2/BiasAddBiasAdd!gru_2/gru_cell_2/MatMul:product:0/gru_2/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/BiasAdd
 gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 gru_2/gru_cell_2/split/split_dimØ
gru_2/gru_cell_2/splitSplit)gru_2/gru_cell_2/split/split_dim:output:0!gru_2/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_2/gru_cell_2/split­
gru_2/gru_cell_2/ReadVariableOpReadVariableOp(gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02!
gru_2/gru_cell_2/ReadVariableOp
$gru_2/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_2/gru_cell_2/strided_slice/stack¡
&gru_2/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_2/gru_cell_2/strided_slice/stack_1¡
&gru_2/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_2/gru_cell_2/strided_slice/stack_2ä
gru_2/gru_cell_2/strided_sliceStridedSlice'gru_2/gru_cell_2/ReadVariableOp:value:0-gru_2/gru_cell_2/strided_slice/stack:output:0/gru_2/gru_cell_2/strided_slice/stack_1:output:0/gru_2/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
gru_2/gru_cell_2/strided_sliceÇ
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02*
(gru_2/gru_cell_2/MatMul_1/ReadVariableOpÅ
gru_2/gru_cell_2/MatMul_1MatMul0gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0'gru_2/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/MatMul_1
gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_2/gru_cell_2/Const
"gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_2/gru_cell_2/split_1/split_dim
gru_2/gru_cell_2/split_1SplitV#gru_2/gru_cell_2/MatMul_1:product:0gru_2/gru_cell_2/Const:output:0+gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_2/gru_cell_2/split_1£
gru_2/gru_cell_2/addAddV2gru_2/gru_cell_2/split:output:0!gru_2/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/add
gru_2/gru_cell_2/SigmoidSigmoidgru_2/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/Sigmoid§
gru_2/gru_cell_2/add_1AddV2gru_2/gru_cell_2/split:output:1!gru_2/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/add_1
gru_2/gru_cell_2/Sigmoid_1Sigmoidgru_2/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/Sigmoid_1½
#gru_2/gru_cell_2/mul/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02%
#gru_2/gru_cell_2/mul/ReadVariableOpª
gru_2/gru_cell_2/mulMulgru_2/gru_cell_2/Sigmoid_1:y:0+gru_2/gru_cell_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/mul±
!gru_2/gru_cell_2/ReadVariableOp_1ReadVariableOp(gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!gru_2/gru_cell_2/ReadVariableOp_1¡
&gru_2/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_2/gru_cell_2/strided_slice_1/stack¥
(gru_2/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_2/gru_cell_2/strided_slice_1/stack_1¥
(gru_2/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_2/gru_cell_2/strided_slice_1/stack_2ð
 gru_2/gru_cell_2/strided_slice_1StridedSlice)gru_2/gru_cell_2/ReadVariableOp_1:value:0/gru_2/gru_cell_2/strided_slice_1/stack:output:01gru_2/gru_cell_2/strided_slice_1/stack_1:output:01gru_2/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 gru_2/gru_cell_2/strided_slice_1¯
gru_2/gru_cell_2/MatMul_2MatMulgru_2/gru_cell_2/mul:z:0)gru_2/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/MatMul_2©
gru_2/gru_cell_2/add_2AddV2gru_2/gru_cell_2/split:output:2#gru_2/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/add_2|
gru_2/gru_cell_2/TanhTanhgru_2/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/TanhÁ
%gru_2/gru_cell_2/mul_1/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02'
%gru_2/gru_cell_2/mul_1/ReadVariableOp®
gru_2/gru_cell_2/mul_1Mulgru_2/gru_cell_2/Sigmoid:y:0-gru_2/gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/mul_1u
gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/gru_cell_2/sub/x
gru_2/gru_cell_2/subSubgru_2/gru_cell_2/sub/x:output:0gru_2/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/sub
gru_2/gru_cell_2/mul_2Mulgru_2/gru_cell_2/sub:z:0gru_2/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/mul_2
gru_2/gru_cell_2/add_3AddV2gru_2/gru_cell_2/mul_1:z:0gru_2/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
gru_2/gru_cell_2/add_3
#gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_2/TensorArrayV2_1/element_shapeÎ
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

gru_2/time
gru_2/ReadVariableOpReadVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_2/ReadVariableOp
gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_2/while/maximum_iterationsv
gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_2/while/loop_counterî
gru_2/whileWhile!gru_2/while/loop_counter:output:0'gru_2/while/maximum_iterations:output:0gru_2/time:output:0gru_2/TensorArrayV2_1:handle:0gru_2/ReadVariableOp:value:0gru_2/strided_slice:output:0=gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0/gru_2_gru_cell_2_matmul_readvariableop_resource0gru_2_gru_cell_2_biasadd_readvariableop_resource(gru_2_gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*"
bodyR
gru_2_while_body_12103*"
condR
gru_2_while_cond_12102*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
gru_2/whileÁ
6gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      28
6gru_2/TensorArrayV2Stack/TensorListStack/element_shape
(gru_2/TensorArrayV2Stack/TensorListStackTensorListStackgru_2/while:output:3?gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02*
(gru_2/TensorArrayV2Stack/TensorListStack
gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_2/strided_slice_2/stack
gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_2/strided_slice_2/stack_1
gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_2/strided_slice_2/stack_2¶
gru_2/strided_slice_2StridedSlice1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0$gru_2/strided_slice_2/stack:output:0&gru_2/strided_slice_2/stack_1:output:0&gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
gru_2/strided_slice_2
gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_2/transpose_1/perm¾
gru_2/transpose_1	Transpose1gru_2/TensorArrayV2Stack/TensorListStack:tensor:0gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_2/transpose_1r
gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_2/runtimeÀ
gru_2/AssignVariableOpAssignVariableOp1gru_2_gru_cell_2_matmul_1_readvariableop_resourcegru_2/while:output:4^gru_2/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp$^gru_2/gru_cell_2/mul/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
gru_2/AssignVariableOp
gru_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_3/transpose/perm
gru_3/transpose	Transposegru_2/transpose_1:y:0gru_3/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_3/transpose]
gru_3/ShapeShapegru_3/transpose:y:0*
T0*
_output_shapes
:2
gru_3/Shape
gru_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice/stack
gru_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice/stack_1
gru_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice/stack_2
gru_3/strided_sliceStridedSlicegru_3/Shape:output:0"gru_3/strided_slice/stack:output:0$gru_3/strided_slice/stack_1:output:0$gru_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_3/strided_slice
!gru_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!gru_3/TensorArrayV2/element_shapeÈ
gru_3/TensorArrayV2TensorListReserve*gru_3/TensorArrayV2/element_shape:output:0gru_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_3/TensorArrayV2Ë
;gru_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2=
;gru_3/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_3/transpose:y:0Dgru_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_3/TensorArrayUnstack/TensorListFromTensor
gru_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice_1/stack
gru_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_1/stack_1
gru_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_1/stack_2
gru_3/strided_slice_1StridedSlicegru_3/transpose:y:0$gru_3/strided_slice_1/stack:output:0&gru_3/strided_slice_1/stack_1:output:0&gru_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
gru_3/strided_slice_1Â
&gru_3/gru_cell_3/MatMul/ReadVariableOpReadVariableOp/gru_3_gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02(
&gru_3/gru_cell_3/MatMul/ReadVariableOp¶
gru_3/gru_cell_3/MatMulMatMulgru_3/strided_slice_1:output:0.gru_3/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/MatMulÀ
'gru_3/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp0gru_3_gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02)
'gru_3/gru_cell_3/BiasAdd/ReadVariableOp½
gru_3/gru_cell_3/BiasAddBiasAdd!gru_3/gru_cell_3/MatMul:product:0/gru_3/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/BiasAdd
 gru_3/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 gru_3/gru_cell_3/split/split_dimØ
gru_3/gru_cell_3/splitSplit)gru_3/gru_cell_3/split/split_dim:output:0!gru_3/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_3/gru_cell_3/split­
gru_3/gru_cell_3/ReadVariableOpReadVariableOp(gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02!
gru_3/gru_cell_3/ReadVariableOp
$gru_3/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_3/gru_cell_3/strided_slice/stack¡
&gru_3/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_3/gru_cell_3/strided_slice/stack_1¡
&gru_3/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_3/gru_cell_3/strided_slice/stack_2ä
gru_3/gru_cell_3/strided_sliceStridedSlice'gru_3/gru_cell_3/ReadVariableOp:value:0-gru_3/gru_cell_3/strided_slice/stack:output:0/gru_3/gru_cell_3/strided_slice/stack_1:output:0/gru_3/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
gru_3/gru_cell_3/strided_sliceÇ
(gru_3/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02*
(gru_3/gru_cell_3/MatMul_1/ReadVariableOpÅ
gru_3/gru_cell_3/MatMul_1MatMul0gru_3/gru_cell_3/MatMul_1/ReadVariableOp:value:0'gru_3/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/MatMul_1
gru_3/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_3/gru_cell_3/Const
"gru_3/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_3/gru_cell_3/split_1/split_dim
gru_3/gru_cell_3/split_1SplitV#gru_3/gru_cell_3/MatMul_1:product:0gru_3/gru_cell_3/Const:output:0+gru_3/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_3/gru_cell_3/split_1£
gru_3/gru_cell_3/addAddV2gru_3/gru_cell_3/split:output:0!gru_3/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/add
gru_3/gru_cell_3/SigmoidSigmoidgru_3/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/Sigmoid§
gru_3/gru_cell_3/add_1AddV2gru_3/gru_cell_3/split:output:1!gru_3/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/add_1
gru_3/gru_cell_3/Sigmoid_1Sigmoidgru_3/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/Sigmoid_1½
#gru_3/gru_cell_3/mul/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02%
#gru_3/gru_cell_3/mul/ReadVariableOpª
gru_3/gru_cell_3/mulMulgru_3/gru_cell_3/Sigmoid_1:y:0+gru_3/gru_cell_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/mul±
!gru_3/gru_cell_3/ReadVariableOp_1ReadVariableOp(gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!gru_3/gru_cell_3/ReadVariableOp_1¡
&gru_3/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&gru_3/gru_cell_3/strided_slice_1/stack¥
(gru_3/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_3/gru_cell_3/strided_slice_1/stack_1¥
(gru_3/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_3/gru_cell_3/strided_slice_1/stack_2ð
 gru_3/gru_cell_3/strided_slice_1StridedSlice)gru_3/gru_cell_3/ReadVariableOp_1:value:0/gru_3/gru_cell_3/strided_slice_1/stack:output:01gru_3/gru_cell_3/strided_slice_1/stack_1:output:01gru_3/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 gru_3/gru_cell_3/strided_slice_1¯
gru_3/gru_cell_3/MatMul_2MatMulgru_3/gru_cell_3/mul:z:0)gru_3/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/MatMul_2©
gru_3/gru_cell_3/add_2AddV2gru_3/gru_cell_3/split:output:2#gru_3/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/add_2|
gru_3/gru_cell_3/TanhTanhgru_3/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/TanhÁ
%gru_3/gru_cell_3/mul_1/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02'
%gru_3/gru_cell_3/mul_1/ReadVariableOp®
gru_3/gru_cell_3/mul_1Mulgru_3/gru_cell_3/Sigmoid:y:0-gru_3/gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/mul_1u
gru_3/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_3/gru_cell_3/sub/x
gru_3/gru_cell_3/subSubgru_3/gru_cell_3/sub/x:output:0gru_3/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/sub
gru_3/gru_cell_3/mul_2Mulgru_3/gru_cell_3/sub:z:0gru_3/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/mul_2
gru_3/gru_cell_3/add_3AddV2gru_3/gru_cell_3/mul_1:z:0gru_3/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
gru_3/gru_cell_3/add_3
#gru_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_3/TensorArrayV2_1/element_shapeÎ
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

gru_3/time
gru_3/ReadVariableOpReadVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_3/ReadVariableOp
gru_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_3/while/maximum_iterationsv
gru_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_3/while/loop_counterî
gru_3/whileWhile!gru_3/while/loop_counter:output:0'gru_3/while/maximum_iterations:output:0gru_3/time:output:0gru_3/TensorArrayV2_1:handle:0gru_3/ReadVariableOp:value:0gru_3/strided_slice:output:0=gru_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0/gru_3_gru_cell_3_matmul_readvariableop_resource0gru_3_gru_cell_3_biasadd_readvariableop_resource(gru_3_gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*"
bodyR
gru_3_while_body_12262*"
condR
gru_3_while_cond_12261*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
gru_3/whileÁ
6gru_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      28
6gru_3/TensorArrayV2Stack/TensorListStack/element_shape
(gru_3/TensorArrayV2Stack/TensorListStackTensorListStackgru_3/while:output:3?gru_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02*
(gru_3/TensorArrayV2Stack/TensorListStack
gru_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_3/strided_slice_2/stack
gru_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_3/strided_slice_2/stack_1
gru_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_3/strided_slice_2/stack_2¶
gru_3/strided_slice_2StridedSlice1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0$gru_3/strided_slice_2/stack:output:0&gru_3/strided_slice_2/stack_1:output:0&gru_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
gru_3/strided_slice_2
gru_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_3/transpose_1/perm¾
gru_3/transpose_1	Transpose1gru_3/TensorArrayV2Stack/TensorListStack:tensor:0gru_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_3/transpose_1r
gru_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_3/runtimeÀ
gru_3/AssignVariableOpAssignVariableOp1gru_3_gru_cell_3_matmul_1_readvariableop_resourcegru_3/while:output:4^gru_3/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp$^gru_3/gru_cell_3/mul/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
gru_3/AssignVariableOpw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout_3/dropout/Const¥
dropout_3/dropout/MulMulgru_3/transpose_1:y:0 dropout_3/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/dropout/Mulw
dropout_3/dropout/ShapeShapegru_3/transpose_1:y:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape×
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2"
 dropout_3/dropout/GreaterEqual/yë
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
dropout_3/dropout/GreaterEqual¢
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/dropout/Cast§
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/dropout/Mul_1°
 lengths/Tensordot/ReadVariableOpReadVariableOp)lengths_tensordot_readvariableop_resource* 
_output_shapes
:
¬*
dtype02"
 lengths/Tensordot/ReadVariableOpz
lengths/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
lengths/Tensordot/axes
lengths/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
lengths/Tensordot/free}
lengths/Tensordot/ShapeShapedropout_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lengths/Tensordot/Shape
lengths/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
lengths/Tensordot/GatherV2/axisù
lengths/Tensordot/GatherV2GatherV2 lengths/Tensordot/Shape:output:0lengths/Tensordot/free:output:0(lengths/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
lengths/Tensordot/GatherV2
!lengths/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!lengths/Tensordot/GatherV2_1/axisÿ
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
lengths/Tensordot/Const 
lengths/Tensordot/ProdProd#lengths/Tensordot/GatherV2:output:0 lengths/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
lengths/Tensordot/Prod
lengths/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
lengths/Tensordot/Const_1¨
lengths/Tensordot/Prod_1Prod%lengths/Tensordot/GatherV2_1:output:0"lengths/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
lengths/Tensordot/Prod_1
lengths/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
lengths/Tensordot/concat/axisØ
lengths/Tensordot/concatConcatV2lengths/Tensordot/free:output:0lengths/Tensordot/axes:output:0&lengths/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/concat¬
lengths/Tensordot/stackPacklengths/Tensordot/Prod:output:0!lengths/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/stack¾
lengths/Tensordot/transpose	Transposedropout_3/dropout/Mul_1:z:0!lengths/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lengths/Tensordot/transpose¿
lengths/Tensordot/ReshapeReshapelengths/Tensordot/transpose:y:0 lengths/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
lengths/Tensordot/Reshape¿
lengths/Tensordot/MatMulMatMul"lengths/Tensordot/Reshape:output:0(lengths/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lengths/Tensordot/MatMul
lengths/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:¬2
lengths/Tensordot/Const_2
lengths/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
lengths/Tensordot/concat_1/axiså
lengths/Tensordot/concat_1ConcatV2#lengths/Tensordot/GatherV2:output:0"lengths/Tensordot/Const_2:output:0(lengths/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
lengths/Tensordot/concat_1±
lengths/TensordotReshape"lengths/Tensordot/MatMul:product:0#lengths/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lengths/Tensordot¥
lengths/BiasAdd/ReadVariableOpReadVariableOp'lengths_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02 
lengths/BiasAdd/ReadVariableOp¨
lengths/BiasAddBiasAddlengths/Tensordot:output:0&lengths/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
lengths/BiasAddª
times/Tensordot/ReadVariableOpReadVariableOp'times_tensordot_readvariableop_resource* 
_output_shapes
:
æ*
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
times/Tensordot/ShapeShapedropout_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
times/Tensordot/Shape
times/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
times/Tensordot/GatherV2/axisï
times/Tensordot/GatherV2GatherV2times/Tensordot/Shape:output:0times/Tensordot/free:output:0&times/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
times/Tensordot/GatherV2
times/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
times/Tensordot/GatherV2_1/axisõ
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
times/Tensordot/Const
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
times/Tensordot/Const_1 
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
times/Tensordot/concat/axisÎ
times/Tensordot/concatConcatV2times/Tensordot/free:output:0times/Tensordot/axes:output:0$times/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/concat¤
times/Tensordot/stackPacktimes/Tensordot/Prod:output:0times/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/stack¸
times/Tensordot/transpose	Transposedropout_3/dropout/Mul_1:z:0times/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
times/Tensordot/transpose·
times/Tensordot/ReshapeReshapetimes/Tensordot/transpose:y:0times/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
times/Tensordot/Reshape·
times/Tensordot/MatMulMatMul times/Tensordot/Reshape:output:0&times/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
times/Tensordot/MatMul}
times/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:æ2
times/Tensordot/Const_2
times/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
times/Tensordot/concat_1/axisÛ
times/Tensordot/concat_1ConcatV2!times/Tensordot/GatherV2:output:0 times/Tensordot/Const_2:output:0&times/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
times/Tensordot/concat_1©
times/TensordotReshape times/Tensordot/MatMul:product:0!times/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
times/Tensordot
times/BiasAdd/ReadVariableOpReadVariableOp%times_biasadd_readvariableop_resource*
_output_shapes	
:æ*
dtype02
times/BiasAdd/ReadVariableOp 
times/BiasAddBiasAddtimes/Tensordot:output:0$times/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
times/BiasAdd¦
vels/Tensordot/ReadVariableOpReadVariableOp&vels_tensordot_readvariableop_resource*
_output_shapes
:	}*
dtype02
vels/Tensordot/ReadVariableOpt
vels/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
vels/Tensordot/axes{
vels/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
vels/Tensordot/freew
vels/Tensordot/ShapeShapedropout_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
vels/Tensordot/Shape~
vels/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
vels/Tensordot/GatherV2/axisê
vels/Tensordot/GatherV2GatherV2vels/Tensordot/Shape:output:0vels/Tensordot/free:output:0%vels/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
vels/Tensordot/GatherV2
vels/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
vels/Tensordot/GatherV2_1/axisð
vels/Tensordot/GatherV2_1GatherV2vels/Tensordot/Shape:output:0vels/Tensordot/axes:output:0'vels/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
vels/Tensordot/GatherV2_1v
vels/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
vels/Tensordot/Const
vels/Tensordot/ProdProd vels/Tensordot/GatherV2:output:0vels/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
vels/Tensordot/Prodz
vels/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
vels/Tensordot/Const_1
vels/Tensordot/Prod_1Prod"vels/Tensordot/GatherV2_1:output:0vels/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
vels/Tensordot/Prod_1z
vels/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
vels/Tensordot/concat/axisÉ
vels/Tensordot/concatConcatV2vels/Tensordot/free:output:0vels/Tensordot/axes:output:0#vels/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
vels/Tensordot/concat 
vels/Tensordot/stackPackvels/Tensordot/Prod:output:0vels/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
vels/Tensordot/stackµ
vels/Tensordot/transpose	Transposedropout_3/dropout/Mul_1:z:0vels/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
vels/Tensordot/transpose³
vels/Tensordot/ReshapeReshapevels/Tensordot/transpose:y:0vels/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
vels/Tensordot/Reshape²
vels/Tensordot/MatMulMatMulvels/Tensordot/Reshape:output:0%vels/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
vels/Tensordot/MatMulz
vels/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:}2
vels/Tensordot/Const_2~
vels/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
vels/Tensordot/concat_1/axisÖ
vels/Tensordot/concat_1ConcatV2 vels/Tensordot/GatherV2:output:0vels/Tensordot/Const_2:output:0%vels/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
vels/Tensordot/concat_1¤
vels/TensordotReshapevels/Tensordot/MatMul:product:0 vels/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
vels/Tensordot
vels/BiasAdd/ReadVariableOpReadVariableOp$vels_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype02
vels/BiasAdd/ReadVariableOp
vels/BiasAddBiasAddvels/Tensordot:output:0#vels/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
vels/BiasAdd©
notes/Tensordot/ReadVariableOpReadVariableOp'notes_tensordot_readvariableop_resource*
_output_shapes
:	_*
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
notes/Tensordot/ShapeShapedropout_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
notes/Tensordot/Shape
notes/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
notes/Tensordot/GatherV2/axisï
notes/Tensordot/GatherV2GatherV2notes/Tensordot/Shape:output:0notes/Tensordot/free:output:0&notes/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
notes/Tensordot/GatherV2
notes/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
notes/Tensordot/GatherV2_1/axisõ
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
notes/Tensordot/Const
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
notes/Tensordot/Const_1 
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
notes/Tensordot/concat/axisÎ
notes/Tensordot/concatConcatV2notes/Tensordot/free:output:0notes/Tensordot/axes:output:0$notes/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/concat¤
notes/Tensordot/stackPacknotes/Tensordot/Prod:output:0notes/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/stack¸
notes/Tensordot/transpose	Transposedropout_3/dropout/Mul_1:z:0notes/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
notes/Tensordot/transpose·
notes/Tensordot/ReshapeReshapenotes/Tensordot/transpose:y:0notes/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
notes/Tensordot/Reshape¶
notes/Tensordot/MatMulMatMul notes/Tensordot/Reshape:output:0&notes/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
notes/Tensordot/MatMul|
notes/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_2
notes/Tensordot/Const_2
notes/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
notes/Tensordot/concat_1/axisÛ
notes/Tensordot/concat_1ConcatV2!notes/Tensordot/GatherV2:output:0 notes/Tensordot/Const_2:output:0&notes/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
notes/Tensordot/concat_1¨
notes/TensordotReshape notes/Tensordot/MatMul:product:0!notes/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
notes/Tensordot
notes/BiasAdd/ReadVariableOpReadVariableOp%notes_biasadd_readvariableop_resource*
_output_shapes
:_*
dtype02
notes/BiasAdd/ReadVariableOp
notes/BiasAddBiasAddnotes/Tensordot:output:0$notes/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
notes/BiasAddÔ
IdentityIdentitynotes/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^gru_2/AssignVariableOp^gru_2/ReadVariableOp(^gru_2/gru_cell_2/BiasAdd/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp"^gru_2/gru_cell_2/ReadVariableOp_1$^gru_2/gru_cell_2/mul/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp^gru_2/while^gru_3/AssignVariableOp^gru_3/ReadVariableOp(^gru_3/gru_cell_3/BiasAdd/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp"^gru_3/gru_cell_3/ReadVariableOp_1$^gru_3/gru_cell_3/mul/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp^gru_3/while^lengths/BiasAdd/ReadVariableOp!^lengths/Tensordot/ReadVariableOp^notes/BiasAdd/ReadVariableOp^notes/Tensordot/ReadVariableOp^times/BiasAdd/ReadVariableOp^times/Tensordot/ReadVariableOp^vels/BiasAdd/ReadVariableOp^vels/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity×

Identity_1Identityvels/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^gru_2/AssignVariableOp^gru_2/ReadVariableOp(^gru_2/gru_cell_2/BiasAdd/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp"^gru_2/gru_cell_2/ReadVariableOp_1$^gru_2/gru_cell_2/mul/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp^gru_2/while^gru_3/AssignVariableOp^gru_3/ReadVariableOp(^gru_3/gru_cell_3/BiasAdd/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp"^gru_3/gru_cell_3/ReadVariableOp_1$^gru_3/gru_cell_3/mul/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp^gru_3/while^lengths/BiasAdd/ReadVariableOp!^lengths/Tensordot/ReadVariableOp^notes/BiasAdd/ReadVariableOp^notes/Tensordot/ReadVariableOp^times/BiasAdd/ReadVariableOp^times/Tensordot/ReadVariableOp^vels/BiasAdd/ReadVariableOp^vels/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_1Ù

Identity_2Identitytimes/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^gru_2/AssignVariableOp^gru_2/ReadVariableOp(^gru_2/gru_cell_2/BiasAdd/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp"^gru_2/gru_cell_2/ReadVariableOp_1$^gru_2/gru_cell_2/mul/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp^gru_2/while^gru_3/AssignVariableOp^gru_3/ReadVariableOp(^gru_3/gru_cell_3/BiasAdd/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp"^gru_3/gru_cell_3/ReadVariableOp_1$^gru_3/gru_cell_3/mul/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp^gru_3/while^lengths/BiasAdd/ReadVariableOp!^lengths/Tensordot/ReadVariableOp^notes/BiasAdd/ReadVariableOp^notes/Tensordot/ReadVariableOp^times/BiasAdd/ReadVariableOp^times/Tensordot/ReadVariableOp^vels/BiasAdd/ReadVariableOp^vels/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2Û

Identity_3Identitylengths/BiasAdd:output:0^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^gru_2/AssignVariableOp^gru_2/ReadVariableOp(^gru_2/gru_cell_2/BiasAdd/ReadVariableOp'^gru_2/gru_cell_2/MatMul/ReadVariableOp)^gru_2/gru_cell_2/MatMul_1/ReadVariableOp ^gru_2/gru_cell_2/ReadVariableOp"^gru_2/gru_cell_2/ReadVariableOp_1$^gru_2/gru_cell_2/mul/ReadVariableOp&^gru_2/gru_cell_2/mul_1/ReadVariableOp^gru_2/while^gru_3/AssignVariableOp^gru_3/ReadVariableOp(^gru_3/gru_cell_3/BiasAdd/ReadVariableOp'^gru_3/gru_cell_3/MatMul/ReadVariableOp)^gru_3/gru_cell_3/MatMul_1/ReadVariableOp ^gru_3/gru_cell_3/ReadVariableOp"^gru_3/gru_cell_3/ReadVariableOp_1$^gru_3/gru_cell_3/mul/ReadVariableOp&^gru_3/gru_cell_3/mul_1/ReadVariableOp^gru_3/while^lengths/BiasAdd/ReadVariableOp!^lengths/Tensordot/ReadVariableOp^notes/BiasAdd/ReadVariableOp^notes/Tensordot/ReadVariableOp^times/BiasAdd/ReadVariableOp^times/Tensordot/ReadVariableOp^vels/BiasAdd/ReadVariableOp^vels/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp20
gru_2/AssignVariableOpgru_2/AssignVariableOp2,
gru_2/ReadVariableOpgru_2/ReadVariableOp2R
'gru_2/gru_cell_2/BiasAdd/ReadVariableOp'gru_2/gru_cell_2/BiasAdd/ReadVariableOp2P
&gru_2/gru_cell_2/MatMul/ReadVariableOp&gru_2/gru_cell_2/MatMul/ReadVariableOp2T
(gru_2/gru_cell_2/MatMul_1/ReadVariableOp(gru_2/gru_cell_2/MatMul_1/ReadVariableOp2B
gru_2/gru_cell_2/ReadVariableOpgru_2/gru_cell_2/ReadVariableOp2F
!gru_2/gru_cell_2/ReadVariableOp_1!gru_2/gru_cell_2/ReadVariableOp_12J
#gru_2/gru_cell_2/mul/ReadVariableOp#gru_2/gru_cell_2/mul/ReadVariableOp2N
%gru_2/gru_cell_2/mul_1/ReadVariableOp%gru_2/gru_cell_2/mul_1/ReadVariableOp2
gru_2/whilegru_2/while20
gru_3/AssignVariableOpgru_3/AssignVariableOp2,
gru_3/ReadVariableOpgru_3/ReadVariableOp2R
'gru_3/gru_cell_3/BiasAdd/ReadVariableOp'gru_3/gru_cell_3/BiasAdd/ReadVariableOp2P
&gru_3/gru_cell_3/MatMul/ReadVariableOp&gru_3/gru_cell_3/MatMul/ReadVariableOp2T
(gru_3/gru_cell_3/MatMul_1/ReadVariableOp(gru_3/gru_cell_3/MatMul_1/ReadVariableOp2B
gru_3/gru_cell_3/ReadVariableOpgru_3/gru_cell_3/ReadVariableOp2F
!gru_3/gru_cell_3/ReadVariableOp_1!gru_3/gru_cell_3/ReadVariableOp_12J
#gru_3/gru_cell_3/mul/ReadVariableOp#gru_3/gru_cell_3/mul/ReadVariableOp2N
%gru_3/gru_cell_3/mul_1/ReadVariableOp%gru_3/gru_cell_3/mul_1/ReadVariableOp2
gru_3/whilegru_3/while2@
lengths/BiasAdd/ReadVariableOplengths/BiasAdd/ReadVariableOp2D
 lengths/Tensordot/ReadVariableOp lengths/Tensordot/ReadVariableOp2<
notes/BiasAdd/ReadVariableOpnotes/BiasAdd/ReadVariableOp2@
notes/Tensordot/ReadVariableOpnotes/Tensordot/ReadVariableOp2<
times/BiasAdd/ReadVariableOptimes/BiasAdd/ReadVariableOp2@
times/Tensordot/ReadVariableOptimes/Tensordot/ReadVariableOp2:
vels/BiasAdd/ReadVariableOpvels/BiasAdd/ReadVariableOp2>
vels/Tensordot/ReadVariableOpvels/Tensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Êf
å
@__inference_gru_3_layer_call_and_return_conditional_losses_10419

inputs=
)gru_cell_3_matmul_readvariableop_resource:
9
*gru_cell_3_biasadd_readvariableop_resource:	6
"gru_cell_3_readvariableop_resource:
>
+gru_cell_3_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_3/BiasAdd/ReadVariableOp¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢gru_cell_3/ReadVariableOp_1¢gru_cell_3/mul/ReadVariableOp¢gru_cell_3/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp
gru_cell_3/MatMulMatMulstrided_slice_1:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul®
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp¥
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/BiasAdd
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split/split_dimÀ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_3/split
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2À
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_sliceµ
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp­
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_3/Const
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split_1/split_dimí
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_3/split_1
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid_1«
gru_cell_3/mul/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_3/mul/ReadVariableOp
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0%gru_cell_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp_1
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2Ì
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1
gru_cell_3/MatMul_2MatMulgru_cell_3/mul:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_2
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Tanh¯
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_3/mul_1/ReadVariableOp
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_1i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_3/sub/x
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_3/sub~
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_2
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_10323*
condR
while_cond_10322*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12>
gru_cell_3/mul/ReadVariableOpgru_cell_3/mul/ReadVariableOp2B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
ú
@__inference_times_layer_call_and_return_conditional_losses_10502

inputs5
!tensordot_readvariableop_resource:
æ.
biasadd_readvariableop_resource:	æ
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
æ*
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
Tensordot/GatherV2/axisÑ
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
Tensordot/GatherV2_1/axis×
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:æ2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:æ*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í	
×
*__inference_gru_cell_3_layer_call_fn_14493

inputs
states_0
unknown:

	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_94962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:	2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs:IE

_output_shapes
:	
"
_user_specified_name
states/0
±	
×
*__inference_gru_cell_3_layer_call_fn_14635

inputs
states_0
unknown:

	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
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
GPU2 *0J 8 *N
fIRG
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_146242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
á
£
while_cond_12658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_12658___redundant_placeholder03
/while_while_cond_12658___redundant_placeholder13
/while_while_cond_12658___redundant_placeholder23
/while_while_cond_12658___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
à(
è
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14429

inputs
states_02
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slicej
MatMul_1MatMulstates_0strided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1T
mulMulSigmoid_1:y:0states_0*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
TanhV
mul_1MulSigmoid:y:0states_0*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ª
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity®

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	
 
_user_specified_nameinputs:IE

_output_shapes
:	
"
_user_specified_name
states/0
Êf
å
@__inference_gru_2_layer_call_and_return_conditional_losses_11059

inputs=
)gru_cell_2_matmul_readvariableop_resource:
9
*gru_cell_2_biasadd_readvariableop_resource:	6
"gru_cell_2_readvariableop_resource:
>
+gru_cell_2_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_2/BiasAdd/ReadVariableOp¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢gru_cell_2/ReadVariableOp_1¢gru_cell_2/mul/ReadVariableOp¢gru_cell_2/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp
gru_cell_2/MatMulMatMulstrided_slice_1:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul®
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp¥
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/BiasAdd
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split/split_dimÀ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_2/split
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2À
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_sliceµ
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp­
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_2/Const
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split_1/split_dimí
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid_1«
gru_cell_2/mul/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/mul/ReadVariableOp
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0%gru_cell_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp_1
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2Ì
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1
gru_cell_2/MatMul_2MatMulgru_cell_2/mul:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_2
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Tanh¯
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_2/mul_1/ReadVariableOp
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_2/sub~
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_10963*
condR
while_cond_10962*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12>
gru_cell_2/mul/ReadVariableOpgru_cell_2/mul/ReadVariableOp2B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü

while_cond_9059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_9059___redundant_placeholder02
.while_while_cond_9059___redundant_placeholder12
.while_while_cond_9059___redundant_placeholder22
.while_while_cond_9059___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
ÓN
±
!__inference__traced_restore_14971
file_prefix3
assignvariableop_dense_1_kernel:
.
assignvariableop_1_dense_1_bias:	2
assignvariableop_2_notes_kernel:	_+
assignvariableop_3_notes_bias:_1
assignvariableop_4_vels_kernel:	}*
assignvariableop_5_vels_bias:}3
assignvariableop_6_times_kernel:
æ,
assignvariableop_7_times_bias:	æ5
!assignvariableop_8_lengths_kernel:
¬.
assignvariableop_9_lengths_bias:	¬?
+assignvariableop_10_gru_2_gru_cell_2_kernel:
I
5assignvariableop_11_gru_2_gru_cell_2_recurrent_kernel:
8
)assignvariableop_12_gru_2_gru_cell_2_bias:	?
+assignvariableop_13_gru_3_gru_cell_3_kernel:
I
5assignvariableop_14_gru_3_gru_cell_3_recurrent_kernel:
8
)assignvariableop_15_gru_3_gru_cell_3_bias:	5
"assignvariableop_16_gru_2_variable:	5
"assignvariableop_17_gru_3_variable:	
identity_19¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Å
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ñ
valueÇBÄB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-1/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-2/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names´
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*9
value0B.B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*`
_output_shapesN
L:::::::::::::::::::*!
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¤
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¤
AssignVariableOp_2AssignVariableOpassignvariableop_2_notes_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¢
AssignVariableOp_3AssignVariableOpassignvariableop_3_notes_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_vels_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¡
AssignVariableOp_5AssignVariableOpassignvariableop_5_vels_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¤
AssignVariableOp_6AssignVariableOpassignvariableop_6_times_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¢
AssignVariableOp_7AssignVariableOpassignvariableop_7_times_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¦
AssignVariableOp_8AssignVariableOp!assignvariableop_8_lengths_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¤
AssignVariableOp_9AssignVariableOpassignvariableop_9_lengths_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10³
AssignVariableOp_10AssignVariableOp+assignvariableop_10_gru_2_gru_cell_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11½
AssignVariableOp_11AssignVariableOp5assignvariableop_11_gru_2_gru_cell_2_recurrent_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12±
AssignVariableOp_12AssignVariableOp)assignvariableop_12_gru_2_gru_cell_2_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13³
AssignVariableOp_13AssignVariableOp+assignvariableop_13_gru_3_gru_cell_3_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14½
AssignVariableOp_14AssignVariableOp5assignvariableop_14_gru_3_gru_cell_3_recurrent_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_gru_3_gru_cell_3_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16ª
AssignVariableOp_16AssignVariableOp"assignvariableop_16_gru_2_variableIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17ª
AssignVariableOp_17AssignVariableOp"assignvariableop_17_gru_3_variableIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_179
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpê
Identity_18Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_18Ý
Identity_19IdentityIdentity_18:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_19"#
identity_19Identity_19:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172(
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
Êf
å
@__inference_gru_3_layer_call_and_return_conditional_losses_10870

inputs=
)gru_cell_3_matmul_readvariableop_resource:
9
*gru_cell_3_biasadd_readvariableop_resource:	6
"gru_cell_3_readvariableop_resource:
>
+gru_cell_3_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_3/BiasAdd/ReadVariableOp¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢gru_cell_3/ReadVariableOp_1¢gru_cell_3/mul/ReadVariableOp¢gru_cell_3/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp
gru_cell_3/MatMulMatMulstrided_slice_1:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul®
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp¥
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/BiasAdd
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split/split_dimÀ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_3/split
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2À
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_sliceµ
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp­
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_3/Const
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split_1/split_dimí
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_3/split_1
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid_1«
gru_cell_3/mul/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_3/mul/ReadVariableOp
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0%gru_cell_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp_1
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2Ì
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1
gru_cell_3/MatMul_2MatMulgru_cell_3/mul:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_2
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Tanh¯
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_3/mul_1/ReadVariableOp
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_1i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_3/sub/x
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_3/sub~
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_2
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_10774*
condR
while_cond_10773*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12>
gru_cell_3/mul/ReadVariableOpgru_cell_3/mul/ReadVariableOp2B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·-
¬
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14560

inputs

states2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slices
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim£
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
	Sigmoid_1i
mul/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2BatchMatMulV2mul:z:0strided_slice_1:output:0*
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
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpc
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_2P
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:2
add_3é
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identityí

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
©

$__inference_vels_layer_call_fn_14023

inputs
unknown:	}
	unknown_0:}
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *H
fCRA
?__inference_vels_layer_call_and_return_conditional_losses_105382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à(
è
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14731

inputs
states_02
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slicej
MatMul_1MatMulstates_0strided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1T
mulMulSigmoid_1:y:0states_0*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
TanhV
mul_1MulSigmoid:y:0states_0*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ª
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity®

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	
 
_user_specified_nameinputs:IE

_output_shapes
:	
"
_user_specified_name
states/0
á
£
while_cond_13362
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_13362___redundant_placeholder03
/while_while_cond_13362___redundant_placeholder13
/while_while_cond_13362___redundant_placeholder23
/while_while_cond_13362___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
ïT

while_body_13852
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	>
*while_gru_cell_3_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
?
0while_gru_cell_3_biasadd_readvariableop_resource:	<
(while_gru_cell_3_readvariableop_resource:
¢'while/gru_cell_3/BiasAdd/ReadVariableOp¢&while/gru_cell_3/MatMul/ReadVariableOp¢while/gru_cell_3/ReadVariableOp¢!while/gru_cell_3/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOpÈ
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMulÂ
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp½
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/BiasAdd
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_3/split/split_dimØ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_3/split¯
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_3/ReadVariableOp
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack¡
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1¡
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2ä
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice¨
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_1
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_3/Const
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_3/split_1/split_dim
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_3/split_1£
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid§
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_3/add_1
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid_1
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul³
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_3/ReadVariableOp_1¡
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack¥
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1¥
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2ð
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1¯
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_2©
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Tanh
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_1u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_3/sub/x
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/sub
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_2
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
Ðf
ç
@__inference_gru_3_layer_call_and_return_conditional_losses_13459
inputs_0=
)gru_cell_3_matmul_readvariableop_resource:
9
*gru_cell_3_biasadd_readvariableop_resource:	6
"gru_cell_3_readvariableop_resource:
>
+gru_cell_3_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_3/BiasAdd/ReadVariableOp¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢gru_cell_3/ReadVariableOp_1¢gru_cell_3/mul/ReadVariableOp¢gru_cell_3/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm}
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp
gru_cell_3/MatMulMatMulstrided_slice_1:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul®
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp¥
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/BiasAdd
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split/split_dimÀ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_3/split
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2À
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_sliceµ
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp­
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_3/Const
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split_1/split_dimí
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_3/split_1
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid_1«
gru_cell_3/mul/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_3/mul/ReadVariableOp
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0%gru_cell_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp_1
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2Ì
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1
gru_cell_3/MatMul_2MatMulgru_cell_3/mul:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_2
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Tanh¯
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_3/mul_1/ReadVariableOp
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_1i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_3/sub/x
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_3/sub~
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_2
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13363*
condR
while_cond_13362*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12>
gru_cell_3/mul/ReadVariableOpgru_cell_3/mul/ReadVariableOp2B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2
whilewhile:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
³

'__inference_lengths_layer_call_fn_14101

inputs
unknown:
¬
	unknown_0:	¬
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_lengths_layer_call_and_return_conditional_losses_104662
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
4
½
?__inference_gru_3_layer_call_and_return_conditional_losses_9539

inputs"
gru_cell_3_9414:	#
gru_cell_3_9416:

gru_cell_3_9418:	#
gru_cell_3_9420:

identity¢AssignVariableOp¢ReadVariableOp¢"gru_cell_3/StatefulPartitionedCall¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1Ù
"gru_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0gru_cell_3_9414gru_cell_3_9416gru_cell_3_9418gru_cell_3_9420*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_94132$
"gru_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
ReadVariableOpReadVariableOpgru_cell_3_9414*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÐ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_3_9416gru_cell_3_9418gru_cell_3_9420*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_9429*
condR
while_cond_9428*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime²
AssignVariableOpAssignVariableOpgru_cell_3_9414while:output:4^ReadVariableOp#^gru_cell_3/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOp¹
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp#^gru_cell_3/StatefulPartitionedCall^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2H
"gru_cell_3/StatefulPartitionedCall"gru_cell_3/StatefulPartitionedCall2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

b
D__inference_dropout_3_layer_call_and_return_conditional_losses_10434

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

'__inference_dense_1_layer_call_fn_12482

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_100722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

gru_2_while_cond_12102(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2(
$gru_2_while_less_gru_2_strided_slice?
;gru_2_while_gru_2_while_cond_12102___redundant_placeholder0?
;gru_2_while_gru_2_while_cond_12102___redundant_placeholder1?
;gru_2_while_gru_2_while_cond_12102___redundant_placeholder2?
;gru_2_while_gru_2_while_cond_12102___redundant_placeholder3
gru_2_while_identity

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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
Õ
E
)__inference_dropout_2_layer_call_fn_12518

inputs
identityÌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_100832
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À.
º
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_9692

inputs
states:	2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slicez
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
MatMul_1/ReadVariableOp
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1p
mul/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
mul/ReadVariableOpf
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
Tanht
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
mul_1/ReadVariableOpj
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ð
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:	2

Identityô

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:	: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
÷!

while_body_9752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_3_9774_0:
&
while_gru_cell_3_9776_0:	+
while_gru_cell_3_9778_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_3_9774:
$
while_gru_cell_3_9776:	)
while_gru_cell_3_9778:
¢(while/gru_cell_3/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
(while/gru_cell_3/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_3_9774_0while_gru_cell_3_9776_0while_gru_cell_3_9778_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_96142*
(while/gru_cell_3/StatefulPartitionedCallõ
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¸
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3¸
while/Identity_4Identity1while/gru_cell_3/StatefulPartitionedCall:output:1)^while/gru_cell_3/StatefulPartitionedCall*
T0*
_output_shapes
:	2
while/Identity_4"0
while_gru_cell_3_9774while_gru_cell_3_9774_0"0
while_gru_cell_3_9776while_gru_cell_3_9776_0"0
while_gru_cell_3_9778while_gru_cell_3_9778_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2T
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
:	:

_output_shapes
: :

_output_shapes
: 
á
£
while_cond_13147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_13147___redundant_placeholder03
/while_while_cond_13147___redundant_placeholder13
/while_while_cond_13147___redundant_placeholder23
/while_while_cond_13147___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
õ_
Ñ	
gru_3_while_body_12262(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2%
!gru_3_while_gru_3_strided_slice_0c
_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0K
7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0:
G
8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0:	D
0gru_3_while_gru_cell_3_readvariableop_resource_0:

gru_3_while_identity
gru_3_while_identity_1
gru_3_while_identity_2
gru_3_while_identity_3
gru_3_while_identity_4#
gru_3_while_gru_3_strided_slicea
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensorI
5gru_3_while_gru_cell_3_matmul_readvariableop_resource:
E
6gru_3_while_gru_cell_3_biasadd_readvariableop_resource:	B
.gru_3_while_gru_cell_3_readvariableop_resource:
¢-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp¢,gru_3/while/gru_cell_3/MatMul/ReadVariableOp¢%gru_3/while/gru_cell_3/ReadVariableOp¢'gru_3/while/gru_cell_3/ReadVariableOp_1Ï
=gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeï
/gru_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0gru_3_while_placeholderFgru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype021
/gru_3/while/TensorArrayV2Read/TensorListGetItemÖ
,gru_3/while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02.
,gru_3/while/gru_cell_3/MatMul/ReadVariableOpà
gru_3/while/gru_cell_3/MatMulMatMul6gru_3/while/TensorArrayV2Read/TensorListGetItem:item:04gru_3/while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/MatMulÔ
-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02/
-gru_3/while/gru_cell_3/BiasAdd/ReadVariableOpÕ
gru_3/while/gru_cell_3/BiasAddBiasAdd'gru_3/while/gru_cell_3/MatMul:product:05gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2 
gru_3/while/gru_cell_3/BiasAdd
&gru_3/while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&gru_3/while/gru_cell_3/split/split_dimð
gru_3/while/gru_cell_3/splitSplit/gru_3/while/gru_cell_3/split/split_dim:output:0'gru_3/while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_3/while/gru_cell_3/splitÁ
%gru_3/while/gru_cell_3/ReadVariableOpReadVariableOp0gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02'
%gru_3/while/gru_cell_3/ReadVariableOp©
*gru_3/while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_3/while/gru_cell_3/strided_slice/stack­
,gru_3/while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_3/while/gru_cell_3/strided_slice/stack_1­
,gru_3/while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_3/while/gru_cell_3/strided_slice/stack_2
$gru_3/while/gru_cell_3/strided_sliceStridedSlice-gru_3/while/gru_cell_3/ReadVariableOp:value:03gru_3/while/gru_cell_3/strided_slice/stack:output:05gru_3/while/gru_cell_3/strided_slice/stack_1:output:05gru_3/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2&
$gru_3/while/gru_cell_3/strided_sliceÀ
gru_3/while/gru_cell_3/MatMul_1MatMulgru_3_while_placeholder_2-gru_3/while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2!
gru_3/while/gru_cell_3/MatMul_1
gru_3/while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_3/while/gru_cell_3/Const
(gru_3/while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(gru_3/while/gru_cell_3/split_1/split_dim©
gru_3/while/gru_cell_3/split_1SplitV)gru_3/while/gru_cell_3/MatMul_1:product:0%gru_3/while/gru_cell_3/Const:output:01gru_3/while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2 
gru_3/while/gru_cell_3/split_1»
gru_3/while/gru_cell_3/addAddV2%gru_3/while/gru_cell_3/split:output:0'gru_3/while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/add
gru_3/while/gru_cell_3/SigmoidSigmoidgru_3/while/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2 
gru_3/while/gru_cell_3/Sigmoid¿
gru_3/while/gru_cell_3/add_1AddV2%gru_3/while/gru_cell_3/split:output:1'gru_3/while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/add_1
 gru_3/while/gru_cell_3/Sigmoid_1Sigmoid gru_3/while/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2"
 gru_3/while/gru_cell_3/Sigmoid_1ª
gru_3/while/gru_cell_3/mulMul$gru_3/while/gru_cell_3/Sigmoid_1:y:0gru_3_while_placeholder_2*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/mulÅ
'gru_3/while/gru_cell_3/ReadVariableOp_1ReadVariableOp0gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'gru_3/while/gru_cell_3/ReadVariableOp_1­
,gru_3/while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_3/while/gru_cell_3/strided_slice_1/stack±
.gru_3/while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_3/while/gru_cell_3/strided_slice_1/stack_1±
.gru_3/while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_3/while/gru_cell_3/strided_slice_1/stack_2
&gru_3/while/gru_cell_3/strided_slice_1StridedSlice/gru_3/while/gru_cell_3/ReadVariableOp_1:value:05gru_3/while/gru_cell_3/strided_slice_1/stack:output:07gru_3/while/gru_cell_3/strided_slice_1/stack_1:output:07gru_3/while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2(
&gru_3/while/gru_cell_3/strided_slice_1Ç
gru_3/while/gru_cell_3/MatMul_2MatMulgru_3/while/gru_cell_3/mul:z:0/gru_3/while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2!
gru_3/while/gru_cell_3/MatMul_2Á
gru_3/while/gru_cell_3/add_2AddV2%gru_3/while/gru_cell_3/split:output:2)gru_3/while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/add_2
gru_3/while/gru_cell_3/TanhTanh gru_3/while/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/Tanh¬
gru_3/while/gru_cell_3/mul_1Mul"gru_3/while/gru_cell_3/Sigmoid:y:0gru_3_while_placeholder_2*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/mul_1
gru_3/while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_3/while/gru_cell_3/sub/x´
gru_3/while/gru_cell_3/subSub%gru_3/while/gru_cell_3/sub/x:output:0"gru_3/while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/sub®
gru_3/while/gru_cell_3/mul_2Mulgru_3/while/gru_cell_3/sub:z:0gru_3/while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/mul_2³
gru_3/while/gru_cell_3/add_3AddV2 gru_3/while/gru_cell_3/mul_1:z:0 gru_3/while/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
gru_3/while/gru_cell_3/add_3ü
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
gru_3/while/add/y
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
gru_3/while/add_1/y
gru_3/while/add_1AddV2$gru_3_while_gru_3_while_loop_countergru_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_3/while/add_1¡
gru_3/while/IdentityIdentitygru_3/while/add_1:z:0.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_3/while/Identityº
gru_3/while/Identity_1Identity*gru_3_while_gru_3_while_maximum_iterations.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_3/while/Identity_1£
gru_3/while/Identity_2Identitygru_3/while/add:z:0.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_3/while/Identity_2Ð
gru_3/while/Identity_3Identity@gru_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_3/while/Identity_3¹
gru_3/while/Identity_4Identity gru_3/while/gru_cell_3/add_3:z:0.^gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp-^gru_3/while/gru_cell_3/MatMul/ReadVariableOp&^gru_3/while/gru_cell_3/ReadVariableOp(^gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
:	2
gru_3/while/Identity_4"D
gru_3_while_gru_3_strided_slice!gru_3_while_gru_3_strided_slice_0"r
6gru_3_while_gru_cell_3_biasadd_readvariableop_resource8gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0"p
5gru_3_while_gru_cell_3_matmul_readvariableop_resource7gru_3_while_gru_cell_3_matmul_readvariableop_resource_0"b
.gru_3_while_gru_cell_3_readvariableop_resource0gru_3_while_gru_cell_3_readvariableop_resource_0"5
gru_3_while_identitygru_3/while/Identity:output:0"9
gru_3_while_identity_1gru_3/while/Identity_1:output:0"9
gru_3_while_identity_2gru_3/while/Identity_2:output:0"9
gru_3_while_identity_3gru_3/while/Identity_3:output:0"9
gru_3_while_identity_4gru_3/while/Identity_4:output:0"À
]gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_gru_3_while_tensorarrayv2read_tensorlistgetitem_gru_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2^
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
:	:

_output_shapes
: :

_output_shapes
: 
Õ
E
)__inference_dropout_3_layer_call_fn_13953

inputs
identityÌ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_104342
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ïT

while_body_13148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	>
*while_gru_cell_2_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
?
0while_gru_cell_2_biasadd_readvariableop_resource:	<
(while_gru_cell_2_readvariableop_resource:
¢'while/gru_cell_2/BiasAdd/ReadVariableOp¢&while/gru_cell_2/MatMul/ReadVariableOp¢while/gru_cell_2/ReadVariableOp¢!while/gru_cell_2/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpÈ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMulÂ
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp½
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/BiasAdd
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_2/split/split_dimØ
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_2/split¯
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_2/ReadVariableOp
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack¡
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1¡
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2ä
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice¨
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_1
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_2/Const
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_2/split_1/split_dim
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_2/split_1£
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid§
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid_1
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul³
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_2/ReadVariableOp_1¡
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack¥
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1¥
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2ð
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1¯
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_2©
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_2
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
Ðf
ç
@__inference_gru_2_layer_call_and_return_conditional_losses_12755
inputs_0=
)gru_cell_2_matmul_readvariableop_resource:
9
*gru_cell_2_biasadd_readvariableop_resource:	6
"gru_cell_2_readvariableop_resource:
>
+gru_cell_2_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_2/BiasAdd/ReadVariableOp¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢gru_cell_2/ReadVariableOp_1¢gru_cell_2/mul/ReadVariableOp¢gru_cell_2/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm}
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp
gru_cell_2/MatMulMatMulstrided_slice_1:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul®
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp¥
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/BiasAdd
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split/split_dimÀ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_2/split
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2À
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_sliceµ
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp­
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_2/Const
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split_1/split_dimí
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid_1«
gru_cell_2/mul/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/mul/ReadVariableOp
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0%gru_cell_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp_1
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2Ì
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1
gru_cell_2/MatMul_2MatMulgru_cell_2/mul:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_2
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Tanh¯
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_2/mul_1/ReadVariableOp
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_2/sub~
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_12659*
condR
while_cond_12658*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12>
gru_cell_2/mul/ReadVariableOpgru_cell_2/mul/ReadVariableOp2B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2
whilewhile:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
4
½
?__inference_gru_3_layer_call_and_return_conditional_losses_9816

inputs"
gru_cell_3_9737:	#
gru_cell_3_9739:

gru_cell_3_9741:	#
gru_cell_3_9743:

identity¢AssignVariableOp¢ReadVariableOp¢"gru_cell_3/StatefulPartitionedCall¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1Ù
"gru_cell_3/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0gru_cell_3_9737gru_cell_3_9739gru_cell_3_9741gru_cell_3_9743*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_96922$
"gru_cell_3/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
ReadVariableOpReadVariableOpgru_cell_3_9737*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÐ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_3_9739gru_cell_3_9741gru_cell_3_9743*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_9752*
condR
while_cond_9751*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime²
AssignVariableOpAssignVariableOpgru_cell_3_9737while:output:4^ReadVariableOp#^gru_cell_3/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOp¹
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp#^gru_cell_3/StatefulPartitionedCall^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2H
"gru_cell_3/StatefulPartitionedCall"gru_cell_3/StatefulPartitionedCall2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à(
è
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14777

inputs
states_02
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slicej
MatMul_1MatMulstates_0strided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1T
mulMulSigmoid_1:y:0states_0*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
TanhV
mul_1MulSigmoid:y:0states_0*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ª
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity®

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	
 
_user_specified_nameinputs:IE

_output_shapes
:	
"
_user_specified_name
states/0
ïT

while_body_13689
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	>
*while_gru_cell_3_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
?
0while_gru_cell_3_biasadd_readvariableop_resource:	<
(while_gru_cell_3_readvariableop_resource:
¢'while/gru_cell_3/BiasAdd/ReadVariableOp¢&while/gru_cell_3/MatMul/ReadVariableOp¢while/gru_cell_3/ReadVariableOp¢!while/gru_cell_3/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOpÈ
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMulÂ
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp½
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/BiasAdd
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_3/split/split_dimØ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_3/split¯
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_3/ReadVariableOp
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack¡
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1¡
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2ä
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice¨
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_1
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_3/Const
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_3/split_1/split_dim
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_3/split_1£
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid§
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_3/add_1
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid_1
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul³
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_3/ReadVariableOp_1¡
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack¥
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1¥
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2ð
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1¯
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_2©
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Tanh
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_1u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_3/sub/x
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/sub
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_2
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
·-
¬
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14276

inputs

states2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slices
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim£
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
	Sigmoid_1i
mul/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2BatchMatMulV2mul:z:0strided_slice_1:output:0*
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
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpc
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_2P
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:2
add_3é
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identityí

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
ô

¨
model_1_gru_2_while_cond_82868
4model_1_gru_2_while_model_1_gru_2_while_loop_counter>
:model_1_gru_2_while_model_1_gru_2_while_maximum_iterations#
model_1_gru_2_while_placeholder%
!model_1_gru_2_while_placeholder_1%
!model_1_gru_2_while_placeholder_28
4model_1_gru_2_while_less_model_1_gru_2_strided_sliceN
Jmodel_1_gru_2_while_model_1_gru_2_while_cond_8286___redundant_placeholder0N
Jmodel_1_gru_2_while_model_1_gru_2_while_cond_8286___redundant_placeholder1N
Jmodel_1_gru_2_while_model_1_gru_2_while_cond_8286___redundant_placeholder2N
Jmodel_1_gru_2_while_model_1_gru_2_while_cond_8286___redundant_placeholder3 
model_1_gru_2_while_identity
´
model_1/gru_2/while/LessLessmodel_1_gru_2_while_placeholder4model_1_gru_2_while_less_model_1_gru_2_strided_slice*
T0*
_output_shapes
: 2
model_1/gru_2/while/Less
model_1/gru_2/while/IdentityIdentitymodel_1/gru_2/while/Less:z:0*
T0
*
_output_shapes
: 2
model_1/gru_2/while/Identity"E
model_1_gru_2_while_identity%model_1/gru_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
È6
£
B__inference_model_1_layer_call_and_return_conditional_losses_10584

inputs!
dense_1_10073:

dense_1_10075:	
gru_2_10248:

gru_2_10250:	
gru_2_10252:

gru_2_10254:	
gru_3_10420:

gru_3_10422:	
gru_3_10424:

gru_3_10426:	!
lengths_10467:
¬
lengths_10469:	¬
times_10503:
æ
times_10505:	æ

vels_10539:	}

vels_10541:}
notes_10575:	_
notes_10577:_
identity

identity_1

identity_2

identity_3¢dense_1/StatefulPartitionedCall¢gru_2/StatefulPartitionedCall¢gru_3/StatefulPartitionedCall¢lengths/StatefulPartitionedCall¢notes/StatefulPartitionedCall¢times/StatefulPartitionedCall¢vels/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1_10073dense_1_10075*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_100722!
dense_1/StatefulPartitionedCall
dropout_2/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_100832
dropout_2/PartitionedCallÅ
gru_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0gru_2_10248gru_2_10250gru_2_10252gru_2_10254*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_102472
gru_2/StatefulPartitionedCallÉ
gru_3/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0gru_3_10420gru_3_10422gru_3_10424gru_3_10426*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_3_layer_call_and_return_conditional_losses_104192
gru_3/StatefulPartitionedCall
dropout_3/PartitionedCallPartitionedCall&gru_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_104342
dropout_3/PartitionedCall²
lengths/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0lengths_10467lengths_10469*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_lengths_layer_call_and_return_conditional_losses_104662!
lengths/StatefulPartitionedCall¨
times/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0times_10503times_10505*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_times_layer_call_and_return_conditional_losses_105022
times/StatefulPartitionedCall¢
vels/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0
vels_10539
vels_10541*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *H
fCRA
?__inference_vels_layer_call_and_return_conditional_losses_105382
vels/StatefulPartitionedCall§
notes/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0notes_10575notes_10577*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_notes_layer_call_and_return_conditional_losses_105742
notes/StatefulPartitionedCallá
IdentityIdentity&notes/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identityä

Identity_1Identity%vels/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_1æ

Identity_2Identity&times/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2è

Identity_3Identity(lengths/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall2B
lengths/StatefulPartitionedCalllengths/StatefulPartitionedCall2>
notes/StatefulPartitionedCallnotes/StatefulPartitionedCall2>
times/StatefulPartitionedCalltimes/StatefulPartitionedCall2<
vels/StatefulPartitionedCallvels/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
ø
@__inference_notes_layer_call_and_return_conditional_losses_10574

inputs4
!tensordot_readvariableop_resource:	_-
biasadd_readvariableop_resource:_
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	_*
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
Tensordot/GatherV2/axisÑ
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
Tensordot/GatherV2_1/axis×
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
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
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:_*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
b
)__inference_dropout_2_layer_call_fn_12523

inputs
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_110902
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ò
%__inference_gru_2_layer_call_fn_12592

inputs
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_110592
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
În
È
model_1_gru_3_while_body_84468
4model_1_gru_3_while_model_1_gru_3_while_loop_counter>
:model_1_gru_3_while_model_1_gru_3_while_maximum_iterations#
model_1_gru_3_while_placeholder%
!model_1_gru_3_while_placeholder_1%
!model_1_gru_3_while_placeholder_25
1model_1_gru_3_while_model_1_gru_3_strided_slice_0s
omodel_1_gru_3_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_3_tensorarrayunstack_tensorlistfromtensor_0S
?model_1_gru_3_while_gru_cell_3_matmul_readvariableop_resource_0:
O
@model_1_gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0:	L
8model_1_gru_3_while_gru_cell_3_readvariableop_resource_0:
 
model_1_gru_3_while_identity"
model_1_gru_3_while_identity_1"
model_1_gru_3_while_identity_2"
model_1_gru_3_while_identity_3"
model_1_gru_3_while_identity_43
/model_1_gru_3_while_model_1_gru_3_strided_sliceq
mmodel_1_gru_3_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_3_tensorarrayunstack_tensorlistfromtensorQ
=model_1_gru_3_while_gru_cell_3_matmul_readvariableop_resource:
M
>model_1_gru_3_while_gru_cell_3_biasadd_readvariableop_resource:	J
6model_1_gru_3_while_gru_cell_3_readvariableop_resource:
¢5model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp¢4model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp¢-model_1/gru_3/while/gru_cell_3/ReadVariableOp¢/model_1/gru_3/while/gru_cell_3/ReadVariableOp_1ß
Emodel_1/gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2G
Emodel_1/gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape
7model_1/gru_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemomodel_1_gru_3_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_3_tensorarrayunstack_tensorlistfromtensor_0model_1_gru_3_while_placeholderNmodel_1/gru_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype029
7model_1/gru_3/while/TensorArrayV2Read/TensorListGetItemî
4model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp?model_1_gru_3_while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype026
4model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp
%model_1/gru_3/while/gru_cell_3/MatMulMatMul>model_1/gru_3/while/TensorArrayV2Read/TensorListGetItem:item:0<model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2'
%model_1/gru_3/while/gru_cell_3/MatMulì
5model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp@model_1_gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype027
5model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOpõ
&model_1/gru_3/while/gru_cell_3/BiasAddBiasAdd/model_1/gru_3/while/gru_cell_3/MatMul:product:0=model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2(
&model_1/gru_3/while/gru_cell_3/BiasAdd«
.model_1/gru_3/while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.model_1/gru_3/while/gru_cell_3/split/split_dim
$model_1/gru_3/while/gru_cell_3/splitSplit7model_1/gru_3/while/gru_cell_3/split/split_dim:output:0/model_1/gru_3/while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2&
$model_1/gru_3/while/gru_cell_3/splitÙ
-model_1/gru_3/while/gru_cell_3/ReadVariableOpReadVariableOp8model_1_gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02/
-model_1/gru_3/while/gru_cell_3/ReadVariableOp¹
2model_1/gru_3/while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        24
2model_1/gru_3/while/gru_cell_3/strided_slice/stack½
4model_1/gru_3/while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       26
4model_1/gru_3/while/gru_cell_3/strided_slice/stack_1½
4model_1/gru_3/while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      26
4model_1/gru_3/while/gru_cell_3/strided_slice/stack_2¸
,model_1/gru_3/while/gru_cell_3/strided_sliceStridedSlice5model_1/gru_3/while/gru_cell_3/ReadVariableOp:value:0;model_1/gru_3/while/gru_cell_3/strided_slice/stack:output:0=model_1/gru_3/while/gru_cell_3/strided_slice/stack_1:output:0=model_1/gru_3/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2.
,model_1/gru_3/while/gru_cell_3/strided_sliceà
'model_1/gru_3/while/gru_cell_3/MatMul_1MatMul!model_1_gru_3_while_placeholder_25model_1/gru_3/while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2)
'model_1/gru_3/while/gru_cell_3/MatMul_1¡
$model_1/gru_3/while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2&
$model_1/gru_3/while/gru_cell_3/Const¯
0model_1/gru_3/while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0model_1/gru_3/while/gru_cell_3/split_1/split_dimÑ
&model_1/gru_3/while/gru_cell_3/split_1SplitV1model_1/gru_3/while/gru_cell_3/MatMul_1:product:0-model_1/gru_3/while/gru_cell_3/Const:output:09model_1/gru_3/while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2(
&model_1/gru_3/while/gru_cell_3/split_1Û
"model_1/gru_3/while/gru_cell_3/addAddV2-model_1/gru_3/while/gru_cell_3/split:output:0/model_1/gru_3/while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2$
"model_1/gru_3/while/gru_cell_3/add­
&model_1/gru_3/while/gru_cell_3/SigmoidSigmoid&model_1/gru_3/while/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2(
&model_1/gru_3/while/gru_cell_3/Sigmoidß
$model_1/gru_3/while/gru_cell_3/add_1AddV2-model_1/gru_3/while/gru_cell_3/split:output:1/model_1/gru_3/while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2&
$model_1/gru_3/while/gru_cell_3/add_1³
(model_1/gru_3/while/gru_cell_3/Sigmoid_1Sigmoid(model_1/gru_3/while/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2*
(model_1/gru_3/while/gru_cell_3/Sigmoid_1Ê
"model_1/gru_3/while/gru_cell_3/mulMul,model_1/gru_3/while/gru_cell_3/Sigmoid_1:y:0!model_1_gru_3_while_placeholder_2*
T0*
_output_shapes
:	2$
"model_1/gru_3/while/gru_cell_3/mulÝ
/model_1/gru_3/while/gru_cell_3/ReadVariableOp_1ReadVariableOp8model_1_gru_3_while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype021
/model_1/gru_3/while/gru_cell_3/ReadVariableOp_1½
4model_1/gru_3/while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       26
4model_1/gru_3/while/gru_cell_3/strided_slice_1/stackÁ
6model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        28
6model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_1Á
6model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_2Ä
.model_1/gru_3/while/gru_cell_3/strided_slice_1StridedSlice7model_1/gru_3/while/gru_cell_3/ReadVariableOp_1:value:0=model_1/gru_3/while/gru_cell_3/strided_slice_1/stack:output:0?model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_1:output:0?model_1/gru_3/while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask20
.model_1/gru_3/while/gru_cell_3/strided_slice_1ç
'model_1/gru_3/while/gru_cell_3/MatMul_2MatMul&model_1/gru_3/while/gru_cell_3/mul:z:07model_1/gru_3/while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2)
'model_1/gru_3/while/gru_cell_3/MatMul_2á
$model_1/gru_3/while/gru_cell_3/add_2AddV2-model_1/gru_3/while/gru_cell_3/split:output:21model_1/gru_3/while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2&
$model_1/gru_3/while/gru_cell_3/add_2¦
#model_1/gru_3/while/gru_cell_3/TanhTanh(model_1/gru_3/while/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2%
#model_1/gru_3/while/gru_cell_3/TanhÌ
$model_1/gru_3/while/gru_cell_3/mul_1Mul*model_1/gru_3/while/gru_cell_3/Sigmoid:y:0!model_1_gru_3_while_placeholder_2*
T0*
_output_shapes
:	2&
$model_1/gru_3/while/gru_cell_3/mul_1
$model_1/gru_3/while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$model_1/gru_3/while/gru_cell_3/sub/xÔ
"model_1/gru_3/while/gru_cell_3/subSub-model_1/gru_3/while/gru_cell_3/sub/x:output:0*model_1/gru_3/while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2$
"model_1/gru_3/while/gru_cell_3/subÎ
$model_1/gru_3/while/gru_cell_3/mul_2Mul&model_1/gru_3/while/gru_cell_3/sub:z:0'model_1/gru_3/while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2&
$model_1/gru_3/while/gru_cell_3/mul_2Ó
$model_1/gru_3/while/gru_cell_3/add_3AddV2(model_1/gru_3/while/gru_cell_3/mul_1:z:0(model_1/gru_3/while/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2&
$model_1/gru_3/while/gru_cell_3/add_3¤
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
model_1/gru_3/while/add/y¡
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
model_1/gru_3/while/add_1/y¼
model_1/gru_3/while/add_1AddV24model_1_gru_3_while_model_1_gru_3_while_loop_counter$model_1/gru_3/while/add_1/y:output:0*
T0*
_output_shapes
: 2
model_1/gru_3/while/add_1Ù
model_1/gru_3/while/IdentityIdentitymodel_1/gru_3/while/add_1:z:06^model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp5^model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp.^model_1/gru_3/while/gru_cell_3/ReadVariableOp0^model_1/gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
model_1/gru_3/while/Identityú
model_1/gru_3/while/Identity_1Identity:model_1_gru_3_while_model_1_gru_3_while_maximum_iterations6^model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp5^model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp.^model_1/gru_3/while/gru_cell_3/ReadVariableOp0^model_1/gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2 
model_1/gru_3/while/Identity_1Û
model_1/gru_3/while/Identity_2Identitymodel_1/gru_3/while/add:z:06^model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp5^model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp.^model_1/gru_3/while/gru_cell_3/ReadVariableOp0^model_1/gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2 
model_1/gru_3/while/Identity_2
model_1/gru_3/while/Identity_3IdentityHmodel_1/gru_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:06^model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp5^model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp.^model_1/gru_3/while/gru_cell_3/ReadVariableOp0^model_1/gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2 
model_1/gru_3/while/Identity_3ñ
model_1/gru_3/while/Identity_4Identity(model_1/gru_3/while/gru_cell_3/add_3:z:06^model_1/gru_3/while/gru_cell_3/BiasAdd/ReadVariableOp5^model_1/gru_3/while/gru_cell_3/MatMul/ReadVariableOp.^model_1/gru_3/while/gru_cell_3/ReadVariableOp0^model_1/gru_3/while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
:	2 
model_1/gru_3/while/Identity_4"
>model_1_gru_3_while_gru_cell_3_biasadd_readvariableop_resource@model_1_gru_3_while_gru_cell_3_biasadd_readvariableop_resource_0"
=model_1_gru_3_while_gru_cell_3_matmul_readvariableop_resource?model_1_gru_3_while_gru_cell_3_matmul_readvariableop_resource_0"r
6model_1_gru_3_while_gru_cell_3_readvariableop_resource8model_1_gru_3_while_gru_cell_3_readvariableop_resource_0"E
model_1_gru_3_while_identity%model_1/gru_3/while/Identity:output:0"I
model_1_gru_3_while_identity_1'model_1/gru_3/while/Identity_1:output:0"I
model_1_gru_3_while_identity_2'model_1/gru_3/while/Identity_2:output:0"I
model_1_gru_3_while_identity_3'model_1/gru_3/while/Identity_3:output:0"I
model_1_gru_3_while_identity_4'model_1/gru_3/while/Identity_4:output:0"d
/model_1_gru_3_while_model_1_gru_3_strided_slice1model_1_gru_3_while_model_1_gru_3_strided_slice_0"à
mmodel_1_gru_3_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_3_tensorarrayunstack_tensorlistfromtensoromodel_1_gru_3_while_tensorarrayv2read_tensorlistgetitem_model_1_gru_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2n
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
:	:

_output_shapes
: :

_output_shapes
: 
Á-
®
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14479

inputs
states_02
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_sliceu
MatMul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim£
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
	Sigmoid_1k
mul/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2BatchMatMulV2mul:z:0strided_slice_1:output:0*
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
mul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpc
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_2P
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:2
add_3é
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identityí

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
á
£
while_cond_10322
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_10322___redundant_placeholder03
/while_while_cond_10322___redundant_placeholder13
/while_while_cond_10322___redundant_placeholder23
/while_while_cond_10322___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
ùî
ª
__inference__wrapped_model_8650
input_2E
1model_1_dense_1_tensordot_readvariableop_resource:
>
/model_1_dense_1_biasadd_readvariableop_resource:	K
7model_1_gru_2_gru_cell_2_matmul_readvariableop_resource:
G
8model_1_gru_2_gru_cell_2_biasadd_readvariableop_resource:	D
0model_1_gru_2_gru_cell_2_readvariableop_resource:
L
9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resource:	K
7model_1_gru_3_gru_cell_3_matmul_readvariableop_resource:
G
8model_1_gru_3_gru_cell_3_biasadd_readvariableop_resource:	D
0model_1_gru_3_gru_cell_3_readvariableop_resource:
L
9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resource:	E
1model_1_lengths_tensordot_readvariableop_resource:
¬>
/model_1_lengths_biasadd_readvariableop_resource:	¬C
/model_1_times_tensordot_readvariableop_resource:
æ<
-model_1_times_biasadd_readvariableop_resource:	æA
.model_1_vels_tensordot_readvariableop_resource:	}:
,model_1_vels_biasadd_readvariableop_resource:}B
/model_1_notes_tensordot_readvariableop_resource:	_;
-model_1_notes_biasadd_readvariableop_resource:_
identity

identity_1

identity_2

identity_3¢&model_1/dense_1/BiasAdd/ReadVariableOp¢(model_1/dense_1/Tensordot/ReadVariableOp¢model_1/gru_2/AssignVariableOp¢model_1/gru_2/ReadVariableOp¢/model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp¢.model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp¢0model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp¢'model_1/gru_2/gru_cell_2/ReadVariableOp¢)model_1/gru_2/gru_cell_2/ReadVariableOp_1¢+model_1/gru_2/gru_cell_2/mul/ReadVariableOp¢-model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp¢model_1/gru_2/while¢model_1/gru_3/AssignVariableOp¢model_1/gru_3/ReadVariableOp¢/model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp¢.model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp¢0model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp¢'model_1/gru_3/gru_cell_3/ReadVariableOp¢)model_1/gru_3/gru_cell_3/ReadVariableOp_1¢+model_1/gru_3/gru_cell_3/mul/ReadVariableOp¢-model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp¢model_1/gru_3/while¢&model_1/lengths/BiasAdd/ReadVariableOp¢(model_1/lengths/Tensordot/ReadVariableOp¢$model_1/notes/BiasAdd/ReadVariableOp¢&model_1/notes/Tensordot/ReadVariableOp¢$model_1/times/BiasAdd/ReadVariableOp¢&model_1/times/Tensordot/ReadVariableOp¢#model_1/vels/BiasAdd/ReadVariableOp¢%model_1/vels/Tensordot/ReadVariableOpÈ
(model_1/dense_1/Tensordot/ReadVariableOpReadVariableOp1model_1_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(model_1/dense_1/Tensordot/ReadVariableOp
model_1/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2 
model_1/dense_1/Tensordot/axes
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
model_1/dense_1/Tensordot/Shape
'model_1/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/dense_1/Tensordot/GatherV2/axis¡
"model_1/dense_1/Tensordot/GatherV2GatherV2(model_1/dense_1/Tensordot/Shape:output:0'model_1/dense_1/Tensordot/free:output:00model_1/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/dense_1/Tensordot/GatherV2
)model_1/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_1/dense_1/Tensordot/GatherV2_1/axis§
$model_1/dense_1/Tensordot/GatherV2_1GatherV2(model_1/dense_1/Tensordot/Shape:output:0'model_1/dense_1/Tensordot/axes:output:02model_1/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_1/dense_1/Tensordot/GatherV2_1
model_1/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/dense_1/Tensordot/ConstÀ
model_1/dense_1/Tensordot/ProdProd+model_1/dense_1/Tensordot/GatherV2:output:0(model_1/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: 2 
model_1/dense_1/Tensordot/Prod
!model_1/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/dense_1/Tensordot/Const_1È
 model_1/dense_1/Tensordot/Prod_1Prod-model_1/dense_1/Tensordot/GatherV2_1:output:0*model_1/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2"
 model_1/dense_1/Tensordot/Prod_1
%model_1/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/dense_1/Tensordot/concat/axis
 model_1/dense_1/Tensordot/concatConcatV2'model_1/dense_1/Tensordot/free:output:0'model_1/dense_1/Tensordot/axes:output:0.model_1/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/dense_1/Tensordot/concatÌ
model_1/dense_1/Tensordot/stackPack'model_1/dense_1/Tensordot/Prod:output:0)model_1/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2!
model_1/dense_1/Tensordot/stackÂ
#model_1/dense_1/Tensordot/transpose	Transposeinput_2)model_1/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#model_1/dense_1/Tensordot/transposeß
!model_1/dense_1/Tensordot/ReshapeReshape'model_1/dense_1/Tensordot/transpose:y:0(model_1/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2#
!model_1/dense_1/Tensordot/Reshapeß
 model_1/dense_1/Tensordot/MatMulMatMul*model_1/dense_1/Tensordot/Reshape:output:00model_1/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model_1/dense_1/Tensordot/MatMul
!model_1/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2#
!model_1/dense_1/Tensordot/Const_2
'model_1/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/dense_1/Tensordot/concat_1/axis
"model_1/dense_1/Tensordot/concat_1ConcatV2+model_1/dense_1/Tensordot/GatherV2:output:0*model_1/dense_1/Tensordot/Const_2:output:00model_1/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_1/dense_1/Tensordot/concat_1Ñ
model_1/dense_1/TensordotReshape*model_1/dense_1/Tensordot/MatMul:product:0+model_1/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1/dense_1/Tensordot½
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02(
&model_1/dense_1/BiasAdd/ReadVariableOpÈ
model_1/dense_1/BiasAddBiasAdd"model_1/dense_1/Tensordot:output:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1/dense_1/BiasAdd
model_1/dense_1/TanhTanh model_1/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1/dense_1/Tanh
model_1/dropout_2/IdentityIdentitymodel_1/dense_1/Tanh:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1/dropout_2/Identity
model_1/gru_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
model_1/gru_2/transpose/permÂ
model_1/gru_2/transpose	Transpose#model_1/dropout_2/Identity:output:0%model_1/gru_2/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1/gru_2/transposeu
model_1/gru_2/ShapeShapemodel_1/gru_2/transpose:y:0*
T0*
_output_shapes
:2
model_1/gru_2/Shape
!model_1/gru_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/gru_2/strided_slice/stack
#model_1/gru_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_1/gru_2/strided_slice/stack_1
#model_1/gru_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_1/gru_2/strided_slice/stack_2¶
model_1/gru_2/strided_sliceStridedSlicemodel_1/gru_2/Shape:output:0*model_1/gru_2/strided_slice/stack:output:0,model_1/gru_2/strided_slice/stack_1:output:0,model_1/gru_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_1/gru_2/strided_slice¡
)model_1/gru_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)model_1/gru_2/TensorArrayV2/element_shapeè
model_1/gru_2/TensorArrayV2TensorListReserve2model_1/gru_2/TensorArrayV2/element_shape:output:0$model_1/gru_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model_1/gru_2/TensorArrayV2Û
Cmodel_1/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cmodel_1/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape°
5model_1/gru_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_1/gru_2/transpose:y:0Lmodel_1/gru_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5model_1/gru_2/TensorArrayUnstack/TensorListFromTensor
#model_1/gru_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#model_1/gru_2/strided_slice_1/stack
%model_1/gru_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_2/strided_slice_1/stack_1
%model_1/gru_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_2/strided_slice_1/stack_2È
model_1/gru_2/strided_slice_1StridedSlicemodel_1/gru_2/transpose:y:0,model_1/gru_2/strided_slice_1/stack:output:0.model_1/gru_2/strided_slice_1/stack_1:output:0.model_1/gru_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
model_1/gru_2/strided_slice_1Ú
.model_1/gru_2/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7model_1_gru_2_gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype020
.model_1/gru_2/gru_cell_2/MatMul/ReadVariableOpÖ
model_1/gru_2/gru_cell_2/MatMulMatMul&model_1/gru_2/strided_slice_1:output:06model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2!
model_1/gru_2/gru_cell_2/MatMulØ
/model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp8model_1_gru_2_gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype021
/model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOpÝ
 model_1/gru_2/gru_cell_2/BiasAddBiasAdd)model_1/gru_2/gru_cell_2/MatMul:product:07model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 model_1/gru_2/gru_cell_2/BiasAdd
(model_1/gru_2/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(model_1/gru_2/gru_cell_2/split/split_dimø
model_1/gru_2/gru_cell_2/splitSplit1model_1/gru_2/gru_cell_2/split/split_dim:output:0)model_1/gru_2/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2 
model_1/gru_2/gru_cell_2/splitÅ
'model_1/gru_2/gru_cell_2/ReadVariableOpReadVariableOp0model_1_gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02)
'model_1/gru_2/gru_cell_2/ReadVariableOp­
,model_1/gru_2/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,model_1/gru_2/gru_cell_2/strided_slice/stack±
.model_1/gru_2/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       20
.model_1/gru_2/gru_cell_2/strided_slice/stack_1±
.model_1/gru_2/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.model_1/gru_2/gru_cell_2/strided_slice/stack_2
&model_1/gru_2/gru_cell_2/strided_sliceStridedSlice/model_1/gru_2/gru_cell_2/ReadVariableOp:value:05model_1/gru_2/gru_cell_2/strided_slice/stack:output:07model_1/gru_2/gru_cell_2/strided_slice/stack_1:output:07model_1/gru_2/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2(
&model_1/gru_2/gru_cell_2/strided_sliceß
0model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype022
0model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOpå
!model_1/gru_2/gru_cell_2/MatMul_1MatMul8model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp:value:0/model_1/gru_2/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2#
!model_1/gru_2/gru_cell_2/MatMul_1
model_1/gru_2/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2 
model_1/gru_2/gru_cell_2/Const£
*model_1/gru_2/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*model_1/gru_2/gru_cell_2/split_1/split_dim³
 model_1/gru_2/gru_cell_2/split_1SplitV+model_1/gru_2/gru_cell_2/MatMul_1:product:0'model_1/gru_2/gru_cell_2/Const:output:03model_1/gru_2/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2"
 model_1/gru_2/gru_cell_2/split_1Ã
model_1/gru_2/gru_cell_2/addAddV2'model_1/gru_2/gru_cell_2/split:output:0)model_1/gru_2/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
model_1/gru_2/gru_cell_2/add
 model_1/gru_2/gru_cell_2/SigmoidSigmoid model_1/gru_2/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2"
 model_1/gru_2/gru_cell_2/SigmoidÇ
model_1/gru_2/gru_cell_2/add_1AddV2'model_1/gru_2/gru_cell_2/split:output:1)model_1/gru_2/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2 
model_1/gru_2/gru_cell_2/add_1¡
"model_1/gru_2/gru_cell_2/Sigmoid_1Sigmoid"model_1/gru_2/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2$
"model_1/gru_2/gru_cell_2/Sigmoid_1Õ
+model_1/gru_2/gru_cell_2/mul/ReadVariableOpReadVariableOp9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02-
+model_1/gru_2/gru_cell_2/mul/ReadVariableOpÊ
model_1/gru_2/gru_cell_2/mulMul&model_1/gru_2/gru_cell_2/Sigmoid_1:y:03model_1/gru_2/gru_cell_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
model_1/gru_2/gru_cell_2/mulÉ
)model_1/gru_2/gru_cell_2/ReadVariableOp_1ReadVariableOp0model_1_gru_2_gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02+
)model_1/gru_2/gru_cell_2/ReadVariableOp_1±
.model_1/gru_2/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.model_1/gru_2/gru_cell_2/strided_slice_1/stackµ
0model_1/gru_2/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0model_1/gru_2/gru_cell_2/strided_slice_1/stack_1µ
0model_1/gru_2/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0model_1/gru_2/gru_cell_2/strided_slice_1/stack_2 
(model_1/gru_2/gru_cell_2/strided_slice_1StridedSlice1model_1/gru_2/gru_cell_2/ReadVariableOp_1:value:07model_1/gru_2/gru_cell_2/strided_slice_1/stack:output:09model_1/gru_2/gru_cell_2/strided_slice_1/stack_1:output:09model_1/gru_2/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2*
(model_1/gru_2/gru_cell_2/strided_slice_1Ï
!model_1/gru_2/gru_cell_2/MatMul_2MatMul model_1/gru_2/gru_cell_2/mul:z:01model_1/gru_2/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2#
!model_1/gru_2/gru_cell_2/MatMul_2É
model_1/gru_2/gru_cell_2/add_2AddV2'model_1/gru_2/gru_cell_2/split:output:2+model_1/gru_2/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2 
model_1/gru_2/gru_cell_2/add_2
model_1/gru_2/gru_cell_2/TanhTanh"model_1/gru_2/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
model_1/gru_2/gru_cell_2/TanhÙ
-model_1/gru_2/gru_cell_2/mul_1/ReadVariableOpReadVariableOp9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02/
-model_1/gru_2/gru_cell_2/mul_1/ReadVariableOpÎ
model_1/gru_2/gru_cell_2/mul_1Mul$model_1/gru_2/gru_cell_2/Sigmoid:y:05model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2 
model_1/gru_2/gru_cell_2/mul_1
model_1/gru_2/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
model_1/gru_2/gru_cell_2/sub/x¼
model_1/gru_2/gru_cell_2/subSub'model_1/gru_2/gru_cell_2/sub/x:output:0$model_1/gru_2/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
model_1/gru_2/gru_cell_2/sub¶
model_1/gru_2/gru_cell_2/mul_2Mul model_1/gru_2/gru_cell_2/sub:z:0!model_1/gru_2/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2 
model_1/gru_2/gru_cell_2/mul_2»
model_1/gru_2/gru_cell_2/add_3AddV2"model_1/gru_2/gru_cell_2/mul_1:z:0"model_1/gru_2/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2 
model_1/gru_2/gru_cell_2/add_3«
+model_1/gru_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2-
+model_1/gru_2/TensorArrayV2_1/element_shapeî
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
model_1/gru_2/time·
model_1/gru_2/ReadVariableOpReadVariableOp9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
model_1/gru_2/ReadVariableOp
&model_1/gru_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&model_1/gru_2/while/maximum_iterations
 model_1/gru_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 model_1/gru_2/while/loop_counterÜ
model_1/gru_2/whileWhile)model_1/gru_2/while/loop_counter:output:0/model_1/gru_2/while/maximum_iterations:output:0model_1/gru_2/time:output:0&model_1/gru_2/TensorArrayV2_1:handle:0$model_1/gru_2/ReadVariableOp:value:0$model_1/gru_2/strided_slice:output:0Emodel_1/gru_2/TensorArrayUnstack/TensorListFromTensor:output_handle:07model_1_gru_2_gru_cell_2_matmul_readvariableop_resource8model_1_gru_2_gru_cell_2_biasadd_readvariableop_resource0model_1_gru_2_gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*)
body!R
model_1_gru_2_while_body_8287*)
cond!R
model_1_gru_2_while_cond_8286*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
model_1/gru_2/whileÑ
>model_1/gru_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2@
>model_1/gru_2/TensorArrayV2Stack/TensorListStack/element_shape¡
0model_1/gru_2/TensorArrayV2Stack/TensorListStackTensorListStackmodel_1/gru_2/while:output:3Gmodel_1/gru_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0model_1/gru_2/TensorArrayV2Stack/TensorListStack
#model_1/gru_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2%
#model_1/gru_2/strided_slice_2/stack
%model_1/gru_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%model_1/gru_2/strided_slice_2/stack_1
%model_1/gru_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_2/strided_slice_2/stack_2æ
model_1/gru_2/strided_slice_2StridedSlice9model_1/gru_2/TensorArrayV2Stack/TensorListStack:tensor:0,model_1/gru_2/strided_slice_2/stack:output:0.model_1/gru_2/strided_slice_2/stack_1:output:0.model_1/gru_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
model_1/gru_2/strided_slice_2
model_1/gru_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
model_1/gru_2/transpose_1/permÞ
model_1/gru_2/transpose_1	Transpose9model_1/gru_2/TensorArrayV2Stack/TensorListStack:tensor:0'model_1/gru_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1/gru_2/transpose_1
model_1/gru_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_1/gru_2/runtime
model_1/gru_2/AssignVariableOpAssignVariableOp9model_1_gru_2_gru_cell_2_matmul_1_readvariableop_resourcemodel_1/gru_2/while:output:4^model_1/gru_2/ReadVariableOp1^model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp,^model_1/gru_2/gru_cell_2/mul/ReadVariableOp.^model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02 
model_1/gru_2/AssignVariableOp
model_1/gru_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
model_1/gru_3/transpose/perm¼
model_1/gru_3/transpose	Transposemodel_1/gru_2/transpose_1:y:0%model_1/gru_3/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1/gru_3/transposeu
model_1/gru_3/ShapeShapemodel_1/gru_3/transpose:y:0*
T0*
_output_shapes
:2
model_1/gru_3/Shape
!model_1/gru_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/gru_3/strided_slice/stack
#model_1/gru_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_1/gru_3/strided_slice/stack_1
#model_1/gru_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#model_1/gru_3/strided_slice/stack_2¶
model_1/gru_3/strided_sliceStridedSlicemodel_1/gru_3/Shape:output:0*model_1/gru_3/strided_slice/stack:output:0,model_1/gru_3/strided_slice/stack_1:output:0,model_1/gru_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
model_1/gru_3/strided_slice¡
)model_1/gru_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2+
)model_1/gru_3/TensorArrayV2/element_shapeè
model_1/gru_3/TensorArrayV2TensorListReserve2model_1/gru_3/TensorArrayV2/element_shape:output:0$model_1/gru_3/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
model_1/gru_3/TensorArrayV2Û
Cmodel_1/gru_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cmodel_1/gru_3/TensorArrayUnstack/TensorListFromTensor/element_shape°
5model_1/gru_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensormodel_1/gru_3/transpose:y:0Lmodel_1/gru_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type027
5model_1/gru_3/TensorArrayUnstack/TensorListFromTensor
#model_1/gru_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#model_1/gru_3/strided_slice_1/stack
%model_1/gru_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_3/strided_slice_1/stack_1
%model_1/gru_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_3/strided_slice_1/stack_2È
model_1/gru_3/strided_slice_1StridedSlicemodel_1/gru_3/transpose:y:0,model_1/gru_3/strided_slice_1/stack:output:0.model_1/gru_3/strided_slice_1/stack_1:output:0.model_1/gru_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
model_1/gru_3/strided_slice_1Ú
.model_1/gru_3/gru_cell_3/MatMul/ReadVariableOpReadVariableOp7model_1_gru_3_gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype020
.model_1/gru_3/gru_cell_3/MatMul/ReadVariableOpÖ
model_1/gru_3/gru_cell_3/MatMulMatMul&model_1/gru_3/strided_slice_1:output:06model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2!
model_1/gru_3/gru_cell_3/MatMulØ
/model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp8model_1_gru_3_gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype021
/model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOpÝ
 model_1/gru_3/gru_cell_3/BiasAddBiasAdd)model_1/gru_3/gru_cell_3/MatMul:product:07model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 model_1/gru_3/gru_cell_3/BiasAdd
(model_1/gru_3/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(model_1/gru_3/gru_cell_3/split/split_dimø
model_1/gru_3/gru_cell_3/splitSplit1model_1/gru_3/gru_cell_3/split/split_dim:output:0)model_1/gru_3/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2 
model_1/gru_3/gru_cell_3/splitÅ
'model_1/gru_3/gru_cell_3/ReadVariableOpReadVariableOp0model_1_gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02)
'model_1/gru_3/gru_cell_3/ReadVariableOp­
,model_1/gru_3/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,model_1/gru_3/gru_cell_3/strided_slice/stack±
.model_1/gru_3/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       20
.model_1/gru_3/gru_cell_3/strided_slice/stack_1±
.model_1/gru_3/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.model_1/gru_3/gru_cell_3/strided_slice/stack_2
&model_1/gru_3/gru_cell_3/strided_sliceStridedSlice/model_1/gru_3/gru_cell_3/ReadVariableOp:value:05model_1/gru_3/gru_cell_3/strided_slice/stack:output:07model_1/gru_3/gru_cell_3/strided_slice/stack_1:output:07model_1/gru_3/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2(
&model_1/gru_3/gru_cell_3/strided_sliceß
0model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype022
0model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOpå
!model_1/gru_3/gru_cell_3/MatMul_1MatMul8model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp:value:0/model_1/gru_3/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2#
!model_1/gru_3/gru_cell_3/MatMul_1
model_1/gru_3/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2 
model_1/gru_3/gru_cell_3/Const£
*model_1/gru_3/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*model_1/gru_3/gru_cell_3/split_1/split_dim³
 model_1/gru_3/gru_cell_3/split_1SplitV+model_1/gru_3/gru_cell_3/MatMul_1:product:0'model_1/gru_3/gru_cell_3/Const:output:03model_1/gru_3/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2"
 model_1/gru_3/gru_cell_3/split_1Ã
model_1/gru_3/gru_cell_3/addAddV2'model_1/gru_3/gru_cell_3/split:output:0)model_1/gru_3/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
model_1/gru_3/gru_cell_3/add
 model_1/gru_3/gru_cell_3/SigmoidSigmoid model_1/gru_3/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2"
 model_1/gru_3/gru_cell_3/SigmoidÇ
model_1/gru_3/gru_cell_3/add_1AddV2'model_1/gru_3/gru_cell_3/split:output:1)model_1/gru_3/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2 
model_1/gru_3/gru_cell_3/add_1¡
"model_1/gru_3/gru_cell_3/Sigmoid_1Sigmoid"model_1/gru_3/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2$
"model_1/gru_3/gru_cell_3/Sigmoid_1Õ
+model_1/gru_3/gru_cell_3/mul/ReadVariableOpReadVariableOp9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02-
+model_1/gru_3/gru_cell_3/mul/ReadVariableOpÊ
model_1/gru_3/gru_cell_3/mulMul&model_1/gru_3/gru_cell_3/Sigmoid_1:y:03model_1/gru_3/gru_cell_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
model_1/gru_3/gru_cell_3/mulÉ
)model_1/gru_3/gru_cell_3/ReadVariableOp_1ReadVariableOp0model_1_gru_3_gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02+
)model_1/gru_3/gru_cell_3/ReadVariableOp_1±
.model_1/gru_3/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       20
.model_1/gru_3/gru_cell_3/strided_slice_1/stackµ
0model_1/gru_3/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0model_1/gru_3/gru_cell_3/strided_slice_1/stack_1µ
0model_1/gru_3/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0model_1/gru_3/gru_cell_3/strided_slice_1/stack_2 
(model_1/gru_3/gru_cell_3/strided_slice_1StridedSlice1model_1/gru_3/gru_cell_3/ReadVariableOp_1:value:07model_1/gru_3/gru_cell_3/strided_slice_1/stack:output:09model_1/gru_3/gru_cell_3/strided_slice_1/stack_1:output:09model_1/gru_3/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2*
(model_1/gru_3/gru_cell_3/strided_slice_1Ï
!model_1/gru_3/gru_cell_3/MatMul_2MatMul model_1/gru_3/gru_cell_3/mul:z:01model_1/gru_3/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2#
!model_1/gru_3/gru_cell_3/MatMul_2É
model_1/gru_3/gru_cell_3/add_2AddV2'model_1/gru_3/gru_cell_3/split:output:2+model_1/gru_3/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2 
model_1/gru_3/gru_cell_3/add_2
model_1/gru_3/gru_cell_3/TanhTanh"model_1/gru_3/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
model_1/gru_3/gru_cell_3/TanhÙ
-model_1/gru_3/gru_cell_3/mul_1/ReadVariableOpReadVariableOp9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02/
-model_1/gru_3/gru_cell_3/mul_1/ReadVariableOpÎ
model_1/gru_3/gru_cell_3/mul_1Mul$model_1/gru_3/gru_cell_3/Sigmoid:y:05model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2 
model_1/gru_3/gru_cell_3/mul_1
model_1/gru_3/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
model_1/gru_3/gru_cell_3/sub/x¼
model_1/gru_3/gru_cell_3/subSub'model_1/gru_3/gru_cell_3/sub/x:output:0$model_1/gru_3/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
model_1/gru_3/gru_cell_3/sub¶
model_1/gru_3/gru_cell_3/mul_2Mul model_1/gru_3/gru_cell_3/sub:z:0!model_1/gru_3/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2 
model_1/gru_3/gru_cell_3/mul_2»
model_1/gru_3/gru_cell_3/add_3AddV2"model_1/gru_3/gru_cell_3/mul_1:z:0"model_1/gru_3/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2 
model_1/gru_3/gru_cell_3/add_3«
+model_1/gru_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2-
+model_1/gru_3/TensorArrayV2_1/element_shapeî
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
model_1/gru_3/time·
model_1/gru_3/ReadVariableOpReadVariableOp9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
model_1/gru_3/ReadVariableOp
&model_1/gru_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&model_1/gru_3/while/maximum_iterations
 model_1/gru_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2"
 model_1/gru_3/while/loop_counterÜ
model_1/gru_3/whileWhile)model_1/gru_3/while/loop_counter:output:0/model_1/gru_3/while/maximum_iterations:output:0model_1/gru_3/time:output:0&model_1/gru_3/TensorArrayV2_1:handle:0$model_1/gru_3/ReadVariableOp:value:0$model_1/gru_3/strided_slice:output:0Emodel_1/gru_3/TensorArrayUnstack/TensorListFromTensor:output_handle:07model_1_gru_3_gru_cell_3_matmul_readvariableop_resource8model_1_gru_3_gru_cell_3_biasadd_readvariableop_resource0model_1_gru_3_gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*)
body!R
model_1_gru_3_while_body_8446*)
cond!R
model_1_gru_3_while_cond_8445*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
model_1/gru_3/whileÑ
>model_1/gru_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2@
>model_1/gru_3/TensorArrayV2Stack/TensorListStack/element_shape¡
0model_1/gru_3/TensorArrayV2Stack/TensorListStackTensorListStackmodel_1/gru_3/while:output:3Gmodel_1/gru_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0model_1/gru_3/TensorArrayV2Stack/TensorListStack
#model_1/gru_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2%
#model_1/gru_3/strided_slice_2/stack
%model_1/gru_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2'
%model_1/gru_3/strided_slice_2/stack_1
%model_1/gru_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%model_1/gru_3/strided_slice_2/stack_2æ
model_1/gru_3/strided_slice_2StridedSlice9model_1/gru_3/TensorArrayV2Stack/TensorListStack:tensor:0,model_1/gru_3/strided_slice_2/stack:output:0.model_1/gru_3/strided_slice_2/stack_1:output:0.model_1/gru_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
model_1/gru_3/strided_slice_2
model_1/gru_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2 
model_1/gru_3/transpose_1/permÞ
model_1/gru_3/transpose_1	Transpose9model_1/gru_3/TensorArrayV2Stack/TensorListStack:tensor:0'model_1/gru_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1/gru_3/transpose_1
model_1/gru_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
model_1/gru_3/runtime
model_1/gru_3/AssignVariableOpAssignVariableOp9model_1_gru_3_gru_cell_3_matmul_1_readvariableop_resourcemodel_1/gru_3/while:output:4^model_1/gru_3/ReadVariableOp1^model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp,^model_1/gru_3/gru_cell_3/mul/ReadVariableOp.^model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02 
model_1/gru_3/AssignVariableOp
model_1/dropout_3/IdentityIdentitymodel_1/gru_3/transpose_1:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_1/dropout_3/IdentityÈ
(model_1/lengths/Tensordot/ReadVariableOpReadVariableOp1model_1_lengths_tensordot_readvariableop_resource* 
_output_shapes
:
¬*
dtype02*
(model_1/lengths/Tensordot/ReadVariableOp
model_1/lengths/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2 
model_1/lengths/Tensordot/axes
model_1/lengths/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2 
model_1/lengths/Tensordot/free
model_1/lengths/Tensordot/ShapeShape#model_1/dropout_3/Identity:output:0*
T0*
_output_shapes
:2!
model_1/lengths/Tensordot/Shape
'model_1/lengths/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/lengths/Tensordot/GatherV2/axis¡
"model_1/lengths/Tensordot/GatherV2GatherV2(model_1/lengths/Tensordot/Shape:output:0'model_1/lengths/Tensordot/free:output:00model_1/lengths/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/lengths/Tensordot/GatherV2
)model_1/lengths/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2+
)model_1/lengths/Tensordot/GatherV2_1/axis§
$model_1/lengths/Tensordot/GatherV2_1GatherV2(model_1/lengths/Tensordot/Shape:output:0'model_1/lengths/Tensordot/axes:output:02model_1/lengths/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2&
$model_1/lengths/Tensordot/GatherV2_1
model_1/lengths/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/lengths/Tensordot/ConstÀ
model_1/lengths/Tensordot/ProdProd+model_1/lengths/Tensordot/GatherV2:output:0(model_1/lengths/Tensordot/Const:output:0*
T0*
_output_shapes
: 2 
model_1/lengths/Tensordot/Prod
!model_1/lengths/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2#
!model_1/lengths/Tensordot/Const_1È
 model_1/lengths/Tensordot/Prod_1Prod-model_1/lengths/Tensordot/GatherV2_1:output:0*model_1/lengths/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2"
 model_1/lengths/Tensordot/Prod_1
%model_1/lengths/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/lengths/Tensordot/concat/axis
 model_1/lengths/Tensordot/concatConcatV2'model_1/lengths/Tensordot/free:output:0'model_1/lengths/Tensordot/axes:output:0.model_1/lengths/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/lengths/Tensordot/concatÌ
model_1/lengths/Tensordot/stackPack'model_1/lengths/Tensordot/Prod:output:0)model_1/lengths/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2!
model_1/lengths/Tensordot/stackÞ
#model_1/lengths/Tensordot/transpose	Transpose#model_1/dropout_3/Identity:output:0)model_1/lengths/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#model_1/lengths/Tensordot/transposeß
!model_1/lengths/Tensordot/ReshapeReshape'model_1/lengths/Tensordot/transpose:y:0(model_1/lengths/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2#
!model_1/lengths/Tensordot/Reshapeß
 model_1/lengths/Tensordot/MatMulMatMul*model_1/lengths/Tensordot/Reshape:output:00model_1/lengths/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 model_1/lengths/Tensordot/MatMul
!model_1/lengths/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:¬2#
!model_1/lengths/Tensordot/Const_2
'model_1/lengths/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/lengths/Tensordot/concat_1/axis
"model_1/lengths/Tensordot/concat_1ConcatV2+model_1/lengths/Tensordot/GatherV2:output:0*model_1/lengths/Tensordot/Const_2:output:00model_1/lengths/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2$
"model_1/lengths/Tensordot/concat_1Ñ
model_1/lengths/TensordotReshape*model_1/lengths/Tensordot/MatMul:product:0+model_1/lengths/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
model_1/lengths/Tensordot½
&model_1/lengths/BiasAdd/ReadVariableOpReadVariableOp/model_1_lengths_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02(
&model_1/lengths/BiasAdd/ReadVariableOpÈ
model_1/lengths/BiasAddBiasAdd"model_1/lengths/Tensordot:output:0.model_1/lengths/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
model_1/lengths/BiasAddÂ
&model_1/times/Tensordot/ReadVariableOpReadVariableOp/model_1_times_tensordot_readvariableop_resource* 
_output_shapes
:
æ*
dtype02(
&model_1/times/Tensordot/ReadVariableOp
model_1/times/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
model_1/times/Tensordot/axes
model_1/times/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
model_1/times/Tensordot/free
model_1/times/Tensordot/ShapeShape#model_1/dropout_3/Identity:output:0*
T0*
_output_shapes
:2
model_1/times/Tensordot/Shape
%model_1/times/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/times/Tensordot/GatherV2/axis
 model_1/times/Tensordot/GatherV2GatherV2&model_1/times/Tensordot/Shape:output:0%model_1/times/Tensordot/free:output:0.model_1/times/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2"
 model_1/times/Tensordot/GatherV2
'model_1/times/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/times/Tensordot/GatherV2_1/axis
"model_1/times/Tensordot/GatherV2_1GatherV2&model_1/times/Tensordot/Shape:output:0%model_1/times/Tensordot/axes:output:00model_1/times/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/times/Tensordot/GatherV2_1
model_1/times/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
model_1/times/Tensordot/Const¸
model_1/times/Tensordot/ProdProd)model_1/times/Tensordot/GatherV2:output:0&model_1/times/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
model_1/times/Tensordot/Prod
model_1/times/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/times/Tensordot/Const_1À
model_1/times/Tensordot/Prod_1Prod+model_1/times/Tensordot/GatherV2_1:output:0(model_1/times/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2 
model_1/times/Tensordot/Prod_1
#model_1/times/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#model_1/times/Tensordot/concat/axisö
model_1/times/Tensordot/concatConcatV2%model_1/times/Tensordot/free:output:0%model_1/times/Tensordot/axes:output:0,model_1/times/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
model_1/times/Tensordot/concatÄ
model_1/times/Tensordot/stackPack%model_1/times/Tensordot/Prod:output:0'model_1/times/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
model_1/times/Tensordot/stackØ
!model_1/times/Tensordot/transpose	Transpose#model_1/dropout_3/Identity:output:0'model_1/times/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!model_1/times/Tensordot/transpose×
model_1/times/Tensordot/ReshapeReshape%model_1/times/Tensordot/transpose:y:0&model_1/times/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
model_1/times/Tensordot/Reshape×
model_1/times/Tensordot/MatMulMatMul(model_1/times/Tensordot/Reshape:output:0.model_1/times/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2 
model_1/times/Tensordot/MatMul
model_1/times/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:æ2!
model_1/times/Tensordot/Const_2
%model_1/times/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/times/Tensordot/concat_1/axis
 model_1/times/Tensordot/concat_1ConcatV2)model_1/times/Tensordot/GatherV2:output:0(model_1/times/Tensordot/Const_2:output:0.model_1/times/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/times/Tensordot/concat_1É
model_1/times/TensordotReshape(model_1/times/Tensordot/MatMul:product:0)model_1/times/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
model_1/times/Tensordot·
$model_1/times/BiasAdd/ReadVariableOpReadVariableOp-model_1_times_biasadd_readvariableop_resource*
_output_shapes	
:æ*
dtype02&
$model_1/times/BiasAdd/ReadVariableOpÀ
model_1/times/BiasAddBiasAdd model_1/times/Tensordot:output:0,model_1/times/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
model_1/times/BiasAdd¾
%model_1/vels/Tensordot/ReadVariableOpReadVariableOp.model_1_vels_tensordot_readvariableop_resource*
_output_shapes
:	}*
dtype02'
%model_1/vels/Tensordot/ReadVariableOp
model_1/vels/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
model_1/vels/Tensordot/axes
model_1/vels/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
model_1/vels/Tensordot/free
model_1/vels/Tensordot/ShapeShape#model_1/dropout_3/Identity:output:0*
T0*
_output_shapes
:2
model_1/vels/Tensordot/Shape
$model_1/vels/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_1/vels/Tensordot/GatherV2/axis
model_1/vels/Tensordot/GatherV2GatherV2%model_1/vels/Tensordot/Shape:output:0$model_1/vels/Tensordot/free:output:0-model_1/vels/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2!
model_1/vels/Tensordot/GatherV2
&model_1/vels/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2(
&model_1/vels/Tensordot/GatherV2_1/axis
!model_1/vels/Tensordot/GatherV2_1GatherV2%model_1/vels/Tensordot/Shape:output:0$model_1/vels/Tensordot/axes:output:0/model_1/vels/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2#
!model_1/vels/Tensordot/GatherV2_1
model_1/vels/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
model_1/vels/Tensordot/Const´
model_1/vels/Tensordot/ProdProd(model_1/vels/Tensordot/GatherV2:output:0%model_1/vels/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
model_1/vels/Tensordot/Prod
model_1/vels/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
model_1/vels/Tensordot/Const_1¼
model_1/vels/Tensordot/Prod_1Prod*model_1/vels/Tensordot/GatherV2_1:output:0'model_1/vels/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
model_1/vels/Tensordot/Prod_1
"model_1/vels/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"model_1/vels/Tensordot/concat/axisñ
model_1/vels/Tensordot/concatConcatV2$model_1/vels/Tensordot/free:output:0$model_1/vels/Tensordot/axes:output:0+model_1/vels/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
model_1/vels/Tensordot/concatÀ
model_1/vels/Tensordot/stackPack$model_1/vels/Tensordot/Prod:output:0&model_1/vels/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
model_1/vels/Tensordot/stackÕ
 model_1/vels/Tensordot/transpose	Transpose#model_1/dropout_3/Identity:output:0&model_1/vels/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 model_1/vels/Tensordot/transposeÓ
model_1/vels/Tensordot/ReshapeReshape$model_1/vels/Tensordot/transpose:y:0%model_1/vels/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2 
model_1/vels/Tensordot/ReshapeÒ
model_1/vels/Tensordot/MatMulMatMul'model_1/vels/Tensordot/Reshape:output:0-model_1/vels/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
model_1/vels/Tensordot/MatMul
model_1/vels/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:}2 
model_1/vels/Tensordot/Const_2
$model_1/vels/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model_1/vels/Tensordot/concat_1/axisþ
model_1/vels/Tensordot/concat_1ConcatV2(model_1/vels/Tensordot/GatherV2:output:0'model_1/vels/Tensordot/Const_2:output:0-model_1/vels/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2!
model_1/vels/Tensordot/concat_1Ä
model_1/vels/TensordotReshape'model_1/vels/Tensordot/MatMul:product:0(model_1/vels/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
model_1/vels/Tensordot³
#model_1/vels/BiasAdd/ReadVariableOpReadVariableOp,model_1_vels_biasadd_readvariableop_resource*
_output_shapes
:}*
dtype02%
#model_1/vels/BiasAdd/ReadVariableOp»
model_1/vels/BiasAddBiasAddmodel_1/vels/Tensordot:output:0+model_1/vels/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2
model_1/vels/BiasAddÁ
&model_1/notes/Tensordot/ReadVariableOpReadVariableOp/model_1_notes_tensordot_readvariableop_resource*
_output_shapes
:	_*
dtype02(
&model_1/notes/Tensordot/ReadVariableOp
model_1/notes/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
model_1/notes/Tensordot/axes
model_1/notes/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
model_1/notes/Tensordot/free
model_1/notes/Tensordot/ShapeShape#model_1/dropout_3/Identity:output:0*
T0*
_output_shapes
:2
model_1/notes/Tensordot/Shape
%model_1/notes/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/notes/Tensordot/GatherV2/axis
 model_1/notes/Tensordot/GatherV2GatherV2&model_1/notes/Tensordot/Shape:output:0%model_1/notes/Tensordot/free:output:0.model_1/notes/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2"
 model_1/notes/Tensordot/GatherV2
'model_1/notes/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_1/notes/Tensordot/GatherV2_1/axis
"model_1/notes/Tensordot/GatherV2_1GatherV2&model_1/notes/Tensordot/Shape:output:0%model_1/notes/Tensordot/axes:output:00model_1/notes/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2$
"model_1/notes/Tensordot/GatherV2_1
model_1/notes/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
model_1/notes/Tensordot/Const¸
model_1/notes/Tensordot/ProdProd)model_1/notes/Tensordot/GatherV2:output:0&model_1/notes/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
model_1/notes/Tensordot/Prod
model_1/notes/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
model_1/notes/Tensordot/Const_1À
model_1/notes/Tensordot/Prod_1Prod+model_1/notes/Tensordot/GatherV2_1:output:0(model_1/notes/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2 
model_1/notes/Tensordot/Prod_1
#model_1/notes/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#model_1/notes/Tensordot/concat/axisö
model_1/notes/Tensordot/concatConcatV2%model_1/notes/Tensordot/free:output:0%model_1/notes/Tensordot/axes:output:0,model_1/notes/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
model_1/notes/Tensordot/concatÄ
model_1/notes/Tensordot/stackPack%model_1/notes/Tensordot/Prod:output:0'model_1/notes/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
model_1/notes/Tensordot/stackØ
!model_1/notes/Tensordot/transpose	Transpose#model_1/dropout_3/Identity:output:0'model_1/notes/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!model_1/notes/Tensordot/transpose×
model_1/notes/Tensordot/ReshapeReshape%model_1/notes/Tensordot/transpose:y:0&model_1/notes/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2!
model_1/notes/Tensordot/ReshapeÖ
model_1/notes/Tensordot/MatMulMatMul(model_1/notes/Tensordot/Reshape:output:0.model_1/notes/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2 
model_1/notes/Tensordot/MatMul
model_1/notes/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:_2!
model_1/notes/Tensordot/Const_2
%model_1/notes/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model_1/notes/Tensordot/concat_1/axis
 model_1/notes/Tensordot/concat_1ConcatV2)model_1/notes/Tensordot/GatherV2:output:0(model_1/notes/Tensordot/Const_2:output:0.model_1/notes/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2"
 model_1/notes/Tensordot/concat_1È
model_1/notes/TensordotReshape(model_1/notes/Tensordot/MatMul:product:0)model_1/notes/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
model_1/notes/Tensordot¶
$model_1/notes/BiasAdd/ReadVariableOpReadVariableOp-model_1_notes_biasadd_readvariableop_resource*
_output_shapes
:_*
dtype02&
$model_1/notes/BiasAdd/ReadVariableOp¿
model_1/notes/BiasAddBiasAdd model_1/notes/Tensordot:output:0,model_1/notes/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2
model_1/notes/BiasAddÏ

IdentityIdentity model_1/lengths/BiasAdd:output:0'^model_1/dense_1/BiasAdd/ReadVariableOp)^model_1/dense_1/Tensordot/ReadVariableOp^model_1/gru_2/AssignVariableOp^model_1/gru_2/ReadVariableOp0^model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp/^model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp1^model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp(^model_1/gru_2/gru_cell_2/ReadVariableOp*^model_1/gru_2/gru_cell_2/ReadVariableOp_1,^model_1/gru_2/gru_cell_2/mul/ReadVariableOp.^model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp^model_1/gru_2/while^model_1/gru_3/AssignVariableOp^model_1/gru_3/ReadVariableOp0^model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp/^model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp1^model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp(^model_1/gru_3/gru_cell_3/ReadVariableOp*^model_1/gru_3/gru_cell_3/ReadVariableOp_1,^model_1/gru_3/gru_cell_3/mul/ReadVariableOp.^model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp^model_1/gru_3/while'^model_1/lengths/BiasAdd/ReadVariableOp)^model_1/lengths/Tensordot/ReadVariableOp%^model_1/notes/BiasAdd/ReadVariableOp'^model_1/notes/Tensordot/ReadVariableOp%^model_1/times/BiasAdd/ReadVariableOp'^model_1/times/Tensordot/ReadVariableOp$^model_1/vels/BiasAdd/ReadVariableOp&^model_1/vels/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

IdentityÐ


Identity_1Identitymodel_1/notes/BiasAdd:output:0'^model_1/dense_1/BiasAdd/ReadVariableOp)^model_1/dense_1/Tensordot/ReadVariableOp^model_1/gru_2/AssignVariableOp^model_1/gru_2/ReadVariableOp0^model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp/^model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp1^model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp(^model_1/gru_2/gru_cell_2/ReadVariableOp*^model_1/gru_2/gru_cell_2/ReadVariableOp_1,^model_1/gru_2/gru_cell_2/mul/ReadVariableOp.^model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp^model_1/gru_2/while^model_1/gru_3/AssignVariableOp^model_1/gru_3/ReadVariableOp0^model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp/^model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp1^model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp(^model_1/gru_3/gru_cell_3/ReadVariableOp*^model_1/gru_3/gru_cell_3/ReadVariableOp_1,^model_1/gru_3/gru_cell_3/mul/ReadVariableOp.^model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp^model_1/gru_3/while'^model_1/lengths/BiasAdd/ReadVariableOp)^model_1/lengths/Tensordot/ReadVariableOp%^model_1/notes/BiasAdd/ReadVariableOp'^model_1/notes/Tensordot/ReadVariableOp%^model_1/times/BiasAdd/ReadVariableOp'^model_1/times/Tensordot/ReadVariableOp$^model_1/vels/BiasAdd/ReadVariableOp&^model_1/vels/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity_1Ñ


Identity_2Identitymodel_1/times/BiasAdd:output:0'^model_1/dense_1/BiasAdd/ReadVariableOp)^model_1/dense_1/Tensordot/ReadVariableOp^model_1/gru_2/AssignVariableOp^model_1/gru_2/ReadVariableOp0^model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp/^model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp1^model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp(^model_1/gru_2/gru_cell_2/ReadVariableOp*^model_1/gru_2/gru_cell_2/ReadVariableOp_1,^model_1/gru_2/gru_cell_2/mul/ReadVariableOp.^model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp^model_1/gru_2/while^model_1/gru_3/AssignVariableOp^model_1/gru_3/ReadVariableOp0^model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp/^model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp1^model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp(^model_1/gru_3/gru_cell_3/ReadVariableOp*^model_1/gru_3/gru_cell_3/ReadVariableOp_1,^model_1/gru_3/gru_cell_3/mul/ReadVariableOp.^model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp^model_1/gru_3/while'^model_1/lengths/BiasAdd/ReadVariableOp)^model_1/lengths/Tensordot/ReadVariableOp%^model_1/notes/BiasAdd/ReadVariableOp'^model_1/notes/Tensordot/ReadVariableOp%^model_1/times/BiasAdd/ReadVariableOp'^model_1/times/Tensordot/ReadVariableOp$^model_1/vels/BiasAdd/ReadVariableOp&^model_1/vels/Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2Ï


Identity_3Identitymodel_1/vels/BiasAdd:output:0'^model_1/dense_1/BiasAdd/ReadVariableOp)^model_1/dense_1/Tensordot/ReadVariableOp^model_1/gru_2/AssignVariableOp^model_1/gru_2/ReadVariableOp0^model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp/^model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp1^model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp(^model_1/gru_2/gru_cell_2/ReadVariableOp*^model_1/gru_2/gru_cell_2/ReadVariableOp_1,^model_1/gru_2/gru_cell_2/mul/ReadVariableOp.^model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp^model_1/gru_2/while^model_1/gru_3/AssignVariableOp^model_1/gru_3/ReadVariableOp0^model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp/^model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp1^model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp(^model_1/gru_3/gru_cell_3/ReadVariableOp*^model_1/gru_3/gru_cell_3/ReadVariableOp_1,^model_1/gru_3/gru_cell_3/mul/ReadVariableOp.^model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp^model_1/gru_3/while'^model_1/lengths/BiasAdd/ReadVariableOp)^model_1/lengths/Tensordot/ReadVariableOp%^model_1/notes/BiasAdd/ReadVariableOp'^model_1/notes/Tensordot/ReadVariableOp%^model_1/times/BiasAdd/ReadVariableOp'^model_1/times/Tensordot/ReadVariableOp$^model_1/vels/BiasAdd/ReadVariableOp&^model_1/vels/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2T
(model_1/dense_1/Tensordot/ReadVariableOp(model_1/dense_1/Tensordot/ReadVariableOp2@
model_1/gru_2/AssignVariableOpmodel_1/gru_2/AssignVariableOp2<
model_1/gru_2/ReadVariableOpmodel_1/gru_2/ReadVariableOp2b
/model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp/model_1/gru_2/gru_cell_2/BiasAdd/ReadVariableOp2`
.model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp.model_1/gru_2/gru_cell_2/MatMul/ReadVariableOp2d
0model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp0model_1/gru_2/gru_cell_2/MatMul_1/ReadVariableOp2R
'model_1/gru_2/gru_cell_2/ReadVariableOp'model_1/gru_2/gru_cell_2/ReadVariableOp2V
)model_1/gru_2/gru_cell_2/ReadVariableOp_1)model_1/gru_2/gru_cell_2/ReadVariableOp_12Z
+model_1/gru_2/gru_cell_2/mul/ReadVariableOp+model_1/gru_2/gru_cell_2/mul/ReadVariableOp2^
-model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp-model_1/gru_2/gru_cell_2/mul_1/ReadVariableOp2*
model_1/gru_2/whilemodel_1/gru_2/while2@
model_1/gru_3/AssignVariableOpmodel_1/gru_3/AssignVariableOp2<
model_1/gru_3/ReadVariableOpmodel_1/gru_3/ReadVariableOp2b
/model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp/model_1/gru_3/gru_cell_3/BiasAdd/ReadVariableOp2`
.model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp.model_1/gru_3/gru_cell_3/MatMul/ReadVariableOp2d
0model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp0model_1/gru_3/gru_cell_3/MatMul_1/ReadVariableOp2R
'model_1/gru_3/gru_cell_3/ReadVariableOp'model_1/gru_3/gru_cell_3/ReadVariableOp2V
)model_1/gru_3/gru_cell_3/ReadVariableOp_1)model_1/gru_3/gru_cell_3/ReadVariableOp_12Z
+model_1/gru_3/gru_cell_3/mul/ReadVariableOp+model_1/gru_3/gru_cell_3/mul/ReadVariableOp2^
-model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp-model_1/gru_3/gru_cell_3/mul_1/ReadVariableOp2*
model_1/gru_3/whilemodel_1/gru_3/while2P
&model_1/lengths/BiasAdd/ReadVariableOp&model_1/lengths/BiasAdd/ReadVariableOp2T
(model_1/lengths/Tensordot/ReadVariableOp(model_1/lengths/Tensordot/ReadVariableOp2L
$model_1/notes/BiasAdd/ReadVariableOp$model_1/notes/BiasAdd/ReadVariableOp2P
&model_1/notes/Tensordot/ReadVariableOp&model_1/notes/Tensordot/ReadVariableOp2L
$model_1/times/BiasAdd/ReadVariableOp$model_1/times/BiasAdd/ReadVariableOp2P
&model_1/times/Tensordot/ReadVariableOp&model_1/times/Tensordot/ReadVariableOp2J
#model_1/vels/BiasAdd/ReadVariableOp#model_1/vels/BiasAdd/ReadVariableOp2N
%model_1/vels/Tensordot/ReadVariableOp%model_1/vels/Tensordot/ReadVariableOp:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
Õ(
å
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_8804

inputs

states2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_sliceh
MatMul_1MatMulstatesstrided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1R
mulMulSigmoid_1:y:0states*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
TanhT
mul_1MulSigmoid:y:0states*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ª
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity®

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	
 
_user_specified_nameinputs:GC

_output_shapes
:	
 
_user_specified_namestates
ò 
ü
B__inference_dense_1_layer_call_and_return_conditional_losses_12513

inputs5
!tensordot_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
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
Tensordot/GatherV2/axisÑ
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
Tensordot/GatherV2_1/axis×
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd]
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_11090

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¹
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/yÃ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Êf
å
@__inference_gru_2_layer_call_and_return_conditional_losses_10247

inputs=
)gru_cell_2_matmul_readvariableop_resource:
9
*gru_cell_2_biasadd_readvariableop_resource:	6
"gru_cell_2_readvariableop_resource:
>
+gru_cell_2_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_2/BiasAdd/ReadVariableOp¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢gru_cell_2/ReadVariableOp_1¢gru_cell_2/mul/ReadVariableOp¢gru_cell_2/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp
gru_cell_2/MatMulMatMulstrided_slice_1:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul®
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp¥
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/BiasAdd
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split/split_dimÀ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_2/split
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2À
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_sliceµ
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp­
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_2/Const
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split_1/split_dimí
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid_1«
gru_cell_2/mul/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/mul/ReadVariableOp
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0%gru_cell_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp_1
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2Ì
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1
gru_cell_2/MatMul_2MatMulgru_cell_2/mul:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_2
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Tanh¯
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_2/mul_1/ReadVariableOp
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_2/sub~
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_10151*
condR
while_cond_10150*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12>
gru_cell_2/mul/ReadVariableOpgru_cell_2/mul/ReadVariableOp2B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ïT

while_body_10774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	>
*while_gru_cell_3_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
?
0while_gru_cell_3_biasadd_readvariableop_resource:	<
(while_gru_cell_3_readvariableop_resource:
¢'while/gru_cell_3/BiasAdd/ReadVariableOp¢&while/gru_cell_3/MatMul/ReadVariableOp¢while/gru_cell_3/ReadVariableOp¢!while/gru_cell_3/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOpÈ
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMulÂ
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp½
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/BiasAdd
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_3/split/split_dimØ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_3/split¯
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_3/ReadVariableOp
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack¡
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1¡
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2ä
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice¨
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_1
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_3/Const
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_3/split_1/split_dim
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_3/split_1£
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid§
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_3/add_1
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid_1
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul³
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_3/ReadVariableOp_1¡
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack¥
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1¥
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2ð
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1¯
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_2©
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Tanh
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_1u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_3/sub/x
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/sub
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_2
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 

b
D__inference_dropout_2_layer_call_and_return_conditional_losses_12528

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à(
è
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14383

inputs
states_02
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slicej
MatMul_1MatMulstates_0strided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1T
mulMulSigmoid_1:y:0states_0*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
TanhV
mul_1MulSigmoid:y:0states_0*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ª
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity®

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:G C

_output_shapes
:	
 
_user_specified_nameinputs:IE

_output_shapes
:	
"
_user_specified_name
states/0
«

%__inference_notes_layer_call_fn_13984

inputs
unknown:	_
	unknown_0:_
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_notes_layer_call_and_return_conditional_losses_105742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

b
D__inference_dropout_2_layer_call_and_return_conditional_losses_10083

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ_
Ñ	
gru_2_while_body_12103(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2%
!gru_2_while_gru_2_strided_slice_0c
_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0K
7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0:
G
8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0:	D
0gru_2_while_gru_cell_2_readvariableop_resource_0:

gru_2_while_identity
gru_2_while_identity_1
gru_2_while_identity_2
gru_2_while_identity_3
gru_2_while_identity_4#
gru_2_while_gru_2_strided_slicea
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensorI
5gru_2_while_gru_cell_2_matmul_readvariableop_resource:
E
6gru_2_while_gru_cell_2_biasadd_readvariableop_resource:	B
.gru_2_while_gru_cell_2_readvariableop_resource:
¢-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp¢,gru_2/while/gru_cell_2/MatMul/ReadVariableOp¢%gru_2/while/gru_cell_2/ReadVariableOp¢'gru_2/while/gru_cell_2/ReadVariableOp_1Ï
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2?
=gru_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeï
/gru_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0gru_2_while_placeholderFgru_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype021
/gru_2/while/TensorArrayV2Read/TensorListGetItemÖ
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02.
,gru_2/while/gru_cell_2/MatMul/ReadVariableOpà
gru_2/while/gru_cell_2/MatMulMatMul6gru_2/while/TensorArrayV2Read/TensorListGetItem:item:04gru_2/while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/MatMulÔ
-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02/
-gru_2/while/gru_cell_2/BiasAdd/ReadVariableOpÕ
gru_2/while/gru_cell_2/BiasAddBiasAdd'gru_2/while/gru_cell_2/MatMul:product:05gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2 
gru_2/while/gru_cell_2/BiasAdd
&gru_2/while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&gru_2/while/gru_cell_2/split/split_dimð
gru_2/while/gru_cell_2/splitSplit/gru_2/while/gru_cell_2/split/split_dim:output:0'gru_2/while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_2/while/gru_cell_2/splitÁ
%gru_2/while/gru_cell_2/ReadVariableOpReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02'
%gru_2/while/gru_cell_2/ReadVariableOp©
*gru_2/while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_2/while/gru_cell_2/strided_slice/stack­
,gru_2/while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_2/while/gru_cell_2/strided_slice/stack_1­
,gru_2/while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_2/while/gru_cell_2/strided_slice/stack_2
$gru_2/while/gru_cell_2/strided_sliceStridedSlice-gru_2/while/gru_cell_2/ReadVariableOp:value:03gru_2/while/gru_cell_2/strided_slice/stack:output:05gru_2/while/gru_cell_2/strided_slice/stack_1:output:05gru_2/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2&
$gru_2/while/gru_cell_2/strided_sliceÀ
gru_2/while/gru_cell_2/MatMul_1MatMulgru_2_while_placeholder_2-gru_2/while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2!
gru_2/while/gru_cell_2/MatMul_1
gru_2/while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_2/while/gru_cell_2/Const
(gru_2/while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(gru_2/while/gru_cell_2/split_1/split_dim©
gru_2/while/gru_cell_2/split_1SplitV)gru_2/while/gru_cell_2/MatMul_1:product:0%gru_2/while/gru_cell_2/Const:output:01gru_2/while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2 
gru_2/while/gru_cell_2/split_1»
gru_2/while/gru_cell_2/addAddV2%gru_2/while/gru_cell_2/split:output:0'gru_2/while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/add
gru_2/while/gru_cell_2/SigmoidSigmoidgru_2/while/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2 
gru_2/while/gru_cell_2/Sigmoid¿
gru_2/while/gru_cell_2/add_1AddV2%gru_2/while/gru_cell_2/split:output:1'gru_2/while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/add_1
 gru_2/while/gru_cell_2/Sigmoid_1Sigmoid gru_2/while/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2"
 gru_2/while/gru_cell_2/Sigmoid_1ª
gru_2/while/gru_cell_2/mulMul$gru_2/while/gru_cell_2/Sigmoid_1:y:0gru_2_while_placeholder_2*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/mulÅ
'gru_2/while/gru_cell_2/ReadVariableOp_1ReadVariableOp0gru_2_while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02)
'gru_2/while/gru_cell_2/ReadVariableOp_1­
,gru_2/while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2.
,gru_2/while/gru_cell_2/strided_slice_1/stack±
.gru_2/while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_2/while/gru_cell_2/strided_slice_1/stack_1±
.gru_2/while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_2/while/gru_cell_2/strided_slice_1/stack_2
&gru_2/while/gru_cell_2/strided_slice_1StridedSlice/gru_2/while/gru_cell_2/ReadVariableOp_1:value:05gru_2/while/gru_cell_2/strided_slice_1/stack:output:07gru_2/while/gru_cell_2/strided_slice_1/stack_1:output:07gru_2/while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2(
&gru_2/while/gru_cell_2/strided_slice_1Ç
gru_2/while/gru_cell_2/MatMul_2MatMulgru_2/while/gru_cell_2/mul:z:0/gru_2/while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2!
gru_2/while/gru_cell_2/MatMul_2Á
gru_2/while/gru_cell_2/add_2AddV2%gru_2/while/gru_cell_2/split:output:2)gru_2/while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/add_2
gru_2/while/gru_cell_2/TanhTanh gru_2/while/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/Tanh¬
gru_2/while/gru_cell_2/mul_1Mul"gru_2/while/gru_cell_2/Sigmoid:y:0gru_2_while_placeholder_2*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/mul_1
gru_2/while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_2/while/gru_cell_2/sub/x´
gru_2/while/gru_cell_2/subSub%gru_2/while/gru_cell_2/sub/x:output:0"gru_2/while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/sub®
gru_2/while/gru_cell_2/mul_2Mulgru_2/while/gru_cell_2/sub:z:0gru_2/while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/mul_2³
gru_2/while/gru_cell_2/add_3AddV2 gru_2/while/gru_cell_2/mul_1:z:0 gru_2/while/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
gru_2/while/gru_cell_2/add_3ü
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
gru_2/while/add/y
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
gru_2/while/add_1/y
gru_2/while/add_1AddV2$gru_2_while_gru_2_while_loop_countergru_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_2/while/add_1¡
gru_2/while/IdentityIdentitygru_2/while/add_1:z:0.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_2/while/Identityº
gru_2/while/Identity_1Identity*gru_2_while_gru_2_while_maximum_iterations.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_2/while/Identity_1£
gru_2/while/Identity_2Identitygru_2/while/add:z:0.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_2/while/Identity_2Ð
gru_2/while/Identity_3Identity@gru_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_2/while/Identity_3¹
gru_2/while/Identity_4Identity gru_2/while/gru_cell_2/add_3:z:0.^gru_2/while/gru_cell_2/BiasAdd/ReadVariableOp-^gru_2/while/gru_cell_2/MatMul/ReadVariableOp&^gru_2/while/gru_cell_2/ReadVariableOp(^gru_2/while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
:	2
gru_2/while/Identity_4"D
gru_2_while_gru_2_strided_slice!gru_2_while_gru_2_strided_slice_0"r
6gru_2_while_gru_cell_2_biasadd_readvariableop_resource8gru_2_while_gru_cell_2_biasadd_readvariableop_resource_0"p
5gru_2_while_gru_cell_2_matmul_readvariableop_resource7gru_2_while_gru_cell_2_matmul_readvariableop_resource_0"b
.gru_2_while_gru_cell_2_readvariableop_resource0gru_2_while_gru_cell_2_readvariableop_resource_0"5
gru_2_while_identitygru_2/while/Identity:output:0"9
gru_2_while_identity_1gru_2/while/Identity_1:output:0"9
gru_2_while_identity_2gru_2/while/Identity_2:output:0"9
gru_2_while_identity_3gru_2/while/Identity_3:output:0"9
gru_2_while_identity_4gru_2/while/Identity_4:output:0"À
]gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_gru_2_while_tensorarrayv2read_tensorlistgetitem_gru_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2^
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
:	:

_output_shapes
: :

_output_shapes
: 
Á-
®
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14337

inputs
states_02
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
valueB"       2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_sliceu
MatMul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim£
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
	Sigmoid_1k
mul/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2BatchMatMulV2mul:z:0strided_slice_1:output:0*
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
mul_1/ReadVariableOpReadVariableOpstates_0*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpc
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_2P
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:2
add_3é
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identityí

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
À.
º
D__inference_gru_cell_3_layer_call_and_return_conditional_losses_9413

inputs
states:	2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slicez
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
MatMul_1/ReadVariableOp
MatMul_1MatMulMatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:	2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim¶
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2	
split_1_
addAddV2split:output:0split_1:output:0*
T0*
_output_shapes
:	2
addP
SigmoidSigmoidadd:z:0*
T0*
_output_shapes
:	2	
Sigmoidc
add_1AddV2split:output:1split_1:output:1*
T0*
_output_shapes
:	2
add_1V
	Sigmoid_1Sigmoid	add_1:z:0*
T0*
_output_shapes
:	2
	Sigmoid_1p
mul/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
mul/ReadVariableOpf
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*
_output_shapes
:	2

MatMul_2e
add_2AddV2split:output:2MatMul_2:product:0*
T0*
_output_shapes
:	2
add_2I
TanhTanh	add_2:z:0*
T0*
_output_shapes
:	2
Tanht
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:	*
dtype02
mul_1/ReadVariableOpj
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xX
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:	2
subR
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:	2
mul_2W
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:	2
add_3ð
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:	2

Identityô

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:	2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:	: : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:&"
 
_user_specified_namestates

Ô
%__inference_gru_3_layer_call_fn_13257
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *H
fCRA
?__inference_gru_3_layer_call_and_return_conditional_losses_95392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
	

gru_2_while_cond_11637(
$gru_2_while_gru_2_while_loop_counter.
*gru_2_while_gru_2_while_maximum_iterations
gru_2_while_placeholder
gru_2_while_placeholder_1
gru_2_while_placeholder_2(
$gru_2_while_less_gru_2_strided_slice?
;gru_2_while_gru_2_while_cond_11637___redundant_placeholder0?
;gru_2_while_gru_2_while_cond_11637___redundant_placeholder1?
;gru_2_while_gru_2_while_cond_11637___redundant_placeholder2?
;gru_2_while_gru_2_while_cond_11637___redundant_placeholder3
gru_2_while_identity

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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
÷!

while_body_9060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_gru_cell_2_9082_0:
&
while_gru_cell_2_9084_0:	+
while_gru_cell_2_9086_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_gru_cell_2_9082:
$
while_gru_cell_2_9084:	)
while_gru_cell_2_9086:
¢(while/gru_cell_2/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem
(while/gru_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_2_9082_0while_gru_cell_2_9084_0while_gru_cell_2_9086_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_89222*
(while/gru_cell_2/StatefulPartitionedCallõ
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¸
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3¸
while/Identity_4Identity1while/gru_cell_2/StatefulPartitionedCall:output:1)^while/gru_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
:	2
while/Identity_4"0
while_gru_cell_2_9082while_gru_cell_2_9082_0"0
while_gru_cell_2_9084while_gru_cell_2_9084_0"0
while_gru_cell_2_9086while_gru_cell_2_9086_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2T
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
:	:

_output_shapes
: :

_output_shapes
: 
Ë6
¤
B__inference_model_1_layer_call_and_return_conditional_losses_11348
input_2!
dense_1_11299:

dense_1_11301:	
gru_2_11305:

gru_2_11307:	
gru_2_11309:

gru_2_11311:	
gru_3_11314:

gru_3_11316:	
gru_3_11318:

gru_3_11320:	!
lengths_11324:
¬
lengths_11326:	¬
times_11329:
æ
times_11331:	æ

vels_11334:	}

vels_11336:}
notes_11339:	_
notes_11341:_
identity

identity_1

identity_2

identity_3¢dense_1/StatefulPartitionedCall¢gru_2/StatefulPartitionedCall¢gru_3/StatefulPartitionedCall¢lengths/StatefulPartitionedCall¢notes/StatefulPartitionedCall¢times/StatefulPartitionedCall¢vels/StatefulPartitionedCall
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_2dense_1_11299dense_1_11301*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_100722!
dense_1/StatefulPartitionedCall
dropout_2/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_100832
dropout_2/PartitionedCallÅ
gru_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0gru_2_11305gru_2_11307gru_2_11309gru_2_11311*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_2_layer_call_and_return_conditional_losses_102472
gru_2/StatefulPartitionedCallÉ
gru_3/StatefulPartitionedCallStatefulPartitionedCall&gru_2/StatefulPartitionedCall:output:0gru_3_11314gru_3_11316gru_3_11318gru_3_11320*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_gru_3_layer_call_and_return_conditional_losses_104192
gru_3/StatefulPartitionedCall
dropout_3/PartitionedCallPartitionedCall&gru_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_104342
dropout_3/PartitionedCall²
lengths/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0lengths_11324lengths_11326*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_lengths_layer_call_and_return_conditional_losses_104662!
lengths/StatefulPartitionedCall¨
times/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0times_11329times_11331*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_times_layer_call_and_return_conditional_losses_105022
times/StatefulPartitionedCall¢
vels/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0
vels_11334
vels_11336*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *H
fCRA
?__inference_vels_layer_call_and_return_conditional_losses_105382
vels/StatefulPartitionedCall§
notes/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0notes_11339notes_11341*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *I
fDRB
@__inference_notes_layer_call_and_return_conditional_losses_105742
notes/StatefulPartitionedCallá
IdentityIdentity&notes/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identityä

Identity_1Identity%vels/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_1æ

Identity_2Identity&times/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2è

Identity_3Identity(lengths/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall^gru_2/StatefulPartitionedCall^gru_3/StatefulPartitionedCall ^lengths/StatefulPartitionedCall^notes/StatefulPartitionedCall^times/StatefulPartitionedCall^vels/StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2>
gru_2/StatefulPartitionedCallgru_2/StatefulPartitionedCall2>
gru_3/StatefulPartitionedCallgru_3/StatefulPartitionedCall2B
lengths/StatefulPartitionedCalllengths/StatefulPartitionedCall2>
notes/StatefulPartitionedCallnotes/StatefulPartitionedCall2>
times/StatefulPartitionedCalltimes/StatefulPartitionedCall2<
vels/StatefulPartitionedCallvels/StatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
á
£
while_cond_13688
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_13688___redundant_placeholder03
/while_while_cond_13688___redundant_placeholder13
/while_while_cond_13688___redundant_placeholder23
/while_while_cond_13688___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
±	
×
*__inference_gru_cell_2_layer_call_fn_14223

inputs
states_0
unknown:

	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
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
GPU2 *0J 8 *N
fIRG
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_142122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
4
½
?__inference_gru_2_layer_call_and_return_conditional_losses_8847

inputs"
gru_cell_2_8722:	#
gru_cell_2_8724:

gru_cell_2_8726:	#
gru_cell_2_8728:

identity¢AssignVariableOp¢ReadVariableOp¢"gru_cell_2/StatefulPartitionedCall¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1Ù
"gru_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0gru_cell_2_8722gru_cell_2_8724gru_cell_2_8726gru_cell_2_8728*
Tin	
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:	:	*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *M
fHRF
D__inference_gru_cell_2_layer_call_and_return_conditional_losses_87212$
"gru_cell_2/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
ReadVariableOpReadVariableOpgru_cell_2_8722*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterÐ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_2_8724gru_cell_2_8726gru_cell_2_8728*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_8737*
condR
while_cond_8736*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime²
AssignVariableOpAssignVariableOpgru_cell_2_8722while:output:4^ReadVariableOp#^gru_cell_2/StatefulPartitionedCall*
_output_shapes
 *
dtype02
AssignVariableOp¹
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp#^gru_cell_2/StatefulPartitionedCall^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2H
"gru_cell_2/StatefulPartitionedCall"gru_cell_2/StatefulPartitionedCall2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Êf
å
@__inference_gru_2_layer_call_and_return_conditional_losses_13244

inputs=
)gru_cell_2_matmul_readvariableop_resource:
9
*gru_cell_2_biasadd_readvariableop_resource:	6
"gru_cell_2_readvariableop_resource:
>
+gru_cell_2_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_2/BiasAdd/ReadVariableOp¢ gru_cell_2/MatMul/ReadVariableOp¢"gru_cell_2/MatMul_1/ReadVariableOp¢gru_cell_2/ReadVariableOp¢gru_cell_2/ReadVariableOp_1¢gru_cell_2/mul/ReadVariableOp¢gru_cell_2/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_2/MatMul/ReadVariableOpReadVariableOp)gru_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_2/MatMul/ReadVariableOp
gru_cell_2/MatMulMatMulstrided_slice_1:output:0(gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul®
!gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_2/BiasAdd/ReadVariableOp¥
gru_cell_2/BiasAddBiasAddgru_cell_2/MatMul:product:0)gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/BiasAdd
gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split/split_dimÀ
gru_cell_2/splitSplit#gru_cell_2/split/split_dim:output:0gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_2/split
gru_cell_2/ReadVariableOpReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp
gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_2/strided_slice/stack
 gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice/stack_1
 gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_2/strided_slice/stack_2À
gru_cell_2/strided_sliceStridedSlice!gru_cell_2/ReadVariableOp:value:0'gru_cell_2/strided_slice/stack:output:0)gru_cell_2/strided_slice/stack_1:output:0)gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_sliceµ
"gru_cell_2/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_2/MatMul_1/ReadVariableOp­
gru_cell_2/MatMul_1MatMul*gru_cell_2/MatMul_1/ReadVariableOp:value:0!gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_1y
gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_2/Const
gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_2/split_1/split_dimí
gru_cell_2/split_1SplitVgru_cell_2/MatMul_1:product:0gru_cell_2/Const:output:0%gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_2/split_1
gru_cell_2/addAddV2gru_cell_2/split:output:0gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/addq
gru_cell_2/SigmoidSigmoidgru_cell_2/add:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid
gru_cell_2/add_1AddV2gru_cell_2/split:output:1gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_2/add_1w
gru_cell_2/Sigmoid_1Sigmoidgru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Sigmoid_1«
gru_cell_2/mul/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_2/mul/ReadVariableOp
gru_cell_2/mulMulgru_cell_2/Sigmoid_1:y:0%gru_cell_2/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul
gru_cell_2/ReadVariableOp_1ReadVariableOp"gru_cell_2_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_2/ReadVariableOp_1
 gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_2/strided_slice_1/stack
"gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_2/strided_slice_1/stack_1
"gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_2/strided_slice_1/stack_2Ì
gru_cell_2/strided_slice_1StridedSlice#gru_cell_2/ReadVariableOp_1:value:0)gru_cell_2/strided_slice_1/stack:output:0+gru_cell_2/strided_slice_1/stack_1:output:0+gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_2/strided_slice_1
gru_cell_2/MatMul_2MatMulgru_cell_2/mul:z:0#gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_2/MatMul_2
gru_cell_2/add_2AddV2gru_cell_2/split:output:2gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_2/add_2j
gru_cell_2/TanhTanhgru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/Tanh¯
gru_cell_2/mul_1/ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_2/mul_1/ReadVariableOp
gru_cell_2/mul_1Mulgru_cell_2/Sigmoid:y:0'gru_cell_2/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_1i
gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_2/sub/x
gru_cell_2/subSubgru_cell_2/sub/x:output:0gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_2/sub~
gru_cell_2/mul_2Mulgru_cell_2/sub:z:0gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_2/mul_2
gru_cell_2/add_3AddV2gru_cell_2/mul_1:z:0gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_2/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_2_matmul_readvariableop_resource*gru_cell_2_biasadd_readvariableop_resource"gru_cell_2_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13148*
condR
while_cond_13147*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_2_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_2/BiasAdd/ReadVariableOp!^gru_cell_2/MatMul/ReadVariableOp#^gru_cell_2/MatMul_1/ReadVariableOp^gru_cell_2/ReadVariableOp^gru_cell_2/ReadVariableOp_1^gru_cell_2/mul/ReadVariableOp ^gru_cell_2/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_2/BiasAdd/ReadVariableOp!gru_cell_2/BiasAdd/ReadVariableOp2D
 gru_cell_2/MatMul/ReadVariableOp gru_cell_2/MatMul/ReadVariableOp2H
"gru_cell_2/MatMul_1/ReadVariableOp"gru_cell_2/MatMul_1/ReadVariableOp26
gru_cell_2/ReadVariableOpgru_cell_2/ReadVariableOp2:
gru_cell_2/ReadVariableOp_1gru_cell_2/ReadVariableOp_12>
gru_cell_2/mul/ReadVariableOpgru_cell_2/mul/ReadVariableOp2B
gru_cell_2/mul_1/ReadVariableOpgru_cell_2/mul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±	
×
*__inference_gru_cell_2_layer_call_fn_14287

inputs
states_0
unknown:

	unknown_0:	
	unknown_1:

identity

identity_1¢StatefulPartitionedCall
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
GPU2 *0J 8 *N
fIRG
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_142762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:G C

_output_shapes
:	
 
_user_specified_nameinputs:($
"
_user_specified_name
states/0
·-
¬
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14624

inputs

states2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	+
readvariableop_resource:

identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1¢mul/ReadVariableOp¢mul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpk
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
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
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slices
MatMul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
MatMul_1/ReadVariableOp
MatMul_1BatchMatMulV2MatMul_1/ReadVariableOp:value:0strided_slice:output:0*
T0*
_output_shapes
:2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dim£
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
	Sigmoid_1i
mul/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul/ReadVariableOp_
mulMulSigmoid_1:y:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
strided_slice_1k
MatMul_2BatchMatMulV2mul:z:0strided_slice_1:output:0*
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
mul_1/ReadVariableOpReadVariableOpstates*
_output_shapes
:*
dtype02
mul_1/ReadVariableOpc
mul_1MulSigmoid:y:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xQ
subSubsub/x:output:0Sigmoid:y:0*
T0*
_output_shapes
:2
subK
mul_2Mulsub:z:0Tanh:y:0*
T0*
_output_shapes
:2
mul_2P
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*
_output_shapes
:2
add_3é
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identityí

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp^ReadVariableOp^ReadVariableOp_1^mul/ReadVariableOp^mul_1/ReadVariableOp*
T0*
_output_shapes
:2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:	:	: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp:G C

_output_shapes
:	
 
_user_specified_nameinputs:&"
 
_user_specified_namestates
Ü

while_cond_9751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice2
.while_while_cond_9751___redundant_placeholder02
.while_while_cond_9751___redundant_placeholder12
.while_while_cond_9751___redundant_placeholder22
.while_while_cond_9751___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
 
ú
@__inference_times_layer_call_and_return_conditional_losses_14092

inputs5
!tensordot_readvariableop_resource:
æ.
biasadd_readvariableop_resource:	æ
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
æ*
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
Tensordot/GatherV2/axisÑ
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
Tensordot/GatherV2_1/axis×
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:æ2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:æ*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

gru_3_while_cond_12261(
$gru_3_while_gru_3_while_loop_counter.
*gru_3_while_gru_3_while_maximum_iterations
gru_3_while_placeholder
gru_3_while_placeholder_1
gru_3_while_placeholder_2(
$gru_3_while_less_gru_3_strided_slice?
;gru_3_while_gru_3_while_cond_12261___redundant_placeholder0?
;gru_3_while_gru_3_while_cond_12261___redundant_placeholder1?
;gru_3_while_gru_3_while_cond_12261___redundant_placeholder2?
;gru_3_while_gru_3_while_cond_12261___redundant_placeholder3
gru_3_while_identity

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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:
Ðf
ç
@__inference_gru_3_layer_call_and_return_conditional_losses_13622
inputs_0=
)gru_cell_3_matmul_readvariableop_resource:
9
*gru_cell_3_biasadd_readvariableop_resource:	6
"gru_cell_3_readvariableop_resource:
>
+gru_cell_3_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_3/BiasAdd/ReadVariableOp¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢gru_cell_3/ReadVariableOp_1¢gru_cell_3/mul/ReadVariableOp¢gru_cell_3/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm}
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp
gru_cell_3/MatMulMatMulstrided_slice_1:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul®
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp¥
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/BiasAdd
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split/split_dimÀ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_3/split
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2À
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_sliceµ
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp­
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_3/Const
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split_1/split_dimí
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_3/split_1
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid_1«
gru_cell_3/mul/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_3/mul/ReadVariableOp
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0%gru_cell_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp_1
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2Ì
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1
gru_cell_3/MatMul_2MatMulgru_cell_3/mul:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_2
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Tanh¯
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_3/mul_1/ReadVariableOp
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_1i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_3/sub/x
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_3/sub~
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_2
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13526*
condR
while_cond_13525*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12>
gru_cell_3/mul/ReadVariableOpgru_cell_3/mul/ReadVariableOp2B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2
whilewhile:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¬

'__inference_model_1_layer_call_fn_11296
input_2
unknown:

	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:
¬

unknown_10:	¬

unknown_11:
æ

unknown_12:	æ

unknown_13:	}

unknown_14:}

unknown_15:	_

unknown_16:_
identity

identity_1

identity_2

identity_3¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *r
_output_shapes`
^:ÿÿÿÿÿÿÿÿÿ_:ÿÿÿÿÿÿÿÿÿ}:ÿÿÿÿÿÿÿÿÿæ:ÿÿÿÿÿÿÿÿÿ¬*2
_read_only_resource_inputs
	*2
config_proto" 

CPU

GPU2 *0J 8 *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_112042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ2

Identity_2

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2

Ô
%__inference_gru_3_layer_call_fn_13270
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *H
fCRA
?__inference_gru_3_layer_call_and_return_conditional_losses_98162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ïT

while_body_12985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_2_matmul_readvariableop_resource_0:
A
2while_gru_cell_2_biasadd_readvariableop_resource_0:	>
*while_gru_cell_2_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_2_matmul_readvariableop_resource:
?
0while_gru_cell_2_biasadd_readvariableop_resource:	<
(while_gru_cell_2_readvariableop_resource:
¢'while/gru_cell_2/BiasAdd/ReadVariableOp¢&while/gru_cell_2/MatMul/ReadVariableOp¢while/gru_cell_2/ReadVariableOp¢!while/gru_cell_2/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_2/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_2/MatMul/ReadVariableOpÈ
while/gru_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_2/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMulÂ
'while/gru_cell_2/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_2/BiasAdd/ReadVariableOp½
while/gru_cell_2/BiasAddBiasAdd!while/gru_cell_2/MatMul:product:0/while/gru_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_2/BiasAdd
 while/gru_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_2/split/split_dimØ
while/gru_cell_2/splitSplit)while/gru_cell_2/split/split_dim:output:0!while/gru_cell_2/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_2/split¯
while/gru_cell_2/ReadVariableOpReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_2/ReadVariableOp
$while/gru_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_2/strided_slice/stack¡
&while/gru_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice/stack_1¡
&while/gru_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_2/strided_slice/stack_2ä
while/gru_cell_2/strided_sliceStridedSlice'while/gru_cell_2/ReadVariableOp:value:0-while/gru_cell_2/strided_slice/stack:output:0/while/gru_cell_2/strided_slice/stack_1:output:0/while/gru_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_2/strided_slice¨
while/gru_cell_2/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_2/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_1
while/gru_cell_2/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_2/Const
"while/gru_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_2/split_1/split_dim
while/gru_cell_2/split_1SplitV#while/gru_cell_2/MatMul_1:product:0while/gru_cell_2/Const:output:0+while/gru_cell_2/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_2/split_1£
while/gru_cell_2/addAddV2while/gru_cell_2/split:output:0!while/gru_cell_2/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add
while/gru_cell_2/SigmoidSigmoidwhile/gru_cell_2/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid§
while/gru_cell_2/add_1AddV2while/gru_cell_2/split:output:1!while/gru_cell_2/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_2/add_1
while/gru_cell_2/Sigmoid_1Sigmoidwhile/gru_cell_2/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Sigmoid_1
while/gru_cell_2/mulMulwhile/gru_cell_2/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul³
!while/gru_cell_2/ReadVariableOp_1ReadVariableOp*while_gru_cell_2_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_2/ReadVariableOp_1¡
&while/gru_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_2/strided_slice_1/stack¥
(while/gru_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_2/strided_slice_1/stack_1¥
(while/gru_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_2/strided_slice_1/stack_2ð
 while/gru_cell_2/strided_slice_1StridedSlice)while/gru_cell_2/ReadVariableOp_1:value:0/while/gru_cell_2/strided_slice_1/stack:output:01while/gru_cell_2/strided_slice_1/stack_1:output:01while/gru_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_2/strided_slice_1¯
while/gru_cell_2/MatMul_2MatMulwhile/gru_cell_2/mul:z:0)while/gru_cell_2/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_2/MatMul_2©
while/gru_cell_2/add_2AddV2while/gru_cell_2/split:output:2#while/gru_cell_2/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_2|
while/gru_cell_2/TanhTanhwhile/gru_cell_2/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/Tanh
while/gru_cell_2/mul_1Mulwhile/gru_cell_2/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_1u
while/gru_cell_2/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_2/sub/x
while/gru_cell_2/subSubwhile/gru_cell_2/sub/x:output:0while/gru_cell_2/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/sub
while/gru_cell_2/mul_2Mulwhile/gru_cell_2/sub:z:0while/gru_cell_2/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_2/mul_2
while/gru_cell_2/add_3AddV2while/gru_cell_2/mul_1:z:0while/gru_cell_2/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_2/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_2/add_3:z:0(^while/gru_cell_2/BiasAdd/ReadVariableOp'^while/gru_cell_2/MatMul/ReadVariableOp ^while/gru_cell_2/ReadVariableOp"^while/gru_cell_2/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_2_biasadd_readvariableop_resource2while_gru_cell_2_biasadd_readvariableop_resource_0"d
/while_gru_cell_2_matmul_readvariableop_resource1while_gru_cell_2_matmul_readvariableop_resource_0"V
(while_gru_cell_2_readvariableop_resource*while_gru_cell_2_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
Êf
å
@__inference_gru_3_layer_call_and_return_conditional_losses_13785

inputs=
)gru_cell_3_matmul_readvariableop_resource:
9
*gru_cell_3_biasadd_readvariableop_resource:	6
"gru_cell_3_readvariableop_resource:
>
+gru_cell_3_matmul_1_readvariableop_resource:	
identity¢AssignVariableOp¢ReadVariableOp¢!gru_cell_3/BiasAdd/ReadVariableOp¢ gru_cell_3/MatMul/ReadVariableOp¢"gru_cell_3/MatMul_1/ReadVariableOp¢gru_cell_3/ReadVariableOp¢gru_cell_3/ReadVariableOp_1¢gru_cell_3/mul/ReadVariableOp¢gru_cell_3/mul_1/ReadVariableOp¢whileu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
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
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape°
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
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
strided_slice_1/stack_2ô
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_1°
 gru_cell_3/MatMul/ReadVariableOpReadVariableOp)gru_cell_3_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 gru_cell_3/MatMul/ReadVariableOp
gru_cell_3/MatMulMatMulstrided_slice_1:output:0(gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul®
!gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_3_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02#
!gru_cell_3/BiasAdd/ReadVariableOp¥
gru_cell_3/BiasAddBiasAddgru_cell_3/MatMul:product:0)gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/BiasAdd
gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split/split_dimÀ
gru_cell_3/splitSplit#gru_cell_3/split/split_dim:output:0gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
gru_cell_3/split
gru_cell_3/ReadVariableOpReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp
gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_3/strided_slice/stack
 gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice/stack_1
 gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_3/strided_slice/stack_2À
gru_cell_3/strided_sliceStridedSlice!gru_cell_3/ReadVariableOp:value:0'gru_cell_3/strided_slice/stack:output:0)gru_cell_3/strided_slice/stack_1:output:0)gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_sliceµ
"gru_cell_3/MatMul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02$
"gru_cell_3/MatMul_1/ReadVariableOp­
gru_cell_3/MatMul_1MatMul*gru_cell_3/MatMul_1/ReadVariableOp:value:0!gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_1y
gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
gru_cell_3/Const
gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_3/split_1/split_dimí
gru_cell_3/split_1SplitVgru_cell_3/MatMul_1:product:0gru_cell_3/Const:output:0%gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
gru_cell_3/split_1
gru_cell_3/addAddV2gru_cell_3/split:output:0gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/addq
gru_cell_3/SigmoidSigmoidgru_cell_3/add:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid
gru_cell_3/add_1AddV2gru_cell_3/split:output:1gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
gru_cell_3/add_1w
gru_cell_3/Sigmoid_1Sigmoidgru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Sigmoid_1«
gru_cell_3/mul/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
gru_cell_3/mul/ReadVariableOp
gru_cell_3/mulMulgru_cell_3/Sigmoid_1:y:0%gru_cell_3/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul
gru_cell_3/ReadVariableOp_1ReadVariableOp"gru_cell_3_readvariableop_resource* 
_output_shapes
:
*
dtype02
gru_cell_3/ReadVariableOp_1
 gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2"
 gru_cell_3/strided_slice_1/stack
"gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_3/strided_slice_1/stack_1
"gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_3/strided_slice_1/stack_2Ì
gru_cell_3/strided_slice_1StridedSlice#gru_cell_3/ReadVariableOp_1:value:0)gru_cell_3/strided_slice_1/stack:output:0+gru_cell_3/strided_slice_1/stack_1:output:0+gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2
gru_cell_3/strided_slice_1
gru_cell_3/MatMul_2MatMulgru_cell_3/mul:z:0#gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
gru_cell_3/MatMul_2
gru_cell_3/add_2AddV2gru_cell_3/split:output:2gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
gru_cell_3/add_2j
gru_cell_3/TanhTanhgru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/Tanh¯
gru_cell_3/mul_1/ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02!
gru_cell_3/mul_1/ReadVariableOp
gru_cell_3/mul_1Mulgru_cell_3/Sigmoid:y:0'gru_cell_3/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_1i
gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_3/sub/x
gru_cell_3/subSubgru_cell_3/sub/x:output:0gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
gru_cell_3/sub~
gru_cell_3/mul_2Mulgru_cell_3/sub:z:0gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
gru_cell_3/mul_2
gru_cell_3/add_3AddV2gru_cell_3/mul_1:z:0gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
gru_cell_3/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
TensorArrayV2_1/element_shape¶
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
time
ReadVariableOpReadVariableOp+gru_cell_3_matmul_1_readvariableop_resource*
_output_shapes
:	*
dtype02
ReadVariableOp
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0ReadVariableOp:value:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_3_matmul_readvariableop_resource*gru_cell_3_biasadd_readvariableop_resource"gru_cell_3_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*1
_output_shapes
: : : : :	: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_13689*
condR
while_cond_13688*0
output_shapes
: : : : :	: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
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
strided_slice_2/stack_2
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:	*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
AssignVariableOpAssignVariableOp+gru_cell_3_matmul_1_readvariableop_resourcewhile:output:4^ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignVariableOpü
IdentityIdentitytranspose_1:y:0^AssignVariableOp^ReadVariableOp"^gru_cell_3/BiasAdd/ReadVariableOp!^gru_cell_3/MatMul/ReadVariableOp#^gru_cell_3/MatMul_1/ReadVariableOp^gru_cell_3/ReadVariableOp^gru_cell_3/ReadVariableOp_1^gru_cell_3/mul/ReadVariableOp ^gru_cell_3/mul_1/ReadVariableOp^while*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : 2$
AssignVariableOpAssignVariableOp2 
ReadVariableOpReadVariableOp2F
!gru_cell_3/BiasAdd/ReadVariableOp!gru_cell_3/BiasAdd/ReadVariableOp2D
 gru_cell_3/MatMul/ReadVariableOp gru_cell_3/MatMul/ReadVariableOp2H
"gru_cell_3/MatMul_1/ReadVariableOp"gru_cell_3/MatMul_1/ReadVariableOp26
gru_cell_3/ReadVariableOpgru_cell_3/ReadVariableOp2:
gru_cell_3/ReadVariableOp_1gru_cell_3/ReadVariableOp_12>
gru_cell_3/mul/ReadVariableOpgru_cell_3/mul/ReadVariableOp2B
gru_cell_3/mul_1/ReadVariableOpgru_cell_3/mul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ïT

while_body_13526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_gru_cell_3_matmul_readvariableop_resource_0:
A
2while_gru_cell_3_biasadd_readvariableop_resource_0:	>
*while_gru_cell_3_readvariableop_resource_0:

while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_gru_cell_3_matmul_readvariableop_resource:
?
0while_gru_cell_3_biasadd_readvariableop_resource:	<
(while_gru_cell_3_readvariableop_resource:
¢'while/gru_cell_3/BiasAdd/ReadVariableOp¢&while/gru_cell_3/MatMul/ReadVariableOp¢while/gru_cell_3/ReadVariableOp¢!while/gru_cell_3/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeË
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes
:	*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÄ
&while/gru_cell_3/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_3_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/gru_cell_3/MatMul/ReadVariableOpÈ
while/gru_cell_3/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_3/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMulÂ
'while/gru_cell_3/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_3_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype02)
'while/gru_cell_3/BiasAdd/ReadVariableOp½
while/gru_cell_3/BiasAddBiasAdd!while/gru_cell_3/MatMul:product:0/while/gru_cell_3/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes
:	2
while/gru_cell_3/BiasAdd
 while/gru_cell_3/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_3/split/split_dimØ
while/gru_cell_3/splitSplit)while/gru_cell_3/split/split_dim:output:0!while/gru_cell_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:	:	:	*
	num_split2
while/gru_cell_3/split¯
while/gru_cell_3/ReadVariableOpReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02!
while/gru_cell_3/ReadVariableOp
$while/gru_cell_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_3/strided_slice/stack¡
&while/gru_cell_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice/stack_1¡
&while/gru_cell_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_3/strided_slice/stack_2ä
while/gru_cell_3/strided_sliceStridedSlice'while/gru_cell_3/ReadVariableOp:value:0-while/gru_cell_3/strided_slice/stack:output:0/while/gru_cell_3/strided_slice/stack_1:output:0/while/gru_cell_3/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2 
while/gru_cell_3/strided_slice¨
while/gru_cell_3/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_3/strided_slice:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_1
while/gru_cell_3/ConstConst*
_output_shapes
:*
dtype0*!
valueB"      ÿÿÿÿ2
while/gru_cell_3/Const
"while/gru_cell_3/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_3/split_1/split_dim
while/gru_cell_3/split_1SplitV#while/gru_cell_3/MatMul_1:product:0while/gru_cell_3/Const:output:0+while/gru_cell_3/split_1/split_dim:output:0*
T0*

Tlen0*2
_output_shapes 
:	:	: *
	num_split2
while/gru_cell_3/split_1£
while/gru_cell_3/addAddV2while/gru_cell_3/split:output:0!while/gru_cell_3/split_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add
while/gru_cell_3/SigmoidSigmoidwhile/gru_cell_3/add:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid§
while/gru_cell_3/add_1AddV2while/gru_cell_3/split:output:1!while/gru_cell_3/split_1:output:1*
T0*
_output_shapes
:	2
while/gru_cell_3/add_1
while/gru_cell_3/Sigmoid_1Sigmoidwhile/gru_cell_3/add_1:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Sigmoid_1
while/gru_cell_3/mulMulwhile/gru_cell_3/Sigmoid_1:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul³
!while/gru_cell_3/ReadVariableOp_1ReadVariableOp*while_gru_cell_3_readvariableop_resource_0* 
_output_shapes
:
*
dtype02#
!while/gru_cell_3/ReadVariableOp_1¡
&while/gru_cell_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       2(
&while/gru_cell_3/strided_slice_1/stack¥
(while/gru_cell_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_3/strided_slice_1/stack_1¥
(while/gru_cell_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_3/strided_slice_1/stack_2ð
 while/gru_cell_3/strided_slice_1StridedSlice)while/gru_cell_3/ReadVariableOp_1:value:0/while/gru_cell_3/strided_slice_1/stack:output:01while/gru_cell_3/strided_slice_1/stack_1:output:01while/gru_cell_3/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
*

begin_mask*
end_mask2"
 while/gru_cell_3/strided_slice_1¯
while/gru_cell_3/MatMul_2MatMulwhile/gru_cell_3/mul:z:0)while/gru_cell_3/strided_slice_1:output:0*
T0*
_output_shapes
:	2
while/gru_cell_3/MatMul_2©
while/gru_cell_3/add_2AddV2while/gru_cell_3/split:output:2#while/gru_cell_3/MatMul_2:product:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_2|
while/gru_cell_3/TanhTanhwhile/gru_cell_3/add_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/Tanh
while/gru_cell_3/mul_1Mulwhile/gru_cell_3/Sigmoid:y:0while_placeholder_2*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_1u
while/gru_cell_3/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_3/sub/x
while/gru_cell_3/subSubwhile/gru_cell_3/sub/x:output:0while/gru_cell_3/Sigmoid:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/sub
while/gru_cell_3/mul_2Mulwhile/gru_cell_3/sub:z:0while/gru_cell_3/Tanh:y:0*
T0*
_output_shapes
:	2
while/gru_cell_3/mul_2
while/gru_cell_3/add_3AddV2while/gru_cell_3/mul_1:z:0while/gru_cell_3/mul_2:z:0*
T0*
_output_shapes
:	2
while/gru_cell_3/add_3Þ
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_3/add_3:z:0(^while/gru_cell_3/BiasAdd/ReadVariableOp'^while/gru_cell_3/MatMul/ReadVariableOp ^while/gru_cell_3/ReadVariableOp"^while/gru_cell_3/ReadVariableOp_1*
T0*
_output_shapes
:	2
while/Identity_4"f
0while_gru_cell_3_biasadd_readvariableop_resource2while_gru_cell_3_biasadd_readvariableop_resource_0"d
/while_gru_cell_3_matmul_readvariableop_resource1while_gru_cell_3_matmul_readvariableop_resource_0"V
(while_gru_cell_3_readvariableop_resource*while_gru_cell_3_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : :	: : : : : 2R
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
:	:

_output_shapes
: :

_output_shapes
: 
ò 
ü
B__inference_dense_1_layer_call_and_return_conditional_losses_10072

inputs5
!tensordot_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
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
Tensordot/GatherV2/axisÑ
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
Tensordot/GatherV2_1/axis×
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
Tensordot/Const
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
Tensordot/Const_1
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
Tensordot/concat/axis°
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/transpose
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tensordot/Reshape
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis½
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	Tensordot
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd]
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh
IdentityIdentityTanh:y:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
£
while_cond_10150
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice3
/while_while_cond_10150___redundant_placeholder03
/while_while_cond_10150___redundant_placeholder13
/while_while_cond_10150___redundant_placeholder23
/while_while_cond_10150___redundant_placeholder3
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
%: : : : :	: ::::: 
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
:	:

_output_shapes
: :

_output_shapes
:"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ñ
serving_defaultÝ
@
input_25
serving_default_input_2:0ÿÿÿÿÿÿÿÿÿ@
lengths5
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ¬=
notes4
StatefulPartitionedCall:1ÿÿÿÿÿÿÿÿÿ_>
times5
StatefulPartitionedCall:2ÿÿÿÿÿÿÿÿÿæ<
vels4
StatefulPartitionedCall:3ÿÿÿÿÿÿÿÿÿ}tensorflow/serving/predict:ô¢
×^
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
regularization_losses
	variables
trainable_variables
	keras_api

signatures
__call__
+&call_and_return_all_conditional_losses
_default_save_signature"àZ
_tf_keras_networkÄZ{"name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, null, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]]}, {"class_name": "GRU", "config": {"name": "gru_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": true, "unroll": false, "time_major": false, "units": 512, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "name": "gru_2", "inbound_nodes": [[["dropout_2", 0, 0, {}]]]}, {"class_name": "GRU", "config": {"name": "gru_3", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": true, "unroll": false, "time_major": false, "units": 1024, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "name": "gru_3", "inbound_nodes": [[["gru_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_3", "inbound_nodes": [[["gru_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "notes", "trainable": true, "dtype": "float32", "units": 95, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "notes", "inbound_nodes": [[["dropout_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "vels", "trainable": true, "dtype": "float32", "units": 125, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "vels", "inbound_nodes": [[["dropout_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "times", "trainable": true, "dtype": "float32", "units": 358, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "times", "inbound_nodes": [[["dropout_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "lengths", "trainable": true, "dtype": "float32", "units": 1964, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "lengths", "inbound_nodes": [[["dropout_3", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["notes", 0, 0], ["vels", 0, 0], ["times", 0, 0], ["lengths", 0, 0]]}, "shared_object_id": 28, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 256]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [1, null, 256]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [1, null, 256]}, "float32", "input_2"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, null, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["input_2", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "dropout_2", "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "GRU", "config": {"name": "gru_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": true, "unroll": false, "time_major": false, "units": 512, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "name": "gru_2", "inbound_nodes": [[["dropout_2", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "GRU", "config": {"name": "gru_3", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": true, "unroll": false, "time_major": false, "units": 1024, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "name": "gru_3", "inbound_nodes": [[["gru_2", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_3", "inbound_nodes": [[["gru_3", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "notes", "trainable": true, "dtype": "float32", "units": 95, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "notes", "inbound_nodes": [[["dropout_3", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "Dense", "config": {"name": "vels", "trainable": true, "dtype": "float32", "units": 125, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "vels", "inbound_nodes": [[["dropout_3", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Dense", "config": {"name": "times", "trainable": true, "dtype": "float32", "units": 358, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "times", "inbound_nodes": [[["dropout_3", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "Dense", "config": {"name": "lengths", "trainable": true, "dtype": "float32", "units": 1964, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "lengths", "inbound_nodes": [[["dropout_3", 0, 0, {}]]], "shared_object_id": 27}], "input_layers": [["input_2", 0, 0]], "output_layers": [["notes", 0, 0], ["vels", 0, 0], ["times", 0, 0], ["lengths", 0, 0]]}}}
ó"ð
_tf_keras_input_layerÐ{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [1, null, 256]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [1, null, 256]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
	

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"Û
_tf_keras_layerÁ{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1024, "activation": "tanh", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_2", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [1, null, 256]}}
ª
regularization_losses
	variables
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerÿ{"name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["dense_1", 0, 0, {}]]], "shared_object_id": 4}
Ø
cell

state_spec
regularization_losses
	variables
trainable_variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"­
_tf_keras_rnn_layer{"name": "gru_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": true, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": true, "unroll": false, "time_major": false, "units": 512, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "inbound_nodes": [[["dropout_2", 0, 0, {}]]], "shared_object_id": 9, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [1, null, 1024]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 31}], "build_input_shape": {"class_name": "TensorShape", "items": [1, null, 1024]}}
×
 cell
!
state_spec
"regularization_losses
#	variables
$trainable_variables
%	keras_api
__call__
+&call_and_return_all_conditional_losses"¬
_tf_keras_rnn_layer{"name": "gru_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": true, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru_3", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": true, "unroll": false, "time_major": false, "units": 1024, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "inbound_nodes": [[["gru_2", 0, 0, {}]]], "shared_object_id": 14, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [1, null, 512]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 32}], "build_input_shape": {"class_name": "TensorShape", "items": [1, null, 512]}}
©
&regularization_losses
'	variables
(trainable_variables
)	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerþ{"name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "inbound_nodes": [[["gru_3", 0, 0, {}]]], "shared_object_id": 15}
	

*kernel
+bias
,regularization_losses
-	variables
.trainable_variables
/	keras_api
__call__
+&call_and_return_all_conditional_losses"Þ
_tf_keras_layerÄ{"name": "notes", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "notes", "trainable": true, "dtype": "float32", "units": 95, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_3", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [1, null, 1024]}}
	

0kernel
1bias
2regularization_losses
3	variables
4trainable_variables
5	keras_api
__call__
+ &call_and_return_all_conditional_losses"Ý
_tf_keras_layerÃ{"name": "vels", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "vels", "trainable": true, "dtype": "float32", "units": 125, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_3", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [1, null, 1024]}}
	

6kernel
7bias
8regularization_losses
9	variables
:trainable_variables
;	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses"ß
_tf_keras_layerÅ{"name": "times", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "times", "trainable": true, "dtype": "float32", "units": 358, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_3", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [1, null, 1024]}}
	

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
£__call__
+¤&call_and_return_all_conditional_losses"ä
_tf_keras_layerÊ{"name": "lengths", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "lengths", "trainable": true, "dtype": "float32", "units": 1964, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_3", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [1, null, 1024]}}
 "
trackable_list_wrapper

0
1
B2
C3
D4
E5
F6
G7
*8
+9
010
111
612
713
<14
=15"
trackable_list_wrapper

0
1
B2
C3
D4
E5
F6
G7
*8
+9
010
111
612
713
<14
=15"
trackable_list_wrapper
Î
Hmetrics
regularization_losses

Ilayers
	variables
Jnon_trainable_variables
trainable_variables
Klayer_metrics
Llayer_regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
¥serving_default"
signature_map
": 
2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
°
Mmetrics
regularization_losses

Nlayers
	variables
Onon_trainable_variables
trainable_variables
Player_metrics
Qlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Rmetrics
regularization_losses

Slayers
	variables
Tnon_trainable_variables
trainable_variables
Ulayer_metrics
Vlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
	

Bkernel
Crecurrent_kernel
Dbias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
¦__call__
+§&call_and_return_all_conditional_losses"Ã
_tf_keras_layer©{"name": "gru_cell_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell_2", "trainable": true, "dtype": "float32", "units": 512, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 8}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
¼
regularization_losses
[metrics

\layers
	variables
]non_trainable_variables
trainable_variables

^states
_layer_metrics
`layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
	

Ekernel
Frecurrent_kernel
Gbias
aregularization_losses
b	variables
ctrainable_variables
d	keras_api
¨__call__
+©&call_and_return_all_conditional_losses"È
_tf_keras_layer®{"name": "gru_cell_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell_3", "trainable": true, "dtype": "float32", "units": 1024, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 13}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
E0
F1
G2"
trackable_list_wrapper
5
E0
F1
G2"
trackable_list_wrapper
¼
"regularization_losses
emetrics

flayers
#	variables
gnon_trainable_variables
$trainable_variables

hstates
ilayer_metrics
jlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
kmetrics
&regularization_losses

llayers
'	variables
mnon_trainable_variables
(trainable_variables
nlayer_metrics
olayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	_2notes/kernel
:_2
notes/bias
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
°
pmetrics
,regularization_losses

qlayers
-	variables
rnon_trainable_variables
.trainable_variables
slayer_metrics
tlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	}2vels/kernel
:}2	vels/bias
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
°
umetrics
2regularization_losses

vlayers
3	variables
wnon_trainable_variables
4trainable_variables
xlayer_metrics
ylayer_regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
 :
æ2times/kernel
:æ2
times/bias
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
°
zmetrics
8regularization_losses

{layers
9	variables
|non_trainable_variables
:trainable_variables
}layer_metrics
~layer_regularization_losses
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses"
_generic_user_object
": 
¬2lengths/kernel
:¬2lengths/bias
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
´
metrics
>regularization_losses
layers
?	variables
non_trainable_variables
@trainable_variables
layer_metrics
 layer_regularization_losses
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
+:)
2gru_2/gru_cell_2/kernel
5:3
2!gru_2/gru_cell_2/recurrent_kernel
$:"2gru_2/gru_cell_2/bias
+:)
2gru_3/gru_cell_3/kernel
5:3
2!gru_3/gru_cell_3/recurrent_kernel
$:"2gru_3/gru_cell_3/bias
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
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
5
B0
C1
D2"
trackable_list_wrapper
5
B0
C1
D2"
trackable_list_wrapper
µ
metrics
Wregularization_losses
layers
X	variables
non_trainable_variables
Ytrainable_variables
layer_metrics
 layer_regularization_losses
¦__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
E0
F1
G2"
trackable_list_wrapper
5
E0
F1
G2"
trackable_list_wrapper
µ
metrics
aregularization_losses
layers
b	variables
non_trainable_variables
ctrainable_variables
layer_metrics
 layer_regularization_losses
¨__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
 0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
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
!:	2gru_2/Variable
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
!:	2gru_3/Variable
ê2ç
'__inference_model_1_layer_call_fn_10629
'__inference_model_1_layer_call_fn_11496
'__inference_model_1_layer_call_fn_11543
'__inference_model_1_layer_call_fn_11296À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
B__inference_model_1_layer_call_and_return_conditional_losses_12001
B__inference_model_1_layer_call_and_return_conditional_losses_12473
B__inference_model_1_layer_call_and_return_conditional_losses_11348
B__inference_model_1_layer_call_and_return_conditional_losses_11400À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
__inference__wrapped_model_8650»
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *+¢(
&#
input_2ÿÿÿÿÿÿÿÿÿ
Ñ2Î
'__inference_dense_1_layer_call_fn_12482¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_1_layer_call_and_return_conditional_losses_12513¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
)__inference_dropout_2_layer_call_fn_12518
)__inference_dropout_2_layer_call_fn_12523´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout_2_layer_call_and_return_conditional_losses_12528
D__inference_dropout_2_layer_call_and_return_conditional_losses_12540´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
÷2ô
%__inference_gru_2_layer_call_fn_12553
%__inference_gru_2_layer_call_fn_12566
%__inference_gru_2_layer_call_fn_12579
%__inference_gru_2_layer_call_fn_12592Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ã2à
@__inference_gru_2_layer_call_and_return_conditional_losses_12755
@__inference_gru_2_layer_call_and_return_conditional_losses_12918
@__inference_gru_2_layer_call_and_return_conditional_losses_13081
@__inference_gru_2_layer_call_and_return_conditional_losses_13244Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
÷2ô
%__inference_gru_3_layer_call_fn_13257
%__inference_gru_3_layer_call_fn_13270
%__inference_gru_3_layer_call_fn_13283
%__inference_gru_3_layer_call_fn_13296Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ã2à
@__inference_gru_3_layer_call_and_return_conditional_losses_13459
@__inference_gru_3_layer_call_and_return_conditional_losses_13622
@__inference_gru_3_layer_call_and_return_conditional_losses_13785
@__inference_gru_3_layer_call_and_return_conditional_losses_13948Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
)__inference_dropout_3_layer_call_fn_13953
)__inference_dropout_3_layer_call_fn_13958´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout_3_layer_call_and_return_conditional_losses_13963
D__inference_dropout_3_layer_call_and_return_conditional_losses_13975´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ï2Ì
%__inference_notes_layer_call_fn_13984¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_notes_layer_call_and_return_conditional_losses_14014¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Î2Ë
$__inference_vels_layer_call_fn_14023¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
é2æ
?__inference_vels_layer_call_and_return_conditional_losses_14053¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ï2Ì
%__inference_times_layer_call_fn_14062¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_times_layer_call_and_return_conditional_losses_14092¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_lengths_layer_call_fn_14101¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_lengths_layer_call_and_return_conditional_losses_14131¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÊBÇ
#__inference_signature_wrapper_11449input_2"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
*__inference_gru_cell_2_layer_call_fn_14145
*__inference_gru_cell_2_layer_call_fn_14159
*__inference_gru_cell_2_layer_call_fn_14223
*__inference_gru_cell_2_layer_call_fn_14287¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
à2Ý
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14337
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14383
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14429
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14479¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ô2ñ
*__inference_gru_cell_3_layer_call_fn_14493
*__inference_gru_cell_3_layer_call_fn_14507
*__inference_gru_cell_3_layer_call_fn_14571
*__inference_gru_cell_3_layer_call_fn_14635¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
à2Ý
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14685
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14731
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14777
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14827¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ´
__inference__wrapped_model_8650BDCEGF<=6701*+5¢2
+¢(
&#
input_2ÿÿÿÿÿÿÿÿÿ
ª "Àª¼
1
lengths&#
lengthsÿÿÿÿÿÿÿÿÿ¬
,
notes# 
notesÿÿÿÿÿÿÿÿÿ_
-
times$!
timesÿÿÿÿÿÿÿÿÿæ
*
vels"
velsÿÿÿÿÿÿÿÿÿ}¬
B__inference_dense_1_layer_call_and_return_conditional_losses_12513f4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
'__inference_dense_1_layer_call_fn_12482Y4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ®
D__inference_dropout_2_layer_call_and_return_conditional_losses_12528f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ®
D__inference_dropout_2_layer_call_and_return_conditional_losses_12540f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_dropout_2_layer_call_fn_12518Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_dropout_2_layer_call_fn_12523Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ®
D__inference_dropout_3_layer_call_and_return_conditional_losses_13963f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ®
D__inference_dropout_3_layer_call_and_return_conditional_losses_13975f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_dropout_3_layer_call_fn_13953Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_dropout_3_layer_call_fn_13958Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿÀ
@__inference_gru_2_layer_call_and_return_conditional_losses_12755|BDCG¢D
=¢:
,)
'$
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 À
@__inference_gru_2_layer_call_and_return_conditional_losses_12918|BDCG¢D
=¢:
,)
'$
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ¹
@__inference_gru_2_layer_call_and_return_conditional_losses_13081uBDC@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ¹
@__inference_gru_2_layer_call_and_return_conditional_losses_13244uBDC@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
%__inference_gru_2_layer_call_fn_12553oBDCG¢D
=¢:
,)
'$
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_gru_2_layer_call_fn_12566oBDCG¢D
=¢:
,)
'$
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_gru_2_layer_call_fn_12579hBDC@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_gru_2_layer_call_fn_12592hBDC@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÀ
@__inference_gru_3_layer_call_and_return_conditional_losses_13459|EGFG¢D
=¢:
,)
'$
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 À
@__inference_gru_3_layer_call_and_return_conditional_losses_13622|EGFG¢D
=¢:
,)
'$
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ¹
@__inference_gru_3_layer_call_and_return_conditional_losses_13785uEGF@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ¹
@__inference_gru_3_layer_call_and_return_conditional_losses_13948uEGF@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
%__inference_gru_3_layer_call_fn_13257oEGFG¢D
=¢:
,)
'$
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_gru_3_layer_call_fn_13270oEGFG¢D
=¢:
,)
'$
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_gru_3_layer_call_fn_13283hEGF@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
%__inference_gru_3_layer_call_fn_13296hEGF@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿð
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14337¦BDCi¢f
_¢\

inputs	
<¢9
74	"¢
ú	


jstates/0VariableSpec
p 
ª "4¢1
*¢'

0/0


0/1/0
 á
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14383BDCL¢I
B¢?

inputs	
¢

states/0	
p 
ª "B¢?
8¢5

0/0	


0/1/0	
 á
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14429BDCL¢I
B¢?

inputs	
¢

states/0	
p
ª "B¢?
8¢5

0/0	


0/1/0	
 ð
E__inference_gru_cell_2_layer_call_and_return_conditional_losses_14479¦BDCi¢f
_¢\

inputs	
<¢9
74	"¢
ú	


jstates/0VariableSpec
p
ª "4¢1
*¢'

0/0


0/1/0
 ¸
*__inference_gru_cell_2_layer_call_fn_14145BDCL¢I
B¢?

inputs	
¢

states/0	
p 
ª "4¢1

0	


1/0	¸
*__inference_gru_cell_2_layer_call_fn_14159BDCL¢I
B¢?

inputs	
¢

states/0	
p
ª "4¢1

0	


1/0	Ç
*__inference_gru_cell_2_layer_call_fn_14223BDCi¢f
_¢\

inputs	
<¢9
74	"¢
ú	


jstates/0VariableSpec
p 
ª "&¢#
	
0


1/0Ç
*__inference_gru_cell_2_layer_call_fn_14287BDCi¢f
_¢\

inputs	
<¢9
74	"¢
ú	


jstates/0VariableSpec
p
ª "&¢#
	
0


1/0ð
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14685¦EGFi¢f
_¢\

inputs	
<¢9
74	"¢
ú	


jstates/0VariableSpec
p 
ª "4¢1
*¢'

0/0


0/1/0
 á
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14731EGFL¢I
B¢?

inputs	
¢

states/0	
p 
ª "B¢?
8¢5

0/0	


0/1/0	
 á
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14777EGFL¢I
B¢?

inputs	
¢

states/0	
p
ª "B¢?
8¢5

0/0	


0/1/0	
 ð
E__inference_gru_cell_3_layer_call_and_return_conditional_losses_14827¦EGFi¢f
_¢\

inputs	
<¢9
74	"¢
ú	


jstates/0VariableSpec
p
ª "4¢1
*¢'

0/0


0/1/0
 ¸
*__inference_gru_cell_3_layer_call_fn_14493EGFL¢I
B¢?

inputs	
¢

states/0	
p 
ª "4¢1

0	


1/0	¸
*__inference_gru_cell_3_layer_call_fn_14507EGFL¢I
B¢?

inputs	
¢

states/0	
p
ª "4¢1

0	


1/0	Ç
*__inference_gru_cell_3_layer_call_fn_14571EGFi¢f
_¢\

inputs	
<¢9
74	"¢
ú	


jstates/0VariableSpec
p 
ª "&¢#
	
0


1/0Ç
*__inference_gru_cell_3_layer_call_fn_14635EGFi¢f
_¢\

inputs	
<¢9
74	"¢
ú	


jstates/0VariableSpec
p
ª "&¢#
	
0


1/0¬
B__inference_lengths_layer_call_and_return_conditional_losses_14131f<=4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ¬
 
'__inference_lengths_layer_call_fn_14101Y<=4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¬½
B__inference_model_1_layer_call_and_return_conditional_losses_11348öBDCEGF<=6701*+=¢:
3¢0
&#
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "¢

!
0/0ÿÿÿÿÿÿÿÿÿ_
!
0/1ÿÿÿÿÿÿÿÿÿ}
"
0/2ÿÿÿÿÿÿÿÿÿæ
"
0/3ÿÿÿÿÿÿÿÿÿ¬
 ½
B__inference_model_1_layer_call_and_return_conditional_losses_11400öBDCEGF<=6701*+=¢:
3¢0
&#
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª "¢

!
0/0ÿÿÿÿÿÿÿÿÿ_
!
0/1ÿÿÿÿÿÿÿÿÿ}
"
0/2ÿÿÿÿÿÿÿÿÿæ
"
0/3ÿÿÿÿÿÿÿÿÿ¬
 ¼
B__inference_model_1_layer_call_and_return_conditional_losses_12001õBDCEGF<=6701*+<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "¢

!
0/0ÿÿÿÿÿÿÿÿÿ_
!
0/1ÿÿÿÿÿÿÿÿÿ}
"
0/2ÿÿÿÿÿÿÿÿÿæ
"
0/3ÿÿÿÿÿÿÿÿÿ¬
 ¼
B__inference_model_1_layer_call_and_return_conditional_losses_12473õBDCEGF<=6701*+<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "¢

!
0/0ÿÿÿÿÿÿÿÿÿ_
!
0/1ÿÿÿÿÿÿÿÿÿ}
"
0/2ÿÿÿÿÿÿÿÿÿæ
"
0/3ÿÿÿÿÿÿÿÿÿ¬
 
'__inference_model_1_layer_call_fn_10629âBDCEGF<=6701*+=¢:
3¢0
&#
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "

0ÿÿÿÿÿÿÿÿÿ_

1ÿÿÿÿÿÿÿÿÿ}
 
2ÿÿÿÿÿÿÿÿÿæ
 
3ÿÿÿÿÿÿÿÿÿ¬
'__inference_model_1_layer_call_fn_11296âBDCEGF<=6701*+=¢:
3¢0
&#
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª "

0ÿÿÿÿÿÿÿÿÿ_

1ÿÿÿÿÿÿÿÿÿ}
 
2ÿÿÿÿÿÿÿÿÿæ
 
3ÿÿÿÿÿÿÿÿÿ¬
'__inference_model_1_layer_call_fn_11496áBDCEGF<=6701*+<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "

0ÿÿÿÿÿÿÿÿÿ_

1ÿÿÿÿÿÿÿÿÿ}
 
2ÿÿÿÿÿÿÿÿÿæ
 
3ÿÿÿÿÿÿÿÿÿ¬
'__inference_model_1_layer_call_fn_11543áBDCEGF<=6701*+<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "

0ÿÿÿÿÿÿÿÿÿ_

1ÿÿÿÿÿÿÿÿÿ}
 
2ÿÿÿÿÿÿÿÿÿæ
 
3ÿÿÿÿÿÿÿÿÿ¬©
@__inference_notes_layer_call_and_return_conditional_losses_14014e*+4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ_
 
%__inference_notes_layer_call_fn_13984X*+4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ_Ã
#__inference_signature_wrapper_11449BDCEGF<=6701*+@¢=
¢ 
6ª3
1
input_2&#
input_2ÿÿÿÿÿÿÿÿÿ"Àª¼
1
lengths&#
lengthsÿÿÿÿÿÿÿÿÿ¬
,
notes# 
notesÿÿÿÿÿÿÿÿÿ_
-
times$!
timesÿÿÿÿÿÿÿÿÿæ
*
vels"
velsÿÿÿÿÿÿÿÿÿ}ª
@__inference_times_layer_call_and_return_conditional_losses_14092f674¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿæ
 
%__inference_times_layer_call_fn_14062Y674¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿæ¨
?__inference_vels_layer_call_and_return_conditional_losses_14053e014¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ}
 
$__inference_vels_layer_call_fn_14023X014¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ}