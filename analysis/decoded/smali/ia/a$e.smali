.class public final Lia/a$e;
.super Lia/a;
.source "RemoteRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia/a<",
        "Lfd/o;",
        "Lv9/w3;",
        "Lmc/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lia/a$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/a$e;

    invoke-direct {v0}, Lia/a$e;-><init>()V

    sput-object v0, Lia/a$e;->a:Lia/a$e;

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

    const/4 v0, 0x4

    return v0
.end method

.method public final b(Lv9/g;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lv9/w3;

    .line 2
    new-instance v0, Lmc/e0;

    .line 3
    iget-object p1, p1, Lv9/w3;->n:Lea/d;

    .line 4
    iget v1, p1, Lea/d;->h:I

    .line 5
    iget v2, p1, Lea/d;->i:I

    .line 6
    iget v3, p1, Lea/d;->j:I

    .line 7
    iget p1, p1, Lea/d;->k:I

    .line 8
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lmc/e0;-><init>(IIII)V

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    check-cast p1, Lfd/o;

    const-string v0, "<this>"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public final f(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    check-cast p1, Lmc/e0;

    const-string v0, "<this>"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget v1, p1, Lmc/e0;->a:I

    const-string v2, "red"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget v1, p1, Lmc/e0;->b:I

    const-string v2, "green"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget v1, p1, Lmc/e0;->c:I

    const-string v2, "blue"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    iget p1, p1, Lmc/e0;->d:I

    const-string v1, "brightness"

    .line 11
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final k(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    const-string v0, "red"

    const/high16 v1, -0x80000000

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "green"

    .line 2
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "blue"

    .line 3
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "brightness"

    .line 4
    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eq v0, v1, :cond_0

    if-eq v2, v1, :cond_0

    if-eq v3, v1, :cond_0

    if-eq p1, v1, :cond_0

    .line 5
    new-instance v1, Lmc/e0;

    invoke-direct {v1, v0, v2, v3, p1}, Lmc/e0;-><init>(IIII)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
