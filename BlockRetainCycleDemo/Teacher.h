//
//  Teacher.h
//  BlockRetainCycleDemo
//
//  Created by yuedongkui on 2017/1/19.
//  Copyright © 2017年 LY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teacher : NSObject

@property (nonatomic, copy) void(^case6Block)();


- (void)requestData:(void(^)(NSData *data))block;

- (void)callCase6BlackEvent;

@end
