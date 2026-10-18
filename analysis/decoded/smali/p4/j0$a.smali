.class public final Lp4/j0$a;
.super Lp4/p;
.source "ProgressiveMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp4/j0;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ln3/b2;)V
    .locals 0

    invoke-direct {p0, p1}, Lp4/p;-><init>(Ln3/b2;)V

    return-void
.end method


# virtual methods
.method public final i(ILn3/b2$b;Z)Ln3/b2$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lp4/p;->i(ILn3/b2$b;Z)Ln3/b2$b;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p2, Ln3/b2$b;->m:Z

    return-object p2
.end method

.method public final q(ILn3/b2$d;J)Ln3/b2$d;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lp4/p;->q(ILn3/b2$d;J)Ln3/b2$d;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p2, Ln3/b2$d;->s:Z

    return-object p2
.end method
