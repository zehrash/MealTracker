//
//  List.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 13.01.21.
//
#import "Meal.h"
@interface List : NSObject
    
    @property NSMutableArray <Meal *> *lunchList;
    @property NSMutableArray <Meal *> *dinnerList;
    @property NSMutableArray <Meal *> *defaultList;

- (instancetype)initWithLunchList:(NSMutableArray *)lunchList
                dinnerList:(NSMutableArray *)dinnerList
                defaultList:(NSMutableArray *)defaultList;
    
@end
