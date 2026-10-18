.class public abstract Lk1/r$a;
.super Ljava/lang/Object;
.source "WorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lk1/r$a<",
        "**>;W:",
        "Lk1/r;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Lt1/o;

.field public c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lk1/r$a;->c:Ljava/util/HashSet;

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lk1/r$a;->a:Ljava/util/UUID;

    .line 4
    new-instance v0, Lt1/o;

    iget-object v1, p0, Lk1/r$a;->a:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lt1/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lk1/r$a;->b:Lt1/o;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lk1/r$a;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lk1/r;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lk1/n$a;

    .line 2
    new-instance v1, Lk1/n;

    invoke-direct {v1, v0}, Lk1/n;-><init>(Lk1/n$a;)V

    .line 3
    iget-object v0, p0, Lk1/r$a;->b:Lt1/o;

    iget-object v0, v0, Lt1/o;->j:Lk1/c;

    .line 4
    invoke-virtual {v0}, Lk1/c;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-boolean v2, v0, Lk1/c;->d:Z

    if-nez v2, :cond_1

    .line 6
    iget-boolean v2, v0, Lk1/c;->b:Z

    if-nez v2, :cond_1

    .line 7
    iget-boolean v0, v0, Lk1/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 8
    :goto_1
    iget-object v2, p0, Lk1/r$a;->b:Lt1/o;

    iget-boolean v3, v2, Lt1/o;->q:Z

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    .line 9
    iget-wide v2, v2, Lt1/o;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs cannot be delayed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lk1/r$a;->a:Ljava/util/UUID;

    .line 13
    new-instance v0, Lt1/o;

    iget-object v2, p0, Lk1/r$a;->b:Lt1/o;

    invoke-direct {v0, v2}, Lt1/o;-><init>(Lt1/o;)V

    iput-object v0, p0, Lk1/r$a;->b:Lt1/o;

    .line 14
    iget-object v2, p0, Lk1/r$a;->a:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lt1/o;->a:Ljava/lang/String;

    return-object v1
.end method
