//
//  AddMealViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 13.01.21.
//

#import "AddMealViewController.h"
#import "MealInformationViewController.h"
#import "ChooseMealViewController.h"

@interface AddMealViewController ()

@end

@implementation AddMealViewController


- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)onChooseFromListButtonTap:(id)sender {
    ChooseMealViewController *selectionViewController =[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"ChooseMealViewControllerID"];
    [self
    presentViewController:selectionViewController
    animated: true
    completion: nil];
    
    
}

- (IBAction)onAddMealButtonTap:(id)sender {
    MealInformationViewController *mealViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"MealInformationViewControllerID"];
    [self
     presentViewController:mealViewController
    animated: true
    completion: nil];
}

@end
