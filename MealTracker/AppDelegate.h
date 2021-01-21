//
//  AppDelegate.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 8.01.21.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer* persistentContainer;

- (void)saveContext;


@end

