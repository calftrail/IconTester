//
//  FRDropBox.m
//  Mercatalog
//
//  Created by Nathan Vander Wilt on 3/20/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "FRDropBox.h"


@implementation FRDropBox

- (NSDragOperation)draggingEntered:(id < NSDraggingInfo >)sender {
	NSPasteboard* pboard = [sender draggingPasteboard];
	NSString* bestType = [pboard availableTypeFromArray:[NSArray arrayWithObject:NSFilenamesPboardType]];
	if (!bestType) return NSDragOperationNone;
	return NSDragOperationLink;
}

- (BOOL)prepareForDragOperation:(id < NSDraggingInfo >)sender {
	(void)sender;
	return YES;
}

- (BOOL)performDragOperation:(id < NSDraggingInfo >)sender {
	NSPasteboard* pboard = [sender draggingPasteboard];
	NSString* bestType = [pboard availableTypeFromArray:[NSArray arrayWithObject:NSFilenamesPboardType]];
	[file release];
	file = [[pboard propertyListForType:bestType] objectAtIndex:0];
	[file retain];
	NSImage* icon = [[NSWorkspace sharedWorkspace] iconForFile:file];
	[self setImage:icon];
	/* !!!: this doubles the action when the dropped file is an image super likes. Oh well, this is just prototype. */
	[self sendAction:[self action] to:[self target]];
	return YES;
}

- (NSString*)file { return file; }

@end
