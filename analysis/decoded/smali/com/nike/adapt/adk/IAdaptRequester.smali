.class public interface abstract Lcom/nike/adapt/adk/IAdaptRequester;
.super Ljava/lang/Object;
.source "AdaptRequester.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/IAdaptRequester$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nike/adapt/adk/IAdaptRequester$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nike/adapt/adk/IAdaptRequester$Companion;->$$INSTANCE:Lcom/nike/adapt/adk/IAdaptRequester$Companion;

    sput-object v0, Lcom/nike/adapt/adk/IAdaptRequester;->Companion:Lcom/nike/adapt/adk/IAdaptRequester$Companion;

    return-void
.end method


# virtual methods
.method public abstract connect(Lea/m;)V
.end method

.method public abstract connectIfNotConnected()Z
.end method

.method public abstract currentDevice()Lea/m;
.end method

.method public abstract disconnect()V
.end method

.method public abstract findOrSetDefaultDevice(Ljava/util/List;)Lea/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;)",
            "Lea/m;"
        }
    .end annotation
.end method

.method public abstract modes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptDeviceMode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribe()V
.end method

.method public abstract unsubscribe()V
.end method
