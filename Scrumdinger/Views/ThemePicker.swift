import SwiftUI

struct ThemePicker: View {
    // use theme from parent view
    @Binding var selection: Theme
    
    var body: some View {
        // $selection is read-only variable
        Picker("Theme", selection: $selection) {
            
            // ForEach requires CaseIterable of Enum
            ForEach(Theme.allCases) {
                theme in
                ThemeView(theme: theme)
                    // tag serves as pointer to view
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

struct ThemePickerPreviews: PreviewProvider {
    static var previews: some View {
        
        // .constant(.periwinkle) for testing reasons
        ThemePicker(selection: .constant(.periwinkle))
    }
}
