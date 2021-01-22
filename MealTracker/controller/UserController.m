//
//  UserController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 22.01.21.
//

#import <Foundation/Foundation.h>
#import "Meal.h"
#import "User.h"
#import "EnumConstants.h"
#import "UserController.h"

@interface UserController: NSObject

@end

@implementation UserController


-(Meal  *) getMealInfo:( NSString )title
    joiningArgument2:( enum MealType )mealType
    joiningArgument3: (NSArray) ingredients
    joiningArgument4: (NSDate) date
    joiningArgument5:( int )numberOfServings {
   
    Meal *meal = [[Meal alloc]initWithTitle:  title
                                          type:mealType
                                          ingredients:ingredients
                                          date:date
                          numberOfServings: numberOfServings];
    
    return meal

}


-(void) addMealToList:(Meal*) meal{
    
    //call method addToList from User class
    
    
    //return pop-up message if adding was succesful
    
}

-(NSMutableArray) showAllMeals{
    
    //call method to getAllMeals from user class
    
}




@end
