//
//  GetCurrencies.swift
//  X.000.000.002
//
//  Created by Develop on 09.04.21.
//

import Foundation

// Projekt ios-currency-calculator // Datei CurCalc .swift
class GetCurrencies {
    var lastupdate: Date = Date()
    var lastupdateString: String = ""
    var rates: [String: Double] = ["EUR": 1.0]
    let currencies = ["AUD", "BGN", "BRL", "CAD", "CHF", "CNY", "CZK", "DKK", "EUR", "GBP", "HKD", "HRK", "HUF", "IDR", "ILS", "INR", "ISK", "JPY", "KRW", "MXN", "MYR", "NOK", "NZD", "PHP", "PLN", "RON", "SEK", "SGD", "THB", "TRY", "USD", "ZAR"]
    /* When Russia isnt in war
    let currencies = ["AUD", "BGN", "BRL", "CAD", "CHF", "CNY", "CZK", "DKK", "EUR", "GBP", "HKD", "HRK", "HUF", "IDR", "ILS", "INR", "ISK", "JPY", "KRW", "MXN", "MYR", "NOK", "NZD", "PHP", "PLN", "RON", "RUB", "SEK", "SGD", "THB", "TRY", "USD", "ZAR"]
    */
    var list: [CurrencyType] = []
    
    init() {
        load()
    }
    
    func load() {
        // aktuelle Kurse von EZB laden
        if getEcbRates() { saveRates() }
        else { loadRates() }
        fillCurrenciesUnitType()
    }

    func getEcbRates() -> Bool {
        // Dictionary für Währungen, mit Defaulteintrag für Euro
        rates = ["EUR": 1.0]
        
        // Defaultdatum
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        formatter.timeZone = TimeZone(abbreviation: "CET")
        lastupdate = formatter.date(from: "1900-01-01 12:00")!
        
        // Kurse von EZB laden
        let ecburl = URL(string: "https://www.ecb.europa.eu/stats/eurofxref/eurofxref-daily.xml")!
        let content: String
        do { content = try String(contentsOf: ecburl) }
        catch {
            return false
            
        }
        
        // SWXMLHash -Objekt erzeugen
        let xml = SWXMLHash.parse(content)
        
        // Datum extrahieren
        let ecbtime = xml["gesmes:Envelope"]["Cube"]["Cube"].element?.attribute(by: "time")?.text ?? "1900-01-01"
        if ecbtime == "1900-01-01" {
            
        // Datum nicht gefunden --> fehlerhafte Daten
            return false
        }
        lastupdate = formatter.date(from: ecbtime + " 16:00")!
        
        // Schleife über alle Kurse
        for r in xml["gesmes:Envelope"]["Cube"]["Cube"]["Cube"].all {
            if let currency = r.element?.attribute(by: "currency")?.text,
               let ratestr = r.element?.attribute(by: "rate")?.text
            {
                let rate = NSString(string: ratestr).doubleValue
                if rate != 0.0 {
                    rates[currency] = rate // dem Dictionary hinzufügen
                }
            }
        }
        return true // alles bestens
    }
    
    //Ort ermitteln in der die Daten gespeichert werden können
    private func getRatesFilename() -> String? {
        let fm = FileManager.default
        let urls = fm.urls(for: .cachesDirectory, in: .userDomainMask)
        if let url = urls.first {
            return url.appendingPathComponent("rates.plist").path
        }
        return nil
    }
    
    //Daten speichern
    private func saveRates () {
        if testRates() == false {
            loadRates()
            return
        }
        
        if let ratespath = getRatesFilename() {
            let dict = NSMutableDictionary()
            dict.setObject(lastupdate, forKey: "lastupdate" as NSCopying)
            dict.setObject(rates, forKey: "rates" as NSCopying)
            _ = dict.write(toFile: ratespath, atomically: true)
        }
    }
    
    //Daten laden
    private func loadRates() {
        if let ratespath = getRatesFilename() {
            if let dict = NSMutableDictionary(contentsOfFile: ratespath) {
                if let lu = dict.object(forKey: "lastupdate") as? Date,
                   let rt = dict.object(forKey: "rates") as? [String:Double] {
                    lastupdate = lu
                    rates = rt
                    if testRates() == true {
                        return
                    }
                }
            }
        }
        
        rates = ["INR": 88.8145, "BGN": 1.9558, "ILS": 3.9093, "HRK": 7.5755, "IDR": 17354.52, "HKD": 9.247, "GBP": 0.86658, "ISK": 151.9, "CNY": 7.7934, "HUF": 357.97, "THB": 37.388, "RUB": 91.8152, "CHF": 1.101, "DKK": 7.4372, "KRW": 1331.28, "EUR": 1.0, "ZAR": 17.31, "NZD": 1.686, "MYR": 4.9157, "PHP": 57.764, "BRL": 6.6641, "AUD": 1.5579, "RON": 4.9198, "CAD": 1.495, "MXN": 23.9374, "SEK": 10.1725, "PLN": 4.5392, "JPY": 130.42, "CZK": 25.945, "SGD": 1.5941, "NOK": 10.113, "TRY": 9.6903, "USD": 1.1888]
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        //! machen wir nur weil wir wissen das es sicher richtig ist, aber es wird wider zu einem Optional, sobald es der variable zugewisen wird
        lastupdate = formatter.date(from: "2021-04-09 12:00")!
        
    }
    
    private func testRates() -> Bool {
        var count = 0
        
        for c in currencies {
            if rates[c] == nil {
                count += 1
            }
        }
        
        if count == 0 {
            return true
        } else {
            return false
        }
    }
    
    
    private func fillCurrenciesUnitType() {
        var array: [CurrencyType] = []
        for (key, value) in rates {
            array.append(CurrencyType(name: key, factor: value))
        }
        list = array.sorted(by:  { $0.name < $1.name })
        //Make date also string
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        lastupdateString = formatter.string(from: lastupdate)
    }

}
