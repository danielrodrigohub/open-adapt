.class public final Lu6/y;
.super Lu6/y0;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu6/y0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public h:Lu6/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lu6/t<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Lu6/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu6/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu6/y0;-><init>()V

    .line 2
    iget-object p1, p1, Lu6/z;->k:Lu6/x;

    invoke-virtual {p1}, Lu6/x;->i()Lu6/t;

    move-result-object p1

    invoke-virtual {p1}, Lu6/t;->p()Lu6/y0;

    move-result-object p1

    iput-object p1, p0, Lu6/y;->h:Lu6/y0;

    .line 3
    sget-object p1, Lu6/d0;->l:Lu6/d0;

    .line 4
    iput-object p1, p0, Lu6/y;->i:Lu6/y0;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lu6/y;->i:Lu6/y0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lu6/y;->h:Lu6/y0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/y;->i:Lu6/y0;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lu6/y;->h:Lu6/y0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu6/t;

    invoke-virtual {v0}, Lu6/t;->p()Lu6/y0;

    move-result-object v0

    iput-object v0, p0, Lu6/y;->i:Lu6/y0;

    .line 3
    :cond_0
    iget-object v0, p0, Lu6/y;->i:Lu6/y0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
