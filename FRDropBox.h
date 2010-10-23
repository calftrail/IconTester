//
//  FRDropBox.h
//  Mercatalog
//
//  Created by Nathan Vander Wilt on 3/20/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface FRDropBox : NSImageView {
	NSString* file;
}

- (NSString*)file;

@end
