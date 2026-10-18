.class public final Lcom/nike/adapt/adk/AdaptEventResponderKt;
.super Ljava/lang/Object;
.source "AdaptEventResponder.kt"


# direct methods
.method public static final block(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;Li8/d;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reqId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/nike/adapt/adk/AdaptConnectionStatusResult;->getEventUUID()Li8/d;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Li8/d;Li8/d;)Z

    move-result p0

    return p0
.end method

.method public static final block(Lcom/nike/adapt/adk/DeviceControllerErrorResult;Li8/d;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reqId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceControllerErrorResult;->getEventUUID()Li8/d;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Li8/d;Li8/d;)Z

    move-result p0

    return p0
.end method

.method public static final block(Lcom/nike/adapt/adk/DeviceControllerResult;Li8/d;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reqId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/nike/adapt/adk/DeviceControllerResult;->getEventUUID()Li8/d;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/nike/adapt/adk/AdaptEventResponderKt;->block(Li8/d;Li8/d;)Z

    move-result p0

    return p0
.end method

.method private static final block(Li8/d;Li8/d;)Z
    .locals 2

    .line 4
    invoke-static {}, Lw7/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object p0, p0, Li8/d;->i:Ljava/util/UUID;

    iget-object p1, p1, Li8/d;->i:Ljava/util/UUID;

    .line 6
    invoke-static {p0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method
