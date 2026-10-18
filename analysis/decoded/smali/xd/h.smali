.class public final Lxd/h;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lxd/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxd/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lqd/p;


# direct methods
.method public constructor <init>(Lqd/p;)V
    .locals 0

    iput-object p1, p0, Lxd/h;->a:Lqd/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxd/h;->a:Lqd/p;

    const-string v1, "block"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lxd/e;

    invoke-direct {v1}, Lxd/e;-><init>()V

    .line 4
    invoke-static {v0, v1, v1}, Landroidx/lifecycle/o;->j(Lqd/p;Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object v0

    .line 5
    iput-object v0, v1, Lxd/e;->j:Ljd/d;

    return-object v1
.end method
