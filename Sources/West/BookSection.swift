//
//  BookSection.swift
//
//
//  Created by Uwais Alqadri on 24/11/24.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
  static func bookSection() -> Self {
    .div(
      .div(.class("ToKnowMyReferences"), .text("To know my references")),
      .img(.class("Image"), .src("https://via.placeholder.com/256x331")),
      .img(.class("Image"), .src("https://via.placeholder.com/256x331")),
      .img(.class("Image"), .src("https://via.placeholder.com/256x331")),
      .img(.class("Image"), .src("https://via.placeholder.com/256x331")),
      .img(.class("Image"), .src("https://via.placeholder.com/256x331"))
    )
  }
}
