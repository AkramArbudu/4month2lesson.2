//
//  AuthModel.swift
//  4month2lesson.2
//
//  Created by акрам on 22/12/22.
//

import Foundation

class AuthModel {
    var users: [User] = []
    
    func loadUsers() {
         users.append(User(username: "Akram", password: "123"))
        users.append(User(username: "Natan", password: "1234"))
        users.append(User(username: "Nurs", password: "12345"))
    }
    
    private weak var controller: AuthConroller!
    
    init(controller: AuthConroller!) {
        self.controller = controller
    }
    
    func checkUserInfo(username: String, password: String) -> Bool {
        
        loadUsers()
        
        var isFounded: Bool = false
        
        let currentUser = User(username: username, password: password)
        
        for user in users {
            if currentUser.username == user.username && currentUser.password == user.password{
                isFounded = true
                break
            }else{
                isFounded = false
            }
        }
        
        return isFounded
        
    }
    
}



    
    

