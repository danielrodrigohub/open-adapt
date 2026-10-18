.class public final Ljd/g;
.super Lrd/o;
.source "CoroutineContext.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/p<",
        "Ljd/f;",
        "Ljd/f$a;",
        "Ljd/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Ljd/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljd/g;

    invoke-direct {v0}, Ljd/g;-><init>()V

    sput-object v0, Ljd/g;->h:Ljd/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljd/f;

    check-cast p2, Ljd/f$a;

    const-string v0, "acc"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p2}, Ljd/f$a;->getKey()Ljd/f$b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljd/f;->minusKey(Ljd/f$b;)Ljd/f;

    move-result-object p1

    .line 4
    sget-object v0, Ljd/h;->h:Ljd/h;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget v1, Ljd/e;->d:I

    sget-object v1, Ljd/e$a;->h:Ljd/e$a;

    invoke-interface {p1, v1}, Ljd/f;->get(Ljd/f$b;)Ljd/f$a;

    move-result-object v2

    check-cast v2, Ljd/e;

    if-nez v2, :cond_1

    .line 6
    new-instance v0, Ljd/c;

    invoke-direct {v0, p1, p2}, Ljd/c;-><init>(Ljd/f;Ljd/f$a;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v1}, Ljd/f;->minusKey(Ljd/f$b;)Ljd/f;

    move-result-object p1

    if-ne p1, v0, :cond_2

    .line 8
    new-instance p1, Ljd/c;

    invoke-direct {p1, p2, v2}, Ljd/c;-><init>(Ljd/f;Ljd/f$a;)V

    move-object p2, p1

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljd/c;

    new-instance v1, Ljd/c;

    invoke-direct {v1, p1, p2}, Ljd/c;-><init>(Ljd/f;Ljd/f$a;)V

    invoke-direct {v0, v1, v2}, Ljd/c;-><init>(Ljd/f;Ljd/f$a;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method
