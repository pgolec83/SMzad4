#import <Foundation/Foundation.h>
#import "PBWIPokoj.h"
#import "PBWIZasob.h"

@interface PBWIZasobyWydzialu : NSObject
{
@private NSMutableDictionary * _DicPokojeWydzialu;
@private NSMutableArray * _ArrZasobyWydzialu;
}

-(void) dodajPokojNr:(NSString*)nr iPokoj:(PBWIPokoj*) pokoj;
-(void) dodajPokojNr:(NSString*)nr iZasob:(PBWIZasob*) zasob;
-(void) przesunZasob:(PBWIZasob*)zasob zPokoju:(NSString*)nrZ doPokoju:(NSString*)nrD;
-(void) usunZasob:(PBWIZasob*)zasob zPokoju:(NSString*)nr;
-(void) wyswietlWszystkiePokoje;
-(NSMutableArray*) wyswietlWszystkieBiurka;
-(NSMutableArray*) wyswietlWszystkieKrzesla;
-(NSMutableArray*) wyswietlWszystkieDrukarki;
-(void) sprawdzZasobyWPokoju:(PBWIPokoj*)pokoj;


@end

