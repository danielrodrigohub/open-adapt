.class public final Ll5/f0;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Ll5/d0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/f0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ll5/d0$d;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ll5/m;

.field public final c:I

.field public final d:Ll5/i0;

.field public final e:Ll5/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll5/f0$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll5/j;Landroid/net/Uri;ILl5/f0$a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll5/j;",
            "Landroid/net/Uri;",
            "I",
            "Ll5/f0$a<",
            "+TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v5, 0x1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    const-wide/16 v10, -0x1

    const/4 v13, 0x1

    const-string v1, "The uri must be set."

    move-object/from16 v2, p2

    .line 2
    invoke-static {v2, v1}, Lm5/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v15, Ll5/m;

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v1, v15

    .line 4
    invoke-direct/range {v1 .. v14}, Ll5/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ll5/i0;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ll5/i0;-><init>(Ll5/j;)V

    iput-object v1, v0, Ll5/f0;->d:Ll5/i0;

    .line 7
    iput-object v15, v0, Ll5/f0;->b:Ll5/m;

    move/from16 v1, p3

    .line 8
    iput v1, v0, Ll5/f0;->c:I

    move-object/from16 v1, p4

    .line 9
    iput-object v1, v0, Ll5/f0;->e:Ll5/f0$a;

    .line 10
    invoke-static {}, Lp4/r;->a()J

    move-result-wide v1

    iput-wide v1, v0, Ll5/f0;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll5/f0;->d:Ll5/i0;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Ll5/i0;->b:J

    .line 3
    new-instance v0, Ll5/l;

    iget-object v1, p0, Ll5/f0;->d:Ll5/i0;

    iget-object v2, p0, Ll5/f0;->b:Ll5/m;

    invoke-direct {v0, v1, v2}, Ll5/l;-><init>(Ll5/j;Ll5/m;)V

    .line 4
    :try_start_0
    iget-boolean v1, v0, Ll5/l;->k:Z

    if-nez v1, :cond_0

    .line 5
    iget-object v1, v0, Ll5/l;->h:Ll5/j;

    iget-object v2, v0, Ll5/l;->i:Ll5/m;

    invoke-interface {v1, v2}, Ll5/j;->l(Ll5/m;)J

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Ll5/l;->k:Z

    .line 7
    :cond_0
    iget-object v1, p0, Ll5/f0;->d:Ll5/i0;

    invoke-virtual {v1}, Ll5/i0;->o()Landroid/net/Uri;

    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Ll5/f0;->e:Ll5/f0$a;

    invoke-interface {v2, v1, v0}, Ll5/f0$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ll5/f0;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v0}, Lm5/g0;->g(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lm5/g0;->g(Ljava/io/Closeable;)V

    .line 11
    throw v1
.end method

.method public final b()V
    .locals 0

    return-void
.end method
