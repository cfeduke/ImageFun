//
//  AppController.h
//  ImageFun
//
//  Created by Charles Feduke on 2/21/11.
//  Copyright 2011 Mobile Posse. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class StretchView;

@interface AppController : NSObject {
	IBOutlet StretchView *stretchView;
}

-(IBAction)showOpenPanel:(id)sender;

@end
