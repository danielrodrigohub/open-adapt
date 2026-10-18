.class public final Lu6/m$e;
.super Ljava/util/AbstractCollection;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lu6/m;


# direct methods
.method public constructor <init>(Lu6/m;)V
    .locals 0

    iput-object p1, p0, Lu6/m$e;->h:Lu6/m;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lu6/m$e;->h:Lu6/m;

    invoke-virtual {v0}, Lu6/m;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/m$e;->h:Lu6/m;

    .line 2
    invoke-virtual {v0}, Lu6/m;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lu6/l;

    invoke-direct {v1, v0}, Lu6/l;-><init>(Lu6/m;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lu6/m$e;->h:Lu6/m;

    invoke-virtual {v0}, Lu6/m;->size()I

    move-result v0

    return v0
.end method
