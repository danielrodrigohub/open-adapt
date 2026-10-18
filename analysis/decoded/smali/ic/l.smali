.class public final Lic/l;
.super Ljava/lang/Object;
.source "ConnectionManager.kt"

# interfaces
.implements Lnc/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/c<",
        "Lmc/h;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lic/p;

.field public final synthetic j:Z

.field public final synthetic k:Lhc/l0;

.field public final synthetic l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lic/p;ZLhc/l0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lic/l;->h:Ljava/lang/String;

    iput-object p2, p0, Lic/l;->i:Lic/p;

    iput-boolean p3, p0, Lic/l;->j:Z

    iput-object p4, p0, Lic/l;->k:Lhc/l0;

    iput-object p5, p0, Lic/l;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    const-string v1, "subscribeAndAuthenticate::UpdateDeviceNotifications: "

    .line 2
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lic/l;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Requesting Authentication Key for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lic/l;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Lic/l;->i:Lic/p;

    .line 9
    iget-object v2, v2, Lic/p;->d:[B

    .line 10
    invoke-static {v2}, Lg7/b;->e([B)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    .line 12
    invoke-static/range {v0 .. v6}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lic/l;->i:Lic/p;

    .line 14
    iget-object v0, v0, Lic/p;->d:[B

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lmc/h;

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
    iget-object v2, p0, Lic/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Authenticate response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v5, "ConnectionManager"

    .line 8
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 9
    instance-of v0, p1, Lmc/h0;

    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lic/l;->j:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lic/l;->i:Lic/p;

    check-cast p1, Lmc/h0;

    .line 12
    iget-object p1, p1, Lmc/h0;->a:[B

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    .line 14
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, v0, Lic/p;->d:[B

    .line 16
    :cond_0
    sget-object p1, Lic/g;->b:Lic/g;

    .line 17
    new-instance v0, Lic/u;

    .line 18
    iget-object v1, p0, Lic/l;->h:Ljava/lang/String;

    .line 19
    invoke-direct {v0, v1}, Lic/u;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, v0}, Lic/g;->l(Lf8/b;)V

    const-wide/16 v0, 0x14

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 22
    iget-object p1, p0, Lic/l;->k:Lhc/l0;

    new-instance v0, Lic/k;

    iget-object v1, p0, Lic/l;->h:Ljava/lang/String;

    iget-object v2, p0, Lic/l;->l:Ljava/lang/String;

    iget-object v3, p0, Lic/l;->i:Lic/p;

    invoke-direct {v0, p1, v1, v2, v3}, Lic/k;-><init>(Lhc/l0;Ljava/lang/String;Ljava/lang/String;Lic/p;)V

    invoke-interface {p1, v0}, Lhc/l0;->e(Lnc/a;)V

    goto :goto_0

    .line 23
    :cond_1
    sget-object p1, Lic/g;->b:Lic/g;

    .line 24
    new-instance v0, Lic/c;

    .line 25
    iget-object v1, p0, Lic/l;->h:Ljava/lang/String;

    .line 26
    invoke-direct {v0, v1}, Lic/c;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, v0}, Lic/g;->l(Lf8/b;)V

    .line 28
    invoke-virtual {p1}, Lic/g;->h()V

    :goto_0
    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const-string v0, "subscribeAndAuthenticate::UpdateDeviceNotifications: "

    .line 2
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lic/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v3, p1

    .line 8
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->b(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/util/concurrent/TimeoutException;

    if-nez p1, :cond_0

    .line 10
    sget-object p1, Lic/g;->b:Lic/g;

    .line 11
    new-instance v0, Lic/c;

    .line 12
    iget-object v1, p0, Lic/l;->h:Ljava/lang/String;

    .line 13
    invoke-direct {v0, v1}, Lic/c;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v0}, Lic/g;->l(Lf8/b;)V

    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lic/g;->b:Lic/g;

    .line 16
    new-instance v0, Lic/r;

    .line 17
    iget-object v1, p0, Lic/l;->h:Ljava/lang/String;

    .line 18
    invoke-direct {v0, v1}, Lic/r;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v0}, Lic/g;->l(Lf8/b;)V

    .line 20
    :goto_0
    sget-object p1, Lic/g;->b:Lic/g;

    .line 21
    invoke-virtual {p1}, Lic/g;->h()V

    return-void
.end method
