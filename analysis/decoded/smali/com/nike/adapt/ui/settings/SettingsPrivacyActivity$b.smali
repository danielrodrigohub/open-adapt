.class public final Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;
.super Lld/i;
.source "DataOptInSwitchPreference.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->l0(ZZ)V
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
    c = "com.nike.adapt.ui.settings.SettingsPrivacyActivity$getFlagAndUpdateUi$1"
    f = "DataOptInSwitchPreference.kt"
    l = {
        0x3d,
        0x43
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lrd/w;

.field public i:I

.field public final synthetic j:Z

.field public final synthetic k:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

.field public final synthetic l:Z


# direct methods
.method public constructor <init>(ZLcom/nike/adapt/ui/settings/SettingsPrivacyActivity;ZLjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;",
            "Z",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->j:Z

    iput-object p2, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->k:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    iput-boolean p3, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->l:Z

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

    new-instance p1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;

    iget-boolean v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->j:Z

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->k:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    iget-boolean v2, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->l:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;-><init>(ZLcom/nike/adapt/ui/settings/SettingsPrivacyActivity;ZLjd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

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
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->h:Lrd/w;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Lrd/w;

    invoke-direct {v1}, Lrd/w;-><init>()V

    .line 5
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v5, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;

    iget-boolean v6, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->j:Z

    iget-object v7, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->k:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    invoke-direct {v5, v1, v6, v7, v2}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$a;-><init>(Lrd/w;ZLcom/nike/adapt/ui/settings/SettingsPrivacyActivity;Ljd/d;)V

    iput-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->h:Lrd/w;

    iput v4, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->i:I

    invoke-static {p1, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    move-object v6, v1

    .line 6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;

    iget-object v5, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->k:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    iget-boolean v7, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->l:Z

    iget-boolean v8, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->j:Z

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;-><init>(Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;Lrd/w;ZZLjd/d;)V

    iput-object v2, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->h:Lrd/w;

    iput v3, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b;->i:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_1
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
