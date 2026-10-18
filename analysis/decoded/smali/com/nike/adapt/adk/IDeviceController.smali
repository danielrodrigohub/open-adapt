.class public interface abstract Lcom/nike/adapt/adk/IDeviceController;
.super Ljava/lang/Object;
.source "DeviceController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/IDeviceController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nike/adapt/adk/IDeviceController$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/IDeviceController$Companion;->$$INSTANCE:Lcom/nike/adapt/adk/IDeviceController$Companion;

    sput-object v0, Lcom/nike/adapt/adk/IDeviceController;->Companion:Lcom/nike/adapt/adk/IDeviceController$Companion;

    return-void
.end method


# virtual methods
.method public abstract deleteDisconnectedShoes(Lea/m;)V
.end method

.method public abstract requestFitCalibrate(Lp8/v;)V
.end method

.method public abstract requestModeTo(Lp8/l;)V
.end method

.method public abstract requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V
.end method

.method public abstract subscribe(Lea/m;)V
.end method

.method public abstract unsubscribe()V
.end method

.method public abstract updatePair(Lea/m;)V
.end method
