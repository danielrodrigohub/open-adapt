.class public final Lw9/x$a;
.super Ljava/lang/Object;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw9/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lea/p;",
        "Lea/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lea/m;

.field public final synthetic b:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/x;Lea/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea/m;",
            ")V"
        }
    .end annotation

    const-string v0, "prior"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lw9/x$a;->b:Lw9/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw9/x$a;->a:Lea/m;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 10

    .line 1
    check-cast p1, Lea/p;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Lea/z;

    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Lw9/x$a;->b:Lw9/x;

    .line 5
    iget-object v0, v0, Lw9/x;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Lv9/s;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lw9/x$a;->b:Lw9/x;

    .line 8
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    check-cast v4, Lv9/s;

    .line 9
    invoke-virtual {p1}, Lea/p;->b()Ljava/util/List;

    move-result-object v5

    .line 10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lea/m;

    .line 11
    iget-object v7, v7, Lea/m;->h:Ljava/lang/String;

    .line 12
    iget-object v8, p0, Lw9/x$a;->a:Lea/m;

    .line 13
    iget-object v8, v8, Lea/m;->h:Ljava/lang/String;

    .line 14
    invoke-static {v7, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    check-cast v6, Lea/m;

    if-eqz v6, :cond_2

    .line 15
    iget-object v5, p0, Lw9/x$a;->a:Lea/m;

    .line 16
    iget-object v5, v5, Lea/m;->o:Ljava/util/List;

    iget-object v7, v6, Lea/m;->o:Ljava/util/List;

    .line 17
    invoke-static {v5, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    new-instance v5, Lea/r;

    .line 19
    invoke-virtual {p1}, Lea/p;->a()Lv9/a;

    move-result-object v7

    .line 20
    invoke-direct {v5, v7, v6}, Lea/r;-><init>(Lv9/a;Lea/m;)V

    .line 21
    invoke-virtual {v4, v5}, Lv9/s;->d(Lea/l;)V

    goto :goto_2

    .line 22
    :cond_2
    new-instance v5, Lea/k;

    .line 23
    invoke-virtual {p1}, Lea/p;->a()Lv9/a;

    move-result-object v6

    .line 24
    iget-object v7, v2, Lw9/x;->l:Lea/m;

    .line 25
    iget-object v7, v7, Lea/m;->h:Ljava/lang/String;

    const-string v8, "Device with pairId: "

    const-string v9, " no longer exists"

    .line 26
    invoke-static {v8, v7, v9}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-direct {v5, v6, v7}, Lea/k;-><init>(Lv9/a;Ljava/lang/String;)V

    .line 28
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final b(Lv9/m;)V
    .locals 7

    .line 1
    check-cast p1, Lea/o;

    const-string v0, "error"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lw9/x$a;->b:Lw9/x;

    .line 4
    iget-object v0, v0, Lw9/x;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Lv9/s;

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    check-cast v3, Lv9/s;

    .line 7
    new-instance v4, Lea/k;

    .line 8
    iget-object v5, p1, Lea/o;->i:Lv9/a;

    .line 9
    iget-object v6, p1, Lea/o;->k:Ljava/lang/String;

    .line 10
    invoke-direct {v4, v5, v6}, Lea/k;-><init>(Lv9/a;Ljava/lang/String;)V

    .line 11
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
