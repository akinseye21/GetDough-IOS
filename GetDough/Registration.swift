//
//  Registration.swift
//  GetDough
//
//  Created by Yomi on 11/18/24.
//

import SwiftUI

struct Registration: View {
    @State private var isCreateAccountSelected = true
    @State var image: String = "burger"
    
    var body: some View {
        ZStack {
                    Color("pink")
                        .edgesIgnoringSafeArea(.all)

                    VStack(spacing: 0) {
                        Image(image)
                            .resizable()
                            .frame(width: 220, height: 150)

                        VStack {
                            RoundedCorner(radius: 20, corners: [.topLeft, .topRight])
                                .fill(Color.white)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .overlay(
                                    VStack(alignment: .center, spacing: 10) {
                                        Capsule()
                                            .fill(Color("grey2"))
                                            .frame(width: 60, height: 5)
                                            .padding()

                                        HStack {
                                            Text("Create Account")
                                                .foregroundColor(isCreateAccountSelected ? Color("blue") : Color("grey"))
                                                .font(.system(size: 16, weight: .semibold))
                                                .onTapGesture {
                                                    image = "burger"
                                                    isCreateAccountSelected = true
                                                }

                                            Spacer()
                                                .frame(width: 50)

                                            Text("Login")
                                                .foregroundColor(!isCreateAccountSelected ? Color("blue") : Color("grey"))
                                                .font(.system(size: 16, weight: .semibold))
                                                .onTapGesture {
                                                    image = "ico"
                                                    isCreateAccountSelected = false
                                                }
                                            Spacer()
                                        }
                                        .padding(.horizontal, 20)

                                        if isCreateAccountSelected {
                                            CreateAccountForm()
                                        } else {
                                            LoginForm()
                                        }
                                    }
                                )
                        }
                        .padding(.top, 0)
                    }
                }
    }
}


struct CreateAccountForm: View {
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var phoneNumber = ""
    @State private var address = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                TextField("Enter your full name", text: $fullName)
                    .textFieldStyle(CustomTextFieldStyle())
                    .padding(.top, 50)

                TextField("Eg namaemail@emailkamu.com", text: $email)
                    .textFieldStyle(CustomTextFieldStyle())

                SecureField("******", text: $password)
                    .textFieldStyle(CustomTextFieldStyle())

                TextField("Enter your phone number", text: $phoneNumber)
                    .textFieldStyle(CustomTextFieldStyle())

                TextField("Eg Wuse, Aminu Kano, Abuja", text: $address)
                    .textFieldStyle(CustomTextFieldStyle())

                NavigationLink {
                    
                } label: {
                    Text("Continue")
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .font(.custom("DMSans-Bold", size: 16))
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
                .padding(.top, 10)
                
            }
            .padding(.horizontal, 20)
        }
        .padding(.top, -20)
    }
}

struct LoginForm: View {
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 10) {
                TextField("Eg namaemail@emailkamu.com", text: $email)
                    .textFieldStyle(CustomTextFieldStyle())
                    .padding(.top, 50)

                SecureField("******", text: $password)
                    .textFieldStyle(CustomTextFieldStyle())

                HStack {
                    Spacer()
                    Text("Forgot Password?")
                        .foregroundColor(Color.gray)
                }

                NavigationLink {
                    
                } label: {
                    Text("Login")
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                        .font(.custom("DMSans-Bold", size: 16))
                        .foregroundColor(Color.white)
                        .cornerRadius(8)
                }
                .padding(.top, 20)
            }
            .padding(.horizontal, 30)
        }
        .padding(.top, -20)
    }
}

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(Color.gray, lineWidth: 1)
            )
            .padding(.vertical, 5)
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}


#Preview {
    Registration()
}
