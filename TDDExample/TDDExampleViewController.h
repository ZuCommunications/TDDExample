//
//  TDDExampleViewController.h
//  TDDExample
//
//  Created by Nathan Heagy on 11-02-11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDDExampleViewController : UIViewController {
    
}
@property (nonatomic, retain) IBOutlet UILabel *helloLabel;
@property (nonatomic, retain) IBOutlet UIButton *goodbyeButton;
@property (nonatomic, retain) IBOutlet UILabel *goodbyePhrase;
@property int goodbyeCount;

-(IBAction) sayGoodbye:(id)sender;

@end
