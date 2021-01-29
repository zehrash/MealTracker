//
//  UserController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 22.01.21.
//

#import <Foundation/Foundation.h>
#import "Meal.h"
#import "User.h"
#import "UserController.h"

@implementation UserController

User *user;
-(Meal  *) getMealInfo:( NSString* )title
    joiningArgument2:(MealType )type
    joiningArgument3: (NSArray* ) ingredients
    joiningArgument4: (NSDate* ) date
    joiningArgument5:( int )numberOfServings {
   
    Meal *meal = [[Meal alloc] initWithTitle:  title
                               type:type
                               ingredients:ingredients
                               date:date
                               numberOfServings: numberOfServings];
    
    return meal;

}
-(void )createUser:(NSString*)name
           withArg2:(NSString*)email{
    
    user = [[User alloc] initWithName: name
                                      email:email];
}
 


-(void) addMealToList:(Meal*) meal{
    
    
    [user addMeal:meal];
    //return pop-up message if adding was succesful
    
}

-(NSMutableArray*) showMealList:(MealType)type{
    NSMutableArray* list = [[NSMutableArray alloc]init];
    list = [user getMealList:type];
    
    for (Meal *curMeal in list){
       // Assuming you want to print the 'count' property and it's int
       NSLog(@"%@", curMeal.title);

       // You can, of course, use any other field (or several of them)
    }
    return list;

}
//-(NSMutableArray* ) showAllMeals{
    
    //call method to getAllMeals from user class
    
//}




@end
