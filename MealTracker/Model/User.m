//
//  User.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 11.01.21.
//

#import <Foundation/Foundation.h>


#import "User.h"



@implementation User


- (instancetype)initWithName:(NSString *)name
                  email:(NSString *)email {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _userList = [[List alloc] initWithList: [[NSMutableArray alloc] init]
                                    dinnerList:[[NSMutableArray alloc] init]
                                   defaultList:[[NSMutableArray alloc] init]];

    }
    return self;
    
}

-(void) addMeal:(Meal* ) meal{
    
    if(meal.type==MealTypeLUNCH){
        [_userList.lunchList addObject:meal];
    }
    else{
        [_userList.dinnerList addObject:meal];
    }
}
-(NSMutableArray*)getMealList: (MealType)type{
    if(type==MealTypeLUNCH){
        return _userList.lunchList;
    }
    else{
        return _userList.dinnerList;
    }
}



@end

