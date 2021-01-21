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
    @property NSMutableArray <Meal *> *week1List;
    @property NSMutableArray <Meal *> *week2List;
    @property NSMutableArray <Meal *> *week3List;
    @property NSMutableArray <Meal *> *week4List;
    
@end
