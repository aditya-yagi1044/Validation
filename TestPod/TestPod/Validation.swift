//
//  Validation.swift
//  TestPod
//
//  Created by Aditya Tyagi on 08/04/24.
//

import Foundation

struct Validation {
    
    var mobileNumber: String?
    var emailId: String?
    
    init(mobileNumber: String? = nil, emailId: String? = nil) {
        self.mobileNumber = mobileNumber
        self.emailId = emailId
    }
    
    func validation(completion: (Bool?, String?) -> Void) {
        if (self.mobileNumber?.isEmpty ?? false) || (self.mobileNumber?.count ?? 0) < 10 {
            completion(false, "Mobile number is not correct")
        } else if !self.isValidEmail(email: emailId) {
            completion(false, "Email ID is not correct")
        } else {
            completion(true, nil)
        }
    }
    
    private func isValidEmail(email: String?) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}
