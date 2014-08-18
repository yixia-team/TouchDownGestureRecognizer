#import "TouchDownGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

@implementation TouchDownGestureRecognizer

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if(self.state == UIGestureRecognizerStatePossible) {
        self.state = UIGestureRecognizerStateRecognized;
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    self.state = UIGestureRecognizerStateFailed;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    self.state = UIGestureRecognizerStateFailed;
}

@end