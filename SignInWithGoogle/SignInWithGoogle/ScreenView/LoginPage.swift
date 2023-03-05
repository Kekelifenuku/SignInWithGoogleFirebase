//
//  LoginPage.swift
//  SignInWithGoogle
//
//  Created by kekeli on 05/03/2023.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth
import GoogleSignIn

struct LoginPage: View {
    @State var username: String = ""
    @State var password: String = ""
    @StateObject private var vm =  FireAuth()
    var body: some View {
        VStack {
            VStack {
                LoginHeader()
                    .padding(.bottom)
                
                CustomTextfield(text: $username)
                
                CustomTextfield(text: $username)
                
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Text("Forgot Password?")
                    }
                }
                .padding(.trailing, 24)
                
                CustomButton()
                
                
                Text("or")
                    .padding()
                
                Button {
                    vm.signInWithGoggle()
                } label: {
                    ZStack{
                        Circle()
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 4, x: 0, y: 2)
                        
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .padding(8)
                            .mask(
                                Circle()
                            )
                    }
                    
                }
                .frame(width: 50, height: 50)
                
                    
                } // GoogleSiginBtn
            } // VStack
            .padding(.top, 52)
            Spacer()
        }
    }




struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
