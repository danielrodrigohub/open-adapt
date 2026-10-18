.class public final Lo7/t$a;
.super Ljava/lang/Object;
.source "NikeLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V
    .locals 8

    sget-object v0, Lo7/x;->a:Lo7/x;

    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_0

    sget-object v1, Lo7/u;->h:Lo7/u;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 v1, p8, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    const/4 v5, 0x0

    and-int/lit8 v1, p8, 0x20

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, p6

    :goto_2
    and-int/lit8 v1, p8, 0x40

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, p7

    :goto_3
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lo7/x;->h(Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;Z)V

    return-void
.end method
