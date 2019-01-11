#import "PBWIZasobyWydzialu.h"
#import "PBWIPokoj.h"
#import "PBWIZasob.h"
#import "PBWIBiurko.h"
#import "PBWIKrzeslo.h"
#import "PBWIDrukarka.h"

@implementation PBWIZasobyWydzialu

-(id)init
{
    self = [super init];
    if (self) {
        _DicPokojeWydzialu = [[NSMutableDictionary alloc] init];
        _ArrZasobyWydzialu = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) dodajPokojNr:(NSString *)nr iPokoj:(PBWIPokoj *)pokoj
{
    [_DicPokojeWydzialu setObject:pokoj forKey:nr];
}

-(void) dodajPokojNr:(NSString *)nr iZasob:(PBWIZasob *)zasob
{
    PBWIPokoj * p = [_DicPokojeWydzialu objectForKey:nr];
    zasob.pokoj = p;
    [p dodajZasob:zasob];
    [_ArrZasobyWydzialu addObject:zasob];
}

-(void) przesunZasob:(PBWIZasob *)zasob zPokoju:(NSString *)nrZ doPokoju:(NSString *)nrD
{
    PBWIZasob * z = zasob;
    PBWIPokoj * p = [_DicPokojeWydzialu objectForKey:nrD];
    zasob.pokoj = p;
    [self usunZasob:zasob zPokoju:nrZ];
    [self dodajPokojNr:nrD iZasob:z];
}

-(void) usunZasob:(PBWIZasob *)zasob zPokoju:(NSString *)nr
{
    PBWIPokoj * p = [_DicPokojeWydzialu objectForKey:nr];
    zasob.pokoj = p;
    [p usunZasob:zasob];
    [_ArrZasobyWydzialu removeObject:zasob];
}

-(void) wyswietlWszystkiePokoje
{
    for(NSString * key in _DicPokojeWydzialu)
    {
        id value = _DicPokojeWydzialu[key];
        NSLog(@"Klucz %@ - %@", key, value);
    }
}

-(NSMutableArray*) wyswietlWszystkieBiurka
{
    NSMutableArray * biurka = [[NSMutableArray alloc] init];
    PBWIZasob * z;
    for(int i=0; i<[_ArrZasobyWydzialu count]; i++)
    {
        z = _ArrZasobyWydzialu[i];
        if([z isMemberOfClass:[PBWIBiurko class]])
        {
            [biurka addObject:z];
        }
    }
    return biurka;
}

-(NSMutableArray*) wyswietlWszystkieKrzesla
{
    NSMutableArray * krzesla = [[NSMutableArray alloc] init];
    PBWIZasob * z;
    for(int i=0; i<[_ArrZasobyWydzialu count]; i++)
    {
        z = _ArrZasobyWydzialu[i];
        if([z isMemberOfClass:[PBWIKrzeslo class]])
        {
            [krzesla addObject:z];
        }
    }
    return krzesla;
}

-(NSMutableArray*) wyswietlWszystkieDrukarki
{
    NSMutableArray * drukarki = [[NSMutableArray alloc] init];
    PBWIZasob * z;
    for(int i=0; i<[_ArrZasobyWydzialu count]; i++)
    {
        z = _ArrZasobyWydzialu[i];
        if([z isMemberOfClass:[PBWIDrukarka class]])
        {
            [drukarki addObject:z];
        }
    }
    return drukarki;
}

-(void) sprawdzZasobyWPokoju:(PBWIPokoj *)pokoj
{
    PBWIZasob * z;
    for(z in _ArrZasobyWydzialu)
    {
        if(z.pokoj == pokoj)
        {
            NSLog(@"%@", [z description]);
        }
    }
}

@end
