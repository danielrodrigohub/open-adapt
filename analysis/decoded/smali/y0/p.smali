.class public abstract Ly0/p;
.super Ly0/h0;
.source "EntityDeletionOrUpdateAdapter.java"


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

.method public final f([Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    .line 2
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p1, v2

    .line 3
    invoke-virtual {p0, v0, v4}, Ly0/p;->e(Ld1/g;Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0}, Ld1/g;->p()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Ly0/h0;->d(Ld1/g;)V

    return v3

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 6
    throw p1
.end method
