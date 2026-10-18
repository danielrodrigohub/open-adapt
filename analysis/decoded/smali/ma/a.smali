.class public final Lma/a;
.super Ljava/lang/Object;
.source "AdaptKitAuthProvider.kt"


# instance fields
.field public final a:Lv9/c;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lv9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lma/a;->a:Lv9/c;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lma/a;->a:Lv9/c;

    invoke-interface {v0}, Lv9/c;->d()Lqd/a;

    move-result-object v0

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    sget-object v1, Lv9/t;->a:Lv9/t;

    .line 3
    sget-object v1, Lv9/t;->i:Leb/f;

    .line 4
    invoke-virtual {v1, v0}, Leb/f;->b(Ljava/lang/String;)V

    .line 5
    iput-object v0, p0, Lma/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lv9/t;->a:Lv9/t;

    .line 2
    sget-object v1, Lv9/t;->i:Leb/f;

    .line 3
    invoke-virtual {v1, v0}, Leb/f;->b(Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Lma/a;->b:Ljava/lang/String;

    goto :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Lma/a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lma/a;->a()Ljava/lang/String;

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lma/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lma/a;->a()Ljava/lang/String;

    .line 7
    :cond_4
    :goto_2
    iput-object p1, p0, Lma/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lma/a;->a:Lv9/c;

    invoke-interface {v0}, Lv9/c;->a()Lqd/a;

    move-result-object v0

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p0, v0}, Lma/a;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lma/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lma/a;

    iget-object v1, p0, Lma/a;->a:Lv9/c;

    iget-object p1, p1, Lma/a;->a:Lv9/c;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lma/a;->a:Lv9/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lma/a;->a:Lv9/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdaptKitAuthProvider(clientAuthProvider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
