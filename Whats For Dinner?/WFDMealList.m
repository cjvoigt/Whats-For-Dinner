//
//  WFDMealList.m
//  Whats For Dinner?
//
//  Created by Camden Voigt on 5/25/15.
//  Copyright (c) 2015 Camden Voigt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WFDMealList.h"
#import "WFDMeal.h"


static NSMutableArray* mealList;

@implementation WFDMealList
- (instancetype) init{
    self = [super init];
    
    if (self){
        if(mealList == nil){
            mealList = [[NSMutableArray alloc] init];
        }
    }
    
    return self; 
}

- (NSArray *)mealList{
    return [mealList copy];
}

- (void) setMealList:(NSMutableArray *)mList{
    mealList = mList;
}

- (void) addMeal: (WFDMeal*)meal{
    [mealList addObject:meal];
}

- (BOOL) deleteMeal: (WFDMeal*)meal{
    WFDMeal *current = mealList[0];
    for(int i = 0; i < [mealList count]; i++){
        if([meal.mealName isEqualToString:current.mealName]){
            [mealList removeObjectAtIndex:i];
            return YES;
        }
        current = mealList[i+1];
    }
    return NO;
}

@end