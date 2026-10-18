.class public final Lhc/i0;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Lhc/k0;


# direct methods
.method public constructor <init>(Lhc/k0;I)V
    .locals 0

    iput-object p1, p0, Lhc/i0;->i:Lhc/k0;

    iput p2, p0, Lhc/i0;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Lgc/f;->A()Lgc/f$a;

    move-result-object v0

    iget v1, p0, Lhc/i0;->h:I

    .line 2
    invoke-virtual {v0, v1}, Lgc/f$a;->m(I)Lgc/f$a;

    .line 3
    invoke-virtual {v0}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/f;

    .line 4
    new-instance v1, Lhc/m0;

    sget-object v2, Lhc/d;->t:Lhc/d;

    const/16 v2, 0x10

    int-to-byte v2, v2

    sget-object v3, Lhc/m0$a;->l:Lhc/m0$a;

    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lhc/i0;->i:Lhc/k0;

    iget-object v0, v0, Lhc/k0;->l:Lhc/e;

    invoke-virtual {v0, v1}, Lhc/e;->i(Lhc/m0;)V
    :try_end_0
    .catch Lkc/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lhc/i0;->i:Lhc/k0;

    invoke-virtual {v1}, Lhc/k0;->e()V

    .line 7
    iget-object v1, p0, Lhc/i0;->i:Lhc/k0;

    invoke-virtual {v1, v0}, Lhc/k0;->g(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
