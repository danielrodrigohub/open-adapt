.class public final Lia/c$g;
.super Lia/c;
.source "RemoteResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia/c<",
        "Lv9/w3;",
        "Lv9/u3;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lia/c$g;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/c$g;

    invoke-direct {v0}, Lia/c$g;-><init>()V

    sput-object v0, Lia/c$g;->a:Lia/c$g;

    const/4 v0, 0x4

    sput v0, Lia/c$g;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lia/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()I
    .locals 1

    sget v0, Lia/c$g;->b:I

    return v0
.end method

.method public final h(Lorg/json/JSONObject;Lv9/f;)V
    .locals 0

    .line 1
    check-cast p2, Lv9/u3;

    .line 2
    invoke-virtual {p2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lia/c;->k(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public final j(Lorg/json/JSONObject;Lv9/g;)V
    .locals 2

    .line 1
    check-cast p2, Lv9/w3;

    .line 2
    iget-object v0, p2, Lv9/w3;->n:Lea/d;

    .line 3
    iget v0, v0, Lea/d;->h:I

    const-string v1, "red"

    .line 4
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget-object v0, p2, Lv9/w3;->n:Lea/d;

    .line 6
    iget v0, v0, Lea/d;->i:I

    const-string v1, "green"

    .line 7
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget-object v0, p2, Lv9/w3;->n:Lea/d;

    .line 9
    iget v0, v0, Lea/d;->j:I

    const-string v1, "blue"

    .line 10
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    iget-object p2, p2, Lv9/w3;->n:Lea/d;

    .line 12
    iget p2, p2, Lea/d;->k:I

    .line 13
    invoke-static {p2}, Lq/g;->a(I)I

    move-result p2

    const-string v0, "brightness"

    .line 14
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method

.method public final l(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/f;
    .locals 1

    invoke-virtual {p0, p1}, Lia/c;->c(Lorg/json/JSONObject;)Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lv9/u3;

    invoke-direct {v0, p2, p3, p1}, Lv9/u3;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/g;
    .locals 12

    const-string v0, "red"

    .line 1
    invoke-virtual {p0, p1, v0}, Lia/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "green"

    .line 2
    invoke-virtual {p0, p1, v1}, Lia/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "blue"

    .line 3
    invoke-virtual {p0, p1, v2}, Lia/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "brightness"

    .line 4
    invoke-virtual {p0, p1, v3}, Lia/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 5
    new-instance v3, Lv9/w3;

    .line 6
    new-instance v4, Lea/d;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v5, 0x5

    .line 11
    invoke-static {v5}, Lq/g;->b(I)[I

    move-result-object v6

    .line 12
    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    aget v10, v6, v9

    .line 13
    invoke-static {v10}, Lq/g;->a(I)I

    move-result v11

    if-ne v11, p1, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    move v11, v8

    :goto_1
    if-eqz v11, :cond_1

    move v8, v10

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    move v5, v8

    .line 14
    :goto_3
    invoke-direct {v4, v0, v1, v2, v5}, Lea/d;-><init>(IIII)V

    .line 15
    invoke-direct {v3, p2, p3, v4}, Lv9/w3;-><init>(Ljava/lang/String;Lv9/a;Lea/d;)V

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    return-object v3
.end method
