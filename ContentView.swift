import SwiftUI

// The main view that holds the TabView
struct ContentView: View {
    var body: some View {
        // TabView creates the tab bar interface
        TabView {
            // First Tab: Homepage
            HomePageView()
                .tabItem {
                    Image(systemName: "house.fill") // Icon for the tab
                    Text("Homepage")               // Label for the tab
                }

            // Second Tab: Videos
            VideosView()
                .tabItem {
                    Image(systemName: "video.fill") // Icon for the tab
                    Text("Videos")                  // Label for the tab
                }

            // Third Tab: Account
            AccountView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill") // Icon for the tab
                    Text("Account")                               // Label for the tab
                }
        }
        // You can uncomment the line below to change the accent color of the selected tab item
        // .accentColor(.purple)
    }
}

// A placeholder view for the Homepage content
struct HomePageView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "globe")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                Text("Welcome to the Homepage!")
                    .font(.title)
                    .padding()
                Text("This is where your main content will go. You can add lists, articles, or any other information you want to display to your users first.")
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .navigationTitle("Homepage") // Sets the title in the navigation bar
        }
    }
}

// A placeholder view for the Videos content
struct VideosView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "play.rectangle.on.rectangle")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                Text("Your Videos")
                    .font(.title)
                    .padding()
                Text("This screen will display a gallery or list of videos.")
                    .multilineTextAlignment(.center)
                    .padding()
                // Example of a list of videos
                List(0..<10) { i in
                    Text("Video #\(i + 1)")
                }
            }
            .navigationTitle("Videos")
        }
    }
}

// A placeholder view for the Account content
struct AccountView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.badge.key")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
                Text("Account Details")
                    .font(.title)
                    .padding()
                Text("User profile information, settings, and other account-related options will be displayed here.")
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Button(action: {
                    // Action for logging out
                }) {
                    Text("Log Out")
                        .foregroundColor(.red)
                }
                Spacer()
            }
            .navigationTitle("Account")
        }
    }
}

// This is the preview provider for Xcode's canvas
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
