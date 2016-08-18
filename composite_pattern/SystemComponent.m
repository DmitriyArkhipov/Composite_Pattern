//
//  SystemComponent.m
//  composite_pattern
//
//  Created by Dmitriy Arkhipov on 18.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "SystemComponent.h"

@implementation SystemComponent

- (instancetype) initWithName:(NSString *)name {
    
    self = [super init];
    
    if (self) {
        _name = name;
    }
    
    return self;
}

- (void) addComponent:(SystemComponent *)component {}

- (void) removeComponent:(SystemComponent *)component {}

- (void) printData {
    
    NSLog(@"%@", _name);

}

@end
