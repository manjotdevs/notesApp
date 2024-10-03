import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)
                VStack {

                    ScrollView {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 120))
                            .padding(.bottom, 30)
                            .padding(.top, 10)

                        VStack {
                            Button(action: {
                            }) {
                                Text("Tap Me")
                                    .font(.title2)
                                    .bold()
                                    .font(.headline)
                                    .padding(.leading, 22)
                                    .frame(
                                        maxWidth: .infinity,
                                        alignment: .leading
                                    )
                                    .frame(height: 33)
                            }

                            Button(action: {
                            }) {
                                Text("Tap Me")
                                    .font(.title2)
                                    .bold()
                                    .font(.headline)
                                    .padding(.leading, 22)
                                    .frame(
                                        maxWidth: .infinity,
                                        alignment: .leading
                                    )
                                    .frame(height: 33)
                            }

                        }

                    }
                    Spacer()
                }
            }
            .navigationBarTitle("Setting")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
