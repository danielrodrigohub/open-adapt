.class public final La8/h;
.super Ljava/lang/Object;
.source "ShoeStats.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "La8/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "time_stamp"
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "nuid"
    .end annotation
.end field

.field public final j:La8/l;
    .annotation runtime Lf7/b;
        value = "stats"
    .end annotation
.end field

.field public final k:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "shoe_id_left"
    .end annotation
.end field

.field public final l:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "shoe_id_right"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La8/h$a;

    invoke-direct {v0}, La8/h$a;-><init>()V

    sput-object v0, La8/h;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;La8/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "timeStamp"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nuid"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stats"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La8/h;->h:Ljava/lang/String;

    .line 3
    iput-object p2, p0, La8/h;->i:Ljava/lang/String;

    .line 4
    iput-object p3, p0, La8/h;->j:La8/l;

    .line 5
    iput-object p4, p0, La8/h;->k:Ljava/lang/String;

    .line 6
    iput-object p5, p0, La8/h;->l:Ljava/lang/String;

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
    instance-of v1, p1, La8/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, La8/h;

    iget-object v1, p0, La8/h;->h:Ljava/lang/String;

    iget-object v3, p1, La8/h;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, La8/h;->i:Ljava/lang/String;

    iget-object v3, p1, La8/h;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, La8/h;->j:La8/l;

    iget-object v3, p1, La8/h;->j:La8/l;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, La8/h;->k:Ljava/lang/String;

    iget-object v3, p1, La8/h;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, La8/h;->l:Ljava/lang/String;

    iget-object p1, p1, La8/h;->l:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, La8/h;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, La8/h;->i:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v1, p0, La8/h;->j:La8/l;

    invoke-virtual {v1}, La8/l;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, La8/h;->k:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, La8/h;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, La8/h;->h:Ljava/lang/String;

    iget-object v1, p0, La8/h;->i:Ljava/lang/String;

    iget-object v2, p0, La8/h;->j:La8/l;

    iget-object v3, p0, La8/h;->k:Ljava/lang/String;

    iget-object v4, p0, La8/h;->l:Ljava/lang/String;

    const-string v5, "ShoeStats(timeStamp="

    const-string v6, ", nuid="

    const-string v7, ", stats="

    .line 1
    invoke-static {v5, v0, v6, v1, v7}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shoeIdLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shoeIdRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 3
    invoke-static {v0, v4, v1}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La8/h;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, La8/h;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, La8/h;->j:La8/l;

    invoke-virtual {v0, p1, p2}, La8/l;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, La8/h;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, La8/h;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
