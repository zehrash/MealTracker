//
//  TableViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 29.01.21.
//

#import "ChooseMealViewController.h"
#import "UserController.h"
@interface ChooseMealViewController ()
@property (strong, nonatomic) NSMutableArray *tableData;
@property (strong, nonatomic) UserController * controll;
@end

@implementation ChooseMealViewController
    


- (void)viewDidLoad {
    [super viewDidLoad];
    _tableData = [NSMutableArray arrayWithArray: [self getList]];
    /*
    [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Ham and Cheese Panini", nil];
     */
}

-(NSMutableArray* )getList{
    
    NSMutableArray *arr;
    for (Meal *meal in [_controll getMealList:MealTypeLunch]){
      arr = [NSMutableArray  arrayWithObjects:  meal.title ,nil];
        
    }
    return arr;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [_tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem" forIndexPath:indexPath];
  
    cell.textLabel.text = [_tableData objectAtIndex:indexPath.row];
    return cell;
}

@end
