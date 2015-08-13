//
//  ViewController.m
//  BlockTest
//
//  Created by Lewis W. Johnson on 6/4/14.
//  Copyright (c) 2014 HamiltonHoltInc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize label1;
@synthesize label2;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	lewsblock =^(int num,int n2)                     //set the block var to block literal
    {
        return num * mplier;
    };
    
    remoteObject = [TROModelWcfAuth alloc];
    
    //
    
    [remoteObject initWithCallBack:                  //set the Call Back block var to block literal
     ^{
         NSLog(@"Returned Token From Block=:%@",remoteObject.token);
     }];
    
    remoteObject.delegate = self;                     //7
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender
{
    int localint;
    
    localint = lewsblock(6,0);
    
    label1.text = [@(localint) stringValue];
    
    [self setEquation:lewsblock];
    
    label2.text = [@([self computeWithValue:6 andValue:0]) stringValue];
    
    [remoteObject doremoteprocedure];

}

- (void)setEquation:(int (^)(int,int))blockvar
{
    equation = blockvar;
}

- (int)computeWithValue:(int)value1 andValue:(int)value2
{
    if (!equation)
        return 0;
    
    return equation(value1,value2);
}

#pragma mark -TROWcfAuthCallDelegate methods

- (void) tokenReturned:(NSString*)token;
{
   NSLog( @"Returned Token from protocol=:%@",token);
}





@end
