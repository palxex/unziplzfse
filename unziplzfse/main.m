//
//  main.m
//  unziplzfse
//
//  Created by palxex on 2017/2/4.
//  Copyright © 2017年 fake. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SSZipArchive/SSZipArchive.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        [SSZipArchive unzipFileAtPath:[NSString stringWithUTF8String:argv[1]] toDestination:[NSString stringWithUTF8String:argv[2]]];
    }
    return 0;
}
