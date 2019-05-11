
package com.carrot.appInfo;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNAppInfoModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNAppInfoModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNAppInfo";
  }


  @ReactMethod
  public static String getVersionName(Context mContext) {}

  @ReactMethod
  /**
   * 获取appVersionCode
   * @param callback 回调
   */
  public static int getVersionCode(Context mContext) {
    if (mContext != null) {
      try {
        return mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0).versionCode;
      } catch (PackageManager.NameNotFoundException ignored) {
      }
    }
    return 0;
  }

  /**
   * 获取app版本号
   * @param callback 回调
   */
  public static String getVersionName(Context mContext) {
    if (mContext != null) {
      try {
        return mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0).versionName;
      } catch (PackageManager.NameNotFoundException ignored) {
      }
    }
    return "";
  }


}