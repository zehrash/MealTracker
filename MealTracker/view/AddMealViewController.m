//
//  AddMealViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 13.01.21.
//

#import "AddMealViewController.h"
#import "MealInformationViewController.h"

@interface AddMealViewController ()

@end

@implementation AddMealViewController


- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)onDoneButtonTap:(id)sender {
    MealInformationViewController *mealView = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"MealInformationViewControllerID"];
    [self
    presentViewController:
    mealView animated: true
    completion: nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
