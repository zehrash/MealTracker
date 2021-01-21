//
//  Meal.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 13.01.21.
//

@interface Meal:NSObject
    @property(atomic, readwrite) NSString *title;
    @property (atomic, readwrite) NSString *type;
    @property (atomic, readwrite) NSArray *ingredients;
    @property (atomic, readwrite) NSDate *date;
    @property (atomic, readwrite) int numberOfServings;

@end
