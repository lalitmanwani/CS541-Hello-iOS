//
//  ViewController.m
//  CS541-Hello-iOS
//
//  Created by Saket Chinchalikar on 5/30/19.
//  Copyright © 2019 Lalit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
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
    @"Brazalian"
};
int x = 0;


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
    x = arc4random() % 8;
    
    _nameImage.image = [UIImage imageNamed: nameimg[x]];
    
    
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
    
      [self changefunc];
}











@end
