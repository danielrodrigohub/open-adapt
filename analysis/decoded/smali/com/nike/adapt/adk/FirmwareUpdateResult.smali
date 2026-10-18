.class public abstract Lcom/nike/adapt/adk/FirmwareUpdateResult;
.super Ljava/lang/Object;
.source "FirmwareUpdateResults.kt"

# interfaces
.implements Li8/b;
.implements Landroid/os/Parcelable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nike/adapt/adk/FirmwareUpdateResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventUUID()Li8/d;
    .locals 3

    new-instance v0, Li8/d;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "FirmwareUpdateResult"

    invoke-direct {v0, v2, v1}, Li8/d;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    return-object v0
.end method
