import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .home

    enum Tab {
        case home, explore, create, notifications, profile
    }

    var body: some View {
        VStack{
            
            ZStack(alignment: .bottom) {
                // Main Content Area
                Group {
                                    switch selectedTab {
                                    case .home:
                                        HomePage()
                                    case .explore:
                                        HomePage()
                                    case .create:
                                        HomePage()
                                    case .notifications:
                                        HomePage()
                                    case .profile:
                                        
                                        ProfilePage()
                                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .ignoresSafeArea()
                
                // Custom Tab Bar
                HStack {
                    tabBarButton(icon: "house.fill", tab: .home)
                    Spacer()
                    
                    tabBarButton(icon: "magnifyingglass", tab: .explore)
                    Spacer()
                    
                    plusButton
                    Spacer()
                    
                    tabBarButton(icon: "bell.fill", tab: .notifications)
                    Spacer()
                    
                    tabBarButton(icon: "person.crop.circle.fill", tab: .profile)
                }
                .padding(.horizontal, 24)
                .padding(.top, 10)
                .padding(.bottom, 20)
                .background(Color.black)
            }
        }
    }

    // Regular Tab Button
    private func tabBarButton(icon: String, tab: Tab) -> some View {
        Button {
            selectedTab = tab
        } label: {
            Image(systemName: icon)
                .font(.system(size: 22, weight: .semibold))
                .foregroundColor(selectedTab == tab ? .white : .gray)
        }
    }

    // Center Plus Button
    private var plusButton: some View {
        Button {
            selectedTab = .create
        } label: {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 60, height: 60)

                Image(systemName: "plus")
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(.black)
            }
            .offset(y: 0) // lifts it above bar
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
