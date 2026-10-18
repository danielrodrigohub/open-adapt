.class public final Lfa/e$a;
.super Ljava/lang/Object;
.source "EstimatedTimeRemaining.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/e;
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
.method public final a(FLfa/e;)Lfa/e;
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2
    invoke-virtual {p2}, Lfa/e;->m()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 3
    invoke-virtual {p2}, Lfa/e;->o()F

    move-result v2

    sub-float v2, p1, v2

    long-to-float v0, v0

    div-float v2, v0, v2

    const/16 v0, 0x64

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 4
    instance-of v1, p2, Lfa/e$e;

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    const/high16 v3, 0x3e800000    # 0.25f

    .line 5
    invoke-virtual {p2}, Lfa/e;->b()F

    move-result p2

    mul-float/2addr p2, v3

    add-float/2addr p2, v1

    move v3, p2

    :goto_0
    mul-float/2addr v0, v3

    float-to-int p2, v0

    .line 6
    div-int/lit16 p2, p2, 0x3e8

    .line 7
    sget v0, Lfa/e;->j:I

    .line 8
    rem-int v0, p2, v0

    div-int/lit8 v6, v0, 0x3c

    .line 9
    sget v0, Lfa/e;->i:I

    .line 10
    rem-int v7, p2, v0

    const/16 v0, 0xa

    if-le p2, v0, :cond_1

    .line 11
    new-instance p2, Lfa/e$b;

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lfa/e$b;-><init>(FFFJII)V

    goto :goto_1

    .line 12
    :cond_1
    new-instance p2, Lfa/e$d;

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lfa/e$d;-><init>(FFFJ)V

    :goto_1
    return-object p2
.end method
