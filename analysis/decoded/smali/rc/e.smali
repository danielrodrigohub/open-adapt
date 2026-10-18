.class public final Lrc/e;
.super Ljava/lang/Object;
.source "FirmwareUtil.kt"

# interfaces
.implements Lnc/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/c<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lrc/b;

.field public final synthetic j:Lrc/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrc/b;Lrc/d;)V
    .locals 0

    iput-object p1, p0, Lrc/e;->h:Ljava/lang/String;

    iput-object p2, p0, Lrc/e;->i:Lrc/b;

    iput-object p3, p0, Lrc/e;->j:Lrc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lrc/e;->i:Lrc/b;

    .line 2
    iget v0, v0, Lrc/b;->h:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lrc/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Slot Id : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lrc/e;->i:Lrc/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Version : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v5, " IMAGE_STATS"

    .line 5
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lrc/e;->j:Lrc/d;

    invoke-interface {v0, p1}, Lrc/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of p1, p1, Lkc/e;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lrc/e;->h:Ljava/lang/String;

    const-string v2, " : InvalidFirmwareStatusInSlotException"

    .line 4
    invoke-static {p1, v1, v2}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v4, " IMAGE_STATS"

    .line 5
    invoke-static/range {v0 .. v6}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lrc/e;->j:Lrc/d;

    const-string v0, "SLOT_IMAGE_PARTIAL"

    invoke-interface {p1, v0}, Lrc/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lrc/e;->h:Ljava/lang/String;

    const-string v2, " : InvalidNumberOfZerosDetectedException"

    .line 9
    invoke-static {p1, v0, v2}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v5, " IMAGE_STATS"

    .line 10
    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lrc/e;->j:Lrc/d;

    const-string v0, "SLOT_IMAGE_EMPTY"

    invoke-interface {p1, v0}, Lrc/d;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
