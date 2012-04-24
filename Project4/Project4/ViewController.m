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
