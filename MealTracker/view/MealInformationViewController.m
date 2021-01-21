//
//  MealInformationViewController.m
//  MealTracker
//
//  Created by Zehra Iliyaz on 15.01.21.
//

#import "MealInformationViewController.h"

@interface MealInformationViewController ()

@end

@implementation MealInformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.data=[[NSArray alloc]initWithObjects:@"Lunch",@"Dinner",nil];
    self.mealTypeTable.delegate=self;
    self.mealTypeTable.dataSource=self;
    
    
    datePicker = [[UIDatePicker alloc]init];
    datePicker.datePickerMode=UIDatePickerModeDate;
    [self.dateTextField setInputView:datePicker];
    
    datePicker=[[UIDatePicker alloc]init];
        datePicker.datePickerMode=UIDatePickerModeDate;
        [self.dateTextField setInputView:datePicker];
        UIToolbar *toolBar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
        [toolBar setTintColor:[UIColor grayColor]];
    UIBarButtonItem *doneBtn=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStyleBordered target:self action:@selector(showSelectedDate)];
        UIBarButtonItem *space=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
        [toolBar setItems:[NSArray arrayWithObjects:space,doneBtn, nil]];
        [self.dateTextField setInputAccessoryView:toolBar];
}
-(void) showSelectedDate{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"dd/MM/YY hh:min"];
    self.dateTextField.text=[NSString stringWithFormat:@"%@",datePicker.date];
    [self.dateTextField resignFirstResponder];
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString * simpleTableIdentifier= @"SimpleTableItem";
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text=[self.data objectAtIndex:indexPath.row];
    return cell;

}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.data count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.mealTypeTable cellForRowAtIndexPath:indexPath];
    [self.btnOutlet setTitle:cell.textLabel.text forState:UIControlStateNormal];
    self.mealTypeTable.hidden = YES;
}


- (IBAction)onChangeAction:(id)sender {
    if(self.mealTypeTable.hidden == YES){
        self.mealTypeTable.hidden = NO;
    }
    else{
        self.mealTypeTable.hidden = YES;
    }
}
@end
