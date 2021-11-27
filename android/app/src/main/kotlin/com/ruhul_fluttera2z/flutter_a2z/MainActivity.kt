package com.ruhul_fluttera2z.flutter_a2z

import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import android.os.Build.VERSION
import android.os.Build.VERSION_CODES
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private var BATTERY_CHANNEL = "com.ruhul.fluttera2z/battery" //same channel name on flutter side
    private lateinit var channel: MethodChannel;

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, BATTERY_CHANNEL)

        //receive data from flutter
        channel.setMethodCallHandler { call, result ->
            //same method name on flutter code
            if (call.method == "getBatteryLevel") {
                val arguments = call.arguments() as Map<String, String>
                val name = arguments["name"]
                val batteryLevel = getBatteryLevel()
                result.success("$name: $batteryLevel%")
            } else if (call.method == "getPosition") {
                val arguments = call.arguments() as Map<String, String>
                val name = arguments["name"]
                val latLng = getLatLng()
                result.success("$name: $latLng")
            }
        }


    }

    private fun getBatteryLevel(): Int {
        val batteryLevel: Int
        if (VERSION.SDK_INT >= VERSION_CODES.LOLLIPOP) {
            val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
            batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
        } else {
            var intent = ContextWrapper(applicationContext).registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
            batteryLevel = intent!!.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) * 100;
        }
        return batteryLevel;
    }

    private fun getLatLng(): String {

        val latLng: String
        latLng = "23, 99";
        return latLng;
    }
}

