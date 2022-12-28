//
//  AuthController.swift
//  4month2lesson.2
//
//  Created by акрам on 22/12/22.
//

import Foundation

class AuthConroller {
    
    private weak var view: ViewController!
    
    private var model: AuthModel?
    
    init(view: ViewController) {
        self.view = view
        self.model = AuthModel(controller: self)
    }
    func  getUserInfo(username: String, password: String) -> Bool {
        let resultFromModel = model!.checkUserInfo(username: username, password: password)
        
        return resultFromModel
    }
}
