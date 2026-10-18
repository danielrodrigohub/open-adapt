.class public interface abstract Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;
.super Ljava/lang/Object;
.source "AdaptFirmwareModels.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpToDate;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$ErrorOccurred;,
        Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;
    }
.end annotation


# virtual methods
.method public abstract getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
.end method
