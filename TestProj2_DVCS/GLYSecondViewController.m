//
//  GLYSecondViewController.m
//  TestProj2_DVCS
//
//  Created by Ethan Lincoln on 11/19/12.
//  Copyright (c) 2012 Glympse. All rights reserved.
//

#import "GLYSecondViewController.h"
#import "../../../External Libs/OtherFakeTestLib/OtherFakeTestLib/OtherFakeTestLib.h"

@interface GLYSecondViewController ()

@end

@implementation GLYSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"OSXSecond");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    //OMG HUGE CHANGES FROM OSX!!!
    //
    //....
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    OtherFakeTestLib *libInstance = [[OtherFakeTestLib alloc] init];
    self.lblOtherDependent.text = [libInstance getOtherStringFromDependency];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_lblOtherDependent release];
    [super dealloc];
}
@end
