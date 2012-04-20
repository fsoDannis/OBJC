//
//  Project2ViewController.m
//  Project2
//
//  Created by Annis Dan on 4/5/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Project2ViewController.h"
#include "UIColor+Custom.h"

@implementation Project2ViewController

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
    self.view.backgroundColor=[UIColor blackColor];
    
    title = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 300.0f,30.0f)];
    [self.view addSubview:title];
    
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 90.0f, 90.0f,20.0f)];
    [self.view addSubview:authorLabel];
    
    authorInfo = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 90.0f, 200.0f,20.0f)];
    [self.view addSubview:authorInfo];
    
    publishLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 115.0f, 90.0f,20.0f)];
    [self.view addSubview:publishLabel];
    
    publishDate = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 115.0f, 200.0f,20.0f)];
    [self.view addSubview:publishDate];
    
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 145.0f, 90.0f,20.0f)];
    [self.view addSubview:summaryLabel];
    
    summaryInfo = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 165.0f, 300.0f,200.0f)];
    [self.view addSubview:summaryInfo];
    
    listArrayLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 375.0f, 120.0f,20.0f)];
    [self.view addSubview:listArrayLabel];
    
    listArrayInfo = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 395.0f, 300.0f,50.0f)];
    [self.view addSubview:listArrayInfo];
    
    
    
    
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{


    title.text=@"The Animator's Survival Kit";
    title.textAlignment=UITextAlignmentCenter;
    title.textColor= [UIColor whiteColor];
    title.backgroundColor=[UIColor myRed];
    
    authorLabel.text=@"Author:";
    authorLabel.textAlignment=UITextAlignmentRight;
    authorLabel.backgroundColor=[UIColor myOrange];
    authorLabel.textColor= [UIColor mylightOrange];
    
    authorInfo.text=@"Richard Williams";
    authorInfo.textAlignment=UITextAlignmentLeft;
    authorInfo.backgroundColor=[UIColor mylightOrange];
    authorInfo.textColor= [UIColor myOrange];
    
    publishLabel.text=@"Published:";
    publishLabel.textAlignment=UITextAlignmentRight;
    publishLabel.backgroundColor=[UIColor myGreen];
    publishLabel .textColor= [UIColor mylightGreen];
    
    publishDate.text=@"Year 2001";
    publishDate.textAlignment=UITextAlignmentLeft;
    publishDate.backgroundColor=[UIColor mylightGreen];
    publishDate.textColor= [UIColor myGreen];
    
    summaryLabel.text=@"Summary:";
    summaryLabel.textAlignment=UITextAlignmentLeft;
    summaryLabel.backgroundColor=[UIColor myBlue];
    summaryLabel.textColor= [UIColor mylightBlue];
    
    summaryInfo.numberOfLines=15;
    summaryInfo.font= [UIFont fontWithName:@"Arial" size:12];
    summaryInfo.textAlignment=UITextAlignmentCenter;
    summaryInfo.text=@"In this book, Williams provides the underlying principles of animation that every animator, from beginner to expert, needs. Urging his readers to 'invent but be believable,' he illustrates his points with hundreds of drawings,  in order to create a book that will become the standard work on all forms of animation for professionals, students, and fans. This Book provides a system from the start to finish of making a character stand still to just about every gesture there is.";
    summaryInfo.backgroundColor=[UIColor mylightBlue];
    summaryInfo.textColor= [UIColor myBlue];
    
    listArrayLabel.text=@"List of Items:";
    listArrayLabel.textAlignment=UITextAlignmentLeft;
    listArrayLabel.backgroundColor=[UIColor myIndigo];
    listArrayLabel.textColor= [UIColor darkGrayColor];
    
    
    NSString *one=@"Walks";
    NSString *two=@"Runs and Jumps";
    NSString *three=@"Timing";
    NSString *four=@"Acting";
    NSString *five=@"Directing";
    
    NSArray *myArray=[NSArray arrayWithObjects:one,two,three,four,five,nil];
          
    NSMutableString *itemsTogether = [[NSMutableString alloc] init];
    for (NSString *item in myArray){
        [itemsTogether appendString:item];
    };
    
    listArrayInfo.numberOfLines=0;
    listArrayInfo.textAlignment=UITextAlignmentCenter;
    listArrayInfo.font= [UIFont fontWithName:@"Arial" size:12];
    //listArrayInfo.text = itemsTogether; WANTED THIS TO WORK WITHOUT HAVING IT STRING OUT LIKE THE BELOW CODE... 
    listArrayInfo.text = [NSString stringWithFormat:@"%@, %@, %@, %@, and %@", [myArray objectAtIndex:0], [myArray objectAtIndex:1], [myArray objectAtIndex:2], [myArray objectAtIndex:3], [myArray objectAtIndex:4] ];
    listArrayInfo.backgroundColor=[UIColor myViolet];
    listArrayInfo.textColor= [UIColor mylightViolet];
    
    
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
