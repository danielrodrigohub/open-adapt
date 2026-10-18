.class public final Lh7/m;
.super Lh7/n$b;
.source "ReflectiveTypeAdapterFactory.java"


# instance fields
.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/reflect/Field;

.field public final synthetic f:Z

.field public final synthetic g:Le7/x;

.field public final synthetic h:Le7/h;

.field public final synthetic i:Ll7/a;

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZLjava/lang/reflect/Field;ZLe7/x;Le7/h;Ll7/a;Z)V
    .locals 0

    iput-boolean p4, p0, Lh7/m;->d:Z

    iput-object p5, p0, Lh7/m;->e:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lh7/m;->f:Z

    iput-object p7, p0, Lh7/m;->g:Le7/x;

    iput-object p8, p0, Lh7/m;->h:Le7/h;

    iput-object p9, p0, Lh7/m;->i:Ll7/a;

    iput-boolean p10, p0, Lh7/m;->j:Z

    invoke-direct {p0, p1, p2, p3}, Lh7/n$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/stream/JsonReader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh7/m;->g:Le7/x;

    invoke-virtual {v0, p1}, Le7/x;->a(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lh7/m;->j:Z

    if-nez v0, :cond_2

    .line 3
    :cond_0
    iget-boolean v0, p0, Lh7/m;->d:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lh7/m;->e:Ljava/lang/reflect/Field;

    invoke-static {p2, v0}, Lh7/n;->b(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lh7/m;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh7/n$b;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lh7/m;->d:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lh7/m;->e:Ljava/lang/reflect/Field;

    invoke-static {p2, v0}, Lh7/n;->b(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lh7/m;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object p2, p0, Lh7/n$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 6
    iget-boolean p2, p0, Lh7/m;->f:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lh7/m;->g:Le7/x;

    goto :goto_0

    .line 7
    :cond_3
    new-instance p2, Lh7/p;

    iget-object v1, p0, Lh7/m;->h:Le7/h;

    iget-object v2, p0, Lh7/m;->g:Le7/x;

    iget-object v3, p0, Lh7/m;->i:Ll7/a;

    .line 8
    iget-object v3, v3, Ll7/a;->b:Ljava/lang/reflect/Type;

    .line 9
    invoke-direct {p2, v1, v2, v3}, Lh7/p;-><init>(Le7/h;Le7/x;Ljava/lang/reflect/Type;)V

    .line 10
    :goto_0
    invoke-virtual {p2, p1, v0}, Le7/x;->b(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
