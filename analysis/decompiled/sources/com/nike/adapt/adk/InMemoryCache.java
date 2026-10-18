package com.nike.adapt.adk;

import androidx.lifecycle.o;
import com.nike.adapt.adk.model.Battery;
import com.nike.adapt.network.assets.model.Manifest;
import fd.d;
import p4.h;
import v7.c;
import v9.e;
import z8.a;

/* JADX INFO: compiled from: InMemoryCache.kt */
/* JADX INFO: loaded from: classes.dex */
public final class InMemoryCache {
    private static boolean hasShoeUpdates;
    private static Manifest manifest;
    private static boolean needToDisplayEffectsSubtitleForFirstTime;
    private static c pendingLightEffect;
    private static a pendingLightPack;
    public static final InMemoryCache INSTANCE = new InMemoryCache();
    private static final d rightDevice$delegate = o.x(InMemoryCache$rightDevice$2.INSTANCE);
    private static final d leftDevice$delegate = o.x(InMemoryCache$leftDevice$2.INSTANCE);
    private static String updateToFirmwareVersion = "";
    private static String lowestFirmwareVersion = "";
    private static a activeLightPack = a.MY_LIGHTS;
    private static c activeLightEffect = c.d.f16370c;
    private static boolean useInternetPerSession = true;

    private InMemoryCache() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void clearDevice(IDeviceCacheADK iDeviceCacheADK) {
        iDeviceCacheADK.setLastKnownAbsoluteTightness(0);
        iDeviceCacheADK.setLastKnownRelativeTightness(0);
        iDeviceCacheADK.setLastKnownConnectionState(e.NOT_INITIATED);
        iDeviceCacheADK.setMaxTightness(0);
        iDeviceCacheADK.setBattery(new Battery(0, null, 3, 0 == true ? 1 : 0));
        iDeviceCacheADK.setSerialNumber("");
        iDeviceCacheADK.setFirmwareVersion("");
    }

    public final void clear() {
        hasShoeUpdates = false;
        clearDevice(getRightDevice());
        clearDevice(getLeftDevice());
        useInternetPerSession = true;
    }

    public final boolean eitherShoeIsConnected() {
        return getLeftDevice().isConnected() || getRightDevice().isConnected();
    }

    public final c getActiveLightEffect() {
        return activeLightEffect;
    }

    public final a getActiveLightPack() {
        return activeLightPack;
    }

    public final boolean getHasShoeUpdates() {
        return hasShoeUpdates;
    }

    public final IDeviceCacheADK getLeftDevice() {
        return (IDeviceCacheADK) leftDevice$delegate.getValue();
    }

    public final String getLowestFirmwareVersion() {
        return lowestFirmwareVersion;
    }

    public final Manifest getManifest() {
        return manifest;
    }

    public final boolean getNeedToDisplayEffectsSubtitleForFirstTime() {
        return needToDisplayEffectsSubtitleForFirstTime;
    }

    public final c getPendingLightEffect() {
        return pendingLightEffect;
    }

    public final a getPendingLightPack() {
        return pendingLightPack;
    }

    public final IDeviceCacheADK getRightDevice() {
        return (IDeviceCacheADK) rightDevice$delegate.getValue();
    }

    public final String getUpdateToFirmwareVersion() {
        return updateToFirmwareVersion;
    }

    public final boolean getUseInternetPerSession() {
        return useInternetPerSession;
    }

    public final void setActiveLightEffect(c cVar) {
        h.j(cVar, "<set-?>");
        activeLightEffect = cVar;
    }

    public final void setActiveLightPack(a aVar) {
        h.j(aVar, "<set-?>");
        activeLightPack = aVar;
    }

    public final void setHasShoeUpdates(boolean z10) {
        hasShoeUpdates = z10;
    }

    public final void setLowestFirmwareVersion(String str) {
        h.j(str, "<set-?>");
        lowestFirmwareVersion = str;
    }

    public final void setManifest(Manifest manifest2) {
        manifest = manifest2;
    }

    public final void setNeedToDisplayEffectsSubtitleForFirstTime(boolean z10) {
        needToDisplayEffectsSubtitleForFirstTime = z10;
    }

    public final void setPendingLightEffect(c cVar) {
        pendingLightEffect = cVar;
    }

    public final void setPendingLightPack(a aVar) {
        pendingLightPack = aVar;
    }

    public final void setUpdateToFirmwareVersion(String str) {
        h.j(str, "<set-?>");
        updateToFirmwareVersion = str;
    }

    public final void setUseInternetPerSession(boolean z10) {
        useInternetPerSession = z10;
    }
}
