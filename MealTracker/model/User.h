//
//  User.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 22.01.21.
//

#ifndef User_h
#define User_h



@interface User :NSObject
@property NSString *name;
@property  NSString *email;
@property (atomic, strong) List* userList;

@end

#endif /* User_h */
