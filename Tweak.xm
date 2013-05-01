@interface GMOHomePageController
- (id)nowViewController;
@end

@interface GMOHomePageController (NowStarter)
- (void)NSlaunchNow;
@end

@interface GMONowViewController
- (void)performExpandForTap;
@end

@interface GMOMainViewController
- (void)startupHomeAnimation;
- (id)homePageController;
- (BOOL)isInNowMode;
@end

%hook GMOHomePageController

%new
- (void)NSlaunchNow {

    //now (:D) getting the NowViewController
    GMONowViewController *NSnowController = [self nowViewController];

    //this is the method that gets called, when you tap the cards at the bottom of the screen
    [NSnowController performExpandForTap];
}

%end

%hook GMOMainViewController

- (void)startupHomeAnimation {

    %orig;

    NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.maxkatzmann.starttonow.plist"];
    if (!prefs || [[prefs objectForKey:@"enabled"] boolValue]) {
        if (![self isInNowMode]) {
            GMOHomePageController *NShomePageController = [self homePageController];
            [NShomePageController NSlaunchNow];
        }
    }
    [prefs release];
}

%end