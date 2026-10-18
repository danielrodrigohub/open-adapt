.class public final Lea/i;
.super Ljava/lang/Object;
.source "AdaptKitLacingPosition.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Leb/d;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lea/i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lea/h$c;

.field public final i:Lea/h$a;

.field public final j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lea/i$a;

    invoke-direct {v0}, Lea/i$a;-><init>()V

    sput-object v0, Lea/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lea/h$a;I)V
    .locals 6

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-nez p2, :cond_0

    .line 9
    iget v2, p1, Lea/h$a;->j:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    .line 10
    invoke-static {v2}, Lf1/b;->l(F)I

    move-result v2

    goto :goto_0

    .line 11
    :cond_0
    iget v2, p1, Lea/h$a;->j:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    .line 12
    invoke-static {v2}, Lf1/b;->l(F)I

    move-result v2

    .line 13
    :goto_0
    new-instance v3, Lea/h$c;

    if-ge v2, v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v4, p2

    mul-float/2addr v0, v4

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_2

    div-float/2addr v5, v4

    mul-float/2addr v5, v1

    .line 14
    invoke-static {v5}, Lf1/b;->l(F)I

    move-result v2

    .line 15
    :cond_2
    :goto_1
    invoke-direct {v3, v2}, Lea/h$c;-><init>(I)V

    .line 16
    invoke-direct {p0, v3, p1, p2}, Lea/i;-><init>(Lea/h$c;Lea/h$a;I)V

    return-void
.end method

.method public constructor <init>(Lea/h$c;I)V
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 5
    iget v1, p1, Lea/h$c;->j:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v2, p2

    mul-float/2addr v1, v2

    .line 6
    invoke-static {v1}, Lf1/b;->l(F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 7
    :goto_0
    new-instance v2, Lea/h$a;

    const/16 v3, 0x64

    if-le v1, v3, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-direct {v2, v0}, Lea/h$a;-><init>(I)V

    .line 8
    invoke-direct {p0, p1, v2, p2}, Lea/i;-><init>(Lea/h$c;Lea/h$a;I)V

    return-void
.end method

.method public constructor <init>(Lea/h$c;Lea/h$a;I)V
    .locals 1

    const-string v0, "relative"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "absolute"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lea/i;->h:Lea/h$c;

    .line 3
    iput-object p2, p0, Lea/i;->i:Lea/h$a;

    .line 4
    iput p3, p0, Lea/i;->j:I

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lea/i;->h:Lea/h$c;

    .line 2
    iget v0, v0, Lea/h$c;->j:I

    .line 3
    iget-object v1, p0, Lea/i;->i:Lea/h$a;

    .line 4
    iget v1, v1, Lea/h$a;->j:I

    .line 5
    iget v2, p0, Lea/i;->j:I

    const-string v3, "lacePosition: [relative: "

    const-string v4, ", absolute: "

    const-string v5, ", maxTightness: "

    .line 6
    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    .line 7
    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lea/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lea/i;

    iget-object v1, p0, Lea/i;->h:Lea/h$c;

    iget-object v3, p1, Lea/i;->h:Lea/h$c;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lea/i;->i:Lea/h$a;

    iget-object v3, p1, Lea/i;->i:Lea/h$a;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lea/i;->j:I

    iget p1, p1, Lea/i;->j:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lea/i;->h:Lea/h$c;

    invoke-virtual {v0}, Lea/h$c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lea/i;->i:Lea/h$a;

    invoke-virtual {v1}, Lea/h$a;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lea/i;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgd/q;->h:Lgd/q;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lea/i;->h:Lea/h$c;

    iget-object v1, p0, Lea/i;->i:Lea/h$a;

    iget v2, p0, Lea/i;->j:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdaptKitLacingPosition(relative="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", absolute="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", maxTightness="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 1
    invoke-static {v3, v2, v0}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lea/i;->h:Lea/h$c;

    invoke-virtual {v0, p1, p2}, Lea/h$c;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lea/i;->i:Lea/h$a;

    invoke-virtual {v0, p1, p2}, Lea/h$a;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lea/i;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
