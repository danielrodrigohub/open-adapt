.class public final Lf/u$b;
.super Li0/b;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/u;


# direct methods
.method public constructor <init>(Lf/u;)V
    .locals 0

    iput-object p1, p0, Lf/u$b;->a:Lf/u;

    invoke-direct {p0}, Li0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/u$b;->a:Lf/u;

    const/4 v1, 0x0

    iput-object v1, v0, Lf/u;->t:Lj/g;

    .line 2
    iget-object v0, v0, Lf/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
