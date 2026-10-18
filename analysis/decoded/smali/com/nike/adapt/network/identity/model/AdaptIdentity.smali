.class public final Lcom/nike/adapt/network/identity/model/AdaptIdentity;
.super Ljava/lang/Object;
.source "AdaptIdentity.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final avatar:Lcom/nike/adapt/network/identity/model/Avatar;
    .annotation runtime Lf7/b;
        value = "avatar"
    .end annotation
.end field

.field private final contact:Lcom/nike/adapt/network/identity/model/Contact;
    .annotation runtime Lf7/b;
        value = "contact"
    .end annotation
.end field

.field private final dob:Lcom/nike/adapt/network/identity/model/Dob;
    .annotation runtime Lf7/b;
        value = "dob"
    .end annotation
.end field

.field private final hometown:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "hometown"
    .end annotation
.end field

.field private final name:Lcom/nike/adapt/network/identity/model/Name;
    .annotation runtime Lf7/b;
        value = "name"
    .end annotation
.end field

.field private final nuId:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "nuId"
    .end annotation
.end field

.field private final registration:Lcom/nike/adapt/network/identity/model/Registration;
    .annotation runtime Lf7/b;
        value = "registration"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nike/adapt/network/identity/model/Name;Ljava/lang/String;Lcom/nike/adapt/network/identity/model/Dob;Lcom/nike/adapt/network/identity/model/Avatar;Lcom/nike/adapt/network/identity/model/Registration;Lcom/nike/adapt/network/identity/model/Contact;)V
    .locals 1

    const-string v0, "nuId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->nuId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->name:Lcom/nike/adapt/network/identity/model/Name;

    .line 4
    iput-object p3, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->hometown:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->dob:Lcom/nike/adapt/network/identity/model/Dob;

    .line 6
    iput-object p5, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->avatar:Lcom/nike/adapt/network/identity/model/Avatar;

    .line 7
    iput-object p6, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->registration:Lcom/nike/adapt/network/identity/model/Registration;

    .line 8
    iput-object p7, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->contact:Lcom/nike/adapt/network/identity/model/Contact;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/network/identity/model/AdaptIdentity;Ljava/lang/String;Lcom/nike/adapt/network/identity/model/Name;Ljava/lang/String;Lcom/nike/adapt/network/identity/model/Dob;Lcom/nike/adapt/network/identity/model/Avatar;Lcom/nike/adapt/network/identity/model/Registration;Lcom/nike/adapt/network/identity/model/Contact;ILjava/lang/Object;)Lcom/nike/adapt/network/identity/model/AdaptIdentity;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->nuId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->name:Lcom/nike/adapt/network/identity/model/Name;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->hometown:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->dob:Lcom/nike/adapt/network/identity/model/Dob;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->avatar:Lcom/nike/adapt/network/identity/model/Avatar;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->registration:Lcom/nike/adapt/network/identity/model/Registration;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->contact:Lcom/nike/adapt/network/identity/model/Contact;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->copy(Ljava/lang/String;Lcom/nike/adapt/network/identity/model/Name;Ljava/lang/String;Lcom/nike/adapt/network/identity/model/Dob;Lcom/nike/adapt/network/identity/model/Avatar;Lcom/nike/adapt/network/identity/model/Registration;Lcom/nike/adapt/network/identity/model/Contact;)Lcom/nike/adapt/network/identity/model/AdaptIdentity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->nuId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/nike/adapt/network/identity/model/Name;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->name:Lcom/nike/adapt/network/identity/model/Name;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->hometown:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/nike/adapt/network/identity/model/Dob;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->dob:Lcom/nike/adapt/network/identity/model/Dob;

    return-object v0
.end method

.method public final component5()Lcom/nike/adapt/network/identity/model/Avatar;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->avatar:Lcom/nike/adapt/network/identity/model/Avatar;

    return-object v0
.end method

.method public final component6()Lcom/nike/adapt/network/identity/model/Registration;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->registration:Lcom/nike/adapt/network/identity/model/Registration;

    return-object v0
.end method

.method public final component7()Lcom/nike/adapt/network/identity/model/Contact;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->contact:Lcom/nike/adapt/network/identity/model/Contact;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/nike/adapt/network/identity/model/Name;Ljava/lang/String;Lcom/nike/adapt/network/identity/model/Dob;Lcom/nike/adapt/network/identity/model/Avatar;Lcom/nike/adapt/network/identity/model/Registration;Lcom/nike/adapt/network/identity/model/Contact;)Lcom/nike/adapt/network/identity/model/AdaptIdentity;
    .locals 9

    const-string v0, "nuId"

    move-object v2, p1

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/nike/adapt/network/identity/model/AdaptIdentity;-><init>(Ljava/lang/String;Lcom/nike/adapt/network/identity/model/Name;Ljava/lang/String;Lcom/nike/adapt/network/identity/model/Dob;Lcom/nike/adapt/network/identity/model/Avatar;Lcom/nike/adapt/network/identity/model/Registration;Lcom/nike/adapt/network/identity/model/Contact;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/network/identity/model/AdaptIdentity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/network/identity/model/AdaptIdentity;

    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->nuId:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->nuId:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->name:Lcom/nike/adapt/network/identity/model/Name;

    iget-object v3, p1, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->name:Lcom/nike/adapt/network/identity/model/Name;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->hometown:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->hometown:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->dob:Lcom/nike/adapt/network/identity/model/Dob;

    iget-object v3, p1, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->dob:Lcom/nike/adapt/network/identity/model/Dob;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->avatar:Lcom/nike/adapt/network/identity/model/Avatar;

    iget-object v3, p1, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->avatar:Lcom/nike/adapt/network/identity/model/Avatar;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->registration:Lcom/nike/adapt/network/identity/model/Registration;

    iget-object v3, p1, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->registration:Lcom/nike/adapt/network/identity/model/Registration;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->contact:Lcom/nike/adapt/network/identity/model/Contact;

    iget-object p1, p1, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->contact:Lcom/nike/adapt/network/identity/model/Contact;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAvatar()Lcom/nike/adapt/network/identity/model/Avatar;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->avatar:Lcom/nike/adapt/network/identity/model/Avatar;

    return-object v0
.end method

.method public final getContact()Lcom/nike/adapt/network/identity/model/Contact;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->contact:Lcom/nike/adapt/network/identity/model/Contact;

    return-object v0
.end method

.method public final getDob()Lcom/nike/adapt/network/identity/model/Dob;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->dob:Lcom/nike/adapt/network/identity/model/Dob;

    return-object v0
.end method

.method public final getHometown()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->hometown:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Lcom/nike/adapt/network/identity/model/Name;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->name:Lcom/nike/adapt/network/identity/model/Name;

    return-object v0
.end method

.method public final getNuId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->nuId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegistration()Lcom/nike/adapt/network/identity/model/Registration;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->registration:Lcom/nike/adapt/network/identity/model/Registration;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->nuId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->name:Lcom/nike/adapt/network/identity/model/Name;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/nike/adapt/network/identity/model/Name;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->hometown:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->dob:Lcom/nike/adapt/network/identity/model/Dob;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/nike/adapt/network/identity/model/Dob;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->avatar:Lcom/nike/adapt/network/identity/model/Avatar;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/nike/adapt/network/identity/model/Avatar;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->registration:Lcom/nike/adapt/network/identity/model/Registration;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/nike/adapt/network/identity/model/Registration;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->contact:Lcom/nike/adapt/network/identity/model/Contact;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/nike/adapt/network/identity/model/Contact;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->nuId:Ljava/lang/String;

    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->name:Lcom/nike/adapt/network/identity/model/Name;

    iget-object v2, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->hometown:Ljava/lang/String;

    iget-object v3, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->dob:Lcom/nike/adapt/network/identity/model/Dob;

    iget-object v4, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->avatar:Lcom/nike/adapt/network/identity/model/Avatar;

    iget-object v5, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->registration:Lcom/nike/adapt/network/identity/model/Registration;

    iget-object v6, p0, Lcom/nike/adapt/network/identity/model/AdaptIdentity;->contact:Lcom/nike/adapt/network/identity/model/Contact;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdaptIdentity(nuId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hometown="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dob="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", avatar="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", registration="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contact="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
