ª¿
Ø®
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.1-0-g85c8b2a817f8È

conv2d_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_41/kernel
}
$conv2d_41/kernel/Read/ReadVariableOpReadVariableOpconv2d_41/kernel*&
_output_shapes
:*
dtype0
t
conv2d_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_41/bias
m
"conv2d_41/bias/Read/ReadVariableOpReadVariableOpconv2d_41/bias*
_output_shapes
:*
dtype0

conv2d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_42/kernel
}
$conv2d_42/kernel/Read/ReadVariableOpReadVariableOpconv2d_42/kernel*&
_output_shapes
: *
dtype0
t
conv2d_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_42/bias
m
"conv2d_42/bias/Read/ReadVariableOpReadVariableOpconv2d_42/bias*
_output_shapes
: *
dtype0

conv2d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_43/kernel
}
$conv2d_43/kernel/Read/ReadVariableOpReadVariableOpconv2d_43/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_43/bias
m
"conv2d_43/bias/Read/ReadVariableOpReadVariableOpconv2d_43/bias*
_output_shapes
:@*
dtype0
}
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:²* 
shared_namedense_41/kernel
v
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*!
_output_shapes
:²*
dtype0
s
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_41/bias
l
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes	
:*
dtype0

batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_13/gamma

0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes	
:*
dtype0

batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_13/beta

/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes	
:*
dtype0

"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_13/moving_mean

6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes	
:*
dtype0
¥
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_13/moving_variance

:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes	
:*
dtype0
{
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 * 
shared_namedense_42/kernel
t
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel*
_output_shapes
:	 *
dtype0
r
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_42/bias
k
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
_output_shapes
: *
dtype0
z
dense_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_43/kernel
s
#dense_43/kernel/Read/ReadVariableOpReadVariableOpdense_43/kernel*
_output_shapes

: *
dtype0
r
dense_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_43/bias
k
!dense_43/bias/Read/ReadVariableOpReadVariableOpdense_43/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
t
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nametrue_positives_1
m
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
: *
dtype0
v
false_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_namefalse_positives_1
o
%false_positives_1/Read/ReadVariableOpReadVariableOpfalse_positives_1*
_output_shapes
: *
dtype0
r
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namefalse_negatives
k
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
: *
dtype0
|
weights_intermediateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameweights_intermediate
u
(weights_intermediate/Read/ReadVariableOpReadVariableOpweights_intermediate*
_output_shapes
: *
dtype0

Adam/conv2d_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_41/kernel/m

+Adam/conv2d_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_41/bias/m
{
)Adam/conv2d_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_42/kernel/m

+Adam/conv2d_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_42/bias/m
{
)Adam/conv2d_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_43/kernel/m

+Adam/conv2d_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_43/bias/m
{
)Adam/conv2d_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:²*'
shared_nameAdam/dense_41/kernel/m

*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m*!
_output_shapes
:²*
dtype0

Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/m
z
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_13/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_13/gamma/m

7Adam/batch_normalization_13/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_13/gamma/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_13/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_13/beta/m

6Adam/batch_normalization_13/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_13/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameAdam/dense_42/kernel/m

*Adam/dense_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/m*
_output_shapes
:	 *
dtype0

Adam/dense_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_42/bias/m
y
(Adam/dense_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/m*
_output_shapes
: *
dtype0

Adam/dense_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_43/kernel/m

*Adam/dense_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/m*
_output_shapes

: *
dtype0

Adam/dense_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_43/bias/m
y
(Adam/dense_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_41/kernel/v

+Adam/conv2d_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_41/bias/v
{
)Adam/conv2d_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_41/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_42/kernel/v

+Adam/conv2d_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_42/bias/v
{
)Adam/conv2d_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_42/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_43/kernel/v

+Adam/conv2d_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_43/bias/v
{
)Adam/conv2d_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_43/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:²*'
shared_nameAdam/dense_41/kernel/v

*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v*!
_output_shapes
:²*
dtype0

Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_41/bias/v
z
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_13/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_13/gamma/v

7Adam/batch_normalization_13/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_13/gamma/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_13/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_13/beta/v

6Adam/batch_normalization_13/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_13/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameAdam/dense_42/kernel/v

*Adam/dense_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/v*
_output_shapes
:	 *
dtype0

Adam/dense_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_42/bias/v
y
(Adam/dense_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/v*
_output_shapes
: *
dtype0

Adam/dense_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_43/kernel/v

*Adam/dense_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/v*
_output_shapes

: *
dtype0

Adam/dense_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_43/bias/v
y
(Adam/dense_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Á]
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ü\
valueò\Bï\ Bè\
Ó
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
 
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
R
$	variables
%regularization_losses
&trainable_variables
'	keras_api
h

(kernel
)bias
*	variables
+regularization_losses
,trainable_variables
-	keras_api
R
.	variables
/regularization_losses
0trainable_variables
1	keras_api
R
2	variables
3regularization_losses
4trainable_variables
5	keras_api
h

6kernel
7bias
8	variables
9regularization_losses
:trainable_variables
;	keras_api
R
<	variables
=regularization_losses
>trainable_variables
?	keras_api

@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
h

Ikernel
Jbias
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
h

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
Ø
Uiter

Vbeta_1

Wbeta_2
	Xdecay
Ylearning_ratem®m¯m°m±(m²)m³6m´7mµAm¶Bm·Im¸Jm¹OmºPm»v¼v½v¾v¿(vÀ)vÁ6vÂ7vÃAvÄBvÅIvÆJvÇOvÈPvÉ
v
0
1
2
3
(4
)5
66
77
A8
B9
C10
D11
I12
J13
O14
P15
 
f
0
1
2
3
(4
)5
66
77
A8
B9
I10
J11
O12
P13
­
Zmetrics

[layers
	variables
regularization_losses
\non_trainable_variables
]layer_regularization_losses
^layer_metrics
trainable_variables
 
\Z
VARIABLE_VALUEconv2d_41/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_41/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
_metrics

`layers
	variables
regularization_losses
anon_trainable_variables
blayer_regularization_losses
clayer_metrics
trainable_variables
 
 
 
­
dmetrics

elayers
	variables
regularization_losses
fnon_trainable_variables
glayer_regularization_losses
hlayer_metrics
trainable_variables
\Z
VARIABLE_VALUEconv2d_42/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_42/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
imetrics

jlayers
 	variables
!regularization_losses
knon_trainable_variables
llayer_regularization_losses
mlayer_metrics
"trainable_variables
 
 
 
­
nmetrics

olayers
$	variables
%regularization_losses
pnon_trainable_variables
qlayer_regularization_losses
rlayer_metrics
&trainable_variables
\Z
VARIABLE_VALUEconv2d_43/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_43/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1
 

(0
)1
­
smetrics

tlayers
*	variables
+regularization_losses
unon_trainable_variables
vlayer_regularization_losses
wlayer_metrics
,trainable_variables
 
 
 
­
xmetrics

ylayers
.	variables
/regularization_losses
znon_trainable_variables
{layer_regularization_losses
|layer_metrics
0trainable_variables
 
 
 
¯
}metrics

~layers
2	variables
3regularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
4trainable_variables
[Y
VARIABLE_VALUEdense_41/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_41/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
²
metrics
layers
8	variables
9regularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
:trainable_variables
 
 
 
²
metrics
layers
<	variables
=regularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
>trainable_variables
 
ge
VARIABLE_VALUEbatch_normalization_13/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_13/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_13/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_13/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

A0
B1
C2
D3
 

A0
B1
²
metrics
layers
E	variables
Fregularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
Gtrainable_variables
[Y
VARIABLE_VALUEdense_42/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_42/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

I0
J1
 

I0
J1
²
metrics
layers
K	variables
Lregularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
Mtrainable_variables
[Y
VARIABLE_VALUEdense_43/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_43/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

O0
P1
 

O0
P1
²
metrics
layers
Q	variables
Rregularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
Strainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
^
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
10
11
12

C0
D1
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

C0
D1
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
8

total

count
 	variables
¡	keras_api
\
¢
thresholds
£true_positives
¤false_positives
¥	variables
¦	keras_api

§
init_shape
¨true_positives
©false_positives
ªfalse_negatives
«weights_intermediate
¬	variables
­	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

 	variables
 
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUE

£0
¤1

¥	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEfalse_positives_1>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEweights_intermediateCkeras_api/metrics/2/weights_intermediate/.ATTRIBUTES/VARIABLE_VALUE
 
¨0
©1
ª2
«3

¬	variables
}
VARIABLE_VALUEAdam/conv2d_41/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_41/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_42/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_42/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_43/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_43/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_41/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_41/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_13/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_13/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_42/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_42/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_43/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_43/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_41/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_41/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_42/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_42/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_43/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_43/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_41/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_41/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_13/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_13/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_42/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_42/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_43/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_43/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_14Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ
£
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_14conv2d_41/kernelconv2d_41/biasconv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasdense_41/kerneldense_41/bias&batch_normalization_13/moving_variancebatch_normalization_13/gamma"batch_normalization_13/moving_meanbatch_normalization_13/betadense_42/kerneldense_42/biasdense_43/kerneldense_43/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_454698
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_41/kernel/Read/ReadVariableOp"conv2d_41/bias/Read/ReadVariableOp$conv2d_42/kernel/Read/ReadVariableOp"conv2d_42/bias/Read/ReadVariableOp$conv2d_43/kernel/Read/ReadVariableOp"conv2d_43/bias/Read/ReadVariableOp#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOp0batch_normalization_13/gamma/Read/ReadVariableOp/batch_normalization_13/beta/Read/ReadVariableOp6batch_normalization_13/moving_mean/Read/ReadVariableOp:batch_normalization_13/moving_variance/Read/ReadVariableOp#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOp#dense_43/kernel/Read/ReadVariableOp!dense_43/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp%false_positives_1/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp(weights_intermediate/Read/ReadVariableOp+Adam/conv2d_41/kernel/m/Read/ReadVariableOp)Adam/conv2d_41/bias/m/Read/ReadVariableOp+Adam/conv2d_42/kernel/m/Read/ReadVariableOp)Adam/conv2d_42/bias/m/Read/ReadVariableOp+Adam/conv2d_43/kernel/m/Read/ReadVariableOp)Adam/conv2d_43/bias/m/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp7Adam/batch_normalization_13/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_13/beta/m/Read/ReadVariableOp*Adam/dense_42/kernel/m/Read/ReadVariableOp(Adam/dense_42/bias/m/Read/ReadVariableOp*Adam/dense_43/kernel/m/Read/ReadVariableOp(Adam/dense_43/bias/m/Read/ReadVariableOp+Adam/conv2d_41/kernel/v/Read/ReadVariableOp)Adam/conv2d_41/bias/v/Read/ReadVariableOp+Adam/conv2d_42/kernel/v/Read/ReadVariableOp)Adam/conv2d_42/bias/v/Read/ReadVariableOp+Adam/conv2d_43/kernel/v/Read/ReadVariableOp)Adam/conv2d_43/bias/v/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOp7Adam/batch_normalization_13/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_13/beta/v/Read/ReadVariableOp*Adam/dense_42/kernel/v/Read/ReadVariableOp(Adam/dense_42/bias/v/Read/ReadVariableOp*Adam/dense_43/kernel/v/Read/ReadVariableOp(Adam/dense_43/bias/v/Read/ReadVariableOpConst*F
Tin?
=2;	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_455393
¥
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_41/kernelconv2d_41/biasconv2d_42/kernelconv2d_42/biasconv2d_43/kernelconv2d_43/biasdense_41/kerneldense_41/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_variancedense_42/kerneldense_42/biasdense_43/kerneldense_43/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttrue_positivesfalse_positivestrue_positives_1false_positives_1false_negativesweights_intermediateAdam/conv2d_41/kernel/mAdam/conv2d_41/bias/mAdam/conv2d_42/kernel/mAdam/conv2d_42/bias/mAdam/conv2d_43/kernel/mAdam/conv2d_43/bias/mAdam/dense_41/kernel/mAdam/dense_41/bias/m#Adam/batch_normalization_13/gamma/m"Adam/batch_normalization_13/beta/mAdam/dense_42/kernel/mAdam/dense_42/bias/mAdam/dense_43/kernel/mAdam/dense_43/bias/mAdam/conv2d_41/kernel/vAdam/conv2d_41/bias/vAdam/conv2d_42/kernel/vAdam/conv2d_42/bias/vAdam/conv2d_43/kernel/vAdam/conv2d_43/bias/vAdam/dense_41/kernel/vAdam/dense_41/bias/v#Adam/batch_normalization_13/gamma/v"Adam/batch_normalization_13/beta/vAdam/dense_42/kernel/vAdam/dense_42/bias/vAdam/dense_43/kernel/vAdam/dense_43/bias/v*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_455574ã

e
F__inference_dropout_47_layer_call_and_return_conditional_losses_455017

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constu
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¶
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yÀ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout/Cast|
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout/Mul_1g
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identity"
identityIdentity:output:0*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ²:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 
_user_specified_nameinputs
8
ù
D__inference_model_12_layer_call_and_return_conditional_losses_454480
input_14
conv2d_41_454435
conv2d_41_454437
conv2d_42_454441
conv2d_42_454443
conv2d_43_454447
conv2d_43_454449
dense_41_454454
dense_41_454456!
batch_normalization_13_454460!
batch_normalization_13_454462!
batch_normalization_13_454464!
batch_normalization_13_454466
dense_42_454469
dense_42_454471
dense_43_454474
dense_43_454476
identity¢.batch_normalization_13/StatefulPartitionedCall¢!conv2d_41/StatefulPartitionedCall¢!conv2d_42/StatefulPartitionedCall¢!conv2d_43/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCall¢ dense_42/StatefulPartitionedCall¢ dense_43/StatefulPartitionedCall¨
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCallinput_14conv2d_41_454435conv2d_41_454437*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_4541712#
!conv2d_41/StatefulPartitionedCall
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿªª* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_4539982"
 max_pooling2d_31/PartitionedCallÉ
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_42_454441conv2d_42_454443*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_4541992#
!conv2d_42/StatefulPartitionedCall
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_4540102"
 max_pooling2d_32/PartitionedCallÇ
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_43_454447conv2d_43_454449*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_4542272#
!conv2d_43/StatefulPartitionedCall
flatten_13/PartitionedCallPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_4542492
flatten_13/PartitionedCallü
dropout_47/PartitionedCallPartitionedCall#flatten_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_4542742
dropout_47/PartitionedCallµ
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#dropout_47/PartitionedCall:output:0dense_41_454454dense_41_454456*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_4542972"
 dense_41/StatefulPartitionedCall
dropout_48/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_48_layer_call_and_return_conditional_losses_4543302
dropout_48/PartitionedCall½
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_48/PartitionedCall:output:0batch_normalization_13_454460batch_normalization_13_454462batch_normalization_13_454464batch_normalization_13_454466*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_45414520
.batch_normalization_13/StatefulPartitionedCallÈ
 dense_42/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_42_454469dense_42_454471*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_4543882"
 dense_42/StatefulPartitionedCallº
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_454474dense_43_454476*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_4544152"
 dense_43/StatefulPartitionedCall
IdentityIdentity)dense_43/StatefulPartitionedCall:output:0/^batch_normalization_13/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_14
Ñ
d
F__inference_dropout_47_layer_call_and_return_conditional_losses_454274

inputs

identity_1\
IdentityIdentityinputs*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identityk

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identity_1"!

identity_1Identity_1:output:0*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ²:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 
_user_specified_nameinputs

h
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_453998

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
M
1__inference_max_pooling2d_31_layer_call_fn_454004

inputs
identityð
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_4539982
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
d
+__inference_dropout_47_layer_call_fn_455027

inputs
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_4542692
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identity"
identityIdentity:output:0*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ²22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 
_user_specified_nameinputs
Ü

Þ
E__inference_conv2d_42_layer_call_and_return_conditional_losses_454199

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2
Relu¡
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿªª::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿªª
 
_user_specified_nameinputs

e
F__inference_dropout_47_layer_call_and_return_conditional_losses_454269

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constu
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape¶
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/yÀ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout/Cast|
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout/Mul_1g
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identity"
identityIdentity:output:0*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ²:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 
_user_specified_nameinputs
À
ª
7__inference_batch_normalization_13_layer_call_fn_455160

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4541452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À
b
F__inference_flatten_13_layer_call_and_return_conditional_losses_455000

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ Ù 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ66@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@
 
_user_specified_nameinputs
ß
~
)__inference_dense_43_layer_call_fn_455199

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_4544152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ö	
Ý
D__inference_dense_43_layer_call_and_return_conditional_losses_455190

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
;
Á
D__inference_model_12_layer_call_and_return_conditional_losses_454531

inputs
conv2d_41_454486
conv2d_41_454488
conv2d_42_454492
conv2d_42_454494
conv2d_43_454498
conv2d_43_454500
dense_41_454505
dense_41_454507!
batch_normalization_13_454511!
batch_normalization_13_454513!
batch_normalization_13_454515!
batch_normalization_13_454517
dense_42_454520
dense_42_454522
dense_43_454525
dense_43_454527
identity¢.batch_normalization_13/StatefulPartitionedCall¢!conv2d_41/StatefulPartitionedCall¢!conv2d_42/StatefulPartitionedCall¢!conv2d_43/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCall¢ dense_42/StatefulPartitionedCall¢ dense_43/StatefulPartitionedCall¢"dropout_47/StatefulPartitionedCall¢"dropout_48/StatefulPartitionedCall¦
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_41_454486conv2d_41_454488*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_4541712#
!conv2d_41/StatefulPartitionedCall
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿªª* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_4539982"
 max_pooling2d_31/PartitionedCallÉ
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_42_454492conv2d_42_454494*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_4541992#
!conv2d_42/StatefulPartitionedCall
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_4540102"
 max_pooling2d_32/PartitionedCallÇ
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_43_454498conv2d_43_454500*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_4542272#
!conv2d_43/StatefulPartitionedCall
flatten_13/PartitionedCallPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_4542492
flatten_13/PartitionedCall
"dropout_47/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_4542692$
"dropout_47/StatefulPartitionedCall½
 dense_41/StatefulPartitionedCallStatefulPartitionedCall+dropout_47/StatefulPartitionedCall:output:0dense_41_454505dense_41_454507*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_4542972"
 dense_41/StatefulPartitionedCall¾
"dropout_48/StatefulPartitionedCallStatefulPartitionedCall)dense_41/StatefulPartitionedCall:output:0#^dropout_47/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_48_layer_call_and_return_conditional_losses_4543252$
"dropout_48/StatefulPartitionedCallÃ
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_48/StatefulPartitionedCall:output:0batch_normalization_13_454511batch_normalization_13_454513batch_normalization_13_454515batch_normalization_13_454517*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_45411220
.batch_normalization_13/StatefulPartitionedCallÈ
 dense_42/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_42_454520dense_42_454522*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_4543882"
 dense_42/StatefulPartitionedCallº
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_454525dense_43_454527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_4544152"
 dense_43/StatefulPartitionedCallÍ
IdentityIdentity)dense_43/StatefulPartitionedCall:output:0/^batch_normalization_13/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall#^dropout_47/StatefulPartitionedCall#^dropout_48/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2H
"dropout_47/StatefulPartitionedCall"dropout_47/StatefulPartitionedCall2H
"dropout_48/StatefulPartitionedCall"dropout_48/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
F__inference_dropout_48_layer_call_and_return_conditional_losses_455063

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â

×
)__inference_model_12_layer_call_fn_454566
input_14
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_12_layer_call_and_return_conditional_losses_4545312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_14
¼

Õ
)__inference_model_12_layer_call_fn_454897

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_12_layer_call_and_return_conditional_losses_4545312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
~
)__inference_dense_41_layer_call_fn_455051

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_4542972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ²::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 
_user_specified_nameinputs
¾
ª
7__inference_batch_normalization_13_layer_call_fn_455147

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_4541122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
M
1__inference_max_pooling2d_32_layer_call_fn_454016

inputs
identityð
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_4540102
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 0
É
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_455114

inputs
assignmovingavg_455089
assignmovingavg_1_455095)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/455089*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_455089*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpò
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/455089*
_output_shapes	
:2
AssignMovingAvg/subé
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/455089*
_output_shapes	
:2
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_455089AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/455089*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/455095*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_455095*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpü
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/455095*
_output_shapes	
:2
AssignMovingAvg_1/subó
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/455095*
_output_shapes	
:2
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_455095AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/455095*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1´
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö	
Ý
D__inference_dense_43_layer_call_and_return_conditional_losses_454415

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Í
d
F__inference_dropout_48_layer_call_and_return_conditional_losses_455068

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
G
+__inference_flatten_13_layer_call_fn_455005

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_4542492
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ66@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@
 
_user_specified_nameinputs
á
~
)__inference_dense_42_layer_call_fn_455179

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_4543882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ãn
ò
!__inference__wrapped_model_453992
input_145
1model_12_conv2d_41_conv2d_readvariableop_resource6
2model_12_conv2d_41_biasadd_readvariableop_resource5
1model_12_conv2d_42_conv2d_readvariableop_resource6
2model_12_conv2d_42_biasadd_readvariableop_resource5
1model_12_conv2d_43_conv2d_readvariableop_resource6
2model_12_conv2d_43_biasadd_readvariableop_resource4
0model_12_dense_41_matmul_readvariableop_resource5
1model_12_dense_41_biasadd_readvariableop_resourceE
Amodel_12_batch_normalization_13_batchnorm_readvariableop_resourceI
Emodel_12_batch_normalization_13_batchnorm_mul_readvariableop_resourceG
Cmodel_12_batch_normalization_13_batchnorm_readvariableop_1_resourceG
Cmodel_12_batch_normalization_13_batchnorm_readvariableop_2_resource4
0model_12_dense_42_matmul_readvariableop_resource5
1model_12_dense_42_biasadd_readvariableop_resource4
0model_12_dense_43_matmul_readvariableop_resource5
1model_12_dense_43_biasadd_readvariableop_resource
identity¢8model_12/batch_normalization_13/batchnorm/ReadVariableOp¢:model_12/batch_normalization_13/batchnorm/ReadVariableOp_1¢:model_12/batch_normalization_13/batchnorm/ReadVariableOp_2¢<model_12/batch_normalization_13/batchnorm/mul/ReadVariableOp¢)model_12/conv2d_41/BiasAdd/ReadVariableOp¢(model_12/conv2d_41/Conv2D/ReadVariableOp¢)model_12/conv2d_42/BiasAdd/ReadVariableOp¢(model_12/conv2d_42/Conv2D/ReadVariableOp¢)model_12/conv2d_43/BiasAdd/ReadVariableOp¢(model_12/conv2d_43/Conv2D/ReadVariableOp¢(model_12/dense_41/BiasAdd/ReadVariableOp¢'model_12/dense_41/MatMul/ReadVariableOp¢(model_12/dense_42/BiasAdd/ReadVariableOp¢'model_12/dense_42/MatMul/ReadVariableOp¢(model_12/dense_43/BiasAdd/ReadVariableOp¢'model_12/dense_43/MatMul/ReadVariableOpÎ
(model_12/conv2d_41/Conv2D/ReadVariableOpReadVariableOp1model_12_conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02*
(model_12/conv2d_41/Conv2D/ReadVariableOpá
model_12/conv2d_41/Conv2DConv2Dinput_140model_12/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ*
paddingVALID*
strides
2
model_12/conv2d_41/Conv2DÅ
)model_12/conv2d_41/BiasAdd/ReadVariableOpReadVariableOp2model_12_conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model_12/conv2d_41/BiasAdd/ReadVariableOpÖ
model_12/conv2d_41/BiasAddBiasAdd"model_12/conv2d_41/Conv2D:output:01model_12/conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2
model_12/conv2d_41/BiasAdd
model_12/conv2d_41/ReluRelu#model_12/conv2d_41/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2
model_12/conv2d_41/Reluç
!model_12/max_pooling2d_31/MaxPoolMaxPool%model_12/conv2d_41/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿªª*
ksize
*
paddingVALID*
strides
2#
!model_12/max_pooling2d_31/MaxPoolÎ
(model_12/conv2d_42/Conv2D/ReadVariableOpReadVariableOp1model_12_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02*
(model_12/conv2d_42/Conv2D/ReadVariableOp
model_12/conv2d_42/Conv2DConv2D*model_12/max_pooling2d_31/MaxPool:output:00model_12/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ *
paddingVALID*
strides
2
model_12/conv2d_42/Conv2DÅ
)model_12/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp2model_12_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)model_12/conv2d_42/BiasAdd/ReadVariableOpÖ
model_12/conv2d_42/BiasAddBiasAdd"model_12/conv2d_42/Conv2D:output:01model_12/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2
model_12/conv2d_42/BiasAdd
model_12/conv2d_42/ReluRelu#model_12/conv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2
model_12/conv2d_42/Reluå
!model_12/max_pooling2d_32/MaxPoolMaxPool%model_12/conv2d_42/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88 *
ksize
*
paddingVALID*
strides
2#
!model_12/max_pooling2d_32/MaxPoolÎ
(model_12/conv2d_43/Conv2D/ReadVariableOpReadVariableOp1model_12_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02*
(model_12/conv2d_43/Conv2D/ReadVariableOp
model_12/conv2d_43/Conv2DConv2D*model_12/max_pooling2d_32/MaxPool:output:00model_12/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*
paddingVALID*
strides
2
model_12/conv2d_43/Conv2DÅ
)model_12/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp2model_12_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)model_12/conv2d_43/BiasAdd/ReadVariableOpÔ
model_12/conv2d_43/BiasAddBiasAdd"model_12/conv2d_43/Conv2D:output:01model_12/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
model_12/conv2d_43/BiasAdd
model_12/conv2d_43/ReluRelu#model_12/conv2d_43/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
model_12/conv2d_43/Relu
model_12/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ Ù 2
model_12/flatten_13/ConstÄ
model_12/flatten_13/ReshapeReshape%model_12/conv2d_43/Relu:activations:0"model_12/flatten_13/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
model_12/flatten_13/Reshape¢
model_12/dropout_47/IdentityIdentity$model_12/flatten_13/Reshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
model_12/dropout_47/IdentityÆ
'model_12/dense_41/MatMul/ReadVariableOpReadVariableOp0model_12_dense_41_matmul_readvariableop_resource*!
_output_shapes
:²*
dtype02)
'model_12/dense_41/MatMul/ReadVariableOpÉ
model_12/dense_41/MatMulMatMul%model_12/dropout_47/Identity:output:0/model_12/dense_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_12/dense_41/MatMulÃ
(model_12/dense_41/BiasAdd/ReadVariableOpReadVariableOp1model_12_dense_41_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(model_12/dense_41/BiasAdd/ReadVariableOpÊ
model_12/dense_41/BiasAddBiasAdd"model_12/dense_41/MatMul:product:00model_12/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_12/dense_41/BiasAdd
model_12/dropout_48/IdentityIdentity"model_12/dense_41/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_12/dropout_48/Identityó
8model_12/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOpAmodel_12_batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02:
8model_12/batch_normalization_13/batchnorm/ReadVariableOp§
/model_12/batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:21
/model_12/batch_normalization_13/batchnorm/add/y
-model_12/batch_normalization_13/batchnorm/addAddV2@model_12/batch_normalization_13/batchnorm/ReadVariableOp:value:08model_12/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2/
-model_12/batch_normalization_13/batchnorm/addÄ
/model_12/batch_normalization_13/batchnorm/RsqrtRsqrt1model_12/batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes	
:21
/model_12/batch_normalization_13/batchnorm/Rsqrtÿ
<model_12/batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpEmodel_12_batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02>
<model_12/batch_normalization_13/batchnorm/mul/ReadVariableOp
-model_12/batch_normalization_13/batchnorm/mulMul3model_12/batch_normalization_13/batchnorm/Rsqrt:y:0Dmodel_12/batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2/
-model_12/batch_normalization_13/batchnorm/mulö
/model_12/batch_normalization_13/batchnorm/mul_1Mul%model_12/dropout_48/Identity:output:01model_12/batch_normalization_13/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/model_12/batch_normalization_13/batchnorm/mul_1ù
:model_12/batch_normalization_13/batchnorm/ReadVariableOp_1ReadVariableOpCmodel_12_batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02<
:model_12/batch_normalization_13/batchnorm/ReadVariableOp_1
/model_12/batch_normalization_13/batchnorm/mul_2MulBmodel_12/batch_normalization_13/batchnorm/ReadVariableOp_1:value:01model_12/batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes	
:21
/model_12/batch_normalization_13/batchnorm/mul_2ù
:model_12/batch_normalization_13/batchnorm/ReadVariableOp_2ReadVariableOpCmodel_12_batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02<
:model_12/batch_normalization_13/batchnorm/ReadVariableOp_2
-model_12/batch_normalization_13/batchnorm/subSubBmodel_12/batch_normalization_13/batchnorm/ReadVariableOp_2:value:03model_12/batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2/
-model_12/batch_normalization_13/batchnorm/sub
/model_12/batch_normalization_13/batchnorm/add_1AddV23model_12/batch_normalization_13/batchnorm/mul_1:z:01model_12/batch_normalization_13/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/model_12/batch_normalization_13/batchnorm/add_1Ä
'model_12/dense_42/MatMul/ReadVariableOpReadVariableOp0model_12_dense_42_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02)
'model_12/dense_42/MatMul/ReadVariableOpÖ
model_12/dense_42/MatMulMatMul3model_12/batch_normalization_13/batchnorm/add_1:z:0/model_12/dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model_12/dense_42/MatMulÂ
(model_12/dense_42/BiasAdd/ReadVariableOpReadVariableOp1model_12_dense_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_12/dense_42/BiasAdd/ReadVariableOpÉ
model_12/dense_42/BiasAddBiasAdd"model_12/dense_42/MatMul:product:00model_12/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
model_12/dense_42/BiasAddÃ
'model_12/dense_43/MatMul/ReadVariableOpReadVariableOp0model_12_dense_43_matmul_readvariableop_resource*
_output_shapes

: *
dtype02)
'model_12/dense_43/MatMul/ReadVariableOpÅ
model_12/dense_43/MatMulMatMul"model_12/dense_42/BiasAdd:output:0/model_12/dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_12/dense_43/MatMulÂ
(model_12/dense_43/BiasAdd/ReadVariableOpReadVariableOp1model_12_dense_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_12/dense_43/BiasAdd/ReadVariableOpÉ
model_12/dense_43/BiasAddBiasAdd"model_12/dense_43/MatMul:product:00model_12/dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_12/dense_43/BiasAdd
model_12/dense_43/SoftmaxSoftmax"model_12/dense_43/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model_12/dense_43/Softmaxï
IdentityIdentity#model_12/dense_43/Softmax:softmax:09^model_12/batch_normalization_13/batchnorm/ReadVariableOp;^model_12/batch_normalization_13/batchnorm/ReadVariableOp_1;^model_12/batch_normalization_13/batchnorm/ReadVariableOp_2=^model_12/batch_normalization_13/batchnorm/mul/ReadVariableOp*^model_12/conv2d_41/BiasAdd/ReadVariableOp)^model_12/conv2d_41/Conv2D/ReadVariableOp*^model_12/conv2d_42/BiasAdd/ReadVariableOp)^model_12/conv2d_42/Conv2D/ReadVariableOp*^model_12/conv2d_43/BiasAdd/ReadVariableOp)^model_12/conv2d_43/Conv2D/ReadVariableOp)^model_12/dense_41/BiasAdd/ReadVariableOp(^model_12/dense_41/MatMul/ReadVariableOp)^model_12/dense_42/BiasAdd/ReadVariableOp(^model_12/dense_42/MatMul/ReadVariableOp)^model_12/dense_43/BiasAdd/ReadVariableOp(^model_12/dense_43/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::2t
8model_12/batch_normalization_13/batchnorm/ReadVariableOp8model_12/batch_normalization_13/batchnorm/ReadVariableOp2x
:model_12/batch_normalization_13/batchnorm/ReadVariableOp_1:model_12/batch_normalization_13/batchnorm/ReadVariableOp_12x
:model_12/batch_normalization_13/batchnorm/ReadVariableOp_2:model_12/batch_normalization_13/batchnorm/ReadVariableOp_22|
<model_12/batch_normalization_13/batchnorm/mul/ReadVariableOp<model_12/batch_normalization_13/batchnorm/mul/ReadVariableOp2V
)model_12/conv2d_41/BiasAdd/ReadVariableOp)model_12/conv2d_41/BiasAdd/ReadVariableOp2T
(model_12/conv2d_41/Conv2D/ReadVariableOp(model_12/conv2d_41/Conv2D/ReadVariableOp2V
)model_12/conv2d_42/BiasAdd/ReadVariableOp)model_12/conv2d_42/BiasAdd/ReadVariableOp2T
(model_12/conv2d_42/Conv2D/ReadVariableOp(model_12/conv2d_42/Conv2D/ReadVariableOp2V
)model_12/conv2d_43/BiasAdd/ReadVariableOp)model_12/conv2d_43/BiasAdd/ReadVariableOp2T
(model_12/conv2d_43/Conv2D/ReadVariableOp(model_12/conv2d_43/Conv2D/ReadVariableOp2T
(model_12/dense_41/BiasAdd/ReadVariableOp(model_12/dense_41/BiasAdd/ReadVariableOp2R
'model_12/dense_41/MatMul/ReadVariableOp'model_12/dense_41/MatMul/ReadVariableOp2T
(model_12/dense_42/BiasAdd/ReadVariableOp(model_12/dense_42/BiasAdd/ReadVariableOp2R
'model_12/dense_42/MatMul/ReadVariableOp'model_12/dense_42/MatMul/ReadVariableOp2T
(model_12/dense_43/BiasAdd/ReadVariableOp(model_12/dense_43/BiasAdd/ReadVariableOp2R
'model_12/dense_43/MatMul/ReadVariableOp'model_12/dense_43/MatMul/ReadVariableOp:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_14
©
d
+__inference_dropout_48_layer_call_fn_455073

inputs
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_48_layer_call_and_return_conditional_losses_4543252
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã

R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_454145

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü

Þ
E__inference_conv2d_42_layer_call_and_return_conditional_losses_454965

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2
Relu¡
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿªª::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿªª
 
_user_specified_nameinputs
À
b
F__inference_flatten_13_layer_call_and_return_conditional_losses_454249

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ Ù 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ66@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@
 
_user_specified_nameinputs
à
á
D__inference_model_12_layer_call_and_return_conditional_losses_454794

inputs,
(conv2d_41_conv2d_readvariableop_resource-
)conv2d_41_biasadd_readvariableop_resource,
(conv2d_42_conv2d_readvariableop_resource-
)conv2d_42_biasadd_readvariableop_resource,
(conv2d_43_conv2d_readvariableop_resource-
)conv2d_43_biasadd_readvariableop_resource+
'dense_41_matmul_readvariableop_resource,
(dense_41_biasadd_readvariableop_resource1
-batch_normalization_13_assignmovingavg_4547563
/batch_normalization_13_assignmovingavg_1_454762@
<batch_normalization_13_batchnorm_mul_readvariableop_resource<
8batch_normalization_13_batchnorm_readvariableop_resource+
'dense_42_matmul_readvariableop_resource,
(dense_42_biasadd_readvariableop_resource+
'dense_43_matmul_readvariableop_resource,
(dense_43_biasadd_readvariableop_resource
identity¢:batch_normalization_13/AssignMovingAvg/AssignSubVariableOp¢5batch_normalization_13/AssignMovingAvg/ReadVariableOp¢<batch_normalization_13/AssignMovingAvg_1/AssignSubVariableOp¢7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_13/batchnorm/ReadVariableOp¢3batch_normalization_13/batchnorm/mul/ReadVariableOp¢ conv2d_41/BiasAdd/ReadVariableOp¢conv2d_41/Conv2D/ReadVariableOp¢ conv2d_42/BiasAdd/ReadVariableOp¢conv2d_42/Conv2D/ReadVariableOp¢ conv2d_43/BiasAdd/ReadVariableOp¢conv2d_43/Conv2D/ReadVariableOp¢dense_41/BiasAdd/ReadVariableOp¢dense_41/MatMul/ReadVariableOp¢dense_42/BiasAdd/ReadVariableOp¢dense_42/MatMul/ReadVariableOp¢dense_43/BiasAdd/ReadVariableOp¢dense_43/MatMul/ReadVariableOp³
conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_41/Conv2D/ReadVariableOpÄ
conv2d_41/Conv2DConv2Dinputs'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ*
paddingVALID*
strides
2
conv2d_41/Conv2Dª
 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_41/BiasAdd/ReadVariableOp²
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2
conv2d_41/BiasAdd
conv2d_41/ReluReluconv2d_41/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2
conv2d_41/ReluÌ
max_pooling2d_31/MaxPoolMaxPoolconv2d_41/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿªª*
ksize
*
paddingVALID*
strides
2
max_pooling2d_31/MaxPool³
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_42/Conv2D/ReadVariableOpß
conv2d_42/Conv2DConv2D!max_pooling2d_31/MaxPool:output:0'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ *
paddingVALID*
strides
2
conv2d_42/Conv2Dª
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_42/BiasAdd/ReadVariableOp²
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2
conv2d_42/BiasAdd
conv2d_42/ReluReluconv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2
conv2d_42/ReluÊ
max_pooling2d_32/MaxPoolMaxPoolconv2d_42/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_32/MaxPool³
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_43/Conv2D/ReadVariableOpÝ
conv2d_43/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*
paddingVALID*
strides
2
conv2d_43/Conv2Dª
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_43/BiasAdd/ReadVariableOp°
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
conv2d_43/BiasAdd~
conv2d_43/ReluReluconv2d_43/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
conv2d_43/Reluu
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ Ù 2
flatten_13/Const 
flatten_13/ReshapeReshapeconv2d_43/Relu:activations:0flatten_13/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
flatten_13/Reshapey
dropout_47/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout_47/dropout/Const«
dropout_47/dropout/MulMulflatten_13/Reshape:output:0!dropout_47/dropout/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout_47/dropout/Mul
dropout_47/dropout/ShapeShapeflatten_13/Reshape:output:0*
T0*
_output_shapes
:2
dropout_47/dropout/Shape×
/dropout_47/dropout/random_uniform/RandomUniformRandomUniform!dropout_47/dropout/Shape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²*
dtype021
/dropout_47/dropout/random_uniform/RandomUniform
!dropout_47/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2#
!dropout_47/dropout/GreaterEqual/yì
dropout_47/dropout/GreaterEqualGreaterEqual8dropout_47/dropout/random_uniform/RandomUniform:output:0*dropout_47/dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2!
dropout_47/dropout/GreaterEqual¢
dropout_47/dropout/CastCast#dropout_47/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout_47/dropout/Cast¨
dropout_47/dropout/Mul_1Muldropout_47/dropout/Mul:z:0dropout_47/dropout/Cast:y:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout_47/dropout/Mul_1«
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*!
_output_shapes
:²*
dtype02 
dense_41/MatMul/ReadVariableOp¥
dense_41/MatMulMatMuldropout_47/dropout/Mul_1:z:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_41/MatMul¨
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_41/BiasAdd/ReadVariableOp¦
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_41/BiasAddy
dropout_48/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout_48/dropout/Const¨
dropout_48/dropout/MulMuldense_41/BiasAdd:output:0!dropout_48/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_48/dropout/Mul}
dropout_48/dropout/ShapeShapedense_41/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_48/dropout/ShapeÖ
/dropout_48/dropout/random_uniform/RandomUniformRandomUniform!dropout_48/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_48/dropout/random_uniform/RandomUniform
!dropout_48/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2#
!dropout_48/dropout/GreaterEqual/yë
dropout_48/dropout/GreaterEqualGreaterEqual8dropout_48/dropout/random_uniform/RandomUniform:output:0*dropout_48/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_48/dropout/GreaterEqual¡
dropout_48/dropout/CastCast#dropout_48/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_48/dropout/Cast§
dropout_48/dropout/Mul_1Muldropout_48/dropout/Mul:z:0dropout_48/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_48/dropout/Mul_1¸
5batch_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_13/moments/mean/reduction_indicesë
#batch_normalization_13/moments/meanMeandropout_48/dropout/Mul_1:z:0>batch_normalization_13/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2%
#batch_normalization_13/moments/meanÂ
+batch_normalization_13/moments/StopGradientStopGradient,batch_normalization_13/moments/mean:output:0*
T0*
_output_shapes
:	2-
+batch_normalization_13/moments/StopGradient
0batch_normalization_13/moments/SquaredDifferenceSquaredDifferencedropout_48/dropout/Mul_1:z:04batch_normalization_13/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0batch_normalization_13/moments/SquaredDifferenceÀ
9batch_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_13/moments/variance/reduction_indices
'batch_normalization_13/moments/varianceMean4batch_normalization_13/moments/SquaredDifference:z:0Bbatch_normalization_13/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2)
'batch_normalization_13/moments/varianceÆ
&batch_normalization_13/moments/SqueezeSqueeze,batch_normalization_13/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2(
&batch_normalization_13/moments/SqueezeÎ
(batch_normalization_13/moments/Squeeze_1Squeeze0batch_normalization_13/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2*
(batch_normalization_13/moments/Squeeze_1
,batch_normalization_13/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_13/AssignMovingAvg/454756*
_output_shapes
: *
dtype0*
valueB
 *
×#<2.
,batch_normalization_13/AssignMovingAvg/decayÙ
5batch_normalization_13/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_13_assignmovingavg_454756*
_output_shapes	
:*
dtype027
5batch_normalization_13/AssignMovingAvg/ReadVariableOpå
*batch_normalization_13/AssignMovingAvg/subSub=batch_normalization_13/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_13/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_13/AssignMovingAvg/454756*
_output_shapes	
:2,
*batch_normalization_13/AssignMovingAvg/subÜ
*batch_normalization_13/AssignMovingAvg/mulMul.batch_normalization_13/AssignMovingAvg/sub:z:05batch_normalization_13/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*@
_class6
42loc:@batch_normalization_13/AssignMovingAvg/454756*
_output_shapes	
:2,
*batch_normalization_13/AssignMovingAvg/mul¹
:batch_normalization_13/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_13_assignmovingavg_454756.batch_normalization_13/AssignMovingAvg/mul:z:06^batch_normalization_13/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*@
_class6
42loc:@batch_normalization_13/AssignMovingAvg/454756*
_output_shapes
 *
dtype02<
:batch_normalization_13/AssignMovingAvg/AssignSubVariableOp
.batch_normalization_13/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_13/AssignMovingAvg_1/454762*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_13/AssignMovingAvg_1/decayß
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_13_assignmovingavg_1_454762*
_output_shapes	
:*
dtype029
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOpï
,batch_normalization_13/AssignMovingAvg_1/subSub?batch_normalization_13/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_13/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_13/AssignMovingAvg_1/454762*
_output_shapes	
:2.
,batch_normalization_13/AssignMovingAvg_1/subæ
,batch_normalization_13/AssignMovingAvg_1/mulMul0batch_normalization_13/AssignMovingAvg_1/sub:z:07batch_normalization_13/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*B
_class8
64loc:@batch_normalization_13/AssignMovingAvg_1/454762*
_output_shapes	
:2.
,batch_normalization_13/AssignMovingAvg_1/mulÅ
<batch_normalization_13/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_13_assignmovingavg_1_4547620batch_normalization_13/AssignMovingAvg_1/mul:z:08^batch_normalization_13/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*B
_class8
64loc:@batch_normalization_13/AssignMovingAvg_1/454762*
_output_shapes
 *
dtype02>
<batch_normalization_13/AssignMovingAvg_1/AssignSubVariableOp
&batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_13/batchnorm/add/yß
$batch_normalization_13/batchnorm/addAddV21batch_normalization_13/moments/Squeeze_1:output:0/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2&
$batch_normalization_13/batchnorm/add©
&batch_normalization_13/batchnorm/RsqrtRsqrt(batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_13/batchnorm/Rsqrtä
3batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype025
3batch_normalization_13/batchnorm/mul/ReadVariableOpâ
$batch_normalization_13/batchnorm/mulMul*batch_normalization_13/batchnorm/Rsqrt:y:0;batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2&
$batch_normalization_13/batchnorm/mulÒ
&batch_normalization_13/batchnorm/mul_1Muldropout_48/dropout/Mul_1:z:0(batch_normalization_13/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_13/batchnorm/mul_1Ø
&batch_normalization_13/batchnorm/mul_2Mul/batch_normalization_13/moments/Squeeze:output:0(batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_13/batchnorm/mul_2Ø
/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype021
/batch_normalization_13/batchnorm/ReadVariableOpÞ
$batch_normalization_13/batchnorm/subSub7batch_normalization_13/batchnorm/ReadVariableOp:value:0*batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2&
$batch_normalization_13/batchnorm/subâ
&batch_normalization_13/batchnorm/add_1AddV2*batch_normalization_13/batchnorm/mul_1:z:0(batch_normalization_13/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_13/batchnorm/add_1©
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02 
dense_42/MatMul/ReadVariableOp²
dense_42/MatMulMatMul*batch_normalization_13/batchnorm/add_1:z:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_42/MatMul§
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_42/BiasAdd/ReadVariableOp¥
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_42/BiasAdd¨
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_43/MatMul/ReadVariableOp¡
dense_43/MatMulMatMuldense_42/BiasAdd:output:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_43/MatMul§
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_43/BiasAdd/ReadVariableOp¥
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_43/BiasAdd|
dense_43/SoftmaxSoftmaxdense_43/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_43/SoftmaxÜ
IdentityIdentitydense_43/Softmax:softmax:0;^batch_normalization_13/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_13/AssignMovingAvg/ReadVariableOp=^batch_normalization_13/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_13/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_13/batchnorm/ReadVariableOp4^batch_normalization_13/batchnorm/mul/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::2x
:batch_normalization_13/AssignMovingAvg/AssignSubVariableOp:batch_normalization_13/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_13/AssignMovingAvg/ReadVariableOp5batch_normalization_13/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_13/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_13/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_13/batchnorm/ReadVariableOp/batch_normalization_13/batchnorm/ReadVariableOp2j
3batch_normalization_13/batchnorm/mul/ReadVariableOp3batch_normalization_13/batchnorm/mul/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ý
D__inference_dense_41_layer_call_and_return_conditional_losses_455042

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:²*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ²::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 
_user_specified_nameinputs
¡
G
+__inference_dropout_47_layer_call_fn_455032

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_4542742
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identity"
identityIdentity:output:0*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ²:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 
_user_specified_nameinputs
	
Ý
D__inference_dense_42_layer_call_and_return_conditional_losses_455170

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

G
+__inference_dropout_48_layer_call_fn_455078

inputs
identityÈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_48_layer_call_and_return_conditional_losses_4543302
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ý
D__inference_dense_41_layer_call_and_return_conditional_losses_454297

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:²*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ²::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 
_user_specified_nameinputs
þ7
÷
D__inference_model_12_layer_call_and_return_conditional_losses_454616

inputs
conv2d_41_454571
conv2d_41_454573
conv2d_42_454577
conv2d_42_454579
conv2d_43_454583
conv2d_43_454585
dense_41_454590
dense_41_454592!
batch_normalization_13_454596!
batch_normalization_13_454598!
batch_normalization_13_454600!
batch_normalization_13_454602
dense_42_454605
dense_42_454607
dense_43_454610
dense_43_454612
identity¢.batch_normalization_13/StatefulPartitionedCall¢!conv2d_41/StatefulPartitionedCall¢!conv2d_42/StatefulPartitionedCall¢!conv2d_43/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCall¢ dense_42/StatefulPartitionedCall¢ dense_43/StatefulPartitionedCall¦
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_41_454571conv2d_41_454573*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_4541712#
!conv2d_41/StatefulPartitionedCall
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿªª* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_4539982"
 max_pooling2d_31/PartitionedCallÉ
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_42_454577conv2d_42_454579*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_4541992#
!conv2d_42/StatefulPartitionedCall
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_4540102"
 max_pooling2d_32/PartitionedCallÇ
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_43_454583conv2d_43_454585*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_4542272#
!conv2d_43/StatefulPartitionedCall
flatten_13/PartitionedCallPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_4542492
flatten_13/PartitionedCallü
dropout_47/PartitionedCallPartitionedCall#flatten_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_4542742
dropout_47/PartitionedCallµ
 dense_41/StatefulPartitionedCallStatefulPartitionedCall#dropout_47/PartitionedCall:output:0dense_41_454590dense_41_454592*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_4542972"
 dense_41/StatefulPartitionedCall
dropout_48/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_48_layer_call_and_return_conditional_losses_4543302
dropout_48/PartitionedCall½
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_48/PartitionedCall:output:0batch_normalization_13_454596batch_normalization_13_454598batch_normalization_13_454600batch_normalization_13_454602*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_45414520
.batch_normalization_13/StatefulPartitionedCallÈ
 dense_42/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_42_454605dense_42_454607*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_4543882"
 dense_42/StatefulPartitionedCallº
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_454610dense_43_454612*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_4544152"
 dense_43/StatefulPartitionedCall
IdentityIdentity)dense_43/StatefulPartitionedCall:output:0/^batch_normalization_13/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä

×
)__inference_model_12_layer_call_fn_454651
input_14
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_12_layer_call_and_return_conditional_losses_4546162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_14
Ü

Þ
E__inference_conv2d_41_layer_call_and_return_conditional_losses_454171

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2
Relu¡
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º^
ó
D__inference_model_12_layer_call_and_return_conditional_losses_454860

inputs,
(conv2d_41_conv2d_readvariableop_resource-
)conv2d_41_biasadd_readvariableop_resource,
(conv2d_42_conv2d_readvariableop_resource-
)conv2d_42_biasadd_readvariableop_resource,
(conv2d_43_conv2d_readvariableop_resource-
)conv2d_43_biasadd_readvariableop_resource+
'dense_41_matmul_readvariableop_resource,
(dense_41_biasadd_readvariableop_resource<
8batch_normalization_13_batchnorm_readvariableop_resource@
<batch_normalization_13_batchnorm_mul_readvariableop_resource>
:batch_normalization_13_batchnorm_readvariableop_1_resource>
:batch_normalization_13_batchnorm_readvariableop_2_resource+
'dense_42_matmul_readvariableop_resource,
(dense_42_biasadd_readvariableop_resource+
'dense_43_matmul_readvariableop_resource,
(dense_43_biasadd_readvariableop_resource
identity¢/batch_normalization_13/batchnorm/ReadVariableOp¢1batch_normalization_13/batchnorm/ReadVariableOp_1¢1batch_normalization_13/batchnorm/ReadVariableOp_2¢3batch_normalization_13/batchnorm/mul/ReadVariableOp¢ conv2d_41/BiasAdd/ReadVariableOp¢conv2d_41/Conv2D/ReadVariableOp¢ conv2d_42/BiasAdd/ReadVariableOp¢conv2d_42/Conv2D/ReadVariableOp¢ conv2d_43/BiasAdd/ReadVariableOp¢conv2d_43/Conv2D/ReadVariableOp¢dense_41/BiasAdd/ReadVariableOp¢dense_41/MatMul/ReadVariableOp¢dense_42/BiasAdd/ReadVariableOp¢dense_42/MatMul/ReadVariableOp¢dense_43/BiasAdd/ReadVariableOp¢dense_43/MatMul/ReadVariableOp³
conv2d_41/Conv2D/ReadVariableOpReadVariableOp(conv2d_41_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_41/Conv2D/ReadVariableOpÄ
conv2d_41/Conv2DConv2Dinputs'conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ*
paddingVALID*
strides
2
conv2d_41/Conv2Dª
 conv2d_41/BiasAdd/ReadVariableOpReadVariableOp)conv2d_41_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_41/BiasAdd/ReadVariableOp²
conv2d_41/BiasAddBiasAddconv2d_41/Conv2D:output:0(conv2d_41/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2
conv2d_41/BiasAdd
conv2d_41/ReluReluconv2d_41/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2
conv2d_41/ReluÌ
max_pooling2d_31/MaxPoolMaxPoolconv2d_41/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿªª*
ksize
*
paddingVALID*
strides
2
max_pooling2d_31/MaxPool³
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_42/Conv2D/ReadVariableOpß
conv2d_42/Conv2DConv2D!max_pooling2d_31/MaxPool:output:0'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ *
paddingVALID*
strides
2
conv2d_42/Conv2Dª
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_42/BiasAdd/ReadVariableOp²
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2
conv2d_42/BiasAdd
conv2d_42/ReluReluconv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2
conv2d_42/ReluÊ
max_pooling2d_32/MaxPoolMaxPoolconv2d_42/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_32/MaxPool³
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_43/Conv2D/ReadVariableOpÝ
conv2d_43/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*
paddingVALID*
strides
2
conv2d_43/Conv2Dª
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_43/BiasAdd/ReadVariableOp°
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
conv2d_43/BiasAdd~
conv2d_43/ReluReluconv2d_43/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
conv2d_43/Reluu
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ Ù 2
flatten_13/Const 
flatten_13/ReshapeReshapeconv2d_43/Relu:activations:0flatten_13/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
flatten_13/Reshape
dropout_47/IdentityIdentityflatten_13/Reshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2
dropout_47/Identity«
dense_41/MatMul/ReadVariableOpReadVariableOp'dense_41_matmul_readvariableop_resource*!
_output_shapes
:²*
dtype02 
dense_41/MatMul/ReadVariableOp¥
dense_41/MatMulMatMuldropout_47/Identity:output:0&dense_41/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_41/MatMul¨
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
dense_41/BiasAdd/ReadVariableOp¦
dense_41/BiasAddBiasAdddense_41/MatMul:product:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_41/BiasAdd
dropout_48/IdentityIdentitydense_41/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_48/IdentityØ
/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype021
/batch_normalization_13/batchnorm/ReadVariableOp
&batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_13/batchnorm/add/yå
$batch_normalization_13/batchnorm/addAddV27batch_normalization_13/batchnorm/ReadVariableOp:value:0/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2&
$batch_normalization_13/batchnorm/add©
&batch_normalization_13/batchnorm/RsqrtRsqrt(batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_13/batchnorm/Rsqrtä
3batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype025
3batch_normalization_13/batchnorm/mul/ReadVariableOpâ
$batch_normalization_13/batchnorm/mulMul*batch_normalization_13/batchnorm/Rsqrt:y:0;batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2&
$batch_normalization_13/batchnorm/mulÒ
&batch_normalization_13/batchnorm/mul_1Muldropout_48/Identity:output:0(batch_normalization_13/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_13/batchnorm/mul_1Þ
1batch_normalization_13/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype023
1batch_normalization_13/batchnorm/ReadVariableOp_1â
&batch_normalization_13/batchnorm/mul_2Mul9batch_normalization_13/batchnorm/ReadVariableOp_1:value:0(batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_13/batchnorm/mul_2Þ
1batch_normalization_13/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype023
1batch_normalization_13/batchnorm/ReadVariableOp_2à
$batch_normalization_13/batchnorm/subSub9batch_normalization_13/batchnorm/ReadVariableOp_2:value:0*batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2&
$batch_normalization_13/batchnorm/subâ
&batch_normalization_13/batchnorm/add_1AddV2*batch_normalization_13/batchnorm/mul_1:z:0(batch_normalization_13/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_13/batchnorm/add_1©
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02 
dense_42/MatMul/ReadVariableOp²
dense_42/MatMulMatMul*batch_normalization_13/batchnorm/add_1:z:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_42/MatMul§
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_42/BiasAdd/ReadVariableOp¥
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_42/BiasAdd¨
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

: *
dtype02 
dense_43/MatMul/ReadVariableOp¡
dense_43/MatMulMatMuldense_42/BiasAdd:output:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_43/MatMul§
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_43/BiasAdd/ReadVariableOp¥
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_43/BiasAdd|
dense_43/SoftmaxSoftmaxdense_43/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_43/SoftmaxÖ
IdentityIdentitydense_43/Softmax:softmax:00^batch_normalization_13/batchnorm/ReadVariableOp2^batch_normalization_13/batchnorm/ReadVariableOp_12^batch_normalization_13/batchnorm/ReadVariableOp_24^batch_normalization_13/batchnorm/mul/ReadVariableOp!^conv2d_41/BiasAdd/ReadVariableOp ^conv2d_41/Conv2D/ReadVariableOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp^dense_41/MatMul/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::2b
/batch_normalization_13/batchnorm/ReadVariableOp/batch_normalization_13/batchnorm/ReadVariableOp2f
1batch_normalization_13/batchnorm/ReadVariableOp_11batch_normalization_13/batchnorm/ReadVariableOp_12f
1batch_normalization_13/batchnorm/ReadVariableOp_21batch_normalization_13/batchnorm/ReadVariableOp_22j
3batch_normalization_13/batchnorm/mul/ReadVariableOp3batch_normalization_13/batchnorm/mul/ReadVariableOp2D
 conv2d_41/BiasAdd/ReadVariableOp conv2d_41/BiasAdd/ReadVariableOp2B
conv2d_41/Conv2D/ReadVariableOpconv2d_41/Conv2D/ReadVariableOp2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2@
dense_41/MatMul/ReadVariableOpdense_41/MatMul/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_conv2d_43_layer_call_fn_454994

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_4542272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ88 ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88 
 
_user_specified_nameinputs


*__inference_conv2d_42_layer_call_fn_454974

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_4541992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ 2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿªª::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿªª
 
_user_specified_nameinputs
¾

Õ
)__inference_model_12_layer_call_fn_454934

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_12_layer_call_and_return_conditional_losses_4546162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð

Þ
E__inference_conv2d_43_layer_call_and_return_conditional_losses_454227

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ88 ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88 
 
_user_specified_nameinputs
Ñ
d
F__inference_dropout_47_layer_call_and_return_conditional_losses_455022

inputs

identity_1\
IdentityIdentityinputs*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identityk

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²2

Identity_1"!

identity_1Identity_1:output:0*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ²:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
 
_user_specified_nameinputs


*__inference_conv2d_41_layer_call_fn_454954

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_4541712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


Ò
$__inference_signature_wrapper_454698
input_14
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_14unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_4539922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_14

h
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_454010

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð

Þ
E__inference_conv2d_43_layer_call_and_return_conditional_losses_454985

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ88 ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88 
 
_user_specified_nameinputs
ã

R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_455134

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
;
Ã
D__inference_model_12_layer_call_and_return_conditional_losses_454432
input_14
conv2d_41_454182
conv2d_41_454184
conv2d_42_454210
conv2d_42_454212
conv2d_43_454238
conv2d_43_454240
dense_41_454308
dense_41_454310!
batch_normalization_13_454369!
batch_normalization_13_454371!
batch_normalization_13_454373!
batch_normalization_13_454375
dense_42_454399
dense_42_454401
dense_43_454426
dense_43_454428
identity¢.batch_normalization_13/StatefulPartitionedCall¢!conv2d_41/StatefulPartitionedCall¢!conv2d_42/StatefulPartitionedCall¢!conv2d_43/StatefulPartitionedCall¢ dense_41/StatefulPartitionedCall¢ dense_42/StatefulPartitionedCall¢ dense_43/StatefulPartitionedCall¢"dropout_47/StatefulPartitionedCall¢"dropout_48/StatefulPartitionedCall¨
!conv2d_41/StatefulPartitionedCallStatefulPartitionedCallinput_14conv2d_41_454182conv2d_41_454184*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_41_layer_call_and_return_conditional_losses_4541712#
!conv2d_41/StatefulPartitionedCall
 max_pooling2d_31/PartitionedCallPartitionedCall*conv2d_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿªª* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_4539982"
 max_pooling2d_31/PartitionedCallÉ
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_31/PartitionedCall:output:0conv2d_42_454210conv2d_42_454212*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨¨ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_4541992#
!conv2d_42/StatefulPartitionedCall
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ88 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_4540102"
 max_pooling2d_32/PartitionedCallÇ
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_43_454238conv2d_43_454240*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_4542272#
!conv2d_43/StatefulPartitionedCall
flatten_13/PartitionedCallPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_4542492
flatten_13/PartitionedCall
"dropout_47/StatefulPartitionedCallStatefulPartitionedCall#flatten_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_47_layer_call_and_return_conditional_losses_4542692$
"dropout_47/StatefulPartitionedCall½
 dense_41/StatefulPartitionedCallStatefulPartitionedCall+dropout_47/StatefulPartitionedCall:output:0dense_41_454308dense_41_454310*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_4542972"
 dense_41/StatefulPartitionedCall¾
"dropout_48/StatefulPartitionedCallStatefulPartitionedCall)dense_41/StatefulPartitionedCall:output:0#^dropout_47/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_48_layer_call_and_return_conditional_losses_4543252$
"dropout_48/StatefulPartitionedCallÃ
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_48/StatefulPartitionedCall:output:0batch_normalization_13_454369batch_normalization_13_454371batch_normalization_13_454373batch_normalization_13_454375*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_45411220
.batch_normalization_13/StatefulPartitionedCallÈ
 dense_42/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_42_454399dense_42_454401*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_4543882"
 dense_42/StatefulPartitionedCallº
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_454426dense_43_454428*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_4544152"
 dense_43/StatefulPartitionedCallÍ
IdentityIdentity)dense_43/StatefulPartitionedCall:output:0/^batch_normalization_13/StatefulPartitionedCall"^conv2d_41/StatefulPartitionedCall"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall!^dense_41/StatefulPartitionedCall!^dense_42/StatefulPartitionedCall!^dense_43/StatefulPartitionedCall#^dropout_47/StatefulPartitionedCall#^dropout_48/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*p
_input_shapes_
]:ÿÿÿÿÿÿÿÿÿ::::::::::::::::2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2F
!conv2d_41/StatefulPartitionedCall!conv2d_41/StatefulPartitionedCall2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2H
"dropout_47/StatefulPartitionedCall"dropout_47/StatefulPartitionedCall2H
"dropout_48/StatefulPartitionedCall"dropout_48/StatefulPartitionedCall:[ W
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_14
	
Ý
D__inference_dense_42_layer_call_and_return_conditional_losses_454388

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
F__inference_dropout_48_layer_call_and_return_conditional_losses_454325

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 0
É
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_454112

inputs
assignmovingavg_454087
assignmovingavg_1_454093)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/454087*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_454087*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpò
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/454087*
_output_shapes	
:2
AssignMovingAvg/subé
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/454087*
_output_shapes	
:2
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_454087AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/454087*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/454093*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_454093*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpü
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/454093*
_output_shapes	
:2
AssignMovingAvg_1/subó
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/454093*
_output_shapes	
:2
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_454093AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/454093*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1´
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ëð
Â
"__inference__traced_restore_455574
file_prefix%
!assignvariableop_conv2d_41_kernel%
!assignvariableop_1_conv2d_41_bias'
#assignvariableop_2_conv2d_42_kernel%
!assignvariableop_3_conv2d_42_bias'
#assignvariableop_4_conv2d_43_kernel%
!assignvariableop_5_conv2d_43_bias&
"assignvariableop_6_dense_41_kernel$
 assignvariableop_7_dense_41_bias3
/assignvariableop_8_batch_normalization_13_gamma2
.assignvariableop_9_batch_normalization_13_beta:
6assignvariableop_10_batch_normalization_13_moving_mean>
:assignvariableop_11_batch_normalization_13_moving_variance'
#assignvariableop_12_dense_42_kernel%
!assignvariableop_13_dense_42_bias'
#assignvariableop_14_dense_43_kernel%
!assignvariableop_15_dense_43_bias!
assignvariableop_16_adam_iter#
assignvariableop_17_adam_beta_1#
assignvariableop_18_adam_beta_2"
assignvariableop_19_adam_decay*
&assignvariableop_20_adam_learning_rate
assignvariableop_21_total
assignvariableop_22_count&
"assignvariableop_23_true_positives'
#assignvariableop_24_false_positives(
$assignvariableop_25_true_positives_1)
%assignvariableop_26_false_positives_1'
#assignvariableop_27_false_negatives,
(assignvariableop_28_weights_intermediate/
+assignvariableop_29_adam_conv2d_41_kernel_m-
)assignvariableop_30_adam_conv2d_41_bias_m/
+assignvariableop_31_adam_conv2d_42_kernel_m-
)assignvariableop_32_adam_conv2d_42_bias_m/
+assignvariableop_33_adam_conv2d_43_kernel_m-
)assignvariableop_34_adam_conv2d_43_bias_m.
*assignvariableop_35_adam_dense_41_kernel_m,
(assignvariableop_36_adam_dense_41_bias_m;
7assignvariableop_37_adam_batch_normalization_13_gamma_m:
6assignvariableop_38_adam_batch_normalization_13_beta_m.
*assignvariableop_39_adam_dense_42_kernel_m,
(assignvariableop_40_adam_dense_42_bias_m.
*assignvariableop_41_adam_dense_43_kernel_m,
(assignvariableop_42_adam_dense_43_bias_m/
+assignvariableop_43_adam_conv2d_41_kernel_v-
)assignvariableop_44_adam_conv2d_41_bias_v/
+assignvariableop_45_adam_conv2d_42_kernel_v-
)assignvariableop_46_adam_conv2d_42_bias_v/
+assignvariableop_47_adam_conv2d_43_kernel_v-
)assignvariableop_48_adam_conv2d_43_bias_v.
*assignvariableop_49_adam_dense_41_kernel_v,
(assignvariableop_50_adam_dense_41_bias_v;
7assignvariableop_51_adam_batch_normalization_13_gamma_v:
6assignvariableop_52_adam_batch_normalization_13_beta_v.
*assignvariableop_53_adam_dense_42_kernel_v,
(assignvariableop_54_adam_dense_42_bias_v.
*assignvariableop_55_adam_dense_43_kernel_v,
(assignvariableop_56_adam_dense_43_bias_v
identity_58¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
valueB:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBCkeras_api/metrics/2/weights_intermediate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÐ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*þ
_output_shapesë
è::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_41_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_41_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_42_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_42_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¨
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_43_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¦
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_43_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_41_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_41_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8´
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_13_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9³
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_13_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¾
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_13_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Â
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_13_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12«
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_42_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13©
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_42_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14«
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_43_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15©
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_43_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16¥
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17§
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18§
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¦
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20®
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¡
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¡
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23ª
AssignVariableOp_23AssignVariableOp"assignvariableop_23_true_positivesIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24«
AssignVariableOp_24AssignVariableOp#assignvariableop_24_false_positivesIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¬
AssignVariableOp_25AssignVariableOp$assignvariableop_25_true_positives_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26­
AssignVariableOp_26AssignVariableOp%assignvariableop_26_false_positives_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27«
AssignVariableOp_27AssignVariableOp#assignvariableop_27_false_negativesIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_weights_intermediateIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29³
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_41_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30±
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_41_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31³
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_42_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32±
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_42_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33³
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_43_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34±
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_43_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_dense_41_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_dense_41_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37¿
AssignVariableOp_37AssignVariableOp7assignvariableop_37_adam_batch_normalization_13_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38¾
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adam_batch_normalization_13_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_42_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_42_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41²
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_43_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42°
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_43_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43³
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_41_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44±
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_41_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45³
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_42_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46±
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_42_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47³
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_43_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48±
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_43_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49²
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_dense_41_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50°
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_dense_41_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51¿
AssignVariableOp_51AssignVariableOp7assignvariableop_51_adam_batch_normalization_13_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52¾
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_batch_normalization_13_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53²
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_dense_42_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54°
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_dense_42_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55²
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_43_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56°
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_43_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_569
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÄ

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_57·

Identity_58IdentityIdentity_57:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_58"#
identity_58Identity_58:output:0*û
_input_shapesé
æ: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ûs
¦
__inference__traced_save_455393
file_prefix/
+savev2_conv2d_41_kernel_read_readvariableop-
)savev2_conv2d_41_bias_read_readvariableop/
+savev2_conv2d_42_kernel_read_readvariableop-
)savev2_conv2d_42_bias_read_readvariableop/
+savev2_conv2d_43_kernel_read_readvariableop-
)savev2_conv2d_43_bias_read_readvariableop.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop;
7savev2_batch_normalization_13_gamma_read_readvariableop:
6savev2_batch_normalization_13_beta_read_readvariableopA
=savev2_batch_normalization_13_moving_mean_read_readvariableopE
Asavev2_batch_normalization_13_moving_variance_read_readvariableop.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop.
*savev2_dense_43_kernel_read_readvariableop,
(savev2_dense_43_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_positives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop0
,savev2_false_positives_1_read_readvariableop.
*savev2_false_negatives_read_readvariableop3
/savev2_weights_intermediate_read_readvariableop6
2savev2_adam_conv2d_41_kernel_m_read_readvariableop4
0savev2_adam_conv2d_41_bias_m_read_readvariableop6
2savev2_adam_conv2d_42_kernel_m_read_readvariableop4
0savev2_adam_conv2d_42_bias_m_read_readvariableop6
2savev2_adam_conv2d_43_kernel_m_read_readvariableop4
0savev2_adam_conv2d_43_bias_m_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_13_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_13_beta_m_read_readvariableop5
1savev2_adam_dense_42_kernel_m_read_readvariableop3
/savev2_adam_dense_42_bias_m_read_readvariableop5
1savev2_adam_dense_43_kernel_m_read_readvariableop3
/savev2_adam_dense_43_bias_m_read_readvariableop6
2savev2_adam_conv2d_41_kernel_v_read_readvariableop4
0savev2_adam_conv2d_41_bias_v_read_readvariableop6
2savev2_adam_conv2d_42_kernel_v_read_readvariableop4
0savev2_adam_conv2d_42_bias_v_read_readvariableop6
2savev2_adam_conv2d_43_kernel_v_read_readvariableop4
0savev2_adam_conv2d_43_bias_v_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_13_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_13_beta_v_read_readvariableop5
1savev2_adam_dense_42_kernel_v_read_readvariableop3
/savev2_adam_dense_42_bias_v_read_readvariableop5
1savev2_adam_dense_43_kernel_v_read_readvariableop3
/savev2_adam_dense_43_bias_v_read_readvariableop
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
ShardedFilename 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
valueB:B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBCkeras_api/metrics/2/weights_intermediate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesý
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÉ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_41_kernel_read_readvariableop)savev2_conv2d_41_bias_read_readvariableop+savev2_conv2d_42_kernel_read_readvariableop)savev2_conv2d_42_bias_read_readvariableop+savev2_conv2d_43_kernel_read_readvariableop)savev2_conv2d_43_bias_read_readvariableop*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop7savev2_batch_normalization_13_gamma_read_readvariableop6savev2_batch_normalization_13_beta_read_readvariableop=savev2_batch_normalization_13_moving_mean_read_readvariableopAsavev2_batch_normalization_13_moving_variance_read_readvariableop*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableop*savev2_dense_43_kernel_read_readvariableop(savev2_dense_43_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_positives_read_readvariableop+savev2_true_positives_1_read_readvariableop,savev2_false_positives_1_read_readvariableop*savev2_false_negatives_read_readvariableop/savev2_weights_intermediate_read_readvariableop2savev2_adam_conv2d_41_kernel_m_read_readvariableop0savev2_adam_conv2d_41_bias_m_read_readvariableop2savev2_adam_conv2d_42_kernel_m_read_readvariableop0savev2_adam_conv2d_42_bias_m_read_readvariableop2savev2_adam_conv2d_43_kernel_m_read_readvariableop0savev2_adam_conv2d_43_bias_m_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop>savev2_adam_batch_normalization_13_gamma_m_read_readvariableop=savev2_adam_batch_normalization_13_beta_m_read_readvariableop1savev2_adam_dense_42_kernel_m_read_readvariableop/savev2_adam_dense_42_bias_m_read_readvariableop1savev2_adam_dense_43_kernel_m_read_readvariableop/savev2_adam_dense_43_bias_m_read_readvariableop2savev2_adam_conv2d_41_kernel_v_read_readvariableop0savev2_adam_conv2d_41_bias_v_read_readvariableop2savev2_adam_conv2d_42_kernel_v_read_readvariableop0savev2_adam_conv2d_42_bias_v_read_readvariableop2savev2_adam_conv2d_43_kernel_v_read_readvariableop0savev2_adam_conv2d_43_bias_v_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableop>savev2_adam_batch_normalization_13_gamma_v_read_readvariableop=savev2_adam_batch_normalization_13_beta_v_read_readvariableop1savev2_adam_dense_42_kernel_v_read_readvariableop/savev2_adam_dense_42_bias_v_read_readvariableop1savev2_adam_dense_43_kernel_v_read_readvariableop/savev2_adam_dense_43_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *H
dtypes>
<2:	2
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

identity_1Identity_1:output:0*ê
_input_shapesØ
Õ: ::: : : @:@:²::::::	 : : :: : : : : : : ::: : : : ::: : : @:@:²::::	 : : :::: : : @:@:²::::	 : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:²:!

_output_shapes	
::!	

_output_shapes	
::!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	 : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
: : !

_output_shapes
: :,"(
&
_output_shapes
: @: #

_output_shapes
:@:'$#
!
_output_shapes
:²:!%

_output_shapes	
::!&

_output_shapes	
::!'

_output_shapes	
::%(!

_output_shapes
:	 : )

_output_shapes
: :$* 

_output_shapes

: : +

_output_shapes
::,,(
&
_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
: : /

_output_shapes
: :,0(
&
_output_shapes
: @: 1

_output_shapes
:@:'2#
!
_output_shapes
:²:!3

_output_shapes	
::!4

_output_shapes	
::!5

_output_shapes	
::%6!

_output_shapes
:	 : 7

_output_shapes
: :$8 

_output_shapes

: : 9

_output_shapes
:::

_output_shapes
: 
Í
d
F__inference_dropout_48_layer_call_and_return_conditional_losses_454330

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ü

Þ
E__inference_conv2d_41_layer_call_and_return_conditional_losses_454945

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2
Relu¡
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ2

Identity"
identityIdentity:output:0*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*·
serving_default£
G
input_14;
serving_default_input_14:0ÿÿÿÿÿÿÿÿÿ<
dense_430
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:
æl
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
Ê__call__
+Ë&call_and_return_all_conditional_losses
Ì_default_save_signature"¶h
_tf_keras_networkh{"class_name": "Functional", "name": "model_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_12", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}, "name": "input_14", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_41", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_41", "inbound_nodes": [[["input_14", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_31", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "name": "max_pooling2d_31", "inbound_nodes": [[["conv2d_41", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_42", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_42", "inbound_nodes": [[["max_pooling2d_31", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_32", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "name": "max_pooling2d_32", "inbound_nodes": [[["conv2d_42", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_43", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_43", "inbound_nodes": [[["max_pooling2d_32", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_13", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_13", "inbound_nodes": [[["conv2d_43", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_47", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_47", "inbound_nodes": [[["flatten_13", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_41", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_41", "inbound_nodes": [[["dropout_47", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_48", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_48", "inbound_nodes": [[["dense_41", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_13", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_13", "inbound_nodes": [[["dropout_48", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_42", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_42", "inbound_nodes": [[["batch_normalization_13", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_43", "trainable": true, "dtype": "float32", "units": 19, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_43", "inbound_nodes": [[["dense_42", 0, 0, {}]]]}], "input_layers": [["input_14", 0, 0]], "output_layers": [["dense_43", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_12", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}, "name": "input_14", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_41", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_41", "inbound_nodes": [[["input_14", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_31", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "name": "max_pooling2d_31", "inbound_nodes": [[["conv2d_41", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_42", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_42", "inbound_nodes": [[["max_pooling2d_31", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_32", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "name": "max_pooling2d_32", "inbound_nodes": [[["conv2d_42", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_43", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_43", "inbound_nodes": [[["max_pooling2d_32", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_13", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_13", "inbound_nodes": [[["conv2d_43", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_47", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_47", "inbound_nodes": [[["flatten_13", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_41", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_41", "inbound_nodes": [[["dropout_47", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_48", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "name": "dropout_48", "inbound_nodes": [[["dense_41", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_13", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_13", "inbound_nodes": [[["dropout_48", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_42", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_42", "inbound_nodes": [[["batch_normalization_13", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_43", "trainable": true, "dtype": "float32", "units": 19, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_43", "inbound_nodes": [[["dense_42", 0, 0, {}]]]}], "input_layers": [["input_14", 0, 0]], "output_layers": [["dense_43", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "Precision", "config": {"name": "precision", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}, {"class_name": "Addons>F1Score", "config": {"name": "f1_score", "dtype": "float32", "num_classes": 19, "average": "micro", "threshold": 0.5}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ÿ"ü
_tf_keras_input_layerÜ{"class_name": "InputLayer", "name": "input_14", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 512, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_14"}}
÷	

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses"Ð
_tf_keras_layer¶{"class_name": "Conv2D", "name": "conv2d_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_41", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 512, 3]}}

	variables
regularization_losses
trainable_variables
	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"ò
_tf_keras_layerØ{"class_name": "MaxPooling2D", "name": "max_pooling2d_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_31", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ù	

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"class_name": "Conv2D", "name": "conv2d_42", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_42", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 170, 170, 16]}}

$	variables
%regularization_losses
&trainable_variables
'	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses"ò
_tf_keras_layerØ{"class_name": "MaxPooling2D", "name": "max_pooling2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_32", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [3, 3]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [3, 3]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
÷	

(kernel
)bias
*	variables
+regularization_losses
,trainable_variables
-	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses"Ð
_tf_keras_layer¶{"class_name": "Conv2D", "name": "conv2d_43", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_43", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 56, 56, 32]}}
ê
.	variables
/regularization_losses
0trainable_variables
1	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses"Ù
_tf_keras_layer¿{"class_name": "Flatten", "name": "flatten_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_13", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
é
2	variables
3regularization_losses
4trainable_variables
5	keras_api
Ù__call__
+Ú&call_and_return_all_conditional_losses"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_47", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_47", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
ÿ

6kernel
7bias
8	variables
9regularization_losses
:trainable_variables
;	keras_api
Û__call__
+Ü&call_and_return_all_conditional_losses"Ø
_tf_keras_layer¾{"class_name": "Dense", "name": "dense_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_41", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 186624}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 186624]}}
é
<	variables
=regularization_losses
>trainable_variables
?	keras_api
Ý__call__
+Þ&call_and_return_all_conditional_losses"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_48", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_48", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}
¸	
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
ß__call__
+à&call_and_return_all_conditional_losses"â
_tf_keras_layerÈ{"class_name": "BatchNormalization", "name": "batch_normalization_13", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_13", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
ø

Ikernel
Jbias
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
á__call__
+â&call_and_return_all_conditional_losses"Ñ
_tf_keras_layer·{"class_name": "Dense", "name": "dense_42", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_42", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
÷

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
ã__call__
+ä&call_and_return_all_conditional_losses"Ð
_tf_keras_layer¶{"class_name": "Dense", "name": "dense_43", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_43", "trainable": true, "dtype": "float32", "units": 19, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
ë
Uiter

Vbeta_1

Wbeta_2
	Xdecay
Ylearning_ratem®m¯m°m±(m²)m³6m´7mµAm¶Bm·Im¸Jm¹OmºPm»v¼v½v¾v¿(vÀ)vÁ6vÂ7vÃAvÄBvÅIvÆJvÇOvÈPvÉ"
	optimizer

0
1
2
3
(4
)5
66
77
A8
B9
C10
D11
I12
J13
O14
P15"
trackable_list_wrapper
 "
trackable_list_wrapper

0
1
2
3
(4
)5
66
77
A8
B9
I10
J11
O12
P13"
trackable_list_wrapper
Î
Zmetrics

[layers
	variables
regularization_losses
\non_trainable_variables
]layer_regularization_losses
^layer_metrics
trainable_variables
Ê__call__
Ì_default_save_signature
+Ë&call_and_return_all_conditional_losses
'Ë"call_and_return_conditional_losses"
_generic_user_object
-
åserving_default"
signature_map
*:(2conv2d_41/kernel
:2conv2d_41/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
°
_metrics

`layers
	variables
regularization_losses
anon_trainable_variables
blayer_regularization_losses
clayer_metrics
trainable_variables
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
dmetrics

elayers
	variables
regularization_losses
fnon_trainable_variables
glayer_regularization_losses
hlayer_metrics
trainable_variables
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_42/kernel
: 2conv2d_42/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
°
imetrics

jlayers
 	variables
!regularization_losses
knon_trainable_variables
llayer_regularization_losses
mlayer_metrics
"trainable_variables
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
nmetrics

olayers
$	variables
%regularization_losses
pnon_trainable_variables
qlayer_regularization_losses
rlayer_metrics
&trainable_variables
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_43/kernel
:@2conv2d_43/bias
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
°
smetrics

tlayers
*	variables
+regularization_losses
unon_trainable_variables
vlayer_regularization_losses
wlayer_metrics
,trainable_variables
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
xmetrics

ylayers
.	variables
/regularization_losses
znon_trainable_variables
{layer_regularization_losses
|layer_metrics
0trainable_variables
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
}metrics

~layers
2	variables
3regularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
4trainable_variables
Ù__call__
+Ú&call_and_return_all_conditional_losses
'Ú"call_and_return_conditional_losses"
_generic_user_object
$:"²2dense_41/kernel
:2dense_41/bias
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
µ
metrics
layers
8	variables
9regularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
:trainable_variables
Û__call__
+Ü&call_and_return_all_conditional_losses
'Ü"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
layers
<	variables
=regularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
>trainable_variables
Ý__call__
+Þ&call_and_return_all_conditional_losses
'Þ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2batch_normalization_13/gamma
*:(2batch_normalization_13/beta
3:1 (2"batch_normalization_13/moving_mean
7:5 (2&batch_normalization_13/moving_variance
<
A0
B1
C2
D3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
µ
metrics
layers
E	variables
Fregularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
Gtrainable_variables
ß__call__
+à&call_and_return_all_conditional_losses
'à"call_and_return_conditional_losses"
_generic_user_object
": 	 2dense_42/kernel
: 2dense_42/bias
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
µ
metrics
layers
K	variables
Lregularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
Mtrainable_variables
á__call__
+â&call_and_return_all_conditional_losses
'â"call_and_return_conditional_losses"
_generic_user_object
!: 2dense_43/kernel
:2dense_43/bias
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
µ
metrics
layers
Q	variables
Rregularization_losses
non_trainable_variables
 layer_regularization_losses
layer_metrics
Strainable_variables
ã__call__
+ä&call_and_return_all_conditional_losses
'ä"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
8
0
1
2"
trackable_list_wrapper
~
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
10
11
12"
trackable_list_wrapper
.
C0
D1"
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
.
C0
D1"
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
¿

total

count
 	variables
¡	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
¨
¢
thresholds
£true_positives
¤false_positives
¥	variables
¦	keras_api"É
_tf_keras_metric®{"class_name": "Precision", "name": "precision", "dtype": "float32", "config": {"name": "precision", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}}
à
§
init_shape
¨true_positives
©false_positives
ªfalse_negatives
«weights_intermediate
¬	variables
­	keras_api"Ð
_tf_keras_metricµ{"class_name": "Addons>F1Score", "name": "f1_score", "dtype": "float32", "config": {"name": "f1_score", "dtype": "float32", "num_classes": 19, "average": "micro", "threshold": 0.5}}
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
 	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
£0
¤1"
trackable_list_wrapper
.
¥	variables"
_generic_user_object
 "
trackable_list_wrapper
:  (2true_positives
:  (2false_positives
:  (2false_negatives
 :  (2weights_intermediate
@
¨0
©1
ª2
«3"
trackable_list_wrapper
.
¬	variables"
_generic_user_object
/:-2Adam/conv2d_41/kernel/m
!:2Adam/conv2d_41/bias/m
/:- 2Adam/conv2d_42/kernel/m
!: 2Adam/conv2d_42/bias/m
/:- @2Adam/conv2d_43/kernel/m
!:@2Adam/conv2d_43/bias/m
):'²2Adam/dense_41/kernel/m
!:2Adam/dense_41/bias/m
0:.2#Adam/batch_normalization_13/gamma/m
/:-2"Adam/batch_normalization_13/beta/m
':%	 2Adam/dense_42/kernel/m
 : 2Adam/dense_42/bias/m
&:$ 2Adam/dense_43/kernel/m
 :2Adam/dense_43/bias/m
/:-2Adam/conv2d_41/kernel/v
!:2Adam/conv2d_41/bias/v
/:- 2Adam/conv2d_42/kernel/v
!: 2Adam/conv2d_42/bias/v
/:- @2Adam/conv2d_43/kernel/v
!:@2Adam/conv2d_43/bias/v
):'²2Adam/dense_41/kernel/v
!:2Adam/dense_41/bias/v
0:.2#Adam/batch_normalization_13/gamma/v
/:-2"Adam/batch_normalization_13/beta/v
':%	 2Adam/dense_42/kernel/v
 : 2Adam/dense_42/bias/v
&:$ 2Adam/dense_43/kernel/v
 :2Adam/dense_43/bias/v
ò2ï
)__inference_model_12_layer_call_fn_454897
)__inference_model_12_layer_call_fn_454651
)__inference_model_12_layer_call_fn_454934
)__inference_model_12_layer_call_fn_454566À
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
Þ2Û
D__inference_model_12_layer_call_and_return_conditional_losses_454432
D__inference_model_12_layer_call_and_return_conditional_losses_454480
D__inference_model_12_layer_call_and_return_conditional_losses_454794
D__inference_model_12_layer_call_and_return_conditional_losses_454860À
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
ê2ç
!__inference__wrapped_model_453992Á
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
annotationsª *1¢.
,)
input_14ÿÿÿÿÿÿÿÿÿ
Ô2Ñ
*__inference_conv2d_41_layer_call_fn_454954¢
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
ï2ì
E__inference_conv2d_41_layer_call_and_return_conditional_losses_454945¢
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
2
1__inference_max_pooling2d_31_layer_call_fn_454004à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
´2±
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_453998à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ô2Ñ
*__inference_conv2d_42_layer_call_fn_454974¢
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
ï2ì
E__inference_conv2d_42_layer_call_and_return_conditional_losses_454965¢
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
2
1__inference_max_pooling2d_32_layer_call_fn_454016à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
´2±
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_454010à
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
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ô2Ñ
*__inference_conv2d_43_layer_call_fn_454994¢
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
ï2ì
E__inference_conv2d_43_layer_call_and_return_conditional_losses_454985¢
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
Õ2Ò
+__inference_flatten_13_layer_call_fn_455005¢
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
ð2í
F__inference_flatten_13_layer_call_and_return_conditional_losses_455000¢
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
2
+__inference_dropout_47_layer_call_fn_455032
+__inference_dropout_47_layer_call_fn_455027´
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
Ê2Ç
F__inference_dropout_47_layer_call_and_return_conditional_losses_455017
F__inference_dropout_47_layer_call_and_return_conditional_losses_455022´
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
Ó2Ð
)__inference_dense_41_layer_call_fn_455051¢
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
î2ë
D__inference_dense_41_layer_call_and_return_conditional_losses_455042¢
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
2
+__inference_dropout_48_layer_call_fn_455078
+__inference_dropout_48_layer_call_fn_455073´
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
Ê2Ç
F__inference_dropout_48_layer_call_and_return_conditional_losses_455068
F__inference_dropout_48_layer_call_and_return_conditional_losses_455063´
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
¬2©
7__inference_batch_normalization_13_layer_call_fn_455160
7__inference_batch_normalization_13_layer_call_fn_455147´
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
â2ß
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_455114
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_455134´
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
Ó2Ð
)__inference_dense_42_layer_call_fn_455179¢
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
î2ë
D__inference_dense_42_layer_call_and_return_conditional_losses_455170¢
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
Ó2Ð
)__inference_dense_43_layer_call_fn_455199¢
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
î2ë
D__inference_dense_43_layer_call_and_return_conditional_losses_455190¢
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
ÌBÉ
$__inference_signature_wrapper_454698input_14"
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
 ª
!__inference__wrapped_model_453992()67DACBIJOP;¢8
1¢.
,)
input_14ÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_43"
dense_43ÿÿÿÿÿÿÿÿÿº
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_455114dCDAB4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 º
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_455134dDACB4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
7__inference_batch_normalization_13_layer_call_fn_455147WCDAB4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
7__inference_batch_normalization_13_layer_call_fn_455160WDACB4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ¹
E__inference_conv2d_41_layer_call_and_return_conditional_losses_454945p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿþþ
 
*__inference_conv2d_41_layer_call_fn_454954c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿþþ¹
E__inference_conv2d_42_layer_call_and_return_conditional_losses_454965p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿªª
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ¨¨ 
 
*__inference_conv2d_42_layer_call_fn_454974c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿªª
ª ""ÿÿÿÿÿÿÿÿÿ¨¨ µ
E__inference_conv2d_43_layer_call_and_return_conditional_losses_454985l()7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ88 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ66@
 
*__inference_conv2d_43_layer_call_fn_454994_()7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ88 
ª " ÿÿÿÿÿÿÿÿÿ66@§
D__inference_dense_41_layer_call_and_return_conditional_losses_455042_671¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ²
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_dense_41_layer_call_fn_455051R671¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ²
ª "ÿÿÿÿÿÿÿÿÿ¥
D__inference_dense_42_layer_call_and_return_conditional_losses_455170]IJ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
)__inference_dense_42_layer_call_fn_455179PIJ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ ¤
D__inference_dense_43_layer_call_and_return_conditional_losses_455190\OP/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_43_layer_call_fn_455199OOP/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿª
F__inference_dropout_47_layer_call_and_return_conditional_losses_455017`5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿ²
p
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ²
 ª
F__inference_dropout_47_layer_call_and_return_conditional_losses_455022`5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿ²
p 
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ²
 
+__inference_dropout_47_layer_call_fn_455027S5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿ²
p
ª "ÿÿÿÿÿÿÿÿÿ²
+__inference_dropout_47_layer_call_fn_455032S5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿ²
p 
ª "ÿÿÿÿÿÿÿÿÿ²¨
F__inference_dropout_48_layer_call_and_return_conditional_losses_455063^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¨
F__inference_dropout_48_layer_call_and_return_conditional_losses_455068^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_48_layer_call_fn_455073Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_dropout_48_layer_call_fn_455078Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ¬
F__inference_flatten_13_layer_call_and_return_conditional_losses_455000b7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ66@
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ²
 
+__inference_flatten_13_layer_call_fn_455005U7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ66@
ª "ÿÿÿÿÿÿÿÿÿ²ï
L__inference_max_pooling2d_31_layer_call_and_return_conditional_losses_453998R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_31_layer_call_fn_454004R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_454010R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_max_pooling2d_32_layer_call_fn_454016R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÆ
D__inference_model_12_layer_call_and_return_conditional_losses_454432~()67CDABIJOPC¢@
9¢6
,)
input_14ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
D__inference_model_12_layer_call_and_return_conditional_losses_454480~()67DACBIJOPC¢@
9¢6
,)
input_14ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
D__inference_model_12_layer_call_and_return_conditional_losses_454794|()67CDABIJOPA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
D__inference_model_12_layer_call_and_return_conditional_losses_454860|()67DACBIJOPA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_model_12_layer_call_fn_454566q()67CDABIJOPC¢@
9¢6
,)
input_14ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_12_layer_call_fn_454651q()67DACBIJOPC¢@
9¢6
,)
input_14ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_12_layer_call_fn_454897o()67CDABIJOPA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_model_12_layer_call_fn_454934o()67DACBIJOPA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¹
$__inference_signature_wrapper_454698()67DACBIJOPG¢D
¢ 
=ª:
8
input_14,)
input_14ÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_43"
dense_43ÿÿÿÿÿÿÿÿÿ