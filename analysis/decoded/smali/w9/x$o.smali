.class public final Lw9/x$o;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;->o(Lw9/a;Lqd/l;)V
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
.field public final synthetic h:Lw9/a;

.field public final synthetic i:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/a;Lw9/x;)V
    .locals 0

    iput-object p1, p0, Lw9/x$o;->h:Lw9/a;

    iput-object p2, p0, Lw9/x$o;->i:Lw9/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lw9/x$o;->h:Lw9/a;

    .line 2
    iget-object v1, v1, Lw9/a;->i:Lw9/u1;

    .line 3
    sget-object v2, Lw9/u1;->j:Lw9/u1;

    if-eq v1, v2, :cond_0

    sget-object v2, Lw9/u1;->l:Lw9/u1;

    if-ne v1, v2, :cond_4

    .line 4
    :cond_0
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 5
    iget-object v2, v1, Lw9/x;->l:Lea/m;

    .line 6
    iget-object v2, v2, Lea/m;->k:Lea/b;

    .line 7
    iget-boolean v3, v2, Lea/b;->n:Z

    if-eqz v3, :cond_1

    .line 8
    iget-object v1, v1, Lw9/x;->g:Lfb/a;

    .line 9
    iget-object v2, v2, Lea/b;->k:Ljava/lang/String;

    .line 10
    invoke-interface {v1, v2}, Lfb/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "AdaptKitPairedDevicesController"

    const-string v4, "left has connected locally"

    invoke-static/range {v2 .. v7}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 13
    invoke-virtual {v1}, Lw9/x;->A0()Lya/b;

    move-result-object v1

    .line 14
    iget-object v2, v0, Lw9/x$o;->h:Lw9/a;

    .line 15
    iget-object v2, v2, Lw9/a;->h:Lv9/a;

    .line 16
    invoke-interface {v1, v2}, Lya/b;->s(Lv9/a;)V

    goto/16 :goto_0

    .line 17
    :cond_1
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 18
    iget-object v1, v1, Lw9/x;->m:Lfd/d;

    invoke-interface {v1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfb/i;

    .line 19
    iget-object v2, v0, Lw9/x$o;->i:Lw9/x;

    .line 20
    iget-object v2, v2, Lw9/x;->l:Lea/m;

    .line 21
    iget-object v2, v2, Lea/m;->k:Lea/b;

    .line 22
    iget-object v2, v2, Lea/b;->k:Ljava/lang/String;

    .line 23
    invoke-interface {v1, v2}, Lfb/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v11, 0x0

    const/4 v7, 0x0

    const-string v3, "AdaptKitPairedDevicesController"

    const-string v4, "left is known on phone"

    invoke-static/range {v2 .. v7}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 25
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 26
    iget-object v7, v1, Lw9/x;->l:Lea/m;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 27
    iget-object v12, v7, Lea/m;->k:Lea/b;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x3f

    const/4 v13, 0x0

    .line 28
    invoke-static/range {v12 .. v17}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v10

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1ff7

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    .line 29
    invoke-static/range {v7 .. v18}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lw9/x;->G0(Lea/m;)V

    .line 31
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 32
    invoke-virtual {v1}, Lw9/x;->A0()Lya/b;

    move-result-object v1

    .line 33
    iget-object v2, v0, Lw9/x$o;->h:Lw9/a;

    .line 34
    iget-object v2, v2, Lw9/a;->h:Lv9/a;

    .line 35
    invoke-interface {v1, v2}, Lya/b;->s(Lv9/a;)V

    goto :goto_0

    .line 36
    :cond_2
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "AdaptKitPairedDevicesController"

    const-string v5, "left is unknown, going in for a scan"

    invoke-static/range {v3 .. v8}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 37
    invoke-static {}, Laa/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 39
    invoke-virtual {v1}, Lw9/x;->C0()Lcb/a;

    move-result-object v1

    .line 40
    iget-object v2, v0, Lw9/x$o;->i:Lw9/x;

    invoke-static {v2}, Lw9/x;->o0(Lw9/x;)Lka/d;

    move-result-object v2

    .line 41
    iget-object v3, v0, Lw9/x$o;->i:Lw9/x;

    .line 42
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v4, Lw9/a1;

    invoke-direct {v4, v3}, Lw9/a1;-><init>(Lw9/x;)V

    .line 44
    invoke-interface {v1, v2, v4}, Lcb/a;->a(Lka/d;Lv9/p0;)V

    goto :goto_0

    .line 45
    :cond_3
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 46
    invoke-virtual {v1}, Lw9/x;->C0()Lcb/a;

    move-result-object v1

    .line 47
    iget-object v2, v0, Lw9/x$o;->i:Lw9/x;

    invoke-static {v2}, Lw9/x;->o0(Lw9/x;)Lka/d;

    move-result-object v2

    .line 48
    iget-object v3, v0, Lw9/x$o;->i:Lw9/x;

    .line 49
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v4, Lw9/a1;

    invoke-direct {v4, v3}, Lw9/a1;-><init>(Lw9/x;)V

    .line 51
    invoke-interface {v1, v2, v4}, Lcb/a;->b(Lka/d;Lv9/p0;)V

    .line 52
    :cond_4
    :goto_0
    iget-object v1, v0, Lw9/x$o;->h:Lw9/a;

    .line 53
    iget-object v1, v1, Lw9/a;->i:Lw9/u1;

    .line 54
    sget-object v2, Lw9/u1;->k:Lw9/u1;

    if-eq v1, v2, :cond_5

    sget-object v2, Lw9/u1;->l:Lw9/u1;

    if-ne v1, v2, :cond_9

    .line 55
    :cond_5
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 56
    iget-object v2, v1, Lw9/x;->l:Lea/m;

    .line 57
    iget-object v3, v2, Lea/m;->l:Lea/b;

    .line 58
    iget-boolean v3, v3, Lea/b;->n:Z

    if-eqz v3, :cond_6

    .line 59
    iget-object v1, v1, Lw9/x;->g:Lfb/a;

    .line 60
    iget-object v2, v2, Lea/m;->k:Lea/b;

    .line 61
    iget-object v2, v2, Lea/b;->k:Ljava/lang/String;

    .line 62
    invoke-interface {v1, v2}, Lfb/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 63
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "AdaptKitPairedDevicesController"

    const-string v4, "right has connected locally"

    invoke-static/range {v2 .. v7}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 64
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 65
    invoke-virtual {v1}, Lw9/x;->B0()Lya/b;

    move-result-object v1

    .line 66
    iget-object v2, v0, Lw9/x$o;->h:Lw9/a;

    .line 67
    iget-object v2, v2, Lw9/a;->h:Lv9/a;

    .line 68
    invoke-interface {v1, v2}, Lya/b;->s(Lv9/a;)V

    goto/16 :goto_1

    .line 69
    :cond_6
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 70
    iget-object v1, v1, Lw9/x;->m:Lfd/d;

    invoke-interface {v1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfb/i;

    .line 71
    iget-object v2, v0, Lw9/x$o;->i:Lw9/x;

    .line 72
    iget-object v2, v2, Lw9/x;->l:Lea/m;

    .line 73
    iget-object v2, v2, Lea/m;->l:Lea/b;

    .line 74
    iget-object v2, v2, Lea/b;->k:Ljava/lang/String;

    .line 75
    invoke-interface {v1, v2}, Lfb/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 76
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "AdaptKitPairedDevicesController"

    const-string v4, "right is known on phone"

    invoke-static/range {v2 .. v7}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 77
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 78
    iget-object v2, v1, Lw9/x;->l:Lea/m;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 79
    iget-object v6, v2, Lea/m;->l:Lea/b;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x3f

    .line 80
    invoke-static/range {v6 .. v11}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v6

    const-wide/16 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1fef

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move v12, v15

    move/from16 v13, v16

    .line 81
    invoke-static/range {v2 .. v13}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Lw9/x;->G0(Lea/m;)V

    .line 83
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 84
    invoke-virtual {v1}, Lw9/x;->B0()Lya/b;

    move-result-object v1

    .line 85
    iget-object v2, v0, Lw9/x$o;->h:Lw9/a;

    .line 86
    iget-object v2, v2, Lw9/a;->h:Lv9/a;

    .line 87
    invoke-interface {v1, v2}, Lya/b;->s(Lv9/a;)V

    goto :goto_1

    .line 88
    :cond_7
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "AdaptKitPairedDevicesController"

    const-string v5, "right is unknown, going in for a scan"

    invoke-static/range {v3 .. v8}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 89
    invoke-static {}, Laa/a;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 90
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 91
    invoke-virtual {v1}, Lw9/x;->C0()Lcb/a;

    move-result-object v1

    .line 92
    iget-object v2, v0, Lw9/x$o;->i:Lw9/x;

    invoke-static {v2}, Lw9/x;->p0(Lw9/x;)Lka/d;

    move-result-object v2

    .line 93
    iget-object v3, v0, Lw9/x$o;->i:Lw9/x;

    .line 94
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v4, Lw9/e1;

    invoke-direct {v4, v3}, Lw9/e1;-><init>(Lw9/x;)V

    .line 96
    invoke-interface {v1, v2, v4}, Lcb/a;->a(Lka/d;Lv9/p0;)V

    goto :goto_1

    .line 97
    :cond_8
    iget-object v1, v0, Lw9/x$o;->i:Lw9/x;

    .line 98
    invoke-virtual {v1}, Lw9/x;->C0()Lcb/a;

    move-result-object v1

    .line 99
    iget-object v2, v0, Lw9/x$o;->i:Lw9/x;

    invoke-static {v2}, Lw9/x;->p0(Lw9/x;)Lka/d;

    move-result-object v2

    .line 100
    iget-object v3, v0, Lw9/x$o;->i:Lw9/x;

    .line 101
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v4, Lw9/e1;

    invoke-direct {v4, v3}, Lw9/e1;-><init>(Lw9/x;)V

    .line 103
    invoke-interface {v1, v2, v4}, Lcb/a;->b(Lka/d;Lv9/p0;)V

    .line 104
    :cond_9
    :goto_1
    sget-object v1, Lfd/o;->a:Lfd/o;

    return-object v1
.end method
