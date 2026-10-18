.class public final Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;
.super Ljava/lang/Object;
.source "SettingsVoiceActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->a:I

    iput p2, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->b:I

    iput p3, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;

    iget v1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->a:I

    iget v3, p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->b:I

    iget v3, p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->c:I

    iget p1, p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->c:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->b:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->a:I

    iget v1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->b:I

    iget v2, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->c:I

    const-string v3, "VoiceOption(titleId="

    const-string v4, ", bodyId="

    const-string v5, ", imageId="

    .line 1
    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 2
    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
