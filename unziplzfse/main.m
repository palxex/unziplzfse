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
        if( argc < 2 ) {
            NSLog(@"Please provide a zip!");
            return -1;
        }
        NSString *srcPath = [NSString stringWithUTF8String:argv[1]];
        NSString *dstPath = argc > 2 ? [NSString stringWithUTF8String:argv[2]] : @".";
        [SSZipArchive unzipFileAtPath:srcPath
                        toDestination:dstPath
                      progressHandler:^(NSString * _Nonnull entry, unz_file_info zipInfo, long entryNumber, long total) {
                          NSLog(@"%ld/%ld unzipping file %s",entryNumber,total,[entry UTF8String]);
                      }
                    completionHandler:^(NSString * _Nonnull path, BOOL succeeded, NSError * _Nonnull error){
                          NSLog(@"finished");
                      }];
    }
    return 0;
}
