.class public final Lec/b;
.super Ljava/lang/Object;
.source "TelemetryExt.kt"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;
    .locals 4

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p0, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    move-object p1, v1

    :cond_1
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_2

    move-object p2, v1

    :cond_2
    and-int/lit8 p4, p4, 0x10

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    move p3, v0

    :cond_3
    const/4 p4, 0x4

    new-array p4, p4, [Lfd/e;

    .line 1
    sget-object v1, Led/a;->c:Led/a;

    .line 2
    new-instance v2, Lfd/e;

    const-string v3, "consumer"

    invoke-direct {v2, v1, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p4, v0

    .line 3
    sget-object v0, Led/a;->g:Led/a;

    .line 4
    new-instance v1, Lfd/e;

    const-string v2, "oidc"

    invoke-direct {v1, v0, v2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    aput-object v1, p4, v0

    .line 5
    sget-object v0, Led/a;->e:Led/a;

    .line 6
    new-instance v1, Lfd/e;

    const-string v2, "OIDCAuthComponent"

    invoke-direct {v1, v0, v2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    aput-object v1, p4, v0

    const/4 v0, 0x3

    .line 7
    sget-object v1, Led/a;->f:Led/a;

    .line 8
    new-instance v2, Lfd/e;

    const-string v3, "0.13.0"

    invoke-direct {v2, v1, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p4, v0

    .line 9
    invoke-static {p4}, Lgd/z;->A([Lfd/e;)Ljava/util/Map;

    move-result-object p4

    if-nez p0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    sget-object v0, Led/a;->d:Led/a;

    .line 11
    invoke-interface {p4, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-nez p1, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    .line 13
    sget-object v0, Led/a;->i:Led/a;

    .line 14
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "expirationDate"

    .line 16
    invoke-static {p1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "singletonMap(pair.first, pair.second)"

    invoke-static {p0, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 18
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "JSONObject(\n                mapOf(AttributeKeys.EXPIRATION_DATE to it)\n            ).toString()"

    invoke-static {p0, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p4, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-nez p2, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 21
    sget-object p1, Led/a;->h:Led/a;

    .line 22
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-nez p3, :cond_7

    goto :goto_3

    .line 23
    :cond_7
    sget-object p0, Led/a;->i:Led/a;

    .line 24
    invoke-static {p3}, Lfa/m;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-object p4
.end method

.method public static final b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lob/e;

    if-eqz v0, :cond_0

    check-cast p0, Lob/e;

    .line 2
    iget-object p0, p0, Lob/e;->h:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final c(Ljava/lang/Throwable;)Ljava/lang/Integer;
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    iget v0, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 p0, 0x190

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Lretrofit2/HttpException;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lretrofit2/HttpException;

    invoke-virtual {p0}, Lretrofit2/HttpException;->code()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final d(Led/e;Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Led/b;

    const-string v1, "Revoke refresh token failed with error: "

    .line 2
    invoke-static {v1, p1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {p1}, Lec/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lec/b;->c(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x16

    .line 5
    invoke-static {v1, v2, p1, v3, v5}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v5

    .line 6
    sget-object p1, Lec/a;->a:Lec/a;

    const/4 v1, 0x3

    new-array v1, v1, [Led/d;

    .line 7
    sget-object v2, Lec/a;->e:Led/d;

    aput-object v2, v1, v3

    .line 8
    sget-object v2, Lec/a;->f:Led/d;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 9
    sget-object v2, Lec/a;->g:Led/d;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 10
    invoke-static {v1}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const/4 v2, 0x4

    const-string v3, "Revoke_Refresh_Token_Failed"

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v6}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 12
    invoke-interface {p0, v0}, Led/e;->b(Landroid/support/v4/media/a;)V

    return-void
.end method

.method public static final e(Led/e;Lob/e;)V
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lob/e$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Led/b;

    const/4 v7, 0x3

    const/16 v0, 0x1f

    .line 3
    invoke-static {v2, v2, v2, v1, v0}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v10

    .line 4
    sget-object v0, Lec/a;->a:Lec/a;

    new-array v2, v3, [Led/d;

    .line 5
    sget-object v3, Lec/a;->d:Led/d;

    aput-object v3, v2, v1

    .line 6
    sget-object v1, Lec/a;->e:Led/d;

    aput-object v1, v2, v5

    .line 7
    sget-object v1, Lec/a;->h:Led/d;

    aput-object v1, v2, v4

    .line 8
    invoke-static {v2}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    const-string v8, "Sign_In_Cancelled"

    const-string v9, "User cancelled sign in"

    move-object v6, p1

    .line 9
    invoke-direct/range {v6 .. v11}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 10
    invoke-interface {p0, p1}, Led/e;->b(Landroid/support/v4/media/a;)V

    goto/16 :goto_1

    .line 11
    :cond_0
    instance-of v0, p1, Lob/e$a;

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Led/b;

    const/4 v7, 0x5

    .line 13
    iget-object p1, p1, Lob/e;->h:Ljava/lang/String;

    const/16 v3, 0x1e

    .line 14
    invoke-static {p1, v2, v2, v1, v3}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v10

    .line 15
    sget-object p1, Lec/a;->a:Lec/a;

    new-array v2, v4, [Led/d;

    .line 16
    sget-object v3, Lec/a;->f:Led/d;

    aput-object v3, v2, v1

    .line 17
    sget-object v1, Lec/a;->h:Led/d;

    aput-object v1, v2, v5

    .line 18
    invoke-static {v2}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    const-string v8, "Browser_Not_Found"

    const-string v9, "Unable to start authorization flow due to a browser not being found on the device."

    move-object v6, v0

    .line 19
    invoke-direct/range {v6 .. v11}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 20
    invoke-interface {p0, v0}, Led/e;->b(Landroid/support/v4/media/a;)V

    goto :goto_1

    .line 21
    :cond_1
    new-instance v0, Led/b;

    const/4 v6, 0x4

    const-string v7, "User sign in failed with error: "

    .line 22
    invoke-static {v7, p1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 23
    iget-object v8, p1, Lob/e;->h:Ljava/lang/String;

    .line 24
    iget-object p1, p1, Lob/e;->i:Ljava/lang/Throwable;

    if-nez p1, :cond_2

    move-object p1, v2

    goto :goto_0

    .line 25
    :cond_2
    invoke-static {p1}, Lec/b;->c(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const/16 v9, 0x16

    .line 26
    invoke-static {v8, v2, p1, v1, v9}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object p1

    .line 27
    sget-object v2, Lec/a;->a:Lec/a;

    new-array v3, v3, [Led/d;

    .line 28
    sget-object v8, Lec/a;->e:Led/d;

    aput-object v8, v3, v1

    .line 29
    sget-object v1, Lec/a;->f:Led/d;

    aput-object v1, v3, v5

    .line 30
    sget-object v1, Lec/a;->h:Led/d;

    aput-object v1, v3, v4

    .line 31
    invoke-static {v3}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    const-string v3, "Sign_In_Failed"

    move-object v1, v0

    move v2, v6

    move-object v4, v7

    move-object v5, p1

    move-object v6, v8

    .line 32
    invoke-direct/range {v1 .. v6}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 33
    invoke-interface {p0, v0}, Led/e;->b(Landroid/support/v4/media/a;)V

    :goto_1
    return-void
.end method

.method public static final f(Led/e;Lob/b;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Led/b;

    .line 2
    invoke-interface {p1}, Lob/b;->getExpirationDate()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1d

    invoke-static {v1, p1, v1, v2, v3}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v5

    .line 3
    sget-object p1, Lec/a;->a:Lec/a;

    const/4 v1, 0x2

    new-array v1, v1, [Led/d;

    .line 4
    sget-object v3, Lec/a;->e:Led/d;

    aput-object v3, v1, v2

    .line 5
    sget-object v2, Lec/a;->h:Led/d;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 6
    invoke-static {v1}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const/4 v2, 0x3

    const-string v3, "Sign_In_Succeeded"

    const-string v4, "User successfully signed in"

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v6}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 8
    invoke-interface {p0, v0}, Led/e;->b(Landroid/support/v4/media/a;)V

    return-void
.end method
