.class public final Lcom/nike/adapt/network/identity/model/Name;
.super Ljava/lang/Object;
.source "AdaptIdentity.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final latin:Lcom/nike/adapt/network/identity/model/Latin;
    .annotation runtime Lf7/b;
        value = "latin"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nike/adapt/network/identity/model/Latin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/network/identity/model/Name;->latin:Lcom/nike/adapt/network/identity/model/Latin;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/network/identity/model/Name;Lcom/nike/adapt/network/identity/model/Latin;ILjava/lang/Object;)Lcom/nike/adapt/network/identity/model/Name;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/network/identity/model/Name;->latin:Lcom/nike/adapt/network/identity/model/Latin;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/network/identity/model/Name;->copy(Lcom/nike/adapt/network/identity/model/Latin;)Lcom/nike/adapt/network/identity/model/Name;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/nike/adapt/network/identity/model/Latin;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/Name;->latin:Lcom/nike/adapt/network/identity/model/Latin;

    return-object v0
.end method

.method public final copy(Lcom/nike/adapt/network/identity/model/Latin;)Lcom/nike/adapt/network/identity/model/Name;
    .locals 1

    new-instance v0, Lcom/nike/adapt/network/identity/model/Name;

    invoke-direct {v0, p1}, Lcom/nike/adapt/network/identity/model/Name;-><init>(Lcom/nike/adapt/network/identity/model/Latin;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/network/identity/model/Name;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/network/identity/model/Name;

    iget-object v1, p0, Lcom/nike/adapt/network/identity/model/Name;->latin:Lcom/nike/adapt/network/identity/model/Latin;

    iget-object p1, p1, Lcom/nike/adapt/network/identity/model/Name;->latin:Lcom/nike/adapt/network/identity/model/Latin;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getLatin()Lcom/nike/adapt/network/identity/model/Latin;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/Name;->latin:Lcom/nike/adapt/network/identity/model/Latin;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/Name;->latin:Lcom/nike/adapt/network/identity/model/Latin;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/nike/adapt/network/identity/model/Latin;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/network/identity/model/Name;->latin:Lcom/nike/adapt/network/identity/model/Latin;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Name(latin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
