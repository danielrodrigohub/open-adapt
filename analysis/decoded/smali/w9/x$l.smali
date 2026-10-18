.class public final Lw9/x$l;
.super Ljava/lang/Object;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lfb/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;-><init>(Lea/m;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/x;)V
    .locals 0

    iput-object p1, p0, Lw9/x$l;->c:Lw9/x;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lw9/x$l;->a:I

    .line 3
    iput p1, p0, Lw9/x$l;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lba/v;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "fitCalibrateState"

    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Lv9/t;->a:Lv9/t;

    .line 2
    sget-object v2, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v4, v3, [Leb/g;

    .line 3
    new-instance v5, Leb/c;

    new-instance v6, Leb/a;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lba/v;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lba/v;->a()I

    move-result v8

    if-ne v8, v3, :cond_0

    const-string v8, "Left"

    goto :goto_0

    :cond_0
    const-string v8, "Right"

    :goto_0
    const-string v9, "FitCalibration["

    const-string v10, "[shoe: "

    const-string v11, "]]"

    .line 5
    invoke-static {v9, v7, v10, v8, v11}, La0/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-direct {v6, v7}, Leb/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Leb/c;-><init>(Leb/d;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Leb/f;->a([Leb/g;)V

    .line 7
    instance-of v2, v0, Lba/z;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual/range {p1 .. p1}, Lba/v;->a()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 9
    move-object v2, v0

    check-cast v2, Lba/z;

    .line 10
    iget v2, v2, Lba/z;->k:I

    .line 11
    iput v2, v1, Lw9/x$l;->a:I

    goto :goto_1

    .line 12
    :cond_1
    move-object v2, v0

    check-cast v2, Lba/z;

    .line 13
    iget v2, v2, Lba/z;->k:I

    .line 14
    iput v2, v1, Lw9/x$l;->b:I

    .line 15
    :goto_1
    iget v2, v1, Lw9/x$l;->a:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    iget v10, v1, Lw9/x$l;->b:I

    if-le v10, v3, :cond_2

    .line 16
    iget-object v2, v1, Lw9/x$l;->c:Lw9/x;

    .line 17
    iget-object v3, v2, Lw9/x;->l:Lea/m;

    .line 18
    iget-object v7, v3, Lea/m;->l:Lea/b;

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x5f

    move-object v8, v4

    move-object v9, v13

    move v11, v15

    move/from16 v12, v16

    .line 19
    invoke-static/range {v7 .. v12}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v5

    .line 20
    iget-object v7, v1, Lw9/x$l;->c:Lw9/x;

    .line 21
    iget-object v7, v7, Lw9/x;->l:Lea/m;

    .line 22
    iget-object v11, v7, Lea/m;->k:Lea/b;

    .line 23
    iget v14, v1, Lw9/x$l;->a:I

    const/4 v7, 0x0

    move-object v12, v4

    .line 24
    invoke-static/range {v11 .. v16}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v14

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1fe7

    move-object v11, v3

    move-object v12, v7

    move-object v15, v5

    .line 25
    invoke-static/range {v11 .. v22}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lw9/x;->G0(Lea/m;)V

    .line 27
    :cond_2
    iget-object v2, v1, Lw9/x$l;->c:Lw9/x;

    .line 28
    iget-object v3, v2, Lw9/x;->B:Ljava/lang/Object;

    .line 29
    monitor-enter v3

    .line 30
    :try_start_0
    iget-object v4, v2, Lw9/x;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array v5, v6, [Lfb/d;

    .line 31
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v4, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    array-length v5, v4

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    check-cast v7, Lfb/d;

    .line 33
    invoke-interface {v7, v0}, Lfb/d;->a(Lba/v;)V

    .line 34
    iget-boolean v7, v0, Lba/v;->i:Z

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    .line 35
    iput-object v7, v2, Lw9/x;->n:Lfb/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 36
    :cond_4
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
