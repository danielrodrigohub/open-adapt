.class public final Lcom/nike/adapt/presenter/profile/AdaptUser;
.super Ljava/lang/Object;
.source "AdaptUser.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final avatarUrl:Ljava/lang/String;

.field private final dob:Ljava/lang/Integer;

.field private final email:Ljava/lang/String;

.field private final firstName:Ljava/lang/String;

.field private final hometown:Ljava/lang/String;

.field private final lastName:Ljava/lang/String;

.field private final nuid:Ljava/lang/String;

.field private final registrationTimestamp:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/presenter/profile/AdaptUser$a;

    invoke-direct {v0}, Lcom/nike/adapt/presenter/profile/AdaptUser$a;-><init>()V

    sput-object v0, Lcom/nike/adapt/presenter/profile/AdaptUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    const-string v0, "nuid"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->nuid:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->firstName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->lastName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->avatarUrl:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->hometown:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->dob:Ljava/lang/Integer;

    .line 8
    iput-object p7, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->registrationTimestamp:Ljava/lang/Long;

    .line 9
    iput-object p8, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->email:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;ILrd/h;)V
    .locals 11

    and-int/lit8 v0, p9, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_2

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, p4

    :goto_2
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_3

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object/from16 v7, p5

    :goto_3
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_4

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    .line 10
    invoke-direct/range {v2 .. v10}, Lcom/nike/adapt/presenter/profile/AdaptUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/presenter/profile/AdaptUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/nike/adapt/presenter/profile/AdaptUser;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/nike/adapt/presenter/profile/AdaptUser;->nuid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/nike/adapt/presenter/profile/AdaptUser;->firstName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/nike/adapt/presenter/profile/AdaptUser;->lastName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/nike/adapt/presenter/profile/AdaptUser;->avatarUrl:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/nike/adapt/presenter/profile/AdaptUser;->hometown:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/nike/adapt/presenter/profile/AdaptUser;->dob:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/nike/adapt/presenter/profile/AdaptUser;->registrationTimestamp:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/nike/adapt/presenter/profile/AdaptUser;->email:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/nike/adapt/presenter/profile/AdaptUser;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)Lcom/nike/adapt/presenter/profile/AdaptUser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->nuid:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->hometown:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->dob:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->registrationTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)Lcom/nike/adapt/presenter/profile/AdaptUser;
    .locals 10

    const-string v0, "nuid"

    move-object v2, p1

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/presenter/profile/AdaptUser;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/nike/adapt/presenter/profile/AdaptUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/presenter/profile/AdaptUser;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/presenter/profile/AdaptUser;

    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->nuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/presenter/profile/AdaptUser;->nuid:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->firstName:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/presenter/profile/AdaptUser;->firstName:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->lastName:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/presenter/profile/AdaptUser;->lastName:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->avatarUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/presenter/profile/AdaptUser;->avatarUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->hometown:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/presenter/profile/AdaptUser;->hometown:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->dob:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/nike/adapt/presenter/profile/AdaptUser;->dob:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->registrationTimestamp:Ljava/lang/Long;

    iget-object v3, p1, Lcom/nike/adapt/presenter/profile/AdaptUser;->registrationTimestamp:Ljava/lang/Long;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->email:Ljava/lang/String;

    iget-object p1, p1, Lcom/nike/adapt/presenter/profile/AdaptUser;->email:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDob()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->dob:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHometown()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->hometown:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->nuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegistrationTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->registrationTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->nuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->firstName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->lastName:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->avatarUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->hometown:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->dob:Ljava/lang/Integer;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->registrationTimestamp:Ljava/lang/Long;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->email:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->nuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->firstName:Ljava/lang/String;

    iget-object v2, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->lastName:Ljava/lang/String;

    iget-object v3, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->avatarUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->hometown:Ljava/lang/String;

    iget-object v5, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->dob:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->registrationTimestamp:Ljava/lang/Long;

    iget-object v7, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->email:Ljava/lang/String;

    const-string v8, "AdaptUser(nuid="

    const-string v9, ", firstName="

    const-string v10, ", lastName="

    .line 1
    invoke-static {v8, v0, v9, v1, v10}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatarUrl="

    const-string v8, ", hometown="

    .line 2
    invoke-static {v0, v2, v1, v3, v8}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", registrationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->nuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->firstName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->lastName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->hometown:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->dob:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->registrationTimestamp:Ljava/lang/Long;

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_1
    iget-object p2, p0, Lcom/nike/adapt/presenter/profile/AdaptUser;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
