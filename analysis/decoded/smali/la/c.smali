.class public final Lla/c;
.super Ljava/lang/Object;
.source "AdaptKitSessionInformation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lla/c$c;,
        Lla/c$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lla/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lla/c$a;


# instance fields
.field public final h:Lla/b;

.field public final i:J

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:Lla/c$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lla/c$a;

    invoke-direct {v0}, Lla/c$a;-><init>()V

    sput-object v0, Lla/c;->n:Lla/c$a;

    new-instance v0, Lla/c$b;

    invoke-direct {v0}, Lla/c$b;-><init>()V

    sput-object v0, Lla/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lla/b;JIIILla/c$c;)V
    .locals 1

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p7, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lla/c;->h:Lla/b;

    .line 3
    iput-wide p2, p0, Lla/c;->i:J

    .line 4
    iput p4, p0, Lla/c;->j:I

    .line 5
    iput p5, p0, Lla/c;->k:I

    .line 6
    iput p6, p0, Lla/c;->l:I

    .line 7
    iput-object p7, p0, Lla/c;->m:Lla/c$c;

    return-void
.end method

.method public static a(Lla/c;II)Lla/c;
    .locals 10

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lla/c;->h:Lla/b;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lla/c;->i:J

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    :goto_1
    and-int/lit8 v0, p2, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lla/c;->j:I

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Lla/c;->k:I

    move v7, v0

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_4

    iget p1, p0, Lla/c;->l:I

    :cond_4
    move v8, p1

    and-int/lit8 p1, p2, 0x20

    if-eqz p1, :cond_5

    iget-object v1, p0, Lla/c;->m:Lla/c$c;

    :cond_5
    move-object v9, v1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sessionId"

    invoke-static {v3, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "state"

    invoke-static {v9, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lla/c;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lla/c;-><init>(Lla/b;JIIILla/c$c;)V

    return-object p0
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-wide v0, p0, Lla/c;->i:J

    return-wide v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lla/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lla/c;

    iget-object v1, p0, Lla/c;->h:Lla/b;

    iget-object v3, p1, Lla/c;->h:Lla/b;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lla/c;->i:J

    iget-wide v5, p1, Lla/c;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lla/c;->j:I

    iget v3, p1, Lla/c;->j:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lla/c;->k:I

    iget v3, p1, Lla/c;->k:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lla/c;->l:I

    iget v3, p1, Lla/c;->l:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lla/c;->m:Lla/c$c;

    iget-object p1, p1, Lla/c;->m:Lla/c$c;

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lla/c;->h:Lla/b;

    invoke-virtual {v0}, Lla/b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lla/c;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lla/c;->j:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lla/c;->k:I

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, Lla/c;->l:I

    .line 5
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 6
    iget-object v1, p0, Lla/c;->m:Lla/c$c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lla/c;->h:Lla/b;

    iget-wide v1, p0, Lla/c;->i:J

    iget v3, p0, Lla/c;->j:I

    iget v4, p0, Lla/c;->k:I

    iget v5, p0, Lla/c;->l:I

    iget-object v6, p0, Lla/c;->m:Lla/c$c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdaptKitSessionInformation(sessionId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", crc="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bytesDownloaded="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lla/c;->h:Lla/b;

    invoke-virtual {v0, p1, p2}, Lla/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lla/c;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lla/c;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lla/c;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lla/c;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lla/c;->m:Lla/c$c;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
