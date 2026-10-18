package com.nike.adapt.adk;

import a1.d;
import a1.f;
import androidx.fragment.app.r0;
import com.nike.adapt.adk.model.AdaptFirmwareVersion;
import com.nike.adapt.adk.model.Battery;
import p4.h;
import s9.r;
import v9.e;

/* JADX INFO: compiled from: InMemoryCache.kt */
/* JADX INFO: loaded from: classes.dex */
final class DeviceCache implements IDeviceCacheADK {
    private AdaptFirmwareVersion adaptFirmwareVersion;
    private Battery battery;
    private String deviceStats;
    private String firmwareVersion;
    private String initialFirmwareVersion;
    private final boolean isRightFoot;
    private int lastKnownAbsoluteTightness;
    private e lastKnownConnectionState;
    private int lastKnownRelativeTightness;
    private int maxTightness;
    private String serialNumber;
    private r shoeType;

    public DeviceCache(boolean z10, r rVar, int i10, int i11, e eVar, Battery battery, String str, String str2, String str3, int i12) {
        h.j(eVar, "lastKnownConnectionState");
        h.j(battery, "battery");
        h.j(str2, "initialFirmwareVersion");
        this.isRightFoot = z10;
        this.shoeType = rVar;
        this.lastKnownAbsoluteTightness = i10;
        this.lastKnownRelativeTightness = i11;
        this.lastKnownConnectionState = eVar;
        this.battery = battery;
        this.serialNumber = str;
        this.initialFirmwareVersion = str2;
        this.deviceStats = str3;
        this.maxTightness = i12;
        this.firmwareVersion = str2;
        this.adaptFirmwareVersion = new AdaptFirmwareVersion(getFirmwareVersion());
    }

    private final boolean component1() {
        return this.isRightFoot;
    }

    public static /* synthetic */ void getAdaptFirmwareVersion$annotations() {
    }

    public static /* synthetic */ void getFirmwareVersion$annotations() {
    }

    public final int component10() {
        return getMaxTightness();
    }

    public final r component2() {
        return getShoeType();
    }

    public final int component3() {
        return getLastKnownAbsoluteTightness();
    }

    public final int component4() {
        return getLastKnownRelativeTightness();
    }

    public final e component5() {
        return getLastKnownConnectionState();
    }

    public final Battery component6() {
        return getBattery();
    }

    public final String component7() {
        return getSerialNumber();
    }

    public final String component8() {
        return this.initialFirmwareVersion;
    }

    public final String component9() {
        return getDeviceStats();
    }

    public final DeviceCache copy(boolean z10, r rVar, int i10, int i11, e eVar, Battery battery, String str, String str2, String str3, int i12) {
        h.j(eVar, "lastKnownConnectionState");
        h.j(battery, "battery");
        h.j(str2, "initialFirmwareVersion");
        return new DeviceCache(z10, rVar, i10, i11, eVar, battery, str, str2, str3, i12);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceCache)) {
            return false;
        }
        DeviceCache deviceCache = (DeviceCache) obj;
        return this.isRightFoot == deviceCache.isRightFoot && getShoeType() == deviceCache.getShoeType() && getLastKnownAbsoluteTightness() == deviceCache.getLastKnownAbsoluteTightness() && getLastKnownRelativeTightness() == deviceCache.getLastKnownRelativeTightness() && getLastKnownConnectionState() == deviceCache.getLastKnownConnectionState() && h.c(getBattery(), deviceCache.getBattery()) && h.c(getSerialNumber(), deviceCache.getSerialNumber()) && h.c(this.initialFirmwareVersion, deviceCache.initialFirmwareVersion) && h.c(getDeviceStats(), deviceCache.getDeviceStats()) && getMaxTightness() == deviceCache.getMaxTightness();
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public AdaptFirmwareVersion getAdaptFirmwareVersion() {
        return new AdaptFirmwareVersion(getFirmwareVersion());
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public Battery getBattery() {
        return this.battery;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public String getDeviceStats() {
        return this.deviceStats;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    public final String getInitialFirmwareVersion() {
        return this.initialFirmwareVersion;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public int getLastKnownAbsoluteTightness() {
        return this.lastKnownAbsoluteTightness;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public e getLastKnownConnectionState() {
        return this.lastKnownConnectionState;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public int getLastKnownRelativeTightness() {
        return this.lastKnownRelativeTightness;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public int getMaxTightness() {
        return this.maxTightness;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public String getSerialNumber() {
        return this.serialNumber;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public r getShoeType() {
        return this.shoeType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    public int hashCode() {
        boolean z10 = this.isRightFoot;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return Integer.hashCode(getMaxTightness()) + ((f.c(this.initialFirmwareVersion, (((getBattery().hashCode() + ((getLastKnownConnectionState().hashCode() + r0.e(getLastKnownRelativeTightness(), r0.e(getLastKnownAbsoluteTightness(), ((r10 * 31) + (getShoeType() == null ? 0 : getShoeType().hashCode())) * 31, 31), 31)) * 31)) * 31) + (getSerialNumber() == null ? 0 : getSerialNumber().hashCode())) * 31, 31) + (getDeviceStats() != null ? getDeviceStats().hashCode() : 0)) * 31);
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public boolean isConnected() {
        return getLastKnownConnectionState() == e.CONNECTED_AND_AUTHENTICATED;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public void setAdaptFirmwareVersion(AdaptFirmwareVersion adaptFirmwareVersion) {
        h.j(adaptFirmwareVersion, "value");
        setFirmwareVersion(adaptFirmwareVersion.toString());
        this.adaptFirmwareVersion = adaptFirmwareVersion;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public void setBattery(Battery battery) {
        h.j(battery, "<set-?>");
        this.battery = battery;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public void setDeviceStats(String str) {
        this.deviceStats = str;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public void setFirmwareVersion(String str) {
        h.j(str, "<set-?>");
        this.firmwareVersion = str;
    }

    public final void setInitialFirmwareVersion(String str) {
        h.j(str, "<set-?>");
        this.initialFirmwareVersion = str;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public void setLastKnownAbsoluteTightness(int i10) {
        this.lastKnownAbsoluteTightness = i10;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public void setLastKnownConnectionState(e eVar) {
        h.j(eVar, "<set-?>");
        this.lastKnownConnectionState = eVar;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public void setLastKnownRelativeTightness(int i10) {
        this.lastKnownRelativeTightness = i10;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public void setMaxTightness(int i10) {
        this.maxTightness = i10;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public void setSerialNumber(String str) {
        this.serialNumber = str;
    }

    @Override // com.nike.adapt.adk.IDeviceCacheADK
    public void setShoeType(r rVar) {
        this.shoeType = rVar;
    }

    public String toString() {
        boolean z10 = this.isRightFoot;
        r shoeType = getShoeType();
        int lastKnownAbsoluteTightness = getLastKnownAbsoluteTightness();
        int lastKnownRelativeTightness = getLastKnownRelativeTightness();
        e lastKnownConnectionState = getLastKnownConnectionState();
        Battery battery = getBattery();
        String serialNumber = getSerialNumber();
        String str = this.initialFirmwareVersion;
        String deviceStats = getDeviceStats();
        int maxTightness = getMaxTightness();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DeviceCache(isRightFoot=");
        sb2.append(z10);
        sb2.append(", shoeType=");
        sb2.append(shoeType);
        sb2.append(", lastKnownAbsoluteTightness=");
        d.e(sb2, lastKnownAbsoluteTightness, ", lastKnownRelativeTightness=", lastKnownRelativeTightness, ", lastKnownConnectionState=");
        sb2.append(lastKnownConnectionState);
        sb2.append(", battery=");
        sb2.append(battery);
        sb2.append(", serialNumber=");
        d.g(sb2, serialNumber, ", initialFirmwareVersion=", str, ", deviceStats=");
        sb2.append(deviceStats);
        sb2.append(", maxTightness=");
        sb2.append(maxTightness);
        sb2.append(")");
        return sb2.toString();
    }

    public /* synthetic */ DeviceCache(boolean z10, r rVar, int i10, int i11, e eVar, Battery battery, String str, String str2, String str3, int i12, int i13, rd.h hVar) {
        this(z10, (i13 & 2) != 0 ? null : rVar, (i13 & 4) != 0 ? 0 : i10, (i13 & 8) != 0 ? 0 : i11, (i13 & 16) != 0 ? e.NOT_INITIATED : eVar, (i13 & 32) != 0 ? new Battery(0, null, 3, null) : battery, (i13 & 64) != 0 ? null : str, (i13 & 128) != 0 ? "" : str2, (i13 & 256) == 0 ? str3 : null, (i13 & 512) != 0 ? 42 : i12);
    }
}
