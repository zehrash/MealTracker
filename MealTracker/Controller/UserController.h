//
//  UserController.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 26.01.21.
//

#import "Meal.h"

@interface UserController :NSObject

-(void) addMealToList:(Meal*)meal;
-(NSMutableArray*) showMealList:(MealType)type;
-(Meal*)getMealInfo: ( NSString* )title
   joiningArgument2:(  MealType )mealType
   joiningArgument3: (NSArray* ) ingredients
   joiningArgument4: (NSDate* ) date
   joiningArgument5:( int )numberOfServings;

@end
