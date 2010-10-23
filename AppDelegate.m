//
//  AppDelegate.m
//  IconTester
//
//  Created by Nathan Vander Wilt on 3/21/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

#import "FRDropBox.h"


@implementation AppDelegate

- (IBAction)fileChanged:(id)sender {
	(void)sender;
	[self refreshFile:nil];
}

- (IBAction)refreshFile:(id)sender {
	NSString* file = [dropBox file];
	NSImage* icon = [[[NSImage alloc] initWithContentsOfURL:[NSURL fileURLWithPath:file]] autorelease];
	if (!icon) {
		icon = [[NSWorkspace sharedWorkspace] iconForFile:file];
	}
	[NSApp setApplicationIconImage:icon];
}

@end
