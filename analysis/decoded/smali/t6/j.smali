.class public final Lt6/j;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt6/j$b;
    }
.end annotation


# direct methods
.method public static a(Lt6/i;Lt6/i;)Lt6/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt6/i<",
            "-TT;>;",
            "Lt6/i<",
            "-TT;>;)",
            "Lt6/i<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt6/j$b;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Lt6/i;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    .line 4
    invoke-direct {v0, p0, p1}, Lt6/j$b;-><init>(Ljava/util/List;Lt6/j$a;)V

    return-object v0
.end method
