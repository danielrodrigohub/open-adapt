.class public final Lt9/c;
.super Ljava/lang/Object;
.source "ResultFlags.kt"


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lt9/c;ZLqd/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Lt9/c;->b(Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lt9/c;->a:Z

    .line 4
    iput-boolean p1, p0, Lt9/c;->b:Z

    .line 5
    invoke-interface {p2}, Lqd/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt9/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iput-boolean v1, p0, Lt9/c;->a:Z

    goto :goto_0

    .line 3
    :cond_1
    iput-boolean v1, p0, Lt9/c;->b:Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Lt9/c;->c()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lt9/c;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lt9/c;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final d(ZLcom/nike/adapt/adk/Shoe;)V
    .locals 1

    const-string v0, "shoe"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result p2

    if-eqz p2, :cond_0

    iput-boolean p1, p0, Lt9/c;->a:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lt9/c;->b:Z

    :goto_0
    return-void
.end method
