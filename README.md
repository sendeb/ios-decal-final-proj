#App Name: Reciply
##Authors: 
* Debleena Sengupta
* Hope Ludwinski

##Purpose: 
Our app allows users to conveniently store recipies and other associated tasks.  

##Features:
* Add new recipes
* They can add a recipe, edit an existing recipe, and delete recipes. 
* They can export the ingredients from any recipe to a handy grocery list. 
* The grocery list also allows them to manually add or delete any item. 
* Search for keywords in title, ingredients, or description of recipe. 

##Control Flow:
* When user logs on they can see most recently added recipes and have option to add new recipe
* User can search existing recipes by title or ingredeints
* "Find recipe" feature will allow user to input recipe or ingrdients and an online search will produce a list of possible results

##Implementation:

###Model:
* recipes.swift
* groceryList.swift

###View:
* currentRecipeTableView.swift
* addRecipeView.swift
* findRecipe.swift
* groceryListTableView.swift
* recipeDetailView.swift

###Controller:
* currentRecipeTableViewController.swift
* addRecipeViewController.swift
* findRecipeController.swift
* groceryListViewController.swift
* recipeDetailView Controller.swift
