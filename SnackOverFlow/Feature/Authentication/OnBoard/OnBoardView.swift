//
//  OnBoardView.swift
//  SnackOverFlow
//
//  Created by Nail Tunay ÖKSÜZ on 23.11.2022.
//

import SwiftUI

struct OnBoardView: View {
    @StateObject var onBoardViewModel = OnBoardViewModel()
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack{
                    Spacer()
                    TabView(selection: $onBoardViewModel.currentIndex, content: {
                       
                        ForEach(OnBoardModel.items.indices,id: \.self) { value in
                            SliderCard(imageHeight: geometry.dh(height: 0.45),model: OnBoardModel.items[value])
                        }
                    })
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    
                    Spacer()
                    Spacer()
                    HStack{
                        ForEach(OnBoardModel.items.indices,id: \.self) { index in
                            IndicatorRectangle(width: onBoardViewModel.currentIndex == index ? geometry.dw(width: 0.06) : geometry.dw(width: 0.03))
                                
                        }
                    }
                    .frame(height: 6)
                    
                    NavigationLink(isActive: $onBoardViewModel.isHomeRedirect) {
                        WelcomeView()
                            .ignoresSafeArea()
                            .navigationBarBackButtonHidden()
                    } label: {
                        NormalButton(onTap: {
                            onBoardViewModel.saveUserLoginAndRedirect()
                        }, title: LocalKeys.Buttons.getStarted.rawValue)
                        .padding(.all,PagePadding.All.normal.rawValue)
                    }.onAppear{
                        onBoardViewModel.checkUserFirstTime()
                    }


                }
            }
        }
       
    }
}
private struct SliderCard: View {
    var imageHeight: Double
    let model: OnBoardModel
    var body: some View {
        VStack{
            Image(model.imageName).frame(height: imageHeight)
            Text(model.description)
                .font(.system(size: FontSizes.largeTitle,weight: .semibold))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.peach)
                
                
        }
    }
}


private struct IndicatorRectangle : View{
    var width: Double
    var body: some View{
        Rectangle().fill(Color.clooney).cornerRadius(RadiusItems.radius).frame(width: width)
            
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
            
    }
}
