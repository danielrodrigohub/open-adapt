.class public final Lr2/l$b;
.super Lr2/l;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr2/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lp2/a;)Z
    .locals 1

    sget-object v0, Lp2/a;->j:Lp2/a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lp2/a;->l:Lp2/a;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(ZLp2/a;Lp2/c;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
