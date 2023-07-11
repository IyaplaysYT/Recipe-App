extends Node

#####TODO###########
##REMOVING RECIPES##

var selected = false
#var recipe_list:ItemList = preload("res://Scenes/MainPage.tscn").instance().get_node("HSplitContainer/Background/RecipeList")

func add_recipe(recipe_name:String, recipe_list:ItemList):
	recipe_list.add_item(recipe_name, load("res://Textures/SVGs/edit.svg"), true)

func remove_recipe(index:int, recipe_list:ItemList):
	recipe_list.remove_item(recipe_list.get_selected_items()[0])
	print(recipe_list.get_selected_items())
