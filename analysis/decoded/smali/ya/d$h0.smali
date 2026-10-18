.class public final Lya/d$h0;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->O(Lv9/a;Lea/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/lang/Throwable;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;

.field public final synthetic i:Lv9/a;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;)V
    .locals 0

    iput-object p1, p0, Lya/d$h0;->h:Lya/d;

    iput-object p2, p0, Lya/d$h0;->i:Lv9/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/d$h0;->h:Lya/d;

    .line 4
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v2, Lv9/u4;

    .line 6
    iget-object v3, p0, Lya/d$h0;->h:Lya/d;

    .line 7
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Lya/d$h0;->i:Lv9/a;

    .line 9
    invoke-direct {v2, v3, v4, p1}, Lv9/u4;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 10
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 11
    sget-object p1, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v3, v3, [Leb/g;

    .line 12
    new-instance v4, Leb/b;

    invoke-direct {v4, v2}, Leb/b;-><init>(Leb/d;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v3}, Leb/f;->a([Leb/g;)V

    new-array p1, v5, [Lv9/p0;

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p1, [Lv9/p0;

    .line 15
    array-length v1, p1

    :goto_0
    if-ge v5, v1, :cond_0

    aget-object v3, p1, v5

    .line 16
    sget-object v4, Lz9/a;->j:Lz9/a;

    new-instance v6, Lya/r;

    invoke-direct {v6, v3, v2}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v4, v6}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 18
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_2

    .line 19
    iget-object p1, v2, Lv9/u4;->o:Lv9/a;

    .line 20
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    instance-of p1, v2, Lv9/m4;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    instance-of p1, v2, Lv9/z1;

    .line 23
    :goto_1
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, v0, v2}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    .line 24
    :cond_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
