//
//  Home.swift
//  eWallets
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

struct EWHome: View {
    
    @State var show = false
    @StateObject var mvm = MainViewModel()
    var height = UIScreen.main.bounds.height < 750
//    @AppStorage("hid") var hideTab:Bool = false
    @EnvironmentObject var vm: MainViewModel
    
    var body: some View {
        
        ZStack{
            
            
            
            VStack(spacing: 20){
                
                HStack(spacing: 15){
                    
                    Image("logo")
                    
                    Text("eWallet")
                        .font(.title)
                    
                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation{
                            self.show.toggle()
                            self.vm.hideTab.toggle()
                        }
                    }) {
                        
                        Image("menu500")
                            .renderingMode(.original)
                    }
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top == 0 ? 15 : (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 5 )
                
                ScrollView(height ? .vertical : .init() ,showsIndicators:false) {
                
                HStack{
                    
                    Text("Account Overview")
                        .foregroundColor(Color("Color500"))
                    
                    Spacer()
                }
                .padding(.top,18)
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 15) {
                        
                        Text("$250000")
                            .font(.title)
                        
                        Text("Current Balance")
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("add")
                            .renderingMode(.original)
                    }
                }
                .padding(20)
                .background(Color.black.opacity(0.05))
                .cornerRadius(20)
                .padding(.top)
             
                HStack{
                    
                    Text("Send Money")
                        .foregroundColor(Color("Color"))
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("scan")
                            .renderingMode(.original)
                    }
                    
                }
                .padding(.top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 15){
                        
                        Button(action: {
                            
                        }) {
                            
                            Image("add")
                                .renderingMode(.original)
                        }
                        
                        ForEach(mvm.names,id: \.self){i in
                            
                            VStack(spacing: 10){
                                
                                Image("person")
                                
                                Text(i)
                                    .foregroundColor(Color.black.opacity(0.5))
                                
                            }
                            .frame(width: 100)
                            .padding(.vertical)
                            .background(Color.black.opacity(0.05))
                            .cornerRadius(10)
                        }
                    }
                    .padding(.leading)
                    
                }
                .padding(.top,18)
                
                HStack{
                    
                    Text("Services")
                        .foregroundColor(Color("Color"))
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("filter")
                            .renderingMode(.original)
                    }
                    
                }
                .padding(.top)
                
                Row1()
                    .padding(.top)
                
                Row2()
                
                Spacer()
            }
                
//            .padding([.horizontal,.top])
            
            }
            .padding([.horizontal,.top])
            .padding(.bottom,bottom! == 0 ? 65 : bottom!+45)
            
            VStack{
                
                Spacer()
                
                Menu()
                    .offset(y: self.show ?  (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! : UIScreen.main.bounds.height)
                
            }
            .background(Color.black.opacity(self.show ? 0.5 : 0)
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    
                    withAnimation{
                        self.show.toggle()
                        self.vm.hideTab.toggle()
                    }
//                    self.show.toggle()
            })
        }
        .animation(.default)
        
    }
}

struct Home_PrevieSSws: PreviewProvider {
    static var previews: some View {
        EWHome()
    }
}
