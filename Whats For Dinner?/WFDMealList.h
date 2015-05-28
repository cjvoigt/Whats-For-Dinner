//
//  WFDMealList.h
//  Whats For Dinner?
//
//  Created by Camden Voigt on 5/25/15.
//  Copyright (c) 2015 Camden Voigt. All rights reserved.
//

#import <Foundation/Foundation.h>
@class WFDMeal;

@interface WFDMealList : NSObject
- (NSArray*) mealList;
- (void) setMealList: (NSMutableArray*)mList;
- (void) addMeal: (WFDMeal*)meal;

@end
