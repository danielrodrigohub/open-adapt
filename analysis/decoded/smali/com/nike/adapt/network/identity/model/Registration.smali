.class public final Lcom/nike/adapt/network/identity/model/Registration;
.super Ljava/lang/Object;
.source "AdaptIdentity.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final timestamp:Ljava/lang/Long;
    .annotation runtime Lf7/b;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/network/identity/model/Registration;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/network/identity/model/Registration;Ljava/lang/Long;ILjava/lang/Object;)Lcom/nike/adapt/network/identity/model/Registration;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/network/identity/model/Registration;->timestamp:Ljava/lang/Long;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/network/identity/model/Registration;->copy(Ljava/lang/Long;)Lcom/nike/adapt/network/identity/model/Registration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/Registration;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;)Lcom/nike/adapt/network/identity/model/Registration;
    .locals 1

    new-instance v0, Lcom/nike/adapt/network/identity/model/Registration;

    invoke-direct {v0, p1}, Lcom/nike/adapt/network/identity/model/Registration;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/network/identity/model/Registration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/network/identity/model/Registration;

    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/Registration;->timestamp:Ljava/lang/Long;

    iget-object p1, p1, Lcom/nike/adapt/network/identity/model/Registration;->timestamp:Ljava/lang/Long;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/Registration;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/Registration;->timestamp:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/Registration;->timestamp:Ljava/lang/Long;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registration(timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
