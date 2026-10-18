.class public final Lo7/o$a;
.super Ljava/lang/Object;
.source "NikeLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lo7/o;Lo7/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v2 .. v8}, Lo7/o;->log(Lo7/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
