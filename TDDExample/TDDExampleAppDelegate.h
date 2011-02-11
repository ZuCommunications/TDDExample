//
//  TDDExampleAppDelegate.h
//  TDDExample
//
//  Created by Nathan Heagy on 11-02-11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TDDExampleViewController;

@interface TDDExampleAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TDDExampleViewController *viewController;

@end
