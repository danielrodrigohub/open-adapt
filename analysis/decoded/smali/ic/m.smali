.class public final Lic/m;
.super Ljava/lang/Object;
.source "ConnectionManager.kt"

# interfaces
.implements Lnc/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/a<",
        "Lmc/j0;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Z

.field public final synthetic k:Lhc/l0;

.field public final synthetic l:Lic/p;

.field public final synthetic m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLhc/l0;Lic/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lic/m;->i:Ljava/lang/String;

    iput-boolean p2, p0, Lic/m;->j:Z

    iput-object p3, p0, Lic/m;->k:Lhc/l0;

    iput-object p4, p0, Lic/m;->l:Lic/p;

    iput-object p5, p0, Lic/m;->m:Ljava/lang/String;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lic/m;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lmc/j0;

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const-string v0, "subscribeAndAuthenticate::UpdateDeviceNotifications: "

    .line 4
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lic/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    .line 8
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lic/g;->b:Lic/g;

    new-instance v1, Lic/a;

    iget-object v2, p0, Lic/m;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Lic/a;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1}, Lic/g;->l(Lf8/b;)V

    goto :goto_0

    .line 12
    :cond_1
    sget-object v0, Lic/g;->b:Lic/g;

    new-instance v1, Lic/r;

    iget-object v2, p0, Lic/m;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Lic/r;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Lic/g;->l(Lf8/b;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lic/m;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    sget-object v0, Lic/g;->b:Lic/g;

    .line 16
    new-instance v1, Lic/x;

    .line 17
    iget-object v2, p0, Lic/m;->i:Ljava/lang/String;

    .line 18
    invoke-direct {v1, v2}, Lic/x;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v1}, Lic/g;->l(Lf8/b;)V

    .line 20
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 21
    sget-object p1, Lic/g;->b:Lic/g;

    .line 22
    invoke-virtual {p1}, Lic/g;->h()V

    goto :goto_2

    .line 23
    :cond_3
    sget-object v0, Lmc/j0;->j:Lmc/j0;

    if-ne p1, v0, :cond_6

    .line 24
    iget-object p1, p0, Lic/m;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 25
    iget-boolean p1, p0, Lic/m;->j:Z

    if-eqz p1, :cond_4

    .line 26
    sget-object p1, Lic/g;->b:Lic/g;

    .line 27
    new-instance v0, Lic/d;

    .line 28
    iget-object v1, p0, Lic/m;->i:Ljava/lang/String;

    .line 29
    invoke-direct {v0, v1}, Lic/d;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0}, Lic/g;->l(Lf8/b;)V

    goto :goto_1

    .line 31
    :cond_4
    sget-object p1, Lic/g;->b:Lic/g;

    .line 32
    new-instance v0, Lic/e;

    .line 33
    iget-object v1, p0, Lic/m;->i:Ljava/lang/String;

    .line 34
    invoke-direct {v0, v1}, Lic/e;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, v0}, Lic/g;->l(Lf8/b;)V

    :cond_5
    :goto_1
    const-wide/16 v0, 0x14

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 37
    iget-object p1, p0, Lic/m;->k:Lhc/l0;

    new-instance v0, Lic/l;

    iget-object v3, p0, Lic/m;->i:Ljava/lang/String;

    iget-object v4, p0, Lic/m;->l:Lic/p;

    iget-boolean v5, p0, Lic/m;->j:Z

    iget-object v7, p0, Lic/m;->m:Ljava/lang/String;

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lic/l;-><init>(Ljava/lang/String;Lic/p;ZLhc/l0;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lhc/l0;->I(Lnc/c;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lhc/g0$a;->b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    sget-object p1, Lic/g;->b:Lic/g;

    new-instance v0, Lic/r;

    iget-object v1, p0, Lic/m;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lic/r;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Lic/g;->l(Lf8/b;)V

    .line 4
    invoke-virtual {p1}, Lic/g;->h()V

    return-void
.end method
