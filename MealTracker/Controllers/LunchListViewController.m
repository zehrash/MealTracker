//
//  ListViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 15.01.21.
//

#import "LunchListViewController.h"
#import "DinnerListViewController.h"
#import "Meal.h"
#import "UserController.h"

@interface LunchListViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *mealList;
@property (strong, nonatomic) NSMutableArray *data;
@property (strong, nonatomic) UserController *userControll;
- (IBAction)onMealListTap:(id)sender;

@end

@implementation LunchListViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _data = [NSMutableArray arrayWithArray: [self getLunchList]];
}


- (IBAction)onMealListTap:(id)sender {
    
    if(_mealList.selectedSegmentIndex == 1){
        DinnerListViewController *lunchList =[[UIStoryboard storyboardWithName:@"Main" bundle:nil]instantiateViewControllerWithIdentifier:@"LunchListViewControllerID"];
        [self
        presentViewController:
        lunchList animated: true
        completion: nil];
    }
}

-(NSMutableArray* )getLunchList{

    NSMutableArray *arr;
    for (Meal *meal in [_userControll getMealList:MealTypeLunch]){
        arr = [NSMutableArray  arrayWithObjects:  meal.title ,nil];
    }
    return arr;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LunchListItem" forIndexPath:indexPath];

    cell.textLabel.text = [_data objectAtIndex:indexPath.row];
return cell;
}


@end
