.class public final Lg7/l$a;
.super Le7/x;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/l;->a(Le7/h;Ll7/a;)Le7/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le7/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Le7/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le7/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Le7/h;

.field public final synthetic e:Ll7/a;

.field public final synthetic f:Lg7/l;


# direct methods
.method public constructor <init>(Lg7/l;ZZLe7/h;Ll7/a;)V
    .locals 0

    iput-object p1, p0, Lg7/l$a;->f:Lg7/l;

    iput-boolean p2, p0, Lg7/l$a;->b:Z

    iput-boolean p3, p0, Lg7/l$a;->c:Z

    iput-object p4, p0, Lg7/l$a;->d:Le7/h;

    iput-object p5, p0, Lg7/l$a;->e:Ll7/a;

    invoke-direct {p0}, Le7/x;-><init>()V

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
    iget-boolean v0, p0, Lg7/l$a;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lg7/l$a;->a:Le7/x;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lg7/l$a;->d:Le7/h;

    iget-object v1, p0, Lg7/l$a;->f:Lg7/l;

    iget-object v2, p0, Lg7/l$a;->e:Ll7/a;

    invoke-virtual {v0, v1, v2}, Le7/h;->g(Le7/y;Ll7/a;)Le7/x;

    move-result-object v0

    iput-object v0, p0, Lg7/l$a;->a:Le7/x;

    .line 5
    :goto_0
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
    iget-boolean v0, p0, Lg7/l$a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lg7/l$a;->a:Le7/x;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lg7/l$a;->d:Le7/h;

    iget-object v1, p0, Lg7/l$a;->f:Lg7/l;

    iget-object v2, p0, Lg7/l$a;->e:Ll7/a;

    invoke-virtual {v0, v1, v2}, Le7/h;->g(Le7/y;Ll7/a;)Le7/x;

    move-result-object v0

    iput-object v0, p0, Lg7/l$a;->a:Le7/x;

    .line 5
    :goto_0
    invoke-virtual {v0, p1, p2}, Le7/x;->b(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
