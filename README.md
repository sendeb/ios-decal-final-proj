#App Name: Reciply
##Authors: 
* Debleena Sengupta
* Hope Ludwinski

##Purpose: 
Our app allows users to not only store recipies but also list out leftover items 
they have in the kitchen. The app will give suggestions of what recipies they 
can make with that food. This will discourage wasting of food and will be a 
money saver! 
##Features:
* Add new recipes
* list out leftover food items and search existing recipe list to see which recipe will take the least additonal ingrediants to make.
* ability to add items to grocery list
*  find recipes online using leftover items.

##Control Flow:
* When user logs on they can see most recently added recipes and have option to add new recipe
* User can search existing recipes by title or ingredeints
* "find recipe" feature will allow user to input recipe or ingrdients and an online search will produce a list of possible results

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
