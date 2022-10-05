@tool
extends EditorImportPlugin

func _get_importer_name():
	return "lithtech.dat.import"

func _get_visible_name():
	return "Lithtech DAT Importer"

func _get_recognized_extensions():
	return ["dat"]

func _get_save_extension():
	return "tscn"

func _get_resource_type():
	return "PackedScene"

func _get_preset_count():
	return 1

func _get_preset_name(i):
	return "Default"

func _get_import_options(path: String, preset_index: int):
	return []
	
func _get_option_visibility(path: String, option_name: StringName, options: Dictionary):
	return true
	
func _get_priority():
	return 1.0
	
func _get_import_order():
	return 0

var _world_builder = null

func _init():
	self._world_builder = load('res://Addons/LTDatReader/WorldBuilder.gd').new()

func _import(source_file, save_path, options, platform_variants, gen_files):
	var scene = self._world_builder.build(source_file, options)
	
	var filename = save_path + "." + _get_save_extension()
	print("Saving as ", filename)
	ResourceSaver.save(scene, filename)
	return OK

