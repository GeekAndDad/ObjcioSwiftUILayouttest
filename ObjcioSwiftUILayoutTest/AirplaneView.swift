//
//  AirplandView.swift
//  ObjcioSwiftUILayoutTest
//
//  Created by Dad on 2/16/21.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		
		VStack {
			// little top mark to mark center of the view
			HStack {
				Spacer()
				Text("|").fixedSize()
				Spacer()
			}

			Spacer()

			AirplaneView()
			//	.padding(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

			Spacer()
		}
		.padding([.leading, .trailing], 10)
	}
}

struct AirplaneView: View {
	let from = Text("Berlin")
	let to = Text("San Francisco")
	let airplaneIcon = Text("✈️")
	
	var body: some View {
		HStack(spacing: 0) {
			from
				.frame(maxWidth: .infinity, alignment: .leading)
			Spacer()
			airplaneIcon
			Spacer()
			to
				.frame(maxWidth: .infinity, alignment: .trailing)
		}
		.lineLimit(1)
	}
}

struct AirplaneView_Previews: PreviewProvider {
	static var previews: some View {
		AirplaneView()
			.frame(width: 300, height: 50)
		AirplaneView()
			.frame(width: 250, height: 50)
		AirplaneView()
			.frame(width: 200, height: 50)
		AirplaneView()
			.frame(width: 150, height: 50)
		AirplaneView()
			.frame(width: 90, height: 50)
	}
}
