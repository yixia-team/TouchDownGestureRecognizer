TouchDownGestureRecognizer
==========================

TouchDownGestureRecognizer simple implementation


Usage
---------------

1. Import `TouchDownGestureRecognizer.h` into your ViewController `.m`file
2. Get instance through `[[TouchDownGestureRecognizer alloc] initWithTarget: action:]`method
3. Add instance gesture recognizer to your view

Example
---------------

    - (void)viewDidLoad {
      [super viewDidLoad];
      TouchDownGestureRecognizer *touchDown = [[TouchDownGestureRecognizer alloc] initWithTarget:self action:@selector(handleTouchDown:)];
      [self.view addGestureRecognizer:touchDown];
    }
    -(void)handleTouchDown:(UIGestureRecognizer *)gesture {
      NSLog(@"Down");
    }
