//
//  ArticleSection.swift
//
//
//  Created by Uwais Alqadri on 24/11/24.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
  static func articleSection() -> Self {
    .div(
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
      )
    )
  }
}
