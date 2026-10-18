.class public final Lia/c$a;
.super Lia/c;
.source "RemoteResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia/c<",
        "Lv9/y1;",
        "Lv9/w1;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lia/c$a;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/c$a;

    invoke-direct {v0}, Lia/c$a;-><init>()V

    sput-object v0, Lia/c$a;->a:Lia/c$a;

    const/16 v0, 0x8

    sput v0, Lia/c$a;->b:I

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

    sget v0, Lia/c$a;->b:I

    return v0
.end method

.method public final h(Lorg/json/JSONObject;Lv9/f;)V
    .locals 0

    .line 1
    check-cast p2, Lv9/w1;

    .line 2
    invoke-virtual {p2}, Lv9/f;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lia/c;->k(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public final j(Lorg/json/JSONObject;Lv9/g;)V
    .locals 2

    .line 1
    check-cast p2, Lv9/y1;

    .line 2
    iget-object v0, p2, Lv9/y1;->n:Lba/e;

    .line 3
    iget v0, v0, Lba/e;->h:I

    const-string v1, "percent"

    .line 4
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5
    iget-object p2, p2, Lv9/y1;->n:Lba/e;

    .line 6
    iget-object p2, p2, Lba/e;->i:Lba/e$b;

    const-string v0, "state"

    .line 7
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public final l(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/f;
    .locals 1

    invoke-virtual {p0, p1}, Lia/c;->c(Lorg/json/JSONObject;)Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lv9/w1;

    invoke-direct {v0, p2, p3, p1}, Lv9/w1;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final m(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/g;
    .locals 9

    const-string v0, "percent"

    .line 1
    invoke-virtual {p0, p1, v0}, Lia/c;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    invoke-static {}, Lba/e$b;->values()[Lba/e$b;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 4
    iget-object v6, v5, Lba/e$b;->h:Ljava/lang/String;

    .line 5
    sget-object v7, Lia/c$a;->a:Lia/c$a;

    const-string v8, "state"

    invoke-virtual {v7, p1, v8}, Lia/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 6
    new-instance v4, Lv9/y1;

    .line 7
    new-instance p1, Lba/e;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0, v5}, Lba/e;-><init>(ILba/e$b;)V

    .line 8
    invoke-direct {v4, p2, p3, p1}, Lv9/y1;-><init>(Ljava/lang/String;Lv9/a;Lba/e;)V

    :cond_2
    return-object v4
.end method
