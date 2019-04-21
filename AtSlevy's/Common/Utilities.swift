//
//  Utilities.swift
//  AtSlevy's
//
//  Created by Stefan Slevoaca on 4/20/19.
//  Copyright © 2019 Stefan Slevoaca. All rights reserved.
//

import UIKit

class Utilities {
    
    static func buildErrorUIAlertController(errorMessage: String) -> UIAlertController {
        
        let errorAlertController = UIAlertController(title: "Error", message: errorMessage, preferredStyle: .alert)
        
        let closeAction = UIAlertAction(title: "Close", style: .cancel, handler: nil)
        
        errorAlertController.addAction(closeAction)
        return errorAlertController
    }
}
