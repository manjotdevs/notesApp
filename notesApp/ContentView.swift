import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                        .bold()
                }

            SettingView()
                .tabItem {
                    Image(systemName: "gearshape")
                        .bold()
                }
                .toolbarBackground(Color("BackgroundColor"), for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
        }
        .accentColor(Color("PrimaryColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
