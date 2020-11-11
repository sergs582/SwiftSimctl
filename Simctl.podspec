# frozen_string_literal: true

Pod::Spec.new do |spec|
  spec.name = 'Simctl'
  spec.version = '0.2.1'
  spec.summary = 'Swift client-server tool to call xcrun simctl from your simulator. Automate push notification testing!'
  spec.description = <<-DESC
   This is a small tool (SimctlCLI) and library (Simctl), written in Swift, to automate xcrun simctl commands for Simulator in unit and UI tests.
   It enables, among other things, reliable fully automated testing of Push Notifications with dynamic content, and driven by a UI Test you control.
  DESC
  spec.homepage = 'https://github.com/ctreffs/SwiftSimctl'
  spec.screenshots = 'https://raw.githubusercontent.com/ctreffs/SwiftSimctl/master/docs/SimctlExample.gif'
  spec.author = { 'Christian Treffs' => 'ctreffs@gmail.com' }
  spec.social_media_url = 'https://twitter.com/chrisdailygrind'
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.source = { git: 'https://github.com/ctreffs/SwiftSimctl.git', tag: spec.version.to_s }
  spec.swift_version = '4.2'
  spec.requires_arc = true
  spec.exclude_files = '.swift-version'
  spec.preserve_paths = 'bin/*'
  spec.resource_bundles = {
    'SimctlCLI' => ['bin/SimctlCLI']
  }
  spec.source_files = 'Sources/Simctl/**/*.swift'
  spec.ios.dependency 'Swifter', '~> 1.5'
  spec.ios.framework = 'UIKit'
  spec.ios.deployment_target = '10.0'
end
