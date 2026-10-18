.class public abstract Ljd/b;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ljd/f$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Ljd/f$a;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Ljd/f$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final safeCast:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Ljd/f$a;",
            "TE;>;"
        }
    .end annotation
.end field

.field private final topmostKey:Ljd/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/f$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljd/f$b;Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f$b<",
            "TB;>;",
            "Lqd/l<",
            "-",
            "Ljd/f$a;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ljd/b;->safeCast:Lqd/l;

    .line 3
    instance-of p2, p1, Ljd/b;

    if-eqz p2, :cond_0

    check-cast p1, Ljd/b;

    iget-object p1, p1, Ljd/b;->topmostKey:Ljd/f$b;

    :cond_0
    iput-object p1, p0, Ljd/b;->topmostKey:Ljd/f$b;

    return-void
.end method


# virtual methods
.method public final isSubKey$kotlin_stdlib(Ljd/f$b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f$b<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Ljd/b;->topmostKey:Ljd/f$b;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final tryCast$kotlin_stdlib(Ljd/f$a;)Ljd/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f$a;",
            ")TE;"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ljd/b;->safeCast:Lqd/l;

    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljd/f$a;

    return-object p1
.end method
