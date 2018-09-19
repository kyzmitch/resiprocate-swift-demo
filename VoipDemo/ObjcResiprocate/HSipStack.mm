//
//  HSipStack.mm
//  VoipDemo
//
//  Created by Andrei Ermoshin on 29/08/2018.
//  Copyright © 2018. All rights reserved.
//

#import "HSipStack.h"
#import "rutil/Sha1.hxx"
#import "resip/stack/ConnectionBase.hxx"
#import "HUtils.h"

using namespace resip;

@interface HSipStack()

@property (nonatomic) resip::SipStack *sipStack;

@end

@implementation HSipStack

-(instancetype)initWithCppObject:(resip::SipStack *)sipStack {
    if((self = [super init])){
        self.sipStack = sipStack;
    }
    return self;
}

- (void)dealloc {
    // TODO: need to use shared pointer from STL
    // because pointer to sip stack also used in
    // HDialogUsageManager class
    
    delete _sipStack;
}

- (void)run {
    self.sipStack->run();
}

- (void)add:(SipTransportType)transportType for:(int)port {
    resip::TransportType type = [HUtils convert:transportType];
    if (type == resip::TransportType::UNKNOWN_TRANSPORT) {
        return;
    }
    self.sipStack->addTransport(type, port);
}

@end
