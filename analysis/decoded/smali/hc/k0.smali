.class public final Lhc/k0;
.super Landroid/content/BroadcastReceiver;
.source "FileTransfer.java"


# static fields
.field public static F:I


# instance fields
.field public A:Ljava/io/ByteArrayOutputStream;

.field public B:Ljava/util/Timer;

.field public C:Lhc/j0;

.field public final D:Z

.field public E:Z

.field public a:I

.field public b:I

.field public c:Lgc/a;

.field public d:Lgc/d;

.field public final e:Ljava/lang/Object;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final l:Lhc/e;

.field public m:[I

.field public n:[B

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public final u:Ljava/lang/Object;

.field public final v:Ljava/lang/String;

.field public w:Lpc/a;

.field public x:Ljava/util/concurrent/atomic/AtomicInteger;

.field public y:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public z:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    rsub-int v0, v0, 0x1fc

    sput v0, Lhc/k0;->F:I

    return-void
.end method

.method public constructor <init>(Lhc/e;Ljava/lang/String;Lpc/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lhc/k0;->c:Lgc/a;

    .line 3
    iput-object v0, p0, Lhc/k0;->d:Lgc/d;

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lhc/k0;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lhc/k0;->h:I

    .line 6
    iput v1, p0, Lhc/k0;->i:I

    .line 7
    iput v1, p0, Lhc/k0;->j:I

    .line 8
    iput v1, p0, Lhc/k0;->k:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 9
    iput-object v2, p0, Lhc/k0;->m:[I

    .line 10
    iput-object v0, p0, Lhc/k0;->n:[B

    .line 11
    iput v1, p0, Lhc/k0;->o:I

    .line 12
    iput v1, p0, Lhc/k0;->p:I

    .line 13
    iput v1, p0, Lhc/k0;->q:I

    .line 14
    iput v1, p0, Lhc/k0;->r:I

    const/4 v2, 0x5

    .line 15
    iput v2, p0, Lhc/k0;->s:I

    const/4 v2, 0x1

    .line 16
    iput v2, p0, Lhc/k0;->t:I

    .line 17
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lhc/k0;->u:Ljava/lang/Object;

    .line 18
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lhc/k0;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lhc/k0;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lhc/k0;->B:Ljava/util/Timer;

    .line 21
    iput-object v0, p0, Lhc/k0;->C:Lhc/j0;

    .line 22
    iput-boolean v1, p0, Lhc/k0;->E:Z

    .line 23
    iput-boolean v1, p0, Lhc/k0;->D:Z

    .line 24
    iput-object p1, p0, Lhc/k0;->l:Lhc/e;

    .line 25
    iput-object p2, p0, Lhc/k0;->v:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lhc/k0;->w:Lpc/a;

    .line 27
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WINDOW_MOVED"

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.nike.corerf.ACTION_RIPLEY_MESSAGE_SEND_COMPLETE"

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE"

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.nike.corerf.ACTION_BIGFOOT_FILE_TRANSFER_COMPLETED"

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.nike.corerf.ACTION_BIGFOOT_FIRMWARE_TRANSFER_CHECK_VALIDATED"

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lw0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhc/k0;->l:Lhc/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lhc/k0;->w:Lpc/a;

    .line 3
    iget-object v0, v0, Lpc/a;->b:Llc/a;

    invoke-interface {v0}, Llc/a;->g()V

    .line 4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lhc/k0;->A:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lhc/k0;->p:I

    .line 6
    iput p3, p0, Lhc/k0;->q:I

    .line 7
    invoke-virtual {p0}, Lhc/k0;->j()V

    .line 8
    new-instance v0, Lhc/j0;

    invoke-direct {v0, p0}, Lhc/j0;-><init>(Lhc/k0;)V

    .line 9
    iput-object v0, p0, Lhc/k0;->C:Lhc/j0;

    .line 10
    iget-object v1, p0, Lhc/k0;->B:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 11
    invoke-static {}, Lgc/e;->E()Lgc/e$a;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 13
    iget-object v1, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v1, Lgc/e;

    invoke-static {v1, p1}, Lgc/e;->y(Lgc/e;I)V

    .line 14
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 15
    iget-object p1, v0, Lm7/w$a;->i:Lm7/w;

    check-cast p1, Lgc/e;

    invoke-static {p1, p2}, Lgc/e;->x(Lgc/e;I)V

    .line 16
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 17
    iget-object p1, v0, Lm7/w$a;->i:Lm7/w;

    check-cast p1, Lgc/e;

    invoke-static {p1, p3}, Lgc/e;->z(Lgc/e;I)V

    .line 18
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object p1

    check-cast p1, Lgc/e;

    .line 19
    new-instance p2, Lhc/m0;

    sget-object p3, Lhc/d;->Q:Lhc/d;

    const/16 p3, 0xa1

    int-to-byte p3, p3

    sget-object v0, Lhc/m0$a;->i:Lhc/m0$a;

    invoke-virtual {p1}, Lm7/a;->m()[B

    move-result-object p1

    invoke-direct {p2, p3, v0, p1}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 20
    :try_start_0
    iget-object p1, p0, Lhc/k0;->l:Lhc/e;

    invoke-virtual {p1, p2}, Lhc/e;->i(Lhc/m0;)V
    :try_end_0
    .catch Lkc/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p0}, Lhc/k0;->e()V

    .line 22
    invoke-virtual {p0, p1}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final b([B)V
    .locals 6

    .line 1
    iput-object p1, p0, Lhc/k0;->z:[B

    .line 2
    invoke-static {p1}, Lrc/a;->b([B)Z

    move-result p1

    const-string v0, "FileTransfer"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object p1, p0, Lhc/k0;->z:[B

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    int-to-short v2, v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    .line 4
    :try_start_0
    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 5
    invoke-static {p1}, Lgc/a;->E([B)Lgc/a;

    move-result-object p1

    iput-object p1, p0, Lhc/k0;->c:Lgc/a;
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v2

    const-string v4, "InvalidProtocolBufferException"

    invoke-interface {v2, v4, p1, v1, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lhc/k0;->c:Lgc/a;

    invoke-virtual {p1}, Lgc/a;->C()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgc/c;

    .line 8
    iget v5, p0, Lhc/k0;->b:I

    invoke-virtual {v2}, Lgc/c;->E()I

    move-result v2

    div-int/lit16 v2, v2, 0x1fc

    add-int/2addr v2, v4

    add-int/2addr v2, v5

    iput v2, p0, Lhc/k0;->b:I

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lhc/k0;->c:Lgc/a;

    invoke-virtual {p1}, Lgc/a;->B()I

    move-result p1

    if-ne p1, v4, :cond_2

    iget-object p1, p0, Lhc/k0;->c:Lgc/a;

    invoke-virtual {p1, v1}, Lgc/a;->A(I)Lgc/c;

    move-result-object p1

    invoke-virtual {p1}, Lgc/c;->F()Lgc/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lgc/c$b;->a()I

    move-result p1

    sget-object v2, Lgc/c$b;->m:Lgc/c$b;

    invoke-virtual {v2}, Lgc/c$b;->a()I

    move-result v2

    if-le p1, v2, :cond_2

    .line 10
    iget-object p1, p0, Lhc/k0;->z:[B

    iget-object v2, p0, Lhc/k0;->c:Lgc/a;

    invoke-virtual {v2}, Lm7/w;->a()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v3, p0, Lhc/k0;->z:[B

    array-length v3, v3

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lhc/k0;->z:[B

    .line 11
    :cond_2
    :goto_2
    iget p1, p0, Lhc/k0;->f:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lhc/k0;->c:Lgc/a;

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Lgc/d;->C()Lgc/d$a;

    move-result-object p1

    iget-object v2, p0, Lhc/k0;->z:[B

    .line 13
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 14
    invoke-virtual {p1}, Lm7/w$a;->k()V

    .line 15
    iget-object v3, p1, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/d;

    invoke-static {v3, v2}, Lgc/d;->x(Lgc/d;I)V

    .line 16
    iget-object v2, p0, Lhc/k0;->c:Lgc/a;

    .line 17
    invoke-virtual {p1}, Lm7/w$a;->k()V

    .line 18
    iget-object v3, p1, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/d;

    invoke-static {v3, v2}, Lgc/d;->y(Lgc/d;Lgc/a;)V

    .line 19
    invoke-virtual {p1}, Lm7/w$a;->h()Lm7/w;

    move-result-object p1

    check-cast p1, Lgc/d;

    iput-object p1, p0, Lhc/k0;->d:Lgc/d;

    .line 20
    new-instance v2, Lhc/m0;

    sget-object v3, Lhc/d;->o:Lhc/d;

    const/16 v3, 0xa

    int-to-byte v3, v3

    sget-object v4, Lhc/m0$a;->i:Lhc/m0$a;

    .line 21
    invoke-virtual {p1}, Lm7/a;->m()[B

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 22
    :try_start_1
    iget-object p1, p0, Lhc/k0;->l:Lhc/e;

    invoke-virtual {p1, v2}, Lhc/e;->i(Lhc/m0;)V
    :try_end_1
    .catch Lkc/f; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 23
    invoke-virtual {p0}, Lhc/k0;->e()V

    .line 24
    invoke-virtual {p0, p1}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    .line 25
    :goto_3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "sent initial FIRMWARE_AVAILABLE command"

    invoke-interface {p1, v3, v2, v1, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 26
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    iget-object v3, p0, Lhc/k0;->d:Lgc/d;

    invoke-virtual {v3}, Lm7/w;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v2, v1, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final c(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-boolean v1, p0, Lhc/k0;->D:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lhc/k0;->l:Lhc/e;

    iget-object v1, v1, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    :cond_0
    if-nez p1, :cond_1

    .line 4
    sget-object p1, Lgc/g$b;->i:Lgc/g$b;

    invoke-virtual {p0, p1}, Lhc/k0;->h(Lgc/g$b;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lhc/k0;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lhc/k0;->A:Ljava/io/ByteArrayOutputStream;

    .line 7
    iput v0, p0, Lhc/k0;->p:I

    .line 8
    iget-object p1, p0, Lhc/k0;->w:Lpc/a;

    new-instance v0, Lkc/c$h;

    iget-object v1, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-direct {v0, v1}, Lkc/c$h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lpc/c;->b(Ljava/lang/Throwable;)V

    .line 9
    invoke-virtual {p0}, Lhc/k0;->j()V

    return-void
.end method

.method public final d(ILgc/r;)Lkc/c;
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    const/4 v3, 0x0

    if-nez p2, :cond_3

    .line 1
    new-instance p1, Lkc/c$d;

    iget-object p2, p0, Lhc/k0;->v:Ljava/lang/String;

    iget v0, p0, Lhc/k0;->t:I

    invoke-static {v0}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v0

    iget v1, p0, Lhc/k0;->t:I

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-direct {p1, p2, v0, v2}, Lkc/c$d;-><init>(Ljava/lang/String;ZZ)V

    return-object p1

    .line 2
    :cond_3
    iget v4, p0, Lhc/k0;->t:I

    const/4 v6, 0x0

    if-eqz v4, :cond_b

    if-ne v4, v1, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    if-eqz v4, :cond_7

    const-string v4, "POST_UPLOAD_INFO"

    const-string v7, " deviceId: "

    .line 3
    invoke-static {v4, v7}, Landroidx/fragment/app/r0;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 4
    iget-object v7, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Image Slot: "

    .line 5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    const-string v7, "MCU"

    .line 6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    if-ne p1, v2, :cond_6

    const-string v7, "BLE"

    .line 7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v7, "CAPSENSE"

    .line 8
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v7, " Expected Image Checksum: "

    .line 9
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v7, p0, Lhc/k0;->m:[I

    aget v7, v7, p1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Actual Image Checksum: "

    .line 11
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p2}, Lgc/r;->z()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " Image Status: "

    .line 13
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2}, Lgc/r;->F()Lgc/r$b;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "ImageStats"

    invoke-interface {v7, v4, v6, v3, v8}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 16
    :cond_7
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v4

    new-array v7, v0, [Ljava/lang/Object;

    iget v8, p0, Lhc/k0;->t:I

    invoke-static {v8}, Landroidx/appcompat/widget/y0;->b(I)I

    move-result v8

    add-int/2addr v8, p1

    .line 17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lhc/k0;->m:[I

    aget v8, v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {p2}, Lgc/r;->z()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "checksum for slot:%d; local:%d = remote:%d"

    .line 18
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "FileTransfer"

    invoke-interface {v4, v7, v6, v3, v8}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 19
    iget-object v4, p0, Lhc/k0;->m:[I

    aget v4, v4, p1

    invoke-virtual {p2}, Lgc/r;->z()I

    move-result v7

    if-eq v4, v7, :cond_8

    .line 20
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    iget v7, p0, Lhc/k0;->t:I

    invoke-static {v7}, Landroidx/appcompat/widget/y0;->b(I)I

    move-result v7

    add-int/2addr v7, p1

    .line 21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v3

    iget-object v7, p0, Lhc/k0;->m:[I

    aget v7, v7, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v2

    invoke-virtual {p2}, Lgc/r;->z()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "checksum for slot is not correct!!!:%d; local:%d != remote:%d"

    .line 22
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v6, v3, v8}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 23
    new-instance v0, Lkc/c$e$a;

    iget-object v4, p0, Lhc/k0;->v:Ljava/lang/String;

    iget-object v1, p0, Lhc/k0;->m:[I

    aget v6, v1, p1

    invoke-virtual {p2}, Lgc/r;->z()I

    move-result v7

    iget p1, p0, Lhc/k0;->t:I

    invoke-static {p1}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lkc/c$e$a;-><init>(Ljava/lang/String;IIIZ)V

    return-object v0

    .line 24
    :cond_8
    invoke-virtual {p2}, Lgc/r;->F()Lgc/r$b;

    move-result-object v4

    sget-object v7, Lgc/r$b;->n:Lgc/r$b;

    if-eq v4, v7, :cond_9

    .line 25
    invoke-virtual {p2}, Lgc/r;->F()Lgc/r$b;

    move-result-object v4

    sget-object v7, Lgc/r$b;->m:Lgc/r$b;

    if-eq v4, v7, :cond_9

    .line 26
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lhc/k0;->t:I

    invoke-static {v4}, Landroidx/appcompat/widget/y0;->b(I)I

    move-result v4

    add-int/2addr v4, p1

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-virtual {p2}, Lgc/r;->F()Lgc/r$b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "status for slot:%d failed with %s"

    .line 28
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v6, v3, v8}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 29
    new-instance p1, Lkc/c$e$b;

    iget-object v0, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {p2}, Lgc/r;->F()Lgc/r$b;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget v1, p0, Lhc/k0;->t:I

    invoke-static {v1}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v1

    invoke-direct {p1, v0, v5, p2, v1}, Lkc/c$e$b;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-object p1

    :cond_9
    new-array v4, v0, [Ljava/lang/Object;

    .line 30
    invoke-virtual {p2}, Lgc/r;->C()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {p2}, Lgc/r;->D()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    invoke-virtual {p2}, Lgc/r;->E()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v1

    const-string p2, "%d.%d.%d"

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 31
    iget-object p2, p0, Lhc/k0;->d:Lgc/d;

    invoke-virtual {p2}, Lgc/d;->B()Lgc/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lgc/a;->A(I)Lgc/c;

    move-result-object p2

    invoke-virtual {p2}, Lgc/c;->G()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 32
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p0, Lhc/k0;->t:I

    invoke-static {v4}, Landroidx/appcompat/widget/y0;->b(I)I

    move-result v4

    add-int/2addr v4, p1

    .line 33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v4, p0, Lhc/k0;->d:Lgc/d;

    invoke-virtual {v4}, Lgc/d;->B()Lgc/a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lgc/a;->A(I)Lgc/c;

    move-result-object v4

    invoke-virtual {v4}, Lgc/c;->G()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    aput-object v7, v0, v1

    const-string v1, "version mis-match for slot:%d failed version from fw header: %s uploadedVersionString %s"

    .line 34
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v6, v3, v8}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 35
    new-instance p2, Lkc/c$e$c;

    iget-object v4, p0, Lhc/k0;->v:Ljava/lang/String;

    iget-object v0, p0, Lhc/k0;->d:Lgc/d;

    invoke-virtual {v0}, Lgc/d;->B()Lgc/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgc/a;->A(I)Lgc/c;

    move-result-object p1

    invoke-virtual {p1}, Lgc/c;->G()Ljava/lang/String;

    move-result-object v6

    iget p1, p0, Lhc/k0;->t:I

    invoke-static {p1}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v8

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lkc/c$e$c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object p2

    .line 36
    :cond_a
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    const-string v0, "valid state for slot "

    .line 37
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    iget v1, p0, Lhc/k0;->t:I

    invoke-static {v1}, Landroidx/appcompat/widget/y0;->b(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v6, v3, v8}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-object v6

    .line 39
    :cond_b
    throw v6
.end method

.method public final e()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lw0/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-virtual {p0}, Lhc/k0;->j()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lhc/k0;->A:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public final f(I)Lgc/r;
    .locals 7

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v1, "requesting slot stats for #"

    .line 2
    invoke-static {v1, p1}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FileTransfer"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    invoke-interface {v0, v1, v3, v4, v2}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 4
    invoke-static {}, Lgc/s;->z()Lgc/s$a;

    move-result-object v0

    iget v1, p0, Lhc/k0;->t:I

    invoke-static {v1}, Landroidx/appcompat/widget/y0;->b(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lgc/s$a;->m(I)Lgc/s$a;

    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/s;

    .line 5
    new-instance v1, Lhc/m0;

    sget-object v2, Lhc/d;->v:Lhc/d;

    const/16 v2, 0x13

    int-to-byte v2, v2

    sget-object v5, Lhc/m0$a;->i:Lhc/m0$a;

    .line 6
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    invoke-direct {v1, v2, v5, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lhc/k0;->l:Lhc/e;

    invoke-virtual {v0, v1}, Lhc/e;->i(Lhc/m0;)V
    :try_end_0
    .catch Lkc/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {p0}, Lhc/k0;->e()V

    .line 9
    invoke-virtual {p0, v0}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lhc/k0;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_1
    iget-object v1, p0, Lhc/k0;->u:Ljava/lang/Object;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 12
    :catch_1
    :try_start_2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const-string v2, "interruption waiting for stats object from peripheral"

    const-string v5, "FileTransfer"

    invoke-interface {v1, v2, v3, v4, v5}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 13
    :goto_1
    iget-object v1, p0, Lhc/k0;->n:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    .line 14
    :try_start_3
    invoke-static {v1}, Lgc/r;->G([B)Lgc/r;

    move-result-object v3
    :try_end_3
    .catch Lm7/z; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 15
    :catch_2
    :try_start_4
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t get stats for slot "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lhc/k0;->t:I

    invoke-static {v5}, Landroidx/appcompat/widget/y0;->b(I)I

    move-result v5

    add-int/2addr p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FileTransfer"

    invoke-interface {v1, p1, v3, v4, v2}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 16
    :cond_0
    :goto_2
    monitor-exit v0

    return-object v3

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final g(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lhc/k0;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lhc/k0;->E:Z

    .line 3
    iget-object v0, p0, Lhc/k0;->w:Lpc/a;

    invoke-virtual {v0, p1}, Lpc/c;->b(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final h(Lgc/g$b;)V
    .locals 3

    .line 1
    invoke-static {}, Lgc/g;->A()Lgc/g$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 3
    iget-object v1, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v1, Lgc/g;

    invoke-static {v1, p1}, Lgc/g;->x(Lgc/g;Lgc/g$b;)V

    .line 4
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object p1

    check-cast p1, Lgc/g;

    .line 5
    new-instance v0, Lhc/m0;

    sget-object v1, Lhc/d;->u:Lhc/d;

    const/16 v1, 0x11

    int-to-byte v1, v1

    sget-object v2, Lhc/m0$a;->l:Lhc/m0$a;

    invoke-virtual {p1}, Lm7/a;->m()[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 6
    :try_start_0
    iget-object p1, p0, Lhc/k0;->l:Lhc/e;

    invoke-virtual {p1, v0}, Lhc/e;->i(Lhc/m0;)V
    :try_end_0
    .catch Lkc/f; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final i()V
    .locals 10

    .line 1
    iget v0, p0, Lhc/k0;->f:I

    const/16 v1, 0x1fc

    mul-int/2addr v0, v1

    iget v2, p0, Lhc/k0;->h:I

    add-int/2addr v2, v0

    .line 2
    iget v3, p0, Lhc/k0;->i:I

    sub-int/2addr v3, v0

    if-lez v3, :cond_0

    if-ge v3, v1, :cond_0

    move v1, v3

    .line 3
    :cond_0
    iget v0, p0, Lhc/k0;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lhc/k0;->j:I

    .line 4
    iget-object v0, p0, Lhc/k0;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v3, "FileTransfer"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v1, "transfer cancelled isGoldSlot="

    .line 6
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget v2, p0, Lhc/k0;->t:I

    invoke-static {v2}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5, v3}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 8
    sget-object v0, Lgc/g$b;->n:Lgc/g$b;

    invoke-virtual {p0, v0}, Lhc/k0;->h(Lgc/g$b;)V

    .line 9
    iput v5, p0, Lhc/k0;->f:I

    .line 10
    iput v5, p0, Lhc/k0;->a:I

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lhc/k0;->w:Lpc/a;

    iget v6, p0, Lhc/k0;->g:I

    int-to-float v6, v6

    iget v7, p0, Lhc/k0;->b:I

    int-to-float v7, v7

    .line 12
    iget-object v0, v0, Lpc/a;->b:Llc/a;

    invoke-interface {v0, v6, v7}, Llc/a;->i(FF)V

    .line 13
    iget v0, p0, Lhc/k0;->f:I

    add-int/lit8 v6, v1, 0x2

    .line 14
    new-array v7, v6, [B

    .line 15
    iget-object v8, p0, Lhc/k0;->z:[B

    const/4 v9, 0x2

    invoke-static {v8, v2, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v1

    .line 16
    iget v1, p0, Lhc/k0;->h:I

    sub-int/2addr v2, v1

    iget v1, p0, Lhc/k0;->i:I

    if-lt v2, v1, :cond_2

    const/16 v1, 0x80

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_0
    int-to-byte v1, v1

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    .line 17
    aput-byte v2, v7, v5

    shr-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 18
    aput-byte v0, v7, v1

    .line 19
    iget v0, p0, Lhc/k0;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lhc/k0;->f:I

    .line 20
    iget v0, p0, Lhc/k0;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lhc/k0;->g:I

    .line 21
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v8, p0, Lhc/k0;->t:I

    .line 22
    invoke-static {v8}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v2, v5

    iget-object v8, p0, Lhc/k0;->v:Ljava/lang/String;

    aput-object v8, v2, v1

    iget v1, p0, Lhc/k0;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v9

    const/4 v1, 0x3

    iget v8, p0, Lhc/k0;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v1

    const/4 v1, 0x4

    iget v8, p0, Lhc/k0;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v1

    const/4 v1, 0x5

    iget v8, p0, Lhc/k0;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v1

    const/4 v1, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v1

    const-string v1, "sending FIRMWARE_TRANSMIT_SEGMENT isGoldSlot=%s deviceId=%s slotOffset=%d; overAlloffset=%d; slotSize=%d; totalSize=%d; buffersize=%d"

    .line 23
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5, v3}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 24
    iget-object v0, p0, Lhc/k0;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 25
    new-instance v0, Lhc/m0;

    sget-object v1, Lhc/d;->s:Lhc/d;

    const/16 v1, 0xf

    int-to-byte v1, v1

    sget-object v2, Lhc/m0$a;->l:Lhc/m0$a;

    invoke-direct {v0, v1, v2, v7}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 26
    :try_start_0
    iget-object v1, p0, Lhc/k0;->l:Lhc/e;

    invoke-virtual {v1, v0}, Lhc/e;->i(Lhc/m0;)V
    :try_end_0
    .catch Lkc/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {p0}, Lhc/k0;->e()V

    .line 28
    invoke-virtual {p0, v0}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhc/k0;->C:Lhc/j0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3
    :cond_0
    iget-object v0, p0, Lhc/k0;->B:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lhc/k0;->C:Lhc/j0;

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    sget-object p1, Lgc/g$b;->i:Lgc/g$b;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "com.nike.corerf.DEVICE_ID"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3
    iget-object v1, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_16

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WINDOW_MOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 5
    :goto_0
    iget-object p1, p0, Lhc/k0;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_2

    .line 6
    iget-object p1, p0, Lhc/k0;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object p2, p0, Lhc/k0;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 8
    iget-object p2, p0, Lhc/k0;->e:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 9
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 10
    :cond_2
    iget p1, p0, Lhc/k0;->f:I

    iget p2, p0, Lhc/k0;->a:I

    if-ne p1, p2, :cond_29

    .line 11
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "finished sending slot: "

    .line 12
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 13
    iget v0, p0, Lhc/k0;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of total: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lhc/k0;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto/16 :goto_16

    .line 14
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_24

    const-string v0, "com.nike.corerf.EXTRA_DATA"

    .line 15
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2}, Lhc/m0;->a([B)Lhc/m0;

    move-result-object p2

    if-nez p2, :cond_4

    .line 16
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "null message sent to onRipleyMessageReceived()"

    const-string v0, "FileTransfer"

    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto/16 :goto_16

    .line 17
    :cond_4
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v5, "parsing state: %d"

    new-array v6, v4, [Ljava/lang/Object;

    iget-byte v7, p2, Lhc/m0;->a:B

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "FileTransfer"

    invoke-interface {v0, v5, v1, v2, v6}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 18
    iget-byte v0, p2, Lhc/m0;->a:B

    .line 19
    sget-object v5, Lhc/d;->t0:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/d;

    if-nez v0, :cond_5

    return-void

    .line 20
    :cond_5
    iget-byte v0, p2, Lhc/m0;->a:B

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhc/d;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v5, 0x4

    const/4 v6, 0x3

    packed-switch v0, :pswitch_data_0

    .line 23
    :pswitch_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, "FIRMWARE_UNKNOWN deviceId="

    .line 24
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    iget-object v3, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " received unhandled command: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lhc/m0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto/16 :goto_16

    .line 26
    :pswitch_1
    iget-object v0, p2, Lhc/m0;->b:Lhc/m0$a;

    sget-object v5, Lhc/m0$a;->j:Lhc/m0$a;

    if-ne v0, v5, :cond_b

    .line 27
    iget-object v0, p2, Lhc/m0;->c:[B

    if-eqz v0, :cond_b

    .line 28
    iget-object v0, p0, Lhc/k0;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_1
    iget-object v5, p2, Lhc/m0;->c:[B

    array-length v7, v5

    new-array v7, v7, [B

    iput-object v7, p0, Lhc/k0;->n:[B

    .line 30
    array-length v8, v5

    invoke-static {v5, v2, v7, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v5, p0, Lhc/k0;->u:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 32
    monitor-exit v0

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 33
    :pswitch_2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v3, "received FIRMWARE_STOP_TRANSFER deviceId="

    .line 34
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 35
    iget-object v5, p0, Lhc/k0;->v:Ljava/lang/String;

    const-string v6, " command"

    .line 36
    invoke-static {v3, v5, v6}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FileTransfer"

    .line 37
    invoke-interface {v0, v3, v1, v2, v5}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 38
    iget v0, p0, Lhc/k0;->o:I

    add-int/2addr v0, v4

    iput v0, p0, Lhc/k0;->o:I

    .line 39
    iget-boolean v0, p0, Lhc/k0;->D:Z

    if-eqz v0, :cond_6

    .line 40
    iget-object v0, p0, Lhc/k0;->l:Lhc/e;

    iget-object v0, v0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 41
    :cond_6
    :try_start_2
    iget-object v0, p2, Lhc/m0;->c:[B

    if-nez v0, :cond_7

    move-object v0, p1

    goto :goto_1

    .line 42
    :cond_7
    invoke-static {v0}, Lgc/g;->B([B)Lgc/g;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lgc/g;->z()Lgc/g$b;

    move-result-object v0
    :try_end_2
    .catch Lm7/z; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    :goto_1
    :try_start_3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FIRMWARE_STOP_TRANSFER Firmware stop transfer received deviceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " stopReason:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FileTransfer"

    invoke-interface {v3, v5, v1, v2, v6}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V
    :try_end_3
    .catch Lm7/z; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_0
    move-object v0, v1

    .line 45
    :catch_1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v3

    const-string v5, "FIRMWARE_STOP_TRANSFER Firmware stop transfer received with invalid status deviceId="

    .line 46
    invoke-static {v5}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 47
    iget-object v6, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FileTransfer"

    invoke-interface {v3, v5, v1, v2, v6}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_29

    if-eq v0, p1, :cond_29

    .line 48
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v3, "FIRMWARE_STOP_TRANSFER Firmware deviceId="

    .line 49
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50
    iget-object v5, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " stop transfer received with invalid status: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "FileTransfer"

    invoke-interface {p1, v3, v1, v2, v5}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 51
    new-instance p1, Lkc/c$f;

    iget-object v3, p0, Lhc/k0;->v:Ljava/lang/String;

    iget v5, p0, Lhc/k0;->t:I

    invoke-static {v5}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v5

    iget v6, p0, Lhc/k0;->t:I

    if-eq v6, v4, :cond_8

    goto :goto_3

    :cond_8
    move v4, v2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v3, v5, v4, v6}, Lkc/c$f;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    .line 52
    iget-object p1, p2, Lhc/m0;->b:Lhc/m0$a;

    sget-object p2, Lhc/m0$a;->l:Lhc/m0$a;

    if-ne p1, p2, :cond_29

    .line 53
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "FIRMWARE_STOP_TRANSFER received unexpected stop from peripheral deviceId="

    .line 54
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 55
    iget-object v3, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stopReason:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 56
    invoke-virtual {p0, v2}, Lhc/k0;->c(Z)V

    .line 57
    invoke-virtual {p0}, Lhc/k0;->e()V

    goto/16 :goto_16

    .line 58
    :pswitch_3
    iget-object p1, p2, Lhc/m0;->b:Lhc/m0$a;

    sget-object v0, Lhc/m0$a;->l:Lhc/m0$a;

    if-eq p1, v0, :cond_9

    .line 59
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, "FIRMWARE_RETRANSMIT_SEGMENT non-event received: "

    .line 60
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    iget-object p2, p2, Lhc/m0;->b:Lhc/m0$a;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void

    .line 62
    :cond_9
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, "received FIRMWARE_RETRANSMIT_SEGMENT  deviceId="

    .line 63
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    iget-object v3, p0, Lhc/k0;->v:Ljava/lang/String;

    const-string v4, " command"

    .line 65
    invoke-static {v0, v3, v4}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "FileTransfer"

    .line 66
    invoke-interface {p1, v0, v1, v2, v3}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 67
    :try_start_4
    iget-object p1, p2, Lhc/m0;->c:[B

    if-nez p1, :cond_a

    .line 68
    invoke-static {}, Lgc/f;->A()Lgc/f$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lgc/f$a;->m(I)Lgc/f$a;

    invoke-virtual {p1}, Lm7/w$a;->h()Lm7/w;

    move-result-object p1

    check-cast p1, Lgc/f;

    goto :goto_4

    .line 69
    :cond_a
    invoke-static {p1}, Lgc/f;->B([B)Lgc/f;

    move-result-object p1
    :try_end_4
    .catch Lm7/z; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 70
    :catch_2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "received invalid FIRMWARE_RETRANSMIT_SEGMENT  deviceId="

    .line 71
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 72
    iget-object v0, p0, Lhc/k0;->v:Ljava/lang/String;

    const-string v3, " command"

    .line 73
    invoke-static {p2, v0, v3}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    .line 74
    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 75
    invoke-static {}, Lgc/f;->A()Lgc/f$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lgc/f$a;->m(I)Lgc/f$a;

    invoke-virtual {p1}, Lm7/w$a;->h()Lm7/w;

    move-result-object p1

    check-cast p1, Lgc/f;

    .line 76
    :goto_4
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    const-string v0, "resending FIRMWARE_RETRANSMIT_SEGMENT deviceId="

    .line 77
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    iget-object v3, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " index: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgc/f;->z()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FileTransfer"

    invoke-interface {p2, v0, v1, v2, v3}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lgc/f;->z()I

    move-result p1

    iput p1, p0, Lhc/k0;->f:I

    goto/16 :goto_16

    .line 80
    :cond_b
    :goto_5
    :pswitch_4
    iget-object v0, p2, Lhc/m0;->b:Lhc/m0$a;

    sget-object v5, Lhc/m0$a;->j:Lhc/m0$a;

    if-ne v0, v5, :cond_c

    .line 81
    iget-object p1, p0, Lhc/k0;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 82
    iget-object v5, p0, Lhc/k0;->e:Ljava/lang/Object;

    monitor-enter v5

    .line 83
    :try_start_5
    iget-object p1, p0, Lhc/k0;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit v5

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    .line 85
    :cond_c
    sget-object v5, Lhc/m0$a;->l:Lhc/m0$a;

    if-ne v0, v5, :cond_29

    .line 86
    :try_start_6
    iget-object v0, p2, Lhc/m0;->c:[B

    invoke-static {v0}, Lgc/h;->z([B)Lgc/h;

    move-result-object p2
    :try_end_6
    .catch Lm7/z; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 87
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v5

    const-string v7, "TRANSMIT_SEGMENT received with invalid payload (size of %d): %s"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object p2, p2, Lhc/m0;->c:[B

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v8, v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    invoke-interface {v5, p2, v1, v2, v0}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    move-object p2, v1

    :goto_6
    if-nez p2, :cond_d

    .line 88
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v5, "TRANSMIT_SEGMENT received with empty payload"

    const-string v7, "FileTransfer"

    invoke-interface {v0, v5, v1, v2, v7}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    :cond_d
    if-eqz p2, :cond_f

    .line 89
    invoke-virtual {p2}, Lgc/h;->y()Lm7/i;

    move-result-object p2

    invoke-virtual {p2}, Lm7/i;->r()[B

    move-result-object p2

    .line 90
    aget-byte v0, p2, v4

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x8

    .line 91
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    const v5, 0xffff

    and-int/2addr v0, v5

    int-to-short v0, v0

    .line 92
    aget-byte v5, p2, v4

    const/16 v7, -0x80

    and-int/2addr v5, v7

    if-ne v7, v5, :cond_e

    move v5, v4

    goto :goto_7

    :cond_e
    move v5, v2

    .line 93
    :goto_7
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v7

    const-string v8, "valid segmentReceived %d segmentBytes[0]=%d segmentBytes[1]=%d"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    aput-object v10, v9, v2

    aget-byte v10, p2, v2

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v4

    aget-byte v10, p2, v4

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "FileTransfer"

    invoke-interface {v7, v8, v1, v2, v9}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto :goto_8

    :cond_f
    move-object p2, v1

    move v0, v2

    move v5, v0

    :goto_8
    if-eqz p2, :cond_13

    .line 94
    iget v7, p0, Lhc/k0;->p:I

    if-eq v0, v7, :cond_10

    goto :goto_a

    .line 95
    :cond_10
    iget-object v0, p0, Lhc/k0;->A:Ljava/io/ByteArrayOutputStream;

    array-length v2, p2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p2, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 96
    iget p2, p0, Lhc/k0;->p:I

    add-int/2addr p2, v4

    iput p2, p0, Lhc/k0;->p:I

    .line 97
    iget-object p2, p0, Lhc/k0;->A:Ljava/io/ByteArrayOutputStream;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    if-nez p2, :cond_11

    goto :goto_9

    .line 98
    :cond_11
    invoke-virtual {p0}, Lhc/k0;->j()V

    .line 99
    new-instance p2, Lhc/j0;

    invoke-direct {p2, p0}, Lhc/j0;-><init>(Lhc/k0;)V

    .line 100
    iput-object p2, p0, Lhc/k0;->C:Lhc/j0;

    .line 101
    iget-object v0, p0, Lhc/k0;->B:Ljava/util/Timer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, p2, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 102
    iget p2, p0, Lhc/k0;->p:I

    add-int/2addr p2, v4

    sget v0, Lhc/k0;->F:I

    mul-int/2addr p2, v0

    iget v0, p0, Lhc/k0;->q:I

    div-int/2addr p2, v0

    int-to-float p2, p2

    .line 103
    iget-object v0, p0, Lhc/k0;->w:Lpc/a;

    .line 104
    iget-object v0, v0, Lpc/a;->b:Llc/a;

    invoke-interface {v0, p2, p2}, Llc/a;->i(FF)V

    .line 105
    :cond_12
    :goto_9
    iput v6, p0, Lhc/k0;->s:I

    if-eqz v5, :cond_29

    .line 106
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    const-string v0, "FileTransfer.endLargeReceive() "

    .line 107
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    iget-object v2, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FileTransfer"

    invoke-interface {p2, v0, v1, v2}, Lhc/g0;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lhc/k0;->j()V

    .line 110
    invoke-virtual {p0, p1}, Lhc/k0;->h(Lgc/g$b;)V

    .line 111
    iget-object p1, p0, Lhc/k0;->l:Lhc/e;

    const-string p2, "com.nike.corerf.ACTION_BIGFOOT_TRANSFER_RECEIVE_COMPLETE"

    invoke-virtual {p1, p2}, Lhc/e;->a(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lhc/k0;->w:Lpc/a;

    .line 113
    iget-object p1, p1, Lpc/a;->b:Llc/a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-interface {p1, p2}, Llc/a;->b(Ljava/lang/Object;)V

    return-void

    .line 114
    :cond_13
    :goto_a
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "invalid segment %d (expecting %d)"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v5, v2

    iget v7, p0, Lhc/k0;->p:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v5, "FileTransfer"

    invoke-interface {p1, p2, v1, v2, v5}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 115
    iget p1, p0, Lhc/k0;->r:I

    const/4 p2, 0x5

    if-le p1, p2, :cond_14

    .line 116
    sget-object p1, Lgc/g$b;->k:Lgc/g$b;

    invoke-virtual {p0, p1}, Lhc/k0;->h(Lgc/g$b;)V

    .line 117
    iget-object p1, p0, Lhc/k0;->l:Lhc/e;

    const-string p2, "com.nike.corerf.ACTION_BIGFOOT_TRANSFER_RECEIVE_FAILED"

    invoke-virtual {p1, p2}, Lhc/e;->a(Ljava/lang/String;)V

    .line 118
    :cond_14
    iget p1, p0, Lhc/k0;->s:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lhc/k0;->s:I

    if-lt p1, v6, :cond_16

    .line 119
    iget p1, p0, Lhc/k0;->r:I

    add-int/2addr p1, v4

    iput p1, p0, Lhc/k0;->r:I

    .line 120
    iput v2, p0, Lhc/k0;->s:I

    .line 121
    iget p1, p0, Lhc/k0;->p:I

    .line 122
    iget-object p2, p0, Lhc/k0;->l:Lhc/e;

    if-nez p2, :cond_15

    goto :goto_b

    .line 123
    :cond_15
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "sendRetransmit(%d)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FileTransfer"

    invoke-interface {p2, v0, v1, v2}, Lhc/g0;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 124
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lhc/i0;

    invoke-direct {v0, p0, p1}, Lhc/i0;-><init>(Lhc/k0;I)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {p2}, Ljava/lang/Thread;->run()V

    goto :goto_b

    .line 126
    :cond_16
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "dropping segment %d, waiting for retransmit of %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v3, v2

    iget v0, p0, Lhc/k0;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    :goto_b
    return-void

    .line 127
    :pswitch_5
    iget-boolean p1, p0, Lhc/k0;->D:Z

    if-eqz p1, :cond_17

    .line 128
    iget-object p1, p0, Lhc/k0;->l:Lhc/e;

    iget-object p1, p1, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 129
    :cond_17
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, "received FIRMWARE_DOWNLOAD_COMPLETE isGoldSlot=%s deviceId=%s, command - sent %d of %d (excluding FA header)"

    new-array v7, v5, [Ljava/lang/Object;

    iget v8, p0, Lhc/k0;->t:I

    .line 130
    invoke-static {v8}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, p0, Lhc/k0;->v:Ljava/lang/String;

    aput-object v8, v7, v4

    iget v8, p0, Lhc/k0;->j:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    iget v3, p0, Lhc/k0;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v6

    .line 131
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "FileTransfer"

    invoke-interface {p1, v0, v1, v2, v3}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 132
    :try_start_7
    iget-object p1, p2, Lhc/m0;->c:[B

    invoke-static {p1}, Lgc/b;->z([B)Lgc/b;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lgc/b;->y()Lgc/b$b;

    move-result-object p1
    :try_end_7
    .catch Lm7/z; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_c

    .line 134
    :catch_4
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "FIRMWARE_DOWNLOAD_COMPLETE Firmware update completed with invalid status deviceId="

    .line 135
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 136
    iget-object v0, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    move-object p1, v1

    .line 137
    :goto_c
    iget p2, p0, Lhc/k0;->g:I

    iget v0, p0, Lhc/k0;->b:I

    if-ne p2, v0, :cond_29

    if-eqz p1, :cond_19

    .line 138
    sget-object p2, Lgc/b$b;->i:Lgc/b$b;

    if-ne p1, p2, :cond_19

    .line 139
    iget-object p1, p0, Lhc/k0;->c:Lgc/a;

    invoke-virtual {p1}, Lgc/a;->B()I

    move-result p1

    if-ne p1, v4, :cond_18

    iget-object p1, p0, Lhc/k0;->c:Lgc/a;

    invoke-virtual {p1, v2}, Lgc/a;->A(I)Lgc/c;

    move-result-object p1

    invoke-virtual {p1}, Lgc/c;->F()Lgc/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lgc/c$b;->a()I

    move-result p1

    sget-object p2, Lgc/c$b;->m:Lgc/c$b;

    invoke-virtual {p2}, Lgc/c$b;->a()I

    move-result p2

    if-le p1, p2, :cond_18

    .line 140
    iget-object p1, p0, Lhc/k0;->l:Lhc/e;

    const-string p2, "com.nike.corerf.ACTION_BIGFOOT_FILE_TRANSFER_COMPLETED"

    invoke-virtual {p1, p2}, Lhc/e;->a(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 141
    :cond_18
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lx/a;

    invoke-direct {p2, p0, v5}, Lx/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_16

    :cond_19
    const-string p2, "no_reason_supplied"

    if-eqz p1, :cond_1a

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 144
    :cond_1a
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, "FIRMWARE_DOWNLOAD_COMPLETE deviceId="

    .line 145
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    iget-object v3, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Firmware update completed with error status: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FileTransfer"

    invoke-interface {p1, v0, v1, v2, v3}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 147
    new-instance p1, Lkc/c$a;

    iget-object v0, p0, Lhc/k0;->v:Ljava/lang/String;

    iget v1, p0, Lhc/k0;->t:I

    invoke-static {v1}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v1

    iget v3, p0, Lhc/k0;->t:I

    if-eq v3, v4, :cond_1b

    move v2, v4

    :cond_1b
    invoke-direct {p1, v0, v1, v2, p2}, Lkc/c$a;-><init>(Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    .line 148
    invoke-virtual {p0}, Lhc/k0;->e()V

    goto/16 :goto_16

    .line 149
    :pswitch_6
    iget-object p1, p2, Lhc/m0;->b:Lhc/m0$a;

    sget-object v0, Lhc/m0$a;->k:Lhc/m0$a;

    if-ne p1, v0, :cond_1d

    .line 150
    new-instance p1, Lkc/c$c;

    iget-object p2, p0, Lhc/k0;->v:Ljava/lang/String;

    iget v0, p0, Lhc/k0;->t:I

    invoke-static {v0}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v0

    iget v1, p0, Lhc/k0;->t:I

    if-eq v1, v4, :cond_1c

    goto :goto_d

    :cond_1c
    move v4, v2

    :goto_d
    invoke-direct {p1, p2, v0, v4}, Lkc/c$c;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    .line 151
    invoke-virtual {p0, v2}, Lhc/k0;->c(Z)V

    .line 152
    invoke-virtual {p0}, Lhc/k0;->e()V

    return-void

    .line 153
    :cond_1d
    iget-boolean p1, p0, Lhc/k0;->D:Z

    if-eqz p1, :cond_1e

    .line 154
    iget-object p1, p0, Lhc/k0;->l:Lhc/e;

    iget-object p1, p1, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 155
    :cond_1e
    iget-object p1, p2, Lhc/m0;->b:Lhc/m0$a;

    sget-object v0, Lhc/m0$a;->j:Lhc/m0$a;

    if-ne p1, v0, :cond_1f

    .line 156
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "FIRMWARE_PULL deviceId="

    .line 157
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 158
    iget-object v0, p0, Lhc/k0;->v:Ljava/lang/String;

    const-string v3, " received ACK with pull."

    .line 159
    invoke-static {p2, v0, v3}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    .line 160
    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lhc/k0;->i()V

    return-void

    .line 162
    :cond_1f
    iget-object p1, p2, Lhc/m0;->c:[B

    if-eqz p1, :cond_29

    .line 163
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string v0, "FIRMWARE_PULL deviceId="

    .line 164
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    iget-object v7, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " received message action: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lhc/m0;->b:Lhc/m0$a;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "FileTransfer"

    invoke-interface {p1, v0, v1, v2, v7}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 166
    :try_start_8
    iget-object p1, p2, Lhc/m0;->c:[B

    invoke-static {p1}, Lgc/e;->F([B)Lgc/e;

    move-result-object p1
    :try_end_8
    .catch Lm7/z; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_e

    :catch_5
    move-exception p1

    .line 167
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    const-string v0, "FIRMWARE_PULL deviceId="

    .line 168
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    iget-object v7, p0, Lhc/k0;->v:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " badPayload: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileTransfer"

    invoke-interface {p2, p1, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    move-object p1, v1

    .line 170
    :goto_e
    iget-object p2, p0, Lhc/k0;->z:[B

    const/16 v0, 0xb

    if-eqz p2, :cond_21

    iget-object p2, p0, Lhc/k0;->c:Lgc/a;

    if-eqz p2, :cond_21

    iget-object p2, p0, Lhc/k0;->d:Lgc/d;

    if-eqz p2, :cond_21

    if-eqz p1, :cond_21

    .line 171
    invoke-virtual {p2}, Lgc/d;->A()I

    move-result p2

    invoke-virtual {p1}, Lgc/e;->C()I

    move-result v7

    if-ne p2, v7, :cond_21

    iget-object p2, p0, Lhc/k0;->z:[B

    array-length p2, p2

    .line 172
    invoke-virtual {p1}, Lgc/e;->B()I

    move-result v7

    invoke-virtual {p1}, Lgc/e;->D()I

    move-result v8

    add-int/2addr v8, v7

    if-ge p2, v8, :cond_20

    goto/16 :goto_10

    .line 173
    :cond_20
    invoke-virtual {p1}, Lgc/e;->B()I

    move-result p2

    iput p2, p0, Lhc/k0;->h:I

    .line 174
    invoke-virtual {p1}, Lgc/e;->D()I

    move-result p2

    iput p2, p0, Lhc/k0;->i:I

    .line 175
    iput v2, p0, Lhc/k0;->f:I

    .line 176
    div-int/lit16 v7, p2, 0x1fc

    add-int/2addr v7, v4

    iput v7, p0, Lhc/k0;->a:I

    .line 177
    iget v7, p0, Lhc/k0;->k:I

    add-int/2addr v7, p2

    iput v7, p0, Lhc/k0;->k:I

    .line 178
    iget-object v7, p0, Lhc/k0;->m:[I

    iget v8, p0, Lhc/k0;->o:I

    iget-object v9, p0, Lhc/k0;->z:[B

    iget v10, p0, Lhc/k0;->h:I

    invoke-static {v9, v10, p2}, Lrc/a;->a([BII)I

    move-result p2

    aput p2, v7, v8

    .line 179
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    const-string v7, "FIRMWARE_PULL deviceId="

    .line 180
    invoke-static {v7}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 181
    iget-object v8, p0, Lhc/k0;->v:Ljava/lang/String;

    const-string v9, " PULL request id=%d; offset=%d; size=%d; chksum=%d"

    .line 182
    invoke-static {v7, v8, v9}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    .line 183
    invoke-virtual {p1}, Lgc/e;->C()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    iget p1, p0, Lhc/k0;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    iget p1, p0, Lhc/k0;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    iget-object p1, p0, Lhc/k0;->m:[I

    iget v3, p0, Lhc/k0;->o:I

    aget p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    .line 184
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "FileTransfer"

    invoke-interface {p2, p1, v1, v2, v3}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 185
    :try_start_9
    iget-object p1, p0, Lhc/k0;->l:Lhc/e;

    new-instance p2, Lhc/m0;

    sget-object v3, Lhc/d;->p:Lhc/d;

    int-to-byte v0, v0

    sget-object v3, Lhc/m0$a;->j:Lhc/m0$a;

    invoke-direct {p2, v0, v3, v1}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    invoke-virtual {p1, p2}, Lhc/e;->h(Lhc/m0;)V
    :try_end_9
    .catch Lkc/f; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_f

    :catch_6
    move-exception p1

    .line 186
    invoke-virtual {p0}, Lhc/k0;->e()V

    .line 187
    invoke-virtual {p0, p1}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    .line 188
    :goto_f
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "FIRMWARE_PULL deviceId="

    .line 189
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 190
    iget-object v0, p0, Lhc/k0;->v:Ljava/lang/String;

    const-string v3, " PULL ack sent"

    .line 191
    invoke-static {p2, v0, v3}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    .line 192
    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto/16 :goto_16

    .line 193
    :cond_21
    :goto_10
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    const-string v7, "FIRMWARE_PULL deviceId="

    .line 194
    invoke-static {v7}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 195
    iget-object v8, p0, Lhc/k0;->v:Ljava/lang/String;

    const-string v9, " invalid size (%d != %d); file ID %d != %d; or no local data available"

    .line 196
    invoke-static {v7, v8, v9}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    .line 197
    iget-object v8, p0, Lhc/k0;->z:[B

    if-nez v8, :cond_22

    move v8, v2

    goto :goto_11

    :cond_22
    array-length v8, v8

    :goto_11
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    invoke-virtual {p1}, Lgc/e;->B()I

    move-result v8

    invoke-virtual {p1}, Lgc/e;->D()I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v4

    iget-object v4, p0, Lhc/k0;->d:Lgc/d;

    .line 198
    invoke-virtual {v4}, Lgc/d;->A()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {p1}, Lgc/e;->C()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    .line 199
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "FileTransfer"

    invoke-interface {p2, p1, v1, v2, v3}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 200
    new-instance p1, Lhc/m0;

    sget-object p2, Lhc/d;->p:Lhc/d;

    int-to-byte p2, v0

    sget-object v0, Lhc/m0$a;->k:Lhc/m0$a;

    invoke-direct {p1, p2, v0, v1}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 201
    :try_start_a
    iget-object p2, p0, Lhc/k0;->l:Lhc/e;

    invoke-virtual {p2, p1}, Lhc/e;->h(Lhc/m0;)V
    :try_end_a
    .catch Lkc/f; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_12

    :catch_7
    move-exception p1

    .line 202
    invoke-virtual {p0}, Lhc/k0;->e()V

    .line 203
    invoke-virtual {p0, p1}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    :goto_12
    return-void

    .line 204
    :pswitch_7
    iget-object p1, p2, Lhc/m0;->b:Lhc/m0$a;

    sget-object p2, Lhc/m0$a;->k:Lhc/m0$a;

    if-ne p1, p2, :cond_29

    .line 205
    new-instance p1, Lkc/c$b;

    iget-object p2, p0, Lhc/k0;->v:Ljava/lang/String;

    iget v0, p0, Lhc/k0;->t:I

    invoke-static {v0}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v0

    iget v1, p0, Lhc/k0;->t:I

    if-eq v1, v4, :cond_23

    move v2, v4

    :cond_23
    invoke-direct {p1, p2, v0, v2}, Lkc/c$b;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 206
    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.nike.corerf.ACTION_RIPLEY_MESSAGE_SEND_COMPLETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const-string p1, "com.nike.corerf.EXTRA_DATA"

    const/4 v0, -0x1

    .line 207
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 208
    sget-object p2, Lhc/d;->s:Lhc/d;

    const/16 p2, 0xf

    if-eq p1, p2, :cond_25

    return-void

    .line 209
    :cond_25
    iget p1, p0, Lhc/k0;->f:I

    iget p2, p0, Lhc/k0;->a:I

    if-ge p1, p2, :cond_29

    .line 210
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "calling next sendHandler()"

    const-string v0, "FileTransfer"

    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 211
    :goto_13
    iget-object p1, p0, Lhc/k0;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_26

    .line 212
    iget-object p1, p0, Lhc/k0;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 213
    :try_start_b
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    const-string v0, "waiting for segment %d sent notification on ThreadID: %d"

    new-array v5, v3, [Ljava/lang/Object;

    iget v6, p0, Lhc/k0;->f:I

    .line 214
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 215
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "FileTransfer"

    invoke-interface {p2, v0, v1, v2, v5}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 216
    iget-object p2, p0, Lhc/k0;->e:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_14

    :catchall_3
    move-exception p2

    goto :goto_15

    :catch_8
    move-exception p2

    .line 217
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    :goto_14
    monitor-exit p1

    goto :goto_13

    :goto_15
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw p2

    .line 219
    :cond_26
    invoke-virtual {p0}, Lhc/k0;->i()V

    goto :goto_16

    .line 220
    :cond_27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.nike.corerf.ACTION_BIGFOOT_FIRMWARE_TRANSFER_CHECK_VALIDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.nike.corerf.ACTION_BIGFOOT_FILE_TRANSFER_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 222
    :cond_28
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p1

    const-string p2, "firmware post-upload check appears valid isGoldSlot="

    .line 223
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 224
    iget v0, p0, Lhc/k0;->t:I

    invoke-static {v0}, Landroidx/appcompat/widget/y0;->a(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FileTransfer"

    invoke-interface {p1, p2, v1, v2, v0}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 225
    iget-object p1, p0, Lhc/k0;->w:Lpc/a;

    .line 226
    iget-object p1, p1, Lpc/a;->b:Llc/a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-interface {p1, p2}, Llc/a;->b(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p0}, Lhc/k0;->e()V

    :cond_29
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
