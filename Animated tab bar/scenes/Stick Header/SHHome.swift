//
//  Home.swift
//  Stick header
//
//  Created by hosam on 1/13/21.
//

import SwiftUI

struct SHHome: View {
    
    // for sticky header view...
    @State var time = Timer.publish(every: 0.1, on: .current, in: .tracking).autoconnect()
    
    @State var show = false
    @StateObject var vm = CardViewModel()
    
    var body: some View {
       
        ZStack(alignment: .top) {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack{
                    
                    // now going to do strechy header....
                    // follow me...
                    
                    
                    GeometryReader{g in
                        
                        Image("poster")
                        .resizable()
                        // fixing the view to the top will give strechy effect...
                        // increasing height by drag amount....
                        .offset(y: g.frame(in: .global).minY > 0 ? -g.frame(in: .global).minY : 0)
                        .frame(height: g.frame(in: .global).minY > 0 ? UIScreen.main.bounds.height / 2.2 + g.frame(in: .global).minY  : UIScreen.main.bounds.height / 2.2)
                        .onReceive(self.time) { (_) in
                        
                            self.calcuateData(g)
                            
                       
                            
                        }
                        
                    }
                    // fixing default height...
                    .frame(height: UIScreen.main.bounds.height / 2.2)
                    
                    VStack{
                        
                        HStack{
                            
                            Text("New Games We Love")
                                .font(.title)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                
                                Text("See All")
                                    .fontWeight(.bold)
                            }
                        }
                        
                        VStack(spacing: 20){
                            
                            ForEach(vm.data){i in
                                
                                CardView(data: i)
                            }
                        }
                        .padding(.top)
                    }
                    .padding()
                    
                    Spacer()
                }
                
            }
            .padding(.bottom,bottom! == 0 ? 65 : bottom!+45)
            if self.show{
                
                TopView()
            }
            
            }
        .edgesIgnoringSafeArea(.top)
        
    }
    
    func calcuateData(_ g:GeometryProxy) {
        
        // its not a timer...
        // for tracking the image is scrolled out or not...
        
        let y = g.frame(in: .global).minY
        
        if -y > (UIScreen.main.bounds.height / 2.2) - 50{
            
            withAnimation{
                
                self.show = true
            }
        }
        else{
            
            withAnimation{
                
                self.show = false
            }
        }
    }
}

struct Home_PrevieDs: PreviewProvider {
    static var previews: some View {
        SHHome()
    }
}
