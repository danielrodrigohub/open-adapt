.class public final Lba/d;
.super Ljava/lang/Object;
.source "AdaptKitAnimationSequence.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lba/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lba/f0;

.field public final i:Lba/t;

.field public final j:Lba/e0;

.field public final k:Lba/u;

.field public final l:Lba/d0;

.field public final m:Lba/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lba/d$a;

    invoke-direct {v0}, Lba/d$a;-><init>()V

    sput-object v0, Lba/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lba/f0;Lba/t;Lba/e0;Lba/u;Lba/d0;)V
    .locals 1

    const-string v0, "prequel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enter"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "on"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exit"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "off"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lba/d;->h:Lba/f0;

    .line 3
    iput-object p2, p0, Lba/d;->i:Lba/t;

    .line 4
    iput-object p3, p0, Lba/d;->j:Lba/e0;

    .line 5
    iput-object p4, p0, Lba/d;->k:Lba/u;

    .line 6
    iput-object p5, p0, Lba/d;->l:Lba/d0;

    .line 7
    new-instance p1, Lba/h0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lba/h0;-><init>(I)V

    iput-object p1, p0, Lba/d;->m:Lba/h0;

    return-void
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
    instance-of v1, p1, Lba/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lba/d;

    iget-object v1, p0, Lba/d;->h:Lba/f0;

    iget-object v3, p1, Lba/d;->h:Lba/f0;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lba/d;->i:Lba/t;

    iget-object v3, p1, Lba/d;->i:Lba/t;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lba/d;->j:Lba/e0;

    iget-object v3, p1, Lba/d;->j:Lba/e0;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lba/d;->k:Lba/u;

    iget-object v3, p1, Lba/d;->k:Lba/u;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lba/d;->l:Lba/d0;

    iget-object p1, p1, Lba/d;->l:Lba/d0;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lba/d;->h:Lba/f0;

    invoke-virtual {v0}, Lba/f0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lba/d;->i:Lba/t;

    invoke-virtual {v1}, Lba/t;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lba/d;->j:Lba/e0;

    invoke-virtual {v0}, Lba/e0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lba/d;->k:Lba/u;

    invoke-virtual {v1}, Lba/u;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lba/d;->l:Lba/d0;

    invoke-virtual {v0}, Lba/d0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lba/d;->h:Lba/f0;

    iget-object v1, p0, Lba/d;->i:Lba/t;

    iget-object v2, p0, Lba/d;->j:Lba/e0;

    iget-object v3, p0, Lba/d;->k:Lba/u;

    iget-object v4, p0, Lba/d;->l:Lba/d0;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdaptKitAnimationSequence(prequel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", enter="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", on="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", exit="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", off="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lba/d;->h:Lba/f0;

    invoke-virtual {v0, p1, p2}, Lba/f0;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/d;->i:Lba/t;

    invoke-virtual {v0, p1, p2}, Lba/t;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/d;->j:Lba/e0;

    invoke-virtual {v0, p1, p2}, Lba/e0;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/d;->k:Lba/u;

    invoke-virtual {v0, p1, p2}, Lba/u;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lba/d;->l:Lba/d0;

    invoke-virtual {v0, p1, p2}, Lba/d0;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
