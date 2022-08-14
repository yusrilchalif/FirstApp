//
//  OSStylingDetail.swift
//  TugasAkhir
//
//  Created by Yusril on 14/08/22.
//

import SwiftUI

struct OSStylingDetail: View {
    var osStyling: OSStyling = osStylings[0]
    
    var body: some View {ScrollView {
        VStack(spacing: 10) {
            Image(osStyling.osStylingImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.size.width - 10, height: UIScreen.main.bounds.size.height / 2.9, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            
            Text(osStyling.osStylingName)
                .font(.title)
                .multilineTextAlignment(.center)
            
            HStack {
                Text("Post by ")
                    .font(.system(size: 12))
                
                Text(osStyling.postBy)
                    .font(.system(size: 12))
                    .foregroundColor(.darkBlue)
            }
            
            Text(osStyling.description)
                .font(.system(size: 14))
                .padding()
            
            Spacer()
        }
    }
}
    
    struct OSStylingDetail_Previews: PreviewProvider {
        static var previews: some View {
            OSStylingDetail(osStyling: osStylings[0])
        }
    }
}
