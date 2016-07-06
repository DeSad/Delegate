//
//  Doctor.m
//  Delegate
//
//  Created by Stanislav Kozhemyako on 7/6/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

#pragma mark - PatientDelegate -

-(void)patientfeelsBad:(Patient *)patient{
    NSLog(@"Patient %@ feels bad", patient.name);
    
    if (patient.temperature >= 37 && patient.temperature <= 39.f) {
        [patient takePill];
    }else if (patient.temperature > 39.f){
        [patient makeShot];
    }else{
        NSLog(@"Patient %@ should rest", patient.name);
    }
}

-(void)patient:(Patient *)patient hasQuestion:(NSString *)question{
    NSLog(@"Patient %@ has a question: %@", patient.name, question);
}

@end
