//
//  File name: ScanQRView.swift
//  Project name: TabView Content
//  Workspace name: SwiftUI-Samples
//
//  Created by: nothing-to-add on 02/09/2023
//  Using Swift 5.0
//  Copyright (c) 2023 nothing-to-add
//

import CodeScanner
import SwiftUI
import AVFoundation

struct ScanQRView: View {
    
    @State private var isPresentingScanner = false
    @State private var scannedCode: String = C().blankText
    @State private var showingAlert = false
    
    
    var body: some View {
        VStack(spacing: 10) {
            
            Button(C.ScanQRText().btnTxt) {
                isPresentingScanner = true
            }

            Text(C.ScanQRText().mainTxt)
        }
        .sheet(isPresented: $showingAlert){
            SheetView().background(.regularMaterial)
        }
        .sheet(isPresented: $isPresentingScanner) {
            CodeScannerView(codeTypes: [.qr, .codabar, .code128, .code39, .code93, .code39Mod43, .ean8, .ean13], showViewfinder: true) { response in
                if case let .success(result) = response {
                    scannedCode = result.string
                    isPresentingScanner = false
                    if scannedCode.count > 0 {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            showingAlert = true
                        }
                    }
                }
            }
        }
     
    }
    
    func handleScan(result: Result<ScanResult, ScanError>) {
        switch result {
        case .success(let result):
            print(result.string)
        case .failure(let error):
            print("\(C.ScanQRText().errorTxt)\(error.localizedDescription)")
        }
    }

}

struct ScanQRView_Preview: PreviewProvider {
    static var previews: some View {
        return ScanQRView()
    }
}

//FAKE Scan result
struct SheetView: View {
    @State private var offset: CGFloat = 1000

    func close() {
        withAnimation(.spring()) {
            offset = 1000
        }
    }

    var body: some View {
        ZStack {
            Color(.white)
                .opacity(0.0)
                .onTapGesture {
                    close()
                }

            VStack {
                Text(C.ScanQRText().fakeMainTxt)
                    .font(.title)
                    .bold()
                    .padding()
                Image(C.ScanQRText().image).resizable()
                    .aspectRatio(UIImage(named: C.ScanQRText().image)!.size, contentMode: .fit)
                Text(C.ScanQRText().fakeAddTxt)
                    .font(.title3)
                    .bold()
                    .padding()

                Button {
                    close()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.red)

                        Text(C.ScanQRText().fakeBtnTxt)
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                    }
                    .padding()
                }
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(alignment: .topTrailing) {
                Button {
                    close()
                } label: {
                    Image(systemName: "xmark")
                        .font(.title2)
                }
                .tint(.black)
                .padding()
            }
            .shadow(radius: 20)
            .padding(30)
            .offset(x: 0, y: offset)
            .onAppear {
                withAnimation(.spring()) {
                    offset = 0
                }
            }
        }
        .ignoresSafeArea()
    }
}
