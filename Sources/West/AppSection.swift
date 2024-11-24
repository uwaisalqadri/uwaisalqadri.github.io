//
//  AppSection.swift
//
//
//  Created by Uwais Alqadri on 24/11/24.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
  static func appSection() -> Self {
    .div(
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
          .img(.class("AppIcon2"), .src("images/app-giffy")),
          .div(.class("Rectangle2400")),
          .div(
            .class("Group"),
            .div(.class("Vector")),
            .div(.class("Vector"))
          )
        ),
        .img(.class("1"), .src("images/app-in-os")),
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
      )
    )
  }
}
