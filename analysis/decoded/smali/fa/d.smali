.class public final Lfa/d;
.super Ljava/lang/Object;
.source "AdaptKitFirmwareUpdateStates.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfa/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lfa/c;

.field public final i:Lfa/c;

.field public final j:Lfa/c;

.field public final k:Lfa/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfa/d$a;

    invoke-direct {v0}, Lfa/d$a;-><init>()V

    sput-object v0, Lfa/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lfa/c;Lfa/c;)V
    .locals 5

    const-string v0, "leftFirmwareUpdate"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightFirmwareUpdate"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfa/d;->h:Lfa/c;

    .line 3
    iput-object p2, p0, Lfa/d;->i:Lfa/c;

    .line 4
    iget-object v0, p1, Lfa/c;->h:Lfb/c;

    .line 5
    iget-object v1, p2, Lfa/c;->h:Lfb/c;

    .line 6
    invoke-static {v0, v1}, Lhd/b;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lfb/c;

    .line 7
    iget-object v1, p1, Lfa/c;->i:Lfa/n;

    .line 8
    iget-object v2, p2, Lfa/c;->i:Lfa/n;

    const-string v3, "a"

    .line 9
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "b"

    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v2}, Lfa/n;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 11
    :goto_0
    new-instance v2, Lfa/c;

    .line 12
    iget-object v3, p1, Lfa/c;->j:Lfa/k;

    iget-object v4, p2, Lfa/c;->j:Lfa/k;

    .line 13
    invoke-static {v3, v4}, Lhd/b;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Lfa/k;

    .line 14
    invoke-direct {v2, v0, v1, v3}, Lfa/c;-><init>(Lfb/c;Lfa/n;Lfa/k;)V

    .line 15
    iput-object v2, p0, Lfa/d;->j:Lfa/c;

    .line 16
    iget-object p1, p1, Lfa/c;->j:Lfa/k;

    .line 17
    iget-object p2, p2, Lfa/c;->j:Lfa/k;

    .line 18
    invoke-static {p1, p2}, Lhd/b;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lfa/k;

    .line 19
    invoke-interface {v0}, Lfa/k;->h()Lfa/k$c0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 20
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 21
    :pswitch_0
    sget-object p1, Lfa/i$h;->h:Lfa/i$h;

    goto :goto_2

    .line 22
    :pswitch_1
    sget-object p1, Lfa/i$b;->h:Lfa/i$b;

    goto :goto_2

    .line 23
    :pswitch_2
    sget-object p1, Lfa/i$d;->h:Lfa/i$d;

    goto :goto_2

    .line 24
    :pswitch_3
    sget-object p1, Lfa/i$j;->h:Lfa/i$j;

    goto :goto_2

    .line 25
    :pswitch_4
    sget-object p1, Lfa/i$f;->h:Lfa/i$f;

    goto :goto_2

    .line 26
    :pswitch_5
    sget-object p1, Lfa/i$d;->h:Lfa/i$d;

    goto :goto_2

    .line 27
    :pswitch_6
    check-cast v0, Lfa/p;

    .line 28
    instance-of v1, p1, Lfa/p;

    if-eqz v1, :cond_1

    .line 29
    instance-of v1, p2, Lfa/p;

    if-eqz v1, :cond_1

    .line 30
    check-cast p1, Lfa/p;

    invoke-interface {p1}, Lfa/p;->w()Lfa/e;

    move-result-object p1

    .line 31
    check-cast p2, Lfa/p;

    invoke-interface {p2}, Lfa/p;->w()Lfa/e;

    move-result-object p2

    .line 32
    invoke-static {p1, p2}, Lhd/b;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Lfa/e;

    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v0}, Lfa/p;->w()Lfa/e;

    move-result-object p1

    .line 34
    :goto_1
    new-instance p2, Lfa/i$g;

    invoke-interface {v0}, Lfa/p;->m()F

    move-result v0

    invoke-direct {p2, v0, p1}, Lfa/i$g;-><init>(FLfa/e;)V

    move-object p1, p2

    goto :goto_2

    .line 35
    :pswitch_7
    sget-object p1, Lfa/i$e;->h:Lfa/i$e;

    goto :goto_2

    .line 36
    :pswitch_8
    sget-object p1, Lfa/i$i;->h:Lfa/i$i;

    goto :goto_2

    .line 37
    :pswitch_9
    sget-object p1, Lfa/i$d;->h:Lfa/i$d;

    goto :goto_2

    .line 38
    :pswitch_a
    check-cast v0, Lfa/k$b;

    .line 39
    new-instance p1, Lfa/i$a;

    .line 40
    iget-object p2, v0, Lfa/k$b;->h:Lba/e;

    .line 41
    invoke-direct {p1, p2}, Lfa/i$a;-><init>(Lba/e;)V

    goto :goto_2

    .line 42
    :pswitch_b
    sget-object p1, Lfa/i$c;->h:Lfa/i$c;

    .line 43
    :goto_2
    iput-object p1, p0, Lfa/d;->k:Lfa/i;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    instance-of v1, p1, Lfa/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfa/d;

    iget-object v1, p0, Lfa/d;->h:Lfa/c;

    iget-object v3, p1, Lfa/d;->h:Lfa/c;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfa/d;->i:Lfa/c;

    iget-object p1, p1, Lfa/d;->i:Lfa/c;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lfa/d;->h:Lfa/c;

    invoke-virtual {v0}, Lfa/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfa/d;->i:Lfa/c;

    invoke-virtual {v1}, Lfa/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lfa/d;->h:Lfa/c;

    iget-object v1, p0, Lfa/d;->i:Lfa/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdaptKitFirmwareUpdateStates(leftFirmwareUpdate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rightFirmwareUpdate="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfa/d;->h:Lfa/c;

    invoke-virtual {v0, p1, p2}, Lfa/c;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lfa/d;->i:Lfa/c;

    invoke-virtual {v0, p1, p2}, Lfa/c;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
