.class public final Lw9/x$g1;
.super Lrd/o;
.source "InjectionKtx.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;-><init>(Lea/m;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lka/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/x;)V
    .locals 0

    iput-object p1, p0, Lw9/x$g1;->h:Lw9/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lka/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lka/d;

    .line 2
    iget-object v1, p0, Lw9/x$g1;->h:Lw9/x;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "randomUUID()"

    invoke-static {v2, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {v0, v1, v2}, Lka/d;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    return-object v0
.end method
