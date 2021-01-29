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
                       type:( MealType) type
                       ingredients:(NSArray *)ingredients
                       date:(NSDate *)date
                 numberOfServings:(int )numberOfServings;{
    self = [super init];
    if (self) {
        _title = title;
        _type = type;
        _ingredients = ingredients;
        _date = date;
        _numberOfServings = numberOfServings;
    }
    return self;
}
        
@end


