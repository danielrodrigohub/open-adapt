.class public final Lxd/l;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lxd/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lxd/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lxd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxd/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxd/d;Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxd/d<",
            "+TT;>;",
            "Lqd/l<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxd/l;->a:Lxd/d;

    iput-object p2, p0, Lxd/l;->b:Lqd/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lxd/l$a;

    invoke-direct {v0, p0}, Lxd/l$a;-><init>(Lxd/l;)V

    return-object v0
.end method
