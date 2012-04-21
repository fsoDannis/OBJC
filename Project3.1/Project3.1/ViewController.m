//
//  ViewController.m
//  Project3.1
//
//  Created by Annis Dan on 4/19/12.
//  Copyright (c) 2012 Dannis. All rights reserved.
//

#import "ViewController.h"
#include "UICustomColors.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    
// SETTING BACKGROUND COLOR
    self.view.backgroundColor=[UIColor blackColor];
    
// LABEL FOR MY INFORMATION
    projectInfo = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 395.0f, 300.0f,50.0f)];
    [self.view addSubview:projectInfo];
    
    [super viewWillAppear:animated];
    
}



-(void)viewDidAppear:(BOOL)animated
{

// ADDING IN SOME PROJECT INFORMATION    
    projectInfo.text=@"Dan Annis - 4/19/2012 - Project 3";
    projectInfo.textAlignment=UITextAlignmentCenter;
    projectInfo.backgroundColor=[UIColor myBlue];
    projectInfo.textColor= [UIColor whiteColor];
    [super viewDidAppear:animated];
    
    [self showNumberDialog];
}

//THE CALLS FOR THE FUNCTIONS/METHODS/DO STUFF THINGYS
- (void)showNumberDialog {
    //ADD
    NSInteger addition = [self add:10 to:20];
    NSNumber *numberSum = [[NSNumber alloc] initWithInt:addition];
    NSString *theNumTxt = [NSString stringWithFormat:@"The sum of the numbers are... "];
    NSString *numberToString = [numberSum stringValue];
    NSString *myNumAddString = [self append:theNumTxt to:numberToString];
    [self displayAlertWithString:myNumAddString andTitle:@"Number Alert"];
}

- (void)showCompareStringDialog {
    //COMPARE
    NSInteger num1 = 10;
    NSInteger num2 = 20;
    BOOL compareNum = [self compare:num1 to:num2];
    NSString *myCompareString = [NSString stringWithFormat:@"Is %d and %d equal to each other? %@", num1, num2, compareNum?@"TRUE":@"FALSE"];
    [self displayAlertWithString:myCompareString andTitle:@"Compare Alert"];
}

- (void)showStringDialog {
    //APPEND
    NSString *myAppendString = [self append:@"I still feel like... " to:@"I have no Idea what I am doing!"];
    [self displayAlertWithString:myAppendString andTitle:@"String Alert"];
}
   



//MY FUNCTIONS OR METHODS OR DO STUFF THINGYS

//ADD
-(NSInteger)add:(NSInteger)num1 to:(NSInteger)num2{
    return num1 + num2;
}

//COMPARE
-(BOOL)compare:(NSInteger)num1 to:(NSInteger)num2{
    if (num1 == num2) {
        return YES;
    }else{
        return NO;
    }
}

//APPEND
-(NSString *)append:(NSString *)string1 to:(NSString *)string2{
    NSMutableString *appendedString = [NSMutableString stringWithString:string1];
    NSString *string = [appendedString stringByAppendingString:string2];
    return string;
}

//UIAlertView
-(void)displayAlertWithString:(NSString *)string andTitle:(NSString *)title{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:string delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    // the user clicked one of the OK/Cancel buttons
    if (buttonIndex == 0)
    {
        if (actionSheet.title == @"Number Alert"){
            //This will fire first
            [self showCompareStringDialog];
            NSLog(@"Number Alert Fired");
        }
        if (actionSheet.title == @"Compare Alert"){
            //This should fire when you click on the OK button of the number alert
            NSLog(@"Compare Alert Fired");
            [self showStringDialog];
        }
        if (actionSheet.title == @"String Alert"){
            // This should log the message below last and hide the last alert
            NSLog(@"String Alert Fired");
           
        }

    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
