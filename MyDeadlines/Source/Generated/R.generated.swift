//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 6 storyboards.
  struct storyboard {
    /// Storyboard `CreateTask`.
    static let createTask = _R.storyboard.createTask()
    /// Storyboard `Info`.
    static let info = _R.storyboard.info()
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `News`.
    static let news = _R.storyboard.news()
    /// Storyboard `TaskInfo`.
    static let taskInfo = _R.storyboard.taskInfo()
    /// Storyboard `Tasks`.
    static let tasks = _R.storyboard.tasks()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "CreateTask", bundle: ...)`
    static func createTask(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.createTask)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Info", bundle: ...)`
    static func info(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.info)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "News", bundle: ...)`
    static func news(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.news)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "TaskInfo", bundle: ...)`
    static func taskInfo(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.taskInfo)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "Tasks", bundle: ...)`
    static func tasks(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.tasks)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 5 colors.
  struct color {
    /// Color `AccentColor`.
    static let accentColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "AccentColor")
    /// Color `background`.
    static let background = Rswift.ColorResource(bundle: R.hostingBundle, name: "background")
    /// Color `placeholder`.
    static let placeholder = Rswift.ColorResource(bundle: R.hostingBundle, name: "placeholder")
    /// Color `primary`.
    static let primary = Rswift.ColorResource(bundle: R.hostingBundle, name: "primary")
    /// Color `title`.
    static let title = Rswift.ColorResource(bundle: R.hostingBundle, name: "title")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func accentColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accentColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "background", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func background(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.background, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "placeholder", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func placeholder(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.placeholder, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "primary", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func primary(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.primary, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "title", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func title(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.title, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 9 images.
  struct image {
    /// Image `apotLogo`.
    static let apotLogo = Rswift.ImageResource(bundle: R.hostingBundle, name: "apotLogo")
    /// Image `background`.
    static let background = Rswift.ImageResource(bundle: R.hostingBundle, name: "background")
    /// Image `check`.
    static let check = Rswift.ImageResource(bundle: R.hostingBundle, name: "check")
    /// Image `facebook`.
    static let facebook = Rswift.ImageResource(bundle: R.hostingBundle, name: "facebook")
    /// Image `list`.
    static let list = Rswift.ImageResource(bundle: R.hostingBundle, name: "list")
    /// Image `news`.
    static let news = Rswift.ImageResource(bundle: R.hostingBundle, name: "news")
    /// Image `safari`.
    static let safari = Rswift.ImageResource(bundle: R.hostingBundle, name: "safari")
    /// Image `telegram`.
    static let telegram = Rswift.ImageResource(bundle: R.hostingBundle, name: "telegram")
    /// Image `uncheck`.
    static let uncheck = Rswift.ImageResource(bundle: R.hostingBundle, name: "uncheck")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "apotLogo", bundle: ..., traitCollection: ...)`
    static func apotLogo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.apotLogo, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "background", bundle: ..., traitCollection: ...)`
    static func background(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.background, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "check", bundle: ..., traitCollection: ...)`
    static func check(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.check, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "facebook", bundle: ..., traitCollection: ...)`
    static func facebook(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.facebook, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "list", bundle: ..., traitCollection: ...)`
    static func list(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.list, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "news", bundle: ..., traitCollection: ...)`
    static func news(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.news, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "safari", bundle: ..., traitCollection: ...)`
    static func safari(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.safari, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "telegram", bundle: ..., traitCollection: ...)`
    static func telegram(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.telegram, compatibleWith: traitCollection)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "uncheck", bundle: ..., traitCollection: ...)`
    static func uncheck(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.uncheck, compatibleWith: traitCollection)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.info` struct is generated, and contains static references to 1 properties.
  struct info {
    struct uiApplicationSceneManifest {
      static let _key = "UIApplicationSceneManifest"
      static let uiApplicationSupportsMultipleScenes = false

      struct uiSceneConfigurations {
        static let _key = "UISceneConfigurations"

        struct uiWindowSceneSessionRoleApplication {
          struct defaultConfiguration {
            static let _key = "Default Configuration"
            static let uiSceneConfigurationName = infoPlistString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication", "Default Configuration"], key: "UISceneConfigurationName") ?? "Default Configuration"
            static let uiSceneDelegateClassName = infoPlistString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication", "Default Configuration"], key: "UISceneDelegateClassName") ?? "$(PRODUCT_MODULE_NAME).SceneDelegate"
            static let uiSceneStoryboardFile = infoPlistString(path: ["UIApplicationSceneManifest", "UISceneConfigurations", "UIWindowSceneSessionRoleApplication", "Default Configuration"], key: "UISceneStoryboardFile") ?? "News"

            fileprivate init() {}
          }

          fileprivate init() {}
        }

        fileprivate init() {}
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  /// This `R.nib` struct is generated, and contains static references to 4 nibs.
  struct nib {
    /// Nib `CreateTaskCell`.
    static let createTaskCell = _R.nib._CreateTaskCell()
    /// Nib `PostTableViewCell`.
    static let postTableViewCell = _R.nib._PostTableViewCell()
    /// Nib `TaskInfoCell`.
    static let taskInfoCell = _R.nib._TaskInfoCell()
    /// Nib `TasksCell`.
    static let tasksCell = _R.nib._TasksCell()

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "CreateTaskCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.createTaskCell) instead")
    static func createTaskCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.createTaskCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "PostTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.postTableViewCell) instead")
    static func postTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.postTableViewCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "TaskInfoCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.taskInfoCell) instead")
    static func taskInfoCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.taskInfoCell)
    }
    #endif

    #if os(iOS) || os(tvOS)
    /// `UINib(name: "TasksCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.tasksCell) instead")
    static func tasksCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.tasksCell)
    }
    #endif

    static func createTaskCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> CreateTaskCell? {
      return R.nib.createTaskCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? CreateTaskCell
    }

    static func postTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> PostTableViewCell? {
      return R.nib.postTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? PostTableViewCell
    }

    static func taskInfoCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> TaskInfoCell? {
      return R.nib.taskInfoCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? TaskInfoCell
    }

    static func tasksCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> TasksCell? {
      return R.nib.tasksCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? TasksCell
    }

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try nib.validate()
    #endif
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _TaskInfoCell.validate()
    }

    struct _CreateTaskCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "CreateTaskCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> CreateTaskCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? CreateTaskCell
      }

      fileprivate init() {}
    }

    struct _PostTableViewCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "PostTableViewCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> PostTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? PostTableViewCell
      }

      fileprivate init() {}
    }

    struct _TaskInfoCell: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "TaskInfoCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> TaskInfoCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? TaskInfoCell
      }

      static func validate() throws {
        if UIKit.UIImage(named: "t", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 't' is used in nib 'TaskInfoCell', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "title", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'title' is used in storyboard 'TaskInfoCell', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }

    struct _TasksCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "TasksCell"

      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> TasksCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? TasksCell
      }

      fileprivate init() {}
    }

    fileprivate init() {}
  }
  #endif

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try createTask.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try info.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try news.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try taskInfo.validate()
      #endif
      #if os(iOS) || os(tvOS)
      try tasks.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct createTask: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = CreateTaskViewController

      let bundle = R.hostingBundle
      let name = "CreateTask"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "primary", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'primary' is used in storyboard 'CreateTask', but couldn't be loaded.") }
          if UIKit.UIColor(named: "title", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'title' is used in storyboard 'CreateTask', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct info: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = InfoViewController

      let bundle = R.hostingBundle
      let infoViewController = StoryboardViewControllerResource<InfoViewController>(identifier: "InfoViewController")
      let name = "Info"

      func infoViewController(_: Void = ()) -> InfoViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: infoViewController)
      }

      static func validate() throws {
        if UIKit.UIImage(named: "facebook", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'facebook' is used in storyboard 'Info', but couldn't be loaded.") }
        if UIKit.UIImage(named: "safari", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'safari' is used in storyboard 'Info', but couldn't be loaded.") }
        if UIKit.UIImage(named: "telegram", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'telegram' is used in storyboard 'Info', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "background", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'background' is used in storyboard 'Info', but couldn't be loaded.") }
          if UIKit.UIColor(named: "primary", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'primary' is used in storyboard 'Info', but couldn't be loaded.") }
          if UIKit.UIColor(named: "title", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'title' is used in storyboard 'Info', but couldn't be loaded.") }
        }
        if _R.storyboard.info().infoViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'infoViewController' could not be loaded from storyboard 'Info' as 'InfoViewController'.") }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct news: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = NewsViewController

      let bundle = R.hostingBundle
      let name = "News"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "background", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'background' is used in storyboard 'News', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct taskInfo: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = TaskInfoViewController

      let bundle = R.hostingBundle
      let name = "TaskInfo"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "primary", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'primary' is used in storyboard 'TaskInfo', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }
    #endif

    #if os(iOS) || os(tvOS)
    struct tasks: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = TasksViewController

      let bundle = R.hostingBundle
      let name = "Tasks"

      static func validate() throws {
        if #available(iOS 11.0, tvOS 11.0, *) {
          if UIKit.UIColor(named: "background", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Color named 'background' is used in storyboard 'Tasks', but couldn't be loaded.") }
        }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}
