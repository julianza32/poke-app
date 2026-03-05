import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localizations/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es')
  ];

  /// No description provided for @textWelcomeOnboardingOne.
  ///
  /// In en, this message translates to:
  /// **'All Pokémon in one place'**
  String get textWelcomeOnboardingOne;

  /// No description provided for @textParagraphOnboardingOne.
  ///
  /// In en, this message translates to:
  /// **'Access a wide list of Pokémon from all generations created by Nintendo'**
  String get textParagraphOnboardingOne;

  /// No description provided for @titleButtonOnboardingOne.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get titleButtonOnboardingOne;

  /// No description provided for @textWelcomeOnboardingTwo.
  ///
  /// In en, this message translates to:
  /// **'Keep your Pokédex up to date'**
  String get textWelcomeOnboardingTwo;

  /// No description provided for @textParagraphOnboardingTwo.
  ///
  /// In en, this message translates to:
  /// **'Sign up and save your profile, favorite Pokémon, settings, and much more in the app'**
  String get textParagraphOnboardingTwo;

  /// No description provided for @titleButtonOnboardingTwo.
  ///
  /// In en, this message translates to:
  /// **'Let\'s get started'**
  String get titleButtonOnboardingTwo;

  /// No description provided for @serchByType.
  ///
  /// In en, this message translates to:
  /// **'Search by type'**
  String get serchByType;

  /// No description provided for @regions.
  ///
  /// In en, this message translates to:
  /// **'Regions'**
  String get regions;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// No description provided for @height.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get height;

  /// No description provided for @abilities.
  ///
  /// In en, this message translates to:
  /// **'Abilities'**
  String get abilities;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @debilities.
  ///
  /// In en, this message translates to:
  /// **'Weaknesses'**
  String get debilities;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong...'**
  String get somethingWentWrong;

  /// No description provided for @canNotLoadInformation.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load the information at this time. Check your connection or try again later.'**
  String get canNotLoadInformation;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @noFoundItemsWithThisType.
  ///
  /// In en, this message translates to:
  /// **'No Pokémon found with this type'**
  String get noFoundItemsWithThisType;

  /// No description provided for @noFoundMore.
  ///
  /// In en, this message translates to:
  /// **'No more Pokémon found'**
  String get noFoundMore;

  /// No description provided for @noFavoritePokemons.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t marked any Pokémon as favorites'**
  String get noFavoritePokemons;

  /// No description provided for @noFavoritePokemonsParagraph.
  ///
  /// In en, this message translates to:
  /// **'Tap the heart icon on your favorite Pokémon and they will appear here.'**
  String get noFavoritePokemonsParagraph;

  /// No description provided for @noDescriptionAvailable.
  ///
  /// In en, this message translates to:
  /// **'No description available'**
  String get noDescriptionAvailable;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @commingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon!'**
  String get commingSoon;

  /// No description provided for @weAreWorkingOnThisSection.
  ///
  /// In en, this message translates to:
  /// **'We are working to bring you this section. Come back later to discover all the updates.'**
  String get weAreWorkingOnThisSection;

  /// No description provided for @normal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get normal;

  /// No description provided for @fighting.
  ///
  /// In en, this message translates to:
  /// **'Fighting'**
  String get fighting;

  /// No description provided for @flying.
  ///
  /// In en, this message translates to:
  /// **'Flying'**
  String get flying;

  /// No description provided for @poison.
  ///
  /// In en, this message translates to:
  /// **'Poison'**
  String get poison;

  /// No description provided for @ground.
  ///
  /// In en, this message translates to:
  /// **'Ground'**
  String get ground;

  /// No description provided for @rock.
  ///
  /// In en, this message translates to:
  /// **'Rock'**
  String get rock;

  /// No description provided for @bug.
  ///
  /// In en, this message translates to:
  /// **'Bug'**
  String get bug;

  /// No description provided for @ghost.
  ///
  /// In en, this message translates to:
  /// **'Ghost'**
  String get ghost;

  /// No description provided for @steel.
  ///
  /// In en, this message translates to:
  /// **'Steel'**
  String get steel;

  /// No description provided for @fire.
  ///
  /// In en, this message translates to:
  /// **'Fire'**
  String get fire;

  /// No description provided for @water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get water;

  /// No description provided for @grass.
  ///
  /// In en, this message translates to:
  /// **'Grass'**
  String get grass;

  /// No description provided for @electric.
  ///
  /// In en, this message translates to:
  /// **'Electric'**
  String get electric;

  /// No description provided for @psychic.
  ///
  /// In en, this message translates to:
  /// **'Psychic'**
  String get psychic;

  /// No description provided for @ice.
  ///
  /// In en, this message translates to:
  /// **'Ice'**
  String get ice;

  /// No description provided for @dragon.
  ///
  /// In en, this message translates to:
  /// **'Dragon'**
  String get dragon;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @fairy.
  ///
  /// In en, this message translates to:
  /// **'Fairy'**
  String get fairy;

  /// No description provided for @filterByPreferences.
  ///
  /// In en, this message translates to:
  /// **'Filter by your preferences'**
  String get filterByPreferences;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
