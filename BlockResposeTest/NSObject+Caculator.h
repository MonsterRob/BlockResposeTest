//
//  NSObject+Caculator.h
//  BlockResposeTest
//
//  Created by 王召洲 on 2016/10/13.
//  Copyright © 2016年 wyzc. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CMaker;

@interface NSObject (Caculator)
+(float) caculatorWith:(void (^)(CMaker *make))caculatoBlock;
@end
@interface CMaker : NSObject
@property (nonatomic,assign) float result;
-(CMaker * (^)(float))add;
-(CMaker * (^)(float))sub;
-(CMaker * (^)(float))multi;
-(CMaker * (^)(float))div;
@end