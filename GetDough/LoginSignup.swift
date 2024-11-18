//
//  LoginSignup.swift
//  GetDough
//
//  Created by Yomi on 11/18/24.
//

import SwiftUI

struct LoginSignup: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 5) {
                        // Main Title
                HStack {
                    Text("Hello,\nWhat are you signing in as?")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.blue)
                        .padding(.bottom, 10)
                    Spacer()
                }.padding(.leading)

                        // Subheading
                HStack {
                    Text("How would you like to proceed? Join us\nas a registered user or continue as a guest to start\nexploring and ordering your favs!")
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(Color.gray)
                    Spacer()
                }.padding(.leading)

                        Spacer(minLength: 20)

                        // Relative Layout with Buttons
                        VStack(spacing: 20) {
                            // Background Image
                            Image("img1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)

                            VStack(spacing: 10) {
                                // Create Account Button
                                NavigationLink {
                                    Registration()
                                } label: {
                                    Text("Create Account")
                                        .font(.custom("DMSans-Bold", size: 16))
                                        .frame(maxWidth: .infinity, maxHeight: 50)
                                        .foregroundColor(Color.black)
                                        .background(Color("light_blue"))
                                        .cornerRadius(8)
                                }

                                // Login as Guest Button
                                NavigationLink {
                                    
                                } label: {
                                    Text("Login as Guest")
                                        .font(.custom("DMSans-Bold", size: 16))
                                        .frame(maxWidth: .infinity, maxHeight: 50)
                                        .foregroundColor(Color.white)
                                        .background(Color.blue)
                                        .cornerRadius(8)
                                }
                            }
                            .padding(.horizontal, 10)

                            // Already Have an Account Section
                            HStack(spacing: 5) {
                                Text("Already have an account?")
                                    .font(.custom("DMSans-Regular", size: 10))
                                    .foregroundColor(Color.black)

                                Text("Log In Here")
                                    .font(.custom("DMSans-Regular", size: 10))
                                    .foregroundColor(Color.blue)
                            }
                            .padding(.top, 20)
                        }
                        .padding(.bottom, 40)

                        // Footer Text
                        Text("By logging in or registering, you have agreed to the Terms and Conditions and Privacy Policy.")
                            .font(.custom("Poppins-Medium", size: 10))
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 20)
                    }
                    .padding(5)
        }
    }
}

#Preview {
    LoginSignup()
}
