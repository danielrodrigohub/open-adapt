.class public final Lx8/s;
.super Ljava/lang/Object;
.source "EffectsHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx8/s$a;,
        Lx8/s$b;
    }
.end annotation


# instance fields
.field public final a:Lx8/s$a;

.field public b:I

.field public c:Lcom/nike/adapt/adk/model/AdaptShoeColor;

.field public d:I

.field public e:Ljava/lang/Long;

.field public f:Z


# direct methods
.method public constructor <init>(Lx8/s$a;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8/s;->a:Lx8/s$a;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lx8/s;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V
    .locals 1

    const-string v0, "color"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lx8/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lx8/s;->c:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lx8/s;->c:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    .line 3
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lx8/s;->b:I

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lx8/s;->g(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Lx8/s;->a:Lx8/s$a;

    invoke-virtual {p0}, Lx8/s;->b()Z

    move-result v0

    invoke-interface {p1, v0}, Lx8/s$a;->d(Z)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lx8/s;->d(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lx8/s;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(I)I
    .locals 4

    .line 1
    iget v0, p0, Lx8/s;->d:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lx8/s;->g(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lx8/s;->e:Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int p1, v2

    div-int/lit16 p1, p1, 0x3e8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget v0, p0, Lx8/s;->d:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V
    .locals 1

    const-string v0, "color"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lx8/s;->c:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lx8/s;->c:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    .line 3
    invoke-virtual {p0}, Lx8/s;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 4
    :goto_0
    iput p1, p0, Lx8/s;->b:I

    return-void
.end method

.method public final e(I)V
    .locals 1

    const-string v0, "effectsState"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lx8/s;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lx8/s;->f:Z

    .line 3
    :cond_1
    iput p1, p0, Lx8/s;->b:I

    return-void
.end method

.method public final f(Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getRunningState()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation$AdaptRunningState;

    move-result-object v0

    sget-object v1, Lx8/s$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lx8/s;->g(I)V

    .line 3
    invoke-virtual {p0, v2}, Lx8/s;->e(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->getSecondsRemaining()I

    move-result p1

    invoke-virtual {p0, p1}, Lx8/s;->g(I)V

    .line 5
    invoke-virtual {p0, v1}, Lx8/s;->e(I)V

    :goto_0
    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 1
    iput p1, p0, Lx8/s;->d:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lx8/s;->e:Ljava/lang/Long;

    return-void
.end method
