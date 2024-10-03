import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Text("Hello World")
                        .font(.largeTitle)
                        .padding()

                    NavigationLink(destination: SettingsView()) {
                        Text("Go to Settings")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                VStack {
                    Spacer()  // Pushes button to bottom
                    HStack {
                        Spacer()  // Pushes button to right
                        Button(action: {
                            print("Floating Button Tapped")
                        }) {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                                .font(.system(size: 24))
                        }
                        .frame(width: 60, height: 60)
                        .background(Color("PrimaryColor"))
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .padding()
                    }
                }
            }
            .navigationTitle("Notes")
            .background()
        }
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings Screen")
            .font(.largeTitle)
            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
