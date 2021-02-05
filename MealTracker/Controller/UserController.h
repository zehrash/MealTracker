//
//  UserController.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 26.01.21.
//

#import "Meal.h"
#import "User.h"
@interface UserController : NSObject
@property (strong,nonatomic)User *user;
-(void) addMealToList:(Meal*)meal;
-(NSMutableArray*) getMealList:(MealType)type;
-(void )createUser:(NSString*)name;
-(User*)getUser;
-(Meal*)getMealInfo: ( NSString* )title
   joiningArgument2:(  NSInteger )mealType
   joiningArgument3: (NSArray* ) ingredients
   joiningArgument4: (NSDate* ) date
   joiningArgument5:( int )numberOfServings;
@end
