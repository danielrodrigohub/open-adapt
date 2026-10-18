.class public final Lg7/c;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lg7/q;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lva/a;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "update"

    .line 2
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 p0, 0x0

    const-string v1, "version"

    .line 3
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "null"

    if-eqz v1, :cond_1

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, p0

    :goto_1
    const/4 v1, 0x0

    const-string v5, "beta"

    .line 4
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "forceUpdate"

    .line 5
    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "md5"

    .line 6
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v1

    goto :goto_3

    :cond_3
    :goto_2
    move-object v7, p0

    :goto_3
    const-string v1, "url"

    .line 7
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move-object p0, v0

    .line 8
    :cond_5
    :goto_4
    new-instance v0, Lva/a;

    move-object v1, v0

    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lva/a;-><init>(ZLjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x21

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 3
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 4
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p3, :cond_0

    .line 5
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 6
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p0, p1, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static c(Ljava/util/Map;Ljava/lang/String;)J
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0
.end method

.method public static final d(Landroid/app/Activity;)Z
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lo7/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.nike.authcomponent.oidc"

    .line 3
    invoke-static {p0, v0, v1}, Lyd/o;->g0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final e(Lcom/nike/adapt/adk/AdaptConnectionStatusResult;)Lt9/d;
    .locals 3

    sget-object v0, Lt9/d;->i:Lt9/d;

    sget-object v1, Lt9/d;->j:Lt9/d;

    const-string v2, "result"

    invoke-static {p0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v2, p0, Lcom/nike/adapt/adk/DeviceFoundAndReadyToConnect;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    instance-of v2, p0, Lcom/nike/adapt/adk/ConnectingToPair;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p0, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    if-eqz v0, :cond_2

    sget-object v0, Lt9/d;->h:Lt9/d;

    goto :goto_1

    .line 4
    :cond_2
    instance-of v0, p0, Lcom/nike/adapt/adk/Disconnected;

    if-eqz v0, :cond_3

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 5
    :cond_3
    instance-of v0, p0, Lcom/nike/adapt/adk/NotInitiated;

    if-eqz v0, :cond_4

    goto :goto_0

    .line 6
    :cond_4
    instance-of v0, p0, Lcom/nike/adapt/adk/AuthFailure;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    instance-of p0, p0, Lcom/nike/adapt/adk/BLEConnectionError;

    if-eqz p0, :cond_6

    goto :goto_0

    :goto_1
    return-object v0

    :cond_6
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0
.end method

.method public static f(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .locals 10

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    .line 2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 3
    invoke-virtual {v5}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 6
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static final g(II)I
    .locals 1

    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Lp4/h;->l(II)I

    move-result p0

    return p0
.end method

.method public static final h(JJ)I
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final i(Lt9/d;Lt9/d;)Lt9/d;
    .locals 3

    sget-object v0, Lt9/d;->j:Lt9/d;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "andWith"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lt9/d;->h:Lt9/d;

    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2
    :cond_0
    sget-object v2, Lt9/d;->i:Lt9/d;

    if-ne p0, v2, :cond_1

    if-eq p1, v2, :cond_7

    :cond_1
    if-ne p0, v1, :cond_2

    if-eq p1, v2, :cond_7

    :cond_2
    if-ne p0, v2, :cond_3

    if-eq p1, v1, :cond_7

    :cond_3
    if-ne p0, v1, :cond_4

    if-eq p1, v0, :cond_7

    :cond_4
    if-ne p0, v2, :cond_5

    if-eq p1, v0, :cond_7

    :cond_5
    if-ne p0, v0, :cond_6

    if-eq p1, v1, :cond_7

    :cond_6
    if-ne p0, v0, :cond_8

    if-ne p1, v2, :cond_8

    :cond_7
    move-object v0, v2

    :cond_8
    :goto_0
    return-object v0
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
