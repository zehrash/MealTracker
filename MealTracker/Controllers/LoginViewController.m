//
//  LoginViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 5.02.21.
//

#import "LoginViewController.h"
#import "UserController.h"

@interface LoginViewController ()
- (IBAction)onStartButtonClick:(id)sender;
@property (strong, nonatomic) UserController* userController;
@property (weak, nonatomic) IBOutlet UITextField *nicknameTextField;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)onStartButtonClick:(id)sender {
    if(_nicknameTextField.text==NULL){
        //pop-up message to fill in nickname
    }
    else{
        [_userController createUser:_nicknameTextField.text];
    }
   
}
@end
