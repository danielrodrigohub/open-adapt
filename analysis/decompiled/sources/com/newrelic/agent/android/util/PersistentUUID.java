package com.newrelic.agent.android.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.stats.StatsEngine;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PersistentUUID {
    private static final String UUID_KEY = "nr_uuid";
    private static final String UUID_FILENAME = "nr_installation";
    private static File UUID_FILE = new File(Environment.getDataDirectory(), UUID_FILENAME);
    private static AgentLog log = AgentLogManager.getAgentLog();

    public PersistentUUID(Context context) {
        UUID_FILE = new File(context.getFilesDir(), UUID_FILENAME);
    }

    @SuppressLint({"MissingPermission"})
    private String generateUniqueID(Context context) {
        String deviceId = Build.SERIAL;
        String str = Build.ID;
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (TextUtils.isEmpty(string)) {
                return UUID.randomUUID().toString();
            }
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager != null) {
                    deviceId = telephonyManager.getDeviceId();
                }
            } catch (Exception unused) {
                deviceId = "badf00d";
            }
            if (TextUtils.isEmpty(deviceId)) {
                deviceId = Build.HARDWARE + Build.DEVICE + Build.BOARD + Build.BRAND;
            }
            intToHexString(string.hashCode(), 8);
            intToHexString(deviceId.hashCode(), 4);
            intToHexString(Build.VERSION.SDK_INT, 4);
            intToHexString(Build.VERSION.RELEASE.hashCode(), 12);
            throw new RuntimeException("Not supported (TODO)");
        } catch (Exception unused2) {
            return UUID.randomUUID().toString();
        }
    }

    private String intToHexString(int i10, int i11) {
        String hexString = Integer.toHexString(i10);
        char[] cArr = new char[i11 - hexString.length()];
        Arrays.fill(cArr, '0');
        String str = new String(cArr) + hexString;
        String strC = "";
        int i12 = 0;
        for (int length = str.length() - 1; length >= 0; length--) {
            i12++;
            strC = str.substring(length, length + 1) + strC;
            if (i12 % i11 == 0) {
                strC = d.c("-", strC);
            }
        }
        return strC.startsWith("-") ? strC.substring(1, strC.length()) : strC;
    }

    public String getDeviceId(Context context) {
        String strGenerateUniqueID = generateUniqueID(context);
        return TextUtils.isEmpty(strGenerateUniqueID) ? UUID.randomUUID().toString() : strGenerateUniqueID;
    }

    public String getPersistentUUID() {
        String uUIDFromFileStore = getUUIDFromFileStore();
        if (!TextUtils.isEmpty(uUIDFromFileStore)) {
            StatsEngine.get().inc(MetricNames.METRIC_UUID_RECOVERED);
            return uUIDFromFileStore;
        }
        String string = UUID.randomUUID().toString();
        log.info("Created random UUID: " + string);
        StatsEngine.get().inc(MetricNames.MOBILE_APP_INSTALL);
        AnalyticsControllerImpl.getInstance().addAttributeUnchecked(new AnalyticsAttribute(AnalyticsAttribute.APP_INSTALL_ATTRIBUTE, true), false);
        setPersistedUUID(string);
        return string;
    }

    public String getUUIDFromFileStore() {
        if (UUID_FILE.exists()) {
            try {
                return new JSONObject(new BufferedReader(new FileReader(UUID_FILE)).readLine()).getString(UUID_KEY);
            } catch (FileNotFoundException e10) {
                log.error(e10.getMessage());
            } catch (IOException e11) {
                log.error(e11.getMessage());
            } catch (NullPointerException e12) {
                log.error(e12.getMessage());
            } catch (JSONException e13) {
                log.error(e13.getMessage());
            }
        }
        return null;
    }

    public void noticeUUIDMetric(String str) {
        StatsEngine statsEngine = StatsEngine.get();
        if (statsEngine != null) {
            statsEngine.inc(MetricNames.METRIC_MOBILE + str);
            return;
        }
        log.error("StatsEngine is null. " + str + "  not recorded.");
    }

    public void putUUIDToFileStore(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(UUID_FILE));
            try {
                jSONObject.put(UUID_KEY, str);
                bufferedWriter.write(jSONObject.toString());
                bufferedWriter.flush();
                bufferedWriter.close();
            } catch (Throwable th) {
                try {
                    bufferedWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception e10) {
            log.error(e10.getMessage());
        }
    }

    public void setPersistedUUID(String str) {
        putUUIDToFileStore(str);
    }
}
