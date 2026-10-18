.class public abstract Lg7/p$d;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg7/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public h:Lg7/p$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg7/p$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public i:Lg7/p$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg7/p$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public j:I

.field public final synthetic k:Lg7/p;


# direct methods
.method public constructor <init>(Lg7/p;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lg7/p$d;->k:Lg7/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lg7/p;->l:Lg7/p$e;

    iget-object v0, v0, Lg7/p$e;->k:Lg7/p$e;

    iput-object v0, p0, Lg7/p$d;->h:Lg7/p$e;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lg7/p$d;->i:Lg7/p$e;

    .line 4
    iget p1, p1, Lg7/p;->k:I

    iput p1, p0, Lg7/p$d;->j:I

    return-void
.end method


# virtual methods
.method public final a()Lg7/p$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg7/p$e<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg7/p$d;->h:Lg7/p$e;

    .line 2
    iget-object v1, p0, Lg7/p$d;->k:Lg7/p;

    iget-object v2, v1, Lg7/p;->l:Lg7/p$e;

    if-eq v0, v2, :cond_1

    .line 3
    iget v1, v1, Lg7/p;->k:I

    iget v2, p0, Lg7/p$d;->j:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, v0, Lg7/p$e;->k:Lg7/p$e;

    iput-object v1, p0, Lg7/p$d;->h:Lg7/p$e;

    .line 5
    iput-object v0, p0, Lg7/p$d;->i:Lg7/p$e;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lg7/p$d;->h:Lg7/p$e;

    iget-object v1, p0, Lg7/p$d;->k:Lg7/p;

    iget-object v1, v1, Lg7/p;->l:Lg7/p$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg7/p$d;->i:Lg7/p$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lg7/p$d;->k:Lg7/p;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lg7/p;->e(Lg7/p$e;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lg7/p$d;->i:Lg7/p$e;

    .line 4
    iget-object v0, p0, Lg7/p$d;->k:Lg7/p;

    iget v0, v0, Lg7/p;->k:I

    iput v0, p0, Lg7/p$d;->j:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
