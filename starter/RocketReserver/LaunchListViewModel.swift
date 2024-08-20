import SwiftUI

class LaunchListViewModel: ObservableObject {
    
    @Published var appAlert: AppAlert?
    @Published var notificationMessage: String?
    
    init() {
        // TODO (Part II - Write your first subscription)
    }
    
    // MARK: - Subscriptions
    
    func startSubscription() {
        // TODO (Part II - Write your first subscription)
    }
    
    private func handleTripsBooked(value: Int) {
        var message: String
        switch value {
        case 1:
            message = "A new trip was booked! 🚀"
        case -1:
            message = "A trip was cancelled! 😭"
        default:
            appAlert = .basic(title: "Unexpected Value",
                              message: "Subscription returned an unexpected value: \(value)")
            return
        }
        
        notificationMessage = message
    }
    
    // MARK: - Launch Loading
    
    func loadMoreLaunchesIfTheyExist() {
        // TODO (Part II - Paginate results)
    }
    
    func loadMoreLaunches() {
        // TODO (Part I - Connect your queries to your UI)
    }
    
}
