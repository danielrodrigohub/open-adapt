.class public Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;
.super Lcom/newrelic/agent/android/stores/SharedPrefsStore;
.source "SharedPrefsPayloadStore.java"

# interfaces
.implements Lcom/newrelic/agent/android/payload/PayloadStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/newrelic/agent/android/stores/SharedPrefsStore;",
        "Lcom/newrelic/agent/android/payload/PayloadStore<",
        "Lcom/newrelic/agent/android/payload/Payload;",
        ">;"
    }
.end annotation


# static fields
.field public static final STORE_FILE:Ljava/lang/String; = "NRPayloadStore"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "NRPayloadStore"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private toJsonString(Lcom/newrelic/agent/android/payload/Payload;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/Payload;->asJsonMeta()Ljava/lang/String;

    move-result-object v1

    const-string v2, "payload"

    invoke-virtual {v0, v2, v1}, Lcom/newrelic/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->encodePayload(Lcom/newrelic/agent/android/payload/Payload;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "encodedPayload"

    invoke-virtual {v0, v1, p1}, Lcom/newrelic/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decodePayload(Ljava/lang/String;)[B
    .locals 0

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->decodeStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public decodePayloadToString([B)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->decodeBytesToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public delete(Lcom/newrelic/agent/android/payload/Payload;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/Payload;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/newrelic/agent/android/payload/Payload;

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->delete(Lcom/newrelic/agent/android/payload/Payload;)V

    return-void
.end method

.method public encodePayload(Lcom/newrelic/agent/android/payload/Payload;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/Payload;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->encodeBytes([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fetchAll()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/newrelic/agent/android/payload/Payload;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/newrelic/agent/android/payload/Payload;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-super {p0}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->fetchAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3
    :try_start_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 4
    new-instance v4, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v4}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    check-cast v3, Ljava/lang/String;

    const-class v5, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-virtual {v4, v3, v5}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/com/google/gson/JsonObject;

    .line 5
    new-instance v4, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v4}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    const-string v5, "payload"

    invoke-virtual {v3, v5}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/payload/Payload;

    const-string v5, "encodedPayload"

    .line 6
    invoke-virtual {v3, v5}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->decodePayload(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/newrelic/agent/android/payload/Payload;->putBytes([B)V

    .line 7
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    instance-of v4, v3, Ljava/util/HashSet;

    if-eqz v4, :cond_0

    .line 9
    check-cast v3, Ljava/util/HashSet;

    .line 10
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 11
    new-instance v4, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v4}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/payload/Payload;

    .line 12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->decodePayload(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/newrelic/agent/android/payload/Payload;->putBytes([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 13
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public store(Lcom/newrelic/agent/android/payload/Payload;)Z
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->toJsonString(Lcom/newrelic/agent/android/payload/Payload;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/Payload;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, v0}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->store(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic store(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/newrelic/agent/android/payload/Payload;

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->store(Lcom/newrelic/agent/android/payload/Payload;)Z

    move-result p1

    return p1
.end method
