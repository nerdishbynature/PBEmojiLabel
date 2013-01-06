//
//  PBEmojiLabel.m
//  PBEmojiLabelParser
//
//  Created by Piet Brauer on 02.01.13.
//  Copyright (c) 2013 nerdishbynature. All rights reserved.
//

#import "PBEmojiLabel.h"

@implementation UILabel (PBEmojiLabel)

-(void)setEmojiText:(NSString *)emojiString{
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSString *finalPath = [path stringByAppendingPathComponent:@"EmojiList.plist"];

    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:finalPath];

    for (NSString *key in dict.allKeys)
        emojiString = [emojiString stringByReplacingOccurrencesOfString:key
															 withString:[dict objectForKey:key]];

    self.text = emojiString;
}

@end
