.class public final Lra/b;
.super Lrd/o;
.source "AdaptKitExecutor.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lta/a;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lta/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lra/b;->h:Lta/a;

    iput-object p2, p0, Lra/b;->i:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lra/b;->h:Lta/a;

    .line 2
    sget-object v1, Lra/c;->c:Lra/c;

    .line 3
    iget-object v1, v1, Le2/m;->b:Ljava/lang/Object;

    check-cast v1, Lfd/d;

    invoke-interface {v1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loa/b;

    .line 4
    invoke-interface {v1}, Loa/b;->a()Lra/d;

    move-result-object v1

    iget-object v2, p0, Lra/b;->i:Ljava/lang/String;

    invoke-interface {v1, v2}, Lra/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lta/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lra/b;->h:Lta/a;

    invoke-interface {v1, v0}, Lta/a;->b(Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
