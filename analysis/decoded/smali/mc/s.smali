.class public final Lmc/s;
.super Lmc/h;
.source "CoreRFAuthentication.kt"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "The Device and The User have miss matching Keys. Must re-pair to the shoes"

    .line 1
    invoke-direct {p0}, Lmc/h;-><init>()V

    .line 2
    iput-object v0, p0, Lmc/s;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILrd/h;)V
    .locals 0

    const-string p1, "The Device and The User have miss matching Keys. Must re-pair to the shoes"

    .line 3
    invoke-direct {p0}, Lmc/h;-><init>()V

    .line 4
    iput-object p1, p0, Lmc/s;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmc/s;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmc/s;

    iget-object v1, p0, Lmc/s;->a:Ljava/lang/String;

    iget-object p1, p1, Lmc/s;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lmc/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "KeysAreAMissMatch(message="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmc/s;->a:Ljava/lang/String;

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, La0/d;->d(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
