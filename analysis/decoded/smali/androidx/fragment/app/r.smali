.class public abstract Landroidx/fragment/app/r;
.super Ljava/lang/Object;
.source "FragmentContainer.java"

# interfaces
.implements Lf4/b;
.implements Li8/e;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lf4/d;)Lf4/a;
    .locals 2

    .line 1
    iget-object v0, p1, Lq3/g;->j:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v1}, Lm5/a;->a(Z)V

    .line 5
    invoke-virtual {p1}, Lq3/a;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/r;->g(Lf4/d;Ljava/nio/ByteBuffer;)Lf4/a;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public d(Li8/a;)V
    .locals 3

    .line 1
    sget-object v0, Li8/h;->b:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v1, Ly0/u;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p0, v2}, Ly0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract g(Lf4/d;Ljava/nio/ByteBuffer;)Lf4/a;
.end method

.method public abstract h(I)Landroid/view/View;
.end method

.method public abstract i()Z
.end method

.method public abstract j(Li8/a;)V
.end method
