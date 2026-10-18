.class public final Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;
.super Ljava/lang/Object;
.source "SupportTipsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/ui/settings/SupportTipsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->c:I

    iget p1, p1, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->c:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->b:Ljava/lang/String;

    iget v2, p0, Lcom/nike/adapt/ui/settings/SupportTipsActivity$a;->c:I

    const-string v3, "Tips(tipHeading="

    const-string v4, ", tipBody="

    const-string v5, ", tipsIcon="

    .line 1
    invoke-static {v3, v0, v4, v1, v5}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 2
    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
