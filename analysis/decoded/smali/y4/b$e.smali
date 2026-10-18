.class public final Ly4/b$e;
.super Ly4/b$a;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly4/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:J

.field public k:I

.field public l:Z

.field public m:Ly4/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "SmoothStreamingMedia"

    .line 1
    invoke-direct {p0, v0, p1, v1}, Ly4/b$a;-><init>(Ly4/b$a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Ly4/b$e;->k:I

    .line 3
    iput-object v0, p0, Ly4/b$e;->m:Ly4/a$a;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Ly4/b$e;->e:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ly4/a$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ly4/b$e;->e:Ljava/util/LinkedList;

    check-cast p1, Ly4/a$b;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3
    :cond_0
    instance-of v0, p1, Ly4/a$a;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Ly4/b$e;->m:Ly4/a$a;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 5
    check-cast p1, Ly4/a$a;

    iput-object p1, p0, Ly4/b$e;->m:Ly4/a$a;

    :cond_2
    :goto_1
    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Ly4/b$e;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v13, v0, [Ly4/a$b;

    .line 2
    iget-object v1, p0, Ly4/b$e;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v13}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Ly4/b$e;->m:Ly4/a$a;

    if-eqz v1, :cond_2

    .line 4
    new-instance v2, Lr3/d;

    const/4 v3, 0x1

    new-array v4, v3, [Lr3/d$b;

    new-instance v5, Lr3/d$b;

    iget-object v6, v1, Ly4/a$a;->a:Ljava/util/UUID;

    iget-object v1, v1, Ly4/a$a;->b:[B

    const/4 v7, 0x0

    const-string v8, "video/mp4"

    .line 5
    invoke-direct {v5, v6, v7, v8, v1}, Lr3/d$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 v1, 0x0

    aput-object v5, v4, v1

    .line 6
    invoke-direct {v2, v7, v3, v4}, Lr3/d;-><init>(Ljava/lang/String;Z[Lr3/d$b;)V

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    .line 7
    aget-object v5, v13, v4

    .line 8
    iget v6, v5, Ly4/a$b;->a:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    if-ne v6, v3, :cond_1

    .line 9
    :cond_0
    iget-object v5, v5, Ly4/a$b;->j:[Ln3/s0;

    move v6, v1

    .line 10
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 11
    aget-object v7, v5, v6

    .line 12
    new-instance v8, Ln3/s0$a;

    invoke-direct {v8, v7}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 13
    iput-object v2, v8, Ln3/s0$a;->n:Lr3/d;

    .line 14
    new-instance v7, Ln3/s0;

    invoke-direct {v7, v8}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 15
    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Ly4/a;

    iget v2, p0, Ly4/b$e;->f:I

    iget v3, p0, Ly4/b$e;->g:I

    iget-wide v4, p0, Ly4/b$e;->h:J

    iget-wide v6, p0, Ly4/b$e;->i:J

    iget-wide v8, p0, Ly4/b$e;->j:J

    iget v10, p0, Ly4/b$e;->k:I

    iget-boolean v11, p0, Ly4/b$e;->l:Z

    iget-object v12, p0, Ly4/b$e;->m:Ly4/a$a;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Ly4/a;-><init>(IIJJJIZLy4/a$a;[Ly4/a$b;)V

    return-object v0
.end method

.method public final k(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    const-string v0, "MajorVersion"

    .line 1
    invoke-virtual {p0, p1, v0}, Ly4/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ly4/b$e;->f:I

    const-string v0, "MinorVersion"

    .line 2
    invoke-virtual {p0, p1, v0}, Ly4/b$a;->i(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ly4/b$e;->g:I

    const-string v0, "TimeScale"

    const-wide/32 v1, 0x989680

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Ly4/b$a;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Ly4/b$e;->h:J

    const/4 v1, 0x0

    const-string v2, "Duration"

    .line 4
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iput-wide v2, p0, Ly4/b$e;->i:J

    const-wide/16 v2, 0x0

    const-string v4, "DVRWindowLength"

    .line 7
    invoke-virtual {p0, p1, v4, v2, v3}, Ly4/b$a;->h(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Ly4/b$e;->j:J

    const-string v2, "LookaheadCount"

    .line 8
    invoke-virtual {p0, p1, v2}, Ly4/b$a;->g(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ly4/b$e;->k:I

    const/4 v2, 0x0

    const-string v3, "IsLive"

    .line 9
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 11
    :cond_0
    iput-boolean v2, p0, Ly4/b$e;->l:Z

    .line 12
    iget-wide v1, p0, Ly4/b$e;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ly4/b$a;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 13
    invoke-static {v1, p1}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ly4/b$b;

    invoke-direct {p1, v2}, Ly4/b$b;-><init>(Ljava/lang/String;)V

    throw p1
.end method
