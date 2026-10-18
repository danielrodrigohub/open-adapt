.class public final Lhc/l$o;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->T(Lnc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [B

    .line 2
    :try_start_0
    invoke-static {p1}, Lgc/y;->B([B)Lgc/y;

    move-result-object p1
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Lgc/y;->A()Lgc/y$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgc/y$a;->m(I)Lgc/y$a;

    invoke-virtual {p1}, Lm7/w$a;->h()Lm7/w;

    move-result-object p1

    check-cast p1, Lgc/y;

    .line 4
    :goto_0
    invoke-virtual {p1}, Lgc/y;->z()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
