#import <objc/objc.h>
#import <objc/Object.h>
#import <Foundation/Foundation.h>

@class PBWIPokoj;

@interface PBWIZasob : NSObject {
	@private NSString * _kolor;
}
@property(weak) PBWIPokoj * pokoj;
@property(copy) NSString * kolor;
-(NSString *) opisZasobu;

@end

