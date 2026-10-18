.class public final Lya/d$k$a;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d$k;->a(Ljava/lang/String;Ljava/lang/String;Lf8/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0

    iput-object p1, p0, Lya/d$k$a;->h:Lya/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lya/d$k$a;->h:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->b:Lea/b;

    .line 3
    iget-boolean v1, v1, Lea/b;->n:Z

    .line 4
    iput-boolean v1, v0, Lya/d;->g:Z

    .line 5
    iget-object v0, p0, Lya/d$k$a;->h:Lya/d;

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lya/d;->l:Lla/c;

    .line 7
    :try_start_0
    invoke-virtual {v0}, Lya/d;->q0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :catchall_0
    iget-object v0, p0, Lya/d$k$a;->h:Lya/d;

    invoke-virtual {v0}, Lya/d;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const-string v3, "ConnectionListener issuing connect"

    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lya/d$k$a;->h:Lya/d;

    sget-object v1, Lv9/a;->i:Lv9/a$a;

    .line 11
    sget-object v1, Lv9/a;->l:Lv9/a;

    .line 12
    invoke-virtual {v0, v1}, Lya/d;->s(Lv9/a;)V

    .line 13
    :cond_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
