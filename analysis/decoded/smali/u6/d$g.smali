.class public final Lu6/d$g;
.super Lu6/d$k;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu6/d<",
        "TK;TV;>.k;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lu6/d;Ljava/lang/Object;Ljava/util/List;Lu6/d$j;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lu6/d<",
            "TK;TV;>.j;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lu6/d$k;-><init>(Lu6/d;Ljava/lang/Object;Ljava/util/List;Lu6/d$j;)V

    return-void
.end method
