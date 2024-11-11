function fn() {
  var config = {};

  var environment = karate.env || "android";

  // Retrieve APK path and device name from CLI arguments, or set default values
  var droidApkPath = karate.properties['apk.path'] || 'OneDayOnly_4.0.9_APKPure.apk';
  var flutterApkPath = karate.properties['apk.path'] || 'provider_shopper_flutter_sample.apk';
  var deviceName = karate.properties['device.name'] || 'Kopano Phone2';

//config functions
  function getAndroidConfig() {
    return {
      "type": "android",
      "alwaysMatch": {
        "appium:app": karate.toAbsolutePath(droidApkPath),
        "appium:deviceName": deviceName,
        "platformName": "android",
        "appium:automationName": "UIAutomator2"
      }
    };
  }

    function getChromeConfig() {
      return {
        "type": "chrome",
        "headless": false,
        "start": true
      };
    }

  function getFlutterConfig() {
    return {
    "type": "android",
      "alwaysMatch": {
        "appium:app": karate.toAbsolutePath(flutterApkPath),
        "appium:deviceName": deviceName,
        "platformName": "Android",
        "appium:automationName": "Flutter"
      }
    };
  }

  function getFirefoxConfig() {
    return {
      "type": "firefox",
      "headless": false,
      "start": true
    };
  }

  function getApiConfig() {
      return {
        "baseUrl": "https://jsonplaceholder.typicode.com",
        "timeout": 30000,
      };
    }


  switch (environment) {
    case "android":
      config.desiredConfig = getAndroidConfig();
      break;
    case "flutter":
      config.desiredConfig = getFlutterConfig();
      break;
    case "chrome":
      config.desiredConfig = getChromeConfig();
      break;
    case "firefox":
      config.desiredConfig = getFirefoxConfig();
      break;
    default:
      config.desiredConfig = getApiConfig();
  }



  return config;
}
