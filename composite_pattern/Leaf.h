//
//  Leaf.h
//  composite_pattern
//
//  Created by Dmitriy Arkhipov on 18.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import "Component.h"
/**
Leaf: представляет отдельный компонент, который не может содержать другие компоненты
 */
@interface Leaf : Component

- (void) display;

@end
