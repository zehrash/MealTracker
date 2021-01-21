//
//  MealInformationViewController.h
//  MealTracker
//
//  Created by Zehra Iliyaz on 15.01.21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MealInformationViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    
    UIDatePicker *datePicker;
}
@property (weak, nonatomic) IBOutlet UIButton *btnOutlet;
@property (weak, nonatomic) IBOutlet UITableView *mealTypeTable;
@property (strong, nonatomic) NSArray *data;
- (IBAction)onChangeAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *dateTextField;

@end

NS_ASSUME_NONNULL_END
