extends Node
class_name RegularCellData

#The RegularCellData structure holds information about the triangulation
#used for a single equivalence class in the modified Marching Cubes algorithm,
#described in Section 3.2.

#Variables
var geometryCounts:int    # High nibble is vertex count, low nibble is triangle count.
var vertexIndex:Array     # Groups of 3 indexes giving the triangulation.

#Overrides/Implementations
func _ready() -> void:
	self.set_process(false)

#Functions
func GetVertexCount() -> int:
	return (geometryCounts >> 4)
func GetTriangleCount() -> int:
	return (geometryCounts & 0x0F)

#Methods

#Events/Signals
