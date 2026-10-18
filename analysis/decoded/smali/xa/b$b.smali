.class public final Lxa/b$b;
.super Landroid/os/HandlerThread;
.source "AdaptKitBroadcastReceiverUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final h:Lxa/b$b;

.field public static final i:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxa/b$b;

    invoke-direct {v0}, Lxa/b$b;-><init>()V

    sput-object v0, Lxa/b$b;->h:Lxa/b$b;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lxa/b$b;->i:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "AdaptKit_Receiver_Handler"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method
