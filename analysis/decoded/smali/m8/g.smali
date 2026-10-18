.class public final Lm8/g;
.super Ljava/lang/Object;
.source "FetchProfileRepository.kt"

# interfaces
.implements Lm8/f;


# static fields
.field public static final b:Lm8/g;

.field public static final c:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm8/g;

    invoke-direct {v0}, Lm8/g;-><init>()V

    sput-object v0, Lm8/g;->b:Lm8/g;

    sget-object v0, Lm8/g$c;->h:Lm8/g$c;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lm8/g;->c:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf8/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/c<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lm8/g$a;->h:Lm8/g$a;

    invoke-virtual {p0, p1, v0}, Lm8/g;->b(Lf8/c;Lqd/l;)V

    .line 2
    sget-object v0, Lm8/g;->c:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le8/a;

    .line 3
    new-instance v1, Lm8/g$b;

    invoke-direct {v1, p1}, Lm8/g$b;-><init>(Lf8/c;)V

    invoke-interface {v0, v1}, Le8/a;->a(Lf8/a;)V

    return-void
.end method

.method public final b(Lf8/c;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/c<",
            "Lcom/nike/adapt/presenter/profile/AdaptUser;",
            ">;",
            "Lqd/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 2
    new-instance v0, Lm8/g$d;

    invoke-direct {v0, p1, p2}, Lm8/g$d;-><init>(Lf8/c;Lqd/l;)V

    .line 3
    new-instance p1, Lh8/b;

    invoke-direct {p1, v0}, Lh8/b;-><init>(Lf8/c;)V

    .line 4
    sget-object p2, Lo7/b;->i:Lo7/b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p2, Lo7/b;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lw4/h;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lw4/h;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
