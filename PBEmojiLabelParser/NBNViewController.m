//
//  NBNViewController.m
//  PBEmojiLabelParser
//
//  Created by Piet Brauer on 02.01.13.
//  Copyright (c) 2013 nerdishbynature. All rights reserved.
//

#import "NBNViewController.h"
#import "PBEmojiLabel.h"

@interface NBNViewController ()

@property (nonatomic, strong) IBOutlet UILabel* emojiLabel;

@end

@implementation NBNViewController
@synthesize emojiLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *text = @"";
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSString *finalPath = [path stringByAppendingPathComponent:@"EmojiList.plist"];
    
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:finalPath];
    
    for (NSString *key in dictionary) {
        text = [text stringByAppendingFormat:@"%@ ", key];
    }
    [self.emojiLabel setEmojiText:text];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
