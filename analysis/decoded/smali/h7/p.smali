.class public final Lh7/p;
.super Le7/x;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
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
.field public final a:Le7/h;

.field public final b:Le7/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Le7/h;Le7/x;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/h;",
            "Le7/x<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le7/x;-><init>()V

    .line 2
    iput-object p1, p0, Lh7/p;->a:Le7/h;

    .line 3
    iput-object p2, p0, Lh7/p;->b:Le7/x;

    .line 4
    iput-object p3, p0, Lh7/p;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lh7/p;->b:Le7/x;

    invoke-virtual {v0, p1}, Le7/x;->a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    iget-object v0, p0, Lh7/p;->b:Le7/x;

    .line 2
    iget-object v1, p0, Lh7/p;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    .line 3
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    :cond_1
    iget-object v2, p0, Lh7/p;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_3

    .line 6
    iget-object v0, p0, Lh7/p;->a:Le7/h;

    .line 7
    new-instance v2, Ll7/a;

    invoke-direct {v2, v1}, Ll7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    invoke-virtual {v0, v2}, Le7/h;->f(Ll7/a;)Le7/x;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lh7/n$a;

    if-nez v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lh7/p;->b:Le7/x;

    instance-of v2, v1, Lh7/n$a;

    if-nez v2, :cond_3

    move-object v0, v1

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {v0, p1, p2}, Le7/x;->b(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
