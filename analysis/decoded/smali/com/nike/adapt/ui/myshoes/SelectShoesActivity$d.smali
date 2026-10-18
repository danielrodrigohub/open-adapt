.class public final Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$d;
.super Ljava/lang/Object;
.source "SelectShoesActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$d;->h:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$d;->h:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity$d;->h:Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    .line 3
    iget-object v1, v0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->M:Lea/m;

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->K:Lcom/nike/adapt/adk/IAdaptRequester;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/nike/adapt/adk/IAdaptRequester;->connectIfNotConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, v0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;->L:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1388

    .line 7
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "handler"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "adaptRequester"

    .line 8
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method
