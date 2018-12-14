#import "PBWIDrukarka.h"

@implementation PBWIDrukara
@synthesize nazwa = _nazwa;
@synthesize model = _model;
@synthesize czyKolorowa = _czyKolorowa;

-(id) initWithParams:(NSString *)paramN :(NSString *)paramM :(bool)paramK{
    self = [super init];
    if (self) {
        _nazwa = paramN;
        _model = paramM;
        _czyKolorowa = paramK;
    }
    return self;
}
-(NSString *) opisZasobu {
    return [NSString stringWithFormat:@"Drukara o nazwie: %@, model: %@, druk w kolorze: %@", self.nazwa, self.model, (self.czyKolorowa ? @"TAK" : @"NIE")];
}

@end
