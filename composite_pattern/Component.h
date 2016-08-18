//
//  Component.h
//  composite_pattern
//
//  Created by Dmitriy Arkhipov on 18.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 Component: определяет интерфейс для всех компонентов в древовидной структуре
 */
@interface Component : NSObject

@property (strong, nonatomic) NSString *name;

- (instancetype) initWithName:(NSString *)name;

- (void) display;
- (void) addComponent:(Component *)component;
- (void) removeComponent:(Component *)component;

@end
