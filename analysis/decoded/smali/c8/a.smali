.class public final Lc8/a;
.super Ljava/lang/Object;
.source "PermissionsPayload.kt"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "principal"
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "consent"
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation runtime Lf7/b;
        value = "permission"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "adapt"

    .line 2
    iput-object v0, p0, Lc8/a;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lc8/a;->b:Ljava/lang/String;

    const-string p1, "productimprovement:laceenginestats"

    .line 4
    iput-object p1, p0, Lc8/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc8/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc8/a;

    iget-object v1, p0, Lc8/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lc8/a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lc8/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lc8/a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lc8/a;->c:Ljava/lang/String;

    iget-object p1, p1, Lc8/a;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lc8/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc8/a;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lc8/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lc8/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lc8/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lc8/a;->c:Ljava/lang/String;

    const-string v3, "PermissionsPayload(principal="

    const-string v4, ", consent="

    const-string v5, ", permission="

    .line 1
    invoke-static {v3, v0, v4, v1, v5}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 2
    invoke-static {v0, v2, v1}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
