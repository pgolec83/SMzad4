#import "PBWIZasob.h"
#import <Foundation/Foundation.h>

@interface PBWIDrukarka : PBWIZasob
{
@private NSString * _rodzaj;
}

@property(strong) NSString * rodzaj;

-(NSString *) opisZasobu;

@end
