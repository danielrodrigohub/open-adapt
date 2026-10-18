.class public final Lhc/l$h0;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Llc/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->A(Lnc/d;)Lhc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llc/a<",
        "Ljava/lang/Boolean;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lnc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "Loc/b;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lhc/l;


# direct methods
.method public constructor <init>(Lnc/d;Lhc/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "Loc/b;",
            "Lfd/o;",
            ">;",
            "Lhc/l;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lhc/l$h0;->h:Lnc/d;

    iput-object p2, p0, Lhc/l$h0;->i:Lhc/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    sget-object p1, Lfd/o;->a:Lfd/o;

    .line 1
    iget-object v0, p0, Lhc/l$h0;->i:Lhc/l;

    .line 2
    iget-object v0, v0, Lhc/l;->o:Lhc/k0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lhc/k0;->e()V

    .line 4
    :cond_0
    iget-object v0, p0, Lhc/l$h0;->i:Lhc/l;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lhc/l;->o:Lhc/k0;

    .line 6
    iget-object v0, p0, Lhc/l$h0;->h:Lnc/d;

    invoke-interface {v0, p1}, Llc/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhc/l$h0;->h:Lnc/d;

    invoke-interface {v0}, Llc/a;->g()V

    return-void
.end method

.method public final i(FF)V
    .locals 1

    iget-object v0, p0, Lhc/l$h0;->h:Lnc/d;

    invoke-interface {v0, p1, p2}, Llc/a;->i(FF)V

    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lhc/l$h0;->h:Lnc/d;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Llc/b;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lhc/l$h0;->i:Lhc/l;

    .line 2
    iget-object v0, v0, Lhc/l;->o:Lhc/k0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lhc/k0;->e()V

    .line 4
    :cond_0
    iget-object v0, p0, Lhc/l$h0;->i:Lhc/l;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lhc/l;->o:Lhc/k0;

    .line 6
    iget-object v0, p0, Lhc/l$h0;->h:Lnc/d;

    invoke-interface {v0, p1}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method
