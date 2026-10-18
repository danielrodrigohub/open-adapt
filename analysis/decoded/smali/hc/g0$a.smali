.class public final Lhc/g0$a;
.super Ljava/lang/Object;
.source "CoreRFModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p2, p5, 0x8

    const/4 p5, 0x0

    if-eqz p2, :cond_1

    move-object p4, p5

    :cond_1
    invoke-interface {p0, p1, p5, p3, p4}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p5, 0x2

    const/4 p6, 0x0

    if-eqz p3, :cond_0

    move-object p2, p6

    :cond_0
    const/4 p3, 0x0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, p6

    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method
