#import <objc/objc.h>
#import <objc/Object.h>
#import <Foundation/Foundation.h>
#import "PBWIZasob.h"
#import "PBWIBiurko.h"
#import "PBWIKrzeslo.h"
#import "PBWIPokoj.h"
#import "PBWIDrukarka.h"


int main()
{
    @autoreleasepool {
        PBWIZasob * zasob = [[PBWIZasob alloc] init];
        [zasob setKolor: @"szary"];

        PBWIBiurko * biurko = [[PBWIBiurko alloc] initWithParams:100 :80 :140];
        [biurko setKolor: @"brazowy"];
        PBWIBiurko * biurkoPrezesa = [[PBWIBiurko alloc] initWithParams: 200 :120: 140];
        [biurkoPrezesa setKolor: @"czarny"];

        PBWIKrzeslo * krzeslo = [[PBWIKrzeslo alloc] init];
        [krzeslo setObicie: @"skora"];
        [krzeslo setKolor: @"czarny"];

        PBWIDrukara * drukarka = [[PBWIDrukara alloc] initWithParams:@"Finanse01" :@"HPDeskJet" :true];
        [drukarka setKolor:@"szary"];
        
        PBWIDrukara * drukarkaSekretarki = [[PBWIDrukara alloc] initWithParams:@"Sekretariat01" :@"HPLaserJet" :false];
        
        PBWIPokoj *pokoj= [[PBWIPokoj alloc] init];
        [pokoj dodajZasob: biurko];
        [pokoj dodajZasob: krzeslo];
        [pokoj dodajZasob: drukarka];
        [pokoj dodajZasob: biurkoPrezesa];
        [pokoj dodajZasob: drukarkaSekretarki];
        
        NSLog(@"Wszystkie zasoby:");
        for(int i=0;i<[[pokoj wszystkieZasoby] count]; i++) {
            NSLog(@"%@", [[[pokoj wszystkieZasoby] objectAtIndex: i] opisZasobu]);
        }
    }
    return 0;
}
//for (i = 0; i < count; i++)
//NSLog (@"Element %i = %@", i, [myColors objectAtIndex: i]);
