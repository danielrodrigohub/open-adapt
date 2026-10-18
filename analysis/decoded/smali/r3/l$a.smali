.class public final Lr3/l$a;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"

# interfaces
.implements Lr3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lr3/k$a;Ln3/s0;)Lr3/e;
    .locals 2

    .line 1
    iget-object p1, p2, Ln3/s0;->v:Lr3/d;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lr3/r;

    new-instance p2, Lr3/e$a;

    new-instance v0, Lr3/a0;

    invoke-direct {v0}, Lr3/a0;-><init>()V

    const/16 v1, 0x1771

    invoke-direct {p2, v0, v1}, Lr3/e$a;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, Lr3/r;-><init>(Lr3/e$a;)V

    return-object p1
.end method

.method public final e(Ln3/s0;)I
    .locals 0

    iget-object p1, p1, Ln3/s0;->v:Lr3/d;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(Landroid/os/Looper;Lo3/v0;)V
    .locals 0

    return-void
.end method
