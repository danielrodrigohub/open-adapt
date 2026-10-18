.class public final Ld6/a;
.super Ljava/lang/Object;
.source "ElevationOverlayProvider.java"


# static fields
.field public static final f:I


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4014666666666667L    # 5.1000000000000005

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Ld6/a;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget v0, Lcom/google/android/material/R$attr;->elevationOverlayEnabled:I

    .line 2
    invoke-static {p1, v0}, Lj6/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 4
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    sget v2, Lcom/google/android/material/R$attr;->elevationOverlayColor:I

    .line 6
    invoke-static {p1, v2, v1}, La6/a;->a(Landroid/content/Context;II)I

    move-result v2

    sget v3, Lcom/google/android/material/R$attr;->elevationOverlayAccentColor:I

    .line 7
    invoke-static {p1, v3, v1}, La6/a;->a(Landroid/content/Context;II)I

    move-result v3

    sget v4, Lcom/google/android/material/R$attr;->colorSurface:I

    .line 8
    invoke-static {p1, v4, v1}, La6/a;->a(Landroid/content/Context;II)I

    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Ld6/a;->a:Z

    .line 12
    iput v2, p0, Ld6/a;->b:I

    .line 13
    iput v3, p0, Ld6/a;->c:I

    .line 14
    iput v1, p0, Ld6/a;->d:I

    .line 15
    iput p1, p0, Ld6/a;->e:F

    return-void
.end method
