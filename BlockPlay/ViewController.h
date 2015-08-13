//
//  ViewController.h
//  BlockTest
//
//  Created by Lewis W. Johnson on 6/4/14.
//  Copyright (c) 2014 HamiltonHoltInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TROModelWcfAuth.h"

int mplier = 61;

int (^lewsblock)(int,int);

int (^equation)(int,int);

TROModelWcfAuth *remoteObject;

@interface ViewController : UIViewController <TROWcfAuthCallDelegate>

- (IBAction)button1:(id)sender;
- (void)setEquation:(int (^)(int,int))blockvar;
- (int)computeWithValue:(int)value1 andValue:(int)value2;
- (void) tokenReturned:(NSString*)token;


@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;

@end 
