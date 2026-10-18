.class public final Lw9/x$k0;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;->Q(Lv9/a;Lea/e;Lqd/l;)V
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


# direct methods
.method public constructor <init>(Lw9/x;Lea/e;)V
    .locals 0

    iput-object p1, p0, Lw9/x$k0;->h:Lw9/x;

    iput-object p2, p0, Lw9/x$k0;->i:Lea/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lw9/x$k0;->h:Lw9/x;

    .line 2
    iget-object v1, v0, Lw9/x;->l:Lea/m;

    .line 3
    iget-object v2, v1, Lea/m;->o:Ljava/util/List;

    .line 4
    invoke-static {v2}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    iget-object v2, p0, Lw9/x$k0;->i:Lea/e;

    .line 5
    move-object v3, v8

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f7f

    .line 6
    invoke-static/range {v1 .. v12}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lw9/x;->G0(Lea/m;)V

    .line 8
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
