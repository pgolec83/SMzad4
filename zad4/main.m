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
        NSLog(@"Przykladowy zasob: %@", [zasob opisZasobu]);
        PBWIBiurko * biurko = [[PBWIBiurko alloc] initWithParams:100 :80 :140];
        [biurko setKolor: @"brazowy"];
        NSLog(@"Przykladowe biurko: %@", [biurko opisZasobu]);
        PBWIKrzeslo * krzeslo = [[PBWIKrzeslo alloc] init];
        [krzeslo setObicie: @"skora"];
        [krzeslo setKolor: @"czarny"];
        NSLog(@"Przykladowe krzeslo: %@", [krzeslo opisZasobu]);
        PBWIDrukara * drukarka = [[PBWIDrukara alloc] initWithParams:@"Finanse01" :@"HPDeskJet" :true];
        [drukarka setKolor:@"szary"];
        NSLog(@"Przykladowa drukarka: %@", [drukarka opisZasobu]);
        
        PBWIPokoj *pokoj= [[PBWIPokoj alloc] init];
        [pokoj dodajZasob: biurko];
        [pokoj dodajZasob: krzeslo];
        [pokoj usunZasob: biurko];
        //NSLog(@"Wszystkie zasoby:");
        //NSLog(@"%@", [pokoj wszystkieZasoby]);
    }
    return 0;
}

