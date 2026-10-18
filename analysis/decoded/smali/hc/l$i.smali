.class public final Lhc/l$i;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->X(Lnc/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lnc/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/c<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lhc/l;


# direct methods
.method public constructor <init>(Lnc/c;Lhc/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lhc/l;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lhc/l$i;->b:Lnc/c;

    iput-object p2, p0, Lhc/l$i;->c:Lhc/l;

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, [B

    .line 2
    invoke-static {p1}, Lgc/r;->G([B)Lgc/r;

    move-result-object p1

    iget-object v0, p0, Lhc/l$i;->b:Lnc/c;

    iget-object v1, p0, Lhc/l$i;->c:Lhc/l;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgc/r;->C()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgc/r;->D()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgc/r;->E()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v3

    const-string v4, "FirmwareImageStats parsed stats slotId: "

    .line 5
    invoke-static {v4}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 6
    invoke-interface {v0}, Lnc/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " deviceId: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v0, v1, Lhc/l;->h:Ljava/lang/String;

    const-string v1, " version: "

    const-string v5, " status: "

    .line 8
    invoke-static {v4, v0, v1, v2, v5}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lgc/r;->F()Lgc/r$b;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    .line 10
    invoke-static/range {v3 .. v9}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p1}, Lgc/r;->F()Lgc/r$b;

    move-result-object v0

    sget-object v1, Lgc/r$b;->m:Lgc/r$b;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lgc/r;->F()Lgc/r$b;

    move-result-object p1

    sget-object v0, Lgc/r$b;->n:Lgc/r$b;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Lkc/e;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lkc/e;-><init>(Ljava/lang/String;ILrd/h;)V

    throw p1

    :cond_1
    :goto_0
    return-object v2
.end method
