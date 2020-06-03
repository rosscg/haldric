extends Node

var terrain := {}
var races := {}
var units := {}

var scenarios := {}


func _ready() -> void:
	scan()


func scan() -> void:
	_load_terrain()
	_load_races()
	_load_units()
	_load_scenarios()


func _load_terrain() -> void:
	terrain.clear()

	for file_data in Loader.load_dir("res://data/terrain", ["tres", "res"]):
		var code = file_data.data.code
		terrain[code] = file_data.data

	print(terrain)


func _load_races() -> void:
	races.clear()

	for file_data in Loader.load_dir("res://data/races", ["tres", "res"]):
		races[file_data.data.id] = file_data.data

	print(races)


func _load_units() -> void:
	units.clear()

	for file_data in Loader.load_dir("res://data/units", ["tscn", "scn"]):
		units[file_data.data.instance().name] = file_data.data

	print(units)


func _load_scenarios() -> void:
	scenarios.clear()

	for file_data in Loader.load_dir("res://data/scenarios", ["tres", "res"]):
		scenarios[file_data.data.id] = file_data.data

	print(scenarios)