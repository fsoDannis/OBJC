//
//  ViewController.h
//  Project3.1
//
//  Created by Annis Dan on 4/19/12.
//  Copyright (c) 2012 Dannis. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UIAlertViewDelegate>

{
    UILabel *projectInfo;
}

- (NSInteger) add:(NSInteger)num1 to:(NSInteger)num2;
- (BOOL) compare:(NSInteger)num1 to:(NSInteger)num2;
- (NSString*) append:(NSString*)string1 to:(NSString*)string2;
- (void) displayAlertWithString:(NSString*)string;
- (void)showStringDialog;
- (void)showCompareStringDialog;
- (void)showNumberDialog;
@end
