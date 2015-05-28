//
//  IngridentEditViewController.h
//  Whats For Dinner?
//
//  Created by Camden Voigt on 5/25/15.
//  Copyright (c) 2015 Camden Voigt. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WFDIngredient;
@class WFDMeal;

@interface WFDIngredientEditViewController : UIViewController

@property (nonatomic, strong, readwrite) WFDIngredient* ingredient;
@property (nonatomic, strong, readonly) WFDMeal* meal;

- (instancetype) initWithMeal: (WFDMeal *)meal;

@end