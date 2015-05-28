//
//  WFDIngredient.h
//  Whats For Dinner?
//
//  Created by Camden Voigt on 5/24/15.
//  Copyright (c) 2015 Camden Voigt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WFDIngredient : NSObject

@property (nonatomic, strong, readwrite) NSString* ingredientName;
@property (nonatomic, strong, readwrite) NSString* ingredientDescription;
@property (nonatomic, assign, readwrite) double ingredientPrice;
@property (nonatomic, assign, readwrite) NSInteger ingredientCalories;

- (instancetype) initUsingName: (NSString *)name;
- (instancetype) initUsingName:(NSString *)name
               withDescription:(NSString *)description
                     withPrice:(double)price
                  withCalories: (NSInteger) calories
                            NS_DESIGNATED_INITIALIZER;

@end
