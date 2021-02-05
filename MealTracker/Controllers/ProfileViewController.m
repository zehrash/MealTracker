//
//  ProfileViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 13.01.21.
//

#import "ProfileViewController.h"
#import "UserController.h"
@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) UserController * controller;
@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _nameTextField.text= [_controller getUser].name;
}


@end
