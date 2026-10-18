.class public final Lrc/f$a;
.super Ljava/lang/Object;
.source "FirmwareUtil.kt"

# interfaces
.implements Lrc/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrc/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Lhc/l0;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lrc/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLhc/l0;Ljava/lang/String;Lrc/c;)V
    .locals 0

    iput-object p1, p0, Lrc/f$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lrc/f$a;->b:Z

    iput-object p3, p0, Lrc/f$a;->c:Lhc/l0;

    iput-object p4, p0, Lrc/f$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lrc/f$a;->e:Lrc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 10

    const-string v0, "version"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lrc/f$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Querying isGold = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lrc/f$a;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " BLE"

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
    iget-object v0, p0, Lrc/f$a;->c:Lhc/l0;

    .line 5
    iget-object v7, p0, Lrc/f$a;->a:Ljava/lang/String;

    .line 6
    iget-boolean v3, p0, Lrc/f$a;->b:Z

    if-eqz v3, :cond_0

    sget-object v1, Lrc/b;->n:Lrc/b;

    goto :goto_0

    :cond_0
    sget-object v1, Lrc/b;->k:Lrc/b;

    :goto_0
    move-object v8, v1

    .line 7
    new-instance v9, Lrc/f$a$a;

    iget-object v4, p0, Lrc/f$a;->d:Ljava/lang/String;

    iget-object v6, p0, Lrc/f$a;->e:Lrc/c;

    move-object v1, v9

    move-object v2, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lrc/f$a$a;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lrc/c;)V

    .line 8
    new-instance p1, Lrc/e;

    invoke-direct {p1, v7, v8, v9}, Lrc/e;-><init>(Ljava/lang/String;Lrc/b;Lrc/d;)V

    invoke-interface {v0, p1}, Lhc/l0;->X(Lnc/c;)V

    return-void
.end method
