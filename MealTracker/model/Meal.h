//
//  Meal.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 13.01.21.
//

#import "EnumConstants.h"

@interface Meal:NSObject
    @property(atomic, readwrite) NSString *title;
    @property (atomic, readwrite) enum type;
    @property (atomic, readwrite) NSArray *ingredients;
    @property (atomic, readwrite) NSDate *date;
    @property (atomic, readwrite) int numberOfServings;



- (instancetype)initWithName:(NSString *)title
                  type:(enum EnumConstants ) type//wtf, confusion// how to make enum of type MealType
                  ingredients:(NSArray *)ingredients
                  date:(NSDate *)students
            numberOfServings:(int *)numberOfServings;
        
@end
