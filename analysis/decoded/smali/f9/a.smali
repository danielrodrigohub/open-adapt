.class public final synthetic Lf9/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Lt9/d;

.field public final synthetic i:Lf9/b;

.field public final synthetic j:Lea/m;


# direct methods
.method public synthetic constructor <init>(Lt9/d;Lf9/b;Lea/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf9/a;->h:Lt9/d;

    iput-object p2, p0, Lf9/a;->i:Lf9/b;

    iput-object p3, p0, Lf9/a;->j:Lea/m;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lf9/a;->h:Lt9/d;

    iget-object v0, p0, Lf9/a;->i:Lf9/b;

    iget-object v1, p0, Lf9/a;->j:Lea/m;

    const-string v2, "$connection"

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$device"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v2}, Lcom/nike/adapt/analytics/TrackManager;->multipairOnShoeCardSelected()V

    .line 3
    sget-object v2, Lt9/d;->h:Lt9/d;

    const-string v3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    if-ne p1, v2, :cond_0

    .line 4
    sget-object p1, Lh9/w0;->c:Lh9/w0;

    iget-object v0, v0, Lf9/b;->d:Landroid/content/Context;

    invoke-static {v0, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lf/e;

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lh9/d0;

    invoke-direct {p1, v1}, Lh9/d0;-><init>(Lea/m;)V

    iget-object v0, v0, Lf9/b;->d:Landroid/content/Context;

    invoke-static {v0, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lf/e;

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
