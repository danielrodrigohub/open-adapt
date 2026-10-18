.class public final Lya/m;
.super Lya/d$b;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$b<",
        "Lmc/a0;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final synthetic o:Lya/d;

.field public final synthetic p:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lla/c;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic q:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lya/d;Lqd/l;Lqd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/d;",
            "Lqd/l<",
            "-",
            "Lla/c;",
            "Lfd/o;",
            ">;",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lya/m;->o:Lya/d;

    iput-object p2, p0, Lya/m;->p:Lqd/l;

    iput-object p3, p0, Lya/m;->q:Lqd/a;

    .line 1
    invoke-direct {p0, p1}, Lya/d$b;-><init>(Lya/d;)V

    .line 2
    iget-object p1, p1, Lya/d;->f:Ljava/lang/String;

    const-string p2, "\tgetActiveSession"

    .line 3
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lya/m;->m:Ljava/lang/String;

    .line 5
    sget-object p1, Lv9/a;->i:Lv9/a$a;

    .line 6
    sget-object p1, Lv9/a;->l:Lv9/a;

    .line 7
    iput-object p1, p0, Lya/m;->n:Lv9/a;

    return-void
.end method


# virtual methods
.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/m;->n:Lv9/a;

    return-object v0
.end method

.method public final o()Lqd/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lya/m$a;

    iget-object v1, p0, Lya/m;->o:Lya/d;

    invoke-direct {v0, v1, p0}, Lya/m$a;-><init>(Lya/d;Lya/m;)V

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/m;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lya/m;->q:Lqd/a;

    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lmc/a0;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/m;->o:Lya/d;

    new-instance v1, Lya/n;

    iget-object v2, p0, Lya/m;->p:Lqd/l;

    iget-object v3, p0, Lya/m;->q:Lqd/a;

    invoke-direct {v1, p1, v0, v2, v3}, Lya/n;-><init>(Lmc/a0;Lya/d;Lqd/l;Lqd/a;)V

    .line 4
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v2, Lv9/s0;

    invoke-direct {v2, v1, v0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method
