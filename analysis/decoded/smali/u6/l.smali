.class public final Lu6/l;
.super Lu6/m$b;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu6/m<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">.b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic l:Lu6/m;


# direct methods
.method public constructor <init>(Lu6/m;)V
    .locals 0

    iput-object p1, p0, Lu6/l;->l:Lu6/m;

    invoke-direct {p0, p1}, Lu6/m$b;-><init>(Lu6/m;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/l;->l:Lu6/m;

    .line 2
    invoke-virtual {v0, p1}, Lu6/m;->o(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
