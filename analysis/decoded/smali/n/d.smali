.class public abstract Ln/d;
.super Ljava/lang/Object;
.source "CustomTabsServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public h:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln/d;->h:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ln/d$a;

    .line 3
    sget v1, La/b$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android.support.customtabs.ICustomTabsService"

    .line 4
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    instance-of v2, v1, La/b;

    if-eqz v2, :cond_1

    .line 6
    move-object p2, v1

    check-cast p2, La/b;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, La/b$a$a;

    invoke-direct {v1, p2}, La/b$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v1

    .line 8
    :goto_0
    iget-object v1, p0, Ln/d;->h:Landroid/content/Context;

    invoke-direct {v0, p2, p1, v1}, Ln/d$a;-><init>(La/b;Landroid/content/ComponentName;Landroid/content/Context;)V

    .line 9
    move-object p1, p0

    check-cast p1, Ltb/c$a;

    .line 10
    sget-object v1, Lub/a;->Companion:Lub/a$a;

    const-string v2, "CustomTabsService is connected"

    invoke-virtual {v1, v2}, Lub/a$a;->a(Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-interface {p2}, La/b;->g()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    iget-object p2, p1, Ltb/c$a;->i:Ltb/c;

    .line 13
    iget-object p2, p2, Ltb/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p1, Ltb/c$a;->i:Ltb/c;

    .line 16
    iget-object p1, p1, Ltb/c;->c:Ljava/util/concurrent/CountDownLatch;

    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Custom Tabs Service connected before an applicationcontext has been provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
