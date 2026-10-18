.class public final Lt2/g;
.super Ll3/i;
.source "LruResourceCache.java"

# interfaces
.implements Lt2/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll3/i<",
        "Lp2/f;",
        "Lr2/w<",
        "*>;>;",
        "Lt2/h;"
    }
.end annotation


# instance fields
.field public d:Lt2/h$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll3/i;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lr2/w;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lr2/w;->a()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lp2/f;

    check-cast p2, Lr2/w;

    .line 2
    iget-object p1, p0, Lt2/g;->d:Lt2/h$a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lr2/m;

    .line 4
    iget-object p1, p1, Lr2/m;->e:Lr2/z;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lr2/z;->a(Lr2/w;Z)V

    :cond_0
    return-void
.end method
