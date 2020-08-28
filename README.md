# AstroWatch App - Apple Watch

![Alt text](screenshots/poster.png?raw=true "Poster")

## Points to Note

* Learn how to build an App for Apple Watch - Series 5 
* XCode 11.6
* SwiftUI 

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