//
//  arcsecond.swift
//  arcsecond
//
//  Created by Cédric Foellmi on 15/08/15.
//  Copyright (c) 2015 onekiloparsec. All rights reserved.
//

import Foundation
import PromiseKit
import RealmSwift

public func object(_ name: String) -> Promise<AstronomicalObject> {
    return ArcsecondService.sharedDefault.object(name)
}

public func objects() -> Results<AstronomicalObject> {
    return ArcsecondService.sharedDefault.objects()
}

public func exoplanet(_ name: String) -> Promise<Exoplanet> {
    return ArcsecondService.sharedDefault.exoplanet(name)
}

public func save(_ obj: Object) throws {
    try ArcsecondService.sharedDefault.save(obj)
}
