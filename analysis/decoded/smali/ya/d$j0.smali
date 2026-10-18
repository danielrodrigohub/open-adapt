.class public final Lya/d$j0;
.super Lya/d$c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->l0(Lv9/a;Lea/h$a;Lqd/l;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$c<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:I

.field public final p:Lya/d$j0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic q:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Ljava/lang/Boolean;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic r:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Ljava/lang/Throwable;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;Lea/h$a;Lqd/l;Lqd/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lya/d;",
            "Lv9/a;",
            "Lea/h$a;",
            "Lqd/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p4, p0, Lya/d$j0;->q:Lqd/l;

    iput-object p5, p0, Lya/d$j0;->r:Lqd/l;

    .line 1
    invoke-direct {p0, p1}, Lya/d$c;-><init>(Lya/d;)V

    .line 2
    iget-object p4, p1, Lya/d;->f:Ljava/lang/String;

    const-string p5, "\tlaceToPercent"

    .line 3
    invoke-static {p4, p5}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 4
    iput-object p4, p0, Lya/d$j0;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/d$j0;->n:Lv9/a;

    .line 6
    iget p2, p3, Lea/h$a;->j:I

    .line 7
    iput p2, p0, Lya/d$j0;->o:I

    .line 8
    new-instance p2, Lya/d$j0$a;

    invoke-direct {p2, p1, p0}, Lya/d$j0$a;-><init>(Lya/d;Lya/d$j0;)V

    .line 9
    iput-object p2, p0, Lya/d$j0;->p:Lya/d$j0$a;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lya/d$j0;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/d$j0;->n:Lv9/a;

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

    iget-object v0, p0, Lya/d$j0;->p:Lya/d$j0$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/d$j0;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lya/d$j0;->r:Lqd/l;

    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lya/d$j0;->q:Lqd/l;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
