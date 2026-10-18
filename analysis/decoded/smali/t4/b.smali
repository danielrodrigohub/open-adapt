.class public final Lt4/b;
.super Ljava/lang/Object;
.source "BaseUrl.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt4/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lt4/b;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lt4/b;->c:I

    .line 5
    iput p4, p0, Lt4/b;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lt4/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lt4/b;

    .line 3
    iget v1, p0, Lt4/b;->c:I

    iget v3, p1, Lt4/b;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lt4/b;->d:I

    iget v3, p1, Lt4/b;->d:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lt4/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lt4/b;->a:Ljava/lang/String;

    .line 4
    invoke-static {v1, v3}, Lt6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lt4/b;->b:Ljava/lang/String;

    iget-object p1, p1, Lt4/b;->b:Ljava/lang/String;

    .line 5
    invoke-static {v1, p1}, Lt6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lt4/b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lt4/b;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lt4/b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lt4/b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
