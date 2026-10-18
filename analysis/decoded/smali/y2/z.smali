.class public final Ly2/z;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lp2/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/j<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ly2/n;

.field public final b:Ls2/b;


# direct methods
.method public constructor <init>(Ly2/n;Ls2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/z;->a:Ly2/n;

    .line 3
    iput-object p2, p0, Ly2/z;->b:Ls2/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lp2/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    iget-object p1, p0, Ly2/z;->a:Ly2/n;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILp2/h;)Lr2/w;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/io/InputStream;

    .line 2
    instance-of v2, v0, Ly2/x;

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Ly2/x;

    const/4 v2, 0x0

    move v3, v2

    move-object v2, v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Ly2/x;

    iget-object v3, v1, Ly2/z;->b:Ls2/b;

    invoke-direct {v2, v0, v3}, Ly2/x;-><init>(Ljava/io/InputStream;Ls2/b;)V

    const/4 v0, 0x1

    move v3, v0

    .line 5
    :goto_0
    sget-object v4, Ll3/d;->j:Ljava/util/ArrayDeque;

    monitor-enter v4

    .line 6
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/d;

    .line 7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Ll3/d;

    invoke-direct {v0}, Ll3/d;-><init>()V

    :cond_1
    move-object v5, v0

    .line 9
    iput-object v2, v5, Ll3/d;->h:Ljava/io/InputStream;

    .line 10
    new-instance v0, Ll3/j;

    invoke-direct {v0, v5}, Ll3/j;-><init>(Ljava/io/InputStream;)V

    .line 11
    new-instance v11, Ly2/z$a;

    invoke-direct {v11, v2, v5}, Ly2/z$a;-><init>(Ly2/x;Ll3/d;)V

    const/4 v12, 0x0

    .line 12
    :try_start_1
    iget-object v6, v1, Ly2/z;->a:Ly2/n;

    .line 13
    new-instance v7, Ly2/t$b;

    iget-object v8, v6, Ly2/n;->d:Ljava/util/List;

    iget-object v9, v6, Ly2/n;->c:Ls2/b;

    invoke-direct {v7, v0, v8, v9}, Ly2/t$b;-><init>(Ljava/io/InputStream;Ljava/util/List;Ls2/b;)V

    move v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v6 .. v11}, Ly2/n;->a(Ly2/t;IILp2/h;Ly2/n$b;)Lr2/w;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    iput-object v12, v5, Ll3/d;->i:Ljava/io/IOException;

    .line 15
    iput-object v12, v5, Ll3/d;->h:Ljava/io/InputStream;

    .line 16
    monitor-enter v4

    .line 17
    :try_start_2
    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 18
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    .line 19
    invoke-virtual {v2}, Ly2/x;->Y()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 20
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 21
    iput-object v12, v5, Ll3/d;->i:Ljava/io/IOException;

    .line 22
    iput-object v12, v5, Ll3/d;->h:Ljava/io/InputStream;

    .line 23
    sget-object v6, Ll3/d;->j:Ljava/util/ArrayDeque;

    monitor-enter v6

    .line 24
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 25
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_3

    .line 26
    invoke-virtual {v2}, Ly2/x;->Y()V

    :cond_3
    throw v0

    :catchall_2
    move-exception v0

    .line 27
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 28
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method
