.class public final Lhc/e;
.super Ljava/lang/Object;
.source "CoreRF.java"

# interfaces
.implements Lhc/o0;


# instance fields
.field public final a:Lb2/h;

.field public b:Z

.field public volatile c:Ljava/util/concurrent/ExecutorService;

.field public d:Landroid/bluetooth/BluetoothGatt;

.field public e:Lhc/p0;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lhc/e;->c:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object v0, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lhc/e;->j:I

    .line 6
    iput-object p1, p0, Lhc/e;->k:Ljava/lang/String;

    .line 7
    new-instance p1, Lb2/h;

    invoke-direct {p1}, Lb2/h;-><init>()V

    iput-object p1, p0, Lhc/e;->a:Lb2/h;

    return-void
.end method

.method public static m(II)I
    .locals 0

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x40

    :goto_0
    sub-int/2addr p1, p0

    return p1
.end method

.method public static o([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 3
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02X"

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lhc/e;->k:Ljava/lang/String;

    const-string v1, "com.nike.corerf.DEVICE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lw0/a;->d(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.nike.corerf.EXTRA_DATA"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lhc/e;->k:Ljava/lang/String;

    const-string p2, "com.nike.corerf.DEVICE_ID"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lw0/a;->d(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;[B)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Lmc/b;->h:Lmc/b;

    iget-object v4, v0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v4, :cond_27

    if-nez v2, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.nike.corerf.EXTRA_DATA"

    .line 3
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4
    iget-object v5, v0, Lhc/e;->k:Ljava/lang/String;

    const-string v6, "com.nike.corerf.DEVICE_ID"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lw0/a;->d(Landroid/content/Intent;)V

    .line 6
    invoke-static/range {p2 .. p2}, Lhc/m0;->a([B)Lhc/m0;

    move-result-object v2

    const-string v4, "com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE"

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    if-eqz v2, :cond_27

    iget-object v1, v2, Lhc/m0;->b:Lhc/m0$a;

    sget-object v4, Lhc/m0$a;->l:Lhc/m0$a;

    if-ne v1, v4, :cond_27

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    .line 8
    iget-byte v5, v2, Lhc/m0;->a:B

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Got a notification update message:type: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcastUpdate"

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v7, v4, v8}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 9
    iget-byte v4, v2, Lhc/m0;->a:B

    sget-object v5, Lhc/d;->z:Lhc/d;

    const/16 v5, 0x51

    int-to-byte v5, v5

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-ne v4, v5, :cond_5

    .line 10
    :try_start_0
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lgc/l;->A([B)Lgc/l;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lgc/l;->z()Lgc/l$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v1, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v11, :cond_1

    move v1, v9

    goto :goto_0

    :cond_1
    move v1, v10

    goto :goto_0

    :cond_2
    move v1, v11

    goto :goto_0

    :cond_3
    move v1, v7

    .line 12
    :cond_4
    :goto_0
    new-instance v3, Lmc/c;

    invoke-virtual {v2}, Lgc/l;->y()I

    move-result v2

    invoke-direct {v3, v2, v1}, Lmc/c;-><init>(II)V

    .line 13
    sget-object v1, Lhc/f0;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    .line 14
    :cond_5
    sget-object v5, Lhc/d;->D:Lhc/d;

    const/16 v5, 0x6f

    int-to-byte v5, v5

    if-ne v4, v5, :cond_6

    .line 15
    sget-object v1, Lhc/f0;->h:Ljava/lang/String;

    new-instance v2, Lmc/r;

    invoke-direct {v2}, Lmc/r;-><init>()V

    invoke-virtual {v0, v1, v2}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    .line 16
    :cond_6
    sget-object v5, Lhc/d;->n:Lhc/d;

    int-to-byte v5, v9

    if-ne v4, v5, :cond_7

    .line 17
    sget-object v1, Lhc/f0;->g:Ljava/lang/String;

    .line 18
    :try_start_1
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lgc/a0;->z([B)Lgc/a0;

    move-result-object v2

    .line 19
    new-instance v3, Lmc/t;

    invoke-virtual {v2}, Lgc/a0;->y()I

    move-result v2

    invoke-direct {v3, v2}, Lmc/t;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_a

    .line 20
    :catch_0
    new-instance v2, Lmc/t;

    invoke-direct {v2, v6}, Lmc/t;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    .line 21
    :cond_7
    sget-object v5, Lhc/d;->p0:Lhc/d;

    const/16 v5, 0xeb

    int-to-byte v5, v5

    if-ne v4, v5, :cond_8

    .line 22
    :try_start_2
    iget-object v1, v2, Lhc/m0;->c:[B

    invoke-static {v1}, Lgc/j0;->C([B)Lgc/j0;

    move-result-object v1

    .line 23
    sget-object v2, Lhc/f0;->i:Ljava/lang/String;

    .line 24
    sget-object v3, Lmc/g0;->m:Lmc/g0$a;

    invoke-virtual {v3, v1}, Lmc/g0$a;->a(Lgc/j0;)Lmc/g0;

    move-result-object v1

    .line 25
    invoke-virtual {v0, v2, v1}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_a

    .line 26
    :cond_8
    sget-object v5, Lhc/d;->s0:Lhc/d;

    const/16 v5, 0xee

    int-to-byte v5, v5

    if-ne v4, v5, :cond_9

    .line 27
    :try_start_3
    iget-object v1, v2, Lhc/m0;->c:[B

    invoke-static {v1}, Lgc/p;->C([B)Lgc/p;

    move-result-object v1

    .line 28
    sget-object v2, Lhc/f0;->j:Ljava/lang/String;

    .line 29
    sget-object v3, Lmc/j;->l:Lmc/j$a;

    invoke-virtual {v3, v1}, Lmc/j$a;->a(Lgc/p;)Lmc/j;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v2, v1}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_a

    .line 31
    :cond_9
    sget-object v5, Lhc/d;->L:Lhc/d;

    const/16 v5, 0x98

    int-to-byte v5, v5

    if-ne v4, v5, :cond_c

    .line 32
    sget-object v3, Lhc/f0;->l:Ljava/lang/String;

    .line 33
    :try_start_4
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lfc/x;->A([B)Lfc/x;

    move-result-object v2

    .line 34
    new-instance v4, Lmc/z;

    .line 35
    invoke-virtual {v2}, Lfc/x;->z()Lfc/z;

    move-result-object v5

    invoke-virtual {v5}, Lfc/z;->A()I

    move-result v5

    .line 36
    invoke-virtual {v2}, Lm7/w;->a()I

    move-result v8

    .line 37
    invoke-virtual {v2}, Lfc/x;->y()Lfc/x$b;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_b

    if-eq v2, v1, :cond_a

    move v1, v11

    goto :goto_1

    :cond_a
    move v1, v7

    .line 39
    :cond_b
    :goto_1
    invoke-direct {v4, v5, v8, v1}, Lmc/z;-><init>(III)V

    .line 40
    invoke-virtual {v0, v3, v4}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_a

    .line 41
    :catch_1
    new-instance v1, Lmc/z;

    .line 42
    invoke-direct {v1, v6, v6, v11}, Lmc/z;-><init>(III)V

    .line 43
    invoke-virtual {v0, v3, v1}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    .line 44
    :cond_c
    sget-object v5, Lhc/d;->O:Lhc/d;

    const/16 v5, 0x9f

    int-to-byte v5, v5

    if-ne v4, v5, :cond_14

    const/16 v22, 0x1

    const/4 v15, 0x1

    .line 45
    sget-object v3, Lhc/f0;->m:Ljava/lang/String;

    .line 46
    :try_start_5
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lfc/v;->J([B)Lfc/v;

    move-result-object v2

    .line 47
    new-instance v4, Lmc/y;

    .line 48
    invoke-virtual {v2}, Lfc/v;->I()I

    move-result v5

    int-to-long v5, v5

    .line 49
    invoke-virtual {v2}, Lfc/v;->B()Lfc/v$b;

    move-result-object v8

    invoke-virtual {v8}, Lfc/v$b;->a()I

    move-result v8

    if-eq v8, v1, :cond_f

    if-eq v8, v7, :cond_e

    if-eq v8, v11, :cond_d

    move/from16 v26, v15

    goto :goto_3

    :cond_d
    move v8, v10

    goto :goto_2

    :cond_e
    move v8, v11

    goto :goto_2

    :cond_f
    move v8, v7

    :goto_2
    move/from16 v26, v8

    .line 50
    :goto_3
    invoke-virtual {v2}, Lfc/v;->C()I

    move-result v27

    .line 51
    invoke-virtual {v2}, Lfc/v;->D()I

    move-result v28

    .line 52
    invoke-virtual {v2}, Lfc/v;->y()I

    move-result v29

    .line 53
    invoke-virtual {v2}, Lfc/v;->H()I

    move-result v30

    .line 54
    invoke-virtual {v2}, Lfc/v;->G()I

    move-result v31

    .line 55
    invoke-virtual {v2}, Lfc/v;->F()I

    move-result v32

    .line 56
    invoke-virtual {v2}, Lfc/v;->z()Lfc/d0;

    move-result-object v8

    invoke-virtual {v8}, Lfc/d0;->a()I

    move-result v8

    if-eq v8, v1, :cond_13

    if-eq v8, v7, :cond_12

    if-eq v8, v11, :cond_11

    if-eq v8, v10, :cond_10

    move/from16 v33, v22

    goto :goto_5

    :cond_10
    move v7, v9

    goto :goto_4

    :cond_11
    move v7, v10

    goto :goto_4

    :cond_12
    move v7, v11

    :cond_13
    :goto_4
    move/from16 v33, v7

    .line 57
    :goto_5
    invoke-virtual {v2}, Lfc/v;->E()I

    move-result v34

    move-object/from16 v23, v4

    move-wide/from16 v24, v5

    invoke-direct/range {v23 .. v34}, Lmc/y;-><init>(JIIIIIIIII)V

    .line 58
    invoke-virtual {v0, v3, v4}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_a

    .line 59
    :catch_2
    new-instance v1, Lmc/y;

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v23}, Lmc/y;-><init>(JIIIIIIIII)V

    invoke-virtual {v0, v3, v1}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    .line 60
    :cond_14
    sget-object v5, Lhc/d;->P:Lhc/d;

    const/16 v5, 0xa0

    int-to-byte v5, v5

    const-wide/16 v12, 0x0

    if-ne v4, v5, :cond_15

    .line 61
    sget-object v1, Lhc/f0;->n:Ljava/lang/String;

    .line 62
    :try_start_6
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lfc/l;->B([B)Lfc/l;

    move-result-object v2

    .line 63
    new-instance v3, Lmc/v;

    .line 64
    invoke-virtual {v2}, Lfc/l;->A()I

    move-result v4

    int-to-long v4, v4

    .line 65
    invoke-virtual {v2}, Lfc/l;->z()I

    move-result v7

    .line 66
    invoke-virtual {v2}, Lfc/l;->y()I

    move-result v2

    invoke-direct {v3, v4, v5, v7, v2}, Lmc/v;-><init>(JII)V

    .line 67
    invoke-virtual {v0, v1, v3}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_a

    .line 68
    :catch_3
    new-instance v2, Lmc/v;

    invoke-direct {v2, v12, v13, v6, v6}, Lmc/v;-><init>(JII)V

    invoke-virtual {v0, v1, v2}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    .line 69
    :cond_15
    sget-object v5, Lhc/d;->T:Lhc/d;

    const/16 v5, 0xa5

    int-to-byte v5, v5

    if-ne v4, v5, :cond_16

    .line 70
    sget-object v1, Lhc/f0;->o:Ljava/lang/String;

    .line 71
    :try_start_7
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lfc/u;->A([B)Lfc/u;

    move-result-object v2

    .line 72
    new-instance v12, Lmc/c0;

    .line 73
    invoke-virtual {v2}, Lfc/u;->z()I

    move-result v3

    int-to-long v4, v3

    .line 74
    invoke-virtual {v2}, Lfc/u;->y()Lfc/h;

    move-result-object v3

    invoke-virtual {v3}, Lfc/h;->C()Lfc/i;

    move-result-object v3

    invoke-virtual {v3}, Lfc/i;->C()I

    move-result v6

    .line 75
    invoke-virtual {v2}, Lfc/u;->y()Lfc/h;

    move-result-object v3

    invoke-virtual {v3}, Lfc/h;->C()Lfc/i;

    move-result-object v3

    invoke-virtual {v3}, Lfc/i;->D()I

    move-result v7

    .line 76
    invoke-virtual {v2}, Lfc/u;->y()Lfc/h;

    move-result-object v3

    invoke-virtual {v3}, Lfc/h;->C()Lfc/i;

    move-result-object v3

    invoke-virtual {v3}, Lfc/i;->E()I

    move-result v8

    .line 77
    invoke-virtual {v2}, Lfc/u;->y()Lfc/h;

    move-result-object v3

    invoke-virtual {v3}, Lfc/h;->A()Lfc/i;

    move-result-object v3

    invoke-virtual {v3}, Lfc/i;->C()I

    move-result v9

    .line 78
    invoke-virtual {v2}, Lfc/u;->y()Lfc/h;

    move-result-object v3

    invoke-virtual {v3}, Lfc/h;->A()Lfc/i;

    move-result-object v3

    invoke-virtual {v3}, Lfc/i;->D()I

    move-result v10

    .line 79
    invoke-virtual {v2}, Lfc/u;->y()Lfc/h;

    move-result-object v2

    invoke-virtual {v2}, Lfc/h;->A()Lfc/i;

    move-result-object v2

    invoke-virtual {v2}, Lfc/i;->E()I

    move-result v11

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lmc/c0;-><init>(JIIIIII)V

    .line 80
    invoke-virtual {v0, v1, v12}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_a

    .line 81
    :catch_4
    new-instance v2, Lmc/c0;

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v21}, Lmc/c0;-><init>(JIIIIII)V

    invoke-virtual {v0, v1, v2}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    .line 82
    :cond_16
    sget-object v5, Lhc/d;->b0:Lhc/d;

    const/16 v5, 0xb0

    int-to-byte v5, v5

    if-ne v4, v5, :cond_17

    .line 83
    sget-object v1, Lhc/f0;->p:Ljava/lang/String;

    .line 84
    :try_start_8
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lfc/p;->A([B)Lfc/p;

    move-result-object v2

    .line 85
    new-instance v9, Lmc/w;

    .line 86
    invoke-virtual {v2}, Lfc/p;->z()I

    move-result v3

    int-to-long v4, v3

    .line 87
    invoke-virtual {v2}, Lfc/p;->y()Lfc/b;

    move-result-object v3

    invoke-virtual {v3}, Lfc/b;->E()I

    move-result v6

    .line 88
    invoke-virtual {v2}, Lfc/p;->y()Lfc/b;

    move-result-object v3

    invoke-virtual {v3}, Lfc/b;->D()I

    move-result v7

    .line 89
    invoke-virtual {v2}, Lfc/p;->y()Lfc/b;

    move-result-object v2

    invoke-virtual {v2}, Lfc/b;->B()I

    move-result v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lmc/w;-><init>(JIII)V

    .line 90
    invoke-virtual {v0, v1, v9}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_a

    .line 91
    :catch_5
    new-instance v2, Lmc/w;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lmc/w;-><init>(JIII)V

    invoke-virtual {v0, v1, v2}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    .line 92
    :cond_17
    sget-object v5, Lhc/d;->Y:Lhc/d;

    const/16 v5, 0xab

    int-to-byte v5, v5

    if-ne v4, v5, :cond_1d

    .line 93
    sget-object v3, Lmc/a;->h:Lmc/a;

    sget-object v4, Lhc/f0;->r:Ljava/lang/String;

    .line 94
    :try_start_9
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lfc/a;->z([B)Lfc/a;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lfc/a;->y()I

    move-result v2

    if-eq v2, v1, :cond_1c

    if-eq v2, v7, :cond_1b

    if-eq v2, v11, :cond_1a

    if-eq v2, v10, :cond_19

    if-eq v2, v9, :cond_18

    move-object v1, v3

    goto :goto_6

    .line 96
    :cond_18
    sget-object v1, Lmc/a;->m:Lmc/a;

    goto :goto_6

    .line 97
    :cond_19
    sget-object v1, Lmc/a;->l:Lmc/a;

    goto :goto_6

    .line 98
    :cond_1a
    sget-object v1, Lmc/a;->k:Lmc/a;

    goto :goto_6

    .line 99
    :cond_1b
    sget-object v1, Lmc/a;->j:Lmc/a;

    goto :goto_6

    .line 100
    :cond_1c
    sget-object v1, Lmc/a;->i:Lmc/a;

    .line 101
    :goto_6
    invoke-virtual {v0, v4, v1}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_a

    .line 102
    :catch_6
    invoke-virtual {v0, v4, v3}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    .line 103
    :cond_1d
    iget-byte v4, v2, Lhc/m0;->a:B

    sget-object v5, Lhc/d;->a0:Lhc/d;

    const/16 v5, 0xad

    int-to-byte v5, v5

    if-ne v4, v5, :cond_1f

    .line 104
    sget-object v1, Lhc/f0;->s:Ljava/lang/String;

    .line 105
    :try_start_a
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lfc/d;->z([B)Lfc/d;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lfc/d;->y()I

    move-result v2

    if-nez v2, :cond_1e

    move-object v2, v3

    goto :goto_7

    .line 107
    :cond_1e
    sget-object v2, Lmc/b;->i:Lmc/b;

    .line 108
    :goto_7
    invoke-virtual {v0, v1, v2}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_a

    .line 109
    :catch_7
    invoke-virtual {v0, v1, v3}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    .line 110
    :cond_1f
    iget-byte v4, v2, Lhc/m0;->a:B

    sget-object v5, Lhc/d;->c0:Lhc/d;

    const/16 v5, 0xb1

    int-to-byte v5, v5

    if-ne v4, v5, :cond_20

    .line 111
    sget-object v1, Lhc/f0;->q:Ljava/lang/String;

    .line 112
    :try_start_b
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lfc/m;->A([B)Lfc/m;

    move-result-object v2

    .line 113
    new-instance v3, Lmc/d0;

    .line 114
    invoke-virtual {v2}, Lfc/m;->z()I

    move-result v4

    int-to-long v4, v4

    .line 115
    invoke-virtual {v2}, Lfc/m;->y()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lmc/d0;-><init>(JD)V

    .line 116
    invoke-virtual {v0, v1, v3}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_a

    .line 117
    :catch_8
    new-instance v2, Lmc/d0;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v12, v13, v3, v4}, Lmc/d0;-><init>(JD)V

    invoke-virtual {v0, v1, v2}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_a

    .line 118
    :cond_20
    iget-byte v4, v2, Lhc/m0;->a:B

    sget-object v5, Lhc/d;->h0:Lhc/d;

    const/16 v5, 0xb6

    int-to-byte v5, v5

    if-ne v4, v5, :cond_26

    .line 119
    sget-object v4, Lhc/f0;->t:Ljava/lang/String;

    .line 120
    :try_start_c
    iget-object v2, v2, Lhc/m0;->c:[B

    invoke-static {v2}, Lfc/f;->B([B)Lfc/f;

    move-result-object v2

    .line 121
    new-instance v5, Lmc/p;

    .line 122
    invoke-virtual {v2}, Lfc/f;->z()J

    move-result-wide v8

    .line 123
    invoke-virtual {v2}, Lfc/f;->A()Z

    move-result v6

    new-instance v10, Lmc/n;

    .line 124
    invoke-virtual {v2}, Lfc/f;->y()Lfc/e;

    move-result-object v12

    invoke-virtual {v12}, Lfc/e;->C()Lfc/e$c;

    move-result-object v12

    invoke-virtual {v12}, Lfc/e$c;->a()I

    move-result v12

    if-eq v12, v1, :cond_23

    if-eq v12, v7, :cond_22

    if-eq v12, v11, :cond_21

    .line 125
    sget-object v11, Lmc/m;->i:Lmc/m;

    goto :goto_8

    .line 126
    :cond_21
    sget-object v11, Lmc/m;->l:Lmc/m;

    goto :goto_8

    .line 127
    :cond_22
    sget-object v11, Lmc/m;->k:Lmc/m;

    goto :goto_8

    .line 128
    :cond_23
    sget-object v11, Lmc/m;->j:Lmc/m;

    .line 129
    :goto_8
    invoke-virtual {v2}, Lfc/f;->y()Lfc/e;

    move-result-object v2

    invoke-virtual {v2}, Lfc/e;->A()Lfc/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lfc/e$b;->a()I

    move-result v2

    if-eq v2, v1, :cond_25

    if-eq v2, v7, :cond_24

    .line 130
    sget-object v1, Lmc/l;->i:Lmc/l;

    goto :goto_9

    .line 131
    :cond_24
    sget-object v1, Lmc/l;->k:Lmc/l;

    goto :goto_9

    .line 132
    :cond_25
    sget-object v1, Lmc/l;->j:Lmc/l;

    .line 133
    :goto_9
    invoke-direct {v10, v11, v1}, Lmc/n;-><init>(Lmc/m;Lmc/l;)V

    invoke-direct {v5, v8, v9, v6, v10}, Lmc/p;-><init>(JZLmc/n;)V

    .line 134
    invoke-virtual {v0, v4, v5}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_a

    .line 135
    :catch_9
    invoke-virtual {v0, v4, v3}, Lhc/e;->f(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_a

    .line 136
    :cond_26
    iget-byte v3, v2, Lhc/m0;->a:B

    sget-object v4, Lhc/d;->i0:Lhc/d;

    const/16 v4, 0xc8

    int-to-byte v4, v4

    if-ne v3, v4, :cond_27

    .line 137
    iget-object v2, v2, Lhc/m0;->c:[B

    const-string v3, "posting CORERF_DEBUG_TEXT_NOTIFICATION"

    .line 138
    invoke-virtual {v0, v8, v7, v3, v8}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 139
    :try_start_d
    invoke-static {v2}, Lgc/j;->B([B)Lgc/j;

    move-result-object v2

    invoke-virtual {v2}, Lgc/j;->z()Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 140
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lhc/f0;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lhc/f0;->u:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sget-object v3, Lhc/f0;->f:Ljava/lang/String;

    iget-object v4, v0, Lhc/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lw0/a;->d(Landroid/content/Intent;)V

    goto :goto_a

    :catch_a
    const-string v2, "invalid payload in ASCII Command payload"

    .line 141
    invoke-virtual {v0, v8, v1, v2, v8}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    :catchall_0
    :cond_27
    :goto_a
    return-void
.end method

.method public final declared-synchronized d(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lhc/e;->c:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "CoreRF"

    goto :goto_0

    :cond_0
    const-string v0, "CoreRF:"

    .line 1
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_4

    add-int/lit8 p2, p2, -0x1

    const-string v0, " "

    const-string v1, "deviceId: "

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    .line 3
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lhc/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p4, p1}, Lhc/g0;->b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    .line 6
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget-object v3, p0, Lhc/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p4, v2, p1}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p2

    .line 9
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lhc/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p4, v2, p1}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    const/4 p1, 0x0

    .line 11
    throw p1
.end method

.method public final f(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 3

    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lhc/f0;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    sget-object p2, Lhc/f0;->f:Ljava/lang/String;

    iget-object v1, p0, Lhc/e;->k:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw0/a;->d(Landroid/content/Intent;)V

    return-void
.end method

.method public final g()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lhc/e;->c:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v4

    const-wide/16 v5, 0x5

    .line 4
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v5, v6, v7}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not all execution tasks were cancelled!  Dumping list: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v3, v2, v0, v3}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v0, "interrupted while waiting for executor to terminate"

    .line 7
    invoke-virtual {p0, v3, v2, v0, v3}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lhc/e;->n(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_2

    :goto_1
    invoke-virtual {p0, v3}, Lhc/e;->n(Ljava/util/concurrent/ExecutorService;)V

    .line 9
    throw v0

    .line 10
    :cond_1
    :goto_2
    iget-object v0, p0, Lhc/e;->e:Lhc/p0;

    if-eqz v0, :cond_2

    .line 11
    iput-boolean v2, v0, Lhc/p0;->f:Z

    .line 12
    iget-object v0, v0, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 13
    iput-object v3, p0, Lhc/e;->e:Lhc/p0;

    .line 14
    :cond_2
    iput v1, p0, Lhc/e;->i:I

    .line 15
    iput v1, p0, Lhc/e;->f:I

    .line 16
    iput v2, p0, Lhc/e;->j:I

    .line 17
    iput v1, p0, Lhc/e;->g:I

    .line 18
    iput v1, p0, Lhc/e;->h:I

    .line 19
    iput-object v3, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    const/4 v0, 0x3

    const-string v1, "CoreRF has been reset"

    .line 20
    invoke-virtual {p0, v3, v0, v1, v3}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catchall_1
    move-exception v0

    .line 21
    monitor-exit p0

    throw v0
.end method

.method public final h(Lhc/m0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkc/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lhc/e;->b:Z

    if-eqz v3, :cond_3

    .line 2
    sget-object v3, Lhc/f0;->b:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Couldn\'t find ripley service during NAK: "

    .line 3
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    sget-object v0, Lhc/f0;->b:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v2, v1, p1, v2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 6
    :cond_0
    sget-object v3, Lhc/f0;->c:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 7
    new-instance v3, Lhc/q0;

    iget-object v4, p0, Lhc/e;->k:Ljava/lang/String;

    iget-object v5, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v3, p0, v4, v5, v0}, Lhc/q0;-><init>(Lhc/e;Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget v4, p0, Lhc/e;->f:I

    invoke-virtual {v3, p1, v4}, Lhc/q0;->b(Lhc/m0;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 10
    iget v4, p0, Lhc/e;->f:I

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x40

    iput v4, p0, Lhc/e;->f:I

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lhc/e;->e:Lhc/p0;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-virtual {v1, v0, p1}, Lhc/p0;->d(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 13
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {v3}, Lhc/q0;->a()V

    return-void

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "Invalid ACK created."

    .line 15
    invoke-virtual {p0, v2, v1, p1, v2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    const-string p1, "not connected to device"

    .line 18
    invoke-virtual {p0, v2, v1, p1, v2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 19
    new-instance p1, Lkc/f;

    invoke-direct {p1}, Lkc/f;-><init>()V

    throw p1
.end method

.method public final i(Lhc/m0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkc/f;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lhc/e;->b:Z

    if-eqz v3, :cond_3

    .line 2
    sget-object v3, Lhc/f0;->b:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Couldn\'t find ripley service during command: "

    .line 3
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    sget-object v0, Lhc/f0;->b:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v2, v1, p1, v2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 6
    :cond_0
    sget-object v3, Lhc/f0;->c:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 7
    new-instance v3, Lhc/q0;

    iget-object v4, p0, Lhc/e;->k:Ljava/lang/String;

    iget-object v5, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v3, p0, v4, v5, v0}, Lhc/q0;-><init>(Lhc/e;Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget v0, p0, Lhc/e;->f:I

    invoke-virtual {v3, p1, v0}, Lhc/q0;->b(Lhc/m0;I)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget v0, p0, Lhc/e;->f:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x40

    iput v0, p0, Lhc/e;->f:I

    .line 12
    iput v0, v3, Lhc/q0;->m:I

    .line 13
    iput-object p1, v3, Lhc/q0;->o:Ljava/util/List;

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0, v3}, Lhc/e;->d(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "Invalid payload created."

    .line 16
    invoke-virtual {p0, v2, v1, p1, v2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    const-string p1, "not connected to device"

    .line 19
    invoke-virtual {p0, v2, v1, p1, v2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 20
    new-instance p1, Lkc/f;

    invoke-direct {p1}, Lkc/f;-><init>()V

    throw p1
.end method

.method public final j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lhc/m0;",
            "Lpc/c<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-wide/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lhc/e;->k(Ljava/lang/String;Lhc/m0;Lpc/c;J)V
    :try_end_0
    .catch Lkc/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lhc/e;->g()V

    .line 3
    invoke-virtual {p3, p1}, Lpc/c;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final k(Ljava/lang/String;Lhc/m0;Lpc/c;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lhc/m0;",
            "Lpc/c<",
            "TT;>;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Lkc/f;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1
    iget-object v4, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz v4, :cond_4

    iget-boolean v5, p0, Lhc/e;->b:Z

    if-eqz v5, :cond_4

    .line 2
    sget-object v5, Lhc/f0;->b:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    if-nez v4, :cond_0

    const-string p1, "Couldn\'t find ripley service during command: "

    .line 3
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    sget-object p2, Lhc/f0;->b:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, v3, v0, p1, v3}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 6
    :cond_0
    sget-object v5, Lhc/f0;->c:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 7
    new-instance v5, Lhc/e$a;

    invoke-direct {v5, p0, p2, v1}, Lhc/e$a;-><init>(Lhc/e;Lhc/m0;[[B)V

    .line 8
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE"

    .line 9
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lw0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 11
    new-instance v6, Lhc/q0;

    iget-object v7, p0, Lhc/e;->k:Ljava/lang/String;

    iget-object v8, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v6, p0, v7, v8, v4}, Lhc/q0;-><init>(Lhc/e;Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget v4, p0, Lhc/e;->f:I

    invoke-virtual {v6, p2, v4}, Lhc/q0;->b(Lhc/m0;I)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v0, :cond_1

    goto/16 :goto_0

    .line 15
    :cond_1
    iget v4, p0, Lhc/e;->f:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v4, v7

    rem-int/lit8 v4, v4, 0x40

    iput v4, p0, Lhc/e;->f:I

    .line 16
    iput v4, v6, Lhc/q0;->m:I

    .line 17
    iput-object p2, v6, Lhc/q0;->o:Ljava/util/List;

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    invoke-virtual {p0, v6}, Lhc/e;->d(Ljava/lang/Runnable;)V

    .line 20
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    :try_start_2
    invoke-virtual {v1, p4, p5}, Ljava/lang/Object;->wait(J)V

    .line 22
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    aget-object p2, v1, v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz p2, :cond_2

    .line 23
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object p1

    invoke-virtual {p1, v5}, Lw0/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 24
    invoke-virtual {v6}, Lhc/q0;->a()V

    aget-object p1, v1, v2

    .line 25
    invoke-virtual {p3, p1}, Lpc/c;->c([B)V

    return-void

    .line 26
    :cond_2
    :try_start_4
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " TimedOut"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Timeout occurred when issuing request of "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 28
    invoke-virtual {p0, v3, v0, p4, p2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 29
    invoke-virtual {p3, p2}, Lpc/c;->b(Ljava/lang/Throwable;)V

    .line 30
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object p3

    invoke-static {p3}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object p3

    invoke-virtual {p3, v5}, Lw0/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 31
    throw p2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_0
    move-exception p2

    .line 32
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 33
    :catch_0
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    const-string p3, " TimedOut"

    .line 34
    invoke-static {p1, p3}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 35
    invoke-direct {p2, p3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    const-string p3, "Timeout occurred when issuing request of "

    const-string p4, "."

    .line 36
    invoke-static {p3, p1, p4}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p0, v3, v0, p1, p2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 38
    invoke-static {}, Landroidx/lifecycle/o;->n()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object p1

    invoke-virtual {p1, v5}, Lw0/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 39
    throw p2

    :cond_3
    :goto_0
    :try_start_7
    const-string p1, "Invalid payload created."

    .line 40
    invoke-virtual {p0, v3, v0, p1, v3}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 41
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    .line 42
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    :cond_4
    const-string p1, "not connected to device"

    .line 43
    invoke-virtual {p0, v3, v0, p1, v3}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 44
    new-instance p1, Lkc/f;

    invoke-direct {p1}, Lkc/f;-><init>()V

    throw p1
.end method

.method public final l(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkc/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lhc/e;->b:Z

    if-eqz v3, :cond_1

    .line 2
    sget-object v3, Lhc/f0;->b:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Couldn\'t find ripley service during flow control"

    .line 3
    invoke-virtual {p0, v2, v1, p1, v2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_0
    sget-object v2, Lhc/f0;->c:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [B

    or-int/lit8 p1, p1, 0x40

    or-int/lit8 p1, p1, -0x80

    int-to-byte p1, p1

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    aput-byte v3, v2, v1

    .line 5
    iget-object p1, p0, Lhc/e;->e:Lhc/p0;

    invoke-virtual {p1, v0, v2}, Lhc/p0;->d(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    return-void

    :cond_1
    const-string p1, "not connected to device"

    .line 6
    invoke-virtual {p0, v2, v1, p1, v2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 7
    new-instance p1, Lkc/f;

    invoke-direct {p1}, Lkc/f;-><init>()V

    throw p1
.end method

.method public final declared-synchronized n(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lhc/e;->c:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final p(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-static {p2}, Lhc/e;->o([B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "[%s] transportSent(%s)"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v3, v2, v0, v3}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 4
    aget-byte v0, p2, v1

    invoke-static {v0}, Lb2/h;->b(B)Z

    move-result v0

    .line 5
    aget-byte v2, p2, v1

    and-int/lit8 v2, v2, 0x3f

    .line 6
    iget v3, p0, Lhc/e;->i:I

    invoke-static {v3, v2}, Lhc/e;->m(II)I

    move-result v3

    if-lez v2, :cond_1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-lt v3, v0, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 8
    iget-object p2, p0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method
