//
//  WFDMealEditViewController.m
//  Whats For Dinner?
//
//  Created by Camden Voigt on 5/24/15.
//  Copyright (c) 2015 Camden Voigt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WFDMealEditViewController.h"
#import "WFDIngedientEditViewController.h"
#import "WFDMealList.h"
#import "WFDMeal.h"

@interface WFDMealEditViewController() <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameTextBox;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextBox;
@property (weak, nonatomic) IBOutlet UITextField *priceTextBox;
@property (weak, nonatomic) IBOutlet UILabel *mealRankingLabel;
@property (weak, nonatomic) IBOutlet UISlider *mealRankingSlider;
@property (nonatomic) WFDMeal* meal;
@property (weak, nonatomic) IBOutlet UITableView *ingredientTableView;

@end


@implementation WFDMealEditViewController

-(void) viewDidLoad{
    [super viewDidLoad];
    
    _meal = [[WFDMeal alloc] init]; 
    _mealRankingSlider.value = 0.00;
    _mealRankingLabel.text = @"0.0";
}

-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [_ingredientTableView reloadData];
}

#pragma mark - Table View Methods

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    cell.textLabel.text = [self.meal.ingredientsList[indexPath.row] description];
    
    return cell;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

#pragma mark - GUI Methods

- (IBAction)changeRanking:(id)sender {
    NSDecimalNumber* tempNumber = [[NSDecimalNumber alloc] initWithDouble:_mealRankingSlider.value * 10];
    _mealRankingLabel.text = [[NSString alloc] initWithFormat:@"%.2lf", tempNumber.doubleValue];
}


- (IBAction)addMeal:(id)sender {
    NSString* temp = _priceTextBox.text;
    NSDecimalNumber* tempNumber = [[NSDecimalNumber alloc] initWithDouble:[temp doubleValue]];
    _meal.price = tempNumber;
    
    _meal.mealDescription = _descriptionTextBox.text;
    _meal.mealName = _nameTextBox.text;
    
    tempNumber = [[NSDecimalNumber alloc] initWithDouble:_mealRankingSlider.value * 10];
    _meal.mealRanking = tempNumber;
    
    WFDMealList *mealList = [[WFDMealList alloc] init];
    [mealList addMeal:_meal];
    _nameTextBox.text = @"";
    _descriptionTextBox.text = @"";
    _priceTextBox.text = @"";
    _mealRankingLabel.text = @"0.00";
    _mealRankingSlider.value = 0.0;
}

- (IBAction)addIngredient:(id)sender {
    WFDIngredientEditViewController *ingredientVC = [[WFDIngredientEditViewController alloc] initWithMeal:_meal];
    [self.navigationController pushViewController:ingredientVC animated:YES];
}

@end