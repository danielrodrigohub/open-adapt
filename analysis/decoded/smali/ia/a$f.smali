.class public final Lia/a$f;
.super Lia/a;
.source "RemoteRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia/a<",
        "Loc/d;",
        "Lv9/z3;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lia/a$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/a$f;

    invoke-direct {v0}, Lia/a$f;-><init>()V

    sput-object v0, Lia/a$f;->a:Lia/a$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lia/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final b(Lv9/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/z3;

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    check-cast p1, Loc/d;

    const-string v0, "<this>"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget v1, p1, Loc/d;->a:I

    const-string v2, "red"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget v1, p1, Loc/d;->b:I

    const-string v2, "green"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget v1, p1, Loc/d;->c:I

    const-string v2, "blue"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    iget p1, p1, Loc/d;->d:I

    .line 11
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    const-string v1, "brightness"

    .line 12
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "success"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "JSONObject().put(SUCCESS, this)"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "red"

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "green"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "blue"

    .line 4
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "brightness"

    .line 5
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq p1, v1, :cond_2

    if-eq v2, v1, :cond_2

    if-eq v3, v1, :cond_2

    if-eq v0, v1, :cond_2

    .line 6
    new-instance v1, Loc/d;

    const/4 v4, 0x5

    .line 7
    invoke-static {v4}, Lq/g;->b(I)[I

    move-result-object v5

    .line 8
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    .line 9
    invoke-static {v8}, Lq/g;->a(I)I

    move-result v9

    if-ne v9, v0, :cond_0

    move v4, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10
    :cond_1
    :goto_1
    invoke-direct {v1, p1, v2, v3, v4}, Loc/d;-><init>(IIII)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method public final k(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
