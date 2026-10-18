.class public final Ls7/b;
.super Ljava/lang/Object;
.source "EventBus.kt"


# static fields
.field public static final a:Ls7/b;

.field public static final b:Lfe/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls7/b;

    invoke-direct {v0}, Ls7/b;-><init>()V

    sput-object v0, Ls7/b;->a:Ls7/b;

    .line 1
    sget-object v0, Lfe/c;->r:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lfe/d;

    invoke-direct {v0}, Lfe/d;-><init>()V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lfe/d;->f:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lfe/d;->e:Z

    .line 5
    iput-boolean v1, v0, Lfe/d;->b:Z

    .line 6
    iput-boolean v1, v0, Lfe/d;->a:Z

    .line 7
    iput-boolean v1, v0, Lfe/d;->d:Z

    .line 8
    iput-boolean v1, v0, Lfe/d;->c:Z

    .line 9
    new-instance v1, Ls7/b$a;

    invoke-direct {v1}, Ls7/b$a;-><init>()V

    .line 10
    iput-object v1, v0, Lfe/d;->h:Lfe/g;

    .line 11
    new-instance v1, Lfe/c;

    invoke-direct {v1, v0}, Lfe/c;-><init>(Lfe/d;)V

    .line 12
    sput-object v1, Ls7/b;->b:Lfe/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li8/b;)V
    .locals 3

    const-string v0, "actionResult"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Ls7/b;->b:Lfe/c;

    invoke-virtual {v0, p1}, Lfe/c;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EventBus"

    invoke-virtual {v0, v2, v1, p1}, Lo7/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final b(Ls7/a;)V
    .locals 3

    const-string v0, "any"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Ls7/b;->b:Lfe/c;

    invoke-virtual {v0, p1}, Lfe/c;->i(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EventBus"

    invoke-virtual {v0, v2, v1, p1}, Lo7/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c(Ls7/a;)V
    .locals 3

    const-string v0, "any"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Ls7/b;->b:Lfe/c;

    invoke-virtual {v0, p1}, Lfe/c;->k(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EventBus"

    invoke-virtual {v0, v2, v1, p1}, Lo7/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
