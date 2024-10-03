import Appwrite
import Foundation

class AppwriteClient: ObservableObject {
    // Singleton instance of AppwriteClient
    static let shared = AppwriteClient()

    let client: Client
    public let account: Account
    public let storage: Storage

    // Private init to prevent multiple instances
    private init() {
        self.client = Client()
            .setEndpoint("https://cloud.appwrite.io/v1")  // Replace with your Appwrite endpoint
            .setProject("66fcb7150012bc11f244")  // Replace with your project ID

        self.account = Account(self.client)
        self.storage = Storage(self.client)
    }

}
