.class public final Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$a;
.super Lrd/o;
.source "DataOptInSwitchPreference.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroidx/appcompat/app/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

.field public final synthetic i:Z

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$a;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    iput-boolean p2, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$a;->i:Z

    iput-boolean p3, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$a;->j:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lf/n;->dismiss()V

    iget-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$a;->h:Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;

    iget-boolean v0, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$a;->i:Z

    iget-boolean v1, p0, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity$b$b$a;->j:Z

    sget v2, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->D:I

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/nike/adapt/ui/settings/SettingsPrivacyActivity;->l0(ZZ)V

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
