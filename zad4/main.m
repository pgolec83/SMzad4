#import <objc/objc.h>
#import <objc/Object.h>
#import <Foundation/Foundation.h>
#import "PBWIZasob.h"
#import "PBWIBiurko.h"
#import "PBWIKrzeslo.h"
#import "PBWIPokoj.h"
#import "PBWIDrukarka.h"
#import "PBWIZasobyWydzialu.h"

int main()
{
    @autoreleasepool {
        PBWIZasob * zasob1 = [[PBWIZasob alloc] init];
        [zasob1 setKolor:@"czarny"];
        PBWIBiurko * biurko1 = [[PBWIBiurko alloc] initWithParams:133 :7 :250];
        [biurko1 setKolor:@"szary"];
        PBWIBiurko * biurko2 = [[PBWIBiurko alloc] initWithParams:14 :88 :40];
        [biurko2 setKolor:@"zolty"];
        PBWIBiurko * biurko3 = [[PBWIBiurko alloc] initWithParams:100 :80 :140];
        [biurko3 setKolor:@"czerwony"];
        PBWIBiurko * biurko4 = [[PBWIBiurko alloc] initWithParams:90 :70 :150];
        [biurko4 setKolor:@"zielony"];
        PBWIBiurko * biurko5 = [[PBWIBiurko alloc] initWithParams:50 :110 :80];
        [biurko5 setKolor:@"niebieski"];
        PBWIKrzeslo * krzeslo1 = [[PBWIKrzeslo alloc] init];
        [krzeslo1 setKolor:@"brazowy"];
        [krzeslo1 setObicie:@"skora"];
        PBWIKrzeslo * krzeslo2 = [[PBWIKrzeslo alloc] init];
        [krzeslo2 setKolor:@"niebieski"];
        [krzeslo2 setObicie:@"material"];
        PBWIKrzeslo * krzeslo3 = [[PBWIKrzeslo alloc] init];
        [krzeslo3 setKolor:@"zielony"];
        [krzeslo3 setObicie:@"zamsz"];
        PBWIKrzeslo * krzeslo4 = [[PBWIKrzeslo alloc] init];
        [krzeslo4 setKolor:@"brazowy"];
        [krzeslo4 setObicie:@"czarny"];
        PBWIKrzeslo * krzeslo5 = [[PBWIKrzeslo alloc] init];
        [krzeslo5 setKolor:@"zolty"];
        [krzeslo5 setObicie:@"material"];
        PBWIDrukarka * drukarka1 = [[PBWIDrukarka alloc] init];
        [drukarka1 setKolor:@"bialy"];
        [drukarka1 setRodzaj:@"laserowa"];
        PBWIDrukarka * drukarka2 = [[PBWIDrukarka alloc] init];
        [drukarka2 setKolor:@"szary"];
        [drukarka2 setRodzaj:@"atramentowa"];
        PBWIPokoj * pokoj1 = [[PBWIPokoj alloc] init];
        PBWIPokoj * pokoj2 = [[PBWIPokoj alloc] init];
        PBWIPokoj * pokoj3 = [[PBWIPokoj alloc] init];
        PBWIZasobyWydzialu * wydzial = [[PBWIZasobyWydzialu alloc] init];
        [wydzial dodajPokojNr:@"101" iPokoj:pokoj1];
        [wydzial dodajPokojNr:@"102" iPokoj:pokoj2];
        [wydzial dodajPokojNr:@"103" iPokoj:pokoj3];
        [wydzial wyswietlWszystkiePokoje];
        [wydzial dodajPokojNr:@"101" iZasob:krzeslo1];
        [wydzial dodajPokojNr:@"101" iZasob:biurko2];
        [wydzial dodajPokojNr:@"101" iZasob:drukarka1];
        [wydzial dodajPokojNr:@"102" iZasob:krzeslo2];
        [wydzial dodajPokojNr:@"102" iZasob:biurko3];
        [wydzial dodajPokojNr:@"103" iZasob:krzeslo3];
        [wydzial dodajPokojNr:@"103" iZasob:biurko4];
        [wydzial dodajPokojNr:@"103" iZasob:drukarka2];
        NSMutableArray * wszystkieBiurka = [wydzial wyswietlWszystkieBiurka];
        NSLog(@"%@", wszystkieBiurka);
        NSMutableArray * wszystkieKrzesla = [wydzial wyswietlWszystkieKrzesla];
        NSLog(@"%@", wszystkieKrzesla);
        NSMutableArray * wszystkieDrukari = [wydzial wyswietlWszystkieDrukarki];
        NSLog(@"%@", wszystkieDrukari);
        
        
        
        
    }
    return 0;
}
