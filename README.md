ETActivityIndicatorView
=======================

WindowsPhone like activity indicator for ios

![example](https://lh5.googleusercontent.com/-WZDKi17rN9A/UZ9cpsbPHEI/AAAAAAAAAIE/2QS3xX2KHqA/s480/iOS%2520Simulator%2520Screen%2520shot%2520May%252024%252C%25202013%25205.58.52%2520PM.png)

Requirements
------------

- Xcode 4.2 or later.
- iOS 5 or later.
- ARC.

How to use
=======================

Include the `ETActivityIndicatorView.h` and `ETActivityIndicatorView.m` files and image `circle.png` in your project.

To display  `ETActivityIndicatorView`, simply do it like basic `UIActivityIndicatorView`:

  ETActivityIndicatorView *etActivity = [[ETActivityIndicatorView alloc] initWithFrame:CGRectMake((10, 10, 60, 60)];
  [etActivity startAnimating];
  [self.view addSubview:etActivity];

Example project included.

Support / Contact / Bugs / Features
-----------------------------------

I can't promise to answer questions about how to use the code.

If you want to submit a feature request or bug report, please use [GitHub's issue tracker for this project](https://github.com/EugeneTrapeznikov/ETActivityIndicatorView/issues).  Or preferably fork the code and implement the feature/fix yourself, then submit a pull request.

Enjoy!

Eugene Trapeznikov
