//
//  Patient.h
//  Delegate
//
//  Created by Stanislav Kozhemyako on 7/6/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@protocol PatientDelegate;

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;

-(BOOL)howAreYou;
-(void)takePill;
-(void)makeShot;

@end

@protocol PatientDelegate

-(void)patientfeelsBad:(Patient *)patient;
-(void)patient:(Patient *)patient hasQuestion:(NSString *)question;


@end