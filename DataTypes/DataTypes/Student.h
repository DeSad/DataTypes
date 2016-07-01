//
//  Student.h
//  DataTypes
//
//  Created by Stanislav Kozhemyako on 7/1/16.
//  Copyright © 2016 Stanislav Kozhemyako. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    GenderMale,
    GenderFemale
}Gender;

@interface Student : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) Gender gender;


@end
