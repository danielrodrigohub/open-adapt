.class public final Lya/o;
.super Lya/d$b;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$b<",
        "Ljava/util/List<",
        "+",
        "Lmc/b0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic p:Lya/d;

.field public final synthetic q:Lv9/a;

.field public final synthetic r:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/v6;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/x6;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;Lqd/l;Lqd/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/d;",
            "Lv9/a;",
            "Lqd/l<",
            "-",
            "Lv9/v6;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Lv9/x6;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lya/o;->p:Lya/d;

    iput-object p2, p0, Lya/o;->q:Lv9/a;

    iput-object p3, p0, Lya/o;->r:Lqd/l;

    iput-object p4, p0, Lya/o;->s:Lqd/l;

    .line 1
    invoke-direct {p0, p1}, Lya/d$b;-><init>(Lya/d;)V

    .line 2
    iget-object p3, p1, Lya/d;->f:Ljava/lang/String;

    const-string p4, "\tgetSessions"

    .line 3
    invoke-static {p3, p4}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    iput-object p3, p0, Lya/o;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/o;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/o$a;

    invoke-direct {p2, p1, p0}, Lya/o$a;-><init>(Lya/d;Lya/o;)V

    .line 7
    iput-object p2, p0, Lya/o;->o:Lya/o$a;

    return-void
.end method


# virtual methods
.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/o;->n:Lv9/a;

    return-object v0
.end method

.method public final o()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lya/o;->o:Lya/o$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/o;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/o;->r:Lqd/l;

    .line 2
    new-instance v1, Lv9/v6;

    .line 3
    iget-object v2, p0, Lya/o;->p:Lya/d;

    .line 4
    iget-object v2, v2, Lya/d;->f:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lya/o;->q:Lv9/a;

    .line 6
    invoke-direct {v1, v2, v3, p1}, Lv9/v6;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 7
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/o;->p:Lya/d;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lmc/b0;

    .line 7
    sget-object v3, Lla/c;->n:Lla/c$a;

    .line 8
    sget v4, Lfb/r;->a:I

    sget-object v4, Lfb/r$a;->a:Lfb/r$a;

    .line 9
    sget-object v5, Lv9/t;->a:Lv9/t;

    invoke-virtual {v5}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v5

    .line 10
    iget-object v6, v0, Lya/d;->f:Ljava/lang/String;

    .line 11
    new-instance v7, Lla/b;

    .line 12
    iget-object v8, v2, Lmc/b0;->a:Lmc/a0;

    .line 13
    iget v8, v8, Lmc/a0;->a:I

    .line 14
    invoke-direct {v7, v8}, Lla/b;-><init>(I)V

    .line 15
    invoke-virtual {v4, v5, v6, v7}, Lfb/r$a;->a(Landroid/content/Context;Ljava/lang/String;Lla/b;)I

    move-result v4

    .line 16
    invoke-virtual {v3, v2, v4}, Lla/c$a;->a(Lmc/b0;I)Lla/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lya/o;->s:Lqd/l;

    new-instance v0, Lv9/x6;

    iget-object v2, p0, Lya/o;->p:Lya/d;

    .line 18
    iget-object v2, v2, Lya/d;->f:Ljava/lang/String;

    .line 19
    iget-object v3, p0, Lya/o;->q:Lv9/a;

    invoke-direct {v0, v2, v3, v1}, Lv9/x6;-><init>(Ljava/lang/String;Lv9/a;Ljava/util/List;)V

    invoke-interface {p1, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
