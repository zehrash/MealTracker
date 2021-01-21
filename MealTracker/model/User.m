//
//  User.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 11.01.21.
//

#import <Foundation/Foundation.h>

#import "List.h"

@interface User:NSObject
    @property NSString *name;
    @property  NSString *email;
    @property (atomic, strong) List* userList;

@end
@implementation User



@end

