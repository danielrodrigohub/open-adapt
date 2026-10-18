.class public final Lhc/j0;
.super Ljava/util/TimerTask;
.source "FileTransfer.java"


# instance fields
.field public final synthetic h:Lhc/k0;


# direct methods
.method public constructor <init>(Lhc/k0;)V
    .locals 0

    iput-object p1, p0, Lhc/j0;->h:Lhc/k0;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lhc/j0;->h:Lhc/k0;

    iget v1, v0, Lhc/k0;->p:I

    sget v2, Lhc/k0;->F:I

    sget v2, Lhc/k0;->F:I

    mul-int/2addr v1, v2

    iget v0, v0, Lhc/k0;->q:I

    if-eq v1, v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lhc/j0;->h:Lhc/k0;

    iget v2, v2, Lhc/k0;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "timeout receiving file at segment %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "FileTransfer"

    invoke-interface {v0, v1, v2, v3, v4}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lhc/j0;->h:Lhc/k0;

    sget-object v1, Lgc/g$b;->l:Lgc/g$b;

    invoke-virtual {v0, v1}, Lhc/k0;->h(Lgc/g$b;)V

    :cond_0
    return-void
.end method
