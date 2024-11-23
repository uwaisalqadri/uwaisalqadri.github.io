import Publish
import Plot
import Foundation

extension Theme where Site == West {
  static var west: Self {
    Theme(
      htmlFactory: WestHTMLFactory(),
      resourcePaths: [
        "Resources/styles.css"
      ]
    )
  }
}

struct WestHTMLFactory: HTMLFactory {
  func makeIndexHTML(for index: Index, context: PublishingContext<West>) throws -> HTML {
    HTML(
      .head(for: index, on: context.site),
      .body(
        .div(
          .class("UwaisLandingPage"),
          .div(
            .class("UwaisAlqadri20"),
            .text("Uwais Alqadri [20]")
          ),
          .div(
            .class("Group1"),
            .div(.class("Rectangle1")),
            .div(.class("ReachMe"), .text("Reach Me"))
          ),
          .div(
            .class("Group3"),
            .div(.class("Rectangle1")),
            .div(.class("Resume"), .text("Resume"))
          ),
          .div(
            .class("Group15"),
            .div(.class("Rectangle1")),
            .div(.class("Portfolio"), .text("Portfolio"))
          ),
          .div(
            .class("Group3"),
            .img(
              .class("Image1"),
              .src("/images/avatar.png")
            ),
            .div(
              .class("APassionateMobileSoftwareEngineerWithAStrongBackgroundInSwiftApplePlatformsAndKotlinAndroidKotlinMultiplatformLearnedCodingInHighSchoolAndExpandedHisSkillsThroughSelfLearningOnTheInternetGettingHisFirstJobAsASoftwareEngineerSixMonthsBeforeGraduatingFromHighSchool"),
              .span(
                .text("A passionate Mobile Software Engineer with a strong background in ")
              ),
              .span(
                .text("Swift")
              ),
              .span(
                .text(" (Apple Platforms) and ")
              ),
              .span(
                .text("Kotlin")
              ),
              .span(
                .text(" (Android, Kotlin Multiplatform). Learned coding in high school and expanded his skills through self-learning on the Internet, getting his first job as a Software Engineer six months before graduating from high school.")
              )
            )
          )
        ), // about
        .div(.class("ProudlyPresent"), .text("Proudly Present")),
        .div(
          .class("Giffy"),
          .text("Giffy")
        ),
        .div(
          .class("Inos"),
          .text("inOS")
        ),
        .div(
          .class("GifAppBuildWithTheComposableArchitectureXcodegenAndGenericProtocol"),
          .text("GIF app build with The Composable Architecture, XcodeGen, and Generic Protocol")
        ),
        .div(
          .class("DeviceFunctionalityCheckingUsingCorebluetoothCorelocationAvfoundationCoremotionLocalauthenticationAudiotoolboxSpeechUidevice"),
          .text("Device Functionality Checking using CoreBluetooth, CoreLocation, AVFoundation, CoreMotion, LocalAuthentication, AudioToolbox, Speech, UIDevice."),
          .div(
            .class("Frame5019"),
            .img(.class("AppIcon2"), .src("/images/app-giffy")),
            .div(.class("Rectangle2400")),
            .div(
              .class("Group"),
              .div(.class("Vector")),
              .div(.class("Vector"))
            )
          ),
          .img(.class("1"), .src("/images/app-in-os")),
          .div(
            .class("Group4"),
            .div(.class("Rectangle1")),
            .div(.class("AppStore"), .text("App Store"))
          )
        ),
        .div(
          .class("Group6"),
          .div(.class("Rectangle1")),
          .div(.class("AppStore"), .text("App Store"))
        ),
        .div(.class("RecentWritings"), .text("Recent Writings")),
        .div(
          .class("Group13"),
          .div(.class("MediumCom"), .text("medium.com")),
          .div(.class("DevTo"), .text("dev.to")),
          .div(.class("UwaisTechtavernCom"), .text("uwais.techtavern.com"))
        ),
        .div(
          .class("Group9"),
          .div(.class("Rectangle2402")),
          .div(.class("IThenRealizedThatTheBestCodeConventionForSwiftDevelopmentIsToFollowAppleSOwnCodingStyle"), .text("I then realized that the best code convention for Swift development is to follow Apple’s own coding style.")),
          .div(
            .class("Group9"),
            .div(.class("WriteSwiftLikeApple"), .text("Write Swift Like Apple.")),
            .img(.class("Image2"), .src("https://via.placeholder.com/219x162"))
          )
        ),
        .div(
          .class("Group9"),
          .div(.class("Rectangle2402")),
          .div(.class("IThenRealizedThatTheBestCodeConventionForSwiftDevelopmentIsToFollowAppleSOwnCodingStyle"), .text("I then realized that the best code convention for Swift development is to follow Apple’s own coding style.")),
          .div(
            .class("Group9"),
            .div(.class("WriteSwiftLikeApple"), .text("Write Swift Like Apple.")),
            .img(.class("Image2"), .src("https://via.placeholder.com/219x162"))
          )
        ),
        .div(
          .class("Group9"),
          .div(.class("Rectangle2402")),
          .div(.class("IThenRealizedThatTheBestCodeConventionForSwiftDevelopmentIsToFollowAppleSOwnCodingStyle"), .text("I then realized that the best code convention for Swift development is to follow Apple’s own coding style.")),
          .div(
            .class("Group9"),
            .div(.class("WriteSwiftLikeApple"), .text("Write Swift Like Apple.")),
            .img(.class("Image2"), .src("https://via.placeholder.com/219x162"))
          )
        ),
        .div(.class("ToKnowMyReferences"), .text("To know my references")),
        .img(.class("Image"), .src("https://via.placeholder.com/256x331")),
        .img(.class("Image"), .src("https://via.placeholder.com/256x331")),
        .img(.class("Image"), .src("https://via.placeholder.com/256x331")),
        .img(.class("Image"), .src("https://via.placeholder.com/256x331")),
        .img(.class("Image"), .src("https://via.placeholder.com/256x331")),
        .div(
          .class("Group14"),
          .div(.class("Scroll"), .text("scroll")),
          .div(
            .class("CiChevronDown"),
            .div(.class("Vector"))
          )
        ),
        .div(
          .class("MadeByWesWithPublish"),
          .span(.text("made by Wes with ")),
          .span(.text("Publish"))
        )
      )
    )
  }
  
  func makeSectionHTML(for section: Section<West>,
                       context: PublishingContext<West>) throws -> HTML {
    HTML(
      .body(.h1("Section \(section.title)"))
    )
  }
  
  func makeItemHTML(for item: Item<West>,
                    context: PublishingContext<West>) throws -> HTML {
    HTML(
      .body(.h1("item.title"))
    )
  }
  
  func makePageHTML(for page: Page,
                    context: PublishingContext<West>) throws -> HTML {
    HTML(
      .body(.h1("page.title"))
    )
  }
  
  func makeTagListHTML(for page: TagListPage,
                       context: PublishingContext<West>) throws -> HTML? {
    nil
  }
  
  func makeTagDetailsHTML(for page: TagDetailsPage,
                          context: PublishingContext<West>) throws -> HTML? {
    nil
  }
}

private extension Node where Context == HTML.DocumentContext {
  static func head<T: Website>(
    for location: Location,
    stylesheetPaths: [String] = ["/styles.css", "https://fonts.googleapis.com/css?family=Courier+Prime&display=swap"],
    on site: T
  ) -> Node {
    var title: String {
      location.title.isEmpty ? site.name : location.title + " | " + site.name
    }
    
    var description: String {
      location.description.isEmpty ? site.description : location.description
    }
    
    return .head(
      .encoding(.utf8),
      .siteName(site.name),
      .url(site.url(for: location)),
      .title(title),
      .description(description),
      .twitterCardType(location.imagePath == nil ? .summary : .summaryLargeImage),
      .forEach(stylesheetPaths, { .stylesheet($0) }),
      .viewport(.accordingToDevice),
      .unwrap(site.favicon, { .favicon($0) }),
      .unwrap(location.imagePath ?? site.imagePath, { path in
        let url = site.url(for: path)
        return .socialImageLink(url)
      })
    )
  }
}
