require 'em/pure_ruby' if not defined?(EventMachine)
require "appium_lib"

def caps
  {caps:{
    deviceName: "Name",
    platformName: "Android",
    app:(File.join(File.dirname(__FILE__), "ultimate_converter.apk")),
    appPackage: "com.physphil.android.unitconverterultimate",
    appActivity: "com.physphil.android.unitconverterultimate.MainActivity",
    newCommandTimeout: "3600"
  },
   appium_lib: {
     server_url: "http://127.0.0.1:4723/wd/hub"
   }
  }
end

$driver = Appium::Driver.new(caps,  true)
Appium.promote_appium_methods Object