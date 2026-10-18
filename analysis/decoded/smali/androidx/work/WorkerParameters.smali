.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "WorkerParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkerParameters$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Landroidx/work/b;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Lw1/a;

.field public e:Lk1/t;

.field public f:Lk1/g;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/b;Ljava/util/Collection;Ljava/util/concurrent/Executor;Lw1/a;Lk1/t;Lk1/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroidx/work/b;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/work/WorkerParameters$a;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Lw1/a;",
            "Lk1/t;",
            "Ljava/lang/Object;",
            "Lk1/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 3
    iput-object p2, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/b;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    iput-object p4, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p5, p0, Landroidx/work/WorkerParameters;->d:Lw1/a;

    .line 7
    iput-object p6, p0, Landroidx/work/WorkerParameters;->e:Lk1/t;

    .line 8
    iput-object p7, p0, Landroidx/work/WorkerParameters;->f:Lk1/g;

    return-void
.end method
