//
//  MealInformationViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 15.01.21.
//

#import "MealInformationViewController.h"
#import "../controller/UserController.h"
#import "../controller/EnumConstants.h"
@interface MealInformationViewController ()
//
- (IBAction)onStepperValueChanged:(UIStepper *)sender;

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UIButton *optionsButton;
@property (weak, nonatomic) IBOutlet UITextField *dateTextField;
@property (weak, nonatomic) IBOutlet UITextField *ingredientsTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mealType;
@property (weak, nonatomic) IBOutlet UILabel *servings;
@property (weak, nonatomic) IBOutlet UIStepper *servingsStepper;

- (IBAction)onDatePickerChange:(UIDatePicker *)sender;
- (IBAction)onMealTypeButtonTap:(id)sender;
- (IBAction)onDoneButtonTap:(id)sender;

@end

@implementation MealInformationViewController
NSDate *date;
int servingsValue;
MealType meal;
UserController *controller;
NSArray* ingredients;
NSString *title;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    controller = [[UserController alloc]init];

}

-(BOOL)validateData{
    
    if(_titleTextField.text != NULL){
        title =  _titleTextField.text;
    }
    else{
    //pop-up message to fill the title box
        return false;
    }
    if(_ingredientsTextField.text != NULL){
        ingredients = [_ingredientsTextField.text componentsSeparatedByString:@","];
        
        NSMutableArray *trimmedStrings = [NSMutableArray array];
        for (NSString *str in ingredients) {
            NSString *trimmedStr = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            [trimmedStrings addObject:trimmedStr];
        }
        ingredients = trimmedStrings;
    }
    else{
    //pop-up message to fill the ingredients box
        return false;
    }
    if(date.description==NULL){
    //pop-up message to choose date
        return false;
    }
    
    if(servingsValue == 0){
        //pop-up message to choose date
            return false;
    }
    return true;
}
 

- (IBAction)onDoneButtonTap:(id)sender {
    
    if([self validateData]){
      Meal* newMeal = [controller getMealInfo:(title) joiningArgument2:(meal) joiningArgument3:(ingredients) joiningArgument4:(date) joiningArgument5:(servingsValue)];
        [controller addMealToList:(newMeal)];
    }
    else{
        //alert message for wrong or not full data
    }
    
    
    
}

- (IBAction)onMealTypeButtonTap:(id)sender {
    if(_mealType.selectedSegmentIndex == 0){
        meal = MealTypeLUNCH;
    }
    else{
        meal = MealTypeDINNER;
    }
}

- (IBAction)onDatePickerChange:(UIDatePicker *)sender {
    date = sender.date;
    //format date
}

- (IBAction)onStepperValueChanged:(UIStepper *)sender {
    int val = [sender value];
    servingsValue = val;
    [_servings setText:[NSString stringWithFormat:@"Number of servings: %d", val]];
}
@end
