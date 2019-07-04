//
//  MQCoreDataManager.h
//  basektball
//
//  Created by MoMo on 2019/7/3.
//  Copyright © 2019 basektball. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

#define kMQCoreDataManager      [MQCoreDataManager shareInstance]
@interface MQCoreDataManager : NSObject

@property (nonatomic, strong) NSPersistentContainer *persistentContainer;

+ (MQCoreDataManager *)shareInstance;

- (BOOL)save;

@end
