.class public final Lfd/p;
.super Ljava/lang/Object;
.source "Lazy.kt"

# interfaces
.implements Lfd/d;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfd/d<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public h:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lqd/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfd/p;->h:Lqd/a;

    .line 3
    sget-object p1, Lp4/h;->h:Lp4/h;

    iput-object p1, p0, Lfd/p;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfd/p;->i:Ljava/lang/Object;

    sget-object v1, Lp4/h;->h:Lp4/h;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfd/p;->h:Lqd/a;

    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lfd/p;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lfd/p;->h:Lqd/a;

    .line 4
    :cond_0
    iget-object v0, p0, Lfd/p;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lfd/p;->i:Ljava/lang/Object;

    sget-object v1, Lp4/h;->h:Lp4/h;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lfd/p;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "Lazy value not initialized yet."

    :goto_1
    return-object v0
.end method
