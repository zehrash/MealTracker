//
//  TableViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 29.01.21.
//

#import "ChooseMealViewController.h"

@interface ChooseMealViewController ()

@end

@implementation ChooseMealViewController
    
NSArray *tableData;

- (void)viewDidLoad {
    [super viewDidLoad];
    tableData = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Ham and Cheese Panini", nil];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [tableData count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem" forIndexPath:indexPath];
  
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

@end
