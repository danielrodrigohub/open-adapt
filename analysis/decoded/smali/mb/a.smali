.class public final Lmb/a;
.super Lrd/o;
.source "TelemetryRepository.kt"

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
.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkb/a;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lkb/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lmb/a;->h:Landroid/content/Context;

    iput-object p2, p0, Lmb/a;->i:Ljava/lang/String;

    iput-object p3, p0, Lmb/a;->j:Ljava/util/List;

    iput-object p4, p0, Lmb/a;->k:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lmb/b;->a:Lmb/b;

    sget-object v0, Lmb/b;->b:Ljava/lang/Object;

    iget-object v1, p0, Lmb/a;->h:Landroid/content/Context;

    iget-object v2, p0, Lmb/a;->i:Ljava/lang/String;

    iget-object v3, p0, Lmb/a;->j:Ljava/util/List;

    iget-object v6, p0, Lmb/a;->k:Ljava/lang/String;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v4, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->m:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase$a;

    invoke-virtual {v4, v1, v2}, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase$a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->r()Lib/a;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Lkb/a;

    .line 3
    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v3, [Lkb/a;

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkb/a;

    invoke-interface {v2, v3}, Lib/a;->e([Lkb/a;)V

    .line 5
    invoke-interface {v2}, Lib/a;->b()Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/16 v7, 0x64

    if-ne v5, v7, :cond_1

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 9
    check-cast v7, Lkb/a;

    const/4 v8, 0x1

    const v9, 0x37fff

    .line 10
    invoke-static {v7, v4, v8, v4, v9}, Lkb/a;->a(Lkb/a;ZZII)Lkb/a;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v3, v4, [Lkb/a;

    .line 11
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast v3, [Lkb/a;

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lkb/a;

    invoke-interface {v2, v3}, Lib/a;->f([Lkb/a;)V

    const-string v2, "tag"

    .line 13
    invoke-static {v6, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v2, Lk1/n$a;

    const-class v3, Lcom/nike/android/telemetry/internal/worker/TelemetryWorker;

    invoke-direct {v2, v3}, Lk1/n$a;-><init>(Ljava/lang/Class;)V

    .line 15
    new-instance v3, Lk1/c$a;

    invoke-direct {v3}, Lk1/c$a;-><init>()V

    .line 16
    sget-object v5, Lk1/m;->k:Lk1/m;

    .line 17
    iput-object v5, v3, Lk1/c$a;->b:Lk1/m;

    .line 18
    iput-boolean v4, v3, Lk1/c$a;->a:Z

    .line 19
    new-instance v4, Lk1/c;

    invoke-direct {v4, v3}, Lk1/c;-><init>(Lk1/c$a;)V

    .line 20
    iget-object v3, v2, Lk1/r$a;->b:Lt1/o;

    iput-object v4, v3, Lt1/o;->j:Lk1/c;

    .line 21
    invoke-virtual {v2}, Lk1/r$a;->a()Lk1/r;

    move-result-object v2

    check-cast v2, Lk1/n;

    .line 22
    invoke-static {v1}, Ll1/k;->a(Landroid/content/Context;)Ll1/k;

    move-result-object v5

    .line 23
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 25
    new-instance v1, Ll1/g;

    const/4 v7, 0x3

    const/4 v9, 0x0

    move-object v4, v1

    .line 26
    invoke-direct/range {v4 .. v9}, Ll1/g;-><init>(Ll1/k;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 27
    invoke-virtual {v1}, Ll1/g;->c()Lk1/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    monitor-exit v0

    .line 29
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0

    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0

    throw v1
.end method
