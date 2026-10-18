.class public final Lg7/p$c;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg7/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lg7/p;


# direct methods
.method public constructor <init>(Lg7/p;)V
    .locals 0

    iput-object p1, p0, Lg7/p$c;->h:Lg7/p;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lg7/p$c;->h:Lg7/p;

    invoke-virtual {v0}, Lg7/p;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg7/p$c;->h:Lg7/p;

    invoke-virtual {v0, p1}, Lg7/p;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lg7/p$c$a;

    invoke-direct {v0, p0}, Lg7/p$c$a;-><init>(Lg7/p$c;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg7/p$c;->h:Lg7/p;

    .line 2
    invoke-virtual {v0, p1}, Lg7/p;->c(Ljava/lang/Object;)Lg7/p$e;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1, v1}, Lg7/p;->e(Lg7/p$e;Z)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lg7/p$c;->h:Lg7/p;

    iget v0, v0, Lg7/p;->j:I

    return v0
.end method
