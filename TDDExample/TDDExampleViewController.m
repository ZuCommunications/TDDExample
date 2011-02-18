//
//  TDDExampleViewController.m
//  TDDExample
//
//  Created by Nathan Heagy on 11-02-11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TDDExampleViewController.h"

@implementation TDDExampleViewController

@synthesize helloLabel, goodbyeButton, goodbyePhrase, goodbyeCount;

-(void)viewDidLoad 
{
    self.goodbyeCount = 0;
}

- (void)dealloc
{
    [super dealloc];
}


-(IBAction) sayGoodbye:(id)sender;
{
    self.goodbyeCount++;
    self.goodbyePhrase.text = [NSString stringWithFormat:@"Goodbye x %d", self.goodbyeCount];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
