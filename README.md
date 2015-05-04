# UIViewAdditions
Nice Additions for UIView

##View frame methods
- (void)setSize:(CGSize)size;
- (void)setPosition:(CGPoint)position;

## Rounded corners for the view
- (void)roundCorners:(CGFloat)radius;
- (void)roundCornersWithBorder:(CGFloat)radius borderSize:(CGFloat)borderSize borderColor:(UIColor *)color;

## Round view
- (void)rounded;
- (void)roundedWithBorder:(CGFloat)borderSize borderColor:(UIColor *)color;

## Quickly remove all chil views
- (void)removeChildren;

## Initiliaze with the parent to save on code
- (instancetype)initWithParent:(UIView *)parent;
+ (instancetype)viewWithParent:(UIView *)parent;
