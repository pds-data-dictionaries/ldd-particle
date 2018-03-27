# Particle Local Data Dictionary

The Particle dictionary contains classes that describe the composition of multidimensional particle data consisting of Array (and Array subclass) data objects.

Version: 1.1.0.0  
Steward: ppi

## Classes

### Aligned_Values
The Aligned_Values class describes the values which align element-by-element with the elements of a observation data array. The aligned values array must have the same dimensions as the observation array.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[Local_Internal_Reference](#local_internal_reference) | 1 | 1

### Axis_Values
The Axis_Values class describes the values which are associated with the elements along an axis of a observation data array.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[Local_Internal_Reference](#local_internal_reference) | 1 | 1
[axis_number](#axis_number) | 1 | 1

### Face_Values
The Face_Values class describes the values which are associated with the elements on the face of a observation data array.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[Local_Internal_Reference](#local_internal_reference) | 1 | 1
[Face_Plane](#face_plane) | 1 | 1

### Face_Plane
The Face_Plane class describes a plane which is defined by two axes.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[face_axis](#face_axis) | 2 | 2

### Local_Internal_Reference
The Local_Internal_Reference class is used to cross-reference other classes or objects within the product.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
pds.local_identifier_reference | 1 | 1
[local_reference_type](#local_reference_type) | 1 | 1
pds.comment | 0 | 1

### Particle_Observation
The Particle_Observation describes the data of a observation and the values which are associated with the elements along an axis or on the face of a observation data array.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
pds.name | 1 | 1
pds.local_identifier | 0 | 1
pds.description | 1 | 1
[Primary_Values](#primary_values) | 1 | 1
[Axis_Values](#axis_values) | 0 | *
[Face_Values](#face_values) | 0 | *
[Aligned_Values](#aligned_values) | 0 | *

### Primary_Values
The Primary_Values class describes the values which are the primary observation data array.

Attribute    | Min Occur. | Max Occur.
------------ | ---------- | -----------
[Local_Internal_Reference](#local_internal_reference) | 1 | 1
## Attributes


### axis_number
The index of the axis. The first axis is numbered as 1.

Type: ASCII_Integer  
Units: Units_of_None  
Minimum Value: 1  



### face_axis
The axis number that defines one axis of a face plane.

Type: ASCII_Integer  
Units: Units_of_None  
Minimum Value: 1  



### local_reference_type
The local_reference_type attribute provides the name of an association between an entity identified by a local_identifier_reference and another corresponding entity identified by a local_identifier

Type: ASCII_Short_String_Collapsed  
Units: Units_of_None  

Name                                    | Description
--------------------------------------- | ----------------------------
particle_observation_to_observation_values | A reference to the array containing the primary observation data.
particle_observation_to_axis_values | A reference to the array containing the data values for an axis of primary observation data.
particle_observation_to_face_values | A reference to the array containing the data values for a face of primary observation data.
particle_observation_to_aligned_values | A reference to an array that has an identical array structure (in both axis definitions, and number of elements) as the primary observation data array.

