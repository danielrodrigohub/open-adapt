.class public final Lt1/t$a;
.super Ly0/q;
.source "WorkTagDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/t;-><init>(Ly0/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly0/q<",
        "Lt1/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 0

    invoke-direct {p0, p1}, Ly0/q;-><init>(Ly0/d0;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object v0
.end method

.method public final e(Ld1/g;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p2, Lt1/r;

    .line 2
    iget-object v0, p2, Lt1/r;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p2, p2, Lt1/r;->b:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 6
    invoke-interface {p1, v0}, Ld1/e;->t(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v0, p2}, Ld1/e;->l(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
