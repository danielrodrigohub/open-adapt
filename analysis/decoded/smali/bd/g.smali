.class public final Lbd/g;
.super Ljava/lang/Object;
.source "TypedBuilderImpl.kt"

# interfaces
.implements Lyc/a$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Store::",
        "Lyc/a;",
        ">",
        "Ljava/lang/Object;",
        "Lyc/a$d<",
        "TStore;>;"
    }
.end annotation


# instance fields
.field public final a:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Ljava/util/List<",
            "+",
            "Lyc/a$b;",
            ">;TStore;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyc/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqd/l;)V
    .locals 1

    .line 1
    sget-object v0, Lgd/p;->h:Lgd/p;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lbd/g;->a:Lqd/l;

    .line 4
    invoke-static {v0}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lbd/g;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lyc/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TStore;"
        }
    .end annotation

    iget-object v0, p0, Lbd/g;->a:Lqd/l;

    iget-object v1, p0, Lbd/g;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/a;

    return-object v0
.end method

.method public final b(Lyc/a$b;)V
    .locals 1

    iget-object v0, p0, Lbd/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
