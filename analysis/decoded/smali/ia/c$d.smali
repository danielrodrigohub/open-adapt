.class public final Lia/c$d;
.super Lia/c;
.source "RemoteResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia/c<",
        "Lv9/f4;",
        "Lv9/d4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lia/c$d;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/c$d;

    invoke-direct {v0}, Lia/c$d;-><init>()V

    sput-object v0, Lia/c$d;->a:Lia/c$d;

    const/4 v0, 0x2

    sput v0, Lia/c$d;->b:I

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

    sget v0, Lia/c$d;->b:I

    return v0
.end method

.method public final h(Lorg/json/JSONObject;Lv9/f;)V
    .locals 0

    .line 1
    check-cast p2, Lv9/d4;

    .line 2
    invoke-virtual {p2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lia/c;->k(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public final j(Lorg/json/JSONObject;Lv9/g;)V
    .locals 1

    .line 1
    check-cast p2, Lv9/f4;

    .line 2
    iget-object p2, p2, Lv9/f4;->n:Lea/i;

    .line 3
    iget-object p2, p2, Lea/i;->i:Lea/h$a;

    const-string v0, "percent"

    .line 4
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final l(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/f;
    .locals 1

    invoke-virtual {p0, p1}, Lia/c;->c(Lorg/json/JSONObject;)Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lv9/d4;

    invoke-direct {v0, p2, p3, p1}, Lv9/d4;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/g;
    .locals 4

    const-string v0, "percent"

    .line 1
    invoke-virtual {p0, p1, v0}, Lia/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 3
    sget-object v0, Lia/c$d;->a:Lia/c$d;

    invoke-virtual {v0, p2}, Lia/c;->b(Ljava/lang/String;)Lea/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lv9/f4;

    .line 5
    new-instance v2, Lea/i;

    new-instance v3, Lea/h$a;

    invoke-direct {v3, p1}, Lea/h$a;-><init>(I)V

    .line 6
    iget p1, v0, Lea/b;->m:I

    .line 7
    invoke-direct {v2, v3, p1}, Lea/i;-><init>(Lea/h$a;I)V

    .line 8
    invoke-direct {v1, p2, p3, v2}, Lv9/f4;-><init>(Ljava/lang/String;Lv9/a;Lea/i;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method
