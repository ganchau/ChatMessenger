//
//  DataModel.h
//  ChatMessenger
//
//  Created by Gan Chau on 8/9/15.
//  Copyright (c) 2015 GC App. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSQMessagesViewController/JSQMessages.h>

static NSString * const kJSQAvatarDisplayNameChau = @"Gan Chau";
static NSString * const kJSQAvatarDisplayNameJobs = @"Steve Jobs";

static NSString * const kJSQAvatarIdChau = @"012345-67-89";
static NSString * const kJSQAvatarIdJobs = @"987654-32-10";

@interface DataModel : NSObject

@property (strong, nonatomic) NSMutableArray *messages;
@property (strong, nonatomic) NSDictionary *avatars;
@property (strong, nonatomic) JSQMessagesBubbleImage *outgoingBubbleImageData;
@property (strong, nonatomic) JSQMessagesBubbleImage *incomingBubbleImageData;
@property (strong, nonatomic) NSDictionary *users;

@end
