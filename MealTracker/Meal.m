//
//  test.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 11.01.21.
//

#import <Foundation/Foundation.h>
#import "Meal.h"

@implementation Meal

- (instancetype)initWithTitle:(NSString *)title
                       type:(enum EnumConstants ) type//wtf, confusion// how to make enum of type MealType
                       ingredients:(NSArray *)ingredients
                       date:(NSDate *)students
                 numberOfServings:(int *)numberOfServings;{
    self = [super init];
    if (self) {
        _title = title;
        _type = type;
        _ingredients = ingredients;
        _date = date;
        _numberOfServings = numberOfServings;
    }
    return self;

        
@end


