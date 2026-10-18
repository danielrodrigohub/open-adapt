.class public final Lj5/i$d;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final k:Ln3/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Lj5/i$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:I

.field public final i:[I

.field public final j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln3/r0;->h:Ln3/r0;

    sput-object v0, Lj5/i$d;->k:Ln3/r0;

    return-void
.end method

.method public constructor <init>(I[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lj5/i$d;->h:I

    .line 3
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lj5/i$d;->i:[I

    .line 4
    iput p3, p0, Lj5/i$d;->j:I

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lj5/i$d;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/i$d;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lj5/i$d;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5/i$d;->i:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lj5/i$d;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lj5/i$d;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lj5/i$d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lj5/i$d;

    .line 3
    iget v2, p0, Lj5/i$d;->h:I

    iget v3, p1, Lj5/i$d;->h:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lj5/i$d;->i:[I

    iget-object v3, p1, Lj5/i$d;->i:[I

    .line 4
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lj5/i$d;->j:I

    iget p1, p1, Lj5/i$d;->j:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lj5/i$d;->h:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lj5/i$d;->i:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Lj5/i$d;->j:I

    add-int/2addr v1, v0

    return v1
.end method
