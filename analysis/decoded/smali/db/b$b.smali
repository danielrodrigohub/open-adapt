.class public final Ldb/b$b;
.super Lrd/o;
.source "AdaptKitPairedDevicesStore.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Ldb/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldb/b$b;

    invoke-direct {v0}, Ldb/b$b;-><init>()V

    sput-object v0, Ldb/b$b;->h:Ldb/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adapt_kit_devices_store"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
