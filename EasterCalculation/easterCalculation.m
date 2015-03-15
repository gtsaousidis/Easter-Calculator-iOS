//
//  easterCalculation.m
//  EasterCalculation
//
//  Created by George Tsaousidis on 13/3/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import "easterCalculation.h"

@implementation easterCalculation

- (NSInteger) takeTheYear:(NSInteger) year{
    
    NSInteger days = 7;
    NSInteger a = year%19;
    NSInteger b = year%4;
    NSInteger c = year % days;
    NSInteger d = (19*a +15)%30;
    NSInteger e = (2*b + 4*c +6*d +6) % days;
    NSInteger x = d + e;
    
    return x;

}

@end
