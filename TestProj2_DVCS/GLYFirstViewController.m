//
//  GLYFirstViewController.m
//  TestProj2_DVCS
//
//  Created by Ethan Lincoln on 11/19/12.
//  Copyright (c) 2012 Glympse. All rights reserved.
//

#import "GLYFirstViewController.h"
#import "../TestFakeDummyLib/TestFakeDummyLib/TestFakeDummyLib.h"

@interface GLYFirstViewController ()

@end

//oddities -- editing from OSX doesn't show changes in SmartGit-Windows

@implementation GLYFirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First!", @"Firstzzz");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib. 
    TestFakeDummyLib *libInstance = [[TestFakeDummyLib alloc] init];
    self.lblLateLoad.text = [libInstance getStringFromDependency];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_lblLateLoad release];
    [super dealloc];
}
@end
