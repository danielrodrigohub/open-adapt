.class public final Lh7/q$t;
.super Le7/x;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh7/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le7/x<",
        "Le7/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le7/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lh7/f;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lh7/f;

    .line 3
    invoke-virtual {p1}, Lh7/f;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lh7/f;->Y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le7/l;

    .line 6
    invoke-virtual {p1}, Lh7/f;->skipValue()V

    goto/16 :goto_4

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " when reading a JsonElement."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lh7/q$t;->d(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Le7/l;

    move-result-object v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0, p1, v0}, Lh7/q$t;->c(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Le7/l;

    move-result-object v0

    goto :goto_4

    .line 11
    :cond_2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 12
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    .line 13
    instance-of v3, v1, Le7/o;

    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    .line 16
    invoke-virtual {p0, p1, v3}, Lh7/q$t;->d(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Le7/l;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-nez v4, :cond_6

    .line 17
    invoke-virtual {p0, p1, v3}, Lh7/q$t;->c(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Le7/l;

    move-result-object v4

    .line 18
    :cond_6
    instance-of v3, v1, Le7/j;

    if-eqz v3, :cond_7

    .line 19
    move-object v2, v1

    check-cast v2, Le7/j;

    .line 20
    iget-object v2, v2, Le7/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_7
    move-object v3, v1

    check-cast v3, Le7/o;

    .line 22
    iget-object v3, v3, Le7/o;->a:Lg7/p;

    invoke-virtual {v3, v2, v4}, Lg7/p;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v5, :cond_3

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_0

    .line 24
    :cond_8
    instance-of v2, v1, Le7/j;

    if-eqz v2, :cond_9

    .line 25
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_3

    .line 26
    :cond_9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 27
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v0, v1

    :goto_4
    return-object v0

    .line 28
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le7/l;

    goto :goto_0
.end method

.method public final bridge synthetic b(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Le7/l;

    invoke-virtual {p0, p1, p2}, Lh7/q$t;->e(Lcom/google/gson/stream/JsonWriter;Le7/l;)V

    return-void
.end method

.method public final c(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Le7/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lh7/q$w;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 3
    sget-object p1, Le7/n;->a:Le7/n;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p2, Le7/q;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, p1}, Le7/q;-><init>(Ljava/lang/Boolean;)V

    return-object p2

    .line 6
    :cond_2
    new-instance p2, Le7/q;

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Le7/q;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Le7/q;

    new-instance v0, Lg7/o;

    invoke-direct {v0, p1}, Lg7/o;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0}, Le7/q;-><init>(Ljava/lang/Number;)V

    return-object p2
.end method

.method public final d(Lcom/google/gson/stream/JsonReader;Lcom/google/gson/stream/JsonToken;)Le7/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lh7/q$w;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 3
    new-instance p1, Le7/o;

    invoke-direct {p1}, Le7/o;-><init>()V

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 5
    new-instance p1, Le7/j;

    invoke-direct {p1}, Le7/j;-><init>()V

    return-object p1
.end method

.method public final e(Lcom/google/gson/stream/JsonWriter;Le7/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_d

    .line 1
    instance-of v0, p2, Le7/n;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    instance-of v0, p2, Le7/q;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Le7/l;->h()Le7/q;

    move-result-object p2

    .line 4
    iget-object v0, p2, Le7/q;->a:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p2}, Le7/q;->l()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_4

    .line 6
    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Le7/q;->k()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_4

    .line 8
    :cond_2
    invoke-virtual {p2}, Le7/q;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_4

    .line 9
    :cond_3
    instance-of v0, p2, Le7/j;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    if-eqz v0, :cond_5

    .line 11
    check-cast p2, Le7/j;

    .line 12
    invoke-virtual {p2}, Le7/j;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le7/l;

    .line 13
    invoke-virtual {p0, p1, v0}, Lh7/q$t;->e(Lcom/google/gson/stream/JsonWriter;Le7/l;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_4

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_6
    instance-of v0, p2, Le7/o;

    if-eqz v0, :cond_c

    .line 17
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    if-eqz v0, :cond_b

    .line 18
    check-cast p2, Le7/o;

    .line 19
    iget-object p2, p2, Le7/o;->a:Lg7/p;

    invoke-virtual {p2}, Lg7/p;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 20
    check-cast p2, Lg7/p$b;

    .line 21
    iget-object p2, p2, Lg7/p$b;->h:Lg7/p;

    .line 22
    iget-object v0, p2, Lg7/p;->l:Lg7/p$e;

    iget-object v0, v0, Lg7/p$e;->k:Lg7/p$e;

    .line 23
    iget v1, p2, Lg7/p;->k:I

    .line 24
    :goto_1
    iget-object v2, p2, Lg7/p;->l:Lg7/p$e;

    if-eq v0, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_a

    if-eq v0, v2, :cond_9

    .line 25
    iget v2, p2, Lg7/p;->k:I

    if-ne v2, v1, :cond_8

    .line 26
    iget-object v2, v0, Lg7/p$e;->k:Lg7/p$e;

    .line 27
    iget-object v3, v0, Lg7/p$e;->m:Ljava/lang/Object;

    .line 28
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 29
    iget-object v0, v0, Lg7/p$e;->n:Ljava/lang/Object;

    .line 30
    check-cast v0, Le7/l;

    invoke-virtual {p0, p1, v0}, Lh7/q$t;->e(Lcom/google/gson/stream/JsonWriter;Le7/l;)V

    move-object v0, v2

    goto :goto_1

    .line 31
    :cond_8
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 32
    :cond_9
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 33
    :cond_a
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto :goto_4

    .line 34
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a JSON Object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Couldn\'t write "

    .line 36
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_d
    :goto_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    :goto_4
    return-void
.end method
