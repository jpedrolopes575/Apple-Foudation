//
//  WebView.swift
//  MarvelApi
//
//  Created by user on 10/10/23.
//

import SwiftUI
import WebKit
struct WebView:UIViewRepresentable {
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest (url: URL))
        return View
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
  }
}
