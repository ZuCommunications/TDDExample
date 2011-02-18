#import <GHUnitIOS/GHUnit.h> 
#import "TDDExampleViewController.h"

@interface TDDExampleViewControllerTest : GHTestCase {}
@property (nonatomic, retain) TDDExampleViewController *vc;
@end  

@implementation TDDExampleViewControllerTest
@synthesize vc;

-(void)setUp {
    self.vc = [[TDDExampleViewController alloc] init];
    [self.vc loadView];
}

-(void)tearDown {
    [self.vc release];
}

-(void) test_HelloUILabelShouldExist
{
    GHAssertNotNil(self.vc.helloLabel, @"Hello label does not exist");
}

-(void) test_HelloLabelShouldSayHello
{
    GHAssertEqualStrings(self.vc.helloLabel.text, @"Hello", @"Hello label doesn't say hello");
}

-(void) test_BackgroundShouldBeAComfortingBlue
{
    CGColorRef colorref = [self.vc.view.backgroundColor CGColor];
    const CGFloat *components = CGColorGetComponents(colorref);
    GHAssertEqualsWithAccuracy((CGFloat)0.660999, components[0], 0.00001, @"blue background's red value was wrong");
    GHAssertEqualsWithAccuracy((CGFloat)0.812921, components[1], 0.00001, @"blue background's red value was wrong");
    GHAssertEqualsWithAccuracy((CGFloat)1.0, components[2], 0.00001, @"blue background's red value was wrong");
}

-(void) test_ViewShouldHaveGoodbyeButton
{
    GHAssertNotNil(self.vc.goodbyeButton, @"goodbye button doesn't exist");
}

-(void) test_GoodbyeButtonShouldSayGoodbyeWhenPressed
{
    NSArray *actions = [self.vc.goodbyeButton actionsForTarget:self.vc forControlEvent:UITouchPhaseBegan];
    GHAssertTrue([actions containsObject:@"sayGoodbye:"], @"button doesn't say goodbye");
}

-(void) test_SaysGoodbyeShouldSayGoodbye
{
    GHAssertNotNil(self.vc.goodbyePhrase, @"goodbye phrase is not there");
    
    [self.vc sayGoodbye:self.vc.goodbyeButton];
    
    GHAssertEqualStrings(self.vc.goodbyePhrase.text, @"Goodbye x 1", @"doesn't say goodbye");
}

-(void) test_ViewControllerShouldIncrementCountWhenGoodbyeIsSaid
{
    GHAssertTrue(self.vc.goodbyeCount == 0, @"goodbye count didn't start at zero");
    [self.vc sayGoodbye:nil];
    GHAssertTrue(self.vc.goodbyeCount == 1, @"goodbye count didn't increment");
    [self.vc sayGoodbye:nil];
    GHAssertTrue(self.vc.goodbyeCount == 2, @"goodbye count didn't increment");
}

-(void) test_GoodbyeCountShouldAppearWhenGoodbyeIsSaid
{
    [self.vc sayGoodbye:nil];
    
    [self.vc sayGoodbye:nil];
    GHAssertEqualStrings(self.vc.goodbyePhrase.text, @"Goodbye x 2", @"goodbye text didn't appear");
}

@end
