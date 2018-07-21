//
//  GameManager.m
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/7/19.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import "GameManager.h"

@interface GameManager ()

@property(nonatomic,strong)NSMutableArray *commands;

@property(nonatomic,strong)GameHandle *handle;

@end

@implementation GameManager

-(instancetype)initWithHandle:(GameHandle *)handle{
    
    self = [super init];
    
    if (self) {
        
        _handle = handle;
        
    }
    return self;
}

-(void)up{
    
    //回调命令
    [self.handle.upCommand operation];
    
    //保存命令
    [self.commands addObject:[[GameUpCommand alloc]initWithRecipient:self.handle.recipient]];
}

-(void)down{
    
    [self.handle.downCommand operation];
    
    [self.commands addObject:[[GameDownCommand alloc]initWithRecipient:self.handle.recipient]];
}

-(void)left{
    
    [self.handle.leftCommand operation];
    
    [self.commands addObject:[[GameLeftCommand alloc]initWithRecipient:self.handle.recipient]];
}

-(void)right{
    
    [self.handle.rightCommand operation];
    
    [self.commands addObject:[[GameRightCommand alloc]initWithRecipient:self.handle.recipient]];
}

-(void)fire{
    
    [self.handle.fireCommand operation];
    
    [self.commands addObject:[[GameFireCommand alloc]initWithRecipient:self.handle.recipient]];
}


//撤销一个
-(void)undo{
    
    //倒序(队列->自己设计)
    if (self.commands.count > 0) {
        
        NSLog(@"撤销");
        
        //撤销
        [[self.commands lastObject] operation];
        
        //移除
        [self.commands removeLastObject];
    }
}

//撤销所有
-(void)undoAll{
    
    NSLog(@"撤销所有");
    
    //协议规范写法->语法规范
    for (id<GameCommandProtocol> command in self.commands) {
        
        [command operation];
        
    }
    
    [self.commands removeAllObjects];
}








@end













