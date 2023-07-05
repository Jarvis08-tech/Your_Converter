//
//  GeneralFunctions.swift
//  X.000.000.002
//
//  Created by Develop on 09.04.21.
//

import Foundation

func unwrapString(_ value: String) -> Double {
    return Double(value) ?? 0.0
}

func stringIs0(_ value: String) -> Bool {
    if value == "0.0000" {
        return true
    }
    return false
}

func unwrapPositiveDouble(_ value: Double) -> String {
    if value == 0 {
        return String(format: "%.4f", value)
    } else if value >= 0.001 && value < 1000000 {
        return String(format: "%.4f", value)
    } else if value >= 1000000 {
        let stringOfValue = String(value)
        var eWasSpottet = false
        var afterE = ""
        for i in stringOfValue {
            if eWasSpottet {
                afterE += String(i)
            }
            if i == "e" {
                eWasSpottet = true
            }
        }
        if eWasSpottet {
            let a = Int(afterE) ?? 0
            afterE = String(a)
            var count = 0
            var firstLetter = ""
            for i in stringOfValue {
                if i == "e" {
                    let a = 6 - firstLetter.count
                    if a == 5 {
                        return firstLetter + ".0000e" + afterE
                    } else {
                        var b = ""
                        for _ in 0...(a-1) {
                            b += "0"
                        }
                        return firstLetter + b + "e" + afterE
                    }
                } else {
                    firstLetter += String(i)
                    count += 1
                }
                if count >= 6 {
                    break
                }
            }
            return firstLetter + "e" + afterE
        }
        var countBeforeComma = 0
        for i in stringOfValue {
            if i == "." {
                break
            } else {
                countBeforeComma += 1
            }
        }
        let valueNew = value/pow(10.0, Double(countBeforeComma - 1))
        return String(format: "%.4f", valueNew) + "e" + String(countBeforeComma - 1)
        
    } else {
        let stringOfValue = String(value)
        var eWasSpottet = false
        var afterE = ""
        for i in stringOfValue {
            if eWasSpottet {
                afterE += String(i)
            }
            if i == "e" {
                eWasSpottet = true
            }
        }
        if eWasSpottet {
            let a = Int(afterE) ?? 0
            afterE = String(a)
            var count = 0
            var firstLetter = ""
            for i in stringOfValue {
                if i == "e" {
                    let a = 6 - firstLetter.count
                    if a == 5 {
                        return firstLetter + ".0000e" + afterE
                    } else {
                        var b = ""
                        for _ in 0...(a-1) {
                            b += "0"
                        }
                        return firstLetter + b + "e" + afterE
                    }
                } else {
                    firstLetter += String(i)
                    count += 1
                }
                if count >= 6 {
                    break
                }
            }
            return firstLetter + "e" + afterE
        }
        var count0AfterComma = 0
        for i in stringOfValue {
            if i == "0" || i == "." {
                count0AfterComma += 1
            } else {
                break
            }
        }
        let valueNew = value * pow(10.0, Double(count0AfterComma - 1))
        return String(format: "%.4f", valueNew) + "e-" + String(count0AfterComma - 1)
    }
}

func unwrapDouble(_ value: Double) -> String {
    if value >= 0 {
        return unwrapPositiveDouble(value)
    } else {
        let a = value * -1.0
        return "-" + unwrapPositiveDouble(a)
    }
}
