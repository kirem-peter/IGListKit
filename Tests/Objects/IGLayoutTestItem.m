/**
 * Copyright (c) 2016-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

#import "IGLayoutTestItem.h"

@implementation IGLayoutTestItem {
    CGSize _size;
}

- (instancetype)initWithSize:(CGSize)size expensive:(BOOL)expensive {
    if (self = [super init]) {
        _size = size;
        _expensive = expensive;
    }
    return self;
}

- (CGSize)size {
    if (self.expensive) {
        usleep(100); // 0.1 ms
    }
    return _size;
}

@end
