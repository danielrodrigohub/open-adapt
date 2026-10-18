.class public final Lv9/o;
.super Ljava/lang/Object;
.source "AdaptKitFirmwareUpdateListener.kt"


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lfa/d;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lv9/o;->a:Landroid/os/Handler;

    return-void
.end method
