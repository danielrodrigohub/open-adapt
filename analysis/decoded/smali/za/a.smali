.class public final Lza/a;
.super Landroid/content/BroadcastReceiver;
.source "AdaptKitCoreRF.kt"

# interfaces
.implements Lhc/l0;


# instance fields
.field public final h:Landroid/content/Context;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lza/a$a;

.field public final m:Lw9/u1;

.field public final n:Lxa/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pairId"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationId"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "receiverActionToken"

    invoke-static {p5, p4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lza/a;->h:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lza/a;->i:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lza/a;->j:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lza/a;->k:Ljava/lang/String;

    .line 6
    new-instance p1, Lza/a$a;

    invoke-direct {p1}, Lza/a$a;-><init>()V

    iput-object p1, p0, Lza/a;->l:Lza/a$a;

    const-string p1, "l"

    const/4 p2, 0x1

    .line 7
    invoke-static {p3, p1, p2}, Lyd/o;->Y(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lw9/u1;->j:Lw9/u1;

    goto :goto_0

    :cond_0
    sget-object p1, Lw9/u1;->k:Lw9/u1;

    :goto_0
    iput-object p1, p0, Lza/a;->m:Lw9/u1;

    .line 8
    sget-object p1, Lxa/b;->a:Lxa/b;

    iput-object p1, p0, Lza/a;->n:Lxa/b;

    return-void
.end method


# virtual methods
.method public final A(Lnc/d;)Lhc/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "Loc/b;",
            "Lfd/o;",
            ">;)",
            "Lhc/a;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lza/a;->l:Lza/a$a;

    return-object p1
.end method

.method public final B(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final C(Lnc/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lia/a$b;->a:Lia/a$b;

    .line 2
    iget-object v1, p0, Lza/a;->n:Lxa/b;

    .line 3
    iget-object v2, p0, Lza/a;->h:Landroid/content/Context;

    .line 4
    iget-object v3, p0, Lza/a;->j:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lza/a;->k:Ljava/lang/String;

    .line 6
    new-instance v5, Lza/b;

    invoke-direct {v5, v0, p0}, Lza/b;-><init>(Lia/a;Lza/a;)V

    new-instance v6, Lza/a$e;

    invoke-direct {v6, p1}, Lza/a$e;-><init>(Lnc/a;)V

    invoke-virtual/range {v1 .. v6}, Lxa/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lqd/l;Lqd/l;)V

    return-void
.end method

.method public final D(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/q;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final E(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final F(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Lmc/b0;",
            "Lmc/a0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final G(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    const-string v0, "gatt"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final H(I)V
    .locals 0

    return-void
.end method

.method public final I(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Lmc/h;",
            "[B>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lic/l;

    invoke-virtual {p1, v0}, Lic/l;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final J(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final K(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final L(Lnc/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lia/a$d;->a:Lia/a$d;

    .line 2
    iget-object v1, p0, Lza/a;->n:Lxa/b;

    .line 3
    iget-object v2, p0, Lza/a;->h:Landroid/content/Context;

    .line 4
    iget-object v3, p0, Lza/a;->j:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lza/a;->k:Ljava/lang/String;

    .line 6
    new-instance v5, Lza/c;

    invoke-direct {v5, v0, p0, p1}, Lza/c;-><init>(Lia/a;Lza/a;Lnc/c;)V

    new-instance v6, Lza/a$g;

    invoke-direct {v6, p1}, Lza/a$g;-><init>(Lnc/c;)V

    invoke-virtual/range {v1 .. v6}, Lxa/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lqd/l;Lqd/l;)V

    return-void
.end method

.method public final M(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/util/List<",
            "Lmc/b0;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final N(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/g0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final O()V
    .locals 0

    return-void
.end method

.method public final P(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/String;",
            "Lhc/n0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Q(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final R([B)V
    .locals 0

    return-void
.end method

.method public final S(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final T(Lnc/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lia/a$c;->a:Lia/a$c;

    .line 2
    iget-object v1, p0, Lza/a;->n:Lxa/b;

    .line 3
    iget-object v2, p0, Lza/a;->h:Landroid/content/Context;

    .line 4
    iget-object v3, p0, Lza/a;->j:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lza/a;->k:Ljava/lang/String;

    .line 6
    new-instance v5, Lza/b;

    invoke-direct {v5, v0, p0}, Lza/b;-><init>(Lia/a;Lza/a;)V

    new-instance v6, Lza/a$d;

    invoke-direct {v6, p1}, Lza/a$d;-><init>(Lnc/a;)V

    invoke-virtual/range {v1 .. v6}, Lxa/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lqd/l;Lqd/l;)V

    return-void
.end method

.method public final U(Lnc/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Loc/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lia/a$f;->a:Lia/a$f;

    .line 2
    iget-object v1, p0, Lza/a;->n:Lxa/b;

    .line 3
    iget-object v2, p0, Lza/a;->h:Landroid/content/Context;

    .line 4
    iget-object v3, p0, Lza/a;->j:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lza/a;->k:Ljava/lang/String;

    .line 6
    new-instance v5, Lza/c;

    invoke-direct {v5, v0, p0, p1}, Lza/c;-><init>(Lia/a;Lza/a;Lnc/c;)V

    new-instance v6, Lza/a$f;

    invoke-direct {v6, p1}, Lza/a$f;-><init>(Lnc/c;)V

    invoke-virtual/range {v1 .. v6}, Lxa/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lqd/l;Lqd/l;)V

    return-void
.end method

.method public final V(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Lmc/o;",
            "Ljava/util/List<",
            "Lmc/n;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final W(ZLnc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lnc/a<",
            "Lmc/j0;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final X(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lrc/e;

    invoke-virtual {p1, v0}, Lrc/e;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a()Lmc/e;
    .locals 2

    new-instance v0, Lmc/e;

    const-string v1, "1.1.0"

    invoke-direct {v0, v1}, Lmc/e;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c([B)V
    .locals 0

    return-void
.end method

.method public final d(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final e(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lic/k;

    invoke-virtual {p1, v0}, Lic/k;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lic/j;

    .line 2
    invoke-virtual {p1}, Lic/j;->a()V

    return-void
.end method

.method public final g(Lnc/d;)Lhc/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;)",
            "Lhc/a;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lza/a;->l:Lza/a$a;

    return-object p1
.end method

.method public final h(Lnc/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/e0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lia/a$e;->a:Lia/a$e;

    .line 2
    iget-object v1, p0, Lza/a;->n:Lxa/b;

    .line 3
    iget-object v2, p0, Lza/a;->h:Landroid/content/Context;

    .line 4
    iget-object v3, p0, Lza/a;->j:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lza/a;->k:Ljava/lang/String;

    .line 6
    new-instance v5, Lza/b;

    invoke-direct {v5, v0, p0}, Lza/b;-><init>(Lia/a;Lza/a;)V

    new-instance v6, Lza/a$c;

    invoke-direct {v6, p1}, Lza/a$c;-><init>(Lnc/a;)V

    invoke-virtual/range {v1 .. v6}, Lxa/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lqd/l;Lqd/l;)V

    return-void
.end method

.method public final i(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final k(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final l(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/a0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final m(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final n()V
    .locals 0

    return-void
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final p(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final q(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/j;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final r(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Lmc/k;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final s(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final t(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final u(Lnc/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/Boolean;",
            "Loc/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final v(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final w(Lnc/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lia/a$a;->a:Lia/a$a;

    .line 2
    iget-object v1, p0, Lza/a;->n:Lxa/b;

    .line 3
    iget-object v2, p0, Lza/a;->h:Landroid/content/Context;

    .line 4
    iget-object v3, p0, Lza/a;->j:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lza/a;->k:Ljava/lang/String;

    .line 6
    new-instance v5, Lza/b;

    invoke-direct {v5, v0, p0}, Lza/b;-><init>(Lia/a;Lza/a;)V

    new-instance v6, Lza/a$b;

    invoke-direct {v6, p1}, Lza/a$b;-><init>(Lnc/a;)V

    invoke-virtual/range {v1 .. v6}, Lxa/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lqd/l;Lqd/l;)V

    return-void
.end method

.method public final x(IIILnc/b;)Lhc/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lnc/b<",
            "Ljava/lang/Boolean;",
            "[B>;)",
            "Lhc/a;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This functionality is not present for a remote connection.  Connect locally."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p4, Lfb/w;

    invoke-virtual {p4, p1}, Lfb/w;->k(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lza/a;->l:Lza/a$a;

    return-object p1
.end method

.method public final y(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final z(Lnc/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/util/List<",
            "Lmc/n;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "request"

    const-string v1, "This functionality is not present for a remote connection.  Connect locally."

    .line 1
    invoke-static {p1, v0, v1}, Lfa/m;->e(Lnc/a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 2
    check-cast p1, Lya/h0;

    invoke-virtual {p1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    return-void
.end method
