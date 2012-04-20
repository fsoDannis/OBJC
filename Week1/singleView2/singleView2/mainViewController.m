//
//  singleView2ViewController.m
//  singleView2
//
//  Created by Annis Dan on 4/5/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "mainViewController.h"

@implementation singleView2ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    self.view.backgroundColor=[UIColor darkGrayColor];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 200.0f,200.0f)];
    if (label !=nil){
        label.text=@"This is my Label Text.. I am creating extra text to make sure this all fits!";
        label.textAlignment= UITextAlignmentCenter ;
        label.numberOfLines=3;
        label.textColor= [UIColor blueColor];
    }
    [self.view addSubview:label];
    
    label2 = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 40.0f, 200.0f,20.0f)];
    [self.view addSubview:label2];
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
  //  label2.text=@"in didAppear";
    [super viewDidAppear:animated];
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
