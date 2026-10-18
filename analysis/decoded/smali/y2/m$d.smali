.class public final Ly2/m$d;
.super Ly2/m;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly2/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public final b(IIII)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
