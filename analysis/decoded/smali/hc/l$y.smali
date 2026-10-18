.class public final Lhc/l$y;
.super Ljava/lang/Object;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lnc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->m(Lnc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/c<",
        "[B",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lnc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhc/l$y;->h:Lnc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    const-string v0, "fw system_reset"

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, [B

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lhc/l$y;->h:Lnc/a;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Llc/b;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lhc/l$y;->h:Lnc/a;

    invoke-interface {v0, p1}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method
