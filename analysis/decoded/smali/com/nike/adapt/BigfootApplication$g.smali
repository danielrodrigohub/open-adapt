.class public final Lcom/nike/adapt/BigfootApplication$g;
.super Ljava/lang/Object;
.source "BigfootApplication.kt"

# interfaces
.implements Lv9/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/BigfootApplication;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/nike/adapt/BigfootApplication;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/BigfootApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/BigfootApplication$g;->a:Lcom/nike/adapt/BigfootApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/BigfootApplication$g;->a:Lcom/nike/adapt/BigfootApplication;

    .line 2
    iget-object v0, v0, Lcom/nike/adapt/BigfootApplication;->h:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    instance-of v1, v0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;

    .line 5
    iget-object v1, v0, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->B:Lwa/k;

    invoke-virtual {v1, v0}, Lwa/k;->a(Landroid/content/Context;)Lja/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->l0(Lja/b;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/BigfootApplication$g;->a:Lcom/nike/adapt/BigfootApplication;

    .line 2
    iget-object v0, v0, Lcom/nike/adapt/BigfootApplication;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final c(Lja/b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/BigfootApplication$g;->a:Lcom/nike/adapt/BigfootApplication;

    .line 2
    iget-object p1, p1, Lcom/nike/adapt/BigfootApplication;->h:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Lg7/c;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lh9/c;->c:Lh9/c;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;

    .line 6
    iget-object v0, p1, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->B:Lwa/k;

    invoke-virtual {v0, p1}, Lwa/k;->a(Landroid/content/Context;)Lja/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/requirements/AdaptRequirementsActivity;->l0(Lja/b;)V

    :cond_1
    :goto_0
    return-void
.end method
