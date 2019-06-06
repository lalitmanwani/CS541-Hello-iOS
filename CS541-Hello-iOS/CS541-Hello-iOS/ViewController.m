//
//  ViewController.m
//  CS541-Hello-iOS
//
//  Created by Saket Chinchalikar on 5/30/19.
//  Copyright © 2019 Lalit. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>


@interface ViewController ()
{
    AVAudioPlayer *_audioPlayer;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *nameImage;

@end
void changefunc(void);

@implementation ViewController

NSString *nameimg[] = {
    @"English",
    @"Hindi",
    @"Dutch",
    @"French",
    @"Chinese",
    @"Arabic",
    @"Italian",
    @"Brazalian",
    @"Korean",
    @"Japanese"
};
int x = 0;

NSString *sounds[] = {
    @"English",
    @"Hindi",
    @"Dutch",
    @"French",
    @"Chinese",
    @"Arabic",
    @"Italian",
    @"Brazalian",
    @"Korean",
    @"Japanese"
    
};




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
      [self changefunc];
}
- (IBAction)imagechanger:(id)sender {
    [self changefunc];
    
}



- (void)changefunc{
    
    srand(0);
    x = arc4random() % 10;
    
    _nameImage.image = [UIImage imageNamed: nameimg[x]];
    
    
    NSString *sound = sounds[x];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:sound ofType:@".mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:path];
    
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:NULL];

    [_audioPlayer play];
    
};

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
    
      [self changefunc];
}











@end
