//
//  NSData+Extension.h
//  项目扩展类
//
//  Created by YYKit on 2017/8/8.
//  Copyright © 2017年 kzkj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Extension)

/**data GBK编码后返回字符串**/
+ (NSString *)dataWithGBKEncodingOfData:(NSData *)data;

/**AFNetworking中解析data数据流**/
+ (id)dictionaryFromJsonWithString:(NSString *)jsonString;
@end
