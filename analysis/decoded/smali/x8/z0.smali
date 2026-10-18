.class public final Lx8/z0;
.super Lrd/o;
.source "ShoeControllerUiHelper.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lx8/q0;


# direct methods
.method public constructor <init>(Lx8/q0;)V
    .locals 0

    iput-object p1, p0, Lx8/z0;->h:Lx8/q0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lx8/z0;->h:Lx8/q0;

    .line 2
    iget-object v0, v0, Lx8/q0;->h:Landroid/content/Context;

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
