//
//  UITextView+URBNHighlightExtra.m
//  Pods
//
//  Created by Nick DiStefano on 6/19/15.
//
//

#import "UITextView+URBNHighlightExtra.h"
#import "URBNExtraTextHighlightedTextStorage.h"

@implementation UITextView (URBNHighlightExtra)

+ (instancetype)urbn_UITextViewWithErrorColor:(UIColor *)errorColor maxLength:(NSInteger)maxLength {
    NSTextStorage *textStorage = [[URBNExtraTextHighlightedTextStorage alloc] initWithErrorTextColor:errorColor maxLength:maxLength];
    NSLayoutManager *textLayout = [NSLayoutManager new];
    [textStorage addLayoutManager:textLayout];
    NSTextContainer *textContainer = [NSTextContainer new];
    [textLayout addTextContainer:textContainer];
    UITextView *textEntryView = [[UITextView alloc] initWithFrame:CGRectZero textContainer:textContainer];
    
    return textEntryView;
}

@end
