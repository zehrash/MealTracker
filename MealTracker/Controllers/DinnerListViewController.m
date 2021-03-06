//
//  DinnerListViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 4.02.21.
//

#import "DinnerListViewController.h"
#import "UserController.h"
#import "LunchListViewController.h"
#import "Meal.h"

@interface DinnerListViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *mealOptions;
@property (strong, nonatomic)NSMutableArray *dinnerData;
@property (strong, nonatomic)UserController *userController;

@end

@implementation DinnerListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _dinnerData = [NSMutableArray arrayWithArray: [self getDinnerList]];
}

-(NSMutableArray* )getDinnerList{

    NSMutableArray *arr = [[NSMutableArray alloc] init];
    for (Meal *meal in [_userController getMealList:MealTypeDinner]){
        [arr addObject:meal.title];
    }
    return arr;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_dinnerData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DinnerListItem" forIndexPath:indexPath];

    cell.textLabel.text = [_dinnerData objectAtIndex:indexPath.row];
return cell;
}

- (IBAction)onMealListTap:(id)sender {
    if(_mealOptions.selectedSegmentIndex == 0){
        LunchListViewController *lunchList =[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"LunchListViewController"];
        [self
        presentViewController:
        lunchList animated: true
        completion: nil];
    }
}
@end
