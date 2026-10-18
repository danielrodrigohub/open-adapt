.class public final Lu6/k;
.super Lu6/m$b;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu6/m<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">.b<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic l:Lu6/m;


# direct methods
.method public constructor <init>(Lu6/m;)V
    .locals 0

    iput-object p1, p0, Lu6/k;->l:Lu6/m;

    invoke-direct {p0, p1}, Lu6/m$b;-><init>(Lu6/m;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lu6/m$d;

    iget-object v1, p0, Lu6/k;->l:Lu6/m;

    invoke-direct {v0, v1, p1}, Lu6/m$d;-><init>(Lu6/m;I)V

    return-object v0
.end method
