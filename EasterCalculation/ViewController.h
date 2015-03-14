//
//  ViewController.h
//  EasterCalculation
//
//  Created by George Tsaousidis on 12/3/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *yearForTheEasterCalculating;


@property (nonatomic) NSInteger yearOfEaster;

@property (nonatomic) NSInteger easterX;
@property (nonatomic) NSInteger easterY;

- (BOOL) checkforNumeric;


@end

