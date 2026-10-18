.class public final Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "SettingsVoiceActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/ImageView;

.field public final x:Landroid/view/View;


# direct methods
.method public constructor <init>(Lq7/s1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lq7/s1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p1, Lq7/s1;->e:Landroid/widget/TextView;

    const-string v1, "binding.voicePreferenceItemTitle"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;->u:Landroid/widget/TextView;

    .line 4
    iget-object v0, p1, Lq7/s1;->b:Landroid/widget/TextView;

    const-string v1, "binding.voicePreferenceItemBody"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;->v:Landroid/widget/TextView;

    .line 5
    iget-object v0, p1, Lq7/s1;->d:Landroid/widget/ImageView;

    const-string v1, "binding.voicePreferenceItemImage"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;->w:Landroid/widget/ImageView;

    .line 6
    iget-object p1, p1, Lq7/s1;->c:Landroid/view/View;

    const-string v0, "binding.voicePreferenceItemDivider"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;->x:Landroid/view/View;

    return-void
.end method
