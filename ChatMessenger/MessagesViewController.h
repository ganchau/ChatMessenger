//
//  MessagesViewController.h
//  ChatMessenger
//
//  Created by Gan Chau on 8/9/15.
//  Copyright (c) 2015 GC App. All rights reserved.
//

#import "JSQMessagesViewController.h"
#import "DataModel.h"

@interface MessagesViewController : JSQMessagesViewController

@property (strong, nonatomic) DataModel *data;

@end
