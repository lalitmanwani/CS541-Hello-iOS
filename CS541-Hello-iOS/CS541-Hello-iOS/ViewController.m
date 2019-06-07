//
//  ViewController.m
//  CS541-Hello-iOS
//
//  Created by Lalit Manwani on 5/30/19.
//  Copyright © 2019 Lalit. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>


@interface ViewController ()
{
    AVAudioPlayer *_audioPlayer;
    NSArray *pickernames;
   
    
}
@property (weak, nonatomic) IBOutlet UIImageView *nameImage;


@end
void changefunc(void);

@implementation ViewController




int x = 0;





- (void)viewDidLoad {
    [super viewDidLoad];
     pickernames = @[
        @"English",
        @"Hindi",
        @"Dutch",
        @"French",
        @"Chinese",
        @"Arabic",
        @"Italian",
        @"Brazilian",
        @"Korean",
        @"Japanese"
        ];
    // Do any additional setup after loading the view.
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
      [self changefunc];
}
    
- (IBAction)imagechanger:(id)sender {
    [self changefunc];
    
}



- (void)changefunc{
    
    srand(0);
    x = arc4random() % 10;
    
    _nameImage.image = [UIImage imageNamed: pickernames[x]];
    
  
    NSString *sound = pickernames[x];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:sound ofType:@".mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:path];
    
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:NULL];

    [_audioPlayer play];
  
};








- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
    
      [self changefunc];
}



- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return pickernames.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    return pickernames[row];
}



- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    _nameImage.image = [UIImage imageNamed: pickernames[row]];
  NSString *sound = pickernames[row];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:sound ofType:@".mp3"];
    NSURL *soundURL = [NSURL fileURLWithPath:path];
    
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:NULL];
    
    [_audioPlayer play];
 
}
@end
