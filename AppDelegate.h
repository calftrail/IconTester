//
//  AppDelegate.h
//  IconTester
//
//  Created by Nathan Vander Wilt on 3/21/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@class FRDropBox;

@interface AppDelegate : NSObject {
	IBOutlet FRDropBox* dropBox;
}

- (IBAction)fileChanged:(id)sender;
- (IBAction)refreshFile:(id)sender;

@end
