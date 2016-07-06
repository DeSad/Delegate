//
//  Doctor.h
//  Delegate
//
//  Created by Stanislav Kozhemyako on 7/6/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@protocol PatientDelegate;

@interface Doctor : NSObject <PatientDelegate>



@end
