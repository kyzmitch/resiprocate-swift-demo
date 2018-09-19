//
//  HDialogUsageManager.mm
//  VoipDemo
//
//  Created by Andrei Ermoshin on 29/08/2018.
//  Copyright © 2018. All rights reserved.
//

#import "HDialogUsageManager.h"
#import "HSipStack.h"
#import "resip/dum/DialogUsageManager.hxx"
#import "resip/stack/SipStack.hxx"

using namespace resip;

@interface HDialogUsageManager()

@property (nonatomic) DialogUsageManager *dialogUsageManager;
@property (nonatomic) resip::SipStack *stack;

@end

@implementation HDialogUsageManager

- (instancetype)init {
    if((self = [super init])){
        SipStack *stack = new SipStack();
        self.stack = stack;
        self.dialogUsageManager = new DialogUsageManager(*stack);
    }
    return self;
}

- (void)dealloc{
    // TODO: need to use shared pointer from STL
    // because pointer to sip stack also used in
    // HSipStack class

    // delete sipStack;
}

- (id<ISipStack>)sipStack {
    HSipStack *stack = [[HSipStack alloc] initWithCppObject:self.stack];
    return stack;
}

@end
