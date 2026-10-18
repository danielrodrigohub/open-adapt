.class public final Ly0/n;
.super Ljava/lang/Object;
.source "DatabaseConfiguration.java"


# instance fields
.field public final a:Ld1/d$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Ly0/d0$c;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly0/d0$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public final i:I

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Z

.field public final l:Landroid/content/Intent;

.field public final m:Z

.field public final n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ld1/d$c;Ly0/d0$c;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZ)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ld1/d$c;",
            "Ly0/d0$c;",
            "Ljava/util/List<",
            "Ly0/d0$b;",
            ">;Z",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/Intent;",
            "ZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lz0/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Ly0/n;->a:Ld1/d$c;

    .line 3
    iput-object p1, p0, Ly0/n;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Ly0/n;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Ly0/n;->d:Ly0/d0$c;

    .line 6
    iput-object p5, p0, Ly0/n;->e:Ljava/util/List;

    .line 7
    iput-boolean p6, p0, Ly0/n;->h:Z

    .line 8
    iput p7, p0, Ly0/n;->i:I

    .line 9
    iput-object p8, p0, Ly0/n;->j:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p10, p0, Ly0/n;->l:Landroid/content/Intent;

    if-eqz p10, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Ly0/n;->k:Z

    .line 12
    iput-boolean p11, p0, Ly0/n;->m:Z

    .line 13
    iput-boolean p12, p0, Ly0/n;->n:Z

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ly0/n;->f:Ljava/util/List;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ly0/n;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Ly0/n;->n:Z

    if-eqz p1, :cond_1

    return v1

    .line 2
    :cond_1
    iget-boolean p1, p0, Ly0/n;->m:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method
