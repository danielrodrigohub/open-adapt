.class public final Lr2/v;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lr2/w;
.implements Lm3/a$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr2/w<",
        "TZ;>;",
        "Lm3/a$d;"
    }
.end annotation


# static fields
.field public static final l:Lm3/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li0/e<",
            "Lr2/v<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lm3/d$a;

.field public i:Lr2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/w<",
            "TZ;>;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr2/v$a;

    invoke-direct {v0}, Lr2/v$a;-><init>()V

    const/16 v1, 0x14

    .line 2
    invoke-static {v1, v0}, Lm3/a;->a(ILm3/a$b;)Li0/e;

    move-result-object v0

    check-cast v0, Lm3/a$c;

    sput-object v0, Lr2/v;->l:Lm3/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm3/d$a;

    invoke-direct {v0}, Lm3/d$a;-><init>()V

    .line 3
    iput-object v0, p0, Lr2/v;->h:Lm3/d$a;

    return-void
.end method

.method public static d(Lr2/w;)Lr2/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lr2/w<",
            "TZ;>;)",
            "Lr2/v<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lr2/v;->l:Lm3/a$c;

    invoke-virtual {v0}, Lm3/a$c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/v;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lr2/v;->k:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lr2/v;->j:Z

    .line 5
    iput-object p0, v0, Lr2/v;->i:Lr2/w;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lr2/v;->i:Lr2/w;

    invoke-interface {v0}, Lr2/w;->a()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lr2/v;->i:Lr2/w;

    invoke-interface {v0}, Lr2/w;->b()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lr2/v;->h:Lm3/d$a;

    invoke-virtual {v0}, Lm3/d$a;->a()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lr2/v;->k:Z

    .line 3
    iget-boolean v0, p0, Lr2/v;->j:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lr2/v;->i:Lr2/w;

    invoke-interface {v0}, Lr2/w;->c()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lr2/v;->i:Lr2/w;

    .line 6
    sget-object v0, Lr2/v;->l:Lm3/a$c;

    invoke-virtual {v0, p0}, Lm3/a$c;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lr2/v;->h:Lm3/d$a;

    invoke-virtual {v0}, Lm3/d$a;->a()V

    .line 2
    iget-boolean v0, p0, Lr2/v;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lr2/v;->j:Z

    .line 4
    iget-boolean v0, p0, Lr2/v;->k:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lr2/v;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object v0, p0, Lr2/v;->i:Lr2/w;

    invoke-interface {v0}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lm3/d;
    .locals 1

    iget-object v0, p0, Lr2/v;->h:Lm3/d$a;

    return-object v0
.end method
