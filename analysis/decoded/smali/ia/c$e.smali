.class public final Lia/c$e;
.super Lia/c;
.source "RemoteResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia/c<",
        "Lv9/n4;",
        "Lv9/m4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lia/c$e;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/c$e;

    invoke-direct {v0}, Lia/c$e;-><init>()V

    sput-object v0, Lia/c$e;->a:Lia/c$e;

    const/4 v0, 0x5

    sput v0, Lia/c$e;->b:I

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

    sget v0, Lia/c$e;->b:I

    return v0
.end method

.method public final h(Lorg/json/JSONObject;Lv9/f;)V
    .locals 1

    .line 1
    check-cast p2, Lv9/m4;

    .line 2
    invoke-virtual {p2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "message"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final j(Lorg/json/JSONObject;Lv9/g;)V
    .locals 1

    .line 1
    check-cast p2, Lv9/n4;

    .line 2
    iget-object p2, p2, Lv9/n4;->m:Lea/i;

    .line 3
    iget-object p2, p2, Lea/i;->i:Lea/h$a;

    const-string v0, "percent"

    .line 4
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final l(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/f;
    .locals 2

    const-string v0, "message"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lv9/m4;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p2, p3, v1}, Lv9/m4;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final m(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/g;
    .locals 3

    const-string p3, "percent"

    const/high16 v0, -0x80000000

    .line 1
    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lia/c;->b(Ljava/lang/String;)Lea/b;

    move-result-object p3

    if-nez p3, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Lv9/n4;

    .line 4
    new-instance v1, Lea/i;

    new-instance v2, Lea/h$a;

    invoke-direct {v2, p1}, Lea/h$a;-><init>(I)V

    .line 5
    iget p1, p3, Lea/b;->m:I

    .line 6
    invoke-direct {v1, v2, p1}, Lea/i;-><init>(Lea/h$a;I)V

    .line 7
    invoke-direct {v0, p2, v1}, Lv9/n4;-><init>(Ljava/lang/String;Lea/i;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method
