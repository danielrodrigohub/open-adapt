.class public final Lv9/s0;
.super Lrd/o;
.source "AdaptKitSessionListener.kt"

# interfaces
.implements Lqd/a;


# instance fields
.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lv9/s0;->h:Ljava/lang/Object;

    iput-object p2, p0, Lv9/s0;->i:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv9/s0;->invoke()V

    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method

.method public final invoke()V
    .locals 12

    .line 2
    iget-object v0, p0, Lv9/s0;->h:Ljava/lang/Object;

    check-cast v0, Lya/h0;

    invoke-virtual {v0}, Lya/h0;->n()Lv9/a;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lv9/s0;->h:Ljava/lang/Object;

    check-cast v1, Lya/h0;

    invoke-virtual {v1}, Lya/h0;->p()Ljava/lang/String;

    move-result-object v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lv9/s0;->i:Ljava/lang/Object;

    check-cast v2, Lya/d;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2}, Lya/d;->g0()Lda/d;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lda/d;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Lv9/m2;

    .line 8
    iget-object v3, p0, Lv9/s0;->i:Ljava/lang/Object;

    check-cast v3, Lya/d;

    .line 9
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 10
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "No device connected"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-direct {v2, v3, v0, v4, v1}, Lv9/m2;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lv9/s0;->h:Ljava/lang/Object;

    check-cast v0, Lya/h0;

    invoke-virtual {v0, v2}, Lya/h0;->k(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 13
    :cond_0
    iget-object v2, p0, Lv9/s0;->h:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lya/h0;

    instance-of v4, v4, Lnc/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, " from "

    const-string v6, ": "

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    .line 14
    :try_start_1
    sget-object v4, Lv9/t;->a:Lv9/t;

    .line 15
    sget-object v4, Lv9/t;->i:Leb/f;

    new-array v3, v3, [Leb/g;

    .line 16
    new-instance v8, Leb/c;

    new-instance v9, Leb/a;

    iget-object v10, p0, Lv9/s0;->i:Ljava/lang/Object;

    check-cast v10, Lya/d;

    .line 17
    iget-object v10, v10, Lya/d;->f:Ljava/lang/String;

    .line 18
    check-cast v2, Lya/h0;

    check-cast v2, Lnc/c;

    invoke-interface {v2}, Lnc/c;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lv9/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with value: "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Leb/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Leb/c;-><init>(Leb/d;)V

    aput-object v8, v3, v7

    invoke-virtual {v4, v3}, Leb/f;->a([Leb/g;)V

    goto :goto_0

    .line 19
    :cond_1
    sget-object v2, Lv9/t;->a:Lv9/t;

    .line 20
    sget-object v2, Lv9/t;->i:Leb/f;

    new-array v3, v3, [Leb/g;

    .line 21
    new-instance v4, Leb/c;

    new-instance v8, Leb/a;

    iget-object v9, p0, Lv9/s0;->i:Ljava/lang/Object;

    check-cast v9, Lya/d;

    .line 22
    iget-object v9, v9, Lya/d;->f:Ljava/lang/String;

    .line 23
    invoke-virtual {v0}, Lv9/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Leb/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Leb/c;-><init>(Leb/d;)V

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Leb/f;->a([Leb/g;)V

    .line 24
    :goto_0
    iget-object v0, p0, Lv9/s0;->i:Ljava/lang/Object;

    check-cast v0, Lya/d;

    iget-object v1, p0, Lv9/s0;->h:Ljava/lang/Object;

    check-cast v1, Lya/h0;

    invoke-static {v0, v1}, Lya/d;->Y(Lya/d;Lya/h0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 25
    iget-object v1, p0, Lv9/s0;->h:Ljava/lang/Object;

    check-cast v1, Lya/h0;

    invoke-virtual {v1, v0}, Lya/h0;->k(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
