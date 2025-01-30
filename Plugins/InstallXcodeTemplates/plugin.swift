//
//  plugin.swift
//  XcodeTemplates
//
//  Created by ryo hirota on 2025/01/30.
//

import PackagePlugin
import Foundation

@main
struct InstallXcodeTemplates: CommandPlugin {
    func performCommand(context: PluginContext, arguments: [String]) throws {
        let templatesDir = "\(context.package.directory)/Templates"
        let destinationDir = "\(NSHomeDirectory())/Library/Developer/Xcode/Templates"

        let fileManager = FileManager.default
        do {
            if !fileManager.fileExists(atPath: destinationDir) {
                try fileManager.createDirectory(atPath: destinationDir, withIntermediateDirectories: true, attributes: nil)
            }

            for template in try fileManager.contentsOfDirectory(atPath: templatesDir) {
                let srcPath = "\(templatesDir)/\(template)"
                let destPath = "\(destinationDir)/\(template)"
                if fileManager.fileExists(atPath: destPath) {
                    try fileManager.removeItem(atPath: destPath)
                }
                try fileManager.copyItem(atPath: srcPath, toPath: destPath)
            }
            print("✅ Xcode テンプレートをインストールしました！")
        } catch {
            print("❌ テンプレートのインストールに失敗しました: \(error)")
        }
    }
}

