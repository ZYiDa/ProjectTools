//
//  NSData+Extension.m
//  项目扩展类
//
//  Created by YYKit on 2017/8/8.
//  Copyright © 2017年 kzkj. All rights reserved.
//

#import "NSData+Extension.h"

@implementation NSData (Extension)


+ (NSString *)dataWithGBKEncodingOfData:(NSData *)data
{
    NSStringEncoding gbkEncoding = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSString *message = [[NSString alloc] initWithData:data encoding:gbkEncoding];
    return message;
}

+ (id)dictionaryFromJsonWithString:(NSString *)jsonString
{
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *error = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData
                                                    options:NSJSONReadingAllowFragments
                                                      error:&error];
    if (jsonObject != nil && error == nil)
    {
        return jsonObject;
    }
    else
    {
        // 解析错误
        return error;
    }
}
@end
