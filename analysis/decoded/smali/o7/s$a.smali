.class public final Lo7/s$a;
.super Ljava/lang/Object;
.source "AdaptKitFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lo7/s;Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;
    .locals 0

    .line 1
    sget-object p3, Lo7/s$a$a;->h:Lo7/s$a$a;

    .line 2
    sget-object p4, Lo7/s$a$b;->h:Lo7/s$a$b;

    .line 3
    check-cast p0, Lo7/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo7/f;->a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p0

    return-object p0
.end method
