.class public final Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;
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
    c = "com.nike.adapt.ui.settings.SettingsPrivacyActivity$getFlagAndUpdateUi$1$1"
    f = "DataOptInSwitchPreference.kt"
    l = {
        0x3f,
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lrd/w;

.field public i:I

.field public final synthetic j:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic k:Z

.field public final synthetic l:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;


# direct methods
.method public constructor <init>(Lrd/w;ZLcom/nike/adapt/ui/settings/SettingsPrivacyActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/w<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->j:Lrd/w;

    iput-boolean p2, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->k:Z

    iput-object p3, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->l:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 3
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

    new-instance p1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->j:Lrd/w;

    iget-boolean v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->k:Z

    iget-object v2, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->l:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;-><init>(Lrd/w;ZLcom/nike/adapt/ui/settings/SettingsPrivacyActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->h:Lrd/w;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->h:Lrd/w;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->j:Lrd/w;

    iget-boolean v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->k:Z

    if-eqz v1, :cond_5

    .line 5
    sget-object v1, Lm8/c;->b:Lm8/c;

    .line 6
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->l:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    .line 7
    iget-object v1, v1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->A:Lq7/m0;

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, v1, Lq7/m0;->c:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v3

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->h:Lrd/w;

    iput v3, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->i:I

    .line 9
    sget-object v2, Lm8/c;->c:Lfd/h;

    invoke-virtual {v2}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb8/a;

    .line 10
    invoke-interface {v2, v1, p0}, Lb8/a;->b(ZLjd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    move-object p1, v1

    .line 11
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    const-string p1, "binding"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 12
    :cond_5
    sget-object v1, Lm8/c;->b:Lm8/c;

    .line 13
    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->h:Lrd/w;

    iput v2, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;->i:I

    invoke-virtual {v1, p0}, Lm8/c;->a(Ljd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    move-object p1, v1

    .line 14
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    :goto_2
    iput-object p1, v0, Lrd/w;->h:Ljava/lang/Object;

    .line 16
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
