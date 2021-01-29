//
//  AddMealViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 13.01.21.
//

#import "AddMealViewController.h"
#import "MealInformationViewController.h"
#import "ChooseMealViewCont  roller.h"

@interface AddMealViewController ()

- (IBAction)onAddMealButtonTap:(id)sender;
- (IBAction)onChooseFromListButtonTap:(id)sender;

@end

@implementation AddMealViewController


- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)onChooseFromListButtonTap:(id)sender {
    ChooseMealViewController *selectionView =[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"ChooseMealViewControllerID"];
    [self
    presentViewController:
    selectionView animated: true
    completion: nil];
}

- (IBAction)onAddMealButtonTap:(id)sender {
    MealInformationViewController *mealView = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"MealInformationViewControllerID"];
    [self
    presentViewController:
    mealView animated: true
    completion: nil];
}

@end
