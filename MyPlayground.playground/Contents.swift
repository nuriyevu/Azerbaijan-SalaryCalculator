//: Playground - noun: a place where people can play

import UIKit

import Foundation

func NetSalaryCalc (GrossSalary : Double, CalYear : Int = 2018) -> Double {
    let LifeMin_2017 : Double = 155
    let LifeMin_2018 : Double = 173
    var IncomeTax : Double = 0.0
    var SocialTax : Double = 0.0
    var InsuranceTax : Double = 0.0
    var NetSalary : Double = 0.0
    
    SocialTax = GrossSalary * 0.03;
    
    switch CalYear {
    case 2017:
        if GrossSalary >= 2500.00 {
            IncomeTax =  ( (GrossSalary) - 2500 ) * 0.25 + 350
        } else {
            IncomeTax = (GrossSalary - LifeMin_2017) * 0.14
        }
    case 2018:
        if GrossSalary >= 2500.00 {
            InsuranceTax = GrossSalary * 0.005
            IncomeTax =  ( (GrossSalary) - 2500 ) * 0.25 + 350
        } else {
            InsuranceTax = GrossSalary * 0.005
            IncomeTax = (GrossSalary - LifeMin_2018) * 0.14
        }
    default:
        break
    }
    NetSalary = Double ( round ( 100 * ( GrossSalary - SocialTax - InsuranceTax - IncomeTax ) ) / 100 )
    return NetSalary
}

// Sample if Gross Salary is 3500 then for 2018 Net Salary is 2777.50

NetSalaryCalc(GrossSalary: 3500)
