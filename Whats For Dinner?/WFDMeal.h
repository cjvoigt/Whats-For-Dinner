//
//  WFDMeal.h
//  Whats For Dinner?
//
//  Created by Camden Voigt on 5/24/15.
//  Copyright (c) 2015 Camden Voigt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WFDMeal : NSObject

@property (nonatomic) NSString* mealName;
@property (nonatomic) NSString* mealDescription;
@property (nonatomic) NSDecimalNumber* mealRanking;
@property (nonatomic) NSMutableArray* ingredientsList;
@property (nonatomic) NSDecimalNumber* price;
@property (nonatomic) NSInteger* calories;

- (instancetype) initUsingName: (NSString *)mealName;

- (instancetype) initUsingName:(NSString *)mealName
                   withRanking:(NSDecimalNumber*) mealRanking
               withIngredients: (NSMutableArray*)ingredientsList;

//Default initializer
- (instancetype) initUsingName:(NSString *)mealName
                   withRanking:(NSDecimalNumber*)mealRanking
               withIngredients:(NSMutableArray *)ingredientsList
               withDescription:(NSString *)mealDescription
                     withPrice:(NSDecimalNumber*)price
                  withCalories:(NSInteger*)calories;

@end
