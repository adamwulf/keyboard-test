//
//  ViewController.m
//  keyboard-test
//
//  Created by Adam Wulf on 9/21/15.
//  Copyright © 2015 Adam Wulf. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    IBOutlet UITextView* textField;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor whiteColor]];

    NSTextContainer* container = [[NSTextContainer alloc] initWithSize:CGSizeMake(200, 100)];
    textField = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, 200, 100) textContainer:container];
    textField.layer.borderWidth = 1;
    textField.layer.borderColor = [UIColor grayColor].CGColor;
    textField.center = CGPointMake(self.view.center.x, 200);
    textField.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;

    UIView* v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 40)];
    v.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    v.backgroundColor = [UIColor greenColor];

    textField.inputAccessoryView = v;

    [self.view addSubview:textField];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
