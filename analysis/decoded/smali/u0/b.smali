.class public final Lu0/b;
.super Ljava/lang/Object;
.source "InitializerViewModelFactory.kt"

# interfaces
.implements Landroidx/lifecycle/l0$a;


# instance fields
.field public final a:[Lu0/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lu0/d<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lu0/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lu0/d<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "initializers"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu0/b;->a:[Lu0/d;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Class;Lu0/a;)Landroidx/lifecycle/j0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/j0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lu0/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu0/b;->a:[Lu0/d;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 3
    iget-object v6, v5, Lu0/d;->a:Ljava/lang/Class;

    .line 4
    invoke-static {v6, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5
    iget-object v4, v5, Lu0/d;->b:Lqd/l;

    .line 6
    invoke-interface {v4, p2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/lifecycle/j0;

    if-eqz v5, :cond_0

    check-cast v4, Landroidx/lifecycle/j0;

    goto :goto_1

    :cond_0
    move-object v4, v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    return-object v4

    .line 7
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "No initializer set for given class "

    .line 8
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
