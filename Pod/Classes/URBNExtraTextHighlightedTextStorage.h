//
//  URBNExtraTextHighlightedTextStorage.h
//  Pods
//
//  Created by Nick DiStefano on 6/19/15.
//
//

#import <UIKit/UIKit.h>

@interface URBNExtraTextHighlightedTextStorage : NSTextStorage

- (instancetype)initWithErrorTextColor:(UIColor *)errorTextColor maxLength:(NSInteger)maxLength;

@end
