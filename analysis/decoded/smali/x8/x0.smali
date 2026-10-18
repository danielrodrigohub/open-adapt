.class public final Lx8/x0;
.super Lrd/o;
.source "ShoeControllerUiHelper.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lx8/w;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lx8/q0;


# direct methods
.method public constructor <init>(Lx8/q0;)V
    .locals 0

    iput-object p1, p0, Lx8/x0;->h:Lx8/q0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lx8/w;

    iget-object v1, p0, Lx8/x0;->h:Lx8/q0;

    .line 2
    iget-boolean v1, v1, Lx8/q0;->k:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 3
    :goto_0
    new-instance v2, Lx8/w0;

    iget-object v3, p0, Lx8/x0;->h:Lx8/q0;

    invoke-direct {v2, v3}, Lx8/w0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lx8/w;-><init>(ILqd/l;)V

    return-object v0
.end method
