.class public interface abstract Lcom/nike/adapt/adk/IDeviceCacheADK;
.super Ljava/lang/Object;
.source "InMemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/IDeviceCacheADK$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getAdaptFirmwareVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
.end method

.method public abstract getBattery()Lcom/nike/adapt/adk/model/Battery;
.end method

.method public abstract getDeviceStats()Ljava/lang/String;
.end method

.method public abstract getFirmwareVersion()Ljava/lang/String;
.end method

.method public abstract getLastKnownAbsoluteTightness()I
.end method

.method public abstract getLastKnownConnectionState()Lv9/e;
.end method

.method public abstract getLastKnownRelativeTightness()I
.end method

.method public abstract getMaxTightness()I
.end method

.method public abstract getSerialNumber()Ljava/lang/String;
.end method

.method public abstract getShoeType()Ls9/r;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract setAdaptFirmwareVersion(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)V
.end method

.method public abstract setBattery(Lcom/nike/adapt/adk/model/Battery;)V
.end method

.method public abstract setDeviceStats(Ljava/lang/String;)V
.end method

.method public abstract setFirmwareVersion(Ljava/lang/String;)V
.end method

.method public abstract setLastKnownAbsoluteTightness(I)V
.end method

.method public abstract setLastKnownConnectionState(Lv9/e;)V
.end method

.method public abstract setLastKnownRelativeTightness(I)V
.end method

.method public abstract setMaxTightness(I)V
.end method

.method public abstract setSerialNumber(Ljava/lang/String;)V
.end method

.method public abstract setShoeType(Ls9/r;)V
.end method
