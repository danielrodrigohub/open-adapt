.class public final Lu1/a;
.super Lu1/c;
.source "CancelWorkRunnable.java"


# instance fields
.field public final synthetic i:Ll1/k;

.field public final synthetic j:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ll1/k;Ljava/util/UUID;)V
    .locals 0

    iput-object p1, p0, Lu1/a;->i:Ll1/k;

    iput-object p2, p0, Lu1/a;->j:Ljava/util/UUID;

    invoke-direct {p0}, Lu1/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu1/a;->i:Ll1/k;

    .line 2
    iget-object v0, v0, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Ly0/d0;->c()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lu1/a;->i:Ll1/k;

    iget-object v2, p0, Lu1/a;->j:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lu1/c;->a(Ll1/k;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 7
    iget-object v0, p0, Lu1/a;->i:Ll1/k;

    .line 8
    iget-object v1, v0, Ll1/k;->b:Landroidx/work/a;

    .line 9
    iget-object v2, v0, Ll1/k;->c:Landroidx/work/impl/WorkDatabase;

    .line 10
    iget-object v0, v0, Ll1/k;->e:Ljava/util/List;

    .line 11
    invoke-static {v1, v2, v0}, Ll1/f;->a(Landroidx/work/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 13
    throw v1
.end method
