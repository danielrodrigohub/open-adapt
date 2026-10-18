.class public final Lhc/l;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lhc/l0;


# instance fields
.field public final h:Ljava/lang/String;

.field public i:Z

.field public j:Lmc/e;

.field public final k:Lhc/e;

.field public l:Landroid/bluetooth/BluetoothGatt;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public o:Lhc/k0;

.field public final p:Ljava/util/concurrent/ExecutorService;

.field public final q:Ljava/util/concurrent/ExecutorService;

.field public final r:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc/l;->h:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhc/l;->i:Z

    .line 2
    new-instance v1, Lmc/e;

    const-string v2, "1.1.0"

    invoke-direct {v1, v2}, Lmc/e;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lhc/l;->j:Lmc/e;

    .line 3
    new-instance v1, Lhc/e;

    invoke-direct {v1, p1}, Lhc/e;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lhc/l;->k:Lhc/e;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lhc/l;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lhc/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance p1, Lm5/f0;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lm5/f0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v1, "newSingleThreadExecutor \u2026nnable.run() })\n        }"

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lhc/l;->p:Ljava/util/concurrent/ExecutorService;

    .line 7
    new-instance p1, Lhc/k;

    invoke-direct {p1, p0}, Lhc/k;-><init>(Lhc/l;)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lhc/l;->q:Ljava/util/concurrent/ExecutorService;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lhc/l;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0}, Lcom/openadapt/Bridge;->registerCore(Ljava/lang/Object;)V

    return-void
.end method

.method public static final Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lic/g;->b:Lic/g;

    .line 3
    invoke-virtual {v0, p1}, Lic/g;->a(Ljava/lang/String;)Lf8/b;

    move-result-object p1

    .line 4
    instance-of v0, p1, Lic/u;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    instance-of p1, p1, Lic/b;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lhc/l;->j:Lmc/e;

    invoke-virtual {p1, p2}, Lmc/e;->b(Lmc/e;)I

    move-result p1

    if-gez p1, :cond_2

    .line 6
    new-instance v3, Lkc/a;

    iget-object p1, p0, Lhc/l;->j:Lmc/e;

    invoke-direct {v3, p1, p2}, Lkc/a;-><init>(Lmc/e;Lmc/e;)V

    .line 7
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    .line 8
    iget-object v2, v3, Lkc/a;->h:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 9
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 10
    new-instance v0, Lkc/a;

    iget-object p0, p0, Lhc/l;->j:Lmc/e;

    invoke-direct {v0, p0, p2}, Lkc/a;-><init>(Lmc/e;Lmc/e;)V

    goto :goto_2

    .line 11
    :cond_2
    iget-object p1, p0, Lhc/l;->j:Lmc/e;

    invoke-virtual {p1, p3}, Lmc/e;->b(Lmc/e;)I

    move-result p1

    if-lez p1, :cond_4

    .line 12
    new-instance v3, Lkc/d;

    iget-object p1, p0, Lhc/l;->j:Lmc/e;

    invoke-direct {v3, p1, p3}, Lkc/d;-><init>(Lmc/e;Lmc/e;)V

    .line 13
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    .line 14
    iget-object v2, v3, Lkc/d;->h:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 15
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 16
    new-instance v0, Lkc/d;

    iget-object p0, p0, Lhc/l;->j:Lmc/e;

    invoke-direct {v0, p0, p3}, Lkc/d;-><init>(Lmc/e;Lmc/e;)V

    goto :goto_2

    .line 17
    :cond_3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v2

    new-instance v4, Ljava/lang/Exception;

    const-string p0, "Not ready for requests"

    invoke-direct {v4, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v3, "NOT READY FOR REQUESTS"

    invoke-static/range {v2 .. v8}, Lhc/g0$a;->b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 18
    new-instance p0, Lkc/b;

    invoke-direct {p0, v0, v1, v0}, Lkc/b;-><init>(Ljava/lang/String;ILrd/h;)V

    move-object v0, p0

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final A(Lnc/d;)Lhc/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "Loc/b;",
            "Lfd/o;",
            ">;)",
            "Lhc/a;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p1

    check-cast v0, Lya/j;

    invoke-virtual {v0}, Lya/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loc/b;

    const/4 v1, 0x0

    new-array v2, v1, [B

    new-array v3, v1, [B

    const/4 v4, 0x1

    .line 2
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const/16 v5, -0x22

    .line 3
    aput-byte v5, v2, v1

    const/4 v5, -0x6

    .line 4
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 5
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 6
    aput-byte v5, v2, v6

    .line 7
    iget v5, v0, Loc/b;->a:I

    int-to-byte v5, v5

    .line 8
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 9
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 10
    aput-byte v5, v2, v6

    .line 11
    iget v5, v0, Loc/b;->a:I

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    .line 12
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 13
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 14
    aput-byte v5, v2, v6

    .line 15
    iget v5, v0, Loc/b;->b:I

    int-to-byte v5, v5

    .line 16
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 17
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 18
    aput-byte v5, v2, v6

    .line 19
    iget v5, v0, Loc/b;->b:I

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    .line 20
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 21
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 22
    aput-byte v5, v2, v6

    .line 23
    iget-boolean v5, v0, Loc/b;->c:Z

    if-eqz v5, :cond_0

    .line 24
    array-length v5, v2

    add-int/lit8 v6, v5, 0x1

    .line 25
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 26
    aput-byte v4, v2, v5

    goto :goto_0

    .line 27
    :cond_0
    array-length v5, v2

    add-int/lit8 v6, v5, 0x1

    .line 28
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 29
    aput-byte v1, v2, v5

    .line 30
    :goto_0
    iget-boolean v5, v0, Loc/b;->d:Z

    if-eqz v5, :cond_1

    .line 31
    array-length v5, v2

    add-int/lit8 v6, v5, 0x1

    .line 32
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 33
    aput-byte v4, v2, v5

    goto :goto_1

    .line 34
    :cond_1
    array-length v5, v2

    add-int/lit8 v6, v5, 0x1

    .line 35
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 36
    aput-byte v1, v2, v5

    .line 37
    :goto_1
    iget v5, v0, Loc/b;->e:I

    int-to-byte v5, v5

    .line 38
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 39
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 40
    aput-byte v5, v2, v6

    .line 41
    iget v5, v0, Loc/b;->e:I

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    .line 42
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 43
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 44
    aput-byte v5, v2, v6

    .line 45
    iget v5, v0, Loc/b;->f:I

    int-to-byte v5, v5

    .line 46
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 47
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 48
    aput-byte v5, v2, v6

    .line 49
    iget v5, v0, Loc/b;->f:I

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    .line 50
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 51
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 52
    aput-byte v5, v2, v6

    .line 53
    iget v5, v0, Loc/b;->g:I

    int-to-byte v5, v5

    .line 54
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 55
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 56
    aput-byte v5, v2, v6

    .line 57
    iget v5, v0, Loc/b;->g:I

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    .line 58
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 59
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 60
    aput-byte v5, v2, v6

    .line 61
    iget v5, v0, Loc/b;->g:I

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    .line 62
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 63
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 64
    aput-byte v5, v2, v6

    .line 65
    iget v5, v0, Loc/b;->g:I

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    .line 66
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 67
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 68
    aput-byte v5, v2, v6

    .line 69
    iget-object v0, v0, Loc/b;->h:Ljava/util/List;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Loc/a;

    .line 71
    iget-object v6, v5, Loc/a;->b:Ljava/util/List;

    .line 72
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Loc/c;

    .line 73
    iget-byte v8, v7, Loc/c;->a:B

    .line 74
    array-length v9, v2

    add-int/lit8 v10, v9, 0x1

    .line 75
    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 76
    aput-byte v8, v2, v9

    .line 77
    iget-byte v8, v7, Loc/c;->b:B

    .line 78
    array-length v9, v2

    add-int/lit8 v10, v9, 0x1

    .line 79
    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 80
    aput-byte v8, v2, v9

    .line 81
    iget-byte v7, v7, Loc/c;->c:B

    .line 82
    array-length v8, v2

    add-int/lit8 v9, v8, 0x1

    .line 83
    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 84
    aput-byte v7, v2, v8

    goto :goto_3

    .line 85
    :cond_2
    iget v6, v5, Loc/a;->a:I

    int-to-byte v6, v6

    .line 86
    array-length v7, v2

    add-int/lit8 v8, v7, 0x1

    .line 87
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 88
    aput-byte v6, v2, v7

    .line 89
    iget v5, v5, Loc/a;->a:I

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    .line 90
    array-length v6, v2

    add-int/lit8 v7, v6, 0x1

    .line 91
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 92
    aput-byte v5, v2, v6

    goto :goto_2

    .line 93
    :cond_3
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 95
    invoke-static {}, Lgc/c;->H()Lgc/c$a;

    move-result-object v5

    .line 96
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v0, v6

    .line 97
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 98
    iget-object v6, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v6, Lgc/c;

    invoke-static {v6, v0}, Lgc/c;->y(Lgc/c;I)V

    .line 99
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 100
    iget-object v0, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v0, Lgc/c;

    invoke-static {v0}, Lgc/c;->x(Lgc/c;)V

    .line 101
    array-length v0, v2

    .line 102
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 103
    iget-object v6, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v6, Lgc/c;

    invoke-static {v6, v0}, Lgc/c;->z(Lgc/c;I)V

    .line 104
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 105
    iget-object v0, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v0, Lgc/c;

    invoke-static {v0}, Lgc/c;->A(Lgc/c;)V

    .line 106
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 107
    iget-object v0, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v0, Lgc/c;

    invoke-static {v0}, Lgc/c;->B(Lgc/c;)V

    .line 108
    invoke-virtual {v5}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/c;

    .line 109
    invoke-static {}, Lgc/a;->D()Lgc/a$a;

    move-result-object v5

    .line 110
    invoke-virtual {v5}, Lm7/w$a;->k()V

    .line 111
    iget-object v6, v5, Lm7/w$a;->i:Lm7/w;

    check-cast v6, Lgc/a;

    invoke-static {v6, v0}, Lgc/a;->x(Lgc/a;Lgc/c;)V

    .line 112
    invoke-virtual {v5}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/a;

    const/16 v5, -0x42

    .line 113
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 114
    aput-byte v5, v3, v1

    const/16 v1, -0x11

    .line 115
    array-length v5, v3

    add-int/lit8 v6, v5, 0x1

    .line 116
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 117
    aput-byte v1, v3, v5

    .line 118
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v1

    array-length v1, v1

    int-to-byte v1, v1

    .line 119
    array-length v5, v3

    add-int/lit8 v6, v5, 0x1

    .line 120
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 121
    aput-byte v1, v3, v5

    .line 122
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v1

    array-length v1, v1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    .line 123
    array-length v5, v3

    add-int/lit8 v6, v5, 0x1

    .line 124
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 125
    aput-byte v1, v3, v5

    .line 126
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    invoke-static {v3, v0}, Lgd/g;->o([B[B)[B

    move-result-object v0

    invoke-static {v0, v2}, Lgd/g;->o([B[B)[B

    move-result-object v0

    .line 127
    new-instance v1, Lhc/l$h0;

    invoke-direct {v1, p1, p0}, Lhc/l$h0;-><init>(Lnc/d;Lhc/l;)V

    .line 128
    iget-object v2, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v3, Lmc/e;->i:Lmc/e$a;

    .line 129
    sget-object v3, Lmc/e;->n:Lmc/e;

    .line 130
    sget-object v5, Lmc/e;->q:Lmc/e;

    .line 131
    invoke-static {p0, v2, v3, v5}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v2

    if-nez v2, :cond_5

    .line 132
    :try_start_0
    iget-object v2, p0, Lhc/l;->o:Lhc/k0;

    if-nez v2, :cond_4

    .line 133
    new-instance v2, Lhc/k0;

    .line 134
    iget-object v3, p0, Lhc/l;->k:Lhc/e;

    .line 135
    iget-object v5, p0, Lhc/l;->h:Ljava/lang/String;

    .line 136
    new-instance v6, Lpc/a;

    invoke-direct {v6, v1}, Lpc/a;-><init>(Llc/a;)V

    .line 137
    invoke-direct {v2, v3, v5, v6}, Lhc/k0;-><init>(Lhc/e;Ljava/lang/String;Lpc/a;)V

    .line 138
    invoke-virtual {v2, v0}, Lhc/k0;->b([B)V

    .line 139
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animation Transfer "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lhc/l;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v5, "FILE_TRANSFER"

    .line 141
    invoke-interface {v0, v1, v3, v4, v5}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 142
    iput-object v2, p0, Lhc/l;->o:Lhc/k0;

    goto :goto_4

    .line 143
    :cond_4
    new-instance v0, Ljava/lang/Throwable;

    const-string v2, "FirmwareTransferAlreadyInProgress"

    invoke-direct {v0, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lhc/l$h0;->k(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 144
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 145
    :cond_5
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v2}, Lya/h0;->k(Ljava/lang/Throwable;)V

    .line 146
    :goto_4
    new-instance p1, Lhc/l$g0;

    invoke-direct {p1, p0}, Lhc/l$g0;-><init>(Lhc/l;)V

    return-object p1
.end method

.method public final B(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->l:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->r0:Lhc/d;

    const/16 v1, 0xed

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Stop User Animations"

    .line 10
    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final C(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    sget-object v1, Lhc/d;->w:Lhc/d;

    const/16 v1, 0x14

    int-to-byte v1, v1

    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 6
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Identify"

    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final D(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/q;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->p:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->g0:Lhc/d;

    const/16 v1, 0xb5

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "query gesture statistics"

    .line 10
    new-instance v3, Lhc/l$k;

    invoke-direct {v3, p1}, Lhc/l$k;-><init>(Lnc/a;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final E(Lnc/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v3, Lhc/m0;

    sget-object v0, Lhc/d;->r:Lhc/d;

    const/16 v0, 0xe

    int-to-byte v0, v0

    sget-object v1, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v2, 0x0

    invoke-direct {v3, v0, v1, v2}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 6
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Upgrade Firmware"

    .line 7
    new-instance v4, Lpc/b;

    invoke-direct {v4, p1}, Lpc/b;-><init>(Llc/b;)V

    const-wide/16 v5, 0x4e20

    .line 8
    invoke-virtual/range {v1 .. v6}, Lhc/e;->k(Ljava/lang/String;Lhc/m0;Lpc/c;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final F(Lnc/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Lmc/b0;",
            "Lmc/a0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->m:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lfc/z;->B()Lfc/z$a;

    move-result-object v0

    invoke-interface {p1}, Lnc/c;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmc/a0;

    .line 6
    iget v1, v1, Lmc/a0;->a:I

    .line 7
    invoke-virtual {v0, v1}, Lfc/z$a;->m(I)Lfc/z$a;

    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lfc/z;

    .line 8
    new-instance v3, Lhc/m0;

    .line 9
    sget-object v1, Lhc/d;->N:Lhc/d;

    const/16 v1, 0x9a

    int-to-byte v1, v1

    .line 10
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    .line 11
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 12
    invoke-direct {v3, v1, v2, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 13
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get session information"

    .line 14
    new-instance v4, Lhc/l$r;

    invoke-direct {v4, p1}, Lhc/l$r;-><init>(Lnc/c;)V

    const-wide/16 v5, 0x9c4

    .line 15
    invoke-virtual/range {v1 .. v6}, Lhc/e;->k(Ljava/lang/String;Lhc/m0;Lpc/c;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 16
    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final G(Landroid/bluetooth/BluetoothGatt;)V
    .locals 3

    const-string v0, "gatt"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lhc/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iput-object p1, p0, Lhc/l;->l:Landroid/bluetooth/BluetoothGatt;

    .line 4
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    .line 5
    invoke-virtual {v0}, Lhc/e;->g()V

    .line 6
    new-instance v1, Lhc/p0;

    invoke-direct {v1}, Lhc/p0;-><init>()V

    iput-object v1, v0, Lhc/e;->e:Lhc/p0;

    .line 7
    iget-object v2, v0, Lhc/e;->k:Ljava/lang/String;

    .line 8
    iput-object v0, v1, Lhc/p0;->a:Lhc/o0;

    .line 9
    iput-object v2, v1, Lhc/p0;->d:Ljava/lang/String;

    const/4 v2, 0x0

    .line 10
    iput-object v2, v1, Lhc/p0;->b:Lhc/p0$a;

    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/e;->n(Ljava/util/concurrent/ExecutorService;)V

    .line 12
    iput-object p1, v0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, v0, Lhc/e;->b:Z

    const/4 p1, 0x3

    const-string v1, "CoreRF has been initialized"

    .line 14
    invoke-virtual {v0, v2, p1, v1, v2}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final H(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    .line 2
    iget-object v0, v0, Lhc/e;->e:Lhc/p0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhc/p0;->c(Z)V

    .line 3
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v1, "com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WRITE_COMPLETE"

    invoke-virtual {v0, v1, p1}, Lhc/e;->b(Ljava/lang/String;I)V

    return-void
.end method

.method public final I(Lnc/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Lmc/h;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lic/g;->b:Lic/g;

    .line 2
    iget-object v1, p0, Lhc/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lic/g;->a(Ljava/lang/String;)Lf8/b;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lic/d;

    if-nez v1, :cond_1

    instance-of v1, v0, Lic/e;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not Connected and Some Auth Flow"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lic/l;

    invoke-virtual {p1, v1}, Lic/l;->k(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 5
    :cond_1
    :goto_0
    move-object v0, p1

    check-cast v0, Lic/l;

    invoke-virtual {v0}, Lic/l;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 6
    iget-boolean v1, p0, Lhc/l;->i:Z

    if-eqz v1, :cond_2

    .line 7
    new-instance v0, Lmc/h0;

    sget-object v1, Lhc/b;->j:[B

    const-string v2, "DEFAULT_KEY"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmc/h0;-><init>([B)V

    .line 8
    invoke-interface {p1, v0}, Llc/b;->j(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v3

    const-string v1, "authenticate with key: "

    .line 10
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    invoke-static {v0}, Lhc/e0;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v7, "\ud83d\udd11"

    invoke-static/range {v3 .. v9}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 12
    :try_start_0
    sget-object v1, Lhc/b;->j:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "completableFuture.get()"

    if-eqz v1, :cond_3

    .line 13
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 14
    iget-object v1, p0, Lhc/l;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lr3/f;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v0, v4}, Lr3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 16
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 17
    iget-object v3, p0, Lhc/l;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lhc/f;

    invoke-direct {v4, v0, p0, v1}, Lhc/f;-><init>(ILhc/l;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 18
    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [B

    :cond_3
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 19
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 20
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 21
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 22
    iget-object v4, p0, Lhc/l;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lhc/i;

    invoke-direct {v5, v1, p0, v3}, Lhc/i;-><init>([BLhc/l;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 23
    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [B

    .line 24
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 25
    iget-object v4, p0, Lhc/l;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lhc/j;

    invoke-direct {v5, v1, v0, v3, p0}, Lhc/j;-><init>([B[BLjava/util/concurrent/CompletableFuture;Lhc/l;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 26
    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "com.nike.corerf.ACTION_RIPLEY_AUTHENTICATED"

    invoke-virtual {v1, v2, v0}, Lhc/e;->c(Ljava/lang/String;[B)V

    .line 28
    new-instance v1, Lmc/h0;

    invoke-direct {v1, v0}, Lmc/h0;-><init>([B)V

    .line 29
    invoke-interface {p1, v1}, Llc/b;->j(Ljava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_4
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v1, "com.nike.corerf.ACTION_RIPLEY_FAILED_AUTHENTICATION"

    invoke-virtual {v0, v1}, Lhc/e;->a(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lmc/s;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lmc/s;-><init>(Ljava/lang/String;ILrd/h;)V

    .line 32
    invoke-interface {p1, v0}, Llc/b;->j(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 33
    check-cast p1, Lic/l;

    invoke-virtual {p1, v0}, Lic/l;->k(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final J(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->o:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->a0:Lhc/d;

    const/16 v1, 0xad

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "query autoadapt enable state"

    .line 10
    new-instance v3, Lhc/l$e;

    invoke-direct {v3, p1}, Lhc/l$e;-><init>(Lnc/a;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final K(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhc/l;->o:Lhc/k0;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Llc/b;->j(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v2, Lmc/e;->j:Lmc/e;

    .line 4
    sget-object v3, Lmc/e;->i:Lmc/e$a;

    .line 5
    sget-object v3, Lmc/e;->q:Lmc/e;

    .line 6
    invoke-static {p0, v1, v2, v3}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0, v1}, Lhc/k0;->c(Z)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lhc/l;->o:Lhc/k0;

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Llc/b;->j(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p1, v1}, Llc/b;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final L(Lnc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lgc/y;->A()Lgc/y$a;

    move-result-object v0

    .line 6
    move-object v1, p1

    check-cast v1, Lya/d$j0;

    invoke-virtual {v1}, Lya/d$j0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lgc/y$a;->m(I)Lgc/y$a;

    .line 7
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/y;

    .line 8
    new-instance v1, Lhc/m0;

    .line 9
    sget-object v2, Lhc/d;->l:Lhc/d;

    const/4 v2, 0x3

    int-to-byte v2, v2

    .line 10
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 11
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 12
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 13
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Set Position"

    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final M(Lnc/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/util/List<",
            "Lmc/b0;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->m:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->M:Lhc/d;

    const/16 v1, 0x99

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get Session List"

    .line 10
    new-instance v3, Lhc/u;

    invoke-direct {v3, p0, p1}, Lhc/u;-><init>(Lhc/l;Lnc/a;)V

    new-instance v4, Lhc/t;

    invoke-direct {v4, v3}, Lhc/t;-><init>(Lhc/u;)V

    .line 11
    invoke-virtual {v1, v2, v0, v4}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final N(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/g0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->l:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->m:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->p0:Lhc/d;

    const/16 v1, 0xeb

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get User Animation"

    .line 10
    new-instance v3, Lhc/l$t;

    invoke-direct {v3, p1}, Lhc/l$t;-><init>(Lnc/a;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final O()V
    .locals 2

    iget-object v0, p0, Lhc/l;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final P(Lnc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/String;",
            "Lhc/n0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_3

    .line 5
    :try_start_0
    invoke-static {}, Lgc/u;->A()Lgc/u$a;

    move-result-object v0

    .line 6
    move-object v1, p1

    check-cast v1, Lya/d$c0;

    .line 7
    iget-object v1, v1, Lya/d$c0;->p:Lhc/n0;

    .line 8
    iget v1, v1, Lhc/n0;->h:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lgc/u$b;->k:Lgc/u$b;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lgc/u$b;->j:Lgc/u$b;

    goto :goto_0

    .line 11
    :cond_2
    sget-object v1, Lgc/u$b;->i:Lgc/u$b;

    .line 12
    :goto_0
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 13
    iget-object v2, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v2, Lgc/u;

    invoke-static {v2, v1}, Lgc/u;->x(Lgc/u;Lgc/u$b;)V

    .line 14
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/u;

    .line 15
    new-instance v1, Lhc/m0;

    .line 16
    sget-object v2, Lhc/d;->y:Lhc/d;

    const/16 v2, 0x32

    int-to-byte v2, v2

    .line 17
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 18
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 19
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 20
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get Serial Number"

    .line 21
    new-instance v3, Lhc/l$q;

    invoke-direct {v3, p1}, Lhc/l$q;-><init>(Lnc/c;)V

    .line 22
    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 23
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 24
    :cond_3
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final Q(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->o:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->W:Lhc/d;

    const/16 v1, 0xa8

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "disable autoadapt fit"

    .line 10
    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final R([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.nike.corerf.ACTION_RIPLEY_TRANSPORT_DATA_AVAILABLE"

    .line 2
    invoke-virtual {v0, v1, p1}, Lhc/e;->c(Ljava/lang/String;[B)V

    .line 3
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v1, "com.nike.corerf.ACTION_RAW_DATA_AVAILABLE"

    invoke-virtual {v0, v1, p1}, Lhc/e;->c(Ljava/lang/String;[B)V

    return-void
.end method

.method public final S(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lgc/x;->z()Lgc/x$a;

    move-result-object v0

    .line 6
    sget-object v1, Lgc/x$b;->l:Lgc/x$b;

    .line 7
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 8
    iget-object v2, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v2, Lgc/x;

    invoke-static {v2, v1}, Lgc/x;->x(Lgc/x;Lgc/x$b;)V

    .line 9
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/x;

    .line 10
    new-instance v1, Lhc/m0;

    .line 11
    sget-object v2, Lhc/d;->i:Lhc/d;

    const/4 v2, 0x0

    int-to-byte v2, v2

    .line 12
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 13
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 14
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 15
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Loosen"

    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 16
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final T(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    sget-object v1, Lhc/d;->m:Lhc/d;

    const/4 v1, 0x4

    int-to-byte v1, v1

    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 6
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get Position"

    .line 7
    new-instance v3, Lhc/l$o;

    invoke-direct {v3, p1}, Lhc/l$o;-><init>(Lnc/a;)V

    .line 8
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final U(Lnc/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Loc/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->j:Lmc/e;

    new-instance v1, Lmc/e;

    const-string v2, "2.1.7"

    invoke-direct {v1, v2}, Lmc/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc/e;->b(Lmc/e;)I

    move-result v0

    const-string v1, "Set LED Color"

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v2, Lmc/e;->j:Lmc/e;

    .line 3
    sget-object v3, Lmc/e;->i:Lmc/e$a;

    .line 4
    sget-object v3, Lmc/e;->q:Lmc/e;

    .line 5
    invoke-static {p0, v0, v2, v3}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Lgc/b0;->G()Lgc/b0$b;

    move-result-object v0

    .line 7
    move-object v2, p1

    check-cast v2, Lya/d$h;

    invoke-virtual {v2}, Lya/d$h;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/d;

    .line 8
    iget v2, v2, Loc/d;->a:I

    .line 9
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 10
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/b0;

    invoke-static {v3, v2}, Lgc/b0;->A(Lgc/b0;I)V

    .line 11
    move-object v2, p1

    check-cast v2, Lya/d$h;

    invoke-virtual {v2}, Lya/d$h;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/d;

    .line 12
    iget v2, v2, Loc/d;->c:I

    .line 13
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 14
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/b0;

    invoke-static {v3, v2}, Lgc/b0;->x(Lgc/b0;I)V

    .line 15
    move-object v2, p1

    check-cast v2, Lya/d$h;

    invoke-virtual {v2}, Lya/d$h;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loc/d;

    .line 16
    iget v3, v3, Loc/d;->b:I

    .line 17
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 18
    iget-object v4, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v4, Lgc/b0;

    invoke-static {v4, v3}, Lgc/b0;->z(Lgc/b0;I)V

    .line 19
    invoke-virtual {v2}, Lya/d$h;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/d;

    .line 20
    iget v2, v2, Loc/d;->d:I

    .line 21
    invoke-static {v2}, Lq/g;->a(I)I

    move-result v2

    .line 22
    invoke-static {v2}, Lgc/b0$a;->b(I)Lgc/b0$a;

    move-result-object v2

    .line 23
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 24
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/b0;

    invoke-static {v3, v2}, Lgc/b0;->y(Lgc/b0;Lgc/b0$a;)V

    .line 25
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/b0;

    .line 26
    new-instance v2, Lhc/m0;

    .line 27
    sget-object v3, Lhc/d;->H:Lhc/d;

    const/16 v3, 0x82

    int-to-byte v3, v3

    .line 28
    sget-object v4, Lhc/m0$a;->i:Lhc/m0$a;

    .line 29
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 30
    invoke-direct {v2, v3, v4, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 31
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    .line 32
    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 34
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 35
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v2, Lmc/e;->j:Lmc/e;

    .line 37
    sget-object v3, Lmc/e;->i:Lmc/e$a;

    .line 38
    sget-object v3, Lmc/e;->q:Lmc/e;

    .line 39
    invoke-static {p0, v0, v2, v3}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    .line 40
    :try_start_1
    invoke-static {}, Lgc/i;->F()Lgc/i$a;

    move-result-object v0

    .line 41
    move-object v2, p1

    check-cast v2, Lya/d$h;

    invoke-virtual {v2}, Lya/d$h;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/d;

    .line 42
    iget v2, v2, Loc/d;->a:I

    mul-int/lit16 v2, v2, 0x100

    .line 43
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 44
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/i;

    invoke-static {v3, v2}, Lgc/i;->A(Lgc/i;I)V

    .line 45
    move-object v2, p1

    check-cast v2, Lya/d$h;

    invoke-virtual {v2}, Lya/d$h;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/d;

    .line 46
    iget v2, v2, Loc/d;->b:I

    mul-int/lit16 v2, v2, 0x100

    .line 47
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 48
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/i;

    invoke-static {v3, v2}, Lgc/i;->z(Lgc/i;I)V

    .line 49
    move-object v2, p1

    check-cast v2, Lya/d$h;

    invoke-virtual {v2}, Lya/d$h;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/d;

    .line 50
    iget v2, v2, Loc/d;->c:I

    mul-int/lit16 v2, v2, 0x100

    .line 51
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 52
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/i;

    invoke-static {v3, v2}, Lgc/i;->x(Lgc/i;I)V

    .line 53
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 54
    iget-object v2, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v2, Lgc/i;

    invoke-static {v2}, Lgc/i;->y(Lgc/i;)V

    .line 55
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/i;

    .line 56
    new-instance v2, Lhc/m0;

    .line 57
    sget-object v3, Lhc/d;->l0:Lhc/d;

    const/16 v3, 0xde

    int-to-byte v3, v3

    .line 58
    sget-object v4, Lhc/m0$a;->i:Lhc/m0$a;

    .line 59
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 60
    invoke-direct {v2, v3, v4, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 61
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    .line 62
    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 64
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :cond_2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final V(Lnc/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Lmc/o;",
            "Ljava/util/List<",
            "Lmc/n;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p1

    check-cast v0, Lya/d$o0;

    .line 2
    iget-object v0, v0, Lya/d$o0;->p:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 4
    sget-object v2, Lmc/e;->p:Lmc/e;

    .line 5
    sget-object v3, Lmc/e;->q:Lmc/e;

    .line 6
    invoke-static {p0, v1, v2, v3}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    :try_start_0
    invoke-static {}, Lfc/c;->A()Lfc/c$a;

    move-result-object v1

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmc/n;

    .line 9
    invoke-static {}, Lfc/e;->F()Lfc/e$a;

    move-result-object v3

    .line 10
    iget-object v4, v2, Lmc/n;->h:Lmc/m;

    .line 11
    iget v4, v4, Lmc/m;->h:I

    .line 12
    invoke-virtual {v3}, Lm7/w$a;->k()V

    .line 13
    iget-object v5, v3, Lm7/w$a;->i:Lm7/w;

    check-cast v5, Lfc/e;

    invoke-static {v5, v4}, Lfc/e;->y(Lfc/e;I)V

    .line 14
    iget-object v2, v2, Lmc/n;->i:Lmc/l;

    .line 15
    iget v2, v2, Lmc/l;->h:I

    .line 16
    invoke-virtual {v3}, Lm7/w$a;->k()V

    .line 17
    iget-object v4, v3, Lm7/w$a;->i:Lm7/w;

    check-cast v4, Lfc/e;

    invoke-static {v4, v2}, Lfc/e;->x(Lfc/e;I)V

    .line 18
    invoke-virtual {v3}, Lm7/w$a;->h()Lm7/w;

    move-result-object v2

    check-cast v2, Lfc/e;

    .line 19
    invoke-virtual {v1}, Lm7/w$a;->k()V

    .line 20
    iget-object v3, v1, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lfc/c;

    invoke-static {v3, v2}, Lfc/c;->x(Lfc/c;Lfc/e;)V

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lhc/m0;

    .line 22
    sget-object v2, Lhc/d;->d0:Lhc/d;

    const/16 v2, 0xb2

    int-to-byte v2, v2

    .line 23
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 24
    invoke-virtual {v1}, Lm7/w$a;->h()Lm7/w;

    move-result-object v1

    check-cast v1, Lfc/c;

    invoke-virtual {v1}, Lm7/a;->m()[B

    move-result-object v1

    .line 25
    invoke-direct {v0, v2, v3, v1}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 26
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "set gesture configuration"

    .line 27
    new-instance v3, Lhc/l$x;

    invoke-direct {v3, p1}, Lhc/l$x;-><init>(Lnc/c;)V

    .line 28
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 29
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 30
    :cond_1
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v1}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final W(ZLnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lnc/a<",
            "Lmc/j0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhc/l;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lhc/l;->p:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lhc/g;

    invoke-direct {v1, p0, p2, p1}, Lhc/g;-><init>(Lhc/l;Lnc/a;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final X(Lnc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lgc/s;->z()Lgc/s$a;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lrc/e;

    invoke-virtual {v1}, Lrc/e;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lgc/s$a;->m(I)Lgc/s$a;

    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/s;

    .line 6
    new-instance v1, Lhc/m0;

    .line 7
    sget-object v2, Lhc/d;->v:Lhc/d;

    const/16 v2, 0x13

    int-to-byte v2, v2

    .line 8
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 9
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 10
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 11
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get firmware version in slot"

    .line 12
    new-instance v3, Lhc/l$i;

    invoke-direct {v3, p1, p0}, Lhc/l$i;-><init>(Lnc/c;Lhc/l;)V

    .line 13
    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    check-cast p1, Lrc/e;

    invoke-virtual {p1, v0}, Lrc/e;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_0
    check-cast p1, Lrc/e;

    invoke-virtual {p1, v0}, Lrc/e;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final Z(Lnc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "[B",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lgc/j;->A()Lgc/j$a;

    move-result-object v0

    const-string v1, "fw system_reset"

    invoke-virtual {v0, v1}, Lgc/j$a;->m(Ljava/lang/String;)Lgc/j$a;

    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/j;

    .line 2
    new-instance v1, Lhc/m0;

    .line 3
    sget-object v2, Lhc/d;->i0:Lhc/d;

    const/16 v2, 0xc8

    int-to-byte v2, v2

    .line 4
    sget-object v3, Lhc/m0$a;->l:Lhc/m0$a;

    .line 5
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 6
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 7
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    .line 8
    new-instance v2, Lhc/l$a;

    invoke-direct {v2, p1}, Lhc/l$a;-><init>(Lnc/c;)V

    const-string p1, "Debug ASCII command"

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V

    return-void
.end method

.method public final a()Lmc/e;
    .locals 1

    iget-object v0, p0, Lhc/l;->j:Lmc/e;

    return-object v0
.end method

.method public final a0(Lnc/d;Lnc/d;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhc/l;->o:Lhc/k0;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lhc/k0;

    .line 3
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    .line 4
    iget-object v2, p0, Lhc/l;->h:Ljava/lang/String;

    .line 5
    new-instance v3, Lpc/a;

    invoke-direct {v3, p1}, Lpc/a;-><init>(Llc/a;)V

    const/4 v7, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v3}, Lhc/k0;-><init>(Lhc/e;Ljava/lang/String;Lpc/a;)V

    .line 7
    new-instance v8, Lpc/b;

    new-instance v9, Lhc/l$u;

    move-object v1, v9

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lhc/l$u;-><init>(Lhc/k0;Lnc/d;Lhc/l;ZLnc/d;)V

    invoke-direct {v8, v9}, Lpc/b;-><init>(Llc/b;)V

    const-string p1, "FileTransfer"

    const/4 p2, 0x0

    const/16 v1, 0xc8

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    .line 8
    iput p3, v0, Lhc/k0;->t:I

    .line 9
    new-instance p3, Lhc/m0;

    sget-object v2, Lhc/d;->i0:Lhc/d;

    int-to-byte v1, v1

    sget-object v2, Lhc/m0$a;->l:Lhc/m0$a;

    .line 10
    invoke-static {}, Lgc/j;->A()Lgc/j$a;

    move-result-object v3

    const-string v4, "fw set_fwdl_destination 1"

    invoke-virtual {v3, v4}, Lgc/j$a;->m(Ljava/lang/String;)Lgc/j$a;

    invoke-virtual {v3}, Lm7/w$a;->h()Lm7/w;

    move-result-object v3

    check-cast v3, Lgc/j;

    invoke-virtual {v3}, Lm7/a;->m()[B

    move-result-object v3

    invoke-direct {p3, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 11
    :try_start_0
    iget-object v0, v0, Lhc/k0;->l:Lhc/e;

    const-string v1, "UploadToGoldSlot"

    invoke-virtual {v0, v1, p3, v8}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V

    .line 12
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p3

    const-string v0, "Sent : UploadToGoldSlot message"

    invoke-interface {p3, v0, p2, v7, p1}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {v8, p1}, Lpc/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    .line 14
    iput p3, v0, Lhc/k0;->t:I

    .line 15
    new-instance p3, Lhc/m0;

    sget-object v2, Lhc/d;->i0:Lhc/d;

    int-to-byte v1, v1

    sget-object v2, Lhc/m0$a;->l:Lhc/m0$a;

    .line 16
    invoke-static {}, Lgc/j;->A()Lgc/j$a;

    move-result-object v3

    const-string v4, "fw set_fwdl_destination 0"

    invoke-virtual {v3, v4}, Lgc/j$a;->m(Ljava/lang/String;)Lgc/j$a;

    invoke-virtual {v3}, Lm7/w$a;->h()Lm7/w;

    move-result-object v3

    check-cast v3, Lgc/j;

    invoke-virtual {v3}, Lm7/a;->m()[B

    move-result-object v3

    invoke-direct {p3, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 17
    :try_start_1
    iget-object v0, v0, Lhc/k0;->l:Lhc/e;

    const-string v1, "UploadToUpgradeSlot"

    invoke-virtual {v0, v1, p3, v8}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V

    .line 18
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object p3

    const-string v0, "Sent : UploadToUpgradeSlot message"

    invoke-interface {p3, v0, p2, v7, p1}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 19
    invoke-virtual {v8, p1}, Lpc/c;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_1
    new-instance p1, Lkc/c$g;

    invoke-direct {p1, p3}, Lkc/c$g;-><init>(Z)V

    .line 21
    invoke-interface {p2, p1}, Llc/b;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final b(Lnc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lgc/y;->A()Lgc/y$a;

    move-result-object v0

    .line 6
    move-object v1, p1

    check-cast v1, Lya/d$p0;

    invoke-virtual {v1}, Lya/d$p0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lgc/y$a;->m(I)Lgc/y$a;

    .line 7
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/y;

    .line 8
    new-instance v1, Lhc/m0;

    .line 9
    sget-object v2, Lhc/d;->j:Lhc/d;

    const/4 v2, 0x1

    int-to-byte v2, v2

    .line 10
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 11
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 12
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 13
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Set Preset"

    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final b0(I)I
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    double-to-int p1, v0

    mul-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public final c([B)V
    .locals 14

    .line 1
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto/16 :goto_12

    :cond_0
    const-string v1, "[%s] transportReceived(%s)"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 3
    iget-object v5, v0, Lhc/e;->d:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Lhc/e;->o([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v0, v4, v3, v1, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5
    iget v1, v0, Lhc/e;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Lhc/e;->h:I

    .line 6
    iget-object v1, v0, Lhc/e;->a:Lb2/h;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    array-length v5, p1

    const/16 v7, 0x63

    if-lt v5, v2, :cond_e

    iget-object v5, v1, Lb2/h;->a:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    goto/16 :goto_7

    .line 8
    :cond_1
    aget-byte v5, p1, v6

    .line 9
    invoke-static {p1}, Lb2/h;->a([B)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    .line 10
    invoke-static {v5}, Lb2/h;->b(B)Z

    move-result v5

    const-string v9, "TransportGather"

    if-eqz v5, :cond_5

    .line 11
    aget-byte v5, p1, v2

    if-eqz v5, :cond_4

    if-eq v5, v2, :cond_3

    if-eq v5, v3, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lhc/e;->o([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const-string v8, "invalid request in window: %s"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4, v6, v9}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 13
    :goto_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lhc/e;->o([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const-string v8, "unexpected flow-control request: %s"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4, v6, v9}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lhc/e;->o([B)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const-string v8, "resend request for %s"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4, v6, v9}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v5

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p1}, Lhc/e;->o([B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v6

    const-string v10, "setting lastFlowControl to %s"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v4, v6, v9}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 16
    iput-object p1, v1, Lb2/h;->c:Ljava/lang/Object;

    :goto_1
    move v1, v6

    goto/16 :goto_8

    .line 17
    :cond_5
    array-length v5, p1

    invoke-static {p1, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    if-nez v5, :cond_6

    goto/16 :goto_7

    .line 18
    :cond_6
    iget-object v5, v1, Lb2/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    aget-byte v5, p1, v6

    and-int/lit8 v5, v5, -0x80

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v6

    :goto_2
    if-eqz v5, :cond_d

    .line 20
    iget-object v5, v1, Lb2/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_9

    .line 21
    iget-object v5, v1, Lb2/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-nez v5, :cond_8

    goto :goto_3

    .line 22
    :cond_8
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    invoke-static {v5}, Lhc/e;->o([B)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    const-string v12, "last segment was %s"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v4, v6, v9}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 23
    invoke-static {v5}, Lb2/h;->a([B)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    add-int/2addr v5, v2

    .line 24
    rem-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    if-eq v8, v5, :cond_9

    .line 25
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v10, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v10, v2

    const-string v5, "received segment: %d; expected: %d"

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4, v6, v9}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    :goto_3
    const/16 v1, 0x62

    goto :goto_8

    .line 26
    :cond_9
    iget-object v5, v1, Lb2/h;->a:Ljava/util/ArrayList;

    if-nez v5, :cond_a

    move-object v5, v4

    goto :goto_6

    .line 27
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v8, v6

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 28
    array-length v9, v9

    sub-int/2addr v9, v2

    add-int/2addr v8, v9

    goto :goto_4

    .line 29
    :cond_b
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 30
    iget-object v8, v1, Lb2/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 31
    array-length v10, v9

    sub-int/2addr v10, v2

    invoke-virtual {v5, v9, v2, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 32
    :cond_c
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 33
    :goto_6
    iput-object v5, v1, Lb2/h;->b:Ljava/lang/Object;

    .line 34
    iget-object v1, v1, Lb2/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v3

    goto :goto_8

    :cond_d
    move v1, v2

    goto :goto_8

    :cond_e
    :goto_7
    move v1, v7

    :goto_8
    if-eqz v1, :cond_14

    if-eq v1, v7, :cond_13

    if-eq v1, v3, :cond_10

    const/4 v5, 0x3

    if-eq v1, v5, :cond_f

    goto :goto_b

    :cond_f
    const-string v1, "com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE"

    .line 35
    invoke-virtual {v0, v1, p1}, Lhc/e;->c(Ljava/lang/String;[B)V

    goto :goto_a

    .line 36
    :cond_10
    iget-object v1, v0, Lhc/e;->a:Lb2/h;

    .line 37
    iget-object v1, v1, Lb2/h;->b:Ljava/lang/Object;

    check-cast v1, [B

    if-nez v1, :cond_11

    const-string v1, "RIPLEY_IS_FULL_MESSAGE without any gathered message"

    .line 38
    invoke-virtual {v0, v4, v2, v1, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_12

    .line 39
    :cond_11
    invoke-static {v1}, Lhc/m0;->a([B)Lhc/m0;

    move-result-object v3

    if-nez v3, :cond_12

    const-string v3, "RIPLEY_IS_FULL_MESSAGE invalid Message "

    .line 40
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 41
    invoke-static {v1}, Lhc/e;->o([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v4, v2, v1, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_12

    :cond_12
    const-string v3, "com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE"

    .line 43
    invoke-virtual {v0, v3, v1}, Lhc/e;->c(Ljava/lang/String;[B)V

    .line 44
    invoke-static {p1}, Lb2/h;->a([B)I

    move-result v1

    .line 45
    iget v3, v0, Lhc/e;->h:I

    if-le v3, v2, :cond_1e

    iget v3, v0, Lhc/e;->g:I

    invoke-static {v3, v1}, Lhc/e;->m(II)I

    move-result v3

    if-ne v3, v2, :cond_1e

    int-to-byte v3, v1

    .line 46
    :try_start_0
    invoke-virtual {v0, v3}, Lhc/e;->l(B)V
    :try_end_0
    .catch Lkc/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    const-string v3, "Disconnect while trying to send flow control"

    .line 47
    invoke-virtual {v0, v4, v2, v3, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_9
    add-int/2addr v1, v2

    .line 48
    iput v1, v0, Lhc/e;->g:I

    goto/16 :goto_12

    :cond_13
    :goto_a
    const-string v1, "RIPLEY_UNKNOWN_PAYLOAD possibly from non-ripley service read "

    .line 49
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-static {p1}, Lhc/e;->o([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v4, v3, v1, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 52
    :goto_b
    invoke-static {p1}, Lb2/h;->a([B)I

    move-result v1

    .line 53
    iget v5, v0, Lhc/e;->h:I

    if-le v5, v2, :cond_1e

    iget v5, v0, Lhc/e;->g:I

    invoke-static {v5, v1}, Lhc/e;->m(II)I

    move-result v5

    if-ne v5, v2, :cond_1e

    int-to-byte v5, v1

    .line 54
    :try_start_1
    invoke-virtual {v0, v5}, Lhc/e;->l(B)V
    :try_end_1
    .catch Lkc/f; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    const-string v5, "Disconnect while trying to send Flow Control packet"

    .line 55
    invoke-virtual {v0, v4, v3, v5, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_c
    add-int/2addr v1, v2

    .line 56
    iput v1, v0, Lhc/e;->g:I

    goto/16 :goto_12

    .line 57
    :cond_14
    iget-object v1, v0, Lhc/e;->a:Lb2/h;

    .line 58
    iget-object v1, v1, Lb2/h;->c:Ljava/lang/Object;

    check-cast v1, [B

    if-nez v1, :cond_15

    const-string v1, "RIPLEY_IS_FLOW_CONTROL without any gathered message"

    .line 59
    invoke-virtual {v0, v4, v2, v1, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_12

    .line 60
    :cond_15
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    if-eqz v5, :cond_18

    if-eq v5, v2, :cond_17

    if-eq v5, v3, :cond_16

    goto :goto_d

    :cond_16
    const-string v5, "CoreRF flow-conrol error on sequence: %02X"

    new-array v7, v2, [Ljava/lang/Object;

    .line 61
    aget-byte v8, p1, v6

    and-int/lit8 v8, v8, 0x3f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-virtual {v0, v4, v2, v5, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 63
    iget-object v5, v0, Lhc/e;->e:Lhc/p0;

    aget-byte v6, p1, v6

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v5, v6}, Lhc/p0;->e(I)V

    :goto_d
    const-string v5, "unhandled flow control type: "

    .line 64
    invoke-static {v5}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 65
    aget-byte v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v4, v3, v1, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_12

    :cond_17
    const-string v1, "resend  on sequence: %02X"

    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    aget-byte v5, p1, v6

    and-int/lit8 v5, v5, 0x3f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v4, v3, v1, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 69
    iget-object v0, v0, Lhc/e;->e:Lhc/p0;

    aget-byte v1, p1, v6

    and-int/lit8 v1, v1, 0x3f

    invoke-virtual {v0, v1}, Lhc/p0;->e(I)V

    goto/16 :goto_12

    .line 70
    :cond_18
    invoke-static {v1}, Lb2/h;->a([B)I

    move-result v5

    .line 71
    iget v7, v0, Lhc/e;->j:I

    if-eq v7, v5, :cond_19

    const-string v1, "expected ack: %s; window ack: %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 72
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v4, v2, v1, v4}, Lhc/e;->e(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12

    .line 74
    :cond_19
    iput v5, v0, Lhc/e;->i:I

    add-int/2addr v5, v3

    .line 75
    rem-int/lit8 v5, v5, 0x40

    iput v5, v0, Lhc/e;->j:I

    .line 76
    iget-object v5, v0, Lhc/e;->e:Lhc/p0;

    aget-byte v7, v1, v6

    and-int/lit8 v7, v7, 0x3f

    .line 77
    monitor-enter v5

    .line 78
    :try_start_2
    iget-object v8, v5, Lhc/p0;->b:Lhc/p0$a;

    if-eqz v8, :cond_1d

    iget-object v8, v5, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1a

    goto :goto_10

    .line 79
    :cond_1a
    iget-object v8, v5, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v8}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhc/p0$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v8, :cond_1b

    .line 80
    monitor-exit v5

    goto :goto_11

    .line 81
    :cond_1b
    :try_start_3
    iget-object v9, v8, Lhc/p0$a;->b:[B

    aget-byte v9, v9, v6

    and-int/lit8 v9, v9, 0x3f

    int-to-byte v9, v9

    .line 82
    invoke-static {v9, v7}, Lhc/e;->m(II)I

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v9, v6

    :goto_e
    if-ge v9, v7, :cond_1c

    .line 83
    :try_start_4
    iget-object v10, v5, Lhc/p0;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v10}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_f

    .line 84
    :catch_2
    :try_start_5
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v10

    const-string v11, "[%s] moveReceivedWindow() error removing sent txQueueItem %s"

    new-array v12, v3, [Ljava/lang/Object;

    iget-object v13, v5, Lhc/p0;->d:Ljava/lang/String;

    aput-object v13, v12, v6

    iget-object v13, v8, Lhc/p0$a;->b:[B

    invoke-static {v13}, Lhc/e;->o([B)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v2

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "TransportQueue"

    invoke-interface {v10, v11, v4, v6, v12}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    :goto_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 85
    :cond_1c
    invoke-virtual {v5, v6}, Lhc/p0;->c(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    monitor-exit v5

    goto :goto_11

    .line 87
    :cond_1d
    :goto_10
    monitor-exit v5

    :goto_11
    const-string v2, "com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WINDOW_MOVED"

    .line 88
    aget-byte v1, v1, v6

    and-int/lit8 v1, v1, 0x3f

    invoke-virtual {v0, v2, v1}, Lhc/e;->b(Ljava/lang/String;I)V

    .line 89
    :cond_1e
    :goto_12
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v1, "com.nike.corerf.ACTION_RAW_DATA_AVAILABLE"

    invoke-virtual {v0, v1, p1}, Lhc/e;->c(Ljava/lang/String;[B)V

    return-void

    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v5

    throw p1
.end method

.method public final d(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->n:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->q0:Lhc/d;

    const/16 v1, 0xec

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Start Custom 2.0 Animation"

    .line 10
    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final e(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->j0:Lhc/d;

    const/16 v1, 0xd6

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get Current Firmware Version"

    .line 10
    new-instance v3, Lhc/l$f;

    invoke-direct {v3, p1, p0}, Lhc/l$f;-><init>(Lnc/a;Lhc/l;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lic/k;

    invoke-virtual {p1, v0}, Lic/k;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lic/k;

    invoke-virtual {p1, v0}, Lic/k;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final f(Lnc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lgc/w;->z()Lgc/w$a;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lic/j;

    invoke-virtual {v1}, Lic/j;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 6
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 7
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/w;

    invoke-static {v3, v1, v2}, Lgc/w;->x(Lgc/w;J)V

    .line 8
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/w;

    .line 9
    new-instance v1, Lhc/m0;

    .line 10
    sget-object v2, Lhc/d;->x:Lhc/d;

    const/16 v2, 0x2a

    int-to-byte v2, v2

    .line 11
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 12
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 13
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 14
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Set RTC"

    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 15
    :catchall_0
    check-cast p1, Lic/j;

    .line 16
    invoke-virtual {p1}, Lic/j;->a()V

    goto :goto_0

    .line 17
    :cond_0
    check-cast p1, Lic/j;

    .line 18
    invoke-virtual {p1}, Lic/j;->a()V

    :goto_0
    return-void
.end method

.method public final g(Lnc/d;)Lhc/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;)",
            "Lhc/a;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lrd/u;

    invoke-direct {v0}, Lrd/u;-><init>()V

    .line 2
    iget-object v1, p0, Lhc/l;->h:Ljava/lang/String;

    .line 3
    sget-object v2, Lmc/e;->j:Lmc/e;

    .line 4
    sget-object v3, Lmc/e;->i:Lmc/e$a;

    .line 5
    sget-object v3, Lmc/e;->q:Lmc/e;

    .line 6
    invoke-static {p0, v1, v2, v3}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lhc/l$z;

    invoke-direct {v1, p1, p0, p1, v0}, Lhc/l$z;-><init>(Lnc/a;Lhc/l;Lnc/d;Lrd/u;)V

    invoke-virtual {p0, v1}, Lhc/l;->w(Lnc/a;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lkc/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lkc/b;-><init>(Ljava/lang/String;ILrd/h;)V

    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    new-instance p1, Lhc/l$f0;

    invoke-direct {p1, p0}, Lhc/l$f0;-><init>(Lhc/l;)V

    return-object p1
.end method

.method public final h(Lnc/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/e0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->j:Lmc/e;

    new-instance v1, Lmc/e;

    const-string v2, "2.1.7"

    invoke-direct {v1, v2}, Lmc/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc/e;->b(Lmc/e;)I

    move-result v0

    const-string v1, "Get LED Color"

    if-gez v0, :cond_1

    .line 2
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v2, Lmc/e;->j:Lmc/e;

    .line 3
    sget-object v3, Lmc/e;->i:Lmc/e$a;

    .line 4
    sget-object v3, Lmc/e;->q:Lmc/e;

    .line 5
    invoke-static {p0, v0, v2, v3}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    new-instance v0, Lhc/m0;

    sget-object v2, Lhc/d;->I:Lhc/d;

    const/16 v2, 0x83

    int-to-byte v2, v2

    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 7
    iget-object v2, p0, Lhc/l;->k:Lhc/e;

    .line 8
    new-instance v3, Lhc/l$l;

    invoke-direct {v3, p1}, Lhc/l$l;-><init>(Lnc/a;)V

    .line 9
    invoke-virtual {v2, v1, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v2, Lmc/e;->j:Lmc/e;

    .line 13
    sget-object v3, Lmc/e;->i:Lmc/e$a;

    .line 14
    sget-object v3, Lmc/e;->q:Lmc/e;

    .line 15
    invoke-static {p0, v0, v2, v3}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    .line 16
    :try_start_1
    invoke-static {}, Lgc/i;->F()Lgc/i$a;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 18
    iget-object v2, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v2, Lgc/i;

    invoke-static {v2}, Lgc/i;->y(Lgc/i;)V

    .line 19
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/i;

    .line 20
    new-instance v2, Lhc/m0;

    .line 21
    sget-object v3, Lhc/d;->k0:Lhc/d;

    const/16 v3, 0xdd

    int-to-byte v3, v3

    .line 22
    sget-object v4, Lhc/m0$a;->i:Lhc/m0$a;

    .line 23
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 24
    invoke-direct {v2, v3, v4, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 25
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    .line 26
    new-instance v3, Lhc/l$m;

    invoke-direct {v3, p1}, Lhc/l$m;-><init>(Lnc/a;)V

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 28
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 29
    :cond_2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final i(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lgc/x;->z()Lgc/x$a;

    move-result-object v0

    .line 6
    sget-object v1, Lgc/x$b;->j:Lgc/x$b;

    .line 7
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 8
    iget-object v2, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v2, Lgc/x;

    invoke-static {v2, v1}, Lgc/x;->x(Lgc/x;Lgc/x$b;)V

    .line 9
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/x;

    .line 10
    new-instance v1, Lhc/m0;

    .line 11
    sget-object v2, Lhc/d;->i:Lhc/d;

    const/4 v2, 0x0

    int-to-byte v2, v2

    .line 12
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 13
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 14
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 15
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Tighten"

    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 16
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final j(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lgc/h0;->G()Lgc/h0$a;

    move-result-object v0

    .line 6
    invoke-static {}, Lgc/h0;->G()Lgc/h0$a;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lm7/w$a;->i:Lm7/w;

    check-cast v1, Lgc/h0;

    invoke-virtual {v1}, Lgc/h0;->E()Lgc/f0;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 9
    iget-object v2, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v2, Lgc/h0;

    invoke-static {v2, v1}, Lgc/h0;->x(Lgc/h0;Lgc/f0;)V

    .line 10
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/h0;

    .line 11
    new-instance v1, Lhc/m0;

    .line 12
    sget-object v2, Lhc/d;->G:Lhc/d;

    const/16 v2, 0x79

    int-to-byte v2, v2

    .line 13
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 14
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 15
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 16
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get Stats"

    .line 17
    new-instance v3, Lhc/l$s;

    invoke-direct {v3, p1}, Lhc/l$s;-><init>(Lnc/a;)V

    .line 18
    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 19
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final k(Lnc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2
    new-instance v1, Ln5/n;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Ln5/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmc/g0;

    .line 4
    iget-boolean v0, v0, Lmc/g0;->l:Z

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 6
    new-instance v1, Lp3/g;

    invoke-direct {v1, p0, v0, v2}, Lp3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 8
    :cond_0
    invoke-static {}, Lgc/l0;->z()Lgc/l0$a;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lya/y;

    invoke-virtual {v1}, Lya/y;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 9
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 10
    iget-object v2, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v2, Lgc/l0;

    invoke-static {v2, v1}, Lgc/l0;->x(Lgc/l0;I)V

    .line 11
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/l0;

    .line 12
    iget-object v1, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 13
    sget-object v2, Lmc/e;->l:Lmc/e;

    .line 14
    sget-object v3, Lmc/e;->q:Lmc/e;

    .line 15
    invoke-static {p0, v1, v2, v3}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    .line 16
    :try_start_0
    new-instance v1, Lhc/m0;

    .line 17
    sget-object v2, Lhc/d;->q0:Lhc/d;

    const/16 v2, 0xec

    int-to-byte v2, v2

    .line 18
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 19
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 20
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 21
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Start User Animations"

    .line 22
    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    .line 23
    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 24
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 25
    :cond_1
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v1}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final l(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/a0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->m:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->U:Lhc/d;

    const/16 v1, 0xa6

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get active session id"

    .line 10
    new-instance v3, Lhc/l$c;

    invoke-direct {v3, p1}, Lhc/l$c;-><init>(Lnc/a;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final m(Lnc/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/l$y;

    invoke-direct {v0, p1}, Lhc/l$y;-><init>(Lnc/a;)V

    .line 6
    invoke-virtual {p0, v0}, Lhc/l;->Z(Lnc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    new-instance v0, Lmc/e;

    const-string v1, "1.1.0"

    invoke-direct {v0, v1}, Lmc/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhc/l;->j:Lmc/e;

    .line 2
    iget-object v0, p0, Lhc/l;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lhc/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lhc/l;->o:Lhc/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lhc/k0;->c(Z)V

    .line 5
    :cond_0
    iget-object v0, p0, Lhc/l;->o:Lhc/k0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lhc/k0;->e()V

    .line 6
    :cond_1
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    .line 7
    invoke-virtual {v0}, Lhc/e;->g()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lhc/l;->o:Lhc/k0;

    .line 9
    iput-object v0, p0, Lhc/l;->l:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lhc/l;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final p(Lnc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lgc/i0;->z()Lgc/i0$a;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lya/d$n0;

    invoke-virtual {v1}, Lya/d$n0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 6
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 7
    iget-object v2, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v2, Lgc/i0;

    invoke-static {v2, v1}, Lgc/i0;->x(Lgc/i0;Z)V

    .line 8
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/i0;

    .line 9
    new-instance v1, Lhc/m0;

    .line 10
    sget-object v2, Lhc/d;->A:Lhc/d;

    const/16 v2, 0x52

    int-to-byte v2, v2

    .line 11
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 12
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 13
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 14
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Foot Presence Sensor"

    .line 15
    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    .line 16
    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 18
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final q(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->n:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->s0:Lhc/d;

    const/16 v1, 0xee

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get User Animation"

    .line 10
    new-instance v3, Lhc/l$g;

    invoke-direct {v3, p1}, Lhc/l$g;-><init>(Lnc/a;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final r(Lnc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Lmc/k;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lgc/s;->z()Lgc/s$a;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lya/q;

    invoke-virtual {v1}, Lya/q;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lgc/s$a;->m(I)Lgc/s$a;

    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/s;

    .line 6
    new-instance v1, Lhc/m0;

    .line 7
    sget-object v2, Lhc/d;->v:Lhc/d;

    const/16 v2, 0x13

    int-to-byte v2, v2

    .line 8
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 9
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 10
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 11
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get detailed firmware image stats in slot"

    .line 12
    new-instance v3, Lhc/l$h;

    invoke-direct {v3, p1}, Lhc/l$h;-><init>(Lnc/c;)V

    .line 13
    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 15
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final s(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->p:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->f0:Lhc/d;

    const/16 v1, 0xb4

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "reset gesture statistics"

    .line 10
    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final t(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    sget-object v1, Lhc/d;->k:Lhc/d;

    const/4 v1, 0x2

    int-to-byte v1, v1

    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 6
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get Preset"

    .line 7
    new-instance v3, Lhc/l$p;

    invoke-direct {v3, p1}, Lhc/l$p;-><init>(Lnc/a;)V

    .line 8
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final u(Lnc/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Loc/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lgc/k0;->I()Lgc/k0$a;

    move-result-object v0

    .line 2
    move-object v1, p1

    check-cast v1, Lya/k;

    invoke-virtual {v1}, Lya/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e;

    .line 3
    iget v2, v2, Loc/e;->a:I

    .line 4
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 5
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/k0;

    invoke-static {v3, v2}, Lgc/k0;->x(Lgc/k0;I)V

    .line 6
    invoke-virtual {v1}, Lya/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e;

    .line 7
    iget v2, v2, Loc/e;->b:I

    .line 8
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 9
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/k0;

    invoke-static {v3, v2}, Lgc/k0;->F(Lgc/k0;I)V

    .line 10
    invoke-virtual {v1}, Lya/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e;

    .line 11
    iget v2, v2, Loc/e;->c:I

    .line 12
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 13
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/k0;

    invoke-static {v3, v2}, Lgc/k0;->B(Lgc/k0;I)V

    .line 14
    invoke-virtual {v1}, Lya/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e;

    .line 15
    iget v2, v2, Loc/e;->d:I

    .line 16
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 17
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/k0;

    invoke-static {v3, v2}, Lgc/k0;->y(Lgc/k0;I)V

    .line 18
    invoke-virtual {v1}, Lya/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e;

    .line 19
    iget v2, v2, Loc/e;->e:I

    .line 20
    invoke-virtual {p0, v2}, Lhc/l;->b0(I)I

    move-result v2

    .line 21
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 22
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/k0;

    invoke-static {v3, v2}, Lgc/k0;->E(Lgc/k0;I)V

    .line 23
    invoke-virtual {v1}, Lya/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e;

    .line 24
    iget v2, v2, Loc/e;->f:I

    .line 25
    invoke-virtual {p0, v2}, Lhc/l;->b0(I)I

    move-result v2

    .line 26
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 27
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/k0;

    invoke-static {v3, v2}, Lgc/k0;->z(Lgc/k0;I)V

    .line 28
    invoke-virtual {v1}, Lya/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e;

    .line 29
    iget v2, v2, Loc/e;->g:I

    .line 30
    invoke-virtual {p0, v2}, Lhc/l;->b0(I)I

    move-result v2

    .line 31
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 32
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/k0;

    invoke-static {v3, v2}, Lgc/k0;->D(Lgc/k0;I)V

    .line 33
    invoke-virtual {v1}, Lya/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e;

    .line 34
    iget v2, v2, Loc/e;->h:I

    .line 35
    invoke-virtual {p0, v2}, Lhc/l;->b0(I)I

    move-result v2

    .line 36
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 37
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/k0;

    invoke-static {v3, v2}, Lgc/k0;->A(Lgc/k0;I)V

    .line 38
    invoke-virtual {v1}, Lya/k;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loc/e;

    .line 39
    iget v2, v2, Loc/e;->i:I

    .line 40
    invoke-virtual {p0, v2}, Lhc/l;->b0(I)I

    move-result v2

    .line 41
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 42
    iget-object v3, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v3, Lgc/k0;

    invoke-static {v3, v2}, Lgc/k0;->C(Lgc/k0;I)V

    .line 43
    invoke-virtual {v1}, Lya/k;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loc/e;

    .line 44
    iget v1, v1, Loc/e;->j:I

    .line 45
    invoke-virtual {p0, v1}, Lhc/l;->b0(I)I

    move-result v1

    .line 46
    invoke-virtual {v0}, Lm7/w$a;->k()V

    .line 47
    iget-object v2, v0, Lm7/w$a;->i:Lm7/w;

    check-cast v2, Lgc/k0;

    invoke-static {v2, v1}, Lgc/k0;->G(Lgc/k0;I)V

    .line 48
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/k0;

    .line 49
    iget-object v1, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 50
    sget-object v2, Lmc/e;->l:Lmc/e;

    .line 51
    sget-object v3, Lmc/e;->m:Lmc/e;

    .line 52
    invoke-static {p0, v1, v2, v3}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_0

    .line 53
    :try_start_0
    new-instance v1, Lhc/m0;

    .line 54
    sget-object v2, Lhc/d;->o0:Lhc/d;

    const/16 v2, 0xea

    int-to-byte v2, v2

    .line 55
    sget-object v3, Lhc/m0$a;->i:Lhc/m0$a;

    .line 56
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 57
    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 58
    iget-object v0, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Set User Animations"

    .line 59
    new-instance v3, Lpc/b;

    invoke-direct {v3, p1}, Lpc/b;-><init>(Llc/b;)V

    .line 60
    invoke-virtual {v0, v2, v1, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 61
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 62
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v1}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final v(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->o:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->Z:Lhc/d;

    const/16 v1, 0xac

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "query activity state"

    .line 10
    new-instance v3, Lhc/l$d;

    invoke-direct {v3, p1}, Lhc/l$d;-><init>(Lnc/a;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final w(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 2
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->z:Lhc/d;

    const/16 v1, 0x51

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Battery Level"

    .line 10
    new-instance v3, Lhc/l$b;

    invoke-direct {v3, p1}, Lhc/l$b;-><init>(Lnc/a;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final x(IIILnc/b;)Lhc/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lnc/b<",
            "Ljava/lang/Boolean;",
            "[B>;)",
            "Lhc/a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhc/l;->o:Lhc/k0;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->j:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->i:Lmc/e$a;

    .line 4
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 5
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    new-instance v0, Lrd/w;

    invoke-direct {v0}, Lrd/w;-><init>()V

    .line 7
    new-instance v1, Lhc/k0;

    .line 8
    iget-object v2, p0, Lhc/l;->k:Lhc/e;

    iget-object v3, p0, Lhc/l;->h:Ljava/lang/String;

    new-instance v4, Lpc/a;

    .line 9
    new-instance v5, Lhc/l$v;

    invoke-direct {v5, p0, p4, v0}, Lhc/l$v;-><init>(Lhc/l;Lnc/b;Lrd/w;)V

    .line 10
    invoke-direct {v4, v5}, Lpc/a;-><init>(Llc/a;)V

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lhc/k0;-><init>(Lhc/e;Ljava/lang/String;Lpc/a;)V

    .line 12
    invoke-virtual {v1, p1, p2, p3}, Lhc/k0;->a(III)V

    .line 13
    iput-object v1, p0, Lhc/l;->o:Lhc/k0;

    .line 14
    iput-object v1, v0, Lrd/w;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    check-cast p4, Lfb/w;

    invoke-virtual {p4, p1}, Lfb/w;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 16
    :cond_0
    check-cast p4, Lfb/w;

    invoke-virtual {p4, v0}, Lfb/w;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/Throwable;

    const-string p2, "TransferAlreadyInProgress"

    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    check-cast p4, Lfb/w;

    invoke-virtual {p4, p1}, Lfb/w;->k(Ljava/lang/Throwable;)V

    .line 18
    :goto_0
    new-instance p1, Lhc/l$w;

    invoke-direct {p1, p0}, Lhc/l$w;-><init>(Lhc/l;)V

    return-object p1
.end method

.method public final y(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->k:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->m0:Lhc/d;

    const/16 v1, 0xe7

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "Get Manufacturing Product ID"

    .line 10
    new-instance v3, Lhc/l$n;

    invoke-direct {v3, p1}, Lhc/l$n;-><init>(Lnc/a;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final z(Lnc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/util/List<",
            "Lmc/n;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l;->h:Ljava/lang/String;

    sget-object v1, Lmc/e;->i:Lmc/e$a;

    .line 2
    sget-object v1, Lmc/e;->p:Lmc/e;

    .line 3
    sget-object v2, Lmc/e;->q:Lmc/e;

    .line 4
    invoke-static {p0, v0, v1, v2}, Lhc/l;->Y(Lhc/l;Ljava/lang/String;Lmc/e;Lmc/e;)Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    :try_start_0
    new-instance v0, Lhc/m0;

    .line 6
    sget-object v1, Lhc/d;->e0:Lhc/d;

    const/16 v1, 0xb3

    int-to-byte v1, v1

    .line 7
    sget-object v2, Lhc/m0$a;->i:Lhc/m0$a;

    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 9
    iget-object v1, p0, Lhc/l;->k:Lhc/e;

    const-string v2, "query gesture config state"

    .line 10
    new-instance v3, Lhc/l$j;

    invoke-direct {v3, p1}, Lhc/l$j;-><init>(Lnc/a;)V

    .line 11
    invoke-virtual {v1, v2, v0, v3}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
