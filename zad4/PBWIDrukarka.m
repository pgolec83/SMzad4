#import "PBWIDrukarka.h"
#import "PBWIZasob.h"

@implementation PBWIDrukarka

@synthesize rodzaj = _rodzaj;

-(NSString *) opisZasobu {
    return [NSString stringWithFormat:@"Drukarka: %@ o kolorze: %@", _rodzaj, self.kolor];
}

@end
