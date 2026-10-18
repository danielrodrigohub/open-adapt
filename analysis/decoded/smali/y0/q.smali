.class public abstract Ly0/q;
.super Ly0/h0;
.source "EntityInsertionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ly0/h0;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 0

    invoke-direct {p0, p1}, Ly0/h0;-><init>(Ly0/d0;)V

    return-void
.end method


# virtual methods
.method public abstract e(Ld1/g;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld1/g;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0, p1}, Ly0/q;->e(Ld1/g;Ljava/lang/Object;)V

    .line 3
    invoke-interface {v0}, Ld1/g;->Z()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0, v0}, Ly0/h0;->d(Ld1/g;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 5
    throw p1
.end method
