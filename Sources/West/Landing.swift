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
  var tabs: [String] = [
    "About  ",
    "Resume ",
    "App  ",
    "Articles ",
    "Favorite Books",
  ]
  
  func makeIndexHTML(for index: Index,
                     context: PublishingContext<West>) throws -> HTML {
    HTML(
      .head(for: index, on: context.site),
      .body(
        .div(
          .class("container"),
          .forEach(tabs) { tab in
              .span(.class("tab"), .text(tab))
          },
          .div(
            .class("v1553_40"),
            .div(.class("v1553_4")),
            .span(
              .class("description"),
              .text("A passionate Mobile Software Engineer with a strong background in Swift (Apple Platforms) and Kotlin (Android, Kotlin Multiplatform). Learned coding in high school and expanded his skills through self-learning on the Internet, getting his first job as a Software Engineer six months before graduating from high school.")
            )
          ),
          .div(
            .class("btn-container"),
            .span(.class("btn-contact"), .text("Contact Me"))
          )
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
