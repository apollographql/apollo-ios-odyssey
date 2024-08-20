import SwiftUI

struct LaunchListView: View {
    
    @StateObject private var viewModel = LaunchListViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<10) { index in
                    LaunchRow()
                }
            }
            .task {
                // TODO (Part I - Connect your queries to your UI)
            }
            .navigationTitle("Rocket Launches")
            .appAlert($viewModel.appAlert)
        }
        .notificationView(message: $viewModel.notificationMessage)
    }
    
}

struct LaunchListView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchListView()
    }
}
