//
//  ViewController.m
//  Project4
//
//  Created by Annis Dan on 4/23/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#include "UICustomColors.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    /*    
     //CUSTOM MAGE BUTTON - Don't forget to add the image to the list
     UIButton *customButton =  [UIButton buttonWithType:UIButtonTypeCustom]; 
     if(customButton !=nil)
     {
     UIImage *myCustomImage = [UIImage imageNamed:@"customButton.png"];
     [customButton setImage:myCustomImage forState:UIControlStateNormal];
     customButton.frame = CGRectMake(0.0f, 350.0f, 320.0f, 50.0f);
     [self.view addSubview:customButton];
     }
     */    //CUSTOM BUTTON NOTES
    
    // LABEL FOR USERNAME
    username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 20.0f, 100.0f,30.0f)];
    [self.view addSubview:username];
    username.text=@"Username:";
    username.textAlignment=UITextAlignmentCenter;
    username.backgroundColor=[UIColor blackColor];
    username.textColor= [UIColor whiteColor];
 
    // INPUT FOR USERNAME  - Needs some formatting!!!!
    inputUsername = [[UITextField alloc] initWithFrame:CGRectMake(105.0f, 20.0f, 205.0f,30.0f)];
    [self.view addSubview:inputUsername];
    [inputUsername setBorderStyle:UITextBorderStyleRoundedRect];
    //[inputUsername setBorderStyle:UITextBorderStyleBezel];
    inputUsername.textAlignment=UITextAlignmentLeft;
    inputUsername.backgroundColor=[UIColor whiteColor];
    inputUsername.textColor= [UIColor blackColor];
 
    
    // LOGIN BUTTON
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(loginButton !=nil)
    {
        loginButton.frame = CGRectMake(235.0f, 60.0f, 75.0f, 25.0f);
        loginButton.tintColor= [UIColor  mylightGreen];
        [loginButton setTitle: @"Login" forState:UIControlStateNormal];
        
        loginButton.tag = 0;
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:loginButton];
    }  
    
    // LABEL FOR LOGIN INFORMATION
    loginInfo = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 100.0f, 300.0f,100.0f)];
    [self.view addSubview:loginInfo];
    loginInfo.text=@"Please Enter a Username.";
    loginInfo.textAlignment=UITextAlignmentCenter;
    loginInfo.backgroundColor=[UIColor blackColor];
    loginInfo.textColor= [UIColor myBlue];
    
    // Making a Regular Button - DATE
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(dateButton !=nil)
    {
        dateButton.frame = CGRectMake(10.0f, 210.0f, 100.0f, 40.0f);
        dateButton.tintColor= [UIColor  mylightGreen];
        [dateButton setTitle: @"Show Date" forState:UIControlStateNormal];
        
        dateButton.tag = 1;
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:dateButton];
    }
    
    // COULD BUILD AS A FUNCTION FOR ALL small UI BUTTONS  - INFO BUTTON
    UIButton *infoButton =  [UIButton buttonWithType:UIButtonTypeInfoLight]; 
    if(infoButton !=nil)
    {
       // infoButton.backgroundColor = [UIColor myGreen]; //Used to test the Image frame
        infoButton.frame = CGRectMake(290.0f, 370.0f, 22.0f, 22.0f);
        [self.view addSubview:infoButton];
    }


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

-(void)onClick:(UIButton*)button
{
    if (button.tag == 0 && inputUsername.text == nil)
    { 
        loginInfo.text = @"ENTER A USERNAME PLEASE";
        loginInfo.textColor= [UIColor myRed];
    }else if ( button.tag == 0){
        loginInfo.text = inputUsername.text;
        loginInfo.textColor = [UIColor myViolet];
    }
}

-(void)viewDidAppear:(BOOL)animated
{
    
    // ADDING IN SOME PROJECT INFORMATION    
    projectInfo.text=@"Dan Annis - 4/19/2012 - Project 4";
    projectInfo.textAlignment=UITextAlignmentCenter;
    projectInfo.backgroundColor=[UIColor myBlue];
    projectInfo.textColor= [UIColor whiteColor];
    [super viewDidAppear:animated];
    

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
