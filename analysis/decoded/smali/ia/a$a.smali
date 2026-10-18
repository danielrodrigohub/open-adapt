.class public final Lia/a$a;
.super Lia/a;
.source "RemoteRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lia/a<",
        "Lfd/o;",
        "Lv9/y1;",
        "Lmc/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lia/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lia/a$a;

    invoke-direct {v0}, Lia/a$a;-><init>()V

    sput-object v0, Lia/a$a;->a:Lia/a$a;

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

    const/4 v0, 0x5

    return v0
.end method

.method public final b(Lv9/g;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lv9/y1;

    .line 2
    iget-object v0, p1, Lv9/y1;->n:Lba/e;

    .line 3
    iget v0, v0, Lba/e;->h:I

    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Lq/g;->b(I)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, v1, v2

    .line 6
    invoke-static {v4}, Lca/a;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v6, p1, Lv9/y1;->n:Lba/e;

    .line 8
    iget-object v6, v6, Lba/e;->i:Lba/e$b;

    .line 9
    iget-object v6, v6, Lba/e$b;->h:Ljava/lang/String;

    .line 10
    invoke-static {v5, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    new-instance p1, Lmc/c;

    invoke-direct {p1, v0, v4}, Lmc/c;-><init>(II)V

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Array contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
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
    check-cast p1, Lmc/c;

    const-string v0, "<this>"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget v1, p1, Lmc/c;->h:I

    const-string v2, "percent"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget p1, p1, Lmc/c;->i:I

    .line 7
    invoke-static {p1}, Lca/a;->a(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "state"

    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final k(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8

    const-string v0, "state"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    .line 2
    invoke-static {v2}, Lq/g;->b(I)[I

    move-result-object v2

    .line 3
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, v2, v5

    .line 4
    invoke-static {v6}, Lca/a;->a(I)Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-static {v7, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/high16 v0, -0x80000000

    const-string v2, "percent"

    .line 6
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz v4, :cond_2

    if-eq p1, v0, :cond_2

    .line 7
    new-instance v1, Lmc/c;

    invoke-direct {v1, p1, v4}, Lmc/c;-><init>(II)V

    :cond_2
    return-object v1
.end method
