.class public final Lr2/k;
.super Ljava/lang/Object;
.source "DecodePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr2/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lp2/j<",
            "TDataType;TResourceType;>;>;"
        }
    .end annotation
.end field

.field public final c:Ld3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/c<",
            "TResourceType;TTranscode;>;"
        }
    .end annotation
.end field

.field public final d:Li0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li0/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Ld3/c;Li0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Ljava/util/List<",
            "+",
            "Lp2/j<",
            "TDataType;TResourceType;>;>;",
            "Ld3/c<",
            "TResourceType;TTranscode;>;",
            "Li0/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr2/k;->a:Ljava/lang/Class;

    .line 3
    iput-object p4, p0, Lr2/k;->b:Ljava/util/List;

    .line 4
    iput-object p5, p0, Lr2/k;->c:Ld3/c;

    .line 5
    iput-object p6, p0, Lr2/k;->d:Li0/e;

    const-string p4, "Failed DecodePath{"

    .line 6
    invoke-static {p4}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr2/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/data/e;IILp2/h;Lr2/k$a;)Lr2/w;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/e<",
            "TDataType;>;II",
            "Lp2/h;",
            "Lr2/k$a<",
            "TResourceType;>;)",
            "Lr2/w<",
            "TTranscode;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr2/r;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr2/k;->d:Li0/e;

    invoke-interface {v0}, Li0/e;->b()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, v0

    .line 4
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lr2/k;->b(Lcom/bumptech/glide/load/data/e;IILp2/h;Ljava/util/List;)Lr2/w;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p2, p0, Lr2/k;->d:Li0/e;

    invoke-interface {p2, v0}, Li0/e;->a(Ljava/lang/Object;)Z

    .line 6
    check-cast p5, Lr2/j$b;

    .line 7
    iget-object p2, p5, Lr2/j$b;->b:Lr2/j;

    iget-object p3, p5, Lr2/j$b;->a:Lp2/a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 9
    sget-object p5, Lp2/a;->k:Lp2/a;

    const/4 v0, 0x0

    if-eq p3, p5, :cond_0

    .line 10
    iget-object p5, p2, Lr2/j;->h:Lr2/i;

    invoke-virtual {p5, v7}, Lr2/i;->g(Ljava/lang/Class;)Lp2/l;

    move-result-object p5

    .line 11
    iget-object v1, p2, Lr2/j;->o:Lcom/bumptech/glide/e;

    iget v2, p2, Lr2/j;->s:I

    iget v3, p2, Lr2/j;->t:I

    invoke-interface {p5, v1, p1, v2, v3}, Lp2/l;->b(Landroid/content/Context;Lr2/w;II)Lr2/w;

    move-result-object v1

    move-object v6, p5

    move-object p5, v1

    goto :goto_0

    :cond_0
    move-object p5, p1

    move-object v6, v0

    .line 12
    :goto_0
    invoke-virtual {p1, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    invoke-interface {p1}, Lr2/w;->c()V

    .line 14
    :cond_1
    iget-object p1, p2, Lr2/j;->h:Lr2/i;

    .line 15
    iget-object p1, p1, Lr2/i;->c:Lcom/bumptech/glide/e;

    .line 16
    iget-object p1, p1, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/h;

    .line 17
    iget-object p1, p1, Lcom/bumptech/glide/h;->d:Lg3/f;

    invoke-interface {p5}, Lr2/w;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lg3/f;->a(Ljava/lang/Class;)Lp2/k;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p2, Lr2/j;->h:Lr2/i;

    .line 19
    iget-object p1, p1, Lr2/i;->c:Lcom/bumptech/glide/e;

    .line 20
    iget-object p1, p1, Lcom/bumptech/glide/e;->b:Lcom/bumptech/glide/h;

    .line 21
    iget-object p1, p1, Lcom/bumptech/glide/h;->d:Lg3/f;

    invoke-interface {p5}, Lr2/w;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg3/f;->a(Ljava/lang/Class;)Lp2/k;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 22
    iget-object p1, p2, Lr2/j;->v:Lp2/h;

    invoke-interface {v0, p1}, Lp2/k;->d(Lp2/h;)Lp2/c;

    move-result-object p1

    goto :goto_2

    .line 23
    :cond_3
    new-instance p1, Lcom/bumptech/glide/h$d;

    invoke-interface {p5}, Lr2/w;->b()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/h$d;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 24
    :cond_4
    sget-object p1, Lp2/c;->j:Lp2/c;

    :goto_2
    move-object v9, v0

    .line 25
    iget-object v0, p2, Lr2/j;->h:Lr2/i;

    iget-object v3, p2, Lr2/j;->E:Lp2/f;

    .line 26
    invoke-virtual {v0}, Lr2/i;->c()Ljava/util/List;

    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_6

    .line 28
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv2/n$a;

    .line 29
    iget-object v8, v8, Lv2/n$a;->a:Lp2/f;

    invoke-interface {v8, v3}, Lp2/f;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v1, v2

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    xor-int/lit8 v0, v1, 0x1

    .line 30
    iget-object v1, p2, Lr2/j;->u:Lr2/l;

    invoke-virtual {v1, v0, p3, p1}, Lr2/l;->d(ZLp2/a;Lp2/c;)Z

    move-result p3

    if-eqz p3, :cond_a

    if-eqz v9, :cond_9

    .line 31
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eqz p3, :cond_8

    if-ne p3, v2, :cond_7

    .line 32
    new-instance p1, Lr2/y;

    iget-object p3, p2, Lr2/j;->h:Lr2/i;

    .line 33
    iget-object p3, p3, Lr2/i;->c:Lcom/bumptech/glide/e;

    .line 34
    iget-object v1, p3, Lcom/bumptech/glide/e;->a:Ls2/b;

    .line 35
    iget-object v2, p2, Lr2/j;->E:Lp2/f;

    iget-object v3, p2, Lr2/j;->p:Lp2/f;

    iget v4, p2, Lr2/j;->s:I

    iget v5, p2, Lr2/j;->t:I

    iget-object v8, p2, Lr2/j;->v:Lp2/h;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lr2/y;-><init>(Ls2/b;Lp2/f;Lp2/f;IILp2/l;Ljava/lang/Class;Lp2/h;)V

    goto :goto_5

    .line 36
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown strategy: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :cond_8
    new-instance p1, Lr2/f;

    iget-object p3, p2, Lr2/j;->E:Lp2/f;

    iget-object v0, p2, Lr2/j;->p:Lp2/f;

    invoke-direct {p1, p3, v0}, Lr2/f;-><init>(Lp2/f;Lp2/f;)V

    .line 38
    :goto_5
    invoke-static {p5}, Lr2/v;->d(Lr2/w;)Lr2/v;

    move-result-object p5

    .line 39
    iget-object p2, p2, Lr2/j;->m:Lr2/j$c;

    .line 40
    iput-object p1, p2, Lr2/j$c;->a:Lp2/f;

    .line 41
    iput-object v9, p2, Lr2/j$c;->b:Lp2/k;

    .line 42
    iput-object p5, p2, Lr2/j$c;->c:Lr2/v;

    goto :goto_6

    .line 43
    :cond_9
    new-instance p1, Lcom/bumptech/glide/h$d;

    invoke-interface {p5}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/h$d;-><init>(Ljava/lang/Class;)V

    throw p1

    .line 44
    :cond_a
    :goto_6
    iget-object p1, p0, Lr2/k;->c:Ld3/c;

    invoke-interface {p1, p5, p4}, Ld3/c;->b(Lr2/w;Lp2/h;)Lr2/w;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 45
    iget-object p2, p0, Lr2/k;->d:Li0/e;

    invoke-interface {p2, v0}, Li0/e;->a(Ljava/lang/Object;)Z

    throw p1
.end method

.method public final b(Lcom/bumptech/glide/load/data/e;IILp2/h;Ljava/util/List;)Lr2/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/data/e<",
            "TDataType;>;II",
            "Lp2/h;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lr2/w<",
            "TResourceType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr2/r;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr2/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    iget-object v3, p0, Lr2/k;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp2/j;

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-interface {v3, v4, p4}, Lp2/j;->a(Ljava/lang/Object;Lp2/h;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Object;

    move-result-object v4

    .line 6
    invoke-interface {v3, v4, p2, p3, p4}, Lp2/j;->b(Ljava/lang/Object;IILp2/h;)Lr2/w;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v4

    :goto_1
    const/4 v5, 0x2

    const-string v6, "DecodePath"

    .line 7
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to decode data for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    :cond_0
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    return-object v1

    .line 10
    :cond_4
    new-instance p1, Lr2/r;

    iget-object p2, p0, Lr2/k;->e:Ljava/lang/String;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, p2, p3}, Lr2/r;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DecodePath{ dataClass="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lr2/k;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", decoders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr2/k;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transcoder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr2/k;->c:Ld3/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
