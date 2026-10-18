.class public final Lya/d$x0;
.super Lya/d$b;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->q(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/d$x0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic p:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;)V
    .locals 2

    iput-object p1, p0, Lya/d$x0;->p:Lya/d;

    .line 1
    invoke-direct {p0, p1}, Lya/d$b;-><init>(Lya/d;)V

    .line 2
    iget-object v0, p1, Lya/d;->f:Ljava/lang/String;

    const-string v1, "\tfirmwareUpdateFlash"

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lya/d$x0;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/d$x0;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/d$x0$a;

    invoke-direct {p2, p1, p0}, Lya/d$x0$a;-><init>(Lya/d;Lya/d$x0;)V

    .line 7
    iput-object p2, p0, Lya/d$x0;->o:Lya/d$x0$a;

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/Throwable;)Z
    .locals 4

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lv9/t$a;

    if-nez v0, :cond_1

    instance-of p1, p1, Lya/d$e;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Lya/d$x0;->p:Lya/d;

    .line 3
    iget-object v0, p1, Lya/d;->n:Lfa/c;

    .line 4
    sget-object v1, Lfa/k$n;->h:Lfa/k$n;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lya/d;->m0(Lfa/c;)V

    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/d$x0;->n:Lv9/a;

    return-object v0
.end method

.method public final o()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lya/d$x0;->o:Lya/d$x0$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/d$x0;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d$x0;->p:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->n:Lfa/c;

    .line 3
    new-instance v2, Lfa/k$x;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Error occurred during firmware update"

    .line 5
    :cond_0
    invoke-direct {v2, p1}, Lfa/k$x;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    const/4 v3, 0x0

    .line 6
    invoke-static {v1, v3, v3, v2, p1}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lya/d;->m0(Lfa/c;)V

    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    iget-object p1, p0, Lya/d$x0;->p:Lya/d;

    .line 3
    iget-object v0, p1, Lya/d;->n:Lfa/c;

    .line 4
    sget-object v1, Lfa/k$n;->h:Lfa/k$n;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lya/d;->m0(Lfa/c;)V

    .line 6
    iget-object p1, p0, Lya/d$x0;->p:Lya/d;

    sget-object v0, Lda/a;->k:Lda/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object v0, p1, Lya/d;->t:Lda/a;

    return-void
.end method
