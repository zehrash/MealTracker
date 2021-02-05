//
//  UserController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 22.01.21.
//

#import <Foundation/Foundation.h>
#import "UserController.h"

@class Meal;
@implementation UserController


-(Meal  *) getMealInfo:( NSString* )title
    joiningArgument2:(NSInteger )type
    joiningArgument3: (NSArray* ) ingredients
    joiningArgument4: (NSDate* ) date
    joiningArgument5:( int )numberOfServings {
   
    Meal *meal = [[Meal alloc] initWithTitle:title
                               type:type
                               ingredients:ingredients
                               date:date
                               numberOfServings: numberOfServings];
    return meal;

}
-(void )createUser:(NSString*)name{
   self.user = [[User alloc] initWithName: name];
}

-(void) addMealToList:(Meal*) meal{
    
    [self.user addMeal:meal];
    
    //return pop-up message if adding was succesful
    
}

-(NSMutableArray*) getMealList:(MealType)type{
    NSMutableArray* list = [[NSMutableArray alloc]init];
    list = [self.user getMealList:type];
    return list;
}
-(User*)getUser{
    return _user;
}
@end
