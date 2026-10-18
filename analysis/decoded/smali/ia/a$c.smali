.class public final Lia/a$c;
.super Lia/a;
.source "RemoteRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia/a<",
        "Lfd/o;",
        "Lv9/f4;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lia/a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/a$c;

    invoke-direct {v0}, Lia/a$c;-><init>()V

    sput-object v0, Lia/a$c;->a:Lia/a$c;

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

    const/4 v0, 0x2

    return v0
.end method

.method public final b(Lv9/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/f4;

    .line 2
    iget-object p1, p1, Lv9/f4;->n:Lea/i;

    .line 3
    iget-object p1, p1, Lea/i;->i:Lea/h$a;

    .line 4
    iget p1, p1, Lea/h$a;->j:I

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
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
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "percent"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "JSONObject().put(PERCENT, this)"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final k(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2

    const-string v0, "percent"

    const/high16 v1, -0x80000000

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method
