.class public final Lmc/g0$a;
.super Ljava/lang/Object;
.source "UserAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmc/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgc/j0;)Lmc/g0;
    .locals 9

    .line 1
    new-instance v0, Lmc/g0;

    .line 2
    invoke-virtual {p1}, Lgc/j0;->y()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lgc/j0;->B()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Lgc/j0;->A()Lgc/j0$c;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v7, :cond_1

    if-ne v3, v8, :cond_0

    move v3, v4

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_1
    move v3, v8

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_0

    :cond_4
    move v3, v5

    .line 7
    :goto_0
    invoke-virtual {p1}, Lgc/j0;->z()Lgc/j0$b;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_9

    if-eq p1, v5, :cond_8

    if-eq p1, v6, :cond_7

    if-eq p1, v7, :cond_6

    if-eq p1, v8, :cond_a

    if-ne p1, v4, :cond_5

    const/4 v4, 0x6

    goto :goto_1

    .line 9
    :cond_5
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_6
    move v4, v8

    goto :goto_1

    :cond_7
    move v4, v7

    goto :goto_1

    :cond_8
    move v4, v6

    goto :goto_1

    :cond_9
    move v4, v5

    .line 10
    :cond_a
    :goto_1
    invoke-direct {v0, v1, v2, v3, v4}, Lmc/g0;-><init>(IIII)V

    return-object v0
.end method
