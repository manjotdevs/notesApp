import SwiftUI

struct sView: View {
    // State variable to control popup visibility
    @State private var showPopup = false
    
    var body: some View {
        ZStack {
            // Main content
            VStack {
                Text("Main View")
                    .font(.largeTitle)
                
                Button(action: {
                    // Show the popup when button is clicked
                    showPopup = true
                }) {
                    Text("Show Popup")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            
            // Popup view, shown conditionally
            if showPopup {
                // Semi-transparent background
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture {
                        // Close the popup when background is tapped
                        showPopup = false
                    }
                
                // The actual popup content
                VStack(spacing: 20) {
                                        Text("This is a popup!")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                    
                     Text("This is a popup!")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                    
 
                    Text("This is a popup!")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                    
                    Button(action: {
                        // Close the popup when button is tapped
                        showPopup = false
                    }) {
                        Text("Close")
                            .padding()
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .frame(width: 300, height: 200)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
            }
        }
    }
}

struct sView_Previews: PreviewProvider {
    static var previews: some View {
        sView()
    }
}
