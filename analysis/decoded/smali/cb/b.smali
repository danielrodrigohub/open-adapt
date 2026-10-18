.class public final Lcb/b;
.super Lrd/o;
.source "ScanRepositoryImpl.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljc/a;


# direct methods
.method public constructor <init>(Ljc/a;)V
    .locals 0

    iput-object p1, p0, Lcb/b;->h:Ljc/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcb/b;->h:Ljc/a;

    const-string v1, "<this>"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lka/c;

    .line 4
    iget-object v3, v0, Ljc/a;->a:Ljava/lang/String;

    .line 5
    iget-object v4, v0, Ljc/a;->b:Ljava/lang/String;

    .line 6
    iget-object v5, v0, Ljc/a;->c:Ljava/lang/String;

    .line 7
    iget-object v6, v0, Ljc/a;->d:Ljava/lang/String;

    .line 8
    iget v7, v0, Ljc/a;->f:I

    move-object v2, v1

    .line 9
    invoke-direct/range {v2 .. v7}, Lka/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    sget-object v0, Lcb/c;->b:Lcb/c;

    .line 11
    sget-object v0, Lcb/c;->g:Ljava/util/List;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v2, Lcb/c;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lka/c;

    .line 13
    iget-object v4, v4, Lka/c;->k:Ljava/lang/String;

    iget-object v5, v1, Lka/c;->k:Ljava/lang/String;

    .line 14
    invoke-static {v4, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    check-cast v3, Lka/c;

    if-eqz v3, :cond_2

    .line 15
    iget v2, v1, Lka/c;->l:I

    iget v4, v3, Lka/c;->l:I

    if-le v2, v4, :cond_2

    .line 16
    sget-object v2, Lcb/c;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    sget-object v2, Lcb/c;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 18
    sget-object v2, Lcb/c;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_3
    :goto_1
    monitor-exit v0

    .line 20
    sget-object v0, Lcb/c;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22
    sget-object v0, Lcb/c;->b:Lcb/c;

    new-instance v1, Lka/d;

    const-string v2, "1999"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    const-string v4, "randomUUID()"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lka/d;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    invoke-virtual {v0, v1}, Lcb/c;->c(Lka/d;)V

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv9/p0;

    .line 25
    new-instance v3, Lka/b;

    invoke-direct {v3, v1}, Lka/b;-><init>(Lka/c;)V

    invoke-interface {v2, v3}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    goto :goto_2

    .line 26
    :cond_5
    :goto_3
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0

    throw v1
.end method
