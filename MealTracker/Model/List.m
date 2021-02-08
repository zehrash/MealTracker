//
//  List.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 11.01.21.
//

#import <Foundation/Foundation.h>
#import "List.h"
@implementation List

- (instancetype)initWithLunchList:(NSMutableArray *)lunchList
                  dinnerList:(NSMutableArray *)dinnerList
                  defaultList:(NSMutableArray *)defaultList;{
    self = [super init];
    if (self) {
        self.lunchList = lunchList;
        self.dinnerList = dinnerList;
        self.defaultList = defaultList;
    }
    return self;
}
@end


