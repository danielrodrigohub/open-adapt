.class public final Ls9/a0;
.super Landroid/text/style/ClickableSpan;
.source "UrlUtil.kt"


# instance fields
.field public final synthetic h:Lv7/m;

.field public final synthetic i:Landroid/app/Activity;

.field public final synthetic j:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv7/m;Landroid/app/Activity;Lqd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv7/m;",
            "Landroid/app/Activity;",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ls9/a0;->h:Lv7/m;

    iput-object p2, p0, Ls9/a0;->i:Landroid/app/Activity;

    iput-object p3, p0, Ls9/a0;->j:Lqd/a;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "widget"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ls9/a0;->h:Lv7/m;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lh9/p0;

    invoke-direct {v0, p1}, Lh9/p0;-><init>(Lv7/m;)V

    iget-object p1, p0, Ls9/a0;->i:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Ls9/a0;->j:Lqd/a;

    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
