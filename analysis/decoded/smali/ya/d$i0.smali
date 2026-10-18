.class public final Lya/d$i0;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->l0(Lv9/a;Lea/h$a;Lqd/l;Lqd/l;)V
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
.field public final synthetic h:Lya/d;

.field public final synthetic i:Lv9/a;

.field public final synthetic j:Lea/h$a;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;Lea/h$a;)V
    .locals 0

    iput-object p1, p0, Lya/d$i0;->h:Lya/d;

    iput-object p2, p0, Lya/d$i0;->i:Lv9/a;

    iput-object p3, p0, Lya/d$i0;->j:Lea/h$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lya/d$i0;->h:Lya/d;

    .line 2
    iget-object v1, v1, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lya/d$i0;->h:Lya/d;

    iget-object v2, p0, Lya/d$i0;->i:Lv9/a;

    iget-object v3, p0, Lya/d$i0;->j:Lea/h$a;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv9/p0;

    .line 5
    new-instance v5, Lv9/u4;

    .line 6
    iget-object v6, v1, Lya/d;->f:Ljava/lang/String;

    .line 7
    new-instance v7, Ly9/b;

    invoke-direct {v7, v2, v3}, Ly9/b;-><init>(Lv9/a;Lea/h$a;)V

    .line 8
    invoke-direct {v5, v6, v2, v7}, Lv9/u4;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 9
    invoke-interface {v4, v5}, Lv9/p0;->b(Lv9/m;)V

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
