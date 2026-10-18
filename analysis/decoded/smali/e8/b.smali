.class public final Le8/b;
.super Ljava/lang/Object;
.source "AdaptIdentityApi.kt"

# interfaces
.implements Le8/a;


# static fields
.field public static final b:Le8/b;

.field public static final c:Lfd/h;

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Le8/b;

    invoke-direct {v0}, Le8/b;-><init>()V

    sput-object v0, Le8/b;->b:Le8/b;

    .line 1
    sget-object v0, Le8/b$b;->h:Le8/b$b;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Le8/b;->c:Lfd/h;

    const-string v1, "nuId"

    const-string v2, "name"

    const-string v3, "hometown"

    const-string v4, "avatar"

    const-string v5, "dob"

    const-string v6, "registration"

    const-string v7, "contact"

    .line 2
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le8/b;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf8/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf8/a<",
            "Lcom/nike/adapt/network/identity/model/AdaptIdentity;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lo7/b;->j:Lo7/b;

    new-instance v1, Le8/b$a;

    invoke-direct {v1, p1}, Le8/b$a;-><init>(Lf8/a;)V

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, v0, Lo7/b;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lw4/h;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lw4/h;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
