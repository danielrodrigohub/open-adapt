.class public final Lw9/d$b;
.super Ljava/lang/Object;
.source "AdaptKitPairDevicesController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public static synthetic a(Lw9/d;Lw9/a;Lea/h;Lqd/l;Lqd/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 1
    sget-object p3, Lw9/d$b$a;->h:Lw9/d$b$a;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 2
    sget-object p4, Lw9/d$b$b;->h:Lw9/d$b$b;

    .line 3
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lw9/d;->C(Lw9/a;Lea/h;Lqd/l;Lqd/l;)V

    return-void
.end method
