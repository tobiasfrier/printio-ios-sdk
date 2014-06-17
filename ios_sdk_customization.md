# Developer SDK Customization Reference

## XML Customization file

Path to XML customization file for setting background and font colors on buttons

| Parameter/Method | Options - Details |
| :---- | :---- |
| `customizationXML` | Specify path to XML file in application |

### Code example

```Objective-C
NSString *xmlPath = [[NSBundle mainBundle] pathForResource:@"customization" ofType:@"xml"];
NSData *xmlData = [NSData dataWithContentsOfFile:xmlPath];
[self.printIO customizationXML:xmlData];
```

---

## Status Bar Settings

Set status bar theme and display options.  statusBarDark being set to YES will result in the status bar icons and text being rendered in black (and the opposite results in white).  Setting the status bar to hidden will hide it from the user for a full-screen experience.  

| Parameter/Method | Options - Details |
| :---- | :---- |
| `statusBarDark` | YES, NO |
| `hidden` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO statusBarDark:NO hidden:YES];
```

### Screenshots

| Hidden | Visible - Dark Text | Visible - Light Text |
| :---- | :---- | :---- |
| [![Status Bar - Hidden](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/statusBar_hide.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/statusBar_hide.png) | [![Status Bar - Visible - Dark text](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/statusBar_show-dark.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/statusBar_show-dark.png) | [![Status Bar - Visible - Light Text](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/statusBar_show-light.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/statusBar_show-light.png) |

_Note: The status bar background in the "light text" example was changed only to make the text clear.  The ability to change the background is available through the [`navigationBarColor` settings](#navigation-bar-settings)_

---

## Navigation Bar Settings

Customize top navigation bar colors and set an icon for the center to replace the page title.  If titleButtonIcon is nil, current page title will be shown.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `navigationBarColor` | Specify color |
| `titleColor` | Specify color |
| `leftButtonBackgroundColor` | Specify color |
| `rightButtonBackgroundColor` | Specify color |
| `titleButtonIcon` |  Specify image in application for center button |

### Code Sample

``` Objective-C
[self.printIO navigationBarColor:[UIColor whiteColor]
                      titleColor:[UIColor blackColor]
       leftButtonBackgroundColor:nil
      rightButtonBackgroundColor:nil
                 titleButtonIcon:[[NSBundle mainBundle] pathForResource:@"icon" ofType:@"png"] : nil];
```

### Screenshots

| Custom Color | Custom Menu Icon |
|  :---- | :---- |
| [![Custom navigation bar color](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/navigationBarColor_custom.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/navigationBarColor_custom.png) |  [![Alternate title button icon ](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/titleButtonIcon.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/titleButtonIcon.png) |

---

## User Three-button Menu Bar

Include a "Back", "Menu" and "Cart" button in the top nav along with the location text.  The default is NO.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `useThreeButtonsBarStyle` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO useThreeButtonsBarStyle:YES];
```

### Screenshots

| Default | 3-Button Menu Bar |
| :---- | :---- |
| [![Disable Three-button Menu Bar](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/useThreeButtonsBarStyle_no.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/useThreeButtonsBarStyle_no.png) |  [![Enable Three-button Menu Bar](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/useThreeButtonsBarStyle_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/useThreeButtonsBarStyle_yes.png) |

---

## Slide Side Menu from right side

Override side menu behavior to slide from right side instead of left side

| Parameter/Method | Options - Details |
| :---- | :---- |
| `slideSideMenuFromRight` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO slideSideMenuFromRight:YES];
```

### Screenshots

| Menu Closed | Menu Open |
| :---- | :---- |
| [![Slide Side Menu from Right - Closed](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/slideSideMenuFromRight_closed.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/slideSideMenuFromRight_closed.png) |  [![Slide Side Menu from Right - Open](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/slideSideMenuFromRight_open.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/slideSideMenuFromRight_open.png) |

---

## Set Back button icon

Specify an image file to use as the Back button in the top nav

| Parameter/Method | Options - Details |
| :---- | :---- |
| `iconForBackButton` | Specify image file in application |

### Code Sample

``` Objective-C
[self.printIO iconForBackButton:[[NSBundle mainBundle]pathForResource:@"mg_back_new" ofType:@"png"]];
```

### Screenshots

| Default | Custom |
| :---- | :---- |
| [![Default Back button icon](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/iconForBackButton_default.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/iconForBackButton_default.png) | [![Custom Back button icon](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/iconForBackButton_custom.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/iconForBackButton_custom.png) |

---

## Custom Fonts

Set custom fonts across the application  (must include 4; can repeat; and array order corresponds to Light, Medium, Regular, Bold)

| Parameter/Method | Options - Details |
| :---- | :---- |
| `customFonts` | Any 4 .ttf or .otf files included in application |

### Code Sample

``` Objective-C
NSArray *fonts = @[@"timess.ttf", @"timess.ttf", @"aubrey.ttf", @"CaviarDreams_Bold.ttf"]; [self.printIO customFonts:fonts];
```

### Screenshots

| Default | Custom Fonts |
| :---- | :---- |
| [![Default Fonts](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/customFonts_default.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/customFonts_default.png) | [![Custom Fonts](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/customFonts_custom.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/customFonts_custom.png) |

---

## Loading GIF

Change the loading GIF from the default

| Parameter/Method | Options - Details |
| :---- | :---- |
| `setLoadingGIF` | Specify GIF included in application |

### Code Sample

``` Objective-C
[self.printIO setLoadingGIF:@"load"];
```

### Screenshots

| Default | Custom Loading GIF |
| :---- | :---- |
| [![Default Loading GIF](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setLoadingGIF_default.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setLoadingGIF_default.png) | [![Custom Loading GIF](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setLoadingGIF_custom.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setLoadingGIF_custom.png) |

---

## Specify Localizations

Specify one or more of currency, language and country, which overrides the ability to select a different options from the side menu.  A specified country also overrides the ability to select a different option in the Featured Product view, if it's enabled)

| Parameter/Method | Options - Details |
| :---- | :---- |
| `currencyCode` | Three-letter currency code |
| `languageCode` | Two-letter language code |
| `countryCode` | Two-letter country code |

### Code Sample

``` Objective-C
[self.printIO currencyCode:@"USD"];
[self.printIO languageCode:@"en"];
[self.printIO countryCode:@"US"];
```

### Screenshots

| Default | Currency Pre-set | Language Pre-set |
| :---- | :---- | :---- |
[![Default Localization](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setLocalizationCode_default.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setLocalizationCode_default.png) | [![Only Currency specified](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setLocalizationCode_currency.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setLocalizationCode_currency.png) | [![Only Language specified](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setLocalizationCode_language.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setLocalizationCode_language.png) |

| Country Pre-set | Multiple Pre-set |
| :---- | :---- |
| [![Only Country specified](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setLocalizationCode_country.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setLocalizationCode_country.png) | [![Multiple Localizations Specified](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setLocalizationCode_multi.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setLocalizationCode_multi.png) |

---

## Select Country Bar

Allow user to change country in featured products view

| Parameter/Method | Options - Details |
| :---- | :---- |
| `selectCountryInFeaturedProducts` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO selectCountryInFeaturedProducts:NO];
```

### Screenshots

| Default | Enabled |
| :---- | :---- |
| [![Country Selection in Featured Products Disabled](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/selectCountryInFeaturedProducts_no.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/selectCountryInFeaturedProducts_no.png) | [![Country Selection in Featured Products Enabled](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/selectCountryInFeaturedProducts_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/selectCountryInFeaturedProducts_yes.png) |

---

## Category Control Bar Visibile

Hide Category/Search view in Featured Products screen.  Default is NO

| Parameter/Method | Options - Details |
| :---- | :---- |
| `hideCategoriesInFeaturedProducts` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO hideCategoriesInFeaturedProducts:NO];
```

### Screenshots

| Default | Hidden |
| :---- | :---- |
| [![Show Categories in Featured Products](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/hideCategoriesInFeaturedProducts_no.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/hideCategoriesInFeaturedProducts_no.png) | [![Hide Categories in Featured Products](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/hideCategoriesInFeaturedProducts_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/hideCategoriesInFeaturedProducts_yes.png) |

---

## Auto-arrange Photos

Set whether photos are arranged automatically, manually, or up to the user (default is CHOOSE)

| Parameter/Method | Options - Details |
| :---- | :---- |
| `setPhotoArrangement` | `PIO_PHOTO_ARRANGEMENT_CHOOSE`, `PIO_PHOTO_ARRANGEMENT_AUTO`, `PIO_PHOTO_ARRANGEMENT_MANUAL` |

### Code Sample

``` Objective-C
[self.printIO setPhotoArrangement:PIO_PHOTO_ARRANGEMENT_AUTO];
```

### Screenshots

| Default | Auto-arrange | Manual Arrange |
| :---- | :---- | :---- |
| [![Photo Arrangement - User Choice](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setPhotoArrangement_choose.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setPhotoArrangement_choose.png) |  [![Photo Arrangement - Automatic](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setPhotoArrangement_auto.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setPhotoArrangement_auto.png) | [![Photo Arrangement - Manual](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setPhotoArrangement_manual.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setPhotoArrangement_manual.png) |

---

## Custom Editing Help Button icon

Show custom help overlay when user is about to start editing image in Customize Product view.  No default included, setting an available image enables this feature.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `showHelpDialogWithImage` | Specify image included in application |

### Code Sample

``` Objective-C
[self.printIO showHelpDialogWithImage:[[NSBundle mainBundle] pathForResource:@"touch" ofType:@"png"]];
```

---

## Set Add Photos button icon

Specify an image file to use as the Add Photos button in the Customize Product view

| Parameter/Method | Options - Details |
| :---- | :---- |
| `iconForAddPhotosButton` | Specify image file in application |

### Code Sample

``` Objective-C
[self.printIO iconForAddPhotosButton:[[NSBundle mainBundle]pathForResource:@"mg_add_photos" ofType:@"png"]];
```

### Screenshots

| Default | Custom Button |
| :---- | :---- |
| [![Default Add Photo button](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/iconForAddPhotosButton_default.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/iconForAddPhotosButton_default.png) | [![Custom Add Photo button](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/iconForAddPhotosButton_custom.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/iconForAddPhotosButton_custom.png) |

---

## Toolbar Visible

Set visibility of toolbar in customize product view.  Default is YES, and which editing tools are shown is also configurable using the PIO_BUTTON_IMAGE_EDITOR settings

| Parameter/Method | Options - Details |
| :---- | :---- |
| `showToolbarInCustomizeProduct` | YES,NO and Specify image included in application if desired |

### Code Sample

``` Objective-C
[self.printIO showToolbarInCustomizeProduct:YES backgroundImage:nil];
```

### Screenshots

| Default | Hidden |
| :---- | :---- |
| [![Show Editing Toolbar in Customize Product View](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/showToolbarInCustomizeProduct_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/showToolbarInCustomizeProduct_yes.png) | [![Show Editing Toolbar in Customize Product View](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/showToolbarInCustomizeProduct_no.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/showToolbarInCustomizeProduct_no.png) |

---

## Images List Visible

Set visibility of images list in customize product view

| Parameter/Method | Options - Details |
| :---- | :---- |
| `hideImageListInCustomizeProduct` | YES,NO |

### Code Sample

``` Objective-C
[self.printIO hideImagesListInCustomizeProduct:NO];
```

### Screenshots

| Default | Hidden |
| :---- | :---- |
| [![Show Images List in Customize Products](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/hideImageListInCustomizeProduct_no.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/hideImageListInCustomizeProduct_no.png) | [![Hide Images List in Customize Products](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/hideImageListInCustomizeProduct_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/hideImageListInCustomizeProduct_yes.png) |

---

## Cart Icon and Badging

Change shopping cart icon and indicate whether to badge with number of products

| Parameter/Method | Options - Details |
| :---- | :---- |
| `iconForShoppingCart` | Specify image included in application |
| `withNumberOfProducts` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO iconForShoppingCart:[[NSBundle mainBundle]pathForResource:@"pb_icon_cart_black" ofType:@"png"] withNumberOfProducts:YES];
```

### Screenshots

| Default | Custom Icon |
| :---- | :---- |
| [![Default Shopping Cart Icon](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/iconForShoppingCart_default-badged.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/iconForShoppingCart_default-badged.png) | [![Custom Shopping Cart Icon](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/iconForShoppingCart_custom-badged.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/iconForShoppingCart_custom-badged.png) |

---

## Set Logo

Change Logo icon which is used on cart and confirmation screens

| Parameter/Method | Options - Details |
| :---- | :---- |
| `go` | Specify image included in application |

### Code Sample

``` Objective-C
[self.printIO changeLogo:@"icon1"];
```

### Screenshots

| Default | Custom |
| :---- | :---- |
| [![Default Logo](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/changeLogo_no.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/changeLogo_no.png) | [![Custom Logo](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/changeLogo_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/changeLogo_yes.png) |

---

## Remove Logo from Checkout

Hide logo when user is in checkout flow

| Parameter/Method | Options - Details |
| :---- | :---- |
| `removeLogoFromPaymentScreen` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO removeLogoFromPaymentScreen:YES];
```

### Screenshots

| Default | Hidden |
| :---- | :---- |
| [![Show Logo in Checkout](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/removeLogoFromPaymentScreen_no.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/removeLogoFromPaymentScreen_no.png) | [![Remove Logo from Checkout](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/removeLogoFromPaymentScreen_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/removeLogoFromPaymentScreen_yes.png) |

---

## Configure Add More Products button

Remove plus sign from 'Add More Products' button

| Parameter/Method | Options - Details |
| :---- | :---- |
| `removePlusFromAddMoreProductsButton` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO removePlusFromAddMoreProductsButton:YES];
```

### Screenshots

| Default | Hidden |
| :---- | :---- |
| [![Include Plus on Add More Products Button](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/removePlusFromAddMoreProductsButton_no.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/removePlusFromAddMoreProductsButton_no.png) | [![Remove Plus from Add More Products Button](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/removePlusFromAddMoreProductsButton_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/removePlusFromAddMoreProductsButton_yes.png) |

---

## Configure Photo Sources

Required step to configure which photo sources you would like to offer within your application.  The order in which you include the photo sources will determine the order in which they are displayed for both the side menu and select photo sources step within the Customize Product view.  The iOS Camera Roll is not displayed in the side menu.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `availablePhotoSources` | Include one or more PIO_SM_PHOTOSOURCES |
| `PIO_SM_PHONE` | include the iOS Camera Roll |
| `PIO_SM_INSTAGRAM` | include Instagram |
| `PIO_SM_FACEBOOK` | include Facebook |
| `PIO_SM_PICASA` | include Picasa |
| `PIO_SM_FLICKR` | include Flickr |
| `PIO_SM_DROPBOX` | include Dropbox |
| `PIO_SM_PHOTOBUCKET`| include Photobucket |

### Code Sample

``` Objective-C
NSMutableArray *photoSources = [[NSMutableArray alloc]init];  

[photoSources addObject:[[PIOSideMenuButton alloc]initWithType:PIO_SM_PHONE]];
[photoSources addObject:[[PIOSideMenuButton alloc]initWithType:PIO_SM_INSTAGRAM]];
[photoSources addObject:[[PIOSideMenuButton alloc]initWithType:PIO_SM_FACEBOOK]];
[photoSources addObject:[[PIOSideMenuButton alloc]initWithType:PIO_SM_PICASA]];
[photoSources addObject:[[PIOSideMenuButton alloc]initWithType:PIO_SM_FLICKR]];
[photoSources addObject:[[PIOSideMenuButton alloc]initWithType:PIO_SM_DROPBOX]];
[photoSources addObject:[[PIOSideMenuButton alloc]initWithType:PIO_SM_PHOTOBUCKET]];  

[self.printIO availablePhotoSources:photoSources];
```

### Screenshots

#### Side Menu Photo Sources

| Include All | Change Order | Include Some |
| :---- | :---- | :---- |
| [![Side Menu - Include All Sources](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/availablePhotoSources_side-menu_include-all.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/availablePhotoSources_side-menu_include-all.png) | [![Side Menu - Change Source  Order](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/availablePhotoSources_side-menu_change-order.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/availablePhotoSources_side-menu_change-order.png) | [![Side Menu - Include Select Sources ](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/availablePhotoSources_side-menu_include-fewer.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/availablePhotoSources_side-menu_include-fewer.png) |

_Note: The iOS Camera Roll will not be displayed in this view_

#### Customize Product Photo Sources

| Include All | Change Order | Include Some |
| :---- | :---- | :---- |
| [![Customize Product - Include All Sources](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/availablePhotoSources_customize-product_include-all.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/availablePhotoSources_customize-product_include-all.png) | [![Customize Product - Change Source Order](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/availablePhotoSources_customize-product_change-order.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/availablePhotoSources_customize-product_change-order.png) | [![Customize Product - Include Select Sources](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/availablePhotoSources_customize-product_include-fewer.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/availablePhotoSources_customize-product_include-fewer.png) |

_Note: Only 6 photo sources can be displayed in this view, including the iOS Camera Roll_

---

## Pass photo to SDK

It is possible to pass one or more photos directly into the application.  This is helpful when you would like to sell a prints from specific asset or group of assets.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `images` | Specify image or photo url in application |

### Code Sample

``` Objective-C
UIImage *image1 = [UIImage imageNamed:@"dream.jpg"];
UIImage *image2 = [UIImage imageNamed:@"thunder.jpg"];
NSArray *images = [NSArray arrayWithObjects:image1, image2, nil];
[self.printIO images:images];
```

---

## Photo Source Visibility - Passing any

When passing one or more photos to the SDK, you can disable photo sources so that the user may only select from the images you've provided.  The result of this setting is that photo sources will not be available in the side menu and the photo source step will be skipped in the customize product view.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `disablePhotoSourcesWhenImagesArePassedIn` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO disablePhotoSourcesWhenImagesArePassedIn:NO];
```

---

## Photo Source Visibility - Passing for Single Photo Template

When passing a photo to the SDK, you can disable the photo source step within the customize product view when a user selects the single photo template.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `disablePhotoSourcesForOnePhotoTemplate` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO disablePhotoSourcesForOnePhotoTemplate:YES];
```

---

## Set Passed Image as Thumbnail

Set the passed image as the thumbnail for the single photo template on the customize product view.  This is currently supported for Canvas Wraps and Framed Prints

| Parameter/Method | Options - Details |
| :---- | :---- |
| `setPassedImageAsThumbForOnePhotoTemplate` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO setPassedImageAsThumbForOnePhotoTemplate:YES];
```

### Screenshots

| Passed Photo | Photo as Thumb |
| :---- | :---- |
| ![Passed Photo](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/passed_photo.jpg) | [![Set Passed Image as Thumb for Single Photo Template](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setPassedImageAsThumbForOnePhotoTemplate.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setPassedImageAsThumbForOnePhotoTemplate.png) |

---

## Side Menu Controls

To enable the side menu, simply include the default method below and pass `nil` for the configuration options.  To customize the side menu icon, pass an image to the method.  To set the background color, just pass a color value to the method.  If `nil` for either, a default will be used instead.  This step is required to configure following side menu options.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `useSideMenuWithMenuIcon` | `nil`, specify image in application for menu icon |
| `background` | `nil`, specify color for side menu background |

### Code Sample

``` Objective-C
// Enable default side menu with no customization
[self.printIO useSideMenuWithMenuIcon:nil background:nil];

// Enable custom side menu with specific menu icon and background color
[self.printIO useSideMenuWithMenuIcon:[[NSBundle mainBundle]pathForResource:@"pb_menu" ofType:@"png"] background:[UIColor colorWithRed:26.0/255.0 green:188.0/255.0 blue:156.0/255.0 alpha:255.0/255.0]];
```

### Screenshots

| Default | Custom Icon/Color |
| :---- | :---- |
| [![Default Side Menu options](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/useSideMenuWithMenuIcon_default.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/useSideMenuWithMenuIcon_default.png) | [![Custom Side Menu options](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/useSideMenuWithMenuIcon_custom.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/useSideMenuWithMenuIcon_custom.png) |

---

## Configure Side Menu Buttons

Create array of buttons, which will be displayed in the upper section of the side menu.  The button display order in the application will correspond to their place in the array.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `PIO_SM_SEARCH_BAR` | include Search field |
| `PIO_SM_EXIT_BUTTON` | include Exit Application button |
| `PIO_SM_PRODUCTS` | include Products button |
| `PIO_SM_FEATURED_PRODUCTS` | include Featured Products button |
| `PIO_SM_VIEW_CART` | include Shopping Cart button |

### Code Sample

``` Objective-C
NSArray *buttons = [NSArray arrayWithObjects:  
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_SEARCH_BAR],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_EXIT_BUTTON],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_PRODUCTS],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_FEATURED_PRODUCTS],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_VIEW_CART], nil];
```

### Screenshots

| Include All | Change Order | Include Some |
| :---- | :---- | :---- |
| [![Side Menu buttons - Include All](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_buttons_include-all.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_buttons_include-all.png) | [![Side Menu buttons - Change Order](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_buttons_change-order.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_buttons_change-order.png) | [![Side Menu buttons - Include Select ](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_buttons_include-fewer.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_buttons_include-fewer.png) |

---

## Configure Side Menu Options

Create array of option buttons, which will be displayed in the middle section of the side menu.  The option button display order in the application will correspond to their place in the array.  Please note that these options will be overridden if you specify a currency, country or language elsewhere in your application.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `PIO_SM_CHANGE_CURRENCY` | include Change Currency button |
| `PIO_SM_CHANGE_COUNTRY` | include Change Country button |
| `PIO_SM_CHANGE_LANGUAGE` | include Change Language button |

NSArray *options = [NSArray arrayWithObjects:  
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_CHANGE_CURRENCY],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_CHANGE_COUNTRY],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_CHANGE_LANGUAGE]
nil];

### Screenshots

| Include All | Change Order | Include Some |
| :---- | :---- | :---- |
| [![Side Menu option buttons - Include All](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_options_include-all.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_options_include-all.png) | [![Side Menu option buttons - Change Order](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_options_change-order.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_options_change-order.png) | [![Side Menu option buttons - Include Select](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_options_include-fewer.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_options_include-fewer.png) |

---

## Photo Source menu items

_Please note that photo source button configuration is automatically set [based on the photo sources you include](#configure-photo-sources)_

---

## Configure Side Menu Info options

Create array of secondary info buttons, which will be displayed in the lower section of the side menu.  The info button display order in the application will correspond to their place in the array.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `PIO_SM_PRICING_CHART` | include Pricing Chart button |
| `PIO_SM_SHARE_APP` | include Share App button |
| `PIO_SM_LIKE_US_FB` | include Like Us on Facebook button |
| `PIO_SM_RATE_APP` | include Rate App button |
| `PIO_SM_ABOUT` | include About button |
| `PIO_SM_HOW_IT_WORKS` | include How it Works button |
| `PIO_SM_PAST_ORDERS` | include Past Orders button |

### Code Sample

``` Objective-C
NSArray *options = [NSArray arrayWithObjects:  
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_PRICING_CHART],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_SHARE_APP],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_LIKE_US_FB],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_RATE_APP],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_ABOUT],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_HOW_IT_WORKS],
    [[PIOSideMenuButton alloc]initWithType:PIO_SM_PAST_ORDERS], nil];
```

### Screenshots

| Include All | Change Order | Include Some |
| :---- | :---- | :---- |
| [![Side Menu info buttons - Include All](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_info_include-all.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_info_include-all.png) | [![Side Menu info buttons - Change Order](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_info_change-order.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_info_change-order.png) | [![Side Menu info buttons - Include Select](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_info_include-fewer.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_info_include-fewer.png) |

---

## Custom Share Text

Set the text to be included when a user clicks the Share this app button.  Note: This option is set outside of the side menu object.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `setShareText` | Text string, can include URL |

### Code Sample

``` Objective-C
[self.printIO setShareText:@"Check out this awesome app to print your photos with: https://itunes.apple.com/us/app/hellopics/id731593327?mt=8"];
```

### Screenshots

| Custom Share Text |
| :---- |
| [![Custom Share Text](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setShareText.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setShareText.png) |

---

## Construct Side Menu

After specifying your configuration for the different portions of the side menu, you need to build it with all of the assicated buttons, options, info items and labels.  You can also set a background image for your buttons.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `sideMenuAddButtons` |  |
| `options` | sets options section |
| `optionsTitle` | Text string for options label |
| `optionsTitleColor` | Text color for options label |
| `optionsColor` | Background color for options label |
| `accountsTitle` | Text string for accounts label |
| `accountsTitleColor` | Text color for accounts label |
| `accountsColor` | Background color for accounts label |
| `info` | sets info section |
| `infoTitle` | Text string for info label |
| `infoTitleColor` | Text color for info label |
| `infoColor` | Background color for info label |
| `backgroundImageForButtons` | Specify image in your application for button background |


### Code Sample

``` Objective-C
[self.printIO sideMenuAddButtons:buttons
                         options:options
                    optionsTitle:@"Options"
               optionsTitleColor:[UIColor whiteColor]
                    optionsColor:[UIColor colorWithRed:34.0/255.0 green:160.0/255.0 blue:221.0/255.0 alpha:255.0/255.0]
                   accountsTitle:@"Accounts"
              accountsTitleColor:[UIColor whiteColor]
                   accountsColor:[UIColor colorWithRed:26.0/255.0 green:188.0/255.0 blue:156.0/255.0 alpha:255.0/255.0]
                            info:infos
                       infoTitle:@"Info"
                  infoTitleColor:[UIColor whiteColor]
                       infoColor:[UIColor colorWithRed:100.0/255.0 green:106.0/255.0 blue:166.0/255.0 alpha:255.0/255.0]
       backgroundImageForButtons:nil];
```

### Screenshots

| Default | Custom |
| :---- | :---- |
| [![Default build of Side Menu](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_built_default.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_built_default.png) | [![Custom build of Side Menu](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/side-menu_built_custom.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/side-menu_built_custom.png) |

---

## Specify Terms & Conditions location

Enable the terms and conditions link form control on the payment page and specify the URL to be loaded (in Safari).  By default, the terms and conditions are not shown.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `termsAndConditionsURL` | Text string containing URL |

### Code Sample

``` Objective-C
[self.printIO termsAndConditionsURL:[NSURL URLWithString:@"http://www.wikihow.com/images/sampledocs/9/Terms-and-Conditions.txt"]];
```

### Screenshots

| Default | T&C Visible |
| :---- | :---- |
| [![Custom Terms & Conditions control](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/termsAndConditionsURL_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/termsAndConditionsURL_no.png) | [![Custom Terms & Conditions control](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/termsAndConditionsURL_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/termsAndConditionsURL_yes.png) |

---

## Set Help Icon

Specify an image file to use as the help icon in customize product view

| Parameter/Method | Options - Details |
| :---- | :---- |
| `iconForHelpButtonInCustomizeProduct` | Specify image file in application |

### Code Sample

``` Objective-C
[self.printIO iconForHelpButtonInCustomizeProduct:[[NSBundle mainBundle]pathForResource:@"mg_icon_question_mark" ofType:@"png"]];
```

### Screenshots

| Default | Custom Icon |
| :---- | :---- |
| [![Default Help button](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/iconForHelpButtonInCustomizeProduct_default.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/iconForHelpButtonInCustomizeProduct_default.png) | [![Custom Help button](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/iconForHelpButtonInCustomizeProduct_custom.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/iconForHelpButtonInCustomizeProduct_custom.png) |

---

## Upload Instructions icon visible

Hide icon for Upload Instructions text in Photo Sources screen. Default value is NO.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `hideIconForUploadInstructions` | YES, NO |

### Code Sample

``` Objective-C
[self.printIO hideIconForUplaodInstructions:YES];
```

### Screenshots

| Default | Visible |
| :---- | :---- |
| [![Show icon for upload instructions](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/hideIconForUplaodInstructions_no.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/hideIconForUplaodInstructions_no.png) | [![Hide icon for upload instructions](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/hideIconForUplaodInstructions_yes.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/hideIconForUplaodInstructions_yes.png) |

---

## Customize Help Balloon

Customize the help balloon on the Customize Product screen.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `setPopUpWithImage` | Specify image file in application |
| `text` | Text string for background |
| `textColor` | Specify color for text |

### Code Sample

``` Objective-C
[self.printIO setPopUpWithImage:[[NSBundle mainBundle]pathForResource:@"mg_double_tap_balloon" ofType:@"png"]
                           text:@"Double tap photo to edit"
                      textColor:[UIColor whiteColor]];
```

### Screenshots

| Default | Custom |
| :---- | :---- |
| [![Default Help Pop-up](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setPopUpWithImage_default.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setPopUpWithImage_default.png) | [![Custom Help Pop-up](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/setPopUpWithImage_custom.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/setPopUpWithImage_custom.png) |

---

## Configure Editing buttons

Set which buttons will be visible in Image Editor toolbar, display order in app will correspond to place in array. By default, all buttons are visible.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `imageEditorShowButtons` |  |
| `PIO_BUTTON_IMAGE_EDITOR_INFO` | include Info button |
| `PIO_BUTTON_IMAGE_EDITOR_ROTATE` | include Rotate button |
| `PIO_BUTTON_IMAGE_EDITOR_EDIT_TEXT` | include Text button |
| `PIO_BUTTON_IMAGE_EDITOR_EFFECTS` | include Effects button |

### Code Sample

``` Objective-C
NSArray *editButtons = [NSArray arrayWithObjects:  
    [[PIOButton alloc]initWithType:PIO_BUTTON_IMAGE_EDITOR_INFO],
    [[PIOButton alloc]initWithType:PIO_BUTTON_IMAGE_EDITOR_ROTATE],
    [[PIOButton alloc]initWithType:PIO_BUTTON_IMAGE_EDITOR_EDIT_TEXT],
    [[PIOButton alloc]initWithType:PIO_BUTTON_IMAGE_EDITOR_EFFECTS], nil];
[self.printIO imageEditorShowButtons:editButtons];
```

### Screenshots

| Include All | Change Order | Include Some |
| :---- | :---- | :---- |
| [![Editing buttons - Include All](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/imageEditorShowButtons_include-all.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/imageEditorShowButtons_include-all.png) | [![Editing buttons - Change Order](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/imageEditorShowButtons_change-order.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/imageEditorShowButtons_change-order.png) | [![Editing buttons - Show Select](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/sm/imageEditorShowButtons_include-fewer.png)](https://raw.githubusercontent.com/printdotio/printio-ios-sdk/gh-pages/images/imageEditorShowButtons_include-fewer.png) |

---

## Set PayPal Credentials

Set PayPal's client ids, for both modes, staging and production. Default values are client ids from PrintIO.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `setPayPalStagingClientID` | N/A |
| `productionClientID` | N/A |

### Code Sample

``` Objective-C
[self.printIO setPayPalStagingClientId:@"" productionClientId:@""];
```

---

## Set Braintree Credentials

Set Braintree encryption key for staging and production mode. By default, keys from Print.IO will be used.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `setBraintreeStagingEncryptionKey` | N/A |
| `productionEncryptionKey` | N/A |

### Code Sample

``` Objective-C
[self.printIO setBraintreeStagingEncryptionKey:@"" productionEncryptionKey:@""];
```

---

## SDK Opening Direction

Set opening transition direction when entering the Print.IO SDK.  Your options are to have it slide up from the bottom, or in from the right side.

| Parameter/Method | Options - Details |
| :---- | :---- |
| `openWithOption` | `PRINTIO_OPTION_PRESENT_VIEW_FROM_RIGHT`,  `PRINTIO_OPTION_PRESENT_VIEW_FROM_BOTTOM` |

---

## Open Print.IO

Open Print.IO with configured options (required)

| Parameter/Method | Options - Details |
| :---- | :---- |
| `open` | N/A |

### Code Sample

``` Objective-C
[self.printIO open];
```