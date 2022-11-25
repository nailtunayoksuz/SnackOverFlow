//
//  OnBoardViewModel.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 25.11.2022.
//

import Foundation

final class OnBoardViewModel: ObservableObject {
    @Published var currentIndex : Int = 0
    
    @Published var isHomeRedirect : Bool = false
    private let cache = UserDefaultCache()
    
    private func isUserFirstLogin() -> Bool {
        return cache.read(key: .onBoard).isEmpty
    }
    func checkUserFirstTime() {
        guard  !isUserFirstLogin() else {
           redirectTohome()
            return
        }
        saveUserLoginAndRedirect()
        
    }
    func saveUserLoginAndRedirect(){
        updateUserFirstLogin()
        redirectTohome()
    }
   private func redirectTohome()  {
        isHomeRedirect = true
    }
    
    private func updateUserFirstLogin() {
         cache.save(key: .onBoard, value: "okay")
    }
}
