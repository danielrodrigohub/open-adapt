.class public final Lh8/f;
.super Ljava/lang/Exception;
.source "UserDoesNotExistInCacheException.kt"


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "User does not exist in shared preference cache"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lh8/f;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILrd/h;)V
    .locals 0

    const-string p1, "User does not exist in shared preference cache"

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lh8/f;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh8/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh8/f;

    .line 1
    iget-object v1, p0, Lh8/f;->h:Ljava/lang/String;

    .line 2
    iget-object p1, p1, Lh8/f;->h:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh8/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lh8/f;->h:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lh8/f;->h:Ljava/lang/String;

    const-string v1, "UserDoesNotExistInCacheException(message="

    const-string v2, ")"

    .line 2
    invoke-static {v1, v0, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
