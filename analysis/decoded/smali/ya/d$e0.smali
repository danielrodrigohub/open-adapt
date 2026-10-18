.class public final Lya/d$e0;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->R(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/v6;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0

    iput-object p1, p0, Lya/d$e0;->h:Lya/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lv9/v6;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/d$e0;->h:Lya/d;

    .line 4
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    sget-object v2, Lv9/t;->a:Lv9/t;

    .line 6
    sget-object v2, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v4, v3, [Leb/g;

    .line 7
    new-instance v5, Leb/b;

    invoke-direct {v5, p1}, Leb/b;-><init>(Leb/d;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Leb/f;->a([Leb/g;)V

    new-array v2, v6, [Lv9/p0;

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    check-cast v1, [Lv9/p0;

    .line 10
    array-length v2, v1

    :goto_0
    if-ge v6, v2, :cond_0

    aget-object v4, v1, v6

    .line 11
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/r;

    invoke-direct {v7, v4, p1}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v5, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Lya/d;->A:Lhc/l0;

    .line 13
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_7

    .line 14
    iget-object v1, p1, Lv9/v6;->o:Lv9/a;

    .line 15
    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    instance-of v1, p1, Lv9/m4;

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    .line 17
    :cond_1
    instance-of v1, p1, Lv9/z1;

    :goto_1
    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    .line 18
    :cond_2
    instance-of v1, p1, Lv9/u4;

    :goto_2
    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    .line 19
    :cond_3
    instance-of v1, p1, Lv9/d4;

    :goto_3
    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    .line 20
    :cond_4
    instance-of v1, p1, Lv9/x3;

    :goto_4
    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    .line 21
    :cond_5
    instance-of v1, p1, Lv9/u3;

    :goto_5
    if-eqz v1, :cond_6

    goto :goto_6

    .line 22
    :cond_6
    instance-of v3, p1, Lv9/w1;

    :goto_6
    if-eqz v3, :cond_7

    .line 23
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v2, Lya/t;

    invoke-direct {v2, v0, p1}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {v1, v2}, Lz9/a;->b(Lqd/a;)V

    .line 24
    :cond_7
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
