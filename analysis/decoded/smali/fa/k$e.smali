.class public final Lfa/k$e;
.super Ljava/lang/Object;
.source "FirmwareUpdateState.kt"

# interfaces
.implements Lfa/k;
.implements Lfa/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfa/k$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lfa/l$d;

.field public final i:Lfa/l$a;

.field public final j:Lfa/l$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfa/k$e$a;

    invoke-direct {v0}, Lfa/k$e$a;-><init>()V

    sput-object v0, Lfa/k$e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lfa/l$d;Lfa/l$a;Lfa/l$b;)V
    .locals 1

    const-string v0, "mcu"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ble"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "capsense"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfa/k$e;->h:Lfa/l$d;

    .line 3
    iput-object p2, p0, Lfa/k$e;->i:Lfa/l$a;

    .line 4
    iput-object p3, p0, Lfa/k$e;->j:Lfa/l$b;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    invoke-static {p0}, Lfa/o$a;->a(Lfa/o;)Z

    move-result v0

    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lfa/k;

    .line 2
    invoke-static {p0, p1}, Lfa/k$i;->a(Lfa/k;Lfa/k;)I

    move-result p1

    return p1
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
    instance-of v1, p1, Lfa/k$e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfa/k$e;

    .line 1
    iget-object v1, p0, Lfa/k$e;->h:Lfa/l$d;

    .line 2
    iget-object v3, p1, Lfa/k$e;->h:Lfa/l$d;

    .line 3
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lfa/k$e;->i:Lfa/l$a;

    iget-object v3, p1, Lfa/k$e;->i:Lfa/l$a;

    .line 5
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lfa/k$e;->j:Lfa/l$b;

    iget-object p1, p1, Lfa/k$e;->j:Lfa/l$b;

    .line 7
    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final h()Lfa/k$c0;
    .locals 1

    sget-object v0, Lfa/k$c0;->p:Lfa/k$c0;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/k$e;->h:Lfa/l$d;

    .line 2
    invoke-virtual {v0}, Lfa/l$d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lfa/k$e;->i:Lfa/l$a;

    .line 4
    invoke-virtual {v1}, Lfa/l$a;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lfa/k$e;->j:Lfa/l$b;

    .line 6
    invoke-virtual {v0}, Lfa/l$b;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final o()Lfa/l$b;
    .locals 1

    iget-object v0, p0, Lfa/k$e;->j:Lfa/l$b;

    return-object v0
.end method

.method public final p()Lfa/l$a;
    .locals 1

    iget-object v0, p0, Lfa/k$e;->i:Lfa/l$a;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lfa/k$e;->h:Lfa/l$d;

    .line 2
    iget-object v1, p0, Lfa/k$e;->i:Lfa/l$a;

    .line 3
    iget-object v2, p0, Lfa/k$e;->j:Lfa/l$b;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckUpgradeSlotsAlreadyStaged(mcu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ble="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", capsense="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfa/k$e;->h:Lfa/l$d;

    invoke-virtual {v0, p1, p2}, Lfa/l$d;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lfa/k$e;->i:Lfa/l$a;

    invoke-virtual {v0, p1, p2}, Lfa/l$a;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lfa/k$e;->j:Lfa/l$b;

    invoke-virtual {v0, p1, p2}, Lfa/l$b;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final y()Lfa/l$d;
    .locals 1

    iget-object v0, p0, Lfa/k$e;->h:Lfa/l$d;

    return-object v0
.end method
