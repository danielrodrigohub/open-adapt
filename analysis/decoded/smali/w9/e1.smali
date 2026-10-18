.class public final Lw9/e1;
.super Ljava/lang/Object;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lka/b;",
        "Lka/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/x;)V
    .locals 0

    iput-object p1, p0, Lw9/e1;->a:Lw9/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lka/b;

    const-string v2, "result"

    .line 2
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lw9/e1;->a:Lw9/x;

    .line 4
    iget-object v2, v2, Lw9/x;->l:Lea/m;

    .line 5
    iget-object v2, v2, Lea/m;->l:Lea/b;

    .line 6
    iget-object v2, v2, Lea/b;->i:Ljava/lang/String;

    .line 7
    iget-object v3, v1, Lka/b;->h:Lka/c;

    .line 8
    iget-object v3, v3, Lka/c;->j:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v3

    .line 11
    iget-object v2, v0, Lw9/e1;->a:Lw9/x;

    .line 12
    iget-object v2, v2, Lw9/x;->l:Lea/m;

    .line 13
    iget-object v2, v2, Lea/m;->l:Lea/b;

    .line 14
    iget-object v2, v2, Lea/b;->k:Ljava/lang/String;

    const-string v4, "right after scan BEFORE changing address "

    .line 15
    invoke-static {v4, v2}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "AdaptKitPairedDevicesController"

    move-object v6, v9

    .line 16
    invoke-static/range {v3 .. v8}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 17
    iget-object v2, v0, Lw9/e1;->a:Lw9/x;

    .line 18
    iget-object v6, v2, Lw9/x;->l:Lea/m;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 19
    iget-object v10, v6, Lea/m;->l:Lea/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 20
    iget-object v1, v1, Lka/b;->h:Lka/c;

    .line 21
    iget-object v11, v1, Lka/c;->i:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v15, 0x37

    .line 22
    invoke-static/range {v10 .. v15}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v10

    const/4 v11, 0x0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    const/16 v17, 0x17ef

    move-object v12, v3

    move-object v13, v4

    .line 24
    invoke-static/range {v6 .. v17}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v1

    .line 25
    invoke-virtual {v2, v1}, Lw9/x;->G0(Lea/m;)V

    .line 26
    sget-object v1, Lya/a;->a:Lya/a;

    .line 27
    iget-object v2, v0, Lw9/e1;->a:Lw9/x;

    .line 28
    iget-object v2, v2, Lw9/x;->l:Lea/m;

    .line 29
    iget-object v3, v2, Lea/m;->h:Ljava/lang/String;

    .line 30
    iget-object v2, v2, Lea/m;->l:Lea/b;

    .line 31
    invoke-virtual {v1, v3, v2}, Lya/a;->b(Ljava/lang/String;Lea/b;)Lya/b;

    .line 32
    iget-object v1, v0, Lw9/e1;->a:Lw9/x;

    .line 33
    iget-object v2, v1, Lw9/x;->l:Lea/m;

    .line 34
    invoke-virtual {v1, v2}, Lw9/x;->updatePair(Lea/m;)V

    .line 35
    iget-object v1, v0, Lw9/e1;->a:Lw9/x;

    .line 36
    invoke-virtual {v1}, Lw9/x;->B0()Lya/b;

    move-result-object v1

    .line 37
    sget-object v2, Lv9/a;->i:Lv9/a$a;

    .line 38
    sget-object v2, Lv9/a;->l:Lv9/a;

    .line 39
    invoke-interface {v1, v2}, Lya/b;->s(Lv9/a;)V

    .line 40
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v3

    .line 41
    iget-object v1, v0, Lw9/e1;->a:Lw9/x;

    .line 42
    iget-object v1, v1, Lw9/x;->l:Lea/m;

    .line 43
    iget-object v1, v1, Lea/m;->l:Lea/b;

    .line 44
    iget-object v1, v1, Lea/b;->k:Ljava/lang/String;

    const-string v2, "right after scan and AFTER changing address "

    .line 45
    invoke-static {v2, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "AdaptKitPairedDevicesController"

    .line 46
    invoke-static/range {v3 .. v8}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 47
    iget-object v1, v0, Lw9/e1;->a:Lw9/x;

    .line 48
    invoke-virtual {v1}, Lw9/x;->C0()Lcb/a;

    move-result-object v1

    .line 49
    iget-object v2, v0, Lw9/e1;->a:Lw9/x;

    invoke-static {v2}, Lw9/x;->p0(Lw9/x;)Lka/d;

    move-result-object v2

    invoke-interface {v1, v2}, Lcb/a;->c(Lka/d;)V

    :cond_0
    return-void
.end method

.method public final b(Lv9/m;)V
    .locals 4

    .line 1
    check-cast p1, Lka/a;

    const-string v0, "error"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lw9/e1;->a:Lw9/x;

    .line 4
    iget-object v0, v0, Lw9/x;->E:Lw9/x$q0;

    .line 5
    new-instance v1, Lv9/z6;

    .line 6
    iget-object v2, p0, Lw9/e1;->a:Lw9/x;

    .line 7
    iget-object v2, v2, Lw9/x;->l:Lea/m;

    .line 8
    iget-object v2, v2, Lea/m;->l:Lea/b;

    .line 9
    iget-object v2, v2, Lea/b;->j:Ljava/lang/String;

    .line 10
    iget-object v3, p1, Lv9/m;->h:Lv9/a;

    .line 11
    invoke-direct {v1, v2, v3, p1}, Lv9/z6;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {v0, v1}, Lw9/x$q0;->c(Lv9/f;)V

    return-void
.end method
