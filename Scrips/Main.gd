extends Control

######TODO######
##EXPORT TO .TXT
##IMPORT FROM .TXT

onready var recipe_list = $HSplitContainer/Background/RecipeList
onready var add_recipe = $HSplitContainer/Sidebar/AddRecipe
onready var import_recipe = $HSplitContainer/Sidebar/ImportRecipe
onready var remove_recipe = $HSplitContainer/Sidebar/RemoveRecipe
onready var recipe_panel = $RecipePanel
onready var done = $RecipePanel/Done
onready var cancel = $RecipePanel/Cancel
onready var recipe_name_edit = $RecipePanel/RecipeName

#func _input(event):
#	if Input.is_mouse_button_pressed(1):
#		Recipe.remove_recipe(1, recipe_list)
#	if event is InputEventKey:
#		print(event.scancode)

func _ready():
	add_recipe.connect("pressed", self, "_add_new_recipe")
	done.connect("pressed", self, "recipe_done")
	cancel.connect("pressed", self, "recipe_cancel")

func _add_new_recipe():
	recipe_panel.visible = true
	if recipe_name_edit.text != "":
		recipe_name_edit.text = ""

func recipe_cancel():
	recipe_panel.visible = false

func recipe_done():
	if recipe_name_edit.text != "":
		recipe_panel.visible = false
		Recipe.add_recipe(recipe_name_edit.text, recipe_list)
