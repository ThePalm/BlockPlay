//
//  TROModelWcfAuth.h
//  COPITRO
//
//  Created by Johnson, Lewis (INCEED, LLC) on 7/26/13.
//  Copyright (c) 2013 Johnson, Lewis (INCEED, LLC). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h" 

//non block callback code
@protocol TROWcfAuthCallDelegate <NSObject>  //1
@required                                    //2

- (void) tokenReturned:(NSString*)token;     //3

@end                                         //4
//

@interface TROModelWcfAuth : NSObject
{
  
}
//non block callback code
@property (retain) id delegate;               //5
@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSString *password;
@property (strong, nonatomic) NSString *token;

//block callback code
@property (copy) void(^callbackBlock)();     //1

//non block callback code
- (void) tokenReturned:(NSString*)token;     //6

//block callback code
-(void) initWithCallBack:(void(^)())sentblock;

//regular object purpose code
-(void)doremoteprocedure;

@end