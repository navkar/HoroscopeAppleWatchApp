# AstroWatch App - Apple Watch

![Alt text](screenshots/poster.png?raw=true "Poster")

## What does it take?

* XCode 11.6
* SwiftUI 
* To build a WatchKit application for a device, you first need to have an Apple Watch that’s paired with an iPhone. When you build and install the app, you’re actually building and installing an iOS app, and the watchOS app it contains is then copied to the Apple Watch.

## App Screenshots

| Home | App 1 | App 2 |App 3 |
| --- | --- | --- |--- |
| ![Alt text](screenshots/app.png?raw=true "Poster") | ![Alt text](screenshots/aqua.png?raw=true "Poster") | ![Alt text](screenshots/scorpio.png?raw=true "Poster") |![Alt text](screenshots/aqua2.png?raw=true "Poster") |

## Views

Views were written in SwiftUI

#### Forecast View

```swift
    ScrollView 
    {
        VStack {
            Image(icon)
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFit()
            Text(sunsign)
                .font(.system(.title, design: .rounded))
            Spacer()
            Text("\(Date(), formatter: Self.horoDateFormat)")
                .font(.system(.body, design: .rounded))
            Spacer()
            Text(forecast.todaysHoroscope.horoscope)
                .font(.system(.body, design: .rounded))
        }.padding()
    }
```

#### ZodiacList View

```swift
    HStack(alignment:.center) {
        HStack(alignment:.center) {
            Image(item.icon)
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFit()
        }
        .padding()
        
        Text(item.sign)
            .fixedSize(horizontal: false, vertical: true)
            .font(.system(.caption, design: .rounded))
        }
    }
```

## Bundle Id setup for Apple Watch

* Setup Bundle IDs for the Apple Watch App

```json
com.navkar.astrowatch (explicit)
com.navkar.astrowatch.watchkitapp (explicit)
com.navkar.astrowatch.watchkitapp.watchkitextension (explicit)
```

![Alt text](screenshots/bundle-id.png?raw=true "Poster")

### HOWTO debug the iOS part of Apple Watch app in the Simulator

1. Select the WatchKit App target then click the Run icon. Xcode will install the iOS app, without launching it, then will install and launch the WatchKit app.

2. Select the iOS App target and click the Run icon. Xcode will install the iOS app again, but will also launch it, attaching it for debugging.

3. Finally, in the debug Xcode panel at the bottom, click on the target icon (next to the appearance icon), which is actually a popup button, to choose which of both targets should display its debugging output.
