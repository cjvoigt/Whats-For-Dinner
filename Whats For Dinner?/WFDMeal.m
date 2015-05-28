//
//  WFDMeal.m
//  Whats For Dinner?
//
//  Created by Camden Voigt on 5/24/15.
//  Copyright (c) 2015 Camden Voigt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WFDMeal.h"

@implementation WFDMeal

- (instancetype) init{
    return [self initUsingName:nil
                   withRanking:0
               withIngredients:nil
               withDescription:nil
                     withPrice:nil
                  withCalories:nil];
}

- (instancetype) initUsingName:(NSString *)mealName{
    return [self initUsingName:mealName
                   withRanking: nil
               withIngredients:nil
               withDescription:nil
                     withPrice:nil
                  withCalories:nil];
}

- (instancetype) initUsingName:(NSString *)mealName
                   withRanking:(NSDecimalNumber *)mealRanking
               withIngredients:(NSMutableArray *)ingredientsList
{
    return [self initUsingName:mealName
                   withRanking:mealRanking
               withIngredients:ingredientsList
               withDescription:nil
                     withPrice:nil
                  withCalories:nil];
}

- (instancetype) initUsingName:(NSString *)mealName
                   withRanking:(NSDecimalNumber*)mealRanking
               withIngredients:(NSMutableArray *)ingredientsList
               withDescription:(NSString *)mealDescription
                     withPrice:(NSDecimalNumber *)price
                  withCalories:(NSInteger *)calories
{
    self = [super init];
    
    _mealName = mealName;
    _mealRanking = mealRanking;
    _ingredientsList = ingredientsList;
    _mealDescription = mealDescription;
    _price = price;
    _calories = calories;
    
    return self;
}

- (NSString *) description{
    return [[NSString alloc] initWithFormat:@"%@", _mealName];
}

@end
