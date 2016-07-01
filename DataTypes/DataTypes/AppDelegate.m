//
//  AppDelegate.m
//  DataTypes
//
//  Created by Stanislav Kozhemyako on 7/1/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    BOOL boolVar = YES;
    
    NSInteger intVar = 10;
    
    NSUInteger uIntVar = 100;
    
    CGFloat floatVar = 1.5f;
    
    double doubleVar = 2.5f;
    
    NSNumber *boolObject = [NSNumber numberWithBool:boolVar];
    
    NSNumber *intObject = [NSNumber numberWithInt:intVar];
    
    NSNumber *uIntObject = [NSNumber numberWithUnsignedInteger:uIntVar];
    
    NSNumber *floatObject = [NSNumber numberWithFloat:floatVar];
    
    NSNumber *doubleObject = [NSNumber numberWithDouble:doubleVar];
    
    
    NSArray *array = [NSArray arrayWithObjects:boolObject, intObject, uIntObject, floatObject, doubleObject, nil];
    
    NSLog(@"boolVar = %d, intVar = %ld, uIntVar = %lu floatVar = %f, doubleVar = %f",
          [[array objectAtIndex:0] boolValue],
          [[array objectAtIndex:1] integerValue],
          [[array objectAtIndex:2] unsignedIntegerValue],
          [[array objectAtIndex:3] floatValue],
          [[array objectAtIndex:4] doubleValue]);

    
    /*
    NSLog(@"boolVar = %d, intVar = %ld, uIntVar = %lu floatVar = %f, doubleVar = %f",
          boolVar, (long)intVar, (unsigned long)uIntVar, floatVar, doubleVar);
    NSLog(@"boolVar = %lu, intVar = %ld, uIntVar = %lu floatVar = %lu, doubleVar = %lu",
          sizeof (boolVar), sizeof((long)intVar), sizeof((unsigned long)uIntVar), sizeof(floatVar), sizeof(doubleVar));
    */
    /*
    Student *studentA = [[Student alloc] init];
    
    studentA.name = @"Best Student";
    
    NSLog(@"StudentA name = %@", studentA.name);
    
    Student *studentB = studentA;
    
    studentB.name = @"Bad Student";
    
    NSLog(@"StudentB name = %@", studentB.name);
    */
    /*
    NSInteger a = 10;
    
    NSLog(@"a = %ld", (long)a);
    
    NSInteger b = a;
    
    b = 5;

    NSLog(@"a = %ld, b = %ld", (long)a , (long)b);
    
    NSInteger *c = &a;
    
    *c = 8;
    
    NSLog(@"a = %ld, b = %ld", (long)a , (long)b);
    
    NSInteger test = 0;
    
    NSInteger result = [self test:a testPointer:&test];
    
    NSLog(@"result = %ld, test = %ld", result, test);
    */
    /*
    Student *student =  [[Student alloc] init];
    student.gender = GenderMale;
    */
    /*
    CGPoint point;
    point.x = 5.5f;
    point.y = 10;
    
    point = CGPointMake(6, 3);
    
    
    CGSize size;
    
    size.height = 10;
    size.width = 5;
    
    CGRect rect;
    
    rect.origin = point;
    rect.size = size;
    
    rect = CGRectMake( 0, 0, 30, 60);
    
    BOOL result = CGRectContainsPoint(rect, point);
    */
    
    
    CGPoint point1 = CGPointMake(0, 5);
    CGPoint point2 = CGPointMake(3, 4);
    CGPoint point3 = CGPointMake(2, 8);
    CGPoint point4 = CGPointMake(7, 1);
    CGPoint point5 = CGPointMake(4, 4);
    
    NSArray *array2 = [NSArray arrayWithObjects:
                       [NSValue valueWithCGPoint:point1],
                       [NSValue valueWithCGPoint:point2],
                       [NSValue valueWithCGPoint:point3],
                       [NSValue valueWithCGPoint:point4],
                       [NSValue valueWithCGPoint:point5],
                       nil];
    for (NSValue *value in array2) {
        
        CGPoint p = [value CGPointValue];
        
        NSLog(@"point = %@", NSStringFromCGPoint(p));
    }

    
    return YES;
}

-(NSInteger)test :(NSInteger)test testPointer:(NSInteger *)testPointer{
    
    *testPointer = 5;
    
    return test;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
