//
//  CCFactory.h
//  Pirate-Game
//
//  Created by McCawley on 7/7/14.
//  Copyright (c) 2014 Ryan McCawley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface CCFactory : NSObject

-(NSArray *)tiles;
-(CCCharacter *)character;
-(CCBoss *)boss;

@end
