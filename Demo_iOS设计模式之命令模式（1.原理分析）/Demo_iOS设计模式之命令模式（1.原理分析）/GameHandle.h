//
//  GameHandle.h
//  Demo_iOS设计模式之命令模式（1.原理分析）
//
//  Created by 项正强 on 2018/7/21.
//  Copyright © 2018年 项正强. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GameUpCommand.h"

#import "GameDownCommand.h"

#import "GameLeftCommand.h"

#import "GameRightCommand.h"

#import "GameFireCommand.h"

@interface GameHandle : NSObject

@property(nonatomic,strong)GameRecipient *recipient;

@property(nonatomic,strong)GameUpCommand *upCommand;

@property(nonatomic,strong)GameDownCommand *downCommand;

@property(nonatomic,strong)GameLeftCommand *leftCommand;

@property(nonatomic,strong)GameRightCommand *rightCommand;

@property(nonatomic,strong)GameFireCommand *fireCommand;


@end
