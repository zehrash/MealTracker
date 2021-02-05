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
                       type:( NSInteger ) type
                       ingredients:(NSArray *)ingredients
                       date:(NSDate *)date
                 numberOfServings:(int )numberOfServings;{
    self = [super init];
    if (self) {
        self.title = title;
        self.type = type;
        self.ingredients = ingredients;
        self.date = date;
        self.numberOfServings = numberOfServings;
    }
    return self;
}
        
@end


