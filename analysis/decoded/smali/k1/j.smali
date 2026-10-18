.class public final Lk1/j;
.super Lrd/o;
.source "ListenableFuture.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/lang/Throwable;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lk1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk1/k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk1/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk1/k<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lk1/j;->h:Lk1/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lk1/j;->h:Lk1/k;

    .line 3
    iget-object p1, p1, Lk1/k;->i:Lv1/c;

    .line 4
    invoke-virtual {p1}, Lv1/a;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lk1/j;->h:Lk1/k;

    .line 6
    iget-object p1, p1, Lk1/k;->i:Lv1/c;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lv1/a;->cancel(Z)Z

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lk1/j;->h:Lk1/k;

    .line 9
    iget-object v0, v0, Lk1/k;->i:Lv1/c;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lv1/c;->k(Ljava/lang/Throwable;)Z

    .line 11
    :goto_1
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
