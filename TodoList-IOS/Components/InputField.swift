import SwiftUI

struct InputField: View {
    @State var placeholder: String
    @Binding var fieldValue: String
    @State var isPasswordField:Bool
    @State var showPassword: Bool = false
    var body: some View {
        
        VStack(alignment: .leading){
            Text(placeholder)
            if(isPasswordField){
                ZStack(alignment: .trailing){
                    if(showPassword == true){
                        TextField(placeholder,text: $fieldValue)
                    }else{
                        SecureField(placeholder,text: $fieldValue)
                    }
                    Button(action: {showPassword.toggle()}){
                        Image(systemName: showPassword == true ? "eye.slash.fill":"eye.fill")
                    }
                }
                
            }else{
                TextField(placeholder,text: $fieldValue)
            }
        }
        .padding(10)
        .textFieldStyle(DefaultTextFieldStyle())
        
    }
}
