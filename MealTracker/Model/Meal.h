//
//  Meal.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 13.01.21.
//

#import "EnumConstants.h"

@interface Meal:NSObject
    @property(atomic, readwrite) NSString *title;
    @property (atomic, readwrite) NSInteger type;
    @property (atomic, readwrite) NSArray *ingredients;
    @property (atomic, readwrite) NSDate *date;
    @property (atomic, readwrite) int numberOfServings;


- (instancetype)initWithTitle:(NSString *)title
                        type:( NSInteger ) type
                  ingredients:(NSArray *)ingredients
                  date:(NSDate *)date
            numberOfServings:(int)numberOfServings;
        
@end
