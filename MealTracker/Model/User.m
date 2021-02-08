//
//  User.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 11.01.21.
//

#import <Foundation/Foundation.h>


#import "User.h"

@implementation User

- (instancetype)initWithName:(NSString *)name{
    self = [super init];
    if (self) {
        self.name = name;
        self.userList = [[List alloc] initWithLunchList: [[NSMutableArray alloc] init]
                                    dinnerList:[[NSMutableArray alloc] init]
                                   defaultList:[[NSMutableArray alloc] init]];

    }
    return self;
    
}

-(void) addMeal:(Meal* ) meal{
  
    if(meal.type==MealTypeLunch){
        [_userList.lunchList addObject:meal];
    }
    else{
        [_userList.dinnerList addObject:meal];
    }
}

-(NSMutableArray*)getMealList: (MealType)type{
    if(type==MealTypeLunch){
        return _userList.lunchList;
    }
    else{
        return _userList.dinnerList;
    }
}

@end

