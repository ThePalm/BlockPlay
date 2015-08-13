//
//  TROModelWcfAuth.m
//  COPITRO
//
//  Created by Johnson, Lewis (INCEED, LLC) on 7/26/13.
//  Copyright (c) 2013 Johnson, Lewis (INCEED, LLC). All rights reserved.
//

#import "TROModelWcfAuth.h"
#import "AppDelegate.h"

@implementation TROModelWcfAuth                         //7

@synthesize username;
@synthesize password;
@synthesize token;
@synthesize delegate;                                  //8

-(void) initWithCallBack:(void(^)())sentblock;
{
    self.callbackBlock = sentblock;
    self.token = @"authtoken";
}


- (void) tokenReturned:(NSString*)tokenreceived;
{
    [[self delegate] tokenReturned:tokenreceived];
}

-(void)doremoteprocedure
{
    //do background stuff get data blah blah blah
    
    self.callbackBlock();             //execute call back block
    
    [self tokenReturned:token];       //execute call back from protocall
    
}


@end
