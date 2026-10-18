.class public final Lw9/k0;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lya/b;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lw9/x;

.field public final synthetic i:Lw9/a;


# direct methods
.method public constructor <init>(Lw9/x;Lw9/a;)V
    .locals 0

    iput-object p1, p0, Lw9/k0;->h:Lw9/x;

    iput-object p2, p0, Lw9/k0;->i:Lw9/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lya/b;

    const-string v2, "$this$null"

    .line 2
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lw9/k0;->h:Lw9/x;

    .line 4
    iget-object v3, v2, Lw9/x;->l:Lea/m;

    .line 5
    iget-object v4, v3, Lea/m;->k:Lea/b;

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "toString()"

    invoke-static {v5, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x37

    .line 7
    invoke-static/range {v4 .. v9}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v6

    .line 8
    iget-object v11, v3, Lea/m;->l:Lea/b;

    .line 9
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x37

    .line 10
    invoke-static/range {v11 .. v16}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v7

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x17e7

    .line 12
    invoke-static/range {v3 .. v14}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Lw9/x;->updatePair(Lea/m;)V

    .line 14
    iget-object v2, v0, Lw9/k0;->i:Lw9/a;

    .line 15
    iget-object v2, v2, Lw9/a;->h:Lv9/a;

    .line 16
    invoke-interface {v1, v2}, Lya/b;->q(Lv9/a;)V

    .line 17
    sget-object v1, Lfd/o;->a:Lfd/o;

    return-object v1
.end method
