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
        .makeSection(.about),
        .div(
          .class("Group14"),
          .div(.class("Scroll"), .text("scroll")),
          .div(
            .class("CiChevronDown"),
            .div(.class("Vector"))
          )
        ),
        .makeSection(.app),
        .makeSection(.articles),
        .makeSection(.favoriteBooks),
        .div(
          .class("MadeByWesWithPublish"),
          .span(.text("made by Wes with ")),
          .span(.text("Publish"))
        )
      )
    )
  }
}

extension Node where Context == HTML.BodyContext {
  static func makeSection(_ section: West.SectionID) -> Self {
    switch section {
    case .about: .aboutSection()
    case .app: .appSection()
    case .articles: .articleSection()
    case .favoriteBooks: .bookSection()
    }
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

extension WestHTMLFactory {
  func makeSectionHTML(for section: Section<West>, context: PublishingContext<West>) throws -> HTML {
    HTML(.body(.div("Stub")))
  }
  func makeItemHTML(for item: Item<West>, context: PublishingContext<West>) throws -> HTML {
    HTML(.body(.div("Stub")))
  }
  func makePageHTML(for page: Page, context: PublishingContext<West>) throws -> HTML {
    HTML(.body(.div("Stub")))
  }
  func makeTagListHTML(for page: TagListPage, context: PublishingContext<West>) throws -> HTML? { nil }
  func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<West>) throws -> HTML? { nil }
}
