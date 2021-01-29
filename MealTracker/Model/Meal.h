//
//  Meal.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 13.01.21.
//

#import "EnumConstants.h"

@interface Meal:NSObject
    @property(atomic, readwrite) NSString *title;
    @property (atomic, readwrite) MealType type;
    @property (atomic, readwrite) NSArray *ingredients;
    @property (atomic, readwrite) NSDate *date;
    @property (atomic, readwrite) int numberOfServings;



- (instancetype)initWithTitle:(NSString *)title
                        type:( MealType ) type//wtf, confusion// how to make enum of type MealType
                  ingredients:(NSArray *)ingredients
                  date:(NSDate *)date
            numberOfServings:(int)numberOfServings;
        
@end
