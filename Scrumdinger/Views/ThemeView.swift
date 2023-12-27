import SwiftUI

struct ThemeView: View {
    // uninitialized constants need to be passed as parameter to the view
    let theme: Theme
    
    var body: some View {
        Text(theme.name)
            // padding
            .padding(4)
            // use parent width
            .frame(maxWidth: .infinity)
            // background color
            .background(theme.mainColor)
            // text color
            .foregroundColor(theme.accentColor)
            // rounded corners
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .buttercup)
    }
}
