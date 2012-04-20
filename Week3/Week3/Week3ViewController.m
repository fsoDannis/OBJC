//
//  Week3ViewController.m
//  Week3
//
//  Created by Annis Dan on 4/18/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Week3ViewController.h"

@interface Week3ViewController ()

@end

@implementation Week3ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
// var viewDidUnload = function() { .. }
// function viewDidUnload() { .. }
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}
// function viewWillAppear(one,two){..};
-(void)viewDidAppear:(BOOL)animated{
    
    //ADD
    //This function will take two NSInteger or int types and return the result of an addition between these two. Call the Add function passing in two integer values. Capture the return of this function into a variable. Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.Give it any text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    int sum = [self add:475 with:19];
    NSNumber *numberSum = [[NSNumber alloc] initWithInt:sum];
    NSString *theNumTxt = [NSString stringWithFormat:@"The number is "];
    NSString *numberToString = [numberSum stringValue];
    NSString *myNumAddString = [self append:theNumTxt with:numberToString];
    [self displayAlertWithString:myNumAddString];
    
    //COMPARE
    //Return true or false based on whether the values are equal.
    //Call the Compare function with two integer values. If Compare returns true, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function. Take the passed in NSString and display it in the alert view
    int int1 = 5;
    int int2 = 5;
    BOOL compareNum = [self compare:int1 with:int2];
    NSString *myCompareString = [NSString stringWithFormat:@"Are the numbers %d and %d equal to each other? %@", int1, int2, compareNum?@"YES":@"NO"];
    [self displayAlertWithString:myCompareString];
    
    //Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    NSString *myAppendString = [self append:@"Shanna " with:@"Cote"];
    [self displayAlertWithString:myAppendString];
}

//addition method
-(int)add:(int)num1 with:(int)num2{
    return num1 + num2;
}

//Compare method
-(BOOL)compare:(int)num1 with:(int)num2{
    if (num1 == num2) {
        return YES;
    }else{
        return NO;
    }
}

//APPEND
//Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
-(NSString *)append:(NSString *)string1 with:(NSString *)string2{
    NSMutableString *appendedString = [NSMutableString stringWithString:string1];
    NSString *string = [appendedString stringByAppendingString:string2];
    return string;
}

//Create a function called DisplayAlertWithString. This function will take as a parameter an NSString. Create an NSAlertView (I think this needs to be changed to UILaertView in the assignment?)
-(void)displayAlertWithString:(NSString *)string{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:string delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}




- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
