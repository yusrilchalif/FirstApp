//
//  OSStylingList.swift
//  TugasAkhir
//
//  Created by Yusril on 14/08/22.
//

import SwiftUI

extension Color {
    static let darkBlue = Color("ColorBlueDark")
}

var osStylings = [
    OSStyling(osStylingImage: "Android", osStylingName: "Best OS for Smartphone from Google", postBy: "Anonymous", description: "\tAndroid is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets"),
    OSStyling(osStylingImage: "IpadOS", osStylingName: "Best OS for Tablet PC from Apple", postBy: "Anonymous", description: "\tiPadOS is a mobile operating system developed by Apple Inc. for its iPad line of tablet computers. It is a rebranded variant of iOS, the operating system used by Apple's iPhones, renamed to reflect the diverging features of the two product lines, particularly the iPad's multitasking capabilities."),
    OSStyling(osStylingImage: "MacOS", osStylingName: "Best OS for PC from Apple", postBy: "Anonymous", description: "\tmacOS previously Mac OS X and later OS X) is a Unix operating system developed and marketed by Apple Inc. since 2001. It is the primary operating system for Apple's Mac computers. Within the market of desktop and laptop computers it is the second most widely used desktop OS, after Microsoft Windows and ahead of ChromeOS."),
    OSStyling(osStylingImage: "Ubuntu", osStylingName: "Best Linux Distro", postBy: "Anonymous", description: "\tUbuntu is a Linux distribution based on Debian and composed mostly of free and open-source software. Ubuntu is officially released in three editions: Desktop, Server, and Core for Internet of things devices and robots. All the editions can run on the computer alone, or in a virtual machine."),
    OSStyling(osStylingImage: "Windows", osStylingName: "Best OS For PC from Microsoft", postBy: "Anonymous", description: "\tWindows is a group of several proprietary graphical operating system families developed and marketed by Microsoft. Each family caters to a certain sector of the computing industry. Active Windows families include Windows NT and Windows IoT; these may encompass subfamilies (e.g. Windows Server or Windows Embedded Compact/Windows CE). Defunct Windows families include Windows 9x, Windows Mobile and Windows Phone."),
]

struct OSStylingList: View {
    var body: some View {
        NavigationView{
            List(osStylings) {osStyling in
                NavigationLink(destination: OSStylingDetail(osStyling: osStyling)){
                    HStack{
                        VStack(alignment: .leading, spacing: 5){
                            Text("\(osStyling.osStylingName)")
                                .font(.system(size: 18, weight: .bold))
                            Text("\(osStyling.postBy)")
                                .font(.system(size: 12))
                                .foregroundColor(.darkBlue)
                        }
                        
                        Spacer()
                        
                        Image(osStyling.osStylingImage)
                            .resizable()
                            .frame(width: 100.0, height: 100.0)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        }
                    }
                }
            .navigationBarTitle("List Operation System")
        }
    }
}

struct OSStylingList_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            OSStylingList()
        }
    }
}
