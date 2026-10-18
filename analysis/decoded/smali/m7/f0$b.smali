.class public final Lm7/f0$b;
.super Lm7/f0;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/f0;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/Object;J)Lm7/y$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lm7/y$d<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lm7/m1;->o(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/y$d;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lm7/f0$b;->c(Ljava/lang/Object;J)Lm7/y$d;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lm7/y$d;->a()V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p3, p4}, Lm7/f0$b;->c(Ljava/lang/Object;J)Lm7/y$d;

    move-result-object v0

    .line 2
    invoke-static {p2, p3, p4}, Lm7/f0$b;->c(Ljava/lang/Object;J)Lm7/y$d;

    move-result-object p2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 5
    invoke-interface {v0}, Lm7/y$d;->f()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    .line 6
    invoke-interface {v0, v2}, Lm7/y$d;->b(I)Lm7/y$d;

    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    .line 8
    :cond_2
    invoke-static {p1, p3, p4, p2}, Lm7/m1;->y(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
