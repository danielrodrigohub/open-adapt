.class public final Lh7/o;
.super Le7/x;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le7/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Le7/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Le7/h;

.field public final d:Ll7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll7/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lh7/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/o<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public volatile f:Le7/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/x<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le7/r;Le7/k;Le7/h;Ll7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/r<",
            "TT;>;",
            "Le7/k<",
            "TT;>;",
            "Le7/h;",
            "Ll7/a<",
            "TT;>;",
            "Le7/y;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le7/x;-><init>()V

    .line 2
    new-instance v0, Lh7/o$a;

    invoke-direct {v0}, Lh7/o$a;-><init>()V

    iput-object v0, p0, Lh7/o;->e:Lh7/o$a;

    .line 3
    iput-object p1, p0, Lh7/o;->a:Le7/r;

    .line 4
    iput-object p2, p0, Lh7/o;->b:Le7/k;

    .line 5
    iput-object p3, p0, Lh7/o;->c:Le7/h;

    .line 6
    iput-object p4, p0, Lh7/o;->d:Ll7/a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/o;->b:Le7/k;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lh7/o;->f:Le7/x;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lh7/o;->c:Le7/h;

    iget-object v2, p0, Lh7/o;->d:Ll7/a;

    invoke-virtual {v0, v1, v2}, Le7/h;->g(Le7/y;Ll7/a;)Le7/x;

    move-result-object v0

    iput-object v0, p0, Lh7/o;->f:Le7/x;

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Le7/x;->a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 6
    :try_start_1
    sget-object v2, Lh7/q;->V:Lh7/q$t;

    invoke-virtual {v2, p1}, Lh7/q$t;->a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le7/l;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 7
    new-instance v0, Le7/s;

    invoke-direct {v0, p1}, Le7/s;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 8
    new-instance v0, Le7/m;

    invoke-direct {v0, p1}, Le7/m;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 9
    new-instance v0, Le7/s;

    invoke-direct {v0, p1}, Le7/s;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 10
    sget-object p1, Le7/n;->a:Le7/n;

    .line 11
    :goto_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    instance-of p1, p1, Le7/n;

    if-eqz p1, :cond_2

    return-object v1

    .line 13
    :cond_2
    iget-object p1, p0, Lh7/o;->b:Le7/k;

    iget-object v0, p0, Lh7/o;->d:Ll7/a;

    .line 14
    iget-object v0, v0, Ll7/a;->b:Ljava/lang/reflect/Type;

    .line 15
    invoke-interface {p1}, Le7/k;->deserialize()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    new-instance v0, Le7/s;

    invoke-direct {v0, p1}, Le7/s;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/o;->a:Le7/r;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lh7/o;->f:Le7/x;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lh7/o;->c:Le7/h;

    const/4 v1, 0x0

    iget-object v2, p0, Lh7/o;->d:Ll7/a;

    invoke-virtual {v0, v1, v2}, Le7/h;->g(Le7/y;Ll7/a;)Le7/x;

    move-result-object v0

    iput-object v0, p0, Lh7/o;->f:Le7/x;

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Le7/x;->b(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 6
    :cond_2
    iget-object p2, p0, Lh7/o;->d:Ll7/a;

    .line 7
    iget-object p2, p2, Ll7/a;->b:Ljava/lang/reflect/Type;

    .line 8
    invoke-interface {v0}, Le7/r;->serialize()Le7/l;

    move-result-object p2

    .line 9
    invoke-static {p2, p1}, Lg7/s;->a(Le7/l;Lcom/google/gson/stream/JsonWriter;)V

    return-void
.end method
