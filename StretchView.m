//
//  StretchView.m
//  ImageFun
//
//  Created by Charles Feduke on 2/19/11.
//  Copyright 2011 Mobile Posse. All rights reserved.
//

#import "StretchView.h"


@implementation StretchView

- (id)initWithFrame:(NSRect)rect {
    self = [super initWithFrame:rect];
    if (self == nil)
		return nil;
	
	srandom(time(NULL));
	
	path = [[NSBezierPath alloc]init];
	[path setLineWidth:3.0];
	NSPoint p = [self randomPoint];
	[path moveToPoint:p];
	int i;
	for (i = 0; i < 15; i++) {
		p = [self randomPoint];
		[path lineToPoint:p];
	}
	[path closePath];
	return self;
}

- (void)dealloc {
	[path release];
	[super dealloc];
}

- (void)drawRect:(NSRect)dirtyRect {
	NSRect bounds = [self bounds];
	[[NSColor greenColor] set];
	[NSBezierPath fillRect:bounds];
	
	[[NSColor whiteColor] set];
	[path fill];
}

- (NSPoint)randomPoint {
	NSPoint result;
	NSRect r = [self bounds];
	result.x = r.origin.x + random() % (int)r.size.width;
	result.y = r.origin.y + random() % (int)r.size.height;
	return result;
}

-(void)mouseDown:(NSEvent*)event {
	NSLog(@"mouseDown: %d", [event clickCount]);
}

-(void)mouseDragged:(NSEvent *)event {
	NSPoint p = [event locationInWindow];
	NSLog(@"mouseDragged: %@", NSStringFromPoint(p));
}

-(void)mouseUp:(NSEvent *)event {
	NSLog(@"mouseUp:");
}

@end
