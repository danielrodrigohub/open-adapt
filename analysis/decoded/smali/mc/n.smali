.class public final Lmc/n;
.super Ljava/lang/Object;
.source "Gesture.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmc/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lmc/m;

.field public final i:Lmc/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/n$a;

    invoke-direct {v0}, Lmc/n$a;-><init>()V

    sput-object v0, Lmc/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lmc/m;Lmc/l;)V
    .locals 1

    const-string v0, "classification"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmc/n;->h:Lmc/m;

    .line 3
    iput-object p2, p0, Lmc/n;->i:Lmc/l;

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
    instance-of v1, p1, Lmc/n;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmc/n;

    iget-object v1, p0, Lmc/n;->h:Lmc/m;

    iget-object v3, p1, Lmc/n;->h:Lmc/m;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lmc/n;->i:Lmc/l;

    iget-object p1, p1, Lmc/n;->i:Lmc/l;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lmc/n;->h:Lmc/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lmc/n;->i:Lmc/l;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "GestureConfiguration(classification="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmc/n;->h:Lmc/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmc/n;->i:Lmc/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lmc/n;->h:Lmc/m;

    invoke-virtual {v0, p1, p2}, Lmc/m;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lmc/n;->i:Lmc/l;

    invoke-virtual {v0, p1, p2}, Lmc/l;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
