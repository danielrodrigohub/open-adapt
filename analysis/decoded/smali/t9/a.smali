.class public final Lt9/a;
.super Ljava/lang/Object;
.source "SimpleAdaptConnectionState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/a$a;
    }
.end annotation


# instance fields
.field public a:Lt9/d;

.field public b:Lt9/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lt9/d;->j:Lt9/d;

    iput-object v0, p0, Lt9/a;->a:Lt9/d;

    .line 3
    iput-object v0, p0, Lt9/a;->b:Lt9/d;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lt9/a;->a:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/a;->b:Lt9/d;

    invoke-virtual {v0}, Lt9/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v1, Lt9/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lg7/c;->e(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)Lt9/d;

    move-result-object v0

    iput-object v0, p0, Lt9/a;->a:Lt9/d;

    .line 3
    invoke-static {p1}, Lg7/c;->e(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)Lt9/d;

    move-result-object p1

    iput-object p1, p0, Lt9/a;->b:Lt9/d;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1}, Lg7/c;->e(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)Lt9/d;

    move-result-object p1

    iput-object p1, p0, Lt9/a;->b:Lt9/d;

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {p1}, Lg7/c;->e(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)Lt9/d;

    move-result-object p1

    iput-object p1, p0, Lt9/a;->a:Lt9/d;

    :goto_0
    return-void
.end method
