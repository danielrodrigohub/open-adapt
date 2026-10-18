.class public final Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;
.super Lld/i;
.source "DataOptInSwitchPreference.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.settings.SettingsPrivacyActivity$getFlagAndUpdateUi$1$2"
    f = "DataOptInSwitchPreference.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

.field public final synthetic i:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic j:Z

.field public final synthetic k:Z


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;Lrd/w;ZZLjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;",
            "Lrd/w<",
            "Ljava/lang/Boolean;",
            ">;ZZ",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    iput-object p2, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->i:Lrd/w;

    iput-boolean p3, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->j:Z

    iput-boolean p4, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->k:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    iget-object v2, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->i:Lrd/w;

    iget-boolean v3, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->j:Z

    iget-boolean v4, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->k:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;-><init>(Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;Lrd/w;ZZLjd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    sget v0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->D:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->n0(Z)V

    .line 4
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->i:Lrd/w;

    iget-object p1, p1, Lrd/w;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    .line 6
    invoke-virtual {p1, v0}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->m0(Z)V

    .line 7
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    .line 8
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p1, Lq7/m0;->c:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->j:Z

    const/16 v4, 0x8

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    .line 11
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p1, Lq7/m0;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 13
    sget-object p1, Ls9/y;->a:Ls9/y;

    .line 14
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    .line 15
    new-instance v1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$a;

    iget-boolean v2, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->k:Z

    iget-boolean v3, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->j:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$a;-><init>(Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;ZZ)V

    sget-object v2, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$b;

    invoke-virtual {p1, v0, v1, v2}, Ls9/y;->b(Landroid/app/Activity;Lqd/l;Lqd/l;)Landroidx/appcompat/app/d;

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v3}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->m0(Z)V

    .line 20
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    .line 21
    iget-object v0, v0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->B:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v3}, Lh8/a;->w(Z)V

    .line 23
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    .line 24
    iget-object v0, v0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    if-eqz v0, :cond_5

    .line 25
    iget-object v0, v0, Lq7/m0;->c:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->k:Z

    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    if-nez v1, :cond_4

    .line 27
    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->jumpDrawablesToCurrentState()V

    .line 28
    :cond_4
    :goto_1
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 29
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1
.end method
