.class public final Lu6/q0$b;
.super Lu6/a0;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lu6/a0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient k:Lu6/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/x<",
            "TK;*>;"
        }
    .end annotation
.end field

.field public final transient l:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu6/x;Lu6/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/x<",
            "TK;*>;",
            "Lu6/v<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lu6/a0;-><init>()V

    .line 2
    iput-object p1, p0, Lu6/q0$b;->k:Lu6/x;

    .line 3
    iput-object p2, p0, Lu6/q0$b;->l:Lu6/v;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lu6/q0$b;->k:Lu6/x;

    invoke-virtual {v0, p1}, Lu6/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h()Lu6/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu6/v<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lu6/q0$b;->l:Lu6/v;

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lu6/q0$b;->p()Lu6/y0;

    move-result-object v0

    return-object v0
.end method

.method public final k([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lu6/q0$b;->l:Lu6/v;

    .line 2
    invoke-virtual {v0, p1, p2}, Lu6/v;->k([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()Lu6/y0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu6/y0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/q0$b;->l:Lu6/v;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lu6/v;->u(I)Lu6/a;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lu6/q0$b;->k:Lu6/x;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
