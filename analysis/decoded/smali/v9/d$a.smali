.class public final Lv9/d$a;
.super Ljava/lang/Object;
.source "AdaptKitClientLog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_0

    const-string p1, "AdaptKit"

    :cond_0
    check-cast p0, Lfb/e;

    invoke-virtual {p0, p1, p2}, Lfb/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V
    .locals 0

    check-cast p0, Lfb/e;

    invoke-virtual {p0, p1, p2}, Lfb/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
