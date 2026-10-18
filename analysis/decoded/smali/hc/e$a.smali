.class public final Lhc/e$a;
.super Landroid/content/BroadcastReceiver;
.source "CoreRF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/e;->k(Ljava/lang/String;Lhc/m0;Lpc/c;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhc/m0;

.field public final synthetic b:[[B

.field public final synthetic c:Lhc/e;


# direct methods
.method public constructor <init>(Lhc/e;Lhc/m0;[[B)V
    .locals 0

    iput-object p1, p0, Lhc/e$a;->c:Lhc/e;

    iput-object p2, p0, Lhc/e$a;->a:Lhc/m0;

    iput-object p3, p0, Lhc/e$a;->b:[[B

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    if-eqz p2, :cond_7

    const-string p1, "com.nike.corerf.EXTRA_DATA"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lhc/m0;->a([B)Lhc/m0;

    move-result-object p1

    const-string v0, "com.nike.corerf.DEVICE_ID"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3
    iget-object v1, p0, Lhc/e$a;->c:Lhc/e;

    iget-object v1, v1, Lhc/e;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lhc/e$a;->c:Lhc/e;

    const-string v5, "%s for device: %s received null message"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    aput-object v0, v1, v3

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p1, v4, v3, p2, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 6
    :cond_1
    iget-object v5, p0, Lhc/e$a;->a:Lhc/m0;

    iget-byte v5, v5, Lhc/m0;->a:B

    iget-byte v6, p1, Lhc/m0;->a:B

    const/4 v7, 0x3

    if-eq v5, v6, :cond_3

    .line 7
    sget-object p1, Lhc/d;->C:Lhc/d;

    const/16 p1, 0x6e

    if-ne v5, p1, :cond_2

    sget-object p1, Lhc/d;->D:Lhc/d;

    const/16 p1, 0x6f

    if-ne v6, p1, :cond_2

    .line 8
    iget-object p1, p0, Lhc/e$a;->b:[[B

    monitor-enter p1

    .line 9
    :try_start_0
    iget-object p2, p0, Lhc/e$a;->b:[[B

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 11
    :cond_2
    iget-object p1, p0, Lhc/e$a;->c:Lhc/e;

    const-string p2, "received different message type (%02X) from sent (%02X)"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p1, v4, v7, p2, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 13
    :cond_3
    iget-object v5, p1, Lhc/m0;->c:[B

    if-eqz v5, :cond_4

    .line 14
    iget-object v6, p0, Lhc/e$a;->b:[[B

    aput-object v5, v6, v2

    .line 15
    monitor-enter v6

    .line 16
    :try_start_1
    iget-object p1, p0, Lhc/e$a;->b:[[B

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 17
    monitor-exit v6

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 18
    :cond_4
    iget-object v5, p1, Lhc/m0;->b:Lhc/m0$a;

    sget-object v6, Lhc/m0$a;->j:Lhc/m0$a;

    if-ne v5, v6, :cond_5

    .line 19
    iget-object p2, p0, Lhc/e$a;->b:[[B

    invoke-static {p1}, Lhc/m0;->b(Lhc/m0;)[B

    move-result-object p1

    aput-object p1, p2, v2

    .line 20
    iget-object v6, p0, Lhc/e$a;->b:[[B

    monitor-enter v6

    .line 21
    :try_start_2
    iget-object p1, p0, Lhc/e$a;->b:[[B

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 22
    monitor-exit v6

    goto :goto_0

    :catchall_2
    move-exception p1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    .line 23
    :cond_5
    sget-object v6, Lhc/m0$a;->k:Lhc/m0$a;

    if-ne v5, v6, :cond_6

    .line 24
    iget-object p2, p0, Lhc/e$a;->b:[[B

    invoke-static {p1}, Lhc/m0;->b(Lhc/m0;)[B

    move-result-object p1

    aput-object p1, p2, v2

    .line 25
    iget-object v5, p0, Lhc/e$a;->b:[[B

    monitor-enter v5

    .line 26
    :try_start_3
    iget-object p1, p0, Lhc/e$a;->b:[[B

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 27
    monitor-exit v5

    goto :goto_0

    :catchall_3
    move-exception p1

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    .line 28
    :cond_6
    iget-object v5, p0, Lhc/e$a;->c:Lhc/e;

    const-string v6, "%s for device: %s received action %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, v2

    aput-object v0, v7, v3

    iget-object p1, p1, Lhc/m0;->b:Lhc/m0$a;

    aput-object p1, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {v5, v4, v3, p1, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    :goto_0
    return-void
.end method
