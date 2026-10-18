package com.nike.adapt.adk;

import com.nike.adapt.adk.model.AdaptFirmwareVersion;
import com.nike.adapt.adk.model.Battery;
import s9.r;
import v9.e;

/* JADX INFO: compiled from: InMemoryCache.kt */
/* JADX INFO: loaded from: classes.dex */
public interface IDeviceCacheADK {

    /* JADX INFO: compiled from: InMemoryCache.kt */
    public static final class DefaultImpls {
        public static /* synthetic */ void getFirmwareVersion$annotations() {
        }
    }

    AdaptFirmwareVersion getAdaptFirmwareVersion();

    Battery getBattery();

    String getDeviceStats();

    String getFirmwareVersion();

    int getLastKnownAbsoluteTightness();

    e getLastKnownConnectionState();

    int getLastKnownRelativeTightness();

    int getMaxTightness();

    String getSerialNumber();

    r getShoeType();

    boolean isConnected();

    void setAdaptFirmwareVersion(AdaptFirmwareVersion adaptFirmwareVersion);

    void setBattery(Battery battery);

    void setDeviceStats(String str);

    void setFirmwareVersion(String str);

    void setLastKnownAbsoluteTightness(int i10);

    void setLastKnownConnectionState(e eVar);

    void setLastKnownRelativeTightness(int i10);

    void setMaxTightness(int i10);

    void setSerialNumber(String str);

    void setShoeType(r rVar);
}
