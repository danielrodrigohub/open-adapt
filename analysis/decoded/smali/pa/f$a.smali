.class public final Lpa/f$a;
.super Lrd/o;
.source "AdaptKitExecutor.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/f;->a(Ljava/util/List;Lta/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lta/a;

.field public final synthetic i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lta/a;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lpa/f$a;->h:Lta/a;

    iput-object p2, p0, Lpa/f$a;->i:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lpa/f$a;->h:Lta/a;

    .line 2
    iget-object v1, p0, Lpa/f$a;->i:Ljava/util/List;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Lea/m;

    .line 6
    iget-object v3, v3, Lea/m;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Lpa/f;->e(Lta/a;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lpa/f$a;->h:Lta/a;

    invoke-interface {v1, v0}, Lta/a;->b(Ljava/lang/Throwable;)V

    .line 9
    :goto_1
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
