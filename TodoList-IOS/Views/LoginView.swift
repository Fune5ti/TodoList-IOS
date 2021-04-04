import SwiftUI
import Foundation

struct LoginView: View {
    @State var userMail = ""
    @State var userPassword = ""
    @State var showPassword = false
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
            Text("Login")
            InputField(placeholder: "Email",fieldValue: $userMail,isPasswordField: false)
            InputField(placeholder: "Password",fieldValue: $userPassword,isPasswordField: true)
            HStack{
                Button("Login"){
                    print("Login")
                }
                .buttonStyle(LoginButton())
            }.padding()
            
            
        }
        
    }
}

struct View_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().preferredColorScheme(.dark)
    }
}
