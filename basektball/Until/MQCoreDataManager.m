//
//  MQCoreDataManager.m
//  basektball
//
//  Created by MoMo on 2019/7/3.
//  Copyright © 2019 basektball. All rights reserved.
//


#import "MQCoreDataManager.h"

@implementation MQCoreDataManager

+ (MQCoreDataManager *)shareInstance {
    static MQCoreDataManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[MQCoreDataManager alloc] init];
    });
    return manager;
}

- (NSPersistentContainer *)persistentContainer {
    if (_persistentContainer != nil) {
        return _persistentContainer;
    }
    
    NSManagedObjectModel *model = [NSManagedObjectModel mergedModelFromBundles:nil];
    _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"basektball" managedObjectModel:model];
    [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription * description, NSError *error) {
        NSLog(@"%@", description);
        NSLog(@"%@", error);
    }];
    return _persistentContainer;
    
}

- (BOOL)save {
    NSError *error = nil;
    [self.persistentContainer.viewContext save:&error];
    
    if (error == nil) {
        NSLog(@"core data save succed.");
        
        return YES;
    } else {
        NSLog(@"core data save failed：%@",error);
        
        return NO;
    }
}


@end
