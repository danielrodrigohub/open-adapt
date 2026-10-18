.class public final Lw9/x$c1;
.super Lrd/o;
.source "InjectionKtx.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;-><init>(Lea/m;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lx9/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/x;)V
    .locals 0

    iput-object p1, p0, Lw9/x$c1;->h:Lw9/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx9/k;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw9/x$c1;->h:Lw9/x;

    .line 2
    iget-object v1, v0, Lw9/x;->l:Lea/m;

    .line 3
    invoke-virtual {v0}, Lw9/x;->z0()Lab/a;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lw9/x$c1;->h:Lw9/x;

    .line 5
    iget-object v3, v2, Lw9/x;->c:Lqd/l;

    .line 6
    new-instance v4, Lx9/k;

    .line 7
    new-instance v5, Lw9/x$m0;

    invoke-direct {v5, v2}, Lw9/x$m0;-><init>(Lw9/x;)V

    .line 8
    invoke-direct {v4, v0, v1, v5, v3}, Lx9/k;-><init>(Lab/a;Lea/m;Lqd/l;Lqd/l;)V

    return-object v4
.end method
