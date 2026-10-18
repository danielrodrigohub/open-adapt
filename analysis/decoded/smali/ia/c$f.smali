.class public final Lia/c$f;
.super Lia/c;
.source "RemoteResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia/c<",
        "Lv9/w4;",
        "Lv9/u4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lia/c$f;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/c$f;

    invoke-direct {v0}, Lia/c$f;-><init>()V

    sput-object v0, Lia/c$f;->a:Lia/c$f;

    const/4 v0, 0x1

    sput v0, Lia/c$f;->b:I

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

    sget v0, Lia/c$f;->b:I

    return v0
.end method

.method public final h(Lorg/json/JSONObject;Lv9/f;)V
    .locals 0

    .line 1
    check-cast p2, Lv9/u4;

    .line 2
    invoke-virtual {p2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lia/c;->k(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public final j(Lorg/json/JSONObject;Lv9/g;)V
    .locals 0

    check-cast p2, Lv9/w4;

    return-void
.end method

.method public final l(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/f;
    .locals 1

    invoke-virtual {p0, p1}, Lia/c;->c(Lorg/json/JSONObject;)Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lv9/u4;

    invoke-direct {v0, p2, p3, p1}, Lv9/u4;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/g;
    .locals 0

    new-instance p1, Lv9/w4;

    invoke-direct {p1, p2, p3}, Lv9/w4;-><init>(Ljava/lang/String;Lv9/a;)V

    return-object p1
.end method
