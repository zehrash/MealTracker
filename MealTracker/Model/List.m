//
//  List.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 11.01.21.
//

#import <Foundation/Foundation.h>
#import "List.h"
@implementation List

- (instancetype)initWithList:(NSMutableArray *)lunchList
                  dinnerList:(NSMutableArray *)dinnerList
                  defaultList:(NSMutableArray *)defaultList;{
    self = [super init];
    if (self) {
        _lunchList = lunchList;
        _dinnerList = dinnerList;
        _defaultList = defaultList;
    }
    return self;
}
@end


