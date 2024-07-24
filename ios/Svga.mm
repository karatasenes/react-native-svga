#import <React/RCTViewManager.h>
#import "YourProjectName-Swift.h" // Burada YourProjectName'i gerçek proje adınızla değiştirin

@interface RCT_EXTERN_MODULE(SVGAViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(source, NSString)
@end
