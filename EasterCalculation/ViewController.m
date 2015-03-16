//
//  ViewController.m
//  EasterCalculation
//
//  Created by George Tsaousidis on 12/3/15.
//  Copyright (c) 2015 DFG-Team. All rights reserved.
//

#import "ViewController.h"
#import "easterCalculation.h"
#import "chechingForNonNumeric.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)textFieldShouldReturn:(UITextField *)yearForTheEasterCalculating
{
    [self.yearForTheEasterCalculating resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)convertStringToInt:(id)sender {
    
    
    //Taking the String from UITextField
    NSString *stringYear = _yearForTheEasterCalculating.text;
    
    chechingForNonNumeric *nonNumericControl = [[chechingForNonNumeric  alloc]init];
    
    BOOL isNumeric = [nonNumericControl checkforNumeric:stringYear];
    
    
    if(isNumeric == true){
    
    
        
        //Taking the integer from the string
        self.yearOfEaster = [stringYear integerValue];
        
        easterCalculation *passingTheDay = [[easterCalculation alloc]init];
        
        //Calculating the year of Ester
        NSInteger x = [passingTheDay takeTheYear:self.yearOfEaster];
        
        self.easterX = x +  4;
        self.easterY = x - 26;
        
        
        NSDateComponents *easterDay = [[NSDateComponents alloc] init];
        [easterDay setYear:self.yearOfEaster];
        
        
        NSCalendar *calendar = [NSCalendar currentCalendar];
        
        
        NSDateFormatter* df = [[NSDateFormatter alloc]init];
        [df setDateFormat:@"dd/MM/yyyy"];
        
        
        //Define if the Easter is the April or the May, in Orthodox Easter is only in this two months//
        if ( self.easterX  < 30) {
            
            
            
            [easterDay setMonth:4];
            [easterDay setDay:self.easterX];
            
            
            
            NSDate *easterDayX = [calendar dateFromComponents:easterDay];
            
            
            NSString *result = [df stringFromDate:easterDayX];
            
            
            NSString *messageX =   [NSString stringWithFormat: @"For the year %ld Easter is at %@!", (long)self.yearOfEaster, result];
            
            
            UIAlertView *alertTheEasterX = [[UIAlertView alloc]initWithTitle:nil
                                                                     message:messageX
                                                                    delegate:nil
                                                           cancelButtonTitle:@"Ok"
                                                           otherButtonTitles:nil];
            
            
            [alertTheEasterX show];
        }
        else {
            
            
            
            [easterDay setMonth:5];
            [easterDay setDay:self.easterY];
            
            
            
            NSDate *easterDayY= [calendar dateFromComponents:easterDay];
            
            
            NSString *result = [df stringFromDate:easterDayY];
            
            
            NSString *messageY =   [NSString stringWithFormat: @"For the year %ld Easter is at %@!", self.yearOfEaster, result];
            
            
            
            
            UIAlertView *alertTheEasterY = [[UIAlertView alloc]initWithTitle:nil
                                                                     message:messageY
                                                                    delegate:nil
                                                           cancelButtonTitle:@"Ok"
                                                           otherButtonTitles:nil];
            
            
            
            [alertTheEasterY show];
        }
    
        
        
    }
    
    else if(!isNumeric){
        UIAlertView *objAlert = [[UIAlertView alloc] initWithTitle:nil message:@"Please enter a valid number." delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Close",nil];
        [objAlert show];
    }
}



@end
