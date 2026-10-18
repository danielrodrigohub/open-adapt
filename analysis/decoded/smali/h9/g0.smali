.class public final Lh9/g0;
.super Lh9/a;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh9/g0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/nike/adapt/ui/settings/SettingsActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lh9/g0$b;

.field public static final g:Lfd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh9/g0$b;

    invoke-direct {v0}, Lh9/g0$b;-><init>()V

    sput-object v0, Lh9/g0;->f:Lh9/g0$b;

    sget-object v0, Lh9/g0$a;->h:Lh9/g0$a;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lh9/g0;->g:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v0}, Lh9/g0;-><init>(Ljava/lang/String;ZILrd/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/nike/adapt/ui/settings/SettingsActivity;

    invoke-direct {p0, v0}, Lh9/a;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lh9/g0;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lh9/g0;->d:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lh9/g0;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILrd/h;)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p1, p2}, Lh9/g0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh9/g0;->c:Ljava/lang/String;

    const-string v1, "DEEP_LINK_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    iget-boolean v0, p0, Lh9/g0;->d:Z

    const-string v1, "ADD_BACK_STACK"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh9/g0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh9/g0;

    iget-object v1, p0, Lh9/g0;->c:Ljava/lang/String;

    iget-object v3, p1, Lh9/g0;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lh9/g0;->d:Z

    iget-boolean p1, p1, Lh9/g0;->d:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lh9/g0;->e:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lh9/g0;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lh9/g0;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lh9/g0;->c:Ljava/lang/String;

    iget-boolean v1, p0, Lh9/g0;->d:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SettingsDoNavigate(deepLinkKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", addSettingsToBackStack="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
