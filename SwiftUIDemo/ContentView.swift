//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Techniexe Infolabs on 07/04/22.
//

import SwiftUI

struct Photo: Identifiable {
  
  var id = UUID()
  var name: String
}


struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var subMenuItems: [MenuItem]?
}

// Main menu items
let sampleMenuItems = [ MenuItem(name: "Espresso Machines", image: "linea-mini", subMenuItems: espressoMachineMenuItems),
                        MenuItem(name: "Grinders", image: "swift-mini", subMenuItems: grinderMenuItems),
                        MenuItem(name: "Other Equipment", image: "espresso-ep", subMenuItems: otherMenuItems)
                    ]

// Sub-menu items for Espressco Machines
let espressoMachineMenuItems = [ MenuItem(name: "Leva", image: "leva-x", subMenuItems: [ MenuItem(name: "Leva X", image: "leva-x"), MenuItem(name: "Leva S", image: "leva-s") ]),
                                 MenuItem(name: "Strada", image: "strada-ep", subMenuItems: [ MenuItem(name: "Strada EP", image: "strada-ep"), MenuItem(name: "Strada AV", image: "strada-av"), MenuItem(name: "Strada MP", image: "strada-mp"), MenuItem(name: "Strada EE", image: "strada-ee") ]),
                                 MenuItem(name: "KB90", image: "kb90"),
                                 MenuItem(name: "Linea", image: "linea-pb-x", subMenuItems: [ MenuItem(name: "Linea PB X", image: "linea-pb-x"), MenuItem(name: "Linea PB", image: "linea-pb"), MenuItem(name: "Linea Classic", image: "linea-classic") ]),
                                 MenuItem(name: "GB5", image: "gb5"),
                                 MenuItem(name: "Home", image: "gs3", subMenuItems: [ MenuItem(name: "GS3", image: "gs3"), MenuItem(name: "Linea Mini", image: "linea-mini") ])
                                ]

// Sub-menu items for Grinder
let grinderMenuItems = [ MenuItem(name: "Swift", image: "swift"),
                         MenuItem(name: "Vulcano", image: "vulcano"),
                         MenuItem(name: "Swift Mini", image: "swift-mini"),
                         MenuItem(name: "Lux D", image: "lux-d")
                        ]

// Sub-menu items for other equipment
let otherMenuItems = [ MenuItem(name: "Espresso AV", image: "espresso-av"),
                         MenuItem(name: "Espresso EP", image: "espresso-ep"),
                         MenuItem(name: "Pour Over", image: "pourover"),
                         MenuItem(name: "Steam", image: "steam")
                        ]

struct ContentView: View {
  
  @State private var colorChange = false
  @State private var sizeChange = false
  @State private var isPlaying : Bool = false
  
  let samplePhotos = (1...20).map { Photo(name: "coffee-\($0)") }
  
  
  @State var gridLayout: [GridItem] = [ GridItem()]
  @State private var inputText = ""
  @State private var wordCount: Int = 0
  
    var body: some View {
      
    
      
      AsyncImage(url: URL(string: "https://blog.hubspot.com/hubfs/parts-url.jpg"))
      
      /*TabView {
        Text("Home Tab")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem {
            Image(systemName: "house.fill")
            Text("Home")
          }
        Text("Home Tab")
          .font(.system(size: 30, weight: .bold, design: .rounded))
          .tabItem {
            Image(systemName: "house.fill")
            Text("Home")
          }
      }*/
      
  
     /* ZStack(alignment: .topTrailing) {
               TextEditor(text: $inputText)
                   .font(.body)
                   .padding()
                   .padding(.top, 20)
                   .onChange(of: inputText) { value in
                       let words = inputText.split { $0 == " " || $0.isNewline }
                       self.wordCount = words.count
                   }

               Text("\(wordCount) words")
                   .font(.headline)
                   .foregroundColor(.secondary)
                   .padding(.trailing)
           }*/
      
      
     /* NavigationView {
      
        /*ScrollView {
          
          LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
           
            ForEach(samplePhotos.indices) { index in
              
              
              Image(samplePhotos[index].name)
                                 .resizable()
                                 .scaledToFill()
                                 .frame(minWidth: 0, maxWidth: .infinity)
                                 .frame(height: 200)
                                 .cornerRadius(10)
                                 .shadow(color: Color.primary.opacity(0.3), radius: 1)

              
              
            }
            
            
          }
          
          
          
        }.padding(.all, 10)*/
        
        
      }.navigationTitle("Coffee Feed")*/ //.foregroundColor(.green).font(.headline)
        /*.toolbar {
          
          ToolbarItem(placement: .navigationBarTrailing) {
            
            Button(action: {
              
              self.gridLayout = Array(repeating: .init(.flexible()), count: self.gridLayout.count % 4 + 1)
              
              
            }) {
              
              Image(systemName: "square.grid.2*2").font(.title).foregroundColor(.primary)
              
            }
            
          }
          
        }
      */
      
      
      
      
      
      /*List(sampleMenuItems, children: \.subMenuItems) { item in
          HStack {
              Image(item.image)
                  .resizable()
                  .scaledToFit()
                  .frame(width: 50, height: 50)

              Text(item.name)
                  .font(.system(.title3, design: .rounded))
                  .bold()
          }.listStyle(.plain)
      }
      */
      /*List {
          ForEach(sampleMenuItems) { menuItem in

              Section(header:
                  HStack {

                      Text(menuItem.name)
                          .font(.title3)
                          .fontWeight(.heavy)

                      Image(menuItem.image)
                          .resizable()
                          .scaledToFit()
                          .frame(width: 30, height: 30)

                  }
                  .padding(.vertical)

              ) {
                  OutlineGroup(menuItem.subMenuItems ?? [MenuItem](), children: \.subMenuItems) {  item in
                      HStack {
                          Image(item.image)
                              .resizable()
                              .scaledToFit()
                              .frame(width: 50, height: 50)

                          Text(item.name)
                              .font(.system(.title3, design: .rounded))
                              .bold()
                      }
                  }
              }
          }
      }
      .listStyle(.plain)
      .ignoresSafeArea()*/
      
      
      /*DisclosureGroup(content: {
        
        Text("Question").font(.body)
          .fontWeight(.light).foregroundColor(.black)
        
      }, label: {
        
        Text("1. Can I reuse the source code?")
                    .font(.body)
                    .bold()
                    .foregroundColor(.green)
      }) .padding()
      */
      
      /*Image(systemName: "heart.fill")
        .font(.system(size: 40))
        .foregroundColor(colorChange ? .yellow : .red)
        .scaleEffect(sizeChange ? 1.5 : 3)
        .animation(.default, value: 1.0)
        .onTapGesture {
          self.colorChange.toggle()
          print(self.colorChange)
        }
        .onLongPressGesture {
          self.sizeChange.toggle()
        }*/
      
      /*Text("Hello, world!")
        .fontWeight(.bold)
        .font(.system(size: 20.0))
        //.font(.system(.title, design: .rounded))
        .foregroundColor(.green)
          //.padding()*/
      
      /*Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
        .fontWeight(.bold)
        .font(.custom("Nunito", size: 25))
        //.font(.title)
        .foregroundColor(.gray)
        .multilineTextAlignment(.center)
        //.lineLimit(nil)
        //.truncationMode(.tail)
        .lineSpacing(10)
        .padding()
        //.rotationEffect(.degrees(45))*/
      
      
      /*Text("**This is how you bold a text**. *This is how you make text italic.*  You can [click this link](https://www.appcoda.com) to go to appcoda.com")
        .font(.title)*/
      
      /*Button(action: {
        print("Hello World tapped!")
      }) {
        Text("Hello World")
      }*/
      
      /*Text("Hello World")
          
          .background(Color.purple)
          .foregroundColor(.white)
          .font(.title)
          .padding()
          //.border(.purple, width: 5.0)
          //.fontWeight(.bold)*/
      
      
     /* Text("Hello World")
          .fontWeight(.bold)
          .font(.title)
          .padding()
          .background(Color.purple)
          .foregroundColor(.white)
          .cornerRadius(40.0)
          .padding()
          .border(.green, width: 5.0)
          .cornerRadius(200.0)
          //.padding(10)
          //.border(Color.purple, width: 5).cornerRadius(16.0)*/
      
      /*Button(action: {
         self.isPlaying.toggle()
      }) {
          Image(systemName: self.isPlaying == true ? "pause.fill" : "play.fill")
                .resizable()
                .frame(width: 60, height: 60)
      }*/
      
//      Button(action: {
//        self.isPlaying.toggle()
//      }) {
//
//        Image(systemName: self.isPlaying ? "pause.fill" : "play.fill").resizable().frame(width: 60, height: 60)
//
      //}
      
     /* VStack {
          Button("Button 1") { }
              .buttonStyle(.bordered)
          Button("Button 2", role: .destructive) { }
              .buttonStyle(.bordered)
          Button("Button 3") { }
              .buttonStyle(.borderedProminent)
          Button("Button 4", role: .destructive) { }
          .buttonStyle(.borderedProminent)
      }*/
      
      //SearchBar()
      //CustomView()
      /*Button {
          print("Edit button was tapped")
      } label: {
          Label("Edit", systemImage: "pencil")
      }*/
      
      /*ScrollView(.horizontal) {
          LazyHGrid(rows: gridItemLayout, spacing: 20) {
              ForEach((0...9999), id: \.self) {
                  Image(systemName: "arrow.back")
                      .font(.system(size: 30))
                      .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: .infinity)
                      .background(.green)
                      .cornerRadius(10)
              }
          }
      }*/
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView()
          .previewInterfaceOrientation(.portraitUpsideDown)
        ContentView()
          .previewInterfaceOrientation(.portraitUpsideDown)
        ContentView()
          .previewInterfaceOrientation(.portraitUpsideDown)
      }
    }
}

/*struct SearchBar: UIViewRepresentable {

    func makeUIView(context: Context) -> UISearchBar {

        return UISearchBar()
    }

    func updateUIView(_ uiView: UISearchBar, context: Context) {

        // Update the view
    }
}*/

//struct CustomView: UIViewRepresentable {
//
//    func makeUIView(context: Context) -> some UIView {
//        // Return the UIView object
//      return UIView()
//    }
//
//    func updateUIView(_ uiView: UIView, context: Context) {
//        // Update the view
//    }
//}
