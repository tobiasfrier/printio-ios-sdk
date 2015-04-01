
Pod::Spec.new do |s|
    s.name             = "PrintIO"
    s.version          = "1.1.0"

    s.summary          = "SDK that enables the printing of any photo, from any source, onto any product!"
    s.homepage         = "http://www.print.io"
    s.license          = { :type => 'Commercial', :file => 'LICENSE.md' }
    s.author           = { "Mercurialol" => "dev.mercurial@gmail.com" }
    s.source           = { :git => "https://github.com/printdotio/printio-ios-sdk.git", :tag => '1.1.0'  }
    s.social_media_url = "https://twitter.com/printdotio"
    s.platform     = :ios, '6.1'
    s.requires_arc = true

    s.default_subspecs = 'Core', 'Text'

    s.subspec "Core" do |sc|
        sc.source_files = 'PrintIO.framework/Versions/A/Headers/PrintIO.h',
                          'PrintIO.framework/Versions/A/Headers/PIOButton.h',
                          'PrintIO.framework/Versions/A/Headers/PIOPublicConstants.h',
                          'PrintIO.framework/Versions/A/Headers/PIOSideMenuButton.h',
                          'PrintIO.framework/Versions/A/Headers/PIOVariantOption.h',
                          'PrintIO.framework/Versions/A/Headers/ProductIds.h',

                          'PrintIO.framework/Versions/A/Headers/PIODefaultPhotoSource.h',
                          'PrintIO.framework/Versions/A/Headers/PIODefaultPhotoSourceItem.h',
                          'PrintIO.framework/Versions/A/Headers/PIOPhotoSource.h',
                          'PrintIO.framework/Versions/A/Headers/PIOPhotoSourceItem.h',
                          'PrintIO.framework/Versions/A/Headers/PIOSessionManager.h',
                          'PrintIO.framework/Versions/A/Headers/PIOPhotoSourceItemImageDownloader.h'
        sc.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/**"',
                            'OTHER_LDFLAGS' => '-framework PrintIO'
                          }

        sc.resources = 'PrintIOBundle.bundle'
        sc.preserve_paths = 'PrintIO.framework/*'
        sc.vendored_frameworks = 'PrintIO.framework'
        sc.frameworks = 'Accounts',
                        'Accelerate',
                        'AddressBook',
                        'AddressBookUI',
                        'AssetsLibrary',
                        'AdSupport',
                        'AudioToolbox',
                        'AVFoundation',
                        'CFNetwork',
                        'CoreGraphics',
                        'CoreMedia',
                        'CoreLocation',
                        'CoreVideo',
                        'CoreImage',
                        'CoreTelephony',
                        'Foundation',
                        'ImageIO',
                        'MessageUI',
                        'MobileCoreServices',
                        'OpenGLES',
                        'QuartzCore',
                        'Social',
                        'SystemConfiguration',
                        'Security',
                        'StoreKit',
                        'Twitter',
                        'UIKit'

        sc.libraries = 'z',
                       'sqlite3',
                       'xml2.2',
                       'c++'

    end

    s.subspec "Text" do |st|
        st.dependency 'PrintIO/Core'
        st.resources = 'TextBundle.bundle'
    end

end
