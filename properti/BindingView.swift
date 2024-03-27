//
//  BindingView.swift
//  properti
//
//  Created by Jesus on 27/3/24.
//

import SwiftUI

struct BindingView: View {
    @Binding var valor : Int
    @ObservedObject var miObjeto : MiClase
    var body: some View {
        VStack{
        Text("resultado : \(valor)")
            Button (" suma 2"){
                valor += 2
            }
        
            Text("me llamo: \(miObjeto.nombre) y tengo \(miObjeto.edad)")
                Button("sumar"){
                    miObjeto.nombre = "fernando"
                    miObjeto.edad = 12
                }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(valor: .constant(5), miObjeto : MiClase())//ponemos cualquier valor pero esto es para preparar a a vista para que reciba valores
    }
}
