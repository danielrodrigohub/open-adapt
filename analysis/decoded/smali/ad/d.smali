.class public final Lad/d;
.super Ljava/lang/Object;
.source "PersistenceProviderImpl.kt"

# interfaces
.implements Lyc/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lad/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lad/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lad/d;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lad/d;->b:Lad/e;

    return-void
.end method

.method public static final b(Lad/d;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ldd/a;->i:Ldd/a;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lad/d;->b:Lad/e;

    invoke-interface {p0}, Lad/e;->e()Lad/f;

    move-result-object p0

    invoke-static {p1, p0}, Lgd/n;->h0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final a()Lyc/a$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyc/a$d<",
            "Lzc/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbd/g;

    new-instance v1, Lad/d$a;

    invoke-direct {v1, p0}, Lad/d$a;-><init>(Lad/d;)V

    invoke-direct {v0, v1}, Lbd/g;-><init>(Lqd/l;)V

    return-object v0
.end method
