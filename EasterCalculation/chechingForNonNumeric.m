//
//  chechingForNonNumeric.m
//  EasterCalculation
//
//  Created by George Tsaousidis on 14/3/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import "chechingForNonNumeric.h"
#import <UIKit/UIKit.h>

@implementation chechingForNonNumeric


- (BOOL) checkforNumeric:(NSString*) str
{
    NSString *strMatchstring=@"\\b([0-9%_.+\\-]+)\\b";
    NSPredicate *textpredicate=[NSPredicate predicateWithFormat:@"SELF MATCHES %@", strMatchstring];
    
    if(![textpredicate evaluateWithObject:str])
    {
        return FALSE;
    }
    return TRUE;
}




@end
