#line 1 "Tweak.xm"
#import "FLEXManager.h"
#import "FLEXWindow.h"
#import "FLEXExplorerViewController.h"
#import "FLEXObjectExplorerViewController.h"

@interface SpringBoard : UIApplication 
-(BOOL)isLocked; 
-(id)statusBar; 
-(id)_accessibilityTopDisplay; 
@end

@interface UIStatusBar : UIView 
-(id)foregroundColor; 
-(void)setForegroundColor:(id)arg1; 
@end

@interface _UIStatusBar : UIView 
-(id)foregroundColor; 
-(void)setForegroundColor:(id)arg1; 
@end

@interface SBBacklightController : NSObject 
+(id)sharedInstance; 
-(NSTimeInterval)defaultLockScreenDimInterval; 
-(void)preventIdleSleepForNumberOfSeconds:(NSTimeInterval)arg1; 
-(void)resetLockScreenIdleTimer; 
@end

@interface UIStatusBarWindow : UIWindow 
@end

@interface FLEXExplorerViewController (PrivateFLEXall)
@property (nonatomic, strong) UIColor *previousStatusBarForegroundColor;
-(void)resignKeyAndDismissViewControllerAnimated:(BOOL)arg1 completion:(id)arg2;
@end

@interface FLEXManager (PrivateFLEXall)
@property (nonatomic, strong) FLEXExplorerViewController *explorerViewController;
@end


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class FLEXWindow; @class FLEXObjectExplorerViewController; @class UIWindow; @class FLEXExplorerViewController; @class _UIStatusBar; @class SBBacklightController; @class UIStatusBar; @class SpringBoard; @class UIStatusBarWindow; 
static void (*_logos_orig$_ungrouped$UIWindow$becomeKeyWindow)(_LOGOS_SELF_TYPE_NORMAL UIWindow* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UIWindow$becomeKeyWindow(_LOGOS_SELF_TYPE_NORMAL UIWindow* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$FLEXWindow$_shouldCreateContextAsSecure)(_LOGOS_SELF_TYPE_NORMAL FLEXWindow* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$FLEXWindow$_shouldCreateContextAsSecure(_LOGOS_SELF_TYPE_NORMAL FLEXWindow* _LOGOS_SELF_CONST, SEL); static FLEXWindow* (*_logos_orig$_ungrouped$FLEXWindow$initWithFrame$)(_LOGOS_SELF_TYPE_INIT FLEXWindow*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static FLEXWindow* _logos_method$_ungrouped$FLEXWindow$initWithFrame$(_LOGOS_SELF_TYPE_INIT FLEXWindow*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$FLEXWindow$hitTest$withEvent$)(_LOGOS_SELF_TYPE_NORMAL FLEXWindow* _LOGOS_SELF_CONST, SEL, CGPoint, id); static id _logos_method$_ungrouped$FLEXWindow$hitTest$withEvent$(_LOGOS_SELF_TYPE_NORMAL FLEXWindow* _LOGOS_SELF_CONST, SEL, CGPoint, id); static void (*_logos_orig$_ungrouped$FLEXObjectExplorerViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL FLEXObjectExplorerViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$FLEXObjectExplorerViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL FLEXObjectExplorerViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$FLEXObjectExplorerViewController$handleDonePressed$(_LOGOS_SELF_TYPE_NORMAL FLEXObjectExplorerViewController* _LOGOS_SELF_CONST, SEL, id); static UIStatusBarWindow* (*_logos_orig$_ungrouped$UIStatusBarWindow$initWithFrame$)(_LOGOS_SELF_TYPE_INIT UIStatusBarWindow*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static UIStatusBarWindow* _logos_method$_ungrouped$UIStatusBarWindow$initWithFrame$(_LOGOS_SELF_TYPE_INIT UIStatusBarWindow*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$UIStatusBar(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("UIStatusBar"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$SpringBoard(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("SpringBoard"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$_UIStatusBar(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("_UIStatusBar"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$FLEXWindow(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("FLEXWindow"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$SBBacklightController(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("SBBacklightController"); } return _klass; }
#line 41 "Tweak.xm"
#define REGISTER_THREE_FINGER_GESTURE()																																	\
	if (![self isKindOfClass:_logos_static_class_lookup$FLEXWindow()]) {																											\
		UILongPressGestureRecognizer *threeFinger = [[UILongPressGestureRecognizer alloc] initWithTarget:[FLEXManager sharedManager] action:@selector(showExplorer)];	\
		threeFinger.numberOfTouchesRequired = 3;																																\
		[self addGestureRecognizer:threeFinger];																														\
	}


static void _logos_method$_ungrouped$UIWindow$becomeKeyWindow(_LOGOS_SELF_TYPE_NORMAL UIWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$_ungrouped$UIWindow$becomeKeyWindow(self, _cmd);

	REGISTER_THREE_FINGER_GESTURE();
}



static BOOL _logos_method$_ungrouped$FLEXWindow$_shouldCreateContextAsSecure(_LOGOS_SELF_TYPE_NORMAL FLEXWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return YES;	
}

static FLEXWindow* _logos_method$_ungrouped$FLEXWindow$initWithFrame$(_LOGOS_SELF_TYPE_INIT FLEXWindow* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
	self = _logos_orig$_ungrouped$FLEXWindow$initWithFrame$(self, _cmd, arg1);
	if (self != nil)
		self.windowLevel = 2050; 
	return self;
}

static id _logos_method$_ungrouped$FLEXWindow$hitTest$withEvent$(_LOGOS_SELF_TYPE_NORMAL FLEXWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGPoint arg1, id arg2) {
	id result = _logos_orig$_ungrouped$FLEXWindow$hitTest$withEvent$(self, _cmd, arg1, arg2);
	if ([(SpringBoard *)[_logos_static_class_lookup$SpringBoard() sharedApplication] isLocked]) {
		SBBacklightController *backlightController = [_logos_static_class_lookup$SBBacklightController() sharedInstance];
		if ([backlightController respondsToSelector:@selector(resetLockScreenIdleTimer)])
			[backlightController resetLockScreenIdleTimer];
		else
			[backlightController preventIdleSleepForNumberOfSeconds:[backlightController defaultLockScreenDimInterval]];
	}
	return result;
}



static void _logos_method$_ungrouped$FLEXObjectExplorerViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL FLEXObjectExplorerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	_logos_orig$_ungrouped$FLEXObjectExplorerViewController$viewDidLoad(self, _cmd);

	if (self.navigationItem.rightBarButtonItems.count == 0)
		self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(handleDonePressed:)];
}


static void _logos_method$_ungrouped$FLEXObjectExplorerViewController$handleDonePressed$(_LOGOS_SELF_TYPE_NORMAL FLEXObjectExplorerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
	[[FLEXManager sharedManager].explorerViewController resignKeyAndDismissViewControllerAnimated:YES completion:nil];
}



static UIStatusBarWindow* _logos_method$_ungrouped$UIStatusBarWindow$initWithFrame$(_LOGOS_SELF_TYPE_INIT UIStatusBarWindow* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
	self = _logos_orig$_ungrouped$UIStatusBarWindow$initWithFrame$(self, _cmd, arg1);
	if (self != nil) {
		UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:[FLEXManager sharedManager] action:@selector(showExplorer)];
		[self addGestureRecognizer:longPress];
	}
	return self;
}


static void (*_logos_orig$StatusBarFixColor$FLEXExplorerViewController$makeKeyAndPresentViewController$animated$completion$)(_LOGOS_SELF_TYPE_NORMAL FLEXExplorerViewController* _LOGOS_SELF_CONST, SEL, id, BOOL, id); static void _logos_method$StatusBarFixColor$FLEXExplorerViewController$makeKeyAndPresentViewController$animated$completion$(_LOGOS_SELF_TYPE_NORMAL FLEXExplorerViewController* _LOGOS_SELF_CONST, SEL, id, BOOL, id); static void (*_logos_orig$StatusBarFixColor$FLEXExplorerViewController$resignKeyAndDismissViewControllerAnimated$completion$)(_LOGOS_SELF_TYPE_NORMAL FLEXExplorerViewController* _LOGOS_SELF_CONST, SEL, BOOL, id); static void _logos_method$StatusBarFixColor$FLEXExplorerViewController$resignKeyAndDismissViewControllerAnimated$completion$(_LOGOS_SELF_TYPE_NORMAL FLEXExplorerViewController* _LOGOS_SELF_CONST, SEL, BOOL, id); 

__attribute__((used)) static UIColor * _logos_method$StatusBarFixColor$FLEXExplorerViewController$previousStatusBarForegroundColor(FLEXExplorerViewController * __unused self, SEL __unused _cmd) { return (UIColor *)objc_getAssociatedObject(self, (void *)_logos_method$StatusBarFixColor$FLEXExplorerViewController$previousStatusBarForegroundColor); }; __attribute__((used)) static void _logos_method$StatusBarFixColor$FLEXExplorerViewController$setPreviousStatusBarForegroundColor(FLEXExplorerViewController * __unused self, SEL __unused _cmd, UIColor * rawValue) { objc_setAssociatedObject(self, (void *)_logos_method$StatusBarFixColor$FLEXExplorerViewController$previousStatusBarForegroundColor, rawValue, OBJC_ASSOCIATION_RETAIN_NONATOMIC); }

static void _logos_method$StatusBarFixColor$FLEXExplorerViewController$makeKeyAndPresentViewController$animated$completion$(_LOGOS_SELF_TYPE_NORMAL FLEXExplorerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, BOOL arg2, id arg3) {
	_logos_orig$StatusBarFixColor$FLEXExplorerViewController$makeKeyAndPresentViewController$animated$completion$(self, _cmd, arg1, arg2, arg3);

	id statusBar = [(SpringBoard *)[_logos_static_class_lookup$SpringBoard() sharedApplication] statusBar];
	self.previousStatusBarForegroundColor = [statusBar foregroundColor];
	[statusBar setForegroundColor:[UIColor blackColor]];
}

static void _logos_method$StatusBarFixColor$FLEXExplorerViewController$resignKeyAndDismissViewControllerAnimated$completion$(_LOGOS_SELF_TYPE_NORMAL FLEXExplorerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1, id arg2) {
	_logos_orig$StatusBarFixColor$FLEXExplorerViewController$resignKeyAndDismissViewControllerAnimated$completion$(self, _cmd, arg1, arg2);

	id statusBar = [(SpringBoard *)[_logos_static_class_lookup$SpringBoard() sharedApplication] statusBar];
	if (self.previousStatusBarForegroundColor != nil) {
		if ([statusBar isKindOfClass:_logos_static_class_lookup$_UIStatusBar()])
			[(_UIStatusBar *)statusBar setForegroundColor:self.previousStatusBarForegroundColor];
		else if ([statusBar isKindOfClass:_logos_static_class_lookup$UIStatusBar()])
			[(UIStatusBar *)statusBar setForegroundColor:self.previousStatusBarForegroundColor];
		self.previousStatusBarForegroundColor = nil;
	}
}



static __attribute__((constructor)) void _logosLocalCtor_de5af228(int __unused argc, char __unused **argv, char __unused **envp) {
	if (_logos_static_class_lookup$SpringBoard())
		{Class _logos_class$StatusBarFixColor$FLEXExplorerViewController = objc_getClass("FLEXExplorerViewController"); MSHookMessageEx(_logos_class$StatusBarFixColor$FLEXExplorerViewController, @selector(makeKeyAndPresentViewController:animated:completion:), (IMP)&_logos_method$StatusBarFixColor$FLEXExplorerViewController$makeKeyAndPresentViewController$animated$completion$, (IMP*)&_logos_orig$StatusBarFixColor$FLEXExplorerViewController$makeKeyAndPresentViewController$animated$completion$);MSHookMessageEx(_logos_class$StatusBarFixColor$FLEXExplorerViewController, @selector(resignKeyAndDismissViewControllerAnimated:completion:), (IMP)&_logos_method$StatusBarFixColor$FLEXExplorerViewController$resignKeyAndDismissViewControllerAnimated$completion$, (IMP*)&_logos_orig$StatusBarFixColor$FLEXExplorerViewController$resignKeyAndDismissViewControllerAnimated$completion$);{ char _typeEncoding[1024]; sprintf(_typeEncoding, "%s@:", @encode(UIColor *)); class_addMethod(_logos_class$StatusBarFixColor$FLEXExplorerViewController, @selector(previousStatusBarForegroundColor), (IMP)&_logos_method$StatusBarFixColor$FLEXExplorerViewController$previousStatusBarForegroundColor, _typeEncoding); sprintf(_typeEncoding, "v@:%s", @encode(UIColor *)); class_addMethod(_logos_class$StatusBarFixColor$FLEXExplorerViewController, @selector(setPreviousStatusBarForegroundColor:), (IMP)&_logos_method$StatusBarFixColor$FLEXExplorerViewController$setPreviousStatusBarForegroundColor, _typeEncoding); } }
	{Class _logos_class$_ungrouped$UIWindow = objc_getClass("UIWindow"); MSHookMessageEx(_logos_class$_ungrouped$UIWindow, @selector(becomeKeyWindow), (IMP)&_logos_method$_ungrouped$UIWindow$becomeKeyWindow, (IMP*)&_logos_orig$_ungrouped$UIWindow$becomeKeyWindow);Class _logos_class$_ungrouped$FLEXWindow = objc_getClass("FLEXWindow"); MSHookMessageEx(_logos_class$_ungrouped$FLEXWindow, @selector(_shouldCreateContextAsSecure), (IMP)&_logos_method$_ungrouped$FLEXWindow$_shouldCreateContextAsSecure, (IMP*)&_logos_orig$_ungrouped$FLEXWindow$_shouldCreateContextAsSecure);MSHookMessageEx(_logos_class$_ungrouped$FLEXWindow, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$FLEXWindow$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$FLEXWindow$initWithFrame$);MSHookMessageEx(_logos_class$_ungrouped$FLEXWindow, @selector(hitTest:withEvent:), (IMP)&_logos_method$_ungrouped$FLEXWindow$hitTest$withEvent$, (IMP*)&_logos_orig$_ungrouped$FLEXWindow$hitTest$withEvent$);Class _logos_class$_ungrouped$FLEXObjectExplorerViewController = objc_getClass("FLEXObjectExplorerViewController"); MSHookMessageEx(_logos_class$_ungrouped$FLEXObjectExplorerViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$FLEXObjectExplorerViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$FLEXObjectExplorerViewController$viewDidLoad);{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$FLEXObjectExplorerViewController, @selector(handleDonePressed:), (IMP)&_logos_method$_ungrouped$FLEXObjectExplorerViewController$handleDonePressed$, _typeEncoding); }Class _logos_class$_ungrouped$UIStatusBarWindow = objc_getClass("UIStatusBarWindow"); MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarWindow, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$UIStatusBarWindow$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarWindow$initWithFrame$);}
}
