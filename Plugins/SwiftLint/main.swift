//
//  main.swift
//  SwiftLintPlugin
//
//  Created by Tim Barrett on 6/22/22.
//

import PackagePlugin

@main
internal struct SwiftLintPlugin: BuildToolPlugin {
   internal func createBuildCommands(context: PluginContext, target: Target) async throws -> [Command] {
      [
         .buildCommand(
            displayName: "Running SwiftLint on \(target.name)",
            executable: try context.tool(named: "swiftlint").path,
            arguments: [
               "lint",
               "--in-process-sourcekit",
               "--config",
               "\(context.package.directory.string)/swiftlint.yml",
               "--path",
               target.directory.string
            ],
            environment: [:]
         )
      ]
   }
}
