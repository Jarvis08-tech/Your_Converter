//
//  FactorsUnitType.swift
//  X.000.000.002
//
//  Created by Develop on 21.03.22.
//

import Foundation

struct FactorsUnitType {
    let list: [UnitType]
    
    
    init() {
        var list: [UnitType] = []
        
        list.append(UnitType(name: "metre", unit: "m", factor: 1.0, category: .length))
        list.append(UnitType(name: "kilometre", unit: "km", factor: 1000.0, category: .length))
        list.append(UnitType(name: "centimetre", unit: "cm", factor: 0.01, category: .length))
        list.append(UnitType(name: "millimetre", unit: "mm", factor: 0.001, category: .length))
        list.append(UnitType(name: "micrometre", unit: "μm", factor: 0.000001, category: .length))
        list.append(UnitType(name: "nanometre", unit: "nm", factor: 0.000000001, category: .length))
        list.append(UnitType(name: "mile", unit: "mi", factor: 1609.344, category: .length))
        list.append(UnitType(name: "yard", unit: "yd", factor: 0.9144, category: .length))
        list.append(UnitType(name: "foot", unit: "ft", factor: 0.3048, category: .length))
        list.append(UnitType(name: "inch", unit: "in", factor: 0.0254, category: .length))
        list.append(UnitType(name: "nautical mile", unit: "nmi", factor: 1852.0, category: .length))
        
        list.append(UnitType(name: "square metre" , unit: "m2", factor: 1.0, category: .area))
        list.append(UnitType(name: "square kilometre", unit: "km2", factor: 1000000.0, category: .area))
        list.append(UnitType(name: "square centimetre", unit: "cm2", factor: 0.0001, category: .area))
        list.append(UnitType(name: "square millimetre", unit: "mm2", factor: 0.000001, category: .area))
        list.append(UnitType(name: "square mile", unit: "mi2", factor: 2.589988110336 * pow(10, 6), category: .area))
        list.append(UnitType(name: "square yard", unit: "yd2", factor: 0.83612736, category: .area))
        list.append(UnitType(name: "square foot", unit: "ft2", factor: 9.290304 * pow(10, -2), category: .area))
        list.append(UnitType(name: "square inch", unit: "in2", factor: 6.4516 * pow(10, -4), category: .area))
        list.append(UnitType(name: "hectare", unit: "ha", factor: 10000.0, category: .area))
        list.append(UnitType(name: "acre", unit: "ac", factor: 4046.8564224, category: .area))
        list.append(UnitType(name: "are", unit: "a", factor: 100.0, category: .area))
        
        list.append(UnitType(name: "cubic metre", unit: "m3", factor: 1.0, category: .volume))
        list.append(UnitType(name: "litre", unit: "l", factor: 0.001, category: .volume))
        list.append(UnitType(name: "decilitre", unit: "dl", factor: 0.0001, category: .volume))
        list.append(UnitType(name: "centilitre", unit: "cl", factor: 0.00001, category: .volume))
        list.append(UnitType(name: "millilitre", unit: "ml", factor: 0.000001, category: .volume))
        list.append(UnitType(name: "cubic millimetre", unit: "mm3", factor: 0.000000001, category: .volume))
        list.append(UnitType(name: "cubic inch", unit: "in3", factor: 16.387064 * pow(10, -6), category: .volume))
        list.append(UnitType(name: "cubic foot", unit: "ft3", factor: 0.028316846592, category: .volume))
        list.append(UnitType(name: "teaspoon (imperial)", unit: "imp tsp", factor: 5.91938802083 * pow(10, -6.0), category: .volume))
        list.append(UnitType(name: "tablespoon (imperial)", unit: "imp tbsp", factor: 17.7581640625 * pow(10, -6.0), category: .volume))
        list.append(UnitType(name: "ounce (fluid imperial)", unit: "fl oz", factor: 28.4130625 * pow(10, -6.0), category: .volume))
        list.append(UnitType(name: "ounce (fluid US customary)", unit: "us fl oz", factor: 29.5735295625 * pow(10, -6.0), category: .volume))
        list.append(UnitType(name: "cup (breakfast)", unit: "imp c", factor: 284.130625 * pow(10, -6.0), category: .volume))
        list.append(UnitType(name: "pint (imperial)", unit: "imp pt", factor: 568.26125 * pow(10, -6.0), category: .volume))
        list.append(UnitType(name: "gallon (imperial)", unit: "imp gal", factor: 4.54609 * pow(10, -3.0), category: .volume))
        list.append(UnitType(name: "quart (imperial)", unit: "imp qt", factor: 1.1365225 * pow(10, -3.0), category: .volume))
        list.append(UnitType(name: "teaspoon (US customary)", unit: "us tsp", factor: 4.92892159375 * pow(10, -6.0), category: .volume))
        list.append(UnitType(name: "tablespoon (US customary)", unit: "us tbsp", factor: 14.78676478125 * pow(10, -6.0), category: .volume))
        list.append(UnitType(name: "cup (US food nutrition labeling)", unit: "us c", factor: 2.4 * pow(10, -4.0), category: .volume))
        list.append(UnitType(name: "pint (US fluid)", unit: "us pt", factor: 473.176473 * pow(10, -6.0), category: .volume))
        list.append(UnitType(name: "gallon (US fluid; Wine)", unit: "us gal", factor: 3.785411784 * pow(10, -3.0), category: .volume))
        list.append(UnitType(name: "quart (US fluid)", unit: "us qt", factor: 946.352946 * pow(10, -6.0), category: .volume))
        
        list.append(UnitType(name: "metre per second", unit: "m/s", factor: 1.0, category: .speed))
        list.append(UnitType(name: "kilometre per hour", unit: "km/h", factor: 1/3.6, category: .speed))
        list.append(UnitType(name: "knot", unit: "kn", factor: 0.514444444444, category: .speed))
        list.append(UnitType(name: "foot per second", unit: "ft/s", factor: 0.3048, category: .speed))
        list.append(UnitType(name: "mile per hour", unit: "mph", factor: 0.44704, category: .speed))
        
        list.append(UnitType(name: "second", unit: "s", factor: 1.0, category: .time))
        list.append(UnitType(name: "nano second", unit: "ns", factor: 1.0 * pow(10, -9), category: .time))
        list.append(UnitType(name: "micro second", unit: "µs", factor: 1.0 * pow(10, -6), category: .time))
        list.append(UnitType(name: "milli second", unit: "ms", factor: 0.001, category: .time))
        list.append(UnitType(name: "minute", unit: "min", factor: 60.0, category: .time))
        list.append(UnitType(name: "hour", unit: "h", factor: 3600.0, category: .time))
        list.append(UnitType(name: "day", unit: "D", factor: 86400.0, category: .time))
        list.append(UnitType(name: "week", unit: "W", factor: 604800.0, category: .time))
        list.append(UnitType(name: "month", unit: "M", factor: 2.592 * pow(10, 6), category: .time))
        list.append(UnitType(name: "year", unit: "Y", factor: 31.536 * pow(10, 6), category: .time))
        list.append(UnitType(name: "decade", unit: "De", factor: 315.569520 * pow(10, 6), category: .time))
        list.append(UnitType(name: "century", unit: "Ce", factor: 3.1556952 * pow(10, 9), category: .time))
        
        list.append(UnitType(name: "kilogram", unit: "kg", factor: 1.0, category: .mass))
        list.append(UnitType(name: "gram", unit: "g", factor: 0.001, category: .mass))
        list.append(UnitType(name: "tonne", unit: "t", factor: 1000.0, category: .mass))
        list.append(UnitType(name: "milligram", unit: "mg", factor: 0.000001, category: .mass))
        list.append(UnitType(name: "microgram", unit: "µg", factor: 0.000000001, category: .mass))
        list.append(UnitType(name: "pound", unit: "lb", factor: 0.45359237, category: .mass))
        list.append(UnitType(name: "ton, long", unit: "ton", factor: 1016.0469088, category: .mass))
        list.append(UnitType(name: "ton, short", unit: "sh tn", factor: 907.18474, category: .mass))
        list.append(UnitType(name: "stone", unit: "st", factor: 6.35029318, category: .mass))
        list.append(UnitType(name: "ounce", unit: "oz av", factor: 0.028349523125, category: .mass))
        
        list.append(UnitType(name: "Joule", unit: "J", factor: 1.0, category: .energy))
        list.append(UnitType(name: "kilojoule", unit: "kJ", factor: 1000, category: .energy))
        list.append(UnitType(name: "calorie", unit: "cal", factor: 4.1868, category: .energy))
        list.append(UnitType(name: "kilocalorie", unit: "kcal", factor: 4186.8, category: .energy))
        list.append(UnitType(name: "watt hour", unit: "Wh", factor: 3600.0, category: .energy))
        list.append(UnitType(name: "kilowatt hour", unit: "kWh", factor: 3.6 * pow(10, 6), category: .energy))
        list.append(UnitType(name: "electronvolt", unit: "eV", factor: 1.602176634 * pow(10, -19), category: .energy))
        list.append(UnitType(name: "therm (US)", unit: "thm", factor: 105.4804 * pow(10, 6), category: .energy))
        list.append(UnitType(name: "foot pound force", unit: "ft lbf", factor: 1.3558179483314004, category: .energy))
                
        list.append(UnitType(name: "pascal", unit: "Pa", factor: 1.0, category: .pressure))
        list.append(UnitType(name: "kilopascal", unit: "kPa", factor: 1000.0, category: .pressure))
        list.append(UnitType(name: "megapascal", unit: "MPa", factor: 1000000.0, category: .pressure))
        list.append(UnitType(name: "millipascal", unit: "mPa", factor: 0.001, category: .pressure))
        list.append(UnitType(name: "bar", unit: "bar", factor: 100000.0, category: .pressure))
        list.append(UnitType(name: "pound per square inch", unit: "psi", factor: 6894.757, category: .pressure))
        list.append(UnitType(name: "torr", unit: "torr", factor: 133.3224, category: .pressure))
        
        
        self.list = list
    }
}
