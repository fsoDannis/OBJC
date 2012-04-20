//
//  Project1AppDelegate.m
//  Project1
//
//  Created by Annis Dan on 3/29/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "Project1AppDelegate.h"

@implementation Project1AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    /*
     ---------------------------------------
     ---------------NOTES-------------------
     ---------------------------------------
    
    
    NSLog(@"Hello Everyone, I believe I missed my Introduction!");
    NSLog(@"The Date is currently:");
    int numTires=4;
    
    NSLog(@"%d", numTires);
    
    float celcius =37.5f;
    NSLog(@"celcius=%.2f",celcius);
    
    
    int temp=0;
    if (temp != 0){   //Temp is now not equal to zero
        NSLog(@"true");
    }else{
        NSLog(@"temp is equal to 0");
    }
    
    // || is the OR bool
   
    if ((numTires > 3) && (numTires<5)){
        NSLog(@"is Car");
    } else if (numTires == 2){
        NSLog(@"is Motorcycle");
    } else {
        NSLog(@"I'm not sure what you are rolling in");
    }
    
    //Increasing
    for (int x=0; x<10; x++){
        NSLog(@"hello: %d", x);
    };
    
    //Decreasing
    for (int y=100;y>=0; y--){
        NSLog(@"%d Bottles of Beer on the wall",y );
    }
    
    //Stopping Loop
    for (int count=0; count<100; count++){
        NSLog(@"count=%d",count);
        if (count==55){
            break;
        }
    };
    
    //While Loops
    int count=0;
    
    while(count>10){
        NSLog(@"count=%d\n",count);
        count++;
    }
    
    //While loop run at least once
    int cCount=0;
    
    do{
        NSLog(@"count=%d\n",cCount);
        count++;
    }  while(cCount>10);
     
     ---------------------------------------
     -------------END NOTES-----------------
     ---------------------------------------
     
     */ 
    
    // Project 1 Story
    
    NSLog(@"My story is simple. It is a story of just getting the Project done with all of the requirements");
    NSLog(@"I need to fullfill some requirements though.");
    int req=7;
    NSLog(@"%d, to be exact!",req);
    
    int reqMath=1;
    int result= reqMath / req;
    
    NSLog(@"I could have said %d, divided by %d, which would be some random fraction, but because I didn't float the math, I got a %d instead.",reqMath,req,result);
    
    float myresult= (reqMath * ((float)50/10)) +2;
    
    NSLog(@"So what I should have done was floated my information and I should get the right answer which is my original %f", myresult);
    NSLog(@"That should have knocked out numbers 1 and 2. Moving on to my third requirement. The Comparisons.");
    
    int num3 = 3;
    
    if(num3>3){
        NSLog(@"If i said I was on number 3 and called the variable 'num3', then this statement would result in a %d statement",num3);
    }else if(num3>=3){
        NSLog(@"I must have called the right if statement to make this work.. I am officially on question %d", num3);
    }
    
    NSLog(@"Whoops! That was question 4... Guess I need to go back to my comparisons. Here's a scenerio. In order to make a basket I need a dozen items in one basket. Will I have a full basket?");
    
    int apples = 6;
    int oranges=6;
    int basket = 1;
    NSLog(@"%d",apples);
    
    if((apples == 6) && (oranges == 6) && (basket == 1)){
        NSLog(@"True");
    }else{
        NSLog(@"False");
    }
    
    NSLog(@"Looks like we only had %d Apples and %d Oranges.", apples, oranges);
    NSLog(@"So we are now on question 5 and I have to come up with some loop. Why not put our fruit into the basket?");
    for (int x=1; x<=12; x++){
        NSLog(@"%d Fruit", x);
    };
    
    NSLog(@"Got em all! This is easy stuff, I think! Why don't see if Dan's Wife is having a baby soon and if so, we'll exchange the fruit for some diapers!" );
  
    
    int baby=1;
    if (baby != 0){   
        for (int y=12; y>=0; y--){
            NSLog(@"%d Fruit Exchanged for a diaper", y);
        }
    }else{
         NSLog(@"Dan's Wife is not having a Baby soon!");
    }
    NSLog(@"Let's Count the Diapers we've received");
    
    int count=0;
    
    while(count<=12){
        NSLog(@"Diaper #%d\n",count);
        count++;
    }
     NSLog(@"Looks like some serious fun ahead of me!!! ");
    
    /*
     ---------------------------------------
     ---------------WEEK 2 NOTES-------------------
     ---------------------------------------
     */
    NSString *string = [[NSString alloc] initWithString:@"hello"];
    
    NSString *lowerString = @"jdhfkdsjhfkjds";
    NSString *upperString = [lowerString uppercaseString];
    
    NSString *stringFormatted = [[NSString alloc] initWithFormat:@"this car has %d tires", 4];

    NSLog(@"This is my static string followed by the string %@",stringFormatted);
    
    // arrays
    
    int arrayInt[5];
        arrayInt[0]=3;
        arrayInt[1]=8;
        arrayInt[2]=10;
        arrayInt[3]=6;
        arrayInt[4]=9;
    
    int newArrayInt[5]={3,8,10,6,9};
    
    for(int i=0; i<5; i++)
    {
        NSLog(@"index %d=%d",i,arrayInt[i]);
    };
    
    
    int ticTacToe[3][3]={{0,0,0},{1,1,1},{2,2,2}};
    
    for (int y=0;y<3;y++)
    {
        for (int x=0;x<3;x++)
        {
            NSLog(@"tictactoe at [%d][%d] = %d",x,y,ticTacToe[x][y]);
        };
    };
    
    //NSARRAY
                  
    NSArray *tempArray =[[NSArray alloc] initWithObjects:@"test1",@"test2",nil];
    
    NSMutableArray *mutableArray= [[NSMutableArray alloc] initWithCapacity:10];
    [mutableArray addObject:@"helloTest1"];
    [mutableArray addObject:@"secondItem"];
    
    NSLog(@"%a",[mutableArray description]);
    
    for (int i=0; i<[mutableArray count];i++)
    {
        NSLog(@"%@",[mutableArray objectAtIndex:i]);
    }
    
    NSMutableDictionary *dictionary =[[NSMutableDictionary alloc] initWithCapacity:10];
    [dictionary setObject:@"gozer" forKey:@"keymaster"]; //key/value pairs
    
    [dictionary removeAllObjects];
    if([dictionary objectForKey:@"sdfsdfsdfsdfsdf"] !=nil){
        [dictionary removeObjectForKey:@"keymaster"];
    };
    
    NSString *value = [dictionary objectForKey:@"keymaster"];
    
    NSLog(@"%@", [dictionary description]);
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}




@end

