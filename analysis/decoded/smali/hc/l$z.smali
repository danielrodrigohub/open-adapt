.class public final Lhc/l$z;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lnc/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->g(Lnc/d;)Lhc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/a<",
        "Lmc/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lnc/a;

.field public final synthetic i:Lhc/l;

.field public final synthetic j:Lnc/d;

.field public final synthetic k:Lrd/u;


# direct methods
.method public constructor <init>(Lnc/a;Lhc/l;Lnc/d;Lrd/u;)V
    .locals 0

    iput-object p1, p0, Lhc/l$z;->h:Lnc/a;

    iput-object p2, p0, Lhc/l$z;->i:Lhc/l;

    iput-object p3, p0, Lhc/l$z;->j:Lnc/d;

    iput-object p4, p0, Lhc/l$z;->k:Lrd/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Lmc/c;

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget p1, p1, Lmc/c;->h:I

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 4
    iget-object v3, p0, Lhc/l$z;->i:Lhc/l;

    .line 5
    iget-object v2, p0, Lhc/l$z;->j:Lnc/d;

    const/4 v4, 0x1

    .line 6
    new-instance v6, Lhc/l$b0;

    invoke-direct {v6, v2}, Lhc/l$b0;-><init>(Lnc/d;)V

    new-instance v5, Lhc/l$c0;

    iget-object p1, p0, Lhc/l$z;->j:Lnc/d;

    iget-object v0, p0, Lhc/l$z;->i:Lhc/l;

    invoke-direct {v5, p1, v0}, Lhc/l$c0;-><init>(Lnc/d;Lhc/l;)V

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p1, Lhc/p;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lhc/p;-><init>(Lnc/d;Lhc/l;ZLqd/p;Lqd/a;)V

    .line 9
    iget-object v9, p0, Lhc/l$z;->i:Lhc/l;

    iget-object v8, p0, Lhc/l$z;->j:Lnc/d;

    const/4 v10, 0x0

    new-instance v12, Lhc/l$d0;

    iget-object v0, p0, Lhc/l$z;->k:Lrd/u;

    invoke-direct {v12, v0, v9, p1, v8}, Lhc/l$d0;-><init>(Lrd/u;Lhc/l;Lnc/d;Lnc/d;)V

    new-instance v11, Lhc/l$e0;

    iget-object p1, p0, Lhc/l$z;->k:Lrd/u;

    iget-object v0, p0, Lhc/l$z;->j:Lnc/d;

    iget-object v1, p0, Lhc/l$z;->i:Lhc/l;

    invoke-direct {v11, p1, v0, v1}, Lhc/l$e0;-><init>(Lrd/u;Lnc/d;Lhc/l;)V

    .line 10
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Lhc/p;

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lhc/p;-><init>(Lnc/d;Lhc/l;ZLqd/p;Lqd/a;)V

    .line 12
    iget-object v0, p0, Lhc/l$z;->i:Lhc/l;

    .line 13
    iget-object v1, v0, Lhc/l;->h:Ljava/lang/String;

    .line 14
    new-instance v2, Lhc/l$a0;

    iget-object v3, p0, Lhc/l$z;->k:Lrd/u;

    iget-object v4, p0, Lhc/l$z;->j:Lnc/d;

    invoke-direct {v2, v3, v0, p1, v4}, Lhc/l$a0;-><init>(Lrd/u;Lhc/l;Lnc/d;Lnc/d;)V

    const-string p1, "deviceId"

    .line 15
    invoke-static {v1, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object p1, Lrc/b;->l:Lrc/b;

    .line 17
    new-instance v3, Lrc/f;

    invoke-direct {v3, v1, v0, v2}, Lrc/f;-><init>(Ljava/lang/String;Lhc/l0;Lrc/c;)V

    .line 18
    new-instance v2, Lrc/e;

    invoke-direct {v2, v1, p1, v3}, Lrc/e;-><init>(Ljava/lang/String;Lrc/b;Lrc/d;)V

    invoke-virtual {v0, v2}, Lhc/l;->X(Lnc/c;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lhc/l$z;->h:Lnc/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Battery level less than 20"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lhc/l$z;->h:Lnc/a;

    invoke-interface {v0, p1}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method
