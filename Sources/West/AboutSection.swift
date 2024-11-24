//
//  AboutSection.swift
//  
//
//  Created by Uwais Alqadri on 24/11/24.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
  static func aboutSection() -> Self {
    .div(
      .class("about-section"),
      .div(
        .class("all-me-container"),
        .img(.class("avatar"), .src("images/avatar.png")),
        .div(
          .class("me-container"),
          .div(
            .class("my-name-age"),
            .text("Uwais Alqadri [20]")
          ),
          .div(
            .class("description"),
            .span(
              .text("A passionate Mobile Software Engineer with a strong background in ")
            ),
            .span(
              .class("description-swift"),
              .text("Swift")
            ),
            .span(
              .text(" (Apple Platforms) and ")
            ),
            .span(
              .class("description-kotlin"),
              .text("Kotlin")
            ),
            .span(
              .text(" (Android, Kotlin Multiplatform). Learned coding in high school and expanded his skills through self-learning on the Internet, getting his first job as a Software Engineer six months before graduating from high school.")
            )
          ),
          .div(
            .class("button-container"),
            .button(.class("primary-button"), .text("Reach Me")),
            .button(.class("secondary-button"), .text("Resume")),
            .button(.class("secondary-button"), .text("Portfolio"))
          )
        )
      )
    )
  }
}
