.class public final Lhc/l$v;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lnc/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->x(IIILnc/b;)Lhc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/b<",
        "Ljava/lang/Boolean;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lhc/l;

.field public final synthetic i:Lnc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/b<",
            "Ljava/lang/Boolean;",
            "[B>;"
        }
    .end annotation
.end field

.field public final synthetic j:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Lhc/k0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhc/l;Lnc/b;Lrd/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhc/l;",
            "Lnc/b<",
            "Ljava/lang/Boolean;",
            "[B>;",
            "Lrd/w<",
            "Lhc/k0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhc/l$v;->h:Lhc/l;

    iput-object p2, p0, Lhc/l$v;->i:Lnc/b;

    iput-object p3, p0, Lhc/l$v;->j:Lrd/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lfd/o;

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string p1, "ReceiveFile onComplete() "

    .line 3
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lhc/l$v;->h:Lhc/l;

    .line 5
    iget-object v1, v1, Lhc/l;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " agent Present =  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhc/l$v;->j:Lrd/w;

    iget-object v1, v1, Lrd/w;->h:Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lhc/l$v;->j:Lrd/w;

    iget-object p1, p1, Lrd/w;->h:Ljava/lang/Object;

    check-cast p1, Lhc/k0;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lhc/l$v;->h:Lhc/l;

    iget-object v2, p0, Lhc/l$v;->i:Lnc/b;

    .line 8
    iget-object v3, p1, Lhc/k0;->A:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 9
    invoke-virtual {p1, v7}, Lhc/k0;->c(Z)V

    .line 10
    invoke-virtual {p1}, Lhc/k0;->e()V

    .line 11
    iput-object v0, v1, Lhc/l;->o:Lhc/k0;

    const-string p1, "payload"

    .line 12
    invoke-static {v3, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Llc/a;->b(Ljava/lang/Object;)V

    .line 13
    sget-object v0, Lfd/o;->a:Lfd/o;

    :cond_1
    if-nez v0, :cond_2

    .line 14
    iget-object p1, p0, Lhc/l$v;->i:Lnc/b;

    .line 15
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "No Transfer Existed"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final g()V
    .locals 7

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v1, "ReceiveFile onStart() "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lhc/l$v;->h:Lhc/l;

    .line 4
    iget-object v2, v2, Lhc/l;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lhc/l$v;->i:Lnc/b;

    invoke-interface {v0}, Llc/a;->g()V

    return-void
.end method

.method public final i(FF)V
    .locals 7

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v1, "ReceiveFile onProgress() "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lhc/l$v;->h:Lhc/l;

    .line 4
    iget-object v2, v2, Lhc/l;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " currentValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " totalValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lhc/l$v;->i:Lnc/b;

    invoke-interface {v0, p1, p2}, Llc/a;->i(FF)V

    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v1, "ReceiveFile response() "

    .line 3
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lhc/l$v;->h:Lhc/l;

    .line 5
    iget-object v2, v2, Lhc/l;->h:Ljava/lang/String;

    const-string v3, "  THIS SHOULD NOT BE INVOKED"

    .line 6
    invoke-static {v1, v2, v3}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    .line 7
    invoke-static/range {v0 .. v6}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lhc/l$v;->i:Lnc/b;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Llc/b;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const-string v0, "ReceiveFile error() "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lhc/l$v;->h:Lhc/l;

    .line 4
    iget-object v2, v2, Lhc/l;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lhc/l$v;->j:Lrd/w;

    iget-object v0, v0, Lrd/w;->h:Ljava/lang/Object;

    check-cast v0, Lhc/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhc/k0;->e()V

    .line 7
    :cond_0
    iget-object v0, p0, Lhc/l$v;->h:Lhc/l;

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lhc/l;->o:Lhc/k0;

    .line 9
    iget-object v0, p0, Lhc/l$v;->i:Lnc/b;

    invoke-interface {v0, p1}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method
