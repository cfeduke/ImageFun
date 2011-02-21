//
//  AppController.m
//  ImageFun
//
//  Created by Charles Feduke on 2/21/11.
//  Copyright 2011 Mobile Posse. All rights reserved.
//

#import "AppController.h"
#import "StretchView.h"


@implementation AppController

-(void)openPanelDidEnd:(NSOpenPanel*)openPanel
			returnCode:(int)returnCode
		   contextInfo:(void*)x 
{
	if (returnCode == NSOKButton) {
		NSString* path = [openPanel filename];
		NSImage* image = [[NSImage alloc] initWithContentsOfFile:path];
		[stretchView setImage:image];
		[image release];
	}
}

-(IBAction)showOpenPanel:(id)sender {
	NSOpenPanel* panel = [NSOpenPanel openPanel];
	[panel beginSheetForDirectory:nil
							 file:nil
							types:[NSImage imageFileTypes]
				   modalForWindow:[stretchView window] 
					modalDelegate:self
				   didEndSelector:@selector(openPanelDidEnd:returnCode:contextInfo:)
					  contextInfo:NULL];
}

@end
