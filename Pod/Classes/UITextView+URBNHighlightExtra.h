//
//  UITextView+URBNHighlightExtra.h
//  Pods
//
//  Created by Nick DiStefano on 6/19/15.
//
//

#import <UIKit/UIKit.h>

@interface UITextView (URBNHighlightExtra)

+ (instancetype)urbn_UITextViewWithErrorColor:(UIColor *)errorColor maxLength:(NSInteger)maxLength;

@end
