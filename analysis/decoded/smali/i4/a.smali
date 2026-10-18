.class public final Li4/a;
.super Ljava/lang/Object;
.source "PictureFrame.java"

# interfaces
.implements Lf4/a$b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Li4/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:I

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li4/a$a;

    invoke-direct {v0}, Li4/a$a;-><init>()V

    sput-object v0, Li4/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Li4/a;->h:I

    .line 3
    iput-object p2, p0, Li4/a;->i:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Li4/a;->j:Ljava/lang/String;

    .line 5
    iput p4, p0, Li4/a;->k:I

    .line 6
    iput p5, p0, Li4/a;->l:I

    .line 7
    iput p6, p0, Li4/a;->m:I

    .line 8
    iput p7, p0, Li4/a;->n:I

    .line 9
    iput-object p8, p0, Li4/a;->o:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Li4/a;->h:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lm5/g0;->a:I

    iput-object v0, p0, Li4/a;->i:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li4/a;->j:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Li4/a;->k:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Li4/a;->l:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Li4/a;->m:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Li4/a;->n:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Li4/a;->o:[B

    return-void
.end method

.method public static a(Lm5/w;)Li4/a;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result v1

    .line 2
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result v0

    .line 3
    sget-object v2, Lt6/c;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v2}, Lm5/w;->r(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lm5/w;->q(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result v5

    .line 8
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result v6

    .line 9
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result v7

    .line 10
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result v0

    .line 11
    new-array v8, v0, [B

    const/4 v9, 0x0

    .line 12
    invoke-virtual {p0, v8, v9, v0}, Lm5/w;->d([BII)V

    .line 13
    new-instance p0, Li4/a;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Li4/a;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

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
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Li4/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Li4/a;

    .line 3
    iget v2, p0, Li4/a;->h:I

    iget v3, p1, Li4/a;->h:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Li4/a;->i:Ljava/lang/String;

    iget-object v3, p1, Li4/a;->i:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Li4/a;->j:Ljava/lang/String;

    iget-object v3, p1, Li4/a;->j:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Li4/a;->k:I

    iget v3, p1, Li4/a;->k:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Li4/a;->l:I

    iget v3, p1, Li4/a;->l:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Li4/a;->m:I

    iget v3, p1, Li4/a;->m:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Li4/a;->n:I

    iget v3, p1, Li4/a;->n:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Li4/a;->o:[B

    iget-object p1, p1, Li4/a;->o:[B

    .line 6
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

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
    .locals 3

    .line 1
    iget v0, p0, Li4/a;->h:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Li4/a;->i:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 3
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Li4/a;->j:Ljava/lang/String;

    .line 5
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 6
    iget v1, p0, Li4/a;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget v1, p0, Li4/a;->l:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Li4/a;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v1, p0, Li4/a;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Li4/a;->o:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i(Ln3/a1$a;)V
    .locals 2

    iget-object v0, p0, Li4/a;->o:[B

    iget v1, p0, Li4/a;->h:I

    invoke-virtual {p1, v0, v1}, Ln3/a1$a;->b([BI)Ln3/a1$a;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Picture: mimeType="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li4/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li4/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Li4/a;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Li4/a;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Li4/a;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Li4/a;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Li4/a;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Li4/a;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Li4/a;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object p2, p0, Li4/a;->o:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
