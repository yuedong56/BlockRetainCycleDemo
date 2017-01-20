//
//  Teacher.m
//  BlockRetainCycleDemo
//
//  Created by yuedongkui on 2017/1/19.
//  Copyright © 2017年 LY. All rights reserved.
//

#import "Teacher.h"

@interface Teacher ()

@property (nonatomic, copy) void(^caseBlock)();

@end



@implementation Teacher

- (instancetype)init
{
    self = [super init];
    if (self) {

    }
    return self;
}

- (void)requestData:(void (^)(NSData *))block
{
    self.caseBlock = block;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t) (0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (self.caseBlock != nil) {
            self.caseBlock(@"case");
        }
    });
}

- (void)callCase6BlackEvent
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (self.case6Block != nil) {
            self.case6Block(@"case 6");
        }
    });
}

@end
