//
//  HSipStack.h
//  VoipDemo
//
//  Created by Andrei Ermoshin on 29/08/2018.
//  Copyright © 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISipStack.h"
#import "resip/stack/SipStack.hxx"

@interface HSipStack : NSObject <ISipStack>

-(instancetype)initWithCppObject:(resip::SipStack *)sipStack;

@end
