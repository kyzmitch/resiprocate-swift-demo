//
//  HUtils.mm
//  VoipDemo
//
//  Created by Andrei Ermoshin on 30/08/2018.
//  Copyright © 2018. All rights reserved.
//

#import "HUtils.h"

@implementation HUtils

+ (resip::TransportType)convert:(SipTransportType)type {
    switch (type) {
        case UDP:
            return resip::TransportType::UDP;
            break;

        default:
            return resip::TransportType::UNKNOWN_TRANSPORT;
            break;
    }
}

@end
