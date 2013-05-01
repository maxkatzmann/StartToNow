#import <Preferences/Preferences.h>

@interface startToNowPrefsListController: PSListController {
}
@end

@implementation startToNowPrefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"startToNowPrefs" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
