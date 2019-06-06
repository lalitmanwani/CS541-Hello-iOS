//
//  ViewController.h
//  CS541-Hello-iOS
//
//  Created by Saket Chinchalikar on 5/30/19.
//  Copyright © 2019 Lalit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  <UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@end

