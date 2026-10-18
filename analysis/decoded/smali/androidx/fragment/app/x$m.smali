.class public final Landroidx/fragment/app/x$m;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/x$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Landroidx/fragment/app/x;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/x;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/x$m;->c:Landroidx/fragment/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Landroidx/fragment/app/x$m;->a:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Landroidx/fragment/app/x$m;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x$m;->c:Landroidx/fragment/app/x;

    iget-object v0, v0, Landroidx/fragment/app/x;->t:Landroidx/fragment/app/m;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/fragment/app/x$m;->a:I

    if-gez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/m;->k()Landroidx/fragment/app/x;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/x;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/x$m;->c:Landroidx/fragment/app/x;

    iget v1, p0, Landroidx/fragment/app/x$m;->a:I

    iget v2, p0, Landroidx/fragment/app/x$m;->b:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/fragment/app/x;->U(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    return p1
.end method
