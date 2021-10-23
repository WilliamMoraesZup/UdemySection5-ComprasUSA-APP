//
//  TaxesCalculator.swift
//  UdemySection6-ComprasUSA-APP
//
//  Created by William Moraes da Silva on 23/10/21.
//

import Foundation


class TaxesCalculator {
    
    var dolar : Double = 3.40
    var iof : Double = 6.38
    var stateTax : Double = 7.0
    var shoppingValue : Double = 0
    var formatter = NumberFormatter()
    
    static var shared = TaxesCalculator()
    
    private init() {
        formatter.usesGroupingSeparator =  true
        
    }
    
    func convertToDouble(_ string : String) -> Double{
        formatter.numberStyle = .none
        return formatter.number(from: string)!.doubleValue
        
        
    }
    
    func getFormattedValue(of value: Double, withCurrency currency : String) -> String {
        formatter.numberStyle = .currency
        formatter.currencySymbol = currency
        formatter.alwaysShowsDecimalSeparator = true
        
        return formatter.string(for: value)!
        
    }
    
    var shoppingValueInReal : Double {
        return shoppingValue * dolar
    }
    
    var stateTaxValue : Double {
        return stateTax * shoppingValue / 100
        
    }
    
    var iofValue : Double {
        return (shoppingValue + stateTax) * iof / 100
    }
    
    func calculate (usingCreditCard : Bool) -> Double{
        var finalValue = shoppingValue + stateTaxValue
        
        if usingCreditCard {
            finalValue += iofValue
        }
        return finalValue
        
    }
    
    
}
