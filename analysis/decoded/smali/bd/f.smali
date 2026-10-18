.class public final Lbd/f;
.super Ljava/lang/Object;
.source "SecureDataStoreImpl.kt"

# interfaces
.implements Lzc/c;


# instance fields
.field public final a:Lfd/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbd/a;Lcd/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbd/a;",
            "Lcd/a;",
            "Ljava/util/List<",
            "+",
            "Lyc/a$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbd/f$a;

    invoke-direct {v0, p2, p1, p3, p4}, Lbd/f$a;-><init>(Lbd/a;Landroid/content/Context;Lcd/a;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lbd/f;->a:Lfd/h;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lkotlinx/serialization/SerializationStrategy;Ljd/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbd/f;->a:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzc/a;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lzc/b;->c(Ljava/lang/Object;Lkotlinx/serialization/SerializationStrategy;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lkd/a;->h:Lkd/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final e(Lkotlinx/serialization/DeserializationStrategy;Ljd/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;",
            "Ljd/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbd/f;->a:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzc/a;

    .line 2
    invoke-interface {v0, p1, p2}, Lzc/b;->e(Lkotlinx/serialization/DeserializationStrategy;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
