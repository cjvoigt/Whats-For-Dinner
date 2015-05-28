//
//  WFDIngredientViewController.m
//  Whats For Dinner?
//
//  Created by Camden Voigt on 5/25/15.
//  Copyright (c) 2015 Camden Voigt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WFDIngedientEditViewController.h"
#import "WFDIngredient.h"
#import "WFDMeal.h"

@interface WFDIngredientEditViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextBox;
@property (weak, nonatomic) IBOutlet UITextField *descriptionTextBox;
@property (weak, nonatomic) IBOutlet UITextField *priceTextBox;
@property (weak, nonatomic) IBOutlet UITextField *caloriesTextBox;

@end

@implementation WFDIngredientEditViewController

- (instancetype) init{
    return [self initWithMeal:nil];
}

- (instancetype) initWithMeal:(WFDMeal *)meal{
    self = [super init];
    
    if (self){
        _ingredient = [[WFDIngredient alloc] init];
        _meal = meal;
    }
    
    return self; 
}

- (IBAction)addIngredient:(id)sender {
    _ingredient.ingredientName = _nameTextBox.text;
    _ingredient.ingredientDescription = _descriptionTextBox.text;
    _ingredient.ingredientPrice= [_priceTextBox.text doubleValue];
    _ingredient.ingredientCalories = [_caloriesTextBox.text integerValue];
    
    [_meal.ingredientsList addObject:_ingredient]; 
    
    _nameTextBox.text = @"";
    _descriptionTextBox.text = @"";
    _priceTextBox.text = @"";
    _caloriesTextBox.text = @"";
}

@end

