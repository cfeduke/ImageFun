//
//  StretchView.h
//  ImageFun
//
//  Created by Charles Feduke on 2/19/11.
//  Copyright 2011 Mobile Posse. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface StretchView : NSView {
	NSBezierPath *path;
}

-(NSPoint)randomPoint;

@end
