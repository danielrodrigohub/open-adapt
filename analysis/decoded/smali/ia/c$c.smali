.class public final Lia/c$c;
.super Lia/c;
.source "RemoteResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia/c<",
        "Lv9/f2;",
        "Lv9/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lia/c$c;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/c$c;

    invoke-direct {v0}, Lia/c$c;-><init>()V

    sput-object v0, Lia/c$c;->a:Lia/c$c;

    const/4 v0, 0x6

    sput v0, Lia/c$c;->b:I

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

    sget v0, Lia/c$c;->b:I

    return v0
.end method

.method public final h(Lorg/json/JSONObject;Lv9/f;)V
    .locals 0

    return-void
.end method

.method public final j(Lorg/json/JSONObject;Lv9/g;)V
    .locals 1

    .line 1
    check-cast p2, Lv9/f2;

    .line 2
    iget-object p2, p2, Lv9/f2;->m:Lv9/e;

    .line 3
    iget-object p2, p2, Lv9/e;->h:Ljava/lang/String;

    const-string v0, "connection_state"

    .line 4
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final l(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final m(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/g;
    .locals 5

    const-string p3, "connection_state"

    .line 1
    invoke-virtual {p0, p1, p3}, Lia/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lv9/e;->values()[Lv9/e;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 4
    iget-object v4, v3, Lv9/e;->h:Ljava/lang/String;

    .line 5
    invoke-static {v4, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_1
    if-eqz v3, :cond_2

    .line 6
    new-instance p3, Lv9/f2;

    invoke-direct {p3, p2, v3}, Lv9/f2;-><init>(Ljava/lang/String;Lv9/e;)V

    :cond_2
    return-object p3
.end method
