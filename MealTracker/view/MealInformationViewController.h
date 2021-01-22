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

@property (weak, nonatomic) IBOutlet UITextField *titleOutlet;
@property (weak, nonatomic) IBOutlet UIButton *optionsButton;
//@property (weak, nonatomic) IBOutlet UITextField *dateTextField;

@property (weak, nonatomic) IBOutlet UITextField *ingredientsOutlet;
@property (weak, nonatomic) IBOutlet UITableView *mealTypeTable;

@property (weak, nonatomic) IBOutlet UITextField *servingsOutlet;


@property (strong, nonatomic) NSArray *data;
- (IBAction)onChangeAction:(id)sender;
@end

NS_ASSUME_NONNULL_END
