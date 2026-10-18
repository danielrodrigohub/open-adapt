.class public final Lya/n;
.super Lya/d$c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$c<",
        "Lmc/b0;",
        "Lmc/a0;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Lmc/a0;

.field public final n:Ljava/lang/String;

.field public final o:Lv9/a;

.field public final synthetic p:Lmc/a0;

.field public final synthetic q:Lya/d;

.field public final synthetic r:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lla/c;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmc/a0;Lya/d;Lqd/l;Lqd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmc/a0;",
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

    iput-object p1, p0, Lya/n;->p:Lmc/a0;

    iput-object p2, p0, Lya/n;->q:Lya/d;

    iput-object p3, p0, Lya/n;->r:Lqd/l;

    iput-object p4, p0, Lya/n;->s:Lqd/a;

    .line 1
    invoke-direct {p0, p2}, Lya/d$c;-><init>(Lya/d;)V

    .line 2
    iput-object p1, p0, Lya/n;->m:Lmc/a0;

    .line 3
    iget-object p1, p2, Lya/d;->f:Ljava/lang/String;

    const-string p2, "\tgetSessionInformation"

    .line 4
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lya/n;->n:Ljava/lang/String;

    .line 6
    sget-object p1, Lv9/a;->i:Lv9/a$a;

    .line 7
    sget-object p1, Lv9/a;->l:Lv9/a;

    .line 8
    iput-object p1, p0, Lya/n;->o:Lv9/a;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lya/n;->m:Lmc/a0;

    return-object v0
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/n;->o:Lv9/a;

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

    new-instance v0, Lya/n$a;

    iget-object v1, p0, Lya/n;->q:Lya/d;

    invoke-direct {v0, v1, p0}, Lya/n$a;-><init>(Lya/d;Lya/n;)V

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/n;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lya/n;->s:Lqd/a;

    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lmc/b0;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/n;->r:Lqd/l;

    .line 4
    sget-object v1, Lla/c;->n:Lla/c$a;

    .line 5
    sget v2, Lfb/r;->a:I

    sget-object v2, Lfb/r$a;->a:Lfb/r$a;

    .line 6
    sget-object v3, Lv9/t;->a:Lv9/t;

    invoke-virtual {v3}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lya/n;->q:Lya/d;

    .line 8
    iget-object v4, v4, Lya/d;->f:Ljava/lang/String;

    .line 9
    iget-object v5, p0, Lya/n;->p:Lmc/a0;

    const-string v6, "sessionId"

    .line 10
    invoke-static {v5, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v6, Lla/b;

    .line 12
    iget v5, v5, Lmc/a0;->a:I

    .line 13
    invoke-direct {v6, v5}, Lla/b;-><init>(I)V

    .line 14
    invoke-virtual {v2, v3, v4, v6}, Lfb/r$a;->a(Landroid/content/Context;Ljava/lang/String;Lla/b;)I

    move-result v2

    .line 15
    invoke-virtual {v1, p1, v2}, Lla/c$a;->a(Lmc/b0;I)Lla/c;

    move-result-object p1

    .line 16
    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
