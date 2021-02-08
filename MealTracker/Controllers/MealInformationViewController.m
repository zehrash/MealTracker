//
//  MealInformationViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 15.01.21.
//

#import "MealInformationViewController.h"
#import "EnumConstants.h"
#import "AddMealViewController.h"
#import "UserController.h"
@interface MealInformationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UIButton *optionsButton;
@property (weak, nonatomic) IBOutlet UITextField *dateTextField;
@property (weak, nonatomic) IBOutlet UITextField *ingredientsTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mealType;
@property (weak, nonatomic) IBOutlet UILabel *servings;
@property (weak, nonatomic) IBOutlet UIStepper *servingsStepper;

@property (strong, nonatomic)NSDate *date;
@property  (nonatomic)int servingsValue;
@property (nonatomic)NSInteger meal;
@property (strong, nonatomic)UserController *controller;
@property (strong, nonatomic)NSArray* ingredients;
@end

@implementation MealInformationViewController

UIBarButtonItem *backButton;
- (IBAction)backButtonPressed:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _controller = [[UserController alloc]init];
  
}
-(BOOL)validateData{
    
    if(_titleTextField.text == NULL){
        return false;
        //pop-up message to fill the title box
    }
    if(_ingredientsTextField.text != NULL){
        _ingredients = [_ingredientsTextField.text componentsSeparatedByString:@","];
        
        NSMutableArray *trimmedStrings = [NSMutableArray array];
        for (NSString *str in _ingredients) {
            NSString *trimmedStr = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            [trimmedStrings addObject:trimmedStr];
        }
        _ingredients = trimmedStrings;
    }
    else{
    //pop-up message to fill the ingredients box
        return false;
    }
    if(_date.description==NULL){
    //pop-up message to choose date
        return false;
    }
    
    if(_servingsValue == 0){
        //pop-up message to choose date
            return false;
    }
    return true;
}
 

- (IBAction)onBackButtonTap:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
    /*
    AddMealViewController *view =[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"AddMealViewControllerID"];
    [self
    presentViewController:
    view animated: true
    completion: nil];
     */
}

- (IBAction)onDoneButtonTap:(id)sender {
    if([self validateData]){
        Meal* newMeal = [_controller getMealInfo:_titleTextField.text
                                joiningArgument2:_meal
                                joiningArgument3:_ingredients
                                joiningArgument4:_date
                                joiningArgument5:_servingsValue];
        [_controller addMealToList:(newMeal)];
        [_controller getMealList:MealTypeLunch];
    }
    //else{
        //alert message for wrong or not full data
    //}
    
}
- (IBAction)onMealTypeButtonTap:(id)sender {
    if(_mealType.selectedSegmentIndex == 0){
        _meal = MealTypeLunch;
    }
    else{
        _meal = MealTypeDinner;
    }
}

- (IBAction)onDatePickerChange:(UIDatePicker *)sender {
    _date = sender.date;
}

- (IBAction)onStepperValueChanged:(UIStepper *)sender {
    int val = [sender value];
    _servingsValue = val;
    [_servings setText:[NSString stringWithFormat:@"Number of servings: %d", val]];
}
@end
