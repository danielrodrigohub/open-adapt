.class public Lu6/w;
.super Lu6/z;
.source "ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lu6/z<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lu6/x;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/x<",
            "TK;",
            "Lu6/v<",
            "TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lu6/z;-><init>(Lu6/x;I)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;)Lu6/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lu6/v<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu6/z;->k:Lu6/x;

    invoke-virtual {v0, p1}, Lu6/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu6/v;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lu6/v;->i:Lu6/v$b;

    .line 3
    sget-object p1, Lu6/p0;->l:Lu6/p0;

    :cond_0
    return-object p1
.end method
