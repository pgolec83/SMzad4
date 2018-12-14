#import "PBWIZasob.h"

@interface PBWIDrukara : PBWIZasob{
@private NSString * _nazwa;
@private NSString * _model;
@private bool _czyKolorowa;
}

@property(readonly) NSString * nazwa;
@property(readonly) NSString * model;
@property(readonly) bool czyKolorowa;

-(id) initWithParams: (NSString *)nazwa :(NSString *)model :(bool)kolorowa;
-(NSString *) opisZasobu;

@end
