//
//  GameManager.h
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/7/19.
//  Copyright © 2018年 项正强. All rights reserved.
//

//请求者

#import <Foundation/Foundation.h>

#import "GameHandle.h"

@interface GameManager : NSObject

-(instancetype)initWithHandle:(GameHandle *)handle;

-(void)up;

-(void)down;

-(void)left;

-(void)right;

-(void)fire;

-(void)undo;

-(void)undoAll;

@end
