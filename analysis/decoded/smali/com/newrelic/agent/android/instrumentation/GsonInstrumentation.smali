.class public Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;
.super Ljava/lang/Object;
.source "GsonInstrumentation.java"


# static fields
.field private static final categoryParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "category"

    aput-object v3, v1, v2

    const-class v2, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "JSON"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Le7/h;Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Lcom/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/m;,
            Le7/s;
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#fromJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 19
    invoke-virtual {p0, p1, p2}, Le7/h;->c(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 20
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p0
.end method

.method public static fromJson(Le7/h;Le7/l;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Le7/l;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/s;
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#fromJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {p0, p1, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Le7/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 24
    invoke-static {p2}, Landroidx/lifecycle/o;->S(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 25
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p0
.end method

.method public static fromJson(Le7/h;Le7/l;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Le7/l;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/s;
        }
    .end annotation

    .line 26
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#fromJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Lh7/f;

    invoke-direct {v0, p1}, Lh7/f;-><init>(Le7/l;)V

    invoke-static {p0, v0, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    :goto_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p0
.end method

.method public static fromJson(Le7/h;Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/s;,
            Le7/m;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#fromJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8
    invoke-virtual {p0, p1}, Le7/h;->h(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;

    move-result-object p1

    .line 9
    invoke-static {p0, p1, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 10
    invoke-static {p0, p1}, Le7/h;->a(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 11
    invoke-static {p2}, Landroidx/lifecycle/o;->S(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 12
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p0
.end method

.method public static fromJson(Le7/h;Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/m;,
            Le7/s;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#fromJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 14
    invoke-virtual {p0, p1}, Le7/h;->h(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;

    move-result-object p1

    .line 15
    invoke-static {p0, p1, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 16
    invoke-static {p0, p1}, Le7/h;->a(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 17
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p0
.end method

.method public static fromJson(Le7/h;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/s;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#fromJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Le7/h;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p0
.end method

.method public static fromJson(Le7/h;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/s;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#fromJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Le7/h;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p0
.end method

.method public static toJson(Le7/h;Le7/l;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .line 21
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#toJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 24
    invoke-static {p0, p1, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Le7/h;Le7/l;Ljava/lang/Appendable;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p0
.end method

.method public static toJson(Le7/h;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .line 1
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#toJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2
    invoke-virtual {p0, p1}, Le7/h;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p0
.end method

.method public static toJson(Le7/h;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .line 4
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#toJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 7
    invoke-static {p0, p1, p2, v0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Le7/h;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object p0
.end method

.method public static toJson(Le7/h;Le7/l;Lcom/google/gson/stream/JsonWriter;)V
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/m;
        }
    .end annotation

    .line 30
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#toJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Le7/h;->k(Le7/l;Lcom/google/gson/stream/JsonWriter;)V

    .line 32
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public static toJson(Le7/h;Le7/l;Ljava/lang/Appendable;)V
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/m;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#toJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Le7/h;->l(Le7/l;Ljava/lang/Appendable;)V

    .line 29
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public static toJson(Le7/h;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/m;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#toJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Le7/h;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object p1, Le7/n;->a:Le7/n;

    invoke-static {p0, p1, p2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Le7/h;Le7/l;Ljava/lang/Appendable;)V

    .line 14
    :goto_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public static toJson(Le7/h;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/m;
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#toJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Le7/h;->m(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/stream/JsonWriter;)V

    .line 20
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public static toJson(Le7/h;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "com.google.gson.Gson"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le7/m;
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->categoryParams:Ljava/util/ArrayList;

    const-string v1, "Gson#toJson"

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Le7/h;->n(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 17
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method
