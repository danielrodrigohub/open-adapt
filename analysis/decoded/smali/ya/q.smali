.class public final Lya/q;
.super Lya/d$c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$c<",
        "Lmc/k;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:I

.field public final n:Lya/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/lang/String;

.field public final p:Lv9/a;

.field public final synthetic q:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "Lmc/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILya/d;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lya/d;",
            "Ljd/d<",
            "-",
            "Lmc/k;",
            ">;)V"
        }
    .end annotation

    iput-object p3, p0, Lya/q;->q:Ljd/d;

    .line 1
    invoke-direct {p0, p2}, Lya/d$c;-><init>(Lya/d;)V

    .line 2
    invoke-static {p1}, Lfa/m;->a(I)I

    move-result p3

    .line 3
    iput p3, p0, Lya/q;->m:I

    .line 4
    new-instance p3, Lya/p;

    invoke-direct {p3, p2, p0}, Lya/p;-><init>(Lya/d;Lya/q;)V

    .line 5
    iput-object p3, p0, Lya/q;->n:Lya/p;

    .line 6
    invoke-static {p1}, Lfa/m;->a(I)I

    move-result p1

    const-string p2, "SlotCheck["

    const-string p3, "]"

    .line 7
    invoke-static {p2, p1, p3}, La0/d;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iput-object p1, p0, Lya/q;->o:Ljava/lang/String;

    .line 9
    sget-object p1, Lv9/a;->i:Lv9/a$a;

    .line 10
    sget-object p1, Lv9/a;->l:Lv9/a;

    .line 11
    iput-object p1, p0, Lya/q;->p:Lv9/a;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lya/q;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/lang/Throwable;)Z
    .locals 10

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/q;->q:Ljd/d;

    .line 2
    new-instance v9, Lmc/k;

    const-string v2, "0.0.0"

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lmc/k;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v9}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lya/d$c;->l:Lya/d;

    invoke-virtual {v0, p1}, Lya/d;->h0(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/q;->p:Lv9/a;

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

    iget-object v0, p0, Lya/q;->n:Lya/p;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/q;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lmc/k;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/q;->q:Ljd/d;

    invoke-interface {v0, p1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
