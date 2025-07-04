��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
�
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
�
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
delete_old_dirsbool(�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��
�
Adam/Dense_OUT/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/Dense_OUT/bias/v
{
)Adam/Dense_OUT/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense_OUT/bias/v*
_output_shapes
:*
dtype0
�
Adam/Dense_OUT/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/Dense_OUT/kernel/v
�
+Adam/Dense_OUT/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense_OUT/kernel/v*
_output_shapes

: *
dtype0
~
Adam/Dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Dense_1/bias/v
w
'Adam/Dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense_1/bias/v*
_output_shapes
: *
dtype0
�
Adam/Dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�  *&
shared_nameAdam/Dense_1/kernel/v
�
)Adam/Dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense_1/kernel/v*
_output_shapes
:	�  *
dtype0
|
Adam/Conv_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/Conv_5/bias/v
u
&Adam/Conv_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv_5/bias/v*
_output_shapes
:@*
dtype0
�
Adam/Conv_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*%
shared_nameAdam/Conv_5/kernel/v
�
(Adam/Conv_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv_5/kernel/v*&
_output_shapes
:0@*
dtype0
|
Adam/Conv_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*#
shared_nameAdam/Conv_4/bias/v
u
&Adam/Conv_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv_4/bias/v*
_output_shapes
:0*
dtype0
�
Adam/Conv_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*%
shared_nameAdam/Conv_4/kernel/v
�
(Adam/Conv_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv_4/kernel/v*&
_output_shapes
: 0*
dtype0
|
Adam/Conv_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Conv_3/bias/v
u
&Adam/Conv_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv_3/bias/v*
_output_shapes
: *
dtype0
�
Adam/Conv_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/Conv_3/kernel/v
�
(Adam/Conv_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv_3/kernel/v*&
_output_shapes
: *
dtype0
|
Adam/Conv_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_2/bias/v
u
&Adam/Conv_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv_2/bias/v*
_output_shapes
:*
dtype0
�
Adam/Conv_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_2/kernel/v
�
(Adam/Conv_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv_2/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/Conv_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_1/bias/v
u
&Adam/Conv_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv_1/bias/v*
_output_shapes
:*
dtype0
�
Adam/Conv_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_1/kernel/v
�
(Adam/Conv_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv_1/kernel/v*&
_output_shapes
:*
dtype0
�
Adam/Dense_OUT/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/Dense_OUT/bias/m
{
)Adam/Dense_OUT/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense_OUT/bias/m*
_output_shapes
:*
dtype0
�
Adam/Dense_OUT/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/Dense_OUT/kernel/m
�
+Adam/Dense_OUT/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense_OUT/kernel/m*
_output_shapes

: *
dtype0
~
Adam/Dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Dense_1/bias/m
w
'Adam/Dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense_1/bias/m*
_output_shapes
: *
dtype0
�
Adam/Dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�  *&
shared_nameAdam/Dense_1/kernel/m
�
)Adam/Dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense_1/kernel/m*
_output_shapes
:	�  *
dtype0
|
Adam/Conv_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/Conv_5/bias/m
u
&Adam/Conv_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv_5/bias/m*
_output_shapes
:@*
dtype0
�
Adam/Conv_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*%
shared_nameAdam/Conv_5/kernel/m
�
(Adam/Conv_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv_5/kernel/m*&
_output_shapes
:0@*
dtype0
|
Adam/Conv_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*#
shared_nameAdam/Conv_4/bias/m
u
&Adam/Conv_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv_4/bias/m*
_output_shapes
:0*
dtype0
�
Adam/Conv_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*%
shared_nameAdam/Conv_4/kernel/m
�
(Adam/Conv_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv_4/kernel/m*&
_output_shapes
: 0*
dtype0
|
Adam/Conv_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Conv_3/bias/m
u
&Adam/Conv_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv_3/bias/m*
_output_shapes
: *
dtype0
�
Adam/Conv_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/Conv_3/kernel/m
�
(Adam/Conv_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv_3/kernel/m*&
_output_shapes
: *
dtype0
|
Adam/Conv_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_2/bias/m
u
&Adam/Conv_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv_2/bias/m*
_output_shapes
:*
dtype0
�
Adam/Conv_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_2/kernel/m
�
(Adam/Conv_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv_2/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/Conv_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_1/bias/m
u
&Adam/Conv_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv_1/bias/m*
_output_shapes
:*
dtype0
�
Adam/Conv_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_1/kernel/m
�
(Adam/Conv_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv_1/kernel/m*&
_output_shapes
:*
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
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
t
Dense_OUT/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameDense_OUT/bias
m
"Dense_OUT/bias/Read/ReadVariableOpReadVariableOpDense_OUT/bias*
_output_shapes
:*
dtype0
|
Dense_OUT/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_nameDense_OUT/kernel
u
$Dense_OUT/kernel/Read/ReadVariableOpReadVariableOpDense_OUT/kernel*
_output_shapes

: *
dtype0
p
Dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameDense_1/bias
i
 Dense_1/bias/Read/ReadVariableOpReadVariableOpDense_1/bias*
_output_shapes
: *
dtype0
y
Dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�  *
shared_nameDense_1/kernel
r
"Dense_1/kernel/Read/ReadVariableOpReadVariableOpDense_1/kernel*
_output_shapes
:	�  *
dtype0
n
Conv_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameConv_5/bias
g
Conv_5/bias/Read/ReadVariableOpReadVariableOpConv_5/bias*
_output_shapes
:@*
dtype0
~
Conv_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:0@*
shared_nameConv_5/kernel
w
!Conv_5/kernel/Read/ReadVariableOpReadVariableOpConv_5/kernel*&
_output_shapes
:0@*
dtype0
n
Conv_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameConv_4/bias
g
Conv_4/bias/Read/ReadVariableOpReadVariableOpConv_4/bias*
_output_shapes
:0*
dtype0
~
Conv_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*
shared_nameConv_4/kernel
w
!Conv_4/kernel/Read/ReadVariableOpReadVariableOpConv_4/kernel*&
_output_shapes
: 0*
dtype0
n
Conv_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameConv_3/bias
g
Conv_3/bias/Read/ReadVariableOpReadVariableOpConv_3/bias*
_output_shapes
: *
dtype0
~
Conv_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameConv_3/kernel
w
!Conv_3/kernel/Read/ReadVariableOpReadVariableOpConv_3/kernel*&
_output_shapes
: *
dtype0
n
Conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_2/bias
g
Conv_2/bias/Read/ReadVariableOpReadVariableOpConv_2/bias*
_output_shapes
:*
dtype0
~
Conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_2/kernel
w
!Conv_2/kernel/Read/ReadVariableOpReadVariableOpConv_2/kernel*&
_output_shapes
:*
dtype0
n
Conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_1/bias
g
Conv_1/bias/Read/ReadVariableOpReadVariableOpConv_1/bias*
_output_shapes
:*
dtype0
~
Conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_1/kernel
w
!Conv_1/kernel/Read/ReadVariableOpReadVariableOpConv_1/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
�y
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�x
value�xB�x B�x
�
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
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op*
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses* 
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op*
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses* 
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

=kernel
>bias
 ?_jit_compiled_convolution_op*
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op*
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses* 
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias
 ]_jit_compiled_convolution_op*
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses* 
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

pkernel
qbias*
�
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses
x_random_generator* 
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
	�bias*
k
0
 1
.2
/3
=4
>5
L6
M7
[8
\9
p10
q11
12
�13*
k
0
 1
.2
/3
=4
>5
L6
M7
[8
\9
p10
q11
12
�13*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
	�iter
�beta_1
�beta_2

�decay
�learning_ratem� m�.m�/m�=m�>m�Lm�Mm�[m�\m�pm�qm�m�	�m�v� v�.v�/v�=v�>v�Lv�Mv�[v�\v�pv�qv�v�	�v�*

�serving_default* 

0
 1*

0
 1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEConv_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEConv_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

.0
/1*

.0
/1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEConv_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEConv_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

=0
>1*

=0
>1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEConv_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEConv_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

L0
M1*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEConv_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEConv_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

[0
\1*

[0
\1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEConv_5/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEConv_5/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

p0
q1*

p0
q1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEDense_1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEDense_1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

0
�1*

0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEDense_OUT/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEDense_OUT/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
r
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
13
14*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�z
VARIABLE_VALUEAdam/Conv_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/Conv_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Conv_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/Conv_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Conv_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/Conv_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Conv_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/Conv_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Conv_5/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/Conv_5/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/Dense_1/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Dense_1/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/Dense_OUT/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Dense_OUT/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Conv_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/Conv_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Conv_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/Conv_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Conv_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/Conv_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Conv_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/Conv_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/Conv_5/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/Conv_5/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/Dense_1/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/Dense_1/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/Dense_OUT/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/Dense_OUT/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputConv_1/kernelConv_1/biasConv_2/kernelConv_2/biasConv_3/kernelConv_3/biasConv_4/kernelConv_4/biasConv_5/kernelConv_5/biasDense_1/kernelDense_1/biasDense_OUT/kernelDense_OUT/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *0
f+R)
'__inference_signature_wrapper_138398440
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!Conv_1/kernel/Read/ReadVariableOpConv_1/bias/Read/ReadVariableOp!Conv_2/kernel/Read/ReadVariableOpConv_2/bias/Read/ReadVariableOp!Conv_3/kernel/Read/ReadVariableOpConv_3/bias/Read/ReadVariableOp!Conv_4/kernel/Read/ReadVariableOpConv_4/bias/Read/ReadVariableOp!Conv_5/kernel/Read/ReadVariableOpConv_5/bias/Read/ReadVariableOp"Dense_1/kernel/Read/ReadVariableOp Dense_1/bias/Read/ReadVariableOp$Dense_OUT/kernel/Read/ReadVariableOp"Dense_OUT/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp(Adam/Conv_1/kernel/m/Read/ReadVariableOp&Adam/Conv_1/bias/m/Read/ReadVariableOp(Adam/Conv_2/kernel/m/Read/ReadVariableOp&Adam/Conv_2/bias/m/Read/ReadVariableOp(Adam/Conv_3/kernel/m/Read/ReadVariableOp&Adam/Conv_3/bias/m/Read/ReadVariableOp(Adam/Conv_4/kernel/m/Read/ReadVariableOp&Adam/Conv_4/bias/m/Read/ReadVariableOp(Adam/Conv_5/kernel/m/Read/ReadVariableOp&Adam/Conv_5/bias/m/Read/ReadVariableOp)Adam/Dense_1/kernel/m/Read/ReadVariableOp'Adam/Dense_1/bias/m/Read/ReadVariableOp+Adam/Dense_OUT/kernel/m/Read/ReadVariableOp)Adam/Dense_OUT/bias/m/Read/ReadVariableOp(Adam/Conv_1/kernel/v/Read/ReadVariableOp&Adam/Conv_1/bias/v/Read/ReadVariableOp(Adam/Conv_2/kernel/v/Read/ReadVariableOp&Adam/Conv_2/bias/v/Read/ReadVariableOp(Adam/Conv_3/kernel/v/Read/ReadVariableOp&Adam/Conv_3/bias/v/Read/ReadVariableOp(Adam/Conv_4/kernel/v/Read/ReadVariableOp&Adam/Conv_4/bias/v/Read/ReadVariableOp(Adam/Conv_5/kernel/v/Read/ReadVariableOp&Adam/Conv_5/bias/v/Read/ReadVariableOp)Adam/Dense_1/kernel/v/Read/ReadVariableOp'Adam/Dense_1/bias/v/Read/ReadVariableOp+Adam/Dense_OUT/kernel/v/Read/ReadVariableOp)Adam/Dense_OUT/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_save_138399039
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv_1/kernelConv_1/biasConv_2/kernelConv_2/biasConv_3/kernelConv_3/biasConv_4/kernelConv_4/biasConv_5/kernelConv_5/biasDense_1/kernelDense_1/biasDense_OUT/kernelDense_OUT/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/Conv_1/kernel/mAdam/Conv_1/bias/mAdam/Conv_2/kernel/mAdam/Conv_2/bias/mAdam/Conv_3/kernel/mAdam/Conv_3/bias/mAdam/Conv_4/kernel/mAdam/Conv_4/bias/mAdam/Conv_5/kernel/mAdam/Conv_5/bias/mAdam/Dense_1/kernel/mAdam/Dense_1/bias/mAdam/Dense_OUT/kernel/mAdam/Dense_OUT/bias/mAdam/Conv_1/kernel/vAdam/Conv_1/bias/vAdam/Conv_2/kernel/vAdam/Conv_2/bias/vAdam/Conv_3/kernel/vAdam/Conv_3/bias/vAdam/Conv_4/kernel/vAdam/Conv_4/bias/vAdam/Conv_5/kernel/vAdam/Conv_5/bias/vAdam/Dense_1/kernel/vAdam/Dense_1/bias/vAdam/Dense_OUT/kernel/vAdam/Dense_OUT/bias/v*?
Tin8
624*
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
GPU2*0J 8� *.
f)R'
%__inference__traced_restore_138399202��	
�
�
+__inference_model_4_layer_call_fn_138398473

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0#
	unknown_7:0@
	unknown_8:@
	unknown_9:	�  

unknown_10: 

unknown_11: 

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_model_4_layer_call_and_return_conditional_losses_138398032o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
d
H__inference_MaxPool_4_layer_call_and_return_conditional_losses_138397870

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_Conv_2_layer_call_and_return_conditional_losses_138398685

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
d
H__inference_MaxPool_1_layer_call_and_return_conditional_losses_138398665

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_Conv_1_layer_call_and_return_conditional_losses_138398655

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
+__inference_model_4_layer_call_fn_138398063	
input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0#
	unknown_7:0@
	unknown_8:@
	unknown_9:	�  

unknown_10: 

unknown_11: 

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_model_4_layer_call_and_return_conditional_losses_138398032o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:�����������

_user_specified_nameinput
�
�
E__inference_Conv_3_layer_call_and_return_conditional_losses_138397939

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
d
H__inference_MaxPool_2_layer_call_and_return_conditional_losses_138397846

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�e
�
"__inference__traced_save_138399039
file_prefix,
(savev2_conv_1_kernel_read_readvariableop*
&savev2_conv_1_bias_read_readvariableop,
(savev2_conv_2_kernel_read_readvariableop*
&savev2_conv_2_bias_read_readvariableop,
(savev2_conv_3_kernel_read_readvariableop*
&savev2_conv_3_bias_read_readvariableop,
(savev2_conv_4_kernel_read_readvariableop*
&savev2_conv_4_bias_read_readvariableop,
(savev2_conv_5_kernel_read_readvariableop*
&savev2_conv_5_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop/
+savev2_dense_out_kernel_read_readvariableop-
)savev2_dense_out_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop3
/savev2_adam_conv_1_kernel_m_read_readvariableop1
-savev2_adam_conv_1_bias_m_read_readvariableop3
/savev2_adam_conv_2_kernel_m_read_readvariableop1
-savev2_adam_conv_2_bias_m_read_readvariableop3
/savev2_adam_conv_3_kernel_m_read_readvariableop1
-savev2_adam_conv_3_bias_m_read_readvariableop3
/savev2_adam_conv_4_kernel_m_read_readvariableop1
-savev2_adam_conv_4_bias_m_read_readvariableop3
/savev2_adam_conv_5_kernel_m_read_readvariableop1
-savev2_adam_conv_5_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop6
2savev2_adam_dense_out_kernel_m_read_readvariableop4
0savev2_adam_dense_out_bias_m_read_readvariableop3
/savev2_adam_conv_1_kernel_v_read_readvariableop1
-savev2_adam_conv_1_bias_v_read_readvariableop3
/savev2_adam_conv_2_kernel_v_read_readvariableop1
-savev2_adam_conv_2_bias_v_read_readvariableop3
/savev2_adam_conv_3_kernel_v_read_readvariableop1
-savev2_adam_conv_3_bias_v_read_readvariableop3
/savev2_adam_conv_4_kernel_v_read_readvariableop1
-savev2_adam_conv_4_bias_v_read_readvariableop3
/savev2_adam_conv_5_kernel_v_read_readvariableop1
-savev2_adam_conv_5_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop6
2savev2_adam_dense_out_kernel_v_read_readvariableop4
0savev2_adam_dense_out_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*�
value�B�4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv_1_kernel_read_readvariableop&savev2_conv_1_bias_read_readvariableop(savev2_conv_2_kernel_read_readvariableop&savev2_conv_2_bias_read_readvariableop(savev2_conv_3_kernel_read_readvariableop&savev2_conv_3_bias_read_readvariableop(savev2_conv_4_kernel_read_readvariableop&savev2_conv_4_bias_read_readvariableop(savev2_conv_5_kernel_read_readvariableop&savev2_conv_5_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop+savev2_dense_out_kernel_read_readvariableop)savev2_dense_out_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop/savev2_adam_conv_1_kernel_m_read_readvariableop-savev2_adam_conv_1_bias_m_read_readvariableop/savev2_adam_conv_2_kernel_m_read_readvariableop-savev2_adam_conv_2_bias_m_read_readvariableop/savev2_adam_conv_3_kernel_m_read_readvariableop-savev2_adam_conv_3_bias_m_read_readvariableop/savev2_adam_conv_4_kernel_m_read_readvariableop-savev2_adam_conv_4_bias_m_read_readvariableop/savev2_adam_conv_5_kernel_m_read_readvariableop-savev2_adam_conv_5_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop2savev2_adam_dense_out_kernel_m_read_readvariableop0savev2_adam_dense_out_bias_m_read_readvariableop/savev2_adam_conv_1_kernel_v_read_readvariableop-savev2_adam_conv_1_bias_v_read_readvariableop/savev2_adam_conv_2_kernel_v_read_readvariableop-savev2_adam_conv_2_bias_v_read_readvariableop/savev2_adam_conv_3_kernel_v_read_readvariableop-savev2_adam_conv_3_bias_v_read_readvariableop/savev2_adam_conv_4_kernel_v_read_readvariableop-savev2_adam_conv_4_bias_v_read_readvariableop/savev2_adam_conv_5_kernel_v_read_readvariableop-savev2_adam_conv_5_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop2savev2_adam_dense_out_kernel_v_read_readvariableop0savev2_adam_dense_out_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::: : : 0:0:0@:@:	�  : : :: : : : : : : : : ::::: : : 0:0:0@:@:	�  : : :::::: : : 0:0:0@:@:	�  : : :: 2(
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
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0:,	(
&
_output_shapes
:0@: 


_output_shapes
:@:%!

_output_shapes
:	�  : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :
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
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0:, (
&
_output_shapes
:0@: !

_output_shapes
:@:%"!

_output_shapes
:	�  : #

_output_shapes
: :$$ 

_output_shapes

: : %

_output_shapes
::,&(
&
_output_shapes
:: '

_output_shapes
::,((
&
_output_shapes
:: )

_output_shapes
::,*(
&
_output_shapes
: : +

_output_shapes
: :,,(
&
_output_shapes
: 0: -

_output_shapes
:0:,.(
&
_output_shapes
:0@: /

_output_shapes
:@:%0!

_output_shapes
:	�  : 1

_output_shapes
: :$2 

_output_shapes

: : 3

_output_shapes
::4

_output_shapes
: 
�
�
E__inference_Conv_5_layer_call_and_return_conditional_losses_138398775

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�	
g
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398093

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
f
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398012

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
I
-__inference_MaxPool_5_layer_call_fn_138398780

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_5_layer_call_and_return_conditional_losses_138397882�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
I
-__inference_MaxPool_3_layer_call_fn_138398720

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_3_layer_call_and_return_conditional_losses_138397858�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
d
H__inference_MaxPool_5_layer_call_and_return_conditional_losses_138398785

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
F__inference_Dense_1_layer_call_and_return_conditional_losses_138398001

inputs1
matmul_readvariableop_resource:	�  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
�
E__inference_Conv_3_layer_call_and_return_conditional_losses_138398715

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@@ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@@ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
*__inference_Conv_3_layer_call_fn_138398704

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_3_layer_call_and_return_conditional_losses_138397939w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@@ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@@
 
_user_specified_nameinputs
�
�
*__inference_Conv_5_layer_call_fn_138398764

inputs!
unknown:0@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_5_layer_call_and_return_conditional_losses_138397975w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
d
H__inference_MaxPool_3_layer_call_and_return_conditional_losses_138398725

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
H__inference_Dense_OUT_layer_call_and_return_conditional_losses_138398025

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
H__inference_Dense_OUT_layer_call_and_return_conditional_losses_138398863

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
d
H__inference_MaxPool_2_layer_call_and_return_conditional_losses_138398695

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
d
H__inference_MaxPool_4_layer_call_and_return_conditional_losses_138398755

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�9
�
F__inference_model_4_layer_call_and_return_conditional_losses_138398353	
input*
conv_1_138398310:
conv_1_138398312:*
conv_2_138398316:
conv_2_138398318:*
conv_3_138398322: 
conv_3_138398324: *
conv_4_138398328: 0
conv_4_138398330:0*
conv_5_138398334:0@
conv_5_138398336:@$
dense_1_138398341:	�  
dense_1_138398343: %
dense_out_138398347: !
dense_out_138398349:
identity��Conv_1/StatefulPartitionedCall�Conv_2/StatefulPartitionedCall�Conv_3/StatefulPartitionedCall�Conv_4/StatefulPartitionedCall�Conv_5/StatefulPartitionedCall�Dense_1/StatefulPartitionedCall�!Dense_OUT/StatefulPartitionedCall�
Conv_1/StatefulPartitionedCallStatefulPartitionedCallinputconv_1_138398310conv_1_138398312*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_1_layer_call_and_return_conditional_losses_138397903�
MaxPool_1/PartitionedCallPartitionedCall'Conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_1_layer_call_and_return_conditional_losses_138397834�
Conv_2/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_1/PartitionedCall:output:0conv_2_138398316conv_2_138398318*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_2_layer_call_and_return_conditional_losses_138397921�
MaxPool_2/PartitionedCallPartitionedCall'Conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_2_layer_call_and_return_conditional_losses_138397846�
Conv_3/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_2/PartitionedCall:output:0conv_3_138398322conv_3_138398324*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_3_layer_call_and_return_conditional_losses_138397939�
MaxPool_3/PartitionedCallPartitionedCall'Conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_3_layer_call_and_return_conditional_losses_138397858�
Conv_4/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_3/PartitionedCall:output:0conv_4_138398328conv_4_138398330*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_4_layer_call_and_return_conditional_losses_138397957�
MaxPool_4/PartitionedCallPartitionedCall'Conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_4_layer_call_and_return_conditional_losses_138397870�
Conv_5/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_4/PartitionedCall:output:0conv_5_138398334conv_5_138398336*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_5_layer_call_and_return_conditional_losses_138397975�
MaxPool_5/PartitionedCallPartitionedCall'Conv_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_5_layer_call_and_return_conditional_losses_138397882�
To_flat/PartitionedCallPartitionedCall"MaxPool_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_To_flat_layer_call_and_return_conditional_losses_138397988�
Dense_1/StatefulPartitionedCallStatefulPartitionedCall To_flat/PartitionedCall:output:0dense_1_138398341dense_1_138398343*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_Dense_1_layer_call_and_return_conditional_losses_138398001�
dropout_4/PartitionedCallPartitionedCall(Dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398012�
!Dense_OUT/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_out_138398347dense_out_138398349*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_Dense_OUT_layer_call_and_return_conditional_losses_138398025y
IdentityIdentity*Dense_OUT/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Conv_1/StatefulPartitionedCall^Conv_2/StatefulPartitionedCall^Conv_3/StatefulPartitionedCall^Conv_4/StatefulPartitionedCall^Conv_5/StatefulPartitionedCall ^Dense_1/StatefulPartitionedCall"^Dense_OUT/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2@
Conv_1/StatefulPartitionedCallConv_1/StatefulPartitionedCall2@
Conv_2/StatefulPartitionedCallConv_2/StatefulPartitionedCall2@
Conv_3/StatefulPartitionedCallConv_3/StatefulPartitionedCall2@
Conv_4/StatefulPartitionedCallConv_4/StatefulPartitionedCall2@
Conv_5/StatefulPartitionedCallConv_5/StatefulPartitionedCall2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2F
!Dense_OUT/StatefulPartitionedCall!Dense_OUT/StatefulPartitionedCall:X T
1
_output_shapes
:�����������

_user_specified_nameinput
�
b
F__inference_To_flat_layer_call_and_return_conditional_losses_138398796

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:���������� Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
%__inference__traced_restore_138399202
file_prefix8
assignvariableop_conv_1_kernel:,
assignvariableop_1_conv_1_bias::
 assignvariableop_2_conv_2_kernel:,
assignvariableop_3_conv_2_bias::
 assignvariableop_4_conv_3_kernel: ,
assignvariableop_5_conv_3_bias: :
 assignvariableop_6_conv_4_kernel: 0,
assignvariableop_7_conv_4_bias:0:
 assignvariableop_8_conv_5_kernel:0@,
assignvariableop_9_conv_5_bias:@5
"assignvariableop_10_dense_1_kernel:	�  .
 assignvariableop_11_dense_1_bias: 6
$assignvariableop_12_dense_out_kernel: 0
"assignvariableop_13_dense_out_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: %
assignvariableop_19_total_1: %
assignvariableop_20_count_1: #
assignvariableop_21_total: #
assignvariableop_22_count: B
(assignvariableop_23_adam_conv_1_kernel_m:4
&assignvariableop_24_adam_conv_1_bias_m:B
(assignvariableop_25_adam_conv_2_kernel_m:4
&assignvariableop_26_adam_conv_2_bias_m:B
(assignvariableop_27_adam_conv_3_kernel_m: 4
&assignvariableop_28_adam_conv_3_bias_m: B
(assignvariableop_29_adam_conv_4_kernel_m: 04
&assignvariableop_30_adam_conv_4_bias_m:0B
(assignvariableop_31_adam_conv_5_kernel_m:0@4
&assignvariableop_32_adam_conv_5_bias_m:@<
)assignvariableop_33_adam_dense_1_kernel_m:	�  5
'assignvariableop_34_adam_dense_1_bias_m: =
+assignvariableop_35_adam_dense_out_kernel_m: 7
)assignvariableop_36_adam_dense_out_bias_m:B
(assignvariableop_37_adam_conv_1_kernel_v:4
&assignvariableop_38_adam_conv_1_bias_v:B
(assignvariableop_39_adam_conv_2_kernel_v:4
&assignvariableop_40_adam_conv_2_bias_v:B
(assignvariableop_41_adam_conv_3_kernel_v: 4
&assignvariableop_42_adam_conv_3_bias_v: B
(assignvariableop_43_adam_conv_4_kernel_v: 04
&assignvariableop_44_adam_conv_4_bias_v:0B
(assignvariableop_45_adam_conv_5_kernel_v:0@4
&assignvariableop_46_adam_conv_5_bias_v:@<
)assignvariableop_47_adam_dense_1_kernel_v:	�  5
'assignvariableop_48_adam_dense_1_bias_v: =
+assignvariableop_49_adam_dense_out_kernel_v: 7
)assignvariableop_50_adam_dense_out_bias_v:
identity_52��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*�
value�B�4B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp assignvariableop_8_conv_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_conv_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_dense_out_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_out_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_totalIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_countIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_conv_1_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_conv_1_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv_2_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp&assignvariableop_26_adam_conv_2_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_conv_3_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_conv_3_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_conv_4_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_conv_4_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_conv_5_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_conv_5_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_1_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_dense_out_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_out_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_conv_1_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_conv_1_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_conv_2_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_conv_2_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_conv_3_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_conv_3_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_conv_4_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_conv_4_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_conv_5_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp&assignvariableop_46_adam_conv_5_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_1_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_1_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_dense_out_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_dense_out_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: �	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
f
-__inference_dropout_4_layer_call_fn_138398826

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398093o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
+__inference_model_4_layer_call_fn_138398506

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0#
	unknown_7:0@
	unknown_8:@
	unknown_9:	�  

unknown_10: 

unknown_11: 

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_model_4_layer_call_and_return_conditional_losses_138398243o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�R
�
$__inference__wrapped_model_138397825	
inputG
-model_4_conv_1_conv2d_readvariableop_resource:<
.model_4_conv_1_biasadd_readvariableop_resource:G
-model_4_conv_2_conv2d_readvariableop_resource:<
.model_4_conv_2_biasadd_readvariableop_resource:G
-model_4_conv_3_conv2d_readvariableop_resource: <
.model_4_conv_3_biasadd_readvariableop_resource: G
-model_4_conv_4_conv2d_readvariableop_resource: 0<
.model_4_conv_4_biasadd_readvariableop_resource:0G
-model_4_conv_5_conv2d_readvariableop_resource:0@<
.model_4_conv_5_biasadd_readvariableop_resource:@A
.model_4_dense_1_matmul_readvariableop_resource:	�  =
/model_4_dense_1_biasadd_readvariableop_resource: B
0model_4_dense_out_matmul_readvariableop_resource: ?
1model_4_dense_out_biasadd_readvariableop_resource:
identity��%model_4/Conv_1/BiasAdd/ReadVariableOp�$model_4/Conv_1/Conv2D/ReadVariableOp�%model_4/Conv_2/BiasAdd/ReadVariableOp�$model_4/Conv_2/Conv2D/ReadVariableOp�%model_4/Conv_3/BiasAdd/ReadVariableOp�$model_4/Conv_3/Conv2D/ReadVariableOp�%model_4/Conv_4/BiasAdd/ReadVariableOp�$model_4/Conv_4/Conv2D/ReadVariableOp�%model_4/Conv_5/BiasAdd/ReadVariableOp�$model_4/Conv_5/Conv2D/ReadVariableOp�&model_4/Dense_1/BiasAdd/ReadVariableOp�%model_4/Dense_1/MatMul/ReadVariableOp�(model_4/Dense_OUT/BiasAdd/ReadVariableOp�'model_4/Dense_OUT/MatMul/ReadVariableOp�
$model_4/Conv_1/Conv2D/ReadVariableOpReadVariableOp-model_4_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_4/Conv_1/Conv2DConv2Dinput,model_4/Conv_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
%model_4/Conv_1/BiasAdd/ReadVariableOpReadVariableOp.model_4_conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_4/Conv_1/BiasAddBiasAddmodel_4/Conv_1/Conv2D:output:0-model_4/Conv_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������x
model_4/Conv_1/ReluRelumodel_4/Conv_1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
model_4/MaxPool_1/MaxPoolMaxPool!model_4/Conv_1/Relu:activations:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
�
$model_4/Conv_2/Conv2D/ReadVariableOpReadVariableOp-model_4_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_4/Conv_2/Conv2DConv2D"model_4/MaxPool_1/MaxPool:output:0,model_4/Conv_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
%model_4/Conv_2/BiasAdd/ReadVariableOpReadVariableOp.model_4_conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_4/Conv_2/BiasAddBiasAddmodel_4/Conv_2/Conv2D:output:0-model_4/Conv_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������x
model_4/Conv_2/ReluRelumodel_4/Conv_2/BiasAdd:output:0*
T0*1
_output_shapes
:������������
model_4/MaxPool_2/MaxPoolMaxPool!model_4/Conv_2/Relu:activations:0*/
_output_shapes
:���������@@*
ksize
*
paddingVALID*
strides
�
$model_4/Conv_3/Conv2D/ReadVariableOpReadVariableOp-model_4_conv_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
model_4/Conv_3/Conv2DConv2D"model_4/MaxPool_2/MaxPool:output:0,model_4/Conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
%model_4/Conv_3/BiasAdd/ReadVariableOpReadVariableOp.model_4_conv_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_4/Conv_3/BiasAddBiasAddmodel_4/Conv_3/Conv2D:output:0-model_4/Conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ v
model_4/Conv_3/ReluRelumodel_4/Conv_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ �
model_4/MaxPool_3/MaxPoolMaxPool!model_4/Conv_3/Relu:activations:0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
�
$model_4/Conv_4/Conv2D/ReadVariableOpReadVariableOp-model_4_conv_4_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
model_4/Conv_4/Conv2DConv2D"model_4/MaxPool_3/MaxPool:output:0,model_4/Conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  0*
paddingSAME*
strides
�
%model_4/Conv_4/BiasAdd/ReadVariableOpReadVariableOp.model_4_conv_4_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
model_4/Conv_4/BiasAddBiasAddmodel_4/Conv_4/Conv2D:output:0-model_4/Conv_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  0v
model_4/Conv_4/ReluRelumodel_4/Conv_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������  0�
model_4/MaxPool_4/MaxPoolMaxPool!model_4/Conv_4/Relu:activations:0*/
_output_shapes
:���������0*
ksize
*
paddingVALID*
strides
�
$model_4/Conv_5/Conv2D/ReadVariableOpReadVariableOp-model_4_conv_5_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
model_4/Conv_5/Conv2DConv2D"model_4/MaxPool_4/MaxPool:output:0,model_4/Conv_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
%model_4/Conv_5/BiasAdd/ReadVariableOpReadVariableOp.model_4_conv_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model_4/Conv_5/BiasAddBiasAddmodel_4/Conv_5/Conv2D:output:0-model_4/Conv_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@v
model_4/Conv_5/ReluRelumodel_4/Conv_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
model_4/MaxPool_5/MaxPoolMaxPool!model_4/Conv_5/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
f
model_4/To_flat/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_4/To_flat/ReshapeReshape"model_4/MaxPool_5/MaxPool:output:0model_4/To_flat/Const:output:0*
T0*(
_output_shapes
:���������� �
%model_4/Dense_1/MatMul/ReadVariableOpReadVariableOp.model_4_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�  *
dtype0�
model_4/Dense_1/MatMulMatMul model_4/To_flat/Reshape:output:0-model_4/Dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
&model_4/Dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_4_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
model_4/Dense_1/BiasAddBiasAdd model_4/Dense_1/MatMul:product:0.model_4/Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� p
model_4/Dense_1/ReluRelu model_4/Dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� |
model_4/dropout_4/IdentityIdentity"model_4/Dense_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
'model_4/Dense_OUT/MatMul/ReadVariableOpReadVariableOp0model_4_dense_out_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
model_4/Dense_OUT/MatMulMatMul#model_4/dropout_4/Identity:output:0/model_4/Dense_OUT/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_4/Dense_OUT/BiasAdd/ReadVariableOpReadVariableOp1model_4_dense_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_4/Dense_OUT/BiasAddBiasAdd"model_4/Dense_OUT/MatMul:product:00model_4/Dense_OUT/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
model_4/Dense_OUT/SoftmaxSoftmax"model_4/Dense_OUT/BiasAdd:output:0*
T0*'
_output_shapes
:���������r
IdentityIdentity#model_4/Dense_OUT/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^model_4/Conv_1/BiasAdd/ReadVariableOp%^model_4/Conv_1/Conv2D/ReadVariableOp&^model_4/Conv_2/BiasAdd/ReadVariableOp%^model_4/Conv_2/Conv2D/ReadVariableOp&^model_4/Conv_3/BiasAdd/ReadVariableOp%^model_4/Conv_3/Conv2D/ReadVariableOp&^model_4/Conv_4/BiasAdd/ReadVariableOp%^model_4/Conv_4/Conv2D/ReadVariableOp&^model_4/Conv_5/BiasAdd/ReadVariableOp%^model_4/Conv_5/Conv2D/ReadVariableOp'^model_4/Dense_1/BiasAdd/ReadVariableOp&^model_4/Dense_1/MatMul/ReadVariableOp)^model_4/Dense_OUT/BiasAdd/ReadVariableOp(^model_4/Dense_OUT/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2N
%model_4/Conv_1/BiasAdd/ReadVariableOp%model_4/Conv_1/BiasAdd/ReadVariableOp2L
$model_4/Conv_1/Conv2D/ReadVariableOp$model_4/Conv_1/Conv2D/ReadVariableOp2N
%model_4/Conv_2/BiasAdd/ReadVariableOp%model_4/Conv_2/BiasAdd/ReadVariableOp2L
$model_4/Conv_2/Conv2D/ReadVariableOp$model_4/Conv_2/Conv2D/ReadVariableOp2N
%model_4/Conv_3/BiasAdd/ReadVariableOp%model_4/Conv_3/BiasAdd/ReadVariableOp2L
$model_4/Conv_3/Conv2D/ReadVariableOp$model_4/Conv_3/Conv2D/ReadVariableOp2N
%model_4/Conv_4/BiasAdd/ReadVariableOp%model_4/Conv_4/BiasAdd/ReadVariableOp2L
$model_4/Conv_4/Conv2D/ReadVariableOp$model_4/Conv_4/Conv2D/ReadVariableOp2N
%model_4/Conv_5/BiasAdd/ReadVariableOp%model_4/Conv_5/BiasAdd/ReadVariableOp2L
$model_4/Conv_5/Conv2D/ReadVariableOp$model_4/Conv_5/Conv2D/ReadVariableOp2P
&model_4/Dense_1/BiasAdd/ReadVariableOp&model_4/Dense_1/BiasAdd/ReadVariableOp2N
%model_4/Dense_1/MatMul/ReadVariableOp%model_4/Dense_1/MatMul/ReadVariableOp2T
(model_4/Dense_OUT/BiasAdd/ReadVariableOp(model_4/Dense_OUT/BiasAdd/ReadVariableOp2R
'model_4/Dense_OUT/MatMul/ReadVariableOp'model_4/Dense_OUT/MatMul/ReadVariableOp:X T
1
_output_shapes
:�����������

_user_specified_nameinput
�O
�

F__inference_model_4_layer_call_and_return_conditional_losses_138398635

inputs?
%conv_1_conv2d_readvariableop_resource:4
&conv_1_biasadd_readvariableop_resource:?
%conv_2_conv2d_readvariableop_resource:4
&conv_2_biasadd_readvariableop_resource:?
%conv_3_conv2d_readvariableop_resource: 4
&conv_3_biasadd_readvariableop_resource: ?
%conv_4_conv2d_readvariableop_resource: 04
&conv_4_biasadd_readvariableop_resource:0?
%conv_5_conv2d_readvariableop_resource:0@4
&conv_5_biasadd_readvariableop_resource:@9
&dense_1_matmul_readvariableop_resource:	�  5
'dense_1_biasadd_readvariableop_resource: :
(dense_out_matmul_readvariableop_resource: 7
)dense_out_biasadd_readvariableop_resource:
identity��Conv_1/BiasAdd/ReadVariableOp�Conv_1/Conv2D/ReadVariableOp�Conv_2/BiasAdd/ReadVariableOp�Conv_2/Conv2D/ReadVariableOp�Conv_3/BiasAdd/ReadVariableOp�Conv_3/Conv2D/ReadVariableOp�Conv_4/BiasAdd/ReadVariableOp�Conv_4/Conv2D/ReadVariableOp�Conv_5/BiasAdd/ReadVariableOp�Conv_5/Conv2D/ReadVariableOp�Dense_1/BiasAdd/ReadVariableOp�Dense_1/MatMul/ReadVariableOp� Dense_OUT/BiasAdd/ReadVariableOp�Dense_OUT/MatMul/ReadVariableOp�
Conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv_1/Conv2DConv2Dinputs$Conv_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Conv_1/BiasAddBiasAddConv_1/Conv2D:output:0%Conv_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������h
Conv_1/ReluReluConv_1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
MaxPool_1/MaxPoolMaxPoolConv_1/Relu:activations:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
�
Conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv_2/Conv2DConv2DMaxPool_1/MaxPool:output:0$Conv_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Conv_2/BiasAddBiasAddConv_2/Conv2D:output:0%Conv_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������h
Conv_2/ReluReluConv_2/BiasAdd:output:0*
T0*1
_output_shapes
:������������
MaxPool_2/MaxPoolMaxPoolConv_2/Relu:activations:0*/
_output_shapes
:���������@@*
ksize
*
paddingVALID*
strides
�
Conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv_3/Conv2DConv2DMaxPool_2/MaxPool:output:0$Conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
Conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Conv_3/BiasAddBiasAddConv_3/Conv2D:output:0%Conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ f
Conv_3/ReluReluConv_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ �
MaxPool_3/MaxPoolMaxPoolConv_3/Relu:activations:0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
�
Conv_4/Conv2D/ReadVariableOpReadVariableOp%conv_4_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
Conv_4/Conv2DConv2DMaxPool_3/MaxPool:output:0$Conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  0*
paddingSAME*
strides
�
Conv_4/BiasAdd/ReadVariableOpReadVariableOp&conv_4_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
Conv_4/BiasAddBiasAddConv_4/Conv2D:output:0%Conv_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  0f
Conv_4/ReluReluConv_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������  0�
MaxPool_4/MaxPoolMaxPoolConv_4/Relu:activations:0*/
_output_shapes
:���������0*
ksize
*
paddingVALID*
strides
�
Conv_5/Conv2D/ReadVariableOpReadVariableOp%conv_5_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
Conv_5/Conv2DConv2DMaxPool_4/MaxPool:output:0$Conv_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
Conv_5/BiasAdd/ReadVariableOpReadVariableOp&conv_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Conv_5/BiasAddBiasAddConv_5/Conv2D:output:0%Conv_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@f
Conv_5/ReluReluConv_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
MaxPool_5/MaxPoolMaxPoolConv_5/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
^
To_flat/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
To_flat/ReshapeReshapeMaxPool_5/MaxPool:output:0To_flat/Const:output:0*
T0*(
_output_shapes
:���������� �
Dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�  *
dtype0�
Dense_1/MatMulMatMulTo_flat/Reshape:output:0%Dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
Dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Dense_1/BiasAddBiasAddDense_1/MatMul:product:0&Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� `
Dense_1/ReluReluDense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� \
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?�
dropout_4/dropout/MulMulDense_1/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*'
_output_shapes
:��������� a
dropout_4/dropout/ShapeShapeDense_1/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� �
Dense_OUT/MatMul/ReadVariableOpReadVariableOp(dense_out_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
Dense_OUT/MatMulMatMuldropout_4/dropout/Mul_1:z:0'Dense_OUT/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 Dense_OUT/BiasAdd/ReadVariableOpReadVariableOp)dense_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Dense_OUT/BiasAddBiasAddDense_OUT/MatMul:product:0(Dense_OUT/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
Dense_OUT/SoftmaxSoftmaxDense_OUT/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
IdentityIdentityDense_OUT/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Conv_1/BiasAdd/ReadVariableOp^Conv_1/Conv2D/ReadVariableOp^Conv_2/BiasAdd/ReadVariableOp^Conv_2/Conv2D/ReadVariableOp^Conv_3/BiasAdd/ReadVariableOp^Conv_3/Conv2D/ReadVariableOp^Conv_4/BiasAdd/ReadVariableOp^Conv_4/Conv2D/ReadVariableOp^Conv_5/BiasAdd/ReadVariableOp^Conv_5/Conv2D/ReadVariableOp^Dense_1/BiasAdd/ReadVariableOp^Dense_1/MatMul/ReadVariableOp!^Dense_OUT/BiasAdd/ReadVariableOp ^Dense_OUT/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2>
Conv_1/BiasAdd/ReadVariableOpConv_1/BiasAdd/ReadVariableOp2<
Conv_1/Conv2D/ReadVariableOpConv_1/Conv2D/ReadVariableOp2>
Conv_2/BiasAdd/ReadVariableOpConv_2/BiasAdd/ReadVariableOp2<
Conv_2/Conv2D/ReadVariableOpConv_2/Conv2D/ReadVariableOp2>
Conv_3/BiasAdd/ReadVariableOpConv_3/BiasAdd/ReadVariableOp2<
Conv_3/Conv2D/ReadVariableOpConv_3/Conv2D/ReadVariableOp2>
Conv_4/BiasAdd/ReadVariableOpConv_4/BiasAdd/ReadVariableOp2<
Conv_4/Conv2D/ReadVariableOpConv_4/Conv2D/ReadVariableOp2>
Conv_5/BiasAdd/ReadVariableOpConv_5/BiasAdd/ReadVariableOp2<
Conv_5/Conv2D/ReadVariableOpConv_5/Conv2D/ReadVariableOp2@
Dense_1/BiasAdd/ReadVariableOpDense_1/BiasAdd/ReadVariableOp2>
Dense_1/MatMul/ReadVariableOpDense_1/MatMul/ReadVariableOp2D
 Dense_OUT/BiasAdd/ReadVariableOp Dense_OUT/BiasAdd/ReadVariableOp2B
Dense_OUT/MatMul/ReadVariableOpDense_OUT/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_Conv_2_layer_call_fn_138398674

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_2_layer_call_and_return_conditional_losses_138397921y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�;
�
F__inference_model_4_layer_call_and_return_conditional_losses_138398243

inputs*
conv_1_138398200:
conv_1_138398202:*
conv_2_138398206:
conv_2_138398208:*
conv_3_138398212: 
conv_3_138398214: *
conv_4_138398218: 0
conv_4_138398220:0*
conv_5_138398224:0@
conv_5_138398226:@$
dense_1_138398231:	�  
dense_1_138398233: %
dense_out_138398237: !
dense_out_138398239:
identity��Conv_1/StatefulPartitionedCall�Conv_2/StatefulPartitionedCall�Conv_3/StatefulPartitionedCall�Conv_4/StatefulPartitionedCall�Conv_5/StatefulPartitionedCall�Dense_1/StatefulPartitionedCall�!Dense_OUT/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�
Conv_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_138398200conv_1_138398202*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_1_layer_call_and_return_conditional_losses_138397903�
MaxPool_1/PartitionedCallPartitionedCall'Conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_1_layer_call_and_return_conditional_losses_138397834�
Conv_2/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_1/PartitionedCall:output:0conv_2_138398206conv_2_138398208*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_2_layer_call_and_return_conditional_losses_138397921�
MaxPool_2/PartitionedCallPartitionedCall'Conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_2_layer_call_and_return_conditional_losses_138397846�
Conv_3/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_2/PartitionedCall:output:0conv_3_138398212conv_3_138398214*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_3_layer_call_and_return_conditional_losses_138397939�
MaxPool_3/PartitionedCallPartitionedCall'Conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_3_layer_call_and_return_conditional_losses_138397858�
Conv_4/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_3/PartitionedCall:output:0conv_4_138398218conv_4_138398220*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_4_layer_call_and_return_conditional_losses_138397957�
MaxPool_4/PartitionedCallPartitionedCall'Conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_4_layer_call_and_return_conditional_losses_138397870�
Conv_5/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_4/PartitionedCall:output:0conv_5_138398224conv_5_138398226*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_5_layer_call_and_return_conditional_losses_138397975�
MaxPool_5/PartitionedCallPartitionedCall'Conv_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_5_layer_call_and_return_conditional_losses_138397882�
To_flat/PartitionedCallPartitionedCall"MaxPool_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_To_flat_layer_call_and_return_conditional_losses_138397988�
Dense_1/StatefulPartitionedCallStatefulPartitionedCall To_flat/PartitionedCall:output:0dense_1_138398231dense_1_138398233*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_Dense_1_layer_call_and_return_conditional_losses_138398001�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398093�
!Dense_OUT/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_out_138398237dense_out_138398239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_Dense_OUT_layer_call_and_return_conditional_losses_138398025y
IdentityIdentity*Dense_OUT/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Conv_1/StatefulPartitionedCall^Conv_2/StatefulPartitionedCall^Conv_3/StatefulPartitionedCall^Conv_4/StatefulPartitionedCall^Conv_5/StatefulPartitionedCall ^Dense_1/StatefulPartitionedCall"^Dense_OUT/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2@
Conv_1/StatefulPartitionedCallConv_1/StatefulPartitionedCall2@
Conv_2/StatefulPartitionedCallConv_2/StatefulPartitionedCall2@
Conv_3/StatefulPartitionedCallConv_3/StatefulPartitionedCall2@
Conv_4/StatefulPartitionedCallConv_4/StatefulPartitionedCall2@
Conv_5/StatefulPartitionedCallConv_5/StatefulPartitionedCall2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2F
!Dense_OUT/StatefulPartitionedCall!Dense_OUT/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
I
-__inference_MaxPool_1_layer_call_fn_138398660

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_1_layer_call_and_return_conditional_losses_138397834�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
g
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398843

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
-__inference_Dense_OUT_layer_call_fn_138398852

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_Dense_OUT_layer_call_and_return_conditional_losses_138398025o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�H
�

F__inference_model_4_layer_call_and_return_conditional_losses_138398567

inputs?
%conv_1_conv2d_readvariableop_resource:4
&conv_1_biasadd_readvariableop_resource:?
%conv_2_conv2d_readvariableop_resource:4
&conv_2_biasadd_readvariableop_resource:?
%conv_3_conv2d_readvariableop_resource: 4
&conv_3_biasadd_readvariableop_resource: ?
%conv_4_conv2d_readvariableop_resource: 04
&conv_4_biasadd_readvariableop_resource:0?
%conv_5_conv2d_readvariableop_resource:0@4
&conv_5_biasadd_readvariableop_resource:@9
&dense_1_matmul_readvariableop_resource:	�  5
'dense_1_biasadd_readvariableop_resource: :
(dense_out_matmul_readvariableop_resource: 7
)dense_out_biasadd_readvariableop_resource:
identity��Conv_1/BiasAdd/ReadVariableOp�Conv_1/Conv2D/ReadVariableOp�Conv_2/BiasAdd/ReadVariableOp�Conv_2/Conv2D/ReadVariableOp�Conv_3/BiasAdd/ReadVariableOp�Conv_3/Conv2D/ReadVariableOp�Conv_4/BiasAdd/ReadVariableOp�Conv_4/Conv2D/ReadVariableOp�Conv_5/BiasAdd/ReadVariableOp�Conv_5/Conv2D/ReadVariableOp�Dense_1/BiasAdd/ReadVariableOp�Dense_1/MatMul/ReadVariableOp� Dense_OUT/BiasAdd/ReadVariableOp�Dense_OUT/MatMul/ReadVariableOp�
Conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv_1/Conv2DConv2Dinputs$Conv_1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Conv_1/BiasAddBiasAddConv_1/Conv2D:output:0%Conv_1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������h
Conv_1/ReluReluConv_1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
MaxPool_1/MaxPoolMaxPoolConv_1/Relu:activations:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
�
Conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv_2/Conv2DConv2DMaxPool_1/MaxPool:output:0$Conv_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
Conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Conv_2/BiasAddBiasAddConv_2/Conv2D:output:0%Conv_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������h
Conv_2/ReluReluConv_2/BiasAdd:output:0*
T0*1
_output_shapes
:������������
MaxPool_2/MaxPoolMaxPoolConv_2/Relu:activations:0*/
_output_shapes
:���������@@*
ksize
*
paddingVALID*
strides
�
Conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv_3/Conv2DConv2DMaxPool_2/MaxPool:output:0$Conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ *
paddingSAME*
strides
�
Conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Conv_3/BiasAddBiasAddConv_3/Conv2D:output:0%Conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@@ f
Conv_3/ReluReluConv_3/BiasAdd:output:0*
T0*/
_output_shapes
:���������@@ �
MaxPool_3/MaxPoolMaxPoolConv_3/Relu:activations:0*/
_output_shapes
:���������   *
ksize
*
paddingVALID*
strides
�
Conv_4/Conv2D/ReadVariableOpReadVariableOp%conv_4_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
Conv_4/Conv2DConv2DMaxPool_3/MaxPool:output:0$Conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  0*
paddingSAME*
strides
�
Conv_4/BiasAdd/ReadVariableOpReadVariableOp&conv_4_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype0�
Conv_4/BiasAddBiasAddConv_4/Conv2D:output:0%Conv_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  0f
Conv_4/ReluReluConv_4/BiasAdd:output:0*
T0*/
_output_shapes
:���������  0�
MaxPool_4/MaxPoolMaxPoolConv_4/Relu:activations:0*/
_output_shapes
:���������0*
ksize
*
paddingVALID*
strides
�
Conv_5/Conv2D/ReadVariableOpReadVariableOp%conv_5_conv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
Conv_5/Conv2DConv2DMaxPool_4/MaxPool:output:0$Conv_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
Conv_5/BiasAdd/ReadVariableOpReadVariableOp&conv_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
Conv_5/BiasAddBiasAddConv_5/Conv2D:output:0%Conv_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@f
Conv_5/ReluReluConv_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
MaxPool_5/MaxPoolMaxPoolConv_5/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
^
To_flat/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
To_flat/ReshapeReshapeMaxPool_5/MaxPool:output:0To_flat/Const:output:0*
T0*(
_output_shapes
:���������� �
Dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�  *
dtype0�
Dense_1/MatMulMatMulTo_flat/Reshape:output:0%Dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
Dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
Dense_1/BiasAddBiasAddDense_1/MatMul:product:0&Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� `
Dense_1/ReluReluDense_1/BiasAdd:output:0*
T0*'
_output_shapes
:��������� l
dropout_4/IdentityIdentityDense_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
Dense_OUT/MatMul/ReadVariableOpReadVariableOp(dense_out_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
Dense_OUT/MatMulMatMuldropout_4/Identity:output:0'Dense_OUT/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 Dense_OUT/BiasAdd/ReadVariableOpReadVariableOp)dense_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
Dense_OUT/BiasAddBiasAddDense_OUT/MatMul:product:0(Dense_OUT/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
Dense_OUT/SoftmaxSoftmaxDense_OUT/BiasAdd:output:0*
T0*'
_output_shapes
:���������j
IdentityIdentityDense_OUT/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Conv_1/BiasAdd/ReadVariableOp^Conv_1/Conv2D/ReadVariableOp^Conv_2/BiasAdd/ReadVariableOp^Conv_2/Conv2D/ReadVariableOp^Conv_3/BiasAdd/ReadVariableOp^Conv_3/Conv2D/ReadVariableOp^Conv_4/BiasAdd/ReadVariableOp^Conv_4/Conv2D/ReadVariableOp^Conv_5/BiasAdd/ReadVariableOp^Conv_5/Conv2D/ReadVariableOp^Dense_1/BiasAdd/ReadVariableOp^Dense_1/MatMul/ReadVariableOp!^Dense_OUT/BiasAdd/ReadVariableOp ^Dense_OUT/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2>
Conv_1/BiasAdd/ReadVariableOpConv_1/BiasAdd/ReadVariableOp2<
Conv_1/Conv2D/ReadVariableOpConv_1/Conv2D/ReadVariableOp2>
Conv_2/BiasAdd/ReadVariableOpConv_2/BiasAdd/ReadVariableOp2<
Conv_2/Conv2D/ReadVariableOpConv_2/Conv2D/ReadVariableOp2>
Conv_3/BiasAdd/ReadVariableOpConv_3/BiasAdd/ReadVariableOp2<
Conv_3/Conv2D/ReadVariableOpConv_3/Conv2D/ReadVariableOp2>
Conv_4/BiasAdd/ReadVariableOpConv_4/BiasAdd/ReadVariableOp2<
Conv_4/Conv2D/ReadVariableOpConv_4/Conv2D/ReadVariableOp2>
Conv_5/BiasAdd/ReadVariableOpConv_5/BiasAdd/ReadVariableOp2<
Conv_5/Conv2D/ReadVariableOpConv_5/Conv2D/ReadVariableOp2@
Dense_1/BiasAdd/ReadVariableOpDense_1/BiasAdd/ReadVariableOp2>
Dense_1/MatMul/ReadVariableOpDense_1/MatMul/ReadVariableOp2D
 Dense_OUT/BiasAdd/ReadVariableOp Dense_OUT/BiasAdd/ReadVariableOp2B
Dense_OUT/MatMul/ReadVariableOpDense_OUT/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_Conv_1_layer_call_and_return_conditional_losses_138397903

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
I
-__inference_dropout_4_layer_call_fn_138398821

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398012`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
*__inference_Conv_1_layer_call_fn_138398644

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_1_layer_call_and_return_conditional_losses_138397903y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_Conv_5_layer_call_and_return_conditional_losses_138397975

inputs8
conv2d_readvariableop_resource:0@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:0@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������0
 
_user_specified_nameinputs
�
d
H__inference_MaxPool_5_layer_call_and_return_conditional_losses_138397882

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_Conv_2_layer_call_and_return_conditional_losses_138397921

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
+__inference_model_4_layer_call_fn_138398307	
input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0#
	unknown_7:0@
	unknown_8:@
	unknown_9:	�  

unknown_10: 

unknown_11: 

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_model_4_layer_call_and_return_conditional_losses_138398243o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:�����������

_user_specified_nameinput
�
�
*__inference_Conv_4_layer_call_fn_138398734

inputs!
unknown: 0
	unknown_0:0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_4_layer_call_and_return_conditional_losses_138397957w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������  0`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
E__inference_Conv_4_layer_call_and_return_conditional_losses_138398745

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  0*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  0X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  0i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�9
�
F__inference_model_4_layer_call_and_return_conditional_losses_138398032

inputs*
conv_1_138397904:
conv_1_138397906:*
conv_2_138397922:
conv_2_138397924:*
conv_3_138397940: 
conv_3_138397942: *
conv_4_138397958: 0
conv_4_138397960:0*
conv_5_138397976:0@
conv_5_138397978:@$
dense_1_138398002:	�  
dense_1_138398004: %
dense_out_138398026: !
dense_out_138398028:
identity��Conv_1/StatefulPartitionedCall�Conv_2/StatefulPartitionedCall�Conv_3/StatefulPartitionedCall�Conv_4/StatefulPartitionedCall�Conv_5/StatefulPartitionedCall�Dense_1/StatefulPartitionedCall�!Dense_OUT/StatefulPartitionedCall�
Conv_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_138397904conv_1_138397906*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_1_layer_call_and_return_conditional_losses_138397903�
MaxPool_1/PartitionedCallPartitionedCall'Conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_1_layer_call_and_return_conditional_losses_138397834�
Conv_2/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_1/PartitionedCall:output:0conv_2_138397922conv_2_138397924*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_2_layer_call_and_return_conditional_losses_138397921�
MaxPool_2/PartitionedCallPartitionedCall'Conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_2_layer_call_and_return_conditional_losses_138397846�
Conv_3/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_2/PartitionedCall:output:0conv_3_138397940conv_3_138397942*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_3_layer_call_and_return_conditional_losses_138397939�
MaxPool_3/PartitionedCallPartitionedCall'Conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_3_layer_call_and_return_conditional_losses_138397858�
Conv_4/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_3/PartitionedCall:output:0conv_4_138397958conv_4_138397960*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_4_layer_call_and_return_conditional_losses_138397957�
MaxPool_4/PartitionedCallPartitionedCall'Conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_4_layer_call_and_return_conditional_losses_138397870�
Conv_5/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_4/PartitionedCall:output:0conv_5_138397976conv_5_138397978*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_5_layer_call_and_return_conditional_losses_138397975�
MaxPool_5/PartitionedCallPartitionedCall'Conv_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_5_layer_call_and_return_conditional_losses_138397882�
To_flat/PartitionedCallPartitionedCall"MaxPool_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_To_flat_layer_call_and_return_conditional_losses_138397988�
Dense_1/StatefulPartitionedCallStatefulPartitionedCall To_flat/PartitionedCall:output:0dense_1_138398002dense_1_138398004*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_Dense_1_layer_call_and_return_conditional_losses_138398001�
dropout_4/PartitionedCallPartitionedCall(Dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398012�
!Dense_OUT/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_out_138398026dense_out_138398028*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_Dense_OUT_layer_call_and_return_conditional_losses_138398025y
IdentityIdentity*Dense_OUT/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Conv_1/StatefulPartitionedCall^Conv_2/StatefulPartitionedCall^Conv_3/StatefulPartitionedCall^Conv_4/StatefulPartitionedCall^Conv_5/StatefulPartitionedCall ^Dense_1/StatefulPartitionedCall"^Dense_OUT/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2@
Conv_1/StatefulPartitionedCallConv_1/StatefulPartitionedCall2@
Conv_2/StatefulPartitionedCallConv_2/StatefulPartitionedCall2@
Conv_3/StatefulPartitionedCallConv_3/StatefulPartitionedCall2@
Conv_4/StatefulPartitionedCallConv_4/StatefulPartitionedCall2@
Conv_5/StatefulPartitionedCallConv_5/StatefulPartitionedCall2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2F
!Dense_OUT/StatefulPartitionedCall!Dense_OUT/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
F__inference_Dense_1_layer_call_and_return_conditional_losses_138398816

inputs1
matmul_readvariableop_resource:	�  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
d
H__inference_MaxPool_1_layer_call_and_return_conditional_losses_138397834

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_To_flat_layer_call_and_return_conditional_losses_138397988

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:���������� Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
I
-__inference_MaxPool_4_layer_call_fn_138398750

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_4_layer_call_and_return_conditional_losses_138397870�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
f
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398831

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
I
-__inference_MaxPool_2_layer_call_fn_138398690

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_2_layer_call_and_return_conditional_losses_138397846�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�:
�
F__inference_model_4_layer_call_and_return_conditional_losses_138398399	
input*
conv_1_138398356:
conv_1_138398358:*
conv_2_138398362:
conv_2_138398364:*
conv_3_138398368: 
conv_3_138398370: *
conv_4_138398374: 0
conv_4_138398376:0*
conv_5_138398380:0@
conv_5_138398382:@$
dense_1_138398387:	�  
dense_1_138398389: %
dense_out_138398393: !
dense_out_138398395:
identity��Conv_1/StatefulPartitionedCall�Conv_2/StatefulPartitionedCall�Conv_3/StatefulPartitionedCall�Conv_4/StatefulPartitionedCall�Conv_5/StatefulPartitionedCall�Dense_1/StatefulPartitionedCall�!Dense_OUT/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�
Conv_1/StatefulPartitionedCallStatefulPartitionedCallinputconv_1_138398356conv_1_138398358*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_1_layer_call_and_return_conditional_losses_138397903�
MaxPool_1/PartitionedCallPartitionedCall'Conv_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_1_layer_call_and_return_conditional_losses_138397834�
Conv_2/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_1/PartitionedCall:output:0conv_2_138398362conv_2_138398364*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_2_layer_call_and_return_conditional_losses_138397921�
MaxPool_2/PartitionedCallPartitionedCall'Conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_2_layer_call_and_return_conditional_losses_138397846�
Conv_3/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_2/PartitionedCall:output:0conv_3_138398368conv_3_138398370*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@@ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_3_layer_call_and_return_conditional_losses_138397939�
MaxPool_3/PartitionedCallPartitionedCall'Conv_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������   * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_3_layer_call_and_return_conditional_losses_138397858�
Conv_4/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_3/PartitionedCall:output:0conv_4_138398374conv_4_138398376*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������  0*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_4_layer_call_and_return_conditional_losses_138397957�
MaxPool_4/PartitionedCallPartitionedCall'Conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������0* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_4_layer_call_and_return_conditional_losses_138397870�
Conv_5/StatefulPartitionedCallStatefulPartitionedCall"MaxPool_4/PartitionedCall:output:0conv_5_138398380conv_5_138398382*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Conv_5_layer_call_and_return_conditional_losses_138397975�
MaxPool_5/PartitionedCallPartitionedCall'Conv_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_MaxPool_5_layer_call_and_return_conditional_losses_138397882�
To_flat/PartitionedCallPartitionedCall"MaxPool_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_To_flat_layer_call_and_return_conditional_losses_138397988�
Dense_1/StatefulPartitionedCallStatefulPartitionedCall To_flat/PartitionedCall:output:0dense_1_138398387dense_1_138398389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_Dense_1_layer_call_and_return_conditional_losses_138398001�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398093�
!Dense_OUT/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_out_138398393dense_out_138398395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_Dense_OUT_layer_call_and_return_conditional_losses_138398025y
IdentityIdentity*Dense_OUT/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Conv_1/StatefulPartitionedCall^Conv_2/StatefulPartitionedCall^Conv_3/StatefulPartitionedCall^Conv_4/StatefulPartitionedCall^Conv_5/StatefulPartitionedCall ^Dense_1/StatefulPartitionedCall"^Dense_OUT/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2@
Conv_1/StatefulPartitionedCallConv_1/StatefulPartitionedCall2@
Conv_2/StatefulPartitionedCallConv_2/StatefulPartitionedCall2@
Conv_3/StatefulPartitionedCallConv_3/StatefulPartitionedCall2@
Conv_4/StatefulPartitionedCallConv_4/StatefulPartitionedCall2@
Conv_5/StatefulPartitionedCallConv_5/StatefulPartitionedCall2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2F
!Dense_OUT/StatefulPartitionedCall!Dense_OUT/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:X T
1
_output_shapes
:�����������

_user_specified_nameinput
�
d
H__inference_MaxPool_3_layer_call_and_return_conditional_losses_138397858

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
'__inference_signature_wrapper_138398440	
input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 0
	unknown_6:0#
	unknown_7:0@
	unknown_8:@
	unknown_9:	�  

unknown_10: 

unknown_11: 

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference__wrapped_model_138397825o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
1
_output_shapes
:�����������

_user_specified_nameinput
�
�
E__inference_Conv_4_layer_call_and_return_conditional_losses_138397957

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  0*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������  0X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������  0i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������  0w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������   : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������   
 
_user_specified_nameinputs
�
�
+__inference_Dense_1_layer_call_fn_138398805

inputs
unknown:	�  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_Dense_1_layer_call_and_return_conditional_losses_138398001o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:���������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:���������� 
 
_user_specified_nameinputs
�
G
+__inference_To_flat_layer_call_fn_138398790

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:���������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_To_flat_layer_call_and_return_conditional_losses_138397988a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:���������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
A
input8
serving_default_input:0�����������=
	Dense_OUT0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
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
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
 bias
 !_jit_compiled_convolution_op"
_tf_keras_layer
�
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
�
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses

.kernel
/bias
 0_jit_compiled_convolution_op"
_tf_keras_layer
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
�
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses

=kernel
>bias
 ?_jit_compiled_convolution_op"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op"
_tf_keras_layer
�
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses"
_tf_keras_layer
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias
 ]_jit_compiled_convolution_op"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
�
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses

pkernel
qbias"
_tf_keras_layer
�
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses
x_random_generator"
_tf_keras_layer
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

kernel
	�bias"
_tf_keras_layer
�
0
 1
.2
/3
=4
>5
L6
M7
[8
\9
p10
q11
12
�13"
trackable_list_wrapper
�
0
 1
.2
/3
=4
>5
L6
M7
[8
\9
p10
q11
12
�13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
+__inference_model_4_layer_call_fn_138398063
+__inference_model_4_layer_call_fn_138398473
+__inference_model_4_layer_call_fn_138398506
+__inference_model_4_layer_call_fn_138398307�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
F__inference_model_4_layer_call_and_return_conditional_losses_138398567
F__inference_model_4_layer_call_and_return_conditional_losses_138398635
F__inference_model_4_layer_call_and_return_conditional_losses_138398353
F__inference_model_4_layer_call_and_return_conditional_losses_138398399�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
$__inference__wrapped_model_138397825input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	�iter
�beta_1
�beta_2

�decay
�learning_ratem� m�.m�/m�=m�>m�Lm�Mm�[m�\m�pm�qm�m�	�m�v� v�.v�/v�=v�>v�Lv�Mv�[v�\v�pv�qv�v�	�v�"
	optimizer
-
�serving_default"
signature_map
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Conv_1_layer_call_fn_138398644�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Conv_1_layer_call_and_return_conditional_losses_138398655�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':%2Conv_1/kernel
:2Conv_1/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_MaxPool_1_layer_call_fn_138398660�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_MaxPool_1_layer_call_and_return_conditional_losses_138398665�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Conv_2_layer_call_fn_138398674�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Conv_2_layer_call_and_return_conditional_losses_138398685�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':%2Conv_2/kernel
:2Conv_2/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_MaxPool_2_layer_call_fn_138398690�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_MaxPool_2_layer_call_and_return_conditional_losses_138398695�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Conv_3_layer_call_fn_138398704�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Conv_3_layer_call_and_return_conditional_losses_138398715�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':% 2Conv_3/kernel
: 2Conv_3/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_MaxPool_3_layer_call_fn_138398720�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_MaxPool_3_layer_call_and_return_conditional_losses_138398725�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Conv_4_layer_call_fn_138398734�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Conv_4_layer_call_and_return_conditional_losses_138398745�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':% 02Conv_4/kernel
:02Conv_4/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_MaxPool_4_layer_call_fn_138398750�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_MaxPool_4_layer_call_and_return_conditional_losses_138398755�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_Conv_5_layer_call_fn_138398764�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_Conv_5_layer_call_and_return_conditional_losses_138398775�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
':%0@2Conv_5/kernel
:@2Conv_5/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_MaxPool_5_layer_call_fn_138398780�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_MaxPool_5_layer_call_and_return_conditional_losses_138398785�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_To_flat_layer_call_fn_138398790�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_To_flat_layer_call_and_return_conditional_losses_138398796�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
p0
q1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_Dense_1_layer_call_fn_138398805�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_Dense_1_layer_call_and_return_conditional_losses_138398816�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:	�  2Dense_1/kernel
: 2Dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
-__inference_dropout_4_layer_call_fn_138398821
-__inference_dropout_4_layer_call_fn_138398826�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398831
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398843�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
/
0
�1"
trackable_list_wrapper
/
0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_Dense_OUT_layer_call_fn_138398852�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_Dense_OUT_layer_call_and_return_conditional_losses_138398863�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
":  2Dense_OUT/kernel
:2Dense_OUT/bias
 "
trackable_list_wrapper
�
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
13
14"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_model_4_layer_call_fn_138398063input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_model_4_layer_call_fn_138398473inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_model_4_layer_call_fn_138398506inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_model_4_layer_call_fn_138398307input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_4_layer_call_and_return_conditional_losses_138398567inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_4_layer_call_and_return_conditional_losses_138398635inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_4_layer_call_and_return_conditional_losses_138398353input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_model_4_layer_call_and_return_conditional_losses_138398399input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
'__inference_signature_wrapper_138398440input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_Conv_1_layer_call_fn_138398644inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv_1_layer_call_and_return_conditional_losses_138398655inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_MaxPool_1_layer_call_fn_138398660inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_MaxPool_1_layer_call_and_return_conditional_losses_138398665inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_Conv_2_layer_call_fn_138398674inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv_2_layer_call_and_return_conditional_losses_138398685inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_MaxPool_2_layer_call_fn_138398690inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_MaxPool_2_layer_call_and_return_conditional_losses_138398695inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_Conv_3_layer_call_fn_138398704inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv_3_layer_call_and_return_conditional_losses_138398715inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_MaxPool_3_layer_call_fn_138398720inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_MaxPool_3_layer_call_and_return_conditional_losses_138398725inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_Conv_4_layer_call_fn_138398734inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv_4_layer_call_and_return_conditional_losses_138398745inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_MaxPool_4_layer_call_fn_138398750inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_MaxPool_4_layer_call_and_return_conditional_losses_138398755inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
*__inference_Conv_5_layer_call_fn_138398764inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Conv_5_layer_call_and_return_conditional_losses_138398775inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_MaxPool_5_layer_call_fn_138398780inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_MaxPool_5_layer_call_and_return_conditional_losses_138398785inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_To_flat_layer_call_fn_138398790inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_To_flat_layer_call_and_return_conditional_losses_138398796inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
+__inference_Dense_1_layer_call_fn_138398805inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_Dense_1_layer_call_and_return_conditional_losses_138398816inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
-__inference_dropout_4_layer_call_fn_138398821inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
-__inference_dropout_4_layer_call_fn_138398826inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398831inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398843inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
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
�B�
-__inference_Dense_OUT_layer_call_fn_138398852inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_Dense_OUT_layer_call_and_return_conditional_losses_138398863inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
,:*2Adam/Conv_1/kernel/m
:2Adam/Conv_1/bias/m
,:*2Adam/Conv_2/kernel/m
:2Adam/Conv_2/bias/m
,:* 2Adam/Conv_3/kernel/m
: 2Adam/Conv_3/bias/m
,:* 02Adam/Conv_4/kernel/m
:02Adam/Conv_4/bias/m
,:*0@2Adam/Conv_5/kernel/m
:@2Adam/Conv_5/bias/m
&:$	�  2Adam/Dense_1/kernel/m
: 2Adam/Dense_1/bias/m
':% 2Adam/Dense_OUT/kernel/m
!:2Adam/Dense_OUT/bias/m
,:*2Adam/Conv_1/kernel/v
:2Adam/Conv_1/bias/v
,:*2Adam/Conv_2/kernel/v
:2Adam/Conv_2/bias/v
,:* 2Adam/Conv_3/kernel/v
: 2Adam/Conv_3/bias/v
,:* 02Adam/Conv_4/kernel/v
:02Adam/Conv_4/bias/v
,:*0@2Adam/Conv_5/kernel/v
:@2Adam/Conv_5/bias/v
&:$	�  2Adam/Dense_1/kernel/v
: 2Adam/Dense_1/bias/v
':% 2Adam/Dense_OUT/kernel/v
!:2Adam/Dense_OUT/bias/v�
E__inference_Conv_1_layer_call_and_return_conditional_losses_138398655p 9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
*__inference_Conv_1_layer_call_fn_138398644c 9�6
/�,
*�'
inputs�����������
� ""�������������
E__inference_Conv_2_layer_call_and_return_conditional_losses_138398685p./9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
*__inference_Conv_2_layer_call_fn_138398674c./9�6
/�,
*�'
inputs�����������
� ""�������������
E__inference_Conv_3_layer_call_and_return_conditional_losses_138398715l=>7�4
-�*
(�%
inputs���������@@
� "-�*
#� 
0���������@@ 
� �
*__inference_Conv_3_layer_call_fn_138398704_=>7�4
-�*
(�%
inputs���������@@
� " ����������@@ �
E__inference_Conv_4_layer_call_and_return_conditional_losses_138398745lLM7�4
-�*
(�%
inputs���������   
� "-�*
#� 
0���������  0
� �
*__inference_Conv_4_layer_call_fn_138398734_LM7�4
-�*
(�%
inputs���������   
� " ����������  0�
E__inference_Conv_5_layer_call_and_return_conditional_losses_138398775l[\7�4
-�*
(�%
inputs���������0
� "-�*
#� 
0���������@
� �
*__inference_Conv_5_layer_call_fn_138398764_[\7�4
-�*
(�%
inputs���������0
� " ����������@�
F__inference_Dense_1_layer_call_and_return_conditional_losses_138398816]pq0�-
&�#
!�
inputs���������� 
� "%�"
�
0��������� 
� 
+__inference_Dense_1_layer_call_fn_138398805Ppq0�-
&�#
!�
inputs���������� 
� "���������� �
H__inference_Dense_OUT_layer_call_and_return_conditional_losses_138398863]�/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� �
-__inference_Dense_OUT_layer_call_fn_138398852P�/�,
%�"
 �
inputs��������� 
� "�����������
H__inference_MaxPool_1_layer_call_and_return_conditional_losses_138398665�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_MaxPool_1_layer_call_fn_138398660�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_MaxPool_2_layer_call_and_return_conditional_losses_138398695�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_MaxPool_2_layer_call_fn_138398690�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_MaxPool_3_layer_call_and_return_conditional_losses_138398725�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_MaxPool_3_layer_call_fn_138398720�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_MaxPool_4_layer_call_and_return_conditional_losses_138398755�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_MaxPool_4_layer_call_fn_138398750�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
H__inference_MaxPool_5_layer_call_and_return_conditional_losses_138398785�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
-__inference_MaxPool_5_layer_call_fn_138398780�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
F__inference_To_flat_layer_call_and_return_conditional_losses_138398796a7�4
-�*
(�%
inputs���������@
� "&�#
�
0���������� 
� �
+__inference_To_flat_layer_call_fn_138398790T7�4
-�*
(�%
inputs���������@
� "����������� �
$__inference__wrapped_model_138397825� ./=>LM[\pq�8�5
.�+
)�&
input�����������
� "5�2
0
	Dense_OUT#� 
	Dense_OUT����������
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398831\3�0
)�&
 �
inputs��������� 
p 
� "%�"
�
0��������� 
� �
H__inference_dropout_4_layer_call_and_return_conditional_losses_138398843\3�0
)�&
 �
inputs��������� 
p
� "%�"
�
0��������� 
� �
-__inference_dropout_4_layer_call_fn_138398821O3�0
)�&
 �
inputs��������� 
p 
� "���������� �
-__inference_dropout_4_layer_call_fn_138398826O3�0
)�&
 �
inputs��������� 
p
� "���������� �
F__inference_model_4_layer_call_and_return_conditional_losses_138398353z ./=>LM[\pq�@�=
6�3
)�&
input�����������
p 

 
� "%�"
�
0���������
� �
F__inference_model_4_layer_call_and_return_conditional_losses_138398399z ./=>LM[\pq�@�=
6�3
)�&
input�����������
p

 
� "%�"
�
0���������
� �
F__inference_model_4_layer_call_and_return_conditional_losses_138398567{ ./=>LM[\pq�A�>
7�4
*�'
inputs�����������
p 

 
� "%�"
�
0���������
� �
F__inference_model_4_layer_call_and_return_conditional_losses_138398635{ ./=>LM[\pq�A�>
7�4
*�'
inputs�����������
p

 
� "%�"
�
0���������
� �
+__inference_model_4_layer_call_fn_138398063m ./=>LM[\pq�@�=
6�3
)�&
input�����������
p 

 
� "�����������
+__inference_model_4_layer_call_fn_138398307m ./=>LM[\pq�@�=
6�3
)�&
input�����������
p

 
� "�����������
+__inference_model_4_layer_call_fn_138398473n ./=>LM[\pq�A�>
7�4
*�'
inputs�����������
p 

 
� "�����������
+__inference_model_4_layer_call_fn_138398506n ./=>LM[\pq�A�>
7�4
*�'
inputs�����������
p

 
� "�����������
'__inference_signature_wrapper_138398440� ./=>LM[\pq�A�>
� 
7�4
2
input)�&
input�����������"5�2
0
	Dense_OUT#� 
	Dense_OUT���������