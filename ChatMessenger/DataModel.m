//
//  DataModel.m
//  ChatMessenger
//
//  Created by Gan Chau on 8/9/15.
//  Copyright (c) 2015 GC App. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

- (instancetype)init
{
    self = [super init];
    
    if (self) {        
        [self loadSomeData];
    }
    
    return self;
}

- (void)loadSomeData
{
    /**
     *  Create avatar images once.
     *
     *  Be sure to create your avatars one time and reuse them for good performance.
     *
     *  If you are not using avatars, ignore this.
     */

    JSQMessagesAvatarImage *chauImage = [JSQMessagesAvatarImageFactory avatarImageWithUserInitials:@"GC"
                                                                                 backgroundColor:[UIColor colorWithWhite:0.85f alpha:1.0f]
                                                                                       textColor:[UIColor colorWithWhite:0.60f alpha:1.0f]
                                                                                            font:[UIFont systemFontOfSize:14.0f]
                                                                                        diameter:kJSQMessagesCollectionViewAvatarSizeDefault];
    JSQMessagesAvatarImage *jobsImage = [JSQMessagesAvatarImageFactory avatarImageWithImage:[UIImage imageNamed:@"demo_avatar_jobs"]
                                                                                   diameter:kJSQMessagesCollectionViewAvatarSizeDefault];
    
    self.avatars = @{ kJSQAvatarIdChau : chauImage,
                      kJSQAvatarIdJobs : jobsImage };
    
    self.users = @{ kJSQAvatarIdChau : kJSQAvatarDisplayNameChau,
                    kJSQAvatarIdJobs : kJSQAvatarDisplayNameJobs };
    
    /**
     *  Create message bubble images objects.
     *
     *  Be sure to create your bubble images one time and reuse them for good performance.
     *
     */
    
    JSQMessagesBubbleImageFactory *bubbleFactory = [[JSQMessagesBubbleImageFactory alloc] init];
    
    self.outgoingBubbleImageData = [bubbleFactory outgoingMessagesBubbleImageWithColor:[UIColor jsq_messageBubbleBlueColor]];
    self.incomingBubbleImageData = [bubbleFactory incomingMessagesBubbleImageWithColor:[UIColor jsq_messageBubbleLightGrayColor]];
    
    /**
     *  Load some initial messages for demo.
     *
     *  You should have a mutable array or orderedSet, or something.
     */
    JSQMessage *jobsMessage = [[JSQMessage alloc] initWithSenderId:kJSQAvatarIdJobs
                                                 senderDisplayName:kJSQAvatarDisplayNameJobs
                                                              date:[NSDate distantPast]
                                                              text:@"There's one more thing."];
    
    JSQMessage *chauMessage = [[JSQMessage alloc] initWithSenderId:kJSQAvatarIdChau
                                                 senderDisplayName:kJSQAvatarDisplayNameChau
                                                              date:[NSDate distantPast]
                                                              text:@"Is it the new iPhone?"];
    self.messages = [@[jobsMessage, chauMessage] mutableCopy];
}

@end
