.class public final Lx8/e1$b;
.super Lrd/o;
.source "ShoeScaleControllerUiHelper.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx8/e1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lx8/e1;


# direct methods
.method public constructor <init>(Lx8/e1;)V
    .locals 0

    iput-object p1, p0, Lx8/e1$b;->h:Lx8/e1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lx8/e1$b;->h:Lx8/e1;

    .line 2
    invoke-virtual {v0}, Lx8/e1;->c()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "indicators.context"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lx8/i1;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
