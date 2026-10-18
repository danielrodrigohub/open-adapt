.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareVersion$Companion;
.super Ljava/lang/Object;
.source "AdaptFirmwareVersion.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toAdaptVersion(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-direct {v0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
