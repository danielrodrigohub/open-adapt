.class public final Ld9/a;
.super Ljava/lang/Object;
.source "ModeSnapshot.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ld9/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lcom/nike/adapt/adk/Shoe;

.field public final i:Lba/f;

.field public final j:I

.field public final k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld9/a$a;

    invoke-direct {v0}, Ld9/a$a;-><init>()V

    sput-object v0, Ld9/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/nike/adapt/adk/Shoe;Lba/f;)V
    .locals 1

    const/16 v0, 0x63

    .line 3
    invoke-direct {p0, p1, p2, v0, v0}, Ld9/a;-><init>(Lcom/nike/adapt/adk/Shoe;Lba/f;II)V

    return-void
.end method

.method public constructor <init>(Lcom/nike/adapt/adk/Shoe;Lba/f;II)V
    .locals 1

    const-string v0, "shoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "color"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld9/a;->h:Lcom/nike/adapt/adk/Shoe;

    iput-object p2, p0, Ld9/a;->i:Lba/f;

    iput p3, p0, Ld9/a;->j:I

    iput p4, p0, Ld9/a;->k:I

    return-void
.end method

.method public static a(Ld9/a;Lba/f;III)Ld9/a;
    .locals 2

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld9/a;->h:Lcom/nike/adapt/adk/Shoe;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_1

    iget-object p1, p0, Ld9/a;->i:Lba/f;

    :cond_1
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_2

    iget p2, p0, Ld9/a;->j:I

    :cond_2
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3

    iget p3, p0, Ld9/a;->k:I

    :cond_3
    const-string p0, "shoe"

    invoke-static {v0, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "color"

    invoke-static {p1, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld9/a;

    invoke-direct {p0, v0, p1, p2, p3}, Ld9/a;-><init>(Lcom/nike/adapt/adk/Shoe;Lba/f;II)V

    return-object p0
.end method


# virtual methods
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
    instance-of v1, p1, Ld9/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ld9/a;

    iget-object v1, p0, Ld9/a;->h:Lcom/nike/adapt/adk/Shoe;

    iget-object v3, p1, Ld9/a;->h:Lcom/nike/adapt/adk/Shoe;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ld9/a;->i:Lba/f;

    iget-object v3, p1, Ld9/a;->i:Lba/f;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ld9/a;->j:I

    iget v3, p1, Ld9/a;->j:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Ld9/a;->k:I

    iget p1, p1, Ld9/a;->k:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Ld9/a;->h:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ld9/a;->i:Lba/f;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Ld9/a;->j:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Ld9/a;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Ld9/a;->h:Lcom/nike/adapt/adk/Shoe;

    iget-object v1, p0, Ld9/a;->i:Lba/f;

    iget v2, p0, Ld9/a;->j:I

    iget v3, p0, Ld9/a;->k:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ModeSnapshot(shoe="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", color="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", position="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", absolutePosition="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Ld9/a;->h:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ld9/a;->i:Lba/f;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Ld9/a;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Ld9/a;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
