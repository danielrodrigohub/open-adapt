.class public final Lr3/c;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManagerProvider.java"

# interfaces
.implements Lr3/m;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Ln3/y0$e;

.field public c:Lr3/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr3/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ln3/y0;)Lr3/l;
    .locals 2

    .line 1
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Ln3/y0;->i:Ln3/y0$h;

    iget-object p1, p1, Ln3/y0$g;->c:Ln3/y0$e;

    if-eqz p1, :cond_2

    .line 4
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lr3/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lr3/c;->b:Ln3/y0$e;

    invoke-static {p1, v1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iput-object p1, p0, Lr3/c;->b:Ln3/y0$e;

    .line 8
    invoke-virtual {p0, p1}, Lr3/c;->b(Ln3/y0$e;)Lr3/l;

    move-result-object p1

    check-cast p1, Lr3/b;

    iput-object p1, p0, Lr3/c;->c:Lr3/b;

    .line 9
    :cond_1
    iget-object p1, p0, Lr3/c;->c:Lr3/b;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_2
    :goto_0
    sget-object p1, Lr3/l;->a:Lr3/l$a;

    return-object p1
.end method

.method public final b(Ln3/y0$e;)Lr3/l;
    .locals 16

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ll5/r$a;

    invoke-direct {v1}, Ll5/r$a;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Ll5/r$a;->b:Ljava/lang/String;

    .line 3
    new-instance v6, Lr3/w;

    .line 4
    iget-object v3, v0, Ln3/y0$e;->b:Landroid/net/Uri;

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-boolean v4, v0, Ln3/y0$e;->f:Z

    invoke-direct {v6, v3, v4, v1}, Lr3/w;-><init>(Ljava/lang/String;ZLl5/j$a;)V

    .line 5
    iget-object v1, v0, Ln3/y0$e;->c:Lu6/x;

    invoke-virtual {v1}, Lu6/x;->e()Lu6/a0;

    move-result-object v1

    invoke-virtual {v1}, Lu6/t;->p()Lu6/y0;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v5, v6, Lr3/w;->d:Ljava/util/HashMap;

    monitor-enter v5

    .line 10
    :try_start_0
    iget-object v7, v6, Lr3/w;->d:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 12
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 13
    sget-object v1, Ln3/i;->d:Ljava/util/UUID;

    .line 14
    new-instance v11, Ll5/u;

    invoke-direct {v11}, Ll5/u;-><init>()V

    const-wide/32 v12, 0x493e0

    .line 15
    iget-object v4, v0, Ln3/y0$e;->a:Ljava/util/UUID;

    sget-object v5, La1/d;->a:La1/d;

    .line 16
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-boolean v8, v0, Ln3/y0$e;->d:Z

    .line 18
    iget-boolean v10, v0, Ln3/y0$e;->e:Z

    .line 19
    iget-object v1, v0, Ln3/y0$e;->g:Lu6/v;

    .line 20
    invoke-static {v1}, Lw6/a;->d(Ljava/util/Collection;)[I

    move-result-object v1

    .line 21
    array-length v3, v1

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v3, :cond_4

    aget v14, v1, v9

    const/4 v2, 0x2

    const/4 v15, 0x1

    if-eq v14, v2, :cond_3

    if-ne v14, v15, :cond_2

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    .line 22
    :cond_3
    :goto_3
    invoke-static {v15}, Lm5/a;->a(Z)V

    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    goto :goto_2

    .line 23
    :cond_4
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [I

    .line 24
    new-instance v1, Lr3/b;

    const/4 v14, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Lr3/b;-><init>(Ljava/util/UUID;Lr3/s$c;Lr3/y;Ljava/util/HashMap;Z[IZLl5/c0;JLr3/b$a;)V

    .line 25
    iget-object v0, v0, Ln3/y0$e;->h:[B

    if-eqz v0, :cond_5

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 26
    :goto_4
    iget-object v0, v1, Lr3/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lm5/a;->e(Z)V

    const/4 v0, 0x0

    .line 27
    iput v0, v1, Lr3/b;->v:I

    .line 28
    iput-object v2, v1, Lr3/b;->w:[B

    return-object v1
.end method
