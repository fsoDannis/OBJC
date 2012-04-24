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
    // JUST A BUTTON
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if(button !=nil)
    {
        button.frame = CGRectMake(10.0f, 10.0f, 100.0f, 50.0f);
        button.tintColor= [UIColor  mylightGreen];
        [button setTitle: @"Push Me" forState:UIControlStateNormal];
        [button setTitle: @"Pushed" forState:UIControlStateHighlighted];
        
        [self.view addSubview:button];
    }    
    // GOOD FRAME FOR UI BUTTONS  
    UIButton *infoButton =  [UIButton buttonWithType:UIButtonTypeInfoLight]; 
    if(infoButton !=nil)
    {
       // infoButton.backgroundColor = [UIColor myGreen]; //Used to test the Image frame
        infoButton.frame = CGRectMake(290.0f, 10.0f, 22.0f, 22.0f);
        [self.view addSubview:infoButton];
    }
    
    //CUSTOM MAGE BUTTON - Don't forget to add the image to the list
    UIButton *customButton =  [UIButton buttonWithType:UIButtonTypeCustom]; 
    if(customButton !=nil)
    {
        UIImage *myCustomImage = [UIImage imageNamed:@"customButton.png"];
        [customButton setImage:myCustomImage forState:UIControlStateNormal];
        customButton.frame = CGRectMake(0.0f, 350.0f, 320.0f, 50.0f);
        [self.view addSubview:customButton];
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
