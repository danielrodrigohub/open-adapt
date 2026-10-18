.class public final Lrc/f;
.super Ljava/lang/Object;
.source "FirmwareUtil.kt"

# interfaces
.implements Lrc/d;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lhc/l0;

.field public final synthetic d:Lrc/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhc/l0;Lrc/c;)V
    .locals 0

    iput-object p1, p0, Lrc/f;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lrc/f;->b:Z

    iput-object p2, p0, Lrc/f;->c:Lhc/l0;

    iput-object p3, p0, Lrc/f;->d:Lrc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 14

    const-string v0, "version"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lrc/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Querying isGold = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lrc/f;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " MCU"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, " IMAGE_STATS"

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 3
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lrc/f;->c:Lhc/l0;

    .line 5
    iget-object v1, p0, Lrc/f;->a:Ljava/lang/String;

    .line 6
    iget-boolean v10, p0, Lrc/f;->b:Z

    if-eqz v10, :cond_0

    sget-object v2, Lrc/b;->m:Lrc/b;

    goto :goto_0

    :cond_0
    sget-object v2, Lrc/b;->j:Lrc/b;

    .line 7
    :goto_0
    new-instance v3, Lrc/f$a;

    iget-object v13, p0, Lrc/f;->d:Lrc/c;

    move-object v8, v3

    move-object v9, v1

    move-object v11, v0

    move-object v12, p1

    invoke-direct/range {v8 .. v13}, Lrc/f$a;-><init>(Ljava/lang/String;ZLhc/l0;Ljava/lang/String;Lrc/c;)V

    .line 8
    new-instance p1, Lrc/e;

    invoke-direct {p1, v1, v2, v3}, Lrc/e;-><init>(Ljava/lang/String;Lrc/b;Lrc/d;)V

    invoke-interface {v0, p1}, Lhc/l0;->X(Lnc/c;)V

    return-void
.end method
