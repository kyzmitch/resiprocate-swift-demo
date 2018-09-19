//
//  ISipStack.h
//  VoipDemo
//
//  Created by Andrei Ermoshin on 30/08/2018.
//  Copyright © 2018. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    UNKNOWN_TRANSPORT = 0,
    TLS,
    TCP,
    UDP
} SipTransportType;

@protocol ISipStack <NSObject>

- (void)run;
- (void)add:(SipTransportType)transportType for:(int)port;

@end
