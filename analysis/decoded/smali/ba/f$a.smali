.class public final Lba/f$a;
.super Ljava/lang/Object;
.source "AdaptKitColorPreset.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/f;
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

.method public static a(II)Z
    .locals 2

    sget-object v0, Lba/f;->l:Lba/f$a;

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    if-gt v0, p0, :cond_0

    add-int/2addr p1, v1

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final b(III)Lba/f;
    .locals 6

    .line 1
    invoke-static {}, Lba/f;->values()[Lba/f;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    iget v5, v4, Lba/f;->h:I

    .line 4
    invoke-static {v5, p1}, Lba/f$a;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    iget v5, v4, Lba/f;->i:I

    .line 6
    invoke-static {v5, p2}, Lba/f$a;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    iget v5, v4, Lba/f;->j:I

    .line 8
    invoke-static {v5, p3}, Lba/f$a;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return-object v4
.end method
