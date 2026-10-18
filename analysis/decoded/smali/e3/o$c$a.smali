.class public final Le3/o$c$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SingletonConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/o$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le3/o$c;


# direct methods
.method public constructor <init>(Le3/o$c;)V
    .locals 0

    iput-object p1, p0, Le3/o$c$a;->a:Le3/o$c;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    new-instance p1, Le3/p;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Le3/p;-><init>(Le3/o$c$a;Z)V

    invoke-static {p1}, Ll3/l;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    new-instance p1, Le3/p;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Le3/p;-><init>(Le3/o$c$a;Z)V

    invoke-static {p1}, Ll3/l;->k(Ljava/lang/Runnable;)V

    return-void
.end method
