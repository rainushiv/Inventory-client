import SwiftUI

struct CreatePage: View {
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var isActive = "Product"
    var body: some View {
        ZStack {
            // Light gray background
            Color(.systemGray6)
                .ignoresSafeArea()
            
            VStack {
                
                   
                    HStack{
                    // Action Button
                    Button(action: {
                        print("Create tapped")
                    }) {
                        Text("Product")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(isActive == "Product"
                                        ? Color.black : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                        // Action Button
                    Button(action: {
                        print("Create tapped")
                    }) {
                        Text("Item")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(isActive == "Item"
                                        ? Color.black : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                    }
                    
                    
                .padding(24)
                .padding(.horizontal, 24)
                
                
                // Floating Card
                VStack(alignment: .leading, spacing: 16) {
                    Text("Create")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    // Title Input
                    TextField("Title", text: $title)
                        .padding()
                        .background(Color(.systemGray5))
                        .cornerRadius(10)
                    
                    // Description Input
                    TextField("Description", text: $description)
                        .padding()
                        .background(Color(.systemGray5))
                        .cornerRadius(10)
                    
                    // Action Button
                    Button(action: {
                        print("Create tapped")
                    }) {
                        Text("Submit")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                }
                .padding(24)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.15),
                        radius: 20,
                        x: 0,
                        y: 10)
                .padding(.horizontal, 24)
                
                Spacer()
            }
        }
    }
}

#Preview {
    CreatePage()
}
