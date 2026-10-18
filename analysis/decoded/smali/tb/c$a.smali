.class public final Ltb/c$a;
.super Ln/d;
.source "CustomTabManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltb/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:Ltb/c;


# direct methods
.method public constructor <init>(Ltb/c;)V
    .locals 0

    iput-object p1, p0, Ltb/c$a;->i:Ltb/c;

    invoke-direct {p0}, Ln/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget-object p1, Lub/a;->Companion:Lub/a$a;

    const-string v0, "CustomTabsService is disconnected"

    invoke-virtual {p1, v0}, Lub/a$a;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Ltb/c$a;->i:Ltb/c;

    .line 3
    iget-object p1, p1, Ltb/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Ltb/c$a;->i:Ltb/c;

    .line 6
    iget-object p1, p1, Ltb/c;->c:Ljava/util/concurrent/CountDownLatch;

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
