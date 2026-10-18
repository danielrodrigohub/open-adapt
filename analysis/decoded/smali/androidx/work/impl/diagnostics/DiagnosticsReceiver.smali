.class public Landroidx/work/impl/diagnostics/DiagnosticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DiagnosticsReceiver.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DiagnosticsRcvr"

    invoke-static {v0}, Lk1/l;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object p2

    sget-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Throwable;

    const-string v3, "Requesting diagnostics"

    invoke-virtual {p2, v0, v3, v2}, Lk1/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    :try_start_0
    invoke-static {p1}, Ll1/k;->a(Landroid/content/Context;)Ll1/k;

    move-result-object v5

    .line 3
    const-class p1, Landroidx/work/impl/workers/DiagnosticsWorker;

    .line 4
    new-instance p2, Lk1/n$a;

    invoke-direct {p2, p1}, Lk1/n$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2}, Lk1/r$a;->a()Lk1/r;

    move-result-object p1

    check-cast p1, Lk1/n;

    .line 5
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 7
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ll1/g;

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    .line 9
    invoke-direct/range {v4 .. v9}, Ll1/g;-><init>(Ll1/k;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 10
    invoke-virtual {p1}, Ll1/g;->c()Lk1/o;

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 12
    invoke-static {}, Lk1/l;->c()Lk1/l;

    move-result-object p2

    sget-object v0, Landroidx/work/impl/diagnostics/DiagnosticsReceiver;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v1

    const-string p1, "WorkManager is not initialized"

    invoke-virtual {p2, v0, p1, v2}, Lk1/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
