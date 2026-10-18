.class public final Lwb/a;
.super Ljava/lang/Object;
.source "OIDCAuthCredentialImpl.kt"

# interfaces
.implements Lob/c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwb/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lwb/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lwb/a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lwb/a;->d:Ljava/lang/String;

    .line 6
    iput-wide p5, p0, Lwb/a;->e:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lwb/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lwb/a;

    .line 1
    iget-object v1, p0, Lwb/a;->a:Ljava/lang/String;

    .line 2
    iget-object v3, p1, Lwb/a;->a:Ljava/lang/String;

    .line 3
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lwb/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lwb/a;->b:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lwb/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lwb/a;->c:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 8
    :cond_4
    iget-object v1, p0, Lwb/a;->d:Ljava/lang/String;

    iget-object v3, p1, Lwb/a;->d:Ljava/lang/String;

    .line 9
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 10
    :cond_5
    iget-wide v3, p0, Lwb/a;->e:J

    iget-wide v5, p1, Lwb/a;->e:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwb/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpirationDate()J
    .locals 2

    iget-wide v0, p0, Lwb/a;->e:J

    return-wide v0
.end method

.method public final getIdTokenString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwb/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwb/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpmID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwb/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lwb/a;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lwb/a;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 4
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lwb/a;->c:Ljava/lang/String;

    .line 6
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 7
    iget-object v1, p0, Lwb/a;->d:Ljava/lang/String;

    .line 8
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 9
    iget-wide v1, p0, Lwb/a;->e:J

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "OIDCAuthCredentialImpl(accessToken="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lwb/a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lwb/a;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", idTokenString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lwb/a;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", upmID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lwb/a;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expirationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-wide v1, p0, Lwb/a;->e:J

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
