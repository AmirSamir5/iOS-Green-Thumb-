//
//  ClientAnalytics.swift
//  Green Thumb
//
//  Created by Mac on 4/22/18.
//  Copyright © 2018 Jennifer Person. All rights reserved.
//

import Foundation
import Firebase

class ClientAnalytics{
    
    static func addToCartEvent(itemAdded: String){
        Analytics.logEvent(AnalyticsEventAddToCart, parameters: [AnalyticsParameterItemID : itemAdded as NSObject])
    }
    
    static let removedFromCart = "remove_From_Cart"
    
    static func removeFromCartEvent(itemRemoved: String){
        Analytics.logEvent(removedFromCart, parameters: [AnalyticsParameterItemID: itemRemoved as NSObject])
    }
    
    static let gardeingExp = "garding_Experience"
    
    static func setUserPropertyGardeingAbility(gardiengExperience: String){
        Analytics.setUserProperty(gardiengExperience.description, forName: self.gardeingExp)
    }
    static func loginEvent(patientName: String){
        Analytics.logEvent(AnalyticsEventLogin, parameters: [AnalyticsParameterSignUpMethod: "\(patientName)"])
    }
}
