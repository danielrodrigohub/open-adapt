.class public final Lw9/x$l0;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;->J(Lv9/a;Lea/e;Lqd/l;Lqd/l;)V
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
.field public final synthetic h:Lw9/x;

.field public final synthetic i:Lea/e;

.field public final synthetic j:Lv9/a;

.field public final synthetic k:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/j;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw9/x;Lea/e;Lv9/a;Lqd/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/x;",
            "Lea/e;",
            "Lv9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw9/x$l0;->h:Lw9/x;

    iput-object p2, p0, Lw9/x$l0;->i:Lea/e;

    iput-object p3, p0, Lw9/x$l0;->j:Lv9/a;

    iput-object p4, p0, Lw9/x$l0;->k:Lqd/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lw9/x$l0;->h:Lw9/x;

    .line 2
    iget-object v1, v0, Lw9/x;->l:Lea/m;

    .line 3
    iget-object v2, p0, Lw9/x$l0;->i:Lea/e;

    .line 4
    iget-object v6, v2, Lea/e;->i:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1fdf

    .line 5
    invoke-static/range {v1 .. v12}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lw9/x;->G0(Lea/m;)V

    .line 7
    sget-object v0, Lw9/u1;->j:Lw9/u1;

    iget-object v1, p0, Lw9/x$l0;->i:Lea/e;

    .line 8
    iget-object v2, v1, Lea/e;->k:Lea/c;

    .line 9
    iget-object v3, p0, Lw9/x$l0;->h:Lw9/x;

    iget-object v4, p0, Lw9/x$l0;->j:Lv9/a;

    iget-object v5, p0, Lw9/x$l0;->k:Lqd/l;

    .line 10
    iget-boolean v1, v1, Lea/e;->j:Z

    .line 11
    new-instance v6, Lw9/a;

    invoke-direct {v6, v4, v0}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 12
    invoke-static {v3, v1, v6, v2, v5}, Lw9/x;->q0(Lw9/x;ZLw9/a;Lea/c;Lqd/l;)V

    .line 13
    sget-object v0, Lw9/u1;->k:Lw9/u1;

    iget-object v1, p0, Lw9/x$l0;->i:Lea/e;

    .line 14
    iget-object v2, v1, Lea/e;->l:Lea/c;

    .line 15
    iget-object v3, p0, Lw9/x$l0;->h:Lw9/x;

    iget-object v4, p0, Lw9/x$l0;->j:Lv9/a;

    iget-object v5, p0, Lw9/x$l0;->k:Lqd/l;

    .line 16
    iget-boolean v1, v1, Lea/e;->j:Z

    .line 17
    new-instance v6, Lw9/a;

    invoke-direct {v6, v4, v0}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 18
    invoke-static {v3, v1, v6, v2, v5}, Lw9/x;->q0(Lw9/x;ZLw9/a;Lea/c;Lqd/l;)V

    .line 19
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
