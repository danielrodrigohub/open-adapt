.class public final Lb9/k;
.super Lb9/c;
.source "MessagingCenter.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb9/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lfd/h;

.field public final i:Lfd/h;

.field public final j:Lfd/h;

.field public final k:Lfd/h;

.field public final l:Lb9/f;

.field public final m:Lb9/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb9/k$a;

    invoke-direct {v0}, Lb9/k$a;-><init>()V

    sput-object v0, Lb9/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lb9/c;-><init>()V

    .line 2
    sget-object v0, Lb9/k$e;->h:Lb9/k$e;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lb9/k;->h:Lfd/h;

    .line 3
    sget-object v0, Lb9/k$b;->h:Lb9/k$b;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lb9/k;->i:Lfd/h;

    .line 4
    sget-object v0, Lb9/k$c;->h:Lb9/k$c;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lb9/k;->j:Lfd/h;

    .line 5
    sget-object v0, Lb9/k$d;->h:Lb9/k$d;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    iput-object v0, p0, Lb9/k;->k:Lfd/h;

    .line 6
    new-instance v0, Lb9/f;

    new-instance v1, Lh9/g0;

    sget-object v2, Lh9/g0;->f:Lh9/g0$b;

    invoke-virtual {v2}, Lh9/g0$b;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lh9/g0;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v2}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v3

    invoke-virtual {v1, v3}, Lh9/a;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Lb9/f;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lb9/k;->l:Lb9/f;

    .line 7
    new-instance v0, Lb9/f;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v2

    const-class v3, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Lb9/f;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lb9/k;->m:Lb9/f;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb9/k;->i:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb9/k;->j:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lb9/e;
    .locals 1

    iget-object v0, p0, Lb9/k;->l:Lb9/f;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb9/k;->k:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lb9/e;
    .locals 1

    iget-object v0, p0, Lb9/k;->m:Lb9/f;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb9/k;->h:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
