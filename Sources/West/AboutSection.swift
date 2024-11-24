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
    )
  }
}
