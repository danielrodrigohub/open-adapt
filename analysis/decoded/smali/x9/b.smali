.class public abstract Lx9/b;
.super Ljava/lang/Object;
.source "ConditionalCheck.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ErrorCondition:",
        "Lv9/m;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lw9/a;
.end method

.method public abstract b()Lv9/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TErrorCondition;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "TErrorCondition;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end method

.method public final f()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lx9/b;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lx9/b;->e()Lqd/l;

    move-result-object v0

    invoke-virtual {p0}, Lx9/b;->b()Lv9/m;

    move-result-object v3

    invoke-interface {v0, v3}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lv9/t;->a:Lv9/t;

    .line 4
    sget-object v0, Lv9/t;->i:Leb/f;

    new-array v3, v1, [Leb/g;

    .line 5
    new-instance v4, Leb/b;

    new-instance v5, Lx9/b$a;

    invoke-direct {v5, p0}, Lx9/b$a;-><init>(Lx9/b;)V

    invoke-direct {v4, v5}, Leb/b;-><init>(Leb/d;)V

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Leb/f;->a([Leb/g;)V

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method
