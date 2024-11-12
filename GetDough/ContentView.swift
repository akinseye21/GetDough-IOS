//
//  ContentView.swift
//  GetDough
//
//  Created by Yomi on 11/12/24.
//

import SwiftUI

var totalPages = 4

struct ContentView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        if currentPage == 1 {
            Onboarding(top: "Welcome to Get Dough.\nWhere cravings meet convenience",
                       image: "splash1",
                       title: "",
                       details: "Dive in and discover your next favorite treat,\ndelivered fast and fresh!")
        }
        
        if currentPage == 2 {
            Onboarding(top: "",
                       image: "splash2",
                       title: "Food variety",
                       details: "Explore a world of flavors with our diverse\nmenu, from classic favorites to exciting new\ntreats.")
        }
        
        if currentPage == 3 {
            Onboarding(top: "",
                       image: "splash3",
                       title: "Quick Delivery",
                       details: "Get your cravings satisfied in no time with\nour fast and reliable delivery – fresh and\ndelicious, right to your door!")
        }
        
        if currentPage == 4 {
            Onboarding(top: "",
                       image: "splash4",
                       title: "Secure payment options",
                       details: "Shop with confidence! Our secure payment\noptions ensure a smooth, safe, and worry-\nfree checkout every time.")
        }
        
        Spacer()
        HStack(spacing: 0) {
            Button("Next") {
                if currentPage < totalPages{
                    currentPage += 1
                }else{
                    currentPage = 1
                }
            }
            Spacer()
            Image(systemName: "arrowshape.turn.up.right.circle")
                .font(.system(size: 30))
                .foregroundColor(Color(.blue))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//Onboarding Screen
struct Onboarding: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var top: String
    var image: String
    var title: String
    var details: String
    
    var body: some View{
        VStack(spacing: 0) {
                    Text(top)
                        .font(.custom("PoppinsMedium", size: 16))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .lineSpacing(3)
                        .padding(.top, 20)

                    Image(image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 300)
                        .padding(.top, 50)

                    Text(title)
                        .font(.custom("PoppinsMedium", size: 20))
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.bottom, 20)

                    Text(details)
                        .font(.custom("PoppinsMedium", size: 14))
                        .multilineTextAlignment(.center)
                        .lineSpacing(3)
                        .padding(.top, 10)
                }
                .padding(20)
    }
}
