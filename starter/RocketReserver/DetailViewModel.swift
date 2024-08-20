import SwiftUI

class DetailViewModel: ObservableObject {
    
    @Published var isShowingLogin = false
    @Published var appAlert: AppAlert?
    
    init() {
        // TODO (Part II - Complete the details view)
    }
    
    func loadLaunchDetails() {
        // TODO (Part II - Complete the details view)
    }
    
    func bookOrCancel() {
        guard self.isLoggedIn() else {
            isShowingLogin = true
            return
        }
        
        // TODO (Part II - Define additional mutations)
    }
    
    private func bookTrip() {
        print("Book Trip!")
        // TODO (Part II - Define additional mutations)
    }
    
    private func cancelTrip() {
        print("Cancel Trip!")
        // TODO (Part II - Define additional mutations)
    }
    
    private func isLoggedIn() -> Bool {
        // TODO (Part II - Write your first mutation)
        return false
    }
    
}
