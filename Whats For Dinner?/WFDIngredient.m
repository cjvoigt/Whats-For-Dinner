//
//  WFDIngredient.m
//  Whats For Dinner?
//
//  Created by Camden Voigt on 5/24/15.
//  Copyright (c) 2015 Camden Voigt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WFDIngredient.h"

@implementation WFDIngredient

- (instancetype) init{
    return [self initUsingName:nil withDescription:nil withPrice:0.0 withCalories:0];
}

- (instancetype) initUsingName:(NSString *)name{
    return [self initUsingName:name withDescription:nil withPrice:0.0 withCalories:0];
}

- (instancetype) initUsingName:(NSString *)name
               withDescription: (NSString *)description
                     withPrice:(double)price
                  withCalories:(NSInteger)calories{
    self = [super init];
    
    _ingredientName = name;
    _ingredientDescription = description;
    _ingredientPrice = price;
    _ingredientCalories = calories;
    
    return self;
}

@end
