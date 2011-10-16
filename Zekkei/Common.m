//
//  Common.m
//  Zekkei
//
//  Created by Seki Haruyuki on 10/16/11.
//  Copyright (c) 2011 Georepublic Japan. All rights reserved.
//

#import "Common.h"

@implementation Common
+(UIColor*)titleTintColor{
    return [UIColor blackColor];
}
+(UILabel *)titleWithText:(NSString*) str{
    // this will appear as the title in the navigation bar
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont boldSystemFontOfSize:20.0];
    label.shadowColor = [UIColor colorWithWhite:0.0 alpha:0.5];
    label.textAlignment = UITextAlignmentCenter;
    label.textColor = [UIColor orangeColor]; // change this color
    label.text = str;
    [label sizeToFit];
    return label;
}
@end
