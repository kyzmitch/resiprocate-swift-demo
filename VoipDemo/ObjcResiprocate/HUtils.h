//
//  HUtils.h
//  VoipDemo
//
//  Created by Andrei Ermoshin on 30/08/2018.
//  Copyright © 2018. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISipStack.h"
#import "rutil/TransportType.hxx"

@interface HUtils : NSObject

+ (resip::TransportType)convert:(SipTransportType)type;

@end
