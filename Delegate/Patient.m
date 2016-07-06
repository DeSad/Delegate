//
//  Patient.m
//  Delegate
//
//  Created by Stanislav Kozhemyako on 7/6/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(BOOL)howAreYou{
    
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood) {
        [self.delegate patientfeelsBad:self];
    }
    
    return iFeelGood;
}

-(void)takePill{
    NSLog(@"%@ takes a pill", self.name);
}

-(void)makeShot{
    NSLog(@"%@ makes a shot", self.name);
}

@end
