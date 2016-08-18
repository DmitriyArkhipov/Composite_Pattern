//
//  SystemComponent.h
//  composite_pattern
//
//  Created by Dmitriy Arkhipov on 18.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 Component: определяет интерфейс для всех компонентов в древовидной структуре
 */
@interface SystemComponent : NSObject

@property (strong, nonatomic) NSString *name;

- (instancetype) initWithName:(NSString *)name;

- (void) addComponent:(SystemComponent *)component;
- (void) removeComponent:(SystemComponent *)component;
- (void) printData;

@end
