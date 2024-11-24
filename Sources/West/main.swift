import Foundation
import Publish
import Plot

struct West: Website {
  enum SectionID: String, WebsiteSectionID {
    case about
    case app
    case articles
    case favoriteBooks
  }
  
  struct ItemMetadata: WebsiteItemMetadata { }
  
  var url = URL(string: "https://uwaisalqadri.github.io")!
  var name = "Uwais Alqadri"
  var description = "A passionate Mobile Software Engineer."
  var language: Language { .english }
  var imagePath: Path? { "images/person.png" }
}

try West().publish(using: [
  .copyResources(at: "Images", to: "images"),
  .addMarkdownFiles(),
  .generateHTML(withTheme: .west),
  .generateSiteMap()
])
