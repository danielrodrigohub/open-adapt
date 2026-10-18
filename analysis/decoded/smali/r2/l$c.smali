.class public final Lr2/l$c;
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

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lp2/a;)Z
    .locals 1

    sget-object v0, Lp2/a;->i:Lp2/a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(ZLp2/a;Lp2/c;)Z
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lp2/a;->j:Lp2/a;

    if-eq p2, p1, :cond_1

    :cond_0
    sget-object p1, Lp2/a;->h:Lp2/a;

    if-ne p2, p1, :cond_2

    :cond_1
    sget-object p1, Lp2/c;->i:Lp2/c;

    if-ne p3, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
