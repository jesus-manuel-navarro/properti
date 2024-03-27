//
//  ContentView.swift
//  properti
//
//  Created by Jesus on 27/3/24.
//

import SwiftUI

class MiClase : ObservableObject{
@Published var nombre  = "Pepe"
@Published var edad = 44
}


struct ContentView: View {
    @State private var valor = 0
    @State private var seleccion:Int?
    @StateObject private var miObjeto = MiClase()
    var body: some View {
        NavigationView{
        VStack{
        Text("resultado : \(valor)")
            Button("sumar"){
            valor += 1
            
        }
            Button("cambia nombre"){
                miObjeto.nombre = "jesus"
                miObjeto.edad = 23
            }
            Text("mi nombre es \(miObjeto.nombre) y mi edad es \(miObjeto.edad)")
            
            
            NavigationLink(destination: BindingView(valor: $valor,  miObjeto : miObjeto), tag: 1, selection: $seleccion){
                Button("ir a la otra vista"){seleccion = 1
                }
                }
        }.navigationTitle("ContentView")
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
