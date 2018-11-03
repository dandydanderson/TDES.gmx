/// @function addItem
/// @descripton Add an item to a grid
/// @argument0 DSGrid Grid_to_Add
/// @argument1 String Item_Name
/// @arguement2 Int Item_Amount
/// @argument3 String Item_Description
/// @argument4 Sprite Item_Sprite
/// @arguemtn5 Script Item_Script

gridToAddTo = argument0;
newItemName = argument1;
newItemAmount = argument2;
newItemDescription = argument3;
newItemSprite = argument4;
newItemScript = argument5;


//Check if the item already exists, and if it does increase quantity by proper amount

for(i = 0; i < ds_grid_height(gridToAddTo); i = i + 1;)
    {
    if(ds_grid_get(gridToAddTo, 0, i) == newItemName) 
        {
        ds_grid_set(gridToAddTo, 1, i, ds_grid_get(gridToAddTo, 1, i) + newItemAmount);
        return true;
        }
    };
   
//This will check for an empty inventory, increase size, and add item 
    
if(ds_grid_get(gridToAddTo, 0, 0) != 0)
    
    {
    ds_grid_resize(gridToAddTo, playerInventoryWidth, ds_grid_height(gridToAddTo) + 1);
    }
    
newItemSpot = ds_grid_height(gridToAddTo) - 1;
ds_grid_set(gridToAddTo, 0, newItemSpot, newItemName);
ds_grid_set(gridToAddTo, 1, newItemSpot, newItemAmount);
ds_grid_set(gridToAddTo, 2, newItemSpot, newItemDescription);
ds_grid_set(gridToAddTo, 3, newItemSpot, newItemSprite);
ds_grid_set(gridToAddTo, 4, newItemSpot, newItemScript);
return true;

