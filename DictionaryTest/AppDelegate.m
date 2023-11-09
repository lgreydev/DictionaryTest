//
//  AppDelegate.m
//  DictionaryTest
//
//  Created by Sergey Lukaschuk on 2023-11-08.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    NSDictionary* dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
                                @"Petrov", @"lastName",
                                @"Vasiliy", @"name",
                                [NSNumber numberWithInt:25], @"age",
                                [NSNumber numberWithInt:30], @"age2",
                                nil, @"city",
                                [NSNumber numberWithInt:40], @"age3",
                                nil];
    
    NSDictionary* dictionary2 = [NSDictionary dictionaryWithObjectsAndKeys:@"Mike", @"name", nil];
    
    NSDictionary* dictionary3 = @{@"name": @"Tom", @"lastName": @"Hary", @"age": @"34"};
    
//    NSLog(@"%@, count = %ld", dictionary2, [dictionary2 count]);
    
//    NSLog(@"%@, count = %ld", dictionary3, [dictionary3 count]);
//    NSLog(@"name = %@", [dictionary3 objectForKey:@"name"]);
/*
    NSLog(@"name = %@, lastName = %@, age = %ld, count = %ld",
          [dictionary objectForKey:@"name"],
          [dictionary objectForKey:@"lastName"],
          [[dictionary objectForKey:@"age"] integerValue],
          [dictionary count]);
*/
    
    for (NSString* key in [dictionary allKeys]) {
        
        id obj = [dictionary objectForKey:key];
        
        NSLog(@"%@ = %@ ", key, obj);
    }
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
