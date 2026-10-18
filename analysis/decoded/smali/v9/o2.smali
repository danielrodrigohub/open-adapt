.class public final Lv9/o2;
.super Lv9/k;
.source "AdaptKitDeviceRequest.kt"


# static fields
.field public static final b:Lv9/o2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/o2;

    invoke-direct {v0}, Lv9/o2;-><init>()V

    sput-object v0, Lv9/o2;->b:Lv9/o2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv9/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "DisconnectRequest"

    return-object v0
.end method
