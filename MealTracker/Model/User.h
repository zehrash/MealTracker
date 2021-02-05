//
//  User.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 22.01.21.
//

#ifndef User_h
#define User_h

#import "List.h"
@interface User :NSObject

@property NSString *name;
@property (atomic, strong) List* userList;

-(void)addMeal:(Meal*)meal;
-(NSMutableArray*)getMealList: (MealType)type;
-(instancetype)initWithName:(NSString *)name;
        
@end

#endif /* User_h */
