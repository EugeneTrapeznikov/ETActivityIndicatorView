ETActivityIndicatorView
=======================

Windows Phone like activity indicator for ios

Requirements
------------

- Xcode 4.2 or later.
- iOS 5 or later.
- ARC.

How to use
=======================

Include the `ETActivityIndicatorView.h` and `ETActivityIndicatorView.m` files and image `circle.png` in your project.

To display the basic `ETActivityIndicatorView`, simply do it like basic `UIActivityIndicatorView`:

  ETActivityIndicatorView *etActivity = [[ETActivityIndicatorView alloc] initWithFrame:CGRectMake((10, 10, 60, 60)];
  [etActivity startAnimating];
  [self.view addSubview:etActivity];


License
=======================
