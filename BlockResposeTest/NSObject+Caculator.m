//
//  NSObject+Caculator.m
//  BlockResposeTest
//
//  Created by 王召洲 on 2016/10/13.
//  Copyright © 2016年 wyzc. All rights reserved.
//

#import "NSObject+Caculator.h"


@implementation NSObject (Caculator)
+(float)caculatorWith:( void (^)(CMaker *) )caculatoBlock {
    CMaker *maker = [[CMaker alloc]init];
    
    caculatoBlock(maker);// 调用block 并将参数传给block
    return maker.result;
}
@end



@implementation CMaker

-(CMaker *(^)(float))add {
    return ^CMaker * (float value) {
        _result += value;
        return self;
    };
}
-(CMaker *(^)(float))sub {
    return ^CMaker * (float value) {
        _result -= value;
        return self;
    };
}
-(CMaker *(^)(float))multi {
    return ^CMaker * (float value) {
        _result *= value;
        return self;
    };
}
-(CMaker *(^)(float))div {
    return ^CMaker * (float value) {
        _result /= value;
        return self;
    };
}

@end